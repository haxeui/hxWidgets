package views;

import hx.widgets.*;
import hx.widgets.styles.*;

class ListsView extends View {
    private var _top:Sizer;

    private var _largeImageList:ImageList;
    private var _smallImageList:ImageList;
    private var _listview:ListView;

    public function new(parent:Window) {
        super(parent);

        sizer = new BoxSizer(Orientation.VERTICAL);
        _top = new BoxSizer(Orientation.VERTICAL);

        var combo1:ComboBox = new ComboBox(this);
        var combo2:ComboBox = new ComboBox(this, null, ComboBoxStyle.READONLY);
        var combo3:ComboBox = new ComboBox(this, null, ComboBoxStyle.DROPDOWN);
        var combo4:Choice = new Choice(this);
        for (n in 0...20) {
            combo1.append("Item #" + (n + 1));
            combo2.append("Item #" + (n + 1));
            combo3.append("Item #" + (n + 1));
            combo4.append("Item #" + (n + 1));
        }

        combo4.bind(EventType.CHOICE, function(e:Event) {
            LogView.log('Choice event: index=${combo4.selection}, value=${combo4.selectedString}');
        });

        var hbox = new BoxSizer(Orientation.HORIZONTAL);
        hbox.add(combo1);
        hbox.addSpacer(5);
        hbox.add(combo2);
        hbox.addSpacer(5);
        hbox.add(combo3);
        hbox.addSpacer(5);
        hbox.add(combo4);
        _top.addSizer(hbox);

        _largeImageList = new ImageList(40, 40);
        _largeImageList.add(Bitmap.fromHaxeResource("haxe-logo-small.png"));
        _largeImageList.add(Bitmap.fromHaxeResource("wx-logo-small.png"));

        _smallImageList = new ImageList(16, 16);
        _smallImageList.add(Bitmap.fromHaxeResource("haxe-logo-tiny.png"));
        _smallImageList.add(Bitmap.fromHaxeResource("wx-logo-tiny.png"));

        sizer.addSizer(_top, 1, Stretch.EXPAND | Direction.ALL, 5);

        recreateListView(ListCtrlStyle.ICON);


        var options:Sizer = new BoxSizer(Orientation.HORIZONTAL);

        var option:RadioButton = new RadioButton(this, "Icon");
        option.value = true;
        option.bind(EventType.RADIOBUTTON, function(e:Event) {
            recreateListView(ListCtrlStyle.ICON);
        });
        options.add(option);

        var option:RadioButton = new RadioButton(this, "Small Icon");
        option.bind(EventType.RADIOBUTTON, function(e:Event) {
            recreateListView(ListCtrlStyle.SMALL_ICON);
        });
        options.add(option);

        var option:RadioButton = new RadioButton(this, "List");
        option.bind(EventType.RADIOBUTTON, function(e:Event) {
            recreateListView(ListCtrlStyle.LIST);
        });
        options.add(option);

        var option:RadioButton = new RadioButton(this, "Report");
        option.bind(EventType.RADIOBUTTON, function(e:Event) {
            recreateListView(ListCtrlStyle.REPORT);
        });
        options.add(option);

        _top.addSizer(options);
    }

    private function recreateListView(type:Int) {
        if (_listview != null) {
            _top.remove(1);
            _listview.destroy();
        }

        this.freeze();

        _listview = new ListView(this, type);

        _listview.largeImageList = _largeImageList;
        _listview.smallImageList = _smallImageList;

        if (type == ListCtrlStyle.REPORT) {
            _listview.appendColumn("");
            _listview.appendColumn("Column A");
            _listview.appendColumn("Column B");
            _listview.appendColumn("Column C");
            _listview.appendColumn("Column D");
            _listview.appendColumn("Column E");
            _listview.appendColumn("Column F");
            _listview.appendColumn("Column G");
            _listview.appendColumn("Column H");
            _listview.appendColumn("Column I");
        }

        for (n in 0...500) {
            if (n % 2 == 0) {
                _listview.addItem(new ListItem("Item " + n, 0));
            } else {
                _listview.addItem(new ListItem("Item " + n, 1));
            }

            if (type == ListCtrlStyle.REPORT) {
                _listview.setItem(new ListItem("Sub Item " + n + "A", -1, 1, n));
                _listview.setItem(new ListItem("Sub Item " + n + "B", -1, 2, n));
                _listview.setItem(new ListItem("Sub Item " + n + "C", -1, 3, n));
                _listview.setItem(new ListItem("Sub Item " + n + "D", -1, 4, n));
                _listview.setItem(new ListItem("Sub Item " + n + "E", -1, 5, n));
                _listview.setItem(new ListItem("Sub Item " + n + "F", -1, 6, n));
                _listview.setItem(new ListItem("Sub Item " + n + "G", -1, 7, n));
                _listview.setItem(new ListItem("Sub Item " + n + "H", -1, 8, n));
                _listview.setItem(new ListItem("Sub Item " + n + "I", -1, 9, n));
            }
        }

        _top.insert(1, _listview, 1, Stretch.EXPAND | Direction.ALL, 5);
        _top.layout();

        _listview.bind(EventType.LIST_ITEM_SELECTED, function(e) {
            LogView.log('ListView item selected: ${_listview.selectedItemCount}/${_listview.itemCount}, indexes: ${_listview.selectedIndexes}');
        });
        
        this.thaw();
    }
}