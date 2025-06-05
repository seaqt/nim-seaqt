type QWebEngineCertificateError* {.inheritable.} = object
  h*: pointer
  owned*: bool

import ./qtwebenginecore_pkg

{.compile("gen_qwebenginecertificateerror.cpp", QtWebEngineCoreCFlags).}

proc fcQWebEngineCertificateError_delete(self: pointer) {.importc: "QWebEngineCertificateError_delete".}
proc `=destroy`(self: var QWebEngineCertificateError) =
  if self.owned: fcQWebEngineCertificateError_delete(self.h)

proc `=sink`(dest: var QWebEngineCertificateError, source: QWebEngineCertificateError) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QWebEngineCertificateError, source: QWebEngineCertificateError) {.error.}
proc delete*(self: sink QWebEngineCertificateError) =
  let h = self.h
  wasMoved(self)
  fcQWebEngineCertificateError_delete(h)

