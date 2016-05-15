package wx.widgets.styles;

@:headerCode("#include <wx/radiobut.h>")
class RadioButtonStyle {

    /** Marks the beginning of a new group of radio buttons. */
    public static var GROUP:Int         = untyped __cpp__("wxRB_GROUP");
    /** In some circumstances, radio buttons that are not consecutive siblings trigger a hang bug in Windows (only).
      * If this happens, add this style to mark the button as not belonging to a group, and implement the mutually-exclusive
      * group behaviour yourself. */
    public static var SINGLE:Int        = untyped __cpp__("wxRB_SINGLE");

}
