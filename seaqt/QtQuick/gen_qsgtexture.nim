import ./Qt5Quick_libs

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

proc fcQSGTexture_metaObject(self: pointer): pointer {.importc: "QSGTexture_metaObject".}
proc fcQSGTexture_metacast(self: pointer, param1: cstring): pointer {.importc: "QSGTexture_metacast".}
proc fcQSGTexture_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QSGTexture_metacall".}
proc fcQSGTexture_tr(s: cstring): struct_miqt_string {.importc: "QSGTexture_tr".}
proc fcQSGTexture_trUtf8(s: cstring): struct_miqt_string {.importc: "QSGTexture_trUtf8".}
proc fcQSGTexture_textureId(self: pointer): cint {.importc: "QSGTexture_textureId".}
proc fcQSGTexture_nativeTexture(self: pointer): pointer {.importc: "QSGTexture_nativeTexture".}
proc fcQSGTexture_textureSize(self: pointer): pointer {.importc: "QSGTexture_textureSize".}
proc fcQSGTexture_hasAlphaChannel(self: pointer): bool {.importc: "QSGTexture_hasAlphaChannel".}
proc fcQSGTexture_hasMipmaps(self: pointer): bool {.importc: "QSGTexture_hasMipmaps".}
proc fcQSGTexture_normalizedTextureSubRect(self: pointer): pointer {.importc: "QSGTexture_normalizedTextureSubRect".}
proc fcQSGTexture_isAtlasTexture(self: pointer): bool {.importc: "QSGTexture_isAtlasTexture".}
proc fcQSGTexture_removedFromAtlas(self: pointer): pointer {.importc: "QSGTexture_removedFromAtlas".}
proc fcQSGTexture_bindX(self: pointer): void {.importc: "QSGTexture_bind".}
proc fcQSGTexture_updateBindOptions(self: pointer): void {.importc: "QSGTexture_updateBindOptions".}
proc fcQSGTexture_setMipmapFiltering(self: pointer, filter: cint): void {.importc: "QSGTexture_setMipmapFiltering".}
proc fcQSGTexture_mipmapFiltering(self: pointer): cint {.importc: "QSGTexture_mipmapFiltering".}
proc fcQSGTexture_setFiltering(self: pointer, filter: cint): void {.importc: "QSGTexture_setFiltering".}
proc fcQSGTexture_filtering(self: pointer): cint {.importc: "QSGTexture_filtering".}
proc fcQSGTexture_setAnisotropyLevel(self: pointer, level: cint): void {.importc: "QSGTexture_setAnisotropyLevel".}
proc fcQSGTexture_anisotropyLevel(self: pointer): cint {.importc: "QSGTexture_anisotropyLevel".}
proc fcQSGTexture_setHorizontalWrapMode(self: pointer, hwrap: cint): void {.importc: "QSGTexture_setHorizontalWrapMode".}
proc fcQSGTexture_horizontalWrapMode(self: pointer): cint {.importc: "QSGTexture_horizontalWrapMode".}
proc fcQSGTexture_setVerticalWrapMode(self: pointer, vwrap: cint): void {.importc: "QSGTexture_setVerticalWrapMode".}
proc fcQSGTexture_verticalWrapMode(self: pointer): cint {.importc: "QSGTexture_verticalWrapMode".}
proc fcQSGTexture_convertToNormalizedSourceRect(self: pointer, rect: pointer): pointer {.importc: "QSGTexture_convertToNormalizedSourceRect".}
proc fcQSGTexture_comparisonKey(self: pointer): cint {.importc: "QSGTexture_comparisonKey".}
proc fcQSGTexture_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QSGTexture_tr2".}
proc fcQSGTexture_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QSGTexture_tr3".}
proc fcQSGTexture_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QSGTexture_trUtf82".}
proc fcQSGTexture_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QSGTexture_trUtf83".}
proc fcQSGTexture_updateBindOptions1(self: pointer, force: bool): void {.importc: "QSGTexture_updateBindOptions1".}
proc fcQSGTexture_vtbl(self: pointer): pointer {.importc: "QSGTexture_vtbl".}
proc fcQSGTexture_vdata(self: pointer): pointer {.importc: "QSGTexture_vdata".}
type cQSGTextureVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  textureId*: proc(self: pointer): cint {.cdecl, raises: [], gcsafe.}
  textureSize*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  hasAlphaChannel*: proc(self: pointer): bool {.cdecl, raises: [], gcsafe.}
  hasMipmaps*: proc(self: pointer): bool {.cdecl, raises: [], gcsafe.}
  normalizedTextureSubRect*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  isAtlasTexture*: proc(self: pointer): bool {.cdecl, raises: [], gcsafe.}
  removedFromAtlas*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  bindX*: proc(self: pointer): void {.cdecl, raises: [], gcsafe.}
  event*: proc(self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQSGTexture_virtualbase_metaObject(self: pointer): pointer {.importc: "QSGTexture_virtualbase_metaObject".}
proc fcQSGTexture_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QSGTexture_virtualbase_metacast".}
proc fcQSGTexture_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QSGTexture_virtualbase_metacall".}
proc fcQSGTexture_virtualbase_normalizedTextureSubRect(self: pointer): pointer {.importc: "QSGTexture_virtualbase_normalizedTextureSubRect".}
proc fcQSGTexture_virtualbase_isAtlasTexture(self: pointer): bool {.importc: "QSGTexture_virtualbase_isAtlasTexture".}
proc fcQSGTexture_virtualbase_removedFromAtlas(self: pointer): pointer {.importc: "QSGTexture_virtualbase_removedFromAtlas".}
proc fcQSGTexture_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QSGTexture_virtualbase_event".}
proc fcQSGTexture_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QSGTexture_virtualbase_eventFilter".}
proc fcQSGTexture_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QSGTexture_virtualbase_timerEvent".}
proc fcQSGTexture_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QSGTexture_virtualbase_childEvent".}
proc fcQSGTexture_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QSGTexture_virtualbase_customEvent".}
proc fcQSGTexture_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QSGTexture_virtualbase_connectNotify".}
proc fcQSGTexture_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QSGTexture_virtualbase_disconnectNotify".}
proc fcQSGTexture_protectedbase_sender(self: pointer): pointer {.importc: "QSGTexture_protectedbase_sender".}
proc fcQSGTexture_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QSGTexture_protectedbase_senderSignalIndex".}
proc fcQSGTexture_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QSGTexture_protectedbase_receivers".}
proc fcQSGTexture_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QSGTexture_protectedbase_isSignalConnected".}
proc fcQSGTexture_new(vtbl, vdata: pointer): ptr cQSGTexture {.importc: "QSGTexture_new".}
proc fcQSGTexture_staticMetaObject(): pointer {.importc: "QSGTexture_staticMetaObject".}
proc fcQSGDynamicTexture_metaObject(self: pointer): pointer {.importc: "QSGDynamicTexture_metaObject".}
proc fcQSGDynamicTexture_metacast(self: pointer, param1: cstring): pointer {.importc: "QSGDynamicTexture_metacast".}
proc fcQSGDynamicTexture_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QSGDynamicTexture_metacall".}
proc fcQSGDynamicTexture_tr(s: cstring): struct_miqt_string {.importc: "QSGDynamicTexture_tr".}
proc fcQSGDynamicTexture_trUtf8(s: cstring): struct_miqt_string {.importc: "QSGDynamicTexture_trUtf8".}
proc fcQSGDynamicTexture_updateTexture(self: pointer): bool {.importc: "QSGDynamicTexture_updateTexture".}
proc fcQSGDynamicTexture_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QSGDynamicTexture_tr2".}
proc fcQSGDynamicTexture_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QSGDynamicTexture_tr3".}
proc fcQSGDynamicTexture_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QSGDynamicTexture_trUtf82".}
proc fcQSGDynamicTexture_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QSGDynamicTexture_trUtf83".}
proc fcQSGDynamicTexture_vtbl(self: pointer): pointer {.importc: "QSGDynamicTexture_vtbl".}
proc fcQSGDynamicTexture_vdata(self: pointer): pointer {.importc: "QSGDynamicTexture_vdata".}
type cQSGDynamicTextureVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  updateTexture*: proc(self: pointer): bool {.cdecl, raises: [], gcsafe.}
  textureId*: proc(self: pointer): cint {.cdecl, raises: [], gcsafe.}
  textureSize*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  hasAlphaChannel*: proc(self: pointer): bool {.cdecl, raises: [], gcsafe.}
  hasMipmaps*: proc(self: pointer): bool {.cdecl, raises: [], gcsafe.}
  normalizedTextureSubRect*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  isAtlasTexture*: proc(self: pointer): bool {.cdecl, raises: [], gcsafe.}
  removedFromAtlas*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  bindX*: proc(self: pointer): void {.cdecl, raises: [], gcsafe.}
  event*: proc(self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQSGDynamicTexture_virtualbase_metaObject(self: pointer): pointer {.importc: "QSGDynamicTexture_virtualbase_metaObject".}
proc fcQSGDynamicTexture_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QSGDynamicTexture_virtualbase_metacast".}
proc fcQSGDynamicTexture_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QSGDynamicTexture_virtualbase_metacall".}
proc fcQSGDynamicTexture_virtualbase_normalizedTextureSubRect(self: pointer): pointer {.importc: "QSGDynamicTexture_virtualbase_normalizedTextureSubRect".}
proc fcQSGDynamicTexture_virtualbase_isAtlasTexture(self: pointer): bool {.importc: "QSGDynamicTexture_virtualbase_isAtlasTexture".}
proc fcQSGDynamicTexture_virtualbase_removedFromAtlas(self: pointer): pointer {.importc: "QSGDynamicTexture_virtualbase_removedFromAtlas".}
proc fcQSGDynamicTexture_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QSGDynamicTexture_virtualbase_event".}
proc fcQSGDynamicTexture_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QSGDynamicTexture_virtualbase_eventFilter".}
proc fcQSGDynamicTexture_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QSGDynamicTexture_virtualbase_timerEvent".}
proc fcQSGDynamicTexture_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QSGDynamicTexture_virtualbase_childEvent".}
proc fcQSGDynamicTexture_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QSGDynamicTexture_virtualbase_customEvent".}
proc fcQSGDynamicTexture_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QSGDynamicTexture_virtualbase_connectNotify".}
proc fcQSGDynamicTexture_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QSGDynamicTexture_virtualbase_disconnectNotify".}
proc fcQSGDynamicTexture_protectedbase_sender(self: pointer): pointer {.importc: "QSGDynamicTexture_protectedbase_sender".}
proc fcQSGDynamicTexture_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QSGDynamicTexture_protectedbase_senderSignalIndex".}
proc fcQSGDynamicTexture_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QSGDynamicTexture_protectedbase_receivers".}
proc fcQSGDynamicTexture_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QSGDynamicTexture_protectedbase_isSignalConnected".}
proc fcQSGDynamicTexture_new(vtbl, vdata: pointer): ptr cQSGDynamicTexture {.importc: "QSGDynamicTexture_new".}
proc fcQSGDynamicTexture_staticMetaObject(): pointer {.importc: "QSGDynamicTexture_staticMetaObject".}

proc metaObject*(self: gen_qsgtexture_types.QSGTexture): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQSGTexture_metaObject(self.h), owned: false)

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

proc textureId*(self: gen_qsgtexture_types.QSGTexture): cint =
  fcQSGTexture_textureId(self.h)

proc nativeTexture*(self: gen_qsgtexture_types.QSGTexture): gen_qsgtexture_types.QSGTextureNativeTexture =
  gen_qsgtexture_types.QSGTextureNativeTexture(h: fcQSGTexture_nativeTexture(self.h), owned: true)

proc textureSize*(self: gen_qsgtexture_types.QSGTexture): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQSGTexture_textureSize(self.h), owned: true)

proc hasAlphaChannel*(self: gen_qsgtexture_types.QSGTexture): bool =
  fcQSGTexture_hasAlphaChannel(self.h)

proc hasMipmaps*(self: gen_qsgtexture_types.QSGTexture): bool =
  fcQSGTexture_hasMipmaps(self.h)

proc normalizedTextureSubRect*(self: gen_qsgtexture_types.QSGTexture): gen_qrect_types.QRectF =
  gen_qrect_types.QRectF(h: fcQSGTexture_normalizedTextureSubRect(self.h), owned: true)

proc isAtlasTexture*(self: gen_qsgtexture_types.QSGTexture): bool =
  fcQSGTexture_isAtlasTexture(self.h)

proc removedFromAtlas*(self: gen_qsgtexture_types.QSGTexture): gen_qsgtexture_types.QSGTexture =
  gen_qsgtexture_types.QSGTexture(h: fcQSGTexture_removedFromAtlas(self.h), owned: false)

proc bindX*(self: gen_qsgtexture_types.QSGTexture): void =
  fcQSGTexture_bindX(self.h)

proc updateBindOptions*(self: gen_qsgtexture_types.QSGTexture): void =
  fcQSGTexture_updateBindOptions(self.h)

proc setMipmapFiltering*(self: gen_qsgtexture_types.QSGTexture, filter: cint): void =
  fcQSGTexture_setMipmapFiltering(self.h, cint(filter))

proc mipmapFiltering*(self: gen_qsgtexture_types.QSGTexture): cint =
  cint(fcQSGTexture_mipmapFiltering(self.h))

proc setFiltering*(self: gen_qsgtexture_types.QSGTexture, filter: cint): void =
  fcQSGTexture_setFiltering(self.h, cint(filter))

proc filtering*(self: gen_qsgtexture_types.QSGTexture): cint =
  cint(fcQSGTexture_filtering(self.h))

proc setAnisotropyLevel*(self: gen_qsgtexture_types.QSGTexture, level: cint): void =
  fcQSGTexture_setAnisotropyLevel(self.h, cint(level))

proc anisotropyLevel*(self: gen_qsgtexture_types.QSGTexture): cint =
  cint(fcQSGTexture_anisotropyLevel(self.h))

proc setHorizontalWrapMode*(self: gen_qsgtexture_types.QSGTexture, hwrap: cint): void =
  fcQSGTexture_setHorizontalWrapMode(self.h, cint(hwrap))

proc horizontalWrapMode*(self: gen_qsgtexture_types.QSGTexture): cint =
  cint(fcQSGTexture_horizontalWrapMode(self.h))

proc setVerticalWrapMode*(self: gen_qsgtexture_types.QSGTexture, vwrap: cint): void =
  fcQSGTexture_setVerticalWrapMode(self.h, cint(vwrap))

proc verticalWrapMode*(self: gen_qsgtexture_types.QSGTexture): cint =
  cint(fcQSGTexture_verticalWrapMode(self.h))

proc convertToNormalizedSourceRect*(self: gen_qsgtexture_types.QSGTexture, rect: gen_qrect_types.QRectF): gen_qrect_types.QRectF =
  gen_qrect_types.QRectF(h: fcQSGTexture_convertToNormalizedSourceRect(self.h, rect.h), owned: true)

proc comparisonKey*(self: gen_qsgtexture_types.QSGTexture): cint =
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
type QSGTextureVTable* {.inheritable, pure.} = object
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
proc QSGTexturemetaObject*(self: gen_qsgtexture_types.QSGTexture): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQSGTexture_virtualbase_metaObject(self.h), owned: false)

proc cQSGTexture_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QSGTextureVTable](fcQSGTexture_vdata(self))
  let self = QSGTexture(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QSGTexturemetacast*(self: gen_qsgtexture_types.QSGTexture, param1: cstring): pointer =
  fcQSGTexture_virtualbase_metacast(self.h, param1)

proc cQSGTexture_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QSGTextureVTable](fcQSGTexture_vdata(self))
  let self = QSGTexture(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QSGTexturemetacall*(self: gen_qsgtexture_types.QSGTexture, param1: cint, param2: cint, param3: pointer): cint =
  fcQSGTexture_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc cQSGTexture_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QSGTextureVTable](fcQSGTexture_vdata(self))
  let self = QSGTexture(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc cQSGTexture_vtable_callback_textureId(self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QSGTextureVTable](fcQSGTexture_vdata(self))
  let self = QSGTexture(h: self)
  var virtualReturn = vtbl[].textureId(self)
  virtualReturn

proc cQSGTexture_vtable_callback_textureSize(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QSGTextureVTable](fcQSGTexture_vdata(self))
  let self = QSGTexture(h: self)
  var virtualReturn = vtbl[].textureSize(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc cQSGTexture_vtable_callback_hasAlphaChannel(self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QSGTextureVTable](fcQSGTexture_vdata(self))
  let self = QSGTexture(h: self)
  var virtualReturn = vtbl[].hasAlphaChannel(self)
  virtualReturn

proc cQSGTexture_vtable_callback_hasMipmaps(self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QSGTextureVTable](fcQSGTexture_vdata(self))
  let self = QSGTexture(h: self)
  var virtualReturn = vtbl[].hasMipmaps(self)
  virtualReturn

proc QSGTexturenormalizedTextureSubRect*(self: gen_qsgtexture_types.QSGTexture): gen_qrect_types.QRectF =
  gen_qrect_types.QRectF(h: fcQSGTexture_virtualbase_normalizedTextureSubRect(self.h), owned: true)

proc cQSGTexture_vtable_callback_normalizedTextureSubRect(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QSGTextureVTable](fcQSGTexture_vdata(self))
  let self = QSGTexture(h: self)
  var virtualReturn = vtbl[].normalizedTextureSubRect(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QSGTextureisAtlasTexture*(self: gen_qsgtexture_types.QSGTexture): bool =
  fcQSGTexture_virtualbase_isAtlasTexture(self.h)

proc cQSGTexture_vtable_callback_isAtlasTexture(self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QSGTextureVTable](fcQSGTexture_vdata(self))
  let self = QSGTexture(h: self)
  var virtualReturn = vtbl[].isAtlasTexture(self)
  virtualReturn

proc QSGTextureremovedFromAtlas*(self: gen_qsgtexture_types.QSGTexture): gen_qsgtexture_types.QSGTexture =
  gen_qsgtexture_types.QSGTexture(h: fcQSGTexture_virtualbase_removedFromAtlas(self.h), owned: false)

proc cQSGTexture_vtable_callback_removedFromAtlas(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QSGTextureVTable](fcQSGTexture_vdata(self))
  let self = QSGTexture(h: self)
  var virtualReturn = vtbl[].removedFromAtlas(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc cQSGTexture_vtable_callback_bindX(self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSGTextureVTable](fcQSGTexture_vdata(self))
  let self = QSGTexture(h: self)
  vtbl[].bindX(self)

proc QSGTextureevent*(self: gen_qsgtexture_types.QSGTexture, event: gen_qcoreevent_types.QEvent): bool =
  fcQSGTexture_virtualbase_event(self.h, event.h)

proc cQSGTexture_vtable_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QSGTextureVTable](fcQSGTexture_vdata(self))
  let self = QSGTexture(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QSGTextureeventFilter*(self: gen_qsgtexture_types.QSGTexture, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQSGTexture_virtualbase_eventFilter(self.h, watched.h, event.h)

proc cQSGTexture_vtable_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QSGTextureVTable](fcQSGTexture_vdata(self))
  let self = QSGTexture(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QSGTexturetimerEvent*(self: gen_qsgtexture_types.QSGTexture, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQSGTexture_virtualbase_timerEvent(self.h, event.h)

proc cQSGTexture_vtable_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSGTextureVTable](fcQSGTexture_vdata(self))
  let self = QSGTexture(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc QSGTexturechildEvent*(self: gen_qsgtexture_types.QSGTexture, event: gen_qcoreevent_types.QChildEvent): void =
  fcQSGTexture_virtualbase_childEvent(self.h, event.h)

proc cQSGTexture_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSGTextureVTable](fcQSGTexture_vdata(self))
  let self = QSGTexture(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc QSGTexturecustomEvent*(self: gen_qsgtexture_types.QSGTexture, event: gen_qcoreevent_types.QEvent): void =
  fcQSGTexture_virtualbase_customEvent(self.h, event.h)

proc cQSGTexture_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSGTextureVTable](fcQSGTexture_vdata(self))
  let self = QSGTexture(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc QSGTextureconnectNotify*(self: gen_qsgtexture_types.QSGTexture, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQSGTexture_virtualbase_connectNotify(self.h, signal.h)

proc cQSGTexture_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSGTextureVTable](fcQSGTexture_vdata(self))
  let self = QSGTexture(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc QSGTexturedisconnectNotify*(self: gen_qsgtexture_types.QSGTexture, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQSGTexture_virtualbase_disconnectNotify(self.h, signal.h)

proc cQSGTexture_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSGTextureVTable](fcQSGTexture_vdata(self))
  let self = QSGTexture(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQSGTexture* {.inheritable.} = ref object of QSGTexture
  vtbl*: cQSGTextureVTable
method metaObject*(self: VirtualQSGTexture): gen_qobjectdefs_types.QMetaObject {.base.} =
  QSGTexturemetaObject(self[])
proc cQSGTexture_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQSGTexture](fcQSGTexture_vdata(self))
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method metacast*(self: VirtualQSGTexture, param1: cstring): pointer {.base.} =
  QSGTexturemetacast(self[], param1)
proc cQSGTexture_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQSGTexture](fcQSGTexture_vdata(self))
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

method metacall*(self: VirtualQSGTexture, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QSGTexturemetacall(self[], param1, param2, param3)
proc cQSGTexture_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQSGTexture](fcQSGTexture_vdata(self))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

method textureId*(self: VirtualQSGTexture): cint {.base.} =
  raiseAssert("missing implementation of QSGTexture_virtualbase_textureId")
proc cQSGTexture_method_callback_textureId(self: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQSGTexture](fcQSGTexture_vdata(self))
  var virtualReturn = inst.textureId()
  virtualReturn

method textureSize*(self: VirtualQSGTexture): gen_qsize_types.QSize {.base.} =
  raiseAssert("missing implementation of QSGTexture_virtualbase_textureSize")
proc cQSGTexture_method_callback_textureSize(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQSGTexture](fcQSGTexture_vdata(self))
  var virtualReturn = inst.textureSize()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method hasAlphaChannel*(self: VirtualQSGTexture): bool {.base.} =
  raiseAssert("missing implementation of QSGTexture_virtualbase_hasAlphaChannel")
proc cQSGTexture_method_callback_hasAlphaChannel(self: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQSGTexture](fcQSGTexture_vdata(self))
  var virtualReturn = inst.hasAlphaChannel()
  virtualReturn

method hasMipmaps*(self: VirtualQSGTexture): bool {.base.} =
  raiseAssert("missing implementation of QSGTexture_virtualbase_hasMipmaps")
proc cQSGTexture_method_callback_hasMipmaps(self: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQSGTexture](fcQSGTexture_vdata(self))
  var virtualReturn = inst.hasMipmaps()
  virtualReturn

method normalizedTextureSubRect*(self: VirtualQSGTexture): gen_qrect_types.QRectF {.base.} =
  QSGTexturenormalizedTextureSubRect(self[])
proc cQSGTexture_method_callback_normalizedTextureSubRect(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQSGTexture](fcQSGTexture_vdata(self))
  var virtualReturn = inst.normalizedTextureSubRect()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method isAtlasTexture*(self: VirtualQSGTexture): bool {.base.} =
  QSGTextureisAtlasTexture(self[])
proc cQSGTexture_method_callback_isAtlasTexture(self: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQSGTexture](fcQSGTexture_vdata(self))
  var virtualReturn = inst.isAtlasTexture()
  virtualReturn

method removedFromAtlas*(self: VirtualQSGTexture): gen_qsgtexture_types.QSGTexture {.base.} =
  QSGTextureremovedFromAtlas(self[])
proc cQSGTexture_method_callback_removedFromAtlas(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQSGTexture](fcQSGTexture_vdata(self))
  var virtualReturn = inst.removedFromAtlas()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method bindX*(self: VirtualQSGTexture): void {.base.} =
  raiseAssert("missing implementation of QSGTexture_virtualbase_bind")
proc cQSGTexture_method_callback_bindX(self: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSGTexture](fcQSGTexture_vdata(self))
  inst.bindX()

method event*(self: VirtualQSGTexture, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QSGTextureevent(self[], event)
proc cQSGTexture_method_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQSGTexture](fcQSGTexture_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

method eventFilter*(self: VirtualQSGTexture, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QSGTextureeventFilter(self[], watched, event)
proc cQSGTexture_method_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQSGTexture](fcQSGTexture_vdata(self))
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

method timerEvent*(self: VirtualQSGTexture, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QSGTexturetimerEvent(self[], event)
proc cQSGTexture_method_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSGTexture](fcQSGTexture_vdata(self))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  inst.timerEvent(slotval1)

method childEvent*(self: VirtualQSGTexture, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QSGTexturechildEvent(self[], event)
proc cQSGTexture_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSGTexture](fcQSGTexture_vdata(self))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  inst.childEvent(slotval1)

method customEvent*(self: VirtualQSGTexture, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QSGTexturecustomEvent(self[], event)
proc cQSGTexture_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSGTexture](fcQSGTexture_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)

method connectNotify*(self: VirtualQSGTexture, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QSGTextureconnectNotify(self[], signal)
proc cQSGTexture_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSGTexture](fcQSGTexture_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

method disconnectNotify*(self: VirtualQSGTexture, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QSGTexturedisconnectNotify(self[], signal)
proc cQSGTexture_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSGTexture](fcQSGTexture_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.disconnectNotify(slotval1)

proc sender*(self: gen_qsgtexture_types.QSGTexture): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQSGTexture_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qsgtexture_types.QSGTexture): cint =
  fcQSGTexture_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qsgtexture_types.QSGTexture, signal: cstring): cint =
  fcQSGTexture_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qsgtexture_types.QSGTexture, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQSGTexture_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qsgtexture_types.QSGTexture,
    vtbl: ref QSGTextureVTable = nil): gen_qsgtexture_types.QSGTexture =
  let vtbl = if vtbl == nil: new QSGTextureVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QSGTextureVTable](fcQSGTexture_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQSGTexture_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQSGTexture_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQSGTexture_vtable_callback_metacall
  if not isNil(vtbl[].textureId):
    vtbl[].vtbl.textureId = cQSGTexture_vtable_callback_textureId
  if not isNil(vtbl[].textureSize):
    vtbl[].vtbl.textureSize = cQSGTexture_vtable_callback_textureSize
  if not isNil(vtbl[].hasAlphaChannel):
    vtbl[].vtbl.hasAlphaChannel = cQSGTexture_vtable_callback_hasAlphaChannel
  if not isNil(vtbl[].hasMipmaps):
    vtbl[].vtbl.hasMipmaps = cQSGTexture_vtable_callback_hasMipmaps
  if not isNil(vtbl[].normalizedTextureSubRect):
    vtbl[].vtbl.normalizedTextureSubRect = cQSGTexture_vtable_callback_normalizedTextureSubRect
  if not isNil(vtbl[].isAtlasTexture):
    vtbl[].vtbl.isAtlasTexture = cQSGTexture_vtable_callback_isAtlasTexture
  if not isNil(vtbl[].removedFromAtlas):
    vtbl[].vtbl.removedFromAtlas = cQSGTexture_vtable_callback_removedFromAtlas
  if not isNil(vtbl[].bindX):
    vtbl[].vtbl.bindX = cQSGTexture_vtable_callback_bindX
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQSGTexture_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQSGTexture_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQSGTexture_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQSGTexture_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQSGTexture_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQSGTexture_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQSGTexture_vtable_callback_disconnectNotify
  gen_qsgtexture_types.QSGTexture(h: fcQSGTexture_new(addr(vtbl[].vtbl), addr(vtbl[])), owned: true)

const cQSGTexture_mvtbl = cQSGTextureVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQSGTexture()[])](self.fcQSGTexture_vtbl())
    inst[].h = nil
    inst[].owned = false,
  metaObject: cQSGTexture_method_callback_metaObject,
  metacast: cQSGTexture_method_callback_metacast,
  metacall: cQSGTexture_method_callback_metacall,
  textureId: cQSGTexture_method_callback_textureId,
  textureSize: cQSGTexture_method_callback_textureSize,
  hasAlphaChannel: cQSGTexture_method_callback_hasAlphaChannel,
  hasMipmaps: cQSGTexture_method_callback_hasMipmaps,
  normalizedTextureSubRect: cQSGTexture_method_callback_normalizedTextureSubRect,
  isAtlasTexture: cQSGTexture_method_callback_isAtlasTexture,
  removedFromAtlas: cQSGTexture_method_callback_removedFromAtlas,
  bindX: cQSGTexture_method_callback_bindX,
  event: cQSGTexture_method_callback_event,
  eventFilter: cQSGTexture_method_callback_eventFilter,
  timerEvent: cQSGTexture_method_callback_timerEvent,
  childEvent: cQSGTexture_method_callback_childEvent,
  customEvent: cQSGTexture_method_callback_customEvent,
  connectNotify: cQSGTexture_method_callback_connectNotify,
  disconnectNotify: cQSGTexture_method_callback_disconnectNotify,
)
proc create*(T: type gen_qsgtexture_types.QSGTexture,
    inst: VirtualQSGTexture) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQSGTexture_new(addr(cQSGTexture_mvtbl), addr(inst[]))
  inst[].owned = true

proc staticMetaObject*(_: type gen_qsgtexture_types.QSGTexture): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQSGTexture_staticMetaObject())
proc metaObject*(self: gen_qsgtexture_types.QSGDynamicTexture): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQSGDynamicTexture_metaObject(self.h), owned: false)

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

proc updateTexture*(self: gen_qsgtexture_types.QSGDynamicTexture): bool =
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
type QSGDynamicTextureVTable* {.inheritable, pure.} = object
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
proc QSGDynamicTexturemetaObject*(self: gen_qsgtexture_types.QSGDynamicTexture): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQSGDynamicTexture_virtualbase_metaObject(self.h), owned: false)

proc cQSGDynamicTexture_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QSGDynamicTextureVTable](fcQSGDynamicTexture_vdata(self))
  let self = QSGDynamicTexture(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QSGDynamicTexturemetacast*(self: gen_qsgtexture_types.QSGDynamicTexture, param1: cstring): pointer =
  fcQSGDynamicTexture_virtualbase_metacast(self.h, param1)

proc cQSGDynamicTexture_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QSGDynamicTextureVTable](fcQSGDynamicTexture_vdata(self))
  let self = QSGDynamicTexture(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QSGDynamicTexturemetacall*(self: gen_qsgtexture_types.QSGDynamicTexture, param1: cint, param2: cint, param3: pointer): cint =
  fcQSGDynamicTexture_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc cQSGDynamicTexture_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QSGDynamicTextureVTable](fcQSGDynamicTexture_vdata(self))
  let self = QSGDynamicTexture(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc cQSGDynamicTexture_vtable_callback_updateTexture(self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QSGDynamicTextureVTable](fcQSGDynamicTexture_vdata(self))
  let self = QSGDynamicTexture(h: self)
  var virtualReturn = vtbl[].updateTexture(self)
  virtualReturn

proc cQSGDynamicTexture_vtable_callback_textureId(self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QSGDynamicTextureVTable](fcQSGDynamicTexture_vdata(self))
  let self = QSGDynamicTexture(h: self)
  var virtualReturn = vtbl[].textureId(self)
  virtualReturn

proc cQSGDynamicTexture_vtable_callback_textureSize(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QSGDynamicTextureVTable](fcQSGDynamicTexture_vdata(self))
  let self = QSGDynamicTexture(h: self)
  var virtualReturn = vtbl[].textureSize(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc cQSGDynamicTexture_vtable_callback_hasAlphaChannel(self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QSGDynamicTextureVTable](fcQSGDynamicTexture_vdata(self))
  let self = QSGDynamicTexture(h: self)
  var virtualReturn = vtbl[].hasAlphaChannel(self)
  virtualReturn

proc cQSGDynamicTexture_vtable_callback_hasMipmaps(self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QSGDynamicTextureVTable](fcQSGDynamicTexture_vdata(self))
  let self = QSGDynamicTexture(h: self)
  var virtualReturn = vtbl[].hasMipmaps(self)
  virtualReturn

proc QSGDynamicTexturenormalizedTextureSubRect*(self: gen_qsgtexture_types.QSGDynamicTexture): gen_qrect_types.QRectF =
  gen_qrect_types.QRectF(h: fcQSGDynamicTexture_virtualbase_normalizedTextureSubRect(self.h), owned: true)

proc cQSGDynamicTexture_vtable_callback_normalizedTextureSubRect(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QSGDynamicTextureVTable](fcQSGDynamicTexture_vdata(self))
  let self = QSGDynamicTexture(h: self)
  var virtualReturn = vtbl[].normalizedTextureSubRect(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QSGDynamicTextureisAtlasTexture*(self: gen_qsgtexture_types.QSGDynamicTexture): bool =
  fcQSGDynamicTexture_virtualbase_isAtlasTexture(self.h)

proc cQSGDynamicTexture_vtable_callback_isAtlasTexture(self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QSGDynamicTextureVTable](fcQSGDynamicTexture_vdata(self))
  let self = QSGDynamicTexture(h: self)
  var virtualReturn = vtbl[].isAtlasTexture(self)
  virtualReturn

proc QSGDynamicTextureremovedFromAtlas*(self: gen_qsgtexture_types.QSGDynamicTexture): gen_qsgtexture_types.QSGTexture =
  gen_qsgtexture_types.QSGTexture(h: fcQSGDynamicTexture_virtualbase_removedFromAtlas(self.h), owned: false)

proc cQSGDynamicTexture_vtable_callback_removedFromAtlas(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QSGDynamicTextureVTable](fcQSGDynamicTexture_vdata(self))
  let self = QSGDynamicTexture(h: self)
  var virtualReturn = vtbl[].removedFromAtlas(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc cQSGDynamicTexture_vtable_callback_bindX(self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSGDynamicTextureVTable](fcQSGDynamicTexture_vdata(self))
  let self = QSGDynamicTexture(h: self)
  vtbl[].bindX(self)

proc QSGDynamicTextureevent*(self: gen_qsgtexture_types.QSGDynamicTexture, event: gen_qcoreevent_types.QEvent): bool =
  fcQSGDynamicTexture_virtualbase_event(self.h, event.h)

proc cQSGDynamicTexture_vtable_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QSGDynamicTextureVTable](fcQSGDynamicTexture_vdata(self))
  let self = QSGDynamicTexture(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QSGDynamicTextureeventFilter*(self: gen_qsgtexture_types.QSGDynamicTexture, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQSGDynamicTexture_virtualbase_eventFilter(self.h, watched.h, event.h)

proc cQSGDynamicTexture_vtable_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QSGDynamicTextureVTable](fcQSGDynamicTexture_vdata(self))
  let self = QSGDynamicTexture(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QSGDynamicTexturetimerEvent*(self: gen_qsgtexture_types.QSGDynamicTexture, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQSGDynamicTexture_virtualbase_timerEvent(self.h, event.h)

proc cQSGDynamicTexture_vtable_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSGDynamicTextureVTable](fcQSGDynamicTexture_vdata(self))
  let self = QSGDynamicTexture(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc QSGDynamicTexturechildEvent*(self: gen_qsgtexture_types.QSGDynamicTexture, event: gen_qcoreevent_types.QChildEvent): void =
  fcQSGDynamicTexture_virtualbase_childEvent(self.h, event.h)

proc cQSGDynamicTexture_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSGDynamicTextureVTable](fcQSGDynamicTexture_vdata(self))
  let self = QSGDynamicTexture(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc QSGDynamicTexturecustomEvent*(self: gen_qsgtexture_types.QSGDynamicTexture, event: gen_qcoreevent_types.QEvent): void =
  fcQSGDynamicTexture_virtualbase_customEvent(self.h, event.h)

proc cQSGDynamicTexture_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSGDynamicTextureVTable](fcQSGDynamicTexture_vdata(self))
  let self = QSGDynamicTexture(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc QSGDynamicTextureconnectNotify*(self: gen_qsgtexture_types.QSGDynamicTexture, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQSGDynamicTexture_virtualbase_connectNotify(self.h, signal.h)

proc cQSGDynamicTexture_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSGDynamicTextureVTable](fcQSGDynamicTexture_vdata(self))
  let self = QSGDynamicTexture(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc QSGDynamicTexturedisconnectNotify*(self: gen_qsgtexture_types.QSGDynamicTexture, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQSGDynamicTexture_virtualbase_disconnectNotify(self.h, signal.h)

proc cQSGDynamicTexture_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSGDynamicTextureVTable](fcQSGDynamicTexture_vdata(self))
  let self = QSGDynamicTexture(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQSGDynamicTexture* {.inheritable.} = ref object of QSGDynamicTexture
  vtbl*: cQSGDynamicTextureVTable
method metaObject*(self: VirtualQSGDynamicTexture): gen_qobjectdefs_types.QMetaObject {.base.} =
  QSGDynamicTexturemetaObject(self[])
proc cQSGDynamicTexture_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQSGDynamicTexture](fcQSGDynamicTexture_vdata(self))
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method metacast*(self: VirtualQSGDynamicTexture, param1: cstring): pointer {.base.} =
  QSGDynamicTexturemetacast(self[], param1)
proc cQSGDynamicTexture_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQSGDynamicTexture](fcQSGDynamicTexture_vdata(self))
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

method metacall*(self: VirtualQSGDynamicTexture, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QSGDynamicTexturemetacall(self[], param1, param2, param3)
proc cQSGDynamicTexture_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQSGDynamicTexture](fcQSGDynamicTexture_vdata(self))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

method updateTexture*(self: VirtualQSGDynamicTexture): bool {.base.} =
  raiseAssert("missing implementation of QSGDynamicTexture_virtualbase_updateTexture")
proc cQSGDynamicTexture_method_callback_updateTexture(self: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQSGDynamicTexture](fcQSGDynamicTexture_vdata(self))
  var virtualReturn = inst.updateTexture()
  virtualReturn

method textureId*(self: VirtualQSGDynamicTexture): cint {.base.} =
  raiseAssert("missing implementation of QSGDynamicTexture_virtualbase_textureId")
proc cQSGDynamicTexture_method_callback_textureId(self: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQSGDynamicTexture](fcQSGDynamicTexture_vdata(self))
  var virtualReturn = inst.textureId()
  virtualReturn

method textureSize*(self: VirtualQSGDynamicTexture): gen_qsize_types.QSize {.base.} =
  raiseAssert("missing implementation of QSGDynamicTexture_virtualbase_textureSize")
proc cQSGDynamicTexture_method_callback_textureSize(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQSGDynamicTexture](fcQSGDynamicTexture_vdata(self))
  var virtualReturn = inst.textureSize()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method hasAlphaChannel*(self: VirtualQSGDynamicTexture): bool {.base.} =
  raiseAssert("missing implementation of QSGDynamicTexture_virtualbase_hasAlphaChannel")
proc cQSGDynamicTexture_method_callback_hasAlphaChannel(self: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQSGDynamicTexture](fcQSGDynamicTexture_vdata(self))
  var virtualReturn = inst.hasAlphaChannel()
  virtualReturn

method hasMipmaps*(self: VirtualQSGDynamicTexture): bool {.base.} =
  raiseAssert("missing implementation of QSGDynamicTexture_virtualbase_hasMipmaps")
proc cQSGDynamicTexture_method_callback_hasMipmaps(self: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQSGDynamicTexture](fcQSGDynamicTexture_vdata(self))
  var virtualReturn = inst.hasMipmaps()
  virtualReturn

method normalizedTextureSubRect*(self: VirtualQSGDynamicTexture): gen_qrect_types.QRectF {.base.} =
  QSGDynamicTexturenormalizedTextureSubRect(self[])
proc cQSGDynamicTexture_method_callback_normalizedTextureSubRect(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQSGDynamicTexture](fcQSGDynamicTexture_vdata(self))
  var virtualReturn = inst.normalizedTextureSubRect()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method isAtlasTexture*(self: VirtualQSGDynamicTexture): bool {.base.} =
  QSGDynamicTextureisAtlasTexture(self[])
proc cQSGDynamicTexture_method_callback_isAtlasTexture(self: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQSGDynamicTexture](fcQSGDynamicTexture_vdata(self))
  var virtualReturn = inst.isAtlasTexture()
  virtualReturn

method removedFromAtlas*(self: VirtualQSGDynamicTexture): gen_qsgtexture_types.QSGTexture {.base.} =
  QSGDynamicTextureremovedFromAtlas(self[])
proc cQSGDynamicTexture_method_callback_removedFromAtlas(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQSGDynamicTexture](fcQSGDynamicTexture_vdata(self))
  var virtualReturn = inst.removedFromAtlas()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method bindX*(self: VirtualQSGDynamicTexture): void {.base.} =
  raiseAssert("missing implementation of QSGDynamicTexture_virtualbase_bind")
proc cQSGDynamicTexture_method_callback_bindX(self: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSGDynamicTexture](fcQSGDynamicTexture_vdata(self))
  inst.bindX()

method event*(self: VirtualQSGDynamicTexture, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QSGDynamicTextureevent(self[], event)
proc cQSGDynamicTexture_method_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQSGDynamicTexture](fcQSGDynamicTexture_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

method eventFilter*(self: VirtualQSGDynamicTexture, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QSGDynamicTextureeventFilter(self[], watched, event)
proc cQSGDynamicTexture_method_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQSGDynamicTexture](fcQSGDynamicTexture_vdata(self))
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

method timerEvent*(self: VirtualQSGDynamicTexture, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QSGDynamicTexturetimerEvent(self[], event)
proc cQSGDynamicTexture_method_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSGDynamicTexture](fcQSGDynamicTexture_vdata(self))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  inst.timerEvent(slotval1)

method childEvent*(self: VirtualQSGDynamicTexture, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QSGDynamicTexturechildEvent(self[], event)
proc cQSGDynamicTexture_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSGDynamicTexture](fcQSGDynamicTexture_vdata(self))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  inst.childEvent(slotval1)

method customEvent*(self: VirtualQSGDynamicTexture, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QSGDynamicTexturecustomEvent(self[], event)
proc cQSGDynamicTexture_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSGDynamicTexture](fcQSGDynamicTexture_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)

method connectNotify*(self: VirtualQSGDynamicTexture, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QSGDynamicTextureconnectNotify(self[], signal)
proc cQSGDynamicTexture_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSGDynamicTexture](fcQSGDynamicTexture_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

method disconnectNotify*(self: VirtualQSGDynamicTexture, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QSGDynamicTexturedisconnectNotify(self[], signal)
proc cQSGDynamicTexture_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSGDynamicTexture](fcQSGDynamicTexture_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.disconnectNotify(slotval1)

proc sender*(self: gen_qsgtexture_types.QSGDynamicTexture): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQSGDynamicTexture_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qsgtexture_types.QSGDynamicTexture): cint =
  fcQSGDynamicTexture_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qsgtexture_types.QSGDynamicTexture, signal: cstring): cint =
  fcQSGDynamicTexture_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qsgtexture_types.QSGDynamicTexture, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQSGDynamicTexture_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qsgtexture_types.QSGDynamicTexture,
    vtbl: ref QSGDynamicTextureVTable = nil): gen_qsgtexture_types.QSGDynamicTexture =
  let vtbl = if vtbl == nil: new QSGDynamicTextureVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QSGDynamicTextureVTable](fcQSGDynamicTexture_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQSGDynamicTexture_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQSGDynamicTexture_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQSGDynamicTexture_vtable_callback_metacall
  if not isNil(vtbl[].updateTexture):
    vtbl[].vtbl.updateTexture = cQSGDynamicTexture_vtable_callback_updateTexture
  if not isNil(vtbl[].textureId):
    vtbl[].vtbl.textureId = cQSGDynamicTexture_vtable_callback_textureId
  if not isNil(vtbl[].textureSize):
    vtbl[].vtbl.textureSize = cQSGDynamicTexture_vtable_callback_textureSize
  if not isNil(vtbl[].hasAlphaChannel):
    vtbl[].vtbl.hasAlphaChannel = cQSGDynamicTexture_vtable_callback_hasAlphaChannel
  if not isNil(vtbl[].hasMipmaps):
    vtbl[].vtbl.hasMipmaps = cQSGDynamicTexture_vtable_callback_hasMipmaps
  if not isNil(vtbl[].normalizedTextureSubRect):
    vtbl[].vtbl.normalizedTextureSubRect = cQSGDynamicTexture_vtable_callback_normalizedTextureSubRect
  if not isNil(vtbl[].isAtlasTexture):
    vtbl[].vtbl.isAtlasTexture = cQSGDynamicTexture_vtable_callback_isAtlasTexture
  if not isNil(vtbl[].removedFromAtlas):
    vtbl[].vtbl.removedFromAtlas = cQSGDynamicTexture_vtable_callback_removedFromAtlas
  if not isNil(vtbl[].bindX):
    vtbl[].vtbl.bindX = cQSGDynamicTexture_vtable_callback_bindX
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQSGDynamicTexture_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQSGDynamicTexture_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQSGDynamicTexture_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQSGDynamicTexture_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQSGDynamicTexture_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQSGDynamicTexture_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQSGDynamicTexture_vtable_callback_disconnectNotify
  gen_qsgtexture_types.QSGDynamicTexture(h: fcQSGDynamicTexture_new(addr(vtbl[].vtbl), addr(vtbl[])), owned: true)

const cQSGDynamicTexture_mvtbl = cQSGDynamicTextureVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQSGDynamicTexture()[])](self.fcQSGDynamicTexture_vtbl())
    inst[].h = nil
    inst[].owned = false,
  metaObject: cQSGDynamicTexture_method_callback_metaObject,
  metacast: cQSGDynamicTexture_method_callback_metacast,
  metacall: cQSGDynamicTexture_method_callback_metacall,
  updateTexture: cQSGDynamicTexture_method_callback_updateTexture,
  textureId: cQSGDynamicTexture_method_callback_textureId,
  textureSize: cQSGDynamicTexture_method_callback_textureSize,
  hasAlphaChannel: cQSGDynamicTexture_method_callback_hasAlphaChannel,
  hasMipmaps: cQSGDynamicTexture_method_callback_hasMipmaps,
  normalizedTextureSubRect: cQSGDynamicTexture_method_callback_normalizedTextureSubRect,
  isAtlasTexture: cQSGDynamicTexture_method_callback_isAtlasTexture,
  removedFromAtlas: cQSGDynamicTexture_method_callback_removedFromAtlas,
  bindX: cQSGDynamicTexture_method_callback_bindX,
  event: cQSGDynamicTexture_method_callback_event,
  eventFilter: cQSGDynamicTexture_method_callback_eventFilter,
  timerEvent: cQSGDynamicTexture_method_callback_timerEvent,
  childEvent: cQSGDynamicTexture_method_callback_childEvent,
  customEvent: cQSGDynamicTexture_method_callback_customEvent,
  connectNotify: cQSGDynamicTexture_method_callback_connectNotify,
  disconnectNotify: cQSGDynamicTexture_method_callback_disconnectNotify,
)
proc create*(T: type gen_qsgtexture_types.QSGDynamicTexture,
    inst: VirtualQSGDynamicTexture) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQSGDynamicTexture_new(addr(cQSGDynamicTexture_mvtbl), addr(inst[]))
  inst[].owned = true

proc staticMetaObject*(_: type gen_qsgtexture_types.QSGDynamicTexture): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQSGDynamicTexture_staticMetaObject())
