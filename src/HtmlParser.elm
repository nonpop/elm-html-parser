module HtmlParser exposing (..)

import HtmlParser.AST exposing (..)
import Combine exposing (..)
import String
import Set exposing (Set)


parse : String -> Result (List String) AST
parse s =
  fst (Combine.parse (node "") (String.trim s))


spaces : Parser String
spaces =
  regex "[ \t\r\n]*"


spaced : Parser a -> Parser a
spaced p =
  between spaces spaces p


tagName : Parser String
tagName =
  regex "[a-zA-Z][a-zA-Z\\-]*"


attributeName : Parser String
attributeName =
  regex "[a-zA-Z][a-zA-Z\\-]*"


attributeValueNumber : Parser AttributeValue
attributeValueNumber =
  map NumberValue (regex "[1-9][0-9.]*")


attributeValueString : Parser AttributeValue
attributeValueString =
  map StringValue (between (string "\"") (string "\"") (regex """(\\\\"|[^"])*"""))


attributeValueBareString : Parser AttributeValue
attributeValueBareString =
  map StringValue (regex "[a-zA-Z]+")


attributeValue : Parser AttributeValue
attributeValue =
  attributeValueNumber `or` attributeValueString `or` attributeValueBareString


attributeNameValuePair : Parser (String, AttributeValue)
attributeNameValuePair =
  (\name _ _ _ value -> (name, value))
  `map` attributeName
  `andMap` spaces
  `andMap` string "="
  `andMap` spaces
  `andMap` attributeValue


attribute : Parser (String, AttributeValue)
attribute =
  attributeNameValuePair `or` map (flip (,) NoValue) attributeName


startTagOnly : Set String
startTagOnly =
  Set.fromList
    [ "br", "img", "hr", "meta", "input", "embed", "area", "base", "col"
    , "keygen", "link", "param", "source", "command", "link", "track", "wbr"
    ]


-- see https://html.spec.whatwg.org/multipage/syntax.html#optional-tags
optionalEndTag : Set String
optionalEndTag =
  Set.fromList
    [ "li", "dt", "dd", "p", "rt", "rp", "optgroup", "thead", "tr", "td", "th" ]


ngSetForP : Set String
ngSetForP =
  Set.fromList
    [ "address", "article", "aside", "blockquote", "details", "div", "dl"
    , "fieldset", "figcaption", "figure", "footer", "form", "h1", "h2", "h3"
    , "h4", "h5", "h6", "header", "hgroup", "hr", "main", "menu", "nav", "ol"
    , "p", "pre", "section", "table", "ul"
    ]


-- this logic is used to help optional end tag
isInvalidNest : String -> String -> Bool
isInvalidNest parentTagName tagName =
  (parentTagName == "li" && tagName == "li") ||
  (parentTagName == "dt" && (tagName == "dt" || tagName == "dd")) ||
  (parentTagName == "dd" && (tagName == "dt" || tagName == "dd")) ||
  (parentTagName == "p" && Set.member tagName ngSetForP) ||
  (parentTagName == "rt" && (tagName == "rt" || tagName == "rp")) ||
  (parentTagName == "rp" && (tagName == "rt" || tagName == "rp")) ||
  (parentTagName == "optgroup" && tagName == "optgroup") ||
  (parentTagName == "thead" && (tagName == "tbody" || tagName == "tfoot")) ||
  (parentTagName == "tr" && tagName == "tr") ||
  (parentTagName == "td" && (tagName == "td" || tagName == "th")) ||
  (parentTagName == "th" && (tagName == "td" || tagName == "th"))


node : String -> Parser AST
node parentTagName =
  rec (\_ ->
    singleNode `or`
    (startTag `andThen` \(tagName, attrs) ->
      if isInvalidNest parentTagName tagName then
        fail []
      else if Set.member tagName startTagOnly then
        succeed (Node tagName attrs [])
      else
        (\children _ -> Node tagName attrs children)
        `map` many (node tagName)
        `andMap`
          ( if Set.member tagName optionalEndTag then
              optional ()
            else
              identity
          ) (endTag tagName)
    ) `or`
    textNode
  )


textNode : Parser AST
textNode =
  map Text (regex "[^<]*") -- TODO


singleNode : Parser AST
singleNode =
  map (\(tagName, attrs) -> Node tagName attrs []) singleTag


startTag : Parser (String, List (String, AttributeValue))
startTag =
  rec (\_ ->
    (\_ tagName _ attrs _ _ -> (String.toLower tagName, attrs))
    `map` string "<"
    `andMap` tagName
    `andMap` spaces
    `andMap` sepBy spaces attribute
    `andMap` spaces
    `andMap` string ">"
  )


endTag : String -> Parser ()
endTag tagName =
  (\_ _ _ -> ())
  `map` string "</"
  `andMap` (string tagName `or` string (String.toUpper tagName))
  `andMap` string ">"


singleTag : Parser (String, List (String, AttributeValue))
singleTag =
  rec (\_ ->
    (\_ tagName _ attrs _ _ -> (String.toLower tagName, attrs))
    `map` string "<"
    `andMap` tagName
    `andMap` spaces
    `andMap` sepBy spaces attribute
    `andMap` spaces
    `andMap` string "/>"
  )


comment : Parser String
comment =
  between (string "<!--") (string "-->") (regex """(\\\\"|[^"])*""")
