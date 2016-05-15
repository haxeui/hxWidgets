import hx.widgets.*;
import hx.widgets.styles.*;
import views.BasicControlsView;
import views.DialogView;
import views.DrawingView;
import views.LogView;
import views.SystemInfoView;


/*
Note: Images in buttons for ubuntu dont work until you run:
gsettings set org.gnome.settings-daemon.plugins.xsettings overrides "{'Gtk/ButtonImages': <1>, 'Gtk/MenuImages': <1>}"
*/
class Main {
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
        var app = new App();
        app.init();
        
        var frame:Frame = new Frame(null, "hxWidgets");
        
        var platform:PlatformInfo  = new PlatformInfo();
        if (platform.isWindows) {
            frame.backgroundColour = 0xFFFFFF;
        }
        
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
        imageList.add(Bitmap.fromHaxeResource("application-dialog.png"));
        
        var tabs:Notebook = new Notebook(frame);
        if (platform.isMac) {
            tabs.allowIcons = false;
        }
        if (platform.isWindows) {
            tabs.padding = new Size(6, 6);
        }
        tabs.imageList = imageList;

        frame.sizer.add(tabs, 3, Stretch.EXPAND | Direction.ALL, 10);
        
        var controlsView:BasicControlsView = new BasicControlsView(tabs);
        tabs.addPage(controlsView, "Basic Controls", false, 0);

        var drawingView:DrawingView = new DrawingView(tabs);
        tabs.addPage(drawingView, "Drawing", false, 1);
        
        var infoView:SystemInfoView = new SystemInfoView(tabs);
        tabs.addPage(infoView, "System Info", false, 2);

        var dialogView:DialogView = new DialogView(tabs);
        tabs.addPage(dialogView, "Dialogs", false, 3);

        tabs.bind(EventType.NOTEBOOK_PAGE_CHANGED, function(e) {
            e.skip(); // seems if you dont skip the event on osx then nothing shows - presumably this event handler is "stealing" the event
           LogView.log('Notebook page changed: index=${tabs.selection}, text=${tabs.selectionText}'); 
        });
        
        var log:LogView = new LogView(frame);
        log.resize( -1, 100);
        frame.sizer.addSpacer(5);
        frame.sizer.add(log, 1, Stretch.EXPAND | Direction.ALL);
        
        frame.layout();
        frame.show();
        
        LogView.log("Ready");

        app.run();
        app.exit();
    }
}
