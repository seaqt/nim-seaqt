import ./qtmultimedia_pkg

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

proc fcQAbstractVideoBuffer_release(self: pointer): void {.importc: "QAbstractVideoBuffer_release".}
proc fcQAbstractVideoBuffer_handleType(self: pointer): cint {.importc: "QAbstractVideoBuffer_handleType".}
proc fcQAbstractVideoBuffer_mapMode(self: pointer): cint {.importc: "QAbstractVideoBuffer_mapMode".}
proc fcQAbstractVideoBuffer_map(self: pointer, mode: cint, numBytes: ptr cint, bytesPerLine: ptr cint): ptr uint8 {.importc: "QAbstractVideoBuffer_map".}
proc fcQAbstractVideoBuffer_unmap(self: pointer): void {.importc: "QAbstractVideoBuffer_unmap".}
proc fcQAbstractVideoBuffer_handle(self: pointer): pointer {.importc: "QAbstractVideoBuffer_handle".}
proc fcQAbstractVideoBuffer_vdata(self: pointer): ptr pointer {.importc: "QAbstractVideoBuffer_vdata".}
proc fvdata_cQAbstractVideoBuffer(self: pointer): pointer {.importc: "vdata_QAbstractVideoBuffer".}

type cQAbstractVideoBufferVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  release*: proc(self: pointer): void {.cdecl, raises: [], gcsafe.}
  mapMode*: proc(self: pointer): cint {.cdecl, raises: [], gcsafe.}
  map*: proc(self: pointer, mode: cint, numBytes: ptr cint, bytesPerLine: ptr cint): ptr uint8 {.cdecl, raises: [], gcsafe.}
  unmap*: proc(self: pointer): void {.cdecl, raises: [], gcsafe.}
  handle*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
proc fcQAbstractVideoBuffer_virtualbase_release(self: pointer): void {.importc: "QAbstractVideoBuffer_virtualbase_release".}
proc fcQAbstractVideoBuffer_virtualbase_handle(self: pointer): pointer {.importc: "QAbstractVideoBuffer_virtualbase_handle".}
proc fcQAbstractVideoBuffer_new(vtbl: pointer, vdata: csize_t, typeVal: cint): ptr cQAbstractVideoBuffer {.importc: "QAbstractVideoBuffer_new".}
proc fcQAbstractPlanarVideoBuffer_mapModeNumBytesBytesPerLine(self: pointer, mode: cint, numBytes: ptr cint, bytesPerLine: ptr cint): ptr uint8 {.importc: "QAbstractPlanarVideoBuffer_map_mode_numBytes_bytesPerLine".}

proc release*(self: gen_qabstractvideobuffer_types.QAbstractVideoBuffer): void =
  fcQAbstractVideoBuffer_release(self.h)

proc handleType*(self: gen_qabstractvideobuffer_types.QAbstractVideoBuffer): cint =
  cint(fcQAbstractVideoBuffer_handleType(self.h))

proc mapMode*(self: gen_qabstractvideobuffer_types.QAbstractVideoBuffer): cint =
  cint(fcQAbstractVideoBuffer_mapMode(self.h))

proc map*(self: gen_qabstractvideobuffer_types.QAbstractVideoBuffer, mode: cint, numBytes: ptr cint, bytesPerLine: ptr cint): ptr uint8 =
  fcQAbstractVideoBuffer_map(self.h, cint(mode), numBytes, bytesPerLine)

proc unmap*(self: gen_qabstractvideobuffer_types.QAbstractVideoBuffer): void =
  fcQAbstractVideoBuffer_unmap(self.h)

proc handle*(self: gen_qabstractvideobuffer_types.QAbstractVideoBuffer): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQAbstractVideoBuffer_handle(self.h), owned: true)

type QAbstractVideoBufferreleaseProc* = proc(self: QAbstractVideoBuffer): void {.raises: [], gcsafe.}
type QAbstractVideoBuffermapModeProc* = proc(self: QAbstractVideoBuffer): cint {.raises: [], gcsafe.}
type QAbstractVideoBuffermapProc* = proc(self: QAbstractVideoBuffer, mode: cint, numBytes: ptr cint, bytesPerLine: ptr cint): ptr uint8 {.raises: [], gcsafe.}
type QAbstractVideoBufferunmapProc* = proc(self: QAbstractVideoBuffer): void {.raises: [], gcsafe.}
type QAbstractVideoBufferhandleProc* = proc(self: QAbstractVideoBuffer): gen_qvariant_types.QVariant {.raises: [], gcsafe.}

type QAbstractVideoBufferVTable* {.inheritable, pure.} = object
  vtbl: cQAbstractVideoBufferVTable
  release*: QAbstractVideoBufferreleaseProc
  mapMode*: QAbstractVideoBuffermapModeProc
  map*: QAbstractVideoBuffermapProc
  unmap*: QAbstractVideoBufferunmapProc
  handle*: QAbstractVideoBufferhandleProc

proc QAbstractVideoBufferrelease*(self: gen_qabstractvideobuffer_types.QAbstractVideoBuffer): void =
  fcQAbstractVideoBuffer_virtualbase_release(self.h)

proc QAbstractVideoBufferhandle*(self: gen_qabstractvideobuffer_types.QAbstractVideoBuffer): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQAbstractVideoBuffer_virtualbase_handle(self.h), owned: true)


proc fcQAbstractVideoBuffer_vtable_callback_release(self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractVideoBufferVTable](fcQAbstractVideoBuffer_vdata(self)[])
  let self = QAbstractVideoBuffer(h: self)
  vtbl[].release(self)

proc fcQAbstractVideoBuffer_vtable_callback_mapMode(self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QAbstractVideoBufferVTable](fcQAbstractVideoBuffer_vdata(self)[])
  let self = QAbstractVideoBuffer(h: self)
  var virtualReturn = vtbl[].mapMode(self)
  cint(virtualReturn)

proc fcQAbstractVideoBuffer_vtable_callback_map(self: pointer, mode: cint, numBytes: ptr cint, bytesPerLine: ptr cint): ptr uint8 {.cdecl.} =
  let vtbl = cast[ptr QAbstractVideoBufferVTable](fcQAbstractVideoBuffer_vdata(self)[])
  let self = QAbstractVideoBuffer(h: self)
  let slotval1 = cint(mode)
  let slotval2 = numBytes
  let slotval3 = bytesPerLine
  var virtualReturn = vtbl[].map(self, slotval1, slotval2, slotval3)
  virtualReturn

proc fcQAbstractVideoBuffer_vtable_callback_unmap(self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractVideoBufferVTable](fcQAbstractVideoBuffer_vdata(self)[])
  let self = QAbstractVideoBuffer(h: self)
  vtbl[].unmap(self)

proc fcQAbstractVideoBuffer_vtable_callback_handle(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QAbstractVideoBufferVTable](fcQAbstractVideoBuffer_vdata(self)[])
  let self = QAbstractVideoBuffer(h: self)
  var virtualReturn = vtbl[].handle(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

type VirtualQAbstractVideoBuffer* {.inheritable.} = ref object of QAbstractVideoBuffer
  vtbl*: cQAbstractVideoBufferVTable

method release*(self: VirtualQAbstractVideoBuffer): void {.base.} =
  QAbstractVideoBufferrelease(self[])
method mapMode*(self: VirtualQAbstractVideoBuffer): cint {.base.} =
  raiseAssert("missing implementation of QAbstractVideoBuffer.mapMode")
method map*(self: VirtualQAbstractVideoBuffer, mode: cint, numBytes: ptr cint, bytesPerLine: ptr cint): ptr uint8 {.base.} =
  raiseAssert("missing implementation of QAbstractVideoBuffer.map")
method unmap*(self: VirtualQAbstractVideoBuffer): void {.base.} =
  raiseAssert("missing implementation of QAbstractVideoBuffer.unmap")
method handle*(self: VirtualQAbstractVideoBuffer): gen_qvariant_types.QVariant {.base.} =
  QAbstractVideoBufferhandle(self[])

proc fcQAbstractVideoBuffer_method_callback_release(self: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractVideoBuffer](fcQAbstractVideoBuffer_vdata(self)[])
  inst.release()

proc fcQAbstractVideoBuffer_method_callback_mapMode(self: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQAbstractVideoBuffer](fcQAbstractVideoBuffer_vdata(self)[])
  var virtualReturn = inst.mapMode()
  cint(virtualReturn)

proc fcQAbstractVideoBuffer_method_callback_map(self: pointer, mode: cint, numBytes: ptr cint, bytesPerLine: ptr cint): ptr uint8 {.cdecl.} =
  let inst = cast[VirtualQAbstractVideoBuffer](fcQAbstractVideoBuffer_vdata(self)[])
  let slotval1 = cint(mode)
  let slotval2 = numBytes
  let slotval3 = bytesPerLine
  var virtualReturn = inst.map(slotval1, slotval2, slotval3)
  virtualReturn

proc fcQAbstractVideoBuffer_method_callback_unmap(self: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractVideoBuffer](fcQAbstractVideoBuffer_vdata(self)[])
  inst.unmap()

proc fcQAbstractVideoBuffer_method_callback_handle(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQAbstractVideoBuffer](fcQAbstractVideoBuffer_vdata(self)[])
  var virtualReturn = inst.handle()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h


proc create*(T: type gen_qabstractvideobuffer_types.QAbstractVideoBuffer,
    typeVal: cint,
    vtbl: ref QAbstractVideoBufferVTable = nil): gen_qabstractvideobuffer_types.QAbstractVideoBuffer =
  let vtbl = if vtbl == nil: new QAbstractVideoBufferVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QAbstractVideoBufferVTable](fcQAbstractVideoBuffer_vdata(self)[])
    GC_unref(vtbl)
  if not isNil(vtbl[].release):
    vtbl[].vtbl.release = fcQAbstractVideoBuffer_vtable_callback_release
  if not isNil(vtbl[].mapMode):
    vtbl[].vtbl.mapMode = fcQAbstractVideoBuffer_vtable_callback_mapMode
  if not isNil(vtbl[].map):
    vtbl[].vtbl.map = fcQAbstractVideoBuffer_vtable_callback_map
  if not isNil(vtbl[].unmap):
    vtbl[].vtbl.unmap = fcQAbstractVideoBuffer_vtable_callback_unmap
  if not isNil(vtbl[].handle):
    vtbl[].vtbl.handle = fcQAbstractVideoBuffer_vtable_callback_handle
  let tmp = gen_qabstractvideobuffer_types.QAbstractVideoBuffer(h: fcQAbstractVideoBuffer_new(addr(vtbl[].vtbl), csize_t(sizeof(pointer)), cint(typeVal)), owned: true)
  fcQAbstractVideoBuffer_vdata(tmp.h)[] = addr(vtbl[])
  tmp
const cQAbstractVideoBuffer_mvtbl = cQAbstractVideoBufferVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQAbstractVideoBuffer()[])](self.fcQAbstractVideoBuffer_vdata()[])
    inst[].h = nil
    inst[].owned = false,

  release: fcQAbstractVideoBuffer_method_callback_release,
  mapMode: fcQAbstractVideoBuffer_method_callback_mapMode,
  map: fcQAbstractVideoBuffer_method_callback_map,
  unmap: fcQAbstractVideoBuffer_method_callback_unmap,
  handle: fcQAbstractVideoBuffer_method_callback_handle,
)
proc create*(T: type gen_qabstractvideobuffer_types.QAbstractVideoBuffer,
    typeVal: cint,
    inst: VirtualQAbstractVideoBuffer) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQAbstractVideoBuffer_new(addr(cQAbstractVideoBuffer_mvtbl), csize_t(sizeof(pointer)), cint(typeVal))
  fcQAbstractVideoBuffer_vdata(inst[].h)[] = addr inst[]
  inst[].owned = true

proc map*(self: gen_qabstractvideobuffer_types.QAbstractPlanarVideoBuffer, mode: cint, numBytes: ptr cint, bytesPerLine: ptr cint): ptr uint8 =
  fcQAbstractPlanarVideoBuffer_mapModeNumBytesBytesPerLine(self.h, cint(mode), numBytes, bytesPerLine)

