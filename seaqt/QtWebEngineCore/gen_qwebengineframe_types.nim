type QWebEngineFrame* {.inheritable.} = object
  h*: pointer
  owned*: bool

import ./qtwebenginecore_pkg

{.compile("gen_qwebengineframe.cpp", QtWebEngineCoreCFlags).}

proc fcQWebEngineFrame_delete(self: pointer) {.importc: "QWebEngineFrame_delete".}
proc `=destroy`(self: var QWebEngineFrame) =
  if self.owned: fcQWebEngineFrame_delete(self.h)

proc `=sink`(dest: var QWebEngineFrame, source: QWebEngineFrame) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QWebEngineFrame, source: QWebEngineFrame) {.error.}
proc delete*(self: sink QWebEngineFrame) =
  let h = self.h
  wasMoved(self)
  fcQWebEngineFrame_delete(h)

