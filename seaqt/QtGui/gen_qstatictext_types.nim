type QStaticText* {.inheritable.} = object
  h*: pointer
  owned*: bool

import ./qtgui_pkg

{.compile("gen_qstatictext.cpp", QtGuiCFlags).}

proc fcQStaticText_delete(self: pointer) {.importc: "QStaticText_delete".}
proc `=destroy`(self: var QStaticText) =
  if self.owned: fcQStaticText_delete(self.h)

proc `=sink`(dest: var QStaticText, source: QStaticText) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QStaticText, source: QStaticText) {.error.}
proc delete*(self: sink QStaticText) =
  let h = self.h
  wasMoved(self)
  fcQStaticText_delete(h)

