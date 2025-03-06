import ./Qt5Multimedia_libs

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

const cflags = gorge("pkg-config --cflags Qt5Multimedia")  & " -fPIC"
{.compile("gen_qvideodeviceselectorcontrol.cpp", cflags).}


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

proc fcQVideoDeviceSelectorControl_metaObject(self: pointer, ): pointer {.importc: "QVideoDeviceSelectorControl_metaObject".}
proc fcQVideoDeviceSelectorControl_metacast(self: pointer, param1: cstring): pointer {.importc: "QVideoDeviceSelectorControl_metacast".}
proc fcQVideoDeviceSelectorControl_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QVideoDeviceSelectorControl_metacall".}
proc fcQVideoDeviceSelectorControl_tr(s: cstring): struct_miqt_string {.importc: "QVideoDeviceSelectorControl_tr".}
proc fcQVideoDeviceSelectorControl_trUtf8(s: cstring): struct_miqt_string {.importc: "QVideoDeviceSelectorControl_trUtf8".}
proc fcQVideoDeviceSelectorControl_deviceCount(self: pointer, ): cint {.importc: "QVideoDeviceSelectorControl_deviceCount".}
proc fcQVideoDeviceSelectorControl_deviceName(self: pointer, index: cint): struct_miqt_string {.importc: "QVideoDeviceSelectorControl_deviceName".}
proc fcQVideoDeviceSelectorControl_deviceDescription(self: pointer, index: cint): struct_miqt_string {.importc: "QVideoDeviceSelectorControl_deviceDescription".}
proc fcQVideoDeviceSelectorControl_defaultDevice(self: pointer, ): cint {.importc: "QVideoDeviceSelectorControl_defaultDevice".}
proc fcQVideoDeviceSelectorControl_selectedDevice(self: pointer, ): cint {.importc: "QVideoDeviceSelectorControl_selectedDevice".}
proc fcQVideoDeviceSelectorControl_setSelectedDevice(self: pointer, index: cint): void {.importc: "QVideoDeviceSelectorControl_setSelectedDevice".}
proc fcQVideoDeviceSelectorControl_selectedDeviceChanged(self: pointer, index: cint): void {.importc: "QVideoDeviceSelectorControl_selectedDeviceChanged".}
proc fcQVideoDeviceSelectorControl_connect_selectedDeviceChanged(self: pointer, slot: int, callback: proc (slot: int, index: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QVideoDeviceSelectorControl_connect_selectedDeviceChanged".}
proc fcQVideoDeviceSelectorControl_selectedDeviceChangedWithName(self: pointer, name: struct_miqt_string): void {.importc: "QVideoDeviceSelectorControl_selectedDeviceChangedWithName".}
proc fcQVideoDeviceSelectorControl_connect_selectedDeviceChangedWithName(self: pointer, slot: int, callback: proc (slot: int, name: struct_miqt_string) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QVideoDeviceSelectorControl_connect_selectedDeviceChangedWithName".}
proc fcQVideoDeviceSelectorControl_devicesChanged(self: pointer, ): void {.importc: "QVideoDeviceSelectorControl_devicesChanged".}
proc fcQVideoDeviceSelectorControl_connect_devicesChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QVideoDeviceSelectorControl_connect_devicesChanged".}
proc fcQVideoDeviceSelectorControl_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QVideoDeviceSelectorControl_tr2".}
proc fcQVideoDeviceSelectorControl_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QVideoDeviceSelectorControl_tr3".}
proc fcQVideoDeviceSelectorControl_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QVideoDeviceSelectorControl_trUtf82".}
proc fcQVideoDeviceSelectorControl_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QVideoDeviceSelectorControl_trUtf83".}
proc fcQVideoDeviceSelectorControl_protectedbase_sender(self: pointer, ): pointer {.importc: "QVideoDeviceSelectorControl_protectedbase_sender".}
proc fcQVideoDeviceSelectorControl_protectedbase_senderSignalIndex(self: pointer, ): cint {.importc: "QVideoDeviceSelectorControl_protectedbase_senderSignalIndex".}
proc fcQVideoDeviceSelectorControl_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QVideoDeviceSelectorControl_protectedbase_receivers".}
proc fcQVideoDeviceSelectorControl_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QVideoDeviceSelectorControl_protectedbase_isSignalConnected".}
proc fcQVideoDeviceSelectorControl_staticMetaObject(): pointer {.importc: "QVideoDeviceSelectorControl_staticMetaObject".}
proc fcQVideoDeviceSelectorControl_delete(self: pointer) {.importc: "QVideoDeviceSelectorControl_delete".}

proc metaObject*(self: gen_qvideodeviceselectorcontrol_types.QVideoDeviceSelectorControl, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQVideoDeviceSelectorControl_metaObject(self.h))

proc metacast*(self: gen_qvideodeviceselectorcontrol_types.QVideoDeviceSelectorControl, param1: cstring): pointer =
  fcQVideoDeviceSelectorControl_metacast(self.h, param1)

proc metacall*(self: gen_qvideodeviceselectorcontrol_types.QVideoDeviceSelectorControl, param1: cint, param2: cint, param3: pointer): cint =
  fcQVideoDeviceSelectorControl_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qvideodeviceselectorcontrol_types.QVideoDeviceSelectorControl, s: cstring): string =
  let v_ms = fcQVideoDeviceSelectorControl_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qvideodeviceselectorcontrol_types.QVideoDeviceSelectorControl, s: cstring): string =
  let v_ms = fcQVideoDeviceSelectorControl_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc deviceCount*(self: gen_qvideodeviceselectorcontrol_types.QVideoDeviceSelectorControl, ): cint =
  fcQVideoDeviceSelectorControl_deviceCount(self.h)

proc deviceName*(self: gen_qvideodeviceselectorcontrol_types.QVideoDeviceSelectorControl, index: cint): string =
  let v_ms = fcQVideoDeviceSelectorControl_deviceName(self.h, index)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc deviceDescription*(self: gen_qvideodeviceselectorcontrol_types.QVideoDeviceSelectorControl, index: cint): string =
  let v_ms = fcQVideoDeviceSelectorControl_deviceDescription(self.h, index)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc defaultDevice*(self: gen_qvideodeviceselectorcontrol_types.QVideoDeviceSelectorControl, ): cint =
  fcQVideoDeviceSelectorControl_defaultDevice(self.h)

proc selectedDevice*(self: gen_qvideodeviceselectorcontrol_types.QVideoDeviceSelectorControl, ): cint =
  fcQVideoDeviceSelectorControl_selectedDevice(self.h)

proc setSelectedDevice*(self: gen_qvideodeviceselectorcontrol_types.QVideoDeviceSelectorControl, index: cint): void =
  fcQVideoDeviceSelectorControl_setSelectedDevice(self.h, index)

proc selectedDeviceChanged*(self: gen_qvideodeviceselectorcontrol_types.QVideoDeviceSelectorControl, index: cint): void =
  fcQVideoDeviceSelectorControl_selectedDeviceChanged(self.h, index)

type QVideoDeviceSelectorControlselectedDeviceChangedSlot* = proc(index: cint)
proc miqt_exec_callback_cQVideoDeviceSelectorControl_selectedDeviceChanged(slot: int, index: cint) {.cdecl.} =
  let nimfunc = cast[ptr QVideoDeviceSelectorControlselectedDeviceChangedSlot](cast[pointer](slot))
  let slotval1 = index

  nimfunc[](slotval1)

proc miqt_exec_callback_cQVideoDeviceSelectorControl_selectedDeviceChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QVideoDeviceSelectorControlselectedDeviceChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onselectedDeviceChanged*(self: gen_qvideodeviceselectorcontrol_types.QVideoDeviceSelectorControl, slot: QVideoDeviceSelectorControlselectedDeviceChangedSlot) =
  var tmp = new QVideoDeviceSelectorControlselectedDeviceChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQVideoDeviceSelectorControl_connect_selectedDeviceChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQVideoDeviceSelectorControl_selectedDeviceChanged, miqt_exec_callback_cQVideoDeviceSelectorControl_selectedDeviceChanged_release)

proc selectedDeviceChanged*(self: gen_qvideodeviceselectorcontrol_types.QVideoDeviceSelectorControl, name: string): void =
  fcQVideoDeviceSelectorControl_selectedDeviceChangedWithName(self.h, struct_miqt_string(data: name, len: csize_t(len(name))))

type QVideoDeviceSelectorControlselectedDeviceChangedWithNameSlot* = proc(name: string)
proc miqt_exec_callback_cQVideoDeviceSelectorControl_selectedDeviceChangedWithName(slot: int, name: struct_miqt_string) {.cdecl.} =
  let nimfunc = cast[ptr QVideoDeviceSelectorControlselectedDeviceChangedWithNameSlot](cast[pointer](slot))
  let vname_ms = name
  let vnamex_ret = string.fromBytes(toOpenArrayByte(vname_ms.data, 0, int(vname_ms.len)-1))
  c_free(vname_ms.data)
  let slotval1 = vnamex_ret

  nimfunc[](slotval1)

proc miqt_exec_callback_cQVideoDeviceSelectorControl_selectedDeviceChangedWithName_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QVideoDeviceSelectorControlselectedDeviceChangedWithNameSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onselectedDeviceChanged*(self: gen_qvideodeviceselectorcontrol_types.QVideoDeviceSelectorControl, slot: QVideoDeviceSelectorControlselectedDeviceChangedWithNameSlot) =
  var tmp = new QVideoDeviceSelectorControlselectedDeviceChangedWithNameSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQVideoDeviceSelectorControl_connect_selectedDeviceChangedWithName(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQVideoDeviceSelectorControl_selectedDeviceChangedWithName, miqt_exec_callback_cQVideoDeviceSelectorControl_selectedDeviceChangedWithName_release)

proc devicesChanged*(self: gen_qvideodeviceselectorcontrol_types.QVideoDeviceSelectorControl, ): void =
  fcQVideoDeviceSelectorControl_devicesChanged(self.h)

type QVideoDeviceSelectorControldevicesChangedSlot* = proc()
proc miqt_exec_callback_cQVideoDeviceSelectorControl_devicesChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QVideoDeviceSelectorControldevicesChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc miqt_exec_callback_cQVideoDeviceSelectorControl_devicesChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QVideoDeviceSelectorControldevicesChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc ondevicesChanged*(self: gen_qvideodeviceselectorcontrol_types.QVideoDeviceSelectorControl, slot: QVideoDeviceSelectorControldevicesChangedSlot) =
  var tmp = new QVideoDeviceSelectorControldevicesChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQVideoDeviceSelectorControl_connect_devicesChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQVideoDeviceSelectorControl_devicesChanged, miqt_exec_callback_cQVideoDeviceSelectorControl_devicesChanged_release)

proc tr*(_: type gen_qvideodeviceselectorcontrol_types.QVideoDeviceSelectorControl, s: cstring, c: cstring): string =
  let v_ms = fcQVideoDeviceSelectorControl_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qvideodeviceselectorcontrol_types.QVideoDeviceSelectorControl, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQVideoDeviceSelectorControl_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qvideodeviceselectorcontrol_types.QVideoDeviceSelectorControl, s: cstring, c: cstring): string =
  let v_ms = fcQVideoDeviceSelectorControl_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qvideodeviceselectorcontrol_types.QVideoDeviceSelectorControl, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQVideoDeviceSelectorControl_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc sender*(self: gen_qvideodeviceselectorcontrol_types.QVideoDeviceSelectorControl, ): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQVideoDeviceSelectorControl_protectedbase_sender(self.h))

proc senderSignalIndex*(self: gen_qvideodeviceselectorcontrol_types.QVideoDeviceSelectorControl, ): cint =
  fcQVideoDeviceSelectorControl_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qvideodeviceselectorcontrol_types.QVideoDeviceSelectorControl, signal: cstring): cint =
  fcQVideoDeviceSelectorControl_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qvideodeviceselectorcontrol_types.QVideoDeviceSelectorControl, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQVideoDeviceSelectorControl_protectedbase_isSignalConnected(self.h, signal.h)

proc staticMetaObject*(_: type gen_qvideodeviceselectorcontrol_types.QVideoDeviceSelectorControl): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQVideoDeviceSelectorControl_staticMetaObject())
proc delete*(self: gen_qvideodeviceselectorcontrol_types.QVideoDeviceSelectorControl) =
  fcQVideoDeviceSelectorControl_delete(self.h)
