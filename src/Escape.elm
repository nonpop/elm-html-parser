module Escape exposing (..)

import Dict exposing (..)


dict : Dict String String
dict =
  Dict.fromList
    [ ("&#8482;", "™")
    , ("&#32;", " ")
    , ("&#33;", "!")
    , ("&#34;", "\"")
    , ("&#35;", "#")
    , ("&#36;", "$")
    , ("&#37;", "%")
    , ("&#38;", "&")
    , ("&#39;", "'")
    , ("&#40;", "(")
    , ("&#41;", ")")
    , ("&#42;", "*")
    , ("&#43;", "+")
    , ("&#44;", ",")
    , ("&#45;", "-")
    , ("&#46;", ".")
    , ("&#47;", "/")
    , ("&#48;", "0")
    , ("&#49;", "1")
    , ("&#50;", "2")
    , ("&#51;", "3")
    , ("&#52;", "4")
    , ("&#53;", "5")
    , ("&#54;", "6")
    , ("&#55;", "7")
    , ("&#56;", "8")
    , ("&#57;", "9")
    , ("&#58;", ":")
    , ("&#59;", ";")
    , ("&#60;", "<")
    , ("&#61;", "=")
    , ("&#62;", ">")
    , ("&#63;", "?")
    , ("&#64;", "@")
    , ("&#65;", "A")
    , ("&#66;", "B")
    , ("&#67;", "C")
    , ("&#68;", "D")
    , ("&#69;", "E")
    , ("&#70;", "F")
    , ("&#71;", "G")
    , ("&#72;", "H")
    , ("&#73;", "I")
    , ("&#74;", "J")
    , ("&#75;", "K")
    , ("&#76;", "L")
    , ("&#77;", "M")
    , ("&#78;", "N")
    , ("&#79;", "O")
    , ("&#80;", "P")
    , ("&#81;", "Q")
    , ("&#82;", "R")
    , ("&#83;", "S")
    , ("&#84;", "T")
    , ("&#85;", "U")
    , ("&#86;", "V")
    , ("&#87;", "W")
    , ("&#88;", "X")
    , ("&#89;", "Y")
    , ("&#90;", "Z")
    , ("&#91;", "[")
    , ("&#92;", "\\")
    , ("&#93;", "]")
    , ("&#94;", "^")
    , ("&#95;", "_")
    , ("&#96;", "`")
    , ("&#97;", "a")
    , ("&#98;", "b")
    , ("&#99;", "c")
    , ("&#100;", "d")
    , ("&#101;", "e")
    , ("&#102;", "f")
    , ("&#103;", "g")
    , ("&#104;", "h")
    , ("&#105;", "i")
    , ("&#106;", "j")
    , ("&#107;", "k")
    , ("&#108;", "l")
    , ("&#109;", "m")
    , ("&#110;", "n")
    , ("&#111;", "o")
    , ("&#112;", "p")
    , ("&#113;", "q")
    , ("&#114;", "r")
    , ("&#115;", "s")
    , ("&#116;", "t")
    , ("&#117;", "u")
    , ("&#118;", "v")
    , ("&#119;", "w")
    , ("&#120;", "x")
    , ("&#121;", "y")
    , ("&#122;", "z")
    , ("&#123;", "{")
    , ("&#124;", "|")
    , ("&#125;", "}")
    , ("&#126;", "~")
    , ("&#160;", " ")
    , ("&#161;", "¡")
    , ("&#162;", "¢")
    , ("&#163;", "£")
    , ("&#164;", "¤")
    , ("&#165;", "¥")
    , ("&#166;", "¦")
    , ("&#167;", "§")
    , ("&#168;", "¨")
    , ("&#169;", "©")
    , ("&#170;", "ª")
    , ("&#171;", "«")
    , ("&#172;", "¬")
    , ("&#173;", "")
    , ("&#174;", "®")
    , ("&#175;", "¯")
    , ("&#176;", "°")
    , ("&#177;", "±")
    , ("&#178;", "²")
    , ("&#179;", "³")
    , ("&#180;", "´")
    , ("&#181;", "µ")
    , ("&#182;", "¶")
    , ("&#183;", "·")
    , ("&#184;", "¸")
    , ("&#185;", "¹")
    , ("&#186;", "º")
    , ("&#187;", "»")
    , ("&#188;", "¼")
    , ("&#189;", "½")
    , ("&#190;", "¾")
    , ("&#191;", "¿")
    , ("&#192;", "À")
    , ("&#193;", "Á")
    , ("&#194;", "Â")
    , ("&#195;", "Ã")
    , ("&#196;", "Ä")
    , ("&#197", "Å")
    , ("&#198;", "Æ")
    , ("&#199;", "Ç")
    , ("&#200;", "È")
    , ("&#201;", "É")
    , ("&#202;", "Ê")
    , ("&#203;", "Ë")
    , ("&#204;", "Ì")
    , ("&#205;", "Í")
    , ("&#206;", "Î")
    , ("&#207;", "Ï")
    , ("&#208;", "Ð")
    , ("&#209;", "Ñ")
    , ("&#210;", "Ò")
    , ("&#211;", "Ó")
    , ("&#212;", "Ô")
    , ("&#213;", "Õ")
    , ("&#214;", "Ö")
    , ("&#215;", "×")
    , ("&#216;", "Ø")
    , ("&#217;", "Ù")
    , ("&#218;", "Ú")
    , ("&#219;", "Û")
    , ("&#220;", "Ü")
    , ("&#221;", "Ý")
    , ("&#222;", "Þ")
    , ("&#223;", "ß")
    , ("&#224;", "à")
    , ("&#225;", "á")
    , ("&#226;", "â")
    , ("&#227;", "ã")
    , ("&#228;", "ä")
    , ("&#229;", "å")
    , ("&#230;", "æ")
    , ("&#231;", "ç")
    , ("&#232;", "è")
    , ("&#233;", "é")
    , ("&#234;", "ê")
    , ("&#235;", "ë")
    , ("&#236;", "ì")
    , ("&#237", "í")
    , ("&#238;", "î")
    , ("&#239;", "ï")
    , ("&#240;", "ð")
    , ("&#241;", "ñ")
    , ("&#242;", "ò")
    , ("&#243;", "ó")
    , ("&#244;", "ô")
    , ("&#245;", "õ")
    , ("&#246;", "ö")
    , ("&#247;", "÷")
    , ("&#248;", "ø")
    , ("&#249;", "ù")
    , ("&#250;", "ú")
    , ("&#251;", "û")
    , ("&#252;", "ü")
    , ("&#253;", "ý")
    , ("&#254;", "þ")
    , ("&#255;", "ÿ")
    , ("&#256;", "Ā")
    , ("&#257;", "ā")
    , ("&#258;", "Ă")
    , ("&#259;", "ă")
    , ("&#260;", "Ą")
    , ("&#261;", "ą")
    , ("&#262;", "Ć")
    , ("&#263;", "ć")
    , ("&#264;", "Ĉ")
    , ("&#265;", "ĉ")
    , ("&#266;", "Ċ")
    , ("&#267;", "ċ")
    , ("&#268;", "Č")
    , ("&#269;", "č")
    , ("&#270;", "Ď")
    , ("&#271;", "ď")
    , ("&#272;", "Đ")
    , ("&#273;", "đ")
    , ("&#274;", "Ē")
    , ("&#275;", "ē")
    , ("&#276;", "Ĕ")
    , ("&#277", "ĕ")
    , ("&#278;", "Ė")
    , ("&#279;", "ė")
    , ("&#280;", "Ę")
    , ("&#281;", "ę")
    , ("&#282;", "Ě")
    , ("&#283;", "ě")
    , ("&#284;", "Ĝ")
    , ("&#285;", "ĝ")
    , ("&#286;", "Ğ")
    , ("&#287;", "ğ")
    , ("&#288;", "Ġ")
    , ("&#289;", "ġ")
    , ("&#290;", "Ģ")
    , ("&#291;", "ģ")
    , ("&#292;", "Ĥ")
    , ("&#293;", "ĥ")
    , ("&#294;", "Ħ")
    , ("&#295;", "ħ")
    , ("&#296;", "Ĩ")
    , ("&#297;", "ĩ")
    , ("&#298;", "Ī")
    , ("&#299;", "ī")
    , ("&#300;", "Ĭ")
    , ("&#301;", "ĭ")
    , ("&#302;", "Į")
    , ("&#303;", "į")
    , ("&#304;", "İ")
    , ("&#305;", "ı")
    , ("&#306;", "Ĳ")
    , ("&#307;", "ĳ")
    , ("&#308;", "Ĵ")
    , ("&#309;", "ĵ")
    , ("&#310;", "Ķ")
    , ("&#311;", "ķ")
    , ("&#312;", "ĸ")
    , ("&#313;", "Ĺ")
    , ("&#314;", "ĺ")
    , ("&#315;", "Ļ")
    , ("&#316;", "ļ")
    , ("&#317", "Ľ")
    , ("&#318;", "ľ")
    , ("&#319;", "Ŀ")
    , ("&#320;", "ŀ")
    , ("&#321;", "Ł")
    , ("&#322;", "ł")
    , ("&#323;", "Ń")
    , ("&#324;", "ń")
    , ("&#325;", "Ņ")
    , ("&#326;", "ņ")
    , ("&#327;", "Ň")
    , ("&#328;", "ň")
    , ("&#329;", "ŉ")
    , ("&#330;", "Ŋ")
    , ("&#331;", "ŋ")
    , ("&#332;", "Ō")
    , ("&#333;", "ō")
    , ("&#334;", "Ŏ")
    , ("&#335;", "ŏ")
    , ("&#336;", "Ő")
    , ("&#337;", "ő")
    , ("&#338;", "Œ")
    , ("&#339;", "œ")
    , ("&#340;", "Ŕ")
    , ("&#341;", "ŕ")
    , ("&#342;", "Ŗ")
    , ("&#343;", "ŗ")
    , ("&#344;", "Ř")
    , ("&#345;", "ř")
    , ("&#346;", "Ś")
    , ("&#347;", "ś")
    , ("&#348;", "Ŝ")
    , ("&#349;", "ŝ")
    , ("&#350;", "Ş")
    , ("&#351;", "ş")
    , ("&#352;", "Š")
    , ("&#353;", "š")
    , ("&#354;", "Ţ")
    , ("&#355;", "ţ")
    , ("&#356;", "Ť")
    , ("&#357", "ť")
    , ("&#358;", "Ŧ")
    , ("&#359;", "ŧ")
    , ("&#360;", "Ũ")
    , ("&#361;", "ũ")
    , ("&#362;", "Ū")
    , ("&#363;", "ū")
    , ("&#364;", "Ŭ")
    , ("&#365;", "ŭ")
    , ("&#366;", "Ů")
    , ("&#367;", "ů")
    , ("&#368;", "Ű")
    , ("&#369;", "ű")
    , ("&#370;", "Ų")
    , ("&#371;", "ų")
    , ("&#372;", "Ŵ")
    , ("&#373;", "ŵ")
    , ("&#374;", "Ŷ")
    , ("&#375;", "ŷ")
    , ("&#376;", "Ÿ")
    , ("&#377;", "Ź")
    , ("&#378;", "ź")
    , ("&#379;", "Ż")
    , ("&#380;", "ż")
    , ("&#381;", "Ž")
    , ("&#382;", "ž")
    , ("&#383;", "ſ")
    , ("&#340;", "Ŕ")
    , ("&#341;", "ŕ")
    , ("&#342;", "Ŗ")
    , ("&#343;", "ŗ")
    , ("&#344;", "Ř")
    , ("&#345;", "ř")
    , ("&#346;", "Ś")
    , ("&#347;", "ś")
    , ("&#348;", "Ŝ")
    , ("&#349;", "ŝ")
    , ("&#350;", "Ş")
    , ("&#351;", "ş")
    , ("&#352;", "Š")
    , ("&#353;", "š")
    , ("&#354;", "Ţ")
    , ("&#355;", "ţ")
    , ("&#356;", "Ť")
    , ("&#577;", "ť")
    , ("&#358;", "Ŧ")
    , ("&#359;", "ŧ")
    , ("&#360;", "Ũ")
    , ("&#361;", "ũ")
    , ("&#362;", "Ū")
    , ("&#363;", "ū")
    , ("&#364;", "Ŭ")
    , ("&#365;", "ŭ")
    , ("&#366;", "Ů")
    , ("&#367;", "ů")
    , ("&#368;", "Ű")
    , ("&#369;", "ű")
    , ("&#370;", "Ų")
    , ("&#371;", "ų")
    , ("&#372;", "Ŵ")
    , ("&#373;", "ŵ")
    , ("&#374;", "Ŷ")
    , ("&#375;", "ŷ")
    , ("&#376;", "Ÿ")
    , ("&#377", "Ź")
    , ("&#378;", "ź")
    , ("&#379;", "Ż")
    , ("&#380;", "ż")
    , ("&#381;", "Ž")
    , ("&#382;", "ž")
    , ("&#383;", "ſ")
    , ("&euro;", "€")
    , ("&nbsp;", " ")
    , ("&quot;", "\"")
    , ("&amp;", "&")
    , ("&lt;", "<")
    , ("&gt;", ">")
    , ("&nbsp;", " ")
    , ("&iexcl;", "¡")
    , ("&cent;", "¢")
    , ("&pound;", "£")
    , ("&curren;", "¤")
    , ("&yen;", "¥")
    , ("&brvbar;", "¦")
    , ("&sect;", "§")
    , ("&uml;", "¨")
    , ("&copy;", "©")
    , ("&ordf;", "ª")
    , ("&not;", "¬")
    , ("&shy;", "")
    , ("&reg;", "®")
    , ("&macr;", "¯")
    , ("&deg;", "°")
    , ("&plusmn;", "±")
    , ("&sup2;", "²")
    , ("&sup3;", "³")
    , ("&acute;", "´")
    , ("&micro;", "µ")
    , ("&para;", "¶")
    , ("&middot;", "·")
    , ("&cedil;", "¸")
    , ("&sup1;", "¹")
    , ("&ordm;", "º")
    , ("&raquo;", "»")
    , ("&frac14;", "¼")
    , ("&frac12;", "½")
    , ("&frac34;", "¾")
    , ("&iquest;", "¿")
    , ("&Agrave;", "À")
    , ("&Aacute;", "Á")
    , ("&Acirc;", "Â")
    , ("&Atilde;", "Ã")
    , ("&Auml;", "Ä")
    , ("&Aring;", "Å")
    , ("&AElig;", "Æ")
    , ("&Ccedil;", "Ç")
    , ("&Egrave;", "È")
    , ("&Eacute;", "É")
    , ("&Ecirc;", "Ê")
    , ("&Euml;", "Ë")
    , ("&Igrave;", "Ì")
    , ("&Iacute;", "Í")
    , ("&Icirc;", "Î")
    , ("&Iuml;", "Ï")
    , ("&ETH;", "Ð")
    , ("&Ntilde;", "Ñ")
    , ("&Ograve;", "Ò")
    , ("&Oacute;", "Ó")
    , ("&Ocirc;", "Ô")
    , ("&Otilde;", "Õ")
    , ("&Ouml;", "Ö")
    , ("&times;", "×")
    , ("&Oslash;", "Ø")
    , ("&Ugrave;", "Ù")
    , ("&Uacute;", "Ú")
    , ("&Ucirc;", "Û")
    , ("&Uuml;", "Ü")
    , ("&Yacute;", "Ý")
    , ("&THORN;", "Þ")
    , ("&szlig;", "ß")
    , ("&agrave;", "à")
    , ("&aacute;", "á")
    , ("&acirc;", "â")
    , ("&atilde;", "ã")
    , ("&auml;", "ä")
    , ("&aring;", "å")
    , ("&aelig;", "æ")
    , ("&ccedil;", "ç")
    , ("&egrave;", "è")
    , ("&eacute;", "é")
    , ("&ecirc;", "ê")
    , ("&euml;", "ë")
    , ("&igrave;", "ì")
    , ("&iacute;", "í")
    , ("&icirc;", "î")
    , ("&iuml;", "ï")
    , ("&eth;", "ð")
    , ("&ntilde;", "ñ")
    , ("&ograve;", "ò")
    , ("&oacute;", "ó")
    , ("&ocirc;", "ô")
    , ("&otilde;", "õ")
    , ("&ouml;", "ö")
    , ("&divide;", "÷")
    , ("&oslash;", "ø")
    , ("&ugrave;", "ù")
    , ("&uacute;", "ú")
    , ("&ucirc;", "û")
    , ("&uuml;", "ü")
    , ("&yacute;", "ý")
    , ("&thorn;", "þ")
    ]

