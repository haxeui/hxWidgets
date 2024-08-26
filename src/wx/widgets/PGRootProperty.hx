package wx.widgets;

@:include("wx/propgrid/propgrid.h")
@:unreflective
@:native("wxPGRootProperty")
@:structAccess
extern class PGRootProperty extends PGProperty {
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // creation functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    @:native("new wxPGRootProperty")    private static function _new(name:WxString):RawPointer<PGRootProperty>;
                                        public static inline function createInstance(name:WxString):Pointer<PGRootProperty> {
                                            return Pointer.fromRaw(_new(name));
                                        }
}