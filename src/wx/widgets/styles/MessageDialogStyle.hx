package wx.widgets.styles;

@:headerCode("
#include <wx/msgdlg.h>
#undef RegisterClass
")
class MessageDialogStyle {

    /** Puts an Ok button in the message box. May be combined with wxCANCEL. */
    public static var OK:Int                          = untyped __cpp__("wxOK");
    /** Puts a Cancel button in the message box. Must be combined with either wxOK or wxYES_NO. */
    public static var CANCEL:Int                      = untyped __cpp__("wxCANCEL");
    /** Puts Yes and No buttons in the message box. It is recommended to always use wxCANCEL with this style as otherwise the
      * message box won't have a close button under wxMSW and the user will be forced to answer it. */
    public static var YES_NO:Int                      = untyped __cpp__("wxYES_NO");
    /** Puts a Help button to the message box. This button can have special appearance or be specially positioned if its label
      * is not changed from the default one. Notice that using this button is not supported when showing a message box from non-main
      * thread in wxOSX/Cocoa. Available since wxWidgets 2.9.3. */
    public static var HELP:Int                        = untyped __cpp__("wxHELP");
    /** Makes the "No" button default, can only be used with wxYES_NO. */
    public static var NO_DEFAULT:Int                  = untyped __cpp__("wxNO_DEFAULT");
    /** Makes the "Cancel" button default, can only be used with wxCANCEL. This style is currently not supported (and ignored) in wxOSX. */
    public static var CANCEL_DEFAULT:Int              = untyped __cpp__("wxCANCEL_DEFAULT");
    /** Makes the "Yes" button default, this is the default behaviour and this flag exists solely for symmetry with wxNO_DEFAULT. */
    public static var YES_DEFAULT:Int                 = untyped __cpp__("wxYES_DEFAULT");
    /** Makes the "OK" button default, this is the default behaviour and this flag exists solely for symmetry with wxCANCEL_DEFAULT. */
    public static var OK_DEFAULT:Int                  = untyped __cpp__("wxOK_DEFAULT");
    /** Displays no icon in the dialog if possible (an icon might still be displayed if the current platform mandates its use).
      * This style may be used to prevent the dialog from using the default icon based on wxYES_NO presence as explained in wxICON_QUESTION
      * and wxICON_INFORMATION documentation below. */
    public static var ICON_NONE:Int                   = untyped __cpp__("wxICON_NONE");
    /** Displays an error icon in the dialog. */
    public static var ICON_ERROR:Int                  = untyped __cpp__("wxICON_ERROR");
    /** Displays a warning icon in the dialog. This style should be used for informative warnings or, in combination with wxYES_NO or wxCANCEL,
      * for questions that have potentially serious consequences (caution icon is used on OS X in this case). */
    public static var ICON_WARNING:Int                = untyped __cpp__("wxICON_WARNING");
    /** Displays a question mark symbol. This icon is automatically used with wxYES_NO so it's usually unnecessary to specify it explicitly.
      * This style is not supported for message dialogs under wxMSW when a task dialog is used to implement them (i.e. when running under
      * Windows Vista or later) because Microsoft guidelines indicate that no icon should be used for routine confirmations. If it is specified,
      * no icon will be displayed. */
    public static var ICON_QUESTION:Int               = untyped __cpp__("wxICON_QUESTION");
    /** Displays an information symbol. This icon is used by default if wxYES_NO is not given so it is usually unnecessary to specify it explicitly. */
    public static var ICON_INFORMATION:Int            = untyped __cpp__("wxICON_INFORMATION");
    /** Alias for wxICON_WARNING. */
    public static var ICON_EXCLAMATION:Int            = untyped __cpp__("wxICON_EXCLAMATION");
    /** Alias for wxICON_ERROR. */
    public static var ICON_HAND:Int                   = untyped __cpp__("wxICON_HAND");
    /** Displays an authentication needed symbol. This style is only supported for message dialogs under wxMSW when a task dialog is used to
      * implement them (i.e. when running under Windows Vista or later). In other cases the default icon selection logic will be used. Note
      * this can be combined with other styles to provide a fallback. For instance, using wxICON_AUTH_NEEDED | wxICON_QUESTION will show a
      * shield symbol on Windows Vista or above and a question symbol on other platforms. Available since wxWidgets 2.9.5 */
    public static var ICON_AUTH_NEEDED:Int            = untyped __cpp__("wxICON_AUTH_NEEDED");
    /** Makes the message box stay on top of all other windows and not only just its parent (currently implemented only under MSW and GTK). */
    public static var STAY_ON_TOP:Int                 = untyped __cpp__("wxSTAY_ON_TOP");
    /** Centre the message box on its parent or on the screen if parent is not specified. Setting this style under MSW makes no differences as the dialog is always centered on the parent. */
    public static var CENTRE:Int                      = untyped __cpp__("wxCENTRE");

}
