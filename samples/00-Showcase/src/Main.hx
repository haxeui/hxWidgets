import cpp.Lib;
import hx.widgets.*;
import hx.widgets.App.WxAppRef;

class Main {
    public static function main() {
        var app = new App();
        app.init();
        
        var frame:Frame = new Frame(null, "hxWidgets");
        //frame.setStatusText("Status: OK");
        frame.backgroundColour = 0xFFFFFF;
        frame.show(true);
        frame.x = 20;
        frame.y = 40;
        frame.width = 400;
        frame.height = 200;
        frame.setSize(10, 10, 800, 600);
        trace(frame.getSize().width);
        trace(frame.getPosition().x);
        
            // create a button
            var button:Button = new Button(frame, "Button 1");
            button.setBitmap(Bitmap.fromHaxeResource("inbox.bmp"));
            button.setSize(10, 10, 100, 100);
            button.bind(EventType.BUTTON, function(e:Event) {
                trace("click!");
                trace(e.getEventType());
                trace(e.getId());
            });
        
            // create a chekboxes
            var checkbox:CheckBox = new CheckBox(frame, "Check 1");
            checkbox.bind(EventType.CHECKBOX, function(e:Event) {
                trace("checkbox 1: " + checkbox.value);
            });
            checkbox.move(120, 10);

            var checkbox:CheckBox = new CheckBox(frame, "Check 2");
            checkbox.bind(EventType.CHECKBOX, function(e:Event) {
                trace("checkbox 2: " + checkbox.value);
            });
            checkbox.value = true;
            checkbox.move(190, 10);

            var checkbox:CheckBox = new CheckBox(frame, "Check 3");
            checkbox.bind(EventType.CHECKBOX, function(e:Event) {
                trace("checkbox 3: " + checkbox.value);
            });
            checkbox.move(260, 10);
            
            // create radio buttons
            var radio:RadioButton = new RadioButton(frame, "Option 1");
            radio.move(360, 10);

            var radio:RadioButton = new RadioButton(frame, "Option 2");
            radio.value = true;
            radio.move(430, 10);

            var radio:RadioButton = new RadioButton(frame, "Option 3");
            radio.move(500, 10);
            
            // create text inputs
            var textctrl:TextCtrl = new TextCtrl(frame, "Text input 1");
            textctrl.move(10, 150);            

            var textctrl:TextCtrl = new TextCtrl(frame, "Password 1", hx.widgets.TextCtrl.TextCtrlStyle.PASSWORD);
            textctrl.move(10, 180);            

            var textctrl:TextCtrl = new TextCtrl(frame, "Text input 2", hx.widgets.TextCtrl.TextCtrlStyle.READONLY);
            textctrl.move(130, 150);            
            
            var textctrl:TextCtrl = new TextCtrl(frame, null, hx.widgets.TextCtrl.TextCtrlStyle.MULTILINE | hx.widgets.TextCtrl.TextCtrlStyle.RICH);
            textctrl.move(250, 150);   
            textctrl.height = 70;
            textctrl.appendText("This is line 1\n");
            textctrl.appendText("This is line 2\n");
            textctrl.appendText("This is line 3\n");
            textctrl.appendText("This is line 4\n");
            textctrl.appendText("This is line 5\n");
            textctrl.insertionPoint = 0;
            
            var box:StaticBox = new StaticBox(frame, "Static Box");
            box.move(390, 150);
            box.width = 100;
            box.height = 70;
            
            var label:StaticText = new StaticText(box, "Static text");
            label.move(10, 20);
            
            var link:HyperlinkCtrl = new HyperlinkCtrl(box, "hxWidgets", "https://github.com/ianharrigan/hxWidgets");
            link.move(10, 40);
            
            // create a gauge (progress bar)
            var gauge:Gauge = new Gauge(frame);
            gauge.move(120, 30);
            gauge.value = 50;
            
            // create a slider
            var slider:Slider = new Slider(frame);
            slider.move(120, 50);
            slider.min = 25;
            slider.max = 125;
            slider.value = 50;
            slider.bind(EventType.SLIDER, function(e) {
                trace("Slider event: " + slider.value);
                gauge.value = slider.value;
            });

            var slider:Slider = new Slider(frame);
            slider.move(220, 50);
            slider.windowStyle = hx.widgets.Slider.SliderStyle.AUTOTICKS
                                | hx.widgets.Slider.SliderStyle.VALUE_LABEL
                                | hx.widgets.Slider.SliderStyle.SELRANGE;
            slider.refresh();
            slider.setSelection(25, 75);
            
            var slider:Slider = new Slider(frame, 50, 0, 100, hx.widgets.Slider.SliderStyle.VERTICAL);
            slider.move(320, 50);

            var slider:Slider = new Slider(frame, 50, 0, 100, hx.widgets.Slider.SliderStyle.VERTICAL 
                                                            | hx.widgets.Slider.SliderStyle.AUTOTICKS
                                                            | hx.widgets.Slider.SliderStyle.VALUE_LABEL
                                                            | hx.widgets.Slider.SliderStyle.SELRANGE);
            slider.move(350, 50);
            slider.selectionStart = 25;
            slider.selectionEnd = 75;
            
            // create a static bitmp
            var staticBmp:StaticBitmap = new StaticBitmap(frame, Bitmap.fromHaxeResource("slinky_tiny_test.bmp"));
            staticBmp.move(130, 75);
            
            var scroller:ScrolledWindow = new ScrolledWindow(frame, hx.widgets.Window.WindowStyle.BORDER_THEME | hx.widgets.Window.WindowStyle.VSCROLL);
            scroller.setSize(430, 230, 150, 200);
            //scroller.backgroundColour = 0x0000FF;
            scroller.refresh();
            for (a in 0...20) {
                var b:Button = new Button(scroller, "Button " + a);
                b.x = 10;
                b.y = 10 + (a * 30);
                b.height = 25;
            }
            //scroller.setClientSize(150, 200);
            //scroller.setVirtualSize(6000, 3000);
            //trace(scroller.getVirtualSize().width);
            var inc = 10;
            var totalCX = 120;
            var totalCY = ((20 * 30) + 10);
            trace(totalCY);
            scroller.setScrollbars(inc, inc, Std.int(totalCX / inc), Std.int(totalCY / inc));
            //scroller.setScrollbars(inc, 3, Std.int(totalCX / inc), 200);
            //scroller.refresh();
            
            var s:Colour = new Colour(0xFF0000);
            
            var panel:Panel = new Panel(frame);
            //panel.backgroundColour = 0xFF0000;
            panel.setSize(590, 230, 150, 100);
            //panel.refresh();
            var dc:ClientDC = new ClientDC(panel);
            dc.clear();
            dc.setPen(new Pen(0xFF0000));
            dc.drawLine(0, 0, 150, 100);
            dc.setPen(new Pen(0x00FF00, 3));
            dc.drawText("text", 10, 10);
            dc.drawRoundedRectangle(35, 10, 100, 30, 5);
            dc.setPen(new Pen(0x0000FF, 2));
            dc.drawCircle(50, 70, 20);
            
            // create an image list ready for use with the tabs
            var imageList:ImageList = new ImageList(16, 16);
            imageList.add(Bitmap.fromHaxeResource("inbox.bmp"));
            imageList.add(Bitmap.fromHaxeResource("inbox--arrow.bmp"));
            imageList.add(Bitmap.fromHaxeResource("inbox-document.bmp"));
        
            // create a notebox (tab view)
            var tabs:Notebook = new Notebook(frame);
            tabs.setImageList(imageList);
            tabs.setSize(10, 230, 400, 200);

            // create the panels and contents for the tab view
                var panel1:Panel = new Panel(tabs);
                    var button = new Button(panel1, "Tab Button 1a");
                    button.setSize(5, 5, 100, 30);

                    var button = new Button(panel1, "Tab Button 1b");
                    button.move(5, 40);
        
                tabs.addPage(panel1, "Tab 1", false, 0);

                var panel2:Panel = new Panel(tabs);
                    var button = new Button(panel2, "Tab Button 2a");
                    button.setSize(5, 5, 100, 30);
                    
                tabs.addPage(panel2, "Tab 2", false, 1);

                var panel3:Panel = new Panel(tabs);
                    var button = new Button(panel3, "Tab Button 3a");
                    button.setSize(5, 5, 100, 30);
                tabs.addPage(panel3, "Tab 3", false, 2);
        app.run();
        app.exit();
    }
}
