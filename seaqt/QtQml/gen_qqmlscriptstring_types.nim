type QQmlScriptString* {.inheritable.} = object
  h*: pointer
  owned*: bool

const cflags = gorge("pkg-config --cflags Qt6Qml") & " -fPIC"
{.compile("gen_qqmlscriptstring.cpp", cflags).}

proc fcQQmlScriptString_delete(self: pointer) {.importc: "QQmlScriptString_delete".}
proc `=destroy`(self: var QQmlScriptString) =
  if self.owned: fcQQmlScriptString_delete(self.h)

proc `=sink`(dest: var QQmlScriptString, source: QQmlScriptString) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QQmlScriptString, source: QQmlScriptString) {.error.}
proc delete*(self: sink QQmlScriptString) =
  let h = self.h
  wasMoved(self)
  fcQQmlScriptString_delete(h)

