import ./gen_qobject_types
export gen_qobject_types

type QSocketNotifier* = object of gen_qobject_types.QObject
type QSocketDescriptor* {.inheritable.} = object
  h*: pointer
  owned*: bool

const cflags = gorge("pkg-config --cflags Qt5Core") & " -fPIC"
{.compile("gen_qsocketnotifier.cpp", cflags).}

proc fcQSocketDescriptor_delete(self: pointer) {.importc: "QSocketDescriptor_delete".}
proc `=destroy`(self: var QSocketDescriptor) =
  if self.owned: fcQSocketDescriptor_delete(self.h)

proc `=sink`(dest: var QSocketDescriptor, source: QSocketDescriptor) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QSocketDescriptor, source: QSocketDescriptor) {.error.}
proc delete*(self: sink QSocketDescriptor) =
  let h = self.h
  wasMoved(self)
  fcQSocketDescriptor_delete(h)

