import ./qtcore_pkg

{.push raises: [].}

from system/ansi_c import c_free, c_malloc

type
  struct_seaqt_string {.used.} = object
    len: csize_t
    data: pointer

  struct_seaqt_array {.used.} = object
    len: csize_t
    data: pointer

  struct_seaqt_map {.used.} = object
    len: csize_t
    keys: pointer
    values: pointer

  miqt_uintptr_t {.importc: "uintptr_t", header: "stdint.h", used.} = uint
  miqt_intptr_t {.importc: "intptr_t", header: "stdint.h", used.} = int

func fromBytes(T: type string, v: struct_seaqt_string): string {.used.} =
  if v.len > 0:
    let len = cast[int](v.len)
    result = newStringUninit(len)
    when nimvm:
      let d = cast[ptr UncheckedArray[char]](v.data)
      for i in 0..<len:
        result[i] = d[i]
    else:
      copyMem(addr result[0], v.data, len)


type QDateTimeTransitionResolutionEnum* = distinct cint
template Reject*(_: type QDateTimeTransitionResolutionEnum): untyped = 0
template RelativeToBefore*(_: type QDateTimeTransitionResolutionEnum): untyped = 1
template RelativeToAfter*(_: type QDateTimeTransitionResolutionEnum): untyped = 2
template PreferBefore*(_: type QDateTimeTransitionResolutionEnum): untyped = 3
template PreferAfter*(_: type QDateTimeTransitionResolutionEnum): untyped = 4
template PreferStandard*(_: type QDateTimeTransitionResolutionEnum): untyped = 5
template PreferDaylightSaving*(_: type QDateTimeTransitionResolutionEnum): untyped = 6
template LegacyBehavior*(_: type QDateTimeTransitionResolutionEnum): untyped = 1


type QDateTimeYearRangeEnum* = distinct cint
template First*(_: type QDateTimeYearRangeEnum): untyped = -292275056
template Last*(_: type QDateTimeYearRangeEnum): untyped = 292278994


import ./gen_qdatetime_types
export gen_qdatetime_types

import
  ./gen_qcalendar_types,
  ./gen_qtimezone_types
export
  gen_qcalendar_types,
  gen_qtimezone_types

type cQDate*{.exportc: "QDate", incompleteStruct.} = object
type cQTime*{.exportc: "QTime", incompleteStruct.} = object
type cQDateTime*{.exportc: "QDateTime", incompleteStruct.} = object

proc fcQDate_isNull(self: pointer): bool {.importc: "QDate_isNull".}
proc fcQDate_isValid(self: pointer): bool {.importc: "QDate_isValid".}
proc fcQDate_year(self: pointer): cint {.importc: "QDate_year".}
proc fcQDate_month(self: pointer): cint {.importc: "QDate_month".}
proc fcQDate_day(self: pointer): cint {.importc: "QDate_day".}
proc fcQDate_dayOfWeek(self: pointer): cint {.importc: "QDate_dayOfWeek".}
proc fcQDate_dayOfYear(self: pointer): cint {.importc: "QDate_dayOfYear".}
proc fcQDate_daysInMonth(self: pointer): cint {.importc: "QDate_daysInMonth".}
proc fcQDate_daysInYear(self: pointer): cint {.importc: "QDate_daysInYear".}
proc fcQDate_weekNumber(self: pointer): cint {.importc: "QDate_weekNumber".}
proc fcQDate_yearCal(self: pointer, cal: pointer): cint {.importc: "QDate_year_cal".}
proc fcQDate_monthCal(self: pointer, cal: pointer): cint {.importc: "QDate_month_cal".}
proc fcQDate_dayCal(self: pointer, cal: pointer): cint {.importc: "QDate_day_cal".}
proc fcQDate_dayOfWeekCal(self: pointer, cal: pointer): cint {.importc: "QDate_dayOfWeek_cal".}
proc fcQDate_dayOfYearCal(self: pointer, cal: pointer): cint {.importc: "QDate_dayOfYear_cal".}
proc fcQDate_daysInMonthCal(self: pointer, cal: pointer): cint {.importc: "QDate_daysInMonth_cal".}
proc fcQDate_daysInYearCal(self: pointer, cal: pointer): cint {.importc: "QDate_daysInYear_cal".}
proc fcQDate_startOfDaySpec(self: pointer, spec: cint): pointer {.importc: "QDate_startOfDay_spec".}
proc fcQDate_endOfDaySpec(self: pointer, spec: cint): pointer {.importc: "QDate_endOfDay_spec".}
proc fcQDate_startOfDayZone(self: pointer, zone: pointer): pointer {.importc: "QDate_startOfDay_zone".}
proc fcQDate_endOfDayZone(self: pointer, zone: pointer): pointer {.importc: "QDate_endOfDay_zone".}
proc fcQDate_startOfDay(self: pointer): pointer {.importc: "QDate_startOfDay".}
proc fcQDate_endOfDay(self: pointer): pointer {.importc: "QDate_endOfDay".}
proc fcQDate_toString(self: pointer): struct_seaqt_string {.importc: "QDate_toString".}
proc fcQDate_toString_QString(self: pointer, format: struct_seaqt_string): struct_seaqt_string {.importc: "QDate_toString_QString".}
proc fcQDate_toString_QString_QCalendar(self: pointer, format: struct_seaqt_string, cal: pointer): struct_seaqt_string {.importc: "QDate_toString_QString_QCalendar".}
proc fcQDate_setDateYearMonthDay(self: pointer, year: cint, month: cint, day: cint): bool {.importc: "QDate_setDate_year_month_day".}
proc fcQDate_setDateYearMonthDayCal(self: pointer, year: cint, month: cint, day: cint, cal: pointer): bool {.importc: "QDate_setDate_year_month_day_cal".}
proc fcQDate_getDate(self: pointer, year: ptr cint, month: ptr cint, day: ptr cint): void {.importc: "QDate_getDate".}
proc fcQDate_addDays(self: pointer, days: clonglong): pointer {.importc: "QDate_addDays".}
proc fcQDate_addMonthsMonths(self: pointer, months: cint): pointer {.importc: "QDate_addMonths_months".}
proc fcQDate_addYearsYears(self: pointer, years: cint): pointer {.importc: "QDate_addYears_years".}
proc fcQDate_addMonthsMonthsCal(self: pointer, months: cint, cal: pointer): pointer {.importc: "QDate_addMonths_months_cal".}
proc fcQDate_addYearsYearsCal(self: pointer, years: cint, cal: pointer): pointer {.importc: "QDate_addYears_years_cal".}
proc fcQDate_daysTo(self: pointer, d: pointer): clonglong {.importc: "QDate_daysTo".}
proc fcQDate_currentDate(): pointer {.importc: "QDate_currentDate".}
proc fcQDate_fromString_QString(stringVal: struct_seaqt_string): pointer {.importc: "QDate_fromString_QString".}
proc fcQDate_fromString_QString_QString_QCalendar(stringVal: struct_seaqt_string, format: struct_seaqt_string, cal: pointer): pointer {.importc: "QDate_fromString_QString_QString_QCalendar".}
proc fcQDate_fromString_QString_QString(stringVal: struct_seaqt_string, format: struct_seaqt_string): pointer {.importc: "QDate_fromString_QString_QString".}
proc fcQDate_fromString_QString_QStringInt_QCalendar(stringVal: struct_seaqt_string, format: struct_seaqt_string, baseYear: cint, cal: pointer): pointer {.importc: "QDate_fromString_QString_QString_int_QCalendar".}
proc fcQDate_isValidYMD(y: cint, m: cint, d: cint): bool {.importc: "QDate_isValid_y_m_d".}
proc fcQDate_isLeapYear(year: cint): bool {.importc: "QDate_isLeapYear".}
proc fcQDate_fromJulianDay(jd_x: clonglong): pointer {.importc: "QDate_fromJulianDay".}
proc fcQDate_toJulianDay(self: pointer): clonglong {.importc: "QDate_toJulianDay".}
proc fcQDate_weekNumberYearNum(self: pointer, yearNum: ptr cint): cint {.importc: "QDate_weekNumber_yearNum".}
proc fcQDate_startOfDaySpecOffsetSeconds(self: pointer, spec: cint, offsetSeconds: cint): pointer {.importc: "QDate_startOfDay_spec_offsetSeconds".}
proc fcQDate_endOfDaySpecOffsetSeconds(self: pointer, spec: cint, offsetSeconds: cint): pointer {.importc: "QDate_endOfDay_spec_offsetSeconds".}
proc fcQDate_toString_Qt_DateFormat(self: pointer, format: cint): struct_seaqt_string {.importc: "QDate_toString_Qt_DateFormat".}
proc fcQDate_fromString_QString_Qt_DateFormat(stringVal: struct_seaqt_string, format: cint): pointer {.importc: "QDate_fromString_QString_Qt_DateFormat".}
proc fcQDate_fromString_QString_QStringInt(stringVal: struct_seaqt_string, format: struct_seaqt_string, baseYear: cint): pointer {.importc: "QDate_fromString_QString_QString_int".}
proc fcQDate_new(): ptr cQDate {.importc: "QDate_new".}
proc fcQDate_new2(y: cint, m: cint, d: cint): ptr cQDate {.importc: "QDate_new_y_m_d".}
proc fcQDate_new3(y: cint, m: cint, d: cint, cal: pointer): ptr cQDate {.importc: "QDate_new_y_m_d_cal".}
proc fcQDate_new4(fromVal: pointer): ptr cQDate {.importc: "QDate_new_from".}
proc fcQTime_isNull(self: pointer): bool {.importc: "QTime_isNull".}
proc fcQTime_isValid(self: pointer): bool {.importc: "QTime_isValid".}
proc fcQTime_hour(self: pointer): cint {.importc: "QTime_hour".}
proc fcQTime_minute(self: pointer): cint {.importc: "QTime_minute".}
proc fcQTime_second(self: pointer): cint {.importc: "QTime_second".}
proc fcQTime_msec(self: pointer): cint {.importc: "QTime_msec".}
proc fcQTime_toString(self: pointer): struct_seaqt_string {.importc: "QTime_toString".}
proc fcQTime_toString_QString(self: pointer, format: struct_seaqt_string): struct_seaqt_string {.importc: "QTime_toString_QString".}
proc fcQTime_setHMSHMS(self: pointer, h: cint, m: cint, s: cint): bool {.importc: "QTime_setHMS_h_m_s".}
proc fcQTime_addSecs(self: pointer, secs: cint): pointer {.importc: "QTime_addSecs".}
proc fcQTime_secsTo(self: pointer, t: pointer): cint {.importc: "QTime_secsTo".}
proc fcQTime_addMSecs(self: pointer, ms: cint): pointer {.importc: "QTime_addMSecs".}
proc fcQTime_msecsTo(self: pointer, t: pointer): cint {.importc: "QTime_msecsTo".}
proc fcQTime_fromMSecsSinceStartOfDay(msecs: cint): pointer {.importc: "QTime_fromMSecsSinceStartOfDay".}
proc fcQTime_msecsSinceStartOfDay(self: pointer): cint {.importc: "QTime_msecsSinceStartOfDay".}
proc fcQTime_currentTime(): pointer {.importc: "QTime_currentTime".}
proc fcQTime_fromString_QString(stringVal: struct_seaqt_string): pointer {.importc: "QTime_fromString_QString".}
proc fcQTime_fromString_QString_QString(stringVal: struct_seaqt_string, format: struct_seaqt_string): pointer {.importc: "QTime_fromString_QString_QString".}
proc fcQTime_isValidHMS(h: cint, m: cint, s: cint): bool {.importc: "QTime_isValid_h_m_s".}
proc fcQTime_toString_Qt_DateFormat(self: pointer, f: cint): struct_seaqt_string {.importc: "QTime_toString_Qt_DateFormat".}
proc fcQTime_setHMSHMSMs(self: pointer, h: cint, m: cint, s: cint, ms: cint): bool {.importc: "QTime_setHMS_h_m_s_ms".}
proc fcQTime_fromString_QString_Qt_DateFormat(stringVal: struct_seaqt_string, format: cint): pointer {.importc: "QTime_fromString_QString_Qt_DateFormat".}
proc fcQTime_isValidHMSMs(h: cint, m: cint, s: cint, ms: cint): bool {.importc: "QTime_isValid_h_m_s_ms".}
proc fcQTime_new(): ptr cQTime {.importc: "QTime_new".}
proc fcQTime_new2(h: cint, m: cint): ptr cQTime {.importc: "QTime_new_h_m".}
proc fcQTime_new3(fromVal: pointer): ptr cQTime {.importc: "QTime_new_from".}
proc fcQTime_new4(h: cint, m: cint, s: cint): ptr cQTime {.importc: "QTime_new_h_m_s".}
proc fcQTime_new5(h: cint, m: cint, s: cint, ms: cint): ptr cQTime {.importc: "QTime_new_h_m_s_ms".}
proc fcQDateTime_operatorAssign(self: pointer, fromVal: pointer): void {.importc: "QDateTime_operatorAssign".}
proc fcQDateTime_swap(self: pointer, other: pointer): void {.importc: "QDateTime_swap".}
proc fcQDateTime_isNull(self: pointer): bool {.importc: "QDateTime_isNull".}
proc fcQDateTime_isValid(self: pointer): bool {.importc: "QDateTime_isValid".}
proc fcQDateTime_date(self: pointer): pointer {.importc: "QDateTime_date".}
proc fcQDateTime_time(self: pointer): pointer {.importc: "QDateTime_time".}
proc fcQDateTime_timeSpec(self: pointer): cint {.importc: "QDateTime_timeSpec".}
proc fcQDateTime_offsetFromUtc(self: pointer): cint {.importc: "QDateTime_offsetFromUtc".}
proc fcQDateTime_timeRepresentation(self: pointer): pointer {.importc: "QDateTime_timeRepresentation".}
proc fcQDateTime_timeZone(self: pointer): pointer {.importc: "QDateTime_timeZone".}
proc fcQDateTime_timeZoneAbbreviation(self: pointer): struct_seaqt_string {.importc: "QDateTime_timeZoneAbbreviation".}
proc fcQDateTime_isDaylightTime(self: pointer): bool {.importc: "QDateTime_isDaylightTime".}
proc fcQDateTime_toMSecsSinceEpoch(self: pointer): clonglong {.importc: "QDateTime_toMSecsSinceEpoch".}
proc fcQDateTime_toSecsSinceEpoch(self: pointer): clonglong {.importc: "QDateTime_toSecsSinceEpoch".}
proc fcQDateTime_setDateDate(self: pointer, date: pointer): void {.importc: "QDateTime_setDate_date".}
proc fcQDateTime_setTimeTime(self: pointer, time: pointer): void {.importc: "QDateTime_setTime_time".}
proc fcQDateTime_setTimeSpec(self: pointer, spec: cint): void {.importc: "QDateTime_setTimeSpec".}
proc fcQDateTime_setOffsetFromUtc(self: pointer, offsetSeconds: cint): void {.importc: "QDateTime_setOffsetFromUtc".}
proc fcQDateTime_setTimeZoneToZone(self: pointer, toZone: pointer): void {.importc: "QDateTime_setTimeZone_toZone".}
proc fcQDateTime_setMSecsSinceEpoch(self: pointer, msecs: clonglong): void {.importc: "QDateTime_setMSecsSinceEpoch".}
proc fcQDateTime_setSecsSinceEpoch(self: pointer, secs: clonglong): void {.importc: "QDateTime_setSecsSinceEpoch".}
proc fcQDateTime_toString(self: pointer): struct_seaqt_string {.importc: "QDateTime_toString".}
proc fcQDateTime_toString_QString(self: pointer, format: struct_seaqt_string): struct_seaqt_string {.importc: "QDateTime_toString_QString".}
proc fcQDateTime_toString_QString_QCalendar(self: pointer, format: struct_seaqt_string, cal: pointer): struct_seaqt_string {.importc: "QDateTime_toString_QString_QCalendar".}
proc fcQDateTime_addDays(self: pointer, days: clonglong): pointer {.importc: "QDateTime_addDays".}
proc fcQDateTime_addMonths(self: pointer, months: cint): pointer {.importc: "QDateTime_addMonths".}
proc fcQDateTime_addYears(self: pointer, years: cint): pointer {.importc: "QDateTime_addYears".}
proc fcQDateTime_addSecs(self: pointer, secs: clonglong): pointer {.importc: "QDateTime_addSecs".}
proc fcQDateTime_addMSecs(self: pointer, msecs: clonglong): pointer {.importc: "QDateTime_addMSecs".}
proc fcQDateTime_toTimeSpec(self: pointer, spec: cint): pointer {.importc: "QDateTime_toTimeSpec".}
proc fcQDateTime_toLocalTime(self: pointer): pointer {.importc: "QDateTime_toLocalTime".}
proc fcQDateTime_toUTC(self: pointer): pointer {.importc: "QDateTime_toUTC".}
proc fcQDateTime_toOffsetFromUtc(self: pointer, offsetSeconds: cint): pointer {.importc: "QDateTime_toOffsetFromUtc".}
proc fcQDateTime_toTimeZone(self: pointer, toZone: pointer): pointer {.importc: "QDateTime_toTimeZone".}
proc fcQDateTime_daysTo(self: pointer, param1: pointer): clonglong {.importc: "QDateTime_daysTo".}
proc fcQDateTime_secsTo(self: pointer, param1: pointer): clonglong {.importc: "QDateTime_secsTo".}
proc fcQDateTime_msecsTo(self: pointer, param1: pointer): clonglong {.importc: "QDateTime_msecsTo".}
proc fcQDateTime_currentDateTimeZone(zone: pointer): pointer {.importc: "QDateTime_currentDateTime_zone".}
proc fcQDateTime_currentDateTime(): pointer {.importc: "QDateTime_currentDateTime".}
proc fcQDateTime_currentDateTimeUtc(): pointer {.importc: "QDateTime_currentDateTimeUtc".}
proc fcQDateTime_fromString_QString(stringVal: struct_seaqt_string): pointer {.importc: "QDateTime_fromString_QString".}
proc fcQDateTime_fromString_QString_QString_QCalendar(stringVal: struct_seaqt_string, format: struct_seaqt_string, cal: pointer): pointer {.importc: "QDateTime_fromString_QString_QString_QCalendar".}
proc fcQDateTime_fromString_QString_QString(stringVal: struct_seaqt_string, format: struct_seaqt_string): pointer {.importc: "QDateTime_fromString_QString_QString".}
proc fcQDateTime_fromString_QString_QStringInt_QCalendar(stringVal: struct_seaqt_string, format: struct_seaqt_string, baseYear: cint, cal: pointer): pointer {.importc: "QDateTime_fromString_QString_QString_int_QCalendar".}
proc fcQDateTime_fromMSecsSinceEpochMsecsSpec(msecs: clonglong, spec: cint): pointer {.importc: "QDateTime_fromMSecsSinceEpoch_msecs_spec".}
proc fcQDateTime_fromSecsSinceEpochSecsSpec(secs: clonglong, spec: cint): pointer {.importc: "QDateTime_fromSecsSinceEpoch_secs_spec".}
proc fcQDateTime_fromMSecsSinceEpochMsecsTimeZone(msecs: clonglong, timeZone: pointer): pointer {.importc: "QDateTime_fromMSecsSinceEpoch_msecs_timeZone".}
proc fcQDateTime_fromSecsSinceEpochSecsTimeZone(secs: clonglong, timeZone: pointer): pointer {.importc: "QDateTime_fromSecsSinceEpoch_secs_timeZone".}
proc fcQDateTime_fromMSecsSinceEpochMsecs(msecs: clonglong): pointer {.importc: "QDateTime_fromMSecsSinceEpoch_msecs".}
proc fcQDateTime_fromSecsSinceEpochSecs(secs: clonglong): pointer {.importc: "QDateTime_fromSecsSinceEpoch_secs".}
proc fcQDateTime_currentMSecsSinceEpoch(): clonglong {.importc: "QDateTime_currentMSecsSinceEpoch".}
proc fcQDateTime_currentSecsSinceEpoch(): clonglong {.importc: "QDateTime_currentSecsSinceEpoch".}
proc fcQDateTime_setDateDateResolve(self: pointer, date: pointer, resolve: cint): void {.importc: "QDateTime_setDate_date_resolve".}
proc fcQDateTime_setTimeTimeResolve(self: pointer, time: pointer, resolve: cint): void {.importc: "QDateTime_setTime_time_resolve".}
proc fcQDateTime_setTimeZoneToZoneResolve(self: pointer, toZone: pointer, resolve: cint): void {.importc: "QDateTime_setTimeZone_toZone_resolve".}
proc fcQDateTime_toString_Qt_DateFormat(self: pointer, format: cint): struct_seaqt_string {.importc: "QDateTime_toString_Qt_DateFormat".}
proc fcQDateTime_fromString_QString_Qt_DateFormat(stringVal: struct_seaqt_string, format: cint): pointer {.importc: "QDateTime_fromString_QString_Qt_DateFormat".}
proc fcQDateTime_fromString_QString_QStringInt(stringVal: struct_seaqt_string, format: struct_seaqt_string, baseYear: cint): pointer {.importc: "QDateTime_fromString_QString_QString_int".}
proc fcQDateTime_fromMSecsSinceEpochMsecsSpecOffsetFromUtc(msecs: clonglong, spec: cint, offsetFromUtc: cint): pointer {.importc: "QDateTime_fromMSecsSinceEpoch_msecs_spec_offsetFromUtc".}
proc fcQDateTime_fromSecsSinceEpochSecsSpecOffsetFromUtc(secs: clonglong, spec: cint, offsetFromUtc: cint): pointer {.importc: "QDateTime_fromSecsSinceEpoch_secs_spec_offsetFromUtc".}
proc fcQDateTime_new(): ptr cQDateTime {.importc: "QDateTime_new".}
proc fcQDateTime_new2(date: pointer, time: pointer, spec: cint): ptr cQDateTime {.importc: "QDateTime_new_date_time_spec".}
proc fcQDateTime_new3(date: pointer, time: pointer, timeZone: pointer): ptr cQDateTime {.importc: "QDateTime_new_date_time_timeZone".}
proc fcQDateTime_new4(date: pointer, time: pointer): ptr cQDateTime {.importc: "QDateTime_new_date_time".}
proc fcQDateTime_new5(fromVal: pointer): ptr cQDateTime {.importc: "QDateTime_new_from".}
proc fcQDateTime_new6(date: pointer, time: pointer, spec: cint, offsetSeconds: cint): ptr cQDateTime {.importc: "QDateTime_new_date_time_spec_offsetSeconds".}
proc fcQDateTime_new7(date: pointer, time: pointer, timeZone: pointer, resolve: cint): ptr cQDateTime {.importc: "QDateTime_new_date_time_timeZone_resolve".}
proc fcQDateTime_new8(date: pointer, time: pointer, resolve: cint): ptr cQDateTime {.importc: "QDateTime_new_date_time_resolve".}

proc isNull*(self: gen_qdatetime_types.QDate): bool =
  fcQDate_isNull(self.h)

proc isValid*(self: gen_qdatetime_types.QDate): bool =
  fcQDate_isValid(self.h)

proc year*(self: gen_qdatetime_types.QDate): cint =
  fcQDate_year(self.h)

proc month*(self: gen_qdatetime_types.QDate): cint =
  fcQDate_month(self.h)

proc day*(self: gen_qdatetime_types.QDate): cint =
  fcQDate_day(self.h)

proc dayOfWeek*(self: gen_qdatetime_types.QDate): cint =
  fcQDate_dayOfWeek(self.h)

proc dayOfYear*(self: gen_qdatetime_types.QDate): cint =
  fcQDate_dayOfYear(self.h)

proc daysInMonth*(self: gen_qdatetime_types.QDate): cint =
  fcQDate_daysInMonth(self.h)

proc daysInYear*(self: gen_qdatetime_types.QDate): cint =
  fcQDate_daysInYear(self.h)

proc weekNumber*(self: gen_qdatetime_types.QDate): cint =
  fcQDate_weekNumber(self.h)

proc year*(self: gen_qdatetime_types.QDate, cal: gen_qcalendar_types.QCalendar): cint =
  fcQDate_yearCal(self.h, cal.h)

proc month*(self: gen_qdatetime_types.QDate, cal: gen_qcalendar_types.QCalendar): cint =
  fcQDate_monthCal(self.h, cal.h)

proc day*(self: gen_qdatetime_types.QDate, cal: gen_qcalendar_types.QCalendar): cint =
  fcQDate_dayCal(self.h, cal.h)

proc dayOfWeek*(self: gen_qdatetime_types.QDate, cal: gen_qcalendar_types.QCalendar): cint =
  fcQDate_dayOfWeekCal(self.h, cal.h)

proc dayOfYear*(self: gen_qdatetime_types.QDate, cal: gen_qcalendar_types.QCalendar): cint =
  fcQDate_dayOfYearCal(self.h, cal.h)

proc daysInMonth*(self: gen_qdatetime_types.QDate, cal: gen_qcalendar_types.QCalendar): cint =
  fcQDate_daysInMonthCal(self.h, cal.h)

proc daysInYear*(self: gen_qdatetime_types.QDate, cal: gen_qcalendar_types.QCalendar): cint =
  fcQDate_daysInYearCal(self.h, cal.h)

proc startOfDay*(self: gen_qdatetime_types.QDate, spec: cint): gen_qdatetime_types.QDateTime =
  gen_qdatetime_types.QDateTime(h: fcQDate_startOfDaySpec(self.h, cint(spec)), owned: true)

proc endOfDay*(self: gen_qdatetime_types.QDate, spec: cint): gen_qdatetime_types.QDateTime =
  gen_qdatetime_types.QDateTime(h: fcQDate_endOfDaySpec(self.h, cint(spec)), owned: true)

proc startOfDay*(self: gen_qdatetime_types.QDate, zone: gen_qtimezone_types.QTimeZone): gen_qdatetime_types.QDateTime =
  gen_qdatetime_types.QDateTime(h: fcQDate_startOfDayZone(self.h, zone.h), owned: true)

proc endOfDay*(self: gen_qdatetime_types.QDate, zone: gen_qtimezone_types.QTimeZone): gen_qdatetime_types.QDateTime =
  gen_qdatetime_types.QDateTime(h: fcQDate_endOfDayZone(self.h, zone.h), owned: true)

proc startOfDay*(self: gen_qdatetime_types.QDate): gen_qdatetime_types.QDateTime =
  gen_qdatetime_types.QDateTime(h: fcQDate_startOfDay(self.h), owned: true)

proc endOfDay*(self: gen_qdatetime_types.QDate): gen_qdatetime_types.QDateTime =
  gen_qdatetime_types.QDateTime(h: fcQDate_endOfDay(self.h), owned: true)

proc toString*(self: gen_qdatetime_types.QDate): string =
  let v_ms = fcQDate_toString(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc toString*(self: gen_qdatetime_types.QDate, format: openArray[char]): string =
  let v_ms = fcQDate_toString_QString(self.h, struct_seaqt_string(data: if len(format) > 0: addr format[0] else: nil, len: csize_t(len(format))))
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc toString*(self: gen_qdatetime_types.QDate, format: openArray[char], cal: gen_qcalendar_types.QCalendar): string =
  let v_ms = fcQDate_toString_QString_QCalendar(self.h, struct_seaqt_string(data: if len(format) > 0: addr format[0] else: nil, len: csize_t(len(format))), cal.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc setDate*(self: gen_qdatetime_types.QDate, year: cint, month: cint, day: cint): bool =
  fcQDate_setDateYearMonthDay(self.h, year, month, day)

proc setDate*(self: gen_qdatetime_types.QDate, year: cint, month: cint, day: cint, cal: gen_qcalendar_types.QCalendar): bool =
  fcQDate_setDateYearMonthDayCal(self.h, year, month, day, cal.h)

proc getDate*(self: gen_qdatetime_types.QDate, year: ptr cint, month: ptr cint, day: ptr cint): void =
  fcQDate_getDate(self.h, year, month, day)

proc addDays*(self: gen_qdatetime_types.QDate, days: clonglong): gen_qdatetime_types.QDate =
  gen_qdatetime_types.QDate(h: fcQDate_addDays(self.h, days), owned: true)

proc addMonths*(self: gen_qdatetime_types.QDate, months: cint): gen_qdatetime_types.QDate =
  gen_qdatetime_types.QDate(h: fcQDate_addMonthsMonths(self.h, months), owned: true)

proc addYears*(self: gen_qdatetime_types.QDate, years: cint): gen_qdatetime_types.QDate =
  gen_qdatetime_types.QDate(h: fcQDate_addYearsYears(self.h, years), owned: true)

proc addMonths*(self: gen_qdatetime_types.QDate, months: cint, cal: gen_qcalendar_types.QCalendar): gen_qdatetime_types.QDate =
  gen_qdatetime_types.QDate(h: fcQDate_addMonthsMonthsCal(self.h, months, cal.h), owned: true)

proc addYears*(self: gen_qdatetime_types.QDate, years: cint, cal: gen_qcalendar_types.QCalendar): gen_qdatetime_types.QDate =
  gen_qdatetime_types.QDate(h: fcQDate_addYearsYearsCal(self.h, years, cal.h), owned: true)

proc daysTo*(self: gen_qdatetime_types.QDate, d: gen_qdatetime_types.QDate): clonglong =
  fcQDate_daysTo(self.h, d.h)

proc currentDate*(_: type gen_qdatetime_types.QDate): gen_qdatetime_types.QDate =
  gen_qdatetime_types.QDate(h: fcQDate_currentDate(), owned: true)

proc fromString*(_: type gen_qdatetime_types.QDate, stringVal: openArray[char]): gen_qdatetime_types.QDate =
  gen_qdatetime_types.QDate(h: fcQDate_fromString_QString(struct_seaqt_string(data: if len(stringVal) > 0: addr stringVal[0] else: nil, len: csize_t(len(stringVal)))), owned: true)

proc fromString*(_: type gen_qdatetime_types.QDate, stringVal: openArray[char], format: openArray[char], cal: gen_qcalendar_types.QCalendar): gen_qdatetime_types.QDate =
  gen_qdatetime_types.QDate(h: fcQDate_fromString_QString_QString_QCalendar(struct_seaqt_string(data: if len(stringVal) > 0: addr stringVal[0] else: nil, len: csize_t(len(stringVal))), struct_seaqt_string(data: if len(format) > 0: addr format[0] else: nil, len: csize_t(len(format))), cal.h), owned: true)

proc fromString*(_: type gen_qdatetime_types.QDate, stringVal: openArray[char], format: openArray[char]): gen_qdatetime_types.QDate =
  gen_qdatetime_types.QDate(h: fcQDate_fromString_QString_QString(struct_seaqt_string(data: if len(stringVal) > 0: addr stringVal[0] else: nil, len: csize_t(len(stringVal))), struct_seaqt_string(data: if len(format) > 0: addr format[0] else: nil, len: csize_t(len(format)))), owned: true)

proc fromString*(_: type gen_qdatetime_types.QDate, stringVal: openArray[char], format: openArray[char], baseYear: cint, cal: gen_qcalendar_types.QCalendar): gen_qdatetime_types.QDate =
  gen_qdatetime_types.QDate(h: fcQDate_fromString_QString_QStringInt_QCalendar(struct_seaqt_string(data: if len(stringVal) > 0: addr stringVal[0] else: nil, len: csize_t(len(stringVal))), struct_seaqt_string(data: if len(format) > 0: addr format[0] else: nil, len: csize_t(len(format))), baseYear, cal.h), owned: true)

proc isValid*(_: type gen_qdatetime_types.QDate, y: cint, m: cint, d: cint): bool =
  fcQDate_isValidYMD(y, m, d)

proc isLeapYear*(_: type gen_qdatetime_types.QDate, year: cint): bool =
  fcQDate_isLeapYear(year)

proc fromJulianDay*(_: type gen_qdatetime_types.QDate, jd_x: clonglong): gen_qdatetime_types.QDate =
  gen_qdatetime_types.QDate(h: fcQDate_fromJulianDay(jd_x), owned: true)

proc toJulianDay*(self: gen_qdatetime_types.QDate): clonglong =
  fcQDate_toJulianDay(self.h)

proc weekNumber*(self: gen_qdatetime_types.QDate, yearNum: ptr cint): cint =
  fcQDate_weekNumberYearNum(self.h, yearNum)

proc startOfDay*(self: gen_qdatetime_types.QDate, spec: cint, offsetSeconds: cint): gen_qdatetime_types.QDateTime =
  gen_qdatetime_types.QDateTime(h: fcQDate_startOfDaySpecOffsetSeconds(self.h, cint(spec), offsetSeconds), owned: true)

proc endOfDay*(self: gen_qdatetime_types.QDate, spec: cint, offsetSeconds: cint): gen_qdatetime_types.QDateTime =
  gen_qdatetime_types.QDateTime(h: fcQDate_endOfDaySpecOffsetSeconds(self.h, cint(spec), offsetSeconds), owned: true)

proc toString*(self: gen_qdatetime_types.QDate, format: cint): string =
  let v_ms = fcQDate_toString_Qt_DateFormat(self.h, cint(format))
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc fromString*(_: type gen_qdatetime_types.QDate, stringVal: openArray[char], format: cint): gen_qdatetime_types.QDate =
  gen_qdatetime_types.QDate(h: fcQDate_fromString_QString_Qt_DateFormat(struct_seaqt_string(data: if len(stringVal) > 0: addr stringVal[0] else: nil, len: csize_t(len(stringVal))), cint(format)), owned: true)

proc fromString*(_: type gen_qdatetime_types.QDate, stringVal: openArray[char], format: openArray[char], baseYear: cint): gen_qdatetime_types.QDate =
  gen_qdatetime_types.QDate(h: fcQDate_fromString_QString_QStringInt(struct_seaqt_string(data: if len(stringVal) > 0: addr stringVal[0] else: nil, len: csize_t(len(stringVal))), struct_seaqt_string(data: if len(format) > 0: addr format[0] else: nil, len: csize_t(len(format))), baseYear), owned: true)

proc create*(T: type gen_qdatetime_types.QDate): gen_qdatetime_types.QDate =
  let tmp = gen_qdatetime_types.QDate(h: fcQDate_new(), owned: true)
  tmp
proc create*(T: type gen_qdatetime_types.QDate,
    y: cint, m: cint, d: cint): gen_qdatetime_types.QDate =
  let tmp = gen_qdatetime_types.QDate(h: fcQDate_new2(y, m, d), owned: true)
  tmp
proc create*(T: type gen_qdatetime_types.QDate,
    y: cint, m: cint, d: cint, cal: gen_qcalendar_types.QCalendar): gen_qdatetime_types.QDate =
  let tmp = gen_qdatetime_types.QDate(h: fcQDate_new3(y, m, d, cal.h), owned: true)
  tmp
proc create*(T: type gen_qdatetime_types.QDate,
    fromVal: gen_qdatetime_types.QDate): gen_qdatetime_types.QDate =
  let tmp = gen_qdatetime_types.QDate(h: fcQDate_new4(fromVal.h), owned: true)
  tmp
proc isNull*(self: gen_qdatetime_types.QTime): bool =
  fcQTime_isNull(self.h)

proc isValid*(self: gen_qdatetime_types.QTime): bool =
  fcQTime_isValid(self.h)

proc hour*(self: gen_qdatetime_types.QTime): cint =
  fcQTime_hour(self.h)

proc minute*(self: gen_qdatetime_types.QTime): cint =
  fcQTime_minute(self.h)

proc second*(self: gen_qdatetime_types.QTime): cint =
  fcQTime_second(self.h)

proc msec*(self: gen_qdatetime_types.QTime): cint =
  fcQTime_msec(self.h)

proc toString*(self: gen_qdatetime_types.QTime): string =
  let v_ms = fcQTime_toString(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc toString*(self: gen_qdatetime_types.QTime, format: openArray[char]): string =
  let v_ms = fcQTime_toString_QString(self.h, struct_seaqt_string(data: if len(format) > 0: addr format[0] else: nil, len: csize_t(len(format))))
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc setHMS*(self: gen_qdatetime_types.QTime, h: cint, m: cint, s: cint): bool =
  fcQTime_setHMSHMS(self.h, h, m, s)

proc addSecs*(self: gen_qdatetime_types.QTime, secs: cint): gen_qdatetime_types.QTime =
  gen_qdatetime_types.QTime(h: fcQTime_addSecs(self.h, secs), owned: true)

proc secsTo*(self: gen_qdatetime_types.QTime, t: gen_qdatetime_types.QTime): cint =
  fcQTime_secsTo(self.h, t.h)

proc addMSecs*(self: gen_qdatetime_types.QTime, ms: cint): gen_qdatetime_types.QTime =
  gen_qdatetime_types.QTime(h: fcQTime_addMSecs(self.h, ms), owned: true)

proc msecsTo*(self: gen_qdatetime_types.QTime, t: gen_qdatetime_types.QTime): cint =
  fcQTime_msecsTo(self.h, t.h)

proc fromMSecsSinceStartOfDay*(_: type gen_qdatetime_types.QTime, msecs: cint): gen_qdatetime_types.QTime =
  gen_qdatetime_types.QTime(h: fcQTime_fromMSecsSinceStartOfDay(msecs), owned: true)

proc msecsSinceStartOfDay*(self: gen_qdatetime_types.QTime): cint =
  fcQTime_msecsSinceStartOfDay(self.h)

proc currentTime*(_: type gen_qdatetime_types.QTime): gen_qdatetime_types.QTime =
  gen_qdatetime_types.QTime(h: fcQTime_currentTime(), owned: true)

proc fromString*(_: type gen_qdatetime_types.QTime, stringVal: openArray[char]): gen_qdatetime_types.QTime =
  gen_qdatetime_types.QTime(h: fcQTime_fromString_QString(struct_seaqt_string(data: if len(stringVal) > 0: addr stringVal[0] else: nil, len: csize_t(len(stringVal)))), owned: true)

proc fromString*(_: type gen_qdatetime_types.QTime, stringVal: openArray[char], format: openArray[char]): gen_qdatetime_types.QTime =
  gen_qdatetime_types.QTime(h: fcQTime_fromString_QString_QString(struct_seaqt_string(data: if len(stringVal) > 0: addr stringVal[0] else: nil, len: csize_t(len(stringVal))), struct_seaqt_string(data: if len(format) > 0: addr format[0] else: nil, len: csize_t(len(format)))), owned: true)

proc isValid*(_: type gen_qdatetime_types.QTime, h: cint, m: cint, s: cint): bool =
  fcQTime_isValidHMS(h, m, s)

proc toString*(self: gen_qdatetime_types.QTime, f: cint): string =
  let v_ms = fcQTime_toString_Qt_DateFormat(self.h, cint(f))
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc setHMS*(self: gen_qdatetime_types.QTime, h: cint, m: cint, s: cint, ms: cint): bool =
  fcQTime_setHMSHMSMs(self.h, h, m, s, ms)

proc fromString*(_: type gen_qdatetime_types.QTime, stringVal: openArray[char], format: cint): gen_qdatetime_types.QTime =
  gen_qdatetime_types.QTime(h: fcQTime_fromString_QString_Qt_DateFormat(struct_seaqt_string(data: if len(stringVal) > 0: addr stringVal[0] else: nil, len: csize_t(len(stringVal))), cint(format)), owned: true)

proc isValid*(_: type gen_qdatetime_types.QTime, h: cint, m: cint, s: cint, ms: cint): bool =
  fcQTime_isValidHMSMs(h, m, s, ms)

proc create*(T: type gen_qdatetime_types.QTime): gen_qdatetime_types.QTime =
  let tmp = gen_qdatetime_types.QTime(h: fcQTime_new(), owned: true)
  tmp
proc create*(T: type gen_qdatetime_types.QTime,
    h: cint, m: cint): gen_qdatetime_types.QTime =
  let tmp = gen_qdatetime_types.QTime(h: fcQTime_new2(h, m), owned: true)
  tmp
proc create*(T: type gen_qdatetime_types.QTime,
    fromVal: gen_qdatetime_types.QTime): gen_qdatetime_types.QTime =
  let tmp = gen_qdatetime_types.QTime(h: fcQTime_new3(fromVal.h), owned: true)
  tmp
proc create*(T: type gen_qdatetime_types.QTime,
    h: cint, m: cint, s: cint): gen_qdatetime_types.QTime =
  let tmp = gen_qdatetime_types.QTime(h: fcQTime_new4(h, m, s), owned: true)
  tmp
proc create*(T: type gen_qdatetime_types.QTime,
    h: cint, m: cint, s: cint, ms: cint): gen_qdatetime_types.QTime =
  let tmp = gen_qdatetime_types.QTime(h: fcQTime_new5(h, m, s, ms), owned: true)
  tmp
proc operatorAssign*(self: gen_qdatetime_types.QDateTime, fromVal: gen_qdatetime_types.QDateTime): void =
  fcQDateTime_operatorAssign(self.h, fromVal.h)

proc swap*(self: gen_qdatetime_types.QDateTime, other: gen_qdatetime_types.QDateTime): void =
  fcQDateTime_swap(self.h, other.h)

proc isNull*(self: gen_qdatetime_types.QDateTime): bool =
  fcQDateTime_isNull(self.h)

proc isValid*(self: gen_qdatetime_types.QDateTime): bool =
  fcQDateTime_isValid(self.h)

proc date*(self: gen_qdatetime_types.QDateTime): gen_qdatetime_types.QDate =
  gen_qdatetime_types.QDate(h: fcQDateTime_date(self.h), owned: true)

proc time*(self: gen_qdatetime_types.QDateTime): gen_qdatetime_types.QTime =
  gen_qdatetime_types.QTime(h: fcQDateTime_time(self.h), owned: true)

proc timeSpec*(self: gen_qdatetime_types.QDateTime): cint =
  cint(fcQDateTime_timeSpec(self.h))

proc offsetFromUtc*(self: gen_qdatetime_types.QDateTime): cint =
  fcQDateTime_offsetFromUtc(self.h)

proc timeRepresentation*(self: gen_qdatetime_types.QDateTime): gen_qtimezone_types.QTimeZone =
  gen_qtimezone_types.QTimeZone(h: fcQDateTime_timeRepresentation(self.h), owned: true)

proc timeZone*(self: gen_qdatetime_types.QDateTime): gen_qtimezone_types.QTimeZone =
  gen_qtimezone_types.QTimeZone(h: fcQDateTime_timeZone(self.h), owned: true)

proc timeZoneAbbreviation*(self: gen_qdatetime_types.QDateTime): string =
  let v_ms = fcQDateTime_timeZoneAbbreviation(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc isDaylightTime*(self: gen_qdatetime_types.QDateTime): bool =
  fcQDateTime_isDaylightTime(self.h)

proc toMSecsSinceEpoch*(self: gen_qdatetime_types.QDateTime): clonglong =
  fcQDateTime_toMSecsSinceEpoch(self.h)

proc toSecsSinceEpoch*(self: gen_qdatetime_types.QDateTime): clonglong =
  fcQDateTime_toSecsSinceEpoch(self.h)

proc setDate*(self: gen_qdatetime_types.QDateTime, date: gen_qdatetime_types.QDate): void =
  fcQDateTime_setDateDate(self.h, date.h)

proc setTime*(self: gen_qdatetime_types.QDateTime, time: gen_qdatetime_types.QTime): void =
  fcQDateTime_setTimeTime(self.h, time.h)

proc setTimeSpec*(self: gen_qdatetime_types.QDateTime, spec: cint): void =
  fcQDateTime_setTimeSpec(self.h, cint(spec))

proc setOffsetFromUtc*(self: gen_qdatetime_types.QDateTime, offsetSeconds: cint): void =
  fcQDateTime_setOffsetFromUtc(self.h, offsetSeconds)

proc setTimeZone*(self: gen_qdatetime_types.QDateTime, toZone: gen_qtimezone_types.QTimeZone): void =
  fcQDateTime_setTimeZoneToZone(self.h, toZone.h)

proc setMSecsSinceEpoch*(self: gen_qdatetime_types.QDateTime, msecs: clonglong): void =
  fcQDateTime_setMSecsSinceEpoch(self.h, msecs)

proc setSecsSinceEpoch*(self: gen_qdatetime_types.QDateTime, secs: clonglong): void =
  fcQDateTime_setSecsSinceEpoch(self.h, secs)

proc toString*(self: gen_qdatetime_types.QDateTime): string =
  let v_ms = fcQDateTime_toString(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc toString*(self: gen_qdatetime_types.QDateTime, format: openArray[char]): string =
  let v_ms = fcQDateTime_toString_QString(self.h, struct_seaqt_string(data: if len(format) > 0: addr format[0] else: nil, len: csize_t(len(format))))
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc toString*(self: gen_qdatetime_types.QDateTime, format: openArray[char], cal: gen_qcalendar_types.QCalendar): string =
  let v_ms = fcQDateTime_toString_QString_QCalendar(self.h, struct_seaqt_string(data: if len(format) > 0: addr format[0] else: nil, len: csize_t(len(format))), cal.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc addDays*(self: gen_qdatetime_types.QDateTime, days: clonglong): gen_qdatetime_types.QDateTime =
  gen_qdatetime_types.QDateTime(h: fcQDateTime_addDays(self.h, days), owned: true)

proc addMonths*(self: gen_qdatetime_types.QDateTime, months: cint): gen_qdatetime_types.QDateTime =
  gen_qdatetime_types.QDateTime(h: fcQDateTime_addMonths(self.h, months), owned: true)

proc addYears*(self: gen_qdatetime_types.QDateTime, years: cint): gen_qdatetime_types.QDateTime =
  gen_qdatetime_types.QDateTime(h: fcQDateTime_addYears(self.h, years), owned: true)

proc addSecs*(self: gen_qdatetime_types.QDateTime, secs: clonglong): gen_qdatetime_types.QDateTime =
  gen_qdatetime_types.QDateTime(h: fcQDateTime_addSecs(self.h, secs), owned: true)

proc addMSecs*(self: gen_qdatetime_types.QDateTime, msecs: clonglong): gen_qdatetime_types.QDateTime =
  gen_qdatetime_types.QDateTime(h: fcQDateTime_addMSecs(self.h, msecs), owned: true)

proc toTimeSpec*(self: gen_qdatetime_types.QDateTime, spec: cint): gen_qdatetime_types.QDateTime =
  gen_qdatetime_types.QDateTime(h: fcQDateTime_toTimeSpec(self.h, cint(spec)), owned: true)

proc toLocalTime*(self: gen_qdatetime_types.QDateTime): gen_qdatetime_types.QDateTime =
  gen_qdatetime_types.QDateTime(h: fcQDateTime_toLocalTime(self.h), owned: true)

proc toUTC*(self: gen_qdatetime_types.QDateTime): gen_qdatetime_types.QDateTime =
  gen_qdatetime_types.QDateTime(h: fcQDateTime_toUTC(self.h), owned: true)

proc toOffsetFromUtc*(self: gen_qdatetime_types.QDateTime, offsetSeconds: cint): gen_qdatetime_types.QDateTime =
  gen_qdatetime_types.QDateTime(h: fcQDateTime_toOffsetFromUtc(self.h, offsetSeconds), owned: true)

proc toTimeZone*(self: gen_qdatetime_types.QDateTime, toZone: gen_qtimezone_types.QTimeZone): gen_qdatetime_types.QDateTime =
  gen_qdatetime_types.QDateTime(h: fcQDateTime_toTimeZone(self.h, toZone.h), owned: true)

proc daysTo*(self: gen_qdatetime_types.QDateTime, param1: gen_qdatetime_types.QDateTime): clonglong =
  fcQDateTime_daysTo(self.h, param1.h)

proc secsTo*(self: gen_qdatetime_types.QDateTime, param1: gen_qdatetime_types.QDateTime): clonglong =
  fcQDateTime_secsTo(self.h, param1.h)

proc msecsTo*(self: gen_qdatetime_types.QDateTime, param1: gen_qdatetime_types.QDateTime): clonglong =
  fcQDateTime_msecsTo(self.h, param1.h)

proc currentDateTime*(_: type gen_qdatetime_types.QDateTime, zone: gen_qtimezone_types.QTimeZone): gen_qdatetime_types.QDateTime =
  gen_qdatetime_types.QDateTime(h: fcQDateTime_currentDateTimeZone(zone.h), owned: true)

proc currentDateTime*(_: type gen_qdatetime_types.QDateTime): gen_qdatetime_types.QDateTime =
  gen_qdatetime_types.QDateTime(h: fcQDateTime_currentDateTime(), owned: true)

proc currentDateTimeUtc*(_: type gen_qdatetime_types.QDateTime): gen_qdatetime_types.QDateTime =
  gen_qdatetime_types.QDateTime(h: fcQDateTime_currentDateTimeUtc(), owned: true)

proc fromString*(_: type gen_qdatetime_types.QDateTime, stringVal: openArray[char]): gen_qdatetime_types.QDateTime =
  gen_qdatetime_types.QDateTime(h: fcQDateTime_fromString_QString(struct_seaqt_string(data: if len(stringVal) > 0: addr stringVal[0] else: nil, len: csize_t(len(stringVal)))), owned: true)

proc fromString*(_: type gen_qdatetime_types.QDateTime, stringVal: openArray[char], format: openArray[char], cal: gen_qcalendar_types.QCalendar): gen_qdatetime_types.QDateTime =
  gen_qdatetime_types.QDateTime(h: fcQDateTime_fromString_QString_QString_QCalendar(struct_seaqt_string(data: if len(stringVal) > 0: addr stringVal[0] else: nil, len: csize_t(len(stringVal))), struct_seaqt_string(data: if len(format) > 0: addr format[0] else: nil, len: csize_t(len(format))), cal.h), owned: true)

proc fromString*(_: type gen_qdatetime_types.QDateTime, stringVal: openArray[char], format: openArray[char]): gen_qdatetime_types.QDateTime =
  gen_qdatetime_types.QDateTime(h: fcQDateTime_fromString_QString_QString(struct_seaqt_string(data: if len(stringVal) > 0: addr stringVal[0] else: nil, len: csize_t(len(stringVal))), struct_seaqt_string(data: if len(format) > 0: addr format[0] else: nil, len: csize_t(len(format)))), owned: true)

proc fromString*(_: type gen_qdatetime_types.QDateTime, stringVal: openArray[char], format: openArray[char], baseYear: cint, cal: gen_qcalendar_types.QCalendar): gen_qdatetime_types.QDateTime =
  gen_qdatetime_types.QDateTime(h: fcQDateTime_fromString_QString_QStringInt_QCalendar(struct_seaqt_string(data: if len(stringVal) > 0: addr stringVal[0] else: nil, len: csize_t(len(stringVal))), struct_seaqt_string(data: if len(format) > 0: addr format[0] else: nil, len: csize_t(len(format))), baseYear, cal.h), owned: true)

proc fromMSecsSinceEpoch*(_: type gen_qdatetime_types.QDateTime, msecs: clonglong, spec: cint): gen_qdatetime_types.QDateTime =
  gen_qdatetime_types.QDateTime(h: fcQDateTime_fromMSecsSinceEpochMsecsSpec(msecs, cint(spec)), owned: true)

proc fromSecsSinceEpoch*(_: type gen_qdatetime_types.QDateTime, secs: clonglong, spec: cint): gen_qdatetime_types.QDateTime =
  gen_qdatetime_types.QDateTime(h: fcQDateTime_fromSecsSinceEpochSecsSpec(secs, cint(spec)), owned: true)

proc fromMSecsSinceEpoch*(_: type gen_qdatetime_types.QDateTime, msecs: clonglong, timeZone: gen_qtimezone_types.QTimeZone): gen_qdatetime_types.QDateTime =
  gen_qdatetime_types.QDateTime(h: fcQDateTime_fromMSecsSinceEpochMsecsTimeZone(msecs, timeZone.h), owned: true)

proc fromSecsSinceEpoch*(_: type gen_qdatetime_types.QDateTime, secs: clonglong, timeZone: gen_qtimezone_types.QTimeZone): gen_qdatetime_types.QDateTime =
  gen_qdatetime_types.QDateTime(h: fcQDateTime_fromSecsSinceEpochSecsTimeZone(secs, timeZone.h), owned: true)

proc fromMSecsSinceEpoch*(_: type gen_qdatetime_types.QDateTime, msecs: clonglong): gen_qdatetime_types.QDateTime =
  gen_qdatetime_types.QDateTime(h: fcQDateTime_fromMSecsSinceEpochMsecs(msecs), owned: true)

proc fromSecsSinceEpoch*(_: type gen_qdatetime_types.QDateTime, secs: clonglong): gen_qdatetime_types.QDateTime =
  gen_qdatetime_types.QDateTime(h: fcQDateTime_fromSecsSinceEpochSecs(secs), owned: true)

proc currentMSecsSinceEpoch*(_: type gen_qdatetime_types.QDateTime): clonglong =
  fcQDateTime_currentMSecsSinceEpoch()

proc currentSecsSinceEpoch*(_: type gen_qdatetime_types.QDateTime): clonglong =
  fcQDateTime_currentSecsSinceEpoch()

proc setDate*(self: gen_qdatetime_types.QDateTime, date: gen_qdatetime_types.QDate, resolve: cint): void =
  fcQDateTime_setDateDateResolve(self.h, date.h, cint(resolve))

proc setTime*(self: gen_qdatetime_types.QDateTime, time: gen_qdatetime_types.QTime, resolve: cint): void =
  fcQDateTime_setTimeTimeResolve(self.h, time.h, cint(resolve))

proc setTimeZone*(self: gen_qdatetime_types.QDateTime, toZone: gen_qtimezone_types.QTimeZone, resolve: cint): void =
  fcQDateTime_setTimeZoneToZoneResolve(self.h, toZone.h, cint(resolve))

proc toString*(self: gen_qdatetime_types.QDateTime, format: cint): string =
  let v_ms = fcQDateTime_toString_Qt_DateFormat(self.h, cint(format))
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc fromString*(_: type gen_qdatetime_types.QDateTime, stringVal: openArray[char], format: cint): gen_qdatetime_types.QDateTime =
  gen_qdatetime_types.QDateTime(h: fcQDateTime_fromString_QString_Qt_DateFormat(struct_seaqt_string(data: if len(stringVal) > 0: addr stringVal[0] else: nil, len: csize_t(len(stringVal))), cint(format)), owned: true)

proc fromString*(_: type gen_qdatetime_types.QDateTime, stringVal: openArray[char], format: openArray[char], baseYear: cint): gen_qdatetime_types.QDateTime =
  gen_qdatetime_types.QDateTime(h: fcQDateTime_fromString_QString_QStringInt(struct_seaqt_string(data: if len(stringVal) > 0: addr stringVal[0] else: nil, len: csize_t(len(stringVal))), struct_seaqt_string(data: if len(format) > 0: addr format[0] else: nil, len: csize_t(len(format))), baseYear), owned: true)

proc fromMSecsSinceEpoch*(_: type gen_qdatetime_types.QDateTime, msecs: clonglong, spec: cint, offsetFromUtc: cint): gen_qdatetime_types.QDateTime =
  gen_qdatetime_types.QDateTime(h: fcQDateTime_fromMSecsSinceEpochMsecsSpecOffsetFromUtc(msecs, cint(spec), offsetFromUtc), owned: true)

proc fromSecsSinceEpoch*(_: type gen_qdatetime_types.QDateTime, secs: clonglong, spec: cint, offsetFromUtc: cint): gen_qdatetime_types.QDateTime =
  gen_qdatetime_types.QDateTime(h: fcQDateTime_fromSecsSinceEpochSecsSpecOffsetFromUtc(secs, cint(spec), offsetFromUtc), owned: true)

proc create*(T: type gen_qdatetime_types.QDateTime): gen_qdatetime_types.QDateTime =
  let tmp = gen_qdatetime_types.QDateTime(h: fcQDateTime_new(), owned: true)
  tmp
proc create*(T: type gen_qdatetime_types.QDateTime,
    date: gen_qdatetime_types.QDate, time: gen_qdatetime_types.QTime, spec: cint): gen_qdatetime_types.QDateTime =
  let tmp = gen_qdatetime_types.QDateTime(h: fcQDateTime_new2(date.h, time.h, cint(spec)), owned: true)
  tmp
proc create*(T: type gen_qdatetime_types.QDateTime,
    date: gen_qdatetime_types.QDate, time: gen_qdatetime_types.QTime, timeZone: gen_qtimezone_types.QTimeZone): gen_qdatetime_types.QDateTime =
  let tmp = gen_qdatetime_types.QDateTime(h: fcQDateTime_new3(date.h, time.h, timeZone.h), owned: true)
  tmp
proc create*(T: type gen_qdatetime_types.QDateTime,
    date: gen_qdatetime_types.QDate, time: gen_qdatetime_types.QTime): gen_qdatetime_types.QDateTime =
  let tmp = gen_qdatetime_types.QDateTime(h: fcQDateTime_new4(date.h, time.h), owned: true)
  tmp
proc create*(T: type gen_qdatetime_types.QDateTime,
    fromVal: gen_qdatetime_types.QDateTime): gen_qdatetime_types.QDateTime =
  let tmp = gen_qdatetime_types.QDateTime(h: fcQDateTime_new5(fromVal.h), owned: true)
  tmp
proc create*(T: type gen_qdatetime_types.QDateTime,
    date: gen_qdatetime_types.QDate, time: gen_qdatetime_types.QTime, spec: cint, offsetSeconds: cint): gen_qdatetime_types.QDateTime =
  let tmp = gen_qdatetime_types.QDateTime(h: fcQDateTime_new6(date.h, time.h, cint(spec), offsetSeconds), owned: true)
  tmp
proc create*(T: type gen_qdatetime_types.QDateTime,
    date: gen_qdatetime_types.QDate, time: gen_qdatetime_types.QTime, timeZone: gen_qtimezone_types.QTimeZone, resolve: cint): gen_qdatetime_types.QDateTime =
  let tmp = gen_qdatetime_types.QDateTime(h: fcQDateTime_new7(date.h, time.h, timeZone.h, cint(resolve)), owned: true)
  tmp
proc create2*(T: type gen_qdatetime_types.QDateTime,
    date: gen_qdatetime_types.QDate, time: gen_qdatetime_types.QTime, resolve: cint): gen_qdatetime_types.QDateTime =
  let tmp = gen_qdatetime_types.QDateTime(h: fcQDateTime_new8(date.h, time.h, cint(resolve)), owned: true)
  tmp
