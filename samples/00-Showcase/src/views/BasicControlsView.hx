package views;

import hx.widgets.*;
import hx.widgets.styles.*;

class BasicControlsView extends View {
    public function new(parent:Window) {
        super(parent);
        
        sizer = new BoxSizer(Orientation.VERTICAL);

        var hsizer:BoxSizer = new BoxSizer(Orientation.HORIZONTAL);
        
        createButtons(hsizer);
        hsizer.addSpacer(10);
        createTextCtrls(hsizer);
        hsizer.addSpacer(10);
        createRadioCtrls(hsizer);
        sizer.addSizer(hsizer);

        sizer.addSpacer(5);
        
        var hsizer:BoxSizer = new BoxSizer(Orientation.HORIZONTAL);
        createHComponents(hsizer);
        hsizer.addSpacer(10);
        createVComponents(hsizer);
        hsizer.addSpacer(10);
        createStaticComponents(hsizer);
        sizer.addSizer(hsizer);
        
        /*
        createButtons(hsizer);
        hsizer.addSpacer(10);
        createTextCtrls(hsizer);
        hsizer.addSpacer(10);
        createRadioCtrls(hsizer);
        sizer.addSizer(hsizer);
        
        sizer.addSpacer(5);
        
        var hsizer:BoxSizer = new BoxSizer(Orientation.HORIZONTAL);
        createHComponents(hsizer);
        hsizer.addSpacer(10);
        createVComponents(hsizer);
        hsizer.addSpacer(10);
        createStaticComponents(hsizer);

        */

//        sizer.addSizer(hsizer);
        
        //layout();
    }
    
    private function createButtons(targetSizer:Sizer) {
        var buttonSizer:GridSizer = new GridSizer(2);
        var frame = createFrame("Buttons", buttonSizer, this);
        
        var button:Button = new Button(frame, "Left");
        button.bitmap = Bitmap.fromHaxeResource("haxe-logo-small.png");
        buttonSizer.add(button);
        button.bind(EventType.BUTTON, function(e:Event) {
            LogView.log('Button event: label=${button.label}');
        });
        
        var button:Button = new Button(frame, "Right");
        button.bitmap = Bitmap.fromHaxeResource("haxe-logo-small.png");
        button.bitmapPosition = Direction.RIGHT;
        buttonSizer.add(button);
        button.bind(EventType.BUTTON, function(e:Event) {
            LogView.log('Button event: label=${button.label}');
        });

        var button:Button = new Button(frame, "Top");
        button.bitmap = Bitmap.fromHaxeResource("wx-logo-small.png");
        button.bitmapPosition = Direction.TOP;
        buttonSizer.add(button);
        button.bind(EventType.BUTTON, function(e:Event) {
            LogView.log('Button event: label=${button.label}');
        });
        
        var button:Button = new Button(frame, "Bottom");
        button.bitmap = Bitmap.fromHaxeResource("wx-logo-small.png");
        button.bitmapPosition = Direction.BOTTOM;
        buttonSizer.add(button);
        button.bind(EventType.BUTTON, function(e:Event) {
            LogView.log('Button event: label=${button.label}');
        });
        
        targetSizer.add(frame, 0, Stretch.GROW);
        
        /*
        var frame:StaticBox = new StaticBox(this, "Buttons");
        frame.sizer = new StaticBoxSizer(Orientation.VERTICAL, frame, "Buttons");
        targetSizer.add(frame, 0, Stretch.GROW);
        
        var buttonSizer:GridSizer = new GridSizer(2);
        var button:Button = new Button(frame, "Left");
        button.bitmap = Bitmap.fromHaxeResource("haxe-logo-small.png");
        buttonSizer.add(button);
        button.bind(EventType.BUTTON, function(e:Event) {
            LogView.log('Button event: label=${button.label}');
        });
        
        var button:Button = new Button(frame, "Right");
        button.bitmap = Bitmap.fromHaxeResource("haxe-logo-small.png");
        button.bitmapPosition = Direction.RIGHT;
        buttonSizer.add(button);
        button.bind(EventType.BUTTON, function(e:Event) {
            LogView.log('Button event: label=${button.label}');
        });

        var button:Button = new Button(frame, "Top");
        button.bitmap = Bitmap.fromHaxeResource("wx-logo-small.png");
        button.bitmapPosition = Direction.TOP;
        buttonSizer.add(button);
        button.bind(EventType.BUTTON, function(e:Event) {
            LogView.log('Button event: label=${button.label}');
        });
        
        var button:Button = new Button(frame, "Bottom");
        button.bitmap = Bitmap.fromHaxeResource("wx-logo-small.png");
        button.bitmapPosition = Direction.BOTTOM;
        buttonSizer.add(button);
        button.bind(EventType.BUTTON, function(e:Event) {
            LogView.log('Button event: label=${button.label}');
        });
        
        frame.sizer.addSizer(buttonSizer);
        */
    }
    
    private function createTextCtrls(targetSizer:Sizer) {
        var textCtrlSizer:BoxSizer = new BoxSizer(Orientation.HORIZONTAL);
        var frame = createFrame("Text Controls", textCtrlSizer, this);
        
        var vsizer:BoxSizer = new BoxSizer(Orientation.VERTICAL);
        
        var textCtrl:TextCtrl = new TextCtrl(frame, "Text");
        vsizer.add(textCtrl);
        
        vsizer.addSpacer(5);
        
        var textCtrl:TextCtrl = new TextCtrl(frame, "Text");
        textCtrl.foregroundColour = 0xFF0000;
        textCtrl.backgroundColour = 0x880000;
        vsizer.add(textCtrl);
        
        vsizer.addSpacer(5);
        
        var textCtrl:TextCtrl = new TextCtrl(frame, "Text", TextCtrlStyle.PASSWORD);
        vsizer.add(textCtrl);

        vsizer.addSpacer(5);
        
        var textCtrl:TextCtrl = new TextCtrl(frame, "Text", TextCtrlStyle.READONLY);
        vsizer.add(textCtrl);

        textCtrlSizer.addSizer(vsizer);
        
        textCtrlSizer.addSpacer(5);
        
        var textCtrl:TextCtrl = new TextCtrl(frame, "Text", TextCtrlStyle.MULTILINE);
        textCtrlSizer.add(textCtrl, 1, Stretch.GROW);
        
        targetSizer.add(frame, 0, Stretch.GROW);
        /*
        var frame:StaticBox = new StaticBox(this, "Text Controls");
        targetSizer.add(frame, 0, Stretch.GROW);
        frame.sizer = new StaticBoxSizer(Orientation.VERTICAL, frame, "Text Controls");
        
        var textCtrlSizer:BoxSizer = new BoxSizer(Orientation.HORIZONTAL);
        var vsizer:BoxSizer = new BoxSizer(Orientation.VERTICAL);
        
        var textCtrl:TextCtrl = new TextCtrl(frame, "Text");
        vsizer.add(textCtrl);
        
        vsizer.addSpacer(5);
        
        var textCtrl:TextCtrl = new TextCtrl(frame, "Text");
        textCtrl.foregroundColour = 0xFF0000;
        textCtrl.backgroundColour = 0x880000;
        vsizer.add(textCtrl);
        
        vsizer.addSpacer(5);
        
        var textCtrl:TextCtrl = new TextCtrl(frame, "Text", TextCtrlStyle.PASSWORD);
        vsizer.add(textCtrl);

        vsizer.addSpacer(5);
        
        var textCtrl:TextCtrl = new TextCtrl(frame, "Text", TextCtrlStyle.READONLY);
        vsizer.add(textCtrl);

        textCtrlSizer.addSizer(vsizer);
        
        textCtrlSizer.addSpacer(5);
        
        var textCtrl:TextCtrl = new TextCtrl(frame, "Line 1\nLine 2\nLine 3\nLine 4\nLine 5\nLine 6\nLine 7\nLine 8\nLine 9\nLine 10\nLine 11\nLine 12\nLine 13\nLine 14\nLine 15", TextCtrlStyle.MULTILINE);
        textCtrlSizer.add(textCtrl, 1, Stretch.GROW);
        
        frame.sizer.addSizer(textCtrlSizer, 0, Stretch.SHRINK);
        */
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
        /*
        var frame:StaticBox = new StaticBox(this, "Check / Radio Controls");
        targetSizer.add(frame, 0, Stretch.GROW);
        frame.sizer = new StaticBoxSizer(Orientation.HORIZONTAL, frame, "Check / Radio Controls");
        

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
        
        frame.sizer.addSizer(vsizer);
        frame.sizer.addSpacer(5);        
        
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
        
        frame.sizer.addSizer(vsizer);
        frame.sizer.addSpacer(5);        
        
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
        
        frame.sizer.addSizer(vsizer);
        */
    }
    
    private function createHComponents(targetSizer:Sizer) {
        /*
        var frame:StaticBox = new StaticBox(this, "Horizontal Controls");
        targetSizer.add(frame, 0, Stretch.GROW);
        frame.sizer = new StaticBoxSizer(Orientation.VERTICAL, frame, "Horizontal Controls");
        */
        var innerSizer:BoxSizer = new BoxSizer(Orientation.VERTICAL);
        var frame = createFrame("Horizontal Controls", innerSizer, this);
        
        
        var gauge:Gauge = new Gauge(frame);
        innerSizer.add(gauge, 0, Stretch.EXPAND);
        
        innerSizer.addSpacer(5);
        
        var gauge:Gauge = new Gauge(frame);
        gauge.value = 50;
        innerSizer.add(gauge, 0, Stretch.EXPAND);
        
        innerSizer.addSpacer(5);
        
        var gauge:Gauge = new Gauge(frame);
        gauge.pulse();
        innerSizer.add(gauge, 0, Stretch.EXPAND);
        
        innerSizer.addSpacer(5);
        
        var slider:Slider = new Slider(frame);
        innerSizer.add(slider, 0, Stretch.EXPAND);
        slider.bind(EventType.SLIDER, function(e) {
            LogView.log('Slider event: value=${slider.value}');
        });
        
        innerSizer.addSpacer(5);
        
        var slider:Slider = new Slider(frame);
        slider.value = 50;
        innerSizer.add(slider, 0, Stretch.EXPAND);
        slider.bind(EventType.SLIDER, function(e) {
            LogView.log('Slider event: value=${slider.value}');
        });
        
        targetSizer.add(frame, 0, Stretch.GROW);
        /*
        var frame:StaticBox = new StaticBox(this, "Horizontal Controls");
        targetSizer.add(frame, 0, Stretch.GROW);
        frame.sizer = new StaticBoxSizer(Orientation.VERTICAL, frame, "Horizontal Controls");
        
        var gauge:Gauge = new Gauge(frame);
        frame.sizer.add(gauge, 0, Stretch.EXPAND);
        
        frame.sizer.addSpacer(5);
        
        var gauge:Gauge = new Gauge(frame);
        gauge.value = 50;
        frame.sizer.add(gauge, 0, Stretch.EXPAND);
        
        frame.sizer.addSpacer(5);
        
        var gauge:Gauge = new Gauge(frame);
        gauge.pulse();
        frame.sizer.add(gauge, 0, Stretch.EXPAND);
        
        frame.sizer.addSpacer(5);
        
        var slider:Slider = new Slider(frame);
        frame.sizer.add(slider, 0, Stretch.EXPAND);
        slider.bind(EventType.SLIDER, function(e) {
            LogView.log('Slider event: value=${slider.value}');
        });
        
        frame.sizer.addSpacer(5);
        
        var slider:Slider = new Slider(frame);
        slider.value = 50;
        frame.sizer.add(slider, 0, Stretch.EXPAND);
        slider.bind(EventType.SLIDER, function(e) {
            LogView.log('Slider event: value=${slider.value}');
        });
        
        frame.sizer.addSpacer(5);
        
        var scrollbar:ScrollBar = new ScrollBar(frame, ScrollBarStyle.HORIZONTAL);
        scrollbar.setScrollbar(0, 10, 100, 10);
        frame.sizer.add(scrollbar, 0, Stretch.EXPAND);
        scrollbar.bind(EventType.SCROLL_THUMBTRACK, function(e) {
            LogView.log('Scroll thumbtrack event: value=${scrollbar.thumbPosition}');
        });

        frame.sizer.addSpacer(5);
        
        var scrollbar:ScrollBar = new ScrollBar(frame, ScrollBarStyle.HORIZONTAL);
        scrollbar.setScrollbar(50, 10, 100, 10);
        frame.sizer.add(scrollbar, 0, Stretch.EXPAND);
        scrollbar.bind(EventType.SCROLL_THUMBTRACK, function(e) {
            LogView.log('Scroll thumbtrack event: value=${scrollbar.thumbPosition}');
        });
        */
    }
    
    private function createVComponents(targetSizer:Sizer) {
        var innerSizer:BoxSizer = new BoxSizer(Orientation.HORIZONTAL);
        var frame = createFrame("Vertical Controls", innerSizer, this);

        /*
        var frame:StaticBox = new StaticBox(this, "Vertical Controls");
        targetSizer.add(frame, 0, Stretch.GROW);
        frame.sizer = new StaticBoxSizer(Orientation.HORIZONTAL, frame, "Vertical Controls");
        */

        var gauge:Gauge = new Gauge(frame, 100, GaugeStyle.VERTICAL);
        innerSizer.add(gauge, 0, Stretch.EXPAND);

        innerSizer.addSpacer(5);
        
        var gauge:Gauge = new Gauge(frame, 100, GaugeStyle.VERTICAL);
        gauge.value = 50;
        innerSizer.add(gauge, 0, Stretch.EXPAND);
        
        innerSizer.addSpacer(5);
        
        var gauge:Gauge = new Gauge(frame, 100, GaugeStyle.VERTICAL);
        gauge.pulse();
        innerSizer.add(gauge, 0, Stretch.EXPAND);
        
        innerSizer.addSpacer(5);
        
        var slider:Slider = new Slider(frame, 0, 0, 100, SliderStyle.VERTICAL);
        innerSizer.add(slider, 0, Stretch.EXPAND);
        slider.bind(EventType.SLIDER, function(e) {
            LogView.log('Slider event: value=${slider.value}');
        });
        
        frame.sizer.addSpacer(5);
        
        var slider:Slider = new Slider(frame, 0, 0, 100, SliderStyle.VERTICAL);
        slider.value = 50;
        innerSizer.add(slider, 0, Stretch.EXPAND);
        slider.bind(EventType.SLIDER, function(e) {
            LogView.log('Slider event: value=${slider.value}');
        });
        
        targetSizer.add(frame, 0, Stretch.GROW);
    }
    
    private function createStaticComponents(targetSizer:Sizer) {
        var staticSizer:BoxSizer = new BoxSizer(Orientation.HORIZONTAL);
        var frame = createFrame("Static Controls", staticSizer, this);
        
        /*
        var frame:StaticBox = new StaticBox(this, "Static Controls");
        targetSizer.add(frame, 0, Stretch.GROW);
        frame.sizer = new StaticBoxSizer(Orientation.VERTICAL, frame, "Static Controls");
        */
        
        var vsizer:BoxSizer = new BoxSizer(Orientation.VERTICAL);
        
        var bmp:StaticBitmap = new StaticBitmap(frame, Bitmap.fromHaxeResource("haxe-logo-small.png"));
        vsizer.add(bmp);

        vsizer.addSpacer(5);
        
        var bmp:StaticBitmap = new StaticBitmap(frame, Bitmap.fromHaxeResource("wx-logo-small.png"));
        vsizer.add(bmp);

        vsizer.addSpacer(5);
        
        staticSizer.addSizer(vsizer);
        
        staticSizer.addSpacer(10);
        
        var vsizer:BoxSizer = new BoxSizer(Orientation.VERTICAL);
        var label:StaticText = new StaticText(frame, "Static text");
        vsizer.add(label);

        var label:StaticText = new StaticText(frame, "Static text");
        label.font = new Font(16, null, FontStyle.ITALIC, FontWeight.BOLD);
        label.foregroundColour = 0x0000FF;
        vsizer.add(label);
        
        var label:StaticText = new StaticText(frame, "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis non sagittis nisl, vel accumsan arcu. Sed diam felis, laoreet eget iaculis sed, consequat in nulla. Cras sit amet interdum dolor. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Suspendisse sed nunc mauris. Pellentesque eget dui sed nulla pharetra hendrerit eu ultrices arcu.");
        label.wrap(300);
        vsizer.add(label);

        staticSizer.addSizer(vsizer);
        //frame.sizer.addSizer(staticSizer, 0, Stretch.SHRINK);
        
        targetSizer.add(frame, 0, Stretch.GROW);
    }
    
}