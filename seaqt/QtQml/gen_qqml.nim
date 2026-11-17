import ./qtqml_pkg

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


{.compile("gen_qqml.cpp", QtQmlCFlags).}


type QQmlModuleImportSpecialVersionsEnum* = distinct cint
template QQmlModuleImportModuleAny*(_: type QQmlModuleImportSpecialVersionsEnum): untyped = -1
template QQmlModuleImportLatest*(_: type QQmlModuleImportSpecialVersionsEnum): untyped = -1
template QQmlModuleImportAuto*(_: type QQmlModuleImportSpecialVersionsEnum): untyped = -2


import ./gen_qqml_types
export gen_qqml_types

import
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qobject,
  ../QtCore/gen_qobjectdefs_types
export
  gen_qmetaobject_types,
  gen_qobject,
  gen_qobjectdefs_types

type cQQmlTypeNotAvailable*{.exportc: "QQmlTypeNotAvailable", incompleteStruct.} = object

proc fcQQmlTypeNotAvailable_metaObject(self: pointer): pointer {.importc: "QQmlTypeNotAvailable_metaObject".}
proc fcQQmlTypeNotAvailable_metacast(self: pointer, param1: cstring): pointer {.importc: "QQmlTypeNotAvailable_metacast".}
proc fcQQmlTypeNotAvailable_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QQmlTypeNotAvailable_metacall".}
proc fcQQmlTypeNotAvailable_trS(s: cstring): struct_seaqt_string {.importc: "QQmlTypeNotAvailable_tr_s".}
proc fcQQmlTypeNotAvailable_trSC(s: cstring, c: cstring): struct_seaqt_string {.importc: "QQmlTypeNotAvailable_tr_s_c".}
proc fcQQmlTypeNotAvailable_trSCN(s: cstring, c: cstring, n: cint): struct_seaqt_string {.importc: "QQmlTypeNotAvailable_tr_s_c_n".}
proc fcQQmlTypeNotAvailable_protectedbase_sender(self: pointer): pointer {.importc: "QQmlTypeNotAvailable_protectedbase_sender".}
proc fcQQmlTypeNotAvailable_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QQmlTypeNotAvailable_protectedbase_senderSignalIndex".}
proc fcQQmlTypeNotAvailable_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QQmlTypeNotAvailable_protectedbase_receivers".}
proc fcQQmlTypeNotAvailable_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QQmlTypeNotAvailable_protectedbase_isSignalConnected".}
proc fcQQmlTypeNotAvailable_staticMetaObject(): pointer {.importc: "QQmlTypeNotAvailable_staticMetaObject".}

proc metaObject*(self: gen_qqml_types.QQmlTypeNotAvailable): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQQmlTypeNotAvailable_metaObject(self.h), owned: false)

proc metacast*(self: gen_qqml_types.QQmlTypeNotAvailable, param1: cstring): pointer =
  fcQQmlTypeNotAvailable_metacast(self.h, param1)

proc metacall*(self: gen_qqml_types.QQmlTypeNotAvailable, param1: cint, param2: cint, param3: pointer): cint =
  fcQQmlTypeNotAvailable_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qqml_types.QQmlTypeNotAvailable, s: cstring): string =
  let v_ms = fcQQmlTypeNotAvailable_trS(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qqml_types.QQmlTypeNotAvailable, s: cstring, c: cstring): string =
  let v_ms = fcQQmlTypeNotAvailable_trSC(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qqml_types.QQmlTypeNotAvailable, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQQmlTypeNotAvailable_trSCN(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc sender*(self: gen_qqml_types.QQmlTypeNotAvailable): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQQmlTypeNotAvailable_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qqml_types.QQmlTypeNotAvailable): cint =
  fcQQmlTypeNotAvailable_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qqml_types.QQmlTypeNotAvailable, signal: cstring): cint =
  fcQQmlTypeNotAvailable_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qqml_types.QQmlTypeNotAvailable, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQQmlTypeNotAvailable_protectedbase_isSignalConnected(self.h, signal.h)

proc staticMetaObject*(_: type gen_qqml_types.QQmlTypeNotAvailable): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQQmlTypeNotAvailable_staticMetaObject())
