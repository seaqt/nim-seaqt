import ./Qt5Multimedia_libs

{.push raises: [].}

from system/ansi_c import c_free

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

const cflags = gorge("pkg-config --cflags Qt5Multimedia")  & " -fPIC"
{.compile("gen_qradiodata.cpp", cflags).}


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

proc fcQRadioData_metaObject(self: pointer, ): pointer {.importc: "QRadioData_metaObject".}
proc fcQRadioData_metacast(self: pointer, param1: cstring): pointer {.importc: "QRadioData_metacast".}
proc fcQRadioData_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QRadioData_metacall".}
proc fcQRadioData_tr(s: cstring): struct_miqt_string {.importc: "QRadioData_tr".}
proc fcQRadioData_trUtf8(s: cstring): struct_miqt_string {.importc: "QRadioData_trUtf8".}
proc fcQRadioData_availability(self: pointer, ): cint {.importc: "QRadioData_availability".}
proc fcQRadioData_mediaObject(self: pointer, ): pointer {.importc: "QRadioData_mediaObject".}
proc fcQRadioData_stationId(self: pointer, ): struct_miqt_string {.importc: "QRadioData_stationId".}
proc fcQRadioData_programType(self: pointer, ): cint {.importc: "QRadioData_programType".}
proc fcQRadioData_programTypeName(self: pointer, ): struct_miqt_string {.importc: "QRadioData_programTypeName".}
proc fcQRadioData_stationName(self: pointer, ): struct_miqt_string {.importc: "QRadioData_stationName".}
proc fcQRadioData_radioText(self: pointer, ): struct_miqt_string {.importc: "QRadioData_radioText".}
proc fcQRadioData_isAlternativeFrequenciesEnabled(self: pointer, ): bool {.importc: "QRadioData_isAlternativeFrequenciesEnabled".}
proc fcQRadioData_error(self: pointer, ): cint {.importc: "QRadioData_error".}
proc fcQRadioData_errorString(self: pointer, ): struct_miqt_string {.importc: "QRadioData_errorString".}
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
type cQRadioDataVTable = object
  destructor*: proc(vtbl: ptr cQRadioDataVTable, self: ptr cQRadioData) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(vtbl, self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(vtbl, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  mediaObject*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  setMediaObject*: proc(vtbl, self: pointer, mediaObject: pointer): bool {.cdecl, raises: [], gcsafe.}
  event*: proc(vtbl, self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(vtbl, self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQRadioData_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QRadioData_virtualbase_metaObject".}
proc fcQRadioData_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QRadioData_virtualbase_metacast".}
proc fcQRadioData_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QRadioData_virtualbase_metacall".}
proc fcQRadioData_virtualbase_mediaObject(self: pointer, ): pointer {.importc: "QRadioData_virtualbase_mediaObject".}
proc fcQRadioData_virtualbase_setMediaObject(self: pointer, mediaObject: pointer): bool {.importc: "QRadioData_virtualbase_setMediaObject".}
proc fcQRadioData_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QRadioData_virtualbase_event".}
proc fcQRadioData_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QRadioData_virtualbase_eventFilter".}
proc fcQRadioData_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QRadioData_virtualbase_timerEvent".}
proc fcQRadioData_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QRadioData_virtualbase_childEvent".}
proc fcQRadioData_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QRadioData_virtualbase_customEvent".}
proc fcQRadioData_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QRadioData_virtualbase_connectNotify".}
proc fcQRadioData_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QRadioData_virtualbase_disconnectNotify".}
proc fcQRadioData_new(vtbl: pointer, mediaObject: pointer): ptr cQRadioData {.importc: "QRadioData_new".}
proc fcQRadioData_new2(vtbl: pointer, mediaObject: pointer, parent: pointer): ptr cQRadioData {.importc: "QRadioData_new2".}
proc fcQRadioData_staticMetaObject(): pointer {.importc: "QRadioData_staticMetaObject".}
proc fcQRadioData_delete(self: pointer) {.importc: "QRadioData_delete".}

proc metaObject*(self: gen_qradiodata_types.QRadioData, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQRadioData_metaObject(self.h))

proc metacast*(self: gen_qradiodata_types.QRadioData, param1: cstring): pointer =
  fcQRadioData_metacast(self.h, param1)

proc metacall*(self: gen_qradiodata_types.QRadioData, param1: cint, param2: cint, param3: pointer): cint =
  fcQRadioData_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qradiodata_types.QRadioData, s: cstring): string =
  let v_ms = fcQRadioData_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qradiodata_types.QRadioData, s: cstring): string =
  let v_ms = fcQRadioData_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc availability*(self: gen_qradiodata_types.QRadioData, ): cint =
  cint(fcQRadioData_availability(self.h))

proc mediaObject*(self: gen_qradiodata_types.QRadioData, ): gen_qmediaobject_types.QMediaObject =
  gen_qmediaobject_types.QMediaObject(h: fcQRadioData_mediaObject(self.h))

proc stationId*(self: gen_qradiodata_types.QRadioData, ): string =
  let v_ms = fcQRadioData_stationId(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc programType*(self: gen_qradiodata_types.QRadioData, ): cint =
  cint(fcQRadioData_programType(self.h))

proc programTypeName*(self: gen_qradiodata_types.QRadioData, ): string =
  let v_ms = fcQRadioData_programTypeName(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc stationName*(self: gen_qradiodata_types.QRadioData, ): string =
  let v_ms = fcQRadioData_stationName(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc radioText*(self: gen_qradiodata_types.QRadioData, ): string =
  let v_ms = fcQRadioData_radioText(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc isAlternativeFrequenciesEnabled*(self: gen_qradiodata_types.QRadioData, ): bool =
  fcQRadioData_isAlternativeFrequenciesEnabled(self.h)

proc error*(self: gen_qradiodata_types.QRadioData, ): cint =
  cint(fcQRadioData_error(self.h))

proc errorString*(self: gen_qradiodata_types.QRadioData, ): string =
  let v_ms = fcQRadioData_errorString(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setAlternativeFrequenciesEnabled*(self: gen_qradiodata_types.QRadioData, enabled: bool): void =
  fcQRadioData_setAlternativeFrequenciesEnabled(self.h, enabled)

proc stationIdChanged*(self: gen_qradiodata_types.QRadioData, stationId: string): void =
  fcQRadioData_stationIdChanged(self.h, struct_miqt_string(data: stationId, len: csize_t(len(stationId))))

type QRadioDatastationIdChangedSlot* = proc(stationId: string)
proc miqt_exec_callback_cQRadioData_stationIdChanged(slot: int, stationId: struct_miqt_string) {.cdecl.} =
  let nimfunc = cast[ptr QRadioDatastationIdChangedSlot](cast[pointer](slot))
  let vstationId_ms = stationId
  let vstationIdx_ret = string.fromBytes(toOpenArrayByte(vstationId_ms.data, 0, int(vstationId_ms.len)-1))
  c_free(vstationId_ms.data)
  let slotval1 = vstationIdx_ret

  nimfunc[](slotval1)

proc miqt_exec_callback_cQRadioData_stationIdChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QRadioDatastationIdChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onstationIdChanged*(self: gen_qradiodata_types.QRadioData, slot: QRadioDatastationIdChangedSlot) =
  var tmp = new QRadioDatastationIdChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQRadioData_connect_stationIdChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQRadioData_stationIdChanged, miqt_exec_callback_cQRadioData_stationIdChanged_release)

proc programTypeChanged*(self: gen_qradiodata_types.QRadioData, programType: cint): void =
  fcQRadioData_programTypeChanged(self.h, cint(programType))

type QRadioDataprogramTypeChangedSlot* = proc(programType: cint)
proc miqt_exec_callback_cQRadioData_programTypeChanged(slot: int, programType: cint) {.cdecl.} =
  let nimfunc = cast[ptr QRadioDataprogramTypeChangedSlot](cast[pointer](slot))
  let slotval1 = cint(programType)

  nimfunc[](slotval1)

proc miqt_exec_callback_cQRadioData_programTypeChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QRadioDataprogramTypeChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onprogramTypeChanged*(self: gen_qradiodata_types.QRadioData, slot: QRadioDataprogramTypeChangedSlot) =
  var tmp = new QRadioDataprogramTypeChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQRadioData_connect_programTypeChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQRadioData_programTypeChanged, miqt_exec_callback_cQRadioData_programTypeChanged_release)

proc programTypeNameChanged*(self: gen_qradiodata_types.QRadioData, programTypeName: string): void =
  fcQRadioData_programTypeNameChanged(self.h, struct_miqt_string(data: programTypeName, len: csize_t(len(programTypeName))))

type QRadioDataprogramTypeNameChangedSlot* = proc(programTypeName: string)
proc miqt_exec_callback_cQRadioData_programTypeNameChanged(slot: int, programTypeName: struct_miqt_string) {.cdecl.} =
  let nimfunc = cast[ptr QRadioDataprogramTypeNameChangedSlot](cast[pointer](slot))
  let vprogramTypeName_ms = programTypeName
  let vprogramTypeNamex_ret = string.fromBytes(toOpenArrayByte(vprogramTypeName_ms.data, 0, int(vprogramTypeName_ms.len)-1))
  c_free(vprogramTypeName_ms.data)
  let slotval1 = vprogramTypeNamex_ret

  nimfunc[](slotval1)

proc miqt_exec_callback_cQRadioData_programTypeNameChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QRadioDataprogramTypeNameChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onprogramTypeNameChanged*(self: gen_qradiodata_types.QRadioData, slot: QRadioDataprogramTypeNameChangedSlot) =
  var tmp = new QRadioDataprogramTypeNameChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQRadioData_connect_programTypeNameChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQRadioData_programTypeNameChanged, miqt_exec_callback_cQRadioData_programTypeNameChanged_release)

proc stationNameChanged*(self: gen_qradiodata_types.QRadioData, stationName: string): void =
  fcQRadioData_stationNameChanged(self.h, struct_miqt_string(data: stationName, len: csize_t(len(stationName))))

type QRadioDatastationNameChangedSlot* = proc(stationName: string)
proc miqt_exec_callback_cQRadioData_stationNameChanged(slot: int, stationName: struct_miqt_string) {.cdecl.} =
  let nimfunc = cast[ptr QRadioDatastationNameChangedSlot](cast[pointer](slot))
  let vstationName_ms = stationName
  let vstationNamex_ret = string.fromBytes(toOpenArrayByte(vstationName_ms.data, 0, int(vstationName_ms.len)-1))
  c_free(vstationName_ms.data)
  let slotval1 = vstationNamex_ret

  nimfunc[](slotval1)

proc miqt_exec_callback_cQRadioData_stationNameChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QRadioDatastationNameChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onstationNameChanged*(self: gen_qradiodata_types.QRadioData, slot: QRadioDatastationNameChangedSlot) =
  var tmp = new QRadioDatastationNameChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQRadioData_connect_stationNameChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQRadioData_stationNameChanged, miqt_exec_callback_cQRadioData_stationNameChanged_release)

proc radioTextChanged*(self: gen_qradiodata_types.QRadioData, radioText: string): void =
  fcQRadioData_radioTextChanged(self.h, struct_miqt_string(data: radioText, len: csize_t(len(radioText))))

type QRadioDataradioTextChangedSlot* = proc(radioText: string)
proc miqt_exec_callback_cQRadioData_radioTextChanged(slot: int, radioText: struct_miqt_string) {.cdecl.} =
  let nimfunc = cast[ptr QRadioDataradioTextChangedSlot](cast[pointer](slot))
  let vradioText_ms = radioText
  let vradioTextx_ret = string.fromBytes(toOpenArrayByte(vradioText_ms.data, 0, int(vradioText_ms.len)-1))
  c_free(vradioText_ms.data)
  let slotval1 = vradioTextx_ret

  nimfunc[](slotval1)

proc miqt_exec_callback_cQRadioData_radioTextChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QRadioDataradioTextChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onradioTextChanged*(self: gen_qradiodata_types.QRadioData, slot: QRadioDataradioTextChangedSlot) =
  var tmp = new QRadioDataradioTextChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQRadioData_connect_radioTextChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQRadioData_radioTextChanged, miqt_exec_callback_cQRadioData_radioTextChanged_release)

proc alternativeFrequenciesEnabledChanged*(self: gen_qradiodata_types.QRadioData, enabled: bool): void =
  fcQRadioData_alternativeFrequenciesEnabledChanged(self.h, enabled)

type QRadioDataalternativeFrequenciesEnabledChangedSlot* = proc(enabled: bool)
proc miqt_exec_callback_cQRadioData_alternativeFrequenciesEnabledChanged(slot: int, enabled: bool) {.cdecl.} =
  let nimfunc = cast[ptr QRadioDataalternativeFrequenciesEnabledChangedSlot](cast[pointer](slot))
  let slotval1 = enabled

  nimfunc[](slotval1)

proc miqt_exec_callback_cQRadioData_alternativeFrequenciesEnabledChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QRadioDataalternativeFrequenciesEnabledChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onalternativeFrequenciesEnabledChanged*(self: gen_qradiodata_types.QRadioData, slot: QRadioDataalternativeFrequenciesEnabledChangedSlot) =
  var tmp = new QRadioDataalternativeFrequenciesEnabledChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQRadioData_connect_alternativeFrequenciesEnabledChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQRadioData_alternativeFrequenciesEnabledChanged, miqt_exec_callback_cQRadioData_alternativeFrequenciesEnabledChanged_release)

proc error*(self: gen_qradiodata_types.QRadioData, error: cint): void =
  fcQRadioData_errorWithError(self.h, cint(error))

type QRadioDataerrorWithErrorSlot* = proc(error: cint)
proc miqt_exec_callback_cQRadioData_errorWithError(slot: int, error: cint) {.cdecl.} =
  let nimfunc = cast[ptr QRadioDataerrorWithErrorSlot](cast[pointer](slot))
  let slotval1 = cint(error)

  nimfunc[](slotval1)

proc miqt_exec_callback_cQRadioData_errorWithError_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QRadioDataerrorWithErrorSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onerror*(self: gen_qradiodata_types.QRadioData, slot: QRadioDataerrorWithErrorSlot) =
  var tmp = new QRadioDataerrorWithErrorSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQRadioData_connect_errorWithError(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQRadioData_errorWithError, miqt_exec_callback_cQRadioData_errorWithError_release)

proc tr*(_: type gen_qradiodata_types.QRadioData, s: cstring, c: cstring): string =
  let v_ms = fcQRadioData_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qradiodata_types.QRadioData, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQRadioData_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qradiodata_types.QRadioData, s: cstring, c: cstring): string =
  let v_ms = fcQRadioData_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qradiodata_types.QRadioData, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQRadioData_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
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
type QRadioDataVTable* = object
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
proc QRadioDatametaObject*(self: gen_qradiodata_types.QRadioData, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQRadioData_virtualbase_metaObject(self.h))

proc miqt_exec_callback_cQRadioData_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QRadioDataVTable](vtbl)
  let self = QRadioData(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.h

proc QRadioDatametacast*(self: gen_qradiodata_types.QRadioData, param1: cstring): pointer =
  fcQRadioData_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQRadioData_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QRadioDataVTable](vtbl)
  let self = QRadioData(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QRadioDatametacall*(self: gen_qradiodata_types.QRadioData, param1: cint, param2: cint, param3: pointer): cint =
  fcQRadioData_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQRadioData_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QRadioDataVTable](vtbl)
  let self = QRadioData(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QRadioDatamediaObject*(self: gen_qradiodata_types.QRadioData, ): gen_qmediaobject_types.QMediaObject =
  gen_qmediaobject_types.QMediaObject(h: fcQRadioData_virtualbase_mediaObject(self.h))

proc miqt_exec_callback_cQRadioData_mediaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QRadioDataVTable](vtbl)
  let self = QRadioData(h: self)
  var virtualReturn = vtbl[].mediaObject(self)
  virtualReturn.h

proc QRadioDatasetMediaObject*(self: gen_qradiodata_types.QRadioData, mediaObject: gen_qmediaobject_types.QMediaObject): bool =
  fcQRadioData_virtualbase_setMediaObject(self.h, mediaObject.h)

proc miqt_exec_callback_cQRadioData_setMediaObject(vtbl: pointer, self: pointer, mediaObject: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QRadioDataVTable](vtbl)
  let self = QRadioData(h: self)
  let slotval1 = gen_qmediaobject_types.QMediaObject(h: mediaObject)
  var virtualReturn = vtbl[].setMediaObject(self, slotval1)
  virtualReturn

proc QRadioDataevent*(self: gen_qradiodata_types.QRadioData, event: gen_qcoreevent_types.QEvent): bool =
  fcQRadioData_virtualbase_event(self.h, event.h)

proc miqt_exec_callback_cQRadioData_event(vtbl: pointer, self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QRadioDataVTable](vtbl)
  let self = QRadioData(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QRadioDataeventFilter*(self: gen_qradiodata_types.QRadioData, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQRadioData_virtualbase_eventFilter(self.h, watched.h, event.h)

proc miqt_exec_callback_cQRadioData_eventFilter(vtbl: pointer, self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QRadioDataVTable](vtbl)
  let self = QRadioData(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QRadioDatatimerEvent*(self: gen_qradiodata_types.QRadioData, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQRadioData_virtualbase_timerEvent(self.h, event.h)

proc miqt_exec_callback_cQRadioData_timerEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRadioDataVTable](vtbl)
  let self = QRadioData(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)
  vtbl[].timerEvent(self, slotval1)

proc QRadioDatachildEvent*(self: gen_qradiodata_types.QRadioData, event: gen_qcoreevent_types.QChildEvent): void =
  fcQRadioData_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQRadioData_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRadioDataVTable](vtbl)
  let self = QRadioData(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)
  vtbl[].childEvent(self, slotval1)

proc QRadioDatacustomEvent*(self: gen_qradiodata_types.QRadioData, event: gen_qcoreevent_types.QEvent): void =
  fcQRadioData_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQRadioData_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRadioDataVTable](vtbl)
  let self = QRadioData(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].customEvent(self, slotval1)

proc QRadioDataconnectNotify*(self: gen_qradiodata_types.QRadioData, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQRadioData_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQRadioData_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRadioDataVTable](vtbl)
  let self = QRadioData(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].connectNotify(self, slotval1)

proc QRadioDatadisconnectNotify*(self: gen_qradiodata_types.QRadioData, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQRadioData_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQRadioData_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRadioDataVTable](vtbl)
  let self = QRadioData(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].disconnectNotify(self, slotval1)

proc create*(T: type gen_qradiodata_types.QRadioData,
    mediaObject: gen_qmediaobject_types.QMediaObject,
    vtbl: ref QRadioDataVTable = nil): gen_qradiodata_types.QRadioData =
  let vtbl = if vtbl == nil: new QRadioDataVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQRadioDataVTable, _: ptr cQRadioData) {.cdecl.} =
    let vtbl = cast[ref QRadioDataVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQRadioData_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQRadioData_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQRadioData_metacall
  if not isNil(vtbl.mediaObject):
    vtbl[].vtbl.mediaObject = miqt_exec_callback_cQRadioData_mediaObject
  if not isNil(vtbl.setMediaObject):
    vtbl[].vtbl.setMediaObject = miqt_exec_callback_cQRadioData_setMediaObject
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQRadioData_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQRadioData_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQRadioData_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQRadioData_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQRadioData_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQRadioData_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQRadioData_disconnectNotify
  gen_qradiodata_types.QRadioData(h: fcQRadioData_new(addr(vtbl[]), mediaObject.h))

proc create*(T: type gen_qradiodata_types.QRadioData,
    mediaObject: gen_qmediaobject_types.QMediaObject, parent: gen_qobject_types.QObject,
    vtbl: ref QRadioDataVTable = nil): gen_qradiodata_types.QRadioData =
  let vtbl = if vtbl == nil: new QRadioDataVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQRadioDataVTable, _: ptr cQRadioData) {.cdecl.} =
    let vtbl = cast[ref QRadioDataVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQRadioData_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQRadioData_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQRadioData_metacall
  if not isNil(vtbl.mediaObject):
    vtbl[].vtbl.mediaObject = miqt_exec_callback_cQRadioData_mediaObject
  if not isNil(vtbl.setMediaObject):
    vtbl[].vtbl.setMediaObject = miqt_exec_callback_cQRadioData_setMediaObject
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQRadioData_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQRadioData_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQRadioData_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQRadioData_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQRadioData_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQRadioData_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQRadioData_disconnectNotify
  gen_qradiodata_types.QRadioData(h: fcQRadioData_new2(addr(vtbl[]), mediaObject.h, parent.h))

proc staticMetaObject*(_: type gen_qradiodata_types.QRadioData): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQRadioData_staticMetaObject())
proc delete*(self: gen_qradiodata_types.QRadioData) =
  fcQRadioData_delete(self.h)
