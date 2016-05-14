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

        label("Name", grid, frame, true, true);
        label("Value", grid, frame, true, true);

        label("Operating System Family Name:", grid, frame);
        label(platform.operatingSystemFamilyName, grid, frame);

        label("Operating System Id Name:", grid, frame);
        label(platform.operatingSystemIdName, grid, frame);

        label("Operating System Id:", grid, frame);
        label("" + platform.operatingSystemId, grid, frame);

        label("OS Major Version:", grid, frame);
        label("" + platform.osMajorVersion, grid, frame);

        label("OS Minor Version:", grid, frame);
        label("" + platform.osMinorVersion, grid, frame);

        label("Arch Name:", grid, frame);
        label(platform.archName, grid, frame);

        platform.destroy();
        sizer.add(frame);
    }

}
