import ./Qt5Quick_libs

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

const cflags = gorge("pkg-config --cflags Qt5Quick")  & " -fPIC"
{.compile("gen_qsgtextureprovider.cpp", cflags).}


import ./gen_qsgtextureprovider_types
export gen_qsgtextureprovider_types

import
  ../QtCore/gen_qobject,
  ../QtCore/gen_qobjectdefs_types,
  ./gen_qsgtexture_types
export
  gen_qobject,
  gen_qobjectdefs_types,
  gen_qsgtexture_types

type cQSGTextureProvider*{.exportc: "QSGTextureProvider", incompleteStruct.} = object

proc fcQSGTextureProvider_metaObject(self: pointer, ): pointer {.importc: "QSGTextureProvider_metaObject".}
proc fcQSGTextureProvider_metacast(self: pointer, param1: cstring): pointer {.importc: "QSGTextureProvider_metacast".}
proc fcQSGTextureProvider_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QSGTextureProvider_metacall".}
proc fcQSGTextureProvider_tr(s: cstring): struct_miqt_string {.importc: "QSGTextureProvider_tr".}
proc fcQSGTextureProvider_trUtf8(s: cstring): struct_miqt_string {.importc: "QSGTextureProvider_trUtf8".}
proc fcQSGTextureProvider_texture(self: pointer, ): pointer {.importc: "QSGTextureProvider_texture".}
proc fcQSGTextureProvider_textureChanged(self: pointer, ): void {.importc: "QSGTextureProvider_textureChanged".}
proc fcQSGTextureProvider_connect_textureChanged(self: pointer, slot: int) {.importc: "QSGTextureProvider_connect_textureChanged".}
proc fcQSGTextureProvider_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QSGTextureProvider_tr2".}
proc fcQSGTextureProvider_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QSGTextureProvider_tr3".}
proc fcQSGTextureProvider_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QSGTextureProvider_trUtf82".}
proc fcQSGTextureProvider_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QSGTextureProvider_trUtf83".}
proc fcQSGTextureProvider_staticMetaObject(): pointer {.importc: "QSGTextureProvider_staticMetaObject".}
proc fcQSGTextureProvider_delete(self: pointer) {.importc: "QSGTextureProvider_delete".}


func init*(T: type gen_qsgtextureprovider_types.QSGTextureProvider, h: ptr cQSGTextureProvider): gen_qsgtextureprovider_types.QSGTextureProvider =
  T(h: h)
proc metaObject*(self: gen_qsgtextureprovider_types.QSGTextureProvider, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQSGTextureProvider_metaObject(self.h))

proc metacast*(self: gen_qsgtextureprovider_types.QSGTextureProvider, param1: cstring): pointer =
  fcQSGTextureProvider_metacast(self.h, param1)

proc metacall*(self: gen_qsgtextureprovider_types.QSGTextureProvider, param1: cint, param2: cint, param3: pointer): cint =
  fcQSGTextureProvider_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qsgtextureprovider_types.QSGTextureProvider, s: cstring): string =
  let v_ms = fcQSGTextureProvider_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qsgtextureprovider_types.QSGTextureProvider, s: cstring): string =
  let v_ms = fcQSGTextureProvider_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc texture*(self: gen_qsgtextureprovider_types.QSGTextureProvider, ): gen_qsgtexture_types.QSGTexture =
  gen_qsgtexture_types.QSGTexture(h: fcQSGTextureProvider_texture(self.h))

proc textureChanged*(self: gen_qsgtextureprovider_types.QSGTextureProvider, ): void =
  fcQSGTextureProvider_textureChanged(self.h)

type QSGTextureProvidertextureChangedSlot* = proc()
proc miqt_exec_callback_QSGTextureProvider_textureChanged(slot: int) {.exportc.} =
  let nimfunc = cast[ptr QSGTextureProvidertextureChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc ontextureChanged*(self: gen_qsgtextureprovider_types.QSGTextureProvider, slot: QSGTextureProvidertextureChangedSlot) =
  var tmp = new QSGTextureProvidertextureChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQSGTextureProvider_connect_textureChanged(self.h, cast[int](addr tmp[]))

proc tr*(_: type gen_qsgtextureprovider_types.QSGTextureProvider, s: cstring, c: cstring): string =
  let v_ms = fcQSGTextureProvider_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qsgtextureprovider_types.QSGTextureProvider, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQSGTextureProvider_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qsgtextureprovider_types.QSGTextureProvider, s: cstring, c: cstring): string =
  let v_ms = fcQSGTextureProvider_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qsgtextureprovider_types.QSGTextureProvider, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQSGTextureProvider_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc staticMetaObject*(_: type gen_qsgtextureprovider_types.QSGTextureProvider): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQSGTextureProvider_staticMetaObject())
proc delete*(self: gen_qsgtextureprovider_types.QSGTextureProvider) =
  fcQSGTextureProvider_delete(self.h)
