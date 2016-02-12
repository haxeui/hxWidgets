package;

import cpp.vm.Thread;

class ThreadWorker {
    public var count:Int = 0;
    
    public var thread:Thread;
    private var _kill:Bool = false;
    
    public function new() {
        
    }
    
    public function start() {
        _kill = false;
        thread = Thread.create(worker);
        thread.sendMessage(Thread.current());
    }
    
    public function stop() {
        _kill  = true;
    }
    
    private function worker() {
        var main:Thread = Thread.readMessage(true);
        while (true && _kill == false) {
            count++;
            Sys.sleep(0.1);
        }
    }
    
}