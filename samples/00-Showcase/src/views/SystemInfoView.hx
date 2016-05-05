package views;

import hx.widgets.*;
import hx.widgets.styles.*;
import views.panels.PlatformInfoPanel;
import views.panels.SystemMetricsPanel;

class SystemInfoView extends View {
    public function new(parent:Window) {
        super(parent);
        
        this.sizer = new BoxSizer(Orientation.VERTICAL);
        
        var hsizer:BoxSizer = new BoxSizer(Orientation.HORIZONTAL);
        hsizer.addSpacer(5);
        var systemMetrics:SystemMetricsPanel = new SystemMetricsPanel(this);
        hsizer.add(systemMetrics, 1, Stretch.EXPAND | Direction.ALL);
        hsizer.addSpacer(5);
        var platformInfo:PlatformInfoPanel = new PlatformInfoPanel(this);
        hsizer.add(platformInfo);
        hsizer.addSpacer(5);
        
        sizer.addSpacer(5);
        sizer.addSizer(hsizer, 1, Stretch.EXPAND | Direction.ALL);
        sizer.addSpacer(5);
        
        layout();
    }
    
}