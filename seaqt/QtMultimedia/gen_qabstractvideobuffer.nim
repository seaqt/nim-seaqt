import ./Qt5Multimedia_libs

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

const cflags = gorge("pkg-config --cflags Qt5Multimedia")  & " -fPIC"
{.compile("gen_qabstractvideobuffer.cpp", cflags).}


type QAbstractVideoBufferHandleTypeEnum* = distinct cint
template NoHandle*(_: type QAbstractVideoBufferHandleTypeEnum): untyped = 0
template GLTextureHandle*(_: type QAbstractVideoBufferHandleTypeEnum): untyped = 1
template XvShmImageHandle*(_: type QAbstractVideoBufferHandleTypeEnum): untyped = 2
template CoreImageHandle*(_: type QAbstractVideoBufferHandleTypeEnum): untyped = 3
template QPixmapHandle*(_: type QAbstractVideoBufferHandleTypeEnum): untyped = 4
template EGLImageHandle*(_: type QAbstractVideoBufferHandleTypeEnum): untyped = 5
template GLTextureRectangleHandle*(_: type QAbstractVideoBufferHandleTypeEnum): untyped = 6
template UserHandle*(_: type QAbstractVideoBufferHandleTypeEnum): untyped = 1000


type QAbstractVideoBufferMapModeEnum* = distinct cint
template NotMapped*(_: type QAbstractVideoBufferMapModeEnum): untyped = 0
template ReadOnly*(_: type QAbstractVideoBufferMapModeEnum): untyped = 1
template WriteOnly*(_: type QAbstractVideoBufferMapModeEnum): untyped = 2
template ReadWrite*(_: type QAbstractVideoBufferMapModeEnum): untyped = 3


import ./gen_qabstractvideobuffer_types
export gen_qabstractvideobuffer_types

import
  ../QtCore/gen_qvariant_types
export
  gen_qvariant_types

type cQAbstractVideoBuffer*{.exportc: "QAbstractVideoBuffer", incompleteStruct.} = object
type cQAbstractPlanarVideoBuffer*{.exportc: "QAbstractPlanarVideoBuffer", incompleteStruct.} = object

proc fcQAbstractVideoBuffer_release(self: pointer, ): void {.importc: "QAbstractVideoBuffer_release".}
proc fcQAbstractVideoBuffer_handleType(self: pointer, ): cint {.importc: "QAbstractVideoBuffer_handleType".}
proc fcQAbstractVideoBuffer_mapMode(self: pointer, ): cint {.importc: "QAbstractVideoBuffer_mapMode".}
proc fcQAbstractVideoBuffer_map(self: pointer, mode: cint, numBytes: ptr cint, bytesPerLine: ptr cint): ptr uint8 {.importc: "QAbstractVideoBuffer_map".}
proc fcQAbstractVideoBuffer_unmap(self: pointer, ): void {.importc: "QAbstractVideoBuffer_unmap".}
proc fcQAbstractVideoBuffer_handle(self: pointer, ): pointer {.importc: "QAbstractVideoBuffer_handle".}
type cQAbstractVideoBufferVTable = object
  destructor*: proc(vtbl: ptr cQAbstractVideoBufferVTable, self: ptr cQAbstractVideoBuffer) {.cdecl, raises:[], gcsafe.}
  release*: proc(vtbl, self: pointer, ): void {.cdecl, raises: [], gcsafe.}
  mapMode*: proc(vtbl, self: pointer, ): cint {.cdecl, raises: [], gcsafe.}
  map*: proc(vtbl, self: pointer, mode: cint, numBytes: ptr cint, bytesPerLine: ptr cint): ptr uint8 {.cdecl, raises: [], gcsafe.}
  unmap*: proc(vtbl, self: pointer, ): void {.cdecl, raises: [], gcsafe.}
  handle*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
proc fcQAbstractVideoBuffer_virtualbase_release(self: pointer, ): void {.importc: "QAbstractVideoBuffer_virtualbase_release".}
proc fcQAbstractVideoBuffer_virtualbase_handle(self: pointer, ): pointer {.importc: "QAbstractVideoBuffer_virtualbase_handle".}
proc fcQAbstractVideoBuffer_new(vtbl: pointer, typeVal: cint): ptr cQAbstractVideoBuffer {.importc: "QAbstractVideoBuffer_new".}
proc fcQAbstractVideoBuffer_delete(self: pointer) {.importc: "QAbstractVideoBuffer_delete".}
proc fcQAbstractPlanarVideoBuffer_map(self: pointer, mode: cint, numBytes: ptr cint, bytesPerLine: ptr cint): ptr uint8 {.importc: "QAbstractPlanarVideoBuffer_map".}
type cQAbstractPlanarVideoBufferVTable = object
  destructor*: proc(vtbl: ptr cQAbstractPlanarVideoBufferVTable, self: ptr cQAbstractPlanarVideoBuffer) {.cdecl, raises:[], gcsafe.}
  map*: proc(vtbl, self: pointer, mode: cint, numBytes: ptr cint, bytesPerLine: ptr cint): ptr uint8 {.cdecl, raises: [], gcsafe.}
  release*: proc(vtbl, self: pointer, ): void {.cdecl, raises: [], gcsafe.}
  mapMode*: proc(vtbl, self: pointer, ): cint {.cdecl, raises: [], gcsafe.}
  unmap*: proc(vtbl, self: pointer, ): void {.cdecl, raises: [], gcsafe.}
  handle*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
proc fcQAbstractPlanarVideoBuffer_virtualbase_map(self: pointer, mode: cint, numBytes: ptr cint, bytesPerLine: ptr cint): ptr uint8 {.importc: "QAbstractPlanarVideoBuffer_virtualbase_map".}
proc fcQAbstractPlanarVideoBuffer_virtualbase_release(self: pointer, ): void {.importc: "QAbstractPlanarVideoBuffer_virtualbase_release".}
proc fcQAbstractPlanarVideoBuffer_virtualbase_handle(self: pointer, ): pointer {.importc: "QAbstractPlanarVideoBuffer_virtualbase_handle".}
proc fcQAbstractPlanarVideoBuffer_new(vtbl: pointer, typeVal: cint): ptr cQAbstractPlanarVideoBuffer {.importc: "QAbstractPlanarVideoBuffer_new".}
proc fcQAbstractPlanarVideoBuffer_delete(self: pointer) {.importc: "QAbstractPlanarVideoBuffer_delete".}

proc release*(self: gen_qabstractvideobuffer_types.QAbstractVideoBuffer, ): void =
  fcQAbstractVideoBuffer_release(self.h)

proc handleType*(self: gen_qabstractvideobuffer_types.QAbstractVideoBuffer, ): cint =
  cint(fcQAbstractVideoBuffer_handleType(self.h))

proc mapMode*(self: gen_qabstractvideobuffer_types.QAbstractVideoBuffer, ): cint =
  cint(fcQAbstractVideoBuffer_mapMode(self.h))

proc map*(self: gen_qabstractvideobuffer_types.QAbstractVideoBuffer, mode: cint, numBytes: ptr cint, bytesPerLine: ptr cint): ptr uint8 =
  fcQAbstractVideoBuffer_map(self.h, cint(mode), numBytes, bytesPerLine)

proc unmap*(self: gen_qabstractvideobuffer_types.QAbstractVideoBuffer, ): void =
  fcQAbstractVideoBuffer_unmap(self.h)

proc handle*(self: gen_qabstractvideobuffer_types.QAbstractVideoBuffer, ): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQAbstractVideoBuffer_handle(self.h))

type QAbstractVideoBufferreleaseProc* = proc(self: QAbstractVideoBuffer): void {.raises: [], gcsafe.}
type QAbstractVideoBuffermapModeProc* = proc(self: QAbstractVideoBuffer): cint {.raises: [], gcsafe.}
type QAbstractVideoBuffermapProc* = proc(self: QAbstractVideoBuffer, mode: cint, numBytes: ptr cint, bytesPerLine: ptr cint): ptr uint8 {.raises: [], gcsafe.}
type QAbstractVideoBufferunmapProc* = proc(self: QAbstractVideoBuffer): void {.raises: [], gcsafe.}
type QAbstractVideoBufferhandleProc* = proc(self: QAbstractVideoBuffer): gen_qvariant_types.QVariant {.raises: [], gcsafe.}
type QAbstractVideoBufferVTable* = object
  vtbl: cQAbstractVideoBufferVTable
  release*: QAbstractVideoBufferreleaseProc
  mapMode*: QAbstractVideoBuffermapModeProc
  map*: QAbstractVideoBuffermapProc
  unmap*: QAbstractVideoBufferunmapProc
  handle*: QAbstractVideoBufferhandleProc
proc QAbstractVideoBufferrelease*(self: gen_qabstractvideobuffer_types.QAbstractVideoBuffer, ): void =
  fcQAbstractVideoBuffer_virtualbase_release(self.h)

proc miqt_exec_callback_cQAbstractVideoBuffer_release(vtbl: pointer, self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractVideoBufferVTable](vtbl)
  let self = QAbstractVideoBuffer(h: self)
  vtbl[].release(self)

proc miqt_exec_callback_cQAbstractVideoBuffer_mapMode(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QAbstractVideoBufferVTable](vtbl)
  let self = QAbstractVideoBuffer(h: self)
  var virtualReturn = vtbl[].mapMode(self)
  cint(virtualReturn)

proc miqt_exec_callback_cQAbstractVideoBuffer_map(vtbl: pointer, self: pointer, mode: cint, numBytes: ptr cint, bytesPerLine: ptr cint): ptr uint8 {.cdecl.} =
  let vtbl = cast[ptr QAbstractVideoBufferVTable](vtbl)
  let self = QAbstractVideoBuffer(h: self)
  let slotval1 = cint(mode)
  let slotval2 = numBytes
  let slotval3 = bytesPerLine
  var virtualReturn = vtbl[].map(self, slotval1, slotval2, slotval3)
  virtualReturn

proc miqt_exec_callback_cQAbstractVideoBuffer_unmap(vtbl: pointer, self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractVideoBufferVTable](vtbl)
  let self = QAbstractVideoBuffer(h: self)
  vtbl[].unmap(self)

proc QAbstractVideoBufferhandle*(self: gen_qabstractvideobuffer_types.QAbstractVideoBuffer, ): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQAbstractVideoBuffer_virtualbase_handle(self.h))

proc miqt_exec_callback_cQAbstractVideoBuffer_handle(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QAbstractVideoBufferVTable](vtbl)
  let self = QAbstractVideoBuffer(h: self)
  var virtualReturn = vtbl[].handle(self)
  virtualReturn.h

proc create*(T: type gen_qabstractvideobuffer_types.QAbstractVideoBuffer,
    typeVal: cint,
    vtbl: ref QAbstractVideoBufferVTable = nil): gen_qabstractvideobuffer_types.QAbstractVideoBuffer =
  let vtbl = if vtbl == nil: new QAbstractVideoBufferVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQAbstractVideoBufferVTable, _: ptr cQAbstractVideoBuffer) {.cdecl.} =
    let vtbl = cast[ref QAbstractVideoBufferVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.release):
    vtbl[].vtbl.release = miqt_exec_callback_cQAbstractVideoBuffer_release
  if not isNil(vtbl.mapMode):
    vtbl[].vtbl.mapMode = miqt_exec_callback_cQAbstractVideoBuffer_mapMode
  if not isNil(vtbl.map):
    vtbl[].vtbl.map = miqt_exec_callback_cQAbstractVideoBuffer_map
  if not isNil(vtbl.unmap):
    vtbl[].vtbl.unmap = miqt_exec_callback_cQAbstractVideoBuffer_unmap
  if not isNil(vtbl.handle):
    vtbl[].vtbl.handle = miqt_exec_callback_cQAbstractVideoBuffer_handle
  gen_qabstractvideobuffer_types.QAbstractVideoBuffer(h: fcQAbstractVideoBuffer_new(addr(vtbl[]), cint(typeVal)))

proc delete*(self: gen_qabstractvideobuffer_types.QAbstractVideoBuffer) =
  fcQAbstractVideoBuffer_delete(self.h)
proc map*(self: gen_qabstractvideobuffer_types.QAbstractPlanarVideoBuffer, mode: cint, numBytes: ptr cint, bytesPerLine: ptr cint): ptr uint8 =
  fcQAbstractPlanarVideoBuffer_map(self.h, cint(mode), numBytes, bytesPerLine)

type QAbstractPlanarVideoBuffermapProc* = proc(self: QAbstractPlanarVideoBuffer, mode: cint, numBytes: ptr cint, bytesPerLine: ptr cint): ptr uint8 {.raises: [], gcsafe.}
type QAbstractPlanarVideoBufferreleaseProc* = proc(self: QAbstractPlanarVideoBuffer): void {.raises: [], gcsafe.}
type QAbstractPlanarVideoBuffermapModeProc* = proc(self: QAbstractPlanarVideoBuffer): cint {.raises: [], gcsafe.}
type QAbstractPlanarVideoBufferunmapProc* = proc(self: QAbstractPlanarVideoBuffer): void {.raises: [], gcsafe.}
type QAbstractPlanarVideoBufferhandleProc* = proc(self: QAbstractPlanarVideoBuffer): gen_qvariant_types.QVariant {.raises: [], gcsafe.}
type QAbstractPlanarVideoBufferVTable* = object
  vtbl: cQAbstractPlanarVideoBufferVTable
  map*: QAbstractPlanarVideoBuffermapProc
  release*: QAbstractPlanarVideoBufferreleaseProc
  mapMode*: QAbstractPlanarVideoBuffermapModeProc
  unmap*: QAbstractPlanarVideoBufferunmapProc
  handle*: QAbstractPlanarVideoBufferhandleProc
proc QAbstractPlanarVideoBuffermap*(self: gen_qabstractvideobuffer_types.QAbstractPlanarVideoBuffer, mode: cint, numBytes: ptr cint, bytesPerLine: ptr cint): ptr uint8 =
  fcQAbstractPlanarVideoBuffer_virtualbase_map(self.h, cint(mode), numBytes, bytesPerLine)

proc miqt_exec_callback_cQAbstractPlanarVideoBuffer_map(vtbl: pointer, self: pointer, mode: cint, numBytes: ptr cint, bytesPerLine: ptr cint): ptr uint8 {.cdecl.} =
  let vtbl = cast[ptr QAbstractPlanarVideoBufferVTable](vtbl)
  let self = QAbstractPlanarVideoBuffer(h: self)
  let slotval1 = cint(mode)
  let slotval2 = numBytes
  let slotval3 = bytesPerLine
  var virtualReturn = vtbl[].map(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QAbstractPlanarVideoBufferrelease*(self: gen_qabstractvideobuffer_types.QAbstractPlanarVideoBuffer, ): void =
  fcQAbstractPlanarVideoBuffer_virtualbase_release(self.h)

proc miqt_exec_callback_cQAbstractPlanarVideoBuffer_release(vtbl: pointer, self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractPlanarVideoBufferVTable](vtbl)
  let self = QAbstractPlanarVideoBuffer(h: self)
  vtbl[].release(self)

proc miqt_exec_callback_cQAbstractPlanarVideoBuffer_mapMode(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QAbstractPlanarVideoBufferVTable](vtbl)
  let self = QAbstractPlanarVideoBuffer(h: self)
  var virtualReturn = vtbl[].mapMode(self)
  cint(virtualReturn)

proc miqt_exec_callback_cQAbstractPlanarVideoBuffer_unmap(vtbl: pointer, self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractPlanarVideoBufferVTable](vtbl)
  let self = QAbstractPlanarVideoBuffer(h: self)
  vtbl[].unmap(self)

proc QAbstractPlanarVideoBufferhandle*(self: gen_qabstractvideobuffer_types.QAbstractPlanarVideoBuffer, ): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQAbstractPlanarVideoBuffer_virtualbase_handle(self.h))

proc miqt_exec_callback_cQAbstractPlanarVideoBuffer_handle(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QAbstractPlanarVideoBufferVTable](vtbl)
  let self = QAbstractPlanarVideoBuffer(h: self)
  var virtualReturn = vtbl[].handle(self)
  virtualReturn.h

proc create*(T: type gen_qabstractvideobuffer_types.QAbstractPlanarVideoBuffer,
    typeVal: cint,
    vtbl: ref QAbstractPlanarVideoBufferVTable = nil): gen_qabstractvideobuffer_types.QAbstractPlanarVideoBuffer =
  let vtbl = if vtbl == nil: new QAbstractPlanarVideoBufferVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQAbstractPlanarVideoBufferVTable, _: ptr cQAbstractPlanarVideoBuffer) {.cdecl.} =
    let vtbl = cast[ref QAbstractPlanarVideoBufferVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.map):
    vtbl[].vtbl.map = miqt_exec_callback_cQAbstractPlanarVideoBuffer_map
  if not isNil(vtbl.release):
    vtbl[].vtbl.release = miqt_exec_callback_cQAbstractPlanarVideoBuffer_release
  if not isNil(vtbl.mapMode):
    vtbl[].vtbl.mapMode = miqt_exec_callback_cQAbstractPlanarVideoBuffer_mapMode
  if not isNil(vtbl.unmap):
    vtbl[].vtbl.unmap = miqt_exec_callback_cQAbstractPlanarVideoBuffer_unmap
  if not isNil(vtbl.handle):
    vtbl[].vtbl.handle = miqt_exec_callback_cQAbstractPlanarVideoBuffer_handle
  gen_qabstractvideobuffer_types.QAbstractPlanarVideoBuffer(h: fcQAbstractPlanarVideoBuffer_new(addr(vtbl[]), cint(typeVal)))

proc delete*(self: gen_qabstractvideobuffer_types.QAbstractPlanarVideoBuffer) =
  fcQAbstractPlanarVideoBuffer_delete(self.h)
