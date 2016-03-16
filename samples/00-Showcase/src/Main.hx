import cpp.Lib;

import cpp.Pointer;
import hx.widgets.*;
import hx.widgets.styles.*;

/*
Note: Images in buttons for ubuntu dont work until you run:
gsettings set org.gnome.settings-daemon.plugins.xsettings overrides "{'Gtk/ButtonImages': <1>, 'Gtk/MenuImages': <1>}"
*/
class Main {
    private static var worker:ThreadWorker;
    private static var timer:Timer;
    
    public static function main() {
        worker = new ThreadWorker();
        worker.start();
        
        var app = new App();
        app.init();
        
        var platform:PlatformInfo = new PlatformInfo();
        trace("OS Major Version: " + platform.getOSMajorVersion());
        trace("OS Minor Version: " + platform.getOSMinorVersion());
        trace("Arch Name: " + platform.getArchName());
        trace("Operating System Family Name: " + platform.getOperatingSystemFamilyName());
        trace("Operating System Id Name: " + platform.getOperatingSystemIdName());
        trace("Operating System Id: " + platform.getOperatingSystemId());
        
        trace("Screen X: " + SystemSettings.getMetric(SystemMetric.SCREEN_X));
        
        SystemOptions.setOption("msw.window.no-clip-children", 1);
        
        var frame:Frame = new Frame(null, "hxWidgets");
        timer = new Timer(frame, 100);
        
        //frame.setStatusText("Status: OK");
        if (platform.getOperatingSystemId() == OperatingSystemId.WINDOWS) {
            frame.backgroundColour = 0xFFFFFF;
        }
        frame.show(true);
        
        var menuBar:MenuBar = new MenuBar();
        var file:Menu = new Menu();
        menuBar.append(file, "&File");
        var menuItem:MenuItem = new MenuItem(file, "Menu 1", ItemKind.ITEM_CHECK);
        file.append(menuItem).check(true);
        file.append(new MenuItem(file, "Menu 2"));
        
        var menuItem:MenuItem = new MenuItem(file, "Menu 3");
        menuItem.setBitmap(Bitmap.fromHaxeResource("inbox.png"));
        file.append(menuItem);
        
        frame.setMenuBar(menuBar);
        
        
        var edit:Menu = new Menu();
        edit.append(new MenuItem(edit, "Something"));
        frame.getMenuBar().append(edit, "&Edit");
        
        frame.setSize(10, 10, 800, 600);
        frame.bind(EventType.CLOSE_WINDOW, function(e:Event) {
            timer.stop();
            worker.stop();
            frame.destroy();
        }); //Safe window-closing
        
        frame.bind(EventType.MENU, function(e:Event) {
           trace("some menu event");
        });
        
        trace(frame.getSize().width);
        trace(frame.getPosition().x);
        
        
            // create a button
            var button:Button = new Button(frame, "Button 1", 0, 1002);
            button.setBitmap(Bitmap.fromHaxeResource("inbox.png"));
            button.setBitmapPosition(Direction.RIGHT);
            button.setSize(10, 10, 100, 100);
            button.bind(EventType.BUTTON, function(e:Event) {
                trace("click!");
                trace(e.getEventType());
                trace(e.getId());
                
                var dialog:Dialog = new Dialog(frame, "Modal Dialog");
                var dialogResult = dialog.showModal();
                trace("dialog result = " + dialogResult);

                var dialog:Dialog = new Dialog(frame, "Non-modal Dialog");
                dialog.show();
            });
        
            trace("parent id: " + button.getParent().getId());
            trace("child count: " + frame.children.length);
            trace("first child id: "  + frame.children[0].getId());
            // lets make sure its a functioning object
            //frame.children[0].setLabel("New Label");

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
            checkbox.move(200, 10);

            var checkbox:CheckBox = new CheckBox(frame, "Check 3");
            checkbox.bind(EventType.CHECKBOX, function(e:Event) {
                trace("checkbox 3: " + checkbox.value);
            });
            checkbox.move(280, 10);
            
            // create radio buttons
            var radio:RadioButton = new RadioButton(frame, "Option 1");
            radio.move(380, 10);

            var radio:RadioButton = new RadioButton(frame, "Option 2");
            radio.value = true;
            radio.move(470, 10);

            var radio:RadioButton = new RadioButton(frame, "Option 3");
            radio.move(560, 10);
            
            // create text inputs
            var textctrl:TextCtrl = new TextCtrl(frame, "Text input 1");
            textctrl.move(10, 150);
            var workertextresult:TextCtrl = textctrl;

            var textctrl:TextCtrl = new TextCtrl(frame, "Password 1", TextCtrlStyle.PASSWORD);
            textctrl.move(10, 180);            

            var textctrl:TextCtrl = new TextCtrl(frame, "Text input 2", TextCtrlStyle.READONLY);
            textctrl.move(130, 150); 
            var timertextresult:TextCtrl = textctrl;
            
            var textctrl:TextCtrl = new TextCtrl(frame, null, TextCtrlStyle.MULTILINE | TextCtrlStyle.RICH);
            textctrl.setSize(130, 180, 100, 70);   
            textctrl.appendText("This is line 1\n");
            textctrl.appendText("This is line 2\n");
            textctrl.appendText("This is line 3\n");
            textctrl.appendText("This is line 4\n");
            textctrl.appendText("This is line 5\n");
            textctrl.insertionPoint = 0;
            
            var box:StaticBox = new StaticBox(frame, "Static Box");
            box.setSize(430, 80, 120, 100);
            
            var label:StaticText = new StaticText(box, "Static text");
            label.move(10, 20);
            
            var label:StaticText = new StaticText(box, "Static text");
            var font:Font = new Font(16);
            label.setFont(font);
            label.foregroundColour = 0xFF00FF;
            label.move(10, 40);
            
            /* cant use link on mac, need to find out why (probably missing lib on my box)
            var link:HyperlinkCtrl = new HyperlinkCtrl(box, "hxWidgets", "https://github.com/ianharrigan/hxWidgets");
            link.move(10, 40);
            */
            
            // create a gauge (progress bar)
            var gauge:Gauge = new Gauge(frame);
            gauge.move(120, 50);
            gauge.value = 50;

            var scroll:ScrollBar = new ScrollBar(frame, ScrollBarStyle.HORIZONTAL);
            scroll.move(120, 70);
            scroll.setScrollbar(50, 10, 100, 20);
            
            var gauge:Gauge = new Gauge(frame, 100, GaugeStyle.VERTICAL);
            gauge.move(620, 50);
            gauge.value = 50;
            
            var scroll:ScrollBar = new ScrollBar(frame, ScrollBarStyle.VERTICAL);
            scroll.move(640, 50);
            scroll.setScrollbar(50, 10, 100, 20);

            
            // create a slider
            var slider:Slider = new Slider(frame);
            slider.setSize(120, 80, 100, 50);
            slider.min = 25;
            slider.max = 125;
            slider.value = 50;
            slider.bind(EventType.SLIDER, function(e) {
                trace("Slider event: " + slider.value);
                gauge.value = slider.value;
            });

            var slider:Slider = new Slider(frame);
            slider.setSize(220, 80, 100, 50);
            slider.windowStyle = SliderStyle.AUTOTICKS | SliderStyle.VALUE_LABEL | SliderStyle.SELRANGE;
            slider.refresh();
            slider.setSelection(25, 75);
            
            var slider:Slider = new Slider(frame, 50, 0, 100, SliderStyle.VERTICAL);
            slider.setSize(320, 80, 50, 100);
            
            var slider:Slider = new Slider(frame, 50, 0, 100, SliderStyle.VERTICAL | SliderStyle.AUTOTICKS | SliderStyle.VALUE_LABEL | SliderStyle.SELRANGE);
            //slider.move(350, 50);
            slider.setSize(360, 80, 60, 100);
            slider.selectionStart = 25;
            slider.selectionEnd = 75;
            
            // create a static bitmp
            var staticBmp:StaticBitmap = new StaticBitmap(frame, Bitmap.fromHaxeResource("slinky_tiny_test.bmp"));
            staticBmp.move(250, 150);
            
            var scroller:ScrolledWindow = new ScrolledWindow(frame, WindowStyle.BORDER_THEME | WindowStyle.VSCROLL);
            scroller.setSize(430, 280, 150, 200);
            //scroller.backgroundColour = 0x0000FF;
            scroller.refresh();
            for (a in 0...20) {
                var b:Button = new Button(scroller, "Button " + a);
                /*
                b.x = 10;
                b.y = 10 + (a * 30);
                b.height = 25;
                */
                b.setSize(10, 10 + (a * 30), -1, 25);
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
            panel.setSize(590, 280, 150, 100);
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
            imageList.add(Bitmap.fromHaxeResource("inbox.png"));
            imageList.add(Bitmap.fromHaxeResource("inbox--arrow.png"));
            imageList.add(Bitmap.fromHaxeResource("inbox-document.png"));
        
            // create a notebox (tab view)
            var tabs:Notebook = new Notebook(frame);
            tabs.setImageList(imageList);
            tabs.setSize(10, 270, 400, 200);
            tabs.bind(EventType.NOTEBOOK_PAGE_CHANGED, function(e) {
               trace("Page changed"); 
            });
            // create the panels and contents for the tab view
                var panel1:Panel = new Panel(tabs);
                    var button = new Button(panel1, "Tab Button 1a");
                    button.setSize(5, 5, -1, 30);

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
                
            //Create a button for showing glFrame
            var glFrameButton:Button = new Button(frame, "OpenGL Test");
            glFrameButton.setSize(430, 245, -1, 30);
            glFrameButton.bind(EventType.BUTTON, function(e) {
                var glFrame:Frame = new Frame(frame, "OpenGL Test");
                glFrame.setSize(50, 50, 400, 400);
        
                glFrame.bind(EventType.CLOSE_WINDOW, function(e) {
                    glFrame.destroy();
                });
                
                // create an OpenGL canvas
                var canvas = new GLCanvas(glFrame, [GLOptions.RGBA, GLOptions.DOUBLEBUFFER, GLOptions.DEPTH_SIZE, 16, 0]);
                
                var context = new GLContext(canvas);
                trace("is gl context ok: " + context.isOK());
                canvas.setSize(0, 0, 400, 400);
                glFrame.show(true);
                
                canvas.setCurrent(context);
                canvas.setColour("BLACK");
                canvas.refresh();
            });
                
                
        trace('Number of children in frame:' + frame.children.length);

        frame.bind(EventType.IDLE, function(e) {
           workertextresult.label = '${worker.count}';
           //tabs.setSelection(worker.count % 3);
        });
        
        frame.bind(EventType.TIMER, function(e) {
           timertextresult.label = '${worker.count}';
        });
        
        
        app.run();
        timer.stop();
        worker.stop();
        
        app.exit();
    }
}
