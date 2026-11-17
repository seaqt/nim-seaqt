import ../QtCore/gen_qobject_types
export gen_qobject_types

type QWebEngineCookieStore* = object of gen_qobject_types.QObject
proc `=copy`(dest: var QWebEngineCookieStore, source: QWebEngineCookieStore) {.error.}
proc `=sink`(dest: var QWebEngineCookieStore, source: QWebEngineCookieStore) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

type QWebEngineCookieStoreFilterRequest* {.inheritable.} = object
  h*: pointer
  owned*: bool

import ./qtwebenginecore_pkg

{.compile("gen_qwebenginecookiestore.cpp", QtWebEngineCoreCFlags).}

proc fcQWebEngineCookieStoreFilterRequest_delete(self: pointer) {.importc: "QWebEngineCookieStore__FilterRequest_delete".}
proc `=destroy`(self: var QWebEngineCookieStoreFilterRequest) =
  if self.owned: fcQWebEngineCookieStoreFilterRequest_delete(self.h)

proc `=sink`(dest: var QWebEngineCookieStoreFilterRequest, source: QWebEngineCookieStoreFilterRequest) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QWebEngineCookieStoreFilterRequest, source: QWebEngineCookieStoreFilterRequest) {.error.}
proc delete*(self: sink QWebEngineCookieStoreFilterRequest) =
  let h = self.h
  wasMoved(self)
  fcQWebEngineCookieStoreFilterRequest_delete(h)

