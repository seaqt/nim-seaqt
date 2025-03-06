type QMimeDatabase* {.inheritable.} = object
  h*: pointer
  owned*: bool

const cflags = gorge("pkg-config --cflags Qt5Core") & " -fPIC"
{.compile("gen_qmimedatabase.cpp", cflags).}

proc fcQMimeDatabase_delete(self: pointer) {.importc: "QMimeDatabase_delete".}
proc `=destroy`(self: var QMimeDatabase) =
  if self.owned: fcQMimeDatabase_delete(self.h)

proc `=sink`(dest: var QMimeDatabase, source: QMimeDatabase) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QMimeDatabase, source: QMimeDatabase) {.error.}
proc delete*(self: sink QMimeDatabase) =
  let h = self.h
  wasMoved(self)
  fcQMimeDatabase_delete(h)

