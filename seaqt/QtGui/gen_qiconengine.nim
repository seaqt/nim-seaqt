import ./Qt6Gui_libs

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

const cflags = gorge("pkg-config --cflags Qt6Gui")  & " -fPIC"
{.compile("gen_qiconengine.cpp", cflags).}


type QIconEngineIconEngineHookEnum* = distinct cint
template IsNullHook*(_: type QIconEngineIconEngineHookEnum): untyped = 3
template ScaledPixmapHook*(_: type QIconEngineIconEngineHookEnum): untyped = 4


import ./gen_qiconengine_types
export gen_qiconengine_types

import
  ../QtCore/gen_qdatastream_types,
  ../QtCore/gen_qrect_types,
  ../QtCore/gen_qsize_types,
  ./gen_qpainter_types,
  ./gen_qpixmap_types
export
  gen_qdatastream_types,
  gen_qrect_types,
  gen_qsize_types,
  gen_qpainter_types,
  gen_qpixmap_types

type cQIconEngine*{.exportc: "QIconEngine", incompleteStruct.} = object
type cQIconEngineScaledPixmapArgument*{.exportc: "QIconEngine__ScaledPixmapArgument", incompleteStruct.} = object

proc fcQIconEngine_new(): ptr cQIconEngine {.importc: "QIconEngine_new".}
proc fcQIconEngine_paint(self: pointer, painter: pointer, rect: pointer, mode: cint, state: cint): void {.importc: "QIconEngine_paint".}
proc fcQIconEngine_actualSize(self: pointer, size: pointer, mode: cint, state: cint): pointer {.importc: "QIconEngine_actualSize".}
proc fcQIconEngine_pixmap(self: pointer, size: pointer, mode: cint, state: cint): pointer {.importc: "QIconEngine_pixmap".}
proc fcQIconEngine_addPixmap(self: pointer, pixmap: pointer, mode: cint, state: cint): void {.importc: "QIconEngine_addPixmap".}
proc fcQIconEngine_addFile(self: pointer, fileName: struct_miqt_string, size: pointer, mode: cint, state: cint): void {.importc: "QIconEngine_addFile".}
proc fcQIconEngine_key(self: pointer, ): struct_miqt_string {.importc: "QIconEngine_key".}
proc fcQIconEngine_clone(self: pointer, ): pointer {.importc: "QIconEngine_clone".}
proc fcQIconEngine_read(self: pointer, inVal: pointer): bool {.importc: "QIconEngine_read".}
proc fcQIconEngine_write(self: pointer, outVal: pointer): bool {.importc: "QIconEngine_write".}
proc fcQIconEngine_availableSizes(self: pointer, mode: cint, state: cint): struct_miqt_array {.importc: "QIconEngine_availableSizes".}
proc fcQIconEngine_iconName(self: pointer, ): struct_miqt_string {.importc: "QIconEngine_iconName".}
proc fcQIconEngine_isNull(self: pointer, ): bool {.importc: "QIconEngine_isNull".}
proc fcQIconEngine_scaledPixmap(self: pointer, size: pointer, mode: cint, state: cint, scale: float64): pointer {.importc: "QIconEngine_scaledPixmap".}
proc fcQIconEngine_virtualHook(self: pointer, id: cint, data: pointer): void {.importc: "QIconEngine_virtualHook".}
proc fcQIconEngine_override_virtual_paint(self: pointer, slot: int) {.importc: "QIconEngine_override_virtual_paint".}
proc fQIconEngine_virtualbase_actualSize(self: pointer, size: pointer, mode: cint, state: cint): pointer{.importc: "QIconEngine_virtualbase_actualSize".}
proc fcQIconEngine_override_virtual_actualSize(self: pointer, slot: int) {.importc: "QIconEngine_override_virtual_actualSize".}
proc fQIconEngine_virtualbase_pixmap(self: pointer, size: pointer, mode: cint, state: cint): pointer{.importc: "QIconEngine_virtualbase_pixmap".}
proc fcQIconEngine_override_virtual_pixmap(self: pointer, slot: int) {.importc: "QIconEngine_override_virtual_pixmap".}
proc fQIconEngine_virtualbase_addPixmap(self: pointer, pixmap: pointer, mode: cint, state: cint): void{.importc: "QIconEngine_virtualbase_addPixmap".}
proc fcQIconEngine_override_virtual_addPixmap(self: pointer, slot: int) {.importc: "QIconEngine_override_virtual_addPixmap".}
proc fQIconEngine_virtualbase_addFile(self: pointer, fileName: struct_miqt_string, size: pointer, mode: cint, state: cint): void{.importc: "QIconEngine_virtualbase_addFile".}
proc fcQIconEngine_override_virtual_addFile(self: pointer, slot: int) {.importc: "QIconEngine_override_virtual_addFile".}
proc fQIconEngine_virtualbase_key(self: pointer, ): struct_miqt_string{.importc: "QIconEngine_virtualbase_key".}
proc fcQIconEngine_override_virtual_key(self: pointer, slot: int) {.importc: "QIconEngine_override_virtual_key".}
proc fcQIconEngine_override_virtual_clone(self: pointer, slot: int) {.importc: "QIconEngine_override_virtual_clone".}
proc fQIconEngine_virtualbase_read(self: pointer, inVal: pointer): bool{.importc: "QIconEngine_virtualbase_read".}
proc fcQIconEngine_override_virtual_read(self: pointer, slot: int) {.importc: "QIconEngine_override_virtual_read".}
proc fQIconEngine_virtualbase_write(self: pointer, outVal: pointer): bool{.importc: "QIconEngine_virtualbase_write".}
proc fcQIconEngine_override_virtual_write(self: pointer, slot: int) {.importc: "QIconEngine_override_virtual_write".}
proc fQIconEngine_virtualbase_availableSizes(self: pointer, mode: cint, state: cint): struct_miqt_array{.importc: "QIconEngine_virtualbase_availableSizes".}
proc fcQIconEngine_override_virtual_availableSizes(self: pointer, slot: int) {.importc: "QIconEngine_override_virtual_availableSizes".}
proc fQIconEngine_virtualbase_iconName(self: pointer, ): struct_miqt_string{.importc: "QIconEngine_virtualbase_iconName".}
proc fcQIconEngine_override_virtual_iconName(self: pointer, slot: int) {.importc: "QIconEngine_override_virtual_iconName".}
proc fQIconEngine_virtualbase_isNull(self: pointer, ): bool{.importc: "QIconEngine_virtualbase_isNull".}
proc fcQIconEngine_override_virtual_isNull(self: pointer, slot: int) {.importc: "QIconEngine_override_virtual_isNull".}
proc fQIconEngine_virtualbase_scaledPixmap(self: pointer, size: pointer, mode: cint, state: cint, scale: float64): pointer{.importc: "QIconEngine_virtualbase_scaledPixmap".}
proc fcQIconEngine_override_virtual_scaledPixmap(self: pointer, slot: int) {.importc: "QIconEngine_override_virtual_scaledPixmap".}
proc fQIconEngine_virtualbase_virtualHook(self: pointer, id: cint, data: pointer): void{.importc: "QIconEngine_virtualbase_virtualHook".}
proc fcQIconEngine_override_virtual_virtualHook(self: pointer, slot: int) {.importc: "QIconEngine_override_virtual_virtualHook".}
proc fcQIconEngine_delete(self: pointer) {.importc: "QIconEngine_delete".}
proc fcQIconEngineScaledPixmapArgument_new(param1: pointer): ptr cQIconEngineScaledPixmapArgument {.importc: "QIconEngine__ScaledPixmapArgument_new".}
proc fcQIconEngineScaledPixmapArgument_operatorAssign(self: pointer, param1: pointer): void {.importc: "QIconEngine__ScaledPixmapArgument_operatorAssign".}
proc fcQIconEngineScaledPixmapArgument_delete(self: pointer) {.importc: "QIconEngine__ScaledPixmapArgument_delete".}


func init*(T: type gen_qiconengine_types.QIconEngine, h: ptr cQIconEngine): gen_qiconengine_types.QIconEngine =
  T(h: h)
proc create*(T: type gen_qiconengine_types.QIconEngine, ): gen_qiconengine_types.QIconEngine =
  gen_qiconengine_types.QIconEngine.init(fcQIconEngine_new())

proc paint*(self: gen_qiconengine_types.QIconEngine, painter: gen_qpainter_types.QPainter, rect: gen_qrect_types.QRect, mode: cint, state: cint): void =
  fcQIconEngine_paint(self.h, painter.h, rect.h, cint(mode), cint(state))

proc actualSize*(self: gen_qiconengine_types.QIconEngine, size: gen_qsize_types.QSize, mode: cint, state: cint): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQIconEngine_actualSize(self.h, size.h, cint(mode), cint(state)))

proc pixmap*(self: gen_qiconengine_types.QIconEngine, size: gen_qsize_types.QSize, mode: cint, state: cint): gen_qpixmap_types.QPixmap =
  gen_qpixmap_types.QPixmap(h: fcQIconEngine_pixmap(self.h, size.h, cint(mode), cint(state)))

proc addPixmap*(self: gen_qiconengine_types.QIconEngine, pixmap: gen_qpixmap_types.QPixmap, mode: cint, state: cint): void =
  fcQIconEngine_addPixmap(self.h, pixmap.h, cint(mode), cint(state))

proc addFile*(self: gen_qiconengine_types.QIconEngine, fileName: string, size: gen_qsize_types.QSize, mode: cint, state: cint): void =
  fcQIconEngine_addFile(self.h, struct_miqt_string(data: fileName, len: csize_t(len(fileName))), size.h, cint(mode), cint(state))

proc key*(self: gen_qiconengine_types.QIconEngine, ): string =
  let v_ms = fcQIconEngine_key(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc clone*(self: gen_qiconengine_types.QIconEngine, ): gen_qiconengine_types.QIconEngine =
  gen_qiconengine_types.QIconEngine(h: fcQIconEngine_clone(self.h))

proc read*(self: gen_qiconengine_types.QIconEngine, inVal: gen_qdatastream_types.QDataStream): bool =
  fcQIconEngine_read(self.h, inVal.h)

proc write*(self: gen_qiconengine_types.QIconEngine, outVal: gen_qdatastream_types.QDataStream): bool =
  fcQIconEngine_write(self.h, outVal.h)

proc availableSizes*(self: gen_qiconengine_types.QIconEngine, mode: cint, state: cint): seq[gen_qsize_types.QSize] =
  var v_ma = fcQIconEngine_availableSizes(self.h, cint(mode), cint(state))
  var vx_ret = newSeq[gen_qsize_types.QSize](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qsize_types.QSize(h: v_outCast[i])
  vx_ret

proc iconName*(self: gen_qiconengine_types.QIconEngine, ): string =
  let v_ms = fcQIconEngine_iconName(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc isNull*(self: gen_qiconengine_types.QIconEngine, ): bool =
  fcQIconEngine_isNull(self.h)

proc scaledPixmap*(self: gen_qiconengine_types.QIconEngine, size: gen_qsize_types.QSize, mode: cint, state: cint, scale: float64): gen_qpixmap_types.QPixmap =
  gen_qpixmap_types.QPixmap(h: fcQIconEngine_scaledPixmap(self.h, size.h, cint(mode), cint(state), scale))

proc virtualHook*(self: gen_qiconengine_types.QIconEngine, id: cint, data: pointer): void =
  fcQIconEngine_virtualHook(self.h, id, data)

type QIconEnginepaintProc* = proc(painter: gen_qpainter_types.QPainter, rect: gen_qrect_types.QRect, mode: cint, state: cint): void
proc onpaint*(self: gen_qiconengine_types.QIconEngine, slot: QIconEnginepaintProc) =
  # TODO check subclass
  var tmp = new QIconEnginepaintProc
  tmp[] = slot
  GC_ref(tmp)
  fcQIconEngine_override_virtual_paint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QIconEngine_paint(self: ptr cQIconEngine, slot: int, painter: pointer, rect: pointer, mode: cint, state: cint): void {.exportc: "miqt_exec_callback_QIconEngine_paint ".} =
  var nimfunc = cast[ptr QIconEnginepaintProc](cast[pointer](slot))
  let slotval1 = gen_qpainter_types.QPainter(h: painter)

  let slotval2 = gen_qrect_types.QRect(h: rect)

  let slotval3 = cint(mode)

  let slotval4 = cint(state)


  nimfunc[](slotval1, slotval2, slotval3, slotval4)
proc QIconEngineactualSize*(self: gen_qiconengine_types.QIconEngine, size: gen_qsize_types.QSize, mode: cint, state: cint): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fQIconEngine_virtualbase_actualSize(self.h, size.h, cint(mode), cint(state)))

type QIconEngineactualSizeProc* = proc(size: gen_qsize_types.QSize, mode: cint, state: cint): gen_qsize_types.QSize
proc onactualSize*(self: gen_qiconengine_types.QIconEngine, slot: QIconEngineactualSizeProc) =
  # TODO check subclass
  var tmp = new QIconEngineactualSizeProc
  tmp[] = slot
  GC_ref(tmp)
  fcQIconEngine_override_virtual_actualSize(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QIconEngine_actualSize(self: ptr cQIconEngine, slot: int, size: pointer, mode: cint, state: cint): pointer {.exportc: "miqt_exec_callback_QIconEngine_actualSize ".} =
  var nimfunc = cast[ptr QIconEngineactualSizeProc](cast[pointer](slot))
  let slotval1 = gen_qsize_types.QSize(h: size)

  let slotval2 = cint(mode)

  let slotval3 = cint(state)


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn.h
proc QIconEnginepixmap*(self: gen_qiconengine_types.QIconEngine, size: gen_qsize_types.QSize, mode: cint, state: cint): gen_qpixmap_types.QPixmap =
  gen_qpixmap_types.QPixmap(h: fQIconEngine_virtualbase_pixmap(self.h, size.h, cint(mode), cint(state)))

type QIconEnginepixmapProc* = proc(size: gen_qsize_types.QSize, mode: cint, state: cint): gen_qpixmap_types.QPixmap
proc onpixmap*(self: gen_qiconengine_types.QIconEngine, slot: QIconEnginepixmapProc) =
  # TODO check subclass
  var tmp = new QIconEnginepixmapProc
  tmp[] = slot
  GC_ref(tmp)
  fcQIconEngine_override_virtual_pixmap(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QIconEngine_pixmap(self: ptr cQIconEngine, slot: int, size: pointer, mode: cint, state: cint): pointer {.exportc: "miqt_exec_callback_QIconEngine_pixmap ".} =
  var nimfunc = cast[ptr QIconEnginepixmapProc](cast[pointer](slot))
  let slotval1 = gen_qsize_types.QSize(h: size)

  let slotval2 = cint(mode)

  let slotval3 = cint(state)


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn.h
proc QIconEngineaddPixmap*(self: gen_qiconengine_types.QIconEngine, pixmap: gen_qpixmap_types.QPixmap, mode: cint, state: cint): void =
  fQIconEngine_virtualbase_addPixmap(self.h, pixmap.h, cint(mode), cint(state))

type QIconEngineaddPixmapProc* = proc(pixmap: gen_qpixmap_types.QPixmap, mode: cint, state: cint): void
proc onaddPixmap*(self: gen_qiconengine_types.QIconEngine, slot: QIconEngineaddPixmapProc) =
  # TODO check subclass
  var tmp = new QIconEngineaddPixmapProc
  tmp[] = slot
  GC_ref(tmp)
  fcQIconEngine_override_virtual_addPixmap(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QIconEngine_addPixmap(self: ptr cQIconEngine, slot: int, pixmap: pointer, mode: cint, state: cint): void {.exportc: "miqt_exec_callback_QIconEngine_addPixmap ".} =
  var nimfunc = cast[ptr QIconEngineaddPixmapProc](cast[pointer](slot))
  let slotval1 = gen_qpixmap_types.QPixmap(h: pixmap)

  let slotval2 = cint(mode)

  let slotval3 = cint(state)


  nimfunc[](slotval1, slotval2, slotval3)
proc QIconEngineaddFile*(self: gen_qiconengine_types.QIconEngine, fileName: string, size: gen_qsize_types.QSize, mode: cint, state: cint): void =
  fQIconEngine_virtualbase_addFile(self.h, struct_miqt_string(data: fileName, len: csize_t(len(fileName))), size.h, cint(mode), cint(state))

type QIconEngineaddFileProc* = proc(fileName: string, size: gen_qsize_types.QSize, mode: cint, state: cint): void
proc onaddFile*(self: gen_qiconengine_types.QIconEngine, slot: QIconEngineaddFileProc) =
  # TODO check subclass
  var tmp = new QIconEngineaddFileProc
  tmp[] = slot
  GC_ref(tmp)
  fcQIconEngine_override_virtual_addFile(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QIconEngine_addFile(self: ptr cQIconEngine, slot: int, fileName: struct_miqt_string, size: pointer, mode: cint, state: cint): void {.exportc: "miqt_exec_callback_QIconEngine_addFile ".} =
  var nimfunc = cast[ptr QIconEngineaddFileProc](cast[pointer](slot))
  let vfileName_ms = fileName
  let vfileNamex_ret = string.fromBytes(toOpenArrayByte(vfileName_ms.data, 0, int(vfileName_ms.len)-1))
  c_free(vfileName_ms.data)
  let slotval1 = vfileNamex_ret

  let slotval2 = gen_qsize_types.QSize(h: size)

  let slotval3 = cint(mode)

  let slotval4 = cint(state)


  nimfunc[](slotval1, slotval2, slotval3, slotval4)
proc QIconEnginekey*(self: gen_qiconengine_types.QIconEngine, ): string =
  let v_ms = fQIconEngine_virtualbase_key(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

type QIconEnginekeyProc* = proc(): string
proc onkey*(self: gen_qiconengine_types.QIconEngine, slot: QIconEnginekeyProc) =
  # TODO check subclass
  var tmp = new QIconEnginekeyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQIconEngine_override_virtual_key(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QIconEngine_key(self: ptr cQIconEngine, slot: int): struct_miqt_string {.exportc: "miqt_exec_callback_QIconEngine_key ".} =
  var nimfunc = cast[ptr QIconEnginekeyProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  struct_miqt_string(data: virtualReturn, len: csize_t(len(virtualReturn)))
type QIconEnginecloneProc* = proc(): gen_qiconengine_types.QIconEngine
proc onclone*(self: gen_qiconengine_types.QIconEngine, slot: QIconEnginecloneProc) =
  # TODO check subclass
  var tmp = new QIconEnginecloneProc
  tmp[] = slot
  GC_ref(tmp)
  fcQIconEngine_override_virtual_clone(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QIconEngine_clone(self: ptr cQIconEngine, slot: int): pointer {.exportc: "miqt_exec_callback_QIconEngine_clone ".} =
  var nimfunc = cast[ptr QIconEnginecloneProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QIconEngineread*(self: gen_qiconengine_types.QIconEngine, inVal: gen_qdatastream_types.QDataStream): bool =
  fQIconEngine_virtualbase_read(self.h, inVal.h)

type QIconEnginereadProc* = proc(inVal: gen_qdatastream_types.QDataStream): bool
proc onread*(self: gen_qiconengine_types.QIconEngine, slot: QIconEnginereadProc) =
  # TODO check subclass
  var tmp = new QIconEnginereadProc
  tmp[] = slot
  GC_ref(tmp)
  fcQIconEngine_override_virtual_read(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QIconEngine_read(self: ptr cQIconEngine, slot: int, inVal: pointer): bool {.exportc: "miqt_exec_callback_QIconEngine_read ".} =
  var nimfunc = cast[ptr QIconEnginereadProc](cast[pointer](slot))
  let slotval1 = gen_qdatastream_types.QDataStream(h: inVal)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QIconEnginewrite*(self: gen_qiconengine_types.QIconEngine, outVal: gen_qdatastream_types.QDataStream): bool =
  fQIconEngine_virtualbase_write(self.h, outVal.h)

type QIconEnginewriteProc* = proc(outVal: gen_qdatastream_types.QDataStream): bool
proc onwrite*(self: gen_qiconengine_types.QIconEngine, slot: QIconEnginewriteProc) =
  # TODO check subclass
  var tmp = new QIconEnginewriteProc
  tmp[] = slot
  GC_ref(tmp)
  fcQIconEngine_override_virtual_write(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QIconEngine_write(self: ptr cQIconEngine, slot: int, outVal: pointer): bool {.exportc: "miqt_exec_callback_QIconEngine_write ".} =
  var nimfunc = cast[ptr QIconEnginewriteProc](cast[pointer](slot))
  let slotval1 = gen_qdatastream_types.QDataStream(h: outVal)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QIconEngineavailableSizes*(self: gen_qiconengine_types.QIconEngine, mode: cint, state: cint): seq[gen_qsize_types.QSize] =
  var v_ma = fQIconEngine_virtualbase_availableSizes(self.h, cint(mode), cint(state))
  var vx_ret = newSeq[gen_qsize_types.QSize](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qsize_types.QSize(h: v_outCast[i])
  vx_ret

type QIconEngineavailableSizesProc* = proc(mode: cint, state: cint): seq[gen_qsize_types.QSize]
proc onavailableSizes*(self: gen_qiconengine_types.QIconEngine, slot: QIconEngineavailableSizesProc) =
  # TODO check subclass
  var tmp = new QIconEngineavailableSizesProc
  tmp[] = slot
  GC_ref(tmp)
  fcQIconEngine_override_virtual_availableSizes(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QIconEngine_availableSizes(self: ptr cQIconEngine, slot: int, mode: cint, state: cint): struct_miqt_array {.exportc: "miqt_exec_callback_QIconEngine_availableSizes ".} =
  var nimfunc = cast[ptr QIconEngineavailableSizesProc](cast[pointer](slot))
  let slotval1 = cint(mode)

  let slotval2 = cint(state)


  let virtualReturn = nimfunc[](slotval1, slotval2 )
  var virtualReturn_CArray = newSeq[pointer](len(virtualReturn))
  for i in 0..<len(virtualReturn):
    virtualReturn_CArray[i] = virtualReturn[i].h


  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))
proc QIconEngineiconName*(self: gen_qiconengine_types.QIconEngine, ): string =
  let v_ms = fQIconEngine_virtualbase_iconName(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

type QIconEngineiconNameProc* = proc(): string
proc oniconName*(self: gen_qiconengine_types.QIconEngine, slot: QIconEngineiconNameProc) =
  # TODO check subclass
  var tmp = new QIconEngineiconNameProc
  tmp[] = slot
  GC_ref(tmp)
  fcQIconEngine_override_virtual_iconName(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QIconEngine_iconName(self: ptr cQIconEngine, slot: int): struct_miqt_string {.exportc: "miqt_exec_callback_QIconEngine_iconName ".} =
  var nimfunc = cast[ptr QIconEngineiconNameProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  struct_miqt_string(data: virtualReturn, len: csize_t(len(virtualReturn)))
proc QIconEngineisNull*(self: gen_qiconengine_types.QIconEngine, ): bool =
  fQIconEngine_virtualbase_isNull(self.h)

type QIconEngineisNullProc* = proc(): bool
proc onisNull*(self: gen_qiconengine_types.QIconEngine, slot: QIconEngineisNullProc) =
  # TODO check subclass
  var tmp = new QIconEngineisNullProc
  tmp[] = slot
  GC_ref(tmp)
  fcQIconEngine_override_virtual_isNull(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QIconEngine_isNull(self: ptr cQIconEngine, slot: int): bool {.exportc: "miqt_exec_callback_QIconEngine_isNull ".} =
  var nimfunc = cast[ptr QIconEngineisNullProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QIconEnginescaledPixmap*(self: gen_qiconengine_types.QIconEngine, size: gen_qsize_types.QSize, mode: cint, state: cint, scale: float64): gen_qpixmap_types.QPixmap =
  gen_qpixmap_types.QPixmap(h: fQIconEngine_virtualbase_scaledPixmap(self.h, size.h, cint(mode), cint(state), scale))

type QIconEnginescaledPixmapProc* = proc(size: gen_qsize_types.QSize, mode: cint, state: cint, scale: float64): gen_qpixmap_types.QPixmap
proc onscaledPixmap*(self: gen_qiconengine_types.QIconEngine, slot: QIconEnginescaledPixmapProc) =
  # TODO check subclass
  var tmp = new QIconEnginescaledPixmapProc
  tmp[] = slot
  GC_ref(tmp)
  fcQIconEngine_override_virtual_scaledPixmap(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QIconEngine_scaledPixmap(self: ptr cQIconEngine, slot: int, size: pointer, mode: cint, state: cint, scale: float64): pointer {.exportc: "miqt_exec_callback_QIconEngine_scaledPixmap ".} =
  var nimfunc = cast[ptr QIconEnginescaledPixmapProc](cast[pointer](slot))
  let slotval1 = gen_qsize_types.QSize(h: size)

  let slotval2 = cint(mode)

  let slotval3 = cint(state)

  let slotval4 = scale


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3, slotval4 )

  virtualReturn.h
proc QIconEnginevirtualHook*(self: gen_qiconengine_types.QIconEngine, id: cint, data: pointer): void =
  fQIconEngine_virtualbase_virtualHook(self.h, id, data)

type QIconEnginevirtualHookProc* = proc(id: cint, data: pointer): void
proc onvirtualHook*(self: gen_qiconengine_types.QIconEngine, slot: QIconEnginevirtualHookProc) =
  # TODO check subclass
  var tmp = new QIconEnginevirtualHookProc
  tmp[] = slot
  GC_ref(tmp)
  fcQIconEngine_override_virtual_virtualHook(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QIconEngine_virtualHook(self: ptr cQIconEngine, slot: int, id: cint, data: pointer): void {.exportc: "miqt_exec_callback_QIconEngine_virtualHook ".} =
  var nimfunc = cast[ptr QIconEnginevirtualHookProc](cast[pointer](slot))
  let slotval1 = id

  let slotval2 = data


  nimfunc[](slotval1, slotval2)
proc delete*(self: gen_qiconengine_types.QIconEngine) =
  fcQIconEngine_delete(self.h)

func init*(T: type gen_qiconengine_types.QIconEngineScaledPixmapArgument, h: ptr cQIconEngineScaledPixmapArgument): gen_qiconengine_types.QIconEngineScaledPixmapArgument =
  T(h: h)
proc create*(T: type gen_qiconengine_types.QIconEngineScaledPixmapArgument, param1: gen_qiconengine_types.QIconEngineScaledPixmapArgument): gen_qiconengine_types.QIconEngineScaledPixmapArgument =
  gen_qiconengine_types.QIconEngineScaledPixmapArgument.init(fcQIconEngineScaledPixmapArgument_new(param1.h))

proc operatorAssign*(self: gen_qiconengine_types.QIconEngineScaledPixmapArgument, param1: gen_qiconengine_types.QIconEngineScaledPixmapArgument): void =
  fcQIconEngineScaledPixmapArgument_operatorAssign(self.h, param1.h)

proc delete*(self: gen_qiconengine_types.QIconEngineScaledPixmapArgument) =
  fcQIconEngineScaledPixmapArgument_delete(self.h)
