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
        if (_eventMap == null) {
            _eventMap = new Map<Int, Map<Int, Array<Event->Void>>>();
        }
        var mapForId:Map<Int, Array<Event->Void>> = _eventMap.get(id);
        if (mapForId == null) {
            mapForId = new Map<Int, Array<Event->Void>>();
            _eventMap.set(id, mapForId);
        }

        var attach:Bool = false;
        var eventList:Array<Event->Void> = mapForId.get(event);
        if (eventList == null) {
            eventList = [];
            mapForId.set(event, eventList);
            attach = true;
        }

        eventList.push(fn);

        if (attach == true) {
            var ref:Pointer<WxEvtHandler> = evtHandlerRef;
            untyped __cpp__("{0}->ptr->Bind({1}, &hx::widgets::EvtHandler_obj::onEvent, this, {2})", ref, event, id);
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

        var detach:Bool = false;
        eventList.remove(fn);
        if (eventList.length == 0) {
            mapForId.remove(event);
            detach = true;
        }

        if (detach == true) {
            var ref:Pointer<WxEvtHandler> = evtHandlerRef;
            untyped __cpp__("ref->ptr->Unbind(event, &hx::widgets::EvtHandler_obj::onEvent, this, id)");
        }
    }

    private function dispose() {
        if (_disposed == true || _eventMap == null) {
            return;
        }
        _disposed = true;
        for (id in _eventMap.keys()) {
            var map = _eventMap.get(id);
            for (eventId in map.keys()) {
                var list = map.get(eventId);
                for (l in list) {
                    unbind(eventId, l, id);
                }
            }
        }
    }
    
    private function handleEvent(e:Pointer<WxEvent>) {
        if (_disposed == true) {
            return;
        }
        if (e.ptr.getId() != -1) {
            executeHandlers(e, e.ptr.getId());
        }
        executeHandlers(e); // call any that were not added using control ids

    }

    private function executeHandlers(e:Pointer<WxEvent>, id:Int = -1) {
        if (_eventMap == null) {
            return;
        }
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
