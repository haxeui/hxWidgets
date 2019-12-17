package wx.widgets;

import cpp.RawPointer;

@:include("wx/propgrid/propgrid.h")
@:unreflective
@:native("wxPropertyGridEvent")
@:structAccess
extern class PropertyGridEvent extends Event {
    @:native("GetProperty")             public function getProperty():RawPointer<PGProperty>;
}