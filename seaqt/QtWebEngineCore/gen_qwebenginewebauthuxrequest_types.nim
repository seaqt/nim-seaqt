import ../QtCore/gen_qobject_types
export gen_qobject_types

type QWebEngineWebAuthUxRequest* = object of gen_qobject_types.QObject
proc `=copy`(dest: var QWebEngineWebAuthUxRequest, source: QWebEngineWebAuthUxRequest) {.error.}
proc `=sink`(dest: var QWebEngineWebAuthUxRequest, source: QWebEngineWebAuthUxRequest) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

type QWebEngineWebAuthPinRequest* {.inheritable.} = object
  h*: pointer
  owned*: bool

import ./qtwebenginecore_pkg

{.compile("gen_qwebenginewebauthuxrequest.cpp", QtWebEngineCoreCFlags).}

proc fcQWebEngineWebAuthPinRequest_delete(self: pointer) {.importc: "QWebEngineWebAuthPinRequest_delete".}
proc `=destroy`(self: var QWebEngineWebAuthPinRequest) =
  if self.owned: fcQWebEngineWebAuthPinRequest_delete(self.h)

proc `=sink`(dest: var QWebEngineWebAuthPinRequest, source: QWebEngineWebAuthPinRequest) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QWebEngineWebAuthPinRequest, source: QWebEngineWebAuthPinRequest) {.error.}
proc delete*(self: sink QWebEngineWebAuthPinRequest) =
  let h = self.h
  wasMoved(self)
  fcQWebEngineWebAuthPinRequest_delete(h)

