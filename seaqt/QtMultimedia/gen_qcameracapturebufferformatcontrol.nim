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
{.compile("gen_qcameracapturebufferformatcontrol.cpp", cflags).}


import ./gen_qcameracapturebufferformatcontrol_types
export gen_qcameracapturebufferformatcontrol_types

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

type cQCameraCaptureBufferFormatControl*{.exportc: "QCameraCaptureBufferFormatControl", incompleteStruct.} = object

proc fcQCameraCaptureBufferFormatControl_metaObject(self: pointer, ): pointer {.importc: "QCameraCaptureBufferFormatControl_metaObject".}
proc fcQCameraCaptureBufferFormatControl_metacast(self: pointer, param1: cstring): pointer {.importc: "QCameraCaptureBufferFormatControl_metacast".}
proc fcQCameraCaptureBufferFormatControl_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QCameraCaptureBufferFormatControl_metacall".}
proc fcQCameraCaptureBufferFormatControl_tr(s: cstring): struct_miqt_string {.importc: "QCameraCaptureBufferFormatControl_tr".}
proc fcQCameraCaptureBufferFormatControl_trUtf8(s: cstring): struct_miqt_string {.importc: "QCameraCaptureBufferFormatControl_trUtf8".}
proc fcQCameraCaptureBufferFormatControl_supportedBufferFormats(self: pointer, ): struct_miqt_array {.importc: "QCameraCaptureBufferFormatControl_supportedBufferFormats".}
proc fcQCameraCaptureBufferFormatControl_bufferFormat(self: pointer, ): cint {.importc: "QCameraCaptureBufferFormatControl_bufferFormat".}
proc fcQCameraCaptureBufferFormatControl_setBufferFormat(self: pointer, format: cint): void {.importc: "QCameraCaptureBufferFormatControl_setBufferFormat".}
proc fcQCameraCaptureBufferFormatControl_bufferFormatChanged(self: pointer, format: cint): void {.importc: "QCameraCaptureBufferFormatControl_bufferFormatChanged".}
proc fcQCameraCaptureBufferFormatControl_connect_bufferFormatChanged(self: pointer, slot: int, callback: proc (slot: int, format: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QCameraCaptureBufferFormatControl_connect_bufferFormatChanged".}
proc fcQCameraCaptureBufferFormatControl_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QCameraCaptureBufferFormatControl_tr2".}
proc fcQCameraCaptureBufferFormatControl_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QCameraCaptureBufferFormatControl_tr3".}
proc fcQCameraCaptureBufferFormatControl_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QCameraCaptureBufferFormatControl_trUtf82".}
proc fcQCameraCaptureBufferFormatControl_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QCameraCaptureBufferFormatControl_trUtf83".}
proc fcQCameraCaptureBufferFormatControl_protectedbase_sender(self: pointer, ): pointer {.importc: "QCameraCaptureBufferFormatControl_protectedbase_sender".}
proc fcQCameraCaptureBufferFormatControl_protectedbase_senderSignalIndex(self: pointer, ): cint {.importc: "QCameraCaptureBufferFormatControl_protectedbase_senderSignalIndex".}
proc fcQCameraCaptureBufferFormatControl_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QCameraCaptureBufferFormatControl_protectedbase_receivers".}
proc fcQCameraCaptureBufferFormatControl_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QCameraCaptureBufferFormatControl_protectedbase_isSignalConnected".}
proc fcQCameraCaptureBufferFormatControl_staticMetaObject(): pointer {.importc: "QCameraCaptureBufferFormatControl_staticMetaObject".}
proc fcQCameraCaptureBufferFormatControl_delete(self: pointer) {.importc: "QCameraCaptureBufferFormatControl_delete".}

proc metaObject*(self: gen_qcameracapturebufferformatcontrol_types.QCameraCaptureBufferFormatControl, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQCameraCaptureBufferFormatControl_metaObject(self.h))

proc metacast*(self: gen_qcameracapturebufferformatcontrol_types.QCameraCaptureBufferFormatControl, param1: cstring): pointer =
  fcQCameraCaptureBufferFormatControl_metacast(self.h, param1)

proc metacall*(self: gen_qcameracapturebufferformatcontrol_types.QCameraCaptureBufferFormatControl, param1: cint, param2: cint, param3: pointer): cint =
  fcQCameraCaptureBufferFormatControl_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qcameracapturebufferformatcontrol_types.QCameraCaptureBufferFormatControl, s: cstring): string =
  let v_ms = fcQCameraCaptureBufferFormatControl_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qcameracapturebufferformatcontrol_types.QCameraCaptureBufferFormatControl, s: cstring): string =
  let v_ms = fcQCameraCaptureBufferFormatControl_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc supportedBufferFormats*(self: gen_qcameracapturebufferformatcontrol_types.QCameraCaptureBufferFormatControl, ): seq[cint] =
  var v_ma = fcQCameraCaptureBufferFormatControl_supportedBufferFormats(self.h)
  var vx_ret = newSeq[cint](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[cint]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = cint(v_outCast[i])
  c_free(v_ma.data)
  vx_ret

proc bufferFormat*(self: gen_qcameracapturebufferformatcontrol_types.QCameraCaptureBufferFormatControl, ): cint =
  cint(fcQCameraCaptureBufferFormatControl_bufferFormat(self.h))

proc setBufferFormat*(self: gen_qcameracapturebufferformatcontrol_types.QCameraCaptureBufferFormatControl, format: cint): void =
  fcQCameraCaptureBufferFormatControl_setBufferFormat(self.h, cint(format))

proc bufferFormatChanged*(self: gen_qcameracapturebufferformatcontrol_types.QCameraCaptureBufferFormatControl, format: cint): void =
  fcQCameraCaptureBufferFormatControl_bufferFormatChanged(self.h, cint(format))

type QCameraCaptureBufferFormatControlbufferFormatChangedSlot* = proc(format: cint)
proc miqt_exec_callback_cQCameraCaptureBufferFormatControl_bufferFormatChanged(slot: int, format: cint) {.cdecl.} =
  let nimfunc = cast[ptr QCameraCaptureBufferFormatControlbufferFormatChangedSlot](cast[pointer](slot))
  let slotval1 = cint(format)

  nimfunc[](slotval1)

proc miqt_exec_callback_cQCameraCaptureBufferFormatControl_bufferFormatChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QCameraCaptureBufferFormatControlbufferFormatChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onbufferFormatChanged*(self: gen_qcameracapturebufferformatcontrol_types.QCameraCaptureBufferFormatControl, slot: QCameraCaptureBufferFormatControlbufferFormatChangedSlot) =
  var tmp = new QCameraCaptureBufferFormatControlbufferFormatChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQCameraCaptureBufferFormatControl_connect_bufferFormatChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQCameraCaptureBufferFormatControl_bufferFormatChanged, miqt_exec_callback_cQCameraCaptureBufferFormatControl_bufferFormatChanged_release)

proc tr*(_: type gen_qcameracapturebufferformatcontrol_types.QCameraCaptureBufferFormatControl, s: cstring, c: cstring): string =
  let v_ms = fcQCameraCaptureBufferFormatControl_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qcameracapturebufferformatcontrol_types.QCameraCaptureBufferFormatControl, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQCameraCaptureBufferFormatControl_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qcameracapturebufferformatcontrol_types.QCameraCaptureBufferFormatControl, s: cstring, c: cstring): string =
  let v_ms = fcQCameraCaptureBufferFormatControl_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qcameracapturebufferformatcontrol_types.QCameraCaptureBufferFormatControl, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQCameraCaptureBufferFormatControl_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc sender*(self: gen_qcameracapturebufferformatcontrol_types.QCameraCaptureBufferFormatControl, ): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQCameraCaptureBufferFormatControl_protectedbase_sender(self.h))

proc senderSignalIndex*(self: gen_qcameracapturebufferformatcontrol_types.QCameraCaptureBufferFormatControl, ): cint =
  fcQCameraCaptureBufferFormatControl_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qcameracapturebufferformatcontrol_types.QCameraCaptureBufferFormatControl, signal: cstring): cint =
  fcQCameraCaptureBufferFormatControl_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qcameracapturebufferformatcontrol_types.QCameraCaptureBufferFormatControl, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQCameraCaptureBufferFormatControl_protectedbase_isSignalConnected(self.h, signal.h)

proc staticMetaObject*(_: type gen_qcameracapturebufferformatcontrol_types.QCameraCaptureBufferFormatControl): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQCameraCaptureBufferFormatControl_staticMetaObject())
proc delete*(self: gen_qcameracapturebufferformatcontrol_types.QCameraCaptureBufferFormatControl) =
  fcQCameraCaptureBufferFormatControl_delete(self.h)
