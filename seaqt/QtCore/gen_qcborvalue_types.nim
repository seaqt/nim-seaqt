type QCborParserError* {.inheritable.} = object
  h*: pointer
  owned*: bool

const cflags = gorge("pkg-config --cflags Qt6Core") & " -fPIC"
{.compile("gen_qcborvalue.cpp", cflags).}

proc fcQCborParserError_delete(self: pointer) {.importc: "QCborParserError_delete".}
proc `=destroy`(self: var QCborParserError) =
  if self.owned: fcQCborParserError_delete(self.h)

proc `=sink`(dest: var QCborParserError, source: QCborParserError) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QCborParserError, source: QCborParserError) {.error.}
proc delete*(self: sink QCborParserError) =
  let h = self.h
  wasMoved(self)
  fcQCborParserError_delete(h)

type QCborValue* {.inheritable.} = object
  h*: pointer
  owned*: bool

proc fcQCborValue_delete(self: pointer) {.importc: "QCborValue_delete".}
proc `=destroy`(self: var QCborValue) =
  if self.owned: fcQCborValue_delete(self.h)

proc `=sink`(dest: var QCborValue, source: QCborValue) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QCborValue, source: QCborValue) {.error.}
proc delete*(self: sink QCborValue) =
  let h = self.h
  wasMoved(self)
  fcQCborValue_delete(h)

type QCborValueConstRef* {.inheritable.} = object
  h*: pointer
  owned*: bool

proc fcQCborValueConstRef_delete(self: pointer) {.importc: "QCborValueConstRef_delete".}
proc `=destroy`(self: var QCborValueConstRef) =
  if self.owned: fcQCborValueConstRef_delete(self.h)

proc `=sink`(dest: var QCborValueConstRef, source: QCborValueConstRef) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QCborValueConstRef, source: QCborValueConstRef) {.error.}
proc delete*(self: sink QCborValueConstRef) =
  let h = self.h
  wasMoved(self)
  fcQCborValueConstRef_delete(h)

type QCborValueRef* = object of QCborValueConstRef
