type QWebEngineScript* {.inheritable.} = object
  h*: pointer
  owned*: bool

import ./qtwebenginecore_pkg

{.compile("gen_qwebenginescript.cpp", QtWebEngineCoreCFlags).}

proc fcQWebEngineScript_delete(self: pointer) {.importc: "QWebEngineScript_delete".}
proc `=destroy`(self: var QWebEngineScript) =
  if self.owned: fcQWebEngineScript_delete(self.h)

proc `=sink`(dest: var QWebEngineScript, source: QWebEngineScript) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QWebEngineScript, source: QWebEngineScript) {.error.}
proc delete*(self: sink QWebEngineScript) =
  let h = self.h
  wasMoved(self)
  fcQWebEngineScript_delete(h)

