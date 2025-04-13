package wx.widgets.styles;

@:headerCode("
#include <wx/wx.h>
#undef RegisterClass
")
class DirDialogStyle {

    /** Equivalent to a combination of wxDEFAULT_DIALOG_STYLE and wxRESIZE_BORDER. */
    public static var DEFAULT_STYLE:Int        = untyped __cpp__("wxDD_DEFAULT_STYLE");
    /** The dialog will allow the user to choose only an existing folder. When this style is not given,
      * a "Create new directory" button is added to the dialog (on Windows) or some other way is provided
      to the user to type the name of a new folder. */
    public static var DIR_MUST_EXIST:Int       = untyped __cpp__("wxDD_DIR_MUST_EXIST");
    /** Change the current working directory to the directory chosen by the user. */
    public static var CHANGE_DIR:Int           = untyped __cpp__("wxDD_CHANGE_DIR");
    #if (wxWidgetsVersion >= version("3.1.4"))
    public static var SHOW_HIDDEN:Int          = untyped __cpp__("wxDD_SHOW_HIDDEN");
    public static var MULTIPLE:Int             = untyped __cpp__("wxDD_MULTIPLE");
    #end
}