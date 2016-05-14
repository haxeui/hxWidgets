# hxWidgets

[![Build Status](https://travis-ci.org/ianharrigan/hxWidgets.svg?branch=master)](https://travis-ci.org/ianharrigan/hxWidgets)

Haxe externs (and wrappers) for wxWidgets

**You need a development version of hxcpp for now**

```
git clone https://github.com/HaxeFoundation/hxcpp.git
haxelib dev hxcpp hxcpp/
```

and then see https://github.com/HaxeFoundation/hxcpp#building for instruction on how to build it.

## Windows

* Download and install wxWidgets using installer from [https://www.wxwidgets.org/downloads/](https://www.wxwidgets.org/downloads/)
* Create `WXWIN` environment var if setup didnt (eg: `C:\wxWidgets-3.1.0`)
* Run `vcvarsall.bat` from Visual Studio dir
(eg: `"C:\Program Files (x86)\Microsoft Visual Studio 14.0\VC\vcvarsall.bat"`)
* Build shared and static releases of wxWidgets:
  * `nmake.exe -f %WXWIN%\build\msw\makefile.vc BUILD=release`
  * `nmake.exe -f %WXWIN%\build\msw\makefile.vc BUILD=release SHARED=1`

## Requirements for Linux and Mac

You need wxWidgets 3.x and wx-config available in your path.

### Linux

You can install wxWidgets with:

* on debian/ubuntu: `apt-get install libwxgtk3.0-dev libwxbase3.0-dev`

### Mac

You need at least OSX 10.7 and you can install wxWidgets with:

```
brew update
brew install wxwidgets
```
