type QJsonParseError* {.inheritable.} = object
  h*: pointer
  owned*: bool

import ./qtcore_pkg

{.compile("gen_qjsonparseerror.cpp", QtCoreCFlags).}

proc fcQJsonParseError_delete(self: pointer) {.importc: "QJsonParseError_delete".}
proc `=destroy`(self: var QJsonParseError) =
  if self.owned: fcQJsonParseError_delete(self.h)

proc `=sink`(dest: var QJsonParseError, source: QJsonParseError) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QJsonParseError, source: QJsonParseError) {.error.}
proc delete*(self: sink QJsonParseError) =
  let h = self.h
  wasMoved(self)
  fcQJsonParseError_delete(h)

