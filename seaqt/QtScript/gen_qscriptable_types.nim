type QScriptable* {.inheritable.} = object
  h*: pointer
  owned*: bool

const cflags = gorge("pkg-config --cflags Qt5Script") & " -fPIC"
{.compile("gen_qscriptable.cpp", cflags).}

proc fcQScriptable_delete(self: pointer) {.importc: "QScriptable_delete".}
proc `=destroy`(self: var QScriptable) =
  if self.owned: fcQScriptable_delete(self.h)

proc `=sink`(dest: var QScriptable, source: QScriptable) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QScriptable, source: QScriptable) {.error.}
proc delete*(self: sink QScriptable) =
  let h = self.h
  wasMoved(self)
  fcQScriptable_delete(h)

