import ../QtCore/gen_qobject_types
export gen_qobject_types

type QDtlsClientVerifier* = object of gen_qobject_types.QObject
proc `=copy`(dest: var QDtlsClientVerifier, source: QDtlsClientVerifier) {.error.}
proc `=sink`(dest: var QDtlsClientVerifier, source: QDtlsClientVerifier) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

type QDtls* = object of gen_qobject_types.QObject
proc `=copy`(dest: var QDtls, source: QDtls) {.error.}
proc `=sink`(dest: var QDtls, source: QDtls) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

type QDtlsClientVerifierGeneratorParameters* {.inheritable.} = object
  h*: pointer
  owned*: bool

const cflags = gorge("pkg-config --cflags Qt5Network") & " -fPIC"
{.compile("gen_qdtls.cpp", cflags).}

proc fcQDtlsClientVerifierGeneratorParameters_delete(self: pointer) {.importc: "QDtlsClientVerifier__GeneratorParameters_delete".}
proc `=destroy`(self: var QDtlsClientVerifierGeneratorParameters) =
  if self.owned: fcQDtlsClientVerifierGeneratorParameters_delete(self.h)

proc `=sink`(dest: var QDtlsClientVerifierGeneratorParameters, source: QDtlsClientVerifierGeneratorParameters) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QDtlsClientVerifierGeneratorParameters, source: QDtlsClientVerifierGeneratorParameters) {.error.}
proc delete*(self: sink QDtlsClientVerifierGeneratorParameters) =
  let h = self.h
  wasMoved(self)
  fcQDtlsClientVerifierGeneratorParameters_delete(h)

