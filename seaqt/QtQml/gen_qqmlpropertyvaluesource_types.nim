type QQmlPropertyValueSource* {.inheritable.} = object
  h*: pointer
  owned*: bool

const cflags = gorge("pkg-config --cflags Qt6Qml") & " -fPIC"
{.compile("gen_qqmlpropertyvaluesource.cpp", cflags).}

proc fcQQmlPropertyValueSource_delete(self: pointer) {.importc: "QQmlPropertyValueSource_delete".}
proc `=destroy`(self: var QQmlPropertyValueSource) =
  if self.owned: fcQQmlPropertyValueSource_delete(self.h)

proc `=sink`(dest: var QQmlPropertyValueSource, source: QQmlPropertyValueSource) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QQmlPropertyValueSource, source: QQmlPropertyValueSource) {.error.}
proc delete*(self: sink QQmlPropertyValueSource) =
  let h = self.h
  wasMoved(self)
  fcQQmlPropertyValueSource_delete(h)

