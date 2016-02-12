package;

import cpp.vm.Thread;

class ThreadWorker {
    public var count:Int = 0;
    
    public var thread:Thread;
    
    public function new() {
        
    }
    
    public function start() {
        thread = Thread.create(worker);
        thread.sendMessage(Thread.current());
    }
    
    private function worker() {
        var main:Thread = Thread.readMessage(true);
        while (true) {
            count++;
            Sys.sleep(0.1);
        }
    }
    
}