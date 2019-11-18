package hx.widgets;

@:unreflective
typedef ExecuteEnv = {
    @:optional var cwd:String;
    @:optional var env:Map<String, String>;
}