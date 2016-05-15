package hx.widgets;

import cpp.Pointer;
import wx.widgets.Event in WxEvent;
import wx.widgets.Window in WxWindow;

@:headerClassCode("
void onEvent(wxEvent& e) {
    this->handleEvent(::cpp::Pointer_obj::fromRaw(&e));
}
")
@:access(hx.widgets.Window)
class EvtHandler {

    private var _eventMap:Map<Int, Map<Int, Array<Event->Void>>>;

    public function new() {
        _eventMap = new Map<Int, Map<Int, Array<Event->Void>>>();
    }

    public function bind(event:Int, fn:Event->Void, id:Int = -1) {
        var mapForId:Map<Int, Array<Event->Void>> = _eventMap.get(id);
        if (mapForId == null) {
            mapForId = new Map<Int, Array<Event->Void>>();
            _eventMap.set(id, mapForId);
        }

        var eventList:Array<Event->Void> = mapForId.get(event);
        if (eventList == null) {
            eventList = [];
            mapForId.set(event, eventList);
        }

        eventList.push(fn);

        if (Std.is(this, Window)) {
            var win:Pointer<WxWindow> = cast(this, Window)._ref;
            untyped __cpp__("win->ptr->Bind(event, &hx::widgets::EvtHandler_obj::onEvent, this, id)");
        }
    }

    public function unbind(event:Int, fn:Event->Void, id:Int = -1) {
        var mapForId:Map<Int, Array<Event->Void>> = _eventMap.get(id);
        if (mapForId == null) {
            return;
        }

        var eventList:Array<Event->Void> = mapForId.get(event);
        if (eventList == null) {
            return;
        }

        eventList.remove(fn);
        if (eventList.length == 0) {
            mapForId.remove(event);
        }

        if (Std.is(this, Window)) {
            var win:Pointer<WxWindow> = cast(this, Window)._ref;
            untyped __cpp__("win->ptr->Unbind(event, &hx::widgets::EvtHandler_obj::onEvent, this, id)");
        }
    }

    private function handleEvent(e:Pointer<WxEvent>) {
        executeHandlers(e, e.ptr.getId());
        executeHandlers(e); // call any that were not added using control ids

    }

    private function executeHandlers(e:Pointer<WxEvent>, id:Int = -1) {
        var mapForId:Map<Int, Array<Event->Void>> = _eventMap.get(id);
        if (mapForId == null) {
            return;
        }

        var eventList:Array<Event->Void> = mapForId.get(e.ptr.getEventType());
        if (eventList == null) {
            return;
        }

        for (fn in eventList) {
            fn(Event.fromPointer(e));
        }
    }

}
