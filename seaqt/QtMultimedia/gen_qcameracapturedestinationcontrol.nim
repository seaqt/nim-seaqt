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
{.compile("gen_qcameracapturedestinationcontrol.cpp", cflags).}


import ./gen_qcameracapturedestinationcontrol_types
export gen_qcameracapturedestinationcontrol_types

import
  ../QtCore/gen_qobjectdefs_types,
  ./gen_qmediacontrol
export
  gen_qobjectdefs_types,
  gen_qmediacontrol

type cQCameraCaptureDestinationControl*{.exportc: "QCameraCaptureDestinationControl", incompleteStruct.} = object

proc fcQCameraCaptureDestinationControl_metaObject(self: pointer, ): pointer {.importc: "QCameraCaptureDestinationControl_metaObject".}
proc fcQCameraCaptureDestinationControl_metacast(self: pointer, param1: cstring): pointer {.importc: "QCameraCaptureDestinationControl_metacast".}
proc fcQCameraCaptureDestinationControl_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QCameraCaptureDestinationControl_metacall".}
proc fcQCameraCaptureDestinationControl_tr(s: cstring): struct_miqt_string {.importc: "QCameraCaptureDestinationControl_tr".}
proc fcQCameraCaptureDestinationControl_trUtf8(s: cstring): struct_miqt_string {.importc: "QCameraCaptureDestinationControl_trUtf8".}
proc fcQCameraCaptureDestinationControl_isCaptureDestinationSupported(self: pointer, destination: cint): bool {.importc: "QCameraCaptureDestinationControl_isCaptureDestinationSupported".}
proc fcQCameraCaptureDestinationControl_captureDestination(self: pointer, ): cint {.importc: "QCameraCaptureDestinationControl_captureDestination".}
proc fcQCameraCaptureDestinationControl_setCaptureDestination(self: pointer, destination: cint): void {.importc: "QCameraCaptureDestinationControl_setCaptureDestination".}
proc fcQCameraCaptureDestinationControl_captureDestinationChanged(self: pointer, destination: cint): void {.importc: "QCameraCaptureDestinationControl_captureDestinationChanged".}
proc fcQCameraCaptureDestinationControl_connect_captureDestinationChanged(self: pointer, slot: int) {.importc: "QCameraCaptureDestinationControl_connect_captureDestinationChanged".}
proc fcQCameraCaptureDestinationControl_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QCameraCaptureDestinationControl_tr2".}
proc fcQCameraCaptureDestinationControl_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QCameraCaptureDestinationControl_tr3".}
proc fcQCameraCaptureDestinationControl_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QCameraCaptureDestinationControl_trUtf82".}
proc fcQCameraCaptureDestinationControl_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QCameraCaptureDestinationControl_trUtf83".}
proc fcQCameraCaptureDestinationControl_staticMetaObject(): pointer {.importc: "QCameraCaptureDestinationControl_staticMetaObject".}
proc fcQCameraCaptureDestinationControl_delete(self: pointer) {.importc: "QCameraCaptureDestinationControl_delete".}


func init*(T: type gen_qcameracapturedestinationcontrol_types.QCameraCaptureDestinationControl, h: ptr cQCameraCaptureDestinationControl): gen_qcameracapturedestinationcontrol_types.QCameraCaptureDestinationControl =
  T(h: h)
proc metaObject*(self: gen_qcameracapturedestinationcontrol_types.QCameraCaptureDestinationControl, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQCameraCaptureDestinationControl_metaObject(self.h))

proc metacast*(self: gen_qcameracapturedestinationcontrol_types.QCameraCaptureDestinationControl, param1: cstring): pointer =
  fcQCameraCaptureDestinationControl_metacast(self.h, param1)

proc metacall*(self: gen_qcameracapturedestinationcontrol_types.QCameraCaptureDestinationControl, param1: cint, param2: cint, param3: pointer): cint =
  fcQCameraCaptureDestinationControl_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qcameracapturedestinationcontrol_types.QCameraCaptureDestinationControl, s: cstring): string =
  let v_ms = fcQCameraCaptureDestinationControl_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qcameracapturedestinationcontrol_types.QCameraCaptureDestinationControl, s: cstring): string =
  let v_ms = fcQCameraCaptureDestinationControl_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc isCaptureDestinationSupported*(self: gen_qcameracapturedestinationcontrol_types.QCameraCaptureDestinationControl, destination: cint): bool =
  fcQCameraCaptureDestinationControl_isCaptureDestinationSupported(self.h, cint(destination))

proc captureDestination*(self: gen_qcameracapturedestinationcontrol_types.QCameraCaptureDestinationControl, ): cint =
  cint(fcQCameraCaptureDestinationControl_captureDestination(self.h))

proc setCaptureDestination*(self: gen_qcameracapturedestinationcontrol_types.QCameraCaptureDestinationControl, destination: cint): void =
  fcQCameraCaptureDestinationControl_setCaptureDestination(self.h, cint(destination))

proc captureDestinationChanged*(self: gen_qcameracapturedestinationcontrol_types.QCameraCaptureDestinationControl, destination: cint): void =
  fcQCameraCaptureDestinationControl_captureDestinationChanged(self.h, cint(destination))

type QCameraCaptureDestinationControlcaptureDestinationChangedSlot* = proc(destination: cint)
proc miqt_exec_callback_QCameraCaptureDestinationControl_captureDestinationChanged(slot: int, destination: cint) {.exportc.} =
  let nimfunc = cast[ptr QCameraCaptureDestinationControlcaptureDestinationChangedSlot](cast[pointer](slot))
  let slotval1 = cint(destination)

  nimfunc[](slotval1)

proc oncaptureDestinationChanged*(self: gen_qcameracapturedestinationcontrol_types.QCameraCaptureDestinationControl, slot: QCameraCaptureDestinationControlcaptureDestinationChangedSlot) =
  var tmp = new QCameraCaptureDestinationControlcaptureDestinationChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQCameraCaptureDestinationControl_connect_captureDestinationChanged(self.h, cast[int](addr tmp[]))

proc tr*(_: type gen_qcameracapturedestinationcontrol_types.QCameraCaptureDestinationControl, s: cstring, c: cstring): string =
  let v_ms = fcQCameraCaptureDestinationControl_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qcameracapturedestinationcontrol_types.QCameraCaptureDestinationControl, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQCameraCaptureDestinationControl_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qcameracapturedestinationcontrol_types.QCameraCaptureDestinationControl, s: cstring, c: cstring): string =
  let v_ms = fcQCameraCaptureDestinationControl_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qcameracapturedestinationcontrol_types.QCameraCaptureDestinationControl, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQCameraCaptureDestinationControl_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc staticMetaObject*(_: type gen_qcameracapturedestinationcontrol_types.QCameraCaptureDestinationControl): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQCameraCaptureDestinationControl_staticMetaObject())
proc delete*(self: gen_qcameracapturedestinationcontrol_types.QCameraCaptureDestinationControl) =
  fcQCameraCaptureDestinationControl_delete(self.h)
