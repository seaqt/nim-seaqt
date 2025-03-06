type QEvent* {.inheritable.} = object
  h*: pointer
  owned*: bool

const cflags = gorge("pkg-config --cflags Qt5Core") & " -fPIC"
{.compile("gen_qcoreevent.cpp", cflags).}

proc fcQEvent_delete(self: pointer) {.importc: "QEvent_delete".}
proc `=destroy`(self: var QEvent) =
  if self.owned: fcQEvent_delete(self.h)

proc `=sink`(dest: var QEvent, source: QEvent) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QEvent, source: QEvent) {.error.}
proc delete*(self: sink QEvent) =
  let h = self.h
  wasMoved(self)
  fcQEvent_delete(h)

type QTimerEvent* = object of QEvent
type QChildEvent* = object of QEvent
type QDynamicPropertyChangeEvent* = object of QEvent
