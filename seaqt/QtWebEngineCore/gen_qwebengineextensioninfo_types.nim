type QWebEngineExtensionInfo* {.inheritable.} = object
  h*: pointer
  owned*: bool

import ./qtwebenginecore_pkg

{.compile("gen_qwebengineextensioninfo.cpp", QtWebEngineCoreCFlags).}

proc fcQWebEngineExtensionInfo_delete(self: pointer) {.importc: "QWebEngineExtensionInfo_delete".}
proc `=destroy`(self: var QWebEngineExtensionInfo) =
  if self.owned: fcQWebEngineExtensionInfo_delete(self.h)

proc `=sink`(dest: var QWebEngineExtensionInfo, source: QWebEngineExtensionInfo) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QWebEngineExtensionInfo, source: QWebEngineExtensionInfo) {.error.}
proc delete*(self: sink QWebEngineExtensionInfo) =
  let h = self.h
  wasMoved(self)
  fcQWebEngineExtensionInfo_delete(h)

