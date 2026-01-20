import ./qtquick_pkg

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


{.compile("gen_qsgtextureprovider.cpp", QtQuickCFlags).}


import ./gen_qsgtextureprovider_types
export gen_qsgtextureprovider_types

import
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qobject,
  ../QtCore/gen_qobjectdefs_types,
  ./gen_qsgtexture_types
export
  gen_qmetaobject_types,
  gen_qobject,
  gen_qobjectdefs_types,
  gen_qsgtexture_types

type cQSGTextureProvider*{.exportc: "QSGTextureProvider", incompleteStruct.} = object

proc fcQSGTextureProvider_metaObject(self: pointer): pointer {.importc: "QSGTextureProvider_metaObject".}
proc fcQSGTextureProvider_metacast(self: pointer, param1: cstring): pointer {.importc: "QSGTextureProvider_metacast".}
proc fcQSGTextureProvider_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QSGTextureProvider_metacall".}
proc fcQSGTextureProvider_trS(s: cstring): struct_seaqt_string {.importc: "QSGTextureProvider_tr_s".}
proc fcQSGTextureProvider_trUtf8S(s: cstring): struct_seaqt_string {.importc: "QSGTextureProvider_trUtf8_s".}
proc fcQSGTextureProvider_texture(self: pointer): pointer {.importc: "QSGTextureProvider_texture".}
proc fcQSGTextureProvider_textureChanged(self: pointer): void {.importc: "QSGTextureProvider_textureChanged".}
proc fcQSGTextureProvider_connect_textureChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QSGTextureProvider_connect_textureChanged".}
proc fcQSGTextureProvider_trSC(s: cstring, c: cstring): struct_seaqt_string {.importc: "QSGTextureProvider_tr_s_c".}
proc fcQSGTextureProvider_trSCN(s: cstring, c: cstring, n: cint): struct_seaqt_string {.importc: "QSGTextureProvider_tr_s_c_n".}
proc fcQSGTextureProvider_trUtf8SC(s: cstring, c: cstring): struct_seaqt_string {.importc: "QSGTextureProvider_trUtf8_s_c".}
proc fcQSGTextureProvider_trUtf8SCN(s: cstring, c: cstring, n: cint): struct_seaqt_string {.importc: "QSGTextureProvider_trUtf8_s_c_n".}
proc fcQSGTextureProvider_protectedbase_sender(self: pointer): pointer {.importc: "QSGTextureProvider_protectedbase_sender".}
proc fcQSGTextureProvider_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QSGTextureProvider_protectedbase_senderSignalIndex".}
proc fcQSGTextureProvider_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QSGTextureProvider_protectedbase_receivers".}
proc fcQSGTextureProvider_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QSGTextureProvider_protectedbase_isSignalConnected".}
proc fcQSGTextureProvider_staticMetaObject(): pointer {.importc: "QSGTextureProvider_staticMetaObject".}

proc metaObject*(self: gen_qsgtextureprovider_types.QSGTextureProvider): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQSGTextureProvider_metaObject(self.h), owned: false)

proc metacast*(self: gen_qsgtextureprovider_types.QSGTextureProvider, param1: cstring): pointer =
  fcQSGTextureProvider_metacast(self.h, param1)

proc metacall*(self: gen_qsgtextureprovider_types.QSGTextureProvider, param1: cint, param2: cint, param3: pointer): cint =
  fcQSGTextureProvider_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qsgtextureprovider_types.QSGTextureProvider, s: cstring): string =
  let v_ms = fcQSGTextureProvider_trS(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qsgtextureprovider_types.QSGTextureProvider, s: cstring): string =
  let v_ms = fcQSGTextureProvider_trUtf8S(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc texture*(self: gen_qsgtextureprovider_types.QSGTextureProvider): gen_qsgtexture_types.QSGTexture =
  gen_qsgtexture_types.QSGTexture(h: fcQSGTextureProvider_texture(self.h), owned: false)

proc textureChanged*(self: gen_qsgtextureprovider_types.QSGTextureProvider): void =
  fcQSGTextureProvider_textureChanged(self.h)

type QSGTextureProvidertextureChangedSlot* = proc()
proc fcQSGTextureProvider_slot_callback_textureChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QSGTextureProvidertextureChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc fcQSGTextureProvider_slot_callback_textureChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QSGTextureProvidertextureChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onTextureChanged*(self: gen_qsgtextureprovider_types.QSGTextureProvider, slot: QSGTextureProvidertextureChangedSlot) =
  var tmp = new QSGTextureProvidertextureChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQSGTextureProvider_connect_textureChanged(self.h, cast[int](addr tmp[]), fcQSGTextureProvider_slot_callback_textureChanged, fcQSGTextureProvider_slot_callback_textureChanged_release)

proc tr*(_: type gen_qsgtextureprovider_types.QSGTextureProvider, s: cstring, c: cstring): string =
  let v_ms = fcQSGTextureProvider_trSC(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qsgtextureprovider_types.QSGTextureProvider, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQSGTextureProvider_trSCN(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qsgtextureprovider_types.QSGTextureProvider, s: cstring, c: cstring): string =
  let v_ms = fcQSGTextureProvider_trUtf8SC(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qsgtextureprovider_types.QSGTextureProvider, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQSGTextureProvider_trUtf8SCN(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc sender*(self: gen_qsgtextureprovider_types.QSGTextureProvider): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQSGTextureProvider_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qsgtextureprovider_types.QSGTextureProvider): cint =
  fcQSGTextureProvider_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qsgtextureprovider_types.QSGTextureProvider, signal: cstring): cint =
  fcQSGTextureProvider_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qsgtextureprovider_types.QSGTextureProvider, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQSGTextureProvider_protectedbase_isSignalConnected(self.h, signal.h)

proc staticMetaObject*(_: type gen_qsgtextureprovider_types.QSGTextureProvider): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQSGTextureProvider_staticMetaObject())
