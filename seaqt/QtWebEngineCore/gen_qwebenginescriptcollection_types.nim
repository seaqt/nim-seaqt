type QWebEngineScriptCollection* {.inheritable.} = object
  h*: pointer
  owned*: bool

const cflags = gorge("pkg-config --cflags Qt6WebEngineCore") & " -fPIC"
{.compile("gen_qwebenginescriptcollection.cpp", cflags).}

proc fcQWebEngineScriptCollection_delete(self: pointer) {.importc: "QWebEngineScriptCollection_delete".}
proc `=destroy`(self: var QWebEngineScriptCollection) =
  if self.owned: fcQWebEngineScriptCollection_delete(self.h)

proc `=sink`(dest: var QWebEngineScriptCollection, source: QWebEngineScriptCollection) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QWebEngineScriptCollection, source: QWebEngineScriptCollection) {.error.}
proc delete*(self: sink QWebEngineScriptCollection) =
  let h = self.h
  wasMoved(self)
  fcQWebEngineScriptCollection_delete(h)

