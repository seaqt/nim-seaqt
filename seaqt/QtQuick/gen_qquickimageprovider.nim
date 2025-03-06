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
{.compile("gen_qquickimageprovider.cpp", cflags).}


import ./gen_qquickimageprovider_types
export gen_qquickimageprovider_types

import
  ../QtCore/gen_qcoreevent_types,
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qobject,
  ../QtCore/gen_qobjectdefs_types,
  ../QtCore/gen_qsize_types,
  ../QtGui/gen_qimage_types,
  ../QtGui/gen_qpixmap_types,
  ../QtQml/gen_qqmlengine,
  ./gen_qquickwindow_types,
  ./gen_qsgtexture_types
export
  gen_qcoreevent_types,
  gen_qmetaobject_types,
  gen_qobject,
  gen_qobjectdefs_types,
  gen_qsize_types,
  gen_qimage_types,
  gen_qpixmap_types,
  gen_qqmlengine,
  gen_qquickwindow_types,
  gen_qsgtexture_types

type cQQuickTextureFactory*{.exportc: "QQuickTextureFactory", incompleteStruct.} = object
type cQQuickImageResponse*{.exportc: "QQuickImageResponse", incompleteStruct.} = object
type cQQuickImageProvider*{.exportc: "QQuickImageProvider", incompleteStruct.} = object
type cQQuickAsyncImageProvider*{.exportc: "QQuickAsyncImageProvider", incompleteStruct.} = object

proc fcQQuickTextureFactory_new(): ptr cQQuickTextureFactory {.importc: "QQuickTextureFactory_new".}
proc fcQQuickTextureFactory_metaObject(self: pointer, ): pointer {.importc: "QQuickTextureFactory_metaObject".}
proc fcQQuickTextureFactory_metacast(self: pointer, param1: cstring): pointer {.importc: "QQuickTextureFactory_metacast".}
proc fcQQuickTextureFactory_tr(s: cstring): struct_miqt_string {.importc: "QQuickTextureFactory_tr".}
proc fcQQuickTextureFactory_createTexture(self: pointer, window: pointer): pointer {.importc: "QQuickTextureFactory_createTexture".}
proc fcQQuickTextureFactory_textureSize(self: pointer, ): pointer {.importc: "QQuickTextureFactory_textureSize".}
proc fcQQuickTextureFactory_textureByteCount(self: pointer, ): cint {.importc: "QQuickTextureFactory_textureByteCount".}
proc fcQQuickTextureFactory_image(self: pointer, ): pointer {.importc: "QQuickTextureFactory_image".}
proc fcQQuickTextureFactory_textureFactoryForImage(image: pointer): pointer {.importc: "QQuickTextureFactory_textureFactoryForImage".}
proc fcQQuickTextureFactory_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QQuickTextureFactory_tr2".}
proc fcQQuickTextureFactory_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QQuickTextureFactory_tr3".}
proc fcQQuickTextureFactory_override_virtual_createTexture(self: pointer, slot: int) {.importc: "QQuickTextureFactory_override_virtual_createTexture".}
proc fcQQuickTextureFactory_override_virtual_textureSize(self: pointer, slot: int) {.importc: "QQuickTextureFactory_override_virtual_textureSize".}
proc fcQQuickTextureFactory_override_virtual_textureByteCount(self: pointer, slot: int) {.importc: "QQuickTextureFactory_override_virtual_textureByteCount".}
proc fQQuickTextureFactory_virtualbase_image(self: pointer, ): pointer{.importc: "QQuickTextureFactory_virtualbase_image".}
proc fcQQuickTextureFactory_override_virtual_image(self: pointer, slot: int) {.importc: "QQuickTextureFactory_override_virtual_image".}
proc fQQuickTextureFactory_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QQuickTextureFactory_virtualbase_event".}
proc fcQQuickTextureFactory_override_virtual_event(self: pointer, slot: int) {.importc: "QQuickTextureFactory_override_virtual_event".}
proc fQQuickTextureFactory_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QQuickTextureFactory_virtualbase_eventFilter".}
proc fcQQuickTextureFactory_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QQuickTextureFactory_override_virtual_eventFilter".}
proc fQQuickTextureFactory_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QQuickTextureFactory_virtualbase_timerEvent".}
proc fcQQuickTextureFactory_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QQuickTextureFactory_override_virtual_timerEvent".}
proc fQQuickTextureFactory_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QQuickTextureFactory_virtualbase_childEvent".}
proc fcQQuickTextureFactory_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QQuickTextureFactory_override_virtual_childEvent".}
proc fQQuickTextureFactory_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QQuickTextureFactory_virtualbase_customEvent".}
proc fcQQuickTextureFactory_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QQuickTextureFactory_override_virtual_customEvent".}
proc fQQuickTextureFactory_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QQuickTextureFactory_virtualbase_connectNotify".}
proc fcQQuickTextureFactory_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QQuickTextureFactory_override_virtual_connectNotify".}
proc fQQuickTextureFactory_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QQuickTextureFactory_virtualbase_disconnectNotify".}
proc fcQQuickTextureFactory_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QQuickTextureFactory_override_virtual_disconnectNotify".}
proc fcQQuickTextureFactory_delete(self: pointer) {.importc: "QQuickTextureFactory_delete".}
proc fcQQuickImageResponse_new(): ptr cQQuickImageResponse {.importc: "QQuickImageResponse_new".}
proc fcQQuickImageResponse_metaObject(self: pointer, ): pointer {.importc: "QQuickImageResponse_metaObject".}
proc fcQQuickImageResponse_metacast(self: pointer, param1: cstring): pointer {.importc: "QQuickImageResponse_metacast".}
proc fcQQuickImageResponse_tr(s: cstring): struct_miqt_string {.importc: "QQuickImageResponse_tr".}
proc fcQQuickImageResponse_textureFactory(self: pointer, ): pointer {.importc: "QQuickImageResponse_textureFactory".}
proc fcQQuickImageResponse_errorString(self: pointer, ): struct_miqt_string {.importc: "QQuickImageResponse_errorString".}
proc fcQQuickImageResponse_cancel(self: pointer, ): void {.importc: "QQuickImageResponse_cancel".}
proc fcQQuickImageResponse_finished(self: pointer, ): void {.importc: "QQuickImageResponse_finished".}
proc fcQQuickImageResponse_connect_finished(self: pointer, slot: int) {.importc: "QQuickImageResponse_connect_finished".}
proc fcQQuickImageResponse_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QQuickImageResponse_tr2".}
proc fcQQuickImageResponse_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QQuickImageResponse_tr3".}
proc fcQQuickImageResponse_override_virtual_textureFactory(self: pointer, slot: int) {.importc: "QQuickImageResponse_override_virtual_textureFactory".}
proc fQQuickImageResponse_virtualbase_errorString(self: pointer, ): struct_miqt_string{.importc: "QQuickImageResponse_virtualbase_errorString".}
proc fcQQuickImageResponse_override_virtual_errorString(self: pointer, slot: int) {.importc: "QQuickImageResponse_override_virtual_errorString".}
proc fQQuickImageResponse_virtualbase_cancel(self: pointer, ): void{.importc: "QQuickImageResponse_virtualbase_cancel".}
proc fcQQuickImageResponse_override_virtual_cancel(self: pointer, slot: int) {.importc: "QQuickImageResponse_override_virtual_cancel".}
proc fQQuickImageResponse_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QQuickImageResponse_virtualbase_event".}
proc fcQQuickImageResponse_override_virtual_event(self: pointer, slot: int) {.importc: "QQuickImageResponse_override_virtual_event".}
proc fQQuickImageResponse_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QQuickImageResponse_virtualbase_eventFilter".}
proc fcQQuickImageResponse_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QQuickImageResponse_override_virtual_eventFilter".}
proc fQQuickImageResponse_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QQuickImageResponse_virtualbase_timerEvent".}
proc fcQQuickImageResponse_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QQuickImageResponse_override_virtual_timerEvent".}
proc fQQuickImageResponse_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QQuickImageResponse_virtualbase_childEvent".}
proc fcQQuickImageResponse_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QQuickImageResponse_override_virtual_childEvent".}
proc fQQuickImageResponse_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QQuickImageResponse_virtualbase_customEvent".}
proc fcQQuickImageResponse_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QQuickImageResponse_override_virtual_customEvent".}
proc fQQuickImageResponse_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QQuickImageResponse_virtualbase_connectNotify".}
proc fcQQuickImageResponse_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QQuickImageResponse_override_virtual_connectNotify".}
proc fQQuickImageResponse_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QQuickImageResponse_virtualbase_disconnectNotify".}
proc fcQQuickImageResponse_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QQuickImageResponse_override_virtual_disconnectNotify".}
proc fcQQuickImageResponse_delete(self: pointer) {.importc: "QQuickImageResponse_delete".}
proc fcQQuickImageProvider_new(typeVal: cint): ptr cQQuickImageProvider {.importc: "QQuickImageProvider_new".}
proc fcQQuickImageProvider_new2(typeVal: cint, flags: cint): ptr cQQuickImageProvider {.importc: "QQuickImageProvider_new2".}
proc fcQQuickImageProvider_metaObject(self: pointer, ): pointer {.importc: "QQuickImageProvider_metaObject".}
proc fcQQuickImageProvider_metacast(self: pointer, param1: cstring): pointer {.importc: "QQuickImageProvider_metacast".}
proc fcQQuickImageProvider_tr(s: cstring): struct_miqt_string {.importc: "QQuickImageProvider_tr".}
proc fcQQuickImageProvider_imageType(self: pointer, ): cint {.importc: "QQuickImageProvider_imageType".}
proc fcQQuickImageProvider_flags(self: pointer, ): cint {.importc: "QQuickImageProvider_flags".}
proc fcQQuickImageProvider_requestImage(self: pointer, id: struct_miqt_string, size: pointer, requestedSize: pointer): pointer {.importc: "QQuickImageProvider_requestImage".}
proc fcQQuickImageProvider_requestPixmap(self: pointer, id: struct_miqt_string, size: pointer, requestedSize: pointer): pointer {.importc: "QQuickImageProvider_requestPixmap".}
proc fcQQuickImageProvider_requestTexture(self: pointer, id: struct_miqt_string, size: pointer, requestedSize: pointer): pointer {.importc: "QQuickImageProvider_requestTexture".}
proc fcQQuickImageProvider_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QQuickImageProvider_tr2".}
proc fcQQuickImageProvider_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QQuickImageProvider_tr3".}
proc fQQuickImageProvider_virtualbase_imageType(self: pointer, ): cint{.importc: "QQuickImageProvider_virtualbase_imageType".}
proc fcQQuickImageProvider_override_virtual_imageType(self: pointer, slot: int) {.importc: "QQuickImageProvider_override_virtual_imageType".}
proc fQQuickImageProvider_virtualbase_flags(self: pointer, ): cint{.importc: "QQuickImageProvider_virtualbase_flags".}
proc fcQQuickImageProvider_override_virtual_flags(self: pointer, slot: int) {.importc: "QQuickImageProvider_override_virtual_flags".}
proc fQQuickImageProvider_virtualbase_requestImage(self: pointer, id: struct_miqt_string, size: pointer, requestedSize: pointer): pointer{.importc: "QQuickImageProvider_virtualbase_requestImage".}
proc fcQQuickImageProvider_override_virtual_requestImage(self: pointer, slot: int) {.importc: "QQuickImageProvider_override_virtual_requestImage".}
proc fQQuickImageProvider_virtualbase_requestPixmap(self: pointer, id: struct_miqt_string, size: pointer, requestedSize: pointer): pointer{.importc: "QQuickImageProvider_virtualbase_requestPixmap".}
proc fcQQuickImageProvider_override_virtual_requestPixmap(self: pointer, slot: int) {.importc: "QQuickImageProvider_override_virtual_requestPixmap".}
proc fQQuickImageProvider_virtualbase_requestTexture(self: pointer, id: struct_miqt_string, size: pointer, requestedSize: pointer): pointer{.importc: "QQuickImageProvider_virtualbase_requestTexture".}
proc fcQQuickImageProvider_override_virtual_requestTexture(self: pointer, slot: int) {.importc: "QQuickImageProvider_override_virtual_requestTexture".}
proc fQQuickImageProvider_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QQuickImageProvider_virtualbase_event".}
proc fcQQuickImageProvider_override_virtual_event(self: pointer, slot: int) {.importc: "QQuickImageProvider_override_virtual_event".}
proc fQQuickImageProvider_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QQuickImageProvider_virtualbase_eventFilter".}
proc fcQQuickImageProvider_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QQuickImageProvider_override_virtual_eventFilter".}
proc fQQuickImageProvider_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QQuickImageProvider_virtualbase_timerEvent".}
proc fcQQuickImageProvider_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QQuickImageProvider_override_virtual_timerEvent".}
proc fQQuickImageProvider_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QQuickImageProvider_virtualbase_childEvent".}
proc fcQQuickImageProvider_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QQuickImageProvider_override_virtual_childEvent".}
proc fQQuickImageProvider_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QQuickImageProvider_virtualbase_customEvent".}
proc fcQQuickImageProvider_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QQuickImageProvider_override_virtual_customEvent".}
proc fQQuickImageProvider_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QQuickImageProvider_virtualbase_connectNotify".}
proc fcQQuickImageProvider_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QQuickImageProvider_override_virtual_connectNotify".}
proc fQQuickImageProvider_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QQuickImageProvider_virtualbase_disconnectNotify".}
proc fcQQuickImageProvider_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QQuickImageProvider_override_virtual_disconnectNotify".}
proc fcQQuickImageProvider_delete(self: pointer) {.importc: "QQuickImageProvider_delete".}
proc fcQQuickAsyncImageProvider_new(): ptr cQQuickAsyncImageProvider {.importc: "QQuickAsyncImageProvider_new".}
proc fcQQuickAsyncImageProvider_requestImageResponse(self: pointer, id: struct_miqt_string, requestedSize: pointer): pointer {.importc: "QQuickAsyncImageProvider_requestImageResponse".}
proc fcQQuickAsyncImageProvider_override_virtual_requestImageResponse(self: pointer, slot: int) {.importc: "QQuickAsyncImageProvider_override_virtual_requestImageResponse".}
proc fQQuickAsyncImageProvider_virtualbase_imageType(self: pointer, ): cint{.importc: "QQuickAsyncImageProvider_virtualbase_imageType".}
proc fcQQuickAsyncImageProvider_override_virtual_imageType(self: pointer, slot: int) {.importc: "QQuickAsyncImageProvider_override_virtual_imageType".}
proc fQQuickAsyncImageProvider_virtualbase_flags(self: pointer, ): cint{.importc: "QQuickAsyncImageProvider_virtualbase_flags".}
proc fcQQuickAsyncImageProvider_override_virtual_flags(self: pointer, slot: int) {.importc: "QQuickAsyncImageProvider_override_virtual_flags".}
proc fQQuickAsyncImageProvider_virtualbase_requestImage(self: pointer, id: struct_miqt_string, size: pointer, requestedSize: pointer): pointer{.importc: "QQuickAsyncImageProvider_virtualbase_requestImage".}
proc fcQQuickAsyncImageProvider_override_virtual_requestImage(self: pointer, slot: int) {.importc: "QQuickAsyncImageProvider_override_virtual_requestImage".}
proc fQQuickAsyncImageProvider_virtualbase_requestPixmap(self: pointer, id: struct_miqt_string, size: pointer, requestedSize: pointer): pointer{.importc: "QQuickAsyncImageProvider_virtualbase_requestPixmap".}
proc fcQQuickAsyncImageProvider_override_virtual_requestPixmap(self: pointer, slot: int) {.importc: "QQuickAsyncImageProvider_override_virtual_requestPixmap".}
proc fQQuickAsyncImageProvider_virtualbase_requestTexture(self: pointer, id: struct_miqt_string, size: pointer, requestedSize: pointer): pointer{.importc: "QQuickAsyncImageProvider_virtualbase_requestTexture".}
proc fcQQuickAsyncImageProvider_override_virtual_requestTexture(self: pointer, slot: int) {.importc: "QQuickAsyncImageProvider_override_virtual_requestTexture".}
proc fQQuickAsyncImageProvider_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QQuickAsyncImageProvider_virtualbase_event".}
proc fcQQuickAsyncImageProvider_override_virtual_event(self: pointer, slot: int) {.importc: "QQuickAsyncImageProvider_override_virtual_event".}
proc fQQuickAsyncImageProvider_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QQuickAsyncImageProvider_virtualbase_eventFilter".}
proc fcQQuickAsyncImageProvider_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QQuickAsyncImageProvider_override_virtual_eventFilter".}
proc fQQuickAsyncImageProvider_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QQuickAsyncImageProvider_virtualbase_timerEvent".}
proc fcQQuickAsyncImageProvider_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QQuickAsyncImageProvider_override_virtual_timerEvent".}
proc fQQuickAsyncImageProvider_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QQuickAsyncImageProvider_virtualbase_childEvent".}
proc fcQQuickAsyncImageProvider_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QQuickAsyncImageProvider_override_virtual_childEvent".}
proc fQQuickAsyncImageProvider_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QQuickAsyncImageProvider_virtualbase_customEvent".}
proc fcQQuickAsyncImageProvider_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QQuickAsyncImageProvider_override_virtual_customEvent".}
proc fQQuickAsyncImageProvider_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QQuickAsyncImageProvider_virtualbase_connectNotify".}
proc fcQQuickAsyncImageProvider_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QQuickAsyncImageProvider_override_virtual_connectNotify".}
proc fQQuickAsyncImageProvider_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QQuickAsyncImageProvider_virtualbase_disconnectNotify".}
proc fcQQuickAsyncImageProvider_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QQuickAsyncImageProvider_override_virtual_disconnectNotify".}
proc fcQQuickAsyncImageProvider_delete(self: pointer) {.importc: "QQuickAsyncImageProvider_delete".}


func init*(T: type gen_qquickimageprovider_types.QQuickTextureFactory, h: ptr cQQuickTextureFactory): gen_qquickimageprovider_types.QQuickTextureFactory =
  T(h: h)
proc create*(T: type gen_qquickimageprovider_types.QQuickTextureFactory, ): gen_qquickimageprovider_types.QQuickTextureFactory =
  gen_qquickimageprovider_types.QQuickTextureFactory.init(fcQQuickTextureFactory_new())

proc metaObject*(self: gen_qquickimageprovider_types.QQuickTextureFactory, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQQuickTextureFactory_metaObject(self.h))

proc metacast*(self: gen_qquickimageprovider_types.QQuickTextureFactory, param1: cstring): pointer =
  fcQQuickTextureFactory_metacast(self.h, param1)

proc tr*(_: type gen_qquickimageprovider_types.QQuickTextureFactory, s: cstring): string =
  let v_ms = fcQQuickTextureFactory_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc createTexture*(self: gen_qquickimageprovider_types.QQuickTextureFactory, window: gen_qquickwindow_types.QQuickWindow): gen_qsgtexture_types.QSGTexture =
  gen_qsgtexture_types.QSGTexture(h: fcQQuickTextureFactory_createTexture(self.h, window.h))

proc textureSize*(self: gen_qquickimageprovider_types.QQuickTextureFactory, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQQuickTextureFactory_textureSize(self.h))

proc textureByteCount*(self: gen_qquickimageprovider_types.QQuickTextureFactory, ): cint =
  fcQQuickTextureFactory_textureByteCount(self.h)

proc image*(self: gen_qquickimageprovider_types.QQuickTextureFactory, ): gen_qimage_types.QImage =
  gen_qimage_types.QImage(h: fcQQuickTextureFactory_image(self.h))

proc textureFactoryForImage*(_: type gen_qquickimageprovider_types.QQuickTextureFactory, image: gen_qimage_types.QImage): gen_qquickimageprovider_types.QQuickTextureFactory =
  gen_qquickimageprovider_types.QQuickTextureFactory(h: fcQQuickTextureFactory_textureFactoryForImage(image.h))

proc tr*(_: type gen_qquickimageprovider_types.QQuickTextureFactory, s: cstring, c: cstring): string =
  let v_ms = fcQQuickTextureFactory_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qquickimageprovider_types.QQuickTextureFactory, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQQuickTextureFactory_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

type QQuickTextureFactorycreateTextureProc* = proc(window: gen_qquickwindow_types.QQuickWindow): gen_qsgtexture_types.QSGTexture
proc oncreateTexture*(self: gen_qquickimageprovider_types.QQuickTextureFactory, slot: QQuickTextureFactorycreateTextureProc) =
  # TODO check subclass
  var tmp = new QQuickTextureFactorycreateTextureProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickTextureFactory_override_virtual_createTexture(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickTextureFactory_createTexture(self: ptr cQQuickTextureFactory, slot: int, window: pointer): pointer {.exportc: "miqt_exec_callback_QQuickTextureFactory_createTexture ".} =
  var nimfunc = cast[ptr QQuickTextureFactorycreateTextureProc](cast[pointer](slot))
  let slotval1 = gen_qquickwindow_types.QQuickWindow(h: window)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
type QQuickTextureFactorytextureSizeProc* = proc(): gen_qsize_types.QSize
proc ontextureSize*(self: gen_qquickimageprovider_types.QQuickTextureFactory, slot: QQuickTextureFactorytextureSizeProc) =
  # TODO check subclass
  var tmp = new QQuickTextureFactorytextureSizeProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickTextureFactory_override_virtual_textureSize(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickTextureFactory_textureSize(self: ptr cQQuickTextureFactory, slot: int): pointer {.exportc: "miqt_exec_callback_QQuickTextureFactory_textureSize ".} =
  var nimfunc = cast[ptr QQuickTextureFactorytextureSizeProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
type QQuickTextureFactorytextureByteCountProc* = proc(): cint
proc ontextureByteCount*(self: gen_qquickimageprovider_types.QQuickTextureFactory, slot: QQuickTextureFactorytextureByteCountProc) =
  # TODO check subclass
  var tmp = new QQuickTextureFactorytextureByteCountProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickTextureFactory_override_virtual_textureByteCount(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickTextureFactory_textureByteCount(self: ptr cQQuickTextureFactory, slot: int): cint {.exportc: "miqt_exec_callback_QQuickTextureFactory_textureByteCount ".} =
  var nimfunc = cast[ptr QQuickTextureFactorytextureByteCountProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QQuickTextureFactoryimage*(self: gen_qquickimageprovider_types.QQuickTextureFactory, ): gen_qimage_types.QImage =
  gen_qimage_types.QImage(h: fQQuickTextureFactory_virtualbase_image(self.h))

type QQuickTextureFactoryimageProc* = proc(): gen_qimage_types.QImage
proc onimage*(self: gen_qquickimageprovider_types.QQuickTextureFactory, slot: QQuickTextureFactoryimageProc) =
  # TODO check subclass
  var tmp = new QQuickTextureFactoryimageProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickTextureFactory_override_virtual_image(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickTextureFactory_image(self: ptr cQQuickTextureFactory, slot: int): pointer {.exportc: "miqt_exec_callback_QQuickTextureFactory_image ".} =
  var nimfunc = cast[ptr QQuickTextureFactoryimageProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QQuickTextureFactoryevent*(self: gen_qquickimageprovider_types.QQuickTextureFactory, event: gen_qcoreevent_types.QEvent): bool =
  fQQuickTextureFactory_virtualbase_event(self.h, event.h)

type QQuickTextureFactoryeventProc* = proc(event: gen_qcoreevent_types.QEvent): bool
proc onevent*(self: gen_qquickimageprovider_types.QQuickTextureFactory, slot: QQuickTextureFactoryeventProc) =
  # TODO check subclass
  var tmp = new QQuickTextureFactoryeventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickTextureFactory_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickTextureFactory_event(self: ptr cQQuickTextureFactory, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QQuickTextureFactory_event ".} =
  var nimfunc = cast[ptr QQuickTextureFactoryeventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QQuickTextureFactoryeventFilter*(self: gen_qquickimageprovider_types.QQuickTextureFactory, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fQQuickTextureFactory_virtualbase_eventFilter(self.h, watched.h, event.h)

type QQuickTextureFactoryeventFilterProc* = proc(watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool
proc oneventFilter*(self: gen_qquickimageprovider_types.QQuickTextureFactory, slot: QQuickTextureFactoryeventFilterProc) =
  # TODO check subclass
  var tmp = new QQuickTextureFactoryeventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickTextureFactory_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickTextureFactory_eventFilter(self: ptr cQQuickTextureFactory, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QQuickTextureFactory_eventFilter ".} =
  var nimfunc = cast[ptr QQuickTextureFactoryeventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: watched)

  let slotval2 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QQuickTextureFactorytimerEvent*(self: gen_qquickimageprovider_types.QQuickTextureFactory, event: gen_qcoreevent_types.QTimerEvent): void =
  fQQuickTextureFactory_virtualbase_timerEvent(self.h, event.h)

type QQuickTextureFactorytimerEventProc* = proc(event: gen_qcoreevent_types.QTimerEvent): void
proc ontimerEvent*(self: gen_qquickimageprovider_types.QQuickTextureFactory, slot: QQuickTextureFactorytimerEventProc) =
  # TODO check subclass
  var tmp = new QQuickTextureFactorytimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickTextureFactory_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickTextureFactory_timerEvent(self: ptr cQQuickTextureFactory, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QQuickTextureFactory_timerEvent ".} =
  var nimfunc = cast[ptr QQuickTextureFactorytimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QQuickTextureFactorychildEvent*(self: gen_qquickimageprovider_types.QQuickTextureFactory, event: gen_qcoreevent_types.QChildEvent): void =
  fQQuickTextureFactory_virtualbase_childEvent(self.h, event.h)

type QQuickTextureFactorychildEventProc* = proc(event: gen_qcoreevent_types.QChildEvent): void
proc onchildEvent*(self: gen_qquickimageprovider_types.QQuickTextureFactory, slot: QQuickTextureFactorychildEventProc) =
  # TODO check subclass
  var tmp = new QQuickTextureFactorychildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickTextureFactory_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickTextureFactory_childEvent(self: ptr cQQuickTextureFactory, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QQuickTextureFactory_childEvent ".} =
  var nimfunc = cast[ptr QQuickTextureFactorychildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QQuickTextureFactorycustomEvent*(self: gen_qquickimageprovider_types.QQuickTextureFactory, event: gen_qcoreevent_types.QEvent): void =
  fQQuickTextureFactory_virtualbase_customEvent(self.h, event.h)

type QQuickTextureFactorycustomEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc oncustomEvent*(self: gen_qquickimageprovider_types.QQuickTextureFactory, slot: QQuickTextureFactorycustomEventProc) =
  # TODO check subclass
  var tmp = new QQuickTextureFactorycustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickTextureFactory_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickTextureFactory_customEvent(self: ptr cQQuickTextureFactory, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QQuickTextureFactory_customEvent ".} =
  var nimfunc = cast[ptr QQuickTextureFactorycustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QQuickTextureFactoryconnectNotify*(self: gen_qquickimageprovider_types.QQuickTextureFactory, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQQuickTextureFactory_virtualbase_connectNotify(self.h, signal.h)

type QQuickTextureFactoryconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc onconnectNotify*(self: gen_qquickimageprovider_types.QQuickTextureFactory, slot: QQuickTextureFactoryconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QQuickTextureFactoryconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickTextureFactory_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickTextureFactory_connectNotify(self: ptr cQQuickTextureFactory, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QQuickTextureFactory_connectNotify ".} =
  var nimfunc = cast[ptr QQuickTextureFactoryconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QQuickTextureFactorydisconnectNotify*(self: gen_qquickimageprovider_types.QQuickTextureFactory, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQQuickTextureFactory_virtualbase_disconnectNotify(self.h, signal.h)

type QQuickTextureFactorydisconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qquickimageprovider_types.QQuickTextureFactory, slot: QQuickTextureFactorydisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QQuickTextureFactorydisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickTextureFactory_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickTextureFactory_disconnectNotify(self: ptr cQQuickTextureFactory, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QQuickTextureFactory_disconnectNotify ".} =
  var nimfunc = cast[ptr QQuickTextureFactorydisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc delete*(self: gen_qquickimageprovider_types.QQuickTextureFactory) =
  fcQQuickTextureFactory_delete(self.h)

func init*(T: type gen_qquickimageprovider_types.QQuickImageResponse, h: ptr cQQuickImageResponse): gen_qquickimageprovider_types.QQuickImageResponse =
  T(h: h)
proc create*(T: type gen_qquickimageprovider_types.QQuickImageResponse, ): gen_qquickimageprovider_types.QQuickImageResponse =
  gen_qquickimageprovider_types.QQuickImageResponse.init(fcQQuickImageResponse_new())

proc metaObject*(self: gen_qquickimageprovider_types.QQuickImageResponse, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQQuickImageResponse_metaObject(self.h))

proc metacast*(self: gen_qquickimageprovider_types.QQuickImageResponse, param1: cstring): pointer =
  fcQQuickImageResponse_metacast(self.h, param1)

proc tr*(_: type gen_qquickimageprovider_types.QQuickImageResponse, s: cstring): string =
  let v_ms = fcQQuickImageResponse_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc textureFactory*(self: gen_qquickimageprovider_types.QQuickImageResponse, ): gen_qquickimageprovider_types.QQuickTextureFactory =
  gen_qquickimageprovider_types.QQuickTextureFactory(h: fcQQuickImageResponse_textureFactory(self.h))

proc errorString*(self: gen_qquickimageprovider_types.QQuickImageResponse, ): string =
  let v_ms = fcQQuickImageResponse_errorString(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc cancel*(self: gen_qquickimageprovider_types.QQuickImageResponse, ): void =
  fcQQuickImageResponse_cancel(self.h)

proc finished*(self: gen_qquickimageprovider_types.QQuickImageResponse, ): void =
  fcQQuickImageResponse_finished(self.h)

type QQuickImageResponsefinishedSlot* = proc()
proc miqt_exec_callback_QQuickImageResponse_finished(slot: int) {.exportc.} =
  let nimfunc = cast[ptr QQuickImageResponsefinishedSlot](cast[pointer](slot))
  nimfunc[]()

proc onfinished*(self: gen_qquickimageprovider_types.QQuickImageResponse, slot: QQuickImageResponsefinishedSlot) =
  var tmp = new QQuickImageResponsefinishedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickImageResponse_connect_finished(self.h, cast[int](addr tmp[]))

proc tr*(_: type gen_qquickimageprovider_types.QQuickImageResponse, s: cstring, c: cstring): string =
  let v_ms = fcQQuickImageResponse_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qquickimageprovider_types.QQuickImageResponse, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQQuickImageResponse_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

type QQuickImageResponsetextureFactoryProc* = proc(): gen_qquickimageprovider_types.QQuickTextureFactory
proc ontextureFactory*(self: gen_qquickimageprovider_types.QQuickImageResponse, slot: QQuickImageResponsetextureFactoryProc) =
  # TODO check subclass
  var tmp = new QQuickImageResponsetextureFactoryProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickImageResponse_override_virtual_textureFactory(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickImageResponse_textureFactory(self: ptr cQQuickImageResponse, slot: int): pointer {.exportc: "miqt_exec_callback_QQuickImageResponse_textureFactory ".} =
  var nimfunc = cast[ptr QQuickImageResponsetextureFactoryProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QQuickImageResponseerrorString*(self: gen_qquickimageprovider_types.QQuickImageResponse, ): string =
  let v_ms = fQQuickImageResponse_virtualbase_errorString(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

type QQuickImageResponseerrorStringProc* = proc(): string
proc onerrorString*(self: gen_qquickimageprovider_types.QQuickImageResponse, slot: QQuickImageResponseerrorStringProc) =
  # TODO check subclass
  var tmp = new QQuickImageResponseerrorStringProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickImageResponse_override_virtual_errorString(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickImageResponse_errorString(self: ptr cQQuickImageResponse, slot: int): struct_miqt_string {.exportc: "miqt_exec_callback_QQuickImageResponse_errorString ".} =
  var nimfunc = cast[ptr QQuickImageResponseerrorStringProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  struct_miqt_string(data: virtualReturn, len: csize_t(len(virtualReturn)))
proc QQuickImageResponsecancel*(self: gen_qquickimageprovider_types.QQuickImageResponse, ): void =
  fQQuickImageResponse_virtualbase_cancel(self.h)

type QQuickImageResponsecancelProc* = proc(): void
proc oncancel*(self: gen_qquickimageprovider_types.QQuickImageResponse, slot: QQuickImageResponsecancelProc) =
  # TODO check subclass
  var tmp = new QQuickImageResponsecancelProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickImageResponse_override_virtual_cancel(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickImageResponse_cancel(self: ptr cQQuickImageResponse, slot: int): void {.exportc: "miqt_exec_callback_QQuickImageResponse_cancel ".} =
  var nimfunc = cast[ptr QQuickImageResponsecancelProc](cast[pointer](slot))

  nimfunc[]()
proc QQuickImageResponseevent*(self: gen_qquickimageprovider_types.QQuickImageResponse, event: gen_qcoreevent_types.QEvent): bool =
  fQQuickImageResponse_virtualbase_event(self.h, event.h)

type QQuickImageResponseeventProc* = proc(event: gen_qcoreevent_types.QEvent): bool
proc onevent*(self: gen_qquickimageprovider_types.QQuickImageResponse, slot: QQuickImageResponseeventProc) =
  # TODO check subclass
  var tmp = new QQuickImageResponseeventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickImageResponse_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickImageResponse_event(self: ptr cQQuickImageResponse, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QQuickImageResponse_event ".} =
  var nimfunc = cast[ptr QQuickImageResponseeventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QQuickImageResponseeventFilter*(self: gen_qquickimageprovider_types.QQuickImageResponse, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fQQuickImageResponse_virtualbase_eventFilter(self.h, watched.h, event.h)

type QQuickImageResponseeventFilterProc* = proc(watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool
proc oneventFilter*(self: gen_qquickimageprovider_types.QQuickImageResponse, slot: QQuickImageResponseeventFilterProc) =
  # TODO check subclass
  var tmp = new QQuickImageResponseeventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickImageResponse_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickImageResponse_eventFilter(self: ptr cQQuickImageResponse, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QQuickImageResponse_eventFilter ".} =
  var nimfunc = cast[ptr QQuickImageResponseeventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: watched)

  let slotval2 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QQuickImageResponsetimerEvent*(self: gen_qquickimageprovider_types.QQuickImageResponse, event: gen_qcoreevent_types.QTimerEvent): void =
  fQQuickImageResponse_virtualbase_timerEvent(self.h, event.h)

type QQuickImageResponsetimerEventProc* = proc(event: gen_qcoreevent_types.QTimerEvent): void
proc ontimerEvent*(self: gen_qquickimageprovider_types.QQuickImageResponse, slot: QQuickImageResponsetimerEventProc) =
  # TODO check subclass
  var tmp = new QQuickImageResponsetimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickImageResponse_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickImageResponse_timerEvent(self: ptr cQQuickImageResponse, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QQuickImageResponse_timerEvent ".} =
  var nimfunc = cast[ptr QQuickImageResponsetimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QQuickImageResponsechildEvent*(self: gen_qquickimageprovider_types.QQuickImageResponse, event: gen_qcoreevent_types.QChildEvent): void =
  fQQuickImageResponse_virtualbase_childEvent(self.h, event.h)

type QQuickImageResponsechildEventProc* = proc(event: gen_qcoreevent_types.QChildEvent): void
proc onchildEvent*(self: gen_qquickimageprovider_types.QQuickImageResponse, slot: QQuickImageResponsechildEventProc) =
  # TODO check subclass
  var tmp = new QQuickImageResponsechildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickImageResponse_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickImageResponse_childEvent(self: ptr cQQuickImageResponse, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QQuickImageResponse_childEvent ".} =
  var nimfunc = cast[ptr QQuickImageResponsechildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QQuickImageResponsecustomEvent*(self: gen_qquickimageprovider_types.QQuickImageResponse, event: gen_qcoreevent_types.QEvent): void =
  fQQuickImageResponse_virtualbase_customEvent(self.h, event.h)

type QQuickImageResponsecustomEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc oncustomEvent*(self: gen_qquickimageprovider_types.QQuickImageResponse, slot: QQuickImageResponsecustomEventProc) =
  # TODO check subclass
  var tmp = new QQuickImageResponsecustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickImageResponse_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickImageResponse_customEvent(self: ptr cQQuickImageResponse, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QQuickImageResponse_customEvent ".} =
  var nimfunc = cast[ptr QQuickImageResponsecustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QQuickImageResponseconnectNotify*(self: gen_qquickimageprovider_types.QQuickImageResponse, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQQuickImageResponse_virtualbase_connectNotify(self.h, signal.h)

type QQuickImageResponseconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc onconnectNotify*(self: gen_qquickimageprovider_types.QQuickImageResponse, slot: QQuickImageResponseconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QQuickImageResponseconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickImageResponse_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickImageResponse_connectNotify(self: ptr cQQuickImageResponse, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QQuickImageResponse_connectNotify ".} =
  var nimfunc = cast[ptr QQuickImageResponseconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QQuickImageResponsedisconnectNotify*(self: gen_qquickimageprovider_types.QQuickImageResponse, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQQuickImageResponse_virtualbase_disconnectNotify(self.h, signal.h)

type QQuickImageResponsedisconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qquickimageprovider_types.QQuickImageResponse, slot: QQuickImageResponsedisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QQuickImageResponsedisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickImageResponse_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickImageResponse_disconnectNotify(self: ptr cQQuickImageResponse, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QQuickImageResponse_disconnectNotify ".} =
  var nimfunc = cast[ptr QQuickImageResponsedisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc delete*(self: gen_qquickimageprovider_types.QQuickImageResponse) =
  fcQQuickImageResponse_delete(self.h)

func init*(T: type gen_qquickimageprovider_types.QQuickImageProvider, h: ptr cQQuickImageProvider): gen_qquickimageprovider_types.QQuickImageProvider =
  T(h: h)
proc create*(T: type gen_qquickimageprovider_types.QQuickImageProvider, typeVal: cint): gen_qquickimageprovider_types.QQuickImageProvider =
  gen_qquickimageprovider_types.QQuickImageProvider.init(fcQQuickImageProvider_new(cint(typeVal)))

proc create*(T: type gen_qquickimageprovider_types.QQuickImageProvider, typeVal: cint, flags: cint): gen_qquickimageprovider_types.QQuickImageProvider =
  gen_qquickimageprovider_types.QQuickImageProvider.init(fcQQuickImageProvider_new2(cint(typeVal), cint(flags)))

proc metaObject*(self: gen_qquickimageprovider_types.QQuickImageProvider, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQQuickImageProvider_metaObject(self.h))

proc metacast*(self: gen_qquickimageprovider_types.QQuickImageProvider, param1: cstring): pointer =
  fcQQuickImageProvider_metacast(self.h, param1)

proc tr*(_: type gen_qquickimageprovider_types.QQuickImageProvider, s: cstring): string =
  let v_ms = fcQQuickImageProvider_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc imageType*(self: gen_qquickimageprovider_types.QQuickImageProvider, ): cint =
  cint(fcQQuickImageProvider_imageType(self.h))

proc flags*(self: gen_qquickimageprovider_types.QQuickImageProvider, ): cint =
  cint(fcQQuickImageProvider_flags(self.h))

proc requestImage*(self: gen_qquickimageprovider_types.QQuickImageProvider, id: string, size: gen_qsize_types.QSize, requestedSize: gen_qsize_types.QSize): gen_qimage_types.QImage =
  gen_qimage_types.QImage(h: fcQQuickImageProvider_requestImage(self.h, struct_miqt_string(data: id, len: csize_t(len(id))), size.h, requestedSize.h))

proc requestPixmap*(self: gen_qquickimageprovider_types.QQuickImageProvider, id: string, size: gen_qsize_types.QSize, requestedSize: gen_qsize_types.QSize): gen_qpixmap_types.QPixmap =
  gen_qpixmap_types.QPixmap(h: fcQQuickImageProvider_requestPixmap(self.h, struct_miqt_string(data: id, len: csize_t(len(id))), size.h, requestedSize.h))

proc requestTexture*(self: gen_qquickimageprovider_types.QQuickImageProvider, id: string, size: gen_qsize_types.QSize, requestedSize: gen_qsize_types.QSize): gen_qquickimageprovider_types.QQuickTextureFactory =
  gen_qquickimageprovider_types.QQuickTextureFactory(h: fcQQuickImageProvider_requestTexture(self.h, struct_miqt_string(data: id, len: csize_t(len(id))), size.h, requestedSize.h))

proc tr*(_: type gen_qquickimageprovider_types.QQuickImageProvider, s: cstring, c: cstring): string =
  let v_ms = fcQQuickImageProvider_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qquickimageprovider_types.QQuickImageProvider, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQQuickImageProvider_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc QQuickImageProviderimageType*(self: gen_qquickimageprovider_types.QQuickImageProvider, ): cint =
  cint(fQQuickImageProvider_virtualbase_imageType(self.h))

type QQuickImageProviderimageTypeProc* = proc(): cint
proc onimageType*(self: gen_qquickimageprovider_types.QQuickImageProvider, slot: QQuickImageProviderimageTypeProc) =
  # TODO check subclass
  var tmp = new QQuickImageProviderimageTypeProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickImageProvider_override_virtual_imageType(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickImageProvider_imageType(self: ptr cQQuickImageProvider, slot: int): cint {.exportc: "miqt_exec_callback_QQuickImageProvider_imageType ".} =
  var nimfunc = cast[ptr QQuickImageProviderimageTypeProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  cint(virtualReturn)
proc QQuickImageProviderflags*(self: gen_qquickimageprovider_types.QQuickImageProvider, ): cint =
  cint(fQQuickImageProvider_virtualbase_flags(self.h))

type QQuickImageProviderflagsProc* = proc(): cint
proc onflags*(self: gen_qquickimageprovider_types.QQuickImageProvider, slot: QQuickImageProviderflagsProc) =
  # TODO check subclass
  var tmp = new QQuickImageProviderflagsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickImageProvider_override_virtual_flags(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickImageProvider_flags(self: ptr cQQuickImageProvider, slot: int): cint {.exportc: "miqt_exec_callback_QQuickImageProvider_flags ".} =
  var nimfunc = cast[ptr QQuickImageProviderflagsProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  cint(virtualReturn)
proc QQuickImageProviderrequestImage*(self: gen_qquickimageprovider_types.QQuickImageProvider, id: string, size: gen_qsize_types.QSize, requestedSize: gen_qsize_types.QSize): gen_qimage_types.QImage =
  gen_qimage_types.QImage(h: fQQuickImageProvider_virtualbase_requestImage(self.h, struct_miqt_string(data: id, len: csize_t(len(id))), size.h, requestedSize.h))

type QQuickImageProviderrequestImageProc* = proc(id: string, size: gen_qsize_types.QSize, requestedSize: gen_qsize_types.QSize): gen_qimage_types.QImage
proc onrequestImage*(self: gen_qquickimageprovider_types.QQuickImageProvider, slot: QQuickImageProviderrequestImageProc) =
  # TODO check subclass
  var tmp = new QQuickImageProviderrequestImageProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickImageProvider_override_virtual_requestImage(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickImageProvider_requestImage(self: ptr cQQuickImageProvider, slot: int, id: struct_miqt_string, size: pointer, requestedSize: pointer): pointer {.exportc: "miqt_exec_callback_QQuickImageProvider_requestImage ".} =
  var nimfunc = cast[ptr QQuickImageProviderrequestImageProc](cast[pointer](slot))
  let vid_ms = id
  let vidx_ret = string.fromBytes(toOpenArrayByte(vid_ms.data, 0, int(vid_ms.len)-1))
  c_free(vid_ms.data)
  let slotval1 = vidx_ret

  let slotval2 = gen_qsize_types.QSize(h: size)

  let slotval3 = gen_qsize_types.QSize(h: requestedSize)


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn.h
proc QQuickImageProviderrequestPixmap*(self: gen_qquickimageprovider_types.QQuickImageProvider, id: string, size: gen_qsize_types.QSize, requestedSize: gen_qsize_types.QSize): gen_qpixmap_types.QPixmap =
  gen_qpixmap_types.QPixmap(h: fQQuickImageProvider_virtualbase_requestPixmap(self.h, struct_miqt_string(data: id, len: csize_t(len(id))), size.h, requestedSize.h))

type QQuickImageProviderrequestPixmapProc* = proc(id: string, size: gen_qsize_types.QSize, requestedSize: gen_qsize_types.QSize): gen_qpixmap_types.QPixmap
proc onrequestPixmap*(self: gen_qquickimageprovider_types.QQuickImageProvider, slot: QQuickImageProviderrequestPixmapProc) =
  # TODO check subclass
  var tmp = new QQuickImageProviderrequestPixmapProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickImageProvider_override_virtual_requestPixmap(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickImageProvider_requestPixmap(self: ptr cQQuickImageProvider, slot: int, id: struct_miqt_string, size: pointer, requestedSize: pointer): pointer {.exportc: "miqt_exec_callback_QQuickImageProvider_requestPixmap ".} =
  var nimfunc = cast[ptr QQuickImageProviderrequestPixmapProc](cast[pointer](slot))
  let vid_ms = id
  let vidx_ret = string.fromBytes(toOpenArrayByte(vid_ms.data, 0, int(vid_ms.len)-1))
  c_free(vid_ms.data)
  let slotval1 = vidx_ret

  let slotval2 = gen_qsize_types.QSize(h: size)

  let slotval3 = gen_qsize_types.QSize(h: requestedSize)


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn.h
proc QQuickImageProviderrequestTexture*(self: gen_qquickimageprovider_types.QQuickImageProvider, id: string, size: gen_qsize_types.QSize, requestedSize: gen_qsize_types.QSize): gen_qquickimageprovider_types.QQuickTextureFactory =
  gen_qquickimageprovider_types.QQuickTextureFactory(h: fQQuickImageProvider_virtualbase_requestTexture(self.h, struct_miqt_string(data: id, len: csize_t(len(id))), size.h, requestedSize.h))

type QQuickImageProviderrequestTextureProc* = proc(id: string, size: gen_qsize_types.QSize, requestedSize: gen_qsize_types.QSize): gen_qquickimageprovider_types.QQuickTextureFactory
proc onrequestTexture*(self: gen_qquickimageprovider_types.QQuickImageProvider, slot: QQuickImageProviderrequestTextureProc) =
  # TODO check subclass
  var tmp = new QQuickImageProviderrequestTextureProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickImageProvider_override_virtual_requestTexture(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickImageProvider_requestTexture(self: ptr cQQuickImageProvider, slot: int, id: struct_miqt_string, size: pointer, requestedSize: pointer): pointer {.exportc: "miqt_exec_callback_QQuickImageProvider_requestTexture ".} =
  var nimfunc = cast[ptr QQuickImageProviderrequestTextureProc](cast[pointer](slot))
  let vid_ms = id
  let vidx_ret = string.fromBytes(toOpenArrayByte(vid_ms.data, 0, int(vid_ms.len)-1))
  c_free(vid_ms.data)
  let slotval1 = vidx_ret

  let slotval2 = gen_qsize_types.QSize(h: size)

  let slotval3 = gen_qsize_types.QSize(h: requestedSize)


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn.h
proc QQuickImageProviderevent*(self: gen_qquickimageprovider_types.QQuickImageProvider, event: gen_qcoreevent_types.QEvent): bool =
  fQQuickImageProvider_virtualbase_event(self.h, event.h)

type QQuickImageProvidereventProc* = proc(event: gen_qcoreevent_types.QEvent): bool
proc onevent*(self: gen_qquickimageprovider_types.QQuickImageProvider, slot: QQuickImageProvidereventProc) =
  # TODO check subclass
  var tmp = new QQuickImageProvidereventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickImageProvider_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickImageProvider_event(self: ptr cQQuickImageProvider, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QQuickImageProvider_event ".} =
  var nimfunc = cast[ptr QQuickImageProvidereventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QQuickImageProvidereventFilter*(self: gen_qquickimageprovider_types.QQuickImageProvider, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fQQuickImageProvider_virtualbase_eventFilter(self.h, watched.h, event.h)

type QQuickImageProvidereventFilterProc* = proc(watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool
proc oneventFilter*(self: gen_qquickimageprovider_types.QQuickImageProvider, slot: QQuickImageProvidereventFilterProc) =
  # TODO check subclass
  var tmp = new QQuickImageProvidereventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickImageProvider_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickImageProvider_eventFilter(self: ptr cQQuickImageProvider, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QQuickImageProvider_eventFilter ".} =
  var nimfunc = cast[ptr QQuickImageProvidereventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: watched)

  let slotval2 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QQuickImageProvidertimerEvent*(self: gen_qquickimageprovider_types.QQuickImageProvider, event: gen_qcoreevent_types.QTimerEvent): void =
  fQQuickImageProvider_virtualbase_timerEvent(self.h, event.h)

type QQuickImageProvidertimerEventProc* = proc(event: gen_qcoreevent_types.QTimerEvent): void
proc ontimerEvent*(self: gen_qquickimageprovider_types.QQuickImageProvider, slot: QQuickImageProvidertimerEventProc) =
  # TODO check subclass
  var tmp = new QQuickImageProvidertimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickImageProvider_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickImageProvider_timerEvent(self: ptr cQQuickImageProvider, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QQuickImageProvider_timerEvent ".} =
  var nimfunc = cast[ptr QQuickImageProvidertimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QQuickImageProviderchildEvent*(self: gen_qquickimageprovider_types.QQuickImageProvider, event: gen_qcoreevent_types.QChildEvent): void =
  fQQuickImageProvider_virtualbase_childEvent(self.h, event.h)

type QQuickImageProviderchildEventProc* = proc(event: gen_qcoreevent_types.QChildEvent): void
proc onchildEvent*(self: gen_qquickimageprovider_types.QQuickImageProvider, slot: QQuickImageProviderchildEventProc) =
  # TODO check subclass
  var tmp = new QQuickImageProviderchildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickImageProvider_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickImageProvider_childEvent(self: ptr cQQuickImageProvider, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QQuickImageProvider_childEvent ".} =
  var nimfunc = cast[ptr QQuickImageProviderchildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QQuickImageProvidercustomEvent*(self: gen_qquickimageprovider_types.QQuickImageProvider, event: gen_qcoreevent_types.QEvent): void =
  fQQuickImageProvider_virtualbase_customEvent(self.h, event.h)

type QQuickImageProvidercustomEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc oncustomEvent*(self: gen_qquickimageprovider_types.QQuickImageProvider, slot: QQuickImageProvidercustomEventProc) =
  # TODO check subclass
  var tmp = new QQuickImageProvidercustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickImageProvider_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickImageProvider_customEvent(self: ptr cQQuickImageProvider, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QQuickImageProvider_customEvent ".} =
  var nimfunc = cast[ptr QQuickImageProvidercustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QQuickImageProviderconnectNotify*(self: gen_qquickimageprovider_types.QQuickImageProvider, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQQuickImageProvider_virtualbase_connectNotify(self.h, signal.h)

type QQuickImageProviderconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc onconnectNotify*(self: gen_qquickimageprovider_types.QQuickImageProvider, slot: QQuickImageProviderconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QQuickImageProviderconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickImageProvider_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickImageProvider_connectNotify(self: ptr cQQuickImageProvider, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QQuickImageProvider_connectNotify ".} =
  var nimfunc = cast[ptr QQuickImageProviderconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QQuickImageProviderdisconnectNotify*(self: gen_qquickimageprovider_types.QQuickImageProvider, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQQuickImageProvider_virtualbase_disconnectNotify(self.h, signal.h)

type QQuickImageProviderdisconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qquickimageprovider_types.QQuickImageProvider, slot: QQuickImageProviderdisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QQuickImageProviderdisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickImageProvider_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickImageProvider_disconnectNotify(self: ptr cQQuickImageProvider, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QQuickImageProvider_disconnectNotify ".} =
  var nimfunc = cast[ptr QQuickImageProviderdisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc delete*(self: gen_qquickimageprovider_types.QQuickImageProvider) =
  fcQQuickImageProvider_delete(self.h)

func init*(T: type gen_qquickimageprovider_types.QQuickAsyncImageProvider, h: ptr cQQuickAsyncImageProvider): gen_qquickimageprovider_types.QQuickAsyncImageProvider =
  T(h: h)
proc create*(T: type gen_qquickimageprovider_types.QQuickAsyncImageProvider, ): gen_qquickimageprovider_types.QQuickAsyncImageProvider =
  gen_qquickimageprovider_types.QQuickAsyncImageProvider.init(fcQQuickAsyncImageProvider_new())

proc requestImageResponse*(self: gen_qquickimageprovider_types.QQuickAsyncImageProvider, id: string, requestedSize: gen_qsize_types.QSize): gen_qquickimageprovider_types.QQuickImageResponse =
  gen_qquickimageprovider_types.QQuickImageResponse(h: fcQQuickAsyncImageProvider_requestImageResponse(self.h, struct_miqt_string(data: id, len: csize_t(len(id))), requestedSize.h))

type QQuickAsyncImageProviderrequestImageResponseProc* = proc(id: string, requestedSize: gen_qsize_types.QSize): gen_qquickimageprovider_types.QQuickImageResponse
proc onrequestImageResponse*(self: gen_qquickimageprovider_types.QQuickAsyncImageProvider, slot: QQuickAsyncImageProviderrequestImageResponseProc) =
  # TODO check subclass
  var tmp = new QQuickAsyncImageProviderrequestImageResponseProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickAsyncImageProvider_override_virtual_requestImageResponse(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickAsyncImageProvider_requestImageResponse(self: ptr cQQuickAsyncImageProvider, slot: int, id: struct_miqt_string, requestedSize: pointer): pointer {.exportc: "miqt_exec_callback_QQuickAsyncImageProvider_requestImageResponse ".} =
  var nimfunc = cast[ptr QQuickAsyncImageProviderrequestImageResponseProc](cast[pointer](slot))
  let vid_ms = id
  let vidx_ret = string.fromBytes(toOpenArrayByte(vid_ms.data, 0, int(vid_ms.len)-1))
  c_free(vid_ms.data)
  let slotval1 = vidx_ret

  let slotval2 = gen_qsize_types.QSize(h: requestedSize)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn.h
proc QQuickAsyncImageProviderimageType*(self: gen_qquickimageprovider_types.QQuickAsyncImageProvider, ): cint =
  cint(fQQuickAsyncImageProvider_virtualbase_imageType(self.h))

type QQuickAsyncImageProviderimageTypeProc* = proc(): cint
proc onimageType*(self: gen_qquickimageprovider_types.QQuickAsyncImageProvider, slot: QQuickAsyncImageProviderimageTypeProc) =
  # TODO check subclass
  var tmp = new QQuickAsyncImageProviderimageTypeProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickAsyncImageProvider_override_virtual_imageType(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickAsyncImageProvider_imageType(self: ptr cQQuickAsyncImageProvider, slot: int): cint {.exportc: "miqt_exec_callback_QQuickAsyncImageProvider_imageType ".} =
  var nimfunc = cast[ptr QQuickAsyncImageProviderimageTypeProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  cint(virtualReturn)
proc QQuickAsyncImageProviderflags*(self: gen_qquickimageprovider_types.QQuickAsyncImageProvider, ): cint =
  cint(fQQuickAsyncImageProvider_virtualbase_flags(self.h))

type QQuickAsyncImageProviderflagsProc* = proc(): cint
proc onflags*(self: gen_qquickimageprovider_types.QQuickAsyncImageProvider, slot: QQuickAsyncImageProviderflagsProc) =
  # TODO check subclass
  var tmp = new QQuickAsyncImageProviderflagsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickAsyncImageProvider_override_virtual_flags(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickAsyncImageProvider_flags(self: ptr cQQuickAsyncImageProvider, slot: int): cint {.exportc: "miqt_exec_callback_QQuickAsyncImageProvider_flags ".} =
  var nimfunc = cast[ptr QQuickAsyncImageProviderflagsProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  cint(virtualReturn)
proc QQuickAsyncImageProviderrequestImage*(self: gen_qquickimageprovider_types.QQuickAsyncImageProvider, id: string, size: gen_qsize_types.QSize, requestedSize: gen_qsize_types.QSize): gen_qimage_types.QImage =
  gen_qimage_types.QImage(h: fQQuickAsyncImageProvider_virtualbase_requestImage(self.h, struct_miqt_string(data: id, len: csize_t(len(id))), size.h, requestedSize.h))

type QQuickAsyncImageProviderrequestImageProc* = proc(id: string, size: gen_qsize_types.QSize, requestedSize: gen_qsize_types.QSize): gen_qimage_types.QImage
proc onrequestImage*(self: gen_qquickimageprovider_types.QQuickAsyncImageProvider, slot: QQuickAsyncImageProviderrequestImageProc) =
  # TODO check subclass
  var tmp = new QQuickAsyncImageProviderrequestImageProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickAsyncImageProvider_override_virtual_requestImage(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickAsyncImageProvider_requestImage(self: ptr cQQuickAsyncImageProvider, slot: int, id: struct_miqt_string, size: pointer, requestedSize: pointer): pointer {.exportc: "miqt_exec_callback_QQuickAsyncImageProvider_requestImage ".} =
  var nimfunc = cast[ptr QQuickAsyncImageProviderrequestImageProc](cast[pointer](slot))
  let vid_ms = id
  let vidx_ret = string.fromBytes(toOpenArrayByte(vid_ms.data, 0, int(vid_ms.len)-1))
  c_free(vid_ms.data)
  let slotval1 = vidx_ret

  let slotval2 = gen_qsize_types.QSize(h: size)

  let slotval3 = gen_qsize_types.QSize(h: requestedSize)


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn.h
proc QQuickAsyncImageProviderrequestPixmap*(self: gen_qquickimageprovider_types.QQuickAsyncImageProvider, id: string, size: gen_qsize_types.QSize, requestedSize: gen_qsize_types.QSize): gen_qpixmap_types.QPixmap =
  gen_qpixmap_types.QPixmap(h: fQQuickAsyncImageProvider_virtualbase_requestPixmap(self.h, struct_miqt_string(data: id, len: csize_t(len(id))), size.h, requestedSize.h))

type QQuickAsyncImageProviderrequestPixmapProc* = proc(id: string, size: gen_qsize_types.QSize, requestedSize: gen_qsize_types.QSize): gen_qpixmap_types.QPixmap
proc onrequestPixmap*(self: gen_qquickimageprovider_types.QQuickAsyncImageProvider, slot: QQuickAsyncImageProviderrequestPixmapProc) =
  # TODO check subclass
  var tmp = new QQuickAsyncImageProviderrequestPixmapProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickAsyncImageProvider_override_virtual_requestPixmap(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickAsyncImageProvider_requestPixmap(self: ptr cQQuickAsyncImageProvider, slot: int, id: struct_miqt_string, size: pointer, requestedSize: pointer): pointer {.exportc: "miqt_exec_callback_QQuickAsyncImageProvider_requestPixmap ".} =
  var nimfunc = cast[ptr QQuickAsyncImageProviderrequestPixmapProc](cast[pointer](slot))
  let vid_ms = id
  let vidx_ret = string.fromBytes(toOpenArrayByte(vid_ms.data, 0, int(vid_ms.len)-1))
  c_free(vid_ms.data)
  let slotval1 = vidx_ret

  let slotval2 = gen_qsize_types.QSize(h: size)

  let slotval3 = gen_qsize_types.QSize(h: requestedSize)


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn.h
proc QQuickAsyncImageProviderrequestTexture*(self: gen_qquickimageprovider_types.QQuickAsyncImageProvider, id: string, size: gen_qsize_types.QSize, requestedSize: gen_qsize_types.QSize): gen_qquickimageprovider_types.QQuickTextureFactory =
  gen_qquickimageprovider_types.QQuickTextureFactory(h: fQQuickAsyncImageProvider_virtualbase_requestTexture(self.h, struct_miqt_string(data: id, len: csize_t(len(id))), size.h, requestedSize.h))

type QQuickAsyncImageProviderrequestTextureProc* = proc(id: string, size: gen_qsize_types.QSize, requestedSize: gen_qsize_types.QSize): gen_qquickimageprovider_types.QQuickTextureFactory
proc onrequestTexture*(self: gen_qquickimageprovider_types.QQuickAsyncImageProvider, slot: QQuickAsyncImageProviderrequestTextureProc) =
  # TODO check subclass
  var tmp = new QQuickAsyncImageProviderrequestTextureProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickAsyncImageProvider_override_virtual_requestTexture(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickAsyncImageProvider_requestTexture(self: ptr cQQuickAsyncImageProvider, slot: int, id: struct_miqt_string, size: pointer, requestedSize: pointer): pointer {.exportc: "miqt_exec_callback_QQuickAsyncImageProvider_requestTexture ".} =
  var nimfunc = cast[ptr QQuickAsyncImageProviderrequestTextureProc](cast[pointer](slot))
  let vid_ms = id
  let vidx_ret = string.fromBytes(toOpenArrayByte(vid_ms.data, 0, int(vid_ms.len)-1))
  c_free(vid_ms.data)
  let slotval1 = vidx_ret

  let slotval2 = gen_qsize_types.QSize(h: size)

  let slotval3 = gen_qsize_types.QSize(h: requestedSize)


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn.h
proc QQuickAsyncImageProviderevent*(self: gen_qquickimageprovider_types.QQuickAsyncImageProvider, event: gen_qcoreevent_types.QEvent): bool =
  fQQuickAsyncImageProvider_virtualbase_event(self.h, event.h)

type QQuickAsyncImageProvidereventProc* = proc(event: gen_qcoreevent_types.QEvent): bool
proc onevent*(self: gen_qquickimageprovider_types.QQuickAsyncImageProvider, slot: QQuickAsyncImageProvidereventProc) =
  # TODO check subclass
  var tmp = new QQuickAsyncImageProvidereventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickAsyncImageProvider_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickAsyncImageProvider_event(self: ptr cQQuickAsyncImageProvider, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QQuickAsyncImageProvider_event ".} =
  var nimfunc = cast[ptr QQuickAsyncImageProvidereventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QQuickAsyncImageProvidereventFilter*(self: gen_qquickimageprovider_types.QQuickAsyncImageProvider, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fQQuickAsyncImageProvider_virtualbase_eventFilter(self.h, watched.h, event.h)

type QQuickAsyncImageProvidereventFilterProc* = proc(watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool
proc oneventFilter*(self: gen_qquickimageprovider_types.QQuickAsyncImageProvider, slot: QQuickAsyncImageProvidereventFilterProc) =
  # TODO check subclass
  var tmp = new QQuickAsyncImageProvidereventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickAsyncImageProvider_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickAsyncImageProvider_eventFilter(self: ptr cQQuickAsyncImageProvider, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QQuickAsyncImageProvider_eventFilter ".} =
  var nimfunc = cast[ptr QQuickAsyncImageProvidereventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: watched)

  let slotval2 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QQuickAsyncImageProvidertimerEvent*(self: gen_qquickimageprovider_types.QQuickAsyncImageProvider, event: gen_qcoreevent_types.QTimerEvent): void =
  fQQuickAsyncImageProvider_virtualbase_timerEvent(self.h, event.h)

type QQuickAsyncImageProvidertimerEventProc* = proc(event: gen_qcoreevent_types.QTimerEvent): void
proc ontimerEvent*(self: gen_qquickimageprovider_types.QQuickAsyncImageProvider, slot: QQuickAsyncImageProvidertimerEventProc) =
  # TODO check subclass
  var tmp = new QQuickAsyncImageProvidertimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickAsyncImageProvider_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickAsyncImageProvider_timerEvent(self: ptr cQQuickAsyncImageProvider, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QQuickAsyncImageProvider_timerEvent ".} =
  var nimfunc = cast[ptr QQuickAsyncImageProvidertimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QQuickAsyncImageProviderchildEvent*(self: gen_qquickimageprovider_types.QQuickAsyncImageProvider, event: gen_qcoreevent_types.QChildEvent): void =
  fQQuickAsyncImageProvider_virtualbase_childEvent(self.h, event.h)

type QQuickAsyncImageProviderchildEventProc* = proc(event: gen_qcoreevent_types.QChildEvent): void
proc onchildEvent*(self: gen_qquickimageprovider_types.QQuickAsyncImageProvider, slot: QQuickAsyncImageProviderchildEventProc) =
  # TODO check subclass
  var tmp = new QQuickAsyncImageProviderchildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickAsyncImageProvider_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickAsyncImageProvider_childEvent(self: ptr cQQuickAsyncImageProvider, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QQuickAsyncImageProvider_childEvent ".} =
  var nimfunc = cast[ptr QQuickAsyncImageProviderchildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QQuickAsyncImageProvidercustomEvent*(self: gen_qquickimageprovider_types.QQuickAsyncImageProvider, event: gen_qcoreevent_types.QEvent): void =
  fQQuickAsyncImageProvider_virtualbase_customEvent(self.h, event.h)

type QQuickAsyncImageProvidercustomEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc oncustomEvent*(self: gen_qquickimageprovider_types.QQuickAsyncImageProvider, slot: QQuickAsyncImageProvidercustomEventProc) =
  # TODO check subclass
  var tmp = new QQuickAsyncImageProvidercustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickAsyncImageProvider_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickAsyncImageProvider_customEvent(self: ptr cQQuickAsyncImageProvider, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QQuickAsyncImageProvider_customEvent ".} =
  var nimfunc = cast[ptr QQuickAsyncImageProvidercustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QQuickAsyncImageProviderconnectNotify*(self: gen_qquickimageprovider_types.QQuickAsyncImageProvider, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQQuickAsyncImageProvider_virtualbase_connectNotify(self.h, signal.h)

type QQuickAsyncImageProviderconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc onconnectNotify*(self: gen_qquickimageprovider_types.QQuickAsyncImageProvider, slot: QQuickAsyncImageProviderconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QQuickAsyncImageProviderconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickAsyncImageProvider_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickAsyncImageProvider_connectNotify(self: ptr cQQuickAsyncImageProvider, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QQuickAsyncImageProvider_connectNotify ".} =
  var nimfunc = cast[ptr QQuickAsyncImageProviderconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QQuickAsyncImageProviderdisconnectNotify*(self: gen_qquickimageprovider_types.QQuickAsyncImageProvider, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQQuickAsyncImageProvider_virtualbase_disconnectNotify(self.h, signal.h)

type QQuickAsyncImageProviderdisconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qquickimageprovider_types.QQuickAsyncImageProvider, slot: QQuickAsyncImageProviderdisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QQuickAsyncImageProviderdisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickAsyncImageProvider_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickAsyncImageProvider_disconnectNotify(self: ptr cQQuickAsyncImageProvider, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QQuickAsyncImageProvider_disconnectNotify ".} =
  var nimfunc = cast[ptr QQuickAsyncImageProviderdisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc delete*(self: gen_qquickimageprovider_types.QQuickAsyncImageProvider) =
  fcQQuickAsyncImageProvider_delete(self.h)
