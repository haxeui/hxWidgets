package views;

import hx.widgets.*;
import hx.widgets.styles.*;

class DrawingView extends View {

    public function new(parent:Window) {
        super(parent);

        var platform:PlatformInfo  = new PlatformInfo();

        bind(EventType.PAINT, function(e) {
            LogView.log('Paint event: width=${this.size.width},  height=${this.size.height}');

            var dc:PaintDC = new PaintDC(this);
            dc.background = StockBrushes.BRUSH_BLACK;
            dc.clear();

            if (platform.isMac) { // This cause issues on osx - need to investigate
                return;
            }

            // images
            var gc:GraphicsContext = new GraphicsContext(this);
            var haxeLogo:Bitmap = Bitmap.fromHaxeResource("haxe-logo.png");
            gc.drawBitmap(haxeLogo, -100, -60);

            var wxLogo:Bitmap = Bitmap.fromHaxeResource("wx-logo.png");
            gc.drawBitmap(wxLogo, 0, 100);

            // normal anti alias
            gc.setFont(this.font, 0xFFFFFF);
            gc.drawText("AntialiasMode.DEFAULT", 10, 200);

            gc.antialiasMode = AntialiasMode.DEFAULT;
            gc.pen = new Pen(0xFF0000, 3);
            gc.brush = new Brush(0x880000);
            gc.drawRoundedRectangle(10, 220, 100, 50, 10);

            gc.pen = new Pen(0x00FF00, 2);
            gc.brush = new Brush(0x008800);
            gc.drawRoundedRectangle(30, 240, 100, 50, 5);

            gc.pen = new Pen(0x0000FF, 1);
            gc.brush = new Brush(0x000088);
            gc.drawRoundedRectangle(50, 260, 100, 50, 0);

            gc.pen = new Pen(0xFFFFFF, 3);
            gc.strokeLine(10, 320, 50, 360);
            gc.pen = new Pen(0xFFFFFF, 2);
            gc.strokeLine(30, 320, 70, 360);
            gc.pen = new Pen(0xFFFFFF, 1);
            gc.strokeLine(50, 320, 90, 360);

            // no anti alias
            gc.drawText("AntialiasMode.NONE", 270, 200);

            gc.antialiasMode = AntialiasMode.NONE;
            gc.pen = new Pen(0xFF0000, 3);
            gc.brush = new Brush(0x880000);
            gc.drawRoundedRectangle(270, 220, 100, 50, 10);

            gc.pen = new Pen(0x00FF00, 2);
            gc.brush = new Brush(0x008800);
            gc.drawRoundedRectangle(290, 240, 100, 50, 5);

            gc.pen = new Pen(0x0000FF, 1);
            gc.brush = new Brush(0x000088);
            gc.drawRoundedRectangle(310, 260, 100, 50, 0);

            gc.pen = new Pen(0xFFFFFF, 3);
            gc.strokeLine(270, 320, 310, 360);
            gc.pen = new Pen(0xFFFFFF, 2);
            gc.strokeLine(290, 320, 330, 360);
            gc.pen = new Pen(0xFFFFFF, 1);
            gc.strokeLine(310, 320, 350, 360);

            // image scaling
            var haxeLogSmall:Bitmap = Bitmap.fromHaxeResource(BasicControlsView.HAXELOGOSMALL_PNG);
            var haxeLogSmallSub:Bitmap = haxeLogSmall.getSubBitmap(new Rect(0, 0, 20, 20));

            // default interpolation
            gc.interpolationQuality = InterpolationQuality.FAST;
            gc.drawText("InterpolationQuality.FAST", 450, 10);
            gc.drawBitmap(haxeLogSmall, 450, 30, 20, 20);
            gc.drawBitmap(haxeLogSmall, 480, 30);
            gc.drawBitmap(haxeLogSmall, 530, 30, 80, 80);
            gc.drawBitmap(haxeLogSmallSub, 620, 30, 10, 10);
            gc.drawBitmap(haxeLogSmallSub, 640, 30);
            gc.drawBitmap(haxeLogSmallSub, 670, 30, 40, 40);

            // best interpolation
            gc.interpolationQuality = InterpolationQuality.BEST;
            gc.drawText("InterpolationQuality.BEST", 450, 120);
            gc.drawBitmap(haxeLogSmall, 450, 140, 20, 20);
            gc.drawBitmap(haxeLogSmall, 480, 140);
            gc.drawBitmap(haxeLogSmall, 530, 140, 80, 80);
            gc.drawBitmap(haxeLogSmallSub, 620, 140, 10, 10);
            gc.drawBitmap(haxeLogSmallSub, 640, 140);
            gc.drawBitmap(haxeLogSmallSub, 670, 140, 40, 40);

            // no interpolation
            gc.interpolationQuality = InterpolationQuality.NONE;
            gc.drawText("InterpolationQuality.NONE", 450, 230);
            gc.drawBitmap(haxeLogSmall, 450, 250, 20, 20);
            gc.drawBitmap(haxeLogSmall, 480, 250);
            gc.drawBitmap(haxeLogSmall, 530, 250, 80, 80);
            gc.drawBitmap(haxeLogSmallSub, 620, 250, 10, 10);
            gc.drawBitmap(haxeLogSmallSub, 640, 250);
            gc.drawBitmap(haxeLogSmallSub, 670, 250, 40, 40);
            
            e.stopPropagation();
        });
    }

}
