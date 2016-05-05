import cpp.Lib;
import haxe.Resource;
import views.BasicControlsView;
import views.DrawingView;
import views.LogView;
import views.SystemInfoView;

import cpp.Pointer;
import hx.widgets.*;
import hx.widgets.styles.*;

/*
Note: Images in buttons for ubuntu dont work until you run:
gsettings set org.gnome.settings-daemon.plugins.xsettings overrides "{'Gtk/ButtonImages': <1>, 'Gtk/MenuImages': <1>}"
*/
class Main {
    /*
    private static var worker:ThreadWorker;
    */
    private static var timer:Timer;
    
    private static function buildMenu():MenuBar {
        var menuBar:MenuBar = new MenuBar();
            var file:Menu = new Menu();
                file.append(1000, "Exit");
            menuBar.append(file, "File");
            
            
            var menu:Menu = new Menu();
            menu.appendItem(new MenuItem(menu, "Something"));
        
                var subMenu = new Menu();
                subMenu.append(1001, "Item 1");
                subMenu.append(1002, "Item 2");
                subMenu.append(1003, "Item 3");
                subMenu.appendSeparator();
                subMenu.appendCheckItem(1004, "Check 1");
                subMenu.appendCheckItem(1005, "Check 2");
                subMenu.appendCheckItem(1006, "Check 3");
                subMenu.appendSeparator();
                subMenu.appendRadioItem(1007, "Radio 1");
                subMenu.appendRadioItem(1008, "Radio 2");
                subMenu.appendRadioItem(1009, "Radio 3");
            menu.appendSubMenu(subMenu, "Sub Menu");
            
        menuBar.append(menu, "Test Menu");
        
        return menuBar;    
    }
    
    public static function main() {
        /*
        worker = new ThreadWorker();
        worker.start();
        */
        
        var app = new App();
        app.init();
        
        var frame:Frame = new Frame(null, "hxWidgets");
        frame.menuBar = buildMenu();
        frame.sizer = new BoxSizer(Orientation.VERTICAL);
        frame.resize(800, 600);
        
        frame.bind(EventType.MENU, function(e:Event) {
           LogView.log('Menu event: id=${e.id}');
        });
        
        var imageList:ImageList = new ImageList(16, 16);
        imageList.add(Bitmap.fromHaxeResource("ui-check-boxes-series.png"));
        imageList.add(Bitmap.fromHaxeResource("layer-shape-line.png"));
        imageList.add(Bitmap.fromHaxeResource("information-button.png"));
        
        var tabs:Notebook = new Notebook(frame);
        tabs.padding = new Size(6, 6);
        tabs.imageList = imageList;

        frame.sizer.add(tabs, 3, Stretch.EXPAND | Direction.ALL);
        
        var controlsView:BasicControlsView = new BasicControlsView(tabs);
        tabs.addPage(controlsView, "Basic Controls", false, 0);

        var drawingView:DrawingView = new DrawingView(tabs);
        tabs.addPage(drawingView, "Drawing", false, 1);
        
        var infoView:SystemInfoView = new SystemInfoView(tabs);
        tabs.addPage(infoView, "System Info", false, 2);

        tabs.bind(EventType.NOTEBOOK_PAGE_CHANGED, function(e) {
           LogView.log('Notebook page changed: index=${tabs.selection}, text=${tabs.selectionText}'); 
        });
        
        var log:LogView = new LogView(frame);
        log.resize( -1, 100);
        frame.sizer.add(log, 1, Stretch.EXPAND | Direction.ALL);
        
        frame.layout();
        frame.show();
        
        LogView.log("Ready");
        
        /*
        var n = Stretch.EXPAND | Stretch.TILE;
        var n = Stretch.EXPAND | Direction.ALL;
        */
        /*
        var platform:PlatformInfo = new PlatformInfo();
        trace("OS Major Version: " + platform.osMajorVersion);
        trace("OS Minor Version: " + platform.osMinorVersion);
        trace("Arch Name: " + platform.archName);
        trace("Operating System Family Name: " + platform.operatingSystemFamilyName);
        trace("Operating System Id Name: " + platform.operatingSystemIdName);
        trace("Operating System Id: " + platform.operatingSystemId);
        platform.destroy();
        trace("Screen X: " + SystemSettings.getMetric(SystemMetric.SCREEN_X));
        SystemOptions.setOption("msw.window.no-clip-children", 1);
        
        var frame:Frame = new Frame(null, "hxWidgets");
        frame.resize(800, 600);
        frame.show(true);
        
        
        var menuBar:MenuBar = new MenuBar();
        var file:Menu = new Menu();
        var menuItem:MenuItem = new MenuItem(file, "Menu 1", ItemKind.ITEM_CHECK);
        file.appendItem(menuItem);
        file.appendItem(new MenuItem(file, "Menu 2"));
        menuBar.append(file, "&File");
        
        var menuItem:MenuItem = new MenuItem(file, "Menu 3");
        menuItem.bitmap = Bitmap.fromHaxeResource("inbox.png");
        file.appendItem(menuItem);
        
        frame.menuBar = menuBar;
        
        var edit:Menu = new Menu();
        edit.appendItem(new MenuItem(edit, "Something"));
        
        var subMenu = new Menu();
        subMenu.append(1001, "Item 1");
        subMenu.append(1002, "Item 2");
        subMenu.append(1003, "Item 3");
        subMenu.appendSeparator();
        subMenu.appendCheckItem(1004, "Check 1");
        subMenu.appendCheckItem(1005, "Check 2");
        subMenu.appendCheckItem(1006, "Check 3");
        subMenu.appendSeparator();
        subMenu.appendRadioItem(1007, "Radio 1");
        subMenu.appendRadioItem(1008, "Radio 2");
        subMenu.appendRadioItem(1009, "Radio 3");
        edit.appendSubMenu(subMenu, "Sub Menu");
        
        frame.menuBar.append(edit, "&Edit");
        
        frame.bind(EventType.MENU, function(e:Event) {
           trace("some menu event");
        });
        
        trace("TITLE: " + frame.title);
        //timer = new Timer(frame, 100);
        
        //frame.setStatusText("Status: OK");
        //if (platform.getOperatingSystemId() == OperatingSystemId.WINDOWS) {
        //    frame.backgroundColour = 0xFFFFFF;
        //}

        
        var button:Button = new Button(frame, "Test", 0, 1001);
        button.bind(EventType.BUTTON, function(e) {
           trace("clicked"); 
        });
        
        
        cast(frame.findWindowById(1001), Button).label = "Bob";
        cast(frame.children[0], Button).label = "Bob1";
        cast(button.parent, Frame).title += " - Changed";
        
        button.bitmapPosition = Direction.RIGHT;
        button.bitmap = Bitmap.fromHaxeResource("inbox.png");
            button.resize(100, 100);
            button.move(10, 10);
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
            button.bind(EventType.LEFT_DOWN, function(e) {
               trace("Mouse down - " + e.convertTo(MouseEvent).x + "x" + e.convertTo(MouseEvent).y);
               e.skip();
               
            });
            button.bind(EventType.LEFT_UP, function(e) {
               trace("Mouse up");
               e.skip();
            });
            button.bind(EventType.MOTION, function(e) {
               //trace("Mouse move");
               e.skip();
            });
            button.bind(EventType.ENTER_WINDOW, function(e) {
               trace("Mouse over");
               e.skip();
            });
            button.bind(EventType.LEAVE_WINDOW, function(e) {
               trace("Mouse out");
               e.skip();
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
            
            var textctrl:TextCtrl = new TextCtrl(frame, null, TextCtrlStyle.MULTILINE);
            textctrl.resize(100, 70);   
            textctrl.move(130, 180);
            textctrl.appendText("This is line 1\n");
            textctrl.appendText("This is line 2\n");
            textctrl.appendText("This is line 3\n");
            textctrl.appendText("This is line 4\n");
            textctrl.appendText("This is line 5\n");
            trace("XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX " + textctrl.value);
            textctrl.insertionPoint = 0;
            
            textctrl.bind(EventType.TEXT, function(e) {
            trace("XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX " + textctrl.value);
            });
            
            var box:StaticBox = new StaticBox(frame, "Static Box");
            box.resize(120, 100);
            box.move(430, 80);
            
            var label:StaticText = new StaticText(box, "Static text");
            label.label = "TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST ";
            trace(">>>>>>>>>> " + label.label);
            label.move(10, 20);
            
            var label2:StaticText = new StaticText(box, label.label);
            var font:Font = new Font(16);
            label2.font = font;
            label2.foregroundColour = 0xFF00FF;
            label2.move(10, 40);
            
            
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
            slider.resize(100, 50);
            slider.move(120, 80);
            slider.min = 25;
            slider.max = 125;
            slider.value = 50;
            slider.bind(EventType.SLIDER, function(e) {
                trace("Slider event: " + slider.value);
                gauge.value = slider.value;
            });

            var slider:Slider = new Slider(frame);
            slider.resize(100, 50);
            slider.move(220, 80);
            slider.windowStyle = SliderStyle.AUTOTICKS | SliderStyle.VALUE_LABEL | SliderStyle.SELRANGE;
            slider.refresh();
            slider.setSelection(25, 75);
            
            var slider:Slider = new Slider(frame, 50, 0, 100, SliderStyle.VERTICAL);
            slider.resize(50, 100);
            slider.move(320, 80);
            
            var slider:Slider = new Slider(frame, 50, 0, 100, SliderStyle.VERTICAL | SliderStyle.AUTOTICKS | SliderStyle.VALUE_LABEL | SliderStyle.SELRANGE);
            //slider.move(350, 50);
            slider.resize(60, 100);
            slider.move(360, 80);
            slider.selectionStart = 25;
            slider.selectionEnd = 75;
            
            // create a static bitmp
            var staticBmp:StaticBitmap = new StaticBitmap(frame, Bitmap.fromHaxeResource("slinky_tiny_test.bmp"));
            staticBmp.move(250, 150);
            
            
            var scroller:ScrolledWindow = new ScrolledWindow(frame, WindowStyle.BORDER_THEME | WindowStyle.VSCROLL);
            scroller.resize(150, 200);
            scroller.move(430, 280);
            //scroller.backgroundColour = 0x0000FF;
            scroller.refresh();
            for (a in 0...20) {
                var b:Button = new Button(scroller, "Button " + a);
                b.resize( -1, 25);
                b.move(10, 10 + (a * 30));
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
            //frame.backgroundColour = 0xFF0000;
            var panel:Panel = new Panel(frame);
            //panel.setBackgroundStyle(BackgroundStyle.BG_PAINT);
            //panel.backgroundColour = 0xFF0000;
            panel.resize(150, 150);
            panel.move(590, 280);
            //panel.refresh();
            
            panel.bind(EventType.PAINT, function(e) {
                var dc:PaintDC = new PaintDC(panel);
                //var dc:GCDC = new GCDC(new WindowDC(panel));
                //var bgb:Brush = new Brush();
                //bgb.setRGBA(0, 0, 0, 255);
                //dc.setBackground(StockBrushes.BRUSH_TRANSPARENT);
                var brush:Brush = new Brush(0x0000FF);
                //dc.background = StockBrushes.BRUSH_RED;
                dc.background = brush;
                //brush.colour = 0x00FFFF;
                //dc.background.colour = 0x00FFFF;
                //dc.background = dc.background;
                dc.clear();
                //var gc:GraphicsContext = GraphicsContext.fromWindowDC(dc);
                
                var gc:GraphicsContext = new GraphicsContext(panel);
                gc.pen = new Pen(0xFF0000);
                gc.strokeLine(0, 0, 150, 100);
                gc.brush = new Brush(0xFF00FF);
                gc.brush = StockBrushes.BRUSH_TRANSPARENT;
                gc.pen = new Pen(0x00FFFF, 2);
                gc.drawRoundedRectangle(35, 10, 100, 30, 5);
                gc.drawBitmap(Bitmap.fromHaxeResource("inbox.png"));
                gc.antialiasMode = AntialiasMode.NONE;
                gc.drawBitmap(Bitmap.fromHaxeResource("inbox.png"), 0, 20, 32, 32);
                gc.antialiasMode = AntialiasMode.DEFAULT;
                gc.interpolationQuality = InterpolationQuality.NONE;
                gc.drawBitmap(Bitmap.fromHaxeResource("inbox.png"), 48, 20, 32, 32);
                gc.drawBitmap(Bitmap.fromHaxeResource("slinky_tiny_test.bmp").getSubBitmap(new Rect(10, 10, 40, 30)), 10, 60);
                var f:Font = panel.font;
                f.size = 20;
                gc.setFont(f, 0xFFFFFF);
                gc.antialiasMode = AntialiasMode.DEFAULT;
                gc.interpolationQuality = InterpolationQuality.BEST;
                gc.drawText("Test", 10, 100);
            });
            
            // create an image list ready for use with the tabs
            var imageList:ImageList = new ImageList(16, 16);
            imageList.add(Bitmap.fromHaxeResource("inbox.png"));
            imageList.add(Bitmap.fromHaxeResource("inbox--arrow.png"));
        
            // create a notebox (tab view)
            var tabs:Notebook = new Notebook(frame);
            tabs.imageList = imageList;
            tabs.imageList.add(Bitmap.fromHaxeResource("inbox-document.png"));
            tabs.resize(400, 200);
            tabs.move(10, 270);
            tabs.bind(EventType.NOTEBOOK_PAGE_CHANGED, function(e) {
               trace("Page changed"); 
            });
            // create the panels and contents for the tab view
                var panel1:Panel = new Panel(tabs);
                    var button = new Button(panel1, "Tab Button 1a");
                    button.resize( -1, 30);
                    button.move(5, 5);

                    var button = new Button(panel1, "Tab Button 1b");
                    button.move(5, 40);
        
                tabs.addPage(panel1, "Tab 1", false, 0);

                var panel2:Panel = new Panel(tabs);
                    var button = new Button(panel2, "Tab Button 2a");
                    button.resize(100, 30);
                    button.move(5, 5);
                    
                tabs.addPage(panel2, "Tab 2", false, 1);

                var panel3:Panel = new Panel(tabs);
                    var button = new Button(panel3, "Tab Button 3a");
                    button.resize(100, 30);
                    button.move(5, 5);
                tabs.addPage(panel3, "Tab 3", false, 2);

                
        */        
                
                
                
                
                
                
                
                
                
                
        app.run();
        /*
        timer.stop();
        worker.stop();
        */
        
        app.exit();
    }
}
