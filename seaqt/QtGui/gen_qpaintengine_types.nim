type QTextItem* {.inheritable.} = object
  h*: pointer
  owned*: bool

const cflags = gorge("pkg-config --cflags Qt6Gui") & " -fPIC"
{.compile("gen_qpaintengine.cpp", cflags).}

proc fcQTextItem_delete(self: pointer) {.importc: "QTextItem_delete".}
proc `=destroy`(self: var QTextItem) =
  if self.owned: fcQTextItem_delete(self.h)

proc `=sink`(dest: var QTextItem, source: QTextItem) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QTextItem, source: QTextItem) {.error.}
proc delete*(self: sink QTextItem) =
  let h = self.h
  wasMoved(self)
  fcQTextItem_delete(h)

type QPaintEngine* {.inheritable.} = object
  h*: pointer
  owned*: bool

proc fcQPaintEngine_delete(self: pointer) {.importc: "QPaintEngine_delete".}
proc `=destroy`(self: var QPaintEngine) =
  if self.owned: fcQPaintEngine_delete(self.h)

proc `=sink`(dest: var QPaintEngine, source: QPaintEngine) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QPaintEngine, source: QPaintEngine) {.error.}
proc delete*(self: sink QPaintEngine) =
  let h = self.h
  wasMoved(self)
  fcQPaintEngine_delete(h)

type QPaintEngineState* {.inheritable.} = object
  h*: pointer
  owned*: bool

proc fcQPaintEngineState_delete(self: pointer) {.importc: "QPaintEngineState_delete".}
proc `=destroy`(self: var QPaintEngineState) =
  if self.owned: fcQPaintEngineState_delete(self.h)

proc `=sink`(dest: var QPaintEngineState, source: QPaintEngineState) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QPaintEngineState, source: QPaintEngineState) {.error.}
proc delete*(self: sink QPaintEngineState) =
  let h = self.h
  wasMoved(self)
  fcQPaintEngineState_delete(h)

