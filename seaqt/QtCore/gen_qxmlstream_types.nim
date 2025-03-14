type QXmlStreamAttribute* {.inheritable.} = object
  h*: pointer
  owned*: bool

import ./qtcore_pkg

{.compile("gen_qxmlstream.cpp", QtCoreCFlags).}

proc fcQXmlStreamAttribute_delete(self: pointer) {.importc: "QXmlStreamAttribute_delete".}
proc `=destroy`(self: var QXmlStreamAttribute) =
  if self.owned: fcQXmlStreamAttribute_delete(self.h)

proc `=sink`(dest: var QXmlStreamAttribute, source: QXmlStreamAttribute) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QXmlStreamAttribute, source: QXmlStreamAttribute) {.error.}
proc delete*(self: sink QXmlStreamAttribute) =
  let h = self.h
  wasMoved(self)
  fcQXmlStreamAttribute_delete(h)

type QXmlStreamNamespaceDeclaration* {.inheritable.} = object
  h*: pointer
  owned*: bool

proc fcQXmlStreamNamespaceDeclaration_delete(self: pointer) {.importc: "QXmlStreamNamespaceDeclaration_delete".}
proc `=destroy`(self: var QXmlStreamNamespaceDeclaration) =
  if self.owned: fcQXmlStreamNamespaceDeclaration_delete(self.h)

proc `=sink`(dest: var QXmlStreamNamespaceDeclaration, source: QXmlStreamNamespaceDeclaration) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QXmlStreamNamespaceDeclaration, source: QXmlStreamNamespaceDeclaration) {.error.}
proc delete*(self: sink QXmlStreamNamespaceDeclaration) =
  let h = self.h
  wasMoved(self)
  fcQXmlStreamNamespaceDeclaration_delete(h)

type QXmlStreamNotationDeclaration* {.inheritable.} = object
  h*: pointer
  owned*: bool

proc fcQXmlStreamNotationDeclaration_delete(self: pointer) {.importc: "QXmlStreamNotationDeclaration_delete".}
proc `=destroy`(self: var QXmlStreamNotationDeclaration) =
  if self.owned: fcQXmlStreamNotationDeclaration_delete(self.h)

proc `=sink`(dest: var QXmlStreamNotationDeclaration, source: QXmlStreamNotationDeclaration) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QXmlStreamNotationDeclaration, source: QXmlStreamNotationDeclaration) {.error.}
proc delete*(self: sink QXmlStreamNotationDeclaration) =
  let h = self.h
  wasMoved(self)
  fcQXmlStreamNotationDeclaration_delete(h)

type QXmlStreamEntityDeclaration* {.inheritable.} = object
  h*: pointer
  owned*: bool

proc fcQXmlStreamEntityDeclaration_delete(self: pointer) {.importc: "QXmlStreamEntityDeclaration_delete".}
proc `=destroy`(self: var QXmlStreamEntityDeclaration) =
  if self.owned: fcQXmlStreamEntityDeclaration_delete(self.h)

proc `=sink`(dest: var QXmlStreamEntityDeclaration, source: QXmlStreamEntityDeclaration) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QXmlStreamEntityDeclaration, source: QXmlStreamEntityDeclaration) {.error.}
proc delete*(self: sink QXmlStreamEntityDeclaration) =
  let h = self.h
  wasMoved(self)
  fcQXmlStreamEntityDeclaration_delete(h)

type QXmlStreamEntityResolver* {.inheritable.} = object
  h*: pointer
  owned*: bool

proc fcQXmlStreamEntityResolver_delete(self: pointer) {.importc: "QXmlStreamEntityResolver_delete".}
proc `=destroy`(self: var QXmlStreamEntityResolver) =
  if self.owned: fcQXmlStreamEntityResolver_delete(self.h)

proc `=sink`(dest: var QXmlStreamEntityResolver, source: QXmlStreamEntityResolver) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QXmlStreamEntityResolver, source: QXmlStreamEntityResolver) {.error.}
proc delete*(self: sink QXmlStreamEntityResolver) =
  let h = self.h
  wasMoved(self)
  fcQXmlStreamEntityResolver_delete(h)

type QXmlStreamReader* {.inheritable.} = object
  h*: pointer
  owned*: bool

proc fcQXmlStreamReader_delete(self: pointer) {.importc: "QXmlStreamReader_delete".}
proc `=destroy`(self: var QXmlStreamReader) =
  if self.owned: fcQXmlStreamReader_delete(self.h)

proc `=sink`(dest: var QXmlStreamReader, source: QXmlStreamReader) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QXmlStreamReader, source: QXmlStreamReader) {.error.}
proc delete*(self: sink QXmlStreamReader) =
  let h = self.h
  wasMoved(self)
  fcQXmlStreamReader_delete(h)

type QXmlStreamWriter* {.inheritable.} = object
  h*: pointer
  owned*: bool

proc fcQXmlStreamWriter_delete(self: pointer) {.importc: "QXmlStreamWriter_delete".}
proc `=destroy`(self: var QXmlStreamWriter) =
  if self.owned: fcQXmlStreamWriter_delete(self.h)

proc `=sink`(dest: var QXmlStreamWriter, source: QXmlStreamWriter) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QXmlStreamWriter, source: QXmlStreamWriter) {.error.}
proc delete*(self: sink QXmlStreamWriter) =
  let h = self.h
  wasMoved(self)
  fcQXmlStreamWriter_delete(h)

