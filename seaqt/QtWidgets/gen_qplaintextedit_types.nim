import ./gen_qabstractscrollarea_types
export gen_qabstractscrollarea_types

type QPlainTextEdit* = object of gen_qabstractscrollarea_types.QAbstractScrollArea
proc `=copy`(dest: var QPlainTextEdit, source: QPlainTextEdit) {.error.}
proc `=sink`(dest: var QPlainTextEdit, source: QPlainTextEdit) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

import ../QtGui/gen_qabstracttextdocumentlayout_types
export gen_qabstracttextdocumentlayout_types

type QPlainTextDocumentLayout* = object of gen_qabstracttextdocumentlayout_types.QAbstractTextDocumentLayout
proc `=copy`(dest: var QPlainTextDocumentLayout, source: QPlainTextDocumentLayout) {.error.}
proc `=sink`(dest: var QPlainTextDocumentLayout, source: QPlainTextDocumentLayout) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

