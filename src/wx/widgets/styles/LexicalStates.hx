package wx.widgets.styles;

@:headerCode("
#include <wx/stc/stc.h>
#undef RegisterClass
")
class LexicalStates {
    #if STYLEDTEXTCTRL
    
    /// Lexical states for SCLEX_CPP, SCLEX_BULLANT, SCLEX_COBOL, SCLEX_TACL, SCLEX_TAL
    public static var C_DEFAULT:Int                         = untyped __cpp__("wxSTC_C_DEFAULT");
    public static var C_COMMENT:Int                         = untyped __cpp__("wxSTC_C_COMMENT");
    public static var C_COMMENTLINE:Int                     = untyped __cpp__("wxSTC_C_COMMENTLINE");
    public static var C_COMMENTDOC:Int                      = untyped __cpp__("wxSTC_C_COMMENTDOC");
    public static var C_NUMBER:Int                          = untyped __cpp__("wxSTC_C_NUMBER");
    public static var C_WORD:Int                            = untyped __cpp__("wxSTC_C_WORD");
    public static var C_STRING:Int                          = untyped __cpp__("wxSTC_C_STRING");
    public static var C_CHARACTER:Int                       = untyped __cpp__("wxSTC_C_CHARACTER");
    public static var C_UUID:Int                            = untyped __cpp__("wxSTC_C_UUID");
    public static var C_PREPROCESSOR:Int                    = untyped __cpp__("wxSTC_C_PREPROCESSOR");
    public static var C_OPERATOR:Int                        = untyped __cpp__("wxSTC_C_OPERATOR");
    public static var C_IDENTIFIER:Int                      = untyped __cpp__("wxSTC_C_IDENTIFIER");
    public static var C_STRINGEOL:Int                       = untyped __cpp__("wxSTC_C_STRINGEOL");
    public static var C_VERBATIM:Int                        = untyped __cpp__("wxSTC_C_VERBATIM");
    public static var C_REGEX:Int                           = untyped __cpp__("wxSTC_C_REGEX");
    public static var C_COMMENTLINEDOC:Int                  = untyped __cpp__("wxSTC_C_COMMENTLINEDOC");
    public static var C_WORD2:Int                           = untyped __cpp__("wxSTC_C_WORD2");
    public static var C_COMMENTDOCKEYWORD:Int               = untyped __cpp__("wxSTC_C_COMMENTDOCKEYWORD");
    public static var C_COMMENTDOCKEYWORDERROR:Int          = untyped __cpp__("wxSTC_C_COMMENTDOCKEYWORDERROR");
    public static var C_GLOBALCLASS:Int                     = untyped __cpp__("wxSTC_C_GLOBALCLASS");
    public static var C_STRINGRAW:Int                       = untyped __cpp__("wxSTC_C_STRINGRAW");
    public static var C_TRIPLEVERBATIM:Int                  = untyped __cpp__("wxSTC_C_TRIPLEVERBATIM");
    public static var C_HASHQUOTEDSTRING:Int                = untyped __cpp__("wxSTC_C_HASHQUOTEDSTRING");
    public static var C_PREPROCESSORCOMMENT:Int             = untyped __cpp__("wxSTC_C_PREPROCESSORCOMMENT");
    public static var C_PREPROCESSORCOMMENTDOC:Int          = untyped __cpp__("wxSTC_C_PREPROCESSORCOMMENTDOC");
    public static var C_USERLITERAL:Int                     = untyped __cpp__("wxSTC_C_USERLITERAL");
    public static var C_TASKMARKER:Int                      = untyped __cpp__("wxSTC_C_TASKMARKER");
    public static var C_ESCAPESEQUENCE:Int                  = untyped __cpp__("wxSTC_C_ESCAPESEQUENCE");
    
    /// Lexical states for SCLEX_HTML, SCLEX_XML
    public static var H_DEFAULT:Int                         = untyped __cpp__("wxSTC_H_DEFAULT");
    public static var H_TAG:Int                             = untyped __cpp__("wxSTC_H_TAG");
    public static var H_TAGUNKNOWN:Int                      = untyped __cpp__("wxSTC_H_TAGUNKNOWN");
    public static var H_ATTRIBUTE:Int                       = untyped __cpp__("wxSTC_H_ATTRIBUTE");
    public static var H_ATTRIBUTEUNKNOWN:Int                = untyped __cpp__("wxSTC_H_ATTRIBUTEUNKNOWN");
    public static var H_NUMBER:Int                          = untyped __cpp__("wxSTC_H_NUMBER");
    public static var H_DOUBLESTRING:Int                    = untyped __cpp__("wxSTC_H_DOUBLESTRING");
    public static var H_SINGLESTRING:Int                    = untyped __cpp__("wxSTC_H_SINGLESTRING");
    public static var H_OTHER:Int                           = untyped __cpp__("wxSTC_H_OTHER");
    public static var H_COMMENT:Int                         = untyped __cpp__("wxSTC_H_COMMENT");
    public static var H_ENTITY:Int                          = untyped __cpp__("wxSTC_H_ENTITY");
    
    /// XML and ASP
    public static var H_TAGEND:Int                          = untyped __cpp__("wxSTC_H_TAGEND");
    public static var H_XMLSTART:Int                        = untyped __cpp__("wxSTC_H_XMLSTART");
    public static var H_XMLEND:Int                          = untyped __cpp__("wxSTC_H_XMLEND");
    public static var H_SCRIPT:Int                          = untyped __cpp__("wxSTC_H_SCRIPT");
    public static var H_ASP:Int                             = untyped __cpp__("wxSTC_H_ASP");
    public static var H_ASPAT:Int                           = untyped __cpp__("wxSTC_H_ASPAT");
    public static var H_CDATA:Int                           = untyped __cpp__("wxSTC_H_CDATA");
    public static var H_QUESTION:Int                        = untyped __cpp__("wxSTC_H_QUESTION");
    
    /// More HTML
    public static var H_VALUE:Int                           = untyped __cpp__("wxSTC_H_VALUE");
    
    /// X-Code
    public static var H_XCCOMMENT:Int                       = untyped __cpp__("wxSTC_H_XCCOMMENT");
    
    /// SGML
    public static var H_SGML_DEFAULT:Int                    = untyped __cpp__("wxSTC_H_SGML_DEFAULT");
    public static var H_SGML_COMMAND:Int                    = untyped __cpp__("wxSTC_H_SGML_COMMAND");
    public static var H_SGML_1ST_PARAM:Int                  = untyped __cpp__("wxSTC_H_SGML_1ST_PARAM");
    public static var H_SGML_DOUBLESTRING:Int               = untyped __cpp__("wxSTC_H_SGML_DOUBLESTRING");
    public static var H_SGML_SIMPLESTRING:Int               = untyped __cpp__("wxSTC_H_SGML_SIMPLESTRING");
    public static var H_SGML_ERROR:Int                      = untyped __cpp__("wxSTC_H_SGML_ERROR");
    public static var H_SGML_SPECIAL:Int                    = untyped __cpp__("wxSTC_H_SGML_SPECIAL");
    public static var H_SGML_ENTITY:Int                     = untyped __cpp__("wxSTC_H_SGML_ENTITY");
    public static var H_SGML_COMMENT:Int                    = untyped __cpp__("wxSTC_H_SGML_COMMENT");
    public static var H_SGML_1ST_PARAM_COMMENT:Int          = untyped __cpp__("wxSTC_H_SGML_1ST_PARAM_COMMENT");
    public static var H_SGML_BLOCK_DEFAULT:Int              = untyped __cpp__("wxSTC_H_SGML_BLOCK_DEFAULT");
    
    #end
}
