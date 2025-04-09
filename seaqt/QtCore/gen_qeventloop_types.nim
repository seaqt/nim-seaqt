import ./gen_qobject_types
export gen_qobject_types

type QEventLoop* = object of gen_qobject_types.QObject
proc `=copy`(dest: var QEventLoop, source: QEventLoop) {.error.}
proc `=sink`(dest: var QEventLoop, source: QEventLoop) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

type QEventLoopLocker* {.inheritable.} = object
  h*: pointer
  owned*: bool

const cflags = gorge("pkg-config --cflags Qt6Core") & " -fPIC"
{.compile("gen_qeventloop.cpp", cflags).}

proc fcQEventLoopLocker_delete(self: pointer) {.importc: "QEventLoopLocker_delete".}
proc `=destroy`(self: var QEventLoopLocker) =
  if self.owned: fcQEventLoopLocker_delete(self.h)

proc `=sink`(dest: var QEventLoopLocker, source: QEventLoopLocker) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QEventLoopLocker, source: QEventLoopLocker) {.error.}
proc delete*(self: sink QEventLoopLocker) =
  let h = self.h
  wasMoved(self)
  fcQEventLoopLocker_delete(h)

