import ./Qt5Quick_libs

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

const cflags = gorge("pkg-config --cflags Qt5Quick") & " -fPIC"
{.compile("gen_qsgabstractrenderer.cpp", cflags).}


type QSGAbstractRendererClearModeBitEnum* = distinct cint
template ClearColorBuffer*(_: type QSGAbstractRendererClearModeBitEnum): untyped = 1
template ClearDepthBuffer*(_: type QSGAbstractRendererClearModeBitEnum): untyped = 2
template ClearStencilBuffer*(_: type QSGAbstractRendererClearModeBitEnum): untyped = 4


type QSGAbstractRendererMatrixTransformFlagEnum* = distinct cint
template MatrixTransformFlipY*(_: type QSGAbstractRendererMatrixTransformFlagEnum): untyped = 1


import ./gen_qsgabstractrenderer_types
export gen_qsgabstractrenderer_types

import
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qobject,
  ../QtCore/gen_qobjectdefs_types,
  ../QtCore/gen_qrect_types,
  ../QtCore/gen_qsize_types,
  ../QtGui/gen_qcolor_types,
  ../QtGui/gen_qmatrix4x4_types,
  ./gen_qsgnode_types
export
  gen_qmetaobject_types,
  gen_qobject,
  gen_qobjectdefs_types,
  gen_qrect_types,
  gen_qsize_types,
  gen_qcolor_types,
  gen_qmatrix4x4_types,
  gen_qsgnode_types

type cQSGAbstractRenderer*{.exportc: "QSGAbstractRenderer", incompleteStruct.} = object

proc fcQSGAbstractRenderer_metaObject(self: pointer): pointer {.importc: "QSGAbstractRenderer_metaObject".}
proc fcQSGAbstractRenderer_metacast(self: pointer, param1: cstring): pointer {.importc: "QSGAbstractRenderer_metacast".}
proc fcQSGAbstractRenderer_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QSGAbstractRenderer_metacall".}
proc fcQSGAbstractRenderer_tr(s: cstring): struct_miqt_string {.importc: "QSGAbstractRenderer_tr".}
proc fcQSGAbstractRenderer_trUtf8(s: cstring): struct_miqt_string {.importc: "QSGAbstractRenderer_trUtf8".}
proc fcQSGAbstractRenderer_setRootNode(self: pointer, node: pointer): void {.importc: "QSGAbstractRenderer_setRootNode".}
proc fcQSGAbstractRenderer_rootNode(self: pointer): pointer {.importc: "QSGAbstractRenderer_rootNode".}
proc fcQSGAbstractRenderer_setDeviceRect(self: pointer, rect: pointer): void {.importc: "QSGAbstractRenderer_setDeviceRect".}
proc fcQSGAbstractRenderer_setDeviceRectWithSize(self: pointer, size: pointer): void {.importc: "QSGAbstractRenderer_setDeviceRectWithSize".}
proc fcQSGAbstractRenderer_deviceRect(self: pointer): pointer {.importc: "QSGAbstractRenderer_deviceRect".}
proc fcQSGAbstractRenderer_setViewportRect(self: pointer, rect: pointer): void {.importc: "QSGAbstractRenderer_setViewportRect".}
proc fcQSGAbstractRenderer_setViewportRectWithSize(self: pointer, size: pointer): void {.importc: "QSGAbstractRenderer_setViewportRectWithSize".}
proc fcQSGAbstractRenderer_viewportRect(self: pointer): pointer {.importc: "QSGAbstractRenderer_viewportRect".}
proc fcQSGAbstractRenderer_setProjectionMatrixToRect(self: pointer, rect: pointer): void {.importc: "QSGAbstractRenderer_setProjectionMatrixToRect".}
proc fcQSGAbstractRenderer_setProjectionMatrixToRect2(self: pointer, rect: pointer, flags: cint): void {.importc: "QSGAbstractRenderer_setProjectionMatrixToRect2".}
proc fcQSGAbstractRenderer_setProjectionMatrix(self: pointer, matrix: pointer): void {.importc: "QSGAbstractRenderer_setProjectionMatrix".}
proc fcQSGAbstractRenderer_setProjectionMatrixWithNativeNDC(self: pointer, matrix: pointer): void {.importc: "QSGAbstractRenderer_setProjectionMatrixWithNativeNDC".}
proc fcQSGAbstractRenderer_projectionMatrix(self: pointer): pointer {.importc: "QSGAbstractRenderer_projectionMatrix".}
proc fcQSGAbstractRenderer_projectionMatrixWithNativeNDC(self: pointer): pointer {.importc: "QSGAbstractRenderer_projectionMatrixWithNativeNDC".}
proc fcQSGAbstractRenderer_setClearColor(self: pointer, color: pointer): void {.importc: "QSGAbstractRenderer_setClearColor".}
proc fcQSGAbstractRenderer_clearColor(self: pointer): pointer {.importc: "QSGAbstractRenderer_clearColor".}
proc fcQSGAbstractRenderer_setClearMode(self: pointer, mode: cint): void {.importc: "QSGAbstractRenderer_setClearMode".}
proc fcQSGAbstractRenderer_clearMode(self: pointer): cint {.importc: "QSGAbstractRenderer_clearMode".}
proc fcQSGAbstractRenderer_renderScene(self: pointer, fboId: cuint): void {.importc: "QSGAbstractRenderer_renderScene".}
proc fcQSGAbstractRenderer_sceneGraphChanged(self: pointer): void {.importc: "QSGAbstractRenderer_sceneGraphChanged".}
proc fcQSGAbstractRenderer_connect_sceneGraphChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QSGAbstractRenderer_connect_sceneGraphChanged".}
proc fcQSGAbstractRenderer_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QSGAbstractRenderer_tr2".}
proc fcQSGAbstractRenderer_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QSGAbstractRenderer_tr3".}
proc fcQSGAbstractRenderer_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QSGAbstractRenderer_trUtf82".}
proc fcQSGAbstractRenderer_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QSGAbstractRenderer_trUtf83".}
proc fcQSGAbstractRenderer_protectedbase_sender(self: pointer): pointer {.importc: "QSGAbstractRenderer_protectedbase_sender".}
proc fcQSGAbstractRenderer_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QSGAbstractRenderer_protectedbase_senderSignalIndex".}
proc fcQSGAbstractRenderer_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QSGAbstractRenderer_protectedbase_receivers".}
proc fcQSGAbstractRenderer_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QSGAbstractRenderer_protectedbase_isSignalConnected".}
proc fcQSGAbstractRenderer_staticMetaObject(): pointer {.importc: "QSGAbstractRenderer_staticMetaObject".}

proc metaObject*(self: gen_qsgabstractrenderer_types.QSGAbstractRenderer): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQSGAbstractRenderer_metaObject(self.h), owned: false)

proc metacast*(self: gen_qsgabstractrenderer_types.QSGAbstractRenderer, param1: cstring): pointer =
  fcQSGAbstractRenderer_metacast(self.h, param1)

proc metacall*(self: gen_qsgabstractrenderer_types.QSGAbstractRenderer, param1: cint, param2: cint, param3: pointer): cint =
  fcQSGAbstractRenderer_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qsgabstractrenderer_types.QSGAbstractRenderer, s: cstring): string =
  let v_ms = fcQSGAbstractRenderer_tr(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qsgabstractrenderer_types.QSGAbstractRenderer, s: cstring): string =
  let v_ms = fcQSGAbstractRenderer_trUtf8(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc setRootNode*(self: gen_qsgabstractrenderer_types.QSGAbstractRenderer, node: gen_qsgnode_types.QSGRootNode): void =
  fcQSGAbstractRenderer_setRootNode(self.h, node.h)

proc rootNode*(self: gen_qsgabstractrenderer_types.QSGAbstractRenderer): gen_qsgnode_types.QSGRootNode =
  gen_qsgnode_types.QSGRootNode(h: fcQSGAbstractRenderer_rootNode(self.h), owned: false)

proc setDeviceRect*(self: gen_qsgabstractrenderer_types.QSGAbstractRenderer, rect: gen_qrect_types.QRect): void =
  fcQSGAbstractRenderer_setDeviceRect(self.h, rect.h)

proc setDeviceRect*(self: gen_qsgabstractrenderer_types.QSGAbstractRenderer, size: gen_qsize_types.QSize): void =
  fcQSGAbstractRenderer_setDeviceRectWithSize(self.h, size.h)

proc deviceRect*(self: gen_qsgabstractrenderer_types.QSGAbstractRenderer): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fcQSGAbstractRenderer_deviceRect(self.h), owned: true)

proc setViewportRect*(self: gen_qsgabstractrenderer_types.QSGAbstractRenderer, rect: gen_qrect_types.QRect): void =
  fcQSGAbstractRenderer_setViewportRect(self.h, rect.h)

proc setViewportRect*(self: gen_qsgabstractrenderer_types.QSGAbstractRenderer, size: gen_qsize_types.QSize): void =
  fcQSGAbstractRenderer_setViewportRectWithSize(self.h, size.h)

proc viewportRect*(self: gen_qsgabstractrenderer_types.QSGAbstractRenderer): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fcQSGAbstractRenderer_viewportRect(self.h), owned: true)

proc setProjectionMatrixToRect*(self: gen_qsgabstractrenderer_types.QSGAbstractRenderer, rect: gen_qrect_types.QRectF): void =
  fcQSGAbstractRenderer_setProjectionMatrixToRect(self.h, rect.h)

proc setProjectionMatrixToRect*(self: gen_qsgabstractrenderer_types.QSGAbstractRenderer, rect: gen_qrect_types.QRectF, flags: cint): void =
  fcQSGAbstractRenderer_setProjectionMatrixToRect2(self.h, rect.h, cint(flags))

proc setProjectionMatrix*(self: gen_qsgabstractrenderer_types.QSGAbstractRenderer, matrix: gen_qmatrix4x4_types.QMatrix4x4): void =
  fcQSGAbstractRenderer_setProjectionMatrix(self.h, matrix.h)

proc setProjectionMatrixWithNativeNDC*(self: gen_qsgabstractrenderer_types.QSGAbstractRenderer, matrix: gen_qmatrix4x4_types.QMatrix4x4): void =
  fcQSGAbstractRenderer_setProjectionMatrixWithNativeNDC(self.h, matrix.h)

proc projectionMatrix*(self: gen_qsgabstractrenderer_types.QSGAbstractRenderer): gen_qmatrix4x4_types.QMatrix4x4 =
  gen_qmatrix4x4_types.QMatrix4x4(h: fcQSGAbstractRenderer_projectionMatrix(self.h), owned: true)

proc projectionMatrixWithNativeNDC*(self: gen_qsgabstractrenderer_types.QSGAbstractRenderer): gen_qmatrix4x4_types.QMatrix4x4 =
  gen_qmatrix4x4_types.QMatrix4x4(h: fcQSGAbstractRenderer_projectionMatrixWithNativeNDC(self.h), owned: true)

proc setClearColor*(self: gen_qsgabstractrenderer_types.QSGAbstractRenderer, color: gen_qcolor_types.QColor): void =
  fcQSGAbstractRenderer_setClearColor(self.h, color.h)

proc clearColor*(self: gen_qsgabstractrenderer_types.QSGAbstractRenderer): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQSGAbstractRenderer_clearColor(self.h), owned: true)

proc setClearMode*(self: gen_qsgabstractrenderer_types.QSGAbstractRenderer, mode: cint): void =
  fcQSGAbstractRenderer_setClearMode(self.h, cint(mode))

proc clearMode*(self: gen_qsgabstractrenderer_types.QSGAbstractRenderer): cint =
  cint(fcQSGAbstractRenderer_clearMode(self.h))

proc renderScene*(self: gen_qsgabstractrenderer_types.QSGAbstractRenderer, fboId: cuint): void =
  fcQSGAbstractRenderer_renderScene(self.h, fboId)

proc sceneGraphChanged*(self: gen_qsgabstractrenderer_types.QSGAbstractRenderer): void =
  fcQSGAbstractRenderer_sceneGraphChanged(self.h)

type QSGAbstractRenderersceneGraphChangedSlot* = proc()
proc cQSGAbstractRenderer_slot_callback_sceneGraphChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QSGAbstractRenderersceneGraphChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc cQSGAbstractRenderer_slot_callback_sceneGraphChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QSGAbstractRenderersceneGraphChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onsceneGraphChanged*(self: gen_qsgabstractrenderer_types.QSGAbstractRenderer, slot: QSGAbstractRenderersceneGraphChangedSlot) =
  var tmp = new QSGAbstractRenderersceneGraphChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQSGAbstractRenderer_connect_sceneGraphChanged(self.h, cast[int](addr tmp[]), cQSGAbstractRenderer_slot_callback_sceneGraphChanged, cQSGAbstractRenderer_slot_callback_sceneGraphChanged_release)

proc tr*(_: type gen_qsgabstractrenderer_types.QSGAbstractRenderer, s: cstring, c: cstring): string =
  let v_ms = fcQSGAbstractRenderer_tr2(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qsgabstractrenderer_types.QSGAbstractRenderer, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQSGAbstractRenderer_tr3(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qsgabstractrenderer_types.QSGAbstractRenderer, s: cstring, c: cstring): string =
  let v_ms = fcQSGAbstractRenderer_trUtf82(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qsgabstractrenderer_types.QSGAbstractRenderer, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQSGAbstractRenderer_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc sender*(self: gen_qsgabstractrenderer_types.QSGAbstractRenderer): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQSGAbstractRenderer_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qsgabstractrenderer_types.QSGAbstractRenderer): cint =
  fcQSGAbstractRenderer_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qsgabstractrenderer_types.QSGAbstractRenderer, signal: cstring): cint =
  fcQSGAbstractRenderer_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qsgabstractrenderer_types.QSGAbstractRenderer, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQSGAbstractRenderer_protectedbase_isSignalConnected(self.h, signal.h)

proc staticMetaObject*(_: type gen_qsgabstractrenderer_types.QSGAbstractRenderer): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQSGAbstractRenderer_staticMetaObject())
