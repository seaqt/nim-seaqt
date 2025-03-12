import ./Qt5Core_libs

{.push raises: [].}

from system/ansi_c import c_free, c_malloc

type
  struct_miqt_string {.used.} = object
    len: csize_t
    data: cstring

  struct_miqt_array {.used.} = object
    len: csize_t
    data: pointer

  struct_miqt_map {.used.} = object
    len: csize_t
    keys: pointer
    values: pointer

  miqt_uintptr_t {.importc: "uintptr_t", header: "stdint.h", used.} = uint
  miqt_intptr_t {.importc: "intptr_t", header: "stdint.h", used.} = int

func fromBytes(T: type string, v: openArray[byte]): string {.used.} =
  if v.len > 0:
    result = newString(v.len)
    when nimvm:
      for i, c in v:
        result[i] = cast[char](c)
    else:
      copyMem(addr result[0], unsafeAddr v[0], v.len)


type QDateMonthNameTypeEnum* = distinct cint
template DateFormat*(_: type QDateMonthNameTypeEnum): untyped = 0
template StandaloneFormat*(_: type QDateMonthNameTypeEnum): untyped = 1


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
proc fcQDate_yearWithCal(self: pointer, cal: pointer): cint {.importc: "QDate_yearWithCal".}
proc fcQDate_monthWithCal(self: pointer, cal: pointer): cint {.importc: "QDate_monthWithCal".}
proc fcQDate_dayWithCal(self: pointer, cal: pointer): cint {.importc: "QDate_dayWithCal".}
proc fcQDate_dayOfWeekWithCal(self: pointer, cal: pointer): cint {.importc: "QDate_dayOfWeekWithCal".}
proc fcQDate_dayOfYearWithCal(self: pointer, cal: pointer): cint {.importc: "QDate_dayOfYearWithCal".}
proc fcQDate_daysInMonthWithCal(self: pointer, cal: pointer): cint {.importc: "QDate_daysInMonthWithCal".}
proc fcQDate_daysInYearWithCal(self: pointer, cal: pointer): cint {.importc: "QDate_daysInYearWithCal".}
proc fcQDate_startOfDay(self: pointer): pointer {.importc: "QDate_startOfDay".}
proc fcQDate_endOfDay(self: pointer): pointer {.importc: "QDate_endOfDay".}
proc fcQDate_startOfDayWithZone(self: pointer, zone: pointer): pointer {.importc: "QDate_startOfDayWithZone".}
proc fcQDate_endOfDayWithZone(self: pointer, zone: pointer): pointer {.importc: "QDate_endOfDayWithZone".}
proc fcQDate_shortMonthName(month: cint): struct_miqt_string {.importc: "QDate_shortMonthName".}
proc fcQDate_shortDayName(weekday: cint): struct_miqt_string {.importc: "QDate_shortDayName".}
proc fcQDate_longMonthName(month: cint): struct_miqt_string {.importc: "QDate_longMonthName".}
proc fcQDate_longDayName(weekday: cint): struct_miqt_string {.importc: "QDate_longDayName".}
proc fcQDate_toString(self: pointer): struct_miqt_string {.importc: "QDate_toString".}
proc fcQDate_toString2(self: pointer, format: cint, cal: pointer): struct_miqt_string {.importc: "QDate_toString2".}
proc fcQDate_toStringWithFormat(self: pointer, format: struct_miqt_string): struct_miqt_string {.importc: "QDate_toStringWithFormat".}
proc fcQDate_toString3(self: pointer, format: struct_miqt_string, cal: pointer): struct_miqt_string {.importc: "QDate_toString3".}
proc fcQDate_setDate(self: pointer, year: cint, month: cint, day: cint): bool {.importc: "QDate_setDate".}
proc fcQDate_setDate2(self: pointer, year: cint, month: cint, day: cint, cal: pointer): bool {.importc: "QDate_setDate2".}
proc fcQDate_getDate(self: pointer, year: ptr cint, month: ptr cint, day: ptr cint): void {.importc: "QDate_getDate".}
proc fcQDate_getDate2(self: pointer, year: ptr cint, month: ptr cint, day: ptr cint): void {.importc: "QDate_getDate2".}
proc fcQDate_addDays(self: pointer, days: clonglong): pointer {.importc: "QDate_addDays".}
proc fcQDate_addMonths(self: pointer, months: cint): pointer {.importc: "QDate_addMonths".}
proc fcQDate_addYears(self: pointer, years: cint): pointer {.importc: "QDate_addYears".}
proc fcQDate_addMonths2(self: pointer, months: cint, cal: pointer): pointer {.importc: "QDate_addMonths2".}
proc fcQDate_addYears2(self: pointer, years: cint, cal: pointer): pointer {.importc: "QDate_addYears2".}
proc fcQDate_daysTo(self: pointer, param1: pointer): clonglong {.importc: "QDate_daysTo".}
proc fcQDate_operatorEqual(self: pointer, other: pointer): bool {.importc: "QDate_operatorEqual".}
proc fcQDate_operatorNotEqual(self: pointer, other: pointer): bool {.importc: "QDate_operatorNotEqual".}
proc fcQDate_operatorLesser(self: pointer, other: pointer): bool {.importc: "QDate_operatorLesser".}
proc fcQDate_operatorLesserOrEqual(self: pointer, other: pointer): bool {.importc: "QDate_operatorLesserOrEqual".}
proc fcQDate_operatorGreater(self: pointer, other: pointer): bool {.importc: "QDate_operatorGreater".}
proc fcQDate_operatorGreaterOrEqual(self: pointer, other: pointer): bool {.importc: "QDate_operatorGreaterOrEqual".}
proc fcQDate_currentDate(): pointer {.importc: "QDate_currentDate".}
proc fcQDate_fromString(s: struct_miqt_string): pointer {.importc: "QDate_fromString".}
proc fcQDate_fromString2(s: struct_miqt_string, format: struct_miqt_string): pointer {.importc: "QDate_fromString2".}
proc fcQDate_fromString3(s: struct_miqt_string, format: struct_miqt_string, cal: pointer): pointer {.importc: "QDate_fromString3".}
proc fcQDate_isValid2(y: cint, m: cint, d: cint): bool {.importc: "QDate_isValid2".}
proc fcQDate_isLeapYear(year: cint): bool {.importc: "QDate_isLeapYear".}
proc fcQDate_fromJulianDay(jd_x: clonglong): pointer {.importc: "QDate_fromJulianDay".}
proc fcQDate_toJulianDay(self: pointer): clonglong {.importc: "QDate_toJulianDay".}
proc fcQDate_weekNumber1(self: pointer, yearNum: ptr cint): cint {.importc: "QDate_weekNumber1".}
proc fcQDate_startOfDay1(self: pointer, spec: cint): pointer {.importc: "QDate_startOfDay1".}
proc fcQDate_startOfDay2(self: pointer, spec: cint, offsetSeconds: cint): pointer {.importc: "QDate_startOfDay2".}
proc fcQDate_endOfDay1(self: pointer, spec: cint): pointer {.importc: "QDate_endOfDay1".}
proc fcQDate_endOfDay2(self: pointer, spec: cint, offsetSeconds: cint): pointer {.importc: "QDate_endOfDay2".}
proc fcQDate_shortMonthName2(month: cint, typeVal: cint): struct_miqt_string {.importc: "QDate_shortMonthName2".}
proc fcQDate_shortDayName2(weekday: cint, typeVal: cint): struct_miqt_string {.importc: "QDate_shortDayName2".}
proc fcQDate_longMonthName2(month: cint, typeVal: cint): struct_miqt_string {.importc: "QDate_longMonthName2".}
proc fcQDate_longDayName2(weekday: cint, typeVal: cint): struct_miqt_string {.importc: "QDate_longDayName2".}
proc fcQDate_toString1(self: pointer, format: cint): struct_miqt_string {.importc: "QDate_toString1".}
proc fcQDate_fromString22(s: struct_miqt_string, f: cint): pointer {.importc: "QDate_fromString22".}
proc fcQDate_new(): ptr cQDate {.importc: "QDate_new".}
proc fcQDate_new2(y: cint, m: cint, d: cint): ptr cQDate {.importc: "QDate_new2".}
proc fcQDate_new3(y: cint, m: cint, d: cint, cal: pointer): ptr cQDate {.importc: "QDate_new3".}
proc fcQDate_new4(param1: pointer): ptr cQDate {.importc: "QDate_new4".}
proc fcQTime_isNull(self: pointer): bool {.importc: "QTime_isNull".}
proc fcQTime_isValid(self: pointer): bool {.importc: "QTime_isValid".}
proc fcQTime_hour(self: pointer): cint {.importc: "QTime_hour".}
proc fcQTime_minute(self: pointer): cint {.importc: "QTime_minute".}
proc fcQTime_second(self: pointer): cint {.importc: "QTime_second".}
proc fcQTime_msec(self: pointer): cint {.importc: "QTime_msec".}
proc fcQTime_toString(self: pointer): struct_miqt_string {.importc: "QTime_toString".}
proc fcQTime_toStringWithFormat(self: pointer, format: struct_miqt_string): struct_miqt_string {.importc: "QTime_toStringWithFormat".}
proc fcQTime_setHMS(self: pointer, h: cint, m: cint, s: cint): bool {.importc: "QTime_setHMS".}
proc fcQTime_addSecs(self: pointer, secs: cint): pointer {.importc: "QTime_addSecs".}
proc fcQTime_secsTo(self: pointer, param1: pointer): cint {.importc: "QTime_secsTo".}
proc fcQTime_addMSecs(self: pointer, ms: cint): pointer {.importc: "QTime_addMSecs".}
proc fcQTime_msecsTo(self: pointer, param1: pointer): cint {.importc: "QTime_msecsTo".}
proc fcQTime_operatorEqual(self: pointer, other: pointer): bool {.importc: "QTime_operatorEqual".}
proc fcQTime_operatorNotEqual(self: pointer, other: pointer): bool {.importc: "QTime_operatorNotEqual".}
proc fcQTime_operatorLesser(self: pointer, other: pointer): bool {.importc: "QTime_operatorLesser".}
proc fcQTime_operatorLesserOrEqual(self: pointer, other: pointer): bool {.importc: "QTime_operatorLesserOrEqual".}
proc fcQTime_operatorGreater(self: pointer, other: pointer): bool {.importc: "QTime_operatorGreater".}
proc fcQTime_operatorGreaterOrEqual(self: pointer, other: pointer): bool {.importc: "QTime_operatorGreaterOrEqual".}
proc fcQTime_fromMSecsSinceStartOfDay(msecs: cint): pointer {.importc: "QTime_fromMSecsSinceStartOfDay".}
proc fcQTime_msecsSinceStartOfDay(self: pointer): cint {.importc: "QTime_msecsSinceStartOfDay".}
proc fcQTime_currentTime(): pointer {.importc: "QTime_currentTime".}
proc fcQTime_fromString(s: struct_miqt_string): pointer {.importc: "QTime_fromString".}
proc fcQTime_fromString2(s: struct_miqt_string, format: struct_miqt_string): pointer {.importc: "QTime_fromString2".}
proc fcQTime_isValid2(h: cint, m: cint, s: cint): bool {.importc: "QTime_isValid2".}
proc fcQTime_start(self: pointer): void {.importc: "QTime_start".}
proc fcQTime_restart(self: pointer): cint {.importc: "QTime_restart".}
proc fcQTime_elapsed(self: pointer): cint {.importc: "QTime_elapsed".}
proc fcQTime_toString1(self: pointer, f: cint): struct_miqt_string {.importc: "QTime_toString1".}
proc fcQTime_setHMS4(self: pointer, h: cint, m: cint, s: cint, ms: cint): bool {.importc: "QTime_setHMS4".}
proc fcQTime_fromString22(s: struct_miqt_string, f: cint): pointer {.importc: "QTime_fromString22".}
proc fcQTime_isValid4(h: cint, m: cint, s: cint, ms: cint): bool {.importc: "QTime_isValid4".}
proc fcQTime_new(): ptr cQTime {.importc: "QTime_new".}
proc fcQTime_new2(h: cint, m: cint): ptr cQTime {.importc: "QTime_new2".}
proc fcQTime_new3(param1: pointer): ptr cQTime {.importc: "QTime_new3".}
proc fcQTime_new4(h: cint, m: cint, s: cint): ptr cQTime {.importc: "QTime_new4".}
proc fcQTime_new5(h: cint, m: cint, s: cint, ms: cint): ptr cQTime {.importc: "QTime_new5".}
proc fcQDateTime_operatorAssign(self: pointer, other: pointer): void {.importc: "QDateTime_operatorAssign".}
proc fcQDateTime_swap(self: pointer, other: pointer): void {.importc: "QDateTime_swap".}
proc fcQDateTime_isNull(self: pointer): bool {.importc: "QDateTime_isNull".}
proc fcQDateTime_isValid(self: pointer): bool {.importc: "QDateTime_isValid".}
proc fcQDateTime_date(self: pointer): pointer {.importc: "QDateTime_date".}
proc fcQDateTime_time(self: pointer): pointer {.importc: "QDateTime_time".}
proc fcQDateTime_timeSpec(self: pointer): cint {.importc: "QDateTime_timeSpec".}
proc fcQDateTime_offsetFromUtc(self: pointer): cint {.importc: "QDateTime_offsetFromUtc".}
proc fcQDateTime_timeZone(self: pointer): pointer {.importc: "QDateTime_timeZone".}
proc fcQDateTime_timeZoneAbbreviation(self: pointer): struct_miqt_string {.importc: "QDateTime_timeZoneAbbreviation".}
proc fcQDateTime_isDaylightTime(self: pointer): bool {.importc: "QDateTime_isDaylightTime".}
proc fcQDateTime_toMSecsSinceEpoch(self: pointer): clonglong {.importc: "QDateTime_toMSecsSinceEpoch".}
proc fcQDateTime_toSecsSinceEpoch(self: pointer): clonglong {.importc: "QDateTime_toSecsSinceEpoch".}
proc fcQDateTime_setDate(self: pointer, date: pointer): void {.importc: "QDateTime_setDate".}
proc fcQDateTime_setTime(self: pointer, time: pointer): void {.importc: "QDateTime_setTime".}
proc fcQDateTime_setTimeSpec(self: pointer, spec: cint): void {.importc: "QDateTime_setTimeSpec".}
proc fcQDateTime_setOffsetFromUtc(self: pointer, offsetSeconds: cint): void {.importc: "QDateTime_setOffsetFromUtc".}
proc fcQDateTime_setTimeZone(self: pointer, toZone: pointer): void {.importc: "QDateTime_setTimeZone".}
proc fcQDateTime_setMSecsSinceEpoch(self: pointer, msecs: clonglong): void {.importc: "QDateTime_setMSecsSinceEpoch".}
proc fcQDateTime_setSecsSinceEpoch(self: pointer, secs: clonglong): void {.importc: "QDateTime_setSecsSinceEpoch".}
proc fcQDateTime_toString(self: pointer): struct_miqt_string {.importc: "QDateTime_toString".}
proc fcQDateTime_toStringWithFormat(self: pointer, format: struct_miqt_string): struct_miqt_string {.importc: "QDateTime_toStringWithFormat".}
proc fcQDateTime_toString2(self: pointer, format: struct_miqt_string, cal: pointer): struct_miqt_string {.importc: "QDateTime_toString2".}
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
proc fcQDateTime_operatorEqual(self: pointer, other: pointer): bool {.importc: "QDateTime_operatorEqual".}
proc fcQDateTime_operatorNotEqual(self: pointer, other: pointer): bool {.importc: "QDateTime_operatorNotEqual".}
proc fcQDateTime_operatorLesser(self: pointer, other: pointer): bool {.importc: "QDateTime_operatorLesser".}
proc fcQDateTime_operatorLesserOrEqual(self: pointer, other: pointer): bool {.importc: "QDateTime_operatorLesserOrEqual".}
proc fcQDateTime_operatorGreater(self: pointer, other: pointer): bool {.importc: "QDateTime_operatorGreater".}
proc fcQDateTime_operatorGreaterOrEqual(self: pointer, other: pointer): bool {.importc: "QDateTime_operatorGreaterOrEqual".}
proc fcQDateTime_setUtcOffset(self: pointer, seconds: cint): void {.importc: "QDateTime_setUtcOffset".}
proc fcQDateTime_utcOffset(self: pointer): cint {.importc: "QDateTime_utcOffset".}
proc fcQDateTime_currentDateTime(): pointer {.importc: "QDateTime_currentDateTime".}
proc fcQDateTime_currentDateTimeUtc(): pointer {.importc: "QDateTime_currentDateTimeUtc".}
proc fcQDateTime_fromString(s: struct_miqt_string): pointer {.importc: "QDateTime_fromString".}
proc fcQDateTime_fromString2(s: struct_miqt_string, format: struct_miqt_string): pointer {.importc: "QDateTime_fromString2".}
proc fcQDateTime_fromString3(s: struct_miqt_string, format: struct_miqt_string, cal: pointer): pointer {.importc: "QDateTime_fromString3".}
proc fcQDateTime_toTimeT(self: pointer): cuint {.importc: "QDateTime_toTimeT".}
proc fcQDateTime_setTimeT(self: pointer, secsSince1Jan1970UTC: cuint): void {.importc: "QDateTime_setTimeT".}
proc fcQDateTime_fromTimeT(secsSince1Jan1970UTC: cuint): pointer {.importc: "QDateTime_fromTimeT".}
proc fcQDateTime_fromTimeT2(secsSince1Jan1970UTC: cuint, spec: cint): pointer {.importc: "QDateTime_fromTimeT2".}
proc fcQDateTime_fromTimeT3(secsSince1Jan1970UTC: cuint, timeZone: pointer): pointer {.importc: "QDateTime_fromTimeT3".}
proc fcQDateTime_fromMSecsSinceEpoch(msecs: clonglong): pointer {.importc: "QDateTime_fromMSecsSinceEpoch".}
proc fcQDateTime_fromMSecsSinceEpoch2(msecs: clonglong, spec: cint): pointer {.importc: "QDateTime_fromMSecsSinceEpoch2".}
proc fcQDateTime_fromSecsSinceEpoch(secs: clonglong): pointer {.importc: "QDateTime_fromSecsSinceEpoch".}
proc fcQDateTime_fromMSecsSinceEpoch3(msecs: clonglong, timeZone: pointer): pointer {.importc: "QDateTime_fromMSecsSinceEpoch3".}
proc fcQDateTime_fromSecsSinceEpoch2(secs: clonglong, timeZone: pointer): pointer {.importc: "QDateTime_fromSecsSinceEpoch2".}
proc fcQDateTime_currentMSecsSinceEpoch(): clonglong {.importc: "QDateTime_currentMSecsSinceEpoch".}
proc fcQDateTime_currentSecsSinceEpoch(): clonglong {.importc: "QDateTime_currentSecsSinceEpoch".}
proc fcQDateTime_toString1(self: pointer, format: cint): struct_miqt_string {.importc: "QDateTime_toString1".}
proc fcQDateTime_fromString22(s: struct_miqt_string, f: cint): pointer {.importc: "QDateTime_fromString22".}
proc fcQDateTime_fromTimeT32(secsSince1Jan1970UTC: cuint, spec: cint, offsetFromUtc: cint): pointer {.importc: "QDateTime_fromTimeT32".}
proc fcQDateTime_fromMSecsSinceEpoch32(msecs: clonglong, spec: cint, offsetFromUtc: cint): pointer {.importc: "QDateTime_fromMSecsSinceEpoch32".}
proc fcQDateTime_fromSecsSinceEpoch22(secs: clonglong, spe: cint): pointer {.importc: "QDateTime_fromSecsSinceEpoch22".}
proc fcQDateTime_fromSecsSinceEpoch3(secs: clonglong, spe: cint, offsetFromUtc: cint): pointer {.importc: "QDateTime_fromSecsSinceEpoch3".}
proc fcQDateTime_new(param1: pointer): ptr cQDateTime {.importc: "QDateTime_new".}
proc fcQDateTime_new2(param1: pointer, param2: pointer): ptr cQDateTime {.importc: "QDateTime_new2".}
proc fcQDateTime_new3(date: pointer, time: pointer, spec: cint, offsetSeconds: cint): ptr cQDateTime {.importc: "QDateTime_new3".}
proc fcQDateTime_new4(date: pointer, time: pointer, timeZone: pointer): ptr cQDateTime {.importc: "QDateTime_new4".}
proc fcQDateTime_new5(other: pointer): ptr cQDateTime {.importc: "QDateTime_new5".}
proc fcQDateTime_new6(param1: pointer, param2: pointer, spec: cint): ptr cQDateTime {.importc: "QDateTime_new6".}

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
  fcQDate_yearWithCal(self.h, cal.h)

proc month*(self: gen_qdatetime_types.QDate, cal: gen_qcalendar_types.QCalendar): cint =
  fcQDate_monthWithCal(self.h, cal.h)

proc day*(self: gen_qdatetime_types.QDate, cal: gen_qcalendar_types.QCalendar): cint =
  fcQDate_dayWithCal(self.h, cal.h)

proc dayOfWeek*(self: gen_qdatetime_types.QDate, cal: gen_qcalendar_types.QCalendar): cint =
  fcQDate_dayOfWeekWithCal(self.h, cal.h)

proc dayOfYear*(self: gen_qdatetime_types.QDate, cal: gen_qcalendar_types.QCalendar): cint =
  fcQDate_dayOfYearWithCal(self.h, cal.h)

proc daysInMonth*(self: gen_qdatetime_types.QDate, cal: gen_qcalendar_types.QCalendar): cint =
  fcQDate_daysInMonthWithCal(self.h, cal.h)

proc daysInYear*(self: gen_qdatetime_types.QDate, cal: gen_qcalendar_types.QCalendar): cint =
  fcQDate_daysInYearWithCal(self.h, cal.h)

proc startOfDay*(self: gen_qdatetime_types.QDate): gen_qdatetime_types.QDateTime =
  gen_qdatetime_types.QDateTime(h: fcQDate_startOfDay(self.h), owned: true)

proc endOfDay*(self: gen_qdatetime_types.QDate): gen_qdatetime_types.QDateTime =
  gen_qdatetime_types.QDateTime(h: fcQDate_endOfDay(self.h), owned: true)

proc startOfDay*(self: gen_qdatetime_types.QDate, zone: gen_qtimezone_types.QTimeZone): gen_qdatetime_types.QDateTime =
  gen_qdatetime_types.QDateTime(h: fcQDate_startOfDayWithZone(self.h, zone.h), owned: true)

proc endOfDay*(self: gen_qdatetime_types.QDate, zone: gen_qtimezone_types.QTimeZone): gen_qdatetime_types.QDateTime =
  gen_qdatetime_types.QDateTime(h: fcQDate_endOfDayWithZone(self.h, zone.h), owned: true)

proc shortMonthName*(_: type gen_qdatetime_types.QDate, month: cint): string =
  let v_ms = fcQDate_shortMonthName(month)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc shortDayName*(_: type gen_qdatetime_types.QDate, weekday: cint): string =
  let v_ms = fcQDate_shortDayName(weekday)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc longMonthName*(_: type gen_qdatetime_types.QDate, month: cint): string =
  let v_ms = fcQDate_longMonthName(month)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc longDayName*(_: type gen_qdatetime_types.QDate, weekday: cint): string =
  let v_ms = fcQDate_longDayName(weekday)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc toString*(self: gen_qdatetime_types.QDate): string =
  let v_ms = fcQDate_toString(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc toString*(self: gen_qdatetime_types.QDate, format: cint, cal: gen_qcalendar_types.QCalendar): string =
  let v_ms = fcQDate_toString2(self.h, cint(format), cal.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc toString*(self: gen_qdatetime_types.QDate, format: string): string =
  let v_ms = fcQDate_toStringWithFormat(self.h, struct_miqt_string(data: format, len: csize_t(len(format))))
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc toString*(self: gen_qdatetime_types.QDate, format: string, cal: gen_qcalendar_types.QCalendar): string =
  let v_ms = fcQDate_toString3(self.h, struct_miqt_string(data: format, len: csize_t(len(format))), cal.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setDate*(self: gen_qdatetime_types.QDate, year: cint, month: cint, day: cint): bool =
  fcQDate_setDate(self.h, year, month, day)

proc setDate*(self: gen_qdatetime_types.QDate, year: cint, month: cint, day: cint, cal: gen_qcalendar_types.QCalendar): bool =
  fcQDate_setDate2(self.h, year, month, day, cal.h)

proc getDate*(self: gen_qdatetime_types.QDate, year: ptr cint, month: ptr cint, day: ptr cint): void =
  fcQDate_getDate(self.h, year, month, day)

proc getDate2*(self: gen_qdatetime_types.QDate, year: ptr cint, month: ptr cint, day: ptr cint): void =
  fcQDate_getDate2(self.h, year, month, day)

proc addDays*(self: gen_qdatetime_types.QDate, days: clonglong): gen_qdatetime_types.QDate =
  gen_qdatetime_types.QDate(h: fcQDate_addDays(self.h, days), owned: true)

proc addMonths*(self: gen_qdatetime_types.QDate, months: cint): gen_qdatetime_types.QDate =
  gen_qdatetime_types.QDate(h: fcQDate_addMonths(self.h, months), owned: true)

proc addYears*(self: gen_qdatetime_types.QDate, years: cint): gen_qdatetime_types.QDate =
  gen_qdatetime_types.QDate(h: fcQDate_addYears(self.h, years), owned: true)

proc addMonths*(self: gen_qdatetime_types.QDate, months: cint, cal: gen_qcalendar_types.QCalendar): gen_qdatetime_types.QDate =
  gen_qdatetime_types.QDate(h: fcQDate_addMonths2(self.h, months, cal.h), owned: true)

proc addYears*(self: gen_qdatetime_types.QDate, years: cint, cal: gen_qcalendar_types.QCalendar): gen_qdatetime_types.QDate =
  gen_qdatetime_types.QDate(h: fcQDate_addYears2(self.h, years, cal.h), owned: true)

proc daysTo*(self: gen_qdatetime_types.QDate, param1: gen_qdatetime_types.QDate): clonglong =
  fcQDate_daysTo(self.h, param1.h)

proc operatorEqual*(self: gen_qdatetime_types.QDate, other: gen_qdatetime_types.QDate): bool =
  fcQDate_operatorEqual(self.h, other.h)

proc operatorNotEqual*(self: gen_qdatetime_types.QDate, other: gen_qdatetime_types.QDate): bool =
  fcQDate_operatorNotEqual(self.h, other.h)

proc operatorLesser*(self: gen_qdatetime_types.QDate, other: gen_qdatetime_types.QDate): bool =
  fcQDate_operatorLesser(self.h, other.h)

proc operatorLesserOrEqual*(self: gen_qdatetime_types.QDate, other: gen_qdatetime_types.QDate): bool =
  fcQDate_operatorLesserOrEqual(self.h, other.h)

proc operatorGreater*(self: gen_qdatetime_types.QDate, other: gen_qdatetime_types.QDate): bool =
  fcQDate_operatorGreater(self.h, other.h)

proc operatorGreaterOrEqual*(self: gen_qdatetime_types.QDate, other: gen_qdatetime_types.QDate): bool =
  fcQDate_operatorGreaterOrEqual(self.h, other.h)

proc currentDate*(_: type gen_qdatetime_types.QDate): gen_qdatetime_types.QDate =
  gen_qdatetime_types.QDate(h: fcQDate_currentDate(), owned: true)

proc fromString*(_: type gen_qdatetime_types.QDate, s: string): gen_qdatetime_types.QDate =
  gen_qdatetime_types.QDate(h: fcQDate_fromString(struct_miqt_string(data: s, len: csize_t(len(s)))), owned: true)

proc fromString*(_: type gen_qdatetime_types.QDate, s: string, format: string): gen_qdatetime_types.QDate =
  gen_qdatetime_types.QDate(h: fcQDate_fromString2(struct_miqt_string(data: s, len: csize_t(len(s))), struct_miqt_string(data: format, len: csize_t(len(format)))), owned: true)

proc fromString*(_: type gen_qdatetime_types.QDate, s: string, format: string, cal: gen_qcalendar_types.QCalendar): gen_qdatetime_types.QDate =
  gen_qdatetime_types.QDate(h: fcQDate_fromString3(struct_miqt_string(data: s, len: csize_t(len(s))), struct_miqt_string(data: format, len: csize_t(len(format))), cal.h), owned: true)

proc isValid*(_: type gen_qdatetime_types.QDate, y: cint, m: cint, d: cint): bool =
  fcQDate_isValid2(y, m, d)

proc isLeapYear*(_: type gen_qdatetime_types.QDate, year: cint): bool =
  fcQDate_isLeapYear(year)

proc fromJulianDay*(_: type gen_qdatetime_types.QDate, jd_x: clonglong): gen_qdatetime_types.QDate =
  gen_qdatetime_types.QDate(h: fcQDate_fromJulianDay(jd_x), owned: true)

proc toJulianDay*(self: gen_qdatetime_types.QDate): clonglong =
  fcQDate_toJulianDay(self.h)

proc weekNumber*(self: gen_qdatetime_types.QDate, yearNum: ptr cint): cint =
  fcQDate_weekNumber1(self.h, yearNum)

proc startOfDay*(self: gen_qdatetime_types.QDate, spec: cint): gen_qdatetime_types.QDateTime =
  gen_qdatetime_types.QDateTime(h: fcQDate_startOfDay1(self.h, cint(spec)), owned: true)

proc startOfDay*(self: gen_qdatetime_types.QDate, spec: cint, offsetSeconds: cint): gen_qdatetime_types.QDateTime =
  gen_qdatetime_types.QDateTime(h: fcQDate_startOfDay2(self.h, cint(spec), offsetSeconds), owned: true)

proc endOfDay*(self: gen_qdatetime_types.QDate, spec: cint): gen_qdatetime_types.QDateTime =
  gen_qdatetime_types.QDateTime(h: fcQDate_endOfDay1(self.h, cint(spec)), owned: true)

proc endOfDay*(self: gen_qdatetime_types.QDate, spec: cint, offsetSeconds: cint): gen_qdatetime_types.QDateTime =
  gen_qdatetime_types.QDateTime(h: fcQDate_endOfDay2(self.h, cint(spec), offsetSeconds), owned: true)

proc shortMonthName*(_: type gen_qdatetime_types.QDate, month: cint, typeVal: cint): string =
  let v_ms = fcQDate_shortMonthName2(month, cint(typeVal))
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc shortDayName*(_: type gen_qdatetime_types.QDate, weekday: cint, typeVal: cint): string =
  let v_ms = fcQDate_shortDayName2(weekday, cint(typeVal))
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc longMonthName*(_: type gen_qdatetime_types.QDate, month: cint, typeVal: cint): string =
  let v_ms = fcQDate_longMonthName2(month, cint(typeVal))
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc longDayName*(_: type gen_qdatetime_types.QDate, weekday: cint, typeVal: cint): string =
  let v_ms = fcQDate_longDayName2(weekday, cint(typeVal))
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc toString*(self: gen_qdatetime_types.QDate, format: cint): string =
  let v_ms = fcQDate_toString1(self.h, cint(format))
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc fromString*(_: type gen_qdatetime_types.QDate, s: string, f: cint): gen_qdatetime_types.QDate =
  gen_qdatetime_types.QDate(h: fcQDate_fromString22(struct_miqt_string(data: s, len: csize_t(len(s))), cint(f)), owned: true)

proc create*(T: type gen_qdatetime_types.QDate): gen_qdatetime_types.QDate =
  gen_qdatetime_types.QDate(h: fcQDate_new(), owned: true)

proc create*(T: type gen_qdatetime_types.QDate,
    y: cint, m: cint, d: cint): gen_qdatetime_types.QDate =
  gen_qdatetime_types.QDate(h: fcQDate_new2(y, m, d), owned: true)

proc create*(T: type gen_qdatetime_types.QDate,
    y: cint, m: cint, d: cint, cal: gen_qcalendar_types.QCalendar): gen_qdatetime_types.QDate =
  gen_qdatetime_types.QDate(h: fcQDate_new3(y, m, d, cal.h), owned: true)

proc create*(T: type gen_qdatetime_types.QDate,
    param1: gen_qdatetime_types.QDate): gen_qdatetime_types.QDate =
  gen_qdatetime_types.QDate(h: fcQDate_new4(param1.h), owned: true)

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
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc toString*(self: gen_qdatetime_types.QTime, format: string): string =
  let v_ms = fcQTime_toStringWithFormat(self.h, struct_miqt_string(data: format, len: csize_t(len(format))))
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setHMS*(self: gen_qdatetime_types.QTime, h: cint, m: cint, s: cint): bool =
  fcQTime_setHMS(self.h, h, m, s)

proc addSecs*(self: gen_qdatetime_types.QTime, secs: cint): gen_qdatetime_types.QTime =
  gen_qdatetime_types.QTime(h: fcQTime_addSecs(self.h, secs), owned: true)

proc secsTo*(self: gen_qdatetime_types.QTime, param1: gen_qdatetime_types.QTime): cint =
  fcQTime_secsTo(self.h, param1.h)

proc addMSecs*(self: gen_qdatetime_types.QTime, ms: cint): gen_qdatetime_types.QTime =
  gen_qdatetime_types.QTime(h: fcQTime_addMSecs(self.h, ms), owned: true)

proc msecsTo*(self: gen_qdatetime_types.QTime, param1: gen_qdatetime_types.QTime): cint =
  fcQTime_msecsTo(self.h, param1.h)

proc operatorEqual*(self: gen_qdatetime_types.QTime, other: gen_qdatetime_types.QTime): bool =
  fcQTime_operatorEqual(self.h, other.h)

proc operatorNotEqual*(self: gen_qdatetime_types.QTime, other: gen_qdatetime_types.QTime): bool =
  fcQTime_operatorNotEqual(self.h, other.h)

proc operatorLesser*(self: gen_qdatetime_types.QTime, other: gen_qdatetime_types.QTime): bool =
  fcQTime_operatorLesser(self.h, other.h)

proc operatorLesserOrEqual*(self: gen_qdatetime_types.QTime, other: gen_qdatetime_types.QTime): bool =
  fcQTime_operatorLesserOrEqual(self.h, other.h)

proc operatorGreater*(self: gen_qdatetime_types.QTime, other: gen_qdatetime_types.QTime): bool =
  fcQTime_operatorGreater(self.h, other.h)

proc operatorGreaterOrEqual*(self: gen_qdatetime_types.QTime, other: gen_qdatetime_types.QTime): bool =
  fcQTime_operatorGreaterOrEqual(self.h, other.h)

proc fromMSecsSinceStartOfDay*(_: type gen_qdatetime_types.QTime, msecs: cint): gen_qdatetime_types.QTime =
  gen_qdatetime_types.QTime(h: fcQTime_fromMSecsSinceStartOfDay(msecs), owned: true)

proc msecsSinceStartOfDay*(self: gen_qdatetime_types.QTime): cint =
  fcQTime_msecsSinceStartOfDay(self.h)

proc currentTime*(_: type gen_qdatetime_types.QTime): gen_qdatetime_types.QTime =
  gen_qdatetime_types.QTime(h: fcQTime_currentTime(), owned: true)

proc fromString*(_: type gen_qdatetime_types.QTime, s: string): gen_qdatetime_types.QTime =
  gen_qdatetime_types.QTime(h: fcQTime_fromString(struct_miqt_string(data: s, len: csize_t(len(s)))), owned: true)

proc fromString*(_: type gen_qdatetime_types.QTime, s: string, format: string): gen_qdatetime_types.QTime =
  gen_qdatetime_types.QTime(h: fcQTime_fromString2(struct_miqt_string(data: s, len: csize_t(len(s))), struct_miqt_string(data: format, len: csize_t(len(format)))), owned: true)

proc isValid*(_: type gen_qdatetime_types.QTime, h: cint, m: cint, s: cint): bool =
  fcQTime_isValid2(h, m, s)

proc start*(self: gen_qdatetime_types.QTime): void =
  fcQTime_start(self.h)

proc restart*(self: gen_qdatetime_types.QTime): cint =
  fcQTime_restart(self.h)

proc elapsed*(self: gen_qdatetime_types.QTime): cint =
  fcQTime_elapsed(self.h)

proc toString*(self: gen_qdatetime_types.QTime, f: cint): string =
  let v_ms = fcQTime_toString1(self.h, cint(f))
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setHMS*(self: gen_qdatetime_types.QTime, h: cint, m: cint, s: cint, ms: cint): bool =
  fcQTime_setHMS4(self.h, h, m, s, ms)

proc fromString*(_: type gen_qdatetime_types.QTime, s: string, f: cint): gen_qdatetime_types.QTime =
  gen_qdatetime_types.QTime(h: fcQTime_fromString22(struct_miqt_string(data: s, len: csize_t(len(s))), cint(f)), owned: true)

proc isValid*(_: type gen_qdatetime_types.QTime, h: cint, m: cint, s: cint, ms: cint): bool =
  fcQTime_isValid4(h, m, s, ms)

proc create*(T: type gen_qdatetime_types.QTime): gen_qdatetime_types.QTime =
  gen_qdatetime_types.QTime(h: fcQTime_new(), owned: true)

proc create*(T: type gen_qdatetime_types.QTime,
    h: cint, m: cint): gen_qdatetime_types.QTime =
  gen_qdatetime_types.QTime(h: fcQTime_new2(h, m), owned: true)

proc create*(T: type gen_qdatetime_types.QTime,
    param1: gen_qdatetime_types.QTime): gen_qdatetime_types.QTime =
  gen_qdatetime_types.QTime(h: fcQTime_new3(param1.h), owned: true)

proc create*(T: type gen_qdatetime_types.QTime,
    h: cint, m: cint, s: cint): gen_qdatetime_types.QTime =
  gen_qdatetime_types.QTime(h: fcQTime_new4(h, m, s), owned: true)

proc create*(T: type gen_qdatetime_types.QTime,
    h: cint, m: cint, s: cint, ms: cint): gen_qdatetime_types.QTime =
  gen_qdatetime_types.QTime(h: fcQTime_new5(h, m, s, ms), owned: true)

proc operatorAssign*(self: gen_qdatetime_types.QDateTime, other: gen_qdatetime_types.QDateTime): void =
  fcQDateTime_operatorAssign(self.h, other.h)

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

proc timeZone*(self: gen_qdatetime_types.QDateTime): gen_qtimezone_types.QTimeZone =
  gen_qtimezone_types.QTimeZone(h: fcQDateTime_timeZone(self.h), owned: true)

proc timeZoneAbbreviation*(self: gen_qdatetime_types.QDateTime): string =
  let v_ms = fcQDateTime_timeZoneAbbreviation(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc isDaylightTime*(self: gen_qdatetime_types.QDateTime): bool =
  fcQDateTime_isDaylightTime(self.h)

proc toMSecsSinceEpoch*(self: gen_qdatetime_types.QDateTime): clonglong =
  fcQDateTime_toMSecsSinceEpoch(self.h)

proc toSecsSinceEpoch*(self: gen_qdatetime_types.QDateTime): clonglong =
  fcQDateTime_toSecsSinceEpoch(self.h)

proc setDate*(self: gen_qdatetime_types.QDateTime, date: gen_qdatetime_types.QDate): void =
  fcQDateTime_setDate(self.h, date.h)

proc setTime*(self: gen_qdatetime_types.QDateTime, time: gen_qdatetime_types.QTime): void =
  fcQDateTime_setTime(self.h, time.h)

proc setTimeSpec*(self: gen_qdatetime_types.QDateTime, spec: cint): void =
  fcQDateTime_setTimeSpec(self.h, cint(spec))

proc setOffsetFromUtc*(self: gen_qdatetime_types.QDateTime, offsetSeconds: cint): void =
  fcQDateTime_setOffsetFromUtc(self.h, offsetSeconds)

proc setTimeZone*(self: gen_qdatetime_types.QDateTime, toZone: gen_qtimezone_types.QTimeZone): void =
  fcQDateTime_setTimeZone(self.h, toZone.h)

proc setMSecsSinceEpoch*(self: gen_qdatetime_types.QDateTime, msecs: clonglong): void =
  fcQDateTime_setMSecsSinceEpoch(self.h, msecs)

proc setSecsSinceEpoch*(self: gen_qdatetime_types.QDateTime, secs: clonglong): void =
  fcQDateTime_setSecsSinceEpoch(self.h, secs)

proc toString*(self: gen_qdatetime_types.QDateTime): string =
  let v_ms = fcQDateTime_toString(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc toString*(self: gen_qdatetime_types.QDateTime, format: string): string =
  let v_ms = fcQDateTime_toStringWithFormat(self.h, struct_miqt_string(data: format, len: csize_t(len(format))))
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc toString*(self: gen_qdatetime_types.QDateTime, format: string, cal: gen_qcalendar_types.QCalendar): string =
  let v_ms = fcQDateTime_toString2(self.h, struct_miqt_string(data: format, len: csize_t(len(format))), cal.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
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

proc operatorEqual*(self: gen_qdatetime_types.QDateTime, other: gen_qdatetime_types.QDateTime): bool =
  fcQDateTime_operatorEqual(self.h, other.h)

proc operatorNotEqual*(self: gen_qdatetime_types.QDateTime, other: gen_qdatetime_types.QDateTime): bool =
  fcQDateTime_operatorNotEqual(self.h, other.h)

proc operatorLesser*(self: gen_qdatetime_types.QDateTime, other: gen_qdatetime_types.QDateTime): bool =
  fcQDateTime_operatorLesser(self.h, other.h)

proc operatorLesserOrEqual*(self: gen_qdatetime_types.QDateTime, other: gen_qdatetime_types.QDateTime): bool =
  fcQDateTime_operatorLesserOrEqual(self.h, other.h)

proc operatorGreater*(self: gen_qdatetime_types.QDateTime, other: gen_qdatetime_types.QDateTime): bool =
  fcQDateTime_operatorGreater(self.h, other.h)

proc operatorGreaterOrEqual*(self: gen_qdatetime_types.QDateTime, other: gen_qdatetime_types.QDateTime): bool =
  fcQDateTime_operatorGreaterOrEqual(self.h, other.h)

proc setUtcOffset*(self: gen_qdatetime_types.QDateTime, seconds: cint): void =
  fcQDateTime_setUtcOffset(self.h, seconds)

proc utcOffset*(self: gen_qdatetime_types.QDateTime): cint =
  fcQDateTime_utcOffset(self.h)

proc currentDateTime*(_: type gen_qdatetime_types.QDateTime): gen_qdatetime_types.QDateTime =
  gen_qdatetime_types.QDateTime(h: fcQDateTime_currentDateTime(), owned: true)

proc currentDateTimeUtc*(_: type gen_qdatetime_types.QDateTime): gen_qdatetime_types.QDateTime =
  gen_qdatetime_types.QDateTime(h: fcQDateTime_currentDateTimeUtc(), owned: true)

proc fromString*(_: type gen_qdatetime_types.QDateTime, s: string): gen_qdatetime_types.QDateTime =
  gen_qdatetime_types.QDateTime(h: fcQDateTime_fromString(struct_miqt_string(data: s, len: csize_t(len(s)))), owned: true)

proc fromString*(_: type gen_qdatetime_types.QDateTime, s: string, format: string): gen_qdatetime_types.QDateTime =
  gen_qdatetime_types.QDateTime(h: fcQDateTime_fromString2(struct_miqt_string(data: s, len: csize_t(len(s))), struct_miqt_string(data: format, len: csize_t(len(format)))), owned: true)

proc fromString*(_: type gen_qdatetime_types.QDateTime, s: string, format: string, cal: gen_qcalendar_types.QCalendar): gen_qdatetime_types.QDateTime =
  gen_qdatetime_types.QDateTime(h: fcQDateTime_fromString3(struct_miqt_string(data: s, len: csize_t(len(s))), struct_miqt_string(data: format, len: csize_t(len(format))), cal.h), owned: true)

proc toTimeT*(self: gen_qdatetime_types.QDateTime): cuint =
  fcQDateTime_toTimeT(self.h)

proc setTimeT*(self: gen_qdatetime_types.QDateTime, secsSince1Jan1970UTC: cuint): void =
  fcQDateTime_setTimeT(self.h, secsSince1Jan1970UTC)

proc fromTimeT*(_: type gen_qdatetime_types.QDateTime, secsSince1Jan1970UTC: cuint): gen_qdatetime_types.QDateTime =
  gen_qdatetime_types.QDateTime(h: fcQDateTime_fromTimeT(secsSince1Jan1970UTC), owned: true)

proc fromTimeT*(_: type gen_qdatetime_types.QDateTime, secsSince1Jan1970UTC: cuint, spec: cint): gen_qdatetime_types.QDateTime =
  gen_qdatetime_types.QDateTime(h: fcQDateTime_fromTimeT2(secsSince1Jan1970UTC, cint(spec)), owned: true)

proc fromTimeT*(_: type gen_qdatetime_types.QDateTime, secsSince1Jan1970UTC: cuint, timeZone: gen_qtimezone_types.QTimeZone): gen_qdatetime_types.QDateTime =
  gen_qdatetime_types.QDateTime(h: fcQDateTime_fromTimeT3(secsSince1Jan1970UTC, timeZone.h), owned: true)

proc fromMSecsSinceEpoch*(_: type gen_qdatetime_types.QDateTime, msecs: clonglong): gen_qdatetime_types.QDateTime =
  gen_qdatetime_types.QDateTime(h: fcQDateTime_fromMSecsSinceEpoch(msecs), owned: true)

proc fromMSecsSinceEpoch*(_: type gen_qdatetime_types.QDateTime, msecs: clonglong, spec: cint): gen_qdatetime_types.QDateTime =
  gen_qdatetime_types.QDateTime(h: fcQDateTime_fromMSecsSinceEpoch2(msecs, cint(spec)), owned: true)

proc fromSecsSinceEpoch*(_: type gen_qdatetime_types.QDateTime, secs: clonglong): gen_qdatetime_types.QDateTime =
  gen_qdatetime_types.QDateTime(h: fcQDateTime_fromSecsSinceEpoch(secs), owned: true)

proc fromMSecsSinceEpoch*(_: type gen_qdatetime_types.QDateTime, msecs: clonglong, timeZone: gen_qtimezone_types.QTimeZone): gen_qdatetime_types.QDateTime =
  gen_qdatetime_types.QDateTime(h: fcQDateTime_fromMSecsSinceEpoch3(msecs, timeZone.h), owned: true)

proc fromSecsSinceEpoch*(_: type gen_qdatetime_types.QDateTime, secs: clonglong, timeZone: gen_qtimezone_types.QTimeZone): gen_qdatetime_types.QDateTime =
  gen_qdatetime_types.QDateTime(h: fcQDateTime_fromSecsSinceEpoch2(secs, timeZone.h), owned: true)

proc currentMSecsSinceEpoch*(_: type gen_qdatetime_types.QDateTime): clonglong =
  fcQDateTime_currentMSecsSinceEpoch()

proc currentSecsSinceEpoch*(_: type gen_qdatetime_types.QDateTime): clonglong =
  fcQDateTime_currentSecsSinceEpoch()

proc toString*(self: gen_qdatetime_types.QDateTime, format: cint): string =
  let v_ms = fcQDateTime_toString1(self.h, cint(format))
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc fromString*(_: type gen_qdatetime_types.QDateTime, s: string, f: cint): gen_qdatetime_types.QDateTime =
  gen_qdatetime_types.QDateTime(h: fcQDateTime_fromString22(struct_miqt_string(data: s, len: csize_t(len(s))), cint(f)), owned: true)

proc fromTimeT*(_: type gen_qdatetime_types.QDateTime, secsSince1Jan1970UTC: cuint, spec: cint, offsetFromUtc: cint): gen_qdatetime_types.QDateTime =
  gen_qdatetime_types.QDateTime(h: fcQDateTime_fromTimeT32(secsSince1Jan1970UTC, cint(spec), offsetFromUtc), owned: true)

proc fromMSecsSinceEpoch*(_: type gen_qdatetime_types.QDateTime, msecs: clonglong, spec: cint, offsetFromUtc: cint): gen_qdatetime_types.QDateTime =
  gen_qdatetime_types.QDateTime(h: fcQDateTime_fromMSecsSinceEpoch32(msecs, cint(spec), offsetFromUtc), owned: true)

proc fromSecsSinceEpoch*(_: type gen_qdatetime_types.QDateTime, secs: clonglong, spe: cint): gen_qdatetime_types.QDateTime =
  gen_qdatetime_types.QDateTime(h: fcQDateTime_fromSecsSinceEpoch22(secs, cint(spe)), owned: true)

proc fromSecsSinceEpoch*(_: type gen_qdatetime_types.QDateTime, secs: clonglong, spe: cint, offsetFromUtc: cint): gen_qdatetime_types.QDateTime =
  gen_qdatetime_types.QDateTime(h: fcQDateTime_fromSecsSinceEpoch3(secs, cint(spe), offsetFromUtc), owned: true)

proc create*(T: type gen_qdatetime_types.QDateTime,
    param1: gen_qdatetime_types.QDate): gen_qdatetime_types.QDateTime =
  gen_qdatetime_types.QDateTime(h: fcQDateTime_new(param1.h), owned: true)

proc create*(T: type gen_qdatetime_types.QDateTime,
    param1: gen_qdatetime_types.QDate, param2: gen_qdatetime_types.QTime): gen_qdatetime_types.QDateTime =
  gen_qdatetime_types.QDateTime(h: fcQDateTime_new2(param1.h, param2.h), owned: true)

proc create*(T: type gen_qdatetime_types.QDateTime,
    date: gen_qdatetime_types.QDate, time: gen_qdatetime_types.QTime, spec: cint, offsetSeconds: cint): gen_qdatetime_types.QDateTime =
  gen_qdatetime_types.QDateTime(h: fcQDateTime_new3(date.h, time.h, cint(spec), offsetSeconds), owned: true)

proc create*(T: type gen_qdatetime_types.QDateTime,
    date: gen_qdatetime_types.QDate, time: gen_qdatetime_types.QTime, timeZone: gen_qtimezone_types.QTimeZone): gen_qdatetime_types.QDateTime =
  gen_qdatetime_types.QDateTime(h: fcQDateTime_new4(date.h, time.h, timeZone.h), owned: true)

proc create*(T: type gen_qdatetime_types.QDateTime,
    other: gen_qdatetime_types.QDateTime): gen_qdatetime_types.QDateTime =
  gen_qdatetime_types.QDateTime(h: fcQDateTime_new5(other.h), owned: true)

proc create*(T: type gen_qdatetime_types.QDateTime,
    param1: gen_qdatetime_types.QDate, param2: gen_qdatetime_types.QTime, spec: cint): gen_qdatetime_types.QDateTime =
  gen_qdatetime_types.QDateTime(h: fcQDateTime_new6(param1.h, param2.h, cint(spec)), owned: true)

