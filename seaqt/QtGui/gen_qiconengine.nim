import ./Qt5Gui_libs

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

const cflags = gorge("pkg-config --cflags Qt5Gui")  & " -fPIC"
{.compile("gen_qiconengine.cpp", cflags).}


type QIconEngineIconEngineHookEnum* = distinct cint
template AvailableSizesHook*(_: type QIconEngineIconEngineHookEnum): untyped = 1
template IconNameHook*(_: type QIconEngineIconEngineHookEnum): untyped = 2
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
type cQIconEngineAvailableSizesArgument*{.exportc: "QIconEngine__AvailableSizesArgument", incompleteStruct.} = object
type cQIconEngineScaledPixmapArgument*{.exportc: "QIconEngine__ScaledPixmapArgument", incompleteStruct.} = object

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
type cQIconEngineVTable = object
  destructor*: proc(vtbl: ptr cQIconEngineVTable, self: ptr cQIconEngine) {.cdecl, raises:[], gcsafe.}
  paint*: proc(vtbl, self: pointer, painter: pointer, rect: pointer, mode: cint, state: cint): void {.cdecl, raises: [], gcsafe.}
  actualSize*: proc(vtbl, self: pointer, size: pointer, mode: cint, state: cint): pointer {.cdecl, raises: [], gcsafe.}
  pixmap*: proc(vtbl, self: pointer, size: pointer, mode: cint, state: cint): pointer {.cdecl, raises: [], gcsafe.}
  addPixmap*: proc(vtbl, self: pointer, pixmap: pointer, mode: cint, state: cint): void {.cdecl, raises: [], gcsafe.}
  addFile*: proc(vtbl, self: pointer, fileName: struct_miqt_string, size: pointer, mode: cint, state: cint): void {.cdecl, raises: [], gcsafe.}
  key*: proc(vtbl, self: pointer, ): struct_miqt_string {.cdecl, raises: [], gcsafe.}
  clone*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  read*: proc(vtbl, self: pointer, inVal: pointer): bool {.cdecl, raises: [], gcsafe.}
  write*: proc(vtbl, self: pointer, outVal: pointer): bool {.cdecl, raises: [], gcsafe.}
  availableSizes*: proc(vtbl, self: pointer, mode: cint, state: cint): struct_miqt_array {.cdecl, raises: [], gcsafe.}
  iconName*: proc(vtbl, self: pointer, ): struct_miqt_string {.cdecl, raises: [], gcsafe.}
  virtualHook*: proc(vtbl, self: pointer, id: cint, data: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQIconEngine_virtualbase_actualSize(self: pointer, size: pointer, mode: cint, state: cint): pointer {.importc: "QIconEngine_virtualbase_actualSize".}
proc fcQIconEngine_virtualbase_pixmap(self: pointer, size: pointer, mode: cint, state: cint): pointer {.importc: "QIconEngine_virtualbase_pixmap".}
proc fcQIconEngine_virtualbase_addPixmap(self: pointer, pixmap: pointer, mode: cint, state: cint): void {.importc: "QIconEngine_virtualbase_addPixmap".}
proc fcQIconEngine_virtualbase_addFile(self: pointer, fileName: struct_miqt_string, size: pointer, mode: cint, state: cint): void {.importc: "QIconEngine_virtualbase_addFile".}
proc fcQIconEngine_virtualbase_key(self: pointer, ): struct_miqt_string {.importc: "QIconEngine_virtualbase_key".}
proc fcQIconEngine_virtualbase_read(self: pointer, inVal: pointer): bool {.importc: "QIconEngine_virtualbase_read".}
proc fcQIconEngine_virtualbase_write(self: pointer, outVal: pointer): bool {.importc: "QIconEngine_virtualbase_write".}
proc fcQIconEngine_virtualbase_availableSizes(self: pointer, mode: cint, state: cint): struct_miqt_array {.importc: "QIconEngine_virtualbase_availableSizes".}
proc fcQIconEngine_virtualbase_iconName(self: pointer, ): struct_miqt_string {.importc: "QIconEngine_virtualbase_iconName".}
proc fcQIconEngine_virtualbase_virtualHook(self: pointer, id: cint, data: pointer): void {.importc: "QIconEngine_virtualbase_virtualHook".}
proc fcQIconEngine_new(vtbl: pointer, ): ptr cQIconEngine {.importc: "QIconEngine_new".}
proc fcQIconEngine_new2(vtbl: pointer, other: pointer): ptr cQIconEngine {.importc: "QIconEngine_new2".}
proc fcQIconEngine_delete(self: pointer) {.importc: "QIconEngine_delete".}
proc fcQIconEngineAvailableSizesArgument_operatorAssign(self: pointer, param1: pointer): void {.importc: "QIconEngine__AvailableSizesArgument_operatorAssign".}
proc fcQIconEngineAvailableSizesArgument_new(param1: pointer): ptr cQIconEngineAvailableSizesArgument {.importc: "QIconEngine__AvailableSizesArgument_new".}
proc fcQIconEngineAvailableSizesArgument_delete(self: pointer) {.importc: "QIconEngine__AvailableSizesArgument_delete".}
proc fcQIconEngineScaledPixmapArgument_operatorAssign(self: pointer, param1: pointer): void {.importc: "QIconEngine__ScaledPixmapArgument_operatorAssign".}
proc fcQIconEngineScaledPixmapArgument_new(param1: pointer): ptr cQIconEngineScaledPixmapArgument {.importc: "QIconEngine__ScaledPixmapArgument_new".}
proc fcQIconEngineScaledPixmapArgument_delete(self: pointer) {.importc: "QIconEngine__ScaledPixmapArgument_delete".}

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
  c_free(v_ma.data)
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

type QIconEnginepaintProc* = proc(self: QIconEngine, painter: gen_qpainter_types.QPainter, rect: gen_qrect_types.QRect, mode: cint, state: cint): void {.raises: [], gcsafe.}
type QIconEngineactualSizeProc* = proc(self: QIconEngine, size: gen_qsize_types.QSize, mode: cint, state: cint): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QIconEnginepixmapProc* = proc(self: QIconEngine, size: gen_qsize_types.QSize, mode: cint, state: cint): gen_qpixmap_types.QPixmap {.raises: [], gcsafe.}
type QIconEngineaddPixmapProc* = proc(self: QIconEngine, pixmap: gen_qpixmap_types.QPixmap, mode: cint, state: cint): void {.raises: [], gcsafe.}
type QIconEngineaddFileProc* = proc(self: QIconEngine, fileName: string, size: gen_qsize_types.QSize, mode: cint, state: cint): void {.raises: [], gcsafe.}
type QIconEnginekeyProc* = proc(self: QIconEngine): string {.raises: [], gcsafe.}
type QIconEnginecloneProc* = proc(self: QIconEngine): gen_qiconengine_types.QIconEngine {.raises: [], gcsafe.}
type QIconEnginereadProc* = proc(self: QIconEngine, inVal: gen_qdatastream_types.QDataStream): bool {.raises: [], gcsafe.}
type QIconEnginewriteProc* = proc(self: QIconEngine, outVal: gen_qdatastream_types.QDataStream): bool {.raises: [], gcsafe.}
type QIconEngineavailableSizesProc* = proc(self: QIconEngine, mode: cint, state: cint): seq[gen_qsize_types.QSize] {.raises: [], gcsafe.}
type QIconEngineiconNameProc* = proc(self: QIconEngine): string {.raises: [], gcsafe.}
type QIconEnginevirtualHookProc* = proc(self: QIconEngine, id: cint, data: pointer): void {.raises: [], gcsafe.}
type QIconEngineVTable* = object
  vtbl: cQIconEngineVTable
  paint*: QIconEnginepaintProc
  actualSize*: QIconEngineactualSizeProc
  pixmap*: QIconEnginepixmapProc
  addPixmap*: QIconEngineaddPixmapProc
  addFile*: QIconEngineaddFileProc
  key*: QIconEnginekeyProc
  clone*: QIconEnginecloneProc
  read*: QIconEnginereadProc
  write*: QIconEnginewriteProc
  availableSizes*: QIconEngineavailableSizesProc
  iconName*: QIconEngineiconNameProc
  virtualHook*: QIconEnginevirtualHookProc
proc miqt_exec_callback_cQIconEngine_paint(vtbl: pointer, self: pointer, painter: pointer, rect: pointer, mode: cint, state: cint): void {.cdecl.} =
  let vtbl = cast[ptr QIconEngineVTable](vtbl)
  let self = QIconEngine(h: self)
  let slotval1 = gen_qpainter_types.QPainter(h: painter)
  let slotval2 = gen_qrect_types.QRect(h: rect)
  let slotval3 = cint(mode)
  let slotval4 = cint(state)
  vtbl[].paint(self, slotval1, slotval2, slotval3, slotval4)

proc QIconEngineactualSize*(self: gen_qiconengine_types.QIconEngine, size: gen_qsize_types.QSize, mode: cint, state: cint): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQIconEngine_virtualbase_actualSize(self.h, size.h, cint(mode), cint(state)))

proc miqt_exec_callback_cQIconEngine_actualSize(vtbl: pointer, self: pointer, size: pointer, mode: cint, state: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QIconEngineVTable](vtbl)
  let self = QIconEngine(h: self)
  let slotval1 = gen_qsize_types.QSize(h: size)
  let slotval2 = cint(mode)
  let slotval3 = cint(state)
  var virtualReturn = vtbl[].actualSize(self, slotval1, slotval2, slotval3)
  virtualReturn.h

proc QIconEnginepixmap*(self: gen_qiconengine_types.QIconEngine, size: gen_qsize_types.QSize, mode: cint, state: cint): gen_qpixmap_types.QPixmap =
  gen_qpixmap_types.QPixmap(h: fcQIconEngine_virtualbase_pixmap(self.h, size.h, cint(mode), cint(state)))

proc miqt_exec_callback_cQIconEngine_pixmap(vtbl: pointer, self: pointer, size: pointer, mode: cint, state: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QIconEngineVTable](vtbl)
  let self = QIconEngine(h: self)
  let slotval1 = gen_qsize_types.QSize(h: size)
  let slotval2 = cint(mode)
  let slotval3 = cint(state)
  var virtualReturn = vtbl[].pixmap(self, slotval1, slotval2, slotval3)
  virtualReturn.h

proc QIconEngineaddPixmap*(self: gen_qiconengine_types.QIconEngine, pixmap: gen_qpixmap_types.QPixmap, mode: cint, state: cint): void =
  fcQIconEngine_virtualbase_addPixmap(self.h, pixmap.h, cint(mode), cint(state))

proc miqt_exec_callback_cQIconEngine_addPixmap(vtbl: pointer, self: pointer, pixmap: pointer, mode: cint, state: cint): void {.cdecl.} =
  let vtbl = cast[ptr QIconEngineVTable](vtbl)
  let self = QIconEngine(h: self)
  let slotval1 = gen_qpixmap_types.QPixmap(h: pixmap)
  let slotval2 = cint(mode)
  let slotval3 = cint(state)
  vtbl[].addPixmap(self, slotval1, slotval2, slotval3)

proc QIconEngineaddFile*(self: gen_qiconengine_types.QIconEngine, fileName: string, size: gen_qsize_types.QSize, mode: cint, state: cint): void =
  fcQIconEngine_virtualbase_addFile(self.h, struct_miqt_string(data: fileName, len: csize_t(len(fileName))), size.h, cint(mode), cint(state))

proc miqt_exec_callback_cQIconEngine_addFile(vtbl: pointer, self: pointer, fileName: struct_miqt_string, size: pointer, mode: cint, state: cint): void {.cdecl.} =
  let vtbl = cast[ptr QIconEngineVTable](vtbl)
  let self = QIconEngine(h: self)
  let vfileName_ms = fileName
  let vfileNamex_ret = string.fromBytes(toOpenArrayByte(vfileName_ms.data, 0, int(vfileName_ms.len)-1))
  c_free(vfileName_ms.data)
  let slotval1 = vfileNamex_ret
  let slotval2 = gen_qsize_types.QSize(h: size)
  let slotval3 = cint(mode)
  let slotval4 = cint(state)
  vtbl[].addFile(self, slotval1, slotval2, slotval3, slotval4)

proc QIconEnginekey*(self: gen_qiconengine_types.QIconEngine, ): string =
  let v_ms = fcQIconEngine_virtualbase_key(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc miqt_exec_callback_cQIconEngine_key(vtbl: pointer, self: pointer): struct_miqt_string {.cdecl.} =
  let vtbl = cast[ptr QIconEngineVTable](vtbl)
  let self = QIconEngine(h: self)
  var virtualReturn = vtbl[].key(self)
  var virtualReturn_copy = cast[cstring](if len(virtualReturn) > 0: c_malloc(csize_t(len(virtualReturn))) else: nil)
  if len(virtualReturn) > 0: copyMem(cast[pointer](virtualReturn_copy), addr virtualReturn[0], csize_t(len(virtualReturn)))
  struct_miqt_string(data: virtualReturn_copy, len: csize_t(len(virtualReturn)))

proc miqt_exec_callback_cQIconEngine_clone(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QIconEngineVTable](vtbl)
  let self = QIconEngine(h: self)
  var virtualReturn = vtbl[].clone(self)
  virtualReturn.h

proc QIconEngineread*(self: gen_qiconengine_types.QIconEngine, inVal: gen_qdatastream_types.QDataStream): bool =
  fcQIconEngine_virtualbase_read(self.h, inVal.h)

proc miqt_exec_callback_cQIconEngine_read(vtbl: pointer, self: pointer, inVal: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QIconEngineVTable](vtbl)
  let self = QIconEngine(h: self)
  let slotval1 = gen_qdatastream_types.QDataStream(h: inVal)
  var virtualReturn = vtbl[].read(self, slotval1)
  virtualReturn

proc QIconEnginewrite*(self: gen_qiconengine_types.QIconEngine, outVal: gen_qdatastream_types.QDataStream): bool =
  fcQIconEngine_virtualbase_write(self.h, outVal.h)

proc miqt_exec_callback_cQIconEngine_write(vtbl: pointer, self: pointer, outVal: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QIconEngineVTable](vtbl)
  let self = QIconEngine(h: self)
  let slotval1 = gen_qdatastream_types.QDataStream(h: outVal)
  var virtualReturn = vtbl[].write(self, slotval1)
  virtualReturn

proc QIconEngineavailableSizes*(self: gen_qiconengine_types.QIconEngine, mode: cint, state: cint): seq[gen_qsize_types.QSize] =
  var v_ma = fcQIconEngine_virtualbase_availableSizes(self.h, cint(mode), cint(state))
  var vx_ret = newSeq[gen_qsize_types.QSize](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qsize_types.QSize(h: v_outCast[i])
  c_free(v_ma.data)
  vx_ret

proc miqt_exec_callback_cQIconEngine_availableSizes(vtbl: pointer, self: pointer, mode: cint, state: cint): struct_miqt_array {.cdecl.} =
  let vtbl = cast[ptr QIconEngineVTable](vtbl)
  let self = QIconEngine(h: self)
  let slotval1 = cint(mode)
  let slotval2 = cint(state)
  var virtualReturn = vtbl[].availableSizes(self, slotval1, slotval2)
  var virtualReturn_CArray = cast[ptr UncheckedArray[pointer]](if len(virtualReturn) > 0: c_malloc(c_sizet(sizeof(pointer) * len(virtualReturn))) else: nil)
  for i in 0..<len(virtualReturn):
    virtualReturn_CArray[i] = virtualReturn[i].h

  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))

proc QIconEngineiconName*(self: gen_qiconengine_types.QIconEngine, ): string =
  let v_ms = fcQIconEngine_virtualbase_iconName(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc miqt_exec_callback_cQIconEngine_iconName(vtbl: pointer, self: pointer): struct_miqt_string {.cdecl.} =
  let vtbl = cast[ptr QIconEngineVTable](vtbl)
  let self = QIconEngine(h: self)
  var virtualReturn = vtbl[].iconName(self)
  var virtualReturn_copy = cast[cstring](if len(virtualReturn) > 0: c_malloc(csize_t(len(virtualReturn))) else: nil)
  if len(virtualReturn) > 0: copyMem(cast[pointer](virtualReturn_copy), addr virtualReturn[0], csize_t(len(virtualReturn)))
  struct_miqt_string(data: virtualReturn_copy, len: csize_t(len(virtualReturn)))

proc QIconEnginevirtualHook*(self: gen_qiconengine_types.QIconEngine, id: cint, data: pointer): void =
  fcQIconEngine_virtualbase_virtualHook(self.h, id, data)

proc miqt_exec_callback_cQIconEngine_virtualHook(vtbl: pointer, self: pointer, id: cint, data: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QIconEngineVTable](vtbl)
  let self = QIconEngine(h: self)
  let slotval1 = id
  let slotval2 = data
  vtbl[].virtualHook(self, slotval1, slotval2)

proc create*(T: type gen_qiconengine_types.QIconEngine,
    vtbl: ref QIconEngineVTable = nil): gen_qiconengine_types.QIconEngine =
  let vtbl = if vtbl == nil: new QIconEngineVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQIconEngineVTable, _: ptr cQIconEngine) {.cdecl.} =
    let vtbl = cast[ref QIconEngineVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.paint):
    vtbl[].vtbl.paint = miqt_exec_callback_cQIconEngine_paint
  if not isNil(vtbl.actualSize):
    vtbl[].vtbl.actualSize = miqt_exec_callback_cQIconEngine_actualSize
  if not isNil(vtbl.pixmap):
    vtbl[].vtbl.pixmap = miqt_exec_callback_cQIconEngine_pixmap
  if not isNil(vtbl.addPixmap):
    vtbl[].vtbl.addPixmap = miqt_exec_callback_cQIconEngine_addPixmap
  if not isNil(vtbl.addFile):
    vtbl[].vtbl.addFile = miqt_exec_callback_cQIconEngine_addFile
  if not isNil(vtbl.key):
    vtbl[].vtbl.key = miqt_exec_callback_cQIconEngine_key
  if not isNil(vtbl.clone):
    vtbl[].vtbl.clone = miqt_exec_callback_cQIconEngine_clone
  if not isNil(vtbl.read):
    vtbl[].vtbl.read = miqt_exec_callback_cQIconEngine_read
  if not isNil(vtbl.write):
    vtbl[].vtbl.write = miqt_exec_callback_cQIconEngine_write
  if not isNil(vtbl.availableSizes):
    vtbl[].vtbl.availableSizes = miqt_exec_callback_cQIconEngine_availableSizes
  if not isNil(vtbl.iconName):
    vtbl[].vtbl.iconName = miqt_exec_callback_cQIconEngine_iconName
  if not isNil(vtbl.virtualHook):
    vtbl[].vtbl.virtualHook = miqt_exec_callback_cQIconEngine_virtualHook
  gen_qiconengine_types.QIconEngine(h: fcQIconEngine_new(addr(vtbl[]), ))

proc create*(T: type gen_qiconengine_types.QIconEngine,
    other: gen_qiconengine_types.QIconEngine,
    vtbl: ref QIconEngineVTable = nil): gen_qiconengine_types.QIconEngine =
  let vtbl = if vtbl == nil: new QIconEngineVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQIconEngineVTable, _: ptr cQIconEngine) {.cdecl.} =
    let vtbl = cast[ref QIconEngineVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.paint):
    vtbl[].vtbl.paint = miqt_exec_callback_cQIconEngine_paint
  if not isNil(vtbl.actualSize):
    vtbl[].vtbl.actualSize = miqt_exec_callback_cQIconEngine_actualSize
  if not isNil(vtbl.pixmap):
    vtbl[].vtbl.pixmap = miqt_exec_callback_cQIconEngine_pixmap
  if not isNil(vtbl.addPixmap):
    vtbl[].vtbl.addPixmap = miqt_exec_callback_cQIconEngine_addPixmap
  if not isNil(vtbl.addFile):
    vtbl[].vtbl.addFile = miqt_exec_callback_cQIconEngine_addFile
  if not isNil(vtbl.key):
    vtbl[].vtbl.key = miqt_exec_callback_cQIconEngine_key
  if not isNil(vtbl.clone):
    vtbl[].vtbl.clone = miqt_exec_callback_cQIconEngine_clone
  if not isNil(vtbl.read):
    vtbl[].vtbl.read = miqt_exec_callback_cQIconEngine_read
  if not isNil(vtbl.write):
    vtbl[].vtbl.write = miqt_exec_callback_cQIconEngine_write
  if not isNil(vtbl.availableSizes):
    vtbl[].vtbl.availableSizes = miqt_exec_callback_cQIconEngine_availableSizes
  if not isNil(vtbl.iconName):
    vtbl[].vtbl.iconName = miqt_exec_callback_cQIconEngine_iconName
  if not isNil(vtbl.virtualHook):
    vtbl[].vtbl.virtualHook = miqt_exec_callback_cQIconEngine_virtualHook
  gen_qiconengine_types.QIconEngine(h: fcQIconEngine_new2(addr(vtbl[]), other.h))

proc delete*(self: gen_qiconengine_types.QIconEngine) =
  fcQIconEngine_delete(self.h)
proc operatorAssign*(self: gen_qiconengine_types.QIconEngineAvailableSizesArgument, param1: gen_qiconengine_types.QIconEngineAvailableSizesArgument): void =
  fcQIconEngineAvailableSizesArgument_operatorAssign(self.h, param1.h)

proc create*(T: type gen_qiconengine_types.QIconEngineAvailableSizesArgument,
    param1: gen_qiconengine_types.QIconEngineAvailableSizesArgument): gen_qiconengine_types.QIconEngineAvailableSizesArgument =
  gen_qiconengine_types.QIconEngineAvailableSizesArgument(h: fcQIconEngineAvailableSizesArgument_new(param1.h))

proc delete*(self: gen_qiconengine_types.QIconEngineAvailableSizesArgument) =
  fcQIconEngineAvailableSizesArgument_delete(self.h)
proc operatorAssign*(self: gen_qiconengine_types.QIconEngineScaledPixmapArgument, param1: gen_qiconengine_types.QIconEngineScaledPixmapArgument): void =
  fcQIconEngineScaledPixmapArgument_operatorAssign(self.h, param1.h)

proc create*(T: type gen_qiconengine_types.QIconEngineScaledPixmapArgument,
    param1: gen_qiconengine_types.QIconEngineScaledPixmapArgument): gen_qiconengine_types.QIconEngineScaledPixmapArgument =
  gen_qiconengine_types.QIconEngineScaledPixmapArgument(h: fcQIconEngineScaledPixmapArgument_new(param1.h))

proc delete*(self: gen_qiconengine_types.QIconEngineScaledPixmapArgument) =
  fcQIconEngineScaledPixmapArgument_delete(self.h)
