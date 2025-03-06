import ../QtCore/gen_qobject_types
export gen_qobject_types

type QQmlContext* = object of gen_qobject_types.QObject
type QQmlContextPropertyPair* {.inheritable.} = object
  h*: pointer
  owned*: bool

const cflags = gorge("pkg-config --cflags Qt6Qml") & " -fPIC"
{.compile("gen_qqmlcontext.cpp", cflags).}

proc fcQQmlContextPropertyPair_delete(self: pointer) {.importc: "QQmlContext__PropertyPair_delete".}
proc `=destroy`(self: var QQmlContextPropertyPair) =
  if self.owned: fcQQmlContextPropertyPair_delete(self.h)

proc `=sink`(dest: var QQmlContextPropertyPair, source: QQmlContextPropertyPair) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QQmlContextPropertyPair, source: QQmlContextPropertyPair) {.error.}
proc delete*(self: sink QQmlContextPropertyPair) =
  let h = self.h
  wasMoved(self)
  fcQQmlContextPropertyPair_delete(h)

