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
        
        panel.bind(EventType.PAINT, function(e) {
            var dc:PaintDC = new PaintDC(panel);
            dc.background = StockBrushes.BRUSH_BLACK;
            dc.clear();
            
            var gc:GraphicsContext = new GraphicsContext(panel);
            // normal anti alias
            gc.setFont(panel.font, 0xFFFFFF);
            gc.drawText("AntialiasMode.DEFAULT", 10, 10);
            
            gc.antialiasMode = AntialiasMode.DEFAULT;
            gc.pen = new Pen(0xFF0000, 3);
            gc.brush = new Brush(0x880000);
            gc.drawRoundedRectangle(10, 30, 100, 50, 10);
            
            gc.pen = new Pen(0xFFFFFF, 3);
            gc.strokeLine(10, 120, 50, 160);
        });
        
        frame.layout();
        frame.show();

        app.run();
        app.exit();
    }

}
