import ./Qt5Multimedia_libs

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

const cflags = gorge("pkg-config --cflags Qt5Multimedia") & " -fPIC"
{.compile("gen_qradiodatacontrol.cpp", cflags).}


import ./gen_qradiodatacontrol_types
export gen_qradiodatacontrol_types

import
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qobject_types,
  ../QtCore/gen_qobjectdefs_types,
  ./gen_qmediacontrol
export
  gen_qmetaobject_types,
  gen_qobject_types,
  gen_qobjectdefs_types,
  gen_qmediacontrol

type cQRadioDataControl*{.exportc: "QRadioDataControl", incompleteStruct.} = object

proc fcQRadioDataControl_metaObject(self: pointer): pointer {.importc: "QRadioDataControl_metaObject".}
proc fcQRadioDataControl_metacast(self: pointer, param1: cstring): pointer {.importc: "QRadioDataControl_metacast".}
proc fcQRadioDataControl_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QRadioDataControl_metacall".}
proc fcQRadioDataControl_tr(s: cstring): struct_miqt_string {.importc: "QRadioDataControl_tr".}
proc fcQRadioDataControl_trUtf8(s: cstring): struct_miqt_string {.importc: "QRadioDataControl_trUtf8".}
proc fcQRadioDataControl_stationId(self: pointer): struct_miqt_string {.importc: "QRadioDataControl_stationId".}
proc fcQRadioDataControl_programType(self: pointer): cint {.importc: "QRadioDataControl_programType".}
proc fcQRadioDataControl_programTypeName(self: pointer): struct_miqt_string {.importc: "QRadioDataControl_programTypeName".}
proc fcQRadioDataControl_stationName(self: pointer): struct_miqt_string {.importc: "QRadioDataControl_stationName".}
proc fcQRadioDataControl_radioText(self: pointer): struct_miqt_string {.importc: "QRadioDataControl_radioText".}
proc fcQRadioDataControl_setAlternativeFrequenciesEnabled(self: pointer, enabled: bool): void {.importc: "QRadioDataControl_setAlternativeFrequenciesEnabled".}
proc fcQRadioDataControl_isAlternativeFrequenciesEnabled(self: pointer): bool {.importc: "QRadioDataControl_isAlternativeFrequenciesEnabled".}
proc fcQRadioDataControl_error(self: pointer): cint {.importc: "QRadioDataControl_error".}
proc fcQRadioDataControl_errorString(self: pointer): struct_miqt_string {.importc: "QRadioDataControl_errorString".}
proc fcQRadioDataControl_stationIdChanged(self: pointer, stationId: struct_miqt_string): void {.importc: "QRadioDataControl_stationIdChanged".}
proc fcQRadioDataControl_connect_stationIdChanged(self: pointer, slot: int, callback: proc (slot: int, stationId: struct_miqt_string) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QRadioDataControl_connect_stationIdChanged".}
proc fcQRadioDataControl_programTypeChanged(self: pointer, programType: cint): void {.importc: "QRadioDataControl_programTypeChanged".}
proc fcQRadioDataControl_connect_programTypeChanged(self: pointer, slot: int, callback: proc (slot: int, programType: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QRadioDataControl_connect_programTypeChanged".}
proc fcQRadioDataControl_programTypeNameChanged(self: pointer, programTypeName: struct_miqt_string): void {.importc: "QRadioDataControl_programTypeNameChanged".}
proc fcQRadioDataControl_connect_programTypeNameChanged(self: pointer, slot: int, callback: proc (slot: int, programTypeName: struct_miqt_string) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QRadioDataControl_connect_programTypeNameChanged".}
proc fcQRadioDataControl_stationNameChanged(self: pointer, stationName: struct_miqt_string): void {.importc: "QRadioDataControl_stationNameChanged".}
proc fcQRadioDataControl_connect_stationNameChanged(self: pointer, slot: int, callback: proc (slot: int, stationName: struct_miqt_string) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QRadioDataControl_connect_stationNameChanged".}
proc fcQRadioDataControl_radioTextChanged(self: pointer, radioText: struct_miqt_string): void {.importc: "QRadioDataControl_radioTextChanged".}
proc fcQRadioDataControl_connect_radioTextChanged(self: pointer, slot: int, callback: proc (slot: int, radioText: struct_miqt_string) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QRadioDataControl_connect_radioTextChanged".}
proc fcQRadioDataControl_alternativeFrequenciesEnabledChanged(self: pointer, enabled: bool): void {.importc: "QRadioDataControl_alternativeFrequenciesEnabledChanged".}
proc fcQRadioDataControl_connect_alternativeFrequenciesEnabledChanged(self: pointer, slot: int, callback: proc (slot: int, enabled: bool) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QRadioDataControl_connect_alternativeFrequenciesEnabledChanged".}
proc fcQRadioDataControl_errorWithErr(self: pointer, err: cint): void {.importc: "QRadioDataControl_errorWithErr".}
proc fcQRadioDataControl_connect_errorWithErr(self: pointer, slot: int, callback: proc (slot: int, err: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QRadioDataControl_connect_errorWithErr".}
proc fcQRadioDataControl_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QRadioDataControl_tr2".}
proc fcQRadioDataControl_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QRadioDataControl_tr3".}
proc fcQRadioDataControl_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QRadioDataControl_trUtf82".}
proc fcQRadioDataControl_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QRadioDataControl_trUtf83".}
proc fcQRadioDataControl_protectedbase_sender(self: pointer): pointer {.importc: "QRadioDataControl_protectedbase_sender".}
proc fcQRadioDataControl_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QRadioDataControl_protectedbase_senderSignalIndex".}
proc fcQRadioDataControl_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QRadioDataControl_protectedbase_receivers".}
proc fcQRadioDataControl_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QRadioDataControl_protectedbase_isSignalConnected".}
proc fcQRadioDataControl_staticMetaObject(): pointer {.importc: "QRadioDataControl_staticMetaObject".}

proc metaObject*(self: gen_qradiodatacontrol_types.QRadioDataControl): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQRadioDataControl_metaObject(self.h), owned: false)

proc metacast*(self: gen_qradiodatacontrol_types.QRadioDataControl, param1: cstring): pointer =
  fcQRadioDataControl_metacast(self.h, param1)

proc metacall*(self: gen_qradiodatacontrol_types.QRadioDataControl, param1: cint, param2: cint, param3: pointer): cint =
  fcQRadioDataControl_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qradiodatacontrol_types.QRadioDataControl, s: cstring): string =
  let v_ms = fcQRadioDataControl_tr(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qradiodatacontrol_types.QRadioDataControl, s: cstring): string =
  let v_ms = fcQRadioDataControl_trUtf8(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc stationId*(self: gen_qradiodatacontrol_types.QRadioDataControl): string =
  let v_ms = fcQRadioDataControl_stationId(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc programType*(self: gen_qradiodatacontrol_types.QRadioDataControl): cint =
  cint(fcQRadioDataControl_programType(self.h))

proc programTypeName*(self: gen_qradiodatacontrol_types.QRadioDataControl): string =
  let v_ms = fcQRadioDataControl_programTypeName(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc stationName*(self: gen_qradiodatacontrol_types.QRadioDataControl): string =
  let v_ms = fcQRadioDataControl_stationName(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc radioText*(self: gen_qradiodatacontrol_types.QRadioDataControl): string =
  let v_ms = fcQRadioDataControl_radioText(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc setAlternativeFrequenciesEnabled*(self: gen_qradiodatacontrol_types.QRadioDataControl, enabled: bool): void =
  fcQRadioDataControl_setAlternativeFrequenciesEnabled(self.h, enabled)

proc isAlternativeFrequenciesEnabled*(self: gen_qradiodatacontrol_types.QRadioDataControl): bool =
  fcQRadioDataControl_isAlternativeFrequenciesEnabled(self.h)

proc error*(self: gen_qradiodatacontrol_types.QRadioDataControl): cint =
  cint(fcQRadioDataControl_error(self.h))

proc errorString*(self: gen_qradiodatacontrol_types.QRadioDataControl): string =
  let v_ms = fcQRadioDataControl_errorString(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc stationIdChanged*(self: gen_qradiodatacontrol_types.QRadioDataControl, stationId: openArray[char]): void =
  fcQRadioDataControl_stationIdChanged(self.h, struct_miqt_string(data: if len(stationId) > 0: addr stationId[0] else: nil, len: csize_t(len(stationId))))

type QRadioDataControlstationIdChangedSlot* = proc(stationId: openArray[char])
proc cQRadioDataControl_slot_callback_stationIdChanged(slot: int, stationId: struct_miqt_string) {.cdecl.} =
  let nimfunc = cast[ptr QRadioDataControlstationIdChangedSlot](cast[pointer](slot))
  let vstationId_ms = stationId
  let vstationIdx_ret = string.fromBytes(vstationId_ms)
  c_free(vstationId_ms.data)
  let slotval1 = vstationIdx_ret

  nimfunc[](slotval1)

proc cQRadioDataControl_slot_callback_stationIdChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QRadioDataControlstationIdChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onstationIdChanged*(self: gen_qradiodatacontrol_types.QRadioDataControl, slot: QRadioDataControlstationIdChangedSlot) =
  var tmp = new QRadioDataControlstationIdChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQRadioDataControl_connect_stationIdChanged(self.h, cast[int](addr tmp[]), cQRadioDataControl_slot_callback_stationIdChanged, cQRadioDataControl_slot_callback_stationIdChanged_release)

proc programTypeChanged*(self: gen_qradiodatacontrol_types.QRadioDataControl, programType: cint): void =
  fcQRadioDataControl_programTypeChanged(self.h, cint(programType))

type QRadioDataControlprogramTypeChangedSlot* = proc(programType: cint)
proc cQRadioDataControl_slot_callback_programTypeChanged(slot: int, programType: cint) {.cdecl.} =
  let nimfunc = cast[ptr QRadioDataControlprogramTypeChangedSlot](cast[pointer](slot))
  let slotval1 = cint(programType)

  nimfunc[](slotval1)

proc cQRadioDataControl_slot_callback_programTypeChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QRadioDataControlprogramTypeChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onprogramTypeChanged*(self: gen_qradiodatacontrol_types.QRadioDataControl, slot: QRadioDataControlprogramTypeChangedSlot) =
  var tmp = new QRadioDataControlprogramTypeChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQRadioDataControl_connect_programTypeChanged(self.h, cast[int](addr tmp[]), cQRadioDataControl_slot_callback_programTypeChanged, cQRadioDataControl_slot_callback_programTypeChanged_release)

proc programTypeNameChanged*(self: gen_qradiodatacontrol_types.QRadioDataControl, programTypeName: openArray[char]): void =
  fcQRadioDataControl_programTypeNameChanged(self.h, struct_miqt_string(data: if len(programTypeName) > 0: addr programTypeName[0] else: nil, len: csize_t(len(programTypeName))))

type QRadioDataControlprogramTypeNameChangedSlot* = proc(programTypeName: openArray[char])
proc cQRadioDataControl_slot_callback_programTypeNameChanged(slot: int, programTypeName: struct_miqt_string) {.cdecl.} =
  let nimfunc = cast[ptr QRadioDataControlprogramTypeNameChangedSlot](cast[pointer](slot))
  let vprogramTypeName_ms = programTypeName
  let vprogramTypeNamex_ret = string.fromBytes(vprogramTypeName_ms)
  c_free(vprogramTypeName_ms.data)
  let slotval1 = vprogramTypeNamex_ret

  nimfunc[](slotval1)

proc cQRadioDataControl_slot_callback_programTypeNameChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QRadioDataControlprogramTypeNameChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onprogramTypeNameChanged*(self: gen_qradiodatacontrol_types.QRadioDataControl, slot: QRadioDataControlprogramTypeNameChangedSlot) =
  var tmp = new QRadioDataControlprogramTypeNameChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQRadioDataControl_connect_programTypeNameChanged(self.h, cast[int](addr tmp[]), cQRadioDataControl_slot_callback_programTypeNameChanged, cQRadioDataControl_slot_callback_programTypeNameChanged_release)

proc stationNameChanged*(self: gen_qradiodatacontrol_types.QRadioDataControl, stationName: openArray[char]): void =
  fcQRadioDataControl_stationNameChanged(self.h, struct_miqt_string(data: if len(stationName) > 0: addr stationName[0] else: nil, len: csize_t(len(stationName))))

type QRadioDataControlstationNameChangedSlot* = proc(stationName: openArray[char])
proc cQRadioDataControl_slot_callback_stationNameChanged(slot: int, stationName: struct_miqt_string) {.cdecl.} =
  let nimfunc = cast[ptr QRadioDataControlstationNameChangedSlot](cast[pointer](slot))
  let vstationName_ms = stationName
  let vstationNamex_ret = string.fromBytes(vstationName_ms)
  c_free(vstationName_ms.data)
  let slotval1 = vstationNamex_ret

  nimfunc[](slotval1)

proc cQRadioDataControl_slot_callback_stationNameChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QRadioDataControlstationNameChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onstationNameChanged*(self: gen_qradiodatacontrol_types.QRadioDataControl, slot: QRadioDataControlstationNameChangedSlot) =
  var tmp = new QRadioDataControlstationNameChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQRadioDataControl_connect_stationNameChanged(self.h, cast[int](addr tmp[]), cQRadioDataControl_slot_callback_stationNameChanged, cQRadioDataControl_slot_callback_stationNameChanged_release)

proc radioTextChanged*(self: gen_qradiodatacontrol_types.QRadioDataControl, radioText: openArray[char]): void =
  fcQRadioDataControl_radioTextChanged(self.h, struct_miqt_string(data: if len(radioText) > 0: addr radioText[0] else: nil, len: csize_t(len(radioText))))

type QRadioDataControlradioTextChangedSlot* = proc(radioText: openArray[char])
proc cQRadioDataControl_slot_callback_radioTextChanged(slot: int, radioText: struct_miqt_string) {.cdecl.} =
  let nimfunc = cast[ptr QRadioDataControlradioTextChangedSlot](cast[pointer](slot))
  let vradioText_ms = radioText
  let vradioTextx_ret = string.fromBytes(vradioText_ms)
  c_free(vradioText_ms.data)
  let slotval1 = vradioTextx_ret

  nimfunc[](slotval1)

proc cQRadioDataControl_slot_callback_radioTextChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QRadioDataControlradioTextChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onradioTextChanged*(self: gen_qradiodatacontrol_types.QRadioDataControl, slot: QRadioDataControlradioTextChangedSlot) =
  var tmp = new QRadioDataControlradioTextChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQRadioDataControl_connect_radioTextChanged(self.h, cast[int](addr tmp[]), cQRadioDataControl_slot_callback_radioTextChanged, cQRadioDataControl_slot_callback_radioTextChanged_release)

proc alternativeFrequenciesEnabledChanged*(self: gen_qradiodatacontrol_types.QRadioDataControl, enabled: bool): void =
  fcQRadioDataControl_alternativeFrequenciesEnabledChanged(self.h, enabled)

type QRadioDataControlalternativeFrequenciesEnabledChangedSlot* = proc(enabled: bool)
proc cQRadioDataControl_slot_callback_alternativeFrequenciesEnabledChanged(slot: int, enabled: bool) {.cdecl.} =
  let nimfunc = cast[ptr QRadioDataControlalternativeFrequenciesEnabledChangedSlot](cast[pointer](slot))
  let slotval1 = enabled

  nimfunc[](slotval1)

proc cQRadioDataControl_slot_callback_alternativeFrequenciesEnabledChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QRadioDataControlalternativeFrequenciesEnabledChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onalternativeFrequenciesEnabledChanged*(self: gen_qradiodatacontrol_types.QRadioDataControl, slot: QRadioDataControlalternativeFrequenciesEnabledChangedSlot) =
  var tmp = new QRadioDataControlalternativeFrequenciesEnabledChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQRadioDataControl_connect_alternativeFrequenciesEnabledChanged(self.h, cast[int](addr tmp[]), cQRadioDataControl_slot_callback_alternativeFrequenciesEnabledChanged, cQRadioDataControl_slot_callback_alternativeFrequenciesEnabledChanged_release)

proc error*(self: gen_qradiodatacontrol_types.QRadioDataControl, err: cint): void =
  fcQRadioDataControl_errorWithErr(self.h, cint(err))

type QRadioDataControlerrorWithErrSlot* = proc(err: cint)
proc cQRadioDataControl_slot_callback_errorWithErr(slot: int, err: cint) {.cdecl.} =
  let nimfunc = cast[ptr QRadioDataControlerrorWithErrSlot](cast[pointer](slot))
  let slotval1 = cint(err)

  nimfunc[](slotval1)

proc cQRadioDataControl_slot_callback_errorWithErr_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QRadioDataControlerrorWithErrSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onerror*(self: gen_qradiodatacontrol_types.QRadioDataControl, slot: QRadioDataControlerrorWithErrSlot) =
  var tmp = new QRadioDataControlerrorWithErrSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQRadioDataControl_connect_errorWithErr(self.h, cast[int](addr tmp[]), cQRadioDataControl_slot_callback_errorWithErr, cQRadioDataControl_slot_callback_errorWithErr_release)

proc tr*(_: type gen_qradiodatacontrol_types.QRadioDataControl, s: cstring, c: cstring): string =
  let v_ms = fcQRadioDataControl_tr2(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qradiodatacontrol_types.QRadioDataControl, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQRadioDataControl_tr3(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qradiodatacontrol_types.QRadioDataControl, s: cstring, c: cstring): string =
  let v_ms = fcQRadioDataControl_trUtf82(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qradiodatacontrol_types.QRadioDataControl, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQRadioDataControl_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc sender*(self: gen_qradiodatacontrol_types.QRadioDataControl): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQRadioDataControl_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qradiodatacontrol_types.QRadioDataControl): cint =
  fcQRadioDataControl_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qradiodatacontrol_types.QRadioDataControl, signal: cstring): cint =
  fcQRadioDataControl_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qradiodatacontrol_types.QRadioDataControl, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQRadioDataControl_protectedbase_isSignalConnected(self.h, signal.h)

proc staticMetaObject*(_: type gen_qradiodatacontrol_types.QRadioDataControl): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQRadioDataControl_staticMetaObject())
