type QPoint* {.inheritable.} = object
  h*: pointer
  owned*: bool

const cflags = gorge("pkg-config --cflags Qt5Core") & " -fPIC"
{.compile("gen_qpoint.cpp", cflags).}

proc fcQPoint_delete(self: pointer) {.importc: "QPoint_delete".}
proc `=destroy`(self: var QPoint) =
  if self.owned: fcQPoint_delete(self.h)

proc `=sink`(dest: var QPoint, source: QPoint) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QPoint, source: QPoint) {.error.}
proc delete*(self: sink QPoint) =
  let h = self.h
  wasMoved(self)
  fcQPoint_delete(h)

type QPointF* {.inheritable.} = object
  h*: pointer
  owned*: bool

proc fcQPointF_delete(self: pointer) {.importc: "QPointF_delete".}
proc `=destroy`(self: var QPointF) =
  if self.owned: fcQPointF_delete(self.h)

proc `=sink`(dest: var QPointF, source: QPointF) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QPointF, source: QPointF) {.error.}
proc delete*(self: sink QPointF) =
  let h = self.h
  wasMoved(self)
  fcQPointF_delete(h)

