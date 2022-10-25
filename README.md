![build status](https://github.com/haxeui/hxwidgets/actions/workflows/build-linux.yml/badge.svg)
![build status](https://github.com/haxeui/hxwidgets/actions/workflows/build-osx.yml/badge.svg)
![build status](https://github.com/haxeui/hxwidgets/actions/workflows/build-windows.yml/badge.svg)

# hxWidgets

Haxe externs (and wrappers) for wxWidgets

## Dependencies

You need the [hxcpp](https://lib.haxe.org/p/hxcpp) library and **at least Haxe 3.4.0**, we recommend [Haxe 3.4.2](https://haxe.org/download/version/3.4.2/).

## Windows

* Download and install wxWidgets using installer from [https://www.wxwidgets.org/downloads/](https://www.wxwidgets.org/downloads/)
* Create `WXWIN` environment var if setup didnt (eg: `C:\wxWidgets-3.0.2`)
* Run `vcvarsall.bat` from Visual Studio dir
  (eg: `"C:\Program Files (x86)\Microsoft Visual Studio 14.0\VC\vcvarsall.bat"`)
* Build shared and static releases of wxWidgets:
  * `cd %WXWIN%\build\msw\`
  * `nmake.exe -f makefile.vc BUILD=release`
  * `nmake.exe -f makefile.vc BUILD=release SHARED=1`

## Requirements for Linux and Mac

You need wxWidgets 3.x and wx-config available in your path.

### Linux

You can install wxWidgets with:

* debian/ubuntu 20.04 (or later):
  * `apt-get install libwxgtk3.0-gtk3-dev libwxbase3.0-dev libwxgtk-webview3.0-gtk3-dev`
* debian/ubuntu (older versions):
  * `apt-get install libwxgtk3.0-dev libwxbase3.0-dev libwxgtk-webview3.0-dev`

### Mac

You need at least OSX 10.7 and you can install wxWidgets with:

```bash
brew update
brew install wxwidgets
```

## More About this Library

hxWidgets is actually independent of haxeui-core (and haxeui-hxwidgets as well), and can be used on
its own if you so desired (the showcase in this repo is an example of that). hxWidgets consists of two
layers:

  * `wx.widgets.*` (e.g., `wx.widgets.Button`) : these are externs for Haxe (hxcpp) for wxWidgets,
    and could be used as-is — though, working with externs, esp. C++ externs, can be... difficult.
    
  * `hx.widgets.*` (e.g., `hx.widgets.Button`) : these are nice Haxe wrappers for the externs so
    you can just do `new Button(...)` and be done with it (it manages all the pointers, etc.). They
    also make things a little more "haxey" in the sense that you have `myButton.bitmap = ...` rather
    than the traditional wx way `myButton.setBitmap(...)`.
    
    
## Building WxWidgets From Source (Linux & OSX)
Sometimes is useful to have the most up-to-date version of wxWidgets running on a linux or OSX system, to do this follow these steps:

* download source archive from: https://www.wxwidgets.org/downloads/
  * alternatively you can get the very latest version from here: https://github.com/wxWidgets/wxWidgets
* unzip to, for example: `/home/users/username/wxwidgets3.1.3/`
* create a folder there: `mkdir wx_build`
* enter folder: `cd wx_build`
* configure: `../configure --with-opengl --disable-shared`
  * if you get errors during configure you likely need to run one (or all) of the following (on linux):
    * `sudo apt install build-essential`
    * `sudo apt install libgtk2.0-dev`
    * `sudo apt install libgtk-3-dev`
    * `sudo apt install freeglut3-dev`
* make: `make` (adding `-j3` will allow your system to use 3 cores and thus speed up the initial compile)
* once built, install: `make install` (may need `sudo` if not default `/usr/local` location)
* `wx-config --version` should now show the version you just built
  * you may need to add the unzip folder to your $PATH var if it doesnt show the right version
