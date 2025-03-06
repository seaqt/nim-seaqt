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
{.compile("gen_qicon.cpp", cflags).}


type QIconModeEnum* = distinct cint
template Normal*(_: type QIconModeEnum): untyped = 0
template Disabled*(_: type QIconModeEnum): untyped = 1
template Active*(_: type QIconModeEnum): untyped = 2
template Selected*(_: type QIconModeEnum): untyped = 3


type QIconStateEnum* = distinct cint
template On*(_: type QIconStateEnum): untyped = 0
template Off*(_: type QIconStateEnum): untyped = 1


import ./gen_qicon_types
export gen_qicon_types

import
  ../QtCore/gen_qrect_types,
  ../QtCore/gen_qsize_types,
  ../QtCore/gen_qvariant_types,
  ./gen_qiconengine_types,
  ./gen_qpainter_types,
  ./gen_qpixmap_types,
  ./gen_qwindow_types
export
  gen_qrect_types,
  gen_qsize_types,
  gen_qvariant_types,
  gen_qiconengine_types,
  gen_qpainter_types,
  gen_qpixmap_types,
  gen_qwindow_types

type cQIcon*{.exportc: "QIcon", incompleteStruct.} = object

proc fcQIcon_operatorAssign(self: pointer, other: pointer): void {.importc: "QIcon_operatorAssign".}
proc fcQIcon_swap(self: pointer, other: pointer): void {.importc: "QIcon_swap".}
proc fcQIcon_ToQVariant(self: pointer, ): pointer {.importc: "QIcon_ToQVariant".}
proc fcQIcon_pixmap(self: pointer, size: pointer): pointer {.importc: "QIcon_pixmap".}
proc fcQIcon_pixmap2(self: pointer, w: cint, h: cint): pointer {.importc: "QIcon_pixmap2".}
proc fcQIcon_pixmapWithExtent(self: pointer, extent: cint): pointer {.importc: "QIcon_pixmapWithExtent".}
proc fcQIcon_pixmap3(self: pointer, window: pointer, size: pointer): pointer {.importc: "QIcon_pixmap3".}
proc fcQIcon_actualSize(self: pointer, size: pointer): pointer {.importc: "QIcon_actualSize".}
proc fcQIcon_actualSize2(self: pointer, window: pointer, size: pointer): pointer {.importc: "QIcon_actualSize2".}
proc fcQIcon_name(self: pointer, ): struct_miqt_string {.importc: "QIcon_name".}
proc fcQIcon_paint(self: pointer, painter: pointer, rect: pointer): void {.importc: "QIcon_paint".}
proc fcQIcon_paint2(self: pointer, painter: pointer, x: cint, y: cint, w: cint, h: cint): void {.importc: "QIcon_paint2".}
proc fcQIcon_isNull(self: pointer, ): bool {.importc: "QIcon_isNull".}
proc fcQIcon_isDetached(self: pointer, ): bool {.importc: "QIcon_isDetached".}
proc fcQIcon_detach(self: pointer, ): void {.importc: "QIcon_detach".}
proc fcQIcon_cacheKey(self: pointer, ): clonglong {.importc: "QIcon_cacheKey".}
proc fcQIcon_addPixmap(self: pointer, pixmap: pointer): void {.importc: "QIcon_addPixmap".}
proc fcQIcon_addFile(self: pointer, fileName: struct_miqt_string): void {.importc: "QIcon_addFile".}
proc fcQIcon_availableSizes(self: pointer, ): struct_miqt_array {.importc: "QIcon_availableSizes".}
proc fcQIcon_setIsMask(self: pointer, isMask: bool): void {.importc: "QIcon_setIsMask".}
proc fcQIcon_isMask(self: pointer, ): bool {.importc: "QIcon_isMask".}
proc fcQIcon_fromTheme(name: struct_miqt_string): pointer {.importc: "QIcon_fromTheme".}
proc fcQIcon_fromTheme2(name: struct_miqt_string, fallback: pointer): pointer {.importc: "QIcon_fromTheme2".}
proc fcQIcon_hasThemeIcon(name: struct_miqt_string): bool {.importc: "QIcon_hasThemeIcon".}
proc fcQIcon_themeSearchPaths(): struct_miqt_array {.importc: "QIcon_themeSearchPaths".}
proc fcQIcon_setThemeSearchPaths(searchpath: struct_miqt_array): void {.importc: "QIcon_setThemeSearchPaths".}
proc fcQIcon_fallbackSearchPaths(): struct_miqt_array {.importc: "QIcon_fallbackSearchPaths".}
proc fcQIcon_setFallbackSearchPaths(paths: struct_miqt_array): void {.importc: "QIcon_setFallbackSearchPaths".}
proc fcQIcon_themeName(): struct_miqt_string {.importc: "QIcon_themeName".}
proc fcQIcon_setThemeName(path: struct_miqt_string): void {.importc: "QIcon_setThemeName".}
proc fcQIcon_fallbackThemeName(): struct_miqt_string {.importc: "QIcon_fallbackThemeName".}
proc fcQIcon_setFallbackThemeName(name: struct_miqt_string): void {.importc: "QIcon_setFallbackThemeName".}
proc fcQIcon_pixmap22(self: pointer, size: pointer, mode: cint): pointer {.importc: "QIcon_pixmap22".}
proc fcQIcon_pixmap32(self: pointer, size: pointer, mode: cint, state: cint): pointer {.importc: "QIcon_pixmap32".}
proc fcQIcon_pixmap33(self: pointer, w: cint, h: cint, mode: cint): pointer {.importc: "QIcon_pixmap33".}
proc fcQIcon_pixmap4(self: pointer, w: cint, h: cint, mode: cint, state: cint): pointer {.importc: "QIcon_pixmap4".}
proc fcQIcon_pixmap23(self: pointer, extent: cint, mode: cint): pointer {.importc: "QIcon_pixmap23".}
proc fcQIcon_pixmap34(self: pointer, extent: cint, mode: cint, state: cint): pointer {.importc: "QIcon_pixmap34".}
proc fcQIcon_pixmap35(self: pointer, window: pointer, size: pointer, mode: cint): pointer {.importc: "QIcon_pixmap35".}
proc fcQIcon_pixmap42(self: pointer, window: pointer, size: pointer, mode: cint, state: cint): pointer {.importc: "QIcon_pixmap42".}
proc fcQIcon_actualSize22(self: pointer, size: pointer, mode: cint): pointer {.importc: "QIcon_actualSize22".}
proc fcQIcon_actualSize3(self: pointer, size: pointer, mode: cint, state: cint): pointer {.importc: "QIcon_actualSize3".}
proc fcQIcon_actualSize32(self: pointer, window: pointer, size: pointer, mode: cint): pointer {.importc: "QIcon_actualSize32".}
proc fcQIcon_actualSize4(self: pointer, window: pointer, size: pointer, mode: cint, state: cint): pointer {.importc: "QIcon_actualSize4".}
proc fcQIcon_paint3(self: pointer, painter: pointer, rect: pointer, alignment: cint): void {.importc: "QIcon_paint3".}
proc fcQIcon_paint4(self: pointer, painter: pointer, rect: pointer, alignment: cint, mode: cint): void {.importc: "QIcon_paint4".}
proc fcQIcon_paint5(self: pointer, painter: pointer, rect: pointer, alignment: cint, mode: cint, state: cint): void {.importc: "QIcon_paint5".}
proc fcQIcon_paint6(self: pointer, painter: pointer, x: cint, y: cint, w: cint, h: cint, alignment: cint): void {.importc: "QIcon_paint6".}
proc fcQIcon_paint7(self: pointer, painter: pointer, x: cint, y: cint, w: cint, h: cint, alignment: cint, mode: cint): void {.importc: "QIcon_paint7".}
proc fcQIcon_paint8(self: pointer, painter: pointer, x: cint, y: cint, w: cint, h: cint, alignment: cint, mode: cint, state: cint): void {.importc: "QIcon_paint8".}
proc fcQIcon_addPixmap2(self: pointer, pixmap: pointer, mode: cint): void {.importc: "QIcon_addPixmap2".}
proc fcQIcon_addPixmap3(self: pointer, pixmap: pointer, mode: cint, state: cint): void {.importc: "QIcon_addPixmap3".}
proc fcQIcon_addFile2(self: pointer, fileName: struct_miqt_string, size: pointer): void {.importc: "QIcon_addFile2".}
proc fcQIcon_addFile3(self: pointer, fileName: struct_miqt_string, size: pointer, mode: cint): void {.importc: "QIcon_addFile3".}
proc fcQIcon_addFile4(self: pointer, fileName: struct_miqt_string, size: pointer, mode: cint, state: cint): void {.importc: "QIcon_addFile4".}
proc fcQIcon_availableSizes1(self: pointer, mode: cint): struct_miqt_array {.importc: "QIcon_availableSizes1".}
proc fcQIcon_availableSizes2(self: pointer, mode: cint, state: cint): struct_miqt_array {.importc: "QIcon_availableSizes2".}
proc fcQIcon_new(): ptr cQIcon {.importc: "QIcon_new".}
proc fcQIcon_new2(pixmap: pointer): ptr cQIcon {.importc: "QIcon_new2".}
proc fcQIcon_new3(other: pointer): ptr cQIcon {.importc: "QIcon_new3".}
proc fcQIcon_new4(fileName: struct_miqt_string): ptr cQIcon {.importc: "QIcon_new4".}
proc fcQIcon_new5(engine: pointer): ptr cQIcon {.importc: "QIcon_new5".}
proc fcQIcon_delete(self: pointer) {.importc: "QIcon_delete".}

proc operatorAssign*(self: gen_qicon_types.QIcon, other: gen_qicon_types.QIcon): void =
  fcQIcon_operatorAssign(self.h, other.h)

proc swap*(self: gen_qicon_types.QIcon, other: gen_qicon_types.QIcon): void =
  fcQIcon_swap(self.h, other.h)

proc ToQVariant*(self: gen_qicon_types.QIcon, ): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQIcon_ToQVariant(self.h))

proc pixmap*(self: gen_qicon_types.QIcon, size: gen_qsize_types.QSize): gen_qpixmap_types.QPixmap =
  gen_qpixmap_types.QPixmap(h: fcQIcon_pixmap(self.h, size.h))

proc pixmap*(self: gen_qicon_types.QIcon, w: cint, h: cint): gen_qpixmap_types.QPixmap =
  gen_qpixmap_types.QPixmap(h: fcQIcon_pixmap2(self.h, w, h))

proc pixmap*(self: gen_qicon_types.QIcon, extent: cint): gen_qpixmap_types.QPixmap =
  gen_qpixmap_types.QPixmap(h: fcQIcon_pixmapWithExtent(self.h, extent))

proc pixmap*(self: gen_qicon_types.QIcon, window: gen_qwindow_types.QWindow, size: gen_qsize_types.QSize): gen_qpixmap_types.QPixmap =
  gen_qpixmap_types.QPixmap(h: fcQIcon_pixmap3(self.h, window.h, size.h))

proc actualSize*(self: gen_qicon_types.QIcon, size: gen_qsize_types.QSize): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQIcon_actualSize(self.h, size.h))

proc actualSize*(self: gen_qicon_types.QIcon, window: gen_qwindow_types.QWindow, size: gen_qsize_types.QSize): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQIcon_actualSize2(self.h, window.h, size.h))

proc name*(self: gen_qicon_types.QIcon, ): string =
  let v_ms = fcQIcon_name(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc paint*(self: gen_qicon_types.QIcon, painter: gen_qpainter_types.QPainter, rect: gen_qrect_types.QRect): void =
  fcQIcon_paint(self.h, painter.h, rect.h)

proc paint*(self: gen_qicon_types.QIcon, painter: gen_qpainter_types.QPainter, x: cint, y: cint, w: cint, h: cint): void =
  fcQIcon_paint2(self.h, painter.h, x, y, w, h)

proc isNull*(self: gen_qicon_types.QIcon, ): bool =
  fcQIcon_isNull(self.h)

proc isDetached*(self: gen_qicon_types.QIcon, ): bool =
  fcQIcon_isDetached(self.h)

proc detach*(self: gen_qicon_types.QIcon, ): void =
  fcQIcon_detach(self.h)

proc cacheKey*(self: gen_qicon_types.QIcon, ): clonglong =
  fcQIcon_cacheKey(self.h)

proc addPixmap*(self: gen_qicon_types.QIcon, pixmap: gen_qpixmap_types.QPixmap): void =
  fcQIcon_addPixmap(self.h, pixmap.h)

proc addFile*(self: gen_qicon_types.QIcon, fileName: string): void =
  fcQIcon_addFile(self.h, struct_miqt_string(data: fileName, len: csize_t(len(fileName))))

proc availableSizes*(self: gen_qicon_types.QIcon, ): seq[gen_qsize_types.QSize] =
  var v_ma = fcQIcon_availableSizes(self.h)
  var vx_ret = newSeq[gen_qsize_types.QSize](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qsize_types.QSize(h: v_outCast[i])
  vx_ret

proc setIsMask*(self: gen_qicon_types.QIcon, isMask: bool): void =
  fcQIcon_setIsMask(self.h, isMask)

proc isMask*(self: gen_qicon_types.QIcon, ): bool =
  fcQIcon_isMask(self.h)

proc fromTheme*(_: type gen_qicon_types.QIcon, name: string): gen_qicon_types.QIcon =
  gen_qicon_types.QIcon(h: fcQIcon_fromTheme(struct_miqt_string(data: name, len: csize_t(len(name)))))

proc fromTheme*(_: type gen_qicon_types.QIcon, name: string, fallback: gen_qicon_types.QIcon): gen_qicon_types.QIcon =
  gen_qicon_types.QIcon(h: fcQIcon_fromTheme2(struct_miqt_string(data: name, len: csize_t(len(name))), fallback.h))

proc hasThemeIcon*(_: type gen_qicon_types.QIcon, name: string): bool =
  fcQIcon_hasThemeIcon(struct_miqt_string(data: name, len: csize_t(len(name))))

proc themeSearchPaths*(_: type gen_qicon_types.QIcon, ): seq[string] =
  var v_ma = fcQIcon_themeSearchPaths()
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc setThemeSearchPaths*(_: type gen_qicon_types.QIcon, searchpath: seq[string]): void =
  var searchpath_CArray = newSeq[struct_miqt_string](len(searchpath))
  for i in 0..<len(searchpath):
    searchpath_CArray[i] = struct_miqt_string(data: searchpath[i], len: csize_t(len(searchpath[i])))

  fcQIcon_setThemeSearchPaths(struct_miqt_array(len: csize_t(len(searchpath)), data: if len(searchpath) == 0: nil else: addr(searchpath_CArray[0])))

proc fallbackSearchPaths*(_: type gen_qicon_types.QIcon, ): seq[string] =
  var v_ma = fcQIcon_fallbackSearchPaths()
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc setFallbackSearchPaths*(_: type gen_qicon_types.QIcon, paths: seq[string]): void =
  var paths_CArray = newSeq[struct_miqt_string](len(paths))
  for i in 0..<len(paths):
    paths_CArray[i] = struct_miqt_string(data: paths[i], len: csize_t(len(paths[i])))

  fcQIcon_setFallbackSearchPaths(struct_miqt_array(len: csize_t(len(paths)), data: if len(paths) == 0: nil else: addr(paths_CArray[0])))

proc themeName*(_: type gen_qicon_types.QIcon, ): string =
  let v_ms = fcQIcon_themeName()
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setThemeName*(_: type gen_qicon_types.QIcon, path: string): void =
  fcQIcon_setThemeName(struct_miqt_string(data: path, len: csize_t(len(path))))

proc fallbackThemeName*(_: type gen_qicon_types.QIcon, ): string =
  let v_ms = fcQIcon_fallbackThemeName()
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setFallbackThemeName*(_: type gen_qicon_types.QIcon, name: string): void =
  fcQIcon_setFallbackThemeName(struct_miqt_string(data: name, len: csize_t(len(name))))

proc pixmap*(self: gen_qicon_types.QIcon, size: gen_qsize_types.QSize, mode: cint): gen_qpixmap_types.QPixmap =
  gen_qpixmap_types.QPixmap(h: fcQIcon_pixmap22(self.h, size.h, cint(mode)))

proc pixmap*(self: gen_qicon_types.QIcon, size: gen_qsize_types.QSize, mode: cint, state: cint): gen_qpixmap_types.QPixmap =
  gen_qpixmap_types.QPixmap(h: fcQIcon_pixmap32(self.h, size.h, cint(mode), cint(state)))

proc pixmap*(self: gen_qicon_types.QIcon, w: cint, h: cint, mode: cint): gen_qpixmap_types.QPixmap =
  gen_qpixmap_types.QPixmap(h: fcQIcon_pixmap33(self.h, w, h, cint(mode)))

proc pixmap*(self: gen_qicon_types.QIcon, w: cint, h: cint, mode: cint, state: cint): gen_qpixmap_types.QPixmap =
  gen_qpixmap_types.QPixmap(h: fcQIcon_pixmap4(self.h, w, h, cint(mode), cint(state)))

proc pixmap2*(self: gen_qicon_types.QIcon, extent: cint, mode: cint): gen_qpixmap_types.QPixmap =
  gen_qpixmap_types.QPixmap(h: fcQIcon_pixmap23(self.h, extent, cint(mode)))

proc pixmap2*(self: gen_qicon_types.QIcon, extent: cint, mode: cint, state: cint): gen_qpixmap_types.QPixmap =
  gen_qpixmap_types.QPixmap(h: fcQIcon_pixmap34(self.h, extent, cint(mode), cint(state)))

proc pixmap*(self: gen_qicon_types.QIcon, window: gen_qwindow_types.QWindow, size: gen_qsize_types.QSize, mode: cint): gen_qpixmap_types.QPixmap =
  gen_qpixmap_types.QPixmap(h: fcQIcon_pixmap35(self.h, window.h, size.h, cint(mode)))

proc pixmap*(self: gen_qicon_types.QIcon, window: gen_qwindow_types.QWindow, size: gen_qsize_types.QSize, mode: cint, state: cint): gen_qpixmap_types.QPixmap =
  gen_qpixmap_types.QPixmap(h: fcQIcon_pixmap42(self.h, window.h, size.h, cint(mode), cint(state)))

proc actualSize*(self: gen_qicon_types.QIcon, size: gen_qsize_types.QSize, mode: cint): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQIcon_actualSize22(self.h, size.h, cint(mode)))

proc actualSize*(self: gen_qicon_types.QIcon, size: gen_qsize_types.QSize, mode: cint, state: cint): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQIcon_actualSize3(self.h, size.h, cint(mode), cint(state)))

proc actualSize*(self: gen_qicon_types.QIcon, window: gen_qwindow_types.QWindow, size: gen_qsize_types.QSize, mode: cint): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQIcon_actualSize32(self.h, window.h, size.h, cint(mode)))

proc actualSize*(self: gen_qicon_types.QIcon, window: gen_qwindow_types.QWindow, size: gen_qsize_types.QSize, mode: cint, state: cint): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQIcon_actualSize4(self.h, window.h, size.h, cint(mode), cint(state)))

proc paint*(self: gen_qicon_types.QIcon, painter: gen_qpainter_types.QPainter, rect: gen_qrect_types.QRect, alignment: cint): void =
  fcQIcon_paint3(self.h, painter.h, rect.h, cint(alignment))

proc paint*(self: gen_qicon_types.QIcon, painter: gen_qpainter_types.QPainter, rect: gen_qrect_types.QRect, alignment: cint, mode: cint): void =
  fcQIcon_paint4(self.h, painter.h, rect.h, cint(alignment), cint(mode))

proc paint*(self: gen_qicon_types.QIcon, painter: gen_qpainter_types.QPainter, rect: gen_qrect_types.QRect, alignment: cint, mode: cint, state: cint): void =
  fcQIcon_paint5(self.h, painter.h, rect.h, cint(alignment), cint(mode), cint(state))

proc paint*(self: gen_qicon_types.QIcon, painter: gen_qpainter_types.QPainter, x: cint, y: cint, w: cint, h: cint, alignment: cint): void =
  fcQIcon_paint6(self.h, painter.h, x, y, w, h, cint(alignment))

proc paint*(self: gen_qicon_types.QIcon, painter: gen_qpainter_types.QPainter, x: cint, y: cint, w: cint, h: cint, alignment: cint, mode: cint): void =
  fcQIcon_paint7(self.h, painter.h, x, y, w, h, cint(alignment), cint(mode))

proc paint*(self: gen_qicon_types.QIcon, painter: gen_qpainter_types.QPainter, x: cint, y: cint, w: cint, h: cint, alignment: cint, mode: cint, state: cint): void =
  fcQIcon_paint8(self.h, painter.h, x, y, w, h, cint(alignment), cint(mode), cint(state))

proc addPixmap*(self: gen_qicon_types.QIcon, pixmap: gen_qpixmap_types.QPixmap, mode: cint): void =
  fcQIcon_addPixmap2(self.h, pixmap.h, cint(mode))

proc addPixmap*(self: gen_qicon_types.QIcon, pixmap: gen_qpixmap_types.QPixmap, mode: cint, state: cint): void =
  fcQIcon_addPixmap3(self.h, pixmap.h, cint(mode), cint(state))

proc addFile*(self: gen_qicon_types.QIcon, fileName: string, size: gen_qsize_types.QSize): void =
  fcQIcon_addFile2(self.h, struct_miqt_string(data: fileName, len: csize_t(len(fileName))), size.h)

proc addFile*(self: gen_qicon_types.QIcon, fileName: string, size: gen_qsize_types.QSize, mode: cint): void =
  fcQIcon_addFile3(self.h, struct_miqt_string(data: fileName, len: csize_t(len(fileName))), size.h, cint(mode))

proc addFile*(self: gen_qicon_types.QIcon, fileName: string, size: gen_qsize_types.QSize, mode: cint, state: cint): void =
  fcQIcon_addFile4(self.h, struct_miqt_string(data: fileName, len: csize_t(len(fileName))), size.h, cint(mode), cint(state))

proc availableSizes*(self: gen_qicon_types.QIcon, mode: cint): seq[gen_qsize_types.QSize] =
  var v_ma = fcQIcon_availableSizes1(self.h, cint(mode))
  var vx_ret = newSeq[gen_qsize_types.QSize](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qsize_types.QSize(h: v_outCast[i])
  vx_ret

proc availableSizes*(self: gen_qicon_types.QIcon, mode: cint, state: cint): seq[gen_qsize_types.QSize] =
  var v_ma = fcQIcon_availableSizes2(self.h, cint(mode), cint(state))
  var vx_ret = newSeq[gen_qsize_types.QSize](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qsize_types.QSize(h: v_outCast[i])
  vx_ret

proc create*(T: type gen_qicon_types.QIcon): gen_qicon_types.QIcon =
  gen_qicon_types.QIcon(h: fcQIcon_new())

proc create*(T: type gen_qicon_types.QIcon,
    pixmap: gen_qpixmap_types.QPixmap): gen_qicon_types.QIcon =
  gen_qicon_types.QIcon(h: fcQIcon_new2(pixmap.h))

proc create*(T: type gen_qicon_types.QIcon,
    other: gen_qicon_types.QIcon): gen_qicon_types.QIcon =
  gen_qicon_types.QIcon(h: fcQIcon_new3(other.h))

proc create*(T: type gen_qicon_types.QIcon,
    fileName: string): gen_qicon_types.QIcon =
  gen_qicon_types.QIcon(h: fcQIcon_new4(struct_miqt_string(data: fileName, len: csize_t(len(fileName)))))

proc create*(T: type gen_qicon_types.QIcon,
    engine: gen_qiconengine_types.QIconEngine): gen_qicon_types.QIcon =
  gen_qicon_types.QIcon(h: fcQIcon_new5(engine.h))

proc delete*(self: gen_qicon_types.QIcon) =
  fcQIcon_delete(self.h)
