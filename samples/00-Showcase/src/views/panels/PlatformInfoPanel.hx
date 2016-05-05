package views.panels;

import hx.widgets.*;
import hx.widgets.styles.*;
import views.View;

class PlatformInfoPanel extends View {
    public function new(parent:Window) {
        super(parent);

        sizer = new BoxSizer(Orientation.VERTICAL);
        var grid:GridSizer = new GridSizer(2, 5, 5);
        var frame = createFrame("Platform Info", grid);
        
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
        sizer.add(frame);
    }
    
}