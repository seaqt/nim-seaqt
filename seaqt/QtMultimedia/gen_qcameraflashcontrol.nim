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

const cflags = gorge("pkg-config --cflags Qt5Multimedia") & " -fPIC"
{.compile("gen_qcameraflashcontrol.cpp", cflags).}


import ./gen_qcameraflashcontrol_types
export gen_qcameraflashcontrol_types

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

type cQCameraFlashControl*{.exportc: "QCameraFlashControl", incompleteStruct.} = object

proc fcQCameraFlashControl_metaObject(self: pointer): pointer {.importc: "QCameraFlashControl_metaObject".}
proc fcQCameraFlashControl_metacast(self: pointer, param1: cstring): pointer {.importc: "QCameraFlashControl_metacast".}
proc fcQCameraFlashControl_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QCameraFlashControl_metacall".}
proc fcQCameraFlashControl_tr(s: cstring): struct_miqt_string {.importc: "QCameraFlashControl_tr".}
proc fcQCameraFlashControl_trUtf8(s: cstring): struct_miqt_string {.importc: "QCameraFlashControl_trUtf8".}
proc fcQCameraFlashControl_flashMode(self: pointer): cint {.importc: "QCameraFlashControl_flashMode".}
proc fcQCameraFlashControl_setFlashMode(self: pointer, mode: cint): void {.importc: "QCameraFlashControl_setFlashMode".}
proc fcQCameraFlashControl_isFlashModeSupported(self: pointer, mode: cint): bool {.importc: "QCameraFlashControl_isFlashModeSupported".}
proc fcQCameraFlashControl_isFlashReady(self: pointer): bool {.importc: "QCameraFlashControl_isFlashReady".}
proc fcQCameraFlashControl_flashReady(self: pointer, param1: bool): void {.importc: "QCameraFlashControl_flashReady".}
proc fcQCameraFlashControl_connect_flashReady(self: pointer, slot: int, callback: proc (slot: int, param1: bool) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QCameraFlashControl_connect_flashReady".}
proc fcQCameraFlashControl_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QCameraFlashControl_tr2".}
proc fcQCameraFlashControl_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QCameraFlashControl_tr3".}
proc fcQCameraFlashControl_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QCameraFlashControl_trUtf82".}
proc fcQCameraFlashControl_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QCameraFlashControl_trUtf83".}
proc fcQCameraFlashControl_protectedbase_sender(self: pointer): pointer {.importc: "QCameraFlashControl_protectedbase_sender".}
proc fcQCameraFlashControl_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QCameraFlashControl_protectedbase_senderSignalIndex".}
proc fcQCameraFlashControl_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QCameraFlashControl_protectedbase_receivers".}
proc fcQCameraFlashControl_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QCameraFlashControl_protectedbase_isSignalConnected".}
proc fcQCameraFlashControl_staticMetaObject(): pointer {.importc: "QCameraFlashControl_staticMetaObject".}

proc metaObject*(self: gen_qcameraflashcontrol_types.QCameraFlashControl): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQCameraFlashControl_metaObject(self.h), owned: false)

proc metacast*(self: gen_qcameraflashcontrol_types.QCameraFlashControl, param1: cstring): pointer =
  fcQCameraFlashControl_metacast(self.h, param1)

proc metacall*(self: gen_qcameraflashcontrol_types.QCameraFlashControl, param1: cint, param2: cint, param3: pointer): cint =
  fcQCameraFlashControl_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qcameraflashcontrol_types.QCameraFlashControl, s: cstring): string =
  let v_ms = fcQCameraFlashControl_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qcameraflashcontrol_types.QCameraFlashControl, s: cstring): string =
  let v_ms = fcQCameraFlashControl_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc flashMode*(self: gen_qcameraflashcontrol_types.QCameraFlashControl): cint =
  cint(fcQCameraFlashControl_flashMode(self.h))

proc setFlashMode*(self: gen_qcameraflashcontrol_types.QCameraFlashControl, mode: cint): void =
  fcQCameraFlashControl_setFlashMode(self.h, cint(mode))

proc isFlashModeSupported*(self: gen_qcameraflashcontrol_types.QCameraFlashControl, mode: cint): bool =
  fcQCameraFlashControl_isFlashModeSupported(self.h, cint(mode))

proc isFlashReady*(self: gen_qcameraflashcontrol_types.QCameraFlashControl): bool =
  fcQCameraFlashControl_isFlashReady(self.h)

proc flashReady*(self: gen_qcameraflashcontrol_types.QCameraFlashControl, param1: bool): void =
  fcQCameraFlashControl_flashReady(self.h, param1)

type QCameraFlashControlflashReadySlot* = proc(param1: bool)
proc cQCameraFlashControl_slot_callback_flashReady(slot: int, param1: bool) {.cdecl.} =
  let nimfunc = cast[ptr QCameraFlashControlflashReadySlot](cast[pointer](slot))
  let slotval1 = param1

  nimfunc[](slotval1)

proc cQCameraFlashControl_slot_callback_flashReady_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QCameraFlashControlflashReadySlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onflashReady*(self: gen_qcameraflashcontrol_types.QCameraFlashControl, slot: QCameraFlashControlflashReadySlot) =
  var tmp = new QCameraFlashControlflashReadySlot
  tmp[] = slot
  GC_ref(tmp)
  fcQCameraFlashControl_connect_flashReady(self.h, cast[int](addr tmp[]), cQCameraFlashControl_slot_callback_flashReady, cQCameraFlashControl_slot_callback_flashReady_release)

proc tr*(_: type gen_qcameraflashcontrol_types.QCameraFlashControl, s: cstring, c: cstring): string =
  let v_ms = fcQCameraFlashControl_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qcameraflashcontrol_types.QCameraFlashControl, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQCameraFlashControl_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qcameraflashcontrol_types.QCameraFlashControl, s: cstring, c: cstring): string =
  let v_ms = fcQCameraFlashControl_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qcameraflashcontrol_types.QCameraFlashControl, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQCameraFlashControl_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc sender*(self: gen_qcameraflashcontrol_types.QCameraFlashControl): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQCameraFlashControl_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qcameraflashcontrol_types.QCameraFlashControl): cint =
  fcQCameraFlashControl_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qcameraflashcontrol_types.QCameraFlashControl, signal: cstring): cint =
  fcQCameraFlashControl_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qcameraflashcontrol_types.QCameraFlashControl, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQCameraFlashControl_protectedbase_isSignalConnected(self.h, signal.h)

proc staticMetaObject*(_: type gen_qcameraflashcontrol_types.QCameraFlashControl): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQCameraFlashControl_staticMetaObject())
