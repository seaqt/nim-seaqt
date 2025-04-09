type QTextDocumentFragment* {.inheritable.} = object
  h*: pointer
  owned*: bool

const cflags = gorge("pkg-config --cflags Qt6Gui") & " -fPIC"
{.compile("gen_qtextdocumentfragment.cpp", cflags).}

proc fcQTextDocumentFragment_delete(self: pointer) {.importc: "QTextDocumentFragment_delete".}
proc `=destroy`(self: var QTextDocumentFragment) =
  if self.owned: fcQTextDocumentFragment_delete(self.h)

proc `=sink`(dest: var QTextDocumentFragment, source: QTextDocumentFragment) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QTextDocumentFragment, source: QTextDocumentFragment) {.error.}
proc delete*(self: sink QTextDocumentFragment) =
  let h = self.h
  wasMoved(self)
  fcQTextDocumentFragment_delete(h)

