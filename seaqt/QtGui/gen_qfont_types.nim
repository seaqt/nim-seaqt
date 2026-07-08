type QFont* {.inheritable.} = object
  h*: pointer
  owned*: bool

import ./qtgui_pkg

{.compile("gen_qfont.cpp", QtGuiCFlags).}

proc fcQFont_delete(self: pointer) {.importc: "QFont_delete".}
proc `=destroy`(self: var QFont) =
  if self.owned: fcQFont_delete(self.h)

proc `=sink`(dest: var QFont, source: QFont) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QFont, source: QFont) {.error.}
proc delete*(self: sink QFont) =
  let h = self.h
  wasMoved(self)
  fcQFont_delete(h)

type QFontTag* {.inheritable.} = object
  h*: pointer
  owned*: bool

proc fcQFontTag_delete(self: pointer) {.importc: "QFont__Tag_delete".}
proc `=destroy`(self: var QFontTag) =
  if self.owned: fcQFontTag_delete(self.h)

proc `=sink`(dest: var QFontTag, source: QFontTag) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QFontTag, source: QFontTag) {.error.}
proc delete*(self: sink QFontTag) =
  let h = self.h
  wasMoved(self)
  fcQFontTag_delete(h)

