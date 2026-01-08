# Package

version       = "1.0.0"
author        = "Constantine Molchanov"
description   = "Tablet mode toggler for Windows 11"
license       = "MIT"
srcDir        = "src"
bin           = @["tabmod"]


# Dependencies

requires "nim >= 2.2.6"
requires "winregistry >= 2.1.0"
requires "windy >= 0.4.4"
