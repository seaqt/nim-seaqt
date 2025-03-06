type QQmlParserStatus* {.inheritable.} = object
  h*: pointer
  owned*: bool

const cflags = gorge("pkg-config --cflags Qt6Qml") & " -fPIC"
{.compile("gen_qqmlparserstatus.cpp", cflags).}

proc fcQQmlParserStatus_delete(self: pointer) {.importc: "QQmlParserStatus_delete".}
proc `=destroy`(self: var QQmlParserStatus) =
  if self.owned: fcQQmlParserStatus_delete(self.h)

proc `=sink`(dest: var QQmlParserStatus, source: QQmlParserStatus) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QQmlParserStatus, source: QQmlParserStatus) {.error.}
proc delete*(self: sink QQmlParserStatus) =
  let h = self.h
  wasMoved(self)
  fcQQmlParserStatus_delete(h)

