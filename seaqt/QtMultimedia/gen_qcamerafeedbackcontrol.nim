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


{.compile("gen_qcamerafeedbackcontrol.cpp", QtMultimediaCFlags).}


type QCameraFeedbackControlEventTypeEnum* = distinct cint
template ViewfinderStarted*(_: type QCameraFeedbackControlEventTypeEnum): untyped = 1
template ViewfinderStopped*(_: type QCameraFeedbackControlEventTypeEnum): untyped = 2
template ImageCaptured*(_: type QCameraFeedbackControlEventTypeEnum): untyped = 3
template ImageSaved*(_: type QCameraFeedbackControlEventTypeEnum): untyped = 4
template ImageError*(_: type QCameraFeedbackControlEventTypeEnum): untyped = 5
template RecordingStarted*(_: type QCameraFeedbackControlEventTypeEnum): untyped = 6
template RecordingInProgress*(_: type QCameraFeedbackControlEventTypeEnum): untyped = 7
template RecordingStopped*(_: type QCameraFeedbackControlEventTypeEnum): untyped = 8
template AutoFocusInProgress*(_: type QCameraFeedbackControlEventTypeEnum): untyped = 9
template AutoFocusLocked*(_: type QCameraFeedbackControlEventTypeEnum): untyped = 10
template AutoFocusFailed*(_: type QCameraFeedbackControlEventTypeEnum): untyped = 11


import ./gen_qcamerafeedbackcontrol_types
export gen_qcamerafeedbackcontrol_types

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

type cQCameraFeedbackControl*{.exportc: "QCameraFeedbackControl", incompleteStruct.} = object

proc fcQCameraFeedbackControl_metaObject(self: pointer): pointer {.importc: "QCameraFeedbackControl_metaObject".}
proc fcQCameraFeedbackControl_metacast(self: pointer, param1: cstring): pointer {.importc: "QCameraFeedbackControl_metacast".}
proc fcQCameraFeedbackControl_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QCameraFeedbackControl_metacall".}
proc fcQCameraFeedbackControl_tr(s: cstring): struct_miqt_string {.importc: "QCameraFeedbackControl_tr".}
proc fcQCameraFeedbackControl_trUtf8(s: cstring): struct_miqt_string {.importc: "QCameraFeedbackControl_trUtf8".}
proc fcQCameraFeedbackControl_isEventFeedbackLocked(self: pointer, param1: cint): bool {.importc: "QCameraFeedbackControl_isEventFeedbackLocked".}
proc fcQCameraFeedbackControl_isEventFeedbackEnabled(self: pointer, param1: cint): bool {.importc: "QCameraFeedbackControl_isEventFeedbackEnabled".}
proc fcQCameraFeedbackControl_setEventFeedbackEnabled(self: pointer, param1: cint, param2: bool): bool {.importc: "QCameraFeedbackControl_setEventFeedbackEnabled".}
proc fcQCameraFeedbackControl_resetEventFeedback(self: pointer, param1: cint): void {.importc: "QCameraFeedbackControl_resetEventFeedback".}
proc fcQCameraFeedbackControl_setEventFeedbackSound(self: pointer, param1: cint, filePath: struct_miqt_string): bool {.importc: "QCameraFeedbackControl_setEventFeedbackSound".}
proc fcQCameraFeedbackControl_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QCameraFeedbackControl_tr2".}
proc fcQCameraFeedbackControl_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QCameraFeedbackControl_tr3".}
proc fcQCameraFeedbackControl_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QCameraFeedbackControl_trUtf82".}
proc fcQCameraFeedbackControl_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QCameraFeedbackControl_trUtf83".}
proc fcQCameraFeedbackControl_protectedbase_sender(self: pointer): pointer {.importc: "QCameraFeedbackControl_protectedbase_sender".}
proc fcQCameraFeedbackControl_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QCameraFeedbackControl_protectedbase_senderSignalIndex".}
proc fcQCameraFeedbackControl_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QCameraFeedbackControl_protectedbase_receivers".}
proc fcQCameraFeedbackControl_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QCameraFeedbackControl_protectedbase_isSignalConnected".}
proc fcQCameraFeedbackControl_staticMetaObject(): pointer {.importc: "QCameraFeedbackControl_staticMetaObject".}

proc metaObject*(self: gen_qcamerafeedbackcontrol_types.QCameraFeedbackControl): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQCameraFeedbackControl_metaObject(self.h), owned: false)

proc metacast*(self: gen_qcamerafeedbackcontrol_types.QCameraFeedbackControl, param1: cstring): pointer =
  fcQCameraFeedbackControl_metacast(self.h, param1)

proc metacall*(self: gen_qcamerafeedbackcontrol_types.QCameraFeedbackControl, param1: cint, param2: cint, param3: pointer): cint =
  fcQCameraFeedbackControl_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qcamerafeedbackcontrol_types.QCameraFeedbackControl, s: cstring): string =
  let v_ms = fcQCameraFeedbackControl_tr(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qcamerafeedbackcontrol_types.QCameraFeedbackControl, s: cstring): string =
  let v_ms = fcQCameraFeedbackControl_trUtf8(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc isEventFeedbackLocked*(self: gen_qcamerafeedbackcontrol_types.QCameraFeedbackControl, param1: cint): bool =
  fcQCameraFeedbackControl_isEventFeedbackLocked(self.h, cint(param1))

proc isEventFeedbackEnabled*(self: gen_qcamerafeedbackcontrol_types.QCameraFeedbackControl, param1: cint): bool =
  fcQCameraFeedbackControl_isEventFeedbackEnabled(self.h, cint(param1))

proc setEventFeedbackEnabled*(self: gen_qcamerafeedbackcontrol_types.QCameraFeedbackControl, param1: cint, param2: bool): bool =
  fcQCameraFeedbackControl_setEventFeedbackEnabled(self.h, cint(param1), param2)

proc resetEventFeedback*(self: gen_qcamerafeedbackcontrol_types.QCameraFeedbackControl, param1: cint): void =
  fcQCameraFeedbackControl_resetEventFeedback(self.h, cint(param1))

proc setEventFeedbackSound*(self: gen_qcamerafeedbackcontrol_types.QCameraFeedbackControl, param1: cint, filePath: openArray[char]): bool =
  fcQCameraFeedbackControl_setEventFeedbackSound(self.h, cint(param1), struct_miqt_string(data: if len(filePath) > 0: addr filePath[0] else: nil, len: csize_t(len(filePath))))

proc tr*(_: type gen_qcamerafeedbackcontrol_types.QCameraFeedbackControl, s: cstring, c: cstring): string =
  let v_ms = fcQCameraFeedbackControl_tr2(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qcamerafeedbackcontrol_types.QCameraFeedbackControl, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQCameraFeedbackControl_tr3(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qcamerafeedbackcontrol_types.QCameraFeedbackControl, s: cstring, c: cstring): string =
  let v_ms = fcQCameraFeedbackControl_trUtf82(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qcamerafeedbackcontrol_types.QCameraFeedbackControl, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQCameraFeedbackControl_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc sender*(self: gen_qcamerafeedbackcontrol_types.QCameraFeedbackControl): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQCameraFeedbackControl_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qcamerafeedbackcontrol_types.QCameraFeedbackControl): cint =
  fcQCameraFeedbackControl_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qcamerafeedbackcontrol_types.QCameraFeedbackControl, signal: cstring): cint =
  fcQCameraFeedbackControl_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qcamerafeedbackcontrol_types.QCameraFeedbackControl, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQCameraFeedbackControl_protectedbase_isSignalConnected(self.h, signal.h)

proc staticMetaObject*(_: type gen_qcamerafeedbackcontrol_types.QCameraFeedbackControl): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQCameraFeedbackControl_staticMetaObject())
