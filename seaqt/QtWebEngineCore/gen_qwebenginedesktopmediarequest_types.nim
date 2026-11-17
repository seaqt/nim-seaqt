type QWebEngineDesktopMediaRequest* {.inheritable.} = object
  h*: pointer
  owned*: bool

import ./qtwebenginecore_pkg

{.compile("gen_qwebenginedesktopmediarequest.cpp", QtWebEngineCoreCFlags).}

proc fcQWebEngineDesktopMediaRequest_delete(self: pointer) {.importc: "QWebEngineDesktopMediaRequest_delete".}
proc `=destroy`(self: var QWebEngineDesktopMediaRequest) =
  if self.owned: fcQWebEngineDesktopMediaRequest_delete(self.h)

proc `=sink`(dest: var QWebEngineDesktopMediaRequest, source: QWebEngineDesktopMediaRequest) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QWebEngineDesktopMediaRequest, source: QWebEngineDesktopMediaRequest) {.error.}
proc delete*(self: sink QWebEngineDesktopMediaRequest) =
  let h = self.h
  wasMoved(self)
  fcQWebEngineDesktopMediaRequest_delete(h)

