type QEvent* {.inheritable.} = object
  h*: pointer
  owned*: bool

const cflags = gorge("pkg-config --cflags Qt6Core") & " -fPIC"
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
proc `=copy`(dest: var QTimerEvent, source: QTimerEvent) {.error.}
proc `=sink`(dest: var QTimerEvent, source: QTimerEvent) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

type QChildEvent* = object of QEvent
proc `=copy`(dest: var QChildEvent, source: QChildEvent) {.error.}
proc `=sink`(dest: var QChildEvent, source: QChildEvent) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

type QDynamicPropertyChangeEvent* = object of QEvent
proc `=copy`(dest: var QDynamicPropertyChangeEvent, source: QDynamicPropertyChangeEvent) {.error.}
proc `=sink`(dest: var QDynamicPropertyChangeEvent, source: QDynamicPropertyChangeEvent) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

