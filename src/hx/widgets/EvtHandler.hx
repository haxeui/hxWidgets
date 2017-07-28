package hx.widgets;

import cpp.Pointer;
import wx.widgets.Event in WxEvent;
import wx.widgets.Window in WxWindow;
import wx.widgets.EvtHandler in WxEvtHandler;

@:headerClassCode("
void onEvent(wxEvent & e) {
    e.ResumePropagation(wxEVENT_PROPAGATE_MAX);
    e.Skip();
    this->handleEvent(::cpp::Pointer_obj::fromRaw(&e));
}
")
@:access(hx.widgets.Window)
class EvtHandler extends Object implements Trackable {

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
            var win:Pointer<WxWindow> = cast(this, Window).windowRef;
            untyped __cpp__("{0}->ptr->Bind({1}, &hx::widgets::EvtHandler_obj::onEvent, this, {2})", win, event, id);
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
            var win:Pointer<WxWindow> = cast(this, Window).windowRef;
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

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Event queuing and processing functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    @:access(hx.widgets.Event)
    public function queueEvent(event:Event):Void {
        evtHandlerRef.ptr.queueEvent(event.eventRef.get_raw());
    }

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Helpers
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    private var evtHandlerRef(get, null):Pointer<WxEvtHandler>;
    private function get_evtHandlerRef():Pointer<WxEvtHandler> {
        return _ref.reinterpret();
    }
}
