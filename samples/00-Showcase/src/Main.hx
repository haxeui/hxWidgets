import hx.widgets.*;
import hx.widgets.styles.*;
import views.BasicControlsView;
import views.DialogView;
import views.DrawingView;
import views.EventsView;
import views.HTMLView;
import views.ListsView;
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

                // bitmap must be set before the item is added
                var item1 = new MenuItem(subMenu, "Item 1", 1001);
                item1.bitmap = Bitmap.fromHaxeResource("haxe-logo-small.png");
                subMenu.appendItem(item1);

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

        var taskBarIcon = new TaskBarIcon();
        taskBarIcon.setBitmap(Bitmap.fromHaxeResource("haxe-logo-tiny.png"), "Some tooltip");

        var taskBarMenu = new Menu();
        taskBarMenu.append(1101, "Item 1");
        taskBarMenu.append(1102, "Item 2");
        taskBarMenu.appendSeparator();
        taskBarMenu.append(1103, "Item 3");

        taskBarIcon.bind(EventType.TASKBAR_CLICK, (event) -> {
            frame.popupMenu(taskBarMenu);
        });
        
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
        imageList.add(Bitmap.fromHaxeResource("ui-scroll-pane-list.png"));
        imageList.add(Bitmap.fromHaxeResource("information-button.png"));
        imageList.add(Bitmap.fromHaxeResource("application-dialog.png"));
        imageList.add(Bitmap.fromHaxeResource("globe-green.png"));

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

        var listsView:ListsView = new ListsView(tabs);
        tabs.addPage(listsView, "Lists", false, 2);

        var infoView:SystemInfoView = new SystemInfoView(tabs);
        tabs.addPage(infoView, "System Info", false, 3);

        var dialogView:DialogView = new DialogView(tabs);
        tabs.addPage(dialogView, "Dialogs", false, 4);

        var htmlView:HTMLView = new HTMLView(tabs);
        tabs.addPage(htmlView, "Web View", false, 5);

        var eventsView:EventsView = new EventsView(tabs);
        tabs.addPage(eventsView, "Events", false, 5);

        tabs.bind(EventType.NOTEBOOK_PAGE_CHANGED, function(e) {
            e.skip(); // seems if you dont skip the event on osx then nothing shows - presumably this event handler is "stealing" the event
           LogView.log('Notebook page changed: index=${tabs.selection}, text=${tabs.selectionText}');
        });

        frame.bind(EventType.CLOSE_WINDOW, function(e) {
            var closeEvent = e.convertTo(CloseEvent);
            if (closeEvent.canVeto) {
                var dialog:MessageDialog = new MessageDialog(frame, "Do you wish to minimise this window instead of closing it?", "Close / minimise?", MessageDialogStyle.YES_NO | MessageDialogStyle.CANCEL);
                var r = dialog.showModal();
                if (r == 5101) { // cancel
                    closeEvent.veto();
                    e.skip(false);
                    e.stopPropagation();
                    return;
                } else if (r == 5103) { // yes
                    frame.iconize();
                    closeEvent.veto();
                    e.skip(false);
                    e.stopPropagation();
                    return;
                } else if (r == 5104) { // no
                    
                }
            }
            taskBarIcon.destroy();
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
