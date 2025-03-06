type QFontDatabase* {.inheritable.} = object
  h*: pointer
  owned*: bool

const cflags = gorge("pkg-config --cflags Qt5Gui") & " -fPIC"
{.compile("gen_qfontdatabase.cpp", cflags).}

proc fcQFontDatabase_delete(self: pointer) {.importc: "QFontDatabase_delete".}
proc `=destroy`(self: var QFontDatabase) =
  if self.owned: fcQFontDatabase_delete(self.h)

proc `=sink`(dest: var QFontDatabase, source: QFontDatabase) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QFontDatabase, source: QFontDatabase) {.error.}
proc delete*(self: sink QFontDatabase) =
  let h = self.h
  wasMoved(self)
  fcQFontDatabase_delete(h)

