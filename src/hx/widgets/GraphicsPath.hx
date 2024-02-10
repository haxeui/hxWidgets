package hx.widgets;

import cpp.Reference;
import cpp.Pointer;
import cpp.RawPointer;
import wx.widgets.GraphicsPath in WxGraphicsPath;

private enum GraphicPathCalls {
    moveToPoint(x:Float, y:Float);
    addArcToPoint(x1:Float, y1:Float, x2:Float, y2:Float, r:Float);
    addCircle(x:Float, y:Float, r:Float);
    addCurveToPoint(cx1:Float, cy1:Float, cx2:Float, cy2:Float, x:Float, y:Float);
    addQuadCurveToPoint(cx:Float, cy:Float, x:Float, y:Float);
    addEllipse(x:Float, y:Float, w:Float, h:Float);
    addLineToPoint(x:Float, y:Float);
    addRectangle(x:Float,y:Float,w:Float,h:Float);
    addRoundedRectangle(x:Float,y:Float,w:Float,h:Float,r:Float);
    addArc(x:Float, y:Float, r:Float, startAngle:Float, endAngle:Float, clockwise:Bool);
    closeSubpath;
}

class GraphicsPath extends Object {
    // GraphicsPath is created by createGraphicsPath in GraphicsContext
    // The issue is that wx creates a path class, but on the stack, which means its freed when it goes out of scope (ie, in the function call),
    // which means we cant pass it around in the hxWidgets helper objects... ... so the shitty workaround is to cache the calls the we want to make to the native path object,
    // then when we allocate the native path on the stack we "replay" those calls natively while it is valid mem 

    private var calls:Array<GraphicPathCalls> = [];
    
    public function new() {
    }
    
    public function moveToPoint(x:Float, y:Float) {
        calls.push(GraphicPathCalls.moveToPoint(x, y));
    }

    public function addArcToPoint(x1:Float, y1:Float, x2:Float, y2:Float, r:Float) {
        calls.push(GraphicPathCalls.addArcToPoint(x1, y1, x2, y2, r));
    }

    public function addCircle(x:Float, y:Float, r:Float) {
        calls.push(GraphicPathCalls.addCircle(x, y, r));
    }

    public function addCurveToPoint(cx1:Float, cy1:Float, cx2:Float, cy2:Float, x:Float, y:Float) {
        calls.push(GraphicPathCalls.addCurveToPoint(cx1, cy1, cx2, cy2, x, y));
    }

    public function addQuadCurveToPoint(cx:Float, cy:Float, x:Float, y:Float) {
        calls.push(GraphicPathCalls.addQuadCurveToPoint(cx, cy, x, y));
    }

    public function addEllipse(x:Float, y:Float, w:Float, h:Float) {
        calls.push(GraphicPathCalls.addEllipse(x, y, w, h));
    }

    public function addLineToPoint(x:Float, y:Float) {
        calls.push(GraphicPathCalls.addLineToPoint(x, y));
    }

    public function addRectangle(x:Float,y:Float,w:Float,h:Float) {
        calls.push(GraphicPathCalls.addRectangle(x, y, w, h));
    }

    public function addRoundedRectangle(x:Float,y:Float,w:Float,h:Float,r:Float) {
        calls.push(GraphicPathCalls.addRoundedRectangle(x ,y ,w ,h ,r));
    }

    public function addArc(x:Float, y:Float, r:Float, startAngle:Float, endAngle:Float, clockwise:Bool) {
        calls.push(GraphicPathCalls.addArc(x, y, r, startAngle, endAngle, clockwise));
    }

    public function closeSubpath() {
        calls.push(GraphicPathCalls.closeSubpath);
    }
}