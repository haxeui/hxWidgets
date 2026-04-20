package wx.widgets;

#if (wxWidgetsVersion >= version("3.3.0"))

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

#else

@:include("wx/propgrid/property.h")
extern enum abstract PGPropertyValuesFlags(PGPropertyValuesFlagsImpl) {
    @:native("wxPG_PROPERTYVALUES_FLAGS::wxPG_DONT_RECURSE")        var DontRecurse;
    @:native("wxPG_PROPERTYVALUES_FLAGS::wxPG_KEEP_STRUCTURE")      var KeepStructure;
    @:native("wxPG_PROPERTYVALUES_FLAGS::wxPG_RECURSE")             var Recurse;
    @:native("wxPG_PROPERTYVALUES_FLAGS::wxPG_INC_ATTRIBUTES")      var IncAttributes;
    @:native("wxPG_PROPERTYVALUES_FLAGS::wxPG_RECURSE_STARTS")      var RecurseStarts;
    @:native("wxPG_PROPERTYVALUES_FLAGS::wxPG_FORCE")               var Force;
    @:native("wxPG_PROPERTYVALUES_FLAGS::wxPG_SORT_TOP_LEVEL_ONLY") var SortTopLevelOnly;
}

@:include("wx/propgrid/property.h")
@:native("cpp::Struct<wxPG_PROPERTYVALUES_FLAGS, cpp::EnumHandler>")
extern class PGPropertyValuesFlagsImpl {
}

#end