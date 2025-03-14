type QTimeZone* {.inheritable.} = object
  h*: pointer
  owned*: bool

import ./qtcore_pkg

{.compile("gen_qtimezone.cpp", QtCoreCFlags).}

proc fcQTimeZone_delete(self: pointer) {.importc: "QTimeZone_delete".}
proc `=destroy`(self: var QTimeZone) =
  if self.owned: fcQTimeZone_delete(self.h)

proc `=sink`(dest: var QTimeZone, source: QTimeZone) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QTimeZone, source: QTimeZone) {.error.}
proc delete*(self: sink QTimeZone) =
  let h = self.h
  wasMoved(self)
  fcQTimeZone_delete(h)

type QTimeZoneOffsetData* {.inheritable.} = object
  h*: pointer
  owned*: bool

proc fcQTimeZoneOffsetData_delete(self: pointer) {.importc: "QTimeZone__OffsetData_delete".}
proc `=destroy`(self: var QTimeZoneOffsetData) =
  if self.owned: fcQTimeZoneOffsetData_delete(self.h)

proc `=sink`(dest: var QTimeZoneOffsetData, source: QTimeZoneOffsetData) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QTimeZoneOffsetData, source: QTimeZoneOffsetData) {.error.}
proc delete*(self: sink QTimeZoneOffsetData) =
  let h = self.h
  wasMoved(self)
  fcQTimeZoneOffsetData_delete(h)

