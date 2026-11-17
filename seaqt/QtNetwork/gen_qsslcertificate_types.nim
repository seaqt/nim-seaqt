type QSslCertificate* {.inheritable.} = object
  h*: pointer
  owned*: bool

import ./qtnetwork_pkg

{.compile("gen_qsslcertificate.cpp", QtNetworkCFlags).}

proc fcQSslCertificate_delete(self: pointer) {.importc: "QSslCertificate_delete".}
proc `=destroy`(self: var QSslCertificate) =
  if self.owned: fcQSslCertificate_delete(self.h)

proc `=sink`(dest: var QSslCertificate, source: QSslCertificate) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QSslCertificate, source: QSslCertificate) {.error.}
proc delete*(self: sink QSslCertificate) =
  let h = self.h
  wasMoved(self)
  fcQSslCertificate_delete(h)

