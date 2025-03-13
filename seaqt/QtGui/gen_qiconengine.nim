import ./Qt6Gui_libs

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

proc fcQIconEngine_paint(self: pointer, painter: pointer, rect: pointer, mode: cint, state: cint): void {.importc: "QIconEngine_paint".}
proc fcQIconEngine_actualSize(self: pointer, size: pointer, mode: cint, state: cint): pointer {.importc: "QIconEngine_actualSize".}
proc fcQIconEngine_pixmap(self: pointer, size: pointer, mode: cint, state: cint): pointer {.importc: "QIconEngine_pixmap".}
proc fcQIconEngine_addPixmap(self: pointer, pixmap: pointer, mode: cint, state: cint): void {.importc: "QIconEngine_addPixmap".}
proc fcQIconEngine_addFile(self: pointer, fileName: struct_miqt_string, size: pointer, mode: cint, state: cint): void {.importc: "QIconEngine_addFile".}
proc fcQIconEngine_key(self: pointer): struct_miqt_string {.importc: "QIconEngine_key".}
proc fcQIconEngine_clone(self: pointer): pointer {.importc: "QIconEngine_clone".}
proc fcQIconEngine_read(self: pointer, inVal: pointer): bool {.importc: "QIconEngine_read".}
proc fcQIconEngine_write(self: pointer, outVal: pointer): bool {.importc: "QIconEngine_write".}
proc fcQIconEngine_availableSizes(self: pointer, mode: cint, state: cint): struct_miqt_array {.importc: "QIconEngine_availableSizes".}
proc fcQIconEngine_iconName(self: pointer): struct_miqt_string {.importc: "QIconEngine_iconName".}
proc fcQIconEngine_isNull(self: pointer): bool {.importc: "QIconEngine_isNull".}
proc fcQIconEngine_scaledPixmap(self: pointer, size: pointer, mode: cint, state: cint, scale: float64): pointer {.importc: "QIconEngine_scaledPixmap".}
proc fcQIconEngine_virtualHook(self: pointer, id: cint, data: pointer): void {.importc: "QIconEngine_virtualHook".}
proc fcQIconEngine_vtbl(self: pointer): pointer {.importc: "QIconEngine_vtbl".}
proc fcQIconEngine_vdata(self: pointer): pointer {.importc: "QIconEngine_vdata".}
type cQIconEngineVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  paint*: proc(self: pointer, painter: pointer, rect: pointer, mode: cint, state: cint): void {.cdecl, raises: [], gcsafe.}
  actualSize*: proc(self: pointer, size: pointer, mode: cint, state: cint): pointer {.cdecl, raises: [], gcsafe.}
  pixmap*: proc(self: pointer, size: pointer, mode: cint, state: cint): pointer {.cdecl, raises: [], gcsafe.}
  addPixmap*: proc(self: pointer, pixmap: pointer, mode: cint, state: cint): void {.cdecl, raises: [], gcsafe.}
  addFile*: proc(self: pointer, fileName: struct_miqt_string, size: pointer, mode: cint, state: cint): void {.cdecl, raises: [], gcsafe.}
  key*: proc(self: pointer): struct_miqt_string {.cdecl, raises: [], gcsafe.}
  clone*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  read*: proc(self: pointer, inVal: pointer): bool {.cdecl, raises: [], gcsafe.}
  write*: proc(self: pointer, outVal: pointer): bool {.cdecl, raises: [], gcsafe.}
  availableSizes*: proc(self: pointer, mode: cint, state: cint): struct_miqt_array {.cdecl, raises: [], gcsafe.}
  iconName*: proc(self: pointer): struct_miqt_string {.cdecl, raises: [], gcsafe.}
  isNull*: proc(self: pointer): bool {.cdecl, raises: [], gcsafe.}
  scaledPixmap*: proc(self: pointer, size: pointer, mode: cint, state: cint, scale: float64): pointer {.cdecl, raises: [], gcsafe.}
  virtualHook*: proc(self: pointer, id: cint, data: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQIconEngine_virtualbase_actualSize(self: pointer, size: pointer, mode: cint, state: cint): pointer {.importc: "QIconEngine_virtualbase_actualSize".}
proc fcQIconEngine_virtualbase_pixmap(self: pointer, size: pointer, mode: cint, state: cint): pointer {.importc: "QIconEngine_virtualbase_pixmap".}
proc fcQIconEngine_virtualbase_addPixmap(self: pointer, pixmap: pointer, mode: cint, state: cint): void {.importc: "QIconEngine_virtualbase_addPixmap".}
proc fcQIconEngine_virtualbase_addFile(self: pointer, fileName: struct_miqt_string, size: pointer, mode: cint, state: cint): void {.importc: "QIconEngine_virtualbase_addFile".}
proc fcQIconEngine_virtualbase_key(self: pointer): struct_miqt_string {.importc: "QIconEngine_virtualbase_key".}
proc fcQIconEngine_virtualbase_read(self: pointer, inVal: pointer): bool {.importc: "QIconEngine_virtualbase_read".}
proc fcQIconEngine_virtualbase_write(self: pointer, outVal: pointer): bool {.importc: "QIconEngine_virtualbase_write".}
proc fcQIconEngine_virtualbase_availableSizes(self: pointer, mode: cint, state: cint): struct_miqt_array {.importc: "QIconEngine_virtualbase_availableSizes".}
proc fcQIconEngine_virtualbase_iconName(self: pointer): struct_miqt_string {.importc: "QIconEngine_virtualbase_iconName".}
proc fcQIconEngine_virtualbase_isNull(self: pointer): bool {.importc: "QIconEngine_virtualbase_isNull".}
proc fcQIconEngine_virtualbase_scaledPixmap(self: pointer, size: pointer, mode: cint, state: cint, scale: float64): pointer {.importc: "QIconEngine_virtualbase_scaledPixmap".}
proc fcQIconEngine_virtualbase_virtualHook(self: pointer, id: cint, data: pointer): void {.importc: "QIconEngine_virtualbase_virtualHook".}
proc fcQIconEngine_new(vtbl, vdata: pointer): ptr cQIconEngine {.importc: "QIconEngine_new".}
proc fcQIconEngineScaledPixmapArgument_operatorAssign(self: pointer, param1: pointer): void {.importc: "QIconEngine__ScaledPixmapArgument_operatorAssign".}
proc fcQIconEngineScaledPixmapArgument_new(param1: pointer): ptr cQIconEngineScaledPixmapArgument {.importc: "QIconEngine__ScaledPixmapArgument_new".}

proc paint*(self: gen_qiconengine_types.QIconEngine, painter: gen_qpainter_types.QPainter, rect: gen_qrect_types.QRect, mode: cint, state: cint): void =
  fcQIconEngine_paint(self.h, painter.h, rect.h, cint(mode), cint(state))

proc actualSize*(self: gen_qiconengine_types.QIconEngine, size: gen_qsize_types.QSize, mode: cint, state: cint): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQIconEngine_actualSize(self.h, size.h, cint(mode), cint(state)), owned: true)

proc pixmap*(self: gen_qiconengine_types.QIconEngine, size: gen_qsize_types.QSize, mode: cint, state: cint): gen_qpixmap_types.QPixmap =
  gen_qpixmap_types.QPixmap(h: fcQIconEngine_pixmap(self.h, size.h, cint(mode), cint(state)), owned: true)

proc addPixmap*(self: gen_qiconengine_types.QIconEngine, pixmap: gen_qpixmap_types.QPixmap, mode: cint, state: cint): void =
  fcQIconEngine_addPixmap(self.h, pixmap.h, cint(mode), cint(state))

proc addFile*(self: gen_qiconengine_types.QIconEngine, fileName: openArray[char], size: gen_qsize_types.QSize, mode: cint, state: cint): void =
  fcQIconEngine_addFile(self.h, struct_miqt_string(data: if len(fileName) > 0: addr fileName[0] else: nil, len: csize_t(len(fileName))), size.h, cint(mode), cint(state))

proc key*(self: gen_qiconengine_types.QIconEngine): string =
  let v_ms = fcQIconEngine_key(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc clone*(self: gen_qiconengine_types.QIconEngine): gen_qiconengine_types.QIconEngine =
  gen_qiconengine_types.QIconEngine(h: fcQIconEngine_clone(self.h), owned: false)

proc read*(self: gen_qiconengine_types.QIconEngine, inVal: gen_qdatastream_types.QDataStream): bool =
  fcQIconEngine_read(self.h, inVal.h)

proc write*(self: gen_qiconengine_types.QIconEngine, outVal: gen_qdatastream_types.QDataStream): bool =
  fcQIconEngine_write(self.h, outVal.h)

proc availableSizes*(self: gen_qiconengine_types.QIconEngine, mode: cint, state: cint): seq[gen_qsize_types.QSize] =
  var v_ma = fcQIconEngine_availableSizes(self.h, cint(mode), cint(state))
  var vx_ret = newSeq[gen_qsize_types.QSize](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qsize_types.QSize(h: v_outCast[i], owned: true)
  c_free(v_ma.data)
  vx_ret

proc iconName*(self: gen_qiconengine_types.QIconEngine): string =
  let v_ms = fcQIconEngine_iconName(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc isNull*(self: gen_qiconengine_types.QIconEngine): bool =
  fcQIconEngine_isNull(self.h)

proc scaledPixmap*(self: gen_qiconengine_types.QIconEngine, size: gen_qsize_types.QSize, mode: cint, state: cint, scale: float64): gen_qpixmap_types.QPixmap =
  gen_qpixmap_types.QPixmap(h: fcQIconEngine_scaledPixmap(self.h, size.h, cint(mode), cint(state), scale), owned: true)

proc virtualHook*(self: gen_qiconengine_types.QIconEngine, id: cint, data: pointer): void =
  fcQIconEngine_virtualHook(self.h, id, data)

type QIconEnginepaintProc* = proc(self: QIconEngine, painter: gen_qpainter_types.QPainter, rect: gen_qrect_types.QRect, mode: cint, state: cint): void {.raises: [], gcsafe.}
type QIconEngineactualSizeProc* = proc(self: QIconEngine, size: gen_qsize_types.QSize, mode: cint, state: cint): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QIconEnginepixmapProc* = proc(self: QIconEngine, size: gen_qsize_types.QSize, mode: cint, state: cint): gen_qpixmap_types.QPixmap {.raises: [], gcsafe.}
type QIconEngineaddPixmapProc* = proc(self: QIconEngine, pixmap: gen_qpixmap_types.QPixmap, mode: cint, state: cint): void {.raises: [], gcsafe.}
type QIconEngineaddFileProc* = proc(self: QIconEngine, fileName: openArray[char], size: gen_qsize_types.QSize, mode: cint, state: cint): void {.raises: [], gcsafe.}
type QIconEnginekeyProc* = proc(self: QIconEngine): string {.raises: [], gcsafe.}
type QIconEnginecloneProc* = proc(self: QIconEngine): gen_qiconengine_types.QIconEngine {.raises: [], gcsafe.}
type QIconEnginereadProc* = proc(self: QIconEngine, inVal: gen_qdatastream_types.QDataStream): bool {.raises: [], gcsafe.}
type QIconEnginewriteProc* = proc(self: QIconEngine, outVal: gen_qdatastream_types.QDataStream): bool {.raises: [], gcsafe.}
type QIconEngineavailableSizesProc* = proc(self: QIconEngine, mode: cint, state: cint): seq[gen_qsize_types.QSize] {.raises: [], gcsafe.}
type QIconEngineiconNameProc* = proc(self: QIconEngine): string {.raises: [], gcsafe.}
type QIconEngineisNullProc* = proc(self: QIconEngine): bool {.raises: [], gcsafe.}
type QIconEnginescaledPixmapProc* = proc(self: QIconEngine, size: gen_qsize_types.QSize, mode: cint, state: cint, scale: float64): gen_qpixmap_types.QPixmap {.raises: [], gcsafe.}
type QIconEnginevirtualHookProc* = proc(self: QIconEngine, id: cint, data: pointer): void {.raises: [], gcsafe.}
type QIconEngineVTable* {.inheritable, pure.} = object
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
  isNull*: QIconEngineisNullProc
  scaledPixmap*: QIconEnginescaledPixmapProc
  virtualHook*: QIconEnginevirtualHookProc
proc cQIconEngine_vtable_callback_paint(self: pointer, painter: pointer, rect: pointer, mode: cint, state: cint): void {.cdecl.} =
  let vtbl = cast[ptr QIconEngineVTable](fcQIconEngine_vdata(self))
  let self = QIconEngine(h: self)
  let slotval1 = gen_qpainter_types.QPainter(h: painter, owned: false)
  let slotval2 = gen_qrect_types.QRect(h: rect, owned: false)
  let slotval3 = cint(mode)
  let slotval4 = cint(state)
  vtbl[].paint(self, slotval1, slotval2, slotval3, slotval4)

proc QIconEngineactualSize*(self: gen_qiconengine_types.QIconEngine, size: gen_qsize_types.QSize, mode: cint, state: cint): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQIconEngine_virtualbase_actualSize(self.h, size.h, cint(mode), cint(state)), owned: true)

proc cQIconEngine_vtable_callback_actualSize(self: pointer, size: pointer, mode: cint, state: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QIconEngineVTable](fcQIconEngine_vdata(self))
  let self = QIconEngine(h: self)
  let slotval1 = gen_qsize_types.QSize(h: size, owned: false)
  let slotval2 = cint(mode)
  let slotval3 = cint(state)
  var virtualReturn = vtbl[].actualSize(self, slotval1, slotval2, slotval3)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QIconEnginepixmap*(self: gen_qiconengine_types.QIconEngine, size: gen_qsize_types.QSize, mode: cint, state: cint): gen_qpixmap_types.QPixmap =
  gen_qpixmap_types.QPixmap(h: fcQIconEngine_virtualbase_pixmap(self.h, size.h, cint(mode), cint(state)), owned: true)

proc cQIconEngine_vtable_callback_pixmap(self: pointer, size: pointer, mode: cint, state: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QIconEngineVTable](fcQIconEngine_vdata(self))
  let self = QIconEngine(h: self)
  let slotval1 = gen_qsize_types.QSize(h: size, owned: false)
  let slotval2 = cint(mode)
  let slotval3 = cint(state)
  var virtualReturn = vtbl[].pixmap(self, slotval1, slotval2, slotval3)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QIconEngineaddPixmap*(self: gen_qiconengine_types.QIconEngine, pixmap: gen_qpixmap_types.QPixmap, mode: cint, state: cint): void =
  fcQIconEngine_virtualbase_addPixmap(self.h, pixmap.h, cint(mode), cint(state))

proc cQIconEngine_vtable_callback_addPixmap(self: pointer, pixmap: pointer, mode: cint, state: cint): void {.cdecl.} =
  let vtbl = cast[ptr QIconEngineVTable](fcQIconEngine_vdata(self))
  let self = QIconEngine(h: self)
  let slotval1 = gen_qpixmap_types.QPixmap(h: pixmap, owned: false)
  let slotval2 = cint(mode)
  let slotval3 = cint(state)
  vtbl[].addPixmap(self, slotval1, slotval2, slotval3)

proc QIconEngineaddFile*(self: gen_qiconengine_types.QIconEngine, fileName: openArray[char], size: gen_qsize_types.QSize, mode: cint, state: cint): void =
  fcQIconEngine_virtualbase_addFile(self.h, struct_miqt_string(data: if len(fileName) > 0: addr fileName[0] else: nil, len: csize_t(len(fileName))), size.h, cint(mode), cint(state))

proc cQIconEngine_vtable_callback_addFile(self: pointer, fileName: struct_miqt_string, size: pointer, mode: cint, state: cint): void {.cdecl.} =
  let vtbl = cast[ptr QIconEngineVTable](fcQIconEngine_vdata(self))
  let self = QIconEngine(h: self)
  let vfileName_ms = fileName
  let vfileNamex_ret = string.fromBytes(vfileName_ms)
  c_free(vfileName_ms.data)
  let slotval1 = vfileNamex_ret
  let slotval2 = gen_qsize_types.QSize(h: size, owned: false)
  let slotval3 = cint(mode)
  let slotval4 = cint(state)
  vtbl[].addFile(self, slotval1, slotval2, slotval3, slotval4)

proc QIconEnginekey*(self: gen_qiconengine_types.QIconEngine): string =
  let v_ms = fcQIconEngine_virtualbase_key(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc cQIconEngine_vtable_callback_key(self: pointer): struct_miqt_string {.cdecl.} =
  let vtbl = cast[ptr QIconEngineVTable](fcQIconEngine_vdata(self))
  let self = QIconEngine(h: self)
  var virtualReturn = vtbl[].key(self)
  var virtualReturn_copy = cast[cstring](if len(virtualReturn) > 0: c_malloc(csize_t(len(virtualReturn))) else: nil)
  if len(virtualReturn) > 0: copyMem(cast[pointer](virtualReturn_copy), addr virtualReturn[0], csize_t(len(virtualReturn)))
  struct_miqt_string(data: virtualReturn_copy, len: csize_t(len(virtualReturn)))

proc cQIconEngine_vtable_callback_clone(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QIconEngineVTable](fcQIconEngine_vdata(self))
  let self = QIconEngine(h: self)
  var virtualReturn = vtbl[].clone(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QIconEngineread*(self: gen_qiconengine_types.QIconEngine, inVal: gen_qdatastream_types.QDataStream): bool =
  fcQIconEngine_virtualbase_read(self.h, inVal.h)

proc cQIconEngine_vtable_callback_read(self: pointer, inVal: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QIconEngineVTable](fcQIconEngine_vdata(self))
  let self = QIconEngine(h: self)
  let slotval1 = gen_qdatastream_types.QDataStream(h: inVal, owned: false)
  var virtualReturn = vtbl[].read(self, slotval1)
  virtualReturn

proc QIconEnginewrite*(self: gen_qiconengine_types.QIconEngine, outVal: gen_qdatastream_types.QDataStream): bool =
  fcQIconEngine_virtualbase_write(self.h, outVal.h)

proc cQIconEngine_vtable_callback_write(self: pointer, outVal: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QIconEngineVTable](fcQIconEngine_vdata(self))
  let self = QIconEngine(h: self)
  let slotval1 = gen_qdatastream_types.QDataStream(h: outVal, owned: false)
  var virtualReturn = vtbl[].write(self, slotval1)
  virtualReturn

proc QIconEngineavailableSizes*(self: gen_qiconengine_types.QIconEngine, mode: cint, state: cint): seq[gen_qsize_types.QSize] =
  var v_ma = fcQIconEngine_virtualbase_availableSizes(self.h, cint(mode), cint(state))
  var vx_ret = newSeq[gen_qsize_types.QSize](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qsize_types.QSize(h: v_outCast[i], owned: true)
  c_free(v_ma.data)
  vx_ret

proc cQIconEngine_vtable_callback_availableSizes(self: pointer, mode: cint, state: cint): struct_miqt_array {.cdecl.} =
  let vtbl = cast[ptr QIconEngineVTable](fcQIconEngine_vdata(self))
  let self = QIconEngine(h: self)
  let slotval1 = cint(mode)
  let slotval2 = cint(state)
  var virtualReturn = vtbl[].availableSizes(self, slotval1, slotval2)
  var virtualReturn_CArray = cast[ptr UncheckedArray[pointer]](if len(virtualReturn) > 0: c_malloc(c_sizet(sizeof(pointer) * len(virtualReturn))) else: nil)
  for i in 0..<len(virtualReturn):
    virtualReturn[i].owned = false # TODO move?
    let virtualReturn_i_h = virtualReturn[i].h
    virtualReturn[i].h = nil
    virtualReturn_CArray[i] = virtualReturn_i_h

  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))

proc QIconEngineiconName*(self: gen_qiconengine_types.QIconEngine): string =
  let v_ms = fcQIconEngine_virtualbase_iconName(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc cQIconEngine_vtable_callback_iconName(self: pointer): struct_miqt_string {.cdecl.} =
  let vtbl = cast[ptr QIconEngineVTable](fcQIconEngine_vdata(self))
  let self = QIconEngine(h: self)
  var virtualReturn = vtbl[].iconName(self)
  var virtualReturn_copy = cast[cstring](if len(virtualReturn) > 0: c_malloc(csize_t(len(virtualReturn))) else: nil)
  if len(virtualReturn) > 0: copyMem(cast[pointer](virtualReturn_copy), addr virtualReturn[0], csize_t(len(virtualReturn)))
  struct_miqt_string(data: virtualReturn_copy, len: csize_t(len(virtualReturn)))

proc QIconEngineisNull*(self: gen_qiconengine_types.QIconEngine): bool =
  fcQIconEngine_virtualbase_isNull(self.h)

proc cQIconEngine_vtable_callback_isNull(self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QIconEngineVTable](fcQIconEngine_vdata(self))
  let self = QIconEngine(h: self)
  var virtualReturn = vtbl[].isNull(self)
  virtualReturn

proc QIconEnginescaledPixmap*(self: gen_qiconengine_types.QIconEngine, size: gen_qsize_types.QSize, mode: cint, state: cint, scale: float64): gen_qpixmap_types.QPixmap =
  gen_qpixmap_types.QPixmap(h: fcQIconEngine_virtualbase_scaledPixmap(self.h, size.h, cint(mode), cint(state), scale), owned: true)

proc cQIconEngine_vtable_callback_scaledPixmap(self: pointer, size: pointer, mode: cint, state: cint, scale: float64): pointer {.cdecl.} =
  let vtbl = cast[ptr QIconEngineVTable](fcQIconEngine_vdata(self))
  let self = QIconEngine(h: self)
  let slotval1 = gen_qsize_types.QSize(h: size, owned: false)
  let slotval2 = cint(mode)
  let slotval3 = cint(state)
  let slotval4 = scale
  var virtualReturn = vtbl[].scaledPixmap(self, slotval1, slotval2, slotval3, slotval4)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QIconEnginevirtualHook*(self: gen_qiconengine_types.QIconEngine, id: cint, data: pointer): void =
  fcQIconEngine_virtualbase_virtualHook(self.h, id, data)

proc cQIconEngine_vtable_callback_virtualHook(self: pointer, id: cint, data: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QIconEngineVTable](fcQIconEngine_vdata(self))
  let self = QIconEngine(h: self)
  let slotval1 = id
  let slotval2 = data
  vtbl[].virtualHook(self, slotval1, slotval2)

type VirtualQIconEngine* {.inheritable.} = ref object of QIconEngine
  vtbl*: cQIconEngineVTable
method paint*(self: VirtualQIconEngine, painter: gen_qpainter_types.QPainter, rect: gen_qrect_types.QRect, mode: cint, state: cint): void {.base.} =
  raiseAssert("missing implementation of QIconEngine_virtualbase_paint")
proc cQIconEngine_method_callback_paint(self: pointer, painter: pointer, rect: pointer, mode: cint, state: cint): void {.cdecl.} =
  let inst = cast[VirtualQIconEngine](fcQIconEngine_vdata(self))
  let slotval1 = gen_qpainter_types.QPainter(h: painter, owned: false)
  let slotval2 = gen_qrect_types.QRect(h: rect, owned: false)
  let slotval3 = cint(mode)
  let slotval4 = cint(state)
  inst.paint(slotval1, slotval2, slotval3, slotval4)

method actualSize*(self: VirtualQIconEngine, size: gen_qsize_types.QSize, mode: cint, state: cint): gen_qsize_types.QSize {.base.} =
  QIconEngineactualSize(self[], size, mode, state)
proc cQIconEngine_method_callback_actualSize(self: pointer, size: pointer, mode: cint, state: cint): pointer {.cdecl.} =
  let inst = cast[VirtualQIconEngine](fcQIconEngine_vdata(self))
  let slotval1 = gen_qsize_types.QSize(h: size, owned: false)
  let slotval2 = cint(mode)
  let slotval3 = cint(state)
  var virtualReturn = inst.actualSize(slotval1, slotval2, slotval3)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method pixmap*(self: VirtualQIconEngine, size: gen_qsize_types.QSize, mode: cint, state: cint): gen_qpixmap_types.QPixmap {.base.} =
  QIconEnginepixmap(self[], size, mode, state)
proc cQIconEngine_method_callback_pixmap(self: pointer, size: pointer, mode: cint, state: cint): pointer {.cdecl.} =
  let inst = cast[VirtualQIconEngine](fcQIconEngine_vdata(self))
  let slotval1 = gen_qsize_types.QSize(h: size, owned: false)
  let slotval2 = cint(mode)
  let slotval3 = cint(state)
  var virtualReturn = inst.pixmap(slotval1, slotval2, slotval3)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method addPixmap*(self: VirtualQIconEngine, pixmap: gen_qpixmap_types.QPixmap, mode: cint, state: cint): void {.base.} =
  QIconEngineaddPixmap(self[], pixmap, mode, state)
proc cQIconEngine_method_callback_addPixmap(self: pointer, pixmap: pointer, mode: cint, state: cint): void {.cdecl.} =
  let inst = cast[VirtualQIconEngine](fcQIconEngine_vdata(self))
  let slotval1 = gen_qpixmap_types.QPixmap(h: pixmap, owned: false)
  let slotval2 = cint(mode)
  let slotval3 = cint(state)
  inst.addPixmap(slotval1, slotval2, slotval3)

method addFile*(self: VirtualQIconEngine, fileName: openArray[char], size: gen_qsize_types.QSize, mode: cint, state: cint): void {.base.} =
  QIconEngineaddFile(self[], fileName, size, mode, state)
proc cQIconEngine_method_callback_addFile(self: pointer, fileName: struct_miqt_string, size: pointer, mode: cint, state: cint): void {.cdecl.} =
  let inst = cast[VirtualQIconEngine](fcQIconEngine_vdata(self))
  let vfileName_ms = fileName
  let vfileNamex_ret = string.fromBytes(vfileName_ms)
  c_free(vfileName_ms.data)
  let slotval1 = vfileNamex_ret
  let slotval2 = gen_qsize_types.QSize(h: size, owned: false)
  let slotval3 = cint(mode)
  let slotval4 = cint(state)
  inst.addFile(slotval1, slotval2, slotval3, slotval4)

method key*(self: VirtualQIconEngine): string {.base.} =
  QIconEnginekey(self[])
proc cQIconEngine_method_callback_key(self: pointer): struct_miqt_string {.cdecl.} =
  let inst = cast[VirtualQIconEngine](fcQIconEngine_vdata(self))
  var virtualReturn = inst.key()
  var virtualReturn_copy = cast[cstring](if len(virtualReturn) > 0: c_malloc(csize_t(len(virtualReturn))) else: nil)
  if len(virtualReturn) > 0: copyMem(cast[pointer](virtualReturn_copy), addr virtualReturn[0], csize_t(len(virtualReturn)))
  struct_miqt_string(data: virtualReturn_copy, len: csize_t(len(virtualReturn)))

method clone*(self: VirtualQIconEngine): gen_qiconengine_types.QIconEngine {.base.} =
  raiseAssert("missing implementation of QIconEngine_virtualbase_clone")
proc cQIconEngine_method_callback_clone(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQIconEngine](fcQIconEngine_vdata(self))
  var virtualReturn = inst.clone()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method read*(self: VirtualQIconEngine, inVal: gen_qdatastream_types.QDataStream): bool {.base.} =
  QIconEngineread(self[], inVal)
proc cQIconEngine_method_callback_read(self: pointer, inVal: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQIconEngine](fcQIconEngine_vdata(self))
  let slotval1 = gen_qdatastream_types.QDataStream(h: inVal, owned: false)
  var virtualReturn = inst.read(slotval1)
  virtualReturn

method write*(self: VirtualQIconEngine, outVal: gen_qdatastream_types.QDataStream): bool {.base.} =
  QIconEnginewrite(self[], outVal)
proc cQIconEngine_method_callback_write(self: pointer, outVal: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQIconEngine](fcQIconEngine_vdata(self))
  let slotval1 = gen_qdatastream_types.QDataStream(h: outVal, owned: false)
  var virtualReturn = inst.write(slotval1)
  virtualReturn

method availableSizes*(self: VirtualQIconEngine, mode: cint, state: cint): seq[gen_qsize_types.QSize] {.base.} =
  QIconEngineavailableSizes(self[], mode, state)
proc cQIconEngine_method_callback_availableSizes(self: pointer, mode: cint, state: cint): struct_miqt_array {.cdecl.} =
  let inst = cast[VirtualQIconEngine](fcQIconEngine_vdata(self))
  let slotval1 = cint(mode)
  let slotval2 = cint(state)
  var virtualReturn = inst.availableSizes(slotval1, slotval2)
  var virtualReturn_CArray = cast[ptr UncheckedArray[pointer]](if len(virtualReturn) > 0: c_malloc(c_sizet(sizeof(pointer) * len(virtualReturn))) else: nil)
  for i in 0..<len(virtualReturn):
    virtualReturn[i].owned = false # TODO move?
    let virtualReturn_i_h = virtualReturn[i].h
    virtualReturn[i].h = nil
    virtualReturn_CArray[i] = virtualReturn_i_h

  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))

method iconName*(self: VirtualQIconEngine): string {.base.} =
  QIconEngineiconName(self[])
proc cQIconEngine_method_callback_iconName(self: pointer): struct_miqt_string {.cdecl.} =
  let inst = cast[VirtualQIconEngine](fcQIconEngine_vdata(self))
  var virtualReturn = inst.iconName()
  var virtualReturn_copy = cast[cstring](if len(virtualReturn) > 0: c_malloc(csize_t(len(virtualReturn))) else: nil)
  if len(virtualReturn) > 0: copyMem(cast[pointer](virtualReturn_copy), addr virtualReturn[0], csize_t(len(virtualReturn)))
  struct_miqt_string(data: virtualReturn_copy, len: csize_t(len(virtualReturn)))

method isNull*(self: VirtualQIconEngine): bool {.base.} =
  QIconEngineisNull(self[])
proc cQIconEngine_method_callback_isNull(self: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQIconEngine](fcQIconEngine_vdata(self))
  var virtualReturn = inst.isNull()
  virtualReturn

method scaledPixmap*(self: VirtualQIconEngine, size: gen_qsize_types.QSize, mode: cint, state: cint, scale: float64): gen_qpixmap_types.QPixmap {.base.} =
  QIconEnginescaledPixmap(self[], size, mode, state, scale)
proc cQIconEngine_method_callback_scaledPixmap(self: pointer, size: pointer, mode: cint, state: cint, scale: float64): pointer {.cdecl.} =
  let inst = cast[VirtualQIconEngine](fcQIconEngine_vdata(self))
  let slotval1 = gen_qsize_types.QSize(h: size, owned: false)
  let slotval2 = cint(mode)
  let slotval3 = cint(state)
  let slotval4 = scale
  var virtualReturn = inst.scaledPixmap(slotval1, slotval2, slotval3, slotval4)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method virtualHook*(self: VirtualQIconEngine, id: cint, data: pointer): void {.base.} =
  QIconEnginevirtualHook(self[], id, data)
proc cQIconEngine_method_callback_virtualHook(self: pointer, id: cint, data: pointer): void {.cdecl.} =
  let inst = cast[VirtualQIconEngine](fcQIconEngine_vdata(self))
  let slotval1 = id
  let slotval2 = data
  inst.virtualHook(slotval1, slotval2)

proc create*(T: type gen_qiconengine_types.QIconEngine,
    vtbl: ref QIconEngineVTable = nil): gen_qiconengine_types.QIconEngine =
  let vtbl = if vtbl == nil: new QIconEngineVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QIconEngineVTable](fcQIconEngine_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].paint):
    vtbl[].vtbl.paint = cQIconEngine_vtable_callback_paint
  if not isNil(vtbl[].actualSize):
    vtbl[].vtbl.actualSize = cQIconEngine_vtable_callback_actualSize
  if not isNil(vtbl[].pixmap):
    vtbl[].vtbl.pixmap = cQIconEngine_vtable_callback_pixmap
  if not isNil(vtbl[].addPixmap):
    vtbl[].vtbl.addPixmap = cQIconEngine_vtable_callback_addPixmap
  if not isNil(vtbl[].addFile):
    vtbl[].vtbl.addFile = cQIconEngine_vtable_callback_addFile
  if not isNil(vtbl[].key):
    vtbl[].vtbl.key = cQIconEngine_vtable_callback_key
  if not isNil(vtbl[].clone):
    vtbl[].vtbl.clone = cQIconEngine_vtable_callback_clone
  if not isNil(vtbl[].read):
    vtbl[].vtbl.read = cQIconEngine_vtable_callback_read
  if not isNil(vtbl[].write):
    vtbl[].vtbl.write = cQIconEngine_vtable_callback_write
  if not isNil(vtbl[].availableSizes):
    vtbl[].vtbl.availableSizes = cQIconEngine_vtable_callback_availableSizes
  if not isNil(vtbl[].iconName):
    vtbl[].vtbl.iconName = cQIconEngine_vtable_callback_iconName
  if not isNil(vtbl[].isNull):
    vtbl[].vtbl.isNull = cQIconEngine_vtable_callback_isNull
  if not isNil(vtbl[].scaledPixmap):
    vtbl[].vtbl.scaledPixmap = cQIconEngine_vtable_callback_scaledPixmap
  if not isNil(vtbl[].virtualHook):
    vtbl[].vtbl.virtualHook = cQIconEngine_vtable_callback_virtualHook
  gen_qiconengine_types.QIconEngine(h: fcQIconEngine_new(addr(vtbl[].vtbl), addr(vtbl[])), owned: true)

const cQIconEngine_mvtbl = cQIconEngineVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQIconEngine()[])](self.fcQIconEngine_vtbl())
    inst[].h = nil
    inst[].owned = false,
  paint: cQIconEngine_method_callback_paint,
  actualSize: cQIconEngine_method_callback_actualSize,
  pixmap: cQIconEngine_method_callback_pixmap,
  addPixmap: cQIconEngine_method_callback_addPixmap,
  addFile: cQIconEngine_method_callback_addFile,
  key: cQIconEngine_method_callback_key,
  clone: cQIconEngine_method_callback_clone,
  read: cQIconEngine_method_callback_read,
  write: cQIconEngine_method_callback_write,
  availableSizes: cQIconEngine_method_callback_availableSizes,
  iconName: cQIconEngine_method_callback_iconName,
  isNull: cQIconEngine_method_callback_isNull,
  scaledPixmap: cQIconEngine_method_callback_scaledPixmap,
  virtualHook: cQIconEngine_method_callback_virtualHook,
)
proc create*(T: type gen_qiconengine_types.QIconEngine,
    inst: VirtualQIconEngine) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQIconEngine_new(addr(cQIconEngine_mvtbl), addr(inst[]))
  inst[].owned = true

proc operatorAssign*(self: gen_qiconengine_types.QIconEngineScaledPixmapArgument, param1: gen_qiconengine_types.QIconEngineScaledPixmapArgument): void =
  fcQIconEngineScaledPixmapArgument_operatorAssign(self.h, param1.h)

proc create*(T: type gen_qiconengine_types.QIconEngineScaledPixmapArgument,
    param1: gen_qiconengine_types.QIconEngineScaledPixmapArgument): gen_qiconengine_types.QIconEngineScaledPixmapArgument =
  gen_qiconengine_types.QIconEngineScaledPixmapArgument(h: fcQIconEngineScaledPixmapArgument_new(param1.h), owned: true)

