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
{.compile("gen_qmediaservice.cpp", cflags).}


import ./gen_qmediaservice_types
export gen_qmediaservice_types

import
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qobject,
  ../QtCore/gen_qobjectdefs_types,
  ./gen_qmediacontrol_types
export
  gen_qmetaobject_types,
  gen_qobject,
  gen_qobjectdefs_types,
  gen_qmediacontrol_types

type cQMediaService*{.exportc: "QMediaService", incompleteStruct.} = object

proc fcQMediaService_metaObject(self: pointer, ): pointer {.importc: "QMediaService_metaObject".}
proc fcQMediaService_metacast(self: pointer, param1: cstring): pointer {.importc: "QMediaService_metacast".}
proc fcQMediaService_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QMediaService_metacall".}
proc fcQMediaService_tr(s: cstring): struct_miqt_string {.importc: "QMediaService_tr".}
proc fcQMediaService_trUtf8(s: cstring): struct_miqt_string {.importc: "QMediaService_trUtf8".}
proc fcQMediaService_requestControl(self: pointer, name: cstring): pointer {.importc: "QMediaService_requestControl".}
proc fcQMediaService_releaseControl(self: pointer, control: pointer): void {.importc: "QMediaService_releaseControl".}
proc fcQMediaService_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QMediaService_tr2".}
proc fcQMediaService_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QMediaService_tr3".}
proc fcQMediaService_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QMediaService_trUtf82".}
proc fcQMediaService_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QMediaService_trUtf83".}
proc fcQMediaService_protectedbase_sender(self: pointer, ): pointer {.importc: "QMediaService_protectedbase_sender".}
proc fcQMediaService_protectedbase_senderSignalIndex(self: pointer, ): cint {.importc: "QMediaService_protectedbase_senderSignalIndex".}
proc fcQMediaService_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QMediaService_protectedbase_receivers".}
proc fcQMediaService_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QMediaService_protectedbase_isSignalConnected".}
proc fcQMediaService_staticMetaObject(): pointer {.importc: "QMediaService_staticMetaObject".}
proc fcQMediaService_delete(self: pointer) {.importc: "QMediaService_delete".}

proc metaObject*(self: gen_qmediaservice_types.QMediaService, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQMediaService_metaObject(self.h))

proc metacast*(self: gen_qmediaservice_types.QMediaService, param1: cstring): pointer =
  fcQMediaService_metacast(self.h, param1)

proc metacall*(self: gen_qmediaservice_types.QMediaService, param1: cint, param2: cint, param3: pointer): cint =
  fcQMediaService_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qmediaservice_types.QMediaService, s: cstring): string =
  let v_ms = fcQMediaService_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qmediaservice_types.QMediaService, s: cstring): string =
  let v_ms = fcQMediaService_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc requestControl*(self: gen_qmediaservice_types.QMediaService, name: cstring): gen_qmediacontrol_types.QMediaControl =
  gen_qmediacontrol_types.QMediaControl(h: fcQMediaService_requestControl(self.h, name))

proc releaseControl*(self: gen_qmediaservice_types.QMediaService, control: gen_qmediacontrol_types.QMediaControl): void =
  fcQMediaService_releaseControl(self.h, control.h)

proc tr*(_: type gen_qmediaservice_types.QMediaService, s: cstring, c: cstring): string =
  let v_ms = fcQMediaService_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qmediaservice_types.QMediaService, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQMediaService_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qmediaservice_types.QMediaService, s: cstring, c: cstring): string =
  let v_ms = fcQMediaService_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qmediaservice_types.QMediaService, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQMediaService_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc sender*(self: gen_qmediaservice_types.QMediaService, ): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQMediaService_protectedbase_sender(self.h))

proc senderSignalIndex*(self: gen_qmediaservice_types.QMediaService, ): cint =
  fcQMediaService_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qmediaservice_types.QMediaService, signal: cstring): cint =
  fcQMediaService_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qmediaservice_types.QMediaService, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQMediaService_protectedbase_isSignalConnected(self.h, signal.h)

proc staticMetaObject*(_: type gen_qmediaservice_types.QMediaService): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQMediaService_staticMetaObject())
proc delete*(self: gen_qmediaservice_types.QMediaService) =
  fcQMediaService_delete(self.h)
