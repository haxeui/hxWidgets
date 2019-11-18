package wx.widgets;
import cpp.RawPointer;

@:headerCode("
#include <wx/utils.h>
#undef RegisterClass
")
extern class Globals {
    @:native("::wxShell")       public static function shell(command:WxString):Bool;
    @:native("::wxExecute")     public static function execute(command:WxString, flags:Int, callback:RawPointer<Process>, env:RawPointer<ExecuteEnv>):Int;
}