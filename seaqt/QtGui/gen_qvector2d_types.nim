type QVector2D* {.inheritable.} = object
  h*: pointer
  owned*: bool

import ./qtgui_pkg

{.compile("gen_qvector2d.cpp", QtGuiCFlags).}

proc fcQVector2D_delete(self: pointer) {.importc: "QVector2D_delete".}
proc `=destroy`(self: var QVector2D) =
  if self.owned: fcQVector2D_delete(self.h)

proc `=sink`(dest: var QVector2D, source: QVector2D) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QVector2D, source: QVector2D) {.error.}
proc delete*(self: sink QVector2D) =
  let h = self.h
  wasMoved(self)
  fcQVector2D_delete(h)

