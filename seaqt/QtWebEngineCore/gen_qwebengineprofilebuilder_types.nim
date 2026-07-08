type QWebEngineProfileBuilder* {.inheritable.} = object
  h*: pointer
  owned*: bool

import ./qtwebenginecore_pkg

{.compile("gen_qwebengineprofilebuilder.cpp", QtWebEngineCoreCFlags).}

proc fcQWebEngineProfileBuilder_delete(self: pointer) {.importc: "QWebEngineProfileBuilder_delete".}
proc `=destroy`(self: var QWebEngineProfileBuilder) =
  if self.owned: fcQWebEngineProfileBuilder_delete(self.h)

proc `=sink`(dest: var QWebEngineProfileBuilder, source: QWebEngineProfileBuilder) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QWebEngineProfileBuilder, source: QWebEngineProfileBuilder) {.error.}
proc delete*(self: sink QWebEngineProfileBuilder) =
  let h = self.h
  wasMoved(self)
  fcQWebEngineProfileBuilder_delete(h)

