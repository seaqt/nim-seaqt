import ./Qt5Multimedia_libs

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

proc fcQAbstractVideoBuffer_new(typeVal: cint): ptr cQAbstractVideoBuffer {.importc: "QAbstractVideoBuffer_new".}
proc fcQAbstractVideoBuffer_release(self: pointer, ): void {.importc: "QAbstractVideoBuffer_release".}
proc fcQAbstractVideoBuffer_handleType(self: pointer, ): cint {.importc: "QAbstractVideoBuffer_handleType".}
proc fcQAbstractVideoBuffer_mapMode(self: pointer, ): cint {.importc: "QAbstractVideoBuffer_mapMode".}
proc fcQAbstractVideoBuffer_map(self: pointer, mode: cint, numBytes: ptr cint, bytesPerLine: ptr cint): ptr uint8 {.importc: "QAbstractVideoBuffer_map".}
proc fcQAbstractVideoBuffer_unmap(self: pointer, ): void {.importc: "QAbstractVideoBuffer_unmap".}
proc fcQAbstractVideoBuffer_handle(self: pointer, ): pointer {.importc: "QAbstractVideoBuffer_handle".}
proc fQAbstractVideoBuffer_virtualbase_release(self: pointer, ): void{.importc: "QAbstractVideoBuffer_virtualbase_release".}
proc fcQAbstractVideoBuffer_override_virtual_release(self: pointer, slot: int) {.importc: "QAbstractVideoBuffer_override_virtual_release".}
proc fcQAbstractVideoBuffer_override_virtual_mapMode(self: pointer, slot: int) {.importc: "QAbstractVideoBuffer_override_virtual_mapMode".}
proc fcQAbstractVideoBuffer_override_virtual_map(self: pointer, slot: int) {.importc: "QAbstractVideoBuffer_override_virtual_map".}
proc fcQAbstractVideoBuffer_override_virtual_unmap(self: pointer, slot: int) {.importc: "QAbstractVideoBuffer_override_virtual_unmap".}
proc fQAbstractVideoBuffer_virtualbase_handle(self: pointer, ): pointer{.importc: "QAbstractVideoBuffer_virtualbase_handle".}
proc fcQAbstractVideoBuffer_override_virtual_handle(self: pointer, slot: int) {.importc: "QAbstractVideoBuffer_override_virtual_handle".}
proc fcQAbstractVideoBuffer_delete(self: pointer) {.importc: "QAbstractVideoBuffer_delete".}
proc fcQAbstractPlanarVideoBuffer_new(typeVal: cint): ptr cQAbstractPlanarVideoBuffer {.importc: "QAbstractPlanarVideoBuffer_new".}
proc fcQAbstractPlanarVideoBuffer_map(self: pointer, mode: cint, numBytes: ptr cint, bytesPerLine: ptr cint): ptr uint8 {.importc: "QAbstractPlanarVideoBuffer_map".}
proc fQAbstractPlanarVideoBuffer_virtualbase_map(self: pointer, mode: cint, numBytes: ptr cint, bytesPerLine: ptr cint): ptr uint8{.importc: "QAbstractPlanarVideoBuffer_virtualbase_map".}
proc fcQAbstractPlanarVideoBuffer_override_virtual_map(self: pointer, slot: int) {.importc: "QAbstractPlanarVideoBuffer_override_virtual_map".}
proc fQAbstractPlanarVideoBuffer_virtualbase_release(self: pointer, ): void{.importc: "QAbstractPlanarVideoBuffer_virtualbase_release".}
proc fcQAbstractPlanarVideoBuffer_override_virtual_release(self: pointer, slot: int) {.importc: "QAbstractPlanarVideoBuffer_override_virtual_release".}
proc fcQAbstractPlanarVideoBuffer_override_virtual_mapMode(self: pointer, slot: int) {.importc: "QAbstractPlanarVideoBuffer_override_virtual_mapMode".}
proc fcQAbstractPlanarVideoBuffer_override_virtual_unmap(self: pointer, slot: int) {.importc: "QAbstractPlanarVideoBuffer_override_virtual_unmap".}
proc fQAbstractPlanarVideoBuffer_virtualbase_handle(self: pointer, ): pointer{.importc: "QAbstractPlanarVideoBuffer_virtualbase_handle".}
proc fcQAbstractPlanarVideoBuffer_override_virtual_handle(self: pointer, slot: int) {.importc: "QAbstractPlanarVideoBuffer_override_virtual_handle".}
proc fcQAbstractPlanarVideoBuffer_delete(self: pointer) {.importc: "QAbstractPlanarVideoBuffer_delete".}


func init*(T: type gen_qabstractvideobuffer_types.QAbstractVideoBuffer, h: ptr cQAbstractVideoBuffer): gen_qabstractvideobuffer_types.QAbstractVideoBuffer =
  T(h: h)
proc create*(T: type gen_qabstractvideobuffer_types.QAbstractVideoBuffer, typeVal: cint): gen_qabstractvideobuffer_types.QAbstractVideoBuffer =
  gen_qabstractvideobuffer_types.QAbstractVideoBuffer.init(fcQAbstractVideoBuffer_new(cint(typeVal)))

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

proc QAbstractVideoBufferrelease*(self: gen_qabstractvideobuffer_types.QAbstractVideoBuffer, ): void =
  fQAbstractVideoBuffer_virtualbase_release(self.h)

type QAbstractVideoBufferreleaseProc* = proc(): void
proc onrelease*(self: gen_qabstractvideobuffer_types.QAbstractVideoBuffer, slot: QAbstractVideoBufferreleaseProc) =
  # TODO check subclass
  var tmp = new QAbstractVideoBufferreleaseProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractVideoBuffer_override_virtual_release(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractVideoBuffer_release(self: ptr cQAbstractVideoBuffer, slot: int): void {.exportc: "miqt_exec_callback_QAbstractVideoBuffer_release ".} =
  var nimfunc = cast[ptr QAbstractVideoBufferreleaseProc](cast[pointer](slot))

  nimfunc[]()
type QAbstractVideoBuffermapModeProc* = proc(): cint
proc onmapMode*(self: gen_qabstractvideobuffer_types.QAbstractVideoBuffer, slot: QAbstractVideoBuffermapModeProc) =
  # TODO check subclass
  var tmp = new QAbstractVideoBuffermapModeProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractVideoBuffer_override_virtual_mapMode(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractVideoBuffer_mapMode(self: ptr cQAbstractVideoBuffer, slot: int): cint {.exportc: "miqt_exec_callback_QAbstractVideoBuffer_mapMode ".} =
  var nimfunc = cast[ptr QAbstractVideoBuffermapModeProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  cint(virtualReturn)
type QAbstractVideoBuffermapProc* = proc(mode: cint, numBytes: ptr cint, bytesPerLine: ptr cint): ptr uint8
proc onmap*(self: gen_qabstractvideobuffer_types.QAbstractVideoBuffer, slot: QAbstractVideoBuffermapProc) =
  # TODO check subclass
  var tmp = new QAbstractVideoBuffermapProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractVideoBuffer_override_virtual_map(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractVideoBuffer_map(self: ptr cQAbstractVideoBuffer, slot: int, mode: cint, numBytes: ptr cint, bytesPerLine: ptr cint): ptr uint8 {.exportc: "miqt_exec_callback_QAbstractVideoBuffer_map ".} =
  var nimfunc = cast[ptr QAbstractVideoBuffermapProc](cast[pointer](slot))
  let slotval1 = cint(mode)

  let slotval2 = numBytes

  let slotval3 = bytesPerLine


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
type QAbstractVideoBufferunmapProc* = proc(): void
proc onunmap*(self: gen_qabstractvideobuffer_types.QAbstractVideoBuffer, slot: QAbstractVideoBufferunmapProc) =
  # TODO check subclass
  var tmp = new QAbstractVideoBufferunmapProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractVideoBuffer_override_virtual_unmap(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractVideoBuffer_unmap(self: ptr cQAbstractVideoBuffer, slot: int): void {.exportc: "miqt_exec_callback_QAbstractVideoBuffer_unmap ".} =
  var nimfunc = cast[ptr QAbstractVideoBufferunmapProc](cast[pointer](slot))

  nimfunc[]()
proc QAbstractVideoBufferhandle*(self: gen_qabstractvideobuffer_types.QAbstractVideoBuffer, ): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fQAbstractVideoBuffer_virtualbase_handle(self.h))

type QAbstractVideoBufferhandleProc* = proc(): gen_qvariant_types.QVariant
proc onhandle*(self: gen_qabstractvideobuffer_types.QAbstractVideoBuffer, slot: QAbstractVideoBufferhandleProc) =
  # TODO check subclass
  var tmp = new QAbstractVideoBufferhandleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractVideoBuffer_override_virtual_handle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractVideoBuffer_handle(self: ptr cQAbstractVideoBuffer, slot: int): pointer {.exportc: "miqt_exec_callback_QAbstractVideoBuffer_handle ".} =
  var nimfunc = cast[ptr QAbstractVideoBufferhandleProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc delete*(self: gen_qabstractvideobuffer_types.QAbstractVideoBuffer) =
  fcQAbstractVideoBuffer_delete(self.h)

func init*(T: type gen_qabstractvideobuffer_types.QAbstractPlanarVideoBuffer, h: ptr cQAbstractPlanarVideoBuffer): gen_qabstractvideobuffer_types.QAbstractPlanarVideoBuffer =
  T(h: h)
proc create*(T: type gen_qabstractvideobuffer_types.QAbstractPlanarVideoBuffer, typeVal: cint): gen_qabstractvideobuffer_types.QAbstractPlanarVideoBuffer =
  gen_qabstractvideobuffer_types.QAbstractPlanarVideoBuffer.init(fcQAbstractPlanarVideoBuffer_new(cint(typeVal)))

proc map*(self: gen_qabstractvideobuffer_types.QAbstractPlanarVideoBuffer, mode: cint, numBytes: ptr cint, bytesPerLine: ptr cint): ptr uint8 =
  fcQAbstractPlanarVideoBuffer_map(self.h, cint(mode), numBytes, bytesPerLine)

proc QAbstractPlanarVideoBuffermap*(self: gen_qabstractvideobuffer_types.QAbstractPlanarVideoBuffer, mode: cint, numBytes: ptr cint, bytesPerLine: ptr cint): ptr uint8 =
  fQAbstractPlanarVideoBuffer_virtualbase_map(self.h, cint(mode), numBytes, bytesPerLine)

type QAbstractPlanarVideoBuffermapProc* = proc(mode: cint, numBytes: ptr cint, bytesPerLine: ptr cint): ptr uint8
proc onmap*(self: gen_qabstractvideobuffer_types.QAbstractPlanarVideoBuffer, slot: QAbstractPlanarVideoBuffermapProc) =
  # TODO check subclass
  var tmp = new QAbstractPlanarVideoBuffermapProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractPlanarVideoBuffer_override_virtual_map(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractPlanarVideoBuffer_map(self: ptr cQAbstractPlanarVideoBuffer, slot: int, mode: cint, numBytes: ptr cint, bytesPerLine: ptr cint): ptr uint8 {.exportc: "miqt_exec_callback_QAbstractPlanarVideoBuffer_map ".} =
  var nimfunc = cast[ptr QAbstractPlanarVideoBuffermapProc](cast[pointer](slot))
  let slotval1 = cint(mode)

  let slotval2 = numBytes

  let slotval3 = bytesPerLine


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QAbstractPlanarVideoBufferrelease*(self: gen_qabstractvideobuffer_types.QAbstractPlanarVideoBuffer, ): void =
  fQAbstractPlanarVideoBuffer_virtualbase_release(self.h)

type QAbstractPlanarVideoBufferreleaseProc* = proc(): void
proc onrelease*(self: gen_qabstractvideobuffer_types.QAbstractPlanarVideoBuffer, slot: QAbstractPlanarVideoBufferreleaseProc) =
  # TODO check subclass
  var tmp = new QAbstractPlanarVideoBufferreleaseProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractPlanarVideoBuffer_override_virtual_release(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractPlanarVideoBuffer_release(self: ptr cQAbstractPlanarVideoBuffer, slot: int): void {.exportc: "miqt_exec_callback_QAbstractPlanarVideoBuffer_release ".} =
  var nimfunc = cast[ptr QAbstractPlanarVideoBufferreleaseProc](cast[pointer](slot))

  nimfunc[]()
type QAbstractPlanarVideoBuffermapModeProc* = proc(): cint
proc onmapMode*(self: gen_qabstractvideobuffer_types.QAbstractPlanarVideoBuffer, slot: QAbstractPlanarVideoBuffermapModeProc) =
  # TODO check subclass
  var tmp = new QAbstractPlanarVideoBuffermapModeProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractPlanarVideoBuffer_override_virtual_mapMode(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractPlanarVideoBuffer_mapMode(self: ptr cQAbstractPlanarVideoBuffer, slot: int): cint {.exportc: "miqt_exec_callback_QAbstractPlanarVideoBuffer_mapMode ".} =
  var nimfunc = cast[ptr QAbstractPlanarVideoBuffermapModeProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  cint(virtualReturn)
type QAbstractPlanarVideoBufferunmapProc* = proc(): void
proc onunmap*(self: gen_qabstractvideobuffer_types.QAbstractPlanarVideoBuffer, slot: QAbstractPlanarVideoBufferunmapProc) =
  # TODO check subclass
  var tmp = new QAbstractPlanarVideoBufferunmapProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractPlanarVideoBuffer_override_virtual_unmap(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractPlanarVideoBuffer_unmap(self: ptr cQAbstractPlanarVideoBuffer, slot: int): void {.exportc: "miqt_exec_callback_QAbstractPlanarVideoBuffer_unmap ".} =
  var nimfunc = cast[ptr QAbstractPlanarVideoBufferunmapProc](cast[pointer](slot))

  nimfunc[]()
proc QAbstractPlanarVideoBufferhandle*(self: gen_qabstractvideobuffer_types.QAbstractPlanarVideoBuffer, ): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fQAbstractPlanarVideoBuffer_virtualbase_handle(self.h))

type QAbstractPlanarVideoBufferhandleProc* = proc(): gen_qvariant_types.QVariant
proc onhandle*(self: gen_qabstractvideobuffer_types.QAbstractPlanarVideoBuffer, slot: QAbstractPlanarVideoBufferhandleProc) =
  # TODO check subclass
  var tmp = new QAbstractPlanarVideoBufferhandleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractPlanarVideoBuffer_override_virtual_handle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractPlanarVideoBuffer_handle(self: ptr cQAbstractPlanarVideoBuffer, slot: int): pointer {.exportc: "miqt_exec_callback_QAbstractPlanarVideoBuffer_handle ".} =
  var nimfunc = cast[ptr QAbstractPlanarVideoBufferhandleProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc delete*(self: gen_qabstractvideobuffer_types.QAbstractPlanarVideoBuffer) =
  fcQAbstractPlanarVideoBuffer_delete(self.h)
