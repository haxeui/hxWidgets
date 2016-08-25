package wx.widgets.styles;

@:headerCode("#include <wx/combobox.h>")
class ComboBoxStyle {
    public static var SIMPLE:Int                = untyped __cpp__("wxCB_SIMPLE");            // Creates a combobox with a permanently displayed list. Windows only.
    public static var DROPDOWN:Int              = untyped __cpp__("wxCB_DROPDOWN");          // Creates a combobox with a drop-down list. MSW and Motif only.
    public static var READONLY:Int              = untyped __cpp__("wxCB_READONLY");          // A combobox with this style behaves like a wxChoice (and may look in the same way as well, although this is platform-dependent), i.e. it allows the user to choose from the list of options but doesn't allow to enter a value not present in the list.
    public static var SORT:Int                  = untyped __cpp__("wxCB_SORT");              // Sorts the entries in the list alphabetically. Notice that this style is not currently implemented in wxOSX.
    public static var PROCESS_ENTER:Int         = untyped __cpp__("wxTE_PROCESS_ENTER");     // The control will generate the event wxEVT_TEXT_ENTER (otherwise pressing Enter key is either processed internally by the control or used for navigation between dialog controls).
}