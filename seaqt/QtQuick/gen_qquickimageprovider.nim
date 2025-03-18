import ./qtquick_pkg

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


{.compile("gen_qquickimageprovider.cpp", QtQuickCFlags).}


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

proc fcQQuickTextureFactory_metaObject(self: pointer): pointer {.importc: "QQuickTextureFactory_metaObject".}
proc fcQQuickTextureFactory_metacast(self: pointer, param1: cstring): pointer {.importc: "QQuickTextureFactory_metacast".}
proc fcQQuickTextureFactory_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QQuickTextureFactory_metacall".}
proc fcQQuickTextureFactory_tr(s: cstring): struct_miqt_string {.importc: "QQuickTextureFactory_tr".}
proc fcQQuickTextureFactory_trUtf8(s: cstring): struct_miqt_string {.importc: "QQuickTextureFactory_trUtf8".}
proc fcQQuickTextureFactory_createTexture(self: pointer, window: pointer): pointer {.importc: "QQuickTextureFactory_createTexture".}
proc fcQQuickTextureFactory_textureSize(self: pointer): pointer {.importc: "QQuickTextureFactory_textureSize".}
proc fcQQuickTextureFactory_textureByteCount(self: pointer): cint {.importc: "QQuickTextureFactory_textureByteCount".}
proc fcQQuickTextureFactory_image(self: pointer): pointer {.importc: "QQuickTextureFactory_image".}
proc fcQQuickTextureFactory_textureFactoryForImage(image: pointer): pointer {.importc: "QQuickTextureFactory_textureFactoryForImage".}
proc fcQQuickTextureFactory_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QQuickTextureFactory_tr2".}
proc fcQQuickTextureFactory_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QQuickTextureFactory_tr3".}
proc fcQQuickTextureFactory_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QQuickTextureFactory_trUtf82".}
proc fcQQuickTextureFactory_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QQuickTextureFactory_trUtf83".}
proc fcQQuickTextureFactory_vtbl(self: pointer): pointer {.importc: "QQuickTextureFactory_vtbl".}
proc fcQQuickTextureFactory_vdata(self: pointer): pointer {.importc: "QQuickTextureFactory_vdata".}

type cQQuickTextureFactoryVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  createTexture*: proc(self: pointer, window: pointer): pointer {.cdecl, raises: [], gcsafe.}
  textureSize*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  textureByteCount*: proc(self: pointer): cint {.cdecl, raises: [], gcsafe.}
  image*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  event*: proc(self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQQuickTextureFactory_virtualbase_metaObject(self: pointer): pointer {.importc: "QQuickTextureFactory_virtualbase_metaObject".}
proc fcQQuickTextureFactory_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QQuickTextureFactory_virtualbase_metacast".}
proc fcQQuickTextureFactory_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QQuickTextureFactory_virtualbase_metacall".}
proc fcQQuickTextureFactory_virtualbase_image(self: pointer): pointer {.importc: "QQuickTextureFactory_virtualbase_image".}
proc fcQQuickTextureFactory_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QQuickTextureFactory_virtualbase_event".}
proc fcQQuickTextureFactory_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QQuickTextureFactory_virtualbase_eventFilter".}
proc fcQQuickTextureFactory_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QQuickTextureFactory_virtualbase_timerEvent".}
proc fcQQuickTextureFactory_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QQuickTextureFactory_virtualbase_childEvent".}
proc fcQQuickTextureFactory_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QQuickTextureFactory_virtualbase_customEvent".}
proc fcQQuickTextureFactory_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QQuickTextureFactory_virtualbase_connectNotify".}
proc fcQQuickTextureFactory_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QQuickTextureFactory_virtualbase_disconnectNotify".}
proc fcQQuickTextureFactory_protectedbase_sender(self: pointer): pointer {.importc: "QQuickTextureFactory_protectedbase_sender".}
proc fcQQuickTextureFactory_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QQuickTextureFactory_protectedbase_senderSignalIndex".}
proc fcQQuickTextureFactory_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QQuickTextureFactory_protectedbase_receivers".}
proc fcQQuickTextureFactory_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QQuickTextureFactory_protectedbase_isSignalConnected".}
proc fcQQuickTextureFactory_new(vtbl, vdata: pointer): ptr cQQuickTextureFactory {.importc: "QQuickTextureFactory_new".}
proc fcQQuickTextureFactory_staticMetaObject(): pointer {.importc: "QQuickTextureFactory_staticMetaObject".}
proc fcQQuickImageResponse_metaObject(self: pointer): pointer {.importc: "QQuickImageResponse_metaObject".}
proc fcQQuickImageResponse_metacast(self: pointer, param1: cstring): pointer {.importc: "QQuickImageResponse_metacast".}
proc fcQQuickImageResponse_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QQuickImageResponse_metacall".}
proc fcQQuickImageResponse_tr(s: cstring): struct_miqt_string {.importc: "QQuickImageResponse_tr".}
proc fcQQuickImageResponse_trUtf8(s: cstring): struct_miqt_string {.importc: "QQuickImageResponse_trUtf8".}
proc fcQQuickImageResponse_textureFactory(self: pointer): pointer {.importc: "QQuickImageResponse_textureFactory".}
proc fcQQuickImageResponse_errorString(self: pointer): struct_miqt_string {.importc: "QQuickImageResponse_errorString".}
proc fcQQuickImageResponse_cancel(self: pointer): void {.importc: "QQuickImageResponse_cancel".}
proc fcQQuickImageResponse_finished(self: pointer): void {.importc: "QQuickImageResponse_finished".}
proc fcQQuickImageResponse_connect_finished(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QQuickImageResponse_connect_finished".}
proc fcQQuickImageResponse_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QQuickImageResponse_tr2".}
proc fcQQuickImageResponse_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QQuickImageResponse_tr3".}
proc fcQQuickImageResponse_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QQuickImageResponse_trUtf82".}
proc fcQQuickImageResponse_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QQuickImageResponse_trUtf83".}
proc fcQQuickImageResponse_vtbl(self: pointer): pointer {.importc: "QQuickImageResponse_vtbl".}
proc fcQQuickImageResponse_vdata(self: pointer): pointer {.importc: "QQuickImageResponse_vdata".}

type cQQuickImageResponseVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  textureFactory*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  errorString*: proc(self: pointer): struct_miqt_string {.cdecl, raises: [], gcsafe.}
  cancel*: proc(self: pointer): void {.cdecl, raises: [], gcsafe.}
  event*: proc(self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQQuickImageResponse_virtualbase_metaObject(self: pointer): pointer {.importc: "QQuickImageResponse_virtualbase_metaObject".}
proc fcQQuickImageResponse_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QQuickImageResponse_virtualbase_metacast".}
proc fcQQuickImageResponse_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QQuickImageResponse_virtualbase_metacall".}
proc fcQQuickImageResponse_virtualbase_errorString(self: pointer): struct_miqt_string {.importc: "QQuickImageResponse_virtualbase_errorString".}
proc fcQQuickImageResponse_virtualbase_cancel(self: pointer): void {.importc: "QQuickImageResponse_virtualbase_cancel".}
proc fcQQuickImageResponse_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QQuickImageResponse_virtualbase_event".}
proc fcQQuickImageResponse_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QQuickImageResponse_virtualbase_eventFilter".}
proc fcQQuickImageResponse_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QQuickImageResponse_virtualbase_timerEvent".}
proc fcQQuickImageResponse_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QQuickImageResponse_virtualbase_childEvent".}
proc fcQQuickImageResponse_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QQuickImageResponse_virtualbase_customEvent".}
proc fcQQuickImageResponse_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QQuickImageResponse_virtualbase_connectNotify".}
proc fcQQuickImageResponse_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QQuickImageResponse_virtualbase_disconnectNotify".}
proc fcQQuickImageResponse_protectedbase_sender(self: pointer): pointer {.importc: "QQuickImageResponse_protectedbase_sender".}
proc fcQQuickImageResponse_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QQuickImageResponse_protectedbase_senderSignalIndex".}
proc fcQQuickImageResponse_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QQuickImageResponse_protectedbase_receivers".}
proc fcQQuickImageResponse_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QQuickImageResponse_protectedbase_isSignalConnected".}
proc fcQQuickImageResponse_new(vtbl, vdata: pointer): ptr cQQuickImageResponse {.importc: "QQuickImageResponse_new".}
proc fcQQuickImageResponse_staticMetaObject(): pointer {.importc: "QQuickImageResponse_staticMetaObject".}
proc fcQQuickImageProvider_imageType(self: pointer): cint {.importc: "QQuickImageProvider_imageType".}
proc fcQQuickImageProvider_flags(self: pointer): cint {.importc: "QQuickImageProvider_flags".}
proc fcQQuickImageProvider_requestImage(self: pointer, id: struct_miqt_string, size: pointer, requestedSize: pointer): pointer {.importc: "QQuickImageProvider_requestImage".}
proc fcQQuickImageProvider_requestPixmap(self: pointer, id: struct_miqt_string, size: pointer, requestedSize: pointer): pointer {.importc: "QQuickImageProvider_requestPixmap".}
proc fcQQuickImageProvider_requestTexture(self: pointer, id: struct_miqt_string, size: pointer, requestedSize: pointer): pointer {.importc: "QQuickImageProvider_requestTexture".}
proc fcQQuickImageProvider_vtbl(self: pointer): pointer {.importc: "QQuickImageProvider_vtbl".}
proc fcQQuickImageProvider_vdata(self: pointer): pointer {.importc: "QQuickImageProvider_vdata".}

type cQQuickImageProviderVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  imageType*: proc(self: pointer): cint {.cdecl, raises: [], gcsafe.}
  flags*: proc(self: pointer): cint {.cdecl, raises: [], gcsafe.}
  requestImage*: proc(self: pointer, id: struct_miqt_string, size: pointer, requestedSize: pointer): pointer {.cdecl, raises: [], gcsafe.}
  requestPixmap*: proc(self: pointer, id: struct_miqt_string, size: pointer, requestedSize: pointer): pointer {.cdecl, raises: [], gcsafe.}
  requestTexture*: proc(self: pointer, id: struct_miqt_string, size: pointer, requestedSize: pointer): pointer {.cdecl, raises: [], gcsafe.}
proc fcQQuickImageProvider_virtualbase_imageType(self: pointer): cint {.importc: "QQuickImageProvider_virtualbase_imageType".}
proc fcQQuickImageProvider_virtualbase_flags(self: pointer): cint {.importc: "QQuickImageProvider_virtualbase_flags".}
proc fcQQuickImageProvider_virtualbase_requestImage(self: pointer, id: struct_miqt_string, size: pointer, requestedSize: pointer): pointer {.importc: "QQuickImageProvider_virtualbase_requestImage".}
proc fcQQuickImageProvider_virtualbase_requestPixmap(self: pointer, id: struct_miqt_string, size: pointer, requestedSize: pointer): pointer {.importc: "QQuickImageProvider_virtualbase_requestPixmap".}
proc fcQQuickImageProvider_virtualbase_requestTexture(self: pointer, id: struct_miqt_string, size: pointer, requestedSize: pointer): pointer {.importc: "QQuickImageProvider_virtualbase_requestTexture".}
proc fcQQuickImageProvider_new(vtbl, vdata: pointer, typeVal: cint): ptr cQQuickImageProvider {.importc: "QQuickImageProvider_new".}
proc fcQQuickImageProvider_new2(vtbl, vdata: pointer, param1: pointer): ptr cQQuickImageProvider {.importc: "QQuickImageProvider_new2".}
proc fcQQuickImageProvider_new3(vtbl, vdata: pointer, typeVal: cint, flags: cint): ptr cQQuickImageProvider {.importc: "QQuickImageProvider_new3".}
proc fcQQuickAsyncImageProvider_requestImageResponse(self: pointer, id: struct_miqt_string, requestedSize: pointer): pointer {.importc: "QQuickAsyncImageProvider_requestImageResponse".}
proc fcQQuickAsyncImageProvider_vtbl(self: pointer): pointer {.importc: "QQuickAsyncImageProvider_vtbl".}
proc fcQQuickAsyncImageProvider_vdata(self: pointer): pointer {.importc: "QQuickAsyncImageProvider_vdata".}

type cQQuickAsyncImageProviderVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  requestImageResponse*: proc(self: pointer, id: struct_miqt_string, requestedSize: pointer): pointer {.cdecl, raises: [], gcsafe.}
  imageType*: proc(self: pointer): cint {.cdecl, raises: [], gcsafe.}
  flags*: proc(self: pointer): cint {.cdecl, raises: [], gcsafe.}
  requestImage*: proc(self: pointer, id: struct_miqt_string, size: pointer, requestedSize: pointer): pointer {.cdecl, raises: [], gcsafe.}
  requestPixmap*: proc(self: pointer, id: struct_miqt_string, size: pointer, requestedSize: pointer): pointer {.cdecl, raises: [], gcsafe.}
  requestTexture*: proc(self: pointer, id: struct_miqt_string, size: pointer, requestedSize: pointer): pointer {.cdecl, raises: [], gcsafe.}
proc fcQQuickAsyncImageProvider_virtualbase_imageType(self: pointer): cint {.importc: "QQuickAsyncImageProvider_virtualbase_imageType".}
proc fcQQuickAsyncImageProvider_virtualbase_flags(self: pointer): cint {.importc: "QQuickAsyncImageProvider_virtualbase_flags".}
proc fcQQuickAsyncImageProvider_virtualbase_requestImage(self: pointer, id: struct_miqt_string, size: pointer, requestedSize: pointer): pointer {.importc: "QQuickAsyncImageProvider_virtualbase_requestImage".}
proc fcQQuickAsyncImageProvider_virtualbase_requestPixmap(self: pointer, id: struct_miqt_string, size: pointer, requestedSize: pointer): pointer {.importc: "QQuickAsyncImageProvider_virtualbase_requestPixmap".}
proc fcQQuickAsyncImageProvider_virtualbase_requestTexture(self: pointer, id: struct_miqt_string, size: pointer, requestedSize: pointer): pointer {.importc: "QQuickAsyncImageProvider_virtualbase_requestTexture".}
proc fcQQuickAsyncImageProvider_new(vtbl, vdata: pointer): ptr cQQuickAsyncImageProvider {.importc: "QQuickAsyncImageProvider_new".}
proc fcQQuickAsyncImageProvider_new2(vtbl, vdata: pointer, param1: pointer): ptr cQQuickAsyncImageProvider {.importc: "QQuickAsyncImageProvider_new2".}

proc metaObject*(self: gen_qquickimageprovider_types.QQuickTextureFactory): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQQuickTextureFactory_metaObject(self.h), owned: false)

proc metacast*(self: gen_qquickimageprovider_types.QQuickTextureFactory, param1: cstring): pointer =
  fcQQuickTextureFactory_metacast(self.h, param1)

proc metacall*(self: gen_qquickimageprovider_types.QQuickTextureFactory, param1: cint, param2: cint, param3: pointer): cint =
  fcQQuickTextureFactory_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qquickimageprovider_types.QQuickTextureFactory, s: cstring): string =
  let v_ms = fcQQuickTextureFactory_tr(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qquickimageprovider_types.QQuickTextureFactory, s: cstring): string =
  let v_ms = fcQQuickTextureFactory_trUtf8(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc createTexture*(self: gen_qquickimageprovider_types.QQuickTextureFactory, window: gen_qquickwindow_types.QQuickWindow): gen_qsgtexture_types.QSGTexture =
  gen_qsgtexture_types.QSGTexture(h: fcQQuickTextureFactory_createTexture(self.h, window.h), owned: false)

proc textureSize*(self: gen_qquickimageprovider_types.QQuickTextureFactory): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQQuickTextureFactory_textureSize(self.h), owned: true)

proc textureByteCount*(self: gen_qquickimageprovider_types.QQuickTextureFactory): cint =
  fcQQuickTextureFactory_textureByteCount(self.h)

proc image*(self: gen_qquickimageprovider_types.QQuickTextureFactory): gen_qimage_types.QImage =
  gen_qimage_types.QImage(h: fcQQuickTextureFactory_image(self.h), owned: true)

proc textureFactoryForImage*(_: type gen_qquickimageprovider_types.QQuickTextureFactory, image: gen_qimage_types.QImage): gen_qquickimageprovider_types.QQuickTextureFactory =
  gen_qquickimageprovider_types.QQuickTextureFactory(h: fcQQuickTextureFactory_textureFactoryForImage(image.h), owned: false)

proc tr*(_: type gen_qquickimageprovider_types.QQuickTextureFactory, s: cstring, c: cstring): string =
  let v_ms = fcQQuickTextureFactory_tr2(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qquickimageprovider_types.QQuickTextureFactory, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQQuickTextureFactory_tr3(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qquickimageprovider_types.QQuickTextureFactory, s: cstring, c: cstring): string =
  let v_ms = fcQQuickTextureFactory_trUtf82(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qquickimageprovider_types.QQuickTextureFactory, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQQuickTextureFactory_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

type QQuickTextureFactorymetaObjectProc* = proc(self: QQuickTextureFactory): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QQuickTextureFactorymetacastProc* = proc(self: QQuickTextureFactory, param1: cstring): pointer {.raises: [], gcsafe.}
type QQuickTextureFactorymetacallProc* = proc(self: QQuickTextureFactory, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QQuickTextureFactorycreateTextureProc* = proc(self: QQuickTextureFactory, window: gen_qquickwindow_types.QQuickWindow): gen_qsgtexture_types.QSGTexture {.raises: [], gcsafe.}
type QQuickTextureFactorytextureSizeProc* = proc(self: QQuickTextureFactory): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QQuickTextureFactorytextureByteCountProc* = proc(self: QQuickTextureFactory): cint {.raises: [], gcsafe.}
type QQuickTextureFactoryimageProc* = proc(self: QQuickTextureFactory): gen_qimage_types.QImage {.raises: [], gcsafe.}
type QQuickTextureFactoryeventProc* = proc(self: QQuickTextureFactory, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QQuickTextureFactoryeventFilterProc* = proc(self: QQuickTextureFactory, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QQuickTextureFactorytimerEventProc* = proc(self: QQuickTextureFactory, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QQuickTextureFactorychildEventProc* = proc(self: QQuickTextureFactory, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QQuickTextureFactorycustomEventProc* = proc(self: QQuickTextureFactory, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QQuickTextureFactoryconnectNotifyProc* = proc(self: QQuickTextureFactory, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QQuickTextureFactorydisconnectNotifyProc* = proc(self: QQuickTextureFactory, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}

type QQuickTextureFactoryVTable* {.inheritable, pure.} = object
  vtbl: cQQuickTextureFactoryVTable
  metaObject*: QQuickTextureFactorymetaObjectProc
  metacast*: QQuickTextureFactorymetacastProc
  metacall*: QQuickTextureFactorymetacallProc
  createTexture*: QQuickTextureFactorycreateTextureProc
  textureSize*: QQuickTextureFactorytextureSizeProc
  textureByteCount*: QQuickTextureFactorytextureByteCountProc
  image*: QQuickTextureFactoryimageProc
  event*: QQuickTextureFactoryeventProc
  eventFilter*: QQuickTextureFactoryeventFilterProc
  timerEvent*: QQuickTextureFactorytimerEventProc
  childEvent*: QQuickTextureFactorychildEventProc
  customEvent*: QQuickTextureFactorycustomEventProc
  connectNotify*: QQuickTextureFactoryconnectNotifyProc
  disconnectNotify*: QQuickTextureFactorydisconnectNotifyProc

proc QQuickTextureFactorymetaObject*(self: gen_qquickimageprovider_types.QQuickTextureFactory): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQQuickTextureFactory_virtualbase_metaObject(self.h), owned: false)

proc QQuickTextureFactorymetacast*(self: gen_qquickimageprovider_types.QQuickTextureFactory, param1: cstring): pointer =
  fcQQuickTextureFactory_virtualbase_metacast(self.h, param1)

proc QQuickTextureFactorymetacall*(self: gen_qquickimageprovider_types.QQuickTextureFactory, param1: cint, param2: cint, param3: pointer): cint =
  fcQQuickTextureFactory_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc QQuickTextureFactoryimage*(self: gen_qquickimageprovider_types.QQuickTextureFactory): gen_qimage_types.QImage =
  gen_qimage_types.QImage(h: fcQQuickTextureFactory_virtualbase_image(self.h), owned: true)

proc QQuickTextureFactoryevent*(self: gen_qquickimageprovider_types.QQuickTextureFactory, event: gen_qcoreevent_types.QEvent): bool =
  fcQQuickTextureFactory_virtualbase_event(self.h, event.h)

proc QQuickTextureFactoryeventFilter*(self: gen_qquickimageprovider_types.QQuickTextureFactory, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQQuickTextureFactory_virtualbase_eventFilter(self.h, watched.h, event.h)

proc QQuickTextureFactorytimerEvent*(self: gen_qquickimageprovider_types.QQuickTextureFactory, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQQuickTextureFactory_virtualbase_timerEvent(self.h, event.h)

proc QQuickTextureFactorychildEvent*(self: gen_qquickimageprovider_types.QQuickTextureFactory, event: gen_qcoreevent_types.QChildEvent): void =
  fcQQuickTextureFactory_virtualbase_childEvent(self.h, event.h)

proc QQuickTextureFactorycustomEvent*(self: gen_qquickimageprovider_types.QQuickTextureFactory, event: gen_qcoreevent_types.QEvent): void =
  fcQQuickTextureFactory_virtualbase_customEvent(self.h, event.h)

proc QQuickTextureFactoryconnectNotify*(self: gen_qquickimageprovider_types.QQuickTextureFactory, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQQuickTextureFactory_virtualbase_connectNotify(self.h, signal.h)

proc QQuickTextureFactorydisconnectNotify*(self: gen_qquickimageprovider_types.QQuickTextureFactory, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQQuickTextureFactory_virtualbase_disconnectNotify(self.h, signal.h)


proc fcQQuickTextureFactory_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QQuickTextureFactoryVTable](fcQQuickTextureFactory_vdata(self))
  let self = QQuickTextureFactory(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQQuickTextureFactory_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QQuickTextureFactoryVTable](fcQQuickTextureFactory_vdata(self))
  let self = QQuickTextureFactory(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc fcQQuickTextureFactory_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QQuickTextureFactoryVTable](fcQQuickTextureFactory_vdata(self))
  let self = QQuickTextureFactory(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc fcQQuickTextureFactory_vtable_callback_createTexture(self: pointer, window: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QQuickTextureFactoryVTable](fcQQuickTextureFactory_vdata(self))
  let self = QQuickTextureFactory(h: self)
  let slotval1 = gen_qquickwindow_types.QQuickWindow(h: window, owned: false)
  var virtualReturn = vtbl[].createTexture(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQQuickTextureFactory_vtable_callback_textureSize(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QQuickTextureFactoryVTable](fcQQuickTextureFactory_vdata(self))
  let self = QQuickTextureFactory(h: self)
  var virtualReturn = vtbl[].textureSize(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQQuickTextureFactory_vtable_callback_textureByteCount(self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QQuickTextureFactoryVTable](fcQQuickTextureFactory_vdata(self))
  let self = QQuickTextureFactory(h: self)
  var virtualReturn = vtbl[].textureByteCount(self)
  virtualReturn

proc fcQQuickTextureFactory_vtable_callback_image(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QQuickTextureFactoryVTable](fcQQuickTextureFactory_vdata(self))
  let self = QQuickTextureFactory(h: self)
  var virtualReturn = vtbl[].image(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQQuickTextureFactory_vtable_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QQuickTextureFactoryVTable](fcQQuickTextureFactory_vdata(self))
  let self = QQuickTextureFactory(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc fcQQuickTextureFactory_vtable_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QQuickTextureFactoryVTable](fcQQuickTextureFactory_vdata(self))
  let self = QQuickTextureFactory(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc fcQQuickTextureFactory_vtable_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickTextureFactoryVTable](fcQQuickTextureFactory_vdata(self))
  let self = QQuickTextureFactory(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc fcQQuickTextureFactory_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickTextureFactoryVTable](fcQQuickTextureFactory_vdata(self))
  let self = QQuickTextureFactory(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc fcQQuickTextureFactory_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickTextureFactoryVTable](fcQQuickTextureFactory_vdata(self))
  let self = QQuickTextureFactory(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc fcQQuickTextureFactory_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickTextureFactoryVTable](fcQQuickTextureFactory_vdata(self))
  let self = QQuickTextureFactory(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc fcQQuickTextureFactory_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickTextureFactoryVTable](fcQQuickTextureFactory_vdata(self))
  let self = QQuickTextureFactory(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQQuickTextureFactory* {.inheritable.} = ref object of QQuickTextureFactory
  vtbl*: cQQuickTextureFactoryVTable

method metaObject*(self: VirtualQQuickTextureFactory): gen_qobjectdefs_types.QMetaObject {.base.} =
  QQuickTextureFactorymetaObject(self[])
method metacast*(self: VirtualQQuickTextureFactory, param1: cstring): pointer {.base.} =
  QQuickTextureFactorymetacast(self[], param1)
method metacall*(self: VirtualQQuickTextureFactory, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QQuickTextureFactorymetacall(self[], param1, param2, param3)
method createTexture*(self: VirtualQQuickTextureFactory, window: gen_qquickwindow_types.QQuickWindow): gen_qsgtexture_types.QSGTexture {.base.} =
  raiseAssert("missing implementation of QQuickTextureFactory.createTexture")
method textureSize*(self: VirtualQQuickTextureFactory): gen_qsize_types.QSize {.base.} =
  raiseAssert("missing implementation of QQuickTextureFactory.textureSize")
method textureByteCount*(self: VirtualQQuickTextureFactory): cint {.base.} =
  raiseAssert("missing implementation of QQuickTextureFactory.textureByteCount")
method image*(self: VirtualQQuickTextureFactory): gen_qimage_types.QImage {.base.} =
  QQuickTextureFactoryimage(self[])
method event*(self: VirtualQQuickTextureFactory, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QQuickTextureFactoryevent(self[], event)
method eventFilter*(self: VirtualQQuickTextureFactory, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QQuickTextureFactoryeventFilter(self[], watched, event)
method timerEvent*(self: VirtualQQuickTextureFactory, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QQuickTextureFactorytimerEvent(self[], event)
method childEvent*(self: VirtualQQuickTextureFactory, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QQuickTextureFactorychildEvent(self[], event)
method customEvent*(self: VirtualQQuickTextureFactory, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QQuickTextureFactorycustomEvent(self[], event)
method connectNotify*(self: VirtualQQuickTextureFactory, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QQuickTextureFactoryconnectNotify(self[], signal)
method disconnectNotify*(self: VirtualQQuickTextureFactory, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QQuickTextureFactorydisconnectNotify(self[], signal)

proc fcQQuickTextureFactory_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQQuickTextureFactory](fcQQuickTextureFactory_vdata(self))
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQQuickTextureFactory_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQQuickTextureFactory](fcQQuickTextureFactory_vdata(self))
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

proc fcQQuickTextureFactory_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQQuickTextureFactory](fcQQuickTextureFactory_vdata(self))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

proc fcQQuickTextureFactory_method_callback_createTexture(self: pointer, window: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQQuickTextureFactory](fcQQuickTextureFactory_vdata(self))
  let slotval1 = gen_qquickwindow_types.QQuickWindow(h: window, owned: false)
  var virtualReturn = inst.createTexture(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQQuickTextureFactory_method_callback_textureSize(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQQuickTextureFactory](fcQQuickTextureFactory_vdata(self))
  var virtualReturn = inst.textureSize()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQQuickTextureFactory_method_callback_textureByteCount(self: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQQuickTextureFactory](fcQQuickTextureFactory_vdata(self))
  var virtualReturn = inst.textureByteCount()
  virtualReturn

proc fcQQuickTextureFactory_method_callback_image(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQQuickTextureFactory](fcQQuickTextureFactory_vdata(self))
  var virtualReturn = inst.image()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQQuickTextureFactory_method_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQQuickTextureFactory](fcQQuickTextureFactory_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

proc fcQQuickTextureFactory_method_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQQuickTextureFactory](fcQQuickTextureFactory_vdata(self))
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

proc fcQQuickTextureFactory_method_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQQuickTextureFactory](fcQQuickTextureFactory_vdata(self))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  inst.timerEvent(slotval1)

proc fcQQuickTextureFactory_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQQuickTextureFactory](fcQQuickTextureFactory_vdata(self))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  inst.childEvent(slotval1)

proc fcQQuickTextureFactory_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQQuickTextureFactory](fcQQuickTextureFactory_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)

proc fcQQuickTextureFactory_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQQuickTextureFactory](fcQQuickTextureFactory_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

proc fcQQuickTextureFactory_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQQuickTextureFactory](fcQQuickTextureFactory_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.disconnectNotify(slotval1)


proc sender*(self: gen_qquickimageprovider_types.QQuickTextureFactory): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQQuickTextureFactory_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qquickimageprovider_types.QQuickTextureFactory): cint =
  fcQQuickTextureFactory_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qquickimageprovider_types.QQuickTextureFactory, signal: cstring): cint =
  fcQQuickTextureFactory_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qquickimageprovider_types.QQuickTextureFactory, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQQuickTextureFactory_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qquickimageprovider_types.QQuickTextureFactory,
    vtbl: ref QQuickTextureFactoryVTable = nil): gen_qquickimageprovider_types.QQuickTextureFactory =
  let vtbl = if vtbl == nil: new QQuickTextureFactoryVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QQuickTextureFactoryVTable](fcQQuickTextureFactory_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQQuickTextureFactory_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQQuickTextureFactory_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQQuickTextureFactory_vtable_callback_metacall
  if not isNil(vtbl[].createTexture):
    vtbl[].vtbl.createTexture = fcQQuickTextureFactory_vtable_callback_createTexture
  if not isNil(vtbl[].textureSize):
    vtbl[].vtbl.textureSize = fcQQuickTextureFactory_vtable_callback_textureSize
  if not isNil(vtbl[].textureByteCount):
    vtbl[].vtbl.textureByteCount = fcQQuickTextureFactory_vtable_callback_textureByteCount
  if not isNil(vtbl[].image):
    vtbl[].vtbl.image = fcQQuickTextureFactory_vtable_callback_image
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQQuickTextureFactory_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQQuickTextureFactory_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQQuickTextureFactory_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQQuickTextureFactory_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQQuickTextureFactory_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQQuickTextureFactory_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQQuickTextureFactory_vtable_callback_disconnectNotify
  gen_qquickimageprovider_types.QQuickTextureFactory(h: fcQQuickTextureFactory_new(addr(vtbl[].vtbl), addr(vtbl[])), owned: true)

const cQQuickTextureFactory_mvtbl = cQQuickTextureFactoryVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQQuickTextureFactory()[])](self.fcQQuickTextureFactory_vdata())
    inst[].h = nil
    inst[].owned = false,

  metaObject: fcQQuickTextureFactory_method_callback_metaObject,
  metacast: fcQQuickTextureFactory_method_callback_metacast,
  metacall: fcQQuickTextureFactory_method_callback_metacall,
  createTexture: fcQQuickTextureFactory_method_callback_createTexture,
  textureSize: fcQQuickTextureFactory_method_callback_textureSize,
  textureByteCount: fcQQuickTextureFactory_method_callback_textureByteCount,
  image: fcQQuickTextureFactory_method_callback_image,
  event: fcQQuickTextureFactory_method_callback_event,
  eventFilter: fcQQuickTextureFactory_method_callback_eventFilter,
  timerEvent: fcQQuickTextureFactory_method_callback_timerEvent,
  childEvent: fcQQuickTextureFactory_method_callback_childEvent,
  customEvent: fcQQuickTextureFactory_method_callback_customEvent,
  connectNotify: fcQQuickTextureFactory_method_callback_connectNotify,
  disconnectNotify: fcQQuickTextureFactory_method_callback_disconnectNotify,
)
proc create*(T: type gen_qquickimageprovider_types.QQuickTextureFactory,
    inst: VirtualQQuickTextureFactory) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQQuickTextureFactory_new(addr(cQQuickTextureFactory_mvtbl), addr(inst[]))
  inst[].owned = true

proc staticMetaObject*(_: type gen_qquickimageprovider_types.QQuickTextureFactory): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQQuickTextureFactory_staticMetaObject())
proc metaObject*(self: gen_qquickimageprovider_types.QQuickImageResponse): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQQuickImageResponse_metaObject(self.h), owned: false)

proc metacast*(self: gen_qquickimageprovider_types.QQuickImageResponse, param1: cstring): pointer =
  fcQQuickImageResponse_metacast(self.h, param1)

proc metacall*(self: gen_qquickimageprovider_types.QQuickImageResponse, param1: cint, param2: cint, param3: pointer): cint =
  fcQQuickImageResponse_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qquickimageprovider_types.QQuickImageResponse, s: cstring): string =
  let v_ms = fcQQuickImageResponse_tr(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qquickimageprovider_types.QQuickImageResponse, s: cstring): string =
  let v_ms = fcQQuickImageResponse_trUtf8(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc textureFactory*(self: gen_qquickimageprovider_types.QQuickImageResponse): gen_qquickimageprovider_types.QQuickTextureFactory =
  gen_qquickimageprovider_types.QQuickTextureFactory(h: fcQQuickImageResponse_textureFactory(self.h), owned: false)

proc errorString*(self: gen_qquickimageprovider_types.QQuickImageResponse): string =
  let v_ms = fcQQuickImageResponse_errorString(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc cancel*(self: gen_qquickimageprovider_types.QQuickImageResponse): void =
  fcQQuickImageResponse_cancel(self.h)

proc finished*(self: gen_qquickimageprovider_types.QQuickImageResponse): void =
  fcQQuickImageResponse_finished(self.h)

type QQuickImageResponsefinishedSlot* = proc()
proc fcQQuickImageResponse_slot_callback_finished(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QQuickImageResponsefinishedSlot](cast[pointer](slot))
  nimfunc[]()

proc fcQQuickImageResponse_slot_callback_finished_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QQuickImageResponsefinishedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onFinished*(self: gen_qquickimageprovider_types.QQuickImageResponse, slot: QQuickImageResponsefinishedSlot) =
  var tmp = new QQuickImageResponsefinishedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickImageResponse_connect_finished(self.h, cast[int](addr tmp[]), fcQQuickImageResponse_slot_callback_finished, fcQQuickImageResponse_slot_callback_finished_release)

proc tr*(_: type gen_qquickimageprovider_types.QQuickImageResponse, s: cstring, c: cstring): string =
  let v_ms = fcQQuickImageResponse_tr2(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qquickimageprovider_types.QQuickImageResponse, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQQuickImageResponse_tr3(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qquickimageprovider_types.QQuickImageResponse, s: cstring, c: cstring): string =
  let v_ms = fcQQuickImageResponse_trUtf82(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qquickimageprovider_types.QQuickImageResponse, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQQuickImageResponse_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

type QQuickImageResponsemetaObjectProc* = proc(self: QQuickImageResponse): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QQuickImageResponsemetacastProc* = proc(self: QQuickImageResponse, param1: cstring): pointer {.raises: [], gcsafe.}
type QQuickImageResponsemetacallProc* = proc(self: QQuickImageResponse, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QQuickImageResponsetextureFactoryProc* = proc(self: QQuickImageResponse): gen_qquickimageprovider_types.QQuickTextureFactory {.raises: [], gcsafe.}
type QQuickImageResponseerrorStringProc* = proc(self: QQuickImageResponse): string {.raises: [], gcsafe.}
type QQuickImageResponsecancelProc* = proc(self: QQuickImageResponse): void {.raises: [], gcsafe.}
type QQuickImageResponseeventProc* = proc(self: QQuickImageResponse, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QQuickImageResponseeventFilterProc* = proc(self: QQuickImageResponse, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QQuickImageResponsetimerEventProc* = proc(self: QQuickImageResponse, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QQuickImageResponsechildEventProc* = proc(self: QQuickImageResponse, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QQuickImageResponsecustomEventProc* = proc(self: QQuickImageResponse, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QQuickImageResponseconnectNotifyProc* = proc(self: QQuickImageResponse, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QQuickImageResponsedisconnectNotifyProc* = proc(self: QQuickImageResponse, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}

type QQuickImageResponseVTable* {.inheritable, pure.} = object
  vtbl: cQQuickImageResponseVTable
  metaObject*: QQuickImageResponsemetaObjectProc
  metacast*: QQuickImageResponsemetacastProc
  metacall*: QQuickImageResponsemetacallProc
  textureFactory*: QQuickImageResponsetextureFactoryProc
  errorString*: QQuickImageResponseerrorStringProc
  cancel*: QQuickImageResponsecancelProc
  event*: QQuickImageResponseeventProc
  eventFilter*: QQuickImageResponseeventFilterProc
  timerEvent*: QQuickImageResponsetimerEventProc
  childEvent*: QQuickImageResponsechildEventProc
  customEvent*: QQuickImageResponsecustomEventProc
  connectNotify*: QQuickImageResponseconnectNotifyProc
  disconnectNotify*: QQuickImageResponsedisconnectNotifyProc

proc QQuickImageResponsemetaObject*(self: gen_qquickimageprovider_types.QQuickImageResponse): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQQuickImageResponse_virtualbase_metaObject(self.h), owned: false)

proc QQuickImageResponsemetacast*(self: gen_qquickimageprovider_types.QQuickImageResponse, param1: cstring): pointer =
  fcQQuickImageResponse_virtualbase_metacast(self.h, param1)

proc QQuickImageResponsemetacall*(self: gen_qquickimageprovider_types.QQuickImageResponse, param1: cint, param2: cint, param3: pointer): cint =
  fcQQuickImageResponse_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc QQuickImageResponseerrorString*(self: gen_qquickimageprovider_types.QQuickImageResponse): string =
  let v_ms = fcQQuickImageResponse_virtualbase_errorString(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc QQuickImageResponsecancel*(self: gen_qquickimageprovider_types.QQuickImageResponse): void =
  fcQQuickImageResponse_virtualbase_cancel(self.h)

proc QQuickImageResponseevent*(self: gen_qquickimageprovider_types.QQuickImageResponse, event: gen_qcoreevent_types.QEvent): bool =
  fcQQuickImageResponse_virtualbase_event(self.h, event.h)

proc QQuickImageResponseeventFilter*(self: gen_qquickimageprovider_types.QQuickImageResponse, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQQuickImageResponse_virtualbase_eventFilter(self.h, watched.h, event.h)

proc QQuickImageResponsetimerEvent*(self: gen_qquickimageprovider_types.QQuickImageResponse, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQQuickImageResponse_virtualbase_timerEvent(self.h, event.h)

proc QQuickImageResponsechildEvent*(self: gen_qquickimageprovider_types.QQuickImageResponse, event: gen_qcoreevent_types.QChildEvent): void =
  fcQQuickImageResponse_virtualbase_childEvent(self.h, event.h)

proc QQuickImageResponsecustomEvent*(self: gen_qquickimageprovider_types.QQuickImageResponse, event: gen_qcoreevent_types.QEvent): void =
  fcQQuickImageResponse_virtualbase_customEvent(self.h, event.h)

proc QQuickImageResponseconnectNotify*(self: gen_qquickimageprovider_types.QQuickImageResponse, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQQuickImageResponse_virtualbase_connectNotify(self.h, signal.h)

proc QQuickImageResponsedisconnectNotify*(self: gen_qquickimageprovider_types.QQuickImageResponse, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQQuickImageResponse_virtualbase_disconnectNotify(self.h, signal.h)


proc fcQQuickImageResponse_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QQuickImageResponseVTable](fcQQuickImageResponse_vdata(self))
  let self = QQuickImageResponse(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQQuickImageResponse_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QQuickImageResponseVTable](fcQQuickImageResponse_vdata(self))
  let self = QQuickImageResponse(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc fcQQuickImageResponse_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QQuickImageResponseVTable](fcQQuickImageResponse_vdata(self))
  let self = QQuickImageResponse(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc fcQQuickImageResponse_vtable_callback_textureFactory(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QQuickImageResponseVTable](fcQQuickImageResponse_vdata(self))
  let self = QQuickImageResponse(h: self)
  var virtualReturn = vtbl[].textureFactory(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQQuickImageResponse_vtable_callback_errorString(self: pointer): struct_miqt_string {.cdecl.} =
  let vtbl = cast[ptr QQuickImageResponseVTable](fcQQuickImageResponse_vdata(self))
  let self = QQuickImageResponse(h: self)
  var virtualReturn = vtbl[].errorString(self)
  var virtualReturn_copy = cast[cstring](if len(virtualReturn) > 0: c_malloc(csize_t(len(virtualReturn))) else: nil)
  if len(virtualReturn) > 0: copyMem(cast[pointer](virtualReturn_copy), addr virtualReturn[0], csize_t(len(virtualReturn)))
  struct_miqt_string(data: virtualReturn_copy, len: csize_t(len(virtualReturn)))

proc fcQQuickImageResponse_vtable_callback_cancel(self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickImageResponseVTable](fcQQuickImageResponse_vdata(self))
  let self = QQuickImageResponse(h: self)
  vtbl[].cancel(self)

proc fcQQuickImageResponse_vtable_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QQuickImageResponseVTable](fcQQuickImageResponse_vdata(self))
  let self = QQuickImageResponse(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc fcQQuickImageResponse_vtable_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QQuickImageResponseVTable](fcQQuickImageResponse_vdata(self))
  let self = QQuickImageResponse(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc fcQQuickImageResponse_vtable_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickImageResponseVTable](fcQQuickImageResponse_vdata(self))
  let self = QQuickImageResponse(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc fcQQuickImageResponse_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickImageResponseVTable](fcQQuickImageResponse_vdata(self))
  let self = QQuickImageResponse(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc fcQQuickImageResponse_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickImageResponseVTable](fcQQuickImageResponse_vdata(self))
  let self = QQuickImageResponse(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc fcQQuickImageResponse_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickImageResponseVTable](fcQQuickImageResponse_vdata(self))
  let self = QQuickImageResponse(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc fcQQuickImageResponse_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickImageResponseVTable](fcQQuickImageResponse_vdata(self))
  let self = QQuickImageResponse(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQQuickImageResponse* {.inheritable.} = ref object of QQuickImageResponse
  vtbl*: cQQuickImageResponseVTable

method metaObject*(self: VirtualQQuickImageResponse): gen_qobjectdefs_types.QMetaObject {.base.} =
  QQuickImageResponsemetaObject(self[])
method metacast*(self: VirtualQQuickImageResponse, param1: cstring): pointer {.base.} =
  QQuickImageResponsemetacast(self[], param1)
method metacall*(self: VirtualQQuickImageResponse, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QQuickImageResponsemetacall(self[], param1, param2, param3)
method textureFactory*(self: VirtualQQuickImageResponse): gen_qquickimageprovider_types.QQuickTextureFactory {.base.} =
  raiseAssert("missing implementation of QQuickImageResponse.textureFactory")
method errorString*(self: VirtualQQuickImageResponse): string {.base.} =
  QQuickImageResponseerrorString(self[])
method cancel*(self: VirtualQQuickImageResponse): void {.base.} =
  QQuickImageResponsecancel(self[])
method event*(self: VirtualQQuickImageResponse, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QQuickImageResponseevent(self[], event)
method eventFilter*(self: VirtualQQuickImageResponse, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QQuickImageResponseeventFilter(self[], watched, event)
method timerEvent*(self: VirtualQQuickImageResponse, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QQuickImageResponsetimerEvent(self[], event)
method childEvent*(self: VirtualQQuickImageResponse, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QQuickImageResponsechildEvent(self[], event)
method customEvent*(self: VirtualQQuickImageResponse, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QQuickImageResponsecustomEvent(self[], event)
method connectNotify*(self: VirtualQQuickImageResponse, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QQuickImageResponseconnectNotify(self[], signal)
method disconnectNotify*(self: VirtualQQuickImageResponse, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QQuickImageResponsedisconnectNotify(self[], signal)

proc fcQQuickImageResponse_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQQuickImageResponse](fcQQuickImageResponse_vdata(self))
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQQuickImageResponse_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQQuickImageResponse](fcQQuickImageResponse_vdata(self))
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

proc fcQQuickImageResponse_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQQuickImageResponse](fcQQuickImageResponse_vdata(self))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

proc fcQQuickImageResponse_method_callback_textureFactory(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQQuickImageResponse](fcQQuickImageResponse_vdata(self))
  var virtualReturn = inst.textureFactory()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQQuickImageResponse_method_callback_errorString(self: pointer): struct_miqt_string {.cdecl.} =
  let inst = cast[VirtualQQuickImageResponse](fcQQuickImageResponse_vdata(self))
  var virtualReturn = inst.errorString()
  var virtualReturn_copy = cast[cstring](if len(virtualReturn) > 0: c_malloc(csize_t(len(virtualReturn))) else: nil)
  if len(virtualReturn) > 0: copyMem(cast[pointer](virtualReturn_copy), addr virtualReturn[0], csize_t(len(virtualReturn)))
  struct_miqt_string(data: virtualReturn_copy, len: csize_t(len(virtualReturn)))

proc fcQQuickImageResponse_method_callback_cancel(self: pointer): void {.cdecl.} =
  let inst = cast[VirtualQQuickImageResponse](fcQQuickImageResponse_vdata(self))
  inst.cancel()

proc fcQQuickImageResponse_method_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQQuickImageResponse](fcQQuickImageResponse_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

proc fcQQuickImageResponse_method_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQQuickImageResponse](fcQQuickImageResponse_vdata(self))
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

proc fcQQuickImageResponse_method_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQQuickImageResponse](fcQQuickImageResponse_vdata(self))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  inst.timerEvent(slotval1)

proc fcQQuickImageResponse_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQQuickImageResponse](fcQQuickImageResponse_vdata(self))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  inst.childEvent(slotval1)

proc fcQQuickImageResponse_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQQuickImageResponse](fcQQuickImageResponse_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)

proc fcQQuickImageResponse_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQQuickImageResponse](fcQQuickImageResponse_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

proc fcQQuickImageResponse_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQQuickImageResponse](fcQQuickImageResponse_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.disconnectNotify(slotval1)


proc sender*(self: gen_qquickimageprovider_types.QQuickImageResponse): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQQuickImageResponse_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qquickimageprovider_types.QQuickImageResponse): cint =
  fcQQuickImageResponse_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qquickimageprovider_types.QQuickImageResponse, signal: cstring): cint =
  fcQQuickImageResponse_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qquickimageprovider_types.QQuickImageResponse, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQQuickImageResponse_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qquickimageprovider_types.QQuickImageResponse,
    vtbl: ref QQuickImageResponseVTable = nil): gen_qquickimageprovider_types.QQuickImageResponse =
  let vtbl = if vtbl == nil: new QQuickImageResponseVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QQuickImageResponseVTable](fcQQuickImageResponse_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQQuickImageResponse_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQQuickImageResponse_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQQuickImageResponse_vtable_callback_metacall
  if not isNil(vtbl[].textureFactory):
    vtbl[].vtbl.textureFactory = fcQQuickImageResponse_vtable_callback_textureFactory
  if not isNil(vtbl[].errorString):
    vtbl[].vtbl.errorString = fcQQuickImageResponse_vtable_callback_errorString
  if not isNil(vtbl[].cancel):
    vtbl[].vtbl.cancel = fcQQuickImageResponse_vtable_callback_cancel
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQQuickImageResponse_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQQuickImageResponse_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQQuickImageResponse_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQQuickImageResponse_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQQuickImageResponse_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQQuickImageResponse_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQQuickImageResponse_vtable_callback_disconnectNotify
  gen_qquickimageprovider_types.QQuickImageResponse(h: fcQQuickImageResponse_new(addr(vtbl[].vtbl), addr(vtbl[])), owned: true)

const cQQuickImageResponse_mvtbl = cQQuickImageResponseVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQQuickImageResponse()[])](self.fcQQuickImageResponse_vdata())
    inst[].h = nil
    inst[].owned = false,

  metaObject: fcQQuickImageResponse_method_callback_metaObject,
  metacast: fcQQuickImageResponse_method_callback_metacast,
  metacall: fcQQuickImageResponse_method_callback_metacall,
  textureFactory: fcQQuickImageResponse_method_callback_textureFactory,
  errorString: fcQQuickImageResponse_method_callback_errorString,
  cancel: fcQQuickImageResponse_method_callback_cancel,
  event: fcQQuickImageResponse_method_callback_event,
  eventFilter: fcQQuickImageResponse_method_callback_eventFilter,
  timerEvent: fcQQuickImageResponse_method_callback_timerEvent,
  childEvent: fcQQuickImageResponse_method_callback_childEvent,
  customEvent: fcQQuickImageResponse_method_callback_customEvent,
  connectNotify: fcQQuickImageResponse_method_callback_connectNotify,
  disconnectNotify: fcQQuickImageResponse_method_callback_disconnectNotify,
)
proc create*(T: type gen_qquickimageprovider_types.QQuickImageResponse,
    inst: VirtualQQuickImageResponse) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQQuickImageResponse_new(addr(cQQuickImageResponse_mvtbl), addr(inst[]))
  inst[].owned = true

proc staticMetaObject*(_: type gen_qquickimageprovider_types.QQuickImageResponse): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQQuickImageResponse_staticMetaObject())
proc imageType*(self: gen_qquickimageprovider_types.QQuickImageProvider): cint =
  cint(fcQQuickImageProvider_imageType(self.h))

proc flags*(self: gen_qquickimageprovider_types.QQuickImageProvider): cint =
  cint(fcQQuickImageProvider_flags(self.h))

proc requestImage*(self: gen_qquickimageprovider_types.QQuickImageProvider, id: openArray[char], size: gen_qsize_types.QSize, requestedSize: gen_qsize_types.QSize): gen_qimage_types.QImage =
  gen_qimage_types.QImage(h: fcQQuickImageProvider_requestImage(self.h, struct_miqt_string(data: if len(id) > 0: addr id[0] else: nil, len: csize_t(len(id))), size.h, requestedSize.h), owned: true)

proc requestPixmap*(self: gen_qquickimageprovider_types.QQuickImageProvider, id: openArray[char], size: gen_qsize_types.QSize, requestedSize: gen_qsize_types.QSize): gen_qpixmap_types.QPixmap =
  gen_qpixmap_types.QPixmap(h: fcQQuickImageProvider_requestPixmap(self.h, struct_miqt_string(data: if len(id) > 0: addr id[0] else: nil, len: csize_t(len(id))), size.h, requestedSize.h), owned: true)

proc requestTexture*(self: gen_qquickimageprovider_types.QQuickImageProvider, id: openArray[char], size: gen_qsize_types.QSize, requestedSize: gen_qsize_types.QSize): gen_qquickimageprovider_types.QQuickTextureFactory =
  gen_qquickimageprovider_types.QQuickTextureFactory(h: fcQQuickImageProvider_requestTexture(self.h, struct_miqt_string(data: if len(id) > 0: addr id[0] else: nil, len: csize_t(len(id))), size.h, requestedSize.h), owned: false)

type QQuickImageProviderimageTypeProc* = proc(self: QQuickImageProvider): cint {.raises: [], gcsafe.}
type QQuickImageProviderflagsProc* = proc(self: QQuickImageProvider): cint {.raises: [], gcsafe.}
type QQuickImageProviderrequestImageProc* = proc(self: QQuickImageProvider, id: openArray[char], size: gen_qsize_types.QSize, requestedSize: gen_qsize_types.QSize): gen_qimage_types.QImage {.raises: [], gcsafe.}
type QQuickImageProviderrequestPixmapProc* = proc(self: QQuickImageProvider, id: openArray[char], size: gen_qsize_types.QSize, requestedSize: gen_qsize_types.QSize): gen_qpixmap_types.QPixmap {.raises: [], gcsafe.}
type QQuickImageProviderrequestTextureProc* = proc(self: QQuickImageProvider, id: openArray[char], size: gen_qsize_types.QSize, requestedSize: gen_qsize_types.QSize): gen_qquickimageprovider_types.QQuickTextureFactory {.raises: [], gcsafe.}

type QQuickImageProviderVTable* {.inheritable, pure.} = object
  vtbl: cQQuickImageProviderVTable
  imageType*: QQuickImageProviderimageTypeProc
  flags*: QQuickImageProviderflagsProc
  requestImage*: QQuickImageProviderrequestImageProc
  requestPixmap*: QQuickImageProviderrequestPixmapProc
  requestTexture*: QQuickImageProviderrequestTextureProc

proc QQuickImageProviderimageType*(self: gen_qquickimageprovider_types.QQuickImageProvider): cint =
  cint(fcQQuickImageProvider_virtualbase_imageType(self.h))

proc QQuickImageProviderflags*(self: gen_qquickimageprovider_types.QQuickImageProvider): cint =
  cint(fcQQuickImageProvider_virtualbase_flags(self.h))

proc QQuickImageProviderrequestImage*(self: gen_qquickimageprovider_types.QQuickImageProvider, id: openArray[char], size: gen_qsize_types.QSize, requestedSize: gen_qsize_types.QSize): gen_qimage_types.QImage =
  gen_qimage_types.QImage(h: fcQQuickImageProvider_virtualbase_requestImage(self.h, struct_miqt_string(data: if len(id) > 0: addr id[0] else: nil, len: csize_t(len(id))), size.h, requestedSize.h), owned: true)

proc QQuickImageProviderrequestPixmap*(self: gen_qquickimageprovider_types.QQuickImageProvider, id: openArray[char], size: gen_qsize_types.QSize, requestedSize: gen_qsize_types.QSize): gen_qpixmap_types.QPixmap =
  gen_qpixmap_types.QPixmap(h: fcQQuickImageProvider_virtualbase_requestPixmap(self.h, struct_miqt_string(data: if len(id) > 0: addr id[0] else: nil, len: csize_t(len(id))), size.h, requestedSize.h), owned: true)

proc QQuickImageProviderrequestTexture*(self: gen_qquickimageprovider_types.QQuickImageProvider, id: openArray[char], size: gen_qsize_types.QSize, requestedSize: gen_qsize_types.QSize): gen_qquickimageprovider_types.QQuickTextureFactory =
  gen_qquickimageprovider_types.QQuickTextureFactory(h: fcQQuickImageProvider_virtualbase_requestTexture(self.h, struct_miqt_string(data: if len(id) > 0: addr id[0] else: nil, len: csize_t(len(id))), size.h, requestedSize.h), owned: false)


proc fcQQuickImageProvider_vtable_callback_imageType(self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QQuickImageProviderVTable](fcQQuickImageProvider_vdata(self))
  let self = QQuickImageProvider(h: self)
  var virtualReturn = vtbl[].imageType(self)
  cint(virtualReturn)

proc fcQQuickImageProvider_vtable_callback_flags(self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QQuickImageProviderVTable](fcQQuickImageProvider_vdata(self))
  let self = QQuickImageProvider(h: self)
  var virtualReturn = vtbl[].flags(self)
  cint(virtualReturn)

proc fcQQuickImageProvider_vtable_callback_requestImage(self: pointer, id: struct_miqt_string, size: pointer, requestedSize: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QQuickImageProviderVTable](fcQQuickImageProvider_vdata(self))
  let self = QQuickImageProvider(h: self)
  let vid_ms = id
  let vidx_ret = string.fromBytes(vid_ms)
  c_free(vid_ms.data)
  let slotval1 = vidx_ret
  let slotval2 = gen_qsize_types.QSize(h: size, owned: false)
  let slotval3 = gen_qsize_types.QSize(h: requestedSize, owned: false)
  var virtualReturn = vtbl[].requestImage(self, slotval1, slotval2, slotval3)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQQuickImageProvider_vtable_callback_requestPixmap(self: pointer, id: struct_miqt_string, size: pointer, requestedSize: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QQuickImageProviderVTable](fcQQuickImageProvider_vdata(self))
  let self = QQuickImageProvider(h: self)
  let vid_ms = id
  let vidx_ret = string.fromBytes(vid_ms)
  c_free(vid_ms.data)
  let slotval1 = vidx_ret
  let slotval2 = gen_qsize_types.QSize(h: size, owned: false)
  let slotval3 = gen_qsize_types.QSize(h: requestedSize, owned: false)
  var virtualReturn = vtbl[].requestPixmap(self, slotval1, slotval2, slotval3)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQQuickImageProvider_vtable_callback_requestTexture(self: pointer, id: struct_miqt_string, size: pointer, requestedSize: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QQuickImageProviderVTable](fcQQuickImageProvider_vdata(self))
  let self = QQuickImageProvider(h: self)
  let vid_ms = id
  let vidx_ret = string.fromBytes(vid_ms)
  c_free(vid_ms.data)
  let slotval1 = vidx_ret
  let slotval2 = gen_qsize_types.QSize(h: size, owned: false)
  let slotval3 = gen_qsize_types.QSize(h: requestedSize, owned: false)
  var virtualReturn = vtbl[].requestTexture(self, slotval1, slotval2, slotval3)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

type VirtualQQuickImageProvider* {.inheritable.} = ref object of QQuickImageProvider
  vtbl*: cQQuickImageProviderVTable

method imageType*(self: VirtualQQuickImageProvider): cint {.base.} =
  QQuickImageProviderimageType(self[])
method flags*(self: VirtualQQuickImageProvider): cint {.base.} =
  QQuickImageProviderflags(self[])
method requestImage*(self: VirtualQQuickImageProvider, id: openArray[char], size: gen_qsize_types.QSize, requestedSize: gen_qsize_types.QSize): gen_qimage_types.QImage {.base.} =
  QQuickImageProviderrequestImage(self[], id, size, requestedSize)
method requestPixmap*(self: VirtualQQuickImageProvider, id: openArray[char], size: gen_qsize_types.QSize, requestedSize: gen_qsize_types.QSize): gen_qpixmap_types.QPixmap {.base.} =
  QQuickImageProviderrequestPixmap(self[], id, size, requestedSize)
method requestTexture*(self: VirtualQQuickImageProvider, id: openArray[char], size: gen_qsize_types.QSize, requestedSize: gen_qsize_types.QSize): gen_qquickimageprovider_types.QQuickTextureFactory {.base.} =
  QQuickImageProviderrequestTexture(self[], id, size, requestedSize)

proc fcQQuickImageProvider_method_callback_imageType(self: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQQuickImageProvider](fcQQuickImageProvider_vdata(self))
  var virtualReturn = inst.imageType()
  cint(virtualReturn)

proc fcQQuickImageProvider_method_callback_flags(self: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQQuickImageProvider](fcQQuickImageProvider_vdata(self))
  var virtualReturn = inst.flags()
  cint(virtualReturn)

proc fcQQuickImageProvider_method_callback_requestImage(self: pointer, id: struct_miqt_string, size: pointer, requestedSize: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQQuickImageProvider](fcQQuickImageProvider_vdata(self))
  let vid_ms = id
  let vidx_ret = string.fromBytes(vid_ms)
  c_free(vid_ms.data)
  let slotval1 = vidx_ret
  let slotval2 = gen_qsize_types.QSize(h: size, owned: false)
  let slotval3 = gen_qsize_types.QSize(h: requestedSize, owned: false)
  var virtualReturn = inst.requestImage(slotval1, slotval2, slotval3)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQQuickImageProvider_method_callback_requestPixmap(self: pointer, id: struct_miqt_string, size: pointer, requestedSize: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQQuickImageProvider](fcQQuickImageProvider_vdata(self))
  let vid_ms = id
  let vidx_ret = string.fromBytes(vid_ms)
  c_free(vid_ms.data)
  let slotval1 = vidx_ret
  let slotval2 = gen_qsize_types.QSize(h: size, owned: false)
  let slotval3 = gen_qsize_types.QSize(h: requestedSize, owned: false)
  var virtualReturn = inst.requestPixmap(slotval1, slotval2, slotval3)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQQuickImageProvider_method_callback_requestTexture(self: pointer, id: struct_miqt_string, size: pointer, requestedSize: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQQuickImageProvider](fcQQuickImageProvider_vdata(self))
  let vid_ms = id
  let vidx_ret = string.fromBytes(vid_ms)
  c_free(vid_ms.data)
  let slotval1 = vidx_ret
  let slotval2 = gen_qsize_types.QSize(h: size, owned: false)
  let slotval3 = gen_qsize_types.QSize(h: requestedSize, owned: false)
  var virtualReturn = inst.requestTexture(slotval1, slotval2, slotval3)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h


proc create*(T: type gen_qquickimageprovider_types.QQuickImageProvider,
    typeVal: cint,
    vtbl: ref QQuickImageProviderVTable = nil): gen_qquickimageprovider_types.QQuickImageProvider =
  let vtbl = if vtbl == nil: new QQuickImageProviderVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QQuickImageProviderVTable](fcQQuickImageProvider_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].imageType):
    vtbl[].vtbl.imageType = fcQQuickImageProvider_vtable_callback_imageType
  if not isNil(vtbl[].flags):
    vtbl[].vtbl.flags = fcQQuickImageProvider_vtable_callback_flags
  if not isNil(vtbl[].requestImage):
    vtbl[].vtbl.requestImage = fcQQuickImageProvider_vtable_callback_requestImage
  if not isNil(vtbl[].requestPixmap):
    vtbl[].vtbl.requestPixmap = fcQQuickImageProvider_vtable_callback_requestPixmap
  if not isNil(vtbl[].requestTexture):
    vtbl[].vtbl.requestTexture = fcQQuickImageProvider_vtable_callback_requestTexture
  gen_qquickimageprovider_types.QQuickImageProvider(h: fcQQuickImageProvider_new(addr(vtbl[].vtbl), addr(vtbl[]), cint(typeVal)), owned: true)

proc create*(T: type gen_qquickimageprovider_types.QQuickImageProvider,
    param1: gen_qquickimageprovider_types.QQuickImageProvider,
    vtbl: ref QQuickImageProviderVTable = nil): gen_qquickimageprovider_types.QQuickImageProvider =
  let vtbl = if vtbl == nil: new QQuickImageProviderVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QQuickImageProviderVTable](fcQQuickImageProvider_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].imageType):
    vtbl[].vtbl.imageType = fcQQuickImageProvider_vtable_callback_imageType
  if not isNil(vtbl[].flags):
    vtbl[].vtbl.flags = fcQQuickImageProvider_vtable_callback_flags
  if not isNil(vtbl[].requestImage):
    vtbl[].vtbl.requestImage = fcQQuickImageProvider_vtable_callback_requestImage
  if not isNil(vtbl[].requestPixmap):
    vtbl[].vtbl.requestPixmap = fcQQuickImageProvider_vtable_callback_requestPixmap
  if not isNil(vtbl[].requestTexture):
    vtbl[].vtbl.requestTexture = fcQQuickImageProvider_vtable_callback_requestTexture
  gen_qquickimageprovider_types.QQuickImageProvider(h: fcQQuickImageProvider_new2(addr(vtbl[].vtbl), addr(vtbl[]), param1.h), owned: true)

proc create*(T: type gen_qquickimageprovider_types.QQuickImageProvider,
    typeVal: cint, flags: cint,
    vtbl: ref QQuickImageProviderVTable = nil): gen_qquickimageprovider_types.QQuickImageProvider =
  let vtbl = if vtbl == nil: new QQuickImageProviderVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QQuickImageProviderVTable](fcQQuickImageProvider_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].imageType):
    vtbl[].vtbl.imageType = fcQQuickImageProvider_vtable_callback_imageType
  if not isNil(vtbl[].flags):
    vtbl[].vtbl.flags = fcQQuickImageProvider_vtable_callback_flags
  if not isNil(vtbl[].requestImage):
    vtbl[].vtbl.requestImage = fcQQuickImageProvider_vtable_callback_requestImage
  if not isNil(vtbl[].requestPixmap):
    vtbl[].vtbl.requestPixmap = fcQQuickImageProvider_vtable_callback_requestPixmap
  if not isNil(vtbl[].requestTexture):
    vtbl[].vtbl.requestTexture = fcQQuickImageProvider_vtable_callback_requestTexture
  gen_qquickimageprovider_types.QQuickImageProvider(h: fcQQuickImageProvider_new3(addr(vtbl[].vtbl), addr(vtbl[]), cint(typeVal), cint(flags)), owned: true)

const cQQuickImageProvider_mvtbl = cQQuickImageProviderVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQQuickImageProvider()[])](self.fcQQuickImageProvider_vdata())
    inst[].h = nil
    inst[].owned = false,

  imageType: fcQQuickImageProvider_method_callback_imageType,
  flags: fcQQuickImageProvider_method_callback_flags,
  requestImage: fcQQuickImageProvider_method_callback_requestImage,
  requestPixmap: fcQQuickImageProvider_method_callback_requestPixmap,
  requestTexture: fcQQuickImageProvider_method_callback_requestTexture,
)
proc create*(T: type gen_qquickimageprovider_types.QQuickImageProvider,
    typeVal: cint,
    inst: VirtualQQuickImageProvider) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQQuickImageProvider_new(addr(cQQuickImageProvider_mvtbl), addr(inst[]), cint(typeVal))
  inst[].owned = true

proc create*(T: type gen_qquickimageprovider_types.QQuickImageProvider,
    param1: gen_qquickimageprovider_types.QQuickImageProvider,
    inst: VirtualQQuickImageProvider) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQQuickImageProvider_new2(addr(cQQuickImageProvider_mvtbl), addr(inst[]), param1.h)
  inst[].owned = true

proc create*(T: type gen_qquickimageprovider_types.QQuickImageProvider,
    typeVal: cint, flags: cint,
    inst: VirtualQQuickImageProvider) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQQuickImageProvider_new3(addr(cQQuickImageProvider_mvtbl), addr(inst[]), cint(typeVal), cint(flags))
  inst[].owned = true

proc requestImageResponse*(self: gen_qquickimageprovider_types.QQuickAsyncImageProvider, id: openArray[char], requestedSize: gen_qsize_types.QSize): gen_qquickimageprovider_types.QQuickImageResponse =
  gen_qquickimageprovider_types.QQuickImageResponse(h: fcQQuickAsyncImageProvider_requestImageResponse(self.h, struct_miqt_string(data: if len(id) > 0: addr id[0] else: nil, len: csize_t(len(id))), requestedSize.h), owned: false)

type QQuickAsyncImageProviderrequestImageResponseProc* = proc(self: QQuickAsyncImageProvider, id: openArray[char], requestedSize: gen_qsize_types.QSize): gen_qquickimageprovider_types.QQuickImageResponse {.raises: [], gcsafe.}
type QQuickAsyncImageProviderimageTypeProc* = proc(self: QQuickAsyncImageProvider): cint {.raises: [], gcsafe.}
type QQuickAsyncImageProviderflagsProc* = proc(self: QQuickAsyncImageProvider): cint {.raises: [], gcsafe.}
type QQuickAsyncImageProviderrequestImageProc* = proc(self: QQuickAsyncImageProvider, id: openArray[char], size: gen_qsize_types.QSize, requestedSize: gen_qsize_types.QSize): gen_qimage_types.QImage {.raises: [], gcsafe.}
type QQuickAsyncImageProviderrequestPixmapProc* = proc(self: QQuickAsyncImageProvider, id: openArray[char], size: gen_qsize_types.QSize, requestedSize: gen_qsize_types.QSize): gen_qpixmap_types.QPixmap {.raises: [], gcsafe.}
type QQuickAsyncImageProviderrequestTextureProc* = proc(self: QQuickAsyncImageProvider, id: openArray[char], size: gen_qsize_types.QSize, requestedSize: gen_qsize_types.QSize): gen_qquickimageprovider_types.QQuickTextureFactory {.raises: [], gcsafe.}

type QQuickAsyncImageProviderVTable* {.inheritable, pure.} = object
  vtbl: cQQuickAsyncImageProviderVTable
  requestImageResponse*: QQuickAsyncImageProviderrequestImageResponseProc
  imageType*: QQuickAsyncImageProviderimageTypeProc
  flags*: QQuickAsyncImageProviderflagsProc
  requestImage*: QQuickAsyncImageProviderrequestImageProc
  requestPixmap*: QQuickAsyncImageProviderrequestPixmapProc
  requestTexture*: QQuickAsyncImageProviderrequestTextureProc

proc QQuickAsyncImageProviderimageType*(self: gen_qquickimageprovider_types.QQuickAsyncImageProvider): cint =
  cint(fcQQuickAsyncImageProvider_virtualbase_imageType(self.h))

proc QQuickAsyncImageProviderflags*(self: gen_qquickimageprovider_types.QQuickAsyncImageProvider): cint =
  cint(fcQQuickAsyncImageProvider_virtualbase_flags(self.h))

proc QQuickAsyncImageProviderrequestImage*(self: gen_qquickimageprovider_types.QQuickAsyncImageProvider, id: openArray[char], size: gen_qsize_types.QSize, requestedSize: gen_qsize_types.QSize): gen_qimage_types.QImage =
  gen_qimage_types.QImage(h: fcQQuickAsyncImageProvider_virtualbase_requestImage(self.h, struct_miqt_string(data: if len(id) > 0: addr id[0] else: nil, len: csize_t(len(id))), size.h, requestedSize.h), owned: true)

proc QQuickAsyncImageProviderrequestPixmap*(self: gen_qquickimageprovider_types.QQuickAsyncImageProvider, id: openArray[char], size: gen_qsize_types.QSize, requestedSize: gen_qsize_types.QSize): gen_qpixmap_types.QPixmap =
  gen_qpixmap_types.QPixmap(h: fcQQuickAsyncImageProvider_virtualbase_requestPixmap(self.h, struct_miqt_string(data: if len(id) > 0: addr id[0] else: nil, len: csize_t(len(id))), size.h, requestedSize.h), owned: true)

proc QQuickAsyncImageProviderrequestTexture*(self: gen_qquickimageprovider_types.QQuickAsyncImageProvider, id: openArray[char], size: gen_qsize_types.QSize, requestedSize: gen_qsize_types.QSize): gen_qquickimageprovider_types.QQuickTextureFactory =
  gen_qquickimageprovider_types.QQuickTextureFactory(h: fcQQuickAsyncImageProvider_virtualbase_requestTexture(self.h, struct_miqt_string(data: if len(id) > 0: addr id[0] else: nil, len: csize_t(len(id))), size.h, requestedSize.h), owned: false)


proc fcQQuickAsyncImageProvider_vtable_callback_requestImageResponse(self: pointer, id: struct_miqt_string, requestedSize: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QQuickAsyncImageProviderVTable](fcQQuickAsyncImageProvider_vdata(self))
  let self = QQuickAsyncImageProvider(h: self)
  let vid_ms = id
  let vidx_ret = string.fromBytes(vid_ms)
  c_free(vid_ms.data)
  let slotval1 = vidx_ret
  let slotval2 = gen_qsize_types.QSize(h: requestedSize, owned: false)
  var virtualReturn = vtbl[].requestImageResponse(self, slotval1, slotval2)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQQuickAsyncImageProvider_vtable_callback_imageType(self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QQuickAsyncImageProviderVTable](fcQQuickAsyncImageProvider_vdata(self))
  let self = QQuickAsyncImageProvider(h: self)
  var virtualReturn = vtbl[].imageType(self)
  cint(virtualReturn)

proc fcQQuickAsyncImageProvider_vtable_callback_flags(self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QQuickAsyncImageProviderVTable](fcQQuickAsyncImageProvider_vdata(self))
  let self = QQuickAsyncImageProvider(h: self)
  var virtualReturn = vtbl[].flags(self)
  cint(virtualReturn)

proc fcQQuickAsyncImageProvider_vtable_callback_requestImage(self: pointer, id: struct_miqt_string, size: pointer, requestedSize: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QQuickAsyncImageProviderVTable](fcQQuickAsyncImageProvider_vdata(self))
  let self = QQuickAsyncImageProvider(h: self)
  let vid_ms = id
  let vidx_ret = string.fromBytes(vid_ms)
  c_free(vid_ms.data)
  let slotval1 = vidx_ret
  let slotval2 = gen_qsize_types.QSize(h: size, owned: false)
  let slotval3 = gen_qsize_types.QSize(h: requestedSize, owned: false)
  var virtualReturn = vtbl[].requestImage(self, slotval1, slotval2, slotval3)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQQuickAsyncImageProvider_vtable_callback_requestPixmap(self: pointer, id: struct_miqt_string, size: pointer, requestedSize: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QQuickAsyncImageProviderVTable](fcQQuickAsyncImageProvider_vdata(self))
  let self = QQuickAsyncImageProvider(h: self)
  let vid_ms = id
  let vidx_ret = string.fromBytes(vid_ms)
  c_free(vid_ms.data)
  let slotval1 = vidx_ret
  let slotval2 = gen_qsize_types.QSize(h: size, owned: false)
  let slotval3 = gen_qsize_types.QSize(h: requestedSize, owned: false)
  var virtualReturn = vtbl[].requestPixmap(self, slotval1, slotval2, slotval3)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQQuickAsyncImageProvider_vtable_callback_requestTexture(self: pointer, id: struct_miqt_string, size: pointer, requestedSize: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QQuickAsyncImageProviderVTable](fcQQuickAsyncImageProvider_vdata(self))
  let self = QQuickAsyncImageProvider(h: self)
  let vid_ms = id
  let vidx_ret = string.fromBytes(vid_ms)
  c_free(vid_ms.data)
  let slotval1 = vidx_ret
  let slotval2 = gen_qsize_types.QSize(h: size, owned: false)
  let slotval3 = gen_qsize_types.QSize(h: requestedSize, owned: false)
  var virtualReturn = vtbl[].requestTexture(self, slotval1, slotval2, slotval3)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

type VirtualQQuickAsyncImageProvider* {.inheritable.} = ref object of QQuickAsyncImageProvider
  vtbl*: cQQuickAsyncImageProviderVTable

method requestImageResponse*(self: VirtualQQuickAsyncImageProvider, id: openArray[char], requestedSize: gen_qsize_types.QSize): gen_qquickimageprovider_types.QQuickImageResponse {.base.} =
  raiseAssert("missing implementation of QQuickAsyncImageProvider.requestImageResponse")
method imageType*(self: VirtualQQuickAsyncImageProvider): cint {.base.} =
  QQuickAsyncImageProviderimageType(self[])
method flags*(self: VirtualQQuickAsyncImageProvider): cint {.base.} =
  QQuickAsyncImageProviderflags(self[])
method requestImage*(self: VirtualQQuickAsyncImageProvider, id: openArray[char], size: gen_qsize_types.QSize, requestedSize: gen_qsize_types.QSize): gen_qimage_types.QImage {.base.} =
  QQuickAsyncImageProviderrequestImage(self[], id, size, requestedSize)
method requestPixmap*(self: VirtualQQuickAsyncImageProvider, id: openArray[char], size: gen_qsize_types.QSize, requestedSize: gen_qsize_types.QSize): gen_qpixmap_types.QPixmap {.base.} =
  QQuickAsyncImageProviderrequestPixmap(self[], id, size, requestedSize)
method requestTexture*(self: VirtualQQuickAsyncImageProvider, id: openArray[char], size: gen_qsize_types.QSize, requestedSize: gen_qsize_types.QSize): gen_qquickimageprovider_types.QQuickTextureFactory {.base.} =
  QQuickAsyncImageProviderrequestTexture(self[], id, size, requestedSize)

proc fcQQuickAsyncImageProvider_method_callback_requestImageResponse(self: pointer, id: struct_miqt_string, requestedSize: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQQuickAsyncImageProvider](fcQQuickAsyncImageProvider_vdata(self))
  let vid_ms = id
  let vidx_ret = string.fromBytes(vid_ms)
  c_free(vid_ms.data)
  let slotval1 = vidx_ret
  let slotval2 = gen_qsize_types.QSize(h: requestedSize, owned: false)
  var virtualReturn = inst.requestImageResponse(slotval1, slotval2)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQQuickAsyncImageProvider_method_callback_imageType(self: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQQuickAsyncImageProvider](fcQQuickAsyncImageProvider_vdata(self))
  var virtualReturn = inst.imageType()
  cint(virtualReturn)

proc fcQQuickAsyncImageProvider_method_callback_flags(self: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQQuickAsyncImageProvider](fcQQuickAsyncImageProvider_vdata(self))
  var virtualReturn = inst.flags()
  cint(virtualReturn)

proc fcQQuickAsyncImageProvider_method_callback_requestImage(self: pointer, id: struct_miqt_string, size: pointer, requestedSize: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQQuickAsyncImageProvider](fcQQuickAsyncImageProvider_vdata(self))
  let vid_ms = id
  let vidx_ret = string.fromBytes(vid_ms)
  c_free(vid_ms.data)
  let slotval1 = vidx_ret
  let slotval2 = gen_qsize_types.QSize(h: size, owned: false)
  let slotval3 = gen_qsize_types.QSize(h: requestedSize, owned: false)
  var virtualReturn = inst.requestImage(slotval1, slotval2, slotval3)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQQuickAsyncImageProvider_method_callback_requestPixmap(self: pointer, id: struct_miqt_string, size: pointer, requestedSize: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQQuickAsyncImageProvider](fcQQuickAsyncImageProvider_vdata(self))
  let vid_ms = id
  let vidx_ret = string.fromBytes(vid_ms)
  c_free(vid_ms.data)
  let slotval1 = vidx_ret
  let slotval2 = gen_qsize_types.QSize(h: size, owned: false)
  let slotval3 = gen_qsize_types.QSize(h: requestedSize, owned: false)
  var virtualReturn = inst.requestPixmap(slotval1, slotval2, slotval3)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQQuickAsyncImageProvider_method_callback_requestTexture(self: pointer, id: struct_miqt_string, size: pointer, requestedSize: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQQuickAsyncImageProvider](fcQQuickAsyncImageProvider_vdata(self))
  let vid_ms = id
  let vidx_ret = string.fromBytes(vid_ms)
  c_free(vid_ms.data)
  let slotval1 = vidx_ret
  let slotval2 = gen_qsize_types.QSize(h: size, owned: false)
  let slotval3 = gen_qsize_types.QSize(h: requestedSize, owned: false)
  var virtualReturn = inst.requestTexture(slotval1, slotval2, slotval3)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h


proc create*(T: type gen_qquickimageprovider_types.QQuickAsyncImageProvider,
    vtbl: ref QQuickAsyncImageProviderVTable = nil): gen_qquickimageprovider_types.QQuickAsyncImageProvider =
  let vtbl = if vtbl == nil: new QQuickAsyncImageProviderVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QQuickAsyncImageProviderVTable](fcQQuickAsyncImageProvider_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].requestImageResponse):
    vtbl[].vtbl.requestImageResponse = fcQQuickAsyncImageProvider_vtable_callback_requestImageResponse
  if not isNil(vtbl[].imageType):
    vtbl[].vtbl.imageType = fcQQuickAsyncImageProvider_vtable_callback_imageType
  if not isNil(vtbl[].flags):
    vtbl[].vtbl.flags = fcQQuickAsyncImageProvider_vtable_callback_flags
  if not isNil(vtbl[].requestImage):
    vtbl[].vtbl.requestImage = fcQQuickAsyncImageProvider_vtable_callback_requestImage
  if not isNil(vtbl[].requestPixmap):
    vtbl[].vtbl.requestPixmap = fcQQuickAsyncImageProvider_vtable_callback_requestPixmap
  if not isNil(vtbl[].requestTexture):
    vtbl[].vtbl.requestTexture = fcQQuickAsyncImageProvider_vtable_callback_requestTexture
  gen_qquickimageprovider_types.QQuickAsyncImageProvider(h: fcQQuickAsyncImageProvider_new(addr(vtbl[].vtbl), addr(vtbl[])), owned: true)

proc create*(T: type gen_qquickimageprovider_types.QQuickAsyncImageProvider,
    param1: gen_qquickimageprovider_types.QQuickAsyncImageProvider,
    vtbl: ref QQuickAsyncImageProviderVTable = nil): gen_qquickimageprovider_types.QQuickAsyncImageProvider =
  let vtbl = if vtbl == nil: new QQuickAsyncImageProviderVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QQuickAsyncImageProviderVTable](fcQQuickAsyncImageProvider_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].requestImageResponse):
    vtbl[].vtbl.requestImageResponse = fcQQuickAsyncImageProvider_vtable_callback_requestImageResponse
  if not isNil(vtbl[].imageType):
    vtbl[].vtbl.imageType = fcQQuickAsyncImageProvider_vtable_callback_imageType
  if not isNil(vtbl[].flags):
    vtbl[].vtbl.flags = fcQQuickAsyncImageProvider_vtable_callback_flags
  if not isNil(vtbl[].requestImage):
    vtbl[].vtbl.requestImage = fcQQuickAsyncImageProvider_vtable_callback_requestImage
  if not isNil(vtbl[].requestPixmap):
    vtbl[].vtbl.requestPixmap = fcQQuickAsyncImageProvider_vtable_callback_requestPixmap
  if not isNil(vtbl[].requestTexture):
    vtbl[].vtbl.requestTexture = fcQQuickAsyncImageProvider_vtable_callback_requestTexture
  gen_qquickimageprovider_types.QQuickAsyncImageProvider(h: fcQQuickAsyncImageProvider_new2(addr(vtbl[].vtbl), addr(vtbl[]), param1.h), owned: true)

const cQQuickAsyncImageProvider_mvtbl = cQQuickAsyncImageProviderVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQQuickAsyncImageProvider()[])](self.fcQQuickAsyncImageProvider_vdata())
    inst[].h = nil
    inst[].owned = false,

  requestImageResponse: fcQQuickAsyncImageProvider_method_callback_requestImageResponse,
  imageType: fcQQuickAsyncImageProvider_method_callback_imageType,
  flags: fcQQuickAsyncImageProvider_method_callback_flags,
  requestImage: fcQQuickAsyncImageProvider_method_callback_requestImage,
  requestPixmap: fcQQuickAsyncImageProvider_method_callback_requestPixmap,
  requestTexture: fcQQuickAsyncImageProvider_method_callback_requestTexture,
)
proc create*(T: type gen_qquickimageprovider_types.QQuickAsyncImageProvider,
    inst: VirtualQQuickAsyncImageProvider) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQQuickAsyncImageProvider_new(addr(cQQuickAsyncImageProvider_mvtbl), addr(inst[]))
  inst[].owned = true

proc create*(T: type gen_qquickimageprovider_types.QQuickAsyncImageProvider,
    param1: gen_qquickimageprovider_types.QQuickAsyncImageProvider,
    inst: VirtualQQuickAsyncImageProvider) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQQuickAsyncImageProvider_new2(addr(cQQuickAsyncImageProvider_mvtbl), addr(inst[]), param1.h)
  inst[].owned = true

