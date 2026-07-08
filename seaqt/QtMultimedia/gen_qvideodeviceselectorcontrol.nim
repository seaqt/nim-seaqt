import ./qtmultimedia_pkg

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


{.compile("gen_qvideodeviceselectorcontrol.cpp", QtMultimediaCFlags).}


import ./gen_qvideodeviceselectorcontrol_types
export gen_qvideodeviceselectorcontrol_types

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

type cQVideoDeviceSelectorControl*{.exportc: "QVideoDeviceSelectorControl", incompleteStruct.} = object

proc fcQVideoDeviceSelectorControl_metaObject(self: pointer): pointer {.importc: "QVideoDeviceSelectorControl_metaObject".}
proc fcQVideoDeviceSelectorControl_metacast(self: pointer, param1: cstring): pointer {.importc: "QVideoDeviceSelectorControl_metacast".}
proc fcQVideoDeviceSelectorControl_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QVideoDeviceSelectorControl_metacall".}
proc fcQVideoDeviceSelectorControl_trS(s: cstring): struct_seaqt_string {.importc: "QVideoDeviceSelectorControl_tr_s".}
proc fcQVideoDeviceSelectorControl_trUtf8S(s: cstring): struct_seaqt_string {.importc: "QVideoDeviceSelectorControl_trUtf8_s".}
proc fcQVideoDeviceSelectorControl_deviceCount(self: pointer): cint {.importc: "QVideoDeviceSelectorControl_deviceCount".}
proc fcQVideoDeviceSelectorControl_deviceName(self: pointer, index: cint): struct_seaqt_string {.importc: "QVideoDeviceSelectorControl_deviceName".}
proc fcQVideoDeviceSelectorControl_deviceDescription(self: pointer, index: cint): struct_seaqt_string {.importc: "QVideoDeviceSelectorControl_deviceDescription".}
proc fcQVideoDeviceSelectorControl_defaultDevice(self: pointer): cint {.importc: "QVideoDeviceSelectorControl_defaultDevice".}
proc fcQVideoDeviceSelectorControl_selectedDevice(self: pointer): cint {.importc: "QVideoDeviceSelectorControl_selectedDevice".}
proc fcQVideoDeviceSelectorControl_setSelectedDevice(self: pointer, index: cint): void {.importc: "QVideoDeviceSelectorControl_setSelectedDevice".}
proc fcQVideoDeviceSelectorControl_selectedDeviceChangedIndex(self: pointer, index: cint): void {.importc: "QVideoDeviceSelectorControl_selectedDeviceChanged_index".}
proc fcQVideoDeviceSelectorControl_connect_selectedDeviceChangedIndex(self: pointer, slot: int, callback: proc (slot: int, index: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QVideoDeviceSelectorControl_connect_selectedDeviceChanged_index".}
proc fcQVideoDeviceSelectorControl_selectedDeviceChangedName(self: pointer, name: struct_seaqt_string): void {.importc: "QVideoDeviceSelectorControl_selectedDeviceChanged_name".}
proc fcQVideoDeviceSelectorControl_connect_selectedDeviceChangedName(self: pointer, slot: int, callback: proc (slot: int, name: struct_seaqt_string) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QVideoDeviceSelectorControl_connect_selectedDeviceChanged_name".}
proc fcQVideoDeviceSelectorControl_devicesChanged(self: pointer): void {.importc: "QVideoDeviceSelectorControl_devicesChanged".}
proc fcQVideoDeviceSelectorControl_connect_devicesChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QVideoDeviceSelectorControl_connect_devicesChanged".}
proc fcQVideoDeviceSelectorControl_trSC(s: cstring, c: cstring): struct_seaqt_string {.importc: "QVideoDeviceSelectorControl_tr_s_c".}
proc fcQVideoDeviceSelectorControl_trSCN(s: cstring, c: cstring, n: cint): struct_seaqt_string {.importc: "QVideoDeviceSelectorControl_tr_s_c_n".}
proc fcQVideoDeviceSelectorControl_trUtf8SC(s: cstring, c: cstring): struct_seaqt_string {.importc: "QVideoDeviceSelectorControl_trUtf8_s_c".}
proc fcQVideoDeviceSelectorControl_trUtf8SCN(s: cstring, c: cstring, n: cint): struct_seaqt_string {.importc: "QVideoDeviceSelectorControl_trUtf8_s_c_n".}
proc fcQVideoDeviceSelectorControl_protectedbase_sender(self: pointer): pointer {.importc: "QVideoDeviceSelectorControl_protectedbase_sender".}
proc fcQVideoDeviceSelectorControl_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QVideoDeviceSelectorControl_protectedbase_senderSignalIndex".}
proc fcQVideoDeviceSelectorControl_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QVideoDeviceSelectorControl_protectedbase_receivers".}
proc fcQVideoDeviceSelectorControl_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QVideoDeviceSelectorControl_protectedbase_isSignalConnected".}
proc fcQVideoDeviceSelectorControl_staticMetaObject(): pointer {.importc: "QVideoDeviceSelectorControl_staticMetaObject".}

proc metaObject*(self: gen_qvideodeviceselectorcontrol_types.QVideoDeviceSelectorControl): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQVideoDeviceSelectorControl_metaObject(self.h), owned: false)

proc metacast*(self: gen_qvideodeviceselectorcontrol_types.QVideoDeviceSelectorControl, param1: cstring): pointer =
  fcQVideoDeviceSelectorControl_metacast(self.h, param1)

proc metacall*(self: gen_qvideodeviceselectorcontrol_types.QVideoDeviceSelectorControl, param1: cint, param2: cint, param3: pointer): cint =
  fcQVideoDeviceSelectorControl_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qvideodeviceselectorcontrol_types.QVideoDeviceSelectorControl, s: cstring): string =
  let v_ms = fcQVideoDeviceSelectorControl_trS(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qvideodeviceselectorcontrol_types.QVideoDeviceSelectorControl, s: cstring): string =
  let v_ms = fcQVideoDeviceSelectorControl_trUtf8S(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc deviceCount*(self: gen_qvideodeviceselectorcontrol_types.QVideoDeviceSelectorControl): cint =
  fcQVideoDeviceSelectorControl_deviceCount(self.h)

proc deviceName*(self: gen_qvideodeviceselectorcontrol_types.QVideoDeviceSelectorControl, index: cint): string =
  let v_ms = fcQVideoDeviceSelectorControl_deviceName(self.h, index)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc deviceDescription*(self: gen_qvideodeviceselectorcontrol_types.QVideoDeviceSelectorControl, index: cint): string =
  let v_ms = fcQVideoDeviceSelectorControl_deviceDescription(self.h, index)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc defaultDevice*(self: gen_qvideodeviceselectorcontrol_types.QVideoDeviceSelectorControl): cint =
  fcQVideoDeviceSelectorControl_defaultDevice(self.h)

proc selectedDevice*(self: gen_qvideodeviceselectorcontrol_types.QVideoDeviceSelectorControl): cint =
  fcQVideoDeviceSelectorControl_selectedDevice(self.h)

proc setSelectedDevice*(self: gen_qvideodeviceselectorcontrol_types.QVideoDeviceSelectorControl, index: cint): void =
  fcQVideoDeviceSelectorControl_setSelectedDevice(self.h, index)

proc selectedDeviceChanged*(self: gen_qvideodeviceselectorcontrol_types.QVideoDeviceSelectorControl, index: cint): void =
  fcQVideoDeviceSelectorControl_selectedDeviceChangedIndex(self.h, index)

type QVideoDeviceSelectorControlselectedDeviceChangedIndexSlot* = proc(index: cint)
proc fcQVideoDeviceSelectorControl_slot_callback_selectedDeviceChangedIndex(slot: int, index: cint) {.cdecl.} =
  let nimfunc = cast[ptr QVideoDeviceSelectorControlselectedDeviceChangedIndexSlot](cast[pointer](slot))
  let slotval1 = index

  nimfunc[](slotval1)

proc fcQVideoDeviceSelectorControl_slot_callback_selectedDeviceChangedIndex_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QVideoDeviceSelectorControlselectedDeviceChangedIndexSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onSelectedDeviceChanged*(self: gen_qvideodeviceselectorcontrol_types.QVideoDeviceSelectorControl, slot: QVideoDeviceSelectorControlselectedDeviceChangedIndexSlot) =
  var tmp = new QVideoDeviceSelectorControlselectedDeviceChangedIndexSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQVideoDeviceSelectorControl_connect_selectedDeviceChangedIndex(self.h, cast[int](addr tmp[]), fcQVideoDeviceSelectorControl_slot_callback_selectedDeviceChangedIndex, fcQVideoDeviceSelectorControl_slot_callback_selectedDeviceChangedIndex_release)

proc selectedDeviceChanged*(self: gen_qvideodeviceselectorcontrol_types.QVideoDeviceSelectorControl, name: openArray[char]): void =
  fcQVideoDeviceSelectorControl_selectedDeviceChangedName(self.h, struct_seaqt_string(data: if len(name) > 0: addr name[0] else: nil, len: csize_t(len(name))))

type QVideoDeviceSelectorControlselectedDeviceChangedNameSlot* = proc(name: openArray[char])
proc fcQVideoDeviceSelectorControl_slot_callback_selectedDeviceChangedName(slot: int, name: struct_seaqt_string) {.cdecl.} =
  let nimfunc = cast[ptr QVideoDeviceSelectorControlselectedDeviceChangedNameSlot](cast[pointer](slot))
  let vname_ms = name
  let vnamex_ret = string.fromBytes(vname_ms)
  c_free(vname_ms.data)
  let slotval1 = vnamex_ret

  nimfunc[](slotval1)

proc fcQVideoDeviceSelectorControl_slot_callback_selectedDeviceChangedName_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QVideoDeviceSelectorControlselectedDeviceChangedNameSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onSelectedDeviceChanged*(self: gen_qvideodeviceselectorcontrol_types.QVideoDeviceSelectorControl, slot: QVideoDeviceSelectorControlselectedDeviceChangedNameSlot) =
  var tmp = new QVideoDeviceSelectorControlselectedDeviceChangedNameSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQVideoDeviceSelectorControl_connect_selectedDeviceChangedName(self.h, cast[int](addr tmp[]), fcQVideoDeviceSelectorControl_slot_callback_selectedDeviceChangedName, fcQVideoDeviceSelectorControl_slot_callback_selectedDeviceChangedName_release)

proc devicesChanged*(self: gen_qvideodeviceselectorcontrol_types.QVideoDeviceSelectorControl): void =
  fcQVideoDeviceSelectorControl_devicesChanged(self.h)

type QVideoDeviceSelectorControldevicesChangedSlot* = proc()
proc fcQVideoDeviceSelectorControl_slot_callback_devicesChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QVideoDeviceSelectorControldevicesChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc fcQVideoDeviceSelectorControl_slot_callback_devicesChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QVideoDeviceSelectorControldevicesChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onDevicesChanged*(self: gen_qvideodeviceselectorcontrol_types.QVideoDeviceSelectorControl, slot: QVideoDeviceSelectorControldevicesChangedSlot) =
  var tmp = new QVideoDeviceSelectorControldevicesChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQVideoDeviceSelectorControl_connect_devicesChanged(self.h, cast[int](addr tmp[]), fcQVideoDeviceSelectorControl_slot_callback_devicesChanged, fcQVideoDeviceSelectorControl_slot_callback_devicesChanged_release)

proc tr*(_: type gen_qvideodeviceselectorcontrol_types.QVideoDeviceSelectorControl, s: cstring, c: cstring): string =
  let v_ms = fcQVideoDeviceSelectorControl_trSC(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qvideodeviceselectorcontrol_types.QVideoDeviceSelectorControl, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQVideoDeviceSelectorControl_trSCN(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qvideodeviceselectorcontrol_types.QVideoDeviceSelectorControl, s: cstring, c: cstring): string =
  let v_ms = fcQVideoDeviceSelectorControl_trUtf8SC(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qvideodeviceselectorcontrol_types.QVideoDeviceSelectorControl, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQVideoDeviceSelectorControl_trUtf8SCN(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc sender*(self: gen_qvideodeviceselectorcontrol_types.QVideoDeviceSelectorControl): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQVideoDeviceSelectorControl_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qvideodeviceselectorcontrol_types.QVideoDeviceSelectorControl): cint =
  fcQVideoDeviceSelectorControl_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qvideodeviceselectorcontrol_types.QVideoDeviceSelectorControl, signal: cstring): cint =
  fcQVideoDeviceSelectorControl_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qvideodeviceselectorcontrol_types.QVideoDeviceSelectorControl, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQVideoDeviceSelectorControl_protectedbase_isSignalConnected(self.h, signal.h)

proc staticMetaObject*(_: type gen_qvideodeviceselectorcontrol_types.QVideoDeviceSelectorControl): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQVideoDeviceSelectorControl_staticMetaObject())
