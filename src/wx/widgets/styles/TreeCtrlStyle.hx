package wx.widgets.styles;

@:headerCode("#include <wx/treectrl.h>")
class TreeCtrlStyle {
    /** Use this style if you wish the user to be able to edit labels in the tree control. **/
    public static var EDIT_LABELS:Int               = untyped __cpp__("wxTR_EDIT_LABELS");
    /** For convenience to document that no buttons are to be drawn. **/
    public static var NO_BUTTONS:Int                = untyped __cpp__("wxTR_NO_BUTTONS");
    /** Use this style to show + and - buttons to the left of parent items. **/
    public static var HAS_BUTTONS:Int               = untyped __cpp__("wxTR_HAS_BUTTONS");
    /** Selects alternative style of +/- buttons and shows rotating ("twisting") arrows instead. Currently this style is only implemented under Microsoft Windows Vista and later Windows versions and is ignored under the other platforms. Notice that under Vista this style results in the same appearance as used by the tree control in Explorer and other built-in programs and so using it may be preferable to the default style. **/
    public static var TWIST_BUTTONS:Int             = untyped __cpp__("wxTR_TWIST_BUTTONS");
    /** Use this style to hide vertical level connectors. **/
    public static var NO_LINES:Int                  = untyped __cpp__("wxTR_NO_LINES");
    /** Use this style to have the background colour and the selection highlight extend over the entire horizontal row of the tree control window. (This flag is ignored under Windows unless you specify wxTR_NO_LINES as well.) **/
    public static var FULL_ROW_HIGHLIGHT:Int        = untyped __cpp__("wxTR_FULL_ROW_HIGHLIGHT");
    /** Use this style to show lines between root nodes. Only applicable if wxTR_HIDE_ROOT is set and wxTR_NO_LINES is not set. **/
    public static var LINES_AT_ROOT:Int             = untyped __cpp__("wxTR_LINES_AT_ROOT");
    /** Use this style to suppress the display of the root node, effectively causing the first-level nodes to appear as a series of root nodes. **/
    public static var HIDE_ROOT:Int                 = untyped __cpp__("wxTR_HIDE_ROOT");
    /** Use this style to draw a contrasting border between displayed rows. **/
    public static var ROW_LINES:Int                 = untyped __cpp__("wxTR_ROW_LINES");
    /** Use this style to cause row heights to be just big enough to fit the content. If not set, all rows use the largest row height. The default is that this flag is unset. Generic only. **/
    public static var HAS_VARIABLE_ROW_HEIGHT:Int   = untyped __cpp__("wxTR_HAS_VARIABLE_ROW_HEIGHT");
    /** For convenience to document that only one item may be selected at a time. Selecting another item causes the current selection, if any, to be deselected. This is the default. **/
    public static var SINGLE:Int                    = untyped __cpp__("wxTR_SINGLE");
    /** Use this style to allow a range of items to be selected. If a second range is selected, the current range, if any, is deselected. **/
    public static var MULTIPLE:Int                  = untyped __cpp__("wxTR_MULTIPLE");
    /** The set of flags that are closest to the defaults for the native control for a particular toolkit. **/
    public static var DEFAULT_STYLE:Int             = untyped __cpp__("wxTR_DEFAULT_STYLE");
}