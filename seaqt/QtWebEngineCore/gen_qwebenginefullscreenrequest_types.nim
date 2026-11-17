type QWebEngineFullScreenRequest* {.inheritable.} = object
  h*: pointer
  owned*: bool

import ./qtwebenginecore_pkg

{.compile("gen_qwebenginefullscreenrequest.cpp", QtWebEngineCoreCFlags).}

proc fcQWebEngineFullScreenRequest_delete(self: pointer) {.importc: "QWebEngineFullScreenRequest_delete".}
proc `=destroy`(self: var QWebEngineFullScreenRequest) =
  if self.owned: fcQWebEngineFullScreenRequest_delete(self.h)

proc `=sink`(dest: var QWebEngineFullScreenRequest, source: QWebEngineFullScreenRequest) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QWebEngineFullScreenRequest, source: QWebEngineFullScreenRequest) {.error.}
proc delete*(self: sink QWebEngineFullScreenRequest) =
  let h = self.h
  wasMoved(self)
  fcQWebEngineFullScreenRequest_delete(h)

