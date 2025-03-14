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


{.compile("gen_qmediacontrol.cpp", QtMultimediaCFlags).}


import ./gen_qmediacontrol_types
export gen_qmediacontrol_types

import
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qobject,
  ../QtCore/gen_qobjectdefs_types
export
  gen_qmetaobject_types,
  gen_qobject,
  gen_qobjectdefs_types

type cQMediaControl*{.exportc: "QMediaControl", incompleteStruct.} = object

proc fcQMediaControl_metaObject(self: pointer): pointer {.importc: "QMediaControl_metaObject".}
proc fcQMediaControl_metacast(self: pointer, param1: cstring): pointer {.importc: "QMediaControl_metacast".}
proc fcQMediaControl_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QMediaControl_metacall".}
proc fcQMediaControl_tr(s: cstring): struct_miqt_string {.importc: "QMediaControl_tr".}
proc fcQMediaControl_trUtf8(s: cstring): struct_miqt_string {.importc: "QMediaControl_trUtf8".}
proc fcQMediaControl_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QMediaControl_tr2".}
proc fcQMediaControl_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QMediaControl_tr3".}
proc fcQMediaControl_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QMediaControl_trUtf82".}
proc fcQMediaControl_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QMediaControl_trUtf83".}
proc fcQMediaControl_protectedbase_sender(self: pointer): pointer {.importc: "QMediaControl_protectedbase_sender".}
proc fcQMediaControl_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QMediaControl_protectedbase_senderSignalIndex".}
proc fcQMediaControl_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QMediaControl_protectedbase_receivers".}
proc fcQMediaControl_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QMediaControl_protectedbase_isSignalConnected".}
proc fcQMediaControl_staticMetaObject(): pointer {.importc: "QMediaControl_staticMetaObject".}

proc metaObject*(self: gen_qmediacontrol_types.QMediaControl): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQMediaControl_metaObject(self.h), owned: false)

proc metacast*(self: gen_qmediacontrol_types.QMediaControl, param1: cstring): pointer =
  fcQMediaControl_metacast(self.h, param1)

proc metacall*(self: gen_qmediacontrol_types.QMediaControl, param1: cint, param2: cint, param3: pointer): cint =
  fcQMediaControl_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qmediacontrol_types.QMediaControl, s: cstring): string =
  let v_ms = fcQMediaControl_tr(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qmediacontrol_types.QMediaControl, s: cstring): string =
  let v_ms = fcQMediaControl_trUtf8(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qmediacontrol_types.QMediaControl, s: cstring, c: cstring): string =
  let v_ms = fcQMediaControl_tr2(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qmediacontrol_types.QMediaControl, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQMediaControl_tr3(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qmediacontrol_types.QMediaControl, s: cstring, c: cstring): string =
  let v_ms = fcQMediaControl_trUtf82(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qmediacontrol_types.QMediaControl, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQMediaControl_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc sender*(self: gen_qmediacontrol_types.QMediaControl): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQMediaControl_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qmediacontrol_types.QMediaControl): cint =
  fcQMediaControl_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qmediacontrol_types.QMediaControl, signal: cstring): cint =
  fcQMediaControl_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qmediacontrol_types.QMediaControl, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQMediaControl_protectedbase_isSignalConnected(self.h, signal.h)

proc staticMetaObject*(_: type gen_qmediacontrol_types.QMediaControl): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQMediaControl_staticMetaObject())
