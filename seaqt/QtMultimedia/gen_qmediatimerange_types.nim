type QMediaTimeRange* {.inheritable.} = object
  h*: pointer
  owned*: bool

import ./qtmultimedia_pkg

{.compile("gen_qmediatimerange.cpp", QtMultimediaCFlags).}

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

type QMediaTimeRangeInterval* {.inheritable.} = object
  h*: pointer
  owned*: bool

proc fcQMediaTimeRangeInterval_delete(self: pointer) {.importc: "QMediaTimeRange__Interval_delete".}
proc `=destroy`(self: var QMediaTimeRangeInterval) =
  if self.owned: fcQMediaTimeRangeInterval_delete(self.h)

proc `=sink`(dest: var QMediaTimeRangeInterval, source: QMediaTimeRangeInterval) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QMediaTimeRangeInterval, source: QMediaTimeRangeInterval) {.error.}
proc delete*(self: sink QMediaTimeRangeInterval) =
  let h = self.h
  wasMoved(self)
  fcQMediaTimeRangeInterval_delete(h)

