type QFont* {.inheritable.} = object
  h*: pointer
  owned*: bool

const cflags = gorge("pkg-config --cflags Qt6Gui") & " -fPIC"
{.compile("gen_qfont.cpp", cflags).}

proc fcQFont_delete(self: pointer) {.importc: "QFont_delete".}
proc `=destroy`(self: var QFont) =
  if self.owned: fcQFont_delete(self.h)

proc `=sink`(dest: var QFont, source: QFont) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QFont, source: QFont) {.error.}
proc delete*(self: sink QFont) =
  let h = self.h
  wasMoved(self)
  fcQFont_delete(h)

