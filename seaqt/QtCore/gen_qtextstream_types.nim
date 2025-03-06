type QTextStream* {.inheritable.} = object
  h*: pointer
  owned*: bool

const cflags = gorge("pkg-config --cflags Qt5Core") & " -fPIC"
{.compile("gen_qtextstream.cpp", cflags).}

proc fcQTextStream_delete(self: pointer) {.importc: "QTextStream_delete".}
proc `=destroy`(self: var QTextStream) =
  if self.owned: fcQTextStream_delete(self.h)

proc `=sink`(dest: var QTextStream, source: QTextStream) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QTextStream, source: QTextStream) {.error.}
proc delete*(self: sink QTextStream) =
  let h = self.h
  wasMoved(self)
  fcQTextStream_delete(h)

