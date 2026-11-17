type QTextDocumentWriter* {.inheritable.} = object
  h*: pointer
  owned*: bool

import ./qtgui_pkg

{.compile("gen_qtextdocumentwriter.cpp", QtGuiCFlags).}

proc fcQTextDocumentWriter_delete(self: pointer) {.importc: "QTextDocumentWriter_delete".}
proc `=destroy`(self: var QTextDocumentWriter) =
  if self.owned: fcQTextDocumentWriter_delete(self.h)

proc `=sink`(dest: var QTextDocumentWriter, source: QTextDocumentWriter) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QTextDocumentWriter, source: QTextDocumentWriter) {.error.}
proc delete*(self: sink QTextDocumentWriter) =
  let h = self.h
  wasMoved(self)
  fcQTextDocumentWriter_delete(h)

