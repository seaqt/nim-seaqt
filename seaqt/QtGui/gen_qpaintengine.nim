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
{.compile("gen_qpaintengine.cpp", cflags).}


type QTextItemRenderFlagEnum* = distinct cint
template RightToLeft*(_: type QTextItemRenderFlagEnum): untyped = 1
template Overline*(_: type QTextItemRenderFlagEnum): untyped = 16
template Underline*(_: type QTextItemRenderFlagEnum): untyped = 32
template StrikeOut*(_: type QTextItemRenderFlagEnum): untyped = 64
template Dummy*(_: type QTextItemRenderFlagEnum): untyped = 4294967295


type QPaintEnginePaintEngineFeatureEnum* = distinct cint
template PrimitiveTransform*(_: type QPaintEnginePaintEngineFeatureEnum): untyped = 1
template PatternTransform*(_: type QPaintEnginePaintEngineFeatureEnum): untyped = 2
template PixmapTransform*(_: type QPaintEnginePaintEngineFeatureEnum): untyped = 4
template PatternBrush*(_: type QPaintEnginePaintEngineFeatureEnum): untyped = 8
template LinearGradientFill*(_: type QPaintEnginePaintEngineFeatureEnum): untyped = 16
template RadialGradientFill*(_: type QPaintEnginePaintEngineFeatureEnum): untyped = 32
template ConicalGradientFill*(_: type QPaintEnginePaintEngineFeatureEnum): untyped = 64
template AlphaBlend*(_: type QPaintEnginePaintEngineFeatureEnum): untyped = 128
template PorterDuff*(_: type QPaintEnginePaintEngineFeatureEnum): untyped = 256
template PainterPaths*(_: type QPaintEnginePaintEngineFeatureEnum): untyped = 512
template Antialiasing*(_: type QPaintEnginePaintEngineFeatureEnum): untyped = 1024
template BrushStroke*(_: type QPaintEnginePaintEngineFeatureEnum): untyped = 2048
template ConstantOpacity*(_: type QPaintEnginePaintEngineFeatureEnum): untyped = 4096
template MaskedBrush*(_: type QPaintEnginePaintEngineFeatureEnum): untyped = 8192
template PerspectiveTransform*(_: type QPaintEnginePaintEngineFeatureEnum): untyped = 16384
template BlendModes*(_: type QPaintEnginePaintEngineFeatureEnum): untyped = 32768
template ObjectBoundingModeGradients*(_: type QPaintEnginePaintEngineFeatureEnum): untyped = 65536
template RasterOpModes*(_: type QPaintEnginePaintEngineFeatureEnum): untyped = 131072
template PaintOutsidePaintEvent*(_: type QPaintEnginePaintEngineFeatureEnum): untyped = 536870912
template AllFeatures*(_: type QPaintEnginePaintEngineFeatureEnum): untyped = 4294967295


type QPaintEngineDirtyFlagEnum* = distinct cint
template DirtyPen*(_: type QPaintEngineDirtyFlagEnum): untyped = 1
template DirtyBrush*(_: type QPaintEngineDirtyFlagEnum): untyped = 2
template DirtyBrushOrigin*(_: type QPaintEngineDirtyFlagEnum): untyped = 4
template DirtyFont*(_: type QPaintEngineDirtyFlagEnum): untyped = 8
template DirtyBackground*(_: type QPaintEngineDirtyFlagEnum): untyped = 16
template DirtyBackgroundMode*(_: type QPaintEngineDirtyFlagEnum): untyped = 32
template DirtyTransform*(_: type QPaintEngineDirtyFlagEnum): untyped = 64
template DirtyClipRegion*(_: type QPaintEngineDirtyFlagEnum): untyped = 128
template DirtyClipPath*(_: type QPaintEngineDirtyFlagEnum): untyped = 256
template DirtyHints*(_: type QPaintEngineDirtyFlagEnum): untyped = 512
template DirtyCompositionMode*(_: type QPaintEngineDirtyFlagEnum): untyped = 1024
template DirtyClipEnabled*(_: type QPaintEngineDirtyFlagEnum): untyped = 2048
template DirtyOpacity*(_: type QPaintEngineDirtyFlagEnum): untyped = 4096
template AllDirty*(_: type QPaintEngineDirtyFlagEnum): untyped = 65535


type QPaintEnginePolygonDrawModeEnum* = distinct cint
template OddEvenMode*(_: type QPaintEnginePolygonDrawModeEnum): untyped = 0
template WindingMode*(_: type QPaintEnginePolygonDrawModeEnum): untyped = 1
template ConvexMode*(_: type QPaintEnginePolygonDrawModeEnum): untyped = 2
template PolylineMode*(_: type QPaintEnginePolygonDrawModeEnum): untyped = 3


type QPaintEngineTypeEnum* = distinct cint
template X11*(_: type QPaintEngineTypeEnum): untyped = 0
template Windows*(_: type QPaintEngineTypeEnum): untyped = 1
template QuickDraw*(_: type QPaintEngineTypeEnum): untyped = 2
template CoreGraphics*(_: type QPaintEngineTypeEnum): untyped = 3
template MacPrinter*(_: type QPaintEngineTypeEnum): untyped = 4
template QWindowSystem*(_: type QPaintEngineTypeEnum): untyped = 5
template PostScript*(_: type QPaintEngineTypeEnum): untyped = 6
template OpenGL*(_: type QPaintEngineTypeEnum): untyped = 7
template Picture*(_: type QPaintEngineTypeEnum): untyped = 8
template SVG*(_: type QPaintEngineTypeEnum): untyped = 9
template Raster*(_: type QPaintEngineTypeEnum): untyped = 10
template Direct3D*(_: type QPaintEngineTypeEnum): untyped = 11
template Pdf*(_: type QPaintEngineTypeEnum): untyped = 12
template OpenVG*(_: type QPaintEngineTypeEnum): untyped = 13
template OpenGL2*(_: type QPaintEngineTypeEnum): untyped = 14
template PaintBuffer*(_: type QPaintEngineTypeEnum): untyped = 15
template Blitter*(_: type QPaintEngineTypeEnum): untyped = 16
template Direct2D*(_: type QPaintEngineTypeEnum): untyped = 17
template User*(_: type QPaintEngineTypeEnum): untyped = 50
template MaxUser*(_: type QPaintEngineTypeEnum): untyped = 100


import ./gen_qpaintengine_types
export gen_qpaintengine_types

import
  ../QtCore/gen_qline_types,
  ../QtCore/gen_qpoint_types,
  ../QtCore/gen_qrect_types,
  ./gen_qbrush_types,
  ./gen_qfont_types,
  ./gen_qimage_types,
  ./gen_qmatrix_types,
  ./gen_qpaintdevice_types,
  ./gen_qpainter_types,
  ./gen_qpainterpath_types,
  ./gen_qpen_types,
  ./gen_qpixmap_types,
  ./gen_qregion_types,
  ./gen_qtransform_types
export
  gen_qline_types,
  gen_qpoint_types,
  gen_qrect_types,
  gen_qbrush_types,
  gen_qfont_types,
  gen_qimage_types,
  gen_qmatrix_types,
  gen_qpaintdevice_types,
  gen_qpainter_types,
  gen_qpainterpath_types,
  gen_qpen_types,
  gen_qpixmap_types,
  gen_qregion_types,
  gen_qtransform_types

type cQTextItem*{.exportc: "QTextItem", incompleteStruct.} = object
type cQPaintEngine*{.exportc: "QPaintEngine", incompleteStruct.} = object
type cQPaintEngineState*{.exportc: "QPaintEngineState", incompleteStruct.} = object

proc fcQTextItem_descent(self: pointer, ): float64 {.importc: "QTextItem_descent".}
proc fcQTextItem_ascent(self: pointer, ): float64 {.importc: "QTextItem_ascent".}
proc fcQTextItem_width(self: pointer, ): float64 {.importc: "QTextItem_width".}
proc fcQTextItem_renderFlags(self: pointer, ): cint {.importc: "QTextItem_renderFlags".}
proc fcQTextItem_text(self: pointer, ): struct_miqt_string {.importc: "QTextItem_text".}
proc fcQTextItem_font(self: pointer, ): pointer {.importc: "QTextItem_font".}
proc fcQTextItem_delete(self: pointer) {.importc: "QTextItem_delete".}
proc fcQPaintEngine_isActive(self: pointer, ): bool {.importc: "QPaintEngine_isActive".}
proc fcQPaintEngine_setActive(self: pointer, newState: bool): void {.importc: "QPaintEngine_setActive".}
proc fcQPaintEngine_begin(self: pointer, pdev: pointer): bool {.importc: "QPaintEngine_begin".}
proc fcQPaintEngine_endX(self: pointer, ): bool {.importc: "QPaintEngine_end".}
proc fcQPaintEngine_updateState(self: pointer, state: pointer): void {.importc: "QPaintEngine_updateState".}
proc fcQPaintEngine_drawRects(self: pointer, rects: pointer, rectCount: cint): void {.importc: "QPaintEngine_drawRects".}
proc fcQPaintEngine_drawRects2(self: pointer, rects: pointer, rectCount: cint): void {.importc: "QPaintEngine_drawRects2".}
proc fcQPaintEngine_drawLines(self: pointer, lines: pointer, lineCount: cint): void {.importc: "QPaintEngine_drawLines".}
proc fcQPaintEngine_drawLines2(self: pointer, lines: pointer, lineCount: cint): void {.importc: "QPaintEngine_drawLines2".}
proc fcQPaintEngine_drawEllipse(self: pointer, r: pointer): void {.importc: "QPaintEngine_drawEllipse".}
proc fcQPaintEngine_drawEllipseWithQRect(self: pointer, r: pointer): void {.importc: "QPaintEngine_drawEllipseWithQRect".}
proc fcQPaintEngine_drawPath(self: pointer, path: pointer): void {.importc: "QPaintEngine_drawPath".}
proc fcQPaintEngine_drawPoints(self: pointer, points: pointer, pointCount: cint): void {.importc: "QPaintEngine_drawPoints".}
proc fcQPaintEngine_drawPoints2(self: pointer, points: pointer, pointCount: cint): void {.importc: "QPaintEngine_drawPoints2".}
proc fcQPaintEngine_drawPolygon(self: pointer, points: pointer, pointCount: cint, mode: cint): void {.importc: "QPaintEngine_drawPolygon".}
proc fcQPaintEngine_drawPolygon2(self: pointer, points: pointer, pointCount: cint, mode: cint): void {.importc: "QPaintEngine_drawPolygon2".}
proc fcQPaintEngine_drawPixmap(self: pointer, r: pointer, pm: pointer, sr: pointer): void {.importc: "QPaintEngine_drawPixmap".}
proc fcQPaintEngine_drawTextItem(self: pointer, p: pointer, textItem: pointer): void {.importc: "QPaintEngine_drawTextItem".}
proc fcQPaintEngine_drawTiledPixmap(self: pointer, r: pointer, pixmap: pointer, s: pointer): void {.importc: "QPaintEngine_drawTiledPixmap".}
proc fcQPaintEngine_drawImage(self: pointer, r: pointer, pm: pointer, sr: pointer, flags: cint): void {.importc: "QPaintEngine_drawImage".}
proc fcQPaintEngine_setPaintDevice(self: pointer, device: pointer): void {.importc: "QPaintEngine_setPaintDevice".}
proc fcQPaintEngine_paintDevice(self: pointer, ): pointer {.importc: "QPaintEngine_paintDevice".}
proc fcQPaintEngine_setSystemClip(self: pointer, baseClip: pointer): void {.importc: "QPaintEngine_setSystemClip".}
proc fcQPaintEngine_systemClip(self: pointer, ): pointer {.importc: "QPaintEngine_systemClip".}
proc fcQPaintEngine_setSystemRect(self: pointer, rect: pointer): void {.importc: "QPaintEngine_setSystemRect".}
proc fcQPaintEngine_systemRect(self: pointer, ): pointer {.importc: "QPaintEngine_systemRect".}
proc fcQPaintEngine_coordinateOffset(self: pointer, ): pointer {.importc: "QPaintEngine_coordinateOffset".}
proc fcQPaintEngine_typeX(self: pointer, ): cint {.importc: "QPaintEngine_type".}
proc fcQPaintEngine_fixNegRect(self: pointer, x: ptr cint, y: ptr cint, w: ptr cint, h: ptr cint): void {.importc: "QPaintEngine_fixNegRect".}
proc fcQPaintEngine_testDirty(self: pointer, df: cint): bool {.importc: "QPaintEngine_testDirty".}
proc fcQPaintEngine_setDirty(self: pointer, df: cint): void {.importc: "QPaintEngine_setDirty".}
proc fcQPaintEngine_clearDirty(self: pointer, df: cint): void {.importc: "QPaintEngine_clearDirty".}
proc fcQPaintEngine_hasFeature(self: pointer, feature: cint): bool {.importc: "QPaintEngine_hasFeature".}
proc fcQPaintEngine_painter(self: pointer, ): pointer {.importc: "QPaintEngine_painter".}
proc fcQPaintEngine_syncState(self: pointer, ): void {.importc: "QPaintEngine_syncState".}
proc fcQPaintEngine_isExtended(self: pointer, ): bool {.importc: "QPaintEngine_isExtended".}
type cQPaintEngineVTable = object
  destructor*: proc(vtbl: ptr cQPaintEngineVTable, self: ptr cQPaintEngine) {.cdecl, raises:[], gcsafe.}
  begin*: proc(vtbl, self: pointer, pdev: pointer): bool {.cdecl, raises: [], gcsafe.}
  endX*: proc(vtbl, self: pointer, ): bool {.cdecl, raises: [], gcsafe.}
  updateState*: proc(vtbl, self: pointer, state: pointer): void {.cdecl, raises: [], gcsafe.}
  drawRects*: proc(vtbl, self: pointer, rects: pointer, rectCount: cint): void {.cdecl, raises: [], gcsafe.}
  drawRects2*: proc(vtbl, self: pointer, rects: pointer, rectCount: cint): void {.cdecl, raises: [], gcsafe.}
  drawLines*: proc(vtbl, self: pointer, lines: pointer, lineCount: cint): void {.cdecl, raises: [], gcsafe.}
  drawLines2*: proc(vtbl, self: pointer, lines: pointer, lineCount: cint): void {.cdecl, raises: [], gcsafe.}
  drawEllipse*: proc(vtbl, self: pointer, r: pointer): void {.cdecl, raises: [], gcsafe.}
  drawEllipseWithQRect*: proc(vtbl, self: pointer, r: pointer): void {.cdecl, raises: [], gcsafe.}
  drawPath*: proc(vtbl, self: pointer, path: pointer): void {.cdecl, raises: [], gcsafe.}
  drawPoints*: proc(vtbl, self: pointer, points: pointer, pointCount: cint): void {.cdecl, raises: [], gcsafe.}
  drawPoints2*: proc(vtbl, self: pointer, points: pointer, pointCount: cint): void {.cdecl, raises: [], gcsafe.}
  drawPolygon*: proc(vtbl, self: pointer, points: pointer, pointCount: cint, mode: cint): void {.cdecl, raises: [], gcsafe.}
  drawPolygon2*: proc(vtbl, self: pointer, points: pointer, pointCount: cint, mode: cint): void {.cdecl, raises: [], gcsafe.}
  drawPixmap*: proc(vtbl, self: pointer, r: pointer, pm: pointer, sr: pointer): void {.cdecl, raises: [], gcsafe.}
  drawTextItem*: proc(vtbl, self: pointer, p: pointer, textItem: pointer): void {.cdecl, raises: [], gcsafe.}
  drawTiledPixmap*: proc(vtbl, self: pointer, r: pointer, pixmap: pointer, s: pointer): void {.cdecl, raises: [], gcsafe.}
  drawImage*: proc(vtbl, self: pointer, r: pointer, pm: pointer, sr: pointer, flags: cint): void {.cdecl, raises: [], gcsafe.}
  coordinateOffset*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  typeX*: proc(vtbl, self: pointer, ): cint {.cdecl, raises: [], gcsafe.}
proc fcQPaintEngine_virtualbase_drawRects(self: pointer, rects: pointer, rectCount: cint): void {.importc: "QPaintEngine_virtualbase_drawRects".}
proc fcQPaintEngine_virtualbase_drawRects2(self: pointer, rects: pointer, rectCount: cint): void {.importc: "QPaintEngine_virtualbase_drawRects2".}
proc fcQPaintEngine_virtualbase_drawLines(self: pointer, lines: pointer, lineCount: cint): void {.importc: "QPaintEngine_virtualbase_drawLines".}
proc fcQPaintEngine_virtualbase_drawLines2(self: pointer, lines: pointer, lineCount: cint): void {.importc: "QPaintEngine_virtualbase_drawLines2".}
proc fcQPaintEngine_virtualbase_drawEllipse(self: pointer, r: pointer): void {.importc: "QPaintEngine_virtualbase_drawEllipse".}
proc fcQPaintEngine_virtualbase_drawEllipseWithQRect(self: pointer, r: pointer): void {.importc: "QPaintEngine_virtualbase_drawEllipseWithQRect".}
proc fcQPaintEngine_virtualbase_drawPath(self: pointer, path: pointer): void {.importc: "QPaintEngine_virtualbase_drawPath".}
proc fcQPaintEngine_virtualbase_drawPoints(self: pointer, points: pointer, pointCount: cint): void {.importc: "QPaintEngine_virtualbase_drawPoints".}
proc fcQPaintEngine_virtualbase_drawPoints2(self: pointer, points: pointer, pointCount: cint): void {.importc: "QPaintEngine_virtualbase_drawPoints2".}
proc fcQPaintEngine_virtualbase_drawPolygon(self: pointer, points: pointer, pointCount: cint, mode: cint): void {.importc: "QPaintEngine_virtualbase_drawPolygon".}
proc fcQPaintEngine_virtualbase_drawPolygon2(self: pointer, points: pointer, pointCount: cint, mode: cint): void {.importc: "QPaintEngine_virtualbase_drawPolygon2".}
proc fcQPaintEngine_virtualbase_drawTextItem(self: pointer, p: pointer, textItem: pointer): void {.importc: "QPaintEngine_virtualbase_drawTextItem".}
proc fcQPaintEngine_virtualbase_drawTiledPixmap(self: pointer, r: pointer, pixmap: pointer, s: pointer): void {.importc: "QPaintEngine_virtualbase_drawTiledPixmap".}
proc fcQPaintEngine_virtualbase_drawImage(self: pointer, r: pointer, pm: pointer, sr: pointer, flags: cint): void {.importc: "QPaintEngine_virtualbase_drawImage".}
proc fcQPaintEngine_virtualbase_coordinateOffset(self: pointer, ): pointer {.importc: "QPaintEngine_virtualbase_coordinateOffset".}
proc fcQPaintEngine_new(vtbl: pointer, ): ptr cQPaintEngine {.importc: "QPaintEngine_new".}
proc fcQPaintEngine_new2(vtbl: pointer, features: cint): ptr cQPaintEngine {.importc: "QPaintEngine_new2".}
proc fcQPaintEngine_delete(self: pointer) {.importc: "QPaintEngine_delete".}
proc fcQPaintEngineState_state(self: pointer, ): cint {.importc: "QPaintEngineState_state".}
proc fcQPaintEngineState_pen(self: pointer, ): pointer {.importc: "QPaintEngineState_pen".}
proc fcQPaintEngineState_brush(self: pointer, ): pointer {.importc: "QPaintEngineState_brush".}
proc fcQPaintEngineState_brushOrigin(self: pointer, ): pointer {.importc: "QPaintEngineState_brushOrigin".}
proc fcQPaintEngineState_backgroundBrush(self: pointer, ): pointer {.importc: "QPaintEngineState_backgroundBrush".}
proc fcQPaintEngineState_backgroundMode(self: pointer, ): cint {.importc: "QPaintEngineState_backgroundMode".}
proc fcQPaintEngineState_font(self: pointer, ): pointer {.importc: "QPaintEngineState_font".}
proc fcQPaintEngineState_matrix(self: pointer, ): pointer {.importc: "QPaintEngineState_matrix".}
proc fcQPaintEngineState_transform(self: pointer, ): pointer {.importc: "QPaintEngineState_transform".}
proc fcQPaintEngineState_clipOperation(self: pointer, ): cint {.importc: "QPaintEngineState_clipOperation".}
proc fcQPaintEngineState_clipRegion(self: pointer, ): pointer {.importc: "QPaintEngineState_clipRegion".}
proc fcQPaintEngineState_clipPath(self: pointer, ): pointer {.importc: "QPaintEngineState_clipPath".}
proc fcQPaintEngineState_isClipEnabled(self: pointer, ): bool {.importc: "QPaintEngineState_isClipEnabled".}
proc fcQPaintEngineState_renderHints(self: pointer, ): cint {.importc: "QPaintEngineState_renderHints".}
proc fcQPaintEngineState_compositionMode(self: pointer, ): cint {.importc: "QPaintEngineState_compositionMode".}
proc fcQPaintEngineState_opacity(self: pointer, ): float64 {.importc: "QPaintEngineState_opacity".}
proc fcQPaintEngineState_painter(self: pointer, ): pointer {.importc: "QPaintEngineState_painter".}
proc fcQPaintEngineState_brushNeedsResolving(self: pointer, ): bool {.importc: "QPaintEngineState_brushNeedsResolving".}
proc fcQPaintEngineState_penNeedsResolving(self: pointer, ): bool {.importc: "QPaintEngineState_penNeedsResolving".}
proc fcQPaintEngineState_delete(self: pointer) {.importc: "QPaintEngineState_delete".}

proc descent*(self: gen_qpaintengine_types.QTextItem, ): float64 =
  fcQTextItem_descent(self.h)

proc ascent*(self: gen_qpaintengine_types.QTextItem, ): float64 =
  fcQTextItem_ascent(self.h)

proc width*(self: gen_qpaintengine_types.QTextItem, ): float64 =
  fcQTextItem_width(self.h)

proc renderFlags*(self: gen_qpaintengine_types.QTextItem, ): cint =
  cint(fcQTextItem_renderFlags(self.h))

proc text*(self: gen_qpaintengine_types.QTextItem, ): string =
  let v_ms = fcQTextItem_text(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc font*(self: gen_qpaintengine_types.QTextItem, ): gen_qfont_types.QFont =
  gen_qfont_types.QFont(h: fcQTextItem_font(self.h))

proc delete*(self: gen_qpaintengine_types.QTextItem) =
  fcQTextItem_delete(self.h)
proc isActive*(self: gen_qpaintengine_types.QPaintEngine, ): bool =
  fcQPaintEngine_isActive(self.h)

proc setActive*(self: gen_qpaintengine_types.QPaintEngine, newState: bool): void =
  fcQPaintEngine_setActive(self.h, newState)

proc begin*(self: gen_qpaintengine_types.QPaintEngine, pdev: gen_qpaintdevice_types.QPaintDevice): bool =
  fcQPaintEngine_begin(self.h, pdev.h)

proc endX*(self: gen_qpaintengine_types.QPaintEngine, ): bool =
  fcQPaintEngine_endX(self.h)

proc updateState*(self: gen_qpaintengine_types.QPaintEngine, state: gen_qpaintengine_types.QPaintEngineState): void =
  fcQPaintEngine_updateState(self.h, state.h)

proc drawRects*(self: gen_qpaintengine_types.QPaintEngine, rects: gen_qrect_types.QRect, rectCount: cint): void =
  fcQPaintEngine_drawRects(self.h, rects.h, rectCount)

proc drawRects*(self: gen_qpaintengine_types.QPaintEngine, rects: gen_qrect_types.QRectF, rectCount: cint): void =
  fcQPaintEngine_drawRects2(self.h, rects.h, rectCount)

proc drawLines*(self: gen_qpaintengine_types.QPaintEngine, lines: gen_qline_types.QLine, lineCount: cint): void =
  fcQPaintEngine_drawLines(self.h, lines.h, lineCount)

proc drawLines*(self: gen_qpaintengine_types.QPaintEngine, lines: gen_qline_types.QLineF, lineCount: cint): void =
  fcQPaintEngine_drawLines2(self.h, lines.h, lineCount)

proc drawEllipse*(self: gen_qpaintengine_types.QPaintEngine, r: gen_qrect_types.QRectF): void =
  fcQPaintEngine_drawEllipse(self.h, r.h)

proc drawEllipse*(self: gen_qpaintengine_types.QPaintEngine, r: gen_qrect_types.QRect): void =
  fcQPaintEngine_drawEllipseWithQRect(self.h, r.h)

proc drawPath*(self: gen_qpaintengine_types.QPaintEngine, path: gen_qpainterpath_types.QPainterPath): void =
  fcQPaintEngine_drawPath(self.h, path.h)

proc drawPoints*(self: gen_qpaintengine_types.QPaintEngine, points: gen_qpoint_types.QPointF, pointCount: cint): void =
  fcQPaintEngine_drawPoints(self.h, points.h, pointCount)

proc drawPoints*(self: gen_qpaintengine_types.QPaintEngine, points: gen_qpoint_types.QPoint, pointCount: cint): void =
  fcQPaintEngine_drawPoints2(self.h, points.h, pointCount)

proc drawPolygon*(self: gen_qpaintengine_types.QPaintEngine, points: gen_qpoint_types.QPointF, pointCount: cint, mode: cint): void =
  fcQPaintEngine_drawPolygon(self.h, points.h, pointCount, cint(mode))

proc drawPolygon*(self: gen_qpaintengine_types.QPaintEngine, points: gen_qpoint_types.QPoint, pointCount: cint, mode: cint): void =
  fcQPaintEngine_drawPolygon2(self.h, points.h, pointCount, cint(mode))

proc drawPixmap*(self: gen_qpaintengine_types.QPaintEngine, r: gen_qrect_types.QRectF, pm: gen_qpixmap_types.QPixmap, sr: gen_qrect_types.QRectF): void =
  fcQPaintEngine_drawPixmap(self.h, r.h, pm.h, sr.h)

proc drawTextItem*(self: gen_qpaintengine_types.QPaintEngine, p: gen_qpoint_types.QPointF, textItem: gen_qpaintengine_types.QTextItem): void =
  fcQPaintEngine_drawTextItem(self.h, p.h, textItem.h)

proc drawTiledPixmap*(self: gen_qpaintengine_types.QPaintEngine, r: gen_qrect_types.QRectF, pixmap: gen_qpixmap_types.QPixmap, s: gen_qpoint_types.QPointF): void =
  fcQPaintEngine_drawTiledPixmap(self.h, r.h, pixmap.h, s.h)

proc drawImage*(self: gen_qpaintengine_types.QPaintEngine, r: gen_qrect_types.QRectF, pm: gen_qimage_types.QImage, sr: gen_qrect_types.QRectF, flags: cint): void =
  fcQPaintEngine_drawImage(self.h, r.h, pm.h, sr.h, cint(flags))

proc setPaintDevice*(self: gen_qpaintengine_types.QPaintEngine, device: gen_qpaintdevice_types.QPaintDevice): void =
  fcQPaintEngine_setPaintDevice(self.h, device.h)

proc paintDevice*(self: gen_qpaintengine_types.QPaintEngine, ): gen_qpaintdevice_types.QPaintDevice =
  gen_qpaintdevice_types.QPaintDevice(h: fcQPaintEngine_paintDevice(self.h))

proc setSystemClip*(self: gen_qpaintengine_types.QPaintEngine, baseClip: gen_qregion_types.QRegion): void =
  fcQPaintEngine_setSystemClip(self.h, baseClip.h)

proc systemClip*(self: gen_qpaintengine_types.QPaintEngine, ): gen_qregion_types.QRegion =
  gen_qregion_types.QRegion(h: fcQPaintEngine_systemClip(self.h))

proc setSystemRect*(self: gen_qpaintengine_types.QPaintEngine, rect: gen_qrect_types.QRect): void =
  fcQPaintEngine_setSystemRect(self.h, rect.h)

proc systemRect*(self: gen_qpaintengine_types.QPaintEngine, ): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fcQPaintEngine_systemRect(self.h))

proc coordinateOffset*(self: gen_qpaintengine_types.QPaintEngine, ): gen_qpoint_types.QPoint =
  gen_qpoint_types.QPoint(h: fcQPaintEngine_coordinateOffset(self.h))

proc typeX*(self: gen_qpaintengine_types.QPaintEngine, ): cint =
  cint(fcQPaintEngine_typeX(self.h))

proc fixNegRect*(self: gen_qpaintengine_types.QPaintEngine, x: ptr cint, y: ptr cint, w: ptr cint, h: ptr cint): void =
  fcQPaintEngine_fixNegRect(self.h, x, y, w, h)

proc testDirty*(self: gen_qpaintengine_types.QPaintEngine, df: cint): bool =
  fcQPaintEngine_testDirty(self.h, cint(df))

proc setDirty*(self: gen_qpaintengine_types.QPaintEngine, df: cint): void =
  fcQPaintEngine_setDirty(self.h, cint(df))

proc clearDirty*(self: gen_qpaintengine_types.QPaintEngine, df: cint): void =
  fcQPaintEngine_clearDirty(self.h, cint(df))

proc hasFeature*(self: gen_qpaintengine_types.QPaintEngine, feature: cint): bool =
  fcQPaintEngine_hasFeature(self.h, cint(feature))

proc painter*(self: gen_qpaintengine_types.QPaintEngine, ): gen_qpainter_types.QPainter =
  gen_qpainter_types.QPainter(h: fcQPaintEngine_painter(self.h))

proc syncState*(self: gen_qpaintengine_types.QPaintEngine, ): void =
  fcQPaintEngine_syncState(self.h)

proc isExtended*(self: gen_qpaintengine_types.QPaintEngine, ): bool =
  fcQPaintEngine_isExtended(self.h)

type QPaintEnginebeginProc* = proc(self: QPaintEngine, pdev: gen_qpaintdevice_types.QPaintDevice): bool {.raises: [], gcsafe.}
type QPaintEngineendXProc* = proc(self: QPaintEngine): bool {.raises: [], gcsafe.}
type QPaintEngineupdateStateProc* = proc(self: QPaintEngine, state: gen_qpaintengine_types.QPaintEngineState): void {.raises: [], gcsafe.}
type QPaintEnginedrawRectsProc* = proc(self: QPaintEngine, rects: gen_qrect_types.QRect, rectCount: cint): void {.raises: [], gcsafe.}
type QPaintEnginedrawRects2Proc* = proc(self: QPaintEngine, rects: gen_qrect_types.QRectF, rectCount: cint): void {.raises: [], gcsafe.}
type QPaintEnginedrawLinesProc* = proc(self: QPaintEngine, lines: gen_qline_types.QLine, lineCount: cint): void {.raises: [], gcsafe.}
type QPaintEnginedrawLines2Proc* = proc(self: QPaintEngine, lines: gen_qline_types.QLineF, lineCount: cint): void {.raises: [], gcsafe.}
type QPaintEnginedrawEllipseProc* = proc(self: QPaintEngine, r: gen_qrect_types.QRectF): void {.raises: [], gcsafe.}
type QPaintEnginedrawEllipseWithQRectProc* = proc(self: QPaintEngine, r: gen_qrect_types.QRect): void {.raises: [], gcsafe.}
type QPaintEnginedrawPathProc* = proc(self: QPaintEngine, path: gen_qpainterpath_types.QPainterPath): void {.raises: [], gcsafe.}
type QPaintEnginedrawPointsProc* = proc(self: QPaintEngine, points: gen_qpoint_types.QPointF, pointCount: cint): void {.raises: [], gcsafe.}
type QPaintEnginedrawPoints2Proc* = proc(self: QPaintEngine, points: gen_qpoint_types.QPoint, pointCount: cint): void {.raises: [], gcsafe.}
type QPaintEnginedrawPolygonProc* = proc(self: QPaintEngine, points: gen_qpoint_types.QPointF, pointCount: cint, mode: cint): void {.raises: [], gcsafe.}
type QPaintEnginedrawPolygon2Proc* = proc(self: QPaintEngine, points: gen_qpoint_types.QPoint, pointCount: cint, mode: cint): void {.raises: [], gcsafe.}
type QPaintEnginedrawPixmapProc* = proc(self: QPaintEngine, r: gen_qrect_types.QRectF, pm: gen_qpixmap_types.QPixmap, sr: gen_qrect_types.QRectF): void {.raises: [], gcsafe.}
type QPaintEnginedrawTextItemProc* = proc(self: QPaintEngine, p: gen_qpoint_types.QPointF, textItem: gen_qpaintengine_types.QTextItem): void {.raises: [], gcsafe.}
type QPaintEnginedrawTiledPixmapProc* = proc(self: QPaintEngine, r: gen_qrect_types.QRectF, pixmap: gen_qpixmap_types.QPixmap, s: gen_qpoint_types.QPointF): void {.raises: [], gcsafe.}
type QPaintEnginedrawImageProc* = proc(self: QPaintEngine, r: gen_qrect_types.QRectF, pm: gen_qimage_types.QImage, sr: gen_qrect_types.QRectF, flags: cint): void {.raises: [], gcsafe.}
type QPaintEnginecoordinateOffsetProc* = proc(self: QPaintEngine): gen_qpoint_types.QPoint {.raises: [], gcsafe.}
type QPaintEnginetypeXProc* = proc(self: QPaintEngine): cint {.raises: [], gcsafe.}
type QPaintEngineVTable* = object
  vtbl: cQPaintEngineVTable
  begin*: QPaintEnginebeginProc
  endX*: QPaintEngineendXProc
  updateState*: QPaintEngineupdateStateProc
  drawRects*: QPaintEnginedrawRectsProc
  drawRects2*: QPaintEnginedrawRects2Proc
  drawLines*: QPaintEnginedrawLinesProc
  drawLines2*: QPaintEnginedrawLines2Proc
  drawEllipse*: QPaintEnginedrawEllipseProc
  drawEllipseWithQRect*: QPaintEnginedrawEllipseWithQRectProc
  drawPath*: QPaintEnginedrawPathProc
  drawPoints*: QPaintEnginedrawPointsProc
  drawPoints2*: QPaintEnginedrawPoints2Proc
  drawPolygon*: QPaintEnginedrawPolygonProc
  drawPolygon2*: QPaintEnginedrawPolygon2Proc
  drawPixmap*: QPaintEnginedrawPixmapProc
  drawTextItem*: QPaintEnginedrawTextItemProc
  drawTiledPixmap*: QPaintEnginedrawTiledPixmapProc
  drawImage*: QPaintEnginedrawImageProc
  coordinateOffset*: QPaintEnginecoordinateOffsetProc
  typeX*: QPaintEnginetypeXProc
proc miqt_exec_callback_cQPaintEngine_begin(vtbl: pointer, self: pointer, pdev: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QPaintEngineVTable](vtbl)
  let self = QPaintEngine(h: self)
  let slotval1 = gen_qpaintdevice_types.QPaintDevice(h: pdev)
  var virtualReturn = vtbl[].begin(self, slotval1)
  virtualReturn

proc miqt_exec_callback_cQPaintEngine_endX(vtbl: pointer, self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QPaintEngineVTable](vtbl)
  let self = QPaintEngine(h: self)
  var virtualReturn = vtbl[].endX(self)
  virtualReturn

proc miqt_exec_callback_cQPaintEngine_updateState(vtbl: pointer, self: pointer, state: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPaintEngineVTable](vtbl)
  let self = QPaintEngine(h: self)
  let slotval1 = gen_qpaintengine_types.QPaintEngineState(h: state)
  vtbl[].updateState(self, slotval1)

proc QPaintEnginedrawRects*(self: gen_qpaintengine_types.QPaintEngine, rects: gen_qrect_types.QRect, rectCount: cint): void =
  fcQPaintEngine_virtualbase_drawRects(self.h, rects.h, rectCount)

proc miqt_exec_callback_cQPaintEngine_drawRects(vtbl: pointer, self: pointer, rects: pointer, rectCount: cint): void {.cdecl.} =
  let vtbl = cast[ptr QPaintEngineVTable](vtbl)
  let self = QPaintEngine(h: self)
  let slotval1 = gen_qrect_types.QRect(h: rects)
  let slotval2 = rectCount
  vtbl[].drawRects(self, slotval1, slotval2)

proc QPaintEnginedrawRects*(self: gen_qpaintengine_types.QPaintEngine, rects: gen_qrect_types.QRectF, rectCount: cint): void =
  fcQPaintEngine_virtualbase_drawRects2(self.h, rects.h, rectCount)

proc miqt_exec_callback_cQPaintEngine_drawRects2(vtbl: pointer, self: pointer, rects: pointer, rectCount: cint): void {.cdecl.} =
  let vtbl = cast[ptr QPaintEngineVTable](vtbl)
  let self = QPaintEngine(h: self)
  let slotval1 = gen_qrect_types.QRectF(h: rects)
  let slotval2 = rectCount
  vtbl[].drawRects2(self, slotval1, slotval2)

proc QPaintEnginedrawLines*(self: gen_qpaintengine_types.QPaintEngine, lines: gen_qline_types.QLine, lineCount: cint): void =
  fcQPaintEngine_virtualbase_drawLines(self.h, lines.h, lineCount)

proc miqt_exec_callback_cQPaintEngine_drawLines(vtbl: pointer, self: pointer, lines: pointer, lineCount: cint): void {.cdecl.} =
  let vtbl = cast[ptr QPaintEngineVTable](vtbl)
  let self = QPaintEngine(h: self)
  let slotval1 = gen_qline_types.QLine(h: lines)
  let slotval2 = lineCount
  vtbl[].drawLines(self, slotval1, slotval2)

proc QPaintEnginedrawLines*(self: gen_qpaintengine_types.QPaintEngine, lines: gen_qline_types.QLineF, lineCount: cint): void =
  fcQPaintEngine_virtualbase_drawLines2(self.h, lines.h, lineCount)

proc miqt_exec_callback_cQPaintEngine_drawLines2(vtbl: pointer, self: pointer, lines: pointer, lineCount: cint): void {.cdecl.} =
  let vtbl = cast[ptr QPaintEngineVTable](vtbl)
  let self = QPaintEngine(h: self)
  let slotval1 = gen_qline_types.QLineF(h: lines)
  let slotval2 = lineCount
  vtbl[].drawLines2(self, slotval1, slotval2)

proc QPaintEnginedrawEllipse*(self: gen_qpaintengine_types.QPaintEngine, r: gen_qrect_types.QRectF): void =
  fcQPaintEngine_virtualbase_drawEllipse(self.h, r.h)

proc miqt_exec_callback_cQPaintEngine_drawEllipse(vtbl: pointer, self: pointer, r: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPaintEngineVTable](vtbl)
  let self = QPaintEngine(h: self)
  let slotval1 = gen_qrect_types.QRectF(h: r)
  vtbl[].drawEllipse(self, slotval1)

proc QPaintEnginedrawEllipse*(self: gen_qpaintengine_types.QPaintEngine, r: gen_qrect_types.QRect): void =
  fcQPaintEngine_virtualbase_drawEllipseWithQRect(self.h, r.h)

proc miqt_exec_callback_cQPaintEngine_drawEllipseWithQRect(vtbl: pointer, self: pointer, r: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPaintEngineVTable](vtbl)
  let self = QPaintEngine(h: self)
  let slotval1 = gen_qrect_types.QRect(h: r)
  vtbl[].drawEllipseWithQRect(self, slotval1)

proc QPaintEnginedrawPath*(self: gen_qpaintengine_types.QPaintEngine, path: gen_qpainterpath_types.QPainterPath): void =
  fcQPaintEngine_virtualbase_drawPath(self.h, path.h)

proc miqt_exec_callback_cQPaintEngine_drawPath(vtbl: pointer, self: pointer, path: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPaintEngineVTable](vtbl)
  let self = QPaintEngine(h: self)
  let slotval1 = gen_qpainterpath_types.QPainterPath(h: path)
  vtbl[].drawPath(self, slotval1)

proc QPaintEnginedrawPoints*(self: gen_qpaintengine_types.QPaintEngine, points: gen_qpoint_types.QPointF, pointCount: cint): void =
  fcQPaintEngine_virtualbase_drawPoints(self.h, points.h, pointCount)

proc miqt_exec_callback_cQPaintEngine_drawPoints(vtbl: pointer, self: pointer, points: pointer, pointCount: cint): void {.cdecl.} =
  let vtbl = cast[ptr QPaintEngineVTable](vtbl)
  let self = QPaintEngine(h: self)
  let slotval1 = gen_qpoint_types.QPointF(h: points)
  let slotval2 = pointCount
  vtbl[].drawPoints(self, slotval1, slotval2)

proc QPaintEnginedrawPoints*(self: gen_qpaintengine_types.QPaintEngine, points: gen_qpoint_types.QPoint, pointCount: cint): void =
  fcQPaintEngine_virtualbase_drawPoints2(self.h, points.h, pointCount)

proc miqt_exec_callback_cQPaintEngine_drawPoints2(vtbl: pointer, self: pointer, points: pointer, pointCount: cint): void {.cdecl.} =
  let vtbl = cast[ptr QPaintEngineVTable](vtbl)
  let self = QPaintEngine(h: self)
  let slotval1 = gen_qpoint_types.QPoint(h: points)
  let slotval2 = pointCount
  vtbl[].drawPoints2(self, slotval1, slotval2)

proc QPaintEnginedrawPolygon*(self: gen_qpaintengine_types.QPaintEngine, points: gen_qpoint_types.QPointF, pointCount: cint, mode: cint): void =
  fcQPaintEngine_virtualbase_drawPolygon(self.h, points.h, pointCount, cint(mode))

proc miqt_exec_callback_cQPaintEngine_drawPolygon(vtbl: pointer, self: pointer, points: pointer, pointCount: cint, mode: cint): void {.cdecl.} =
  let vtbl = cast[ptr QPaintEngineVTable](vtbl)
  let self = QPaintEngine(h: self)
  let slotval1 = gen_qpoint_types.QPointF(h: points)
  let slotval2 = pointCount
  let slotval3 = cint(mode)
  vtbl[].drawPolygon(self, slotval1, slotval2, slotval3)

proc QPaintEnginedrawPolygon*(self: gen_qpaintengine_types.QPaintEngine, points: gen_qpoint_types.QPoint, pointCount: cint, mode: cint): void =
  fcQPaintEngine_virtualbase_drawPolygon2(self.h, points.h, pointCount, cint(mode))

proc miqt_exec_callback_cQPaintEngine_drawPolygon2(vtbl: pointer, self: pointer, points: pointer, pointCount: cint, mode: cint): void {.cdecl.} =
  let vtbl = cast[ptr QPaintEngineVTable](vtbl)
  let self = QPaintEngine(h: self)
  let slotval1 = gen_qpoint_types.QPoint(h: points)
  let slotval2 = pointCount
  let slotval3 = cint(mode)
  vtbl[].drawPolygon2(self, slotval1, slotval2, slotval3)

proc miqt_exec_callback_cQPaintEngine_drawPixmap(vtbl: pointer, self: pointer, r: pointer, pm: pointer, sr: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPaintEngineVTable](vtbl)
  let self = QPaintEngine(h: self)
  let slotval1 = gen_qrect_types.QRectF(h: r)
  let slotval2 = gen_qpixmap_types.QPixmap(h: pm)
  let slotval3 = gen_qrect_types.QRectF(h: sr)
  vtbl[].drawPixmap(self, slotval1, slotval2, slotval3)

proc QPaintEnginedrawTextItem*(self: gen_qpaintengine_types.QPaintEngine, p: gen_qpoint_types.QPointF, textItem: gen_qpaintengine_types.QTextItem): void =
  fcQPaintEngine_virtualbase_drawTextItem(self.h, p.h, textItem.h)

proc miqt_exec_callback_cQPaintEngine_drawTextItem(vtbl: pointer, self: pointer, p: pointer, textItem: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPaintEngineVTable](vtbl)
  let self = QPaintEngine(h: self)
  let slotval1 = gen_qpoint_types.QPointF(h: p)
  let slotval2 = gen_qpaintengine_types.QTextItem(h: textItem)
  vtbl[].drawTextItem(self, slotval1, slotval2)

proc QPaintEnginedrawTiledPixmap*(self: gen_qpaintengine_types.QPaintEngine, r: gen_qrect_types.QRectF, pixmap: gen_qpixmap_types.QPixmap, s: gen_qpoint_types.QPointF): void =
  fcQPaintEngine_virtualbase_drawTiledPixmap(self.h, r.h, pixmap.h, s.h)

proc miqt_exec_callback_cQPaintEngine_drawTiledPixmap(vtbl: pointer, self: pointer, r: pointer, pixmap: pointer, s: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPaintEngineVTable](vtbl)
  let self = QPaintEngine(h: self)
  let slotval1 = gen_qrect_types.QRectF(h: r)
  let slotval2 = gen_qpixmap_types.QPixmap(h: pixmap)
  let slotval3 = gen_qpoint_types.QPointF(h: s)
  vtbl[].drawTiledPixmap(self, slotval1, slotval2, slotval3)

proc QPaintEnginedrawImage*(self: gen_qpaintengine_types.QPaintEngine, r: gen_qrect_types.QRectF, pm: gen_qimage_types.QImage, sr: gen_qrect_types.QRectF, flags: cint): void =
  fcQPaintEngine_virtualbase_drawImage(self.h, r.h, pm.h, sr.h, cint(flags))

proc miqt_exec_callback_cQPaintEngine_drawImage(vtbl: pointer, self: pointer, r: pointer, pm: pointer, sr: pointer, flags: cint): void {.cdecl.} =
  let vtbl = cast[ptr QPaintEngineVTable](vtbl)
  let self = QPaintEngine(h: self)
  let slotval1 = gen_qrect_types.QRectF(h: r)
  let slotval2 = gen_qimage_types.QImage(h: pm)
  let slotval3 = gen_qrect_types.QRectF(h: sr)
  let slotval4 = cint(flags)
  vtbl[].drawImage(self, slotval1, slotval2, slotval3, slotval4)

proc QPaintEnginecoordinateOffset*(self: gen_qpaintengine_types.QPaintEngine, ): gen_qpoint_types.QPoint =
  gen_qpoint_types.QPoint(h: fcQPaintEngine_virtualbase_coordinateOffset(self.h))

proc miqt_exec_callback_cQPaintEngine_coordinateOffset(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QPaintEngineVTable](vtbl)
  let self = QPaintEngine(h: self)
  var virtualReturn = vtbl[].coordinateOffset(self)
  virtualReturn.h

proc miqt_exec_callback_cQPaintEngine_typeX(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QPaintEngineVTable](vtbl)
  let self = QPaintEngine(h: self)
  var virtualReturn = vtbl[].typeX(self)
  cint(virtualReturn)

proc create*(T: type gen_qpaintengine_types.QPaintEngine,
    vtbl: ref QPaintEngineVTable = nil): gen_qpaintengine_types.QPaintEngine =
  let vtbl = if vtbl == nil: new QPaintEngineVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQPaintEngineVTable, _: ptr cQPaintEngine) {.cdecl.} =
    let vtbl = cast[ref QPaintEngineVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.begin):
    vtbl[].vtbl.begin = miqt_exec_callback_cQPaintEngine_begin
  if not isNil(vtbl.endX):
    vtbl[].vtbl.endX = miqt_exec_callback_cQPaintEngine_endX
  if not isNil(vtbl.updateState):
    vtbl[].vtbl.updateState = miqt_exec_callback_cQPaintEngine_updateState
  if not isNil(vtbl.drawRects):
    vtbl[].vtbl.drawRects = miqt_exec_callback_cQPaintEngine_drawRects
  if not isNil(vtbl.drawRects2):
    vtbl[].vtbl.drawRects2 = miqt_exec_callback_cQPaintEngine_drawRects2
  if not isNil(vtbl.drawLines):
    vtbl[].vtbl.drawLines = miqt_exec_callback_cQPaintEngine_drawLines
  if not isNil(vtbl.drawLines2):
    vtbl[].vtbl.drawLines2 = miqt_exec_callback_cQPaintEngine_drawLines2
  if not isNil(vtbl.drawEllipse):
    vtbl[].vtbl.drawEllipse = miqt_exec_callback_cQPaintEngine_drawEllipse
  if not isNil(vtbl.drawEllipseWithQRect):
    vtbl[].vtbl.drawEllipseWithQRect = miqt_exec_callback_cQPaintEngine_drawEllipseWithQRect
  if not isNil(vtbl.drawPath):
    vtbl[].vtbl.drawPath = miqt_exec_callback_cQPaintEngine_drawPath
  if not isNil(vtbl.drawPoints):
    vtbl[].vtbl.drawPoints = miqt_exec_callback_cQPaintEngine_drawPoints
  if not isNil(vtbl.drawPoints2):
    vtbl[].vtbl.drawPoints2 = miqt_exec_callback_cQPaintEngine_drawPoints2
  if not isNil(vtbl.drawPolygon):
    vtbl[].vtbl.drawPolygon = miqt_exec_callback_cQPaintEngine_drawPolygon
  if not isNil(vtbl.drawPolygon2):
    vtbl[].vtbl.drawPolygon2 = miqt_exec_callback_cQPaintEngine_drawPolygon2
  if not isNil(vtbl.drawPixmap):
    vtbl[].vtbl.drawPixmap = miqt_exec_callback_cQPaintEngine_drawPixmap
  if not isNil(vtbl.drawTextItem):
    vtbl[].vtbl.drawTextItem = miqt_exec_callback_cQPaintEngine_drawTextItem
  if not isNil(vtbl.drawTiledPixmap):
    vtbl[].vtbl.drawTiledPixmap = miqt_exec_callback_cQPaintEngine_drawTiledPixmap
  if not isNil(vtbl.drawImage):
    vtbl[].vtbl.drawImage = miqt_exec_callback_cQPaintEngine_drawImage
  if not isNil(vtbl.coordinateOffset):
    vtbl[].vtbl.coordinateOffset = miqt_exec_callback_cQPaintEngine_coordinateOffset
  if not isNil(vtbl.typeX):
    vtbl[].vtbl.typeX = miqt_exec_callback_cQPaintEngine_typeX
  gen_qpaintengine_types.QPaintEngine(h: fcQPaintEngine_new(addr(vtbl[]), ))

proc create*(T: type gen_qpaintengine_types.QPaintEngine,
    features: cint,
    vtbl: ref QPaintEngineVTable = nil): gen_qpaintengine_types.QPaintEngine =
  let vtbl = if vtbl == nil: new QPaintEngineVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQPaintEngineVTable, _: ptr cQPaintEngine) {.cdecl.} =
    let vtbl = cast[ref QPaintEngineVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.begin):
    vtbl[].vtbl.begin = miqt_exec_callback_cQPaintEngine_begin
  if not isNil(vtbl.endX):
    vtbl[].vtbl.endX = miqt_exec_callback_cQPaintEngine_endX
  if not isNil(vtbl.updateState):
    vtbl[].vtbl.updateState = miqt_exec_callback_cQPaintEngine_updateState
  if not isNil(vtbl.drawRects):
    vtbl[].vtbl.drawRects = miqt_exec_callback_cQPaintEngine_drawRects
  if not isNil(vtbl.drawRects2):
    vtbl[].vtbl.drawRects2 = miqt_exec_callback_cQPaintEngine_drawRects2
  if not isNil(vtbl.drawLines):
    vtbl[].vtbl.drawLines = miqt_exec_callback_cQPaintEngine_drawLines
  if not isNil(vtbl.drawLines2):
    vtbl[].vtbl.drawLines2 = miqt_exec_callback_cQPaintEngine_drawLines2
  if not isNil(vtbl.drawEllipse):
    vtbl[].vtbl.drawEllipse = miqt_exec_callback_cQPaintEngine_drawEllipse
  if not isNil(vtbl.drawEllipseWithQRect):
    vtbl[].vtbl.drawEllipseWithQRect = miqt_exec_callback_cQPaintEngine_drawEllipseWithQRect
  if not isNil(vtbl.drawPath):
    vtbl[].vtbl.drawPath = miqt_exec_callback_cQPaintEngine_drawPath
  if not isNil(vtbl.drawPoints):
    vtbl[].vtbl.drawPoints = miqt_exec_callback_cQPaintEngine_drawPoints
  if not isNil(vtbl.drawPoints2):
    vtbl[].vtbl.drawPoints2 = miqt_exec_callback_cQPaintEngine_drawPoints2
  if not isNil(vtbl.drawPolygon):
    vtbl[].vtbl.drawPolygon = miqt_exec_callback_cQPaintEngine_drawPolygon
  if not isNil(vtbl.drawPolygon2):
    vtbl[].vtbl.drawPolygon2 = miqt_exec_callback_cQPaintEngine_drawPolygon2
  if not isNil(vtbl.drawPixmap):
    vtbl[].vtbl.drawPixmap = miqt_exec_callback_cQPaintEngine_drawPixmap
  if not isNil(vtbl.drawTextItem):
    vtbl[].vtbl.drawTextItem = miqt_exec_callback_cQPaintEngine_drawTextItem
  if not isNil(vtbl.drawTiledPixmap):
    vtbl[].vtbl.drawTiledPixmap = miqt_exec_callback_cQPaintEngine_drawTiledPixmap
  if not isNil(vtbl.drawImage):
    vtbl[].vtbl.drawImage = miqt_exec_callback_cQPaintEngine_drawImage
  if not isNil(vtbl.coordinateOffset):
    vtbl[].vtbl.coordinateOffset = miqt_exec_callback_cQPaintEngine_coordinateOffset
  if not isNil(vtbl.typeX):
    vtbl[].vtbl.typeX = miqt_exec_callback_cQPaintEngine_typeX
  gen_qpaintengine_types.QPaintEngine(h: fcQPaintEngine_new2(addr(vtbl[]), cint(features)))

proc delete*(self: gen_qpaintengine_types.QPaintEngine) =
  fcQPaintEngine_delete(self.h)
proc state*(self: gen_qpaintengine_types.QPaintEngineState, ): cint =
  cint(fcQPaintEngineState_state(self.h))

proc pen*(self: gen_qpaintengine_types.QPaintEngineState, ): gen_qpen_types.QPen =
  gen_qpen_types.QPen(h: fcQPaintEngineState_pen(self.h))

proc brush*(self: gen_qpaintengine_types.QPaintEngineState, ): gen_qbrush_types.QBrush =
  gen_qbrush_types.QBrush(h: fcQPaintEngineState_brush(self.h))

proc brushOrigin*(self: gen_qpaintengine_types.QPaintEngineState, ): gen_qpoint_types.QPointF =
  gen_qpoint_types.QPointF(h: fcQPaintEngineState_brushOrigin(self.h))

proc backgroundBrush*(self: gen_qpaintengine_types.QPaintEngineState, ): gen_qbrush_types.QBrush =
  gen_qbrush_types.QBrush(h: fcQPaintEngineState_backgroundBrush(self.h))

proc backgroundMode*(self: gen_qpaintengine_types.QPaintEngineState, ): cint =
  cint(fcQPaintEngineState_backgroundMode(self.h))

proc font*(self: gen_qpaintengine_types.QPaintEngineState, ): gen_qfont_types.QFont =
  gen_qfont_types.QFont(h: fcQPaintEngineState_font(self.h))

proc matrix*(self: gen_qpaintengine_types.QPaintEngineState, ): gen_qmatrix_types.QMatrix =
  gen_qmatrix_types.QMatrix(h: fcQPaintEngineState_matrix(self.h))

proc transform*(self: gen_qpaintengine_types.QPaintEngineState, ): gen_qtransform_types.QTransform =
  gen_qtransform_types.QTransform(h: fcQPaintEngineState_transform(self.h))

proc clipOperation*(self: gen_qpaintengine_types.QPaintEngineState, ): cint =
  cint(fcQPaintEngineState_clipOperation(self.h))

proc clipRegion*(self: gen_qpaintengine_types.QPaintEngineState, ): gen_qregion_types.QRegion =
  gen_qregion_types.QRegion(h: fcQPaintEngineState_clipRegion(self.h))

proc clipPath*(self: gen_qpaintengine_types.QPaintEngineState, ): gen_qpainterpath_types.QPainterPath =
  gen_qpainterpath_types.QPainterPath(h: fcQPaintEngineState_clipPath(self.h))

proc isClipEnabled*(self: gen_qpaintengine_types.QPaintEngineState, ): bool =
  fcQPaintEngineState_isClipEnabled(self.h)

proc renderHints*(self: gen_qpaintengine_types.QPaintEngineState, ): cint =
  cint(fcQPaintEngineState_renderHints(self.h))

proc compositionMode*(self: gen_qpaintengine_types.QPaintEngineState, ): cint =
  cint(fcQPaintEngineState_compositionMode(self.h))

proc opacity*(self: gen_qpaintengine_types.QPaintEngineState, ): float64 =
  fcQPaintEngineState_opacity(self.h)

proc painter*(self: gen_qpaintengine_types.QPaintEngineState, ): gen_qpainter_types.QPainter =
  gen_qpainter_types.QPainter(h: fcQPaintEngineState_painter(self.h))

proc brushNeedsResolving*(self: gen_qpaintengine_types.QPaintEngineState, ): bool =
  fcQPaintEngineState_brushNeedsResolving(self.h)

proc penNeedsResolving*(self: gen_qpaintengine_types.QPaintEngineState, ): bool =
  fcQPaintEngineState_penNeedsResolving(self.h)

proc delete*(self: gen_qpaintengine_types.QPaintEngineState) =
  fcQPaintEngineState_delete(self.h)
