type QUrlQuery* {.inheritable.} = object
  h*: pointer
  owned*: bool

const cflags = gorge("pkg-config --cflags Qt5Core") & " -fPIC"
{.compile("gen_qurlquery.cpp", cflags).}

proc fcQUrlQuery_delete(self: pointer) {.importc: "QUrlQuery_delete".}
proc `=destroy`(self: var QUrlQuery) =
  if self.owned: fcQUrlQuery_delete(self.h)

proc `=sink`(dest: var QUrlQuery, source: QUrlQuery) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QUrlQuery, source: QUrlQuery) {.error.}
proc delete*(self: sink QUrlQuery) =
  let h = self.h
  wasMoved(self)
  fcQUrlQuery_delete(h)

