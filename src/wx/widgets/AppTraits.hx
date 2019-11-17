package wx.widgets;
import cpp.RawPointer;
import cpp.Reference;

@:include("wx/apptrait.h")
@:unreflective
@:native("wxAppTraits")
extern class AppTraits {
    @:native("GetDesktopEnvironment")       public function getDesktopEnvironment():WxString;
    @:native("GetStandardPaths")            public function getStandardPaths():Reference<StandardPaths>;
}