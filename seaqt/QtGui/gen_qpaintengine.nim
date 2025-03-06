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
proc fcQPaintEngine_new(): ptr cQPaintEngine {.importc: "QPaintEngine_new".}
proc fcQPaintEngine_new2(features: cint): ptr cQPaintEngine {.importc: "QPaintEngine_new2".}
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
proc fcQPaintEngine_override_virtual_begin(self: pointer, slot: int) {.importc: "QPaintEngine_override_virtual_begin".}
proc fcQPaintEngine_override_virtual_endX(self: pointer, slot: int) {.importc: "QPaintEngine_override_virtual_end".}
proc fcQPaintEngine_override_virtual_updateState(self: pointer, slot: int) {.importc: "QPaintEngine_override_virtual_updateState".}
proc fQPaintEngine_virtualbase_drawRects(self: pointer, rects: pointer, rectCount: cint): void{.importc: "QPaintEngine_virtualbase_drawRects".}
proc fcQPaintEngine_override_virtual_drawRects(self: pointer, slot: int) {.importc: "QPaintEngine_override_virtual_drawRects".}
proc fQPaintEngine_virtualbase_drawRects2(self: pointer, rects: pointer, rectCount: cint): void{.importc: "QPaintEngine_virtualbase_drawRects2".}
proc fcQPaintEngine_override_virtual_drawRects2(self: pointer, slot: int) {.importc: "QPaintEngine_override_virtual_drawRects2".}
proc fQPaintEngine_virtualbase_drawLines(self: pointer, lines: pointer, lineCount: cint): void{.importc: "QPaintEngine_virtualbase_drawLines".}
proc fcQPaintEngine_override_virtual_drawLines(self: pointer, slot: int) {.importc: "QPaintEngine_override_virtual_drawLines".}
proc fQPaintEngine_virtualbase_drawLines2(self: pointer, lines: pointer, lineCount: cint): void{.importc: "QPaintEngine_virtualbase_drawLines2".}
proc fcQPaintEngine_override_virtual_drawLines2(self: pointer, slot: int) {.importc: "QPaintEngine_override_virtual_drawLines2".}
proc fQPaintEngine_virtualbase_drawEllipse(self: pointer, r: pointer): void{.importc: "QPaintEngine_virtualbase_drawEllipse".}
proc fcQPaintEngine_override_virtual_drawEllipse(self: pointer, slot: int) {.importc: "QPaintEngine_override_virtual_drawEllipse".}
proc fQPaintEngine_virtualbase_drawEllipseWithQRect(self: pointer, r: pointer): void{.importc: "QPaintEngine_virtualbase_drawEllipseWithQRect".}
proc fcQPaintEngine_override_virtual_drawEllipseWithQRect(self: pointer, slot: int) {.importc: "QPaintEngine_override_virtual_drawEllipseWithQRect".}
proc fQPaintEngine_virtualbase_drawPath(self: pointer, path: pointer): void{.importc: "QPaintEngine_virtualbase_drawPath".}
proc fcQPaintEngine_override_virtual_drawPath(self: pointer, slot: int) {.importc: "QPaintEngine_override_virtual_drawPath".}
proc fQPaintEngine_virtualbase_drawPoints(self: pointer, points: pointer, pointCount: cint): void{.importc: "QPaintEngine_virtualbase_drawPoints".}
proc fcQPaintEngine_override_virtual_drawPoints(self: pointer, slot: int) {.importc: "QPaintEngine_override_virtual_drawPoints".}
proc fQPaintEngine_virtualbase_drawPoints2(self: pointer, points: pointer, pointCount: cint): void{.importc: "QPaintEngine_virtualbase_drawPoints2".}
proc fcQPaintEngine_override_virtual_drawPoints2(self: pointer, slot: int) {.importc: "QPaintEngine_override_virtual_drawPoints2".}
proc fQPaintEngine_virtualbase_drawPolygon(self: pointer, points: pointer, pointCount: cint, mode: cint): void{.importc: "QPaintEngine_virtualbase_drawPolygon".}
proc fcQPaintEngine_override_virtual_drawPolygon(self: pointer, slot: int) {.importc: "QPaintEngine_override_virtual_drawPolygon".}
proc fQPaintEngine_virtualbase_drawPolygon2(self: pointer, points: pointer, pointCount: cint, mode: cint): void{.importc: "QPaintEngine_virtualbase_drawPolygon2".}
proc fcQPaintEngine_override_virtual_drawPolygon2(self: pointer, slot: int) {.importc: "QPaintEngine_override_virtual_drawPolygon2".}
proc fcQPaintEngine_override_virtual_drawPixmap(self: pointer, slot: int) {.importc: "QPaintEngine_override_virtual_drawPixmap".}
proc fQPaintEngine_virtualbase_drawTextItem(self: pointer, p: pointer, textItem: pointer): void{.importc: "QPaintEngine_virtualbase_drawTextItem".}
proc fcQPaintEngine_override_virtual_drawTextItem(self: pointer, slot: int) {.importc: "QPaintEngine_override_virtual_drawTextItem".}
proc fQPaintEngine_virtualbase_drawTiledPixmap(self: pointer, r: pointer, pixmap: pointer, s: pointer): void{.importc: "QPaintEngine_virtualbase_drawTiledPixmap".}
proc fcQPaintEngine_override_virtual_drawTiledPixmap(self: pointer, slot: int) {.importc: "QPaintEngine_override_virtual_drawTiledPixmap".}
proc fQPaintEngine_virtualbase_drawImage(self: pointer, r: pointer, pm: pointer, sr: pointer, flags: cint): void{.importc: "QPaintEngine_virtualbase_drawImage".}
proc fcQPaintEngine_override_virtual_drawImage(self: pointer, slot: int) {.importc: "QPaintEngine_override_virtual_drawImage".}
proc fQPaintEngine_virtualbase_coordinateOffset(self: pointer, ): pointer{.importc: "QPaintEngine_virtualbase_coordinateOffset".}
proc fcQPaintEngine_override_virtual_coordinateOffset(self: pointer, slot: int) {.importc: "QPaintEngine_override_virtual_coordinateOffset".}
proc fcQPaintEngine_override_virtual_typeX(self: pointer, slot: int) {.importc: "QPaintEngine_override_virtual_type".}
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


func init*(T: type gen_qpaintengine_types.QTextItem, h: ptr cQTextItem): gen_qpaintengine_types.QTextItem =
  T(h: h)
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

func init*(T: type gen_qpaintengine_types.QPaintEngine, h: ptr cQPaintEngine): gen_qpaintengine_types.QPaintEngine =
  T(h: h)
proc create*(T: type gen_qpaintengine_types.QPaintEngine, ): gen_qpaintengine_types.QPaintEngine =
  gen_qpaintengine_types.QPaintEngine.init(fcQPaintEngine_new())

proc create*(T: type gen_qpaintengine_types.QPaintEngine, features: cint): gen_qpaintengine_types.QPaintEngine =
  gen_qpaintengine_types.QPaintEngine.init(fcQPaintEngine_new2(cint(features)))

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

type QPaintEnginebeginProc* = proc(pdev: gen_qpaintdevice_types.QPaintDevice): bool
proc onbegin*(self: gen_qpaintengine_types.QPaintEngine, slot: QPaintEnginebeginProc) =
  # TODO check subclass
  var tmp = new QPaintEnginebeginProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPaintEngine_override_virtual_begin(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPaintEngine_begin(self: ptr cQPaintEngine, slot: int, pdev: pointer): bool {.exportc: "miqt_exec_callback_QPaintEngine_begin ".} =
  var nimfunc = cast[ptr QPaintEnginebeginProc](cast[pointer](slot))
  let slotval1 = gen_qpaintdevice_types.QPaintDevice(h: pdev)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
type QPaintEngineendXProc* = proc(): bool
proc onendX*(self: gen_qpaintengine_types.QPaintEngine, slot: QPaintEngineendXProc) =
  # TODO check subclass
  var tmp = new QPaintEngineendXProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPaintEngine_override_virtual_endX(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPaintEngine_end(self: ptr cQPaintEngine, slot: int): bool {.exportc: "miqt_exec_callback_QPaintEngine_end ".} =
  var nimfunc = cast[ptr QPaintEngineendXProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
type QPaintEngineupdateStateProc* = proc(state: gen_qpaintengine_types.QPaintEngineState): void
proc onupdateState*(self: gen_qpaintengine_types.QPaintEngine, slot: QPaintEngineupdateStateProc) =
  # TODO check subclass
  var tmp = new QPaintEngineupdateStateProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPaintEngine_override_virtual_updateState(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPaintEngine_updateState(self: ptr cQPaintEngine, slot: int, state: pointer): void {.exportc: "miqt_exec_callback_QPaintEngine_updateState ".} =
  var nimfunc = cast[ptr QPaintEngineupdateStateProc](cast[pointer](slot))
  let slotval1 = gen_qpaintengine_types.QPaintEngineState(h: state)


  nimfunc[](slotval1)
proc QPaintEnginedrawRects*(self: gen_qpaintengine_types.QPaintEngine, rects: gen_qrect_types.QRect, rectCount: cint): void =
  fQPaintEngine_virtualbase_drawRects(self.h, rects.h, rectCount)

type QPaintEnginedrawRectsProc* = proc(rects: gen_qrect_types.QRect, rectCount: cint): void
proc ondrawRects*(self: gen_qpaintengine_types.QPaintEngine, slot: QPaintEnginedrawRectsProc) =
  # TODO check subclass
  var tmp = new QPaintEnginedrawRectsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPaintEngine_override_virtual_drawRects(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPaintEngine_drawRects(self: ptr cQPaintEngine, slot: int, rects: pointer, rectCount: cint): void {.exportc: "miqt_exec_callback_QPaintEngine_drawRects ".} =
  var nimfunc = cast[ptr QPaintEnginedrawRectsProc](cast[pointer](slot))
  let slotval1 = gen_qrect_types.QRect(h: rects)

  let slotval2 = rectCount


  nimfunc[](slotval1, slotval2)
proc QPaintEnginedrawRects*(self: gen_qpaintengine_types.QPaintEngine, rects: gen_qrect_types.QRectF, rectCount: cint): void =
  fQPaintEngine_virtualbase_drawRects2(self.h, rects.h, rectCount)

type QPaintEnginedrawRects2Proc* = proc(rects: gen_qrect_types.QRectF, rectCount: cint): void
proc ondrawRects*(self: gen_qpaintengine_types.QPaintEngine, slot: QPaintEnginedrawRects2Proc) =
  # TODO check subclass
  var tmp = new QPaintEnginedrawRects2Proc
  tmp[] = slot
  GC_ref(tmp)
  fcQPaintEngine_override_virtual_drawRects2(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPaintEngine_drawRects2(self: ptr cQPaintEngine, slot: int, rects: pointer, rectCount: cint): void {.exportc: "miqt_exec_callback_QPaintEngine_drawRects2 ".} =
  var nimfunc = cast[ptr QPaintEnginedrawRects2Proc](cast[pointer](slot))
  let slotval1 = gen_qrect_types.QRectF(h: rects)

  let slotval2 = rectCount


  nimfunc[](slotval1, slotval2)
proc QPaintEnginedrawLines*(self: gen_qpaintengine_types.QPaintEngine, lines: gen_qline_types.QLine, lineCount: cint): void =
  fQPaintEngine_virtualbase_drawLines(self.h, lines.h, lineCount)

type QPaintEnginedrawLinesProc* = proc(lines: gen_qline_types.QLine, lineCount: cint): void
proc ondrawLines*(self: gen_qpaintengine_types.QPaintEngine, slot: QPaintEnginedrawLinesProc) =
  # TODO check subclass
  var tmp = new QPaintEnginedrawLinesProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPaintEngine_override_virtual_drawLines(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPaintEngine_drawLines(self: ptr cQPaintEngine, slot: int, lines: pointer, lineCount: cint): void {.exportc: "miqt_exec_callback_QPaintEngine_drawLines ".} =
  var nimfunc = cast[ptr QPaintEnginedrawLinesProc](cast[pointer](slot))
  let slotval1 = gen_qline_types.QLine(h: lines)

  let slotval2 = lineCount


  nimfunc[](slotval1, slotval2)
proc QPaintEnginedrawLines*(self: gen_qpaintengine_types.QPaintEngine, lines: gen_qline_types.QLineF, lineCount: cint): void =
  fQPaintEngine_virtualbase_drawLines2(self.h, lines.h, lineCount)

type QPaintEnginedrawLines2Proc* = proc(lines: gen_qline_types.QLineF, lineCount: cint): void
proc ondrawLines*(self: gen_qpaintengine_types.QPaintEngine, slot: QPaintEnginedrawLines2Proc) =
  # TODO check subclass
  var tmp = new QPaintEnginedrawLines2Proc
  tmp[] = slot
  GC_ref(tmp)
  fcQPaintEngine_override_virtual_drawLines2(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPaintEngine_drawLines2(self: ptr cQPaintEngine, slot: int, lines: pointer, lineCount: cint): void {.exportc: "miqt_exec_callback_QPaintEngine_drawLines2 ".} =
  var nimfunc = cast[ptr QPaintEnginedrawLines2Proc](cast[pointer](slot))
  let slotval1 = gen_qline_types.QLineF(h: lines)

  let slotval2 = lineCount


  nimfunc[](slotval1, slotval2)
proc QPaintEnginedrawEllipse*(self: gen_qpaintengine_types.QPaintEngine, r: gen_qrect_types.QRectF): void =
  fQPaintEngine_virtualbase_drawEllipse(self.h, r.h)

type QPaintEnginedrawEllipseProc* = proc(r: gen_qrect_types.QRectF): void
proc ondrawEllipse*(self: gen_qpaintengine_types.QPaintEngine, slot: QPaintEnginedrawEllipseProc) =
  # TODO check subclass
  var tmp = new QPaintEnginedrawEllipseProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPaintEngine_override_virtual_drawEllipse(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPaintEngine_drawEllipse(self: ptr cQPaintEngine, slot: int, r: pointer): void {.exportc: "miqt_exec_callback_QPaintEngine_drawEllipse ".} =
  var nimfunc = cast[ptr QPaintEnginedrawEllipseProc](cast[pointer](slot))
  let slotval1 = gen_qrect_types.QRectF(h: r)


  nimfunc[](slotval1)
proc QPaintEnginedrawEllipse*(self: gen_qpaintengine_types.QPaintEngine, r: gen_qrect_types.QRect): void =
  fQPaintEngine_virtualbase_drawEllipseWithQRect(self.h, r.h)

type QPaintEnginedrawEllipseWithQRectProc* = proc(r: gen_qrect_types.QRect): void
proc ondrawEllipse*(self: gen_qpaintengine_types.QPaintEngine, slot: QPaintEnginedrawEllipseWithQRectProc) =
  # TODO check subclass
  var tmp = new QPaintEnginedrawEllipseWithQRectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPaintEngine_override_virtual_drawEllipseWithQRect(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPaintEngine_drawEllipseWithQRect(self: ptr cQPaintEngine, slot: int, r: pointer): void {.exportc: "miqt_exec_callback_QPaintEngine_drawEllipseWithQRect ".} =
  var nimfunc = cast[ptr QPaintEnginedrawEllipseWithQRectProc](cast[pointer](slot))
  let slotval1 = gen_qrect_types.QRect(h: r)


  nimfunc[](slotval1)
proc QPaintEnginedrawPath*(self: gen_qpaintengine_types.QPaintEngine, path: gen_qpainterpath_types.QPainterPath): void =
  fQPaintEngine_virtualbase_drawPath(self.h, path.h)

type QPaintEnginedrawPathProc* = proc(path: gen_qpainterpath_types.QPainterPath): void
proc ondrawPath*(self: gen_qpaintengine_types.QPaintEngine, slot: QPaintEnginedrawPathProc) =
  # TODO check subclass
  var tmp = new QPaintEnginedrawPathProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPaintEngine_override_virtual_drawPath(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPaintEngine_drawPath(self: ptr cQPaintEngine, slot: int, path: pointer): void {.exportc: "miqt_exec_callback_QPaintEngine_drawPath ".} =
  var nimfunc = cast[ptr QPaintEnginedrawPathProc](cast[pointer](slot))
  let slotval1 = gen_qpainterpath_types.QPainterPath(h: path)


  nimfunc[](slotval1)
proc QPaintEnginedrawPoints*(self: gen_qpaintengine_types.QPaintEngine, points: gen_qpoint_types.QPointF, pointCount: cint): void =
  fQPaintEngine_virtualbase_drawPoints(self.h, points.h, pointCount)

type QPaintEnginedrawPointsProc* = proc(points: gen_qpoint_types.QPointF, pointCount: cint): void
proc ondrawPoints*(self: gen_qpaintengine_types.QPaintEngine, slot: QPaintEnginedrawPointsProc) =
  # TODO check subclass
  var tmp = new QPaintEnginedrawPointsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPaintEngine_override_virtual_drawPoints(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPaintEngine_drawPoints(self: ptr cQPaintEngine, slot: int, points: pointer, pointCount: cint): void {.exportc: "miqt_exec_callback_QPaintEngine_drawPoints ".} =
  var nimfunc = cast[ptr QPaintEnginedrawPointsProc](cast[pointer](slot))
  let slotval1 = gen_qpoint_types.QPointF(h: points)

  let slotval2 = pointCount


  nimfunc[](slotval1, slotval2)
proc QPaintEnginedrawPoints*(self: gen_qpaintengine_types.QPaintEngine, points: gen_qpoint_types.QPoint, pointCount: cint): void =
  fQPaintEngine_virtualbase_drawPoints2(self.h, points.h, pointCount)

type QPaintEnginedrawPoints2Proc* = proc(points: gen_qpoint_types.QPoint, pointCount: cint): void
proc ondrawPoints*(self: gen_qpaintengine_types.QPaintEngine, slot: QPaintEnginedrawPoints2Proc) =
  # TODO check subclass
  var tmp = new QPaintEnginedrawPoints2Proc
  tmp[] = slot
  GC_ref(tmp)
  fcQPaintEngine_override_virtual_drawPoints2(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPaintEngine_drawPoints2(self: ptr cQPaintEngine, slot: int, points: pointer, pointCount: cint): void {.exportc: "miqt_exec_callback_QPaintEngine_drawPoints2 ".} =
  var nimfunc = cast[ptr QPaintEnginedrawPoints2Proc](cast[pointer](slot))
  let slotval1 = gen_qpoint_types.QPoint(h: points)

  let slotval2 = pointCount


  nimfunc[](slotval1, slotval2)
proc QPaintEnginedrawPolygon*(self: gen_qpaintengine_types.QPaintEngine, points: gen_qpoint_types.QPointF, pointCount: cint, mode: cint): void =
  fQPaintEngine_virtualbase_drawPolygon(self.h, points.h, pointCount, cint(mode))

type QPaintEnginedrawPolygonProc* = proc(points: gen_qpoint_types.QPointF, pointCount: cint, mode: cint): void
proc ondrawPolygon*(self: gen_qpaintengine_types.QPaintEngine, slot: QPaintEnginedrawPolygonProc) =
  # TODO check subclass
  var tmp = new QPaintEnginedrawPolygonProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPaintEngine_override_virtual_drawPolygon(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPaintEngine_drawPolygon(self: ptr cQPaintEngine, slot: int, points: pointer, pointCount: cint, mode: cint): void {.exportc: "miqt_exec_callback_QPaintEngine_drawPolygon ".} =
  var nimfunc = cast[ptr QPaintEnginedrawPolygonProc](cast[pointer](slot))
  let slotval1 = gen_qpoint_types.QPointF(h: points)

  let slotval2 = pointCount

  let slotval3 = cint(mode)


  nimfunc[](slotval1, slotval2, slotval3)
proc QPaintEnginedrawPolygon*(self: gen_qpaintengine_types.QPaintEngine, points: gen_qpoint_types.QPoint, pointCount: cint, mode: cint): void =
  fQPaintEngine_virtualbase_drawPolygon2(self.h, points.h, pointCount, cint(mode))

type QPaintEnginedrawPolygon2Proc* = proc(points: gen_qpoint_types.QPoint, pointCount: cint, mode: cint): void
proc ondrawPolygon*(self: gen_qpaintengine_types.QPaintEngine, slot: QPaintEnginedrawPolygon2Proc) =
  # TODO check subclass
  var tmp = new QPaintEnginedrawPolygon2Proc
  tmp[] = slot
  GC_ref(tmp)
  fcQPaintEngine_override_virtual_drawPolygon2(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPaintEngine_drawPolygon2(self: ptr cQPaintEngine, slot: int, points: pointer, pointCount: cint, mode: cint): void {.exportc: "miqt_exec_callback_QPaintEngine_drawPolygon2 ".} =
  var nimfunc = cast[ptr QPaintEnginedrawPolygon2Proc](cast[pointer](slot))
  let slotval1 = gen_qpoint_types.QPoint(h: points)

  let slotval2 = pointCount

  let slotval3 = cint(mode)


  nimfunc[](slotval1, slotval2, slotval3)
type QPaintEnginedrawPixmapProc* = proc(r: gen_qrect_types.QRectF, pm: gen_qpixmap_types.QPixmap, sr: gen_qrect_types.QRectF): void
proc ondrawPixmap*(self: gen_qpaintengine_types.QPaintEngine, slot: QPaintEnginedrawPixmapProc) =
  # TODO check subclass
  var tmp = new QPaintEnginedrawPixmapProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPaintEngine_override_virtual_drawPixmap(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPaintEngine_drawPixmap(self: ptr cQPaintEngine, slot: int, r: pointer, pm: pointer, sr: pointer): void {.exportc: "miqt_exec_callback_QPaintEngine_drawPixmap ".} =
  var nimfunc = cast[ptr QPaintEnginedrawPixmapProc](cast[pointer](slot))
  let slotval1 = gen_qrect_types.QRectF(h: r)

  let slotval2 = gen_qpixmap_types.QPixmap(h: pm)

  let slotval3 = gen_qrect_types.QRectF(h: sr)


  nimfunc[](slotval1, slotval2, slotval3)
proc QPaintEnginedrawTextItem*(self: gen_qpaintengine_types.QPaintEngine, p: gen_qpoint_types.QPointF, textItem: gen_qpaintengine_types.QTextItem): void =
  fQPaintEngine_virtualbase_drawTextItem(self.h, p.h, textItem.h)

type QPaintEnginedrawTextItemProc* = proc(p: gen_qpoint_types.QPointF, textItem: gen_qpaintengine_types.QTextItem): void
proc ondrawTextItem*(self: gen_qpaintengine_types.QPaintEngine, slot: QPaintEnginedrawTextItemProc) =
  # TODO check subclass
  var tmp = new QPaintEnginedrawTextItemProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPaintEngine_override_virtual_drawTextItem(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPaintEngine_drawTextItem(self: ptr cQPaintEngine, slot: int, p: pointer, textItem: pointer): void {.exportc: "miqt_exec_callback_QPaintEngine_drawTextItem ".} =
  var nimfunc = cast[ptr QPaintEnginedrawTextItemProc](cast[pointer](slot))
  let slotval1 = gen_qpoint_types.QPointF(h: p)

  let slotval2 = gen_qpaintengine_types.QTextItem(h: textItem)


  nimfunc[](slotval1, slotval2)
proc QPaintEnginedrawTiledPixmap*(self: gen_qpaintengine_types.QPaintEngine, r: gen_qrect_types.QRectF, pixmap: gen_qpixmap_types.QPixmap, s: gen_qpoint_types.QPointF): void =
  fQPaintEngine_virtualbase_drawTiledPixmap(self.h, r.h, pixmap.h, s.h)

type QPaintEnginedrawTiledPixmapProc* = proc(r: gen_qrect_types.QRectF, pixmap: gen_qpixmap_types.QPixmap, s: gen_qpoint_types.QPointF): void
proc ondrawTiledPixmap*(self: gen_qpaintengine_types.QPaintEngine, slot: QPaintEnginedrawTiledPixmapProc) =
  # TODO check subclass
  var tmp = new QPaintEnginedrawTiledPixmapProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPaintEngine_override_virtual_drawTiledPixmap(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPaintEngine_drawTiledPixmap(self: ptr cQPaintEngine, slot: int, r: pointer, pixmap: pointer, s: pointer): void {.exportc: "miqt_exec_callback_QPaintEngine_drawTiledPixmap ".} =
  var nimfunc = cast[ptr QPaintEnginedrawTiledPixmapProc](cast[pointer](slot))
  let slotval1 = gen_qrect_types.QRectF(h: r)

  let slotval2 = gen_qpixmap_types.QPixmap(h: pixmap)

  let slotval3 = gen_qpoint_types.QPointF(h: s)


  nimfunc[](slotval1, slotval2, slotval3)
proc QPaintEnginedrawImage*(self: gen_qpaintengine_types.QPaintEngine, r: gen_qrect_types.QRectF, pm: gen_qimage_types.QImage, sr: gen_qrect_types.QRectF, flags: cint): void =
  fQPaintEngine_virtualbase_drawImage(self.h, r.h, pm.h, sr.h, cint(flags))

type QPaintEnginedrawImageProc* = proc(r: gen_qrect_types.QRectF, pm: gen_qimage_types.QImage, sr: gen_qrect_types.QRectF, flags: cint): void
proc ondrawImage*(self: gen_qpaintengine_types.QPaintEngine, slot: QPaintEnginedrawImageProc) =
  # TODO check subclass
  var tmp = new QPaintEnginedrawImageProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPaintEngine_override_virtual_drawImage(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPaintEngine_drawImage(self: ptr cQPaintEngine, slot: int, r: pointer, pm: pointer, sr: pointer, flags: cint): void {.exportc: "miqt_exec_callback_QPaintEngine_drawImage ".} =
  var nimfunc = cast[ptr QPaintEnginedrawImageProc](cast[pointer](slot))
  let slotval1 = gen_qrect_types.QRectF(h: r)

  let slotval2 = gen_qimage_types.QImage(h: pm)

  let slotval3 = gen_qrect_types.QRectF(h: sr)

  let slotval4 = cint(flags)


  nimfunc[](slotval1, slotval2, slotval3, slotval4)
proc QPaintEnginecoordinateOffset*(self: gen_qpaintengine_types.QPaintEngine, ): gen_qpoint_types.QPoint =
  gen_qpoint_types.QPoint(h: fQPaintEngine_virtualbase_coordinateOffset(self.h))

type QPaintEnginecoordinateOffsetProc* = proc(): gen_qpoint_types.QPoint
proc oncoordinateOffset*(self: gen_qpaintengine_types.QPaintEngine, slot: QPaintEnginecoordinateOffsetProc) =
  # TODO check subclass
  var tmp = new QPaintEnginecoordinateOffsetProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPaintEngine_override_virtual_coordinateOffset(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPaintEngine_coordinateOffset(self: ptr cQPaintEngine, slot: int): pointer {.exportc: "miqt_exec_callback_QPaintEngine_coordinateOffset ".} =
  var nimfunc = cast[ptr QPaintEnginecoordinateOffsetProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
type QPaintEnginetypeXProc* = proc(): cint
proc ontypeX*(self: gen_qpaintengine_types.QPaintEngine, slot: QPaintEnginetypeXProc) =
  # TODO check subclass
  var tmp = new QPaintEnginetypeXProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPaintEngine_override_virtual_typeX(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPaintEngine_type(self: ptr cQPaintEngine, slot: int): cint {.exportc: "miqt_exec_callback_QPaintEngine_type ".} =
  var nimfunc = cast[ptr QPaintEnginetypeXProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  cint(virtualReturn)
proc delete*(self: gen_qpaintengine_types.QPaintEngine) =
  fcQPaintEngine_delete(self.h)

func init*(T: type gen_qpaintengine_types.QPaintEngineState, h: ptr cQPaintEngineState): gen_qpaintengine_types.QPaintEngineState =
  T(h: h)
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
