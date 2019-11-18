package wx.widgets;

@:include("wx/utils.h")
@:unreflective
@:native("wxExecuteEnv")
@:structAccess
extern class ExecuteEnv {
    public static inline function alloc(cwd:WxString, env:EnvVariableHashMap):ExecuteEnv {
        return untyped __cpp__("{ {0}, {1} }", cwd, env);
    }
}