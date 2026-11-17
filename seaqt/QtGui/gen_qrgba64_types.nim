type QRgba64* {.inheritable.} = object
  h*: pointer
  owned*: bool

import ./qtgui_pkg

{.compile("gen_qrgba64.cpp", QtGuiCFlags).}

proc fcQRgba64_delete(self: pointer) {.importc: "QRgba64_delete".}
proc `=destroy`(self: var QRgba64) =
  if self.owned: fcQRgba64_delete(self.h)

proc `=sink`(dest: var QRgba64, source: QRgba64) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QRgba64, source: QRgba64) {.error.}
proc delete*(self: sink QRgba64) =
  let h = self.h
  wasMoved(self)
  fcQRgba64_delete(h)

