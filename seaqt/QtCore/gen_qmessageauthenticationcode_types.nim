type QMessageAuthenticationCode* {.inheritable.} = object
  h*: pointer
  owned*: bool

import ./qtcore_pkg

{.compile("gen_qmessageauthenticationcode.cpp", QtCoreCFlags).}

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

