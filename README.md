# tabmod

**tabmodtais a tiny Windows 11 app that let's you toggle tablet mode a.k.a. "Optimize taskbar for touch interactions when this device is used as a tablet" setting.

## Why?

I have a Windows convertible device with a detachable keyboard. Every time I detach the keyboard to use another one for work, Windows switches to tablet mode: the taskbar becomes larger and automatically hides. I could have just switched off "Optimize taskbar for touch interactions when this device is used as a tablet" setting but sometimes I do need the device to operate as a tablet, e.g. when I'm drawing on it.

Windows 10 used to have a separate toggle for that in the notification flyout but Windows 11 doesn't so there's no quick way to toggle tablet mode anymore.

And this is why I created tabmod.

## How it works

tabmod sits in your tray area. Click on its icon and it toggles tablet mode.

## How to use

1. Download tabmod.exe from the releases page on GitHub: https://github.com/moigagoo/tabmod/releases
2. Run tabmod.exe as administrator (required for it to be able to modify the registry).

## Building from source

tabmod is open-source software and if you don't trust or can't use a precompiled .exe file, build one yourself.

tabmod is written in [Nim](https://nim-lang.org) programming language and you'll need the Nim compiler and a C compiler to build the executable file.

If you're new to Nim, the quickest way to set up the compilation toolchain is with [scoop](https://scoop.sh):

```
$ scoop install nim
```

Then, clone the tabmod repository from GitHub, switch to the cloned directory, and build the executable:

```
$ git clone https://githib.com/moigagoo/tabmod.git
$ cd tabmod
$ nimble build
```

## Possible future improvements

1. Hotkey support.
2. Make the hotkey configurable.
3. Show tablet mode state in the icon.
4. Make a fancier icon.
