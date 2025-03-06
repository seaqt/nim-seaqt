import ./Qt6Quick_libs

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

const cflags = gorge("pkg-config --cflags Qt6Quick")  & " -fPIC"
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

proc fcQSGTexture_new(): ptr cQSGTexture {.importc: "QSGTexture_new".}
proc fcQSGTexture_metaObject(self: pointer, ): pointer {.importc: "QSGTexture_metaObject".}
proc fcQSGTexture_metacast(self: pointer, param1: cstring): pointer {.importc: "QSGTexture_metacast".}
proc fcQSGTexture_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QSGTexture_metacall".}
proc fcQSGTexture_tr(s: cstring): struct_miqt_string {.importc: "QSGTexture_tr".}
proc fcQSGTexture_comparisonKey(self: pointer, ): clonglong {.importc: "QSGTexture_comparisonKey".}
proc fcQSGTexture_textureSize(self: pointer, ): pointer {.importc: "QSGTexture_textureSize".}
proc fcQSGTexture_hasAlphaChannel(self: pointer, ): bool {.importc: "QSGTexture_hasAlphaChannel".}
proc fcQSGTexture_hasMipmaps(self: pointer, ): bool {.importc: "QSGTexture_hasMipmaps".}
proc fcQSGTexture_normalizedTextureSubRect(self: pointer, ): pointer {.importc: "QSGTexture_normalizedTextureSubRect".}
proc fcQSGTexture_isAtlasTexture(self: pointer, ): bool {.importc: "QSGTexture_isAtlasTexture".}
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
proc fcQSGTexture_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QSGTexture_tr2".}
proc fcQSGTexture_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QSGTexture_tr3".}
proc fQSGTexture_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QSGTexture_virtualbase_metaObject".}
proc fcQSGTexture_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QSGTexture_override_virtual_metaObject".}
proc fQSGTexture_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QSGTexture_virtualbase_metacast".}
proc fcQSGTexture_override_virtual_metacast(self: pointer, slot: int) {.importc: "QSGTexture_override_virtual_metacast".}
proc fQSGTexture_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QSGTexture_virtualbase_metacall".}
proc fcQSGTexture_override_virtual_metacall(self: pointer, slot: int) {.importc: "QSGTexture_override_virtual_metacall".}
proc fcQSGTexture_override_virtual_comparisonKey(self: pointer, slot: int) {.importc: "QSGTexture_override_virtual_comparisonKey".}
proc fcQSGTexture_override_virtual_textureSize(self: pointer, slot: int) {.importc: "QSGTexture_override_virtual_textureSize".}
proc fcQSGTexture_override_virtual_hasAlphaChannel(self: pointer, slot: int) {.importc: "QSGTexture_override_virtual_hasAlphaChannel".}
proc fcQSGTexture_override_virtual_hasMipmaps(self: pointer, slot: int) {.importc: "QSGTexture_override_virtual_hasMipmaps".}
proc fQSGTexture_virtualbase_normalizedTextureSubRect(self: pointer, ): pointer{.importc: "QSGTexture_virtualbase_normalizedTextureSubRect".}
proc fcQSGTexture_override_virtual_normalizedTextureSubRect(self: pointer, slot: int) {.importc: "QSGTexture_override_virtual_normalizedTextureSubRect".}
proc fQSGTexture_virtualbase_isAtlasTexture(self: pointer, ): bool{.importc: "QSGTexture_virtualbase_isAtlasTexture".}
proc fcQSGTexture_override_virtual_isAtlasTexture(self: pointer, slot: int) {.importc: "QSGTexture_override_virtual_isAtlasTexture".}
proc fQSGTexture_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QSGTexture_virtualbase_event".}
proc fcQSGTexture_override_virtual_event(self: pointer, slot: int) {.importc: "QSGTexture_override_virtual_event".}
proc fQSGTexture_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QSGTexture_virtualbase_eventFilter".}
proc fcQSGTexture_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QSGTexture_override_virtual_eventFilter".}
proc fQSGTexture_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QSGTexture_virtualbase_timerEvent".}
proc fcQSGTexture_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QSGTexture_override_virtual_timerEvent".}
proc fQSGTexture_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QSGTexture_virtualbase_childEvent".}
proc fcQSGTexture_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QSGTexture_override_virtual_childEvent".}
proc fQSGTexture_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QSGTexture_virtualbase_customEvent".}
proc fcQSGTexture_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QSGTexture_override_virtual_customEvent".}
proc fQSGTexture_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QSGTexture_virtualbase_connectNotify".}
proc fcQSGTexture_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QSGTexture_override_virtual_connectNotify".}
proc fQSGTexture_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QSGTexture_virtualbase_disconnectNotify".}
proc fcQSGTexture_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QSGTexture_override_virtual_disconnectNotify".}
proc fcQSGTexture_staticMetaObject(): pointer {.importc: "QSGTexture_staticMetaObject".}
proc fcQSGTexture_delete(self: pointer) {.importc: "QSGTexture_delete".}
proc fcQSGDynamicTexture_new(): ptr cQSGDynamicTexture {.importc: "QSGDynamicTexture_new".}
proc fcQSGDynamicTexture_metaObject(self: pointer, ): pointer {.importc: "QSGDynamicTexture_metaObject".}
proc fcQSGDynamicTexture_metacast(self: pointer, param1: cstring): pointer {.importc: "QSGDynamicTexture_metacast".}
proc fcQSGDynamicTexture_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QSGDynamicTexture_metacall".}
proc fcQSGDynamicTexture_tr(s: cstring): struct_miqt_string {.importc: "QSGDynamicTexture_tr".}
proc fcQSGDynamicTexture_updateTexture(self: pointer, ): bool {.importc: "QSGDynamicTexture_updateTexture".}
proc fcQSGDynamicTexture_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QSGDynamicTexture_tr2".}
proc fcQSGDynamicTexture_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QSGDynamicTexture_tr3".}
proc fQSGDynamicTexture_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QSGDynamicTexture_virtualbase_metaObject".}
proc fcQSGDynamicTexture_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QSGDynamicTexture_override_virtual_metaObject".}
proc fQSGDynamicTexture_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QSGDynamicTexture_virtualbase_metacast".}
proc fcQSGDynamicTexture_override_virtual_metacast(self: pointer, slot: int) {.importc: "QSGDynamicTexture_override_virtual_metacast".}
proc fQSGDynamicTexture_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QSGDynamicTexture_virtualbase_metacall".}
proc fcQSGDynamicTexture_override_virtual_metacall(self: pointer, slot: int) {.importc: "QSGDynamicTexture_override_virtual_metacall".}
proc fcQSGDynamicTexture_override_virtual_updateTexture(self: pointer, slot: int) {.importc: "QSGDynamicTexture_override_virtual_updateTexture".}
proc fcQSGDynamicTexture_override_virtual_comparisonKey(self: pointer, slot: int) {.importc: "QSGDynamicTexture_override_virtual_comparisonKey".}
proc fcQSGDynamicTexture_override_virtual_textureSize(self: pointer, slot: int) {.importc: "QSGDynamicTexture_override_virtual_textureSize".}
proc fcQSGDynamicTexture_override_virtual_hasAlphaChannel(self: pointer, slot: int) {.importc: "QSGDynamicTexture_override_virtual_hasAlphaChannel".}
proc fcQSGDynamicTexture_override_virtual_hasMipmaps(self: pointer, slot: int) {.importc: "QSGDynamicTexture_override_virtual_hasMipmaps".}
proc fQSGDynamicTexture_virtualbase_normalizedTextureSubRect(self: pointer, ): pointer{.importc: "QSGDynamicTexture_virtualbase_normalizedTextureSubRect".}
proc fcQSGDynamicTexture_override_virtual_normalizedTextureSubRect(self: pointer, slot: int) {.importc: "QSGDynamicTexture_override_virtual_normalizedTextureSubRect".}
proc fQSGDynamicTexture_virtualbase_isAtlasTexture(self: pointer, ): bool{.importc: "QSGDynamicTexture_virtualbase_isAtlasTexture".}
proc fcQSGDynamicTexture_override_virtual_isAtlasTexture(self: pointer, slot: int) {.importc: "QSGDynamicTexture_override_virtual_isAtlasTexture".}
proc fQSGDynamicTexture_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QSGDynamicTexture_virtualbase_event".}
proc fcQSGDynamicTexture_override_virtual_event(self: pointer, slot: int) {.importc: "QSGDynamicTexture_override_virtual_event".}
proc fQSGDynamicTexture_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QSGDynamicTexture_virtualbase_eventFilter".}
proc fcQSGDynamicTexture_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QSGDynamicTexture_override_virtual_eventFilter".}
proc fQSGDynamicTexture_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QSGDynamicTexture_virtualbase_timerEvent".}
proc fcQSGDynamicTexture_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QSGDynamicTexture_override_virtual_timerEvent".}
proc fQSGDynamicTexture_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QSGDynamicTexture_virtualbase_childEvent".}
proc fcQSGDynamicTexture_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QSGDynamicTexture_override_virtual_childEvent".}
proc fQSGDynamicTexture_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QSGDynamicTexture_virtualbase_customEvent".}
proc fcQSGDynamicTexture_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QSGDynamicTexture_override_virtual_customEvent".}
proc fQSGDynamicTexture_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QSGDynamicTexture_virtualbase_connectNotify".}
proc fcQSGDynamicTexture_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QSGDynamicTexture_override_virtual_connectNotify".}
proc fQSGDynamicTexture_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QSGDynamicTexture_virtualbase_disconnectNotify".}
proc fcQSGDynamicTexture_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QSGDynamicTexture_override_virtual_disconnectNotify".}
proc fcQSGDynamicTexture_staticMetaObject(): pointer {.importc: "QSGDynamicTexture_staticMetaObject".}
proc fcQSGDynamicTexture_delete(self: pointer) {.importc: "QSGDynamicTexture_delete".}


func init*(T: type gen_qsgtexture_types.QSGTexture, h: ptr cQSGTexture): gen_qsgtexture_types.QSGTexture =
  T(h: h)
proc create*(T: type gen_qsgtexture_types.QSGTexture, ): gen_qsgtexture_types.QSGTexture =
  gen_qsgtexture_types.QSGTexture.init(fcQSGTexture_new())

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

proc comparisonKey*(self: gen_qsgtexture_types.QSGTexture, ): clonglong =
  fcQSGTexture_comparisonKey(self.h)

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

proc QSGTexturemetaObject*(self: gen_qsgtexture_types.QSGTexture, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fQSGTexture_virtualbase_metaObject(self.h))

type QSGTexturemetaObjectProc* = proc(): gen_qobjectdefs_types.QMetaObject
proc onmetaObject*(self: gen_qsgtexture_types.QSGTexture, slot: QSGTexturemetaObjectProc) =
  # TODO check subclass
  var tmp = new QSGTexturemetaObjectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSGTexture_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSGTexture_metaObject(self: ptr cQSGTexture, slot: int): pointer {.exportc: "miqt_exec_callback_QSGTexture_metaObject ".} =
  var nimfunc = cast[ptr QSGTexturemetaObjectProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QSGTexturemetacast*(self: gen_qsgtexture_types.QSGTexture, param1: cstring): pointer =
  fQSGTexture_virtualbase_metacast(self.h, param1)

type QSGTexturemetacastProc* = proc(param1: cstring): pointer
proc onmetacast*(self: gen_qsgtexture_types.QSGTexture, slot: QSGTexturemetacastProc) =
  # TODO check subclass
  var tmp = new QSGTexturemetacastProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSGTexture_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSGTexture_metacast(self: ptr cQSGTexture, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QSGTexture_metacast ".} =
  var nimfunc = cast[ptr QSGTexturemetacastProc](cast[pointer](slot))
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QSGTexturemetacall*(self: gen_qsgtexture_types.QSGTexture, param1: cint, param2: cint, param3: pointer): cint =
  fQSGTexture_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QSGTexturemetacallProc* = proc(param1: cint, param2: cint, param3: pointer): cint
proc onmetacall*(self: gen_qsgtexture_types.QSGTexture, slot: QSGTexturemetacallProc) =
  # TODO check subclass
  var tmp = new QSGTexturemetacallProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSGTexture_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSGTexture_metacall(self: ptr cQSGTexture, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QSGTexture_metacall ".} =
  var nimfunc = cast[ptr QSGTexturemetacallProc](cast[pointer](slot))
  let slotval1 = cint(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
type QSGTexturecomparisonKeyProc* = proc(): clonglong
proc oncomparisonKey*(self: gen_qsgtexture_types.QSGTexture, slot: QSGTexturecomparisonKeyProc) =
  # TODO check subclass
  var tmp = new QSGTexturecomparisonKeyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSGTexture_override_virtual_comparisonKey(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSGTexture_comparisonKey(self: ptr cQSGTexture, slot: int): clonglong {.exportc: "miqt_exec_callback_QSGTexture_comparisonKey ".} =
  var nimfunc = cast[ptr QSGTexturecomparisonKeyProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
type QSGTexturetextureSizeProc* = proc(): gen_qsize_types.QSize
proc ontextureSize*(self: gen_qsgtexture_types.QSGTexture, slot: QSGTexturetextureSizeProc) =
  # TODO check subclass
  var tmp = new QSGTexturetextureSizeProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSGTexture_override_virtual_textureSize(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSGTexture_textureSize(self: ptr cQSGTexture, slot: int): pointer {.exportc: "miqt_exec_callback_QSGTexture_textureSize ".} =
  var nimfunc = cast[ptr QSGTexturetextureSizeProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
type QSGTexturehasAlphaChannelProc* = proc(): bool
proc onhasAlphaChannel*(self: gen_qsgtexture_types.QSGTexture, slot: QSGTexturehasAlphaChannelProc) =
  # TODO check subclass
  var tmp = new QSGTexturehasAlphaChannelProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSGTexture_override_virtual_hasAlphaChannel(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSGTexture_hasAlphaChannel(self: ptr cQSGTexture, slot: int): bool {.exportc: "miqt_exec_callback_QSGTexture_hasAlphaChannel ".} =
  var nimfunc = cast[ptr QSGTexturehasAlphaChannelProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
type QSGTexturehasMipmapsProc* = proc(): bool
proc onhasMipmaps*(self: gen_qsgtexture_types.QSGTexture, slot: QSGTexturehasMipmapsProc) =
  # TODO check subclass
  var tmp = new QSGTexturehasMipmapsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSGTexture_override_virtual_hasMipmaps(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSGTexture_hasMipmaps(self: ptr cQSGTexture, slot: int): bool {.exportc: "miqt_exec_callback_QSGTexture_hasMipmaps ".} =
  var nimfunc = cast[ptr QSGTexturehasMipmapsProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QSGTexturenormalizedTextureSubRect*(self: gen_qsgtexture_types.QSGTexture, ): gen_qrect_types.QRectF =
  gen_qrect_types.QRectF(h: fQSGTexture_virtualbase_normalizedTextureSubRect(self.h))

type QSGTexturenormalizedTextureSubRectProc* = proc(): gen_qrect_types.QRectF
proc onnormalizedTextureSubRect*(self: gen_qsgtexture_types.QSGTexture, slot: QSGTexturenormalizedTextureSubRectProc) =
  # TODO check subclass
  var tmp = new QSGTexturenormalizedTextureSubRectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSGTexture_override_virtual_normalizedTextureSubRect(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSGTexture_normalizedTextureSubRect(self: ptr cQSGTexture, slot: int): pointer {.exportc: "miqt_exec_callback_QSGTexture_normalizedTextureSubRect ".} =
  var nimfunc = cast[ptr QSGTexturenormalizedTextureSubRectProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QSGTextureisAtlasTexture*(self: gen_qsgtexture_types.QSGTexture, ): bool =
  fQSGTexture_virtualbase_isAtlasTexture(self.h)

type QSGTextureisAtlasTextureProc* = proc(): bool
proc onisAtlasTexture*(self: gen_qsgtexture_types.QSGTexture, slot: QSGTextureisAtlasTextureProc) =
  # TODO check subclass
  var tmp = new QSGTextureisAtlasTextureProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSGTexture_override_virtual_isAtlasTexture(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSGTexture_isAtlasTexture(self: ptr cQSGTexture, slot: int): bool {.exportc: "miqt_exec_callback_QSGTexture_isAtlasTexture ".} =
  var nimfunc = cast[ptr QSGTextureisAtlasTextureProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QSGTextureevent*(self: gen_qsgtexture_types.QSGTexture, event: gen_qcoreevent_types.QEvent): bool =
  fQSGTexture_virtualbase_event(self.h, event.h)

type QSGTextureeventProc* = proc(event: gen_qcoreevent_types.QEvent): bool
proc onevent*(self: gen_qsgtexture_types.QSGTexture, slot: QSGTextureeventProc) =
  # TODO check subclass
  var tmp = new QSGTextureeventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSGTexture_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSGTexture_event(self: ptr cQSGTexture, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QSGTexture_event ".} =
  var nimfunc = cast[ptr QSGTextureeventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QSGTextureeventFilter*(self: gen_qsgtexture_types.QSGTexture, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fQSGTexture_virtualbase_eventFilter(self.h, watched.h, event.h)

type QSGTextureeventFilterProc* = proc(watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool
proc oneventFilter*(self: gen_qsgtexture_types.QSGTexture, slot: QSGTextureeventFilterProc) =
  # TODO check subclass
  var tmp = new QSGTextureeventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSGTexture_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSGTexture_eventFilter(self: ptr cQSGTexture, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QSGTexture_eventFilter ".} =
  var nimfunc = cast[ptr QSGTextureeventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: watched)

  let slotval2 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QSGTexturetimerEvent*(self: gen_qsgtexture_types.QSGTexture, event: gen_qcoreevent_types.QTimerEvent): void =
  fQSGTexture_virtualbase_timerEvent(self.h, event.h)

type QSGTexturetimerEventProc* = proc(event: gen_qcoreevent_types.QTimerEvent): void
proc ontimerEvent*(self: gen_qsgtexture_types.QSGTexture, slot: QSGTexturetimerEventProc) =
  # TODO check subclass
  var tmp = new QSGTexturetimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSGTexture_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSGTexture_timerEvent(self: ptr cQSGTexture, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSGTexture_timerEvent ".} =
  var nimfunc = cast[ptr QSGTexturetimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QSGTexturechildEvent*(self: gen_qsgtexture_types.QSGTexture, event: gen_qcoreevent_types.QChildEvent): void =
  fQSGTexture_virtualbase_childEvent(self.h, event.h)

type QSGTexturechildEventProc* = proc(event: gen_qcoreevent_types.QChildEvent): void
proc onchildEvent*(self: gen_qsgtexture_types.QSGTexture, slot: QSGTexturechildEventProc) =
  # TODO check subclass
  var tmp = new QSGTexturechildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSGTexture_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSGTexture_childEvent(self: ptr cQSGTexture, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSGTexture_childEvent ".} =
  var nimfunc = cast[ptr QSGTexturechildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QSGTexturecustomEvent*(self: gen_qsgtexture_types.QSGTexture, event: gen_qcoreevent_types.QEvent): void =
  fQSGTexture_virtualbase_customEvent(self.h, event.h)

type QSGTexturecustomEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc oncustomEvent*(self: gen_qsgtexture_types.QSGTexture, slot: QSGTexturecustomEventProc) =
  # TODO check subclass
  var tmp = new QSGTexturecustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSGTexture_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSGTexture_customEvent(self: ptr cQSGTexture, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSGTexture_customEvent ".} =
  var nimfunc = cast[ptr QSGTexturecustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QSGTextureconnectNotify*(self: gen_qsgtexture_types.QSGTexture, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQSGTexture_virtualbase_connectNotify(self.h, signal.h)

type QSGTextureconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc onconnectNotify*(self: gen_qsgtexture_types.QSGTexture, slot: QSGTextureconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QSGTextureconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSGTexture_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSGTexture_connectNotify(self: ptr cQSGTexture, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QSGTexture_connectNotify ".} =
  var nimfunc = cast[ptr QSGTextureconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QSGTexturedisconnectNotify*(self: gen_qsgtexture_types.QSGTexture, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQSGTexture_virtualbase_disconnectNotify(self.h, signal.h)

type QSGTexturedisconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qsgtexture_types.QSGTexture, slot: QSGTexturedisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QSGTexturedisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSGTexture_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSGTexture_disconnectNotify(self: ptr cQSGTexture, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QSGTexture_disconnectNotify ".} =
  var nimfunc = cast[ptr QSGTexturedisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc staticMetaObject*(_: type gen_qsgtexture_types.QSGTexture): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQSGTexture_staticMetaObject())
proc delete*(self: gen_qsgtexture_types.QSGTexture) =
  fcQSGTexture_delete(self.h)

func init*(T: type gen_qsgtexture_types.QSGDynamicTexture, h: ptr cQSGDynamicTexture): gen_qsgtexture_types.QSGDynamicTexture =
  T(h: h)
proc create*(T: type gen_qsgtexture_types.QSGDynamicTexture, ): gen_qsgtexture_types.QSGDynamicTexture =
  gen_qsgtexture_types.QSGDynamicTexture.init(fcQSGDynamicTexture_new())

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

proc QSGDynamicTexturemetaObject*(self: gen_qsgtexture_types.QSGDynamicTexture, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fQSGDynamicTexture_virtualbase_metaObject(self.h))

type QSGDynamicTexturemetaObjectProc* = proc(): gen_qobjectdefs_types.QMetaObject
proc onmetaObject*(self: gen_qsgtexture_types.QSGDynamicTexture, slot: QSGDynamicTexturemetaObjectProc) =
  # TODO check subclass
  var tmp = new QSGDynamicTexturemetaObjectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSGDynamicTexture_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSGDynamicTexture_metaObject(self: ptr cQSGDynamicTexture, slot: int): pointer {.exportc: "miqt_exec_callback_QSGDynamicTexture_metaObject ".} =
  var nimfunc = cast[ptr QSGDynamicTexturemetaObjectProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QSGDynamicTexturemetacast*(self: gen_qsgtexture_types.QSGDynamicTexture, param1: cstring): pointer =
  fQSGDynamicTexture_virtualbase_metacast(self.h, param1)

type QSGDynamicTexturemetacastProc* = proc(param1: cstring): pointer
proc onmetacast*(self: gen_qsgtexture_types.QSGDynamicTexture, slot: QSGDynamicTexturemetacastProc) =
  # TODO check subclass
  var tmp = new QSGDynamicTexturemetacastProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSGDynamicTexture_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSGDynamicTexture_metacast(self: ptr cQSGDynamicTexture, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QSGDynamicTexture_metacast ".} =
  var nimfunc = cast[ptr QSGDynamicTexturemetacastProc](cast[pointer](slot))
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QSGDynamicTexturemetacall*(self: gen_qsgtexture_types.QSGDynamicTexture, param1: cint, param2: cint, param3: pointer): cint =
  fQSGDynamicTexture_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QSGDynamicTexturemetacallProc* = proc(param1: cint, param2: cint, param3: pointer): cint
proc onmetacall*(self: gen_qsgtexture_types.QSGDynamicTexture, slot: QSGDynamicTexturemetacallProc) =
  # TODO check subclass
  var tmp = new QSGDynamicTexturemetacallProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSGDynamicTexture_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSGDynamicTexture_metacall(self: ptr cQSGDynamicTexture, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QSGDynamicTexture_metacall ".} =
  var nimfunc = cast[ptr QSGDynamicTexturemetacallProc](cast[pointer](slot))
  let slotval1 = cint(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
type QSGDynamicTextureupdateTextureProc* = proc(): bool
proc onupdateTexture*(self: gen_qsgtexture_types.QSGDynamicTexture, slot: QSGDynamicTextureupdateTextureProc) =
  # TODO check subclass
  var tmp = new QSGDynamicTextureupdateTextureProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSGDynamicTexture_override_virtual_updateTexture(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSGDynamicTexture_updateTexture(self: ptr cQSGDynamicTexture, slot: int): bool {.exportc: "miqt_exec_callback_QSGDynamicTexture_updateTexture ".} =
  var nimfunc = cast[ptr QSGDynamicTextureupdateTextureProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
type QSGDynamicTexturecomparisonKeyProc* = proc(): clonglong
proc oncomparisonKey*(self: gen_qsgtexture_types.QSGDynamicTexture, slot: QSGDynamicTexturecomparisonKeyProc) =
  # TODO check subclass
  var tmp = new QSGDynamicTexturecomparisonKeyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSGDynamicTexture_override_virtual_comparisonKey(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSGDynamicTexture_comparisonKey(self: ptr cQSGDynamicTexture, slot: int): clonglong {.exportc: "miqt_exec_callback_QSGDynamicTexture_comparisonKey ".} =
  var nimfunc = cast[ptr QSGDynamicTexturecomparisonKeyProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
type QSGDynamicTexturetextureSizeProc* = proc(): gen_qsize_types.QSize
proc ontextureSize*(self: gen_qsgtexture_types.QSGDynamicTexture, slot: QSGDynamicTexturetextureSizeProc) =
  # TODO check subclass
  var tmp = new QSGDynamicTexturetextureSizeProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSGDynamicTexture_override_virtual_textureSize(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSGDynamicTexture_textureSize(self: ptr cQSGDynamicTexture, slot: int): pointer {.exportc: "miqt_exec_callback_QSGDynamicTexture_textureSize ".} =
  var nimfunc = cast[ptr QSGDynamicTexturetextureSizeProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
type QSGDynamicTexturehasAlphaChannelProc* = proc(): bool
proc onhasAlphaChannel*(self: gen_qsgtexture_types.QSGDynamicTexture, slot: QSGDynamicTexturehasAlphaChannelProc) =
  # TODO check subclass
  var tmp = new QSGDynamicTexturehasAlphaChannelProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSGDynamicTexture_override_virtual_hasAlphaChannel(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSGDynamicTexture_hasAlphaChannel(self: ptr cQSGDynamicTexture, slot: int): bool {.exportc: "miqt_exec_callback_QSGDynamicTexture_hasAlphaChannel ".} =
  var nimfunc = cast[ptr QSGDynamicTexturehasAlphaChannelProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
type QSGDynamicTexturehasMipmapsProc* = proc(): bool
proc onhasMipmaps*(self: gen_qsgtexture_types.QSGDynamicTexture, slot: QSGDynamicTexturehasMipmapsProc) =
  # TODO check subclass
  var tmp = new QSGDynamicTexturehasMipmapsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSGDynamicTexture_override_virtual_hasMipmaps(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSGDynamicTexture_hasMipmaps(self: ptr cQSGDynamicTexture, slot: int): bool {.exportc: "miqt_exec_callback_QSGDynamicTexture_hasMipmaps ".} =
  var nimfunc = cast[ptr QSGDynamicTexturehasMipmapsProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QSGDynamicTexturenormalizedTextureSubRect*(self: gen_qsgtexture_types.QSGDynamicTexture, ): gen_qrect_types.QRectF =
  gen_qrect_types.QRectF(h: fQSGDynamicTexture_virtualbase_normalizedTextureSubRect(self.h))

type QSGDynamicTexturenormalizedTextureSubRectProc* = proc(): gen_qrect_types.QRectF
proc onnormalizedTextureSubRect*(self: gen_qsgtexture_types.QSGDynamicTexture, slot: QSGDynamicTexturenormalizedTextureSubRectProc) =
  # TODO check subclass
  var tmp = new QSGDynamicTexturenormalizedTextureSubRectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSGDynamicTexture_override_virtual_normalizedTextureSubRect(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSGDynamicTexture_normalizedTextureSubRect(self: ptr cQSGDynamicTexture, slot: int): pointer {.exportc: "miqt_exec_callback_QSGDynamicTexture_normalizedTextureSubRect ".} =
  var nimfunc = cast[ptr QSGDynamicTexturenormalizedTextureSubRectProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QSGDynamicTextureisAtlasTexture*(self: gen_qsgtexture_types.QSGDynamicTexture, ): bool =
  fQSGDynamicTexture_virtualbase_isAtlasTexture(self.h)

type QSGDynamicTextureisAtlasTextureProc* = proc(): bool
proc onisAtlasTexture*(self: gen_qsgtexture_types.QSGDynamicTexture, slot: QSGDynamicTextureisAtlasTextureProc) =
  # TODO check subclass
  var tmp = new QSGDynamicTextureisAtlasTextureProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSGDynamicTexture_override_virtual_isAtlasTexture(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSGDynamicTexture_isAtlasTexture(self: ptr cQSGDynamicTexture, slot: int): bool {.exportc: "miqt_exec_callback_QSGDynamicTexture_isAtlasTexture ".} =
  var nimfunc = cast[ptr QSGDynamicTextureisAtlasTextureProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QSGDynamicTextureevent*(self: gen_qsgtexture_types.QSGDynamicTexture, event: gen_qcoreevent_types.QEvent): bool =
  fQSGDynamicTexture_virtualbase_event(self.h, event.h)

type QSGDynamicTextureeventProc* = proc(event: gen_qcoreevent_types.QEvent): bool
proc onevent*(self: gen_qsgtexture_types.QSGDynamicTexture, slot: QSGDynamicTextureeventProc) =
  # TODO check subclass
  var tmp = new QSGDynamicTextureeventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSGDynamicTexture_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSGDynamicTexture_event(self: ptr cQSGDynamicTexture, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QSGDynamicTexture_event ".} =
  var nimfunc = cast[ptr QSGDynamicTextureeventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QSGDynamicTextureeventFilter*(self: gen_qsgtexture_types.QSGDynamicTexture, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fQSGDynamicTexture_virtualbase_eventFilter(self.h, watched.h, event.h)

type QSGDynamicTextureeventFilterProc* = proc(watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool
proc oneventFilter*(self: gen_qsgtexture_types.QSGDynamicTexture, slot: QSGDynamicTextureeventFilterProc) =
  # TODO check subclass
  var tmp = new QSGDynamicTextureeventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSGDynamicTexture_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSGDynamicTexture_eventFilter(self: ptr cQSGDynamicTexture, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QSGDynamicTexture_eventFilter ".} =
  var nimfunc = cast[ptr QSGDynamicTextureeventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: watched)

  let slotval2 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QSGDynamicTexturetimerEvent*(self: gen_qsgtexture_types.QSGDynamicTexture, event: gen_qcoreevent_types.QTimerEvent): void =
  fQSGDynamicTexture_virtualbase_timerEvent(self.h, event.h)

type QSGDynamicTexturetimerEventProc* = proc(event: gen_qcoreevent_types.QTimerEvent): void
proc ontimerEvent*(self: gen_qsgtexture_types.QSGDynamicTexture, slot: QSGDynamicTexturetimerEventProc) =
  # TODO check subclass
  var tmp = new QSGDynamicTexturetimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSGDynamicTexture_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSGDynamicTexture_timerEvent(self: ptr cQSGDynamicTexture, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSGDynamicTexture_timerEvent ".} =
  var nimfunc = cast[ptr QSGDynamicTexturetimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QSGDynamicTexturechildEvent*(self: gen_qsgtexture_types.QSGDynamicTexture, event: gen_qcoreevent_types.QChildEvent): void =
  fQSGDynamicTexture_virtualbase_childEvent(self.h, event.h)

type QSGDynamicTexturechildEventProc* = proc(event: gen_qcoreevent_types.QChildEvent): void
proc onchildEvent*(self: gen_qsgtexture_types.QSGDynamicTexture, slot: QSGDynamicTexturechildEventProc) =
  # TODO check subclass
  var tmp = new QSGDynamicTexturechildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSGDynamicTexture_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSGDynamicTexture_childEvent(self: ptr cQSGDynamicTexture, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSGDynamicTexture_childEvent ".} =
  var nimfunc = cast[ptr QSGDynamicTexturechildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QSGDynamicTexturecustomEvent*(self: gen_qsgtexture_types.QSGDynamicTexture, event: gen_qcoreevent_types.QEvent): void =
  fQSGDynamicTexture_virtualbase_customEvent(self.h, event.h)

type QSGDynamicTexturecustomEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc oncustomEvent*(self: gen_qsgtexture_types.QSGDynamicTexture, slot: QSGDynamicTexturecustomEventProc) =
  # TODO check subclass
  var tmp = new QSGDynamicTexturecustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSGDynamicTexture_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSGDynamicTexture_customEvent(self: ptr cQSGDynamicTexture, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSGDynamicTexture_customEvent ".} =
  var nimfunc = cast[ptr QSGDynamicTexturecustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QSGDynamicTextureconnectNotify*(self: gen_qsgtexture_types.QSGDynamicTexture, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQSGDynamicTexture_virtualbase_connectNotify(self.h, signal.h)

type QSGDynamicTextureconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc onconnectNotify*(self: gen_qsgtexture_types.QSGDynamicTexture, slot: QSGDynamicTextureconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QSGDynamicTextureconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSGDynamicTexture_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSGDynamicTexture_connectNotify(self: ptr cQSGDynamicTexture, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QSGDynamicTexture_connectNotify ".} =
  var nimfunc = cast[ptr QSGDynamicTextureconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QSGDynamicTexturedisconnectNotify*(self: gen_qsgtexture_types.QSGDynamicTexture, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQSGDynamicTexture_virtualbase_disconnectNotify(self.h, signal.h)

type QSGDynamicTexturedisconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qsgtexture_types.QSGDynamicTexture, slot: QSGDynamicTexturedisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QSGDynamicTexturedisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSGDynamicTexture_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSGDynamicTexture_disconnectNotify(self: ptr cQSGDynamicTexture, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QSGDynamicTexture_disconnectNotify ".} =
  var nimfunc = cast[ptr QSGDynamicTexturedisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc staticMetaObject*(_: type gen_qsgtexture_types.QSGDynamicTexture): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQSGDynamicTexture_staticMetaObject())
proc delete*(self: gen_qsgtexture_types.QSGDynamicTexture) =
  fcQSGDynamicTexture_delete(self.h)
