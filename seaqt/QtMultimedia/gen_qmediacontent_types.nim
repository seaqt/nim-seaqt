type QMediaContent* {.inheritable.} = object
  h*: pointer
  owned*: bool

const cflags = gorge("pkg-config --cflags Qt5Multimedia") & " -fPIC"
{.compile("gen_qmediacontent.cpp", cflags).}

proc fcQMediaContent_delete(self: pointer) {.importc: "QMediaContent_delete".}
proc `=destroy`(self: var QMediaContent) =
  if self.owned: fcQMediaContent_delete(self.h)

proc `=sink`(dest: var QMediaContent, source: QMediaContent) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QMediaContent, source: QMediaContent) {.error.}
proc delete*(self: sink QMediaContent) =
  let h = self.h
  wasMoved(self)
  fcQMediaContent_delete(h)

