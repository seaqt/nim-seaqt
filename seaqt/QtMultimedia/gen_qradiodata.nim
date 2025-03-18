import ./qtmultimedia_pkg

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


{.compile("gen_qradiodata.cpp", QtMultimediaCFlags).}


type QRadioDataErrorEnum* = distinct cint
template NoError*(_: type QRadioDataErrorEnum): untyped = 0
template ResourceError*(_: type QRadioDataErrorEnum): untyped = 1
template OpenError*(_: type QRadioDataErrorEnum): untyped = 2
template OutOfRangeError*(_: type QRadioDataErrorEnum): untyped = 3


type QRadioDataProgramTypeEnum* = distinct cint
template Undefined*(_: type QRadioDataProgramTypeEnum): untyped = 0
template News*(_: type QRadioDataProgramTypeEnum): untyped = 1
template CurrentAffairs*(_: type QRadioDataProgramTypeEnum): untyped = 2
template Information*(_: type QRadioDataProgramTypeEnum): untyped = 3
template Sport*(_: type QRadioDataProgramTypeEnum): untyped = 4
template Education*(_: type QRadioDataProgramTypeEnum): untyped = 5
template Drama*(_: type QRadioDataProgramTypeEnum): untyped = 6
template Culture*(_: type QRadioDataProgramTypeEnum): untyped = 7
template Science*(_: type QRadioDataProgramTypeEnum): untyped = 8
template Varied*(_: type QRadioDataProgramTypeEnum): untyped = 9
template PopMusic*(_: type QRadioDataProgramTypeEnum): untyped = 10
template RockMusic*(_: type QRadioDataProgramTypeEnum): untyped = 11
template EasyListening*(_: type QRadioDataProgramTypeEnum): untyped = 12
template LightClassical*(_: type QRadioDataProgramTypeEnum): untyped = 13
template SeriousClassical*(_: type QRadioDataProgramTypeEnum): untyped = 14
template OtherMusic*(_: type QRadioDataProgramTypeEnum): untyped = 15
template Weather*(_: type QRadioDataProgramTypeEnum): untyped = 16
template Finance*(_: type QRadioDataProgramTypeEnum): untyped = 17
template ChildrensProgrammes*(_: type QRadioDataProgramTypeEnum): untyped = 18
template SocialAffairs*(_: type QRadioDataProgramTypeEnum): untyped = 19
template Religion*(_: type QRadioDataProgramTypeEnum): untyped = 20
template PhoneIn*(_: type QRadioDataProgramTypeEnum): untyped = 21
template Travel*(_: type QRadioDataProgramTypeEnum): untyped = 22
template Leisure*(_: type QRadioDataProgramTypeEnum): untyped = 23
template JazzMusic*(_: type QRadioDataProgramTypeEnum): untyped = 24
template CountryMusic*(_: type QRadioDataProgramTypeEnum): untyped = 25
template NationalMusic*(_: type QRadioDataProgramTypeEnum): untyped = 26
template OldiesMusic*(_: type QRadioDataProgramTypeEnum): untyped = 27
template FolkMusic*(_: type QRadioDataProgramTypeEnum): untyped = 28
template Documentary*(_: type QRadioDataProgramTypeEnum): untyped = 29
template AlarmTest*(_: type QRadioDataProgramTypeEnum): untyped = 30
template Alarm*(_: type QRadioDataProgramTypeEnum): untyped = 31
template Talk*(_: type QRadioDataProgramTypeEnum): untyped = 32
template ClassicRock*(_: type QRadioDataProgramTypeEnum): untyped = 33
template AdultHits*(_: type QRadioDataProgramTypeEnum): untyped = 34
template SoftRock*(_: type QRadioDataProgramTypeEnum): untyped = 35
template Top40*(_: type QRadioDataProgramTypeEnum): untyped = 36
template Soft*(_: type QRadioDataProgramTypeEnum): untyped = 37
template Nostalgia*(_: type QRadioDataProgramTypeEnum): untyped = 38
template Classical*(_: type QRadioDataProgramTypeEnum): untyped = 39
template RhythmAndBlues*(_: type QRadioDataProgramTypeEnum): untyped = 40
template SoftRhythmAndBlues*(_: type QRadioDataProgramTypeEnum): untyped = 41
template Language*(_: type QRadioDataProgramTypeEnum): untyped = 42
template ReligiousMusic*(_: type QRadioDataProgramTypeEnum): untyped = 43
template ReligiousTalk*(_: type QRadioDataProgramTypeEnum): untyped = 44
template Personality*(_: type QRadioDataProgramTypeEnum): untyped = 45
template Public*(_: type QRadioDataProgramTypeEnum): untyped = 46
template College*(_: type QRadioDataProgramTypeEnum): untyped = 47


import ./gen_qradiodata_types
export gen_qradiodata_types

import
  ../QtCore/gen_qcoreevent_types,
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qobject,
  ../QtCore/gen_qobjectdefs_types,
  ./gen_qmediaobject_types
export
  gen_qcoreevent_types,
  gen_qmetaobject_types,
  gen_qobject,
  gen_qobjectdefs_types,
  gen_qmediaobject_types

type cQRadioData*{.exportc: "QRadioData", incompleteStruct.} = object

proc fcQRadioData_metaObject(self: pointer): pointer {.importc: "QRadioData_metaObject".}
proc fcQRadioData_metacast(self: pointer, param1: cstring): pointer {.importc: "QRadioData_metacast".}
proc fcQRadioData_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QRadioData_metacall".}
proc fcQRadioData_tr(s: cstring): struct_miqt_string {.importc: "QRadioData_tr".}
proc fcQRadioData_trUtf8(s: cstring): struct_miqt_string {.importc: "QRadioData_trUtf8".}
proc fcQRadioData_availability(self: pointer): cint {.importc: "QRadioData_availability".}
proc fcQRadioData_mediaObject(self: pointer): pointer {.importc: "QRadioData_mediaObject".}
proc fcQRadioData_stationId(self: pointer): struct_miqt_string {.importc: "QRadioData_stationId".}
proc fcQRadioData_programType(self: pointer): cint {.importc: "QRadioData_programType".}
proc fcQRadioData_programTypeName(self: pointer): struct_miqt_string {.importc: "QRadioData_programTypeName".}
proc fcQRadioData_stationName(self: pointer): struct_miqt_string {.importc: "QRadioData_stationName".}
proc fcQRadioData_radioText(self: pointer): struct_miqt_string {.importc: "QRadioData_radioText".}
proc fcQRadioData_isAlternativeFrequenciesEnabled(self: pointer): bool {.importc: "QRadioData_isAlternativeFrequenciesEnabled".}
proc fcQRadioData_error(self: pointer): cint {.importc: "QRadioData_error".}
proc fcQRadioData_errorString(self: pointer): struct_miqt_string {.importc: "QRadioData_errorString".}
proc fcQRadioData_setAlternativeFrequenciesEnabled(self: pointer, enabled: bool): void {.importc: "QRadioData_setAlternativeFrequenciesEnabled".}
proc fcQRadioData_stationIdChanged(self: pointer, stationId: struct_miqt_string): void {.importc: "QRadioData_stationIdChanged".}
proc fcQRadioData_connect_stationIdChanged(self: pointer, slot: int, callback: proc (slot: int, stationId: struct_miqt_string) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QRadioData_connect_stationIdChanged".}
proc fcQRadioData_programTypeChanged(self: pointer, programType: cint): void {.importc: "QRadioData_programTypeChanged".}
proc fcQRadioData_connect_programTypeChanged(self: pointer, slot: int, callback: proc (slot: int, programType: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QRadioData_connect_programTypeChanged".}
proc fcQRadioData_programTypeNameChanged(self: pointer, programTypeName: struct_miqt_string): void {.importc: "QRadioData_programTypeNameChanged".}
proc fcQRadioData_connect_programTypeNameChanged(self: pointer, slot: int, callback: proc (slot: int, programTypeName: struct_miqt_string) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QRadioData_connect_programTypeNameChanged".}
proc fcQRadioData_stationNameChanged(self: pointer, stationName: struct_miqt_string): void {.importc: "QRadioData_stationNameChanged".}
proc fcQRadioData_connect_stationNameChanged(self: pointer, slot: int, callback: proc (slot: int, stationName: struct_miqt_string) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QRadioData_connect_stationNameChanged".}
proc fcQRadioData_radioTextChanged(self: pointer, radioText: struct_miqt_string): void {.importc: "QRadioData_radioTextChanged".}
proc fcQRadioData_connect_radioTextChanged(self: pointer, slot: int, callback: proc (slot: int, radioText: struct_miqt_string) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QRadioData_connect_radioTextChanged".}
proc fcQRadioData_alternativeFrequenciesEnabledChanged(self: pointer, enabled: bool): void {.importc: "QRadioData_alternativeFrequenciesEnabledChanged".}
proc fcQRadioData_connect_alternativeFrequenciesEnabledChanged(self: pointer, slot: int, callback: proc (slot: int, enabled: bool) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QRadioData_connect_alternativeFrequenciesEnabledChanged".}
proc fcQRadioData_errorWithError(self: pointer, error: cint): void {.importc: "QRadioData_errorWithError".}
proc fcQRadioData_connect_errorWithError(self: pointer, slot: int, callback: proc (slot: int, error: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QRadioData_connect_errorWithError".}
proc fcQRadioData_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QRadioData_tr2".}
proc fcQRadioData_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QRadioData_tr3".}
proc fcQRadioData_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QRadioData_trUtf82".}
proc fcQRadioData_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QRadioData_trUtf83".}
proc fcQRadioData_vtbl(self: pointer): pointer {.importc: "QRadioData_vtbl".}
proc fcQRadioData_vdata(self: pointer): pointer {.importc: "QRadioData_vdata".}

type cQRadioDataVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  mediaObject*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  setMediaObject*: proc(self: pointer, mediaObject: pointer): bool {.cdecl, raises: [], gcsafe.}
  event*: proc(self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQRadioData_virtualbase_metaObject(self: pointer): pointer {.importc: "QRadioData_virtualbase_metaObject".}
proc fcQRadioData_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QRadioData_virtualbase_metacast".}
proc fcQRadioData_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QRadioData_virtualbase_metacall".}
proc fcQRadioData_virtualbase_mediaObject(self: pointer): pointer {.importc: "QRadioData_virtualbase_mediaObject".}
proc fcQRadioData_virtualbase_setMediaObject(self: pointer, mediaObject: pointer): bool {.importc: "QRadioData_virtualbase_setMediaObject".}
proc fcQRadioData_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QRadioData_virtualbase_event".}
proc fcQRadioData_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QRadioData_virtualbase_eventFilter".}
proc fcQRadioData_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QRadioData_virtualbase_timerEvent".}
proc fcQRadioData_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QRadioData_virtualbase_childEvent".}
proc fcQRadioData_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QRadioData_virtualbase_customEvent".}
proc fcQRadioData_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QRadioData_virtualbase_connectNotify".}
proc fcQRadioData_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QRadioData_virtualbase_disconnectNotify".}
proc fcQRadioData_protectedbase_sender(self: pointer): pointer {.importc: "QRadioData_protectedbase_sender".}
proc fcQRadioData_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QRadioData_protectedbase_senderSignalIndex".}
proc fcQRadioData_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QRadioData_protectedbase_receivers".}
proc fcQRadioData_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QRadioData_protectedbase_isSignalConnected".}
proc fcQRadioData_new(vtbl, vdata: pointer, mediaObject: pointer): ptr cQRadioData {.importc: "QRadioData_new".}
proc fcQRadioData_new2(vtbl, vdata: pointer, mediaObject: pointer, parent: pointer): ptr cQRadioData {.importc: "QRadioData_new2".}
proc fcQRadioData_staticMetaObject(): pointer {.importc: "QRadioData_staticMetaObject".}

proc metaObject*(self: gen_qradiodata_types.QRadioData): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQRadioData_metaObject(self.h), owned: false)

proc metacast*(self: gen_qradiodata_types.QRadioData, param1: cstring): pointer =
  fcQRadioData_metacast(self.h, param1)

proc metacall*(self: gen_qradiodata_types.QRadioData, param1: cint, param2: cint, param3: pointer): cint =
  fcQRadioData_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qradiodata_types.QRadioData, s: cstring): string =
  let v_ms = fcQRadioData_tr(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qradiodata_types.QRadioData, s: cstring): string =
  let v_ms = fcQRadioData_trUtf8(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc availability*(self: gen_qradiodata_types.QRadioData): cint =
  cint(fcQRadioData_availability(self.h))

proc mediaObject*(self: gen_qradiodata_types.QRadioData): gen_qmediaobject_types.QMediaObject =
  gen_qmediaobject_types.QMediaObject(h: fcQRadioData_mediaObject(self.h), owned: false)

proc stationId*(self: gen_qradiodata_types.QRadioData): string =
  let v_ms = fcQRadioData_stationId(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc programType*(self: gen_qradiodata_types.QRadioData): cint =
  cint(fcQRadioData_programType(self.h))

proc programTypeName*(self: gen_qradiodata_types.QRadioData): string =
  let v_ms = fcQRadioData_programTypeName(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc stationName*(self: gen_qradiodata_types.QRadioData): string =
  let v_ms = fcQRadioData_stationName(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc radioText*(self: gen_qradiodata_types.QRadioData): string =
  let v_ms = fcQRadioData_radioText(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc isAlternativeFrequenciesEnabled*(self: gen_qradiodata_types.QRadioData): bool =
  fcQRadioData_isAlternativeFrequenciesEnabled(self.h)

proc error*(self: gen_qradiodata_types.QRadioData): cint =
  cint(fcQRadioData_error(self.h))

proc errorString*(self: gen_qradiodata_types.QRadioData): string =
  let v_ms = fcQRadioData_errorString(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc setAlternativeFrequenciesEnabled*(self: gen_qradiodata_types.QRadioData, enabled: bool): void =
  fcQRadioData_setAlternativeFrequenciesEnabled(self.h, enabled)

proc stationIdChanged*(self: gen_qradiodata_types.QRadioData, stationId: openArray[char]): void =
  fcQRadioData_stationIdChanged(self.h, struct_miqt_string(data: if len(stationId) > 0: addr stationId[0] else: nil, len: csize_t(len(stationId))))

type QRadioDatastationIdChangedSlot* = proc(stationId: openArray[char])
proc fcQRadioData_slot_callback_stationIdChanged(slot: int, stationId: struct_miqt_string) {.cdecl.} =
  let nimfunc = cast[ptr QRadioDatastationIdChangedSlot](cast[pointer](slot))
  let vstationId_ms = stationId
  let vstationIdx_ret = string.fromBytes(vstationId_ms)
  c_free(vstationId_ms.data)
  let slotval1 = vstationIdx_ret

  nimfunc[](slotval1)

proc fcQRadioData_slot_callback_stationIdChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QRadioDatastationIdChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onStationIdChanged*(self: gen_qradiodata_types.QRadioData, slot: QRadioDatastationIdChangedSlot) =
  var tmp = new QRadioDatastationIdChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQRadioData_connect_stationIdChanged(self.h, cast[int](addr tmp[]), fcQRadioData_slot_callback_stationIdChanged, fcQRadioData_slot_callback_stationIdChanged_release)

proc programTypeChanged*(self: gen_qradiodata_types.QRadioData, programType: cint): void =
  fcQRadioData_programTypeChanged(self.h, cint(programType))

type QRadioDataprogramTypeChangedSlot* = proc(programType: cint)
proc fcQRadioData_slot_callback_programTypeChanged(slot: int, programType: cint) {.cdecl.} =
  let nimfunc = cast[ptr QRadioDataprogramTypeChangedSlot](cast[pointer](slot))
  let slotval1 = cint(programType)

  nimfunc[](slotval1)

proc fcQRadioData_slot_callback_programTypeChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QRadioDataprogramTypeChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onProgramTypeChanged*(self: gen_qradiodata_types.QRadioData, slot: QRadioDataprogramTypeChangedSlot) =
  var tmp = new QRadioDataprogramTypeChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQRadioData_connect_programTypeChanged(self.h, cast[int](addr tmp[]), fcQRadioData_slot_callback_programTypeChanged, fcQRadioData_slot_callback_programTypeChanged_release)

proc programTypeNameChanged*(self: gen_qradiodata_types.QRadioData, programTypeName: openArray[char]): void =
  fcQRadioData_programTypeNameChanged(self.h, struct_miqt_string(data: if len(programTypeName) > 0: addr programTypeName[0] else: nil, len: csize_t(len(programTypeName))))

type QRadioDataprogramTypeNameChangedSlot* = proc(programTypeName: openArray[char])
proc fcQRadioData_slot_callback_programTypeNameChanged(slot: int, programTypeName: struct_miqt_string) {.cdecl.} =
  let nimfunc = cast[ptr QRadioDataprogramTypeNameChangedSlot](cast[pointer](slot))
  let vprogramTypeName_ms = programTypeName
  let vprogramTypeNamex_ret = string.fromBytes(vprogramTypeName_ms)
  c_free(vprogramTypeName_ms.data)
  let slotval1 = vprogramTypeNamex_ret

  nimfunc[](slotval1)

proc fcQRadioData_slot_callback_programTypeNameChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QRadioDataprogramTypeNameChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onProgramTypeNameChanged*(self: gen_qradiodata_types.QRadioData, slot: QRadioDataprogramTypeNameChangedSlot) =
  var tmp = new QRadioDataprogramTypeNameChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQRadioData_connect_programTypeNameChanged(self.h, cast[int](addr tmp[]), fcQRadioData_slot_callback_programTypeNameChanged, fcQRadioData_slot_callback_programTypeNameChanged_release)

proc stationNameChanged*(self: gen_qradiodata_types.QRadioData, stationName: openArray[char]): void =
  fcQRadioData_stationNameChanged(self.h, struct_miqt_string(data: if len(stationName) > 0: addr stationName[0] else: nil, len: csize_t(len(stationName))))

type QRadioDatastationNameChangedSlot* = proc(stationName: openArray[char])
proc fcQRadioData_slot_callback_stationNameChanged(slot: int, stationName: struct_miqt_string) {.cdecl.} =
  let nimfunc = cast[ptr QRadioDatastationNameChangedSlot](cast[pointer](slot))
  let vstationName_ms = stationName
  let vstationNamex_ret = string.fromBytes(vstationName_ms)
  c_free(vstationName_ms.data)
  let slotval1 = vstationNamex_ret

  nimfunc[](slotval1)

proc fcQRadioData_slot_callback_stationNameChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QRadioDatastationNameChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onStationNameChanged*(self: gen_qradiodata_types.QRadioData, slot: QRadioDatastationNameChangedSlot) =
  var tmp = new QRadioDatastationNameChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQRadioData_connect_stationNameChanged(self.h, cast[int](addr tmp[]), fcQRadioData_slot_callback_stationNameChanged, fcQRadioData_slot_callback_stationNameChanged_release)

proc radioTextChanged*(self: gen_qradiodata_types.QRadioData, radioText: openArray[char]): void =
  fcQRadioData_radioTextChanged(self.h, struct_miqt_string(data: if len(radioText) > 0: addr radioText[0] else: nil, len: csize_t(len(radioText))))

type QRadioDataradioTextChangedSlot* = proc(radioText: openArray[char])
proc fcQRadioData_slot_callback_radioTextChanged(slot: int, radioText: struct_miqt_string) {.cdecl.} =
  let nimfunc = cast[ptr QRadioDataradioTextChangedSlot](cast[pointer](slot))
  let vradioText_ms = radioText
  let vradioTextx_ret = string.fromBytes(vradioText_ms)
  c_free(vradioText_ms.data)
  let slotval1 = vradioTextx_ret

  nimfunc[](slotval1)

proc fcQRadioData_slot_callback_radioTextChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QRadioDataradioTextChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onRadioTextChanged*(self: gen_qradiodata_types.QRadioData, slot: QRadioDataradioTextChangedSlot) =
  var tmp = new QRadioDataradioTextChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQRadioData_connect_radioTextChanged(self.h, cast[int](addr tmp[]), fcQRadioData_slot_callback_radioTextChanged, fcQRadioData_slot_callback_radioTextChanged_release)

proc alternativeFrequenciesEnabledChanged*(self: gen_qradiodata_types.QRadioData, enabled: bool): void =
  fcQRadioData_alternativeFrequenciesEnabledChanged(self.h, enabled)

type QRadioDataalternativeFrequenciesEnabledChangedSlot* = proc(enabled: bool)
proc fcQRadioData_slot_callback_alternativeFrequenciesEnabledChanged(slot: int, enabled: bool) {.cdecl.} =
  let nimfunc = cast[ptr QRadioDataalternativeFrequenciesEnabledChangedSlot](cast[pointer](slot))
  let slotval1 = enabled

  nimfunc[](slotval1)

proc fcQRadioData_slot_callback_alternativeFrequenciesEnabledChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QRadioDataalternativeFrequenciesEnabledChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onAlternativeFrequenciesEnabledChanged*(self: gen_qradiodata_types.QRadioData, slot: QRadioDataalternativeFrequenciesEnabledChangedSlot) =
  var tmp = new QRadioDataalternativeFrequenciesEnabledChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQRadioData_connect_alternativeFrequenciesEnabledChanged(self.h, cast[int](addr tmp[]), fcQRadioData_slot_callback_alternativeFrequenciesEnabledChanged, fcQRadioData_slot_callback_alternativeFrequenciesEnabledChanged_release)

proc error*(self: gen_qradiodata_types.QRadioData, error: cint): void =
  fcQRadioData_errorWithError(self.h, cint(error))

type QRadioDataerrorWithErrorSlot* = proc(error: cint)
proc fcQRadioData_slot_callback_errorWithError(slot: int, error: cint) {.cdecl.} =
  let nimfunc = cast[ptr QRadioDataerrorWithErrorSlot](cast[pointer](slot))
  let slotval1 = cint(error)

  nimfunc[](slotval1)

proc fcQRadioData_slot_callback_errorWithError_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QRadioDataerrorWithErrorSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onError*(self: gen_qradiodata_types.QRadioData, slot: QRadioDataerrorWithErrorSlot) =
  var tmp = new QRadioDataerrorWithErrorSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQRadioData_connect_errorWithError(self.h, cast[int](addr tmp[]), fcQRadioData_slot_callback_errorWithError, fcQRadioData_slot_callback_errorWithError_release)

proc tr*(_: type gen_qradiodata_types.QRadioData, s: cstring, c: cstring): string =
  let v_ms = fcQRadioData_tr2(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qradiodata_types.QRadioData, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQRadioData_tr3(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qradiodata_types.QRadioData, s: cstring, c: cstring): string =
  let v_ms = fcQRadioData_trUtf82(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qradiodata_types.QRadioData, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQRadioData_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

type QRadioDatametaObjectProc* = proc(self: QRadioData): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QRadioDatametacastProc* = proc(self: QRadioData, param1: cstring): pointer {.raises: [], gcsafe.}
type QRadioDatametacallProc* = proc(self: QRadioData, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QRadioDatamediaObjectProc* = proc(self: QRadioData): gen_qmediaobject_types.QMediaObject {.raises: [], gcsafe.}
type QRadioDatasetMediaObjectProc* = proc(self: QRadioData, mediaObject: gen_qmediaobject_types.QMediaObject): bool {.raises: [], gcsafe.}
type QRadioDataeventProc* = proc(self: QRadioData, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QRadioDataeventFilterProc* = proc(self: QRadioData, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QRadioDatatimerEventProc* = proc(self: QRadioData, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QRadioDatachildEventProc* = proc(self: QRadioData, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QRadioDatacustomEventProc* = proc(self: QRadioData, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QRadioDataconnectNotifyProc* = proc(self: QRadioData, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QRadioDatadisconnectNotifyProc* = proc(self: QRadioData, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}

type QRadioDataVTable* {.inheritable, pure.} = object
  vtbl: cQRadioDataVTable
  metaObject*: QRadioDatametaObjectProc
  metacast*: QRadioDatametacastProc
  metacall*: QRadioDatametacallProc
  mediaObject*: QRadioDatamediaObjectProc
  setMediaObject*: QRadioDatasetMediaObjectProc
  event*: QRadioDataeventProc
  eventFilter*: QRadioDataeventFilterProc
  timerEvent*: QRadioDatatimerEventProc
  childEvent*: QRadioDatachildEventProc
  customEvent*: QRadioDatacustomEventProc
  connectNotify*: QRadioDataconnectNotifyProc
  disconnectNotify*: QRadioDatadisconnectNotifyProc

proc QRadioDatametaObject*(self: gen_qradiodata_types.QRadioData): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQRadioData_virtualbase_metaObject(self.h), owned: false)

proc QRadioDatametacast*(self: gen_qradiodata_types.QRadioData, param1: cstring): pointer =
  fcQRadioData_virtualbase_metacast(self.h, param1)

proc QRadioDatametacall*(self: gen_qradiodata_types.QRadioData, param1: cint, param2: cint, param3: pointer): cint =
  fcQRadioData_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc QRadioDatamediaObject*(self: gen_qradiodata_types.QRadioData): gen_qmediaobject_types.QMediaObject =
  gen_qmediaobject_types.QMediaObject(h: fcQRadioData_virtualbase_mediaObject(self.h), owned: false)

proc QRadioDatasetMediaObject*(self: gen_qradiodata_types.QRadioData, mediaObject: gen_qmediaobject_types.QMediaObject): bool =
  fcQRadioData_virtualbase_setMediaObject(self.h, mediaObject.h)

proc QRadioDataevent*(self: gen_qradiodata_types.QRadioData, event: gen_qcoreevent_types.QEvent): bool =
  fcQRadioData_virtualbase_event(self.h, event.h)

proc QRadioDataeventFilter*(self: gen_qradiodata_types.QRadioData, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQRadioData_virtualbase_eventFilter(self.h, watched.h, event.h)

proc QRadioDatatimerEvent*(self: gen_qradiodata_types.QRadioData, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQRadioData_virtualbase_timerEvent(self.h, event.h)

proc QRadioDatachildEvent*(self: gen_qradiodata_types.QRadioData, event: gen_qcoreevent_types.QChildEvent): void =
  fcQRadioData_virtualbase_childEvent(self.h, event.h)

proc QRadioDatacustomEvent*(self: gen_qradiodata_types.QRadioData, event: gen_qcoreevent_types.QEvent): void =
  fcQRadioData_virtualbase_customEvent(self.h, event.h)

proc QRadioDataconnectNotify*(self: gen_qradiodata_types.QRadioData, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQRadioData_virtualbase_connectNotify(self.h, signal.h)

proc QRadioDatadisconnectNotify*(self: gen_qradiodata_types.QRadioData, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQRadioData_virtualbase_disconnectNotify(self.h, signal.h)


proc fcQRadioData_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QRadioDataVTable](fcQRadioData_vdata(self))
  let self = QRadioData(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQRadioData_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QRadioDataVTable](fcQRadioData_vdata(self))
  let self = QRadioData(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc fcQRadioData_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QRadioDataVTable](fcQRadioData_vdata(self))
  let self = QRadioData(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc fcQRadioData_vtable_callback_mediaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QRadioDataVTable](fcQRadioData_vdata(self))
  let self = QRadioData(h: self)
  var virtualReturn = vtbl[].mediaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQRadioData_vtable_callback_setMediaObject(self: pointer, mediaObject: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QRadioDataVTable](fcQRadioData_vdata(self))
  let self = QRadioData(h: self)
  let slotval1 = gen_qmediaobject_types.QMediaObject(h: mediaObject, owned: false)
  var virtualReturn = vtbl[].setMediaObject(self, slotval1)
  virtualReturn

proc fcQRadioData_vtable_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QRadioDataVTable](fcQRadioData_vdata(self))
  let self = QRadioData(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc fcQRadioData_vtable_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QRadioDataVTable](fcQRadioData_vdata(self))
  let self = QRadioData(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc fcQRadioData_vtable_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRadioDataVTable](fcQRadioData_vdata(self))
  let self = QRadioData(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc fcQRadioData_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRadioDataVTable](fcQRadioData_vdata(self))
  let self = QRadioData(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc fcQRadioData_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRadioDataVTable](fcQRadioData_vdata(self))
  let self = QRadioData(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc fcQRadioData_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRadioDataVTable](fcQRadioData_vdata(self))
  let self = QRadioData(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc fcQRadioData_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRadioDataVTable](fcQRadioData_vdata(self))
  let self = QRadioData(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQRadioData* {.inheritable.} = ref object of QRadioData
  vtbl*: cQRadioDataVTable

method metaObject*(self: VirtualQRadioData): gen_qobjectdefs_types.QMetaObject {.base.} =
  QRadioDatametaObject(self[])
method metacast*(self: VirtualQRadioData, param1: cstring): pointer {.base.} =
  QRadioDatametacast(self[], param1)
method metacall*(self: VirtualQRadioData, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QRadioDatametacall(self[], param1, param2, param3)
method mediaObject*(self: VirtualQRadioData): gen_qmediaobject_types.QMediaObject {.base.} =
  QRadioDatamediaObject(self[])
method setMediaObject*(self: VirtualQRadioData, mediaObject: gen_qmediaobject_types.QMediaObject): bool {.base.} =
  QRadioDatasetMediaObject(self[], mediaObject)
method event*(self: VirtualQRadioData, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QRadioDataevent(self[], event)
method eventFilter*(self: VirtualQRadioData, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QRadioDataeventFilter(self[], watched, event)
method timerEvent*(self: VirtualQRadioData, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QRadioDatatimerEvent(self[], event)
method childEvent*(self: VirtualQRadioData, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QRadioDatachildEvent(self[], event)
method customEvent*(self: VirtualQRadioData, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QRadioDatacustomEvent(self[], event)
method connectNotify*(self: VirtualQRadioData, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QRadioDataconnectNotify(self[], signal)
method disconnectNotify*(self: VirtualQRadioData, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QRadioDatadisconnectNotify(self[], signal)

proc fcQRadioData_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQRadioData](fcQRadioData_vdata(self))
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQRadioData_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQRadioData](fcQRadioData_vdata(self))
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

proc fcQRadioData_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQRadioData](fcQRadioData_vdata(self))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

proc fcQRadioData_method_callback_mediaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQRadioData](fcQRadioData_vdata(self))
  var virtualReturn = inst.mediaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQRadioData_method_callback_setMediaObject(self: pointer, mediaObject: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQRadioData](fcQRadioData_vdata(self))
  let slotval1 = gen_qmediaobject_types.QMediaObject(h: mediaObject, owned: false)
  var virtualReturn = inst.setMediaObject(slotval1)
  virtualReturn

proc fcQRadioData_method_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQRadioData](fcQRadioData_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

proc fcQRadioData_method_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQRadioData](fcQRadioData_vdata(self))
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

proc fcQRadioData_method_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQRadioData](fcQRadioData_vdata(self))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  inst.timerEvent(slotval1)

proc fcQRadioData_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQRadioData](fcQRadioData_vdata(self))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  inst.childEvent(slotval1)

proc fcQRadioData_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQRadioData](fcQRadioData_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)

proc fcQRadioData_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQRadioData](fcQRadioData_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

proc fcQRadioData_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQRadioData](fcQRadioData_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.disconnectNotify(slotval1)


proc sender*(self: gen_qradiodata_types.QRadioData): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQRadioData_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qradiodata_types.QRadioData): cint =
  fcQRadioData_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qradiodata_types.QRadioData, signal: cstring): cint =
  fcQRadioData_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qradiodata_types.QRadioData, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQRadioData_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qradiodata_types.QRadioData,
    mediaObject: gen_qmediaobject_types.QMediaObject,
    vtbl: ref QRadioDataVTable = nil): gen_qradiodata_types.QRadioData =
  let vtbl = if vtbl == nil: new QRadioDataVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QRadioDataVTable](fcQRadioData_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQRadioData_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQRadioData_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQRadioData_vtable_callback_metacall
  if not isNil(vtbl[].mediaObject):
    vtbl[].vtbl.mediaObject = fcQRadioData_vtable_callback_mediaObject
  if not isNil(vtbl[].setMediaObject):
    vtbl[].vtbl.setMediaObject = fcQRadioData_vtable_callback_setMediaObject
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQRadioData_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQRadioData_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQRadioData_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQRadioData_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQRadioData_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQRadioData_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQRadioData_vtable_callback_disconnectNotify
  gen_qradiodata_types.QRadioData(h: fcQRadioData_new(addr(vtbl[].vtbl), addr(vtbl[]), mediaObject.h), owned: true)

proc create*(T: type gen_qradiodata_types.QRadioData,
    mediaObject: gen_qmediaobject_types.QMediaObject, parent: gen_qobject_types.QObject,
    vtbl: ref QRadioDataVTable = nil): gen_qradiodata_types.QRadioData =
  let vtbl = if vtbl == nil: new QRadioDataVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QRadioDataVTable](fcQRadioData_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQRadioData_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQRadioData_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQRadioData_vtable_callback_metacall
  if not isNil(vtbl[].mediaObject):
    vtbl[].vtbl.mediaObject = fcQRadioData_vtable_callback_mediaObject
  if not isNil(vtbl[].setMediaObject):
    vtbl[].vtbl.setMediaObject = fcQRadioData_vtable_callback_setMediaObject
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQRadioData_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQRadioData_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQRadioData_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQRadioData_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQRadioData_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQRadioData_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQRadioData_vtable_callback_disconnectNotify
  gen_qradiodata_types.QRadioData(h: fcQRadioData_new2(addr(vtbl[].vtbl), addr(vtbl[]), mediaObject.h, parent.h), owned: true)

const cQRadioData_mvtbl = cQRadioDataVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQRadioData()[])](self.fcQRadioData_vdata())
    inst[].h = nil
    inst[].owned = false,

  metaObject: fcQRadioData_method_callback_metaObject,
  metacast: fcQRadioData_method_callback_metacast,
  metacall: fcQRadioData_method_callback_metacall,
  mediaObject: fcQRadioData_method_callback_mediaObject,
  setMediaObject: fcQRadioData_method_callback_setMediaObject,
  event: fcQRadioData_method_callback_event,
  eventFilter: fcQRadioData_method_callback_eventFilter,
  timerEvent: fcQRadioData_method_callback_timerEvent,
  childEvent: fcQRadioData_method_callback_childEvent,
  customEvent: fcQRadioData_method_callback_customEvent,
  connectNotify: fcQRadioData_method_callback_connectNotify,
  disconnectNotify: fcQRadioData_method_callback_disconnectNotify,
)
proc create*(T: type gen_qradiodata_types.QRadioData,
    mediaObject: gen_qmediaobject_types.QMediaObject,
    inst: VirtualQRadioData) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQRadioData_new(addr(cQRadioData_mvtbl), addr(inst[]), mediaObject.h)
  inst[].owned = true

proc create*(T: type gen_qradiodata_types.QRadioData,
    mediaObject: gen_qmediaobject_types.QMediaObject, parent: gen_qobject_types.QObject,
    inst: VirtualQRadioData) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQRadioData_new2(addr(cQRadioData_mvtbl), addr(inst[]), mediaObject.h, parent.h)
  inst[].owned = true

proc staticMetaObject*(_: type gen_qradiodata_types.QRadioData): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQRadioData_staticMetaObject())
