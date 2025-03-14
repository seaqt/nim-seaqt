type QWebEngineQuotaRequest* {.inheritable.} = object
  h*: pointer
  owned*: bool

import ./qtwebenginecore_pkg

{.compile("gen_qwebenginequotarequest.cpp", QtWebEngineCoreCFlags).}

proc fcQWebEngineQuotaRequest_delete(self: pointer) {.importc: "QWebEngineQuotaRequest_delete".}
proc `=destroy`(self: var QWebEngineQuotaRequest) =
  if self.owned: fcQWebEngineQuotaRequest_delete(self.h)

proc `=sink`(dest: var QWebEngineQuotaRequest, source: QWebEngineQuotaRequest) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QWebEngineQuotaRequest, source: QWebEngineQuotaRequest) {.error.}
proc delete*(self: sink QWebEngineQuotaRequest) =
  let h = self.h
  wasMoved(self)
  fcQWebEngineQuotaRequest_delete(h)

