package views;

import hx.widgets.*;
import hx.widgets.styles.*;

class ThreadView extends View {
    public function new(parent:Window) {
        super(parent);
        
        sizer = new BoxSizer(Orientation.HORIZONTAL);
        
        var innerSizer = new BoxSizer(Orientation.VERTICAL);
        var frame = createFrame("Options", innerSizer);
        var button:Button = new Button(frame, "Add Thread");
        innerSizer.add(button);
        var button:Button = new Button(frame, "Add Timer");
        innerSizer.add(button);
        var button:Button = new Button(frame, "Remove Last");
        innerSizer.add(button);
        
        
        sizer.add(frame);
        
        return;
        
        var frame:Panel = new Panel(this);
        frame.sizer = new StaticBoxSizer(Orientation.VERTICAL, frame, "Test");
        
        //var innerPanel:Panel = new Panel(frame);
        var innerSizer = new BoxSizer(Orientation.VERTICAL);
        frame.sizer.addSizer(innerSizer, 1, Stretch.GROW | Direction.ALL, 5);
        //frame.sizer = new BoxSizer(Orientation.VERTICAL);
        //sizer.add(frame, 0, Stretch.GROW);
        
        //var buttonsSizer:BoxSizer = new BoxSizer(Orientation.VERTICAL);
        var button:Button = new Button(frame, "Add Thread");
        innerSizer.add(button);
        var button:Button = new Button(frame, "Add Timer");
        innerSizer.add(button);
        var button:Button = new Button(frame, "Remove Last");
        innerSizer.add(button);
        
        sizer.add(frame);
        /*
        sizer.add(frame);
        
        var frame:StaticBox = new StaticBox(this, "Test 2");
        frame.sizer = new BoxSizer(Orientation.VERTICAL);
        var button:Button = new Button(frame, "Add Thread");
        frame.sizer.add(button);
        var button:Button = new Button(frame, "Add Timer");
        frame.sizer.add(button);
        var button:Button = new Button(frame, "Remove Last");
        frame.sizer.add(button);
        
        
        */
        
    }
    
    private function addThread() {
        
    }
    
    private function addTimer() {
        
    }
}

class ThreadItem {
    
}