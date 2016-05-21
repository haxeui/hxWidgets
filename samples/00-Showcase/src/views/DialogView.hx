package views;

import hx.widgets.*;
import hx.widgets.styles.*;
import views.dialogs.SimpleDialog;

class DialogView extends View {

    private var _selectedColour:Int;

    public function new(parent:Window) {
        _selectedColour = -1;

        super(parent);

        var platform:PlatformInfo = new PlatformInfo();

        sizer = new BoxSizer(Orientation.VERTICAL);
        var top = new GridSizer(2, 5, 5);

        // modal
        var button:Button = new Button(this, "Open Modal Dialog");
        button.bind(EventType.BUTTON, function(e) {
            var dialog:Dialog = new SimpleDialog(this, "Modal Dialog");
            var r = dialog.showModal();
            LogView.log('Dialog result: ${r}');
        });
        top.add(button, 0, Stretch.EXPAND);

        // non modal
        var button:Button = new Button(this, "Open Non-Modal Dialog");
        button.bind(EventType.BUTTON, function(e) {
            var dialog:Dialog = new SimpleDialog(this, "Non-Modal Dialog");
            dialog.show();
        });
        top.add(button, 0, Stretch.EXPAND);

        // colour dialog
        var button:Button = new Button(this, "Open Colour Dialog");
        button.bind(EventType.BUTTON, function(e) {
            var dialog:ColourDialog = new ColourDialog(this, _selectedColour, true);
            var r = dialog.showModal();
            if (r == StandardId.OK) {
                var hex:String = StringTools.hex(dialog.selectedColour, 6);
                LogView.log('Colour selected: ${hex}');
                _selectedColour = dialog.selectedColour;
            }
            else {
                LogView.log("Colour dialog cancelled");
            }
        });
        top.add(button, 0, Stretch.EXPAND);

        // font dialog
        var button:Button = new Button(this, "Open Font Dialog");
        button.bind(EventType.BUTTON, function(e) {
            var dialog:FontDialog = new FontDialog(this);
            var r = dialog.showModal();
        });
        top.add(button, 0, Stretch.EXPAND);

        // file dialog
        var button:Button = new Button(this, "Open File Dialog");
        button.bind(EventType.BUTTON, function(e) {
            var dialog:FileDialog = new FileDialog(this, "Open a Haxe file", null, null, "All(*.*)|*.*|Haxe files (*.hx)|*.hx|Haxe build files (*.hxml)|*.hxml");
            var r = dialog.showModal();
            var log = 'selected file ${dialog.filename} from ${dialog.directory} using filter ${dialog.filterIndex} with wildcards ${dialog.wildcard}';
            if (r == StandardId.OK) {
                LogView.log('FileDialog open: $log');
            }
            else {
                LogView.log('FileDialog cancel: $log');
            }

        });
        top.add(button, 0, Stretch.EXPAND);

        /*
        if (platform.isWindows) {
            // dir dialog
            var button:Button = new Button(this, "Open Dir Dialog");
            button.bind(EventType.BUTTON, function(e) {
                var dialog:DirDialog = new DirDialog(this);
                var r = dialog.showModal();
            });
            top.add(button, 0, Stretch.EXPAND);
        }
        */

        // text entry dialog
        var button:Button = new Button(this, "Open Text Entry Dialog");
        button.bind(EventType.BUTTON, function(e) {
            var dialog:TextEntryDialog = new TextEntryDialog(this, "Enter name", "Text entry");
            var r = dialog.showModal();
        });
        top.add(button, 0, Stretch.EXPAND);

        // password entry dialog
        var button:Button = new Button(this, "Open Password Entry Dialog");
        button.bind(EventType.BUTTON, function(e) {
            var dialog:PasswordEntryDialog = new PasswordEntryDialog(this, "Enter password", "Password entry");
            var r = dialog.showModal();
        });
        top.add(button, 0, Stretch.EXPAND);

        // default message dialog
        var button:Button = new Button(this, "Open Default Message Dialog");
        button.bind(EventType.BUTTON, function(e) {
            var dialog:MessageDialog = new MessageDialog(this, "Click 'OK' button to dismiss this popup", "Message Dialog");
            var r = dialog.showModal();
        });
        top.add(button, 0, Stretch.EXPAND);

        // warning message dialog
        var button:Button = new Button(this, "Open Warning Message Dialog");
        button.bind(EventType.BUTTON, function(e) {
            var dialog:MessageDialog = new MessageDialog(this, "Click 'OK' button to dismiss this popup", "Message Dialog", MessageDialogStyle.ICON_WARNING);
            var r = dialog.showModal();
        });
        top.add(button, 0, Stretch.EXPAND);

        // error message dialog
        var button:Button = new Button(this, "Open Error Message Dialog");
        button.bind(EventType.BUTTON, function(e) {
            var dialog:MessageDialog = new MessageDialog(this, "Click 'OK' button to dismiss this popup", "Message Dialog", MessageDialogStyle.ICON_ERROR);
            var r = dialog.showModal();
        });
        top.add(button, 0, Stretch.EXPAND);

        // question message dialog
        var button:Button = new Button(this, "Open Question Message Dialog");
        button.bind(EventType.BUTTON, function(e) {
            var dialog:MessageDialog = new MessageDialog(this, "Click a button to dismiss this popup", "Message Dialog", MessageDialogStyle.YES_NO | MessageDialogStyle.CANCEL);
            var r = dialog.showModal();
        });
        top.add(button, 0, Stretch.EXPAND);

        // single choice dialog
        var button:Button = new Button(this, "Open Single Choice Dialog");
        button.bind(EventType.BUTTON, function(e) {
            var dialog:SingleChoiceDialog = new SingleChoiceDialog(this, "Select a single option from the list below and click 'OK'", "Single Choice Dialog",
                ["Option 1", "Option 2", "Option 3", "Option 4", "Option 5", "Option 6"]);
            var r = dialog.showModal();
        });
        top.add(button, 0, Stretch.EXPAND);

        // multi choice dialog
        var button:Button = new Button(this, "Open Multi Choice Dialog");
        button.bind(EventType.BUTTON, function(e) {
            var dialog:MultiChoiceDialog = new MultiChoiceDialog(this, "Select multiple options from the list below and click 'OK'", "Multiple Choice Dialog",
                ["Option 1", "Option 2", "Option 3", "Option 4", "Option 5", "Option 6"]);
            var r = dialog.showModal();
        });
        top.add(button, 0, Stretch.EXPAND);

        sizer.addSizer(top, 0, Stretch.GROW | Direction.ALL, 5);
    }
}
