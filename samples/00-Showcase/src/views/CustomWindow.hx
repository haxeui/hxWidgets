package views;
import hx.widgets.GCDC;
import hx.widgets.OwnerDrawnPanel;
import hx.widgets.StockBrushes;

class CustomWindow extends OwnerDrawnPanel {
    private override function onPaint(gdc:GCDC) {
        gdc.brush = StockBrushes.BRUSH_YELLOW;
        gdc.clear();
        gdc.drawRoundedRectangle(0, 0, 10, 10, 3);
    }
}