package views;

import hx.widgets.Bitmap;
import hx.widgets.BoxSizer;
import hx.widgets.Button;
import hx.widgets.Direction;
import hx.widgets.GridSizer;
import hx.widgets.Orientation;
import hx.widgets.Window;

class BasicControlsView extends View {
    public function new(parent:Window) {
        super(parent);
        
        sizer = new BoxSizer(Orientation.VERTICAL);
        
        // buttons
        var buttonSizer:GridSizer = new GridSizer(2);
        sizer.addSizer(buttonSizer);
        
        var button:Button = new Button(this, "Left");
        button.bitmap = Bitmap.fromHaxeResource("haxe-logo-small.png");
        buttonSizer.add(button);
        
        var button:Button = new Button(this, "Right");
        button.bitmap = Bitmap.fromHaxeResource("haxe-logo-small.png");
        button.bitmapPosition = Direction.RIGHT;
        buttonSizer.add(button);
        
        var button:Button = new Button(this, "Top");
        button.bitmap = Bitmap.fromHaxeResource("haxe-logo-small.png");
        button.bitmapPosition = Direction.TOP;
        buttonSizer.add(button);
        
        var button:Button = new Button(this, "Bottom");
        button.bitmap = Bitmap.fromHaxeResource("haxe-logo-small.png");
        button.bitmapPosition = Direction.BOTTOM;
        buttonSizer.add(button);
        
        // horizontal ranges
        //var hrangeSizer:
    }
}