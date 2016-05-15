package views.panels;

import hx.widgets.*;
import hx.widgets.styles.*;
import views.View;

class SystemMetricsPanel extends View {

    public function new(parent:Window) {
        super(parent);

        sizer = new BoxSizer(Orientation.VERTICAL);

        var innerSizer = new BoxSizer(Orientation.VERTICAL);
        var frame = createFrame("System Metrics", innerSizer);

        var scrollview:ScrolledWindow = new ScrolledWindow(frame);
        scrollview.sizer = new GridSizer(2, 0, 5);

        innerSizer.add(scrollview, 1, Stretch.EXPAND);
        sizer.add(frame, 1, Stretch.EXPAND);

        label("Metric", scrollview.sizer, scrollview, true, true);
        label("Name", scrollview.sizer, scrollview, true, true);

        addMetric(scrollview, "MOUSE_BUTTONS", SystemMetric.MOUSE_BUTTONS);
        addMetric(scrollview, "BORDER_X", SystemMetric.BORDER_X);
        addMetric(scrollview, "BORDER_Y", SystemMetric.BORDER_Y);
        addMetric(scrollview, "CURSOR_X", SystemMetric.CURSOR_X);
        addMetric(scrollview, "CURSOR_Y", SystemMetric.CURSOR_Y);
        addMetric(scrollview, "DCLICK_X", SystemMetric.DCLICK_X);
        addMetric(scrollview, "DCLICK_Y", SystemMetric.DCLICK_Y);
        addMetric(scrollview, "DRAG_X", SystemMetric.DRAG_X);
        addMetric(scrollview, "DRAG_Y", SystemMetric.DRAG_Y);
        addMetric(scrollview, "EDGE_X", SystemMetric.EDGE_X);
        addMetric(scrollview, "EDGE_Y", SystemMetric.EDGE_Y);
        addMetric(scrollview, "HSCROLL_ARROW_X", SystemMetric.HSCROLL_ARROW_X);
        addMetric(scrollview, "HSCROLL_ARROW_Y", SystemMetric.HSCROLL_ARROW_Y);
        addMetric(scrollview, "HTHUMB_X", SystemMetric.HTHUMB_X);
        addMetric(scrollview, "ICON_X", SystemMetric.ICON_X);
        addMetric(scrollview, "ICON_Y", SystemMetric.ICON_Y);
        addMetric(scrollview, "ICONSPACING_X", SystemMetric.ICONSPACING_X);
        addMetric(scrollview, "ICONSPACING_Y", SystemMetric.ICONSPACING_Y);
        addMetric(scrollview, "WINDOWMIN_X", SystemMetric.WINDOWMIN_X);
        addMetric(scrollview, "WINDOWMIN_Y", SystemMetric.WINDOWMIN_Y);
        addMetric(scrollview, "SCREEN_X", SystemMetric.SCREEN_X);
        addMetric(scrollview, "SCREEN_Y", SystemMetric.SCREEN_Y);
        addMetric(scrollview, "FRAMESIZE_X", SystemMetric.FRAMESIZE_X);
        addMetric(scrollview, "FRAMESIZE_Y", SystemMetric.FRAMESIZE_Y);
        addMetric(scrollview, "SMALLICON_X", SystemMetric.SMALLICON_X);
        addMetric(scrollview, "SMALLICON_Y", SystemMetric.SMALLICON_Y);
        addMetric(scrollview, "HSCROLL_Y", SystemMetric.HSCROLL_Y);
        addMetric(scrollview, "VSCROLL_X", SystemMetric.VSCROLL_X);
        addMetric(scrollview, "VSCROLL_ARROW_X", SystemMetric.VSCROLL_ARROW_X);
        addMetric(scrollview, "VSCROLL_ARROW_Y", SystemMetric.VSCROLL_ARROW_Y);
        addMetric(scrollview, "VTHUMB_Y", SystemMetric.VTHUMB_Y);
        addMetric(scrollview, "CAPTION_Y", SystemMetric.CAPTION_Y);
        addMetric(scrollview, "MENU_Y", SystemMetric.MENU_Y);
        addMetric(scrollview, "NETWORK_PRESENT", SystemMetric.NETWORK_PRESENT);
        addMetric(scrollview, "PENWINDOWS_PRESENT", SystemMetric.PENWINDOWS_PRESENT);
        addMetric(scrollview, "SHOW_SOUNDS", SystemMetric.SHOW_SOUNDS);
        addMetric(scrollview, "SWAP_BUTTONS", SystemMetric.SWAP_BUTTONS);

        scrollview.setScrollbars(10, 10, 0, 0);
    }

    private function addMetric(scrollview:ScrolledWindow, name:String, metric:SystemMetric) {
        label(name, scrollview.sizer, scrollview);
        label("" + SystemSettings.getMetric(metric), scrollview.sizer, scrollview);
    }

}
