package wx.widgets.styles;

@:headerCode("#include <wx/listctrl.h>")
class ListCtrlStyle {
    public static var LIST:Int                 = untyped __cpp__("wxLC_LIST");              // Multicolumn list view, with optional small icons. Columns are computed automatically, i.e. you don't set columns as in wxLC_REPORT. In other words, the list wraps, unlike a wxListBox.
    public static var REPORT:Int               = untyped __cpp__("wxLC_REPORT");            // Single or multicolumn report view, with optional header.
    public static var VIRTUAL:Int              = untyped __cpp__("wxLC_VIRTUAL");           // The application provides items text on demand. May only be used with wxLC_REPORT.
    public static var ICON:Int                 = untyped __cpp__("wxLC_ICON");              // Large icon view, with optional labels.
    public static var SMALL_ICON:Int           = untyped __cpp__("wxLC_SMALL_ICON");        // Small icon view, with optional labels.
    public static var ALIGN_TOP:Int            = untyped __cpp__("wxLC_ALIGN_TOP");         // Icons align to the top. Win32 default, Win32 only.
    public static var ALIGN_LEFT:Int           = untyped __cpp__("wxLC_ALIGN_LEFT");        // Icons align to the left.
    public static var AUTOARRANGE:Int          = untyped __cpp__("wxLC_AUTOARRANGE");       // Icons arrange themselves. Win32 only.
    public static var EDIT_LABELS:Int          = untyped __cpp__("wxLC_EDIT_LABELS");       // Labels are editable: the application will be notified when editing starts.
    public static var NO_HEADER:Int            = untyped __cpp__("wxLC_NO_HEADER");         // No header in report mode.
    public static var SINGLE_SEL:Int           = untyped __cpp__("wxLC_SINGLE_SEL");        // Single selection (default is multiple).
    public static var SORT_ASCENDING:Int       = untyped __cpp__("wxLC_SORT_ASCENDING");    // Sort in ascending order. (You must still supply a comparison callback in wxListCtrl::SortItems.)
    public static var SORT_DESCENDING:Int      = untyped __cpp__("wxLC_SORT_DESCENDING");   // Sort in descending order. (You must still supply a comparison callback in wxListCtrl::SortItems.)
    public static var HRULES:Int               = untyped __cpp__("wxLC_HRULES");            // Draws light horizontal rules between rows in report mode.
    public static var VRULES:Int               = untyped __cpp__("wxLC_VRULES");            // Draws light vertical rules between columns in report mode.
}