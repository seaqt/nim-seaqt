type QFontInfo* {.inheritable.} = object
  h*: pointer
  owned*: bool

import ./qtgui_pkg

{.compile("gen_qfontinfo.cpp", QtGuiCFlags).}

proc fcQFontInfo_delete(self: pointer) {.importc: "QFontInfo_delete".}
proc `=destroy`(self: var QFontInfo) =
  if self.owned: fcQFontInfo_delete(self.h)

proc `=sink`(dest: var QFontInfo, source: QFontInfo) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QFontInfo, source: QFontInfo) {.error.}
proc delete*(self: sink QFontInfo) =
  let h = self.h
  wasMoved(self)
  fcQFontInfo_delete(h)

