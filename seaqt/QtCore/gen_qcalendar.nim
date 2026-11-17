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


type QCalendarEnumEnum* = distinct cint
template Unspecified*(_: type QCalendarEnumEnum): untyped = -2147483648


type QCalendarSystemEnum* = distinct cint
template Gregorian*(_: type QCalendarSystemEnum): untyped = 0
template Julian*(_: type QCalendarSystemEnum): untyped = 8
template Milankovic*(_: type QCalendarSystemEnum): untyped = 9
template Jalali*(_: type QCalendarSystemEnum): untyped = 10
template IslamicCivil*(_: type QCalendarSystemEnum): untyped = 11
template Last*(_: type QCalendarSystemEnum): untyped = 11
template User*(_: type QCalendarSystemEnum): untyped = -1


import ./gen_qcalendar_types
export gen_qcalendar_types

import
  ./gen_qdatetime_types,
  ./gen_qlocale_types,
  ./gen_qobjectdefs_types
export
  gen_qdatetime_types,
  gen_qlocale_types,
  gen_qobjectdefs_types

type cQCalendar*{.exportc: "QCalendar", incompleteStruct.} = object
type cQCalendarYearMonthDay*{.exportc: "QCalendar__YearMonthDay", incompleteStruct.} = object

proc fcQCalendar_isValid(self: pointer): bool {.importc: "QCalendar_isValid".}
proc fcQCalendar_daysInMonthMonth(self: pointer, month: cint): cint {.importc: "QCalendar_daysInMonth_month".}
proc fcQCalendar_daysInYear(self: pointer, year: cint): cint {.importc: "QCalendar_daysInYear".}
proc fcQCalendar_monthsInYear(self: pointer, year: cint): cint {.importc: "QCalendar_monthsInYear".}
proc fcQCalendar_isDateValid(self: pointer, year: cint, month: cint, day: cint): bool {.importc: "QCalendar_isDateValid".}
proc fcQCalendar_isLeapYear(self: pointer, year: cint): bool {.importc: "QCalendar_isLeapYear".}
proc fcQCalendar_isGregorian(self: pointer): bool {.importc: "QCalendar_isGregorian".}
proc fcQCalendar_isLunar(self: pointer): bool {.importc: "QCalendar_isLunar".}
proc fcQCalendar_isLuniSolar(self: pointer): bool {.importc: "QCalendar_isLuniSolar".}
proc fcQCalendar_isSolar(self: pointer): bool {.importc: "QCalendar_isSolar".}
proc fcQCalendar_isProleptic(self: pointer): bool {.importc: "QCalendar_isProleptic".}
proc fcQCalendar_hasYearZero(self: pointer): bool {.importc: "QCalendar_hasYearZero".}
proc fcQCalendar_maximumDaysInMonth(self: pointer): cint {.importc: "QCalendar_maximumDaysInMonth".}
proc fcQCalendar_minimumDaysInMonth(self: pointer): cint {.importc: "QCalendar_minimumDaysInMonth".}
proc fcQCalendar_maximumMonthsInYear(self: pointer): cint {.importc: "QCalendar_maximumMonthsInYear".}
proc fcQCalendar_name(self: pointer): struct_seaqt_string {.importc: "QCalendar_name".}
proc fcQCalendar_dateFromPartsYearMonthDay(self: pointer, year: cint, month: cint, day: cint): pointer {.importc: "QCalendar_dateFromParts_year_month_day".}
proc fcQCalendar_dateFromPartsParts(self: pointer, parts: pointer): pointer {.importc: "QCalendar_dateFromParts_parts".}
proc fcQCalendar_partsFromDate(self: pointer, date: pointer): pointer {.importc: "QCalendar_partsFromDate".}
proc fcQCalendar_dayOfWeek(self: pointer, date: pointer): cint {.importc: "QCalendar_dayOfWeek".}
proc fcQCalendar_monthNameLocaleMonth(self: pointer, locale: pointer, month: cint): struct_seaqt_string {.importc: "QCalendar_monthName_locale_month".}
proc fcQCalendar_standaloneMonthNameLocaleMonth(self: pointer, locale: pointer, month: cint): struct_seaqt_string {.importc: "QCalendar_standaloneMonthName_locale_month".}
proc fcQCalendar_weekDayNameLocaleDay(self: pointer, locale: pointer, day: cint): struct_seaqt_string {.importc: "QCalendar_weekDayName_locale_day".}
proc fcQCalendar_standaloneWeekDayNameLocaleDay(self: pointer, locale: pointer, day: cint): struct_seaqt_string {.importc: "QCalendar_standaloneWeekDayName_locale_day".}
proc fcQCalendar_availableCalendars(): struct_seaqt_array {.importc: "QCalendar_availableCalendars".}
proc fcQCalendar_daysInMonthMonthYear(self: pointer, month: cint, year: cint): cint {.importc: "QCalendar_daysInMonth_month_year".}
proc fcQCalendar_monthNameLocaleMonthYear(self: pointer, locale: pointer, month: cint, year: cint): struct_seaqt_string {.importc: "QCalendar_monthName_locale_month_year".}
proc fcQCalendar_monthNameLocaleMonthYearFormat(self: pointer, locale: pointer, month: cint, year: cint, format: cint): struct_seaqt_string {.importc: "QCalendar_monthName_locale_month_year_format".}
proc fcQCalendar_standaloneMonthNameLocaleMonthYear(self: pointer, locale: pointer, month: cint, year: cint): struct_seaqt_string {.importc: "QCalendar_standaloneMonthName_locale_month_year".}
proc fcQCalendar_standaloneMonthNameLocaleMonthYearFormat(self: pointer, locale: pointer, month: cint, year: cint, format: cint): struct_seaqt_string {.importc: "QCalendar_standaloneMonthName_locale_month_year_format".}
proc fcQCalendar_weekDayNameLocaleDayFormat(self: pointer, locale: pointer, day: cint, format: cint): struct_seaqt_string {.importc: "QCalendar_weekDayName_locale_day_format".}
proc fcQCalendar_standaloneWeekDayNameLocaleDayFormat(self: pointer, locale: pointer, day: cint, format: cint): struct_seaqt_string {.importc: "QCalendar_standaloneWeekDayName_locale_day_format".}
proc fcQCalendar_new(): ptr cQCalendar {.importc: "QCalendar_new".}
proc fcQCalendar_new2(system: cint): ptr cQCalendar {.importc: "QCalendar_new_QCalendar_System".}
proc fcQCalendar_staticMetaObject(): pointer {.importc: "QCalendar_staticMetaObject".}
proc fcQCalendarYearMonthDay_isValid(self: pointer): bool {.importc: "QCalendar__YearMonthDay_isValid".}
proc fcQCalendarYearMonthDay_year(self: pointer): cint {.importc: "QCalendar__YearMonthDay_year".}
proc fcQCalendarYearMonthDay_setYear(self: pointer, year: cint): void {.importc: "QCalendar__YearMonthDay_setYear".}
proc fcQCalendarYearMonthDay_month(self: pointer): cint {.importc: "QCalendar__YearMonthDay_month".}
proc fcQCalendarYearMonthDay_setMonth(self: pointer, month: cint): void {.importc: "QCalendar__YearMonthDay_setMonth".}
proc fcQCalendarYearMonthDay_day(self: pointer): cint {.importc: "QCalendar__YearMonthDay_day".}
proc fcQCalendarYearMonthDay_setDay(self: pointer, day: cint): void {.importc: "QCalendar__YearMonthDay_setDay".}
proc fcQCalendarYearMonthDay_new(): ptr cQCalendarYearMonthDay {.importc: "QCalendar__YearMonthDay_new".}
proc fcQCalendarYearMonthDay_new2(y: cint): ptr cQCalendarYearMonthDay {.importc: "QCalendar__YearMonthDay_new_y".}
proc fcQCalendarYearMonthDay_new3(y: cint, m: cint): ptr cQCalendarYearMonthDay {.importc: "QCalendar__YearMonthDay_new_y_m".}
proc fcQCalendarYearMonthDay_new4(y: cint, m: cint, d: cint): ptr cQCalendarYearMonthDay {.importc: "QCalendar__YearMonthDay_new_y_m_d".}

proc isValid*(self: gen_qcalendar_types.QCalendar): bool =
  fcQCalendar_isValid(self.h)

proc daysInMonth*(self: gen_qcalendar_types.QCalendar, month: cint): cint =
  fcQCalendar_daysInMonthMonth(self.h, month)

proc daysInYear*(self: gen_qcalendar_types.QCalendar, year: cint): cint =
  fcQCalendar_daysInYear(self.h, year)

proc monthsInYear*(self: gen_qcalendar_types.QCalendar, year: cint): cint =
  fcQCalendar_monthsInYear(self.h, year)

proc isDateValid*(self: gen_qcalendar_types.QCalendar, year: cint, month: cint, day: cint): bool =
  fcQCalendar_isDateValid(self.h, year, month, day)

proc isLeapYear*(self: gen_qcalendar_types.QCalendar, year: cint): bool =
  fcQCalendar_isLeapYear(self.h, year)

proc isGregorian*(self: gen_qcalendar_types.QCalendar): bool =
  fcQCalendar_isGregorian(self.h)

proc isLunar*(self: gen_qcalendar_types.QCalendar): bool =
  fcQCalendar_isLunar(self.h)

proc isLuniSolar*(self: gen_qcalendar_types.QCalendar): bool =
  fcQCalendar_isLuniSolar(self.h)

proc isSolar*(self: gen_qcalendar_types.QCalendar): bool =
  fcQCalendar_isSolar(self.h)

proc isProleptic*(self: gen_qcalendar_types.QCalendar): bool =
  fcQCalendar_isProleptic(self.h)

proc hasYearZero*(self: gen_qcalendar_types.QCalendar): bool =
  fcQCalendar_hasYearZero(self.h)

proc maximumDaysInMonth*(self: gen_qcalendar_types.QCalendar): cint =
  fcQCalendar_maximumDaysInMonth(self.h)

proc minimumDaysInMonth*(self: gen_qcalendar_types.QCalendar): cint =
  fcQCalendar_minimumDaysInMonth(self.h)

proc maximumMonthsInYear*(self: gen_qcalendar_types.QCalendar): cint =
  fcQCalendar_maximumMonthsInYear(self.h)

proc name*(self: gen_qcalendar_types.QCalendar): string =
  let v_ms = fcQCalendar_name(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc dateFromParts*(self: gen_qcalendar_types.QCalendar, year: cint, month: cint, day: cint): gen_qdatetime_types.QDate =
  gen_qdatetime_types.QDate(h: fcQCalendar_dateFromPartsYearMonthDay(self.h, year, month, day), owned: true)

proc dateFromParts*(self: gen_qcalendar_types.QCalendar, parts: gen_qcalendar_types.QCalendarYearMonthDay): gen_qdatetime_types.QDate =
  gen_qdatetime_types.QDate(h: fcQCalendar_dateFromPartsParts(self.h, parts.h), owned: true)

proc partsFromDate*(self: gen_qcalendar_types.QCalendar, date: gen_qdatetime_types.QDate): gen_qcalendar_types.QCalendarYearMonthDay =
  gen_qcalendar_types.QCalendarYearMonthDay(h: fcQCalendar_partsFromDate(self.h, date.h), owned: true)

proc dayOfWeek*(self: gen_qcalendar_types.QCalendar, date: gen_qdatetime_types.QDate): cint =
  fcQCalendar_dayOfWeek(self.h, date.h)

proc monthName*(self: gen_qcalendar_types.QCalendar, locale: gen_qlocale_types.QLocale, month: cint): string =
  let v_ms = fcQCalendar_monthNameLocaleMonth(self.h, locale.h, month)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc standaloneMonthName*(self: gen_qcalendar_types.QCalendar, locale: gen_qlocale_types.QLocale, month: cint): string =
  let v_ms = fcQCalendar_standaloneMonthNameLocaleMonth(self.h, locale.h, month)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc weekDayName*(self: gen_qcalendar_types.QCalendar, locale: gen_qlocale_types.QLocale, day: cint): string =
  let v_ms = fcQCalendar_weekDayNameLocaleDay(self.h, locale.h, day)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc standaloneWeekDayName*(self: gen_qcalendar_types.QCalendar, locale: gen_qlocale_types.QLocale, day: cint): string =
  let v_ms = fcQCalendar_standaloneWeekDayNameLocaleDay(self.h, locale.h, day)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc availableCalendars*(_: type gen_qcalendar_types.QCalendar): seq[string] =
  var v_ma = fcQCalendar_availableCalendars()
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_seaqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(vx_lv_ms)
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  c_free(v_ma.data)
  vx_ret

proc daysInMonth*(self: gen_qcalendar_types.QCalendar, month: cint, year: cint): cint =
  fcQCalendar_daysInMonthMonthYear(self.h, month, year)

proc monthName*(self: gen_qcalendar_types.QCalendar, locale: gen_qlocale_types.QLocale, month: cint, year: cint): string =
  let v_ms = fcQCalendar_monthNameLocaleMonthYear(self.h, locale.h, month, year)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc monthName*(self: gen_qcalendar_types.QCalendar, locale: gen_qlocale_types.QLocale, month: cint, year: cint, format: cint): string =
  let v_ms = fcQCalendar_monthNameLocaleMonthYearFormat(self.h, locale.h, month, year, cint(format))
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc standaloneMonthName*(self: gen_qcalendar_types.QCalendar, locale: gen_qlocale_types.QLocale, month: cint, year: cint): string =
  let v_ms = fcQCalendar_standaloneMonthNameLocaleMonthYear(self.h, locale.h, month, year)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc standaloneMonthName*(self: gen_qcalendar_types.QCalendar, locale: gen_qlocale_types.QLocale, month: cint, year: cint, format: cint): string =
  let v_ms = fcQCalendar_standaloneMonthNameLocaleMonthYearFormat(self.h, locale.h, month, year, cint(format))
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc weekDayName*(self: gen_qcalendar_types.QCalendar, locale: gen_qlocale_types.QLocale, day: cint, format: cint): string =
  let v_ms = fcQCalendar_weekDayNameLocaleDayFormat(self.h, locale.h, day, cint(format))
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc standaloneWeekDayName*(self: gen_qcalendar_types.QCalendar, locale: gen_qlocale_types.QLocale, day: cint, format: cint): string =
  let v_ms = fcQCalendar_standaloneWeekDayNameLocaleDayFormat(self.h, locale.h, day, cint(format))
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc create*(T: type gen_qcalendar_types.QCalendar): gen_qcalendar_types.QCalendar =
  let tmp = gen_qcalendar_types.QCalendar(h: fcQCalendar_new(), owned: true)
  tmp
proc create*(T: type gen_qcalendar_types.QCalendar,
    system: cint): gen_qcalendar_types.QCalendar =
  let tmp = gen_qcalendar_types.QCalendar(h: fcQCalendar_new2(cint(system)), owned: true)
  tmp
proc staticMetaObject*(_: type gen_qcalendar_types.QCalendar): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQCalendar_staticMetaObject())
proc isValid*(self: gen_qcalendar_types.QCalendarYearMonthDay): bool =
  fcQCalendarYearMonthDay_isValid(self.h)

proc year*(self: gen_qcalendar_types.QCalendarYearMonthDay): cint =
  fcQCalendarYearMonthDay_year(self.h)

proc setYear*(self: gen_qcalendar_types.QCalendarYearMonthDay, year: cint): void =
  fcQCalendarYearMonthDay_setYear(self.h, year)

proc month*(self: gen_qcalendar_types.QCalendarYearMonthDay): cint =
  fcQCalendarYearMonthDay_month(self.h)

proc setMonth*(self: gen_qcalendar_types.QCalendarYearMonthDay, month: cint): void =
  fcQCalendarYearMonthDay_setMonth(self.h, month)

proc day*(self: gen_qcalendar_types.QCalendarYearMonthDay): cint =
  fcQCalendarYearMonthDay_day(self.h)

proc setDay*(self: gen_qcalendar_types.QCalendarYearMonthDay, day: cint): void =
  fcQCalendarYearMonthDay_setDay(self.h, day)

proc create*(T: type gen_qcalendar_types.QCalendarYearMonthDay): gen_qcalendar_types.QCalendarYearMonthDay =
  let tmp = gen_qcalendar_types.QCalendarYearMonthDay(h: fcQCalendarYearMonthDay_new(), owned: true)
  tmp
proc create*(T: type gen_qcalendar_types.QCalendarYearMonthDay,
    y: cint): gen_qcalendar_types.QCalendarYearMonthDay =
  let tmp = gen_qcalendar_types.QCalendarYearMonthDay(h: fcQCalendarYearMonthDay_new2(y), owned: true)
  tmp
proc create*(T: type gen_qcalendar_types.QCalendarYearMonthDay,
    y: cint, m: cint): gen_qcalendar_types.QCalendarYearMonthDay =
  let tmp = gen_qcalendar_types.QCalendarYearMonthDay(h: fcQCalendarYearMonthDay_new3(y, m), owned: true)
  tmp
proc create*(T: type gen_qcalendar_types.QCalendarYearMonthDay,
    y: cint, m: cint, d: cint): gen_qcalendar_types.QCalendarYearMonthDay =
  let tmp = gen_qcalendar_types.QCalendarYearMonthDay(h: fcQCalendarYearMonthDay_new4(y, m, d), owned: true)
  tmp
