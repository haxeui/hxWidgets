package views.panels;

import hx.widgets.GridSizer;
import hx.widgets.PlatformInfo;
import hx.widgets.StaticBoxSizer;
import hx.widgets.Stretch;
import hx.widgets.Window;
import views.View;
import wx.widgets.Orientation;

class PlatformInfoPanel extends View {
    public function new(parent:Window) {
        super(parent);

        var boxSizer:StaticBoxSizer = new StaticBoxSizer(Orientation.VERTICAL, this, "Platform Info");
        var grid:GridSizer = new GridSizer(2, 5, 5);
        boxSizer.addSizer(grid, 1, Stretch.EXPAND);
        
        var platform:PlatformInfo = new PlatformInfo();

        label("Name", grid, null, true, true);
        label("Value", grid, null, true, true);
        
        label("Operating System Family Name:", grid);
        label(platform.operatingSystemFamilyName, grid);

        label("Operating System Id Name:", grid);
        label(platform.operatingSystemIdName, grid);

        label("Operating System Id:", grid);
        label("" + platform.operatingSystemId, grid);

        label("OS Major Version:", grid);
        label("" + platform.osMajorVersion, grid);

        label("OS Minor Version:", grid);
        label("" + platform.osMinorVersion, grid);

        label("Arch Name:", grid);
        label(platform.archName, grid);
        
        platform.destroy();
        layout();
        setSizerAndFit(boxSizer);
    }
    
}