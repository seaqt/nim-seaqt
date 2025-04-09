type QMessageAuthenticationCode* {.inheritable.} = object
  h*: pointer
  owned*: bool

const cflags = gorge("pkg-config --cflags Qt6Core") & " -fPIC"
{.compile("gen_qmessageauthenticationcode.cpp", cflags).}

proc fcQMessageAuthenticationCode_delete(self: pointer) {.importc: "QMessageAuthenticationCode_delete".}
proc `=destroy`(self: var QMessageAuthenticationCode) =
  if self.owned: fcQMessageAuthenticationCode_delete(self.h)

proc `=sink`(dest: var QMessageAuthenticationCode, source: QMessageAuthenticationCode) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QMessageAuthenticationCode, source: QMessageAuthenticationCode) {.error.}
proc delete*(self: sink QMessageAuthenticationCode) =
  let h = self.h
  wasMoved(self)
  fcQMessageAuthenticationCode_delete(h)

