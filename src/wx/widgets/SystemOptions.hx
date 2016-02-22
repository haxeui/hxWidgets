package wx.widgets;
import cpp.ConstCharStar;

@:include("wx/sysopt.h")
@:unreflective
@:native("wxSystemOptions")
extern class SystemOptions {
    @:native("wxSystemOptions::GetOptionInt")   public static function getOptionInt(name:ConstCharStar):Int;
    @:native("wxSystemOptions::SetOption")      public static function setOption(name:ConstCharStar, value:Int):Void;
}