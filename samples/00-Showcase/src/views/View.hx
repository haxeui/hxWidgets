package views;

import hx.widgets.Font;
import hx.widgets.FontWeight;
import hx.widgets.Panel;
import hx.widgets.Sizer;
import hx.widgets.Window;
import hx.widgets.StaticText;
import hx.widgets.StaticBox;

class View extends Panel {
    public function new(parent:Window) {
        super(parent);
    }
     
    private function label(text:String, targetSizer:Sizer = null, parent:Window = null, bold:Bool = false, underlined:Bool = false) {
        if (parent == null) {
            parent = this;
        }
        var label:StaticText = new StaticText(parent, text);
        if (targetSizer == null) {
            targetSizer = this.sizer;
        }
        
        if (bold == true || underlined == true) {
            var font:Font = label.font;
            if (bold == true) {
                font.weight = FontWeight.BOLD;
            }
            if (underlined == true) {
               font.underlined = true;
            }
            label.font = font;
        }
        targetSizer.add(label);
    }
}