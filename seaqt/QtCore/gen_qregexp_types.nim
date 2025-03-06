type QRegExp* {.inheritable.} = object
  h*: pointer
  owned*: bool

const cflags = gorge("pkg-config --cflags Qt5Core") & " -fPIC"
{.compile("gen_qregexp.cpp", cflags).}

proc fcQRegExp_delete(self: pointer) {.importc: "QRegExp_delete".}
proc `=destroy`(self: var QRegExp) =
  if self.owned: fcQRegExp_delete(self.h)

proc `=sink`(dest: var QRegExp, source: QRegExp) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QRegExp, source: QRegExp) {.error.}
proc delete*(self: sink QRegExp) =
  let h = self.h
  wasMoved(self)
  fcQRegExp_delete(h)

