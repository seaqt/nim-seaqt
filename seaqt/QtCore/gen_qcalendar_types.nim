type QCalendar* {.inheritable.} = object
  h*: pointer
  owned*: bool

const cflags = gorge("pkg-config --cflags Qt5Core") & " -fPIC"
{.compile("gen_qcalendar.cpp", cflags).}

proc fcQCalendar_delete(self: pointer) {.importc: "QCalendar_delete".}
proc `=destroy`(self: var QCalendar) =
  if self.owned: fcQCalendar_delete(self.h)

proc `=sink`(dest: var QCalendar, source: QCalendar) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QCalendar, source: QCalendar) {.error.}
proc delete*(self: sink QCalendar) =
  let h = self.h
  wasMoved(self)
  fcQCalendar_delete(h)

type QCalendarYearMonthDay* {.inheritable.} = object
  h*: pointer
  owned*: bool

proc fcQCalendarYearMonthDay_delete(self: pointer) {.importc: "QCalendar__YearMonthDay_delete".}
proc `=destroy`(self: var QCalendarYearMonthDay) =
  if self.owned: fcQCalendarYearMonthDay_delete(self.h)

proc `=sink`(dest: var QCalendarYearMonthDay, source: QCalendarYearMonthDay) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QCalendarYearMonthDay, source: QCalendarYearMonthDay) {.error.}
proc delete*(self: sink QCalendarYearMonthDay) =
  let h = self.h
  wasMoved(self)
  fcQCalendarYearMonthDay_delete(h)

