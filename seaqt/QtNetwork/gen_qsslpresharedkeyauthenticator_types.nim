type QSslPreSharedKeyAuthenticator* {.inheritable.} = object
  h*: pointer
  owned*: bool

const cflags = gorge("pkg-config --cflags Qt5Network") & " -fPIC"
{.compile("gen_qsslpresharedkeyauthenticator.cpp", cflags).}

proc fcQSslPreSharedKeyAuthenticator_delete(self: pointer) {.importc: "QSslPreSharedKeyAuthenticator_delete".}
proc `=destroy`(self: var QSslPreSharedKeyAuthenticator) =
  if self.owned: fcQSslPreSharedKeyAuthenticator_delete(self.h)

proc `=sink`(dest: var QSslPreSharedKeyAuthenticator, source: QSslPreSharedKeyAuthenticator) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QSslPreSharedKeyAuthenticator, source: QSslPreSharedKeyAuthenticator) {.error.}
proc delete*(self: sink QSslPreSharedKeyAuthenticator) =
  let h = self.h
  wasMoved(self)
  fcQSslPreSharedKeyAuthenticator_delete(h)

