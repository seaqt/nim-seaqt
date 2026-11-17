type QCursor* {.inheritable.} = object
  h*: pointer
  owned*: bool

import ./qtgui_pkg

{.compile("gen_qcursor.cpp", QtGuiCFlags).}

proc fcQCursor_delete(self: pointer) {.importc: "QCursor_delete".}
proc `=destroy`(self: var QCursor) =
  if self.owned: fcQCursor_delete(self.h)

proc `=sink`(dest: var QCursor, source: QCursor) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QCursor, source: QCursor) {.error.}
proc delete*(self: sink QCursor) =
  let h = self.h
  wasMoved(self)
  fcQCursor_delete(h)

