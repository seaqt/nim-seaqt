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
{.compile("gen_qpixmap.cpp", cflags).}


import ./gen_qpixmap_types
export gen_qpixmap_types

import
  ../QtCore/gen_qiodevice_types,
  ../QtCore/gen_qpoint_types,
  ../QtCore/gen_qrect_types,
  ../QtCore/gen_qsize_types,
  ../QtCore/gen_qvariant_types,
  ./gen_qbitmap_types,
  ./gen_qcolor_types,
  ./gen_qimage_types,
  ./gen_qimagereader_types,
  ./gen_qpaintdevice,
  ./gen_qpaintengine_types,
  ./gen_qpainter_types,
  ./gen_qregion_types,
  ./gen_qtransform_types
export
  gen_qiodevice_types,
  gen_qpoint_types,
  gen_qrect_types,
  gen_qsize_types,
  gen_qvariant_types,
  gen_qbitmap_types,
  gen_qcolor_types,
  gen_qimage_types,
  gen_qimagereader_types,
  gen_qpaintdevice,
  gen_qpaintengine_types,
  gen_qpainter_types,
  gen_qregion_types,
  gen_qtransform_types

type cQPixmap*{.exportc: "QPixmap", incompleteStruct.} = object

proc fcQPixmap_operatorAssign(self: pointer, param1: pointer): void {.importc: "QPixmap_operatorAssign".}
proc fcQPixmap_swap(self: pointer, other: pointer): void {.importc: "QPixmap_swap".}
proc fcQPixmap_ToQVariant(self: pointer, ): pointer {.importc: "QPixmap_ToQVariant".}
proc fcQPixmap_isNull(self: pointer, ): bool {.importc: "QPixmap_isNull".}
proc fcQPixmap_devType(self: pointer, ): cint {.importc: "QPixmap_devType".}
proc fcQPixmap_width(self: pointer, ): cint {.importc: "QPixmap_width".}
proc fcQPixmap_height(self: pointer, ): cint {.importc: "QPixmap_height".}
proc fcQPixmap_size(self: pointer, ): pointer {.importc: "QPixmap_size".}
proc fcQPixmap_rect(self: pointer, ): pointer {.importc: "QPixmap_rect".}
proc fcQPixmap_depth(self: pointer, ): cint {.importc: "QPixmap_depth".}
proc fcQPixmap_defaultDepth(): cint {.importc: "QPixmap_defaultDepth".}
proc fcQPixmap_fill(self: pointer, ): void {.importc: "QPixmap_fill".}
proc fcQPixmap_mask(self: pointer, ): pointer {.importc: "QPixmap_mask".}
proc fcQPixmap_setMask(self: pointer, mask: pointer): void {.importc: "QPixmap_setMask".}
proc fcQPixmap_devicePixelRatio(self: pointer, ): float64 {.importc: "QPixmap_devicePixelRatio".}
proc fcQPixmap_setDevicePixelRatio(self: pointer, scaleFactor: float64): void {.importc: "QPixmap_setDevicePixelRatio".}
proc fcQPixmap_deviceIndependentSize(self: pointer, ): pointer {.importc: "QPixmap_deviceIndependentSize".}
proc fcQPixmap_hasAlpha(self: pointer, ): bool {.importc: "QPixmap_hasAlpha".}
proc fcQPixmap_hasAlphaChannel(self: pointer, ): bool {.importc: "QPixmap_hasAlphaChannel".}
proc fcQPixmap_createHeuristicMask(self: pointer, ): pointer {.importc: "QPixmap_createHeuristicMask".}
proc fcQPixmap_createMaskFromColor(self: pointer, maskColor: pointer): pointer {.importc: "QPixmap_createMaskFromColor".}
proc fcQPixmap_scaled(self: pointer, w: cint, h: cint): pointer {.importc: "QPixmap_scaled".}
proc fcQPixmap_scaledWithQSize(self: pointer, s: pointer): pointer {.importc: "QPixmap_scaledWithQSize".}
proc fcQPixmap_scaledToWidth(self: pointer, w: cint): pointer {.importc: "QPixmap_scaledToWidth".}
proc fcQPixmap_scaledToHeight(self: pointer, h: cint): pointer {.importc: "QPixmap_scaledToHeight".}
proc fcQPixmap_transformed(self: pointer, param1: pointer): pointer {.importc: "QPixmap_transformed".}
proc fcQPixmap_trueMatrix(m: pointer, w: cint, h: cint): pointer {.importc: "QPixmap_trueMatrix".}
proc fcQPixmap_toImage(self: pointer, ): pointer {.importc: "QPixmap_toImage".}
proc fcQPixmap_fromImage(image: pointer): pointer {.importc: "QPixmap_fromImage".}
proc fcQPixmap_fromImageReader(imageReader: pointer): pointer {.importc: "QPixmap_fromImageReader".}
proc fcQPixmap_load(self: pointer, fileName: struct_miqt_string): bool {.importc: "QPixmap_load".}
proc fcQPixmap_loadFromData(self: pointer, buf: ptr uint8, len: cuint): bool {.importc: "QPixmap_loadFromData".}
proc fcQPixmap_loadFromDataWithData(self: pointer, data: struct_miqt_string): bool {.importc: "QPixmap_loadFromDataWithData".}
proc fcQPixmap_save(self: pointer, fileName: struct_miqt_string): bool {.importc: "QPixmap_save".}
proc fcQPixmap_saveWithDevice(self: pointer, device: pointer): bool {.importc: "QPixmap_saveWithDevice".}
proc fcQPixmap_convertFromImage(self: pointer, img: pointer): bool {.importc: "QPixmap_convertFromImage".}
proc fcQPixmap_copy(self: pointer, x: cint, y: cint, width: cint, height: cint): pointer {.importc: "QPixmap_copy".}
proc fcQPixmap_copy2(self: pointer, ): pointer {.importc: "QPixmap_copy2".}
proc fcQPixmap_scroll(self: pointer, dx: cint, dy: cint, x: cint, y: cint, width: cint, height: cint): void {.importc: "QPixmap_scroll".}
proc fcQPixmap_scroll2(self: pointer, dx: cint, dy: cint, rect: pointer): void {.importc: "QPixmap_scroll2".}
proc fcQPixmap_cacheKey(self: pointer, ): clonglong {.importc: "QPixmap_cacheKey".}
proc fcQPixmap_isDetached(self: pointer, ): bool {.importc: "QPixmap_isDetached".}
proc fcQPixmap_detach(self: pointer, ): void {.importc: "QPixmap_detach".}
proc fcQPixmap_isQBitmap(self: pointer, ): bool {.importc: "QPixmap_isQBitmap".}
proc fcQPixmap_paintEngine(self: pointer, ): pointer {.importc: "QPixmap_paintEngine".}
proc fcQPixmap_operatorNot(self: pointer, ): bool {.importc: "QPixmap_operatorNot".}
proc fcQPixmap_fill1(self: pointer, fillColor: pointer): void {.importc: "QPixmap_fill1".}
proc fcQPixmap_createHeuristicMask1(self: pointer, clipTight: bool): pointer {.importc: "QPixmap_createHeuristicMask1".}
proc fcQPixmap_createMaskFromColor2(self: pointer, maskColor: pointer, mode: cint): pointer {.importc: "QPixmap_createMaskFromColor2".}
proc fcQPixmap_scaled3(self: pointer, w: cint, h: cint, aspectMode: cint): pointer {.importc: "QPixmap_scaled3".}
proc fcQPixmap_scaled4(self: pointer, w: cint, h: cint, aspectMode: cint, mode: cint): pointer {.importc: "QPixmap_scaled4".}
proc fcQPixmap_scaled2(self: pointer, s: pointer, aspectMode: cint): pointer {.importc: "QPixmap_scaled2".}
proc fcQPixmap_scaled32(self: pointer, s: pointer, aspectMode: cint, mode: cint): pointer {.importc: "QPixmap_scaled32".}
proc fcQPixmap_scaledToWidth2(self: pointer, w: cint, mode: cint): pointer {.importc: "QPixmap_scaledToWidth2".}
proc fcQPixmap_scaledToHeight2(self: pointer, h: cint, mode: cint): pointer {.importc: "QPixmap_scaledToHeight2".}
proc fcQPixmap_transformed2(self: pointer, param1: pointer, mode: cint): pointer {.importc: "QPixmap_transformed2".}
proc fcQPixmap_fromImage2(image: pointer, flags: cint): pointer {.importc: "QPixmap_fromImage2".}
proc fcQPixmap_fromImageReader2(imageReader: pointer, flags: cint): pointer {.importc: "QPixmap_fromImageReader2".}
proc fcQPixmap_load2(self: pointer, fileName: struct_miqt_string, format: cstring): bool {.importc: "QPixmap_load2".}
proc fcQPixmap_load3(self: pointer, fileName: struct_miqt_string, format: cstring, flags: cint): bool {.importc: "QPixmap_load3".}
proc fcQPixmap_loadFromData3(self: pointer, buf: ptr uint8, len: cuint, format: cstring): bool {.importc: "QPixmap_loadFromData3".}
proc fcQPixmap_loadFromData4(self: pointer, buf: ptr uint8, len: cuint, format: cstring, flags: cint): bool {.importc: "QPixmap_loadFromData4".}
proc fcQPixmap_loadFromData2(self: pointer, data: struct_miqt_string, format: cstring): bool {.importc: "QPixmap_loadFromData2".}
proc fcQPixmap_loadFromData32(self: pointer, data: struct_miqt_string, format: cstring, flags: cint): bool {.importc: "QPixmap_loadFromData32".}
proc fcQPixmap_save2(self: pointer, fileName: struct_miqt_string, format: cstring): bool {.importc: "QPixmap_save2".}
proc fcQPixmap_save3(self: pointer, fileName: struct_miqt_string, format: cstring, quality: cint): bool {.importc: "QPixmap_save3".}
proc fcQPixmap_save22(self: pointer, device: pointer, format: cstring): bool {.importc: "QPixmap_save22".}
proc fcQPixmap_save32(self: pointer, device: pointer, format: cstring, quality: cint): bool {.importc: "QPixmap_save32".}
proc fcQPixmap_convertFromImage2(self: pointer, img: pointer, flags: cint): bool {.importc: "QPixmap_convertFromImage2".}
proc fcQPixmap_copy1(self: pointer, rect: pointer): pointer {.importc: "QPixmap_copy1".}
proc fcQPixmap_scroll7(self: pointer, dx: cint, dy: cint, x: cint, y: cint, width: cint, height: cint, exposed: pointer): void {.importc: "QPixmap_scroll7".}
proc fcQPixmap_scroll4(self: pointer, dx: cint, dy: cint, rect: pointer, exposed: pointer): void {.importc: "QPixmap_scroll4".}
type cQPixmapVTable = object
  destructor*: proc(vtbl: ptr cQPixmapVTable, self: ptr cQPixmap) {.cdecl, raises:[], gcsafe.}
  devType*: proc(vtbl, self: pointer, ): cint {.cdecl, raises: [], gcsafe.}
  paintEngine*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  metric*: proc(vtbl, self: pointer, param1: cint): cint {.cdecl, raises: [], gcsafe.}
  initPainter*: proc(vtbl, self: pointer, painter: pointer): void {.cdecl, raises: [], gcsafe.}
  redirected*: proc(vtbl, self: pointer, offset: pointer): pointer {.cdecl, raises: [], gcsafe.}
  sharedPainter*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
proc fcQPixmap_virtualbase_devType(self: pointer, ): cint {.importc: "QPixmap_virtualbase_devType".}
proc fcQPixmap_virtualbase_paintEngine(self: pointer, ): pointer {.importc: "QPixmap_virtualbase_paintEngine".}
proc fcQPixmap_virtualbase_metric(self: pointer, param1: cint): cint {.importc: "QPixmap_virtualbase_metric".}
proc fcQPixmap_virtualbase_initPainter(self: pointer, painter: pointer): void {.importc: "QPixmap_virtualbase_initPainter".}
proc fcQPixmap_virtualbase_redirected(self: pointer, offset: pointer): pointer {.importc: "QPixmap_virtualbase_redirected".}
proc fcQPixmap_virtualbase_sharedPainter(self: pointer, ): pointer {.importc: "QPixmap_virtualbase_sharedPainter".}
proc fcQPixmap_new(vtbl: pointer, ): ptr cQPixmap {.importc: "QPixmap_new".}
proc fcQPixmap_new2(vtbl: pointer, w: cint, h: cint): ptr cQPixmap {.importc: "QPixmap_new2".}
proc fcQPixmap_new3(vtbl: pointer, param1: pointer): ptr cQPixmap {.importc: "QPixmap_new3".}
proc fcQPixmap_new4(vtbl: pointer, fileName: struct_miqt_string): ptr cQPixmap {.importc: "QPixmap_new4".}
proc fcQPixmap_new5(vtbl: pointer, param1: pointer): ptr cQPixmap {.importc: "QPixmap_new5".}
proc fcQPixmap_new6(vtbl: pointer, fileName: struct_miqt_string, format: cstring): ptr cQPixmap {.importc: "QPixmap_new6".}
proc fcQPixmap_new7(vtbl: pointer, fileName: struct_miqt_string, format: cstring, flags: cint): ptr cQPixmap {.importc: "QPixmap_new7".}
proc fcQPixmap_delete(self: pointer) {.importc: "QPixmap_delete".}

proc operatorAssign*(self: gen_qpixmap_types.QPixmap, param1: gen_qpixmap_types.QPixmap): void =
  fcQPixmap_operatorAssign(self.h, param1.h)

proc swap*(self: gen_qpixmap_types.QPixmap, other: gen_qpixmap_types.QPixmap): void =
  fcQPixmap_swap(self.h, other.h)

proc ToQVariant*(self: gen_qpixmap_types.QPixmap, ): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQPixmap_ToQVariant(self.h))

proc isNull*(self: gen_qpixmap_types.QPixmap, ): bool =
  fcQPixmap_isNull(self.h)

proc devType*(self: gen_qpixmap_types.QPixmap, ): cint =
  fcQPixmap_devType(self.h)

proc width*(self: gen_qpixmap_types.QPixmap, ): cint =
  fcQPixmap_width(self.h)

proc height*(self: gen_qpixmap_types.QPixmap, ): cint =
  fcQPixmap_height(self.h)

proc size*(self: gen_qpixmap_types.QPixmap, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQPixmap_size(self.h))

proc rect*(self: gen_qpixmap_types.QPixmap, ): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fcQPixmap_rect(self.h))

proc depth*(self: gen_qpixmap_types.QPixmap, ): cint =
  fcQPixmap_depth(self.h)

proc defaultDepth*(_: type gen_qpixmap_types.QPixmap, ): cint =
  fcQPixmap_defaultDepth()

proc fill*(self: gen_qpixmap_types.QPixmap, ): void =
  fcQPixmap_fill(self.h)

proc mask*(self: gen_qpixmap_types.QPixmap, ): gen_qbitmap_types.QBitmap =
  gen_qbitmap_types.QBitmap(h: fcQPixmap_mask(self.h))

proc setMask*(self: gen_qpixmap_types.QPixmap, mask: gen_qbitmap_types.QBitmap): void =
  fcQPixmap_setMask(self.h, mask.h)

proc devicePixelRatio*(self: gen_qpixmap_types.QPixmap, ): float64 =
  fcQPixmap_devicePixelRatio(self.h)

proc setDevicePixelRatio*(self: gen_qpixmap_types.QPixmap, scaleFactor: float64): void =
  fcQPixmap_setDevicePixelRatio(self.h, scaleFactor)

proc deviceIndependentSize*(self: gen_qpixmap_types.QPixmap, ): gen_qsize_types.QSizeF =
  gen_qsize_types.QSizeF(h: fcQPixmap_deviceIndependentSize(self.h))

proc hasAlpha*(self: gen_qpixmap_types.QPixmap, ): bool =
  fcQPixmap_hasAlpha(self.h)

proc hasAlphaChannel*(self: gen_qpixmap_types.QPixmap, ): bool =
  fcQPixmap_hasAlphaChannel(self.h)

proc createHeuristicMask*(self: gen_qpixmap_types.QPixmap, ): gen_qbitmap_types.QBitmap =
  gen_qbitmap_types.QBitmap(h: fcQPixmap_createHeuristicMask(self.h))

proc createMaskFromColor*(self: gen_qpixmap_types.QPixmap, maskColor: gen_qcolor_types.QColor): gen_qbitmap_types.QBitmap =
  gen_qbitmap_types.QBitmap(h: fcQPixmap_createMaskFromColor(self.h, maskColor.h))

proc scaled*(self: gen_qpixmap_types.QPixmap, w: cint, h: cint): gen_qpixmap_types.QPixmap =
  gen_qpixmap_types.QPixmap(h: fcQPixmap_scaled(self.h, w, h))

proc scaled*(self: gen_qpixmap_types.QPixmap, s: gen_qsize_types.QSize): gen_qpixmap_types.QPixmap =
  gen_qpixmap_types.QPixmap(h: fcQPixmap_scaledWithQSize(self.h, s.h))

proc scaledToWidth*(self: gen_qpixmap_types.QPixmap, w: cint): gen_qpixmap_types.QPixmap =
  gen_qpixmap_types.QPixmap(h: fcQPixmap_scaledToWidth(self.h, w))

proc scaledToHeight*(self: gen_qpixmap_types.QPixmap, h: cint): gen_qpixmap_types.QPixmap =
  gen_qpixmap_types.QPixmap(h: fcQPixmap_scaledToHeight(self.h, h))

proc transformed*(self: gen_qpixmap_types.QPixmap, param1: gen_qtransform_types.QTransform): gen_qpixmap_types.QPixmap =
  gen_qpixmap_types.QPixmap(h: fcQPixmap_transformed(self.h, param1.h))

proc trueMatrix*(_: type gen_qpixmap_types.QPixmap, m: gen_qtransform_types.QTransform, w: cint, h: cint): gen_qtransform_types.QTransform =
  gen_qtransform_types.QTransform(h: fcQPixmap_trueMatrix(m.h, w, h))

proc toImage*(self: gen_qpixmap_types.QPixmap, ): gen_qimage_types.QImage =
  gen_qimage_types.QImage(h: fcQPixmap_toImage(self.h))

proc fromImage*(_: type gen_qpixmap_types.QPixmap, image: gen_qimage_types.QImage): gen_qpixmap_types.QPixmap =
  gen_qpixmap_types.QPixmap(h: fcQPixmap_fromImage(image.h))

proc fromImageReader*(_: type gen_qpixmap_types.QPixmap, imageReader: gen_qimagereader_types.QImageReader): gen_qpixmap_types.QPixmap =
  gen_qpixmap_types.QPixmap(h: fcQPixmap_fromImageReader(imageReader.h))

proc load*(self: gen_qpixmap_types.QPixmap, fileName: string): bool =
  fcQPixmap_load(self.h, struct_miqt_string(data: fileName, len: csize_t(len(fileName))))

proc loadFromData*(self: gen_qpixmap_types.QPixmap, buf: ptr uint8, len: cuint): bool =
  fcQPixmap_loadFromData(self.h, buf, len)

proc loadFromData*(self: gen_qpixmap_types.QPixmap, data: seq[byte]): bool =
  fcQPixmap_loadFromDataWithData(self.h, struct_miqt_string(data: cast[cstring](if len(data) == 0: nil else: unsafeAddr data[0]), len: csize_t(len(data))))

proc save*(self: gen_qpixmap_types.QPixmap, fileName: string): bool =
  fcQPixmap_save(self.h, struct_miqt_string(data: fileName, len: csize_t(len(fileName))))

proc save*(self: gen_qpixmap_types.QPixmap, device: gen_qiodevice_types.QIODevice): bool =
  fcQPixmap_saveWithDevice(self.h, device.h)

proc convertFromImage*(self: gen_qpixmap_types.QPixmap, img: gen_qimage_types.QImage): bool =
  fcQPixmap_convertFromImage(self.h, img.h)

proc copy*(self: gen_qpixmap_types.QPixmap, x: cint, y: cint, width: cint, height: cint): gen_qpixmap_types.QPixmap =
  gen_qpixmap_types.QPixmap(h: fcQPixmap_copy(self.h, x, y, width, height))

proc copy*(self: gen_qpixmap_types.QPixmap, ): gen_qpixmap_types.QPixmap =
  gen_qpixmap_types.QPixmap(h: fcQPixmap_copy2(self.h))

proc scroll*(self: gen_qpixmap_types.QPixmap, dx: cint, dy: cint, x: cint, y: cint, width: cint, height: cint): void =
  fcQPixmap_scroll(self.h, dx, dy, x, y, width, height)

proc scroll*(self: gen_qpixmap_types.QPixmap, dx: cint, dy: cint, rect: gen_qrect_types.QRect): void =
  fcQPixmap_scroll2(self.h, dx, dy, rect.h)

proc cacheKey*(self: gen_qpixmap_types.QPixmap, ): clonglong =
  fcQPixmap_cacheKey(self.h)

proc isDetached*(self: gen_qpixmap_types.QPixmap, ): bool =
  fcQPixmap_isDetached(self.h)

proc detach*(self: gen_qpixmap_types.QPixmap, ): void =
  fcQPixmap_detach(self.h)

proc isQBitmap*(self: gen_qpixmap_types.QPixmap, ): bool =
  fcQPixmap_isQBitmap(self.h)

proc paintEngine*(self: gen_qpixmap_types.QPixmap, ): gen_qpaintengine_types.QPaintEngine =
  gen_qpaintengine_types.QPaintEngine(h: fcQPixmap_paintEngine(self.h))

proc operatorNot*(self: gen_qpixmap_types.QPixmap, ): bool =
  fcQPixmap_operatorNot(self.h)

proc fill*(self: gen_qpixmap_types.QPixmap, fillColor: gen_qcolor_types.QColor): void =
  fcQPixmap_fill1(self.h, fillColor.h)

proc createHeuristicMask*(self: gen_qpixmap_types.QPixmap, clipTight: bool): gen_qbitmap_types.QBitmap =
  gen_qbitmap_types.QBitmap(h: fcQPixmap_createHeuristicMask1(self.h, clipTight))

proc createMaskFromColor*(self: gen_qpixmap_types.QPixmap, maskColor: gen_qcolor_types.QColor, mode: cint): gen_qbitmap_types.QBitmap =
  gen_qbitmap_types.QBitmap(h: fcQPixmap_createMaskFromColor2(self.h, maskColor.h, cint(mode)))

proc scaled*(self: gen_qpixmap_types.QPixmap, w: cint, h: cint, aspectMode: cint): gen_qpixmap_types.QPixmap =
  gen_qpixmap_types.QPixmap(h: fcQPixmap_scaled3(self.h, w, h, cint(aspectMode)))

proc scaled*(self: gen_qpixmap_types.QPixmap, w: cint, h: cint, aspectMode: cint, mode: cint): gen_qpixmap_types.QPixmap =
  gen_qpixmap_types.QPixmap(h: fcQPixmap_scaled4(self.h, w, h, cint(aspectMode), cint(mode)))

proc scaled*(self: gen_qpixmap_types.QPixmap, s: gen_qsize_types.QSize, aspectMode: cint): gen_qpixmap_types.QPixmap =
  gen_qpixmap_types.QPixmap(h: fcQPixmap_scaled2(self.h, s.h, cint(aspectMode)))

proc scaled*(self: gen_qpixmap_types.QPixmap, s: gen_qsize_types.QSize, aspectMode: cint, mode: cint): gen_qpixmap_types.QPixmap =
  gen_qpixmap_types.QPixmap(h: fcQPixmap_scaled32(self.h, s.h, cint(aspectMode), cint(mode)))

proc scaledToWidth*(self: gen_qpixmap_types.QPixmap, w: cint, mode: cint): gen_qpixmap_types.QPixmap =
  gen_qpixmap_types.QPixmap(h: fcQPixmap_scaledToWidth2(self.h, w, cint(mode)))

proc scaledToHeight*(self: gen_qpixmap_types.QPixmap, h: cint, mode: cint): gen_qpixmap_types.QPixmap =
  gen_qpixmap_types.QPixmap(h: fcQPixmap_scaledToHeight2(self.h, h, cint(mode)))

proc transformed*(self: gen_qpixmap_types.QPixmap, param1: gen_qtransform_types.QTransform, mode: cint): gen_qpixmap_types.QPixmap =
  gen_qpixmap_types.QPixmap(h: fcQPixmap_transformed2(self.h, param1.h, cint(mode)))

proc fromImage*(_: type gen_qpixmap_types.QPixmap, image: gen_qimage_types.QImage, flags: cint): gen_qpixmap_types.QPixmap =
  gen_qpixmap_types.QPixmap(h: fcQPixmap_fromImage2(image.h, cint(flags)))

proc fromImageReader*(_: type gen_qpixmap_types.QPixmap, imageReader: gen_qimagereader_types.QImageReader, flags: cint): gen_qpixmap_types.QPixmap =
  gen_qpixmap_types.QPixmap(h: fcQPixmap_fromImageReader2(imageReader.h, cint(flags)))

proc load*(self: gen_qpixmap_types.QPixmap, fileName: string, format: cstring): bool =
  fcQPixmap_load2(self.h, struct_miqt_string(data: fileName, len: csize_t(len(fileName))), format)

proc load*(self: gen_qpixmap_types.QPixmap, fileName: string, format: cstring, flags: cint): bool =
  fcQPixmap_load3(self.h, struct_miqt_string(data: fileName, len: csize_t(len(fileName))), format, cint(flags))

proc loadFromData*(self: gen_qpixmap_types.QPixmap, buf: ptr uint8, len: cuint, format: cstring): bool =
  fcQPixmap_loadFromData3(self.h, buf, len, format)

proc loadFromData*(self: gen_qpixmap_types.QPixmap, buf: ptr uint8, len: cuint, format: cstring, flags: cint): bool =
  fcQPixmap_loadFromData4(self.h, buf, len, format, cint(flags))

proc loadFromData*(self: gen_qpixmap_types.QPixmap, data: seq[byte], format: cstring): bool =
  fcQPixmap_loadFromData2(self.h, struct_miqt_string(data: cast[cstring](if len(data) == 0: nil else: unsafeAddr data[0]), len: csize_t(len(data))), format)

proc loadFromData*(self: gen_qpixmap_types.QPixmap, data: seq[byte], format: cstring, flags: cint): bool =
  fcQPixmap_loadFromData32(self.h, struct_miqt_string(data: cast[cstring](if len(data) == 0: nil else: unsafeAddr data[0]), len: csize_t(len(data))), format, cint(flags))

proc save*(self: gen_qpixmap_types.QPixmap, fileName: string, format: cstring): bool =
  fcQPixmap_save2(self.h, struct_miqt_string(data: fileName, len: csize_t(len(fileName))), format)

proc save*(self: gen_qpixmap_types.QPixmap, fileName: string, format: cstring, quality: cint): bool =
  fcQPixmap_save3(self.h, struct_miqt_string(data: fileName, len: csize_t(len(fileName))), format, quality)

proc save*(self: gen_qpixmap_types.QPixmap, device: gen_qiodevice_types.QIODevice, format: cstring): bool =
  fcQPixmap_save22(self.h, device.h, format)

proc save*(self: gen_qpixmap_types.QPixmap, device: gen_qiodevice_types.QIODevice, format: cstring, quality: cint): bool =
  fcQPixmap_save32(self.h, device.h, format, quality)

proc convertFromImage*(self: gen_qpixmap_types.QPixmap, img: gen_qimage_types.QImage, flags: cint): bool =
  fcQPixmap_convertFromImage2(self.h, img.h, cint(flags))

proc copy*(self: gen_qpixmap_types.QPixmap, rect: gen_qrect_types.QRect): gen_qpixmap_types.QPixmap =
  gen_qpixmap_types.QPixmap(h: fcQPixmap_copy1(self.h, rect.h))

proc scroll*(self: gen_qpixmap_types.QPixmap, dx: cint, dy: cint, x: cint, y: cint, width: cint, height: cint, exposed: gen_qregion_types.QRegion): void =
  fcQPixmap_scroll7(self.h, dx, dy, x, y, width, height, exposed.h)

proc scroll*(self: gen_qpixmap_types.QPixmap, dx: cint, dy: cint, rect: gen_qrect_types.QRect, exposed: gen_qregion_types.QRegion): void =
  fcQPixmap_scroll4(self.h, dx, dy, rect.h, exposed.h)

type QPixmapdevTypeProc* = proc(self: QPixmap): cint {.raises: [], gcsafe.}
type QPixmappaintEngineProc* = proc(self: QPixmap): gen_qpaintengine_types.QPaintEngine {.raises: [], gcsafe.}
type QPixmapmetricProc* = proc(self: QPixmap, param1: cint): cint {.raises: [], gcsafe.}
type QPixmapinitPainterProc* = proc(self: QPixmap, painter: gen_qpainter_types.QPainter): void {.raises: [], gcsafe.}
type QPixmapredirectedProc* = proc(self: QPixmap, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice {.raises: [], gcsafe.}
type QPixmapsharedPainterProc* = proc(self: QPixmap): gen_qpainter_types.QPainter {.raises: [], gcsafe.}
type QPixmapVTable* = object
  vtbl: cQPixmapVTable
  devType*: QPixmapdevTypeProc
  paintEngine*: QPixmappaintEngineProc
  metric*: QPixmapmetricProc
  initPainter*: QPixmapinitPainterProc
  redirected*: QPixmapredirectedProc
  sharedPainter*: QPixmapsharedPainterProc
proc QPixmapdevType*(self: gen_qpixmap_types.QPixmap, ): cint =
  fcQPixmap_virtualbase_devType(self.h)

proc miqt_exec_callback_cQPixmap_devType(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QPixmapVTable](vtbl)
  let self = QPixmap(h: self)
  var virtualReturn = vtbl[].devType(self)
  virtualReturn

proc QPixmappaintEngine*(self: gen_qpixmap_types.QPixmap, ): gen_qpaintengine_types.QPaintEngine =
  gen_qpaintengine_types.QPaintEngine(h: fcQPixmap_virtualbase_paintEngine(self.h))

proc miqt_exec_callback_cQPixmap_paintEngine(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QPixmapVTable](vtbl)
  let self = QPixmap(h: self)
  var virtualReturn = vtbl[].paintEngine(self)
  virtualReturn.h

proc QPixmapmetric*(self: gen_qpixmap_types.QPixmap, param1: cint): cint =
  fcQPixmap_virtualbase_metric(self.h, cint(param1))

proc miqt_exec_callback_cQPixmap_metric(vtbl: pointer, self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QPixmapVTable](vtbl)
  let self = QPixmap(h: self)
  let slotval1 = cint(param1)
  var virtualReturn = vtbl[].metric(self, slotval1)
  virtualReturn

proc QPixmapinitPainter*(self: gen_qpixmap_types.QPixmap, painter: gen_qpainter_types.QPainter): void =
  fcQPixmap_virtualbase_initPainter(self.h, painter.h)

proc miqt_exec_callback_cQPixmap_initPainter(vtbl: pointer, self: pointer, painter: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPixmapVTable](vtbl)
  let self = QPixmap(h: self)
  let slotval1 = gen_qpainter_types.QPainter(h: painter)
  vtbl[].initPainter(self, slotval1)

proc QPixmapredirected*(self: gen_qpixmap_types.QPixmap, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice =
  gen_qpaintdevice_types.QPaintDevice(h: fcQPixmap_virtualbase_redirected(self.h, offset.h))

proc miqt_exec_callback_cQPixmap_redirected(vtbl: pointer, self: pointer, offset: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QPixmapVTable](vtbl)
  let self = QPixmap(h: self)
  let slotval1 = gen_qpoint_types.QPoint(h: offset)
  var virtualReturn = vtbl[].redirected(self, slotval1)
  virtualReturn.h

proc QPixmapsharedPainter*(self: gen_qpixmap_types.QPixmap, ): gen_qpainter_types.QPainter =
  gen_qpainter_types.QPainter(h: fcQPixmap_virtualbase_sharedPainter(self.h))

proc miqt_exec_callback_cQPixmap_sharedPainter(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QPixmapVTable](vtbl)
  let self = QPixmap(h: self)
  var virtualReturn = vtbl[].sharedPainter(self)
  virtualReturn.h

proc create*(T: type gen_qpixmap_types.QPixmap,
    vtbl: ref QPixmapVTable = nil): gen_qpixmap_types.QPixmap =
  let vtbl = if vtbl == nil: new QPixmapVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQPixmapVTable, _: ptr cQPixmap) {.cdecl.} =
    let vtbl = cast[ref QPixmapVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.devType):
    vtbl[].vtbl.devType = miqt_exec_callback_cQPixmap_devType
  if not isNil(vtbl.paintEngine):
    vtbl[].vtbl.paintEngine = miqt_exec_callback_cQPixmap_paintEngine
  if not isNil(vtbl.metric):
    vtbl[].vtbl.metric = miqt_exec_callback_cQPixmap_metric
  if not isNil(vtbl.initPainter):
    vtbl[].vtbl.initPainter = miqt_exec_callback_cQPixmap_initPainter
  if not isNil(vtbl.redirected):
    vtbl[].vtbl.redirected = miqt_exec_callback_cQPixmap_redirected
  if not isNil(vtbl.sharedPainter):
    vtbl[].vtbl.sharedPainter = miqt_exec_callback_cQPixmap_sharedPainter
  gen_qpixmap_types.QPixmap(h: fcQPixmap_new(addr(vtbl[]), ))

proc create*(T: type gen_qpixmap_types.QPixmap,
    w: cint, h: cint,
    vtbl: ref QPixmapVTable = nil): gen_qpixmap_types.QPixmap =
  let vtbl = if vtbl == nil: new QPixmapVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQPixmapVTable, _: ptr cQPixmap) {.cdecl.} =
    let vtbl = cast[ref QPixmapVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.devType):
    vtbl[].vtbl.devType = miqt_exec_callback_cQPixmap_devType
  if not isNil(vtbl.paintEngine):
    vtbl[].vtbl.paintEngine = miqt_exec_callback_cQPixmap_paintEngine
  if not isNil(vtbl.metric):
    vtbl[].vtbl.metric = miqt_exec_callback_cQPixmap_metric
  if not isNil(vtbl.initPainter):
    vtbl[].vtbl.initPainter = miqt_exec_callback_cQPixmap_initPainter
  if not isNil(vtbl.redirected):
    vtbl[].vtbl.redirected = miqt_exec_callback_cQPixmap_redirected
  if not isNil(vtbl.sharedPainter):
    vtbl[].vtbl.sharedPainter = miqt_exec_callback_cQPixmap_sharedPainter
  gen_qpixmap_types.QPixmap(h: fcQPixmap_new2(addr(vtbl[]), w, h))

proc create*(T: type gen_qpixmap_types.QPixmap,
    param1: gen_qsize_types.QSize,
    vtbl: ref QPixmapVTable = nil): gen_qpixmap_types.QPixmap =
  let vtbl = if vtbl == nil: new QPixmapVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQPixmapVTable, _: ptr cQPixmap) {.cdecl.} =
    let vtbl = cast[ref QPixmapVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.devType):
    vtbl[].vtbl.devType = miqt_exec_callback_cQPixmap_devType
  if not isNil(vtbl.paintEngine):
    vtbl[].vtbl.paintEngine = miqt_exec_callback_cQPixmap_paintEngine
  if not isNil(vtbl.metric):
    vtbl[].vtbl.metric = miqt_exec_callback_cQPixmap_metric
  if not isNil(vtbl.initPainter):
    vtbl[].vtbl.initPainter = miqt_exec_callback_cQPixmap_initPainter
  if not isNil(vtbl.redirected):
    vtbl[].vtbl.redirected = miqt_exec_callback_cQPixmap_redirected
  if not isNil(vtbl.sharedPainter):
    vtbl[].vtbl.sharedPainter = miqt_exec_callback_cQPixmap_sharedPainter
  gen_qpixmap_types.QPixmap(h: fcQPixmap_new3(addr(vtbl[]), param1.h))

proc create*(T: type gen_qpixmap_types.QPixmap,
    fileName: string,
    vtbl: ref QPixmapVTable = nil): gen_qpixmap_types.QPixmap =
  let vtbl = if vtbl == nil: new QPixmapVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQPixmapVTable, _: ptr cQPixmap) {.cdecl.} =
    let vtbl = cast[ref QPixmapVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.devType):
    vtbl[].vtbl.devType = miqt_exec_callback_cQPixmap_devType
  if not isNil(vtbl.paintEngine):
    vtbl[].vtbl.paintEngine = miqt_exec_callback_cQPixmap_paintEngine
  if not isNil(vtbl.metric):
    vtbl[].vtbl.metric = miqt_exec_callback_cQPixmap_metric
  if not isNil(vtbl.initPainter):
    vtbl[].vtbl.initPainter = miqt_exec_callback_cQPixmap_initPainter
  if not isNil(vtbl.redirected):
    vtbl[].vtbl.redirected = miqt_exec_callback_cQPixmap_redirected
  if not isNil(vtbl.sharedPainter):
    vtbl[].vtbl.sharedPainter = miqt_exec_callback_cQPixmap_sharedPainter
  gen_qpixmap_types.QPixmap(h: fcQPixmap_new4(addr(vtbl[]), struct_miqt_string(data: fileName, len: csize_t(len(fileName)))))

proc create*(T: type gen_qpixmap_types.QPixmap,
    param1: gen_qpixmap_types.QPixmap,
    vtbl: ref QPixmapVTable = nil): gen_qpixmap_types.QPixmap =
  let vtbl = if vtbl == nil: new QPixmapVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQPixmapVTable, _: ptr cQPixmap) {.cdecl.} =
    let vtbl = cast[ref QPixmapVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.devType):
    vtbl[].vtbl.devType = miqt_exec_callback_cQPixmap_devType
  if not isNil(vtbl.paintEngine):
    vtbl[].vtbl.paintEngine = miqt_exec_callback_cQPixmap_paintEngine
  if not isNil(vtbl.metric):
    vtbl[].vtbl.metric = miqt_exec_callback_cQPixmap_metric
  if not isNil(vtbl.initPainter):
    vtbl[].vtbl.initPainter = miqt_exec_callback_cQPixmap_initPainter
  if not isNil(vtbl.redirected):
    vtbl[].vtbl.redirected = miqt_exec_callback_cQPixmap_redirected
  if not isNil(vtbl.sharedPainter):
    vtbl[].vtbl.sharedPainter = miqt_exec_callback_cQPixmap_sharedPainter
  gen_qpixmap_types.QPixmap(h: fcQPixmap_new5(addr(vtbl[]), param1.h))

proc create*(T: type gen_qpixmap_types.QPixmap,
    fileName: string, format: cstring,
    vtbl: ref QPixmapVTable = nil): gen_qpixmap_types.QPixmap =
  let vtbl = if vtbl == nil: new QPixmapVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQPixmapVTable, _: ptr cQPixmap) {.cdecl.} =
    let vtbl = cast[ref QPixmapVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.devType):
    vtbl[].vtbl.devType = miqt_exec_callback_cQPixmap_devType
  if not isNil(vtbl.paintEngine):
    vtbl[].vtbl.paintEngine = miqt_exec_callback_cQPixmap_paintEngine
  if not isNil(vtbl.metric):
    vtbl[].vtbl.metric = miqt_exec_callback_cQPixmap_metric
  if not isNil(vtbl.initPainter):
    vtbl[].vtbl.initPainter = miqt_exec_callback_cQPixmap_initPainter
  if not isNil(vtbl.redirected):
    vtbl[].vtbl.redirected = miqt_exec_callback_cQPixmap_redirected
  if not isNil(vtbl.sharedPainter):
    vtbl[].vtbl.sharedPainter = miqt_exec_callback_cQPixmap_sharedPainter
  gen_qpixmap_types.QPixmap(h: fcQPixmap_new6(addr(vtbl[]), struct_miqt_string(data: fileName, len: csize_t(len(fileName))), format))

proc create*(T: type gen_qpixmap_types.QPixmap,
    fileName: string, format: cstring, flags: cint,
    vtbl: ref QPixmapVTable = nil): gen_qpixmap_types.QPixmap =
  let vtbl = if vtbl == nil: new QPixmapVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQPixmapVTable, _: ptr cQPixmap) {.cdecl.} =
    let vtbl = cast[ref QPixmapVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.devType):
    vtbl[].vtbl.devType = miqt_exec_callback_cQPixmap_devType
  if not isNil(vtbl.paintEngine):
    vtbl[].vtbl.paintEngine = miqt_exec_callback_cQPixmap_paintEngine
  if not isNil(vtbl.metric):
    vtbl[].vtbl.metric = miqt_exec_callback_cQPixmap_metric
  if not isNil(vtbl.initPainter):
    vtbl[].vtbl.initPainter = miqt_exec_callback_cQPixmap_initPainter
  if not isNil(vtbl.redirected):
    vtbl[].vtbl.redirected = miqt_exec_callback_cQPixmap_redirected
  if not isNil(vtbl.sharedPainter):
    vtbl[].vtbl.sharedPainter = miqt_exec_callback_cQPixmap_sharedPainter
  gen_qpixmap_types.QPixmap(h: fcQPixmap_new7(addr(vtbl[]), struct_miqt_string(data: fileName, len: csize_t(len(fileName))), format, cint(flags)))

proc delete*(self: gen_qpixmap_types.QPixmap) =
  fcQPixmap_delete(self.h)
