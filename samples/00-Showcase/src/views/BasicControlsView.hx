package views;

import hx.widgets.*;
import hx.widgets.styles.*;

class BasicControlsView extends View {
    public function new(parent:Window) {
        super(parent);
        
        sizer = new BoxSizer(Orientation.VERTICAL);

        var hsizer:BoxSizer = new BoxSizer(Orientation.HORIZONTAL);
        
        createButtons(hsizer);
        hsizer.addSpacer(5);
        createTextCtrls(hsizer);
        hsizer.addSpacer(5);
        createStaticComponents(hsizer);
        sizer.addSizer(hsizer);
        
        sizer.addSpacer(5);
        
        var hsizer:BoxSizer = new BoxSizer(Orientation.HORIZONTAL);
        createHComponents(hsizer);
        hsizer.addSpacer(5);
        createVComponents(hsizer);
        sizer.addSizer(hsizer);
        
        layout();
    }
    
    private function createButtons(targetSizer:Sizer) {
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
    }
    
    private function createTextCtrls(targetSizer:Sizer) {
        var frame:StaticBox = new StaticBox(this, "Text Controls");
        targetSizer.add(frame, 0, Stretch.GROW);
        frame.sizer = new StaticBoxSizer(Orientation.VERTICAL, frame, "Text Controls");
        
        var textCtrlSizer:BoxSizer = new BoxSizer(Orientation.HORIZONTAL);
        var vsizer:BoxSizer = new BoxSizer(Orientation.VERTICAL);
        
        var textCtrl:TextCtrl = new TextCtrl(frame, "Text");
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
    }
    
    private function createStaticComponents(targetSizer:Sizer) {
        var frame:StaticBox = new StaticBox(this, "Static Controls");
        targetSizer.add(frame, 0, Stretch.GROW);
        frame.sizer = new StaticBoxSizer(Orientation.VERTICAL, frame, "Static Controls");
        
        var staticSizer:BoxSizer = new BoxSizer(Orientation.HORIZONTAL);
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
        
        var label:StaticText = new StaticText(frame, "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis non sagittis nisl, vel accumsan arcu. Sed diam felis, laoreet eget iaculis sed, consequat in nulla. Cras sit amet interdum dolor. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.");
        label.wrap(220);
        vsizer.add(label);

        staticSizer.addSizer(vsizer);
        frame.sizer.addSizer(staticSizer, 0, Stretch.SHRINK);
    }
    
    private function createHComponents(targetSizer:Sizer) {
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
    }
    
    private function createVComponents(targetSizer:Sizer) {
        var frame:StaticBox = new StaticBox(this, "Vertical Controls");
        targetSizer.add(frame, 0, Stretch.GROW);
        frame.sizer = new StaticBoxSizer(Orientation.HORIZONTAL, frame, "Vertical Controls");

        var gauge:Gauge = new Gauge(frame, 100, GaugeStyle.VERTICAL);
        frame.sizer.add(gauge, 0, Stretch.EXPAND);

        frame.sizer.addSpacer(5);
        
        var gauge:Gauge = new Gauge(frame, 100, GaugeStyle.VERTICAL);
        gauge.value = 50;
        frame.sizer.add(gauge, 0, Stretch.EXPAND);
        
        frame.sizer.addSpacer(5);
        
        var gauge:Gauge = new Gauge(frame, 100, GaugeStyle.VERTICAL);
        gauge.pulse();
        frame.sizer.add(gauge, 0, Stretch.EXPAND);
        
        frame.sizer.addSpacer(5);
        
        var slider:Slider = new Slider(frame, 0, 0, 100, SliderStyle.VERTICAL);
        frame.sizer.add(slider, 0, Stretch.EXPAND);
        slider.bind(EventType.SLIDER, function(e) {
            LogView.log('Slider event: value=${slider.value}');
        });
        
        frame.sizer.addSpacer(5);
        
        var slider:Slider = new Slider(frame, 0, 0, 100, SliderStyle.VERTICAL);
        slider.value = 50;
        frame.sizer.add(slider, 0, Stretch.EXPAND);
        slider.bind(EventType.SLIDER, function(e) {
            LogView.log('Slider event: value=${slider.value}');
        });
        
        frame.sizer.addSpacer(5);
        
        var scrollbar:ScrollBar = new ScrollBar(frame, ScrollBarStyle.VERTICAL);
        scrollbar.setScrollbar(0, 10, 100, 10);
        frame.sizer.add(scrollbar, 0, Stretch.EXPAND);
        scrollbar.bind(EventType.SCROLL_THUMBTRACK, function(e) {
            LogView.log('Scroll thumbtrack event: value=${scrollbar.thumbPosition}');
        });

        frame.sizer.addSpacer(5);
        
        var scrollbar:ScrollBar = new ScrollBar(frame, ScrollBarStyle.VERTICAL);
        scrollbar.setScrollbar(50, 10, 100, 10);
        frame.sizer.add(scrollbar, 0, Stretch.EXPAND);
        scrollbar.bind(EventType.SCROLL_THUMBTRACK, function(e) {
            LogView.log('Scroll thumbtrack event: value=${scrollbar.thumbPosition}');
        });
    }
}