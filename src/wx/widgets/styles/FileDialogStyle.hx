package wx.widgets.styles;

@:headerCode("
#include <wx/filedlg.h>
#undef RegisterClass
")
class FileDialogStyle {

    /** Equivalent to wxFD_OPEN. */
    public static var DEFAULT_STYLE:Int            = untyped __cpp__("wxFD_DEFAULT_STYLE");
    /** This is an open dialog; usually this means that the default button's label of the dialog is "Open". Cannot be combined with wxFD_SAVE. */
    public static var OPEN:Int                     = untyped __cpp__("wxFD_OPEN");
    /** This is a save dialog; usually this means that the default button's label of the dialog is "Save". Cannot be combined with wxFD_OPEN. */
    public static var SAVE:Int                     = untyped __cpp__("wxFD_SAVE");
    /** For save dialog only: prompt for a confirmation if a file will be overwritten. */
    public static var OVERWRITE_PROMPT:Int         = untyped __cpp__("wxFD_OVERWRITE_PROMPT");
    /** Directs the dialog to return the path and file name of the selected shortcut file, not its target as it does by default. Currently this
      * flag is only implemented in wxMSW and the non-dereferenced link path is always returned, even without this flag, under Unix and so using
      * it there doesn't do anything. This flag was added in wxWidgets 3.1.0. */
    //public static var NO_FOLLOW:Int                = untyped __cpp__("wxFD_NO_FOLLOW");
    /** For open dialog only: the user may only select files that actually exist. Notice that under OS X the file dialog with wxFD_OPEN style
      * always behaves as if this style was specified, because it is impossible to choose a file that doesn't exist from a standard OS X file dialog. */
    public static var FILE_MUST_EXIST:Int          = untyped __cpp__("wxFD_FILE_MUST_EXIST");
    /** For open dialog only: allows selecting multiple files. */
    public static var MULTIPLE:Int                 = untyped __cpp__("wxFD_MULTIPLE");
    /** Change the current working directory (when the dialog is dismissed) to the directory where the file(s) chosen by the user are. */
    public static var CHANGE_DIR:Int               = untyped __cpp__("wxFD_CHANGE_DIR");
    /** Show the preview of the selected files (currently only supported by wxGTK). */
    public static var PREVIEW:Int                  = untyped __cpp__("wxFD_PREVIEW");

}