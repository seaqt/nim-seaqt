import ./qtgui_pkg

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

proc fcQIcon_operatorAssign(self: pointer, fromVal: pointer): void {.importc: "QIcon_operatorAssign".}
proc fcQIcon_swap(self: pointer, other: pointer): void {.importc: "QIcon_swap".}
proc fcQIcon_ToQVariant(self: pointer): pointer {.importc: "QIcon_ToQVariant".}
proc fcQIcon_pixmapSize(self: pointer, size: pointer): pointer {.importc: "QIcon_pixmap_size".}
proc fcQIcon_pixmapWH(self: pointer, w: cint, h: cint): pointer {.importc: "QIcon_pixmap_w_h".}
proc fcQIcon_pixmapExtent(self: pointer, extent: cint): pointer {.importc: "QIcon_pixmap_extent".}
proc fcQIcon_pixmapSizeDevicePixelRatio(self: pointer, size: pointer, devicePixelRatio: float64): pointer {.importc: "QIcon_pixmap_size_devicePixelRatio".}
proc fcQIcon_pixmapWindowSize(self: pointer, window: pointer, size: pointer): pointer {.importc: "QIcon_pixmap_window_size".}
proc fcQIcon_actualSizeSize(self: pointer, size: pointer): pointer {.importc: "QIcon_actualSize_size".}
proc fcQIcon_actualSizeWindowSize(self: pointer, window: pointer, size: pointer): pointer {.importc: "QIcon_actualSize_window_size".}
proc fcQIcon_name(self: pointer): struct_seaqt_string {.importc: "QIcon_name".}
proc fcQIcon_paintPainterRect(self: pointer, painter: pointer, rect: pointer): void {.importc: "QIcon_paint_painter_rect".}
proc fcQIcon_paintPainterXYWH(self: pointer, painter: pointer, x: cint, y: cint, w: cint, h: cint): void {.importc: "QIcon_paint_painter_x_y_w_h".}
proc fcQIcon_isNull(self: pointer): bool {.importc: "QIcon_isNull".}
proc fcQIcon_isDetached(self: pointer): bool {.importc: "QIcon_isDetached".}
proc fcQIcon_detach(self: pointer): void {.importc: "QIcon_detach".}
proc fcQIcon_cacheKey(self: pointer): clonglong {.importc: "QIcon_cacheKey".}
proc fcQIcon_addPixmapPixmap(self: pointer, pixmap: pointer): void {.importc: "QIcon_addPixmap_pixmap".}
proc fcQIcon_addFileFileName(self: pointer, fileName: struct_seaqt_string): void {.importc: "QIcon_addFile_fileName".}
proc fcQIcon_availableSizes(self: pointer): struct_seaqt_array {.importc: "QIcon_availableSizes".}
proc fcQIcon_setIsMask(self: pointer, isMask: bool): void {.importc: "QIcon_setIsMask".}
proc fcQIcon_isMask(self: pointer): bool {.importc: "QIcon_isMask".}
proc fcQIcon_fromThemeName(name: struct_seaqt_string): pointer {.importc: "QIcon_fromTheme_name".}
proc fcQIcon_fromThemeNameFallback(name: struct_seaqt_string, fallback: pointer): pointer {.importc: "QIcon_fromTheme_name_fallback".}
proc fcQIcon_hasThemeIcon(name: struct_seaqt_string): bool {.importc: "QIcon_hasThemeIcon".}
proc fcQIcon_themeSearchPaths(): struct_seaqt_array {.importc: "QIcon_themeSearchPaths".}
proc fcQIcon_setThemeSearchPaths(searchpath: struct_seaqt_array): void {.importc: "QIcon_setThemeSearchPaths".}
proc fcQIcon_fallbackSearchPaths(): struct_seaqt_array {.importc: "QIcon_fallbackSearchPaths".}
proc fcQIcon_setFallbackSearchPaths(paths: struct_seaqt_array): void {.importc: "QIcon_setFallbackSearchPaths".}
proc fcQIcon_themeName(): struct_seaqt_string {.importc: "QIcon_themeName".}
proc fcQIcon_setThemeName(path: struct_seaqt_string): void {.importc: "QIcon_setThemeName".}
proc fcQIcon_fallbackThemeName(): struct_seaqt_string {.importc: "QIcon_fallbackThemeName".}
proc fcQIcon_setFallbackThemeName(name: struct_seaqt_string): void {.importc: "QIcon_setFallbackThemeName".}
proc fcQIcon_pixmapSizeMode(self: pointer, size: pointer, mode: cint): pointer {.importc: "QIcon_pixmap_size_mode".}
proc fcQIcon_pixmapSizeModeState(self: pointer, size: pointer, mode: cint, state: cint): pointer {.importc: "QIcon_pixmap_size_mode_state".}
proc fcQIcon_pixmapWHMode(self: pointer, w: cint, h: cint, mode: cint): pointer {.importc: "QIcon_pixmap_w_h_mode".}
proc fcQIcon_pixmapWHModeState(self: pointer, w: cint, h: cint, mode: cint, state: cint): pointer {.importc: "QIcon_pixmap_w_h_mode_state".}
proc fcQIcon_pixmapExtentMode(self: pointer, extent: cint, mode: cint): pointer {.importc: "QIcon_pixmap_extent_mode".}
proc fcQIcon_pixmapExtentModeState(self: pointer, extent: cint, mode: cint, state: cint): pointer {.importc: "QIcon_pixmap_extent_mode_state".}
proc fcQIcon_pixmapSizeDevicePixelRatioMode(self: pointer, size: pointer, devicePixelRatio: float64, mode: cint): pointer {.importc: "QIcon_pixmap_size_devicePixelRatio_mode".}
proc fcQIcon_pixmapSizeDevicePixelRatioModeState(self: pointer, size: pointer, devicePixelRatio: float64, mode: cint, state: cint): pointer {.importc: "QIcon_pixmap_size_devicePixelRatio_mode_state".}
proc fcQIcon_pixmapWindowSizeMode(self: pointer, window: pointer, size: pointer, mode: cint): pointer {.importc: "QIcon_pixmap_window_size_mode".}
proc fcQIcon_pixmapWindowSizeModeState(self: pointer, window: pointer, size: pointer, mode: cint, state: cint): pointer {.importc: "QIcon_pixmap_window_size_mode_state".}
proc fcQIcon_actualSizeSizeMode(self: pointer, size: pointer, mode: cint): pointer {.importc: "QIcon_actualSize_size_mode".}
proc fcQIcon_actualSizeSizeModeState(self: pointer, size: pointer, mode: cint, state: cint): pointer {.importc: "QIcon_actualSize_size_mode_state".}
proc fcQIcon_actualSizeWindowSizeMode(self: pointer, window: pointer, size: pointer, mode: cint): pointer {.importc: "QIcon_actualSize_window_size_mode".}
proc fcQIcon_actualSizeWindowSizeModeState(self: pointer, window: pointer, size: pointer, mode: cint, state: cint): pointer {.importc: "QIcon_actualSize_window_size_mode_state".}
proc fcQIcon_paintPainterRectAlignment(self: pointer, painter: pointer, rect: pointer, alignment: cint): void {.importc: "QIcon_paint_painter_rect_alignment".}
proc fcQIcon_paintPainterRectAlignmentMode(self: pointer, painter: pointer, rect: pointer, alignment: cint, mode: cint): void {.importc: "QIcon_paint_painter_rect_alignment_mode".}
proc fcQIcon_paintPainterRectAlignmentModeState(self: pointer, painter: pointer, rect: pointer, alignment: cint, mode: cint, state: cint): void {.importc: "QIcon_paint_painter_rect_alignment_mode_state".}
proc fcQIcon_paintPainterXYWHAlignment(self: pointer, painter: pointer, x: cint, y: cint, w: cint, h: cint, alignment: cint): void {.importc: "QIcon_paint_painter_x_y_w_h_alignment".}
proc fcQIcon_paintPainterXYWHAlignmentMode(self: pointer, painter: pointer, x: cint, y: cint, w: cint, h: cint, alignment: cint, mode: cint): void {.importc: "QIcon_paint_painter_x_y_w_h_alignment_mode".}
proc fcQIcon_paintPainterXYWHAlignmentModeState(self: pointer, painter: pointer, x: cint, y: cint, w: cint, h: cint, alignment: cint, mode: cint, state: cint): void {.importc: "QIcon_paint_painter_x_y_w_h_alignment_mode_state".}
proc fcQIcon_addPixmapPixmapMode(self: pointer, pixmap: pointer, mode: cint): void {.importc: "QIcon_addPixmap_pixmap_mode".}
proc fcQIcon_addPixmapPixmapModeState(self: pointer, pixmap: pointer, mode: cint, state: cint): void {.importc: "QIcon_addPixmap_pixmap_mode_state".}
proc fcQIcon_addFileFileNameSize(self: pointer, fileName: struct_seaqt_string, size: pointer): void {.importc: "QIcon_addFile_fileName_size".}
proc fcQIcon_addFileFileNameSizeMode(self: pointer, fileName: struct_seaqt_string, size: pointer, mode: cint): void {.importc: "QIcon_addFile_fileName_size_mode".}
proc fcQIcon_addFileFileNameSizeModeState(self: pointer, fileName: struct_seaqt_string, size: pointer, mode: cint, state: cint): void {.importc: "QIcon_addFile_fileName_size_mode_state".}
proc fcQIcon_availableSizesMode(self: pointer, mode: cint): struct_seaqt_array {.importc: "QIcon_availableSizes_mode".}
proc fcQIcon_availableSizesModeState(self: pointer, mode: cint, state: cint): struct_seaqt_array {.importc: "QIcon_availableSizes_mode_state".}
proc fcQIcon_new(): ptr cQIcon {.importc: "QIcon_new".}
proc fcQIcon_new2(pixmap: pointer): ptr cQIcon {.importc: "QIcon_new_pixmap".}
proc fcQIcon_new3(fromVal: pointer): ptr cQIcon {.importc: "QIcon_new_from".}
proc fcQIcon_new4(fileName: struct_seaqt_string): ptr cQIcon {.importc: "QIcon_new_fileName".}
proc fcQIcon_new5(engine: pointer): ptr cQIcon {.importc: "QIcon_new_engine".}

proc operatorAssign*(self: gen_qicon_types.QIcon, fromVal: gen_qicon_types.QIcon): void =
  fcQIcon_operatorAssign(self.h, fromVal.h)

proc swap*(self: gen_qicon_types.QIcon, other: gen_qicon_types.QIcon): void =
  fcQIcon_swap(self.h, other.h)

proc ToQVariant*(self: gen_qicon_types.QIcon): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQIcon_ToQVariant(self.h), owned: true)

proc pixmap*(self: gen_qicon_types.QIcon, size: gen_qsize_types.QSize): gen_qpixmap_types.QPixmap =
  gen_qpixmap_types.QPixmap(h: fcQIcon_pixmapSize(self.h, size.h), owned: true)

proc pixmap*(self: gen_qicon_types.QIcon, w: cint, h: cint): gen_qpixmap_types.QPixmap =
  gen_qpixmap_types.QPixmap(h: fcQIcon_pixmapWH(self.h, w, h), owned: true)

proc pixmap*(self: gen_qicon_types.QIcon, extent: cint): gen_qpixmap_types.QPixmap =
  gen_qpixmap_types.QPixmap(h: fcQIcon_pixmapExtent(self.h, extent), owned: true)

proc pixmap*(self: gen_qicon_types.QIcon, size: gen_qsize_types.QSize, devicePixelRatio: float64): gen_qpixmap_types.QPixmap =
  gen_qpixmap_types.QPixmap(h: fcQIcon_pixmapSizeDevicePixelRatio(self.h, size.h, devicePixelRatio), owned: true)

proc pixmap*(self: gen_qicon_types.QIcon, window: gen_qwindow_types.QWindow, size: gen_qsize_types.QSize): gen_qpixmap_types.QPixmap =
  gen_qpixmap_types.QPixmap(h: fcQIcon_pixmapWindowSize(self.h, window.h, size.h), owned: true)

proc actualSize*(self: gen_qicon_types.QIcon, size: gen_qsize_types.QSize): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQIcon_actualSizeSize(self.h, size.h), owned: true)

proc actualSize*(self: gen_qicon_types.QIcon, window: gen_qwindow_types.QWindow, size: gen_qsize_types.QSize): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQIcon_actualSizeWindowSize(self.h, window.h, size.h), owned: true)

proc name*(self: gen_qicon_types.QIcon): string =
  let v_ms = fcQIcon_name(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc paint*(self: gen_qicon_types.QIcon, painter: gen_qpainter_types.QPainter, rect: gen_qrect_types.QRect): void =
  fcQIcon_paintPainterRect(self.h, painter.h, rect.h)

proc paint*(self: gen_qicon_types.QIcon, painter: gen_qpainter_types.QPainter, x: cint, y: cint, w: cint, h: cint): void =
  fcQIcon_paintPainterXYWH(self.h, painter.h, x, y, w, h)

proc isNull*(self: gen_qicon_types.QIcon): bool =
  fcQIcon_isNull(self.h)

proc isDetached*(self: gen_qicon_types.QIcon): bool =
  fcQIcon_isDetached(self.h)

proc detach*(self: gen_qicon_types.QIcon): void =
  fcQIcon_detach(self.h)

proc cacheKey*(self: gen_qicon_types.QIcon): clonglong =
  fcQIcon_cacheKey(self.h)

proc addPixmap*(self: gen_qicon_types.QIcon, pixmap: gen_qpixmap_types.QPixmap): void =
  fcQIcon_addPixmapPixmap(self.h, pixmap.h)

proc addFile*(self: gen_qicon_types.QIcon, fileName: openArray[char]): void =
  fcQIcon_addFileFileName(self.h, struct_seaqt_string(data: if len(fileName) > 0: addr fileName[0] else: nil, len: csize_t(len(fileName))))

proc availableSizes*(self: gen_qicon_types.QIcon): seq[gen_qsize_types.QSize] =
  var v_ma = fcQIcon_availableSizes(self.h)
  var vx_ret = newSeq[gen_qsize_types.QSize](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qsize_types.QSize(h: v_outCast[i], owned: true)
  c_free(v_ma.data)
  vx_ret

proc setIsMask*(self: gen_qicon_types.QIcon, isMask: bool): void =
  fcQIcon_setIsMask(self.h, isMask)

proc isMask*(self: gen_qicon_types.QIcon): bool =
  fcQIcon_isMask(self.h)

proc fromTheme*(_: type gen_qicon_types.QIcon, name: openArray[char]): gen_qicon_types.QIcon =
  gen_qicon_types.QIcon(h: fcQIcon_fromThemeName(struct_seaqt_string(data: if len(name) > 0: addr name[0] else: nil, len: csize_t(len(name)))), owned: true)

proc fromTheme*(_: type gen_qicon_types.QIcon, name: openArray[char], fallback: gen_qicon_types.QIcon): gen_qicon_types.QIcon =
  gen_qicon_types.QIcon(h: fcQIcon_fromThemeNameFallback(struct_seaqt_string(data: if len(name) > 0: addr name[0] else: nil, len: csize_t(len(name))), fallback.h), owned: true)

proc hasThemeIcon*(_: type gen_qicon_types.QIcon, name: openArray[char]): bool =
  fcQIcon_hasThemeIcon(struct_seaqt_string(data: if len(name) > 0: addr name[0] else: nil, len: csize_t(len(name))))

proc themeSearchPaths*(_: type gen_qicon_types.QIcon): seq[string] =
  var v_ma = fcQIcon_themeSearchPaths()
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_seaqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(vx_lv_ms)
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  c_free(v_ma.data)
  vx_ret

proc setThemeSearchPaths*(_: type gen_qicon_types.QIcon, searchpath: openArray[string]): void =
  var searchpath_CArray = newSeq[struct_seaqt_string](len(searchpath))
  for i in 0..<len(searchpath):
    searchpath_CArray[i] = struct_seaqt_string(data: if len(searchpath[i]) > 0: addr searchpath[i][0] else: nil, len: csize_t(len(searchpath[i])))

  fcQIcon_setThemeSearchPaths(struct_seaqt_array(len: csize_t(len(searchpath)), data: if len(searchpath) == 0: nil else: addr(searchpath_CArray[0])))

proc fallbackSearchPaths*(_: type gen_qicon_types.QIcon): seq[string] =
  var v_ma = fcQIcon_fallbackSearchPaths()
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_seaqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(vx_lv_ms)
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  c_free(v_ma.data)
  vx_ret

proc setFallbackSearchPaths*(_: type gen_qicon_types.QIcon, paths: openArray[string]): void =
  var paths_CArray = newSeq[struct_seaqt_string](len(paths))
  for i in 0..<len(paths):
    paths_CArray[i] = struct_seaqt_string(data: if len(paths[i]) > 0: addr paths[i][0] else: nil, len: csize_t(len(paths[i])))

  fcQIcon_setFallbackSearchPaths(struct_seaqt_array(len: csize_t(len(paths)), data: if len(paths) == 0: nil else: addr(paths_CArray[0])))

proc themeName*(_: type gen_qicon_types.QIcon): string =
  let v_ms = fcQIcon_themeName()
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc setThemeName*(_: type gen_qicon_types.QIcon, path: openArray[char]): void =
  fcQIcon_setThemeName(struct_seaqt_string(data: if len(path) > 0: addr path[0] else: nil, len: csize_t(len(path))))

proc fallbackThemeName*(_: type gen_qicon_types.QIcon): string =
  let v_ms = fcQIcon_fallbackThemeName()
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc setFallbackThemeName*(_: type gen_qicon_types.QIcon, name: openArray[char]): void =
  fcQIcon_setFallbackThemeName(struct_seaqt_string(data: if len(name) > 0: addr name[0] else: nil, len: csize_t(len(name))))

proc pixmap*(self: gen_qicon_types.QIcon, size: gen_qsize_types.QSize, mode: cint): gen_qpixmap_types.QPixmap =
  gen_qpixmap_types.QPixmap(h: fcQIcon_pixmapSizeMode(self.h, size.h, cint(mode)), owned: true)

proc pixmap*(self: gen_qicon_types.QIcon, size: gen_qsize_types.QSize, mode: cint, state: cint): gen_qpixmap_types.QPixmap =
  gen_qpixmap_types.QPixmap(h: fcQIcon_pixmapSizeModeState(self.h, size.h, cint(mode), cint(state)), owned: true)

proc pixmap*(self: gen_qicon_types.QIcon, w: cint, h: cint, mode: cint): gen_qpixmap_types.QPixmap =
  gen_qpixmap_types.QPixmap(h: fcQIcon_pixmapWHMode(self.h, w, h, cint(mode)), owned: true)

proc pixmap*(self: gen_qicon_types.QIcon, w: cint, h: cint, mode: cint, state: cint): gen_qpixmap_types.QPixmap =
  gen_qpixmap_types.QPixmap(h: fcQIcon_pixmapWHModeState(self.h, w, h, cint(mode), cint(state)), owned: true)

proc pixmap2*(self: gen_qicon_types.QIcon, extent: cint, mode: cint): gen_qpixmap_types.QPixmap =
  gen_qpixmap_types.QPixmap(h: fcQIcon_pixmapExtentMode(self.h, extent, cint(mode)), owned: true)

proc pixmap2*(self: gen_qicon_types.QIcon, extent: cint, mode: cint, state: cint): gen_qpixmap_types.QPixmap =
  gen_qpixmap_types.QPixmap(h: fcQIcon_pixmapExtentModeState(self.h, extent, cint(mode), cint(state)), owned: true)

proc pixmap*(self: gen_qicon_types.QIcon, size: gen_qsize_types.QSize, devicePixelRatio: float64, mode: cint): gen_qpixmap_types.QPixmap =
  gen_qpixmap_types.QPixmap(h: fcQIcon_pixmapSizeDevicePixelRatioMode(self.h, size.h, devicePixelRatio, cint(mode)), owned: true)

proc pixmap*(self: gen_qicon_types.QIcon, size: gen_qsize_types.QSize, devicePixelRatio: float64, mode: cint, state: cint): gen_qpixmap_types.QPixmap =
  gen_qpixmap_types.QPixmap(h: fcQIcon_pixmapSizeDevicePixelRatioModeState(self.h, size.h, devicePixelRatio, cint(mode), cint(state)), owned: true)

proc pixmap*(self: gen_qicon_types.QIcon, window: gen_qwindow_types.QWindow, size: gen_qsize_types.QSize, mode: cint): gen_qpixmap_types.QPixmap =
  gen_qpixmap_types.QPixmap(h: fcQIcon_pixmapWindowSizeMode(self.h, window.h, size.h, cint(mode)), owned: true)

proc pixmap*(self: gen_qicon_types.QIcon, window: gen_qwindow_types.QWindow, size: gen_qsize_types.QSize, mode: cint, state: cint): gen_qpixmap_types.QPixmap =
  gen_qpixmap_types.QPixmap(h: fcQIcon_pixmapWindowSizeModeState(self.h, window.h, size.h, cint(mode), cint(state)), owned: true)

proc actualSize*(self: gen_qicon_types.QIcon, size: gen_qsize_types.QSize, mode: cint): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQIcon_actualSizeSizeMode(self.h, size.h, cint(mode)), owned: true)

proc actualSize*(self: gen_qicon_types.QIcon, size: gen_qsize_types.QSize, mode: cint, state: cint): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQIcon_actualSizeSizeModeState(self.h, size.h, cint(mode), cint(state)), owned: true)

proc actualSize*(self: gen_qicon_types.QIcon, window: gen_qwindow_types.QWindow, size: gen_qsize_types.QSize, mode: cint): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQIcon_actualSizeWindowSizeMode(self.h, window.h, size.h, cint(mode)), owned: true)

proc actualSize*(self: gen_qicon_types.QIcon, window: gen_qwindow_types.QWindow, size: gen_qsize_types.QSize, mode: cint, state: cint): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQIcon_actualSizeWindowSizeModeState(self.h, window.h, size.h, cint(mode), cint(state)), owned: true)

proc paint*(self: gen_qicon_types.QIcon, painter: gen_qpainter_types.QPainter, rect: gen_qrect_types.QRect, alignment: cint): void =
  fcQIcon_paintPainterRectAlignment(self.h, painter.h, rect.h, cint(alignment))

proc paint*(self: gen_qicon_types.QIcon, painter: gen_qpainter_types.QPainter, rect: gen_qrect_types.QRect, alignment: cint, mode: cint): void =
  fcQIcon_paintPainterRectAlignmentMode(self.h, painter.h, rect.h, cint(alignment), cint(mode))

proc paint*(self: gen_qicon_types.QIcon, painter: gen_qpainter_types.QPainter, rect: gen_qrect_types.QRect, alignment: cint, mode: cint, state: cint): void =
  fcQIcon_paintPainterRectAlignmentModeState(self.h, painter.h, rect.h, cint(alignment), cint(mode), cint(state))

proc paint*(self: gen_qicon_types.QIcon, painter: gen_qpainter_types.QPainter, x: cint, y: cint, w: cint, h: cint, alignment: cint): void =
  fcQIcon_paintPainterXYWHAlignment(self.h, painter.h, x, y, w, h, cint(alignment))

proc paint*(self: gen_qicon_types.QIcon, painter: gen_qpainter_types.QPainter, x: cint, y: cint, w: cint, h: cint, alignment: cint, mode: cint): void =
  fcQIcon_paintPainterXYWHAlignmentMode(self.h, painter.h, x, y, w, h, cint(alignment), cint(mode))

proc paint*(self: gen_qicon_types.QIcon, painter: gen_qpainter_types.QPainter, x: cint, y: cint, w: cint, h: cint, alignment: cint, mode: cint, state: cint): void =
  fcQIcon_paintPainterXYWHAlignmentModeState(self.h, painter.h, x, y, w, h, cint(alignment), cint(mode), cint(state))

proc addPixmap*(self: gen_qicon_types.QIcon, pixmap: gen_qpixmap_types.QPixmap, mode: cint): void =
  fcQIcon_addPixmapPixmapMode(self.h, pixmap.h, cint(mode))

proc addPixmap*(self: gen_qicon_types.QIcon, pixmap: gen_qpixmap_types.QPixmap, mode: cint, state: cint): void =
  fcQIcon_addPixmapPixmapModeState(self.h, pixmap.h, cint(mode), cint(state))

proc addFile*(self: gen_qicon_types.QIcon, fileName: openArray[char], size: gen_qsize_types.QSize): void =
  fcQIcon_addFileFileNameSize(self.h, struct_seaqt_string(data: if len(fileName) > 0: addr fileName[0] else: nil, len: csize_t(len(fileName))), size.h)

proc addFile*(self: gen_qicon_types.QIcon, fileName: openArray[char], size: gen_qsize_types.QSize, mode: cint): void =
  fcQIcon_addFileFileNameSizeMode(self.h, struct_seaqt_string(data: if len(fileName) > 0: addr fileName[0] else: nil, len: csize_t(len(fileName))), size.h, cint(mode))

proc addFile*(self: gen_qicon_types.QIcon, fileName: openArray[char], size: gen_qsize_types.QSize, mode: cint, state: cint): void =
  fcQIcon_addFileFileNameSizeModeState(self.h, struct_seaqt_string(data: if len(fileName) > 0: addr fileName[0] else: nil, len: csize_t(len(fileName))), size.h, cint(mode), cint(state))

proc availableSizes*(self: gen_qicon_types.QIcon, mode: cint): seq[gen_qsize_types.QSize] =
  var v_ma = fcQIcon_availableSizesMode(self.h, cint(mode))
  var vx_ret = newSeq[gen_qsize_types.QSize](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qsize_types.QSize(h: v_outCast[i], owned: true)
  c_free(v_ma.data)
  vx_ret

proc availableSizes*(self: gen_qicon_types.QIcon, mode: cint, state: cint): seq[gen_qsize_types.QSize] =
  var v_ma = fcQIcon_availableSizesModeState(self.h, cint(mode), cint(state))
  var vx_ret = newSeq[gen_qsize_types.QSize](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qsize_types.QSize(h: v_outCast[i], owned: true)
  c_free(v_ma.data)
  vx_ret

proc create*(T: type gen_qicon_types.QIcon): gen_qicon_types.QIcon =
  let tmp = gen_qicon_types.QIcon(h: fcQIcon_new(), owned: true)
  tmp
proc create*(T: type gen_qicon_types.QIcon,
    pixmap: gen_qpixmap_types.QPixmap): gen_qicon_types.QIcon =
  let tmp = gen_qicon_types.QIcon(h: fcQIcon_new2(pixmap.h), owned: true)
  tmp
proc create*(T: type gen_qicon_types.QIcon,
    fromVal: gen_qicon_types.QIcon): gen_qicon_types.QIcon =
  let tmp = gen_qicon_types.QIcon(h: fcQIcon_new3(fromVal.h), owned: true)
  tmp
proc create*(T: type gen_qicon_types.QIcon,
    fileName: openArray[char]): gen_qicon_types.QIcon =
  let tmp = gen_qicon_types.QIcon(h: fcQIcon_new4(struct_seaqt_string(data: if len(fileName) > 0: addr fileName[0] else: nil, len: csize_t(len(fileName)))), owned: true)
  tmp
proc create*(T: type gen_qicon_types.QIcon,
    engine: gen_qiconengine_types.QIconEngine): gen_qicon_types.QIcon =
  let tmp = gen_qicon_types.QIcon(h: fcQIcon_new5(engine.h), owned: true)
  tmp
