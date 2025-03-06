type QWebDatabase* {.inheritable.} = object
  h*: pointer
  owned*: bool

const cflags = gorge("pkg-config --cflags Qt5WebKit") & " -fPIC"
{.compile("gen_qwebdatabase.cpp", cflags).}

proc fcQWebDatabase_delete(self: pointer) {.importc: "QWebDatabase_delete".}
proc `=destroy`(self: var QWebDatabase) =
  if self.owned: fcQWebDatabase_delete(self.h)

proc `=sink`(dest: var QWebDatabase, source: QWebDatabase) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QWebDatabase, source: QWebDatabase) {.error.}
proc delete*(self: sink QWebDatabase) =
  let h = self.h
  wasMoved(self)
  fcQWebDatabase_delete(h)

