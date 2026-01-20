type QWebEngineClientCertificateSelection* {.inheritable.} = object
  h*: pointer
  owned*: bool

import ./qtwebenginewidgets_pkg

{.compile("gen_qwebengineclientcertificateselection.cpp", QtWebEngineWidgetsCFlags).}

proc fcQWebEngineClientCertificateSelection_delete(self: pointer) {.importc: "QWebEngineClientCertificateSelection_delete".}
proc `=destroy`(self: var QWebEngineClientCertificateSelection) =
  if self.owned: fcQWebEngineClientCertificateSelection_delete(self.h)

proc `=sink`(dest: var QWebEngineClientCertificateSelection, source: QWebEngineClientCertificateSelection) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QWebEngineClientCertificateSelection, source: QWebEngineClientCertificateSelection) {.error.}
proc delete*(self: sink QWebEngineClientCertificateSelection) =
  let h = self.h
  wasMoved(self)
  fcQWebEngineClientCertificateSelection_delete(h)

