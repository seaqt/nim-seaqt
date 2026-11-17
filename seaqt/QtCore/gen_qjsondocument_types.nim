type QJsonParseError* {.inheritable.} = object
  h*: pointer
  owned*: bool

import ./qtcore_pkg

{.compile("gen_qjsondocument.cpp", QtCoreCFlags).}

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

type QJsonDocument* {.inheritable.} = object
  h*: pointer
  owned*: bool

proc fcQJsonDocument_delete(self: pointer) {.importc: "QJsonDocument_delete".}
proc `=destroy`(self: var QJsonDocument) =
  if self.owned: fcQJsonDocument_delete(self.h)

proc `=sink`(dest: var QJsonDocument, source: QJsonDocument) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QJsonDocument, source: QJsonDocument) {.error.}
proc delete*(self: sink QJsonDocument) =
  let h = self.h
  wasMoved(self)
  fcQJsonDocument_delete(h)

