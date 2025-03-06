type QPainterPath* {.inheritable.} = object
  h*: pointer
  owned*: bool

const cflags = gorge("pkg-config --cflags Qt5Gui") & " -fPIC"
{.compile("gen_qpainterpath.cpp", cflags).}

proc fcQPainterPath_delete(self: pointer) {.importc: "QPainterPath_delete".}
proc `=destroy`(self: var QPainterPath) =
  if self.owned: fcQPainterPath_delete(self.h)

proc `=sink`(dest: var QPainterPath, source: QPainterPath) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QPainterPath, source: QPainterPath) {.error.}
proc delete*(self: sink QPainterPath) =
  let h = self.h
  wasMoved(self)
  fcQPainterPath_delete(h)

type QPainterPathStroker* {.inheritable.} = object
  h*: pointer
  owned*: bool

proc fcQPainterPathStroker_delete(self: pointer) {.importc: "QPainterPathStroker_delete".}
proc `=destroy`(self: var QPainterPathStroker) =
  if self.owned: fcQPainterPathStroker_delete(self.h)

proc `=sink`(dest: var QPainterPathStroker, source: QPainterPathStroker) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QPainterPathStroker, source: QPainterPathStroker) {.error.}
proc delete*(self: sink QPainterPathStroker) =
  let h = self.h
  wasMoved(self)
  fcQPainterPathStroker_delete(h)

type QPainterPathElement* {.inheritable.} = object
  h*: pointer
  owned*: bool

proc fcQPainterPathElement_delete(self: pointer) {.importc: "QPainterPath__Element_delete".}
proc `=destroy`(self: var QPainterPathElement) =
  if self.owned: fcQPainterPathElement_delete(self.h)

proc `=sink`(dest: var QPainterPathElement, source: QPainterPathElement) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QPainterPathElement, source: QPainterPathElement) {.error.}
proc delete*(self: sink QPainterPathElement) =
  let h = self.h
  wasMoved(self)
  fcQPainterPathElement_delete(h)

