type QWebEngineFindTextResult* {.inheritable.} = object
  h*: pointer
  owned*: bool

const cflags = gorge("pkg-config --cflags Qt6WebEngineCore") & " -fPIC"
{.compile("gen_qwebenginefindtextresult.cpp", cflags).}

proc fcQWebEngineFindTextResult_delete(self: pointer) {.importc: "QWebEngineFindTextResult_delete".}
proc `=destroy`(self: var QWebEngineFindTextResult) =
  if self.owned: fcQWebEngineFindTextResult_delete(self.h)

proc `=sink`(dest: var QWebEngineFindTextResult, source: QWebEngineFindTextResult) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QWebEngineFindTextResult, source: QWebEngineFindTextResult) {.error.}
proc delete*(self: sink QWebEngineFindTextResult) =
  let h = self.h
  wasMoved(self)
  fcQWebEngineFindTextResult_delete(h)

