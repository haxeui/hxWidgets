package views;

import hx.widgets.EventType;
import hx.widgets.Panel;
import hx.widgets.Window;

class EventsView extends View {
    public function new(parent:Window) {
        super(parent);
        
        var outer = new Panel(this);
        outer.resize(200, 200);
        outer.backgroundColour = 0xFF0000;
        
        var inner = new Panel(outer);
        inner.resize(100, 100);
        inner.backgroundColour = 0x0000FF;
        inner.move(50, 50);
        
        outer.bind(EventType.MOTION, function(e) {
            trace("MOTION IN OUTER");
        });
        
        inner.bind(EventType.MOTION, function(e) {
            trace("MOTION IN INNER");
            e.stopPropagation();
        });
    }
}