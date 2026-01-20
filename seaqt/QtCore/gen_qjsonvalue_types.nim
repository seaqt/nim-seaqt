type QJsonValue* {.inheritable.} = object
  h*: pointer
  owned*: bool

import ./qtcore_pkg

{.compile("gen_qjsonvalue.cpp", QtCoreCFlags).}

proc fcQJsonValue_delete(self: pointer) {.importc: "QJsonValue_delete".}
proc `=destroy`(self: var QJsonValue) =
  if self.owned: fcQJsonValue_delete(self.h)

proc `=sink`(dest: var QJsonValue, source: QJsonValue) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QJsonValue, source: QJsonValue) {.error.}
proc delete*(self: sink QJsonValue) =
  let h = self.h
  wasMoved(self)
  fcQJsonValue_delete(h)

type QJsonValueRef* {.inheritable.} = object
  h*: pointer
  owned*: bool

proc fcQJsonValueRef_delete(self: pointer) {.importc: "QJsonValueRef_delete".}
proc `=destroy`(self: var QJsonValueRef) =
  if self.owned: fcQJsonValueRef_delete(self.h)

proc `=sink`(dest: var QJsonValueRef, source: QJsonValueRef) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QJsonValueRef, source: QJsonValueRef) {.error.}
proc delete*(self: sink QJsonValueRef) =
  let h = self.h
  wasMoved(self)
  fcQJsonValueRef_delete(h)

type QJsonValuePtr* {.inheritable.} = object
  h*: pointer
  owned*: bool

proc fcQJsonValuePtr_delete(self: pointer) {.importc: "QJsonValuePtr_delete".}
proc `=destroy`(self: var QJsonValuePtr) =
  if self.owned: fcQJsonValuePtr_delete(self.h)

proc `=sink`(dest: var QJsonValuePtr, source: QJsonValuePtr) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QJsonValuePtr, source: QJsonValuePtr) {.error.}
proc delete*(self: sink QJsonValuePtr) =
  let h = self.h
  wasMoved(self)
  fcQJsonValuePtr_delete(h)

type QJsonValueRefPtr* {.inheritable.} = object
  h*: pointer
  owned*: bool

proc fcQJsonValueRefPtr_delete(self: pointer) {.importc: "QJsonValueRefPtr_delete".}
proc `=destroy`(self: var QJsonValueRefPtr) =
  if self.owned: fcQJsonValueRefPtr_delete(self.h)

proc `=sink`(dest: var QJsonValueRefPtr, source: QJsonValueRefPtr) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QJsonValueRefPtr, source: QJsonValueRefPtr) {.error.}
proc delete*(self: sink QJsonValueRefPtr) =
  let h = self.h
  wasMoved(self)
  fcQJsonValueRefPtr_delete(h)

