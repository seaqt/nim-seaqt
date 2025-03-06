type QQmlError* {.inheritable.} = object
  h*: pointer
  owned*: bool

const cflags = gorge("pkg-config --cflags Qt6Qml") & " -fPIC"
{.compile("gen_qqmlerror.cpp", cflags).}

proc fcQQmlError_delete(self: pointer) {.importc: "QQmlError_delete".}
proc `=destroy`(self: var QQmlError) =
  if self.owned: fcQQmlError_delete(self.h)

proc `=sink`(dest: var QQmlError, source: QQmlError) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QQmlError, source: QQmlError) {.error.}
proc delete*(self: sink QQmlError) =
  let h = self.h
  wasMoved(self)
  fcQQmlError_delete(h)

