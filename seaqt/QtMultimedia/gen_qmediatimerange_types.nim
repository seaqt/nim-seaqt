type QMediaTimeInterval* {.inheritable.} = object
  h*: pointer
  owned*: bool

import ./qtmultimedia_pkg

{.compile("gen_qmediatimerange.cpp", QtMultimediaCFlags).}

proc fcQMediaTimeInterval_delete(self: pointer) {.importc: "QMediaTimeInterval_delete".}
proc `=destroy`(self: var QMediaTimeInterval) =
  if self.owned: fcQMediaTimeInterval_delete(self.h)

proc `=sink`(dest: var QMediaTimeInterval, source: QMediaTimeInterval) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QMediaTimeInterval, source: QMediaTimeInterval) {.error.}
proc delete*(self: sink QMediaTimeInterval) =
  let h = self.h
  wasMoved(self)
  fcQMediaTimeInterval_delete(h)

type QMediaTimeRange* {.inheritable.} = object
  h*: pointer
  owned*: bool

proc fcQMediaTimeRange_delete(self: pointer) {.importc: "QMediaTimeRange_delete".}
proc `=destroy`(self: var QMediaTimeRange) =
  if self.owned: fcQMediaTimeRange_delete(self.h)

proc `=sink`(dest: var QMediaTimeRange, source: QMediaTimeRange) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QMediaTimeRange, source: QMediaTimeRange) {.error.}
proc delete*(self: sink QMediaTimeRange) =
  let h = self.h
  wasMoved(self)
  fcQMediaTimeRange_delete(h)

