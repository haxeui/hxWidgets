package views;

import hx.widgets.*;
import hx.widgets.styles.*;
import views.dialogs.SimpleDialog;

class DialogView extends View {
    public function new(parent:Window) {
        super(parent);
        
        sizer = new BoxSizer(Orientation.VERTICAL);
        var top = new GridSizer(2, 5, 5);

        // modal
        var button:Button = new Button(this, "Open Modal Dialog");
        button.bind(EventType.BUTTON, function(e) {
            var dialog:Dialog = new SimpleDialog(this, "Modal Dialog");
            var r = dialog.showModal();
        });
        top.add(button, 0, Stretch.EXPAND);
        
        // non modal
        var button:Button = new Button(this, "Open Non-Modal Dialog");
        button.bind(EventType.BUTTON, function(e) {
            var dialog:Dialog = new SimpleDialog(this, "Non-Modal Dialog");
            dialog.show();
        });
        top.add(button, 0, Stretch.EXPAND);
        
        sizer.addSizer(top, 0, Stretch.GROW | Direction.ALL, 5);
    }
    
}