package hx.widgets;

import wx.widgets.Brush in WxBrush;
import wx.widgets.StockBrushes in WxStockBrushes;

class StockBrushes {
    public static var BRUSH_BLACK(default, null):Brush          = createStockBrush(WxStockBrushes.BRUSH_BLACK);
    public static var BRUSH_BLUE(default, null):Brush           = createStockBrush(WxStockBrushes.BRUSH_BLUE);
    public static var BRUSH_CYAN(default, null):Brush           = createStockBrush(WxStockBrushes.BRUSH_CYAN);
    public static var BRUSH_GREEN(default, null):Brush          = createStockBrush(WxStockBrushes.BRUSH_GREEN);
    public static var BRUSH_YELLOW(default, null):Brush         = createStockBrush(WxStockBrushes.BRUSH_YELLOW);
    public static var BRUSH_GREY(default, null):Brush           = createStockBrush(WxStockBrushes.BRUSH_GREY);
    public static var BRUSH_LIGHT_GREY(default, null):Brush     = createStockBrush(WxStockBrushes.BRUSH_LIGHT_GREY);
    public static var BRUSH_MEDIUM_GREY(default, null):Brush    = createStockBrush(WxStockBrushes.BRUSH_MEDIUM_GREY);
    public static var BRUSH_RED(default, null):Brush            = createStockBrush(WxStockBrushes.BRUSH_RED);
    public static var BRUSH_TRANSPARENT(default, null):Brush    = createStockBrush(WxStockBrushes.BRUSH_TRANSPARENT);
    public static var BRUSH_WHITE(default, null):Brush          = createStockBrush(WxStockBrushes.BRUSH_WHITE);
    
    @:access(hx.widgets.Brush)
    private static function createStockBrush(stock:WxBrush):Brush {
        var brush:Brush = new Brush();
        brush._ref = stock;
        return brush;
    }
}