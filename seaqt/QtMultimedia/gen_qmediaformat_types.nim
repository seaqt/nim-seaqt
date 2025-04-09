type QMediaFormat* {.inheritable.} = object
  h*: pointer
  owned*: bool

const cflags = gorge("pkg-config --cflags Qt6Multimedia") & " -fPIC"
{.compile("gen_qmediaformat.cpp", cflags).}

proc fcQMediaFormat_delete(self: pointer) {.importc: "QMediaFormat_delete".}
proc `=destroy`(self: var QMediaFormat) =
  if self.owned: fcQMediaFormat_delete(self.h)

proc `=sink`(dest: var QMediaFormat, source: QMediaFormat) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QMediaFormat, source: QMediaFormat) {.error.}
proc delete*(self: sink QMediaFormat) =
  let h = self.h
  wasMoved(self)
  fcQMediaFormat_delete(h)

