type QWebEngineLoadingInfo* {.inheritable.} = object
  h*: pointer
  owned*: bool

import ./qtwebenginecore_pkg

{.compile("gen_qwebengineloadinginfo.cpp", QtWebEngineCoreCFlags).}

proc fcQWebEngineLoadingInfo_delete(self: pointer) {.importc: "QWebEngineLoadingInfo_delete".}
proc `=destroy`(self: var QWebEngineLoadingInfo) =
  if self.owned: fcQWebEngineLoadingInfo_delete(self.h)

proc `=sink`(dest: var QWebEngineLoadingInfo, source: QWebEngineLoadingInfo) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QWebEngineLoadingInfo, source: QWebEngineLoadingInfo) {.error.}
proc delete*(self: sink QWebEngineLoadingInfo) =
  let h = self.h
  wasMoved(self)
  fcQWebEngineLoadingInfo_delete(h)

