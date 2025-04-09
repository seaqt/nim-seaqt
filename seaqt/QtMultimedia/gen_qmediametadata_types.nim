type QMediaMetaData* {.inheritable.} = object
  h*: pointer
  owned*: bool

const cflags = gorge("pkg-config --cflags Qt6Multimedia") & " -fPIC"
{.compile("gen_qmediametadata.cpp", cflags).}

proc fcQMediaMetaData_delete(self: pointer) {.importc: "QMediaMetaData_delete".}
proc `=destroy`(self: var QMediaMetaData) =
  if self.owned: fcQMediaMetaData_delete(self.h)

proc `=sink`(dest: var QMediaMetaData, source: QMediaMetaData) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QMediaMetaData, source: QMediaMetaData) {.error.}
proc delete*(self: sink QMediaMetaData) =
  let h = self.h
  wasMoved(self)
  fcQMediaMetaData_delete(h)

