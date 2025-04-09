type QAbstractNativeEventFilter* {.inheritable.} = object
  h*: pointer
  owned*: bool

const cflags = gorge("pkg-config --cflags Qt6Core") & " -fPIC"
{.compile("gen_qabstractnativeeventfilter.cpp", cflags).}

proc fcQAbstractNativeEventFilter_delete(self: pointer) {.importc: "QAbstractNativeEventFilter_delete".}
proc `=destroy`(self: var QAbstractNativeEventFilter) =
  if self.owned: fcQAbstractNativeEventFilter_delete(self.h)

proc `=sink`(dest: var QAbstractNativeEventFilter, source: QAbstractNativeEventFilter) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QAbstractNativeEventFilter, source: QAbstractNativeEventFilter) {.error.}
proc delete*(self: sink QAbstractNativeEventFilter) =
  let h = self.h
  wasMoved(self)
  fcQAbstractNativeEventFilter_delete(h)

