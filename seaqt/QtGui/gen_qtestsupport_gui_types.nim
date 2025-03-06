type QTestQTouchEventSequence* {.inheritable.} = object
  h*: pointer
  owned*: bool

const cflags = gorge("pkg-config --cflags Qt6Gui") & " -fPIC"
{.compile("gen_qtestsupport_gui.cpp", cflags).}

proc fcQTestQTouchEventSequence_delete(self: pointer) {.importc: "QTest__QTouchEventSequence_delete".}
proc `=destroy`(self: var QTestQTouchEventSequence) =
  if self.owned: fcQTestQTouchEventSequence_delete(self.h)

proc `=sink`(dest: var QTestQTouchEventSequence, source: QTestQTouchEventSequence) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QTestQTouchEventSequence, source: QTestQTouchEventSequence) {.error.}
proc delete*(self: sink QTestQTouchEventSequence) =
  let h = self.h
  wasMoved(self)
  fcQTestQTouchEventSequence_delete(h)

