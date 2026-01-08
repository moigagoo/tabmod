import std/os

import pixie, windy, winregistry

proc getIcon(): Image =
  ## Get the tray icon.

  let path = newPath()
  path.circle(circle(vec2(32, 32), 26))

  result = newImage(64, 64)
  result.fillPath(path, color(0.3, 0.6, 0.9, 1))

proc getMenu(window: Window): seq[TrayMenuEntry] =
  ## Populate the tray menu.

  result.add(
    TrayMenuEntry(
      kind: TrayMenuOption,
      text: "Quit tabmod",
      onClick: proc() =
        window.closeRequested = true,
    )
  )

proc toggleTabMode() =
  ## Get the current tablet mode state and flip it.

  var h: RegHandle

  h = open(
    "HKEY_LOCAL_MACHINE\\SYSTEM\\CurrentControlSet\\Control\\PriorityControl",
    samRead or samWrite,
  )
  let tabModVal = h.readInt32("ConvertibleSlateMode")

  h.writeInt32("ConvertibleSlateMode", int32(not bool(tabModVal)))

  close(h)

when isMainModule:
  when not defined(windows):
    quit("tabmod is a Windows app")

  if not isAdmin():
    quit("tabmod must be run as admin")

  let window = newWindow("tabmod", ivec2(800, 600), visible = false)

  window.makeContextCurrent()

  showTrayIcon(getIcon(), "tabmod", toggleTabMode, getMenu(window))

  while not window.closeRequested:
    pollEvents()

  hideTrayIcon()
