type QDate* {.inheritable.} = object
  h*: pointer
  owned*: bool

const cflags = gorge("pkg-config --cflags Qt5Core") & " -fPIC"
{.compile("gen_qdatetime.cpp", cflags).}

proc fcQDate_delete(self: pointer) {.importc: "QDate_delete".}
proc `=destroy`(self: var QDate) =
  if self.owned: fcQDate_delete(self.h)

proc `=sink`(dest: var QDate, source: QDate) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QDate, source: QDate) {.error.}
proc delete*(self: sink QDate) =
  let h = self.h
  wasMoved(self)
  fcQDate_delete(h)

type QTime* {.inheritable.} = object
  h*: pointer
  owned*: bool

proc fcQTime_delete(self: pointer) {.importc: "QTime_delete".}
proc `=destroy`(self: var QTime) =
  if self.owned: fcQTime_delete(self.h)

proc `=sink`(dest: var QTime, source: QTime) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QTime, source: QTime) {.error.}
proc delete*(self: sink QTime) =
  let h = self.h
  wasMoved(self)
  fcQTime_delete(h)

type QDateTime* {.inheritable.} = object
  h*: pointer
  owned*: bool

proc fcQDateTime_delete(self: pointer) {.importc: "QDateTime_delete".}
proc `=destroy`(self: var QDateTime) =
  if self.owned: fcQDateTime_delete(self.h)

proc `=sink`(dest: var QDateTime, source: QDateTime) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QDateTime, source: QDateTime) {.error.}
proc delete*(self: sink QDateTime) =
  let h = self.h
  wasMoved(self)
  fcQDateTime_delete(h)

