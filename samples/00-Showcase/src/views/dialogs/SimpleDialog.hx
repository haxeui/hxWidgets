package views.dialogs;

import hx.widgets.*;
import hx.widgets.styles.*;

class SimpleDialog extends Dialog {

    public function new(parent:Window, title:String) {
        super(parent, title);

        sizer = new BoxSizer(Orientation.VERTICAL);
        var top = new BoxSizer(Orientation.VERTICAL);

        createRadioCtrls(top);

        var buttons = createStdDialogButtonSizer(0);
        var button =  new Button(this, "Done", 0, 12345);
        this.addMainButtonId(12345);
        button.bind(EventType.BUTTON, function(e) {
            if (isModal) {
                endModal(555);
            }
            else {
                hide();
            }
        });
        buttons.add(button);
//        buttons.addButton(button);
        
        
        sizer.addSizer(top, 1, Stretch.EXPAND | Direction.ALL, 5);
        sizer.addSizer(buttons, 0, Stretch.GROW | Direction.ALL, 5);
        fit();
    }

    private function createRadioCtrls(targetSizer:Sizer) {
        var innerSizer:BoxSizer = new BoxSizer(Orientation.HORIZONTAL);
        var frame = createFrame("Check / Radio Controls", innerSizer, this);

        // checks
        var vsizer:BoxSizer = new BoxSizer(Orientation.VERTICAL);
        var check:CheckBox = new CheckBox(frame, "Check 1");
        check.bind(EventType.CHECKBOX, function(e:Event) {
            LogView.log('Checbox event: label=${check.label}, value=${check.value}');
        });
        vsizer.add(check);
        vsizer.addSpacer(5);

        var check:CheckBox = new CheckBox(frame, "Check 2");
        check.bind(EventType.CHECKBOX, function(e:Event) {
            LogView.log('Checbox event: label=${check.label}, value=${check.value}');
        });
        vsizer.add(check);
        vsizer.addSpacer(5);

        var check:CheckBox = new CheckBox(frame, "Check 3");
        check.bind(EventType.CHECKBOX, function(e:Event) {
            LogView.log('Checbox event: label=${check.label}, value=${check.value}');
        });
        vsizer.add(check);
        check.value = true;
        vsizer.addSpacer(5);

        var check:CheckBox = new CheckBox(frame, "Check 4");
        check.bind(EventType.CHECKBOX, function(e:Event) {
            LogView.log('Checbox event: label=${check.label}, value=${check.value}');
        });
        vsizer.add(check);
        vsizer.addSpacer(5);

        var check:CheckBox = new CheckBox(frame, "Check 5");
        check.bind(EventType.CHECKBOX, function(e:Event) {
            LogView.log('Checbox event: label=${check.label}, value=${check.value}');
        });
        vsizer.add(check);

        innerSizer.addSizer(vsizer);
        innerSizer.addSpacer(5);

        // radio A
        var vsizer:BoxSizer = new BoxSizer(Orientation.VERTICAL);
        var radio:RadioButton = new RadioButton(frame, "Option 1A");
        radio.bind(EventType.RADIOBUTTON, function(e:Event) {
            LogView.log('Radio button event: label=${radio.label}, value=${radio.value}');
        });
        vsizer.add(radio);
        vsizer.addSpacer(5);

        var radio:RadioButton = new RadioButton(frame, "Option 2A");
        radio.bind(EventType.RADIOBUTTON, function(e:Event) {
            LogView.log('Radio button event: label=${radio.label}, value=${radio.value}');
        });
        vsizer.add(radio);
        vsizer.addSpacer(5);

        var radio:RadioButton = new RadioButton(frame, "Option 3A");
        radio.bind(EventType.RADIOBUTTON, function(e:Event) {
            LogView.log('Radio button event: label=${radio.label}, value=${radio.value}');
        });
        vsizer.add(radio);
        radio.value = true;
        vsizer.addSpacer(5);

        var radio:RadioButton = new RadioButton(frame, "Option 4A");
        radio.bind(EventType.RADIOBUTTON, function(e:Event) {
            LogView.log('Radio button event: label=${radio.label}, value=${radio.value}');
        });
        vsizer.add(radio);
        vsizer.addSpacer(5);

        var radio:RadioButton = new RadioButton(frame, "Option 5A");
        radio.bind(EventType.RADIOBUTTON, function(e:Event) {
            LogView.log('Radio button event: label=${radio.label}, value=${radio.value}');
        });
        vsizer.add(radio);

        innerSizer.addSizer(vsizer);
        innerSizer.addSpacer(5);

        // radio B
        var vsizer:BoxSizer = new BoxSizer(Orientation.VERTICAL);
        var radio:RadioButton = new RadioButton(frame, "Option 1A", RadioButtonStyle.GROUP);
        radio.bind(EventType.RADIOBUTTON, function(e:Event) {
            LogView.log('Radio button event: label=${radio.label}, value=${radio.value}');
        });
        vsizer.add(radio);
        vsizer.addSpacer(5);

        var radio:RadioButton = new RadioButton(frame, "Option 2A");
        radio.bind(EventType.RADIOBUTTON, function(e:Event) {
            LogView.log('Radio button event: label=${radio.label}, value=${radio.value}');
        });
        vsizer.add(radio);
        vsizer.addSpacer(5);

        var radio:RadioButton = new RadioButton(frame, "Option 3A");
        radio.bind(EventType.RADIOBUTTON, function(e:Event) {
            LogView.log('Radio button event: label=${radio.label}, value=${radio.value}');
        });
        vsizer.add(radio);
        radio.value = true;
        vsizer.addSpacer(5);

        var radio:RadioButton = new RadioButton(frame, "Option 4A");
        radio.bind(EventType.RADIOBUTTON, function(e:Event) {
            LogView.log('Radio button event: label=${radio.label}, value=${radio.value}');
        });
        vsizer.add(radio);
        vsizer.addSpacer(5);

        var radio:RadioButton = new RadioButton(frame, "Option 5A");
        radio.bind(EventType.RADIOBUTTON, function(e:Event) {
            LogView.log('Radio button event: label=${radio.label}, value=${radio.value}');
        });
        vsizer.add(radio);

        innerSizer.addSizer(vsizer);

        targetSizer.add(frame, 0, Stretch.GROW);
    }

    private function createFrame(title:String, innerSizer:Sizer, parentWindow:Window = null):Panel {
        if (parentWindow == null) {
            parentWindow = this;
        }

        var frame:Panel = new Panel(parentWindow);
        frame.sizer = new StaticBoxSizer(Orientation.VERTICAL, frame, title);
        frame.sizer.addSizer(innerSizer, 1, Stretch.GROW | Direction.ALL, 5);

        return frame;
    }

}
