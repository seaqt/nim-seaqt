import ./qtcore_pkg

{.push raises: [].}

from system/ansi_c import c_free, c_malloc

type
  struct_miqt_string {.used.} = object
    len: csize_t
    data: pointer

  struct_miqt_array {.used.} = object
    len: csize_t
    data: pointer

  struct_miqt_map {.used.} = object
    len: csize_t
    keys: pointer
    values: pointer

  miqt_uintptr_t {.importc: "uintptr_t", header: "stdint.h", used.} = uint
  miqt_intptr_t {.importc: "intptr_t", header: "stdint.h", used.} = int

func fromBytes(T: type string, v: struct_miqt_string): string {.used.} =
  if v.len > 0:
    let len = cast[int](v.len)
    result = newString(len)
    when nimvm:
      let d = cast[ptr UncheckedArray[char]](v.data)
      for i in 0..<len:
        result[i] = d[i]
    else:
      copyMem(addr result[0], v.data, len)


type QTimeZoneEnumEnum* = distinct cint
template MinUtcOffsetSecs*(_: type QTimeZoneEnumEnum): untyped = -50400
template MaxUtcOffsetSecs*(_: type QTimeZoneEnumEnum): untyped = 50400


type QTimeZoneTimeTypeEnum* = distinct cint
template StandardTime*(_: type QTimeZoneTimeTypeEnum): untyped = 0
template DaylightTime*(_: type QTimeZoneTimeTypeEnum): untyped = 1
template GenericTime*(_: type QTimeZoneTimeTypeEnum): untyped = 2


type QTimeZoneNameTypeEnum* = distinct cint
template DefaultName*(_: type QTimeZoneNameTypeEnum): untyped = 0
template LongName*(_: type QTimeZoneNameTypeEnum): untyped = 1
template ShortName*(_: type QTimeZoneNameTypeEnum): untyped = 2
template OffsetName*(_: type QTimeZoneNameTypeEnum): untyped = 3


import ./gen_qtimezone_types
export gen_qtimezone_types

import
  ./gen_qdatetime_types,
  ./gen_qlocale_types
export
  gen_qdatetime_types,
  gen_qlocale_types

type cQTimeZone*{.exportc: "QTimeZone", incompleteStruct.} = object
type cQTimeZoneOffsetData*{.exportc: "QTimeZone__OffsetData", incompleteStruct.} = object

proc fcQTimeZone_operatorAssign(self: pointer, other: pointer): void {.importc: "QTimeZone_operatorAssign".}
proc fcQTimeZone_swap(self: pointer, other: pointer): void {.importc: "QTimeZone_swap".}
proc fcQTimeZone_isValid(self: pointer): bool {.importc: "QTimeZone_isValid".}
proc fcQTimeZone_id(self: pointer): struct_miqt_string {.importc: "QTimeZone_id".}
proc fcQTimeZone_territory(self: pointer): cint {.importc: "QTimeZone_territory".}
proc fcQTimeZone_country(self: pointer): cint {.importc: "QTimeZone_country".}
proc fcQTimeZone_comment(self: pointer): struct_miqt_string {.importc: "QTimeZone_comment".}
proc fcQTimeZone_displayName(self: pointer, atDateTime: pointer): struct_miqt_string {.importc: "QTimeZone_displayName".}
proc fcQTimeZone_displayNameWithTimeType(self: pointer, timeType: cint): struct_miqt_string {.importc: "QTimeZone_displayNameWithTimeType".}
proc fcQTimeZone_abbreviation(self: pointer, atDateTime: pointer): struct_miqt_string {.importc: "QTimeZone_abbreviation".}
proc fcQTimeZone_offsetFromUtc(self: pointer, atDateTime: pointer): cint {.importc: "QTimeZone_offsetFromUtc".}
proc fcQTimeZone_standardTimeOffset(self: pointer, atDateTime: pointer): cint {.importc: "QTimeZone_standardTimeOffset".}
proc fcQTimeZone_daylightTimeOffset(self: pointer, atDateTime: pointer): cint {.importc: "QTimeZone_daylightTimeOffset".}
proc fcQTimeZone_hasDaylightTime(self: pointer): bool {.importc: "QTimeZone_hasDaylightTime".}
proc fcQTimeZone_isDaylightTime(self: pointer, atDateTime: pointer): bool {.importc: "QTimeZone_isDaylightTime".}
proc fcQTimeZone_offsetData(self: pointer, forDateTime: pointer): pointer {.importc: "QTimeZone_offsetData".}
proc fcQTimeZone_hasTransitions(self: pointer): bool {.importc: "QTimeZone_hasTransitions".}
proc fcQTimeZone_nextTransition(self: pointer, afterDateTime: pointer): pointer {.importc: "QTimeZone_nextTransition".}
proc fcQTimeZone_previousTransition(self: pointer, beforeDateTime: pointer): pointer {.importc: "QTimeZone_previousTransition".}
proc fcQTimeZone_transitions(self: pointer, fromDateTime: pointer, toDateTime: pointer): struct_miqt_array {.importc: "QTimeZone_transitions".}
proc fcQTimeZone_systemTimeZoneId(): struct_miqt_string {.importc: "QTimeZone_systemTimeZoneId".}
proc fcQTimeZone_systemTimeZone(): pointer {.importc: "QTimeZone_systemTimeZone".}
proc fcQTimeZone_utc(): pointer {.importc: "QTimeZone_utc".}
proc fcQTimeZone_isTimeZoneIdAvailable(ianaId: struct_miqt_string): bool {.importc: "QTimeZone_isTimeZoneIdAvailable".}
proc fcQTimeZone_availableTimeZoneIds(): struct_miqt_array {.importc: "QTimeZone_availableTimeZoneIds".}
proc fcQTimeZone_availableTimeZoneIdsWithTerritory(territory: cint): struct_miqt_array {.importc: "QTimeZone_availableTimeZoneIdsWithTerritory".}
proc fcQTimeZone_availableTimeZoneIdsWithOffsetSeconds(offsetSeconds: cint): struct_miqt_array {.importc: "QTimeZone_availableTimeZoneIdsWithOffsetSeconds".}
proc fcQTimeZone_ianaIdToWindowsId(ianaId: struct_miqt_string): struct_miqt_string {.importc: "QTimeZone_ianaIdToWindowsId".}
proc fcQTimeZone_windowsIdToDefaultIanaId(windowsId: struct_miqt_string): struct_miqt_string {.importc: "QTimeZone_windowsIdToDefaultIanaId".}
proc fcQTimeZone_windowsIdToDefaultIanaId2(windowsId: struct_miqt_string, territory: cint): struct_miqt_string {.importc: "QTimeZone_windowsIdToDefaultIanaId2".}
proc fcQTimeZone_windowsIdToIanaIds(windowsId: struct_miqt_string): struct_miqt_array {.importc: "QTimeZone_windowsIdToIanaIds".}
proc fcQTimeZone_windowsIdToIanaIds2(windowsId: struct_miqt_string, territory: cint): struct_miqt_array {.importc: "QTimeZone_windowsIdToIanaIds2".}
proc fcQTimeZone_displayName2(self: pointer, atDateTime: pointer, nameType: cint): struct_miqt_string {.importc: "QTimeZone_displayName2".}
proc fcQTimeZone_displayName3(self: pointer, atDateTime: pointer, nameType: cint, locale: pointer): struct_miqt_string {.importc: "QTimeZone_displayName3".}
proc fcQTimeZone_displayName22(self: pointer, timeType: cint, nameType: cint): struct_miqt_string {.importc: "QTimeZone_displayName22".}
proc fcQTimeZone_displayName32(self: pointer, timeType: cint, nameType: cint, locale: pointer): struct_miqt_string {.importc: "QTimeZone_displayName32".}
proc fcQTimeZone_new(): ptr cQTimeZone {.importc: "QTimeZone_new".}
proc fcQTimeZone_new2(ianaId: struct_miqt_string): ptr cQTimeZone {.importc: "QTimeZone_new2".}
proc fcQTimeZone_new3(offsetSeconds: cint): ptr cQTimeZone {.importc: "QTimeZone_new3".}
proc fcQTimeZone_new4(zoneId: struct_miqt_string, offsetSeconds: cint, name: struct_miqt_string, abbreviation: struct_miqt_string): ptr cQTimeZone {.importc: "QTimeZone_new4".}
proc fcQTimeZone_new5(other: pointer): ptr cQTimeZone {.importc: "QTimeZone_new5".}
proc fcQTimeZone_new6(zoneId: struct_miqt_string, offsetSeconds: cint, name: struct_miqt_string, abbreviation: struct_miqt_string, territory: cint): ptr cQTimeZone {.importc: "QTimeZone_new6".}
proc fcQTimeZone_new7(zoneId: struct_miqt_string, offsetSeconds: cint, name: struct_miqt_string, abbreviation: struct_miqt_string, territory: cint, comment: struct_miqt_string): ptr cQTimeZone {.importc: "QTimeZone_new7".}
proc fcQTimeZoneOffsetData_operatorAssign(self: pointer, param1: pointer): void {.importc: "QTimeZone__OffsetData_operatorAssign".}
proc fcQTimeZoneOffsetData_new(param1: pointer): ptr cQTimeZoneOffsetData {.importc: "QTimeZone__OffsetData_new".}

proc operatorAssign*(self: gen_qtimezone_types.QTimeZone, other: gen_qtimezone_types.QTimeZone): void =
  fcQTimeZone_operatorAssign(self.h, other.h)

proc swap*(self: gen_qtimezone_types.QTimeZone, other: gen_qtimezone_types.QTimeZone): void =
  fcQTimeZone_swap(self.h, other.h)

proc isValid*(self: gen_qtimezone_types.QTimeZone): bool =
  fcQTimeZone_isValid(self.h)

proc id*(self: gen_qtimezone_types.QTimeZone): seq[byte] =
  var v_bytearray = fcQTimeZone_id(self.h)
  var vx_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](v_bytearray.data), 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc territory*(self: gen_qtimezone_types.QTimeZone): cint =
  cint(fcQTimeZone_territory(self.h))

proc country*(self: gen_qtimezone_types.QTimeZone): cint =
  cint(fcQTimeZone_country(self.h))

proc comment*(self: gen_qtimezone_types.QTimeZone): string =
  let v_ms = fcQTimeZone_comment(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc displayName*(self: gen_qtimezone_types.QTimeZone, atDateTime: gen_qdatetime_types.QDateTime): string =
  let v_ms = fcQTimeZone_displayName(self.h, atDateTime.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc displayName*(self: gen_qtimezone_types.QTimeZone, timeType: cint): string =
  let v_ms = fcQTimeZone_displayNameWithTimeType(self.h, cint(timeType))
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc abbreviation*(self: gen_qtimezone_types.QTimeZone, atDateTime: gen_qdatetime_types.QDateTime): string =
  let v_ms = fcQTimeZone_abbreviation(self.h, atDateTime.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc offsetFromUtc*(self: gen_qtimezone_types.QTimeZone, atDateTime: gen_qdatetime_types.QDateTime): cint =
  fcQTimeZone_offsetFromUtc(self.h, atDateTime.h)

proc standardTimeOffset*(self: gen_qtimezone_types.QTimeZone, atDateTime: gen_qdatetime_types.QDateTime): cint =
  fcQTimeZone_standardTimeOffset(self.h, atDateTime.h)

proc daylightTimeOffset*(self: gen_qtimezone_types.QTimeZone, atDateTime: gen_qdatetime_types.QDateTime): cint =
  fcQTimeZone_daylightTimeOffset(self.h, atDateTime.h)

proc hasDaylightTime*(self: gen_qtimezone_types.QTimeZone): bool =
  fcQTimeZone_hasDaylightTime(self.h)

proc isDaylightTime*(self: gen_qtimezone_types.QTimeZone, atDateTime: gen_qdatetime_types.QDateTime): bool =
  fcQTimeZone_isDaylightTime(self.h, atDateTime.h)

proc offsetData*(self: gen_qtimezone_types.QTimeZone, forDateTime: gen_qdatetime_types.QDateTime): gen_qtimezone_types.QTimeZoneOffsetData =
  gen_qtimezone_types.QTimeZoneOffsetData(h: fcQTimeZone_offsetData(self.h, forDateTime.h), owned: true)

proc hasTransitions*(self: gen_qtimezone_types.QTimeZone): bool =
  fcQTimeZone_hasTransitions(self.h)

proc nextTransition*(self: gen_qtimezone_types.QTimeZone, afterDateTime: gen_qdatetime_types.QDateTime): gen_qtimezone_types.QTimeZoneOffsetData =
  gen_qtimezone_types.QTimeZoneOffsetData(h: fcQTimeZone_nextTransition(self.h, afterDateTime.h), owned: true)

proc previousTransition*(self: gen_qtimezone_types.QTimeZone, beforeDateTime: gen_qdatetime_types.QDateTime): gen_qtimezone_types.QTimeZoneOffsetData =
  gen_qtimezone_types.QTimeZoneOffsetData(h: fcQTimeZone_previousTransition(self.h, beforeDateTime.h), owned: true)

proc transitions*(self: gen_qtimezone_types.QTimeZone, fromDateTime: gen_qdatetime_types.QDateTime, toDateTime: gen_qdatetime_types.QDateTime): seq[gen_qtimezone_types.QTimeZoneOffsetData] =
  var v_ma = fcQTimeZone_transitions(self.h, fromDateTime.h, toDateTime.h)
  var vx_ret = newSeq[gen_qtimezone_types.QTimeZoneOffsetData](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qtimezone_types.QTimeZoneOffsetData(h: v_outCast[i], owned: true)
  c_free(v_ma.data)
  vx_ret

proc systemTimeZoneId*(_: type gen_qtimezone_types.QTimeZone): seq[byte] =
  var v_bytearray = fcQTimeZone_systemTimeZoneId()
  var vx_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](v_bytearray.data), 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc systemTimeZone*(_: type gen_qtimezone_types.QTimeZone): gen_qtimezone_types.QTimeZone =
  gen_qtimezone_types.QTimeZone(h: fcQTimeZone_systemTimeZone(), owned: true)

proc utc*(_: type gen_qtimezone_types.QTimeZone): gen_qtimezone_types.QTimeZone =
  gen_qtimezone_types.QTimeZone(h: fcQTimeZone_utc(), owned: true)

proc isTimeZoneIdAvailable*(_: type gen_qtimezone_types.QTimeZone, ianaId: openArray[byte]): bool =
  fcQTimeZone_isTimeZoneIdAvailable(struct_miqt_string(data: cast[cstring](if len(ianaId) == 0: nil else: unsafeAddr ianaId[0]), len: csize_t(len(ianaId))))

proc availableTimeZoneIds*(_: type gen_qtimezone_types.QTimeZone): seq[seq[byte]] =
  var v_ma = fcQTimeZone_availableTimeZoneIds()
  var vx_ret = newSeq[seq[byte]](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    var vx_lv_bytearray = v_outCast[i]
    var vx_lvx_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](vx_lv_bytearray.data), 0, int(vx_lv_bytearray.len)-1))
    c_free(vx_lv_bytearray.data)
    vx_ret[i] = vx_lvx_ret
  c_free(v_ma.data)
  vx_ret

proc availableTimeZoneIds*(_: type gen_qtimezone_types.QTimeZone, territory: cint): seq[seq[byte]] =
  var v_ma = fcQTimeZone_availableTimeZoneIdsWithTerritory(cint(territory))
  var vx_ret = newSeq[seq[byte]](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    var vx_lv_bytearray = v_outCast[i]
    var vx_lvx_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](vx_lv_bytearray.data), 0, int(vx_lv_bytearray.len)-1))
    c_free(vx_lv_bytearray.data)
    vx_ret[i] = vx_lvx_ret
  c_free(v_ma.data)
  vx_ret

proc availableTimeZoneIds2*(_: type gen_qtimezone_types.QTimeZone, offsetSeconds: cint): seq[seq[byte]] =
  var v_ma = fcQTimeZone_availableTimeZoneIdsWithOffsetSeconds(offsetSeconds)
  var vx_ret = newSeq[seq[byte]](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    var vx_lv_bytearray = v_outCast[i]
    var vx_lvx_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](vx_lv_bytearray.data), 0, int(vx_lv_bytearray.len)-1))
    c_free(vx_lv_bytearray.data)
    vx_ret[i] = vx_lvx_ret
  c_free(v_ma.data)
  vx_ret

proc ianaIdToWindowsId*(_: type gen_qtimezone_types.QTimeZone, ianaId: openArray[byte]): seq[byte] =
  var v_bytearray = fcQTimeZone_ianaIdToWindowsId(struct_miqt_string(data: cast[cstring](if len(ianaId) == 0: nil else: unsafeAddr ianaId[0]), len: csize_t(len(ianaId))))
  var vx_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](v_bytearray.data), 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc windowsIdToDefaultIanaId*(_: type gen_qtimezone_types.QTimeZone, windowsId: openArray[byte]): seq[byte] =
  var v_bytearray = fcQTimeZone_windowsIdToDefaultIanaId(struct_miqt_string(data: cast[cstring](if len(windowsId) == 0: nil else: unsafeAddr windowsId[0]), len: csize_t(len(windowsId))))
  var vx_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](v_bytearray.data), 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc windowsIdToDefaultIanaId*(_: type gen_qtimezone_types.QTimeZone, windowsId: openArray[byte], territory: cint): seq[byte] =
  var v_bytearray = fcQTimeZone_windowsIdToDefaultIanaId2(struct_miqt_string(data: cast[cstring](if len(windowsId) == 0: nil else: unsafeAddr windowsId[0]), len: csize_t(len(windowsId))), cint(territory))
  var vx_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](v_bytearray.data), 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc windowsIdToIanaIds*(_: type gen_qtimezone_types.QTimeZone, windowsId: openArray[byte]): seq[seq[byte]] =
  var v_ma = fcQTimeZone_windowsIdToIanaIds(struct_miqt_string(data: cast[cstring](if len(windowsId) == 0: nil else: unsafeAddr windowsId[0]), len: csize_t(len(windowsId))))
  var vx_ret = newSeq[seq[byte]](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    var vx_lv_bytearray = v_outCast[i]
    var vx_lvx_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](vx_lv_bytearray.data), 0, int(vx_lv_bytearray.len)-1))
    c_free(vx_lv_bytearray.data)
    vx_ret[i] = vx_lvx_ret
  c_free(v_ma.data)
  vx_ret

proc windowsIdToIanaIds*(_: type gen_qtimezone_types.QTimeZone, windowsId: openArray[byte], territory: cint): seq[seq[byte]] =
  var v_ma = fcQTimeZone_windowsIdToIanaIds2(struct_miqt_string(data: cast[cstring](if len(windowsId) == 0: nil else: unsafeAddr windowsId[0]), len: csize_t(len(windowsId))), cint(territory))
  var vx_ret = newSeq[seq[byte]](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    var vx_lv_bytearray = v_outCast[i]
    var vx_lvx_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](vx_lv_bytearray.data), 0, int(vx_lv_bytearray.len)-1))
    c_free(vx_lv_bytearray.data)
    vx_ret[i] = vx_lvx_ret
  c_free(v_ma.data)
  vx_ret

proc displayName*(self: gen_qtimezone_types.QTimeZone, atDateTime: gen_qdatetime_types.QDateTime, nameType: cint): string =
  let v_ms = fcQTimeZone_displayName2(self.h, atDateTime.h, cint(nameType))
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc displayName*(self: gen_qtimezone_types.QTimeZone, atDateTime: gen_qdatetime_types.QDateTime, nameType: cint, locale: gen_qlocale_types.QLocale): string =
  let v_ms = fcQTimeZone_displayName3(self.h, atDateTime.h, cint(nameType), locale.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc displayName*(self: gen_qtimezone_types.QTimeZone, timeType: cint, nameType: cint): string =
  let v_ms = fcQTimeZone_displayName22(self.h, cint(timeType), cint(nameType))
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc displayName*(self: gen_qtimezone_types.QTimeZone, timeType: cint, nameType: cint, locale: gen_qlocale_types.QLocale): string =
  let v_ms = fcQTimeZone_displayName32(self.h, cint(timeType), cint(nameType), locale.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc create*(T: type gen_qtimezone_types.QTimeZone): gen_qtimezone_types.QTimeZone =
  gen_qtimezone_types.QTimeZone(h: fcQTimeZone_new(), owned: true)

proc create*(T: type gen_qtimezone_types.QTimeZone,
    ianaId: openArray[byte]): gen_qtimezone_types.QTimeZone =
  gen_qtimezone_types.QTimeZone(h: fcQTimeZone_new2(struct_miqt_string(data: cast[cstring](if len(ianaId) == 0: nil else: unsafeAddr ianaId[0]), len: csize_t(len(ianaId)))), owned: true)

proc create*(T: type gen_qtimezone_types.QTimeZone,
    offsetSeconds: cint): gen_qtimezone_types.QTimeZone =
  gen_qtimezone_types.QTimeZone(h: fcQTimeZone_new3(offsetSeconds), owned: true)

proc create*(T: type gen_qtimezone_types.QTimeZone,
    zoneId: openArray[byte], offsetSeconds: cint, name: openArray[char], abbreviation: openArray[char]): gen_qtimezone_types.QTimeZone =
  gen_qtimezone_types.QTimeZone(h: fcQTimeZone_new4(struct_miqt_string(data: cast[cstring](if len(zoneId) == 0: nil else: unsafeAddr zoneId[0]), len: csize_t(len(zoneId))), offsetSeconds, struct_miqt_string(data: if len(name) > 0: addr name[0] else: nil, len: csize_t(len(name))), struct_miqt_string(data: if len(abbreviation) > 0: addr abbreviation[0] else: nil, len: csize_t(len(abbreviation)))), owned: true)

proc create*(T: type gen_qtimezone_types.QTimeZone,
    other: gen_qtimezone_types.QTimeZone): gen_qtimezone_types.QTimeZone =
  gen_qtimezone_types.QTimeZone(h: fcQTimeZone_new5(other.h), owned: true)

proc create*(T: type gen_qtimezone_types.QTimeZone,
    zoneId: openArray[byte], offsetSeconds: cint, name: openArray[char], abbreviation: openArray[char], territory: cint): gen_qtimezone_types.QTimeZone =
  gen_qtimezone_types.QTimeZone(h: fcQTimeZone_new6(struct_miqt_string(data: cast[cstring](if len(zoneId) == 0: nil else: unsafeAddr zoneId[0]), len: csize_t(len(zoneId))), offsetSeconds, struct_miqt_string(data: if len(name) > 0: addr name[0] else: nil, len: csize_t(len(name))), struct_miqt_string(data: if len(abbreviation) > 0: addr abbreviation[0] else: nil, len: csize_t(len(abbreviation))), cint(territory)), owned: true)

proc create*(T: type gen_qtimezone_types.QTimeZone,
    zoneId: openArray[byte], offsetSeconds: cint, name: openArray[char], abbreviation: openArray[char], territory: cint, comment: openArray[char]): gen_qtimezone_types.QTimeZone =
  gen_qtimezone_types.QTimeZone(h: fcQTimeZone_new7(struct_miqt_string(data: cast[cstring](if len(zoneId) == 0: nil else: unsafeAddr zoneId[0]), len: csize_t(len(zoneId))), offsetSeconds, struct_miqt_string(data: if len(name) > 0: addr name[0] else: nil, len: csize_t(len(name))), struct_miqt_string(data: if len(abbreviation) > 0: addr abbreviation[0] else: nil, len: csize_t(len(abbreviation))), cint(territory), struct_miqt_string(data: if len(comment) > 0: addr comment[0] else: nil, len: csize_t(len(comment)))), owned: true)

proc operatorAssign*(self: gen_qtimezone_types.QTimeZoneOffsetData, param1: gen_qtimezone_types.QTimeZoneOffsetData): void =
  fcQTimeZoneOffsetData_operatorAssign(self.h, param1.h)

proc create*(T: type gen_qtimezone_types.QTimeZoneOffsetData,
    param1: gen_qtimezone_types.QTimeZoneOffsetData): gen_qtimezone_types.QTimeZoneOffsetData =
  gen_qtimezone_types.QTimeZoneOffsetData(h: fcQTimeZoneOffsetData_new(param1.h), owned: true)

