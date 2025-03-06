import ../QtCore/gen_qobject_types
export gen_qobject_types

type QAbstractTextDocumentLayout* = object of gen_qobject_types.QObject
type QTextObjectInterface* {.inheritable.} = object
  h*: pointer
  owned*: bool

const cflags = gorge("pkg-config --cflags Qt6Gui") & " -fPIC"
{.compile("gen_qabstracttextdocumentlayout.cpp", cflags).}

proc fcQTextObjectInterface_delete(self: pointer) {.importc: "QTextObjectInterface_delete".}
proc `=destroy`(self: var QTextObjectInterface) =
  if self.owned: fcQTextObjectInterface_delete(self.h)

proc `=sink`(dest: var QTextObjectInterface, source: QTextObjectInterface) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QTextObjectInterface, source: QTextObjectInterface) {.error.}
proc delete*(self: sink QTextObjectInterface) =
  let h = self.h
  wasMoved(self)
  fcQTextObjectInterface_delete(h)

type QAbstractTextDocumentLayoutSelection* {.inheritable.} = object
  h*: pointer
  owned*: bool

proc fcQAbstractTextDocumentLayoutSelection_delete(self: pointer) {.importc: "QAbstractTextDocumentLayout__Selection_delete".}
proc `=destroy`(self: var QAbstractTextDocumentLayoutSelection) =
  if self.owned: fcQAbstractTextDocumentLayoutSelection_delete(self.h)

proc `=sink`(dest: var QAbstractTextDocumentLayoutSelection, source: QAbstractTextDocumentLayoutSelection) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QAbstractTextDocumentLayoutSelection, source: QAbstractTextDocumentLayoutSelection) {.error.}
proc delete*(self: sink QAbstractTextDocumentLayoutSelection) =
  let h = self.h
  wasMoved(self)
  fcQAbstractTextDocumentLayoutSelection_delete(h)

type QAbstractTextDocumentLayoutPaintContext* {.inheritable.} = object
  h*: pointer
  owned*: bool

proc fcQAbstractTextDocumentLayoutPaintContext_delete(self: pointer) {.importc: "QAbstractTextDocumentLayout__PaintContext_delete".}
proc `=destroy`(self: var QAbstractTextDocumentLayoutPaintContext) =
  if self.owned: fcQAbstractTextDocumentLayoutPaintContext_delete(self.h)

proc `=sink`(dest: var QAbstractTextDocumentLayoutPaintContext, source: QAbstractTextDocumentLayoutPaintContext) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QAbstractTextDocumentLayoutPaintContext, source: QAbstractTextDocumentLayoutPaintContext) {.error.}
proc delete*(self: sink QAbstractTextDocumentLayoutPaintContext) =
  let h = self.h
  wasMoved(self)
  fcQAbstractTextDocumentLayoutPaintContext_delete(h)

