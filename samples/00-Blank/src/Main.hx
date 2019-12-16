package;

import hx.widgets.*;
import hx.widgets.styles.*;

/*
Note: Images in buttons for ubuntu dont work until you run:
gsettings set org.gnome.settings-daemon.plugins.xsettings overrides "{'Gtk/ButtonImages': <1>, 'Gtk/MenuImages': <1>}"
*/
class Main {
    public static function main() {
        var app = new App();
        app.init();

        var frame:Frame = new Frame(null, "hxWidgets");

        frame.resize(800, 600);

        var panel = new Panel(frame);
        
        var p = new PropertyGrid(panel);
        
        p.append(new PropertyCategory("Group A", "Group A"));
        p.append(new StringProperty("Text Property", "Name1A", "Value"));
        p.append(new IntProperty("Int Property", "Name2A", 100));
        p.append(new BoolProperty("Bool Property", "Name3A", true));
        p.append(new EnumProperty("List Property", "Name4A", [{label: "Item 1"}, {label: "Item 2"}, {label: "Item 3"}, {label: "Item 4"}]));

        p.append(new PropertyCategory("Group B", "Group B"));
        p.append(new StringProperty("Text Property", "Name1B", "Value"));
        p.append(new IntProperty("Int Property", "Name2B", 101));
        p.append(new BoolProperty("Bool Property", "Name3B", true));
        p.append(new EnumProperty("List Property", "Name4B", [{label: "Item 1"}, {label: "Item 2"}, {label: "Item 3"}, {label: "Item 4"}]));
        
        p.append(new PropertyCategory("Group C", "Group C"));
        p.append(new StringProperty("Text Property", "Name1C", "Value"));
        p.append(new IntProperty("Int Property", "Name2C", 102));
        p.append(new BoolProperty("Bool Property", "Name3C", true));
        p.append(new EnumProperty("List Property", "Name4C", [{label: "Item 1"}, {label: "Item 2"}, {label: "Item 3"}, {label: "Item 4"}]));

        p.append(new PropertyCategory("Group D", "Group D"));
        p.append(new StringProperty("Text Property", "Name1D", "Value"));
        p.append(new IntProperty("Int Property", "Name2D", 102));
        p.append(new BoolProperty("Bool Property", "Name3D", true));
        p.append(new EnumProperty("List Property", "Name4D", [{label: "Item 1"}, {label: "Item 2"}, {label: "Item 3"}, {label: "Item 4"}]));
        
        p.append(new PropertyCategory("Group E", "Group E"));
        p.append(new StringProperty("Text Property", "Name1E", "Value"));
        p.append(new IntProperty("Int Property", "Name2E", 102));
        p.append(new BoolProperty("Bool Property", "Name3E", true));
        p.append(new EnumProperty("List Property", "Name4E", [{label: "Item 1"}, {label: "Item 2"}, {label: "Item 3"}, {label: "Item 4"}]));
        
        p.resize(200, 400);
        
        frame.layout();
        frame.show();

        app.run();
        app.exit();
    }

}
