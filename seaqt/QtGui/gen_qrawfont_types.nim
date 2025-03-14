type QRawFont* {.inheritable.} = object
  h*: pointer
  owned*: bool

import ./qtgui_pkg

{.compile("gen_qrawfont.cpp", QtGuiCFlags).}

proc fcQRawFont_delete(self: pointer) {.importc: "QRawFont_delete".}
proc `=destroy`(self: var QRawFont) =
  if self.owned: fcQRawFont_delete(self.h)

proc `=sink`(dest: var QRawFont, source: QRawFont) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QRawFont, source: QRawFont) {.error.}
proc delete*(self: sink QRawFont) =
  let h = self.h
  wasMoved(self)
  fcQRawFont_delete(h)

