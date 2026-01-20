type QKeySequence* {.inheritable.} = object
  h*: pointer
  owned*: bool

import ./qtgui_pkg

{.compile("gen_qkeysequence.cpp", QtGuiCFlags).}

proc fcQKeySequence_delete(self: pointer) {.importc: "QKeySequence_delete".}
proc `=destroy`(self: var QKeySequence) =
  if self.owned: fcQKeySequence_delete(self.h)

proc `=sink`(dest: var QKeySequence, source: QKeySequence) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QKeySequence, source: QKeySequence) {.error.}
proc delete*(self: sink QKeySequence) =
  let h = self.h
  wasMoved(self)
  fcQKeySequence_delete(h)

