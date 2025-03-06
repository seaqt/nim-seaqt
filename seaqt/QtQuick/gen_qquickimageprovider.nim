import ./Qt6Quick_libs

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

const cflags = gorge("pkg-config --cflags Qt6Quick") & " -fPIC"
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

proc fcQQuickTextureFactory_metaObject(self: pointer, ): pointer {.importc: "QQuickTextureFactory_metaObject".}
proc fcQQuickTextureFactory_metacast(self: pointer, param1: cstring): pointer {.importc: "QQuickTextureFactory_metacast".}
proc fcQQuickTextureFactory_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QQuickTextureFactory_metacall".}
proc fcQQuickTextureFactory_tr(s: cstring): struct_miqt_string {.importc: "QQuickTextureFactory_tr".}
proc fcQQuickTextureFactory_createTexture(self: pointer, window: pointer): pointer {.importc: "QQuickTextureFactory_createTexture".}
proc fcQQuickTextureFactory_textureSize(self: pointer, ): pointer {.importc: "QQuickTextureFactory_textureSize".}
proc fcQQuickTextureFactory_textureByteCount(self: pointer, ): cint {.importc: "QQuickTextureFactory_textureByteCount".}
proc fcQQuickTextureFactory_image(self: pointer, ): pointer {.importc: "QQuickTextureFactory_image".}
proc fcQQuickTextureFactory_textureFactoryForImage(image: pointer): pointer {.importc: "QQuickTextureFactory_textureFactoryForImage".}
proc fcQQuickTextureFactory_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QQuickTextureFactory_tr2".}
proc fcQQuickTextureFactory_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QQuickTextureFactory_tr3".}
type cQQuickTextureFactoryVTable {.pure.} = object
  destructor*: proc(vtbl: ptr cQQuickTextureFactoryVTable, self: ptr cQQuickTextureFactory) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(vtbl, self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(vtbl, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  createTexture*: proc(vtbl, self: pointer, window: pointer): pointer {.cdecl, raises: [], gcsafe.}
  textureSize*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  textureByteCount*: proc(vtbl, self: pointer, ): cint {.cdecl, raises: [], gcsafe.}
  image*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  event*: proc(vtbl, self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(vtbl, self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQQuickTextureFactory_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QQuickTextureFactory_virtualbase_metaObject".}
proc fcQQuickTextureFactory_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QQuickTextureFactory_virtualbase_metacast".}
proc fcQQuickTextureFactory_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QQuickTextureFactory_virtualbase_metacall".}
proc fcQQuickTextureFactory_virtualbase_image(self: pointer, ): pointer {.importc: "QQuickTextureFactory_virtualbase_image".}
proc fcQQuickTextureFactory_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QQuickTextureFactory_virtualbase_event".}
proc fcQQuickTextureFactory_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QQuickTextureFactory_virtualbase_eventFilter".}
proc fcQQuickTextureFactory_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QQuickTextureFactory_virtualbase_timerEvent".}
proc fcQQuickTextureFactory_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QQuickTextureFactory_virtualbase_childEvent".}
proc fcQQuickTextureFactory_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QQuickTextureFactory_virtualbase_customEvent".}
proc fcQQuickTextureFactory_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QQuickTextureFactory_virtualbase_connectNotify".}
proc fcQQuickTextureFactory_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QQuickTextureFactory_virtualbase_disconnectNotify".}
proc fcQQuickTextureFactory_protectedbase_sender(self: pointer, ): pointer {.importc: "QQuickTextureFactory_protectedbase_sender".}
proc fcQQuickTextureFactory_protectedbase_senderSignalIndex(self: pointer, ): cint {.importc: "QQuickTextureFactory_protectedbase_senderSignalIndex".}
proc fcQQuickTextureFactory_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QQuickTextureFactory_protectedbase_receivers".}
proc fcQQuickTextureFactory_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QQuickTextureFactory_protectedbase_isSignalConnected".}
proc fcQQuickTextureFactory_new(vtbl: pointer, ): ptr cQQuickTextureFactory {.importc: "QQuickTextureFactory_new".}
proc fcQQuickTextureFactory_staticMetaObject(): pointer {.importc: "QQuickTextureFactory_staticMetaObject".}
proc fcQQuickImageResponse_metaObject(self: pointer, ): pointer {.importc: "QQuickImageResponse_metaObject".}
proc fcQQuickImageResponse_metacast(self: pointer, param1: cstring): pointer {.importc: "QQuickImageResponse_metacast".}
proc fcQQuickImageResponse_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QQuickImageResponse_metacall".}
proc fcQQuickImageResponse_tr(s: cstring): struct_miqt_string {.importc: "QQuickImageResponse_tr".}
proc fcQQuickImageResponse_textureFactory(self: pointer, ): pointer {.importc: "QQuickImageResponse_textureFactory".}
proc fcQQuickImageResponse_errorString(self: pointer, ): struct_miqt_string {.importc: "QQuickImageResponse_errorString".}
proc fcQQuickImageResponse_cancel(self: pointer, ): void {.importc: "QQuickImageResponse_cancel".}
proc fcQQuickImageResponse_finished(self: pointer, ): void {.importc: "QQuickImageResponse_finished".}
proc fcQQuickImageResponse_connect_finished(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QQuickImageResponse_connect_finished".}
proc fcQQuickImageResponse_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QQuickImageResponse_tr2".}
proc fcQQuickImageResponse_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QQuickImageResponse_tr3".}
type cQQuickImageResponseVTable {.pure.} = object
  destructor*: proc(vtbl: ptr cQQuickImageResponseVTable, self: ptr cQQuickImageResponse) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(vtbl, self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(vtbl, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  textureFactory*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  errorString*: proc(vtbl, self: pointer, ): struct_miqt_string {.cdecl, raises: [], gcsafe.}
  cancel*: proc(vtbl, self: pointer, ): void {.cdecl, raises: [], gcsafe.}
  event*: proc(vtbl, self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(vtbl, self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQQuickImageResponse_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QQuickImageResponse_virtualbase_metaObject".}
proc fcQQuickImageResponse_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QQuickImageResponse_virtualbase_metacast".}
proc fcQQuickImageResponse_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QQuickImageResponse_virtualbase_metacall".}
proc fcQQuickImageResponse_virtualbase_errorString(self: pointer, ): struct_miqt_string {.importc: "QQuickImageResponse_virtualbase_errorString".}
proc fcQQuickImageResponse_virtualbase_cancel(self: pointer, ): void {.importc: "QQuickImageResponse_virtualbase_cancel".}
proc fcQQuickImageResponse_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QQuickImageResponse_virtualbase_event".}
proc fcQQuickImageResponse_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QQuickImageResponse_virtualbase_eventFilter".}
proc fcQQuickImageResponse_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QQuickImageResponse_virtualbase_timerEvent".}
proc fcQQuickImageResponse_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QQuickImageResponse_virtualbase_childEvent".}
proc fcQQuickImageResponse_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QQuickImageResponse_virtualbase_customEvent".}
proc fcQQuickImageResponse_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QQuickImageResponse_virtualbase_connectNotify".}
proc fcQQuickImageResponse_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QQuickImageResponse_virtualbase_disconnectNotify".}
proc fcQQuickImageResponse_protectedbase_sender(self: pointer, ): pointer {.importc: "QQuickImageResponse_protectedbase_sender".}
proc fcQQuickImageResponse_protectedbase_senderSignalIndex(self: pointer, ): cint {.importc: "QQuickImageResponse_protectedbase_senderSignalIndex".}
proc fcQQuickImageResponse_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QQuickImageResponse_protectedbase_receivers".}
proc fcQQuickImageResponse_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QQuickImageResponse_protectedbase_isSignalConnected".}
proc fcQQuickImageResponse_new(vtbl: pointer, ): ptr cQQuickImageResponse {.importc: "QQuickImageResponse_new".}
proc fcQQuickImageResponse_staticMetaObject(): pointer {.importc: "QQuickImageResponse_staticMetaObject".}
proc fcQQuickImageProvider_metaObject(self: pointer, ): pointer {.importc: "QQuickImageProvider_metaObject".}
proc fcQQuickImageProvider_metacast(self: pointer, param1: cstring): pointer {.importc: "QQuickImageProvider_metacast".}
proc fcQQuickImageProvider_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QQuickImageProvider_metacall".}
proc fcQQuickImageProvider_tr(s: cstring): struct_miqt_string {.importc: "QQuickImageProvider_tr".}
proc fcQQuickImageProvider_imageType(self: pointer, ): cint {.importc: "QQuickImageProvider_imageType".}
proc fcQQuickImageProvider_flags(self: pointer, ): cint {.importc: "QQuickImageProvider_flags".}
proc fcQQuickImageProvider_requestImage(self: pointer, id: struct_miqt_string, size: pointer, requestedSize: pointer): pointer {.importc: "QQuickImageProvider_requestImage".}
proc fcQQuickImageProvider_requestPixmap(self: pointer, id: struct_miqt_string, size: pointer, requestedSize: pointer): pointer {.importc: "QQuickImageProvider_requestPixmap".}
proc fcQQuickImageProvider_requestTexture(self: pointer, id: struct_miqt_string, size: pointer, requestedSize: pointer): pointer {.importc: "QQuickImageProvider_requestTexture".}
proc fcQQuickImageProvider_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QQuickImageProvider_tr2".}
proc fcQQuickImageProvider_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QQuickImageProvider_tr3".}
type cQQuickImageProviderVTable {.pure.} = object
  destructor*: proc(vtbl: ptr cQQuickImageProviderVTable, self: ptr cQQuickImageProvider) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(vtbl, self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(vtbl, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  imageType*: proc(vtbl, self: pointer, ): cint {.cdecl, raises: [], gcsafe.}
  flags*: proc(vtbl, self: pointer, ): cint {.cdecl, raises: [], gcsafe.}
  requestImage*: proc(vtbl, self: pointer, id: struct_miqt_string, size: pointer, requestedSize: pointer): pointer {.cdecl, raises: [], gcsafe.}
  requestPixmap*: proc(vtbl, self: pointer, id: struct_miqt_string, size: pointer, requestedSize: pointer): pointer {.cdecl, raises: [], gcsafe.}
  requestTexture*: proc(vtbl, self: pointer, id: struct_miqt_string, size: pointer, requestedSize: pointer): pointer {.cdecl, raises: [], gcsafe.}
  event*: proc(vtbl, self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(vtbl, self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQQuickImageProvider_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QQuickImageProvider_virtualbase_metaObject".}
proc fcQQuickImageProvider_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QQuickImageProvider_virtualbase_metacast".}
proc fcQQuickImageProvider_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QQuickImageProvider_virtualbase_metacall".}
proc fcQQuickImageProvider_virtualbase_imageType(self: pointer, ): cint {.importc: "QQuickImageProvider_virtualbase_imageType".}
proc fcQQuickImageProvider_virtualbase_flags(self: pointer, ): cint {.importc: "QQuickImageProvider_virtualbase_flags".}
proc fcQQuickImageProvider_virtualbase_requestImage(self: pointer, id: struct_miqt_string, size: pointer, requestedSize: pointer): pointer {.importc: "QQuickImageProvider_virtualbase_requestImage".}
proc fcQQuickImageProvider_virtualbase_requestPixmap(self: pointer, id: struct_miqt_string, size: pointer, requestedSize: pointer): pointer {.importc: "QQuickImageProvider_virtualbase_requestPixmap".}
proc fcQQuickImageProvider_virtualbase_requestTexture(self: pointer, id: struct_miqt_string, size: pointer, requestedSize: pointer): pointer {.importc: "QQuickImageProvider_virtualbase_requestTexture".}
proc fcQQuickImageProvider_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QQuickImageProvider_virtualbase_event".}
proc fcQQuickImageProvider_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QQuickImageProvider_virtualbase_eventFilter".}
proc fcQQuickImageProvider_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QQuickImageProvider_virtualbase_timerEvent".}
proc fcQQuickImageProvider_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QQuickImageProvider_virtualbase_childEvent".}
proc fcQQuickImageProvider_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QQuickImageProvider_virtualbase_customEvent".}
proc fcQQuickImageProvider_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QQuickImageProvider_virtualbase_connectNotify".}
proc fcQQuickImageProvider_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QQuickImageProvider_virtualbase_disconnectNotify".}
proc fcQQuickImageProvider_protectedbase_sender(self: pointer, ): pointer {.importc: "QQuickImageProvider_protectedbase_sender".}
proc fcQQuickImageProvider_protectedbase_senderSignalIndex(self: pointer, ): cint {.importc: "QQuickImageProvider_protectedbase_senderSignalIndex".}
proc fcQQuickImageProvider_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QQuickImageProvider_protectedbase_receivers".}
proc fcQQuickImageProvider_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QQuickImageProvider_protectedbase_isSignalConnected".}
proc fcQQuickImageProvider_new(vtbl: pointer, typeVal: cint): ptr cQQuickImageProvider {.importc: "QQuickImageProvider_new".}
proc fcQQuickImageProvider_new2(vtbl: pointer, typeVal: cint, flags: cint): ptr cQQuickImageProvider {.importc: "QQuickImageProvider_new2".}
proc fcQQuickImageProvider_staticMetaObject(): pointer {.importc: "QQuickImageProvider_staticMetaObject".}
proc fcQQuickAsyncImageProvider_requestImageResponse(self: pointer, id: struct_miqt_string, requestedSize: pointer): pointer {.importc: "QQuickAsyncImageProvider_requestImageResponse".}
type cQQuickAsyncImageProviderVTable {.pure.} = object
  destructor*: proc(vtbl: ptr cQQuickAsyncImageProviderVTable, self: ptr cQQuickAsyncImageProvider) {.cdecl, raises:[], gcsafe.}
  requestImageResponse*: proc(vtbl, self: pointer, id: struct_miqt_string, requestedSize: pointer): pointer {.cdecl, raises: [], gcsafe.}
  metaObject*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(vtbl, self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(vtbl, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  imageType*: proc(vtbl, self: pointer, ): cint {.cdecl, raises: [], gcsafe.}
  flags*: proc(vtbl, self: pointer, ): cint {.cdecl, raises: [], gcsafe.}
  requestImage*: proc(vtbl, self: pointer, id: struct_miqt_string, size: pointer, requestedSize: pointer): pointer {.cdecl, raises: [], gcsafe.}
  requestPixmap*: proc(vtbl, self: pointer, id: struct_miqt_string, size: pointer, requestedSize: pointer): pointer {.cdecl, raises: [], gcsafe.}
  requestTexture*: proc(vtbl, self: pointer, id: struct_miqt_string, size: pointer, requestedSize: pointer): pointer {.cdecl, raises: [], gcsafe.}
  event*: proc(vtbl, self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(vtbl, self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQQuickAsyncImageProvider_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QQuickAsyncImageProvider_virtualbase_metaObject".}
proc fcQQuickAsyncImageProvider_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QQuickAsyncImageProvider_virtualbase_metacast".}
proc fcQQuickAsyncImageProvider_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QQuickAsyncImageProvider_virtualbase_metacall".}
proc fcQQuickAsyncImageProvider_virtualbase_imageType(self: pointer, ): cint {.importc: "QQuickAsyncImageProvider_virtualbase_imageType".}
proc fcQQuickAsyncImageProvider_virtualbase_flags(self: pointer, ): cint {.importc: "QQuickAsyncImageProvider_virtualbase_flags".}
proc fcQQuickAsyncImageProvider_virtualbase_requestImage(self: pointer, id: struct_miqt_string, size: pointer, requestedSize: pointer): pointer {.importc: "QQuickAsyncImageProvider_virtualbase_requestImage".}
proc fcQQuickAsyncImageProvider_virtualbase_requestPixmap(self: pointer, id: struct_miqt_string, size: pointer, requestedSize: pointer): pointer {.importc: "QQuickAsyncImageProvider_virtualbase_requestPixmap".}
proc fcQQuickAsyncImageProvider_virtualbase_requestTexture(self: pointer, id: struct_miqt_string, size: pointer, requestedSize: pointer): pointer {.importc: "QQuickAsyncImageProvider_virtualbase_requestTexture".}
proc fcQQuickAsyncImageProvider_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QQuickAsyncImageProvider_virtualbase_event".}
proc fcQQuickAsyncImageProvider_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QQuickAsyncImageProvider_virtualbase_eventFilter".}
proc fcQQuickAsyncImageProvider_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QQuickAsyncImageProvider_virtualbase_timerEvent".}
proc fcQQuickAsyncImageProvider_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QQuickAsyncImageProvider_virtualbase_childEvent".}
proc fcQQuickAsyncImageProvider_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QQuickAsyncImageProvider_virtualbase_customEvent".}
proc fcQQuickAsyncImageProvider_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QQuickAsyncImageProvider_virtualbase_connectNotify".}
proc fcQQuickAsyncImageProvider_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QQuickAsyncImageProvider_virtualbase_disconnectNotify".}
proc fcQQuickAsyncImageProvider_protectedbase_sender(self: pointer, ): pointer {.importc: "QQuickAsyncImageProvider_protectedbase_sender".}
proc fcQQuickAsyncImageProvider_protectedbase_senderSignalIndex(self: pointer, ): cint {.importc: "QQuickAsyncImageProvider_protectedbase_senderSignalIndex".}
proc fcQQuickAsyncImageProvider_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QQuickAsyncImageProvider_protectedbase_receivers".}
proc fcQQuickAsyncImageProvider_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QQuickAsyncImageProvider_protectedbase_isSignalConnected".}
proc fcQQuickAsyncImageProvider_new(vtbl: pointer, ): ptr cQQuickAsyncImageProvider {.importc: "QQuickAsyncImageProvider_new".}

proc metaObject*(self: gen_qquickimageprovider_types.QQuickTextureFactory, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQQuickTextureFactory_metaObject(self.h), owned: false)

proc metacast*(self: gen_qquickimageprovider_types.QQuickTextureFactory, param1: cstring): pointer =
  fcQQuickTextureFactory_metacast(self.h, param1)

proc metacall*(self: gen_qquickimageprovider_types.QQuickTextureFactory, param1: cint, param2: cint, param3: pointer): cint =
  fcQQuickTextureFactory_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qquickimageprovider_types.QQuickTextureFactory, s: cstring): string =
  let v_ms = fcQQuickTextureFactory_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc createTexture*(self: gen_qquickimageprovider_types.QQuickTextureFactory, window: gen_qquickwindow_types.QQuickWindow): gen_qsgtexture_types.QSGTexture =
  gen_qsgtexture_types.QSGTexture(h: fcQQuickTextureFactory_createTexture(self.h, window.h), owned: false)

proc textureSize*(self: gen_qquickimageprovider_types.QQuickTextureFactory, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQQuickTextureFactory_textureSize(self.h), owned: true)

proc textureByteCount*(self: gen_qquickimageprovider_types.QQuickTextureFactory, ): cint =
  fcQQuickTextureFactory_textureByteCount(self.h)

proc image*(self: gen_qquickimageprovider_types.QQuickTextureFactory, ): gen_qimage_types.QImage =
  gen_qimage_types.QImage(h: fcQQuickTextureFactory_image(self.h), owned: true)

proc textureFactoryForImage*(_: type gen_qquickimageprovider_types.QQuickTextureFactory, image: gen_qimage_types.QImage): gen_qquickimageprovider_types.QQuickTextureFactory =
  gen_qquickimageprovider_types.QQuickTextureFactory(h: fcQQuickTextureFactory_textureFactoryForImage(image.h), owned: false)

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
proc QQuickTextureFactorymetaObject*(self: gen_qquickimageprovider_types.QQuickTextureFactory, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQQuickTextureFactory_virtualbase_metaObject(self.h), owned: false)

proc miqt_exec_callback_cQQuickTextureFactory_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QQuickTextureFactoryVTable](vtbl)
  let self = QQuickTextureFactory(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QQuickTextureFactorymetacast*(self: gen_qquickimageprovider_types.QQuickTextureFactory, param1: cstring): pointer =
  fcQQuickTextureFactory_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQQuickTextureFactory_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QQuickTextureFactoryVTable](vtbl)
  let self = QQuickTextureFactory(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QQuickTextureFactorymetacall*(self: gen_qquickimageprovider_types.QQuickTextureFactory, param1: cint, param2: cint, param3: pointer): cint =
  fcQQuickTextureFactory_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQQuickTextureFactory_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QQuickTextureFactoryVTable](vtbl)
  let self = QQuickTextureFactory(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc miqt_exec_callback_cQQuickTextureFactory_createTexture(vtbl: pointer, self: pointer, window: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QQuickTextureFactoryVTable](vtbl)
  let self = QQuickTextureFactory(h: self)
  let slotval1 = gen_qquickwindow_types.QQuickWindow(h: window, owned: false)
  var virtualReturn = vtbl[].createTexture(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc miqt_exec_callback_cQQuickTextureFactory_textureSize(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QQuickTextureFactoryVTable](vtbl)
  let self = QQuickTextureFactory(h: self)
  var virtualReturn = vtbl[].textureSize(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc miqt_exec_callback_cQQuickTextureFactory_textureByteCount(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QQuickTextureFactoryVTable](vtbl)
  let self = QQuickTextureFactory(h: self)
  var virtualReturn = vtbl[].textureByteCount(self)
  virtualReturn

proc QQuickTextureFactoryimage*(self: gen_qquickimageprovider_types.QQuickTextureFactory, ): gen_qimage_types.QImage =
  gen_qimage_types.QImage(h: fcQQuickTextureFactory_virtualbase_image(self.h), owned: true)

proc miqt_exec_callback_cQQuickTextureFactory_image(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QQuickTextureFactoryVTable](vtbl)
  let self = QQuickTextureFactory(h: self)
  var virtualReturn = vtbl[].image(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QQuickTextureFactoryevent*(self: gen_qquickimageprovider_types.QQuickTextureFactory, event: gen_qcoreevent_types.QEvent): bool =
  fcQQuickTextureFactory_virtualbase_event(self.h, event.h)

proc miqt_exec_callback_cQQuickTextureFactory_event(vtbl: pointer, self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QQuickTextureFactoryVTable](vtbl)
  let self = QQuickTextureFactory(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QQuickTextureFactoryeventFilter*(self: gen_qquickimageprovider_types.QQuickTextureFactory, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQQuickTextureFactory_virtualbase_eventFilter(self.h, watched.h, event.h)

proc miqt_exec_callback_cQQuickTextureFactory_eventFilter(vtbl: pointer, self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QQuickTextureFactoryVTable](vtbl)
  let self = QQuickTextureFactory(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QQuickTextureFactorytimerEvent*(self: gen_qquickimageprovider_types.QQuickTextureFactory, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQQuickTextureFactory_virtualbase_timerEvent(self.h, event.h)

proc miqt_exec_callback_cQQuickTextureFactory_timerEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickTextureFactoryVTable](vtbl)
  let self = QQuickTextureFactory(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc QQuickTextureFactorychildEvent*(self: gen_qquickimageprovider_types.QQuickTextureFactory, event: gen_qcoreevent_types.QChildEvent): void =
  fcQQuickTextureFactory_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQQuickTextureFactory_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickTextureFactoryVTable](vtbl)
  let self = QQuickTextureFactory(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc QQuickTextureFactorycustomEvent*(self: gen_qquickimageprovider_types.QQuickTextureFactory, event: gen_qcoreevent_types.QEvent): void =
  fcQQuickTextureFactory_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQQuickTextureFactory_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickTextureFactoryVTable](vtbl)
  let self = QQuickTextureFactory(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc QQuickTextureFactoryconnectNotify*(self: gen_qquickimageprovider_types.QQuickTextureFactory, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQQuickTextureFactory_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQQuickTextureFactory_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickTextureFactoryVTable](vtbl)
  let self = QQuickTextureFactory(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc QQuickTextureFactorydisconnectNotify*(self: gen_qquickimageprovider_types.QQuickTextureFactory, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQQuickTextureFactory_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQQuickTextureFactory_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickTextureFactoryVTable](vtbl)
  let self = QQuickTextureFactory(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQQuickTextureFactory* {.inheritable.} = ref object of QQuickTextureFactory
  vtbl*: cQQuickTextureFactoryVTable
method metaObject*(self: VirtualQQuickTextureFactory, ): gen_qobjectdefs_types.QMetaObject {.base.} =
  QQuickTextureFactorymetaObject(self[])
proc miqt_exec_method_cQQuickTextureFactory_metaObject(vtbl: pointer, inst: pointer): pointer {.cdecl.} =
  let vtbl = cast[VirtualQQuickTextureFactory](cast[uint](vtbl) - uint(offsetOf(VirtualQQuickTextureFactory, vtbl)))
  var virtualReturn = vtbl.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method metacast*(self: VirtualQQuickTextureFactory, param1: cstring): pointer {.base.} =
  QQuickTextureFactorymetacast(self[], param1)
proc miqt_exec_method_cQQuickTextureFactory_metacast(vtbl: pointer, inst: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[VirtualQQuickTextureFactory](cast[uint](vtbl) - uint(offsetOf(VirtualQQuickTextureFactory, vtbl)))
  let slotval1 = (param1)
  var virtualReturn = vtbl.metacast(slotval1)
  virtualReturn

method metacall*(self: VirtualQQuickTextureFactory, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QQuickTextureFactorymetacall(self[], param1, param2, param3)
proc miqt_exec_method_cQQuickTextureFactory_metacall(vtbl: pointer, inst: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[VirtualQQuickTextureFactory](cast[uint](vtbl) - uint(offsetOf(VirtualQQuickTextureFactory, vtbl)))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl.metacall(slotval1, slotval2, slotval3)
  virtualReturn

method createTexture*(self: VirtualQQuickTextureFactory, window: gen_qquickwindow_types.QQuickWindow): gen_qsgtexture_types.QSGTexture {.base.} =
  raiseAssert("missing implementation of QQuickTextureFactory_virtualbase_createTexture")
proc miqt_exec_method_cQQuickTextureFactory_createTexture(vtbl: pointer, inst: pointer, window: pointer): pointer {.cdecl.} =
  let vtbl = cast[VirtualQQuickTextureFactory](cast[uint](vtbl) - uint(offsetOf(VirtualQQuickTextureFactory, vtbl)))
  let slotval1 = gen_qquickwindow_types.QQuickWindow(h: window, owned: false)
  var virtualReturn = vtbl.createTexture(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method textureSize*(self: VirtualQQuickTextureFactory, ): gen_qsize_types.QSize {.base.} =
  raiseAssert("missing implementation of QQuickTextureFactory_virtualbase_textureSize")
proc miqt_exec_method_cQQuickTextureFactory_textureSize(vtbl: pointer, inst: pointer): pointer {.cdecl.} =
  let vtbl = cast[VirtualQQuickTextureFactory](cast[uint](vtbl) - uint(offsetOf(VirtualQQuickTextureFactory, vtbl)))
  var virtualReturn = vtbl.textureSize()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method textureByteCount*(self: VirtualQQuickTextureFactory, ): cint {.base.} =
  raiseAssert("missing implementation of QQuickTextureFactory_virtualbase_textureByteCount")
proc miqt_exec_method_cQQuickTextureFactory_textureByteCount(vtbl: pointer, inst: pointer): cint {.cdecl.} =
  let vtbl = cast[VirtualQQuickTextureFactory](cast[uint](vtbl) - uint(offsetOf(VirtualQQuickTextureFactory, vtbl)))
  var virtualReturn = vtbl.textureByteCount()
  virtualReturn

method image*(self: VirtualQQuickTextureFactory, ): gen_qimage_types.QImage {.base.} =
  QQuickTextureFactoryimage(self[])
proc miqt_exec_method_cQQuickTextureFactory_image(vtbl: pointer, inst: pointer): pointer {.cdecl.} =
  let vtbl = cast[VirtualQQuickTextureFactory](cast[uint](vtbl) - uint(offsetOf(VirtualQQuickTextureFactory, vtbl)))
  var virtualReturn = vtbl.image()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method event*(self: VirtualQQuickTextureFactory, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QQuickTextureFactoryevent(self[], event)
proc miqt_exec_method_cQQuickTextureFactory_event(vtbl: pointer, inst: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[VirtualQQuickTextureFactory](cast[uint](vtbl) - uint(offsetOf(VirtualQQuickTextureFactory, vtbl)))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl.event(slotval1)
  virtualReturn

method eventFilter*(self: VirtualQQuickTextureFactory, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QQuickTextureFactoryeventFilter(self[], watched, event)
proc miqt_exec_method_cQQuickTextureFactory_eventFilter(vtbl: pointer, inst: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[VirtualQQuickTextureFactory](cast[uint](vtbl) - uint(offsetOf(VirtualQQuickTextureFactory, vtbl)))
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl.eventFilter(slotval1, slotval2)
  virtualReturn

method timerEvent*(self: VirtualQQuickTextureFactory, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QQuickTextureFactorytimerEvent(self[], event)
proc miqt_exec_method_cQQuickTextureFactory_timerEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQQuickTextureFactory](cast[uint](vtbl) - uint(offsetOf(VirtualQQuickTextureFactory, vtbl)))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl.timerEvent(slotval1)

method childEvent*(self: VirtualQQuickTextureFactory, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QQuickTextureFactorychildEvent(self[], event)
proc miqt_exec_method_cQQuickTextureFactory_childEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQQuickTextureFactory](cast[uint](vtbl) - uint(offsetOf(VirtualQQuickTextureFactory, vtbl)))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl.childEvent(slotval1)

method customEvent*(self: VirtualQQuickTextureFactory, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QQuickTextureFactorycustomEvent(self[], event)
proc miqt_exec_method_cQQuickTextureFactory_customEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQQuickTextureFactory](cast[uint](vtbl) - uint(offsetOf(VirtualQQuickTextureFactory, vtbl)))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl.customEvent(slotval1)

method connectNotify*(self: VirtualQQuickTextureFactory, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QQuickTextureFactoryconnectNotify(self[], signal)
proc miqt_exec_method_cQQuickTextureFactory_connectNotify(vtbl: pointer, inst: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQQuickTextureFactory](cast[uint](vtbl) - uint(offsetOf(VirtualQQuickTextureFactory, vtbl)))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl.connectNotify(slotval1)

method disconnectNotify*(self: VirtualQQuickTextureFactory, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QQuickTextureFactorydisconnectNotify(self[], signal)
proc miqt_exec_method_cQQuickTextureFactory_disconnectNotify(vtbl: pointer, inst: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQQuickTextureFactory](cast[uint](vtbl) - uint(offsetOf(VirtualQQuickTextureFactory, vtbl)))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl.disconnectNotify(slotval1)

proc sender*(self: gen_qquickimageprovider_types.QQuickTextureFactory, ): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQQuickTextureFactory_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qquickimageprovider_types.QQuickTextureFactory, ): cint =
  fcQQuickTextureFactory_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qquickimageprovider_types.QQuickTextureFactory, signal: cstring): cint =
  fcQQuickTextureFactory_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qquickimageprovider_types.QQuickTextureFactory, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQQuickTextureFactory_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qquickimageprovider_types.QQuickTextureFactory,
    vtbl: ref QQuickTextureFactoryVTable = nil): gen_qquickimageprovider_types.QQuickTextureFactory =
  let vtbl = if vtbl == nil: new QQuickTextureFactoryVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(vtbl: ptr cQQuickTextureFactoryVTable, _: ptr cQQuickTextureFactory) {.cdecl.} =
    let vtbl = cast[ref QQuickTextureFactoryVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQQuickTextureFactory_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQQuickTextureFactory_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQQuickTextureFactory_metacall
  if not isNil(vtbl[].createTexture):
    vtbl[].vtbl.createTexture = miqt_exec_callback_cQQuickTextureFactory_createTexture
  if not isNil(vtbl[].textureSize):
    vtbl[].vtbl.textureSize = miqt_exec_callback_cQQuickTextureFactory_textureSize
  if not isNil(vtbl[].textureByteCount):
    vtbl[].vtbl.textureByteCount = miqt_exec_callback_cQQuickTextureFactory_textureByteCount
  if not isNil(vtbl[].image):
    vtbl[].vtbl.image = miqt_exec_callback_cQQuickTextureFactory_image
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = miqt_exec_callback_cQQuickTextureFactory_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQQuickTextureFactory_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQQuickTextureFactory_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQQuickTextureFactory_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQQuickTextureFactory_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQQuickTextureFactory_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQQuickTextureFactory_disconnectNotify
  gen_qquickimageprovider_types.QQuickTextureFactory(h: fcQQuickTextureFactory_new(addr(vtbl[].vtbl), ), owned: true)

proc create*(T: type gen_qquickimageprovider_types.QQuickTextureFactory,
    vtbl: VirtualQQuickTextureFactory) =

  vtbl[].vtbl.destructor = proc(vtbl: ptr cQQuickTextureFactoryVTable, _: ptr cQQuickTextureFactory) {.cdecl.} =
    let vtbl = cast[ptr typeof(VirtualQQuickTextureFactory()[])](cast[uint](vtbl) - uint(offsetOf(VirtualQQuickTextureFactory, vtbl)))
    vtbl[].h = nil
    vtbl[].owned = false
  vtbl[].vtbl.metaObject = miqt_exec_method_cQQuickTextureFactory_metaObject
  vtbl[].vtbl.metacast = miqt_exec_method_cQQuickTextureFactory_metacast
  vtbl[].vtbl.metacall = miqt_exec_method_cQQuickTextureFactory_metacall
  vtbl[].vtbl.createTexture = miqt_exec_method_cQQuickTextureFactory_createTexture
  vtbl[].vtbl.textureSize = miqt_exec_method_cQQuickTextureFactory_textureSize
  vtbl[].vtbl.textureByteCount = miqt_exec_method_cQQuickTextureFactory_textureByteCount
  vtbl[].vtbl.image = miqt_exec_method_cQQuickTextureFactory_image
  vtbl[].vtbl.event = miqt_exec_method_cQQuickTextureFactory_event
  vtbl[].vtbl.eventFilter = miqt_exec_method_cQQuickTextureFactory_eventFilter
  vtbl[].vtbl.timerEvent = miqt_exec_method_cQQuickTextureFactory_timerEvent
  vtbl[].vtbl.childEvent = miqt_exec_method_cQQuickTextureFactory_childEvent
  vtbl[].vtbl.customEvent = miqt_exec_method_cQQuickTextureFactory_customEvent
  vtbl[].vtbl.connectNotify = miqt_exec_method_cQQuickTextureFactory_connectNotify
  vtbl[].vtbl.disconnectNotify = miqt_exec_method_cQQuickTextureFactory_disconnectNotify
  if vtbl[].h != nil: delete(move(vtbl[]))
  vtbl[].h = fcQQuickTextureFactory_new(addr(vtbl[].vtbl), )
  vtbl[].owned = true

proc staticMetaObject*(_: type gen_qquickimageprovider_types.QQuickTextureFactory): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQQuickTextureFactory_staticMetaObject())
proc metaObject*(self: gen_qquickimageprovider_types.QQuickImageResponse, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQQuickImageResponse_metaObject(self.h), owned: false)

proc metacast*(self: gen_qquickimageprovider_types.QQuickImageResponse, param1: cstring): pointer =
  fcQQuickImageResponse_metacast(self.h, param1)

proc metacall*(self: gen_qquickimageprovider_types.QQuickImageResponse, param1: cint, param2: cint, param3: pointer): cint =
  fcQQuickImageResponse_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qquickimageprovider_types.QQuickImageResponse, s: cstring): string =
  let v_ms = fcQQuickImageResponse_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc textureFactory*(self: gen_qquickimageprovider_types.QQuickImageResponse, ): gen_qquickimageprovider_types.QQuickTextureFactory =
  gen_qquickimageprovider_types.QQuickTextureFactory(h: fcQQuickImageResponse_textureFactory(self.h), owned: false)

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
proc miqt_exec_callback_cQQuickImageResponse_finished(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QQuickImageResponsefinishedSlot](cast[pointer](slot))
  nimfunc[]()

proc miqt_exec_callback_cQQuickImageResponse_finished_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QQuickImageResponsefinishedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onfinished*(self: gen_qquickimageprovider_types.QQuickImageResponse, slot: QQuickImageResponsefinishedSlot) =
  var tmp = new QQuickImageResponsefinishedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickImageResponse_connect_finished(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQQuickImageResponse_finished, miqt_exec_callback_cQQuickImageResponse_finished_release)

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
proc QQuickImageResponsemetaObject*(self: gen_qquickimageprovider_types.QQuickImageResponse, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQQuickImageResponse_virtualbase_metaObject(self.h), owned: false)

proc miqt_exec_callback_cQQuickImageResponse_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QQuickImageResponseVTable](vtbl)
  let self = QQuickImageResponse(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QQuickImageResponsemetacast*(self: gen_qquickimageprovider_types.QQuickImageResponse, param1: cstring): pointer =
  fcQQuickImageResponse_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQQuickImageResponse_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QQuickImageResponseVTable](vtbl)
  let self = QQuickImageResponse(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QQuickImageResponsemetacall*(self: gen_qquickimageprovider_types.QQuickImageResponse, param1: cint, param2: cint, param3: pointer): cint =
  fcQQuickImageResponse_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQQuickImageResponse_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QQuickImageResponseVTable](vtbl)
  let self = QQuickImageResponse(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc miqt_exec_callback_cQQuickImageResponse_textureFactory(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QQuickImageResponseVTable](vtbl)
  let self = QQuickImageResponse(h: self)
  var virtualReturn = vtbl[].textureFactory(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QQuickImageResponseerrorString*(self: gen_qquickimageprovider_types.QQuickImageResponse, ): string =
  let v_ms = fcQQuickImageResponse_virtualbase_errorString(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc miqt_exec_callback_cQQuickImageResponse_errorString(vtbl: pointer, self: pointer): struct_miqt_string {.cdecl.} =
  let vtbl = cast[ptr QQuickImageResponseVTable](vtbl)
  let self = QQuickImageResponse(h: self)
  var virtualReturn = vtbl[].errorString(self)
  var virtualReturn_copy = cast[cstring](if len(virtualReturn) > 0: c_malloc(csize_t(len(virtualReturn))) else: nil)
  if len(virtualReturn) > 0: copyMem(cast[pointer](virtualReturn_copy), addr virtualReturn[0], csize_t(len(virtualReturn)))
  struct_miqt_string(data: virtualReturn_copy, len: csize_t(len(virtualReturn)))

proc QQuickImageResponsecancel*(self: gen_qquickimageprovider_types.QQuickImageResponse, ): void =
  fcQQuickImageResponse_virtualbase_cancel(self.h)

proc miqt_exec_callback_cQQuickImageResponse_cancel(vtbl: pointer, self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickImageResponseVTable](vtbl)
  let self = QQuickImageResponse(h: self)
  vtbl[].cancel(self)

proc QQuickImageResponseevent*(self: gen_qquickimageprovider_types.QQuickImageResponse, event: gen_qcoreevent_types.QEvent): bool =
  fcQQuickImageResponse_virtualbase_event(self.h, event.h)

proc miqt_exec_callback_cQQuickImageResponse_event(vtbl: pointer, self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QQuickImageResponseVTable](vtbl)
  let self = QQuickImageResponse(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QQuickImageResponseeventFilter*(self: gen_qquickimageprovider_types.QQuickImageResponse, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQQuickImageResponse_virtualbase_eventFilter(self.h, watched.h, event.h)

proc miqt_exec_callback_cQQuickImageResponse_eventFilter(vtbl: pointer, self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QQuickImageResponseVTable](vtbl)
  let self = QQuickImageResponse(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QQuickImageResponsetimerEvent*(self: gen_qquickimageprovider_types.QQuickImageResponse, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQQuickImageResponse_virtualbase_timerEvent(self.h, event.h)

proc miqt_exec_callback_cQQuickImageResponse_timerEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickImageResponseVTable](vtbl)
  let self = QQuickImageResponse(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc QQuickImageResponsechildEvent*(self: gen_qquickimageprovider_types.QQuickImageResponse, event: gen_qcoreevent_types.QChildEvent): void =
  fcQQuickImageResponse_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQQuickImageResponse_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickImageResponseVTable](vtbl)
  let self = QQuickImageResponse(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc QQuickImageResponsecustomEvent*(self: gen_qquickimageprovider_types.QQuickImageResponse, event: gen_qcoreevent_types.QEvent): void =
  fcQQuickImageResponse_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQQuickImageResponse_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickImageResponseVTable](vtbl)
  let self = QQuickImageResponse(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc QQuickImageResponseconnectNotify*(self: gen_qquickimageprovider_types.QQuickImageResponse, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQQuickImageResponse_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQQuickImageResponse_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickImageResponseVTable](vtbl)
  let self = QQuickImageResponse(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc QQuickImageResponsedisconnectNotify*(self: gen_qquickimageprovider_types.QQuickImageResponse, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQQuickImageResponse_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQQuickImageResponse_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickImageResponseVTable](vtbl)
  let self = QQuickImageResponse(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQQuickImageResponse* {.inheritable.} = ref object of QQuickImageResponse
  vtbl*: cQQuickImageResponseVTable
method metaObject*(self: VirtualQQuickImageResponse, ): gen_qobjectdefs_types.QMetaObject {.base.} =
  QQuickImageResponsemetaObject(self[])
proc miqt_exec_method_cQQuickImageResponse_metaObject(vtbl: pointer, inst: pointer): pointer {.cdecl.} =
  let vtbl = cast[VirtualQQuickImageResponse](cast[uint](vtbl) - uint(offsetOf(VirtualQQuickImageResponse, vtbl)))
  var virtualReturn = vtbl.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method metacast*(self: VirtualQQuickImageResponse, param1: cstring): pointer {.base.} =
  QQuickImageResponsemetacast(self[], param1)
proc miqt_exec_method_cQQuickImageResponse_metacast(vtbl: pointer, inst: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[VirtualQQuickImageResponse](cast[uint](vtbl) - uint(offsetOf(VirtualQQuickImageResponse, vtbl)))
  let slotval1 = (param1)
  var virtualReturn = vtbl.metacast(slotval1)
  virtualReturn

method metacall*(self: VirtualQQuickImageResponse, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QQuickImageResponsemetacall(self[], param1, param2, param3)
proc miqt_exec_method_cQQuickImageResponse_metacall(vtbl: pointer, inst: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[VirtualQQuickImageResponse](cast[uint](vtbl) - uint(offsetOf(VirtualQQuickImageResponse, vtbl)))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl.metacall(slotval1, slotval2, slotval3)
  virtualReturn

method textureFactory*(self: VirtualQQuickImageResponse, ): gen_qquickimageprovider_types.QQuickTextureFactory {.base.} =
  raiseAssert("missing implementation of QQuickImageResponse_virtualbase_textureFactory")
proc miqt_exec_method_cQQuickImageResponse_textureFactory(vtbl: pointer, inst: pointer): pointer {.cdecl.} =
  let vtbl = cast[VirtualQQuickImageResponse](cast[uint](vtbl) - uint(offsetOf(VirtualQQuickImageResponse, vtbl)))
  var virtualReturn = vtbl.textureFactory()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method errorString*(self: VirtualQQuickImageResponse, ): string {.base.} =
  QQuickImageResponseerrorString(self[])
proc miqt_exec_method_cQQuickImageResponse_errorString(vtbl: pointer, inst: pointer): struct_miqt_string {.cdecl.} =
  let vtbl = cast[VirtualQQuickImageResponse](cast[uint](vtbl) - uint(offsetOf(VirtualQQuickImageResponse, vtbl)))
  var virtualReturn = vtbl.errorString()
  var virtualReturn_copy = cast[cstring](if len(virtualReturn) > 0: c_malloc(csize_t(len(virtualReturn))) else: nil)
  if len(virtualReturn) > 0: copyMem(cast[pointer](virtualReturn_copy), addr virtualReturn[0], csize_t(len(virtualReturn)))
  struct_miqt_string(data: virtualReturn_copy, len: csize_t(len(virtualReturn)))

method cancel*(self: VirtualQQuickImageResponse, ): void {.base.} =
  QQuickImageResponsecancel(self[])
proc miqt_exec_method_cQQuickImageResponse_cancel(vtbl: pointer, inst: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQQuickImageResponse](cast[uint](vtbl) - uint(offsetOf(VirtualQQuickImageResponse, vtbl)))
  vtbl.cancel()

method event*(self: VirtualQQuickImageResponse, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QQuickImageResponseevent(self[], event)
proc miqt_exec_method_cQQuickImageResponse_event(vtbl: pointer, inst: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[VirtualQQuickImageResponse](cast[uint](vtbl) - uint(offsetOf(VirtualQQuickImageResponse, vtbl)))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl.event(slotval1)
  virtualReturn

method eventFilter*(self: VirtualQQuickImageResponse, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QQuickImageResponseeventFilter(self[], watched, event)
proc miqt_exec_method_cQQuickImageResponse_eventFilter(vtbl: pointer, inst: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[VirtualQQuickImageResponse](cast[uint](vtbl) - uint(offsetOf(VirtualQQuickImageResponse, vtbl)))
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl.eventFilter(slotval1, slotval2)
  virtualReturn

method timerEvent*(self: VirtualQQuickImageResponse, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QQuickImageResponsetimerEvent(self[], event)
proc miqt_exec_method_cQQuickImageResponse_timerEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQQuickImageResponse](cast[uint](vtbl) - uint(offsetOf(VirtualQQuickImageResponse, vtbl)))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl.timerEvent(slotval1)

method childEvent*(self: VirtualQQuickImageResponse, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QQuickImageResponsechildEvent(self[], event)
proc miqt_exec_method_cQQuickImageResponse_childEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQQuickImageResponse](cast[uint](vtbl) - uint(offsetOf(VirtualQQuickImageResponse, vtbl)))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl.childEvent(slotval1)

method customEvent*(self: VirtualQQuickImageResponse, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QQuickImageResponsecustomEvent(self[], event)
proc miqt_exec_method_cQQuickImageResponse_customEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQQuickImageResponse](cast[uint](vtbl) - uint(offsetOf(VirtualQQuickImageResponse, vtbl)))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl.customEvent(slotval1)

method connectNotify*(self: VirtualQQuickImageResponse, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QQuickImageResponseconnectNotify(self[], signal)
proc miqt_exec_method_cQQuickImageResponse_connectNotify(vtbl: pointer, inst: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQQuickImageResponse](cast[uint](vtbl) - uint(offsetOf(VirtualQQuickImageResponse, vtbl)))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl.connectNotify(slotval1)

method disconnectNotify*(self: VirtualQQuickImageResponse, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QQuickImageResponsedisconnectNotify(self[], signal)
proc miqt_exec_method_cQQuickImageResponse_disconnectNotify(vtbl: pointer, inst: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQQuickImageResponse](cast[uint](vtbl) - uint(offsetOf(VirtualQQuickImageResponse, vtbl)))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl.disconnectNotify(slotval1)

proc sender*(self: gen_qquickimageprovider_types.QQuickImageResponse, ): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQQuickImageResponse_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qquickimageprovider_types.QQuickImageResponse, ): cint =
  fcQQuickImageResponse_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qquickimageprovider_types.QQuickImageResponse, signal: cstring): cint =
  fcQQuickImageResponse_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qquickimageprovider_types.QQuickImageResponse, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQQuickImageResponse_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qquickimageprovider_types.QQuickImageResponse,
    vtbl: ref QQuickImageResponseVTable = nil): gen_qquickimageprovider_types.QQuickImageResponse =
  let vtbl = if vtbl == nil: new QQuickImageResponseVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(vtbl: ptr cQQuickImageResponseVTable, _: ptr cQQuickImageResponse) {.cdecl.} =
    let vtbl = cast[ref QQuickImageResponseVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQQuickImageResponse_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQQuickImageResponse_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQQuickImageResponse_metacall
  if not isNil(vtbl[].textureFactory):
    vtbl[].vtbl.textureFactory = miqt_exec_callback_cQQuickImageResponse_textureFactory
  if not isNil(vtbl[].errorString):
    vtbl[].vtbl.errorString = miqt_exec_callback_cQQuickImageResponse_errorString
  if not isNil(vtbl[].cancel):
    vtbl[].vtbl.cancel = miqt_exec_callback_cQQuickImageResponse_cancel
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = miqt_exec_callback_cQQuickImageResponse_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQQuickImageResponse_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQQuickImageResponse_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQQuickImageResponse_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQQuickImageResponse_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQQuickImageResponse_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQQuickImageResponse_disconnectNotify
  gen_qquickimageprovider_types.QQuickImageResponse(h: fcQQuickImageResponse_new(addr(vtbl[].vtbl), ), owned: true)

proc create*(T: type gen_qquickimageprovider_types.QQuickImageResponse,
    vtbl: VirtualQQuickImageResponse) =

  vtbl[].vtbl.destructor = proc(vtbl: ptr cQQuickImageResponseVTable, _: ptr cQQuickImageResponse) {.cdecl.} =
    let vtbl = cast[ptr typeof(VirtualQQuickImageResponse()[])](cast[uint](vtbl) - uint(offsetOf(VirtualQQuickImageResponse, vtbl)))
    vtbl[].h = nil
    vtbl[].owned = false
  vtbl[].vtbl.metaObject = miqt_exec_method_cQQuickImageResponse_metaObject
  vtbl[].vtbl.metacast = miqt_exec_method_cQQuickImageResponse_metacast
  vtbl[].vtbl.metacall = miqt_exec_method_cQQuickImageResponse_metacall
  vtbl[].vtbl.textureFactory = miqt_exec_method_cQQuickImageResponse_textureFactory
  vtbl[].vtbl.errorString = miqt_exec_method_cQQuickImageResponse_errorString
  vtbl[].vtbl.cancel = miqt_exec_method_cQQuickImageResponse_cancel
  vtbl[].vtbl.event = miqt_exec_method_cQQuickImageResponse_event
  vtbl[].vtbl.eventFilter = miqt_exec_method_cQQuickImageResponse_eventFilter
  vtbl[].vtbl.timerEvent = miqt_exec_method_cQQuickImageResponse_timerEvent
  vtbl[].vtbl.childEvent = miqt_exec_method_cQQuickImageResponse_childEvent
  vtbl[].vtbl.customEvent = miqt_exec_method_cQQuickImageResponse_customEvent
  vtbl[].vtbl.connectNotify = miqt_exec_method_cQQuickImageResponse_connectNotify
  vtbl[].vtbl.disconnectNotify = miqt_exec_method_cQQuickImageResponse_disconnectNotify
  if vtbl[].h != nil: delete(move(vtbl[]))
  vtbl[].h = fcQQuickImageResponse_new(addr(vtbl[].vtbl), )
  vtbl[].owned = true

proc staticMetaObject*(_: type gen_qquickimageprovider_types.QQuickImageResponse): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQQuickImageResponse_staticMetaObject())
proc metaObject*(self: gen_qquickimageprovider_types.QQuickImageProvider, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQQuickImageProvider_metaObject(self.h), owned: false)

proc metacast*(self: gen_qquickimageprovider_types.QQuickImageProvider, param1: cstring): pointer =
  fcQQuickImageProvider_metacast(self.h, param1)

proc metacall*(self: gen_qquickimageprovider_types.QQuickImageProvider, param1: cint, param2: cint, param3: pointer): cint =
  fcQQuickImageProvider_metacall(self.h, cint(param1), param2, param3)

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
  gen_qimage_types.QImage(h: fcQQuickImageProvider_requestImage(self.h, struct_miqt_string(data: id, len: csize_t(len(id))), size.h, requestedSize.h), owned: true)

proc requestPixmap*(self: gen_qquickimageprovider_types.QQuickImageProvider, id: string, size: gen_qsize_types.QSize, requestedSize: gen_qsize_types.QSize): gen_qpixmap_types.QPixmap =
  gen_qpixmap_types.QPixmap(h: fcQQuickImageProvider_requestPixmap(self.h, struct_miqt_string(data: id, len: csize_t(len(id))), size.h, requestedSize.h), owned: true)

proc requestTexture*(self: gen_qquickimageprovider_types.QQuickImageProvider, id: string, size: gen_qsize_types.QSize, requestedSize: gen_qsize_types.QSize): gen_qquickimageprovider_types.QQuickTextureFactory =
  gen_qquickimageprovider_types.QQuickTextureFactory(h: fcQQuickImageProvider_requestTexture(self.h, struct_miqt_string(data: id, len: csize_t(len(id))), size.h, requestedSize.h), owned: false)

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

type QQuickImageProvidermetaObjectProc* = proc(self: QQuickImageProvider): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QQuickImageProvidermetacastProc* = proc(self: QQuickImageProvider, param1: cstring): pointer {.raises: [], gcsafe.}
type QQuickImageProvidermetacallProc* = proc(self: QQuickImageProvider, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QQuickImageProviderimageTypeProc* = proc(self: QQuickImageProvider): cint {.raises: [], gcsafe.}
type QQuickImageProviderflagsProc* = proc(self: QQuickImageProvider): cint {.raises: [], gcsafe.}
type QQuickImageProviderrequestImageProc* = proc(self: QQuickImageProvider, id: string, size: gen_qsize_types.QSize, requestedSize: gen_qsize_types.QSize): gen_qimage_types.QImage {.raises: [], gcsafe.}
type QQuickImageProviderrequestPixmapProc* = proc(self: QQuickImageProvider, id: string, size: gen_qsize_types.QSize, requestedSize: gen_qsize_types.QSize): gen_qpixmap_types.QPixmap {.raises: [], gcsafe.}
type QQuickImageProviderrequestTextureProc* = proc(self: QQuickImageProvider, id: string, size: gen_qsize_types.QSize, requestedSize: gen_qsize_types.QSize): gen_qquickimageprovider_types.QQuickTextureFactory {.raises: [], gcsafe.}
type QQuickImageProvidereventProc* = proc(self: QQuickImageProvider, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QQuickImageProvidereventFilterProc* = proc(self: QQuickImageProvider, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QQuickImageProvidertimerEventProc* = proc(self: QQuickImageProvider, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QQuickImageProviderchildEventProc* = proc(self: QQuickImageProvider, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QQuickImageProvidercustomEventProc* = proc(self: QQuickImageProvider, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QQuickImageProviderconnectNotifyProc* = proc(self: QQuickImageProvider, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QQuickImageProviderdisconnectNotifyProc* = proc(self: QQuickImageProvider, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QQuickImageProviderVTable* {.inheritable, pure.} = object
  vtbl: cQQuickImageProviderVTable
  metaObject*: QQuickImageProvidermetaObjectProc
  metacast*: QQuickImageProvidermetacastProc
  metacall*: QQuickImageProvidermetacallProc
  imageType*: QQuickImageProviderimageTypeProc
  flags*: QQuickImageProviderflagsProc
  requestImage*: QQuickImageProviderrequestImageProc
  requestPixmap*: QQuickImageProviderrequestPixmapProc
  requestTexture*: QQuickImageProviderrequestTextureProc
  event*: QQuickImageProvidereventProc
  eventFilter*: QQuickImageProvidereventFilterProc
  timerEvent*: QQuickImageProvidertimerEventProc
  childEvent*: QQuickImageProviderchildEventProc
  customEvent*: QQuickImageProvidercustomEventProc
  connectNotify*: QQuickImageProviderconnectNotifyProc
  disconnectNotify*: QQuickImageProviderdisconnectNotifyProc
proc QQuickImageProvidermetaObject*(self: gen_qquickimageprovider_types.QQuickImageProvider, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQQuickImageProvider_virtualbase_metaObject(self.h), owned: false)

proc miqt_exec_callback_cQQuickImageProvider_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QQuickImageProviderVTable](vtbl)
  let self = QQuickImageProvider(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QQuickImageProvidermetacast*(self: gen_qquickimageprovider_types.QQuickImageProvider, param1: cstring): pointer =
  fcQQuickImageProvider_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQQuickImageProvider_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QQuickImageProviderVTable](vtbl)
  let self = QQuickImageProvider(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QQuickImageProvidermetacall*(self: gen_qquickimageprovider_types.QQuickImageProvider, param1: cint, param2: cint, param3: pointer): cint =
  fcQQuickImageProvider_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQQuickImageProvider_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QQuickImageProviderVTable](vtbl)
  let self = QQuickImageProvider(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QQuickImageProviderimageType*(self: gen_qquickimageprovider_types.QQuickImageProvider, ): cint =
  cint(fcQQuickImageProvider_virtualbase_imageType(self.h))

proc miqt_exec_callback_cQQuickImageProvider_imageType(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QQuickImageProviderVTable](vtbl)
  let self = QQuickImageProvider(h: self)
  var virtualReturn = vtbl[].imageType(self)
  cint(virtualReturn)

proc QQuickImageProviderflags*(self: gen_qquickimageprovider_types.QQuickImageProvider, ): cint =
  cint(fcQQuickImageProvider_virtualbase_flags(self.h))

proc miqt_exec_callback_cQQuickImageProvider_flags(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QQuickImageProviderVTable](vtbl)
  let self = QQuickImageProvider(h: self)
  var virtualReturn = vtbl[].flags(self)
  cint(virtualReturn)

proc QQuickImageProviderrequestImage*(self: gen_qquickimageprovider_types.QQuickImageProvider, id: string, size: gen_qsize_types.QSize, requestedSize: gen_qsize_types.QSize): gen_qimage_types.QImage =
  gen_qimage_types.QImage(h: fcQQuickImageProvider_virtualbase_requestImage(self.h, struct_miqt_string(data: id, len: csize_t(len(id))), size.h, requestedSize.h), owned: true)

proc miqt_exec_callback_cQQuickImageProvider_requestImage(vtbl: pointer, self: pointer, id: struct_miqt_string, size: pointer, requestedSize: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QQuickImageProviderVTable](vtbl)
  let self = QQuickImageProvider(h: self)
  let vid_ms = id
  let vidx_ret = string.fromBytes(toOpenArrayByte(vid_ms.data, 0, int(vid_ms.len)-1))
  c_free(vid_ms.data)
  let slotval1 = vidx_ret
  let slotval2 = gen_qsize_types.QSize(h: size, owned: false)
  let slotval3 = gen_qsize_types.QSize(h: requestedSize, owned: false)
  var virtualReturn = vtbl[].requestImage(self, slotval1, slotval2, slotval3)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QQuickImageProviderrequestPixmap*(self: gen_qquickimageprovider_types.QQuickImageProvider, id: string, size: gen_qsize_types.QSize, requestedSize: gen_qsize_types.QSize): gen_qpixmap_types.QPixmap =
  gen_qpixmap_types.QPixmap(h: fcQQuickImageProvider_virtualbase_requestPixmap(self.h, struct_miqt_string(data: id, len: csize_t(len(id))), size.h, requestedSize.h), owned: true)

proc miqt_exec_callback_cQQuickImageProvider_requestPixmap(vtbl: pointer, self: pointer, id: struct_miqt_string, size: pointer, requestedSize: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QQuickImageProviderVTable](vtbl)
  let self = QQuickImageProvider(h: self)
  let vid_ms = id
  let vidx_ret = string.fromBytes(toOpenArrayByte(vid_ms.data, 0, int(vid_ms.len)-1))
  c_free(vid_ms.data)
  let slotval1 = vidx_ret
  let slotval2 = gen_qsize_types.QSize(h: size, owned: false)
  let slotval3 = gen_qsize_types.QSize(h: requestedSize, owned: false)
  var virtualReturn = vtbl[].requestPixmap(self, slotval1, slotval2, slotval3)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QQuickImageProviderrequestTexture*(self: gen_qquickimageprovider_types.QQuickImageProvider, id: string, size: gen_qsize_types.QSize, requestedSize: gen_qsize_types.QSize): gen_qquickimageprovider_types.QQuickTextureFactory =
  gen_qquickimageprovider_types.QQuickTextureFactory(h: fcQQuickImageProvider_virtualbase_requestTexture(self.h, struct_miqt_string(data: id, len: csize_t(len(id))), size.h, requestedSize.h), owned: false)

proc miqt_exec_callback_cQQuickImageProvider_requestTexture(vtbl: pointer, self: pointer, id: struct_miqt_string, size: pointer, requestedSize: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QQuickImageProviderVTable](vtbl)
  let self = QQuickImageProvider(h: self)
  let vid_ms = id
  let vidx_ret = string.fromBytes(toOpenArrayByte(vid_ms.data, 0, int(vid_ms.len)-1))
  c_free(vid_ms.data)
  let slotval1 = vidx_ret
  let slotval2 = gen_qsize_types.QSize(h: size, owned: false)
  let slotval3 = gen_qsize_types.QSize(h: requestedSize, owned: false)
  var virtualReturn = vtbl[].requestTexture(self, slotval1, slotval2, slotval3)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QQuickImageProviderevent*(self: gen_qquickimageprovider_types.QQuickImageProvider, event: gen_qcoreevent_types.QEvent): bool =
  fcQQuickImageProvider_virtualbase_event(self.h, event.h)

proc miqt_exec_callback_cQQuickImageProvider_event(vtbl: pointer, self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QQuickImageProviderVTable](vtbl)
  let self = QQuickImageProvider(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QQuickImageProvidereventFilter*(self: gen_qquickimageprovider_types.QQuickImageProvider, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQQuickImageProvider_virtualbase_eventFilter(self.h, watched.h, event.h)

proc miqt_exec_callback_cQQuickImageProvider_eventFilter(vtbl: pointer, self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QQuickImageProviderVTable](vtbl)
  let self = QQuickImageProvider(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QQuickImageProvidertimerEvent*(self: gen_qquickimageprovider_types.QQuickImageProvider, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQQuickImageProvider_virtualbase_timerEvent(self.h, event.h)

proc miqt_exec_callback_cQQuickImageProvider_timerEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickImageProviderVTable](vtbl)
  let self = QQuickImageProvider(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc QQuickImageProviderchildEvent*(self: gen_qquickimageprovider_types.QQuickImageProvider, event: gen_qcoreevent_types.QChildEvent): void =
  fcQQuickImageProvider_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQQuickImageProvider_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickImageProviderVTable](vtbl)
  let self = QQuickImageProvider(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc QQuickImageProvidercustomEvent*(self: gen_qquickimageprovider_types.QQuickImageProvider, event: gen_qcoreevent_types.QEvent): void =
  fcQQuickImageProvider_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQQuickImageProvider_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickImageProviderVTable](vtbl)
  let self = QQuickImageProvider(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc QQuickImageProviderconnectNotify*(self: gen_qquickimageprovider_types.QQuickImageProvider, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQQuickImageProvider_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQQuickImageProvider_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickImageProviderVTable](vtbl)
  let self = QQuickImageProvider(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc QQuickImageProviderdisconnectNotify*(self: gen_qquickimageprovider_types.QQuickImageProvider, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQQuickImageProvider_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQQuickImageProvider_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickImageProviderVTable](vtbl)
  let self = QQuickImageProvider(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQQuickImageProvider* {.inheritable.} = ref object of QQuickImageProvider
  vtbl*: cQQuickImageProviderVTable
method metaObject*(self: VirtualQQuickImageProvider, ): gen_qobjectdefs_types.QMetaObject {.base.} =
  QQuickImageProvidermetaObject(self[])
proc miqt_exec_method_cQQuickImageProvider_metaObject(vtbl: pointer, inst: pointer): pointer {.cdecl.} =
  let vtbl = cast[VirtualQQuickImageProvider](cast[uint](vtbl) - uint(offsetOf(VirtualQQuickImageProvider, vtbl)))
  var virtualReturn = vtbl.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method metacast*(self: VirtualQQuickImageProvider, param1: cstring): pointer {.base.} =
  QQuickImageProvidermetacast(self[], param1)
proc miqt_exec_method_cQQuickImageProvider_metacast(vtbl: pointer, inst: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[VirtualQQuickImageProvider](cast[uint](vtbl) - uint(offsetOf(VirtualQQuickImageProvider, vtbl)))
  let slotval1 = (param1)
  var virtualReturn = vtbl.metacast(slotval1)
  virtualReturn

method metacall*(self: VirtualQQuickImageProvider, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QQuickImageProvidermetacall(self[], param1, param2, param3)
proc miqt_exec_method_cQQuickImageProvider_metacall(vtbl: pointer, inst: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[VirtualQQuickImageProvider](cast[uint](vtbl) - uint(offsetOf(VirtualQQuickImageProvider, vtbl)))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl.metacall(slotval1, slotval2, slotval3)
  virtualReturn

method imageType*(self: VirtualQQuickImageProvider, ): cint {.base.} =
  QQuickImageProviderimageType(self[])
proc miqt_exec_method_cQQuickImageProvider_imageType(vtbl: pointer, inst: pointer): cint {.cdecl.} =
  let vtbl = cast[VirtualQQuickImageProvider](cast[uint](vtbl) - uint(offsetOf(VirtualQQuickImageProvider, vtbl)))
  var virtualReturn = vtbl.imageType()
  cint(virtualReturn)

method flags*(self: VirtualQQuickImageProvider, ): cint {.base.} =
  QQuickImageProviderflags(self[])
proc miqt_exec_method_cQQuickImageProvider_flags(vtbl: pointer, inst: pointer): cint {.cdecl.} =
  let vtbl = cast[VirtualQQuickImageProvider](cast[uint](vtbl) - uint(offsetOf(VirtualQQuickImageProvider, vtbl)))
  var virtualReturn = vtbl.flags()
  cint(virtualReturn)

method requestImage*(self: VirtualQQuickImageProvider, id: string, size: gen_qsize_types.QSize, requestedSize: gen_qsize_types.QSize): gen_qimage_types.QImage {.base.} =
  QQuickImageProviderrequestImage(self[], id, size, requestedSize)
proc miqt_exec_method_cQQuickImageProvider_requestImage(vtbl: pointer, inst: pointer, id: struct_miqt_string, size: pointer, requestedSize: pointer): pointer {.cdecl.} =
  let vtbl = cast[VirtualQQuickImageProvider](cast[uint](vtbl) - uint(offsetOf(VirtualQQuickImageProvider, vtbl)))
  let vid_ms = id
  let vidx_ret = string.fromBytes(toOpenArrayByte(vid_ms.data, 0, int(vid_ms.len)-1))
  c_free(vid_ms.data)
  let slotval1 = vidx_ret
  let slotval2 = gen_qsize_types.QSize(h: size, owned: false)
  let slotval3 = gen_qsize_types.QSize(h: requestedSize, owned: false)
  var virtualReturn = vtbl.requestImage(slotval1, slotval2, slotval3)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method requestPixmap*(self: VirtualQQuickImageProvider, id: string, size: gen_qsize_types.QSize, requestedSize: gen_qsize_types.QSize): gen_qpixmap_types.QPixmap {.base.} =
  QQuickImageProviderrequestPixmap(self[], id, size, requestedSize)
proc miqt_exec_method_cQQuickImageProvider_requestPixmap(vtbl: pointer, inst: pointer, id: struct_miqt_string, size: pointer, requestedSize: pointer): pointer {.cdecl.} =
  let vtbl = cast[VirtualQQuickImageProvider](cast[uint](vtbl) - uint(offsetOf(VirtualQQuickImageProvider, vtbl)))
  let vid_ms = id
  let vidx_ret = string.fromBytes(toOpenArrayByte(vid_ms.data, 0, int(vid_ms.len)-1))
  c_free(vid_ms.data)
  let slotval1 = vidx_ret
  let slotval2 = gen_qsize_types.QSize(h: size, owned: false)
  let slotval3 = gen_qsize_types.QSize(h: requestedSize, owned: false)
  var virtualReturn = vtbl.requestPixmap(slotval1, slotval2, slotval3)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method requestTexture*(self: VirtualQQuickImageProvider, id: string, size: gen_qsize_types.QSize, requestedSize: gen_qsize_types.QSize): gen_qquickimageprovider_types.QQuickTextureFactory {.base.} =
  QQuickImageProviderrequestTexture(self[], id, size, requestedSize)
proc miqt_exec_method_cQQuickImageProvider_requestTexture(vtbl: pointer, inst: pointer, id: struct_miqt_string, size: pointer, requestedSize: pointer): pointer {.cdecl.} =
  let vtbl = cast[VirtualQQuickImageProvider](cast[uint](vtbl) - uint(offsetOf(VirtualQQuickImageProvider, vtbl)))
  let vid_ms = id
  let vidx_ret = string.fromBytes(toOpenArrayByte(vid_ms.data, 0, int(vid_ms.len)-1))
  c_free(vid_ms.data)
  let slotval1 = vidx_ret
  let slotval2 = gen_qsize_types.QSize(h: size, owned: false)
  let slotval3 = gen_qsize_types.QSize(h: requestedSize, owned: false)
  var virtualReturn = vtbl.requestTexture(slotval1, slotval2, slotval3)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method event*(self: VirtualQQuickImageProvider, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QQuickImageProviderevent(self[], event)
proc miqt_exec_method_cQQuickImageProvider_event(vtbl: pointer, inst: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[VirtualQQuickImageProvider](cast[uint](vtbl) - uint(offsetOf(VirtualQQuickImageProvider, vtbl)))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl.event(slotval1)
  virtualReturn

method eventFilter*(self: VirtualQQuickImageProvider, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QQuickImageProvidereventFilter(self[], watched, event)
proc miqt_exec_method_cQQuickImageProvider_eventFilter(vtbl: pointer, inst: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[VirtualQQuickImageProvider](cast[uint](vtbl) - uint(offsetOf(VirtualQQuickImageProvider, vtbl)))
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl.eventFilter(slotval1, slotval2)
  virtualReturn

method timerEvent*(self: VirtualQQuickImageProvider, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QQuickImageProvidertimerEvent(self[], event)
proc miqt_exec_method_cQQuickImageProvider_timerEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQQuickImageProvider](cast[uint](vtbl) - uint(offsetOf(VirtualQQuickImageProvider, vtbl)))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl.timerEvent(slotval1)

method childEvent*(self: VirtualQQuickImageProvider, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QQuickImageProviderchildEvent(self[], event)
proc miqt_exec_method_cQQuickImageProvider_childEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQQuickImageProvider](cast[uint](vtbl) - uint(offsetOf(VirtualQQuickImageProvider, vtbl)))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl.childEvent(slotval1)

method customEvent*(self: VirtualQQuickImageProvider, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QQuickImageProvidercustomEvent(self[], event)
proc miqt_exec_method_cQQuickImageProvider_customEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQQuickImageProvider](cast[uint](vtbl) - uint(offsetOf(VirtualQQuickImageProvider, vtbl)))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl.customEvent(slotval1)

method connectNotify*(self: VirtualQQuickImageProvider, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QQuickImageProviderconnectNotify(self[], signal)
proc miqt_exec_method_cQQuickImageProvider_connectNotify(vtbl: pointer, inst: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQQuickImageProvider](cast[uint](vtbl) - uint(offsetOf(VirtualQQuickImageProvider, vtbl)))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl.connectNotify(slotval1)

method disconnectNotify*(self: VirtualQQuickImageProvider, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QQuickImageProviderdisconnectNotify(self[], signal)
proc miqt_exec_method_cQQuickImageProvider_disconnectNotify(vtbl: pointer, inst: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQQuickImageProvider](cast[uint](vtbl) - uint(offsetOf(VirtualQQuickImageProvider, vtbl)))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl.disconnectNotify(slotval1)

proc sender*(self: gen_qquickimageprovider_types.QQuickImageProvider, ): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQQuickImageProvider_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qquickimageprovider_types.QQuickImageProvider, ): cint =
  fcQQuickImageProvider_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qquickimageprovider_types.QQuickImageProvider, signal: cstring): cint =
  fcQQuickImageProvider_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qquickimageprovider_types.QQuickImageProvider, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQQuickImageProvider_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qquickimageprovider_types.QQuickImageProvider,
    typeVal: cint,
    vtbl: ref QQuickImageProviderVTable = nil): gen_qquickimageprovider_types.QQuickImageProvider =
  let vtbl = if vtbl == nil: new QQuickImageProviderVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(vtbl: ptr cQQuickImageProviderVTable, _: ptr cQQuickImageProvider) {.cdecl.} =
    let vtbl = cast[ref QQuickImageProviderVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQQuickImageProvider_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQQuickImageProvider_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQQuickImageProvider_metacall
  if not isNil(vtbl[].imageType):
    vtbl[].vtbl.imageType = miqt_exec_callback_cQQuickImageProvider_imageType
  if not isNil(vtbl[].flags):
    vtbl[].vtbl.flags = miqt_exec_callback_cQQuickImageProvider_flags
  if not isNil(vtbl[].requestImage):
    vtbl[].vtbl.requestImage = miqt_exec_callback_cQQuickImageProvider_requestImage
  if not isNil(vtbl[].requestPixmap):
    vtbl[].vtbl.requestPixmap = miqt_exec_callback_cQQuickImageProvider_requestPixmap
  if not isNil(vtbl[].requestTexture):
    vtbl[].vtbl.requestTexture = miqt_exec_callback_cQQuickImageProvider_requestTexture
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = miqt_exec_callback_cQQuickImageProvider_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQQuickImageProvider_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQQuickImageProvider_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQQuickImageProvider_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQQuickImageProvider_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQQuickImageProvider_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQQuickImageProvider_disconnectNotify
  gen_qquickimageprovider_types.QQuickImageProvider(h: fcQQuickImageProvider_new(addr(vtbl[].vtbl), cint(typeVal)), owned: true)

proc create*(T: type gen_qquickimageprovider_types.QQuickImageProvider,
    typeVal: cint, flags: cint,
    vtbl: ref QQuickImageProviderVTable = nil): gen_qquickimageprovider_types.QQuickImageProvider =
  let vtbl = if vtbl == nil: new QQuickImageProviderVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(vtbl: ptr cQQuickImageProviderVTable, _: ptr cQQuickImageProvider) {.cdecl.} =
    let vtbl = cast[ref QQuickImageProviderVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQQuickImageProvider_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQQuickImageProvider_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQQuickImageProvider_metacall
  if not isNil(vtbl[].imageType):
    vtbl[].vtbl.imageType = miqt_exec_callback_cQQuickImageProvider_imageType
  if not isNil(vtbl[].flags):
    vtbl[].vtbl.flags = miqt_exec_callback_cQQuickImageProvider_flags
  if not isNil(vtbl[].requestImage):
    vtbl[].vtbl.requestImage = miqt_exec_callback_cQQuickImageProvider_requestImage
  if not isNil(vtbl[].requestPixmap):
    vtbl[].vtbl.requestPixmap = miqt_exec_callback_cQQuickImageProvider_requestPixmap
  if not isNil(vtbl[].requestTexture):
    vtbl[].vtbl.requestTexture = miqt_exec_callback_cQQuickImageProvider_requestTexture
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = miqt_exec_callback_cQQuickImageProvider_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQQuickImageProvider_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQQuickImageProvider_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQQuickImageProvider_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQQuickImageProvider_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQQuickImageProvider_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQQuickImageProvider_disconnectNotify
  gen_qquickimageprovider_types.QQuickImageProvider(h: fcQQuickImageProvider_new2(addr(vtbl[].vtbl), cint(typeVal), cint(flags)), owned: true)

proc create*(T: type gen_qquickimageprovider_types.QQuickImageProvider,
    typeVal: cint,
    vtbl: VirtualQQuickImageProvider) =

  vtbl[].vtbl.destructor = proc(vtbl: ptr cQQuickImageProviderVTable, _: ptr cQQuickImageProvider) {.cdecl.} =
    let vtbl = cast[ptr typeof(VirtualQQuickImageProvider()[])](cast[uint](vtbl) - uint(offsetOf(VirtualQQuickImageProvider, vtbl)))
    vtbl[].h = nil
    vtbl[].owned = false
  vtbl[].vtbl.metaObject = miqt_exec_method_cQQuickImageProvider_metaObject
  vtbl[].vtbl.metacast = miqt_exec_method_cQQuickImageProvider_metacast
  vtbl[].vtbl.metacall = miqt_exec_method_cQQuickImageProvider_metacall
  vtbl[].vtbl.imageType = miqt_exec_method_cQQuickImageProvider_imageType
  vtbl[].vtbl.flags = miqt_exec_method_cQQuickImageProvider_flags
  vtbl[].vtbl.requestImage = miqt_exec_method_cQQuickImageProvider_requestImage
  vtbl[].vtbl.requestPixmap = miqt_exec_method_cQQuickImageProvider_requestPixmap
  vtbl[].vtbl.requestTexture = miqt_exec_method_cQQuickImageProvider_requestTexture
  vtbl[].vtbl.event = miqt_exec_method_cQQuickImageProvider_event
  vtbl[].vtbl.eventFilter = miqt_exec_method_cQQuickImageProvider_eventFilter
  vtbl[].vtbl.timerEvent = miqt_exec_method_cQQuickImageProvider_timerEvent
  vtbl[].vtbl.childEvent = miqt_exec_method_cQQuickImageProvider_childEvent
  vtbl[].vtbl.customEvent = miqt_exec_method_cQQuickImageProvider_customEvent
  vtbl[].vtbl.connectNotify = miqt_exec_method_cQQuickImageProvider_connectNotify
  vtbl[].vtbl.disconnectNotify = miqt_exec_method_cQQuickImageProvider_disconnectNotify
  if vtbl[].h != nil: delete(move(vtbl[]))
  vtbl[].h = fcQQuickImageProvider_new(addr(vtbl[].vtbl), cint(typeVal))
  vtbl[].owned = true

proc create*(T: type gen_qquickimageprovider_types.QQuickImageProvider,
    typeVal: cint, flags: cint,
    vtbl: VirtualQQuickImageProvider) =

  vtbl[].vtbl.destructor = proc(vtbl: ptr cQQuickImageProviderVTable, _: ptr cQQuickImageProvider) {.cdecl.} =
    let vtbl = cast[ptr typeof(VirtualQQuickImageProvider()[])](cast[uint](vtbl) - uint(offsetOf(VirtualQQuickImageProvider, vtbl)))
    vtbl[].h = nil
    vtbl[].owned = false
  vtbl[].vtbl.metaObject = miqt_exec_method_cQQuickImageProvider_metaObject
  vtbl[].vtbl.metacast = miqt_exec_method_cQQuickImageProvider_metacast
  vtbl[].vtbl.metacall = miqt_exec_method_cQQuickImageProvider_metacall
  vtbl[].vtbl.imageType = miqt_exec_method_cQQuickImageProvider_imageType
  vtbl[].vtbl.flags = miqt_exec_method_cQQuickImageProvider_flags
  vtbl[].vtbl.requestImage = miqt_exec_method_cQQuickImageProvider_requestImage
  vtbl[].vtbl.requestPixmap = miqt_exec_method_cQQuickImageProvider_requestPixmap
  vtbl[].vtbl.requestTexture = miqt_exec_method_cQQuickImageProvider_requestTexture
  vtbl[].vtbl.event = miqt_exec_method_cQQuickImageProvider_event
  vtbl[].vtbl.eventFilter = miqt_exec_method_cQQuickImageProvider_eventFilter
  vtbl[].vtbl.timerEvent = miqt_exec_method_cQQuickImageProvider_timerEvent
  vtbl[].vtbl.childEvent = miqt_exec_method_cQQuickImageProvider_childEvent
  vtbl[].vtbl.customEvent = miqt_exec_method_cQQuickImageProvider_customEvent
  vtbl[].vtbl.connectNotify = miqt_exec_method_cQQuickImageProvider_connectNotify
  vtbl[].vtbl.disconnectNotify = miqt_exec_method_cQQuickImageProvider_disconnectNotify
  if vtbl[].h != nil: delete(move(vtbl[]))
  vtbl[].h = fcQQuickImageProvider_new2(addr(vtbl[].vtbl), cint(typeVal), cint(flags))
  vtbl[].owned = true

proc staticMetaObject*(_: type gen_qquickimageprovider_types.QQuickImageProvider): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQQuickImageProvider_staticMetaObject())
proc requestImageResponse*(self: gen_qquickimageprovider_types.QQuickAsyncImageProvider, id: string, requestedSize: gen_qsize_types.QSize): gen_qquickimageprovider_types.QQuickImageResponse =
  gen_qquickimageprovider_types.QQuickImageResponse(h: fcQQuickAsyncImageProvider_requestImageResponse(self.h, struct_miqt_string(data: id, len: csize_t(len(id))), requestedSize.h), owned: false)

type QQuickAsyncImageProviderrequestImageResponseProc* = proc(self: QQuickAsyncImageProvider, id: string, requestedSize: gen_qsize_types.QSize): gen_qquickimageprovider_types.QQuickImageResponse {.raises: [], gcsafe.}
type QQuickAsyncImageProvidermetaObjectProc* = proc(self: QQuickAsyncImageProvider): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QQuickAsyncImageProvidermetacastProc* = proc(self: QQuickAsyncImageProvider, param1: cstring): pointer {.raises: [], gcsafe.}
type QQuickAsyncImageProvidermetacallProc* = proc(self: QQuickAsyncImageProvider, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QQuickAsyncImageProviderimageTypeProc* = proc(self: QQuickAsyncImageProvider): cint {.raises: [], gcsafe.}
type QQuickAsyncImageProviderflagsProc* = proc(self: QQuickAsyncImageProvider): cint {.raises: [], gcsafe.}
type QQuickAsyncImageProviderrequestImageProc* = proc(self: QQuickAsyncImageProvider, id: string, size: gen_qsize_types.QSize, requestedSize: gen_qsize_types.QSize): gen_qimage_types.QImage {.raises: [], gcsafe.}
type QQuickAsyncImageProviderrequestPixmapProc* = proc(self: QQuickAsyncImageProvider, id: string, size: gen_qsize_types.QSize, requestedSize: gen_qsize_types.QSize): gen_qpixmap_types.QPixmap {.raises: [], gcsafe.}
type QQuickAsyncImageProviderrequestTextureProc* = proc(self: QQuickAsyncImageProvider, id: string, size: gen_qsize_types.QSize, requestedSize: gen_qsize_types.QSize): gen_qquickimageprovider_types.QQuickTextureFactory {.raises: [], gcsafe.}
type QQuickAsyncImageProvidereventProc* = proc(self: QQuickAsyncImageProvider, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QQuickAsyncImageProvidereventFilterProc* = proc(self: QQuickAsyncImageProvider, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QQuickAsyncImageProvidertimerEventProc* = proc(self: QQuickAsyncImageProvider, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QQuickAsyncImageProviderchildEventProc* = proc(self: QQuickAsyncImageProvider, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QQuickAsyncImageProvidercustomEventProc* = proc(self: QQuickAsyncImageProvider, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QQuickAsyncImageProviderconnectNotifyProc* = proc(self: QQuickAsyncImageProvider, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QQuickAsyncImageProviderdisconnectNotifyProc* = proc(self: QQuickAsyncImageProvider, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QQuickAsyncImageProviderVTable* {.inheritable, pure.} = object
  vtbl: cQQuickAsyncImageProviderVTable
  requestImageResponse*: QQuickAsyncImageProviderrequestImageResponseProc
  metaObject*: QQuickAsyncImageProvidermetaObjectProc
  metacast*: QQuickAsyncImageProvidermetacastProc
  metacall*: QQuickAsyncImageProvidermetacallProc
  imageType*: QQuickAsyncImageProviderimageTypeProc
  flags*: QQuickAsyncImageProviderflagsProc
  requestImage*: QQuickAsyncImageProviderrequestImageProc
  requestPixmap*: QQuickAsyncImageProviderrequestPixmapProc
  requestTexture*: QQuickAsyncImageProviderrequestTextureProc
  event*: QQuickAsyncImageProvidereventProc
  eventFilter*: QQuickAsyncImageProvidereventFilterProc
  timerEvent*: QQuickAsyncImageProvidertimerEventProc
  childEvent*: QQuickAsyncImageProviderchildEventProc
  customEvent*: QQuickAsyncImageProvidercustomEventProc
  connectNotify*: QQuickAsyncImageProviderconnectNotifyProc
  disconnectNotify*: QQuickAsyncImageProviderdisconnectNotifyProc
proc miqt_exec_callback_cQQuickAsyncImageProvider_requestImageResponse(vtbl: pointer, self: pointer, id: struct_miqt_string, requestedSize: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QQuickAsyncImageProviderVTable](vtbl)
  let self = QQuickAsyncImageProvider(h: self)
  let vid_ms = id
  let vidx_ret = string.fromBytes(toOpenArrayByte(vid_ms.data, 0, int(vid_ms.len)-1))
  c_free(vid_ms.data)
  let slotval1 = vidx_ret
  let slotval2 = gen_qsize_types.QSize(h: requestedSize, owned: false)
  var virtualReturn = vtbl[].requestImageResponse(self, slotval1, slotval2)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QQuickAsyncImageProvidermetaObject*(self: gen_qquickimageprovider_types.QQuickAsyncImageProvider, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQQuickAsyncImageProvider_virtualbase_metaObject(self.h), owned: false)

proc miqt_exec_callback_cQQuickAsyncImageProvider_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QQuickAsyncImageProviderVTable](vtbl)
  let self = QQuickAsyncImageProvider(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QQuickAsyncImageProvidermetacast*(self: gen_qquickimageprovider_types.QQuickAsyncImageProvider, param1: cstring): pointer =
  fcQQuickAsyncImageProvider_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQQuickAsyncImageProvider_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QQuickAsyncImageProviderVTable](vtbl)
  let self = QQuickAsyncImageProvider(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QQuickAsyncImageProvidermetacall*(self: gen_qquickimageprovider_types.QQuickAsyncImageProvider, param1: cint, param2: cint, param3: pointer): cint =
  fcQQuickAsyncImageProvider_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQQuickAsyncImageProvider_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QQuickAsyncImageProviderVTable](vtbl)
  let self = QQuickAsyncImageProvider(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QQuickAsyncImageProviderimageType*(self: gen_qquickimageprovider_types.QQuickAsyncImageProvider, ): cint =
  cint(fcQQuickAsyncImageProvider_virtualbase_imageType(self.h))

proc miqt_exec_callback_cQQuickAsyncImageProvider_imageType(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QQuickAsyncImageProviderVTable](vtbl)
  let self = QQuickAsyncImageProvider(h: self)
  var virtualReturn = vtbl[].imageType(self)
  cint(virtualReturn)

proc QQuickAsyncImageProviderflags*(self: gen_qquickimageprovider_types.QQuickAsyncImageProvider, ): cint =
  cint(fcQQuickAsyncImageProvider_virtualbase_flags(self.h))

proc miqt_exec_callback_cQQuickAsyncImageProvider_flags(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QQuickAsyncImageProviderVTable](vtbl)
  let self = QQuickAsyncImageProvider(h: self)
  var virtualReturn = vtbl[].flags(self)
  cint(virtualReturn)

proc QQuickAsyncImageProviderrequestImage*(self: gen_qquickimageprovider_types.QQuickAsyncImageProvider, id: string, size: gen_qsize_types.QSize, requestedSize: gen_qsize_types.QSize): gen_qimage_types.QImage =
  gen_qimage_types.QImage(h: fcQQuickAsyncImageProvider_virtualbase_requestImage(self.h, struct_miqt_string(data: id, len: csize_t(len(id))), size.h, requestedSize.h), owned: true)

proc miqt_exec_callback_cQQuickAsyncImageProvider_requestImage(vtbl: pointer, self: pointer, id: struct_miqt_string, size: pointer, requestedSize: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QQuickAsyncImageProviderVTable](vtbl)
  let self = QQuickAsyncImageProvider(h: self)
  let vid_ms = id
  let vidx_ret = string.fromBytes(toOpenArrayByte(vid_ms.data, 0, int(vid_ms.len)-1))
  c_free(vid_ms.data)
  let slotval1 = vidx_ret
  let slotval2 = gen_qsize_types.QSize(h: size, owned: false)
  let slotval3 = gen_qsize_types.QSize(h: requestedSize, owned: false)
  var virtualReturn = vtbl[].requestImage(self, slotval1, slotval2, slotval3)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QQuickAsyncImageProviderrequestPixmap*(self: gen_qquickimageprovider_types.QQuickAsyncImageProvider, id: string, size: gen_qsize_types.QSize, requestedSize: gen_qsize_types.QSize): gen_qpixmap_types.QPixmap =
  gen_qpixmap_types.QPixmap(h: fcQQuickAsyncImageProvider_virtualbase_requestPixmap(self.h, struct_miqt_string(data: id, len: csize_t(len(id))), size.h, requestedSize.h), owned: true)

proc miqt_exec_callback_cQQuickAsyncImageProvider_requestPixmap(vtbl: pointer, self: pointer, id: struct_miqt_string, size: pointer, requestedSize: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QQuickAsyncImageProviderVTable](vtbl)
  let self = QQuickAsyncImageProvider(h: self)
  let vid_ms = id
  let vidx_ret = string.fromBytes(toOpenArrayByte(vid_ms.data, 0, int(vid_ms.len)-1))
  c_free(vid_ms.data)
  let slotval1 = vidx_ret
  let slotval2 = gen_qsize_types.QSize(h: size, owned: false)
  let slotval3 = gen_qsize_types.QSize(h: requestedSize, owned: false)
  var virtualReturn = vtbl[].requestPixmap(self, slotval1, slotval2, slotval3)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QQuickAsyncImageProviderrequestTexture*(self: gen_qquickimageprovider_types.QQuickAsyncImageProvider, id: string, size: gen_qsize_types.QSize, requestedSize: gen_qsize_types.QSize): gen_qquickimageprovider_types.QQuickTextureFactory =
  gen_qquickimageprovider_types.QQuickTextureFactory(h: fcQQuickAsyncImageProvider_virtualbase_requestTexture(self.h, struct_miqt_string(data: id, len: csize_t(len(id))), size.h, requestedSize.h), owned: false)

proc miqt_exec_callback_cQQuickAsyncImageProvider_requestTexture(vtbl: pointer, self: pointer, id: struct_miqt_string, size: pointer, requestedSize: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QQuickAsyncImageProviderVTable](vtbl)
  let self = QQuickAsyncImageProvider(h: self)
  let vid_ms = id
  let vidx_ret = string.fromBytes(toOpenArrayByte(vid_ms.data, 0, int(vid_ms.len)-1))
  c_free(vid_ms.data)
  let slotval1 = vidx_ret
  let slotval2 = gen_qsize_types.QSize(h: size, owned: false)
  let slotval3 = gen_qsize_types.QSize(h: requestedSize, owned: false)
  var virtualReturn = vtbl[].requestTexture(self, slotval1, slotval2, slotval3)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QQuickAsyncImageProviderevent*(self: gen_qquickimageprovider_types.QQuickAsyncImageProvider, event: gen_qcoreevent_types.QEvent): bool =
  fcQQuickAsyncImageProvider_virtualbase_event(self.h, event.h)

proc miqt_exec_callback_cQQuickAsyncImageProvider_event(vtbl: pointer, self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QQuickAsyncImageProviderVTable](vtbl)
  let self = QQuickAsyncImageProvider(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QQuickAsyncImageProvidereventFilter*(self: gen_qquickimageprovider_types.QQuickAsyncImageProvider, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQQuickAsyncImageProvider_virtualbase_eventFilter(self.h, watched.h, event.h)

proc miqt_exec_callback_cQQuickAsyncImageProvider_eventFilter(vtbl: pointer, self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QQuickAsyncImageProviderVTable](vtbl)
  let self = QQuickAsyncImageProvider(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QQuickAsyncImageProvidertimerEvent*(self: gen_qquickimageprovider_types.QQuickAsyncImageProvider, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQQuickAsyncImageProvider_virtualbase_timerEvent(self.h, event.h)

proc miqt_exec_callback_cQQuickAsyncImageProvider_timerEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickAsyncImageProviderVTable](vtbl)
  let self = QQuickAsyncImageProvider(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc QQuickAsyncImageProviderchildEvent*(self: gen_qquickimageprovider_types.QQuickAsyncImageProvider, event: gen_qcoreevent_types.QChildEvent): void =
  fcQQuickAsyncImageProvider_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQQuickAsyncImageProvider_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickAsyncImageProviderVTable](vtbl)
  let self = QQuickAsyncImageProvider(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc QQuickAsyncImageProvidercustomEvent*(self: gen_qquickimageprovider_types.QQuickAsyncImageProvider, event: gen_qcoreevent_types.QEvent): void =
  fcQQuickAsyncImageProvider_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQQuickAsyncImageProvider_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickAsyncImageProviderVTable](vtbl)
  let self = QQuickAsyncImageProvider(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc QQuickAsyncImageProviderconnectNotify*(self: gen_qquickimageprovider_types.QQuickAsyncImageProvider, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQQuickAsyncImageProvider_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQQuickAsyncImageProvider_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickAsyncImageProviderVTable](vtbl)
  let self = QQuickAsyncImageProvider(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc QQuickAsyncImageProviderdisconnectNotify*(self: gen_qquickimageprovider_types.QQuickAsyncImageProvider, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQQuickAsyncImageProvider_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQQuickAsyncImageProvider_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickAsyncImageProviderVTable](vtbl)
  let self = QQuickAsyncImageProvider(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQQuickAsyncImageProvider* {.inheritable.} = ref object of QQuickAsyncImageProvider
  vtbl*: cQQuickAsyncImageProviderVTable
method requestImageResponse*(self: VirtualQQuickAsyncImageProvider, id: string, requestedSize: gen_qsize_types.QSize): gen_qquickimageprovider_types.QQuickImageResponse {.base.} =
  raiseAssert("missing implementation of QQuickAsyncImageProvider_virtualbase_requestImageResponse")
proc miqt_exec_method_cQQuickAsyncImageProvider_requestImageResponse(vtbl: pointer, inst: pointer, id: struct_miqt_string, requestedSize: pointer): pointer {.cdecl.} =
  let vtbl = cast[VirtualQQuickAsyncImageProvider](cast[uint](vtbl) - uint(offsetOf(VirtualQQuickAsyncImageProvider, vtbl)))
  let vid_ms = id
  let vidx_ret = string.fromBytes(toOpenArrayByte(vid_ms.data, 0, int(vid_ms.len)-1))
  c_free(vid_ms.data)
  let slotval1 = vidx_ret
  let slotval2 = gen_qsize_types.QSize(h: requestedSize, owned: false)
  var virtualReturn = vtbl.requestImageResponse(slotval1, slotval2)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method metaObject*(self: VirtualQQuickAsyncImageProvider, ): gen_qobjectdefs_types.QMetaObject {.base.} =
  QQuickAsyncImageProvidermetaObject(self[])
proc miqt_exec_method_cQQuickAsyncImageProvider_metaObject(vtbl: pointer, inst: pointer): pointer {.cdecl.} =
  let vtbl = cast[VirtualQQuickAsyncImageProvider](cast[uint](vtbl) - uint(offsetOf(VirtualQQuickAsyncImageProvider, vtbl)))
  var virtualReturn = vtbl.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method metacast*(self: VirtualQQuickAsyncImageProvider, param1: cstring): pointer {.base.} =
  QQuickAsyncImageProvidermetacast(self[], param1)
proc miqt_exec_method_cQQuickAsyncImageProvider_metacast(vtbl: pointer, inst: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[VirtualQQuickAsyncImageProvider](cast[uint](vtbl) - uint(offsetOf(VirtualQQuickAsyncImageProvider, vtbl)))
  let slotval1 = (param1)
  var virtualReturn = vtbl.metacast(slotval1)
  virtualReturn

method metacall*(self: VirtualQQuickAsyncImageProvider, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QQuickAsyncImageProvidermetacall(self[], param1, param2, param3)
proc miqt_exec_method_cQQuickAsyncImageProvider_metacall(vtbl: pointer, inst: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[VirtualQQuickAsyncImageProvider](cast[uint](vtbl) - uint(offsetOf(VirtualQQuickAsyncImageProvider, vtbl)))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl.metacall(slotval1, slotval2, slotval3)
  virtualReturn

method imageType*(self: VirtualQQuickAsyncImageProvider, ): cint {.base.} =
  QQuickAsyncImageProviderimageType(self[])
proc miqt_exec_method_cQQuickAsyncImageProvider_imageType(vtbl: pointer, inst: pointer): cint {.cdecl.} =
  let vtbl = cast[VirtualQQuickAsyncImageProvider](cast[uint](vtbl) - uint(offsetOf(VirtualQQuickAsyncImageProvider, vtbl)))
  var virtualReturn = vtbl.imageType()
  cint(virtualReturn)

method flags*(self: VirtualQQuickAsyncImageProvider, ): cint {.base.} =
  QQuickAsyncImageProviderflags(self[])
proc miqt_exec_method_cQQuickAsyncImageProvider_flags(vtbl: pointer, inst: pointer): cint {.cdecl.} =
  let vtbl = cast[VirtualQQuickAsyncImageProvider](cast[uint](vtbl) - uint(offsetOf(VirtualQQuickAsyncImageProvider, vtbl)))
  var virtualReturn = vtbl.flags()
  cint(virtualReturn)

method requestImage*(self: VirtualQQuickAsyncImageProvider, id: string, size: gen_qsize_types.QSize, requestedSize: gen_qsize_types.QSize): gen_qimage_types.QImage {.base.} =
  QQuickAsyncImageProviderrequestImage(self[], id, size, requestedSize)
proc miqt_exec_method_cQQuickAsyncImageProvider_requestImage(vtbl: pointer, inst: pointer, id: struct_miqt_string, size: pointer, requestedSize: pointer): pointer {.cdecl.} =
  let vtbl = cast[VirtualQQuickAsyncImageProvider](cast[uint](vtbl) - uint(offsetOf(VirtualQQuickAsyncImageProvider, vtbl)))
  let vid_ms = id
  let vidx_ret = string.fromBytes(toOpenArrayByte(vid_ms.data, 0, int(vid_ms.len)-1))
  c_free(vid_ms.data)
  let slotval1 = vidx_ret
  let slotval2 = gen_qsize_types.QSize(h: size, owned: false)
  let slotval3 = gen_qsize_types.QSize(h: requestedSize, owned: false)
  var virtualReturn = vtbl.requestImage(slotval1, slotval2, slotval3)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method requestPixmap*(self: VirtualQQuickAsyncImageProvider, id: string, size: gen_qsize_types.QSize, requestedSize: gen_qsize_types.QSize): gen_qpixmap_types.QPixmap {.base.} =
  QQuickAsyncImageProviderrequestPixmap(self[], id, size, requestedSize)
proc miqt_exec_method_cQQuickAsyncImageProvider_requestPixmap(vtbl: pointer, inst: pointer, id: struct_miqt_string, size: pointer, requestedSize: pointer): pointer {.cdecl.} =
  let vtbl = cast[VirtualQQuickAsyncImageProvider](cast[uint](vtbl) - uint(offsetOf(VirtualQQuickAsyncImageProvider, vtbl)))
  let vid_ms = id
  let vidx_ret = string.fromBytes(toOpenArrayByte(vid_ms.data, 0, int(vid_ms.len)-1))
  c_free(vid_ms.data)
  let slotval1 = vidx_ret
  let slotval2 = gen_qsize_types.QSize(h: size, owned: false)
  let slotval3 = gen_qsize_types.QSize(h: requestedSize, owned: false)
  var virtualReturn = vtbl.requestPixmap(slotval1, slotval2, slotval3)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method requestTexture*(self: VirtualQQuickAsyncImageProvider, id: string, size: gen_qsize_types.QSize, requestedSize: gen_qsize_types.QSize): gen_qquickimageprovider_types.QQuickTextureFactory {.base.} =
  QQuickAsyncImageProviderrequestTexture(self[], id, size, requestedSize)
proc miqt_exec_method_cQQuickAsyncImageProvider_requestTexture(vtbl: pointer, inst: pointer, id: struct_miqt_string, size: pointer, requestedSize: pointer): pointer {.cdecl.} =
  let vtbl = cast[VirtualQQuickAsyncImageProvider](cast[uint](vtbl) - uint(offsetOf(VirtualQQuickAsyncImageProvider, vtbl)))
  let vid_ms = id
  let vidx_ret = string.fromBytes(toOpenArrayByte(vid_ms.data, 0, int(vid_ms.len)-1))
  c_free(vid_ms.data)
  let slotval1 = vidx_ret
  let slotval2 = gen_qsize_types.QSize(h: size, owned: false)
  let slotval3 = gen_qsize_types.QSize(h: requestedSize, owned: false)
  var virtualReturn = vtbl.requestTexture(slotval1, slotval2, slotval3)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method event*(self: VirtualQQuickAsyncImageProvider, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QQuickAsyncImageProviderevent(self[], event)
proc miqt_exec_method_cQQuickAsyncImageProvider_event(vtbl: pointer, inst: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[VirtualQQuickAsyncImageProvider](cast[uint](vtbl) - uint(offsetOf(VirtualQQuickAsyncImageProvider, vtbl)))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl.event(slotval1)
  virtualReturn

method eventFilter*(self: VirtualQQuickAsyncImageProvider, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QQuickAsyncImageProvidereventFilter(self[], watched, event)
proc miqt_exec_method_cQQuickAsyncImageProvider_eventFilter(vtbl: pointer, inst: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[VirtualQQuickAsyncImageProvider](cast[uint](vtbl) - uint(offsetOf(VirtualQQuickAsyncImageProvider, vtbl)))
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl.eventFilter(slotval1, slotval2)
  virtualReturn

method timerEvent*(self: VirtualQQuickAsyncImageProvider, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QQuickAsyncImageProvidertimerEvent(self[], event)
proc miqt_exec_method_cQQuickAsyncImageProvider_timerEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQQuickAsyncImageProvider](cast[uint](vtbl) - uint(offsetOf(VirtualQQuickAsyncImageProvider, vtbl)))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl.timerEvent(slotval1)

method childEvent*(self: VirtualQQuickAsyncImageProvider, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QQuickAsyncImageProviderchildEvent(self[], event)
proc miqt_exec_method_cQQuickAsyncImageProvider_childEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQQuickAsyncImageProvider](cast[uint](vtbl) - uint(offsetOf(VirtualQQuickAsyncImageProvider, vtbl)))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl.childEvent(slotval1)

method customEvent*(self: VirtualQQuickAsyncImageProvider, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QQuickAsyncImageProvidercustomEvent(self[], event)
proc miqt_exec_method_cQQuickAsyncImageProvider_customEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQQuickAsyncImageProvider](cast[uint](vtbl) - uint(offsetOf(VirtualQQuickAsyncImageProvider, vtbl)))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl.customEvent(slotval1)

method connectNotify*(self: VirtualQQuickAsyncImageProvider, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QQuickAsyncImageProviderconnectNotify(self[], signal)
proc miqt_exec_method_cQQuickAsyncImageProvider_connectNotify(vtbl: pointer, inst: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQQuickAsyncImageProvider](cast[uint](vtbl) - uint(offsetOf(VirtualQQuickAsyncImageProvider, vtbl)))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl.connectNotify(slotval1)

method disconnectNotify*(self: VirtualQQuickAsyncImageProvider, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QQuickAsyncImageProviderdisconnectNotify(self[], signal)
proc miqt_exec_method_cQQuickAsyncImageProvider_disconnectNotify(vtbl: pointer, inst: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQQuickAsyncImageProvider](cast[uint](vtbl) - uint(offsetOf(VirtualQQuickAsyncImageProvider, vtbl)))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl.disconnectNotify(slotval1)

proc sender*(self: gen_qquickimageprovider_types.QQuickAsyncImageProvider, ): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQQuickAsyncImageProvider_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qquickimageprovider_types.QQuickAsyncImageProvider, ): cint =
  fcQQuickAsyncImageProvider_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qquickimageprovider_types.QQuickAsyncImageProvider, signal: cstring): cint =
  fcQQuickAsyncImageProvider_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qquickimageprovider_types.QQuickAsyncImageProvider, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQQuickAsyncImageProvider_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qquickimageprovider_types.QQuickAsyncImageProvider,
    vtbl: ref QQuickAsyncImageProviderVTable = nil): gen_qquickimageprovider_types.QQuickAsyncImageProvider =
  let vtbl = if vtbl == nil: new QQuickAsyncImageProviderVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(vtbl: ptr cQQuickAsyncImageProviderVTable, _: ptr cQQuickAsyncImageProvider) {.cdecl.} =
    let vtbl = cast[ref QQuickAsyncImageProviderVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl[].requestImageResponse):
    vtbl[].vtbl.requestImageResponse = miqt_exec_callback_cQQuickAsyncImageProvider_requestImageResponse
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQQuickAsyncImageProvider_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQQuickAsyncImageProvider_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQQuickAsyncImageProvider_metacall
  if not isNil(vtbl[].imageType):
    vtbl[].vtbl.imageType = miqt_exec_callback_cQQuickAsyncImageProvider_imageType
  if not isNil(vtbl[].flags):
    vtbl[].vtbl.flags = miqt_exec_callback_cQQuickAsyncImageProvider_flags
  if not isNil(vtbl[].requestImage):
    vtbl[].vtbl.requestImage = miqt_exec_callback_cQQuickAsyncImageProvider_requestImage
  if not isNil(vtbl[].requestPixmap):
    vtbl[].vtbl.requestPixmap = miqt_exec_callback_cQQuickAsyncImageProvider_requestPixmap
  if not isNil(vtbl[].requestTexture):
    vtbl[].vtbl.requestTexture = miqt_exec_callback_cQQuickAsyncImageProvider_requestTexture
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = miqt_exec_callback_cQQuickAsyncImageProvider_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQQuickAsyncImageProvider_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQQuickAsyncImageProvider_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQQuickAsyncImageProvider_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQQuickAsyncImageProvider_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQQuickAsyncImageProvider_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQQuickAsyncImageProvider_disconnectNotify
  gen_qquickimageprovider_types.QQuickAsyncImageProvider(h: fcQQuickAsyncImageProvider_new(addr(vtbl[].vtbl), ), owned: true)

proc create*(T: type gen_qquickimageprovider_types.QQuickAsyncImageProvider,
    vtbl: VirtualQQuickAsyncImageProvider) =

  vtbl[].vtbl.destructor = proc(vtbl: ptr cQQuickAsyncImageProviderVTable, _: ptr cQQuickAsyncImageProvider) {.cdecl.} =
    let vtbl = cast[ptr typeof(VirtualQQuickAsyncImageProvider()[])](cast[uint](vtbl) - uint(offsetOf(VirtualQQuickAsyncImageProvider, vtbl)))
    vtbl[].h = nil
    vtbl[].owned = false
  vtbl[].vtbl.requestImageResponse = miqt_exec_method_cQQuickAsyncImageProvider_requestImageResponse
  vtbl[].vtbl.metaObject = miqt_exec_method_cQQuickAsyncImageProvider_metaObject
  vtbl[].vtbl.metacast = miqt_exec_method_cQQuickAsyncImageProvider_metacast
  vtbl[].vtbl.metacall = miqt_exec_method_cQQuickAsyncImageProvider_metacall
  vtbl[].vtbl.imageType = miqt_exec_method_cQQuickAsyncImageProvider_imageType
  vtbl[].vtbl.flags = miqt_exec_method_cQQuickAsyncImageProvider_flags
  vtbl[].vtbl.requestImage = miqt_exec_method_cQQuickAsyncImageProvider_requestImage
  vtbl[].vtbl.requestPixmap = miqt_exec_method_cQQuickAsyncImageProvider_requestPixmap
  vtbl[].vtbl.requestTexture = miqt_exec_method_cQQuickAsyncImageProvider_requestTexture
  vtbl[].vtbl.event = miqt_exec_method_cQQuickAsyncImageProvider_event
  vtbl[].vtbl.eventFilter = miqt_exec_method_cQQuickAsyncImageProvider_eventFilter
  vtbl[].vtbl.timerEvent = miqt_exec_method_cQQuickAsyncImageProvider_timerEvent
  vtbl[].vtbl.childEvent = miqt_exec_method_cQQuickAsyncImageProvider_childEvent
  vtbl[].vtbl.customEvent = miqt_exec_method_cQQuickAsyncImageProvider_customEvent
  vtbl[].vtbl.connectNotify = miqt_exec_method_cQQuickAsyncImageProvider_connectNotify
  vtbl[].vtbl.disconnectNotify = miqt_exec_method_cQQuickAsyncImageProvider_disconnectNotify
  if vtbl[].h != nil: delete(move(vtbl[]))
  vtbl[].h = fcQQuickAsyncImageProvider_new(addr(vtbl[].vtbl), )
  vtbl[].owned = true

