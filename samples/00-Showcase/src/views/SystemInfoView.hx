package views;

import hx.widgets.*;
import hx.widgets.styles.*;
import views.panels.PlatformInfoPanel;
import views.panels.SystemMetricsPanel;

class SystemInfoView extends View {

    public function new(parent:Window) {
        super(parent);

        sizer = new BoxSizer(Orientation.VERTICAL);
        var top = new BoxSizer(Orientation.VERTICAL);

        var hsizer:BoxSizer = new BoxSizer(Orientation.HORIZONTAL);
        var systemMetrics:SystemMetricsPanel = new SystemMetricsPanel(this);
        hsizer.add(systemMetrics, 1, Stretch.EXPAND | Direction.ALL);
        hsizer.addSpacer(5);
        var platformInfo:PlatformInfoPanel = new PlatformInfoPanel(this);
        hsizer.add(platformInfo);

        top.addSizer(hsizer, 1, Stretch.EXPAND);

        sizer.addSizer(top, 1, Stretch.EXPAND | Direction.ALL, 5);
    }

}
