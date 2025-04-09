type QDesktopServices* {.inheritable.} = object
  h*: pointer
  owned*: bool

import ./qtgui_pkg

{.compile("gen_qdesktopservices.cpp", QtGuiCFlags).}

proc fcQDesktopServices_delete(self: pointer) {.importc: "QDesktopServices_delete".}
proc `=destroy`(self: var QDesktopServices) =
  if self.owned: fcQDesktopServices_delete(self.h)

proc `=sink`(dest: var QDesktopServices, source: QDesktopServices) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QDesktopServices, source: QDesktopServices) {.error.}
proc delete*(self: sink QDesktopServices) =
  let h = self.h
  wasMoved(self)
  fcQDesktopServices_delete(h)

