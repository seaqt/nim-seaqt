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
{.compile("gen_qsgtexture.cpp", cflags).}


type QSGTextureWrapModeEnum* = distinct cint
template Repeat*(_: type QSGTextureWrapModeEnum): untyped = 0
template ClampToEdge*(_: type QSGTextureWrapModeEnum): untyped = 1
template MirroredRepeat*(_: type QSGTextureWrapModeEnum): untyped = 2


type QSGTextureFilteringEnum* = distinct cint
template None*(_: type QSGTextureFilteringEnum): untyped = 0
template Nearest*(_: type QSGTextureFilteringEnum): untyped = 1
template Linear*(_: type QSGTextureFilteringEnum): untyped = 2


type QSGTextureAnisotropyLevelEnum* = distinct cint
template AnisotropyNone*(_: type QSGTextureAnisotropyLevelEnum): untyped = 0
template Anisotropy2x*(_: type QSGTextureAnisotropyLevelEnum): untyped = 1
template Anisotropy4x*(_: type QSGTextureAnisotropyLevelEnum): untyped = 2
template Anisotropy8x*(_: type QSGTextureAnisotropyLevelEnum): untyped = 3
template Anisotropy16x*(_: type QSGTextureAnisotropyLevelEnum): untyped = 4


import ./gen_qsgtexture_types
export gen_qsgtexture_types

import
  ../QtCore/gen_qcoreevent_types,
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qobject,
  ../QtCore/gen_qobjectdefs_types,
  ../QtCore/gen_qrect_types,
  ../QtCore/gen_qsize_types
export
  gen_qcoreevent_types,
  gen_qmetaobject_types,
  gen_qobject,
  gen_qobjectdefs_types,
  gen_qrect_types,
  gen_qsize_types

type cQSGTexture*{.exportc: "QSGTexture", incompleteStruct.} = object
type cQSGDynamicTexture*{.exportc: "QSGDynamicTexture", incompleteStruct.} = object
type cQSGTextureNativeTexture*{.exportc: "QSGTexture__NativeTexture", incompleteStruct.} = object

proc fcQSGTexture_metaObject(self: pointer, ): pointer {.importc: "QSGTexture_metaObject".}
proc fcQSGTexture_metacast(self: pointer, param1: cstring): pointer {.importc: "QSGTexture_metacast".}
proc fcQSGTexture_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QSGTexture_metacall".}
proc fcQSGTexture_tr(s: cstring): struct_miqt_string {.importc: "QSGTexture_tr".}
proc fcQSGTexture_trUtf8(s: cstring): struct_miqt_string {.importc: "QSGTexture_trUtf8".}
proc fcQSGTexture_textureId(self: pointer, ): cint {.importc: "QSGTexture_textureId".}
proc fcQSGTexture_nativeTexture(self: pointer, ): pointer {.importc: "QSGTexture_nativeTexture".}
proc fcQSGTexture_textureSize(self: pointer, ): pointer {.importc: "QSGTexture_textureSize".}
proc fcQSGTexture_hasAlphaChannel(self: pointer, ): bool {.importc: "QSGTexture_hasAlphaChannel".}
proc fcQSGTexture_hasMipmaps(self: pointer, ): bool {.importc: "QSGTexture_hasMipmaps".}
proc fcQSGTexture_normalizedTextureSubRect(self: pointer, ): pointer {.importc: "QSGTexture_normalizedTextureSubRect".}
proc fcQSGTexture_isAtlasTexture(self: pointer, ): bool {.importc: "QSGTexture_isAtlasTexture".}
proc fcQSGTexture_removedFromAtlas(self: pointer, ): pointer {.importc: "QSGTexture_removedFromAtlas".}
proc fcQSGTexture_bindX(self: pointer, ): void {.importc: "QSGTexture_bind".}
proc fcQSGTexture_updateBindOptions(self: pointer, ): void {.importc: "QSGTexture_updateBindOptions".}
proc fcQSGTexture_setMipmapFiltering(self: pointer, filter: cint): void {.importc: "QSGTexture_setMipmapFiltering".}
proc fcQSGTexture_mipmapFiltering(self: pointer, ): cint {.importc: "QSGTexture_mipmapFiltering".}
proc fcQSGTexture_setFiltering(self: pointer, filter: cint): void {.importc: "QSGTexture_setFiltering".}
proc fcQSGTexture_filtering(self: pointer, ): cint {.importc: "QSGTexture_filtering".}
proc fcQSGTexture_setAnisotropyLevel(self: pointer, level: cint): void {.importc: "QSGTexture_setAnisotropyLevel".}
proc fcQSGTexture_anisotropyLevel(self: pointer, ): cint {.importc: "QSGTexture_anisotropyLevel".}
proc fcQSGTexture_setHorizontalWrapMode(self: pointer, hwrap: cint): void {.importc: "QSGTexture_setHorizontalWrapMode".}
proc fcQSGTexture_horizontalWrapMode(self: pointer, ): cint {.importc: "QSGTexture_horizontalWrapMode".}
proc fcQSGTexture_setVerticalWrapMode(self: pointer, vwrap: cint): void {.importc: "QSGTexture_setVerticalWrapMode".}
proc fcQSGTexture_verticalWrapMode(self: pointer, ): cint {.importc: "QSGTexture_verticalWrapMode".}
proc fcQSGTexture_convertToNormalizedSourceRect(self: pointer, rect: pointer): pointer {.importc: "QSGTexture_convertToNormalizedSourceRect".}
proc fcQSGTexture_comparisonKey(self: pointer, ): cint {.importc: "QSGTexture_comparisonKey".}
proc fcQSGTexture_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QSGTexture_tr2".}
proc fcQSGTexture_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QSGTexture_tr3".}
proc fcQSGTexture_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QSGTexture_trUtf82".}
proc fcQSGTexture_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QSGTexture_trUtf83".}
proc fcQSGTexture_updateBindOptions1(self: pointer, force: bool): void {.importc: "QSGTexture_updateBindOptions1".}
type cQSGTextureVTable = object
  destructor*: proc(vtbl: ptr cQSGTextureVTable, self: ptr cQSGTexture) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(vtbl, self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(vtbl, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  textureId*: proc(vtbl, self: pointer, ): cint {.cdecl, raises: [], gcsafe.}
  textureSize*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  hasAlphaChannel*: proc(vtbl, self: pointer, ): bool {.cdecl, raises: [], gcsafe.}
  hasMipmaps*: proc(vtbl, self: pointer, ): bool {.cdecl, raises: [], gcsafe.}
  normalizedTextureSubRect*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  isAtlasTexture*: proc(vtbl, self: pointer, ): bool {.cdecl, raises: [], gcsafe.}
  removedFromAtlas*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  bindX*: proc(vtbl, self: pointer, ): void {.cdecl, raises: [], gcsafe.}
  event*: proc(vtbl, self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(vtbl, self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQSGTexture_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QSGTexture_virtualbase_metaObject".}
proc fcQSGTexture_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QSGTexture_virtualbase_metacast".}
proc fcQSGTexture_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QSGTexture_virtualbase_metacall".}
proc fcQSGTexture_virtualbase_normalizedTextureSubRect(self: pointer, ): pointer {.importc: "QSGTexture_virtualbase_normalizedTextureSubRect".}
proc fcQSGTexture_virtualbase_isAtlasTexture(self: pointer, ): bool {.importc: "QSGTexture_virtualbase_isAtlasTexture".}
proc fcQSGTexture_virtualbase_removedFromAtlas(self: pointer, ): pointer {.importc: "QSGTexture_virtualbase_removedFromAtlas".}
proc fcQSGTexture_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QSGTexture_virtualbase_event".}
proc fcQSGTexture_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QSGTexture_virtualbase_eventFilter".}
proc fcQSGTexture_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QSGTexture_virtualbase_timerEvent".}
proc fcQSGTexture_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QSGTexture_virtualbase_childEvent".}
proc fcQSGTexture_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QSGTexture_virtualbase_customEvent".}
proc fcQSGTexture_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QSGTexture_virtualbase_connectNotify".}
proc fcQSGTexture_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QSGTexture_virtualbase_disconnectNotify".}
proc fcQSGTexture_new(vtbl: pointer, ): ptr cQSGTexture {.importc: "QSGTexture_new".}
proc fcQSGTexture_staticMetaObject(): pointer {.importc: "QSGTexture_staticMetaObject".}
proc fcQSGTexture_delete(self: pointer) {.importc: "QSGTexture_delete".}
proc fcQSGDynamicTexture_metaObject(self: pointer, ): pointer {.importc: "QSGDynamicTexture_metaObject".}
proc fcQSGDynamicTexture_metacast(self: pointer, param1: cstring): pointer {.importc: "QSGDynamicTexture_metacast".}
proc fcQSGDynamicTexture_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QSGDynamicTexture_metacall".}
proc fcQSGDynamicTexture_tr(s: cstring): struct_miqt_string {.importc: "QSGDynamicTexture_tr".}
proc fcQSGDynamicTexture_trUtf8(s: cstring): struct_miqt_string {.importc: "QSGDynamicTexture_trUtf8".}
proc fcQSGDynamicTexture_updateTexture(self: pointer, ): bool {.importc: "QSGDynamicTexture_updateTexture".}
proc fcQSGDynamicTexture_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QSGDynamicTexture_tr2".}
proc fcQSGDynamicTexture_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QSGDynamicTexture_tr3".}
proc fcQSGDynamicTexture_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QSGDynamicTexture_trUtf82".}
proc fcQSGDynamicTexture_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QSGDynamicTexture_trUtf83".}
type cQSGDynamicTextureVTable = object
  destructor*: proc(vtbl: ptr cQSGDynamicTextureVTable, self: ptr cQSGDynamicTexture) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(vtbl, self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(vtbl, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  updateTexture*: proc(vtbl, self: pointer, ): bool {.cdecl, raises: [], gcsafe.}
  textureId*: proc(vtbl, self: pointer, ): cint {.cdecl, raises: [], gcsafe.}
  textureSize*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  hasAlphaChannel*: proc(vtbl, self: pointer, ): bool {.cdecl, raises: [], gcsafe.}
  hasMipmaps*: proc(vtbl, self: pointer, ): bool {.cdecl, raises: [], gcsafe.}
  normalizedTextureSubRect*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  isAtlasTexture*: proc(vtbl, self: pointer, ): bool {.cdecl, raises: [], gcsafe.}
  removedFromAtlas*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  bindX*: proc(vtbl, self: pointer, ): void {.cdecl, raises: [], gcsafe.}
  event*: proc(vtbl, self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(vtbl, self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQSGDynamicTexture_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QSGDynamicTexture_virtualbase_metaObject".}
proc fcQSGDynamicTexture_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QSGDynamicTexture_virtualbase_metacast".}
proc fcQSGDynamicTexture_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QSGDynamicTexture_virtualbase_metacall".}
proc fcQSGDynamicTexture_virtualbase_normalizedTextureSubRect(self: pointer, ): pointer {.importc: "QSGDynamicTexture_virtualbase_normalizedTextureSubRect".}
proc fcQSGDynamicTexture_virtualbase_isAtlasTexture(self: pointer, ): bool {.importc: "QSGDynamicTexture_virtualbase_isAtlasTexture".}
proc fcQSGDynamicTexture_virtualbase_removedFromAtlas(self: pointer, ): pointer {.importc: "QSGDynamicTexture_virtualbase_removedFromAtlas".}
proc fcQSGDynamicTexture_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QSGDynamicTexture_virtualbase_event".}
proc fcQSGDynamicTexture_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QSGDynamicTexture_virtualbase_eventFilter".}
proc fcQSGDynamicTexture_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QSGDynamicTexture_virtualbase_timerEvent".}
proc fcQSGDynamicTexture_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QSGDynamicTexture_virtualbase_childEvent".}
proc fcQSGDynamicTexture_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QSGDynamicTexture_virtualbase_customEvent".}
proc fcQSGDynamicTexture_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QSGDynamicTexture_virtualbase_connectNotify".}
proc fcQSGDynamicTexture_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QSGDynamicTexture_virtualbase_disconnectNotify".}
proc fcQSGDynamicTexture_new(vtbl: pointer, ): ptr cQSGDynamicTexture {.importc: "QSGDynamicTexture_new".}
proc fcQSGDynamicTexture_staticMetaObject(): pointer {.importc: "QSGDynamicTexture_staticMetaObject".}
proc fcQSGDynamicTexture_delete(self: pointer) {.importc: "QSGDynamicTexture_delete".}
proc fcQSGTextureNativeTexture_delete(self: pointer) {.importc: "QSGTexture__NativeTexture_delete".}

proc metaObject*(self: gen_qsgtexture_types.QSGTexture, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQSGTexture_metaObject(self.h))

proc metacast*(self: gen_qsgtexture_types.QSGTexture, param1: cstring): pointer =
  fcQSGTexture_metacast(self.h, param1)

proc metacall*(self: gen_qsgtexture_types.QSGTexture, param1: cint, param2: cint, param3: pointer): cint =
  fcQSGTexture_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qsgtexture_types.QSGTexture, s: cstring): string =
  let v_ms = fcQSGTexture_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qsgtexture_types.QSGTexture, s: cstring): string =
  let v_ms = fcQSGTexture_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc textureId*(self: gen_qsgtexture_types.QSGTexture, ): cint =
  fcQSGTexture_textureId(self.h)

proc nativeTexture*(self: gen_qsgtexture_types.QSGTexture, ): gen_qsgtexture_types.QSGTextureNativeTexture =
  gen_qsgtexture_types.QSGTextureNativeTexture(h: fcQSGTexture_nativeTexture(self.h))

proc textureSize*(self: gen_qsgtexture_types.QSGTexture, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQSGTexture_textureSize(self.h))

proc hasAlphaChannel*(self: gen_qsgtexture_types.QSGTexture, ): bool =
  fcQSGTexture_hasAlphaChannel(self.h)

proc hasMipmaps*(self: gen_qsgtexture_types.QSGTexture, ): bool =
  fcQSGTexture_hasMipmaps(self.h)

proc normalizedTextureSubRect*(self: gen_qsgtexture_types.QSGTexture, ): gen_qrect_types.QRectF =
  gen_qrect_types.QRectF(h: fcQSGTexture_normalizedTextureSubRect(self.h))

proc isAtlasTexture*(self: gen_qsgtexture_types.QSGTexture, ): bool =
  fcQSGTexture_isAtlasTexture(self.h)

proc removedFromAtlas*(self: gen_qsgtexture_types.QSGTexture, ): gen_qsgtexture_types.QSGTexture =
  gen_qsgtexture_types.QSGTexture(h: fcQSGTexture_removedFromAtlas(self.h))

proc bindX*(self: gen_qsgtexture_types.QSGTexture, ): void =
  fcQSGTexture_bindX(self.h)

proc updateBindOptions*(self: gen_qsgtexture_types.QSGTexture, ): void =
  fcQSGTexture_updateBindOptions(self.h)

proc setMipmapFiltering*(self: gen_qsgtexture_types.QSGTexture, filter: cint): void =
  fcQSGTexture_setMipmapFiltering(self.h, cint(filter))

proc mipmapFiltering*(self: gen_qsgtexture_types.QSGTexture, ): cint =
  cint(fcQSGTexture_mipmapFiltering(self.h))

proc setFiltering*(self: gen_qsgtexture_types.QSGTexture, filter: cint): void =
  fcQSGTexture_setFiltering(self.h, cint(filter))

proc filtering*(self: gen_qsgtexture_types.QSGTexture, ): cint =
  cint(fcQSGTexture_filtering(self.h))

proc setAnisotropyLevel*(self: gen_qsgtexture_types.QSGTexture, level: cint): void =
  fcQSGTexture_setAnisotropyLevel(self.h, cint(level))

proc anisotropyLevel*(self: gen_qsgtexture_types.QSGTexture, ): cint =
  cint(fcQSGTexture_anisotropyLevel(self.h))

proc setHorizontalWrapMode*(self: gen_qsgtexture_types.QSGTexture, hwrap: cint): void =
  fcQSGTexture_setHorizontalWrapMode(self.h, cint(hwrap))

proc horizontalWrapMode*(self: gen_qsgtexture_types.QSGTexture, ): cint =
  cint(fcQSGTexture_horizontalWrapMode(self.h))

proc setVerticalWrapMode*(self: gen_qsgtexture_types.QSGTexture, vwrap: cint): void =
  fcQSGTexture_setVerticalWrapMode(self.h, cint(vwrap))

proc verticalWrapMode*(self: gen_qsgtexture_types.QSGTexture, ): cint =
  cint(fcQSGTexture_verticalWrapMode(self.h))

proc convertToNormalizedSourceRect*(self: gen_qsgtexture_types.QSGTexture, rect: gen_qrect_types.QRectF): gen_qrect_types.QRectF =
  gen_qrect_types.QRectF(h: fcQSGTexture_convertToNormalizedSourceRect(self.h, rect.h))

proc comparisonKey*(self: gen_qsgtexture_types.QSGTexture, ): cint =
  fcQSGTexture_comparisonKey(self.h)

proc tr*(_: type gen_qsgtexture_types.QSGTexture, s: cstring, c: cstring): string =
  let v_ms = fcQSGTexture_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qsgtexture_types.QSGTexture, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQSGTexture_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qsgtexture_types.QSGTexture, s: cstring, c: cstring): string =
  let v_ms = fcQSGTexture_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qsgtexture_types.QSGTexture, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQSGTexture_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc updateBindOptions*(self: gen_qsgtexture_types.QSGTexture, force: bool): void =
  fcQSGTexture_updateBindOptions1(self.h, force)

type QSGTexturemetaObjectProc* = proc(self: QSGTexture): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QSGTexturemetacastProc* = proc(self: QSGTexture, param1: cstring): pointer {.raises: [], gcsafe.}
type QSGTexturemetacallProc* = proc(self: QSGTexture, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QSGTexturetextureIdProc* = proc(self: QSGTexture): cint {.raises: [], gcsafe.}
type QSGTexturetextureSizeProc* = proc(self: QSGTexture): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QSGTexturehasAlphaChannelProc* = proc(self: QSGTexture): bool {.raises: [], gcsafe.}
type QSGTexturehasMipmapsProc* = proc(self: QSGTexture): bool {.raises: [], gcsafe.}
type QSGTexturenormalizedTextureSubRectProc* = proc(self: QSGTexture): gen_qrect_types.QRectF {.raises: [], gcsafe.}
type QSGTextureisAtlasTextureProc* = proc(self: QSGTexture): bool {.raises: [], gcsafe.}
type QSGTextureremovedFromAtlasProc* = proc(self: QSGTexture): gen_qsgtexture_types.QSGTexture {.raises: [], gcsafe.}
type QSGTexturebindXProc* = proc(self: QSGTexture): void {.raises: [], gcsafe.}
type QSGTextureeventProc* = proc(self: QSGTexture, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QSGTextureeventFilterProc* = proc(self: QSGTexture, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QSGTexturetimerEventProc* = proc(self: QSGTexture, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QSGTexturechildEventProc* = proc(self: QSGTexture, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QSGTexturecustomEventProc* = proc(self: QSGTexture, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QSGTextureconnectNotifyProc* = proc(self: QSGTexture, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QSGTexturedisconnectNotifyProc* = proc(self: QSGTexture, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QSGTextureVTable* = object
  vtbl: cQSGTextureVTable
  metaObject*: QSGTexturemetaObjectProc
  metacast*: QSGTexturemetacastProc
  metacall*: QSGTexturemetacallProc
  textureId*: QSGTexturetextureIdProc
  textureSize*: QSGTexturetextureSizeProc
  hasAlphaChannel*: QSGTexturehasAlphaChannelProc
  hasMipmaps*: QSGTexturehasMipmapsProc
  normalizedTextureSubRect*: QSGTexturenormalizedTextureSubRectProc
  isAtlasTexture*: QSGTextureisAtlasTextureProc
  removedFromAtlas*: QSGTextureremovedFromAtlasProc
  bindX*: QSGTexturebindXProc
  event*: QSGTextureeventProc
  eventFilter*: QSGTextureeventFilterProc
  timerEvent*: QSGTexturetimerEventProc
  childEvent*: QSGTexturechildEventProc
  customEvent*: QSGTexturecustomEventProc
  connectNotify*: QSGTextureconnectNotifyProc
  disconnectNotify*: QSGTexturedisconnectNotifyProc
proc QSGTexturemetaObject*(self: gen_qsgtexture_types.QSGTexture, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQSGTexture_virtualbase_metaObject(self.h))

proc miqt_exec_callback_cQSGTexture_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QSGTextureVTable](vtbl)
  let self = QSGTexture(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.h

proc QSGTexturemetacast*(self: gen_qsgtexture_types.QSGTexture, param1: cstring): pointer =
  fcQSGTexture_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQSGTexture_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QSGTextureVTable](vtbl)
  let self = QSGTexture(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QSGTexturemetacall*(self: gen_qsgtexture_types.QSGTexture, param1: cint, param2: cint, param3: pointer): cint =
  fcQSGTexture_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQSGTexture_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QSGTextureVTable](vtbl)
  let self = QSGTexture(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc miqt_exec_callback_cQSGTexture_textureId(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QSGTextureVTable](vtbl)
  let self = QSGTexture(h: self)
  var virtualReturn = vtbl[].textureId(self)
  virtualReturn

proc miqt_exec_callback_cQSGTexture_textureSize(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QSGTextureVTable](vtbl)
  let self = QSGTexture(h: self)
  var virtualReturn = vtbl[].textureSize(self)
  virtualReturn.h

proc miqt_exec_callback_cQSGTexture_hasAlphaChannel(vtbl: pointer, self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QSGTextureVTable](vtbl)
  let self = QSGTexture(h: self)
  var virtualReturn = vtbl[].hasAlphaChannel(self)
  virtualReturn

proc miqt_exec_callback_cQSGTexture_hasMipmaps(vtbl: pointer, self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QSGTextureVTable](vtbl)
  let self = QSGTexture(h: self)
  var virtualReturn = vtbl[].hasMipmaps(self)
  virtualReturn

proc QSGTexturenormalizedTextureSubRect*(self: gen_qsgtexture_types.QSGTexture, ): gen_qrect_types.QRectF =
  gen_qrect_types.QRectF(h: fcQSGTexture_virtualbase_normalizedTextureSubRect(self.h))

proc miqt_exec_callback_cQSGTexture_normalizedTextureSubRect(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QSGTextureVTable](vtbl)
  let self = QSGTexture(h: self)
  var virtualReturn = vtbl[].normalizedTextureSubRect(self)
  virtualReturn.h

proc QSGTextureisAtlasTexture*(self: gen_qsgtexture_types.QSGTexture, ): bool =
  fcQSGTexture_virtualbase_isAtlasTexture(self.h)

proc miqt_exec_callback_cQSGTexture_isAtlasTexture(vtbl: pointer, self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QSGTextureVTable](vtbl)
  let self = QSGTexture(h: self)
  var virtualReturn = vtbl[].isAtlasTexture(self)
  virtualReturn

proc QSGTextureremovedFromAtlas*(self: gen_qsgtexture_types.QSGTexture, ): gen_qsgtexture_types.QSGTexture =
  gen_qsgtexture_types.QSGTexture(h: fcQSGTexture_virtualbase_removedFromAtlas(self.h))

proc miqt_exec_callback_cQSGTexture_removedFromAtlas(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QSGTextureVTable](vtbl)
  let self = QSGTexture(h: self)
  var virtualReturn = vtbl[].removedFromAtlas(self)
  virtualReturn.h

proc miqt_exec_callback_cQSGTexture_bindX(vtbl: pointer, self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSGTextureVTable](vtbl)
  let self = QSGTexture(h: self)
  vtbl[].bindX(self)

proc QSGTextureevent*(self: gen_qsgtexture_types.QSGTexture, event: gen_qcoreevent_types.QEvent): bool =
  fcQSGTexture_virtualbase_event(self.h, event.h)

proc miqt_exec_callback_cQSGTexture_event(vtbl: pointer, self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QSGTextureVTable](vtbl)
  let self = QSGTexture(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QSGTextureeventFilter*(self: gen_qsgtexture_types.QSGTexture, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQSGTexture_virtualbase_eventFilter(self.h, watched.h, event.h)

proc miqt_exec_callback_cQSGTexture_eventFilter(vtbl: pointer, self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QSGTextureVTable](vtbl)
  let self = QSGTexture(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QSGTexturetimerEvent*(self: gen_qsgtexture_types.QSGTexture, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQSGTexture_virtualbase_timerEvent(self.h, event.h)

proc miqt_exec_callback_cQSGTexture_timerEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSGTextureVTable](vtbl)
  let self = QSGTexture(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)
  vtbl[].timerEvent(self, slotval1)

proc QSGTexturechildEvent*(self: gen_qsgtexture_types.QSGTexture, event: gen_qcoreevent_types.QChildEvent): void =
  fcQSGTexture_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQSGTexture_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSGTextureVTable](vtbl)
  let self = QSGTexture(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)
  vtbl[].childEvent(self, slotval1)

proc QSGTexturecustomEvent*(self: gen_qsgtexture_types.QSGTexture, event: gen_qcoreevent_types.QEvent): void =
  fcQSGTexture_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQSGTexture_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSGTextureVTable](vtbl)
  let self = QSGTexture(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].customEvent(self, slotval1)

proc QSGTextureconnectNotify*(self: gen_qsgtexture_types.QSGTexture, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQSGTexture_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQSGTexture_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSGTextureVTable](vtbl)
  let self = QSGTexture(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].connectNotify(self, slotval1)

proc QSGTexturedisconnectNotify*(self: gen_qsgtexture_types.QSGTexture, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQSGTexture_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQSGTexture_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSGTextureVTable](vtbl)
  let self = QSGTexture(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].disconnectNotify(self, slotval1)

proc create*(T: type gen_qsgtexture_types.QSGTexture,
    vtbl: ref QSGTextureVTable = nil): gen_qsgtexture_types.QSGTexture =
  let vtbl = if vtbl == nil: new QSGTextureVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQSGTextureVTable, _: ptr cQSGTexture) {.cdecl.} =
    let vtbl = cast[ref QSGTextureVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQSGTexture_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQSGTexture_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQSGTexture_metacall
  if not isNil(vtbl.textureId):
    vtbl[].vtbl.textureId = miqt_exec_callback_cQSGTexture_textureId
  if not isNil(vtbl.textureSize):
    vtbl[].vtbl.textureSize = miqt_exec_callback_cQSGTexture_textureSize
  if not isNil(vtbl.hasAlphaChannel):
    vtbl[].vtbl.hasAlphaChannel = miqt_exec_callback_cQSGTexture_hasAlphaChannel
  if not isNil(vtbl.hasMipmaps):
    vtbl[].vtbl.hasMipmaps = miqt_exec_callback_cQSGTexture_hasMipmaps
  if not isNil(vtbl.normalizedTextureSubRect):
    vtbl[].vtbl.normalizedTextureSubRect = miqt_exec_callback_cQSGTexture_normalizedTextureSubRect
  if not isNil(vtbl.isAtlasTexture):
    vtbl[].vtbl.isAtlasTexture = miqt_exec_callback_cQSGTexture_isAtlasTexture
  if not isNil(vtbl.removedFromAtlas):
    vtbl[].vtbl.removedFromAtlas = miqt_exec_callback_cQSGTexture_removedFromAtlas
  if not isNil(vtbl.bindX):
    vtbl[].vtbl.bindX = miqt_exec_callback_cQSGTexture_bindX
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQSGTexture_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQSGTexture_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQSGTexture_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQSGTexture_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQSGTexture_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQSGTexture_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQSGTexture_disconnectNotify
  gen_qsgtexture_types.QSGTexture(h: fcQSGTexture_new(addr(vtbl[]), ))

proc staticMetaObject*(_: type gen_qsgtexture_types.QSGTexture): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQSGTexture_staticMetaObject())
proc delete*(self: gen_qsgtexture_types.QSGTexture) =
  fcQSGTexture_delete(self.h)
proc metaObject*(self: gen_qsgtexture_types.QSGDynamicTexture, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQSGDynamicTexture_metaObject(self.h))

proc metacast*(self: gen_qsgtexture_types.QSGDynamicTexture, param1: cstring): pointer =
  fcQSGDynamicTexture_metacast(self.h, param1)

proc metacall*(self: gen_qsgtexture_types.QSGDynamicTexture, param1: cint, param2: cint, param3: pointer): cint =
  fcQSGDynamicTexture_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qsgtexture_types.QSGDynamicTexture, s: cstring): string =
  let v_ms = fcQSGDynamicTexture_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qsgtexture_types.QSGDynamicTexture, s: cstring): string =
  let v_ms = fcQSGDynamicTexture_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc updateTexture*(self: gen_qsgtexture_types.QSGDynamicTexture, ): bool =
  fcQSGDynamicTexture_updateTexture(self.h)

proc tr*(_: type gen_qsgtexture_types.QSGDynamicTexture, s: cstring, c: cstring): string =
  let v_ms = fcQSGDynamicTexture_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qsgtexture_types.QSGDynamicTexture, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQSGDynamicTexture_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qsgtexture_types.QSGDynamicTexture, s: cstring, c: cstring): string =
  let v_ms = fcQSGDynamicTexture_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qsgtexture_types.QSGDynamicTexture, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQSGDynamicTexture_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

type QSGDynamicTexturemetaObjectProc* = proc(self: QSGDynamicTexture): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QSGDynamicTexturemetacastProc* = proc(self: QSGDynamicTexture, param1: cstring): pointer {.raises: [], gcsafe.}
type QSGDynamicTexturemetacallProc* = proc(self: QSGDynamicTexture, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QSGDynamicTextureupdateTextureProc* = proc(self: QSGDynamicTexture): bool {.raises: [], gcsafe.}
type QSGDynamicTexturetextureIdProc* = proc(self: QSGDynamicTexture): cint {.raises: [], gcsafe.}
type QSGDynamicTexturetextureSizeProc* = proc(self: QSGDynamicTexture): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QSGDynamicTexturehasAlphaChannelProc* = proc(self: QSGDynamicTexture): bool {.raises: [], gcsafe.}
type QSGDynamicTexturehasMipmapsProc* = proc(self: QSGDynamicTexture): bool {.raises: [], gcsafe.}
type QSGDynamicTexturenormalizedTextureSubRectProc* = proc(self: QSGDynamicTexture): gen_qrect_types.QRectF {.raises: [], gcsafe.}
type QSGDynamicTextureisAtlasTextureProc* = proc(self: QSGDynamicTexture): bool {.raises: [], gcsafe.}
type QSGDynamicTextureremovedFromAtlasProc* = proc(self: QSGDynamicTexture): gen_qsgtexture_types.QSGTexture {.raises: [], gcsafe.}
type QSGDynamicTexturebindXProc* = proc(self: QSGDynamicTexture): void {.raises: [], gcsafe.}
type QSGDynamicTextureeventProc* = proc(self: QSGDynamicTexture, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QSGDynamicTextureeventFilterProc* = proc(self: QSGDynamicTexture, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QSGDynamicTexturetimerEventProc* = proc(self: QSGDynamicTexture, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QSGDynamicTexturechildEventProc* = proc(self: QSGDynamicTexture, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QSGDynamicTexturecustomEventProc* = proc(self: QSGDynamicTexture, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QSGDynamicTextureconnectNotifyProc* = proc(self: QSGDynamicTexture, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QSGDynamicTexturedisconnectNotifyProc* = proc(self: QSGDynamicTexture, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QSGDynamicTextureVTable* = object
  vtbl: cQSGDynamicTextureVTable
  metaObject*: QSGDynamicTexturemetaObjectProc
  metacast*: QSGDynamicTexturemetacastProc
  metacall*: QSGDynamicTexturemetacallProc
  updateTexture*: QSGDynamicTextureupdateTextureProc
  textureId*: QSGDynamicTexturetextureIdProc
  textureSize*: QSGDynamicTexturetextureSizeProc
  hasAlphaChannel*: QSGDynamicTexturehasAlphaChannelProc
  hasMipmaps*: QSGDynamicTexturehasMipmapsProc
  normalizedTextureSubRect*: QSGDynamicTexturenormalizedTextureSubRectProc
  isAtlasTexture*: QSGDynamicTextureisAtlasTextureProc
  removedFromAtlas*: QSGDynamicTextureremovedFromAtlasProc
  bindX*: QSGDynamicTexturebindXProc
  event*: QSGDynamicTextureeventProc
  eventFilter*: QSGDynamicTextureeventFilterProc
  timerEvent*: QSGDynamicTexturetimerEventProc
  childEvent*: QSGDynamicTexturechildEventProc
  customEvent*: QSGDynamicTexturecustomEventProc
  connectNotify*: QSGDynamicTextureconnectNotifyProc
  disconnectNotify*: QSGDynamicTexturedisconnectNotifyProc
proc QSGDynamicTexturemetaObject*(self: gen_qsgtexture_types.QSGDynamicTexture, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQSGDynamicTexture_virtualbase_metaObject(self.h))

proc miqt_exec_callback_cQSGDynamicTexture_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QSGDynamicTextureVTable](vtbl)
  let self = QSGDynamicTexture(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.h

proc QSGDynamicTexturemetacast*(self: gen_qsgtexture_types.QSGDynamicTexture, param1: cstring): pointer =
  fcQSGDynamicTexture_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQSGDynamicTexture_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QSGDynamicTextureVTable](vtbl)
  let self = QSGDynamicTexture(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QSGDynamicTexturemetacall*(self: gen_qsgtexture_types.QSGDynamicTexture, param1: cint, param2: cint, param3: pointer): cint =
  fcQSGDynamicTexture_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQSGDynamicTexture_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QSGDynamicTextureVTable](vtbl)
  let self = QSGDynamicTexture(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc miqt_exec_callback_cQSGDynamicTexture_updateTexture(vtbl: pointer, self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QSGDynamicTextureVTable](vtbl)
  let self = QSGDynamicTexture(h: self)
  var virtualReturn = vtbl[].updateTexture(self)
  virtualReturn

proc miqt_exec_callback_cQSGDynamicTexture_textureId(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QSGDynamicTextureVTable](vtbl)
  let self = QSGDynamicTexture(h: self)
  var virtualReturn = vtbl[].textureId(self)
  virtualReturn

proc miqt_exec_callback_cQSGDynamicTexture_textureSize(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QSGDynamicTextureVTable](vtbl)
  let self = QSGDynamicTexture(h: self)
  var virtualReturn = vtbl[].textureSize(self)
  virtualReturn.h

proc miqt_exec_callback_cQSGDynamicTexture_hasAlphaChannel(vtbl: pointer, self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QSGDynamicTextureVTable](vtbl)
  let self = QSGDynamicTexture(h: self)
  var virtualReturn = vtbl[].hasAlphaChannel(self)
  virtualReturn

proc miqt_exec_callback_cQSGDynamicTexture_hasMipmaps(vtbl: pointer, self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QSGDynamicTextureVTable](vtbl)
  let self = QSGDynamicTexture(h: self)
  var virtualReturn = vtbl[].hasMipmaps(self)
  virtualReturn

proc QSGDynamicTexturenormalizedTextureSubRect*(self: gen_qsgtexture_types.QSGDynamicTexture, ): gen_qrect_types.QRectF =
  gen_qrect_types.QRectF(h: fcQSGDynamicTexture_virtualbase_normalizedTextureSubRect(self.h))

proc miqt_exec_callback_cQSGDynamicTexture_normalizedTextureSubRect(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QSGDynamicTextureVTable](vtbl)
  let self = QSGDynamicTexture(h: self)
  var virtualReturn = vtbl[].normalizedTextureSubRect(self)
  virtualReturn.h

proc QSGDynamicTextureisAtlasTexture*(self: gen_qsgtexture_types.QSGDynamicTexture, ): bool =
  fcQSGDynamicTexture_virtualbase_isAtlasTexture(self.h)

proc miqt_exec_callback_cQSGDynamicTexture_isAtlasTexture(vtbl: pointer, self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QSGDynamicTextureVTable](vtbl)
  let self = QSGDynamicTexture(h: self)
  var virtualReturn = vtbl[].isAtlasTexture(self)
  virtualReturn

proc QSGDynamicTextureremovedFromAtlas*(self: gen_qsgtexture_types.QSGDynamicTexture, ): gen_qsgtexture_types.QSGTexture =
  gen_qsgtexture_types.QSGTexture(h: fcQSGDynamicTexture_virtualbase_removedFromAtlas(self.h))

proc miqt_exec_callback_cQSGDynamicTexture_removedFromAtlas(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QSGDynamicTextureVTable](vtbl)
  let self = QSGDynamicTexture(h: self)
  var virtualReturn = vtbl[].removedFromAtlas(self)
  virtualReturn.h

proc miqt_exec_callback_cQSGDynamicTexture_bindX(vtbl: pointer, self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSGDynamicTextureVTable](vtbl)
  let self = QSGDynamicTexture(h: self)
  vtbl[].bindX(self)

proc QSGDynamicTextureevent*(self: gen_qsgtexture_types.QSGDynamicTexture, event: gen_qcoreevent_types.QEvent): bool =
  fcQSGDynamicTexture_virtualbase_event(self.h, event.h)

proc miqt_exec_callback_cQSGDynamicTexture_event(vtbl: pointer, self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QSGDynamicTextureVTable](vtbl)
  let self = QSGDynamicTexture(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QSGDynamicTextureeventFilter*(self: gen_qsgtexture_types.QSGDynamicTexture, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQSGDynamicTexture_virtualbase_eventFilter(self.h, watched.h, event.h)

proc miqt_exec_callback_cQSGDynamicTexture_eventFilter(vtbl: pointer, self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QSGDynamicTextureVTable](vtbl)
  let self = QSGDynamicTexture(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QSGDynamicTexturetimerEvent*(self: gen_qsgtexture_types.QSGDynamicTexture, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQSGDynamicTexture_virtualbase_timerEvent(self.h, event.h)

proc miqt_exec_callback_cQSGDynamicTexture_timerEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSGDynamicTextureVTable](vtbl)
  let self = QSGDynamicTexture(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)
  vtbl[].timerEvent(self, slotval1)

proc QSGDynamicTexturechildEvent*(self: gen_qsgtexture_types.QSGDynamicTexture, event: gen_qcoreevent_types.QChildEvent): void =
  fcQSGDynamicTexture_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQSGDynamicTexture_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSGDynamicTextureVTable](vtbl)
  let self = QSGDynamicTexture(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)
  vtbl[].childEvent(self, slotval1)

proc QSGDynamicTexturecustomEvent*(self: gen_qsgtexture_types.QSGDynamicTexture, event: gen_qcoreevent_types.QEvent): void =
  fcQSGDynamicTexture_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQSGDynamicTexture_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSGDynamicTextureVTable](vtbl)
  let self = QSGDynamicTexture(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].customEvent(self, slotval1)

proc QSGDynamicTextureconnectNotify*(self: gen_qsgtexture_types.QSGDynamicTexture, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQSGDynamicTexture_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQSGDynamicTexture_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSGDynamicTextureVTable](vtbl)
  let self = QSGDynamicTexture(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].connectNotify(self, slotval1)

proc QSGDynamicTexturedisconnectNotify*(self: gen_qsgtexture_types.QSGDynamicTexture, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQSGDynamicTexture_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQSGDynamicTexture_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSGDynamicTextureVTable](vtbl)
  let self = QSGDynamicTexture(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].disconnectNotify(self, slotval1)

proc create*(T: type gen_qsgtexture_types.QSGDynamicTexture,
    vtbl: ref QSGDynamicTextureVTable = nil): gen_qsgtexture_types.QSGDynamicTexture =
  let vtbl = if vtbl == nil: new QSGDynamicTextureVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQSGDynamicTextureVTable, _: ptr cQSGDynamicTexture) {.cdecl.} =
    let vtbl = cast[ref QSGDynamicTextureVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQSGDynamicTexture_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQSGDynamicTexture_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQSGDynamicTexture_metacall
  if not isNil(vtbl.updateTexture):
    vtbl[].vtbl.updateTexture = miqt_exec_callback_cQSGDynamicTexture_updateTexture
  if not isNil(vtbl.textureId):
    vtbl[].vtbl.textureId = miqt_exec_callback_cQSGDynamicTexture_textureId
  if not isNil(vtbl.textureSize):
    vtbl[].vtbl.textureSize = miqt_exec_callback_cQSGDynamicTexture_textureSize
  if not isNil(vtbl.hasAlphaChannel):
    vtbl[].vtbl.hasAlphaChannel = miqt_exec_callback_cQSGDynamicTexture_hasAlphaChannel
  if not isNil(vtbl.hasMipmaps):
    vtbl[].vtbl.hasMipmaps = miqt_exec_callback_cQSGDynamicTexture_hasMipmaps
  if not isNil(vtbl.normalizedTextureSubRect):
    vtbl[].vtbl.normalizedTextureSubRect = miqt_exec_callback_cQSGDynamicTexture_normalizedTextureSubRect
  if not isNil(vtbl.isAtlasTexture):
    vtbl[].vtbl.isAtlasTexture = miqt_exec_callback_cQSGDynamicTexture_isAtlasTexture
  if not isNil(vtbl.removedFromAtlas):
    vtbl[].vtbl.removedFromAtlas = miqt_exec_callback_cQSGDynamicTexture_removedFromAtlas
  if not isNil(vtbl.bindX):
    vtbl[].vtbl.bindX = miqt_exec_callback_cQSGDynamicTexture_bindX
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQSGDynamicTexture_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQSGDynamicTexture_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQSGDynamicTexture_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQSGDynamicTexture_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQSGDynamicTexture_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQSGDynamicTexture_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQSGDynamicTexture_disconnectNotify
  gen_qsgtexture_types.QSGDynamicTexture(h: fcQSGDynamicTexture_new(addr(vtbl[]), ))

proc staticMetaObject*(_: type gen_qsgtexture_types.QSGDynamicTexture): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQSGDynamicTexture_staticMetaObject())
proc delete*(self: gen_qsgtexture_types.QSGDynamicTexture) =
  fcQSGDynamicTexture_delete(self.h)
proc delete*(self: gen_qsgtexture_types.QSGTextureNativeTexture) =
  fcQSGTextureNativeTexture_delete(self.h)
