type QSslCertificateExtension* {.inheritable.} = object
  h*: pointer
  owned*: bool

import ./qtnetwork_pkg

{.compile("gen_qsslcertificateextension.cpp", QtNetworkCFlags).}

proc fcQSslCertificateExtension_delete(self: pointer) {.importc: "QSslCertificateExtension_delete".}
proc `=destroy`(self: var QSslCertificateExtension) =
  if self.owned: fcQSslCertificateExtension_delete(self.h)

proc `=sink`(dest: var QSslCertificateExtension, source: QSslCertificateExtension) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QSslCertificateExtension, source: QSslCertificateExtension) {.error.}
proc delete*(self: sink QSslCertificateExtension) =
  let h = self.h
  wasMoved(self)
  fcQSslCertificateExtension_delete(h)

