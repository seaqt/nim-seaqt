import ./Qt5Gui_libs

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

const cflags = gorge("pkg-config --cflags Qt5Gui")  & " -fPIC"
{.compile("gen_qpicture.cpp", cflags).}


import ./gen_qpicture_types
export gen_qpicture_types

import
  ../QtCore/gen_qiodevice_types,
  ../QtCore/gen_qpoint_types,
  ../QtCore/gen_qrect_types,
  ./gen_qpaintdevice,
  ./gen_qpaintengine_types,
  ./gen_qpainter_types
export
  gen_qiodevice_types,
  gen_qpoint_types,
  gen_qrect_types,
  gen_qpaintdevice,
  gen_qpaintengine_types,
  gen_qpainter_types

type cQPicture*{.exportc: "QPicture", incompleteStruct.} = object
type cQPictureIO*{.exportc: "QPictureIO", incompleteStruct.} = object

proc fcQPicture_new(): ptr cQPicture {.importc: "QPicture_new".}
proc fcQPicture_new2(param1: pointer): ptr cQPicture {.importc: "QPicture_new2".}
proc fcQPicture_new3(formatVersion: cint): ptr cQPicture {.importc: "QPicture_new3".}
proc fcQPicture_isNull(self: pointer, ): bool {.importc: "QPicture_isNull".}
proc fcQPicture_devType(self: pointer, ): cint {.importc: "QPicture_devType".}
proc fcQPicture_size(self: pointer, ): cuint {.importc: "QPicture_size".}
proc fcQPicture_data(self: pointer, ): cstring {.importc: "QPicture_data".}
proc fcQPicture_setData(self: pointer, data: cstring, size: cuint): void {.importc: "QPicture_setData".}
proc fcQPicture_play(self: pointer, p: pointer): bool {.importc: "QPicture_play".}
proc fcQPicture_load(self: pointer, dev: pointer): bool {.importc: "QPicture_load".}
proc fcQPicture_loadWithFileName(self: pointer, fileName: struct_miqt_string): bool {.importc: "QPicture_loadWithFileName".}
proc fcQPicture_save(self: pointer, dev: pointer): bool {.importc: "QPicture_save".}
proc fcQPicture_saveWithFileName(self: pointer, fileName: struct_miqt_string): bool {.importc: "QPicture_saveWithFileName".}
proc fcQPicture_boundingRect(self: pointer, ): pointer {.importc: "QPicture_boundingRect".}
proc fcQPicture_setBoundingRect(self: pointer, r: pointer): void {.importc: "QPicture_setBoundingRect".}
proc fcQPicture_operatorAssign(self: pointer, p: pointer): void {.importc: "QPicture_operatorAssign".}
proc fcQPicture_swap(self: pointer, other: pointer): void {.importc: "QPicture_swap".}
proc fcQPicture_detach(self: pointer, ): void {.importc: "QPicture_detach".}
proc fcQPicture_isDetached(self: pointer, ): bool {.importc: "QPicture_isDetached".}
proc fcQPicture_pictureFormat(fileName: struct_miqt_string): cstring {.importc: "QPicture_pictureFormat".}
proc fcQPicture_inputFormats(): struct_miqt_array {.importc: "QPicture_inputFormats".}
proc fcQPicture_outputFormats(): struct_miqt_array {.importc: "QPicture_outputFormats".}
proc fcQPicture_inputFormatList(): struct_miqt_array {.importc: "QPicture_inputFormatList".}
proc fcQPicture_outputFormatList(): struct_miqt_array {.importc: "QPicture_outputFormatList".}
proc fcQPicture_paintEngine(self: pointer, ): pointer {.importc: "QPicture_paintEngine".}
proc fcQPicture_load2(self: pointer, dev: pointer, format: cstring): bool {.importc: "QPicture_load2".}
proc fcQPicture_load22(self: pointer, fileName: struct_miqt_string, format: cstring): bool {.importc: "QPicture_load22".}
proc fcQPicture_save2(self: pointer, dev: pointer, format: cstring): bool {.importc: "QPicture_save2".}
proc fcQPicture_save22(self: pointer, fileName: struct_miqt_string, format: cstring): bool {.importc: "QPicture_save22".}
proc fQPicture_virtualbase_devType(self: pointer, ): cint{.importc: "QPicture_virtualbase_devType".}
proc fcQPicture_override_virtual_devType(self: pointer, slot: int) {.importc: "QPicture_override_virtual_devType".}
proc fQPicture_virtualbase_setData(self: pointer, data: cstring, size: cuint): void{.importc: "QPicture_virtualbase_setData".}
proc fcQPicture_override_virtual_setData(self: pointer, slot: int) {.importc: "QPicture_override_virtual_setData".}
proc fQPicture_virtualbase_paintEngine(self: pointer, ): pointer{.importc: "QPicture_virtualbase_paintEngine".}
proc fcQPicture_override_virtual_paintEngine(self: pointer, slot: int) {.importc: "QPicture_override_virtual_paintEngine".}
proc fQPicture_virtualbase_metric(self: pointer, m: cint): cint{.importc: "QPicture_virtualbase_metric".}
proc fcQPicture_override_virtual_metric(self: pointer, slot: int) {.importc: "QPicture_override_virtual_metric".}
proc fQPicture_virtualbase_initPainter(self: pointer, painter: pointer): void{.importc: "QPicture_virtualbase_initPainter".}
proc fcQPicture_override_virtual_initPainter(self: pointer, slot: int) {.importc: "QPicture_override_virtual_initPainter".}
proc fQPicture_virtualbase_redirected(self: pointer, offset: pointer): pointer{.importc: "QPicture_virtualbase_redirected".}
proc fcQPicture_override_virtual_redirected(self: pointer, slot: int) {.importc: "QPicture_override_virtual_redirected".}
proc fQPicture_virtualbase_sharedPainter(self: pointer, ): pointer{.importc: "QPicture_virtualbase_sharedPainter".}
proc fcQPicture_override_virtual_sharedPainter(self: pointer, slot: int) {.importc: "QPicture_override_virtual_sharedPainter".}
proc fcQPicture_delete(self: pointer) {.importc: "QPicture_delete".}
proc fcQPictureIO_new(): ptr cQPictureIO {.importc: "QPictureIO_new".}
proc fcQPictureIO_new2(ioDevice: pointer, format: cstring): ptr cQPictureIO {.importc: "QPictureIO_new2".}
proc fcQPictureIO_new3(fileName: struct_miqt_string, format: cstring): ptr cQPictureIO {.importc: "QPictureIO_new3".}
proc fcQPictureIO_picture(self: pointer, ): pointer {.importc: "QPictureIO_picture".}
proc fcQPictureIO_status(self: pointer, ): cint {.importc: "QPictureIO_status".}
proc fcQPictureIO_format(self: pointer, ): cstring {.importc: "QPictureIO_format".}
proc fcQPictureIO_ioDevice(self: pointer, ): pointer {.importc: "QPictureIO_ioDevice".}
proc fcQPictureIO_fileName(self: pointer, ): struct_miqt_string {.importc: "QPictureIO_fileName".}
proc fcQPictureIO_quality(self: pointer, ): cint {.importc: "QPictureIO_quality".}
proc fcQPictureIO_description(self: pointer, ): struct_miqt_string {.importc: "QPictureIO_description".}
proc fcQPictureIO_parameters(self: pointer, ): cstring {.importc: "QPictureIO_parameters".}
proc fcQPictureIO_gamma(self: pointer, ): float32 {.importc: "QPictureIO_gamma".}
proc fcQPictureIO_setPicture(self: pointer, picture: pointer): void {.importc: "QPictureIO_setPicture".}
proc fcQPictureIO_setStatus(self: pointer, status: cint): void {.importc: "QPictureIO_setStatus".}
proc fcQPictureIO_setFormat(self: pointer, format: cstring): void {.importc: "QPictureIO_setFormat".}
proc fcQPictureIO_setIODevice(self: pointer, iODevice: pointer): void {.importc: "QPictureIO_setIODevice".}
proc fcQPictureIO_setFileName(self: pointer, fileName: struct_miqt_string): void {.importc: "QPictureIO_setFileName".}
proc fcQPictureIO_setQuality(self: pointer, quality: cint): void {.importc: "QPictureIO_setQuality".}
proc fcQPictureIO_setDescription(self: pointer, description: struct_miqt_string): void {.importc: "QPictureIO_setDescription".}
proc fcQPictureIO_setParameters(self: pointer, parameters: cstring): void {.importc: "QPictureIO_setParameters".}
proc fcQPictureIO_setGamma(self: pointer, gamma: float32): void {.importc: "QPictureIO_setGamma".}
proc fcQPictureIO_read(self: pointer, ): bool {.importc: "QPictureIO_read".}
proc fcQPictureIO_write(self: pointer, ): bool {.importc: "QPictureIO_write".}
proc fcQPictureIO_pictureFormat(fileName: struct_miqt_string): struct_miqt_string {.importc: "QPictureIO_pictureFormat".}
proc fcQPictureIO_pictureFormatWithQIODevice(param1: pointer): struct_miqt_string {.importc: "QPictureIO_pictureFormatWithQIODevice".}
proc fcQPictureIO_inputFormats(): struct_miqt_array {.importc: "QPictureIO_inputFormats".}
proc fcQPictureIO_outputFormats(): struct_miqt_array {.importc: "QPictureIO_outputFormats".}
proc fcQPictureIO_delete(self: pointer) {.importc: "QPictureIO_delete".}


func init*(T: type gen_qpicture_types.QPicture, h: ptr cQPicture): gen_qpicture_types.QPicture =
  T(h: h)
proc create*(T: type gen_qpicture_types.QPicture, ): gen_qpicture_types.QPicture =
  gen_qpicture_types.QPicture.init(fcQPicture_new())

proc create*(T: type gen_qpicture_types.QPicture, param1: gen_qpicture_types.QPicture): gen_qpicture_types.QPicture =
  gen_qpicture_types.QPicture.init(fcQPicture_new2(param1.h))

proc create*(T: type gen_qpicture_types.QPicture, formatVersion: cint): gen_qpicture_types.QPicture =
  gen_qpicture_types.QPicture.init(fcQPicture_new3(formatVersion))

proc isNull*(self: gen_qpicture_types.QPicture, ): bool =
  fcQPicture_isNull(self.h)

proc devType*(self: gen_qpicture_types.QPicture, ): cint =
  fcQPicture_devType(self.h)

proc size*(self: gen_qpicture_types.QPicture, ): cuint =
  fcQPicture_size(self.h)

proc data*(self: gen_qpicture_types.QPicture, ): cstring =
  (fcQPicture_data(self.h))

proc setData*(self: gen_qpicture_types.QPicture, data: cstring, size: cuint): void =
  fcQPicture_setData(self.h, data, size)

proc play*(self: gen_qpicture_types.QPicture, p: gen_qpainter_types.QPainter): bool =
  fcQPicture_play(self.h, p.h)

proc load*(self: gen_qpicture_types.QPicture, dev: gen_qiodevice_types.QIODevice): bool =
  fcQPicture_load(self.h, dev.h)

proc load*(self: gen_qpicture_types.QPicture, fileName: string): bool =
  fcQPicture_loadWithFileName(self.h, struct_miqt_string(data: fileName, len: csize_t(len(fileName))))

proc save*(self: gen_qpicture_types.QPicture, dev: gen_qiodevice_types.QIODevice): bool =
  fcQPicture_save(self.h, dev.h)

proc save*(self: gen_qpicture_types.QPicture, fileName: string): bool =
  fcQPicture_saveWithFileName(self.h, struct_miqt_string(data: fileName, len: csize_t(len(fileName))))

proc boundingRect*(self: gen_qpicture_types.QPicture, ): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fcQPicture_boundingRect(self.h))

proc setBoundingRect*(self: gen_qpicture_types.QPicture, r: gen_qrect_types.QRect): void =
  fcQPicture_setBoundingRect(self.h, r.h)

proc operatorAssign*(self: gen_qpicture_types.QPicture, p: gen_qpicture_types.QPicture): void =
  fcQPicture_operatorAssign(self.h, p.h)

proc swap*(self: gen_qpicture_types.QPicture, other: gen_qpicture_types.QPicture): void =
  fcQPicture_swap(self.h, other.h)

proc detach*(self: gen_qpicture_types.QPicture, ): void =
  fcQPicture_detach(self.h)

proc isDetached*(self: gen_qpicture_types.QPicture, ): bool =
  fcQPicture_isDetached(self.h)

proc pictureFormat*(_: type gen_qpicture_types.QPicture, fileName: string): cstring =
  (fcQPicture_pictureFormat(struct_miqt_string(data: fileName, len: csize_t(len(fileName)))))

proc inputFormats*(_: type gen_qpicture_types.QPicture, ): seq[seq[byte]] =
  var v_ma = fcQPicture_inputFormats()
  var vx_ret = newSeq[seq[byte]](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    var vx_lv_bytearray = v_outCast[i]
    var vx_lvx_ret = @(toOpenArrayByte(vx_lv_bytearray.data, 0, int(vx_lv_bytearray.len)-1))
    c_free(vx_lv_bytearray.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc outputFormats*(_: type gen_qpicture_types.QPicture, ): seq[seq[byte]] =
  var v_ma = fcQPicture_outputFormats()
  var vx_ret = newSeq[seq[byte]](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    var vx_lv_bytearray = v_outCast[i]
    var vx_lvx_ret = @(toOpenArrayByte(vx_lv_bytearray.data, 0, int(vx_lv_bytearray.len)-1))
    c_free(vx_lv_bytearray.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc inputFormatList*(_: type gen_qpicture_types.QPicture, ): seq[string] =
  var v_ma = fcQPicture_inputFormatList()
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc outputFormatList*(_: type gen_qpicture_types.QPicture, ): seq[string] =
  var v_ma = fcQPicture_outputFormatList()
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc paintEngine*(self: gen_qpicture_types.QPicture, ): gen_qpaintengine_types.QPaintEngine =
  gen_qpaintengine_types.QPaintEngine(h: fcQPicture_paintEngine(self.h))

proc load*(self: gen_qpicture_types.QPicture, dev: gen_qiodevice_types.QIODevice, format: cstring): bool =
  fcQPicture_load2(self.h, dev.h, format)

proc load*(self: gen_qpicture_types.QPicture, fileName: string, format: cstring): bool =
  fcQPicture_load22(self.h, struct_miqt_string(data: fileName, len: csize_t(len(fileName))), format)

proc save*(self: gen_qpicture_types.QPicture, dev: gen_qiodevice_types.QIODevice, format: cstring): bool =
  fcQPicture_save2(self.h, dev.h, format)

proc save*(self: gen_qpicture_types.QPicture, fileName: string, format: cstring): bool =
  fcQPicture_save22(self.h, struct_miqt_string(data: fileName, len: csize_t(len(fileName))), format)

proc QPicturedevType*(self: gen_qpicture_types.QPicture, ): cint =
  fQPicture_virtualbase_devType(self.h)

type QPicturedevTypeProc* = proc(): cint
proc ondevType*(self: gen_qpicture_types.QPicture, slot: QPicturedevTypeProc) =
  # TODO check subclass
  var tmp = new QPicturedevTypeProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPicture_override_virtual_devType(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPicture_devType(self: ptr cQPicture, slot: int): cint {.exportc: "miqt_exec_callback_QPicture_devType ".} =
  var nimfunc = cast[ptr QPicturedevTypeProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QPicturesetData*(self: gen_qpicture_types.QPicture, data: cstring, size: cuint): void =
  fQPicture_virtualbase_setData(self.h, data, size)

type QPicturesetDataProc* = proc(data: cstring, size: cuint): void
proc onsetData*(self: gen_qpicture_types.QPicture, slot: QPicturesetDataProc) =
  # TODO check subclass
  var tmp = new QPicturesetDataProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPicture_override_virtual_setData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPicture_setData(self: ptr cQPicture, slot: int, data: cstring, size: cuint): void {.exportc: "miqt_exec_callback_QPicture_setData ".} =
  var nimfunc = cast[ptr QPicturesetDataProc](cast[pointer](slot))
  let slotval1 = (data)

  let slotval2 = size


  nimfunc[](slotval1, slotval2)
proc QPicturepaintEngine*(self: gen_qpicture_types.QPicture, ): gen_qpaintengine_types.QPaintEngine =
  gen_qpaintengine_types.QPaintEngine(h: fQPicture_virtualbase_paintEngine(self.h))

type QPicturepaintEngineProc* = proc(): gen_qpaintengine_types.QPaintEngine
proc onpaintEngine*(self: gen_qpicture_types.QPicture, slot: QPicturepaintEngineProc) =
  # TODO check subclass
  var tmp = new QPicturepaintEngineProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPicture_override_virtual_paintEngine(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPicture_paintEngine(self: ptr cQPicture, slot: int): pointer {.exportc: "miqt_exec_callback_QPicture_paintEngine ".} =
  var nimfunc = cast[ptr QPicturepaintEngineProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QPicturemetric*(self: gen_qpicture_types.QPicture, m: cint): cint =
  fQPicture_virtualbase_metric(self.h, cint(m))

type QPicturemetricProc* = proc(m: cint): cint
proc onmetric*(self: gen_qpicture_types.QPicture, slot: QPicturemetricProc) =
  # TODO check subclass
  var tmp = new QPicturemetricProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPicture_override_virtual_metric(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPicture_metric(self: ptr cQPicture, slot: int, m: cint): cint {.exportc: "miqt_exec_callback_QPicture_metric ".} =
  var nimfunc = cast[ptr QPicturemetricProc](cast[pointer](slot))
  let slotval1 = cint(m)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QPictureinitPainter*(self: gen_qpicture_types.QPicture, painter: gen_qpainter_types.QPainter): void =
  fQPicture_virtualbase_initPainter(self.h, painter.h)

type QPictureinitPainterProc* = proc(painter: gen_qpainter_types.QPainter): void
proc oninitPainter*(self: gen_qpicture_types.QPicture, slot: QPictureinitPainterProc) =
  # TODO check subclass
  var tmp = new QPictureinitPainterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPicture_override_virtual_initPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPicture_initPainter(self: ptr cQPicture, slot: int, painter: pointer): void {.exportc: "miqt_exec_callback_QPicture_initPainter ".} =
  var nimfunc = cast[ptr QPictureinitPainterProc](cast[pointer](slot))
  let slotval1 = gen_qpainter_types.QPainter(h: painter)


  nimfunc[](slotval1)
proc QPictureredirected*(self: gen_qpicture_types.QPicture, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice =
  gen_qpaintdevice_types.QPaintDevice(h: fQPicture_virtualbase_redirected(self.h, offset.h))

type QPictureredirectedProc* = proc(offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice
proc onredirected*(self: gen_qpicture_types.QPicture, slot: QPictureredirectedProc) =
  # TODO check subclass
  var tmp = new QPictureredirectedProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPicture_override_virtual_redirected(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPicture_redirected(self: ptr cQPicture, slot: int, offset: pointer): pointer {.exportc: "miqt_exec_callback_QPicture_redirected ".} =
  var nimfunc = cast[ptr QPictureredirectedProc](cast[pointer](slot))
  let slotval1 = gen_qpoint_types.QPoint(h: offset)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QPicturesharedPainter*(self: gen_qpicture_types.QPicture, ): gen_qpainter_types.QPainter =
  gen_qpainter_types.QPainter(h: fQPicture_virtualbase_sharedPainter(self.h))

type QPicturesharedPainterProc* = proc(): gen_qpainter_types.QPainter
proc onsharedPainter*(self: gen_qpicture_types.QPicture, slot: QPicturesharedPainterProc) =
  # TODO check subclass
  var tmp = new QPicturesharedPainterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPicture_override_virtual_sharedPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPicture_sharedPainter(self: ptr cQPicture, slot: int): pointer {.exportc: "miqt_exec_callback_QPicture_sharedPainter ".} =
  var nimfunc = cast[ptr QPicturesharedPainterProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc delete*(self: gen_qpicture_types.QPicture) =
  fcQPicture_delete(self.h)

func init*(T: type gen_qpicture_types.QPictureIO, h: ptr cQPictureIO): gen_qpicture_types.QPictureIO =
  T(h: h)
proc create*(T: type gen_qpicture_types.QPictureIO, ): gen_qpicture_types.QPictureIO =
  gen_qpicture_types.QPictureIO.init(fcQPictureIO_new())

proc create*(T: type gen_qpicture_types.QPictureIO, ioDevice: gen_qiodevice_types.QIODevice, format: cstring): gen_qpicture_types.QPictureIO =
  gen_qpicture_types.QPictureIO.init(fcQPictureIO_new2(ioDevice.h, format))

proc create*(T: type gen_qpicture_types.QPictureIO, fileName: string, format: cstring): gen_qpicture_types.QPictureIO =
  gen_qpicture_types.QPictureIO.init(fcQPictureIO_new3(struct_miqt_string(data: fileName, len: csize_t(len(fileName))), format))

proc picture*(self: gen_qpicture_types.QPictureIO, ): gen_qpicture_types.QPicture =
  gen_qpicture_types.QPicture(h: fcQPictureIO_picture(self.h))

proc status*(self: gen_qpicture_types.QPictureIO, ): cint =
  fcQPictureIO_status(self.h)

proc format*(self: gen_qpicture_types.QPictureIO, ): cstring =
  (fcQPictureIO_format(self.h))

proc ioDevice*(self: gen_qpicture_types.QPictureIO, ): gen_qiodevice_types.QIODevice =
  gen_qiodevice_types.QIODevice(h: fcQPictureIO_ioDevice(self.h))

proc fileName*(self: gen_qpicture_types.QPictureIO, ): string =
  let v_ms = fcQPictureIO_fileName(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc quality*(self: gen_qpicture_types.QPictureIO, ): cint =
  fcQPictureIO_quality(self.h)

proc description*(self: gen_qpicture_types.QPictureIO, ): string =
  let v_ms = fcQPictureIO_description(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc parameters*(self: gen_qpicture_types.QPictureIO, ): cstring =
  (fcQPictureIO_parameters(self.h))

proc gamma*(self: gen_qpicture_types.QPictureIO, ): float32 =
  fcQPictureIO_gamma(self.h)

proc setPicture*(self: gen_qpicture_types.QPictureIO, picture: gen_qpicture_types.QPicture): void =
  fcQPictureIO_setPicture(self.h, picture.h)

proc setStatus*(self: gen_qpicture_types.QPictureIO, status: cint): void =
  fcQPictureIO_setStatus(self.h, status)

proc setFormat*(self: gen_qpicture_types.QPictureIO, format: cstring): void =
  fcQPictureIO_setFormat(self.h, format)

proc setIODevice*(self: gen_qpicture_types.QPictureIO, iODevice: gen_qiodevice_types.QIODevice): void =
  fcQPictureIO_setIODevice(self.h, iODevice.h)

proc setFileName*(self: gen_qpicture_types.QPictureIO, fileName: string): void =
  fcQPictureIO_setFileName(self.h, struct_miqt_string(data: fileName, len: csize_t(len(fileName))))

proc setQuality*(self: gen_qpicture_types.QPictureIO, quality: cint): void =
  fcQPictureIO_setQuality(self.h, quality)

proc setDescription*(self: gen_qpicture_types.QPictureIO, description: string): void =
  fcQPictureIO_setDescription(self.h, struct_miqt_string(data: description, len: csize_t(len(description))))

proc setParameters*(self: gen_qpicture_types.QPictureIO, parameters: cstring): void =
  fcQPictureIO_setParameters(self.h, parameters)

proc setGamma*(self: gen_qpicture_types.QPictureIO, gamma: float32): void =
  fcQPictureIO_setGamma(self.h, gamma)

proc read*(self: gen_qpicture_types.QPictureIO, ): bool =
  fcQPictureIO_read(self.h)

proc write*(self: gen_qpicture_types.QPictureIO, ): bool =
  fcQPictureIO_write(self.h)

proc pictureFormat*(_: type gen_qpicture_types.QPictureIO, fileName: string): seq[byte] =
  var v_bytearray = fcQPictureIO_pictureFormat(struct_miqt_string(data: fileName, len: csize_t(len(fileName))))
  var vx_ret = @(toOpenArrayByte(v_bytearray.data, 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc pictureFormat*(_: type gen_qpicture_types.QPictureIO, param1: gen_qiodevice_types.QIODevice): seq[byte] =
  var v_bytearray = fcQPictureIO_pictureFormatWithQIODevice(param1.h)
  var vx_ret = @(toOpenArrayByte(v_bytearray.data, 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc inputFormats*(_: type gen_qpicture_types.QPictureIO, ): seq[seq[byte]] =
  var v_ma = fcQPictureIO_inputFormats()
  var vx_ret = newSeq[seq[byte]](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    var vx_lv_bytearray = v_outCast[i]
    var vx_lvx_ret = @(toOpenArrayByte(vx_lv_bytearray.data, 0, int(vx_lv_bytearray.len)-1))
    c_free(vx_lv_bytearray.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc outputFormats*(_: type gen_qpicture_types.QPictureIO, ): seq[seq[byte]] =
  var v_ma = fcQPictureIO_outputFormats()
  var vx_ret = newSeq[seq[byte]](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    var vx_lv_bytearray = v_outCast[i]
    var vx_lvx_ret = @(toOpenArrayByte(vx_lv_bytearray.data, 0, int(vx_lv_bytearray.len)-1))
    c_free(vx_lv_bytearray.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc delete*(self: gen_qpicture_types.QPictureIO) =
  fcQPictureIO_delete(self.h)
