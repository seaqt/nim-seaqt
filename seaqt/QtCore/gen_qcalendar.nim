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

proc fcQCalendar_isValid(self: pointer, ): bool {.importc: "QCalendar_isValid".}
proc fcQCalendar_daysInMonth(self: pointer, month: cint): cint {.importc: "QCalendar_daysInMonth".}
proc fcQCalendar_daysInYear(self: pointer, year: cint): cint {.importc: "QCalendar_daysInYear".}
proc fcQCalendar_monthsInYear(self: pointer, year: cint): cint {.importc: "QCalendar_monthsInYear".}
proc fcQCalendar_isDateValid(self: pointer, year: cint, month: cint, day: cint): bool {.importc: "QCalendar_isDateValid".}
proc fcQCalendar_isLeapYear(self: pointer, year: cint): bool {.importc: "QCalendar_isLeapYear".}
proc fcQCalendar_isGregorian(self: pointer, ): bool {.importc: "QCalendar_isGregorian".}
proc fcQCalendar_isLunar(self: pointer, ): bool {.importc: "QCalendar_isLunar".}
proc fcQCalendar_isLuniSolar(self: pointer, ): bool {.importc: "QCalendar_isLuniSolar".}
proc fcQCalendar_isSolar(self: pointer, ): bool {.importc: "QCalendar_isSolar".}
proc fcQCalendar_isProleptic(self: pointer, ): bool {.importc: "QCalendar_isProleptic".}
proc fcQCalendar_hasYearZero(self: pointer, ): bool {.importc: "QCalendar_hasYearZero".}
proc fcQCalendar_maximumDaysInMonth(self: pointer, ): cint {.importc: "QCalendar_maximumDaysInMonth".}
proc fcQCalendar_minimumDaysInMonth(self: pointer, ): cint {.importc: "QCalendar_minimumDaysInMonth".}
proc fcQCalendar_maximumMonthsInYear(self: pointer, ): cint {.importc: "QCalendar_maximumMonthsInYear".}
proc fcQCalendar_name(self: pointer, ): struct_miqt_string {.importc: "QCalendar_name".}
proc fcQCalendar_dateFromParts(self: pointer, year: cint, month: cint, day: cint): pointer {.importc: "QCalendar_dateFromParts".}
proc fcQCalendar_dateFromPartsWithParts(self: pointer, parts: pointer): pointer {.importc: "QCalendar_dateFromPartsWithParts".}
proc fcQCalendar_partsFromDate(self: pointer, date: pointer): pointer {.importc: "QCalendar_partsFromDate".}
proc fcQCalendar_dayOfWeek(self: pointer, date: pointer): cint {.importc: "QCalendar_dayOfWeek".}
proc fcQCalendar_monthName(self: pointer, locale: pointer, month: cint): struct_miqt_string {.importc: "QCalendar_monthName".}
proc fcQCalendar_standaloneMonthName(self: pointer, locale: pointer, month: cint): struct_miqt_string {.importc: "QCalendar_standaloneMonthName".}
proc fcQCalendar_weekDayName(self: pointer, locale: pointer, day: cint): struct_miqt_string {.importc: "QCalendar_weekDayName".}
proc fcQCalendar_standaloneWeekDayName(self: pointer, locale: pointer, day: cint): struct_miqt_string {.importc: "QCalendar_standaloneWeekDayName".}
proc fcQCalendar_availableCalendars(): struct_miqt_array {.importc: "QCalendar_availableCalendars".}
proc fcQCalendar_daysInMonth2(self: pointer, month: cint, year: cint): cint {.importc: "QCalendar_daysInMonth2".}
proc fcQCalendar_monthName3(self: pointer, locale: pointer, month: cint, year: cint): struct_miqt_string {.importc: "QCalendar_monthName3".}
proc fcQCalendar_monthName4(self: pointer, locale: pointer, month: cint, year: cint, format: cint): struct_miqt_string {.importc: "QCalendar_monthName4".}
proc fcQCalendar_standaloneMonthName3(self: pointer, locale: pointer, month: cint, year: cint): struct_miqt_string {.importc: "QCalendar_standaloneMonthName3".}
proc fcQCalendar_standaloneMonthName4(self: pointer, locale: pointer, month: cint, year: cint, format: cint): struct_miqt_string {.importc: "QCalendar_standaloneMonthName4".}
proc fcQCalendar_weekDayName3(self: pointer, locale: pointer, day: cint, format: cint): struct_miqt_string {.importc: "QCalendar_weekDayName3".}
proc fcQCalendar_standaloneWeekDayName3(self: pointer, locale: pointer, day: cint, format: cint): struct_miqt_string {.importc: "QCalendar_standaloneWeekDayName3".}
proc fcQCalendar_new(): ptr cQCalendar {.importc: "QCalendar_new".}
proc fcQCalendar_new2(system: cint): ptr cQCalendar {.importc: "QCalendar_new2".}
proc fcQCalendar_staticMetaObject(): pointer {.importc: "QCalendar_staticMetaObject".}
proc fcQCalendarYearMonthDay_isValid(self: pointer, ): bool {.importc: "QCalendar__YearMonthDay_isValid".}
proc fcQCalendarYearMonthDay_new(): ptr cQCalendarYearMonthDay {.importc: "QCalendar__YearMonthDay_new".}
proc fcQCalendarYearMonthDay_new2(y: cint): ptr cQCalendarYearMonthDay {.importc: "QCalendar__YearMonthDay_new2".}
proc fcQCalendarYearMonthDay_new3(y: cint, m: cint): ptr cQCalendarYearMonthDay {.importc: "QCalendar__YearMonthDay_new3".}
proc fcQCalendarYearMonthDay_new4(y: cint, m: cint, d: cint): ptr cQCalendarYearMonthDay {.importc: "QCalendar__YearMonthDay_new4".}

proc isValid*(self: gen_qcalendar_types.QCalendar, ): bool =
  fcQCalendar_isValid(self.h)

proc daysInMonth*(self: gen_qcalendar_types.QCalendar, month: cint): cint =
  fcQCalendar_daysInMonth(self.h, month)

proc daysInYear*(self: gen_qcalendar_types.QCalendar, year: cint): cint =
  fcQCalendar_daysInYear(self.h, year)

proc monthsInYear*(self: gen_qcalendar_types.QCalendar, year: cint): cint =
  fcQCalendar_monthsInYear(self.h, year)

proc isDateValid*(self: gen_qcalendar_types.QCalendar, year: cint, month: cint, day: cint): bool =
  fcQCalendar_isDateValid(self.h, year, month, day)

proc isLeapYear*(self: gen_qcalendar_types.QCalendar, year: cint): bool =
  fcQCalendar_isLeapYear(self.h, year)

proc isGregorian*(self: gen_qcalendar_types.QCalendar, ): bool =
  fcQCalendar_isGregorian(self.h)

proc isLunar*(self: gen_qcalendar_types.QCalendar, ): bool =
  fcQCalendar_isLunar(self.h)

proc isLuniSolar*(self: gen_qcalendar_types.QCalendar, ): bool =
  fcQCalendar_isLuniSolar(self.h)

proc isSolar*(self: gen_qcalendar_types.QCalendar, ): bool =
  fcQCalendar_isSolar(self.h)

proc isProleptic*(self: gen_qcalendar_types.QCalendar, ): bool =
  fcQCalendar_isProleptic(self.h)

proc hasYearZero*(self: gen_qcalendar_types.QCalendar, ): bool =
  fcQCalendar_hasYearZero(self.h)

proc maximumDaysInMonth*(self: gen_qcalendar_types.QCalendar, ): cint =
  fcQCalendar_maximumDaysInMonth(self.h)

proc minimumDaysInMonth*(self: gen_qcalendar_types.QCalendar, ): cint =
  fcQCalendar_minimumDaysInMonth(self.h)

proc maximumMonthsInYear*(self: gen_qcalendar_types.QCalendar, ): cint =
  fcQCalendar_maximumMonthsInYear(self.h)

proc name*(self: gen_qcalendar_types.QCalendar, ): string =
  let v_ms = fcQCalendar_name(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc dateFromParts*(self: gen_qcalendar_types.QCalendar, year: cint, month: cint, day: cint): gen_qdatetime_types.QDate =
  gen_qdatetime_types.QDate(h: fcQCalendar_dateFromParts(self.h, year, month, day), owned: true)

proc dateFromParts*(self: gen_qcalendar_types.QCalendar, parts: gen_qcalendar_types.QCalendarYearMonthDay): gen_qdatetime_types.QDate =
  gen_qdatetime_types.QDate(h: fcQCalendar_dateFromPartsWithParts(self.h, parts.h), owned: true)

proc partsFromDate*(self: gen_qcalendar_types.QCalendar, date: gen_qdatetime_types.QDate): gen_qcalendar_types.QCalendarYearMonthDay =
  gen_qcalendar_types.QCalendarYearMonthDay(h: fcQCalendar_partsFromDate(self.h, date.h), owned: true)

proc dayOfWeek*(self: gen_qcalendar_types.QCalendar, date: gen_qdatetime_types.QDate): cint =
  fcQCalendar_dayOfWeek(self.h, date.h)

proc monthName*(self: gen_qcalendar_types.QCalendar, locale: gen_qlocale_types.QLocale, month: cint): string =
  let v_ms = fcQCalendar_monthName(self.h, locale.h, month)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc standaloneMonthName*(self: gen_qcalendar_types.QCalendar, locale: gen_qlocale_types.QLocale, month: cint): string =
  let v_ms = fcQCalendar_standaloneMonthName(self.h, locale.h, month)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc weekDayName*(self: gen_qcalendar_types.QCalendar, locale: gen_qlocale_types.QLocale, day: cint): string =
  let v_ms = fcQCalendar_weekDayName(self.h, locale.h, day)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc standaloneWeekDayName*(self: gen_qcalendar_types.QCalendar, locale: gen_qlocale_types.QLocale, day: cint): string =
  let v_ms = fcQCalendar_standaloneWeekDayName(self.h, locale.h, day)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc availableCalendars*(_: type gen_qcalendar_types.QCalendar, ): seq[string] =
  var v_ma = fcQCalendar_availableCalendars()
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  c_free(v_ma.data)
  vx_ret

proc daysInMonth*(self: gen_qcalendar_types.QCalendar, month: cint, year: cint): cint =
  fcQCalendar_daysInMonth2(self.h, month, year)

proc monthName*(self: gen_qcalendar_types.QCalendar, locale: gen_qlocale_types.QLocale, month: cint, year: cint): string =
  let v_ms = fcQCalendar_monthName3(self.h, locale.h, month, year)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc monthName*(self: gen_qcalendar_types.QCalendar, locale: gen_qlocale_types.QLocale, month: cint, year: cint, format: cint): string =
  let v_ms = fcQCalendar_monthName4(self.h, locale.h, month, year, cint(format))
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc standaloneMonthName*(self: gen_qcalendar_types.QCalendar, locale: gen_qlocale_types.QLocale, month: cint, year: cint): string =
  let v_ms = fcQCalendar_standaloneMonthName3(self.h, locale.h, month, year)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc standaloneMonthName*(self: gen_qcalendar_types.QCalendar, locale: gen_qlocale_types.QLocale, month: cint, year: cint, format: cint): string =
  let v_ms = fcQCalendar_standaloneMonthName4(self.h, locale.h, month, year, cint(format))
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc weekDayName*(self: gen_qcalendar_types.QCalendar, locale: gen_qlocale_types.QLocale, day: cint, format: cint): string =
  let v_ms = fcQCalendar_weekDayName3(self.h, locale.h, day, cint(format))
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc standaloneWeekDayName*(self: gen_qcalendar_types.QCalendar, locale: gen_qlocale_types.QLocale, day: cint, format: cint): string =
  let v_ms = fcQCalendar_standaloneWeekDayName3(self.h, locale.h, day, cint(format))
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc create*(T: type gen_qcalendar_types.QCalendar): gen_qcalendar_types.QCalendar =
  gen_qcalendar_types.QCalendar(h: fcQCalendar_new(), owned: true)

proc create*(T: type gen_qcalendar_types.QCalendar,
    system: cint): gen_qcalendar_types.QCalendar =
  gen_qcalendar_types.QCalendar(h: fcQCalendar_new2(cint(system)), owned: true)

proc staticMetaObject*(_: type gen_qcalendar_types.QCalendar): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQCalendar_staticMetaObject())
proc isValid*(self: gen_qcalendar_types.QCalendarYearMonthDay, ): bool =
  fcQCalendarYearMonthDay_isValid(self.h)

proc create*(T: type gen_qcalendar_types.QCalendarYearMonthDay): gen_qcalendar_types.QCalendarYearMonthDay =
  gen_qcalendar_types.QCalendarYearMonthDay(h: fcQCalendarYearMonthDay_new(), owned: true)

proc create*(T: type gen_qcalendar_types.QCalendarYearMonthDay,
    y: cint): gen_qcalendar_types.QCalendarYearMonthDay =
  gen_qcalendar_types.QCalendarYearMonthDay(h: fcQCalendarYearMonthDay_new2(y), owned: true)

proc create*(T: type gen_qcalendar_types.QCalendarYearMonthDay,
    y: cint, m: cint): gen_qcalendar_types.QCalendarYearMonthDay =
  gen_qcalendar_types.QCalendarYearMonthDay(h: fcQCalendarYearMonthDay_new3(y, m), owned: true)

proc create*(T: type gen_qcalendar_types.QCalendarYearMonthDay,
    y: cint, m: cint, d: cint): gen_qcalendar_types.QCalendarYearMonthDay =
  gen_qcalendar_types.QCalendarYearMonthDay(h: fcQCalendarYearMonthDay_new4(y, m, d), owned: true)

