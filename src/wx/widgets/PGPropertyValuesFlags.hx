package wx.widgets;

@:include("wx/propgrid/propgriddefs.h")
extern enum abstract PGPropertyValuesFlags(PGPropertyValuesFlagsImpl) {
    @:native("wxPGPropertyValuesFlags::DontRecurse")        var DontRecurse;
    @:native("wxPGPropertyValuesFlags::KeepStructure")      var KeepStructure;
    @:native("wxPGPropertyValuesFlags::Recurse")            var Recurse;
    @:native("wxPGPropertyValuesFlags::IncAttributes")      var IncAttributes;
    @:native("wxPGPropertyValuesFlags::RecurseStarts")      var RecurseStarts;
    @:native("wxPGPropertyValuesFlags::Force")              var Force;
    @:native("wxPGPropertyValuesFlags::SortTopLevelOnly")   var SortTopLevelOnly;
}

@:include("wx/propgrid/propgriddefs.h")
@:native("cpp::Struct<wxPGPropertyValuesFlags, cpp::EnumHandler>")
extern class PGPropertyValuesFlagsImpl {
}
