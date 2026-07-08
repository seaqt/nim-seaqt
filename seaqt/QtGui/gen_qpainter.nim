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


type QPainterRenderHintEnum* = distinct cint
template Antialiasing*(_: type QPainterRenderHintEnum): untyped = 1
template TextAntialiasing*(_: type QPainterRenderHintEnum): untyped = 2
template SmoothPixmapTransform*(_: type QPainterRenderHintEnum): untyped = 4
template VerticalSubpixelPositioning*(_: type QPainterRenderHintEnum): untyped = 8
template LosslessImageRendering*(_: type QPainterRenderHintEnum): untyped = 64
template NonCosmeticBrushPatterns*(_: type QPainterRenderHintEnum): untyped = 128


type QPainterPixmapFragmentHintEnum* = distinct cint
template OpaqueHint*(_: type QPainterPixmapFragmentHintEnum): untyped = 1


type QPainterCompositionModeEnum* = distinct cint
template CompositionMode_SourceOver*(_: type QPainterCompositionModeEnum): untyped = 0
template CompositionMode_DestinationOver*(_: type QPainterCompositionModeEnum): untyped = 1
template CompositionMode_Clear*(_: type QPainterCompositionModeEnum): untyped = 2
template CompositionMode_Source*(_: type QPainterCompositionModeEnum): untyped = 3
template CompositionMode_Destination*(_: type QPainterCompositionModeEnum): untyped = 4
template CompositionMode_SourceIn*(_: type QPainterCompositionModeEnum): untyped = 5
template CompositionMode_DestinationIn*(_: type QPainterCompositionModeEnum): untyped = 6
template CompositionMode_SourceOut*(_: type QPainterCompositionModeEnum): untyped = 7
template CompositionMode_DestinationOut*(_: type QPainterCompositionModeEnum): untyped = 8
template CompositionMode_SourceAtop*(_: type QPainterCompositionModeEnum): untyped = 9
template CompositionMode_DestinationAtop*(_: type QPainterCompositionModeEnum): untyped = 10
template CompositionMode_Xor*(_: type QPainterCompositionModeEnum): untyped = 11
template CompositionMode_Plus*(_: type QPainterCompositionModeEnum): untyped = 12
template CompositionMode_Multiply*(_: type QPainterCompositionModeEnum): untyped = 13
template CompositionMode_Screen*(_: type QPainterCompositionModeEnum): untyped = 14
template CompositionMode_Overlay*(_: type QPainterCompositionModeEnum): untyped = 15
template CompositionMode_Darken*(_: type QPainterCompositionModeEnum): untyped = 16
template CompositionMode_Lighten*(_: type QPainterCompositionModeEnum): untyped = 17
template CompositionMode_ColorDodge*(_: type QPainterCompositionModeEnum): untyped = 18
template CompositionMode_ColorBurn*(_: type QPainterCompositionModeEnum): untyped = 19
template CompositionMode_HardLight*(_: type QPainterCompositionModeEnum): untyped = 20
template CompositionMode_SoftLight*(_: type QPainterCompositionModeEnum): untyped = 21
template CompositionMode_Difference*(_: type QPainterCompositionModeEnum): untyped = 22
template CompositionMode_Exclusion*(_: type QPainterCompositionModeEnum): untyped = 23
template RasterOp_SourceOrDestination*(_: type QPainterCompositionModeEnum): untyped = 24
template RasterOp_SourceAndDestination*(_: type QPainterCompositionModeEnum): untyped = 25
template RasterOp_SourceXorDestination*(_: type QPainterCompositionModeEnum): untyped = 26
template RasterOp_NotSourceAndNotDestination*(_: type QPainterCompositionModeEnum): untyped = 27
template RasterOp_NotSourceOrNotDestination*(_: type QPainterCompositionModeEnum): untyped = 28
template RasterOp_NotSourceXorDestination*(_: type QPainterCompositionModeEnum): untyped = 29
template RasterOp_NotSource*(_: type QPainterCompositionModeEnum): untyped = 30
template RasterOp_NotSourceAndDestination*(_: type QPainterCompositionModeEnum): untyped = 31
template RasterOp_SourceAndNotDestination*(_: type QPainterCompositionModeEnum): untyped = 32
template RasterOp_NotSourceOrDestination*(_: type QPainterCompositionModeEnum): untyped = 33
template RasterOp_SourceOrNotDestination*(_: type QPainterCompositionModeEnum): untyped = 34
template RasterOp_ClearDestination*(_: type QPainterCompositionModeEnum): untyped = 35
template RasterOp_SetDestination*(_: type QPainterCompositionModeEnum): untyped = 36
template RasterOp_NotDestination*(_: type QPainterCompositionModeEnum): untyped = 37
template NCompositionModes*(_: type QPainterCompositionModeEnum): untyped = 38


import ./gen_qpainter_types
export gen_qpainter_types

import
  ../QtCore/gen_qline_types,
  ../QtCore/gen_qobjectdefs_types,
  ../QtCore/gen_qpoint_types,
  ../QtCore/gen_qrect_types,
  ./gen_qbrush_types,
  ./gen_qcolor_types,
  ./gen_qfont_types,
  ./gen_qfontinfo_types,
  ./gen_qfontmetrics_types,
  ./gen_qglyphrun_types,
  ./gen_qimage_types,
  ./gen_qpaintdevice_types,
  ./gen_qpaintengine_types,
  ./gen_qpainterpath_types,
  ./gen_qpen_types,
  ./gen_qpicture_types,
  ./gen_qpixmap_types,
  ./gen_qregion_types,
  ./gen_qstatictext_types,
  ./gen_qtextoption_types,
  ./gen_qtransform_types
export
  gen_qline_types,
  gen_qobjectdefs_types,
  gen_qpoint_types,
  gen_qrect_types,
  gen_qbrush_types,
  gen_qcolor_types,
  gen_qfont_types,
  gen_qfontinfo_types,
  gen_qfontmetrics_types,
  gen_qglyphrun_types,
  gen_qimage_types,
  gen_qpaintdevice_types,
  gen_qpaintengine_types,
  gen_qpainterpath_types,
  gen_qpen_types,
  gen_qpicture_types,
  gen_qpixmap_types,
  gen_qregion_types,
  gen_qstatictext_types,
  gen_qtextoption_types,
  gen_qtransform_types

type cQPainter*{.exportc: "QPainter", incompleteStruct.} = object
type cQPainterPixmapFragment*{.exportc: "QPainter__PixmapFragment", incompleteStruct.} = object

proc fcQPainter_device(self: pointer): pointer {.importc: "QPainter_device".}
proc fcQPainter_begin(self: pointer, param1: pointer): bool {.importc: "QPainter_begin".}
proc fcQPainter_endX(self: pointer): bool {.importc: "QPainter_end".}
proc fcQPainter_isActive(self: pointer): bool {.importc: "QPainter_isActive".}
proc fcQPainter_setCompositionMode(self: pointer, mode: cint): void {.importc: "QPainter_setCompositionMode".}
proc fcQPainter_compositionMode(self: pointer): cint {.importc: "QPainter_compositionMode".}
proc fcQPainter_font(self: pointer): pointer {.importc: "QPainter_font".}
proc fcQPainter_setFont(self: pointer, f: pointer): void {.importc: "QPainter_setFont".}
proc fcQPainter_fontMetrics(self: pointer): pointer {.importc: "QPainter_fontMetrics".}
proc fcQPainter_fontInfo(self: pointer): pointer {.importc: "QPainter_fontInfo".}
proc fcQPainter_setPenColor(self: pointer, color: pointer): void {.importc: "QPainter_setPen_color".}
proc fcQPainter_setPenPen(self: pointer, pen: pointer): void {.importc: "QPainter_setPen_pen".}
proc fcQPainter_setPenStyle(self: pointer, style: cint): void {.importc: "QPainter_setPen_style".}
proc fcQPainter_pen(self: pointer): pointer {.importc: "QPainter_pen".}
proc fcQPainter_setBrush_QBrush(self: pointer, brush: pointer): void {.importc: "QPainter_setBrush_QBrush".}
proc fcQPainter_setBrush_Qt_BrushStyle(self: pointer, style: cint): void {.importc: "QPainter_setBrush_Qt_BrushStyle".}
proc fcQPainter_setBrush_QColor(self: pointer, color: pointer): void {.importc: "QPainter_setBrush_QColor".}
proc fcQPainter_setBrush_Qt_GlobalColor(self: pointer, color: cint): void {.importc: "QPainter_setBrush_Qt_GlobalColor".}
proc fcQPainter_brush(self: pointer): pointer {.importc: "QPainter_brush".}
proc fcQPainter_setBackgroundMode(self: pointer, mode: cint): void {.importc: "QPainter_setBackgroundMode".}
proc fcQPainter_backgroundMode(self: pointer): cint {.importc: "QPainter_backgroundMode".}
proc fcQPainter_brushOrigin(self: pointer): pointer {.importc: "QPainter_brushOrigin".}
proc fcQPainter_brushOriginF(self: pointer): pointer {.importc: "QPainter_brushOriginF".}
proc fcQPainter_setBrushOriginIntInt(self: pointer, x: cint, y: cint): void {.importc: "QPainter_setBrushOrigin_int_int".}
proc fcQPainter_setBrushOrigin_QPoint(self: pointer, brushOrigin: pointer): void {.importc: "QPainter_setBrushOrigin_QPoint".}
proc fcQPainter_setBrushOrigin_QPointF(self: pointer, brushOrigin: pointer): void {.importc: "QPainter_setBrushOrigin_QPointF".}
proc fcQPainter_setBackground(self: pointer, bg: pointer): void {.importc: "QPainter_setBackground".}
proc fcQPainter_background(self: pointer): pointer {.importc: "QPainter_background".}
proc fcQPainter_opacity(self: pointer): float64 {.importc: "QPainter_opacity".}
proc fcQPainter_setOpacity(self: pointer, opacity: float64): void {.importc: "QPainter_setOpacity".}
proc fcQPainter_clipRegion(self: pointer): pointer {.importc: "QPainter_clipRegion".}
proc fcQPainter_clipPath(self: pointer): pointer {.importc: "QPainter_clipPath".}
proc fcQPainter_setClipRect_QRectF(self: pointer, param1: pointer): void {.importc: "QPainter_setClipRect_QRectF".}
proc fcQPainter_setClipRect_QRect(self: pointer, param1: pointer): void {.importc: "QPainter_setClipRect_QRect".}
proc fcQPainter_setClipRectIntIntIntInt(self: pointer, x: cint, y: cint, w: cint, h: cint): void {.importc: "QPainter_setClipRect_int_int_int_int".}
proc fcQPainter_setClipRegion_QRegion(self: pointer, param1: pointer): void {.importc: "QPainter_setClipRegion_QRegion".}
proc fcQPainter_setClipPathPath(self: pointer, path: pointer): void {.importc: "QPainter_setClipPath_path".}
proc fcQPainter_setClipping(self: pointer, enable: bool): void {.importc: "QPainter_setClipping".}
proc fcQPainter_hasClipping(self: pointer): bool {.importc: "QPainter_hasClipping".}
proc fcQPainter_clipBoundingRect(self: pointer): pointer {.importc: "QPainter_clipBoundingRect".}
proc fcQPainter_save(self: pointer): void {.importc: "QPainter_save".}
proc fcQPainter_restore(self: pointer): void {.importc: "QPainter_restore".}
proc fcQPainter_setTransformTransform(self: pointer, transform: pointer): void {.importc: "QPainter_setTransform_transform".}
proc fcQPainter_transform(self: pointer): pointer {.importc: "QPainter_transform".}
proc fcQPainter_deviceTransform(self: pointer): pointer {.importc: "QPainter_deviceTransform".}
proc fcQPainter_resetTransform(self: pointer): void {.importc: "QPainter_resetTransform".}
proc fcQPainter_setWorldTransformMatrix(self: pointer, matrix: pointer): void {.importc: "QPainter_setWorldTransform_matrix".}
proc fcQPainter_worldTransform(self: pointer): pointer {.importc: "QPainter_worldTransform".}
proc fcQPainter_combinedTransform(self: pointer): pointer {.importc: "QPainter_combinedTransform".}
proc fcQPainter_setWorldMatrixEnabled(self: pointer, enabled: bool): void {.importc: "QPainter_setWorldMatrixEnabled".}
proc fcQPainter_worldMatrixEnabled(self: pointer): bool {.importc: "QPainter_worldMatrixEnabled".}
proc fcQPainter_scale(self: pointer, sx: float64, sy: float64): void {.importc: "QPainter_scale".}
proc fcQPainter_shear(self: pointer, sh: float64, sv: float64): void {.importc: "QPainter_shear".}
proc fcQPainter_rotate(self: pointer, a: float64): void {.importc: "QPainter_rotate".}
proc fcQPainter_translate_QPointF(self: pointer, offset: pointer): void {.importc: "QPainter_translate_QPointF".}
proc fcQPainter_translate_QPoint(self: pointer, offset: pointer): void {.importc: "QPainter_translate_QPoint".}
proc fcQPainter_translateQrealQreal(self: pointer, dx: float64, dy: float64): void {.importc: "QPainter_translate_qreal_qreal".}
proc fcQPainter_window(self: pointer): pointer {.importc: "QPainter_window".}
proc fcQPainter_setWindowWindow(self: pointer, window: pointer): void {.importc: "QPainter_setWindow_window".}
proc fcQPainter_setWindowXYWH(self: pointer, x: cint, y: cint, w: cint, h: cint): void {.importc: "QPainter_setWindow_x_y_w_h".}
proc fcQPainter_viewport(self: pointer): pointer {.importc: "QPainter_viewport".}
proc fcQPainter_setViewportViewport(self: pointer, viewport: pointer): void {.importc: "QPainter_setViewport_viewport".}
proc fcQPainter_setViewportXYWH(self: pointer, x: cint, y: cint, w: cint, h: cint): void {.importc: "QPainter_setViewport_x_y_w_h".}
proc fcQPainter_setViewTransformEnabled(self: pointer, enable: bool): void {.importc: "QPainter_setViewTransformEnabled".}
proc fcQPainter_viewTransformEnabled(self: pointer): bool {.importc: "QPainter_viewTransformEnabled".}
proc fcQPainter_strokePath(self: pointer, path: pointer, pen: pointer): void {.importc: "QPainter_strokePath".}
proc fcQPainter_fillPath(self: pointer, path: pointer, brush: pointer): void {.importc: "QPainter_fillPath".}
proc fcQPainter_drawPath(self: pointer, path: pointer): void {.importc: "QPainter_drawPath".}
proc fcQPainter_drawPointPt(self: pointer, pt: pointer): void {.importc: "QPainter_drawPoint_pt".}
proc fcQPainter_drawPointP(self: pointer, p: pointer): void {.importc: "QPainter_drawPoint_p".}
proc fcQPainter_drawPointXY(self: pointer, x: cint, y: cint): void {.importc: "QPainter_drawPoint_x_y".}
proc fcQPainter_drawPoints_QPointFInt(self: pointer, points: pointer, pointCount: cint): void {.importc: "QPainter_drawPoints_QPointF_int".}
proc fcQPainter_drawPoints_QPointInt(self: pointer, points: pointer, pointCount: cint): void {.importc: "QPainter_drawPoints_QPoint_int".}
proc fcQPainter_drawLine_QLineF(self: pointer, line: pointer): void {.importc: "QPainter_drawLine_QLineF".}
proc fcQPainter_drawLine_QLine(self: pointer, line: pointer): void {.importc: "QPainter_drawLine_QLine".}
proc fcQPainter_drawLineIntIntIntInt(self: pointer, x1: cint, y1: cint, x2: cint, y2: cint): void {.importc: "QPainter_drawLine_int_int_int_int".}
proc fcQPainter_drawLine_QPoint_QPoint(self: pointer, p1: pointer, p2: pointer): void {.importc: "QPainter_drawLine_QPoint_QPoint".}
proc fcQPainter_drawLine_QPointF_QPointF(self: pointer, p1: pointer, p2: pointer): void {.importc: "QPainter_drawLine_QPointF_QPointF".}
proc fcQPainter_drawLines_QLineFInt(self: pointer, lines: pointer, lineCount: cint): void {.importc: "QPainter_drawLines_QLineF_int".}
proc fcQPainter_drawLines_QListOfQLineF(self: pointer, lines: struct_seaqt_array): void {.importc: "QPainter_drawLines_QListOfQLineF".}
proc fcQPainter_drawLines_QPointFInt(self: pointer, pointPairs: pointer, lineCount: cint): void {.importc: "QPainter_drawLines_QPointF_int".}
proc fcQPainter_drawLines_QListOfQPointF(self: pointer, pointPairs: struct_seaqt_array): void {.importc: "QPainter_drawLines_QListOfQPointF".}
proc fcQPainter_drawLines_QLineInt(self: pointer, lines: pointer, lineCount: cint): void {.importc: "QPainter_drawLines_QLine_int".}
proc fcQPainter_drawLines_QListOfQLine(self: pointer, lines: struct_seaqt_array): void {.importc: "QPainter_drawLines_QListOfQLine".}
proc fcQPainter_drawLines_QPointInt(self: pointer, pointPairs: pointer, lineCount: cint): void {.importc: "QPainter_drawLines_QPoint_int".}
proc fcQPainter_drawLines_QListOfQPoint(self: pointer, pointPairs: struct_seaqt_array): void {.importc: "QPainter_drawLines_QListOfQPoint".}
proc fcQPainter_drawRect_QRectF(self: pointer, rect: pointer): void {.importc: "QPainter_drawRect_QRectF".}
proc fcQPainter_drawRectIntIntIntInt(self: pointer, x1: cint, y1: cint, w: cint, h: cint): void {.importc: "QPainter_drawRect_int_int_int_int".}
proc fcQPainter_drawRect_QRect(self: pointer, rect: pointer): void {.importc: "QPainter_drawRect_QRect".}
proc fcQPainter_drawRects_QRectFInt(self: pointer, rects: pointer, rectCount: cint): void {.importc: "QPainter_drawRects_QRectF_int".}
proc fcQPainter_drawRects_QListOfQRectF(self: pointer, rectangles: struct_seaqt_array): void {.importc: "QPainter_drawRects_QListOfQRectF".}
proc fcQPainter_drawRects_QRectInt(self: pointer, rects: pointer, rectCount: cint): void {.importc: "QPainter_drawRects_QRect_int".}
proc fcQPainter_drawRects_QListOfQRect(self: pointer, rectangles: struct_seaqt_array): void {.importc: "QPainter_drawRects_QListOfQRect".}
proc fcQPainter_drawEllipse_QRectF(self: pointer, r: pointer): void {.importc: "QPainter_drawEllipse_QRectF".}
proc fcQPainter_drawEllipse_QRect(self: pointer, r: pointer): void {.importc: "QPainter_drawEllipse_QRect".}
proc fcQPainter_drawEllipseIntIntIntInt(self: pointer, x: cint, y: cint, w: cint, h: cint): void {.importc: "QPainter_drawEllipse_int_int_int_int".}
proc fcQPainter_drawEllipse_QPointFQrealQreal(self: pointer, center: pointer, rx: float64, ry: float64): void {.importc: "QPainter_drawEllipse_QPointF_qreal_qreal".}
proc fcQPainter_drawEllipse_QPointIntInt(self: pointer, center: pointer, rx: cint, ry: cint): void {.importc: "QPainter_drawEllipse_QPoint_int_int".}
proc fcQPainter_drawPolyline_QPointFInt(self: pointer, points: pointer, pointCount: cint): void {.importc: "QPainter_drawPolyline_QPointF_int".}
proc fcQPainter_drawPolyline_QPointInt(self: pointer, points: pointer, pointCount: cint): void {.importc: "QPainter_drawPolyline_QPoint_int".}
proc fcQPainter_drawPolygon_QPointFInt(self: pointer, points: pointer, pointCount: cint): void {.importc: "QPainter_drawPolygon_QPointF_int".}
proc fcQPainter_drawPolygon_QPointInt(self: pointer, points: pointer, pointCount: cint): void {.importc: "QPainter_drawPolygon_QPoint_int".}
proc fcQPainter_drawConvexPolygon_QPointFInt(self: pointer, points: pointer, pointCount: cint): void {.importc: "QPainter_drawConvexPolygon_QPointF_int".}
proc fcQPainter_drawConvexPolygon_QPointInt(self: pointer, points: pointer, pointCount: cint): void {.importc: "QPainter_drawConvexPolygon_QPoint_int".}
proc fcQPainter_drawArc_QRectFIntInt(self: pointer, rect: pointer, a: cint, alen: cint): void {.importc: "QPainter_drawArc_QRectF_int_int".}
proc fcQPainter_drawArc_QRectIntInt(self: pointer, param1: pointer, a: cint, alen: cint): void {.importc: "QPainter_drawArc_QRect_int_int".}
proc fcQPainter_drawArcIntIntIntIntIntInt(self: pointer, x: cint, y: cint, w: cint, h: cint, a: cint, alen: cint): void {.importc: "QPainter_drawArc_int_int_int_int_int_int".}
proc fcQPainter_drawPie_QRectFIntInt(self: pointer, rect: pointer, a: cint, alen: cint): void {.importc: "QPainter_drawPie_QRectF_int_int".}
proc fcQPainter_drawPieIntIntIntIntIntInt(self: pointer, x: cint, y: cint, w: cint, h: cint, a: cint, alen: cint): void {.importc: "QPainter_drawPie_int_int_int_int_int_int".}
proc fcQPainter_drawPie_QRectIntInt(self: pointer, param1: pointer, a: cint, alen: cint): void {.importc: "QPainter_drawPie_QRect_int_int".}
proc fcQPainter_drawChord_QRectFIntInt(self: pointer, rect: pointer, a: cint, alen: cint): void {.importc: "QPainter_drawChord_QRectF_int_int".}
proc fcQPainter_drawChordIntIntIntIntIntInt(self: pointer, x: cint, y: cint, w: cint, h: cint, a: cint, alen: cint): void {.importc: "QPainter_drawChord_int_int_int_int_int_int".}
proc fcQPainter_drawChord_QRectIntInt(self: pointer, param1: pointer, a: cint, alen: cint): void {.importc: "QPainter_drawChord_QRect_int_int".}
proc fcQPainter_drawRoundedRect_QRectFQrealQreal(self: pointer, rect: pointer, xRadius: float64, yRadius: float64): void {.importc: "QPainter_drawRoundedRect_QRectF_qreal_qreal".}
proc fcQPainter_drawRoundedRectIntIntIntIntQrealQreal(self: pointer, x: cint, y: cint, w: cint, h: cint, xRadius: float64, yRadius: float64): void {.importc: "QPainter_drawRoundedRect_int_int_int_int_qreal_qreal".}
proc fcQPainter_drawRoundedRect_QRectQrealQreal(self: pointer, rect: pointer, xRadius: float64, yRadius: float64): void {.importc: "QPainter_drawRoundedRect_QRect_qreal_qreal".}
proc fcQPainter_drawTiledPixmap_QRectF_QPixmap(self: pointer, rect: pointer, pm: pointer): void {.importc: "QPainter_drawTiledPixmap_QRectF_QPixmap".}
proc fcQPainter_drawTiledPixmapIntIntIntInt_QPixmap(self: pointer, x: cint, y: cint, w: cint, h: cint, param5: pointer): void {.importc: "QPainter_drawTiledPixmap_int_int_int_int_QPixmap".}
proc fcQPainter_drawTiledPixmap_QRect_QPixmap(self: pointer, param1: pointer, param2: pointer): void {.importc: "QPainter_drawTiledPixmap_QRect_QPixmap".}
proc fcQPainter_drawPicture_QPointF_QPicture(self: pointer, p: pointer, picture: pointer): void {.importc: "QPainter_drawPicture_QPointF_QPicture".}
proc fcQPainter_drawPictureIntInt_QPicture(self: pointer, x: cint, y: cint, picture: pointer): void {.importc: "QPainter_drawPicture_int_int_QPicture".}
proc fcQPainter_drawPicture_QPoint_QPicture(self: pointer, p: pointer, picture: pointer): void {.importc: "QPainter_drawPicture_QPoint_QPicture".}
proc fcQPainter_drawPixmap_QRectF_QPixmap_QRectF(self: pointer, targetRect: pointer, pixmap: pointer, sourceRect: pointer): void {.importc: "QPainter_drawPixmap_QRectF_QPixmap_QRectF".}
proc fcQPainter_drawPixmap_QRect_QPixmap_QRect(self: pointer, targetRect: pointer, pixmap: pointer, sourceRect: pointer): void {.importc: "QPainter_drawPixmap_QRect_QPixmap_QRect".}
proc fcQPainter_drawPixmapIntIntIntInt_QPixmapIntIntIntInt(self: pointer, x: cint, y: cint, w: cint, h: cint, pm: pointer, sx: cint, sy: cint, sw: cint, sh: cint): void {.importc: "QPainter_drawPixmap_int_int_int_int_QPixmap_int_int_int_int".}
proc fcQPainter_drawPixmapIntInt_QPixmapIntIntIntInt(self: pointer, x: cint, y: cint, pm: pointer, sx: cint, sy: cint, sw: cint, sh: cint): void {.importc: "QPainter_drawPixmap_int_int_QPixmap_int_int_int_int".}
proc fcQPainter_drawPixmap_QPointF_QPixmap_QRectF(self: pointer, p: pointer, pm: pointer, sr: pointer): void {.importc: "QPainter_drawPixmap_QPointF_QPixmap_QRectF".}
proc fcQPainter_drawPixmap_QPoint_QPixmap_QRect(self: pointer, p: pointer, pm: pointer, sr: pointer): void {.importc: "QPainter_drawPixmap_QPoint_QPixmap_QRect".}
proc fcQPainter_drawPixmap_QPointF_QPixmap(self: pointer, p: pointer, pm: pointer): void {.importc: "QPainter_drawPixmap_QPointF_QPixmap".}
proc fcQPainter_drawPixmap_QPoint_QPixmap(self: pointer, p: pointer, pm: pointer): void {.importc: "QPainter_drawPixmap_QPoint_QPixmap".}
proc fcQPainter_drawPixmapIntInt_QPixmap(self: pointer, x: cint, y: cint, pm: pointer): void {.importc: "QPainter_drawPixmap_int_int_QPixmap".}
proc fcQPainter_drawPixmap_QRect_QPixmap(self: pointer, r: pointer, pm: pointer): void {.importc: "QPainter_drawPixmap_QRect_QPixmap".}
proc fcQPainter_drawPixmapIntIntIntInt_QPixmap(self: pointer, x: cint, y: cint, w: cint, h: cint, pm: pointer): void {.importc: "QPainter_drawPixmap_int_int_int_int_QPixmap".}
proc fcQPainter_drawPixmapFragmentsFragmentsFragmentCountPixmap(self: pointer, fragments: pointer, fragmentCount: cint, pixmap: pointer): void {.importc: "QPainter_drawPixmapFragments_fragments_fragmentCount_pixmap".}
proc fcQPainter_drawImage_QRectF_QImage_QRectF(self: pointer, targetRect: pointer, image: pointer, sourceRect: pointer): void {.importc: "QPainter_drawImage_QRectF_QImage_QRectF".}
proc fcQPainter_drawImage_QRect_QImage_QRect(self: pointer, targetRect: pointer, image: pointer, sourceRect: pointer): void {.importc: "QPainter_drawImage_QRect_QImage_QRect".}
proc fcQPainter_drawImage_QPointF_QImage_QRectF(self: pointer, p: pointer, image: pointer, sr: pointer): void {.importc: "QPainter_drawImage_QPointF_QImage_QRectF".}
proc fcQPainter_drawImage_QPoint_QImage_QRect(self: pointer, p: pointer, image: pointer, sr: pointer): void {.importc: "QPainter_drawImage_QPoint_QImage_QRect".}
proc fcQPainter_drawImage_QRectF_QImage(self: pointer, r: pointer, image: pointer): void {.importc: "QPainter_drawImage_QRectF_QImage".}
proc fcQPainter_drawImage_QRect_QImage(self: pointer, r: pointer, image: pointer): void {.importc: "QPainter_drawImage_QRect_QImage".}
proc fcQPainter_drawImage_QPointF_QImage(self: pointer, p: pointer, image: pointer): void {.importc: "QPainter_drawImage_QPointF_QImage".}
proc fcQPainter_drawImage_QPoint_QImage(self: pointer, p: pointer, image: pointer): void {.importc: "QPainter_drawImage_QPoint_QImage".}
proc fcQPainter_drawImageIntInt_QImage(self: pointer, x: cint, y: cint, image: pointer): void {.importc: "QPainter_drawImage_int_int_QImage".}
proc fcQPainter_setLayoutDirection(self: pointer, direction: cint): void {.importc: "QPainter_setLayoutDirection".}
proc fcQPainter_layoutDirection(self: pointer): cint {.importc: "QPainter_layoutDirection".}
proc fcQPainter_drawGlyphRun(self: pointer, position: pointer, glyphRun: pointer): void {.importc: "QPainter_drawGlyphRun".}
proc fcQPainter_drawStaticText_QPointF_QStaticText(self: pointer, topLeftPosition: pointer, staticText: pointer): void {.importc: "QPainter_drawStaticText_QPointF_QStaticText".}
proc fcQPainter_drawStaticText_QPoint_QStaticText(self: pointer, topLeftPosition: pointer, staticText: pointer): void {.importc: "QPainter_drawStaticText_QPoint_QStaticText".}
proc fcQPainter_drawStaticTextIntInt_QStaticText(self: pointer, left: cint, top: cint, staticText: pointer): void {.importc: "QPainter_drawStaticText_int_int_QStaticText".}
proc fcQPainter_drawText_QPointF_QString(self: pointer, p: pointer, s: struct_seaqt_string): void {.importc: "QPainter_drawText_QPointF_QString".}
proc fcQPainter_drawText_QPoint_QString(self: pointer, p: pointer, s: struct_seaqt_string): void {.importc: "QPainter_drawText_QPoint_QString".}
proc fcQPainter_drawTextIntInt_QString(self: pointer, x: cint, y: cint, s: struct_seaqt_string): void {.importc: "QPainter_drawText_int_int_QString".}
proc fcQPainter_drawText_QPointF_QStringIntInt(self: pointer, p: pointer, str: struct_seaqt_string, tf: cint, justificationPadding: cint): void {.importc: "QPainter_drawText_QPointF_QString_int_int".}
proc fcQPainter_drawText_QRectFInt_QString(self: pointer, r: pointer, flags: cint, text: struct_seaqt_string): void {.importc: "QPainter_drawText_QRectF_int_QString".}
proc fcQPainter_drawText_QRectInt_QString(self: pointer, r: pointer, flags: cint, text: struct_seaqt_string): void {.importc: "QPainter_drawText_QRect_int_QString".}
proc fcQPainter_drawTextIntIntIntIntInt_QString(self: pointer, x: cint, y: cint, w: cint, h: cint, flags: cint, text: struct_seaqt_string): void {.importc: "QPainter_drawText_int_int_int_int_int_QString".}
proc fcQPainter_drawText_QRectF_QString(self: pointer, r: pointer, text: struct_seaqt_string): void {.importc: "QPainter_drawText_QRectF_QString".}
proc fcQPainter_boundingRect_QRectFInt_QString(self: pointer, rect: pointer, flags: cint, text: struct_seaqt_string): pointer {.importc: "QPainter_boundingRect_QRectF_int_QString".}
proc fcQPainter_boundingRect_QRectInt_QString(self: pointer, rect: pointer, flags: cint, text: struct_seaqt_string): pointer {.importc: "QPainter_boundingRect_QRect_int_QString".}
proc fcQPainter_boundingRectIntIntIntIntInt_QString(self: pointer, x: cint, y: cint, w: cint, h: cint, flags: cint, text: struct_seaqt_string): pointer {.importc: "QPainter_boundingRect_int_int_int_int_int_QString".}
proc fcQPainter_boundingRect_QRectF_QString(self: pointer, rect: pointer, text: struct_seaqt_string): pointer {.importc: "QPainter_boundingRect_QRectF_QString".}
proc fcQPainter_drawTextItem_QPointF_QTextItem(self: pointer, p: pointer, ti: pointer): void {.importc: "QPainter_drawTextItem_QPointF_QTextItem".}
proc fcQPainter_drawTextItemIntInt_QTextItem(self: pointer, x: cint, y: cint, ti: pointer): void {.importc: "QPainter_drawTextItem_int_int_QTextItem".}
proc fcQPainter_drawTextItem_QPoint_QTextItem(self: pointer, p: pointer, ti: pointer): void {.importc: "QPainter_drawTextItem_QPoint_QTextItem".}
proc fcQPainter_fillRect_QRectF_QBrush(self: pointer, param1: pointer, param2: pointer): void {.importc: "QPainter_fillRect_QRectF_QBrush".}
proc fcQPainter_fillRectIntIntIntInt_QBrush(self: pointer, x: cint, y: cint, w: cint, h: cint, param5: pointer): void {.importc: "QPainter_fillRect_int_int_int_int_QBrush".}
proc fcQPainter_fillRect_QRect_QBrush(self: pointer, param1: pointer, param2: pointer): void {.importc: "QPainter_fillRect_QRect_QBrush".}
proc fcQPainter_fillRect_QRectF_QColor(self: pointer, param1: pointer, color: pointer): void {.importc: "QPainter_fillRect_QRectF_QColor".}
proc fcQPainter_fillRectIntIntIntInt_QColor(self: pointer, x: cint, y: cint, w: cint, h: cint, color: pointer): void {.importc: "QPainter_fillRect_int_int_int_int_QColor".}
proc fcQPainter_fillRect_QRect_QColor(self: pointer, param1: pointer, color: pointer): void {.importc: "QPainter_fillRect_QRect_QColor".}
proc fcQPainter_fillRectIntIntIntInt_Qt_GlobalColor(self: pointer, x: cint, y: cint, w: cint, h: cint, c: cint): void {.importc: "QPainter_fillRect_int_int_int_int_Qt_GlobalColor".}
proc fcQPainter_fillRect_QRect_Qt_GlobalColor(self: pointer, r: pointer, c: cint): void {.importc: "QPainter_fillRect_QRect_Qt_GlobalColor".}
proc fcQPainter_fillRect_QRectF_Qt_GlobalColor(self: pointer, r: pointer, c: cint): void {.importc: "QPainter_fillRect_QRectF_Qt_GlobalColor".}
proc fcQPainter_fillRectIntIntIntInt_Qt_BrushStyle(self: pointer, x: cint, y: cint, w: cint, h: cint, style: cint): void {.importc: "QPainter_fillRect_int_int_int_int_Qt_BrushStyle".}
proc fcQPainter_fillRect_QRect_Qt_BrushStyle(self: pointer, r: pointer, style: cint): void {.importc: "QPainter_fillRect_QRect_Qt_BrushStyle".}
proc fcQPainter_fillRect_QRectF_Qt_BrushStyle(self: pointer, r: pointer, style: cint): void {.importc: "QPainter_fillRect_QRectF_Qt_BrushStyle".}
proc fcQPainter_fillRectIntIntIntInt_QGradient_Preset(self: pointer, x: cint, y: cint, w: cint, h: cint, preset: cint): void {.importc: "QPainter_fillRect_int_int_int_int_QGradient_Preset".}
proc fcQPainter_fillRect_QRect_QGradient_Preset(self: pointer, r: pointer, preset: cint): void {.importc: "QPainter_fillRect_QRect_QGradient_Preset".}
proc fcQPainter_fillRect_QRectF_QGradient_Preset(self: pointer, r: pointer, preset: cint): void {.importc: "QPainter_fillRect_QRectF_QGradient_Preset".}
proc fcQPainter_eraseRect_QRectF(self: pointer, param1: pointer): void {.importc: "QPainter_eraseRect_QRectF".}
proc fcQPainter_eraseRectIntIntIntInt(self: pointer, x: cint, y: cint, w: cint, h: cint): void {.importc: "QPainter_eraseRect_int_int_int_int".}
proc fcQPainter_eraseRect_QRect(self: pointer, param1: pointer): void {.importc: "QPainter_eraseRect_QRect".}
proc fcQPainter_setRenderHintHint(self: pointer, hint: cint): void {.importc: "QPainter_setRenderHint_hint".}
proc fcQPainter_setRenderHintsHints(self: pointer, hints: cint): void {.importc: "QPainter_setRenderHints_hints".}
proc fcQPainter_renderHints(self: pointer): cint {.importc: "QPainter_renderHints".}
proc fcQPainter_testRenderHint(self: pointer, hint: cint): bool {.importc: "QPainter_testRenderHint".}
proc fcQPainter_paintEngine(self: pointer): pointer {.importc: "QPainter_paintEngine".}
proc fcQPainter_beginNativePainting(self: pointer): void {.importc: "QPainter_beginNativePainting".}
proc fcQPainter_endNativePainting(self: pointer): void {.importc: "QPainter_endNativePainting".}
proc fcQPainter_setClipRect_QRectF_Qt_ClipOperation(self: pointer, param1: pointer, op: cint): void {.importc: "QPainter_setClipRect_QRectF_Qt_ClipOperation".}
proc fcQPainter_setClipRect_QRect_Qt_ClipOperation(self: pointer, param1: pointer, op: cint): void {.importc: "QPainter_setClipRect_QRect_Qt_ClipOperation".}
proc fcQPainter_setClipRectIntIntIntInt_Qt_ClipOperation(self: pointer, x: cint, y: cint, w: cint, h: cint, op: cint): void {.importc: "QPainter_setClipRect_int_int_int_int_Qt_ClipOperation".}
proc fcQPainter_setClipRegion_QRegion_Qt_ClipOperation(self: pointer, param1: pointer, op: cint): void {.importc: "QPainter_setClipRegion_QRegion_Qt_ClipOperation".}
proc fcQPainter_setClipPathPathOp(self: pointer, path: pointer, op: cint): void {.importc: "QPainter_setClipPath_path_op".}
proc fcQPainter_setTransformTransformCombine(self: pointer, transform: pointer, combine: bool): void {.importc: "QPainter_setTransform_transform_combine".}
proc fcQPainter_setWorldTransformMatrixCombine(self: pointer, matrix: pointer, combine: bool): void {.importc: "QPainter_setWorldTransform_matrix_combine".}
proc fcQPainter_drawPolygon_QPointFInt_Qt_FillRule(self: pointer, points: pointer, pointCount: cint, fillRule: cint): void {.importc: "QPainter_drawPolygon_QPointF_int_Qt_FillRule".}
proc fcQPainter_drawPolygon_QPointInt_Qt_FillRule(self: pointer, points: pointer, pointCount: cint, fillRule: cint): void {.importc: "QPainter_drawPolygon_QPoint_int_Qt_FillRule".}
proc fcQPainter_drawRoundedRect_QRectFQrealQreal_Qt_SizeMode(self: pointer, rect: pointer, xRadius: float64, yRadius: float64, mode: cint): void {.importc: "QPainter_drawRoundedRect_QRectF_qreal_qreal_Qt_SizeMode".}
proc fcQPainter_drawRoundedRectIntIntIntIntQrealQreal_Qt_SizeMode(self: pointer, x: cint, y: cint, w: cint, h: cint, xRadius: float64, yRadius: float64, mode: cint): void {.importc: "QPainter_drawRoundedRect_int_int_int_int_qreal_qreal_Qt_SizeMode".}
proc fcQPainter_drawRoundedRect_QRectQrealQreal_Qt_SizeMode(self: pointer, rect: pointer, xRadius: float64, yRadius: float64, mode: cint): void {.importc: "QPainter_drawRoundedRect_QRect_qreal_qreal_Qt_SizeMode".}
proc fcQPainter_drawTiledPixmap_QRectF_QPixmap_QPointF(self: pointer, rect: pointer, pm: pointer, offset: pointer): void {.importc: "QPainter_drawTiledPixmap_QRectF_QPixmap_QPointF".}
proc fcQPainter_drawTiledPixmapIntIntIntInt_QPixmapInt(self: pointer, x: cint, y: cint, w: cint, h: cint, param5: pointer, sx: cint): void {.importc: "QPainter_drawTiledPixmap_int_int_int_int_QPixmap_int".}
proc fcQPainter_drawTiledPixmapIntIntIntInt_QPixmapIntInt(self: pointer, x: cint, y: cint, w: cint, h: cint, param5: pointer, sx: cint, sy: cint): void {.importc: "QPainter_drawTiledPixmap_int_int_int_int_QPixmap_int_int".}
proc fcQPainter_drawTiledPixmap_QRect_QPixmap_QPoint(self: pointer, param1: pointer, param2: pointer, param3: pointer): void {.importc: "QPainter_drawTiledPixmap_QRect_QPixmap_QPoint".}
proc fcQPainter_drawPixmapFragmentsFragmentsFragmentCountPixmapHints(self: pointer, fragments: pointer, fragmentCount: cint, pixmap: pointer, hints: cint): void {.importc: "QPainter_drawPixmapFragments_fragments_fragmentCount_pixmap_hints".}
proc fcQPainter_drawImage_QRectF_QImage_QRectF_Qt_ImageConversionFlags(self: pointer, targetRect: pointer, image: pointer, sourceRect: pointer, flags: cint): void {.importc: "QPainter_drawImage_QRectF_QImage_QRectF_Qt_ImageConversionFlags".}
proc fcQPainter_drawImage_QRect_QImage_QRect_Qt_ImageConversionFlags(self: pointer, targetRect: pointer, image: pointer, sourceRect: pointer, flags: cint): void {.importc: "QPainter_drawImage_QRect_QImage_QRect_Qt_ImageConversionFlags".}
proc fcQPainter_drawImage_QPointF_QImage_QRectF_Qt_ImageConversionFlags(self: pointer, p: pointer, image: pointer, sr: pointer, flags: cint): void {.importc: "QPainter_drawImage_QPointF_QImage_QRectF_Qt_ImageConversionFlags".}
proc fcQPainter_drawImage_QPoint_QImage_QRect_Qt_ImageConversionFlags(self: pointer, p: pointer, image: pointer, sr: pointer, flags: cint): void {.importc: "QPainter_drawImage_QPoint_QImage_QRect_Qt_ImageConversionFlags".}
proc fcQPainter_drawImageIntInt_QImageInt(self: pointer, x: cint, y: cint, image: pointer, sx: cint): void {.importc: "QPainter_drawImage_int_int_QImage_int".}
proc fcQPainter_drawImageIntInt_QImageIntInt(self: pointer, x: cint, y: cint, image: pointer, sx: cint, sy: cint): void {.importc: "QPainter_drawImage_int_int_QImage_int_int".}
proc fcQPainter_drawImageIntInt_QImageIntIntInt(self: pointer, x: cint, y: cint, image: pointer, sx: cint, sy: cint, sw: cint): void {.importc: "QPainter_drawImage_int_int_QImage_int_int_int".}
proc fcQPainter_drawImageIntInt_QImageIntIntIntInt(self: pointer, x: cint, y: cint, image: pointer, sx: cint, sy: cint, sw: cint, sh: cint): void {.importc: "QPainter_drawImage_int_int_QImage_int_int_int_int".}
proc fcQPainter_drawImageIntInt_QImageIntIntIntInt_Qt_ImageConversionFlags(self: pointer, x: cint, y: cint, image: pointer, sx: cint, sy: cint, sw: cint, sh: cint, flags: cint): void {.importc: "QPainter_drawImage_int_int_QImage_int_int_int_int_Qt_ImageConversionFlags".}
proc fcQPainter_drawText_QRectFInt_QString_QRectF(self: pointer, r: pointer, flags: cint, text: struct_seaqt_string, br: pointer): void {.importc: "QPainter_drawText_QRectF_int_QString_QRectF".}
proc fcQPainter_drawText_QRectInt_QString_QRect(self: pointer, r: pointer, flags: cint, text: struct_seaqt_string, br: pointer): void {.importc: "QPainter_drawText_QRect_int_QString_QRect".}
proc fcQPainter_drawTextIntIntIntIntInt_QString_QRect(self: pointer, x: cint, y: cint, w: cint, h: cint, flags: cint, text: struct_seaqt_string, br: pointer): void {.importc: "QPainter_drawText_int_int_int_int_int_QString_QRect".}
proc fcQPainter_drawText_QRectF_QString_QTextOption(self: pointer, r: pointer, text: struct_seaqt_string, o: pointer): void {.importc: "QPainter_drawText_QRectF_QString_QTextOption".}
proc fcQPainter_boundingRect_QRectF_QString_QTextOption(self: pointer, rect: pointer, text: struct_seaqt_string, o: pointer): pointer {.importc: "QPainter_boundingRect_QRectF_QString_QTextOption".}
proc fcQPainter_setRenderHintHintOn(self: pointer, hint: cint, on: bool): void {.importc: "QPainter_setRenderHint_hint_on".}
proc fcQPainter_setRenderHintsHintsOn(self: pointer, hints: cint, on: bool): void {.importc: "QPainter_setRenderHints_hints_on".}
proc fcQPainter_new(): ptr cQPainter {.importc: "QPainter_new".}
proc fcQPainter_new2(param1: pointer): ptr cQPainter {.importc: "QPainter_new_QPaintDevice".}
proc fcQPainter_staticMetaObject(): pointer {.importc: "QPainter_staticMetaObject".}
proc fcQPainterPixmapFragment_x(self: pointer): float64 {.importc: "QPainter__PixmapFragment_x".}
proc fcQPainterPixmapFragment_setX(self: pointer, x: float64): void {.importc: "QPainter__PixmapFragment_setX".}
proc fcQPainterPixmapFragment_y(self: pointer): float64 {.importc: "QPainter__PixmapFragment_y".}
proc fcQPainterPixmapFragment_setY(self: pointer, y: float64): void {.importc: "QPainter__PixmapFragment_setY".}
proc fcQPainterPixmapFragment_sourceLeft(self: pointer): float64 {.importc: "QPainter__PixmapFragment_sourceLeft".}
proc fcQPainterPixmapFragment_setSourceLeft(self: pointer, sourceLeft: float64): void {.importc: "QPainter__PixmapFragment_setSourceLeft".}
proc fcQPainterPixmapFragment_sourceTop(self: pointer): float64 {.importc: "QPainter__PixmapFragment_sourceTop".}
proc fcQPainterPixmapFragment_setSourceTop(self: pointer, sourceTop: float64): void {.importc: "QPainter__PixmapFragment_setSourceTop".}
proc fcQPainterPixmapFragment_width(self: pointer): float64 {.importc: "QPainter__PixmapFragment_width".}
proc fcQPainterPixmapFragment_setWidth(self: pointer, width: float64): void {.importc: "QPainter__PixmapFragment_setWidth".}
proc fcQPainterPixmapFragment_height(self: pointer): float64 {.importc: "QPainter__PixmapFragment_height".}
proc fcQPainterPixmapFragment_setHeight(self: pointer, height: float64): void {.importc: "QPainter__PixmapFragment_setHeight".}
proc fcQPainterPixmapFragment_scaleX(self: pointer): float64 {.importc: "QPainter__PixmapFragment_scaleX".}
proc fcQPainterPixmapFragment_setScaleX(self: pointer, scaleX: float64): void {.importc: "QPainter__PixmapFragment_setScaleX".}
proc fcQPainterPixmapFragment_scaleY(self: pointer): float64 {.importc: "QPainter__PixmapFragment_scaleY".}
proc fcQPainterPixmapFragment_setScaleY(self: pointer, scaleY: float64): void {.importc: "QPainter__PixmapFragment_setScaleY".}
proc fcQPainterPixmapFragment_rotation(self: pointer): float64 {.importc: "QPainter__PixmapFragment_rotation".}
proc fcQPainterPixmapFragment_setRotation(self: pointer, rotation: float64): void {.importc: "QPainter__PixmapFragment_setRotation".}
proc fcQPainterPixmapFragment_opacity(self: pointer): float64 {.importc: "QPainter__PixmapFragment_opacity".}
proc fcQPainterPixmapFragment_setOpacity(self: pointer, opacity: float64): void {.importc: "QPainter__PixmapFragment_setOpacity".}
proc fcQPainterPixmapFragment_createPosSourceRect(pos: pointer, sourceRect: pointer): pointer {.importc: "QPainter__PixmapFragment_create_pos_sourceRect".}
proc fcQPainterPixmapFragment_createPosSourceRectScaleX(pos: pointer, sourceRect: pointer, scaleX: float64): pointer {.importc: "QPainter__PixmapFragment_create_pos_sourceRect_scaleX".}
proc fcQPainterPixmapFragment_createPosSourceRectScaleXScaleY(pos: pointer, sourceRect: pointer, scaleX: float64, scaleY: float64): pointer {.importc: "QPainter__PixmapFragment_create_pos_sourceRect_scaleX_scaleY".}
proc fcQPainterPixmapFragment_createPosSourceRectScaleXScaleYRotation(pos: pointer, sourceRect: pointer, scaleX: float64, scaleY: float64, rotation: float64): pointer {.importc: "QPainter__PixmapFragment_create_pos_sourceRect_scaleX_scaleY_rotation".}
proc fcQPainterPixmapFragment_createPosSourceRectScaleXScaleYRotationOpacity(pos: pointer, sourceRect: pointer, scaleX: float64, scaleY: float64, rotation: float64, opacity: float64): pointer {.importc: "QPainter__PixmapFragment_create_pos_sourceRect_scaleX_scaleY_rotation_opacity".}
proc fcQPainterPixmapFragment_new(): ptr cQPainterPixmapFragment {.importc: "QPainter__PixmapFragment_new".}
proc fcQPainterPixmapFragment_new2(fromVal: pointer): ptr cQPainterPixmapFragment {.importc: "QPainter__PixmapFragment_new_from".}

proc device*(self: gen_qpainter_types.QPainter): gen_qpaintdevice_types.QPaintDevice =
  gen_qpaintdevice_types.QPaintDevice(h: fcQPainter_device(self.h), owned: false)

proc begin*(self: gen_qpainter_types.QPainter, param1: gen_qpaintdevice_types.QPaintDevice): bool =
  fcQPainter_begin(self.h, param1.h)

proc endX*(self: gen_qpainter_types.QPainter): bool =
  fcQPainter_endX(self.h)

proc isActive*(self: gen_qpainter_types.QPainter): bool =
  fcQPainter_isActive(self.h)

proc setCompositionMode*(self: gen_qpainter_types.QPainter, mode: cint): void =
  fcQPainter_setCompositionMode(self.h, cint(mode))

proc compositionMode*(self: gen_qpainter_types.QPainter): cint =
  cint(fcQPainter_compositionMode(self.h))

proc font*(self: gen_qpainter_types.QPainter): gen_qfont_types.QFont =
  gen_qfont_types.QFont(h: fcQPainter_font(self.h), owned: false)

proc setFont*(self: gen_qpainter_types.QPainter, f: gen_qfont_types.QFont): void =
  fcQPainter_setFont(self.h, f.h)

proc fontMetrics*(self: gen_qpainter_types.QPainter): gen_qfontmetrics_types.QFontMetrics =
  gen_qfontmetrics_types.QFontMetrics(h: fcQPainter_fontMetrics(self.h), owned: true)

proc fontInfo*(self: gen_qpainter_types.QPainter): gen_qfontinfo_types.QFontInfo =
  gen_qfontinfo_types.QFontInfo(h: fcQPainter_fontInfo(self.h), owned: true)

proc setPen*(self: gen_qpainter_types.QPainter, color: gen_qcolor_types.QColor): void =
  fcQPainter_setPenColor(self.h, color.h)

proc setPen*(self: gen_qpainter_types.QPainter, pen: gen_qpen_types.QPen): void =
  fcQPainter_setPenPen(self.h, pen.h)

proc setPen*(self: gen_qpainter_types.QPainter, style: cint): void =
  fcQPainter_setPenStyle(self.h, cint(style))

proc pen*(self: gen_qpainter_types.QPainter): gen_qpen_types.QPen =
  gen_qpen_types.QPen(h: fcQPainter_pen(self.h), owned: false)

proc setBrush*(self: gen_qpainter_types.QPainter, brush: gen_qbrush_types.QBrush): void =
  fcQPainter_setBrush_QBrush(self.h, brush.h)

proc setBrush*(self: gen_qpainter_types.QPainter, style: cint): void =
  fcQPainter_setBrush_Qt_BrushStyle(self.h, cint(style))

proc setBrush*(self: gen_qpainter_types.QPainter, color: gen_qcolor_types.QColor): void =
  fcQPainter_setBrush_QColor(self.h, color.h)

proc setBrush2*(self: gen_qpainter_types.QPainter, color: cint): void =
  fcQPainter_setBrush_Qt_GlobalColor(self.h, cint(color))

proc brush*(self: gen_qpainter_types.QPainter): gen_qbrush_types.QBrush =
  gen_qbrush_types.QBrush(h: fcQPainter_brush(self.h), owned: false)

proc setBackgroundMode*(self: gen_qpainter_types.QPainter, mode: cint): void =
  fcQPainter_setBackgroundMode(self.h, cint(mode))

proc backgroundMode*(self: gen_qpainter_types.QPainter): cint =
  cint(fcQPainter_backgroundMode(self.h))

proc brushOrigin*(self: gen_qpainter_types.QPainter): gen_qpoint_types.QPoint =
  gen_qpoint_types.QPoint(h: fcQPainter_brushOrigin(self.h), owned: true)

proc brushOriginF*(self: gen_qpainter_types.QPainter): gen_qpoint_types.QPointF =
  gen_qpoint_types.QPointF(h: fcQPainter_brushOriginF(self.h), owned: true)

proc setBrushOrigin*(self: gen_qpainter_types.QPainter, x: cint, y: cint): void =
  fcQPainter_setBrushOriginIntInt(self.h, x, y)

proc setBrushOrigin*(self: gen_qpainter_types.QPainter, brushOrigin: gen_qpoint_types.QPoint): void =
  fcQPainter_setBrushOrigin_QPoint(self.h, brushOrigin.h)

proc setBrushOrigin*(self: gen_qpainter_types.QPainter, brushOrigin: gen_qpoint_types.QPointF): void =
  fcQPainter_setBrushOrigin_QPointF(self.h, brushOrigin.h)

proc setBackground*(self: gen_qpainter_types.QPainter, bg: gen_qbrush_types.QBrush): void =
  fcQPainter_setBackground(self.h, bg.h)

proc background*(self: gen_qpainter_types.QPainter): gen_qbrush_types.QBrush =
  gen_qbrush_types.QBrush(h: fcQPainter_background(self.h), owned: false)

proc opacity*(self: gen_qpainter_types.QPainter): float64 =
  fcQPainter_opacity(self.h)

proc setOpacity*(self: gen_qpainter_types.QPainter, opacity: float64): void =
  fcQPainter_setOpacity(self.h, opacity)

proc clipRegion*(self: gen_qpainter_types.QPainter): gen_qregion_types.QRegion =
  gen_qregion_types.QRegion(h: fcQPainter_clipRegion(self.h), owned: true)

proc clipPath*(self: gen_qpainter_types.QPainter): gen_qpainterpath_types.QPainterPath =
  gen_qpainterpath_types.QPainterPath(h: fcQPainter_clipPath(self.h), owned: true)

proc setClipRect*(self: gen_qpainter_types.QPainter, param1: gen_qrect_types.QRectF): void =
  fcQPainter_setClipRect_QRectF(self.h, param1.h)

proc setClipRect*(self: gen_qpainter_types.QPainter, param1: gen_qrect_types.QRect): void =
  fcQPainter_setClipRect_QRect(self.h, param1.h)

proc setClipRect*(self: gen_qpainter_types.QPainter, x: cint, y: cint, w: cint, h: cint): void =
  fcQPainter_setClipRectIntIntIntInt(self.h, x, y, w, h)

proc setClipRegion*(self: gen_qpainter_types.QPainter, param1: gen_qregion_types.QRegion): void =
  fcQPainter_setClipRegion_QRegion(self.h, param1.h)

proc setClipPath*(self: gen_qpainter_types.QPainter, path: gen_qpainterpath_types.QPainterPath): void =
  fcQPainter_setClipPathPath(self.h, path.h)

proc setClipping*(self: gen_qpainter_types.QPainter, enable: bool): void =
  fcQPainter_setClipping(self.h, enable)

proc hasClipping*(self: gen_qpainter_types.QPainter): bool =
  fcQPainter_hasClipping(self.h)

proc clipBoundingRect*(self: gen_qpainter_types.QPainter): gen_qrect_types.QRectF =
  gen_qrect_types.QRectF(h: fcQPainter_clipBoundingRect(self.h), owned: true)

proc save*(self: gen_qpainter_types.QPainter): void =
  fcQPainter_save(self.h)

proc restore*(self: gen_qpainter_types.QPainter): void =
  fcQPainter_restore(self.h)

proc setTransform*(self: gen_qpainter_types.QPainter, transform: gen_qtransform_types.QTransform): void =
  fcQPainter_setTransformTransform(self.h, transform.h)

proc transform*(self: gen_qpainter_types.QPainter): gen_qtransform_types.QTransform =
  gen_qtransform_types.QTransform(h: fcQPainter_transform(self.h), owned: false)

proc deviceTransform*(self: gen_qpainter_types.QPainter): gen_qtransform_types.QTransform =
  gen_qtransform_types.QTransform(h: fcQPainter_deviceTransform(self.h), owned: false)

proc resetTransform*(self: gen_qpainter_types.QPainter): void =
  fcQPainter_resetTransform(self.h)

proc setWorldTransform*(self: gen_qpainter_types.QPainter, matrix: gen_qtransform_types.QTransform): void =
  fcQPainter_setWorldTransformMatrix(self.h, matrix.h)

proc worldTransform*(self: gen_qpainter_types.QPainter): gen_qtransform_types.QTransform =
  gen_qtransform_types.QTransform(h: fcQPainter_worldTransform(self.h), owned: false)

proc combinedTransform*(self: gen_qpainter_types.QPainter): gen_qtransform_types.QTransform =
  gen_qtransform_types.QTransform(h: fcQPainter_combinedTransform(self.h), owned: true)

proc setWorldMatrixEnabled*(self: gen_qpainter_types.QPainter, enabled: bool): void =
  fcQPainter_setWorldMatrixEnabled(self.h, enabled)

proc worldMatrixEnabled*(self: gen_qpainter_types.QPainter): bool =
  fcQPainter_worldMatrixEnabled(self.h)

proc scale*(self: gen_qpainter_types.QPainter, sx: float64, sy: float64): void =
  fcQPainter_scale(self.h, sx, sy)

proc shear*(self: gen_qpainter_types.QPainter, sh: float64, sv: float64): void =
  fcQPainter_shear(self.h, sh, sv)

proc rotate*(self: gen_qpainter_types.QPainter, a: float64): void =
  fcQPainter_rotate(self.h, a)

proc translate*(self: gen_qpainter_types.QPainter, offset: gen_qpoint_types.QPointF): void =
  fcQPainter_translate_QPointF(self.h, offset.h)

proc translate*(self: gen_qpainter_types.QPainter, offset: gen_qpoint_types.QPoint): void =
  fcQPainter_translate_QPoint(self.h, offset.h)

proc translate*(self: gen_qpainter_types.QPainter, dx: float64, dy: float64): void =
  fcQPainter_translateQrealQreal(self.h, dx, dy)

proc window*(self: gen_qpainter_types.QPainter): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fcQPainter_window(self.h), owned: true)

proc setWindow*(self: gen_qpainter_types.QPainter, window: gen_qrect_types.QRect): void =
  fcQPainter_setWindowWindow(self.h, window.h)

proc setWindow*(self: gen_qpainter_types.QPainter, x: cint, y: cint, w: cint, h: cint): void =
  fcQPainter_setWindowXYWH(self.h, x, y, w, h)

proc viewport*(self: gen_qpainter_types.QPainter): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fcQPainter_viewport(self.h), owned: true)

proc setViewport*(self: gen_qpainter_types.QPainter, viewport: gen_qrect_types.QRect): void =
  fcQPainter_setViewportViewport(self.h, viewport.h)

proc setViewport*(self: gen_qpainter_types.QPainter, x: cint, y: cint, w: cint, h: cint): void =
  fcQPainter_setViewportXYWH(self.h, x, y, w, h)

proc setViewTransformEnabled*(self: gen_qpainter_types.QPainter, enable: bool): void =
  fcQPainter_setViewTransformEnabled(self.h, enable)

proc viewTransformEnabled*(self: gen_qpainter_types.QPainter): bool =
  fcQPainter_viewTransformEnabled(self.h)

proc strokePath*(self: gen_qpainter_types.QPainter, path: gen_qpainterpath_types.QPainterPath, pen: gen_qpen_types.QPen): void =
  fcQPainter_strokePath(self.h, path.h, pen.h)

proc fillPath*(self: gen_qpainter_types.QPainter, path: gen_qpainterpath_types.QPainterPath, brush: gen_qbrush_types.QBrush): void =
  fcQPainter_fillPath(self.h, path.h, brush.h)

proc drawPath*(self: gen_qpainter_types.QPainter, path: gen_qpainterpath_types.QPainterPath): void =
  fcQPainter_drawPath(self.h, path.h)

proc drawPoint*(self: gen_qpainter_types.QPainter, pt: gen_qpoint_types.QPointF): void =
  fcQPainter_drawPointPt(self.h, pt.h)

proc drawPoint*(self: gen_qpainter_types.QPainter, p: gen_qpoint_types.QPoint): void =
  fcQPainter_drawPointP(self.h, p.h)

proc drawPoint*(self: gen_qpainter_types.QPainter, x: cint, y: cint): void =
  fcQPainter_drawPointXY(self.h, x, y)

proc drawPoints*(self: gen_qpainter_types.QPainter, points: gen_qpoint_types.QPointF, pointCount: cint): void =
  fcQPainter_drawPoints_QPointFInt(self.h, points.h, pointCount)

proc drawPoints*(self: gen_qpainter_types.QPainter, points: gen_qpoint_types.QPoint, pointCount: cint): void =
  fcQPainter_drawPoints_QPointInt(self.h, points.h, pointCount)

proc drawLine*(self: gen_qpainter_types.QPainter, line: gen_qline_types.QLineF): void =
  fcQPainter_drawLine_QLineF(self.h, line.h)

proc drawLine*(self: gen_qpainter_types.QPainter, line: gen_qline_types.QLine): void =
  fcQPainter_drawLine_QLine(self.h, line.h)

proc drawLine*(self: gen_qpainter_types.QPainter, x1: cint, y1: cint, x2: cint, y2: cint): void =
  fcQPainter_drawLineIntIntIntInt(self.h, x1, y1, x2, y2)

proc drawLine*(self: gen_qpainter_types.QPainter, p1: gen_qpoint_types.QPoint, p2: gen_qpoint_types.QPoint): void =
  fcQPainter_drawLine_QPoint_QPoint(self.h, p1.h, p2.h)

proc drawLine*(self: gen_qpainter_types.QPainter, p1: gen_qpoint_types.QPointF, p2: gen_qpoint_types.QPointF): void =
  fcQPainter_drawLine_QPointF_QPointF(self.h, p1.h, p2.h)

proc drawLines*(self: gen_qpainter_types.QPainter, lines: gen_qline_types.QLineF, lineCount: cint): void =
  fcQPainter_drawLines_QLineFInt(self.h, lines.h, lineCount)

proc drawLines*(self: gen_qpainter_types.QPainter, lines: openArray[gen_qline_types.QLineF]): void =
  var lines_CArray = newSeq[pointer](len(lines))
  for i in 0..<len(lines):
    lines_CArray[i] = lines[i].h

  fcQPainter_drawLines_QListOfQLineF(self.h, struct_seaqt_array(len: csize_t(len(lines)), data: if len(lines) == 0: nil else: addr(lines_CArray[0])))

proc drawLines*(self: gen_qpainter_types.QPainter, pointPairs: gen_qpoint_types.QPointF, lineCount: cint): void =
  fcQPainter_drawLines_QPointFInt(self.h, pointPairs.h, lineCount)

proc drawLines*(self: gen_qpainter_types.QPainter, pointPairs: openArray[gen_qpoint_types.QPointF]): void =
  var pointPairs_CArray = newSeq[pointer](len(pointPairs))
  for i in 0..<len(pointPairs):
    pointPairs_CArray[i] = pointPairs[i].h

  fcQPainter_drawLines_QListOfQPointF(self.h, struct_seaqt_array(len: csize_t(len(pointPairs)), data: if len(pointPairs) == 0: nil else: addr(pointPairs_CArray[0])))

proc drawLines*(self: gen_qpainter_types.QPainter, lines: gen_qline_types.QLine, lineCount: cint): void =
  fcQPainter_drawLines_QLineInt(self.h, lines.h, lineCount)

proc drawLines*(self: gen_qpainter_types.QPainter, lines: openArray[gen_qline_types.QLine]): void =
  var lines_CArray = newSeq[pointer](len(lines))
  for i in 0..<len(lines):
    lines_CArray[i] = lines[i].h

  fcQPainter_drawLines_QListOfQLine(self.h, struct_seaqt_array(len: csize_t(len(lines)), data: if len(lines) == 0: nil else: addr(lines_CArray[0])))

proc drawLines*(self: gen_qpainter_types.QPainter, pointPairs: gen_qpoint_types.QPoint, lineCount: cint): void =
  fcQPainter_drawLines_QPointInt(self.h, pointPairs.h, lineCount)

proc drawLines*(self: gen_qpainter_types.QPainter, pointPairs: openArray[gen_qpoint_types.QPoint]): void =
  var pointPairs_CArray = newSeq[pointer](len(pointPairs))
  for i in 0..<len(pointPairs):
    pointPairs_CArray[i] = pointPairs[i].h

  fcQPainter_drawLines_QListOfQPoint(self.h, struct_seaqt_array(len: csize_t(len(pointPairs)), data: if len(pointPairs) == 0: nil else: addr(pointPairs_CArray[0])))

proc drawRect*(self: gen_qpainter_types.QPainter, rect: gen_qrect_types.QRectF): void =
  fcQPainter_drawRect_QRectF(self.h, rect.h)

proc drawRect*(self: gen_qpainter_types.QPainter, x1: cint, y1: cint, w: cint, h: cint): void =
  fcQPainter_drawRectIntIntIntInt(self.h, x1, y1, w, h)

proc drawRect*(self: gen_qpainter_types.QPainter, rect: gen_qrect_types.QRect): void =
  fcQPainter_drawRect_QRect(self.h, rect.h)

proc drawRects*(self: gen_qpainter_types.QPainter, rects: gen_qrect_types.QRectF, rectCount: cint): void =
  fcQPainter_drawRects_QRectFInt(self.h, rects.h, rectCount)

proc drawRects*(self: gen_qpainter_types.QPainter, rectangles: openArray[gen_qrect_types.QRectF]): void =
  var rectangles_CArray = newSeq[pointer](len(rectangles))
  for i in 0..<len(rectangles):
    rectangles_CArray[i] = rectangles[i].h

  fcQPainter_drawRects_QListOfQRectF(self.h, struct_seaqt_array(len: csize_t(len(rectangles)), data: if len(rectangles) == 0: nil else: addr(rectangles_CArray[0])))

proc drawRects*(self: gen_qpainter_types.QPainter, rects: gen_qrect_types.QRect, rectCount: cint): void =
  fcQPainter_drawRects_QRectInt(self.h, rects.h, rectCount)

proc drawRects*(self: gen_qpainter_types.QPainter, rectangles: openArray[gen_qrect_types.QRect]): void =
  var rectangles_CArray = newSeq[pointer](len(rectangles))
  for i in 0..<len(rectangles):
    rectangles_CArray[i] = rectangles[i].h

  fcQPainter_drawRects_QListOfQRect(self.h, struct_seaqt_array(len: csize_t(len(rectangles)), data: if len(rectangles) == 0: nil else: addr(rectangles_CArray[0])))

proc drawEllipse*(self: gen_qpainter_types.QPainter, r: gen_qrect_types.QRectF): void =
  fcQPainter_drawEllipse_QRectF(self.h, r.h)

proc drawEllipse*(self: gen_qpainter_types.QPainter, r: gen_qrect_types.QRect): void =
  fcQPainter_drawEllipse_QRect(self.h, r.h)

proc drawEllipse*(self: gen_qpainter_types.QPainter, x: cint, y: cint, w: cint, h: cint): void =
  fcQPainter_drawEllipseIntIntIntInt(self.h, x, y, w, h)

proc drawEllipse*(self: gen_qpainter_types.QPainter, center: gen_qpoint_types.QPointF, rx: float64, ry: float64): void =
  fcQPainter_drawEllipse_QPointFQrealQreal(self.h, center.h, rx, ry)

proc drawEllipse*(self: gen_qpainter_types.QPainter, center: gen_qpoint_types.QPoint, rx: cint, ry: cint): void =
  fcQPainter_drawEllipse_QPointIntInt(self.h, center.h, rx, ry)

proc drawPolyline*(self: gen_qpainter_types.QPainter, points: gen_qpoint_types.QPointF, pointCount: cint): void =
  fcQPainter_drawPolyline_QPointFInt(self.h, points.h, pointCount)

proc drawPolyline*(self: gen_qpainter_types.QPainter, points: gen_qpoint_types.QPoint, pointCount: cint): void =
  fcQPainter_drawPolyline_QPointInt(self.h, points.h, pointCount)

proc drawPolygon*(self: gen_qpainter_types.QPainter, points: gen_qpoint_types.QPointF, pointCount: cint): void =
  fcQPainter_drawPolygon_QPointFInt(self.h, points.h, pointCount)

proc drawPolygon*(self: gen_qpainter_types.QPainter, points: gen_qpoint_types.QPoint, pointCount: cint): void =
  fcQPainter_drawPolygon_QPointInt(self.h, points.h, pointCount)

proc drawConvexPolygon*(self: gen_qpainter_types.QPainter, points: gen_qpoint_types.QPointF, pointCount: cint): void =
  fcQPainter_drawConvexPolygon_QPointFInt(self.h, points.h, pointCount)

proc drawConvexPolygon*(self: gen_qpainter_types.QPainter, points: gen_qpoint_types.QPoint, pointCount: cint): void =
  fcQPainter_drawConvexPolygon_QPointInt(self.h, points.h, pointCount)

proc drawArc*(self: gen_qpainter_types.QPainter, rect: gen_qrect_types.QRectF, a: cint, alen: cint): void =
  fcQPainter_drawArc_QRectFIntInt(self.h, rect.h, a, alen)

proc drawArc*(self: gen_qpainter_types.QPainter, param1: gen_qrect_types.QRect, a: cint, alen: cint): void =
  fcQPainter_drawArc_QRectIntInt(self.h, param1.h, a, alen)

proc drawArc*(self: gen_qpainter_types.QPainter, x: cint, y: cint, w: cint, h: cint, a: cint, alen: cint): void =
  fcQPainter_drawArcIntIntIntIntIntInt(self.h, x, y, w, h, a, alen)

proc drawPie*(self: gen_qpainter_types.QPainter, rect: gen_qrect_types.QRectF, a: cint, alen: cint): void =
  fcQPainter_drawPie_QRectFIntInt(self.h, rect.h, a, alen)

proc drawPie*(self: gen_qpainter_types.QPainter, x: cint, y: cint, w: cint, h: cint, a: cint, alen: cint): void =
  fcQPainter_drawPieIntIntIntIntIntInt(self.h, x, y, w, h, a, alen)

proc drawPie*(self: gen_qpainter_types.QPainter, param1: gen_qrect_types.QRect, a: cint, alen: cint): void =
  fcQPainter_drawPie_QRectIntInt(self.h, param1.h, a, alen)

proc drawChord*(self: gen_qpainter_types.QPainter, rect: gen_qrect_types.QRectF, a: cint, alen: cint): void =
  fcQPainter_drawChord_QRectFIntInt(self.h, rect.h, a, alen)

proc drawChord*(self: gen_qpainter_types.QPainter, x: cint, y: cint, w: cint, h: cint, a: cint, alen: cint): void =
  fcQPainter_drawChordIntIntIntIntIntInt(self.h, x, y, w, h, a, alen)

proc drawChord*(self: gen_qpainter_types.QPainter, param1: gen_qrect_types.QRect, a: cint, alen: cint): void =
  fcQPainter_drawChord_QRectIntInt(self.h, param1.h, a, alen)

proc drawRoundedRect*(self: gen_qpainter_types.QPainter, rect: gen_qrect_types.QRectF, xRadius: float64, yRadius: float64): void =
  fcQPainter_drawRoundedRect_QRectFQrealQreal(self.h, rect.h, xRadius, yRadius)

proc drawRoundedRect*(self: gen_qpainter_types.QPainter, x: cint, y: cint, w: cint, h: cint, xRadius: float64, yRadius: float64): void =
  fcQPainter_drawRoundedRectIntIntIntIntQrealQreal(self.h, x, y, w, h, xRadius, yRadius)

proc drawRoundedRect*(self: gen_qpainter_types.QPainter, rect: gen_qrect_types.QRect, xRadius: float64, yRadius: float64): void =
  fcQPainter_drawRoundedRect_QRectQrealQreal(self.h, rect.h, xRadius, yRadius)

proc drawTiledPixmap*(self: gen_qpainter_types.QPainter, rect: gen_qrect_types.QRectF, pm: gen_qpixmap_types.QPixmap): void =
  fcQPainter_drawTiledPixmap_QRectF_QPixmap(self.h, rect.h, pm.h)

proc drawTiledPixmap*(self: gen_qpainter_types.QPainter, x: cint, y: cint, w: cint, h: cint, param5: gen_qpixmap_types.QPixmap): void =
  fcQPainter_drawTiledPixmapIntIntIntInt_QPixmap(self.h, x, y, w, h, param5.h)

proc drawTiledPixmap*(self: gen_qpainter_types.QPainter, param1: gen_qrect_types.QRect, param2: gen_qpixmap_types.QPixmap): void =
  fcQPainter_drawTiledPixmap_QRect_QPixmap(self.h, param1.h, param2.h)

proc drawPicture*(self: gen_qpainter_types.QPainter, p: gen_qpoint_types.QPointF, picture: gen_qpicture_types.QPicture): void =
  fcQPainter_drawPicture_QPointF_QPicture(self.h, p.h, picture.h)

proc drawPicture*(self: gen_qpainter_types.QPainter, x: cint, y: cint, picture: gen_qpicture_types.QPicture): void =
  fcQPainter_drawPictureIntInt_QPicture(self.h, x, y, picture.h)

proc drawPicture*(self: gen_qpainter_types.QPainter, p: gen_qpoint_types.QPoint, picture: gen_qpicture_types.QPicture): void =
  fcQPainter_drawPicture_QPoint_QPicture(self.h, p.h, picture.h)

proc drawPixmap*(self: gen_qpainter_types.QPainter, targetRect: gen_qrect_types.QRectF, pixmap: gen_qpixmap_types.QPixmap, sourceRect: gen_qrect_types.QRectF): void =
  fcQPainter_drawPixmap_QRectF_QPixmap_QRectF(self.h, targetRect.h, pixmap.h, sourceRect.h)

proc drawPixmap*(self: gen_qpainter_types.QPainter, targetRect: gen_qrect_types.QRect, pixmap: gen_qpixmap_types.QPixmap, sourceRect: gen_qrect_types.QRect): void =
  fcQPainter_drawPixmap_QRect_QPixmap_QRect(self.h, targetRect.h, pixmap.h, sourceRect.h)

proc drawPixmap*(self: gen_qpainter_types.QPainter, x: cint, y: cint, w: cint, h: cint, pm: gen_qpixmap_types.QPixmap, sx: cint, sy: cint, sw: cint, sh: cint): void =
  fcQPainter_drawPixmapIntIntIntInt_QPixmapIntIntIntInt(self.h, x, y, w, h, pm.h, sx, sy, sw, sh)

proc drawPixmap*(self: gen_qpainter_types.QPainter, x: cint, y: cint, pm: gen_qpixmap_types.QPixmap, sx: cint, sy: cint, sw: cint, sh: cint): void =
  fcQPainter_drawPixmapIntInt_QPixmapIntIntIntInt(self.h, x, y, pm.h, sx, sy, sw, sh)

proc drawPixmap*(self: gen_qpainter_types.QPainter, p: gen_qpoint_types.QPointF, pm: gen_qpixmap_types.QPixmap, sr: gen_qrect_types.QRectF): void =
  fcQPainter_drawPixmap_QPointF_QPixmap_QRectF(self.h, p.h, pm.h, sr.h)

proc drawPixmap*(self: gen_qpainter_types.QPainter, p: gen_qpoint_types.QPoint, pm: gen_qpixmap_types.QPixmap, sr: gen_qrect_types.QRect): void =
  fcQPainter_drawPixmap_QPoint_QPixmap_QRect(self.h, p.h, pm.h, sr.h)

proc drawPixmap*(self: gen_qpainter_types.QPainter, p: gen_qpoint_types.QPointF, pm: gen_qpixmap_types.QPixmap): void =
  fcQPainter_drawPixmap_QPointF_QPixmap(self.h, p.h, pm.h)

proc drawPixmap*(self: gen_qpainter_types.QPainter, p: gen_qpoint_types.QPoint, pm: gen_qpixmap_types.QPixmap): void =
  fcQPainter_drawPixmap_QPoint_QPixmap(self.h, p.h, pm.h)

proc drawPixmap*(self: gen_qpainter_types.QPainter, x: cint, y: cint, pm: gen_qpixmap_types.QPixmap): void =
  fcQPainter_drawPixmapIntInt_QPixmap(self.h, x, y, pm.h)

proc drawPixmap*(self: gen_qpainter_types.QPainter, r: gen_qrect_types.QRect, pm: gen_qpixmap_types.QPixmap): void =
  fcQPainter_drawPixmap_QRect_QPixmap(self.h, r.h, pm.h)

proc drawPixmap*(self: gen_qpainter_types.QPainter, x: cint, y: cint, w: cint, h: cint, pm: gen_qpixmap_types.QPixmap): void =
  fcQPainter_drawPixmapIntIntIntInt_QPixmap(self.h, x, y, w, h, pm.h)

proc drawPixmapFragments*(self: gen_qpainter_types.QPainter, fragments: gen_qpainter_types.QPainterPixmapFragment, fragmentCount: cint, pixmap: gen_qpixmap_types.QPixmap): void =
  fcQPainter_drawPixmapFragmentsFragmentsFragmentCountPixmap(self.h, fragments.h, fragmentCount, pixmap.h)

proc drawImage*(self: gen_qpainter_types.QPainter, targetRect: gen_qrect_types.QRectF, image: gen_qimage_types.QImage, sourceRect: gen_qrect_types.QRectF): void =
  fcQPainter_drawImage_QRectF_QImage_QRectF(self.h, targetRect.h, image.h, sourceRect.h)

proc drawImage*(self: gen_qpainter_types.QPainter, targetRect: gen_qrect_types.QRect, image: gen_qimage_types.QImage, sourceRect: gen_qrect_types.QRect): void =
  fcQPainter_drawImage_QRect_QImage_QRect(self.h, targetRect.h, image.h, sourceRect.h)

proc drawImage*(self: gen_qpainter_types.QPainter, p: gen_qpoint_types.QPointF, image: gen_qimage_types.QImage, sr: gen_qrect_types.QRectF): void =
  fcQPainter_drawImage_QPointF_QImage_QRectF(self.h, p.h, image.h, sr.h)

proc drawImage*(self: gen_qpainter_types.QPainter, p: gen_qpoint_types.QPoint, image: gen_qimage_types.QImage, sr: gen_qrect_types.QRect): void =
  fcQPainter_drawImage_QPoint_QImage_QRect(self.h, p.h, image.h, sr.h)

proc drawImage*(self: gen_qpainter_types.QPainter, r: gen_qrect_types.QRectF, image: gen_qimage_types.QImage): void =
  fcQPainter_drawImage_QRectF_QImage(self.h, r.h, image.h)

proc drawImage*(self: gen_qpainter_types.QPainter, r: gen_qrect_types.QRect, image: gen_qimage_types.QImage): void =
  fcQPainter_drawImage_QRect_QImage(self.h, r.h, image.h)

proc drawImage*(self: gen_qpainter_types.QPainter, p: gen_qpoint_types.QPointF, image: gen_qimage_types.QImage): void =
  fcQPainter_drawImage_QPointF_QImage(self.h, p.h, image.h)

proc drawImage*(self: gen_qpainter_types.QPainter, p: gen_qpoint_types.QPoint, image: gen_qimage_types.QImage): void =
  fcQPainter_drawImage_QPoint_QImage(self.h, p.h, image.h)

proc drawImage*(self: gen_qpainter_types.QPainter, x: cint, y: cint, image: gen_qimage_types.QImage): void =
  fcQPainter_drawImageIntInt_QImage(self.h, x, y, image.h)

proc setLayoutDirection*(self: gen_qpainter_types.QPainter, direction: cint): void =
  fcQPainter_setLayoutDirection(self.h, cint(direction))

proc layoutDirection*(self: gen_qpainter_types.QPainter): cint =
  cint(fcQPainter_layoutDirection(self.h))

proc drawGlyphRun*(self: gen_qpainter_types.QPainter, position: gen_qpoint_types.QPointF, glyphRun: gen_qglyphrun_types.QGlyphRun): void =
  fcQPainter_drawGlyphRun(self.h, position.h, glyphRun.h)

proc drawStaticText*(self: gen_qpainter_types.QPainter, topLeftPosition: gen_qpoint_types.QPointF, staticText: gen_qstatictext_types.QStaticText): void =
  fcQPainter_drawStaticText_QPointF_QStaticText(self.h, topLeftPosition.h, staticText.h)

proc drawStaticText*(self: gen_qpainter_types.QPainter, topLeftPosition: gen_qpoint_types.QPoint, staticText: gen_qstatictext_types.QStaticText): void =
  fcQPainter_drawStaticText_QPoint_QStaticText(self.h, topLeftPosition.h, staticText.h)

proc drawStaticText*(self: gen_qpainter_types.QPainter, left: cint, top: cint, staticText: gen_qstatictext_types.QStaticText): void =
  fcQPainter_drawStaticTextIntInt_QStaticText(self.h, left, top, staticText.h)

proc drawText*(self: gen_qpainter_types.QPainter, p: gen_qpoint_types.QPointF, s: openArray[char]): void =
  fcQPainter_drawText_QPointF_QString(self.h, p.h, struct_seaqt_string(data: if len(s) > 0: addr s[0] else: nil, len: csize_t(len(s))))

proc drawText*(self: gen_qpainter_types.QPainter, p: gen_qpoint_types.QPoint, s: openArray[char]): void =
  fcQPainter_drawText_QPoint_QString(self.h, p.h, struct_seaqt_string(data: if len(s) > 0: addr s[0] else: nil, len: csize_t(len(s))))

proc drawText*(self: gen_qpainter_types.QPainter, x: cint, y: cint, s: openArray[char]): void =
  fcQPainter_drawTextIntInt_QString(self.h, x, y, struct_seaqt_string(data: if len(s) > 0: addr s[0] else: nil, len: csize_t(len(s))))

proc drawText*(self: gen_qpainter_types.QPainter, p: gen_qpoint_types.QPointF, str: openArray[char], tf: cint, justificationPadding: cint): void =
  fcQPainter_drawText_QPointF_QStringIntInt(self.h, p.h, struct_seaqt_string(data: if len(str) > 0: addr str[0] else: nil, len: csize_t(len(str))), tf, justificationPadding)

proc drawText*(self: gen_qpainter_types.QPainter, r: gen_qrect_types.QRectF, flags: cint, text: openArray[char]): void =
  fcQPainter_drawText_QRectFInt_QString(self.h, r.h, flags, struct_seaqt_string(data: if len(text) > 0: addr text[0] else: nil, len: csize_t(len(text))))

proc drawText*(self: gen_qpainter_types.QPainter, r: gen_qrect_types.QRect, flags: cint, text: openArray[char]): void =
  fcQPainter_drawText_QRectInt_QString(self.h, r.h, flags, struct_seaqt_string(data: if len(text) > 0: addr text[0] else: nil, len: csize_t(len(text))))

proc drawText*(self: gen_qpainter_types.QPainter, x: cint, y: cint, w: cint, h: cint, flags: cint, text: openArray[char]): void =
  fcQPainter_drawTextIntIntIntIntInt_QString(self.h, x, y, w, h, flags, struct_seaqt_string(data: if len(text) > 0: addr text[0] else: nil, len: csize_t(len(text))))

proc drawText*(self: gen_qpainter_types.QPainter, r: gen_qrect_types.QRectF, text: openArray[char]): void =
  fcQPainter_drawText_QRectF_QString(self.h, r.h, struct_seaqt_string(data: if len(text) > 0: addr text[0] else: nil, len: csize_t(len(text))))

proc boundingRect*(self: gen_qpainter_types.QPainter, rect: gen_qrect_types.QRectF, flags: cint, text: openArray[char]): gen_qrect_types.QRectF =
  gen_qrect_types.QRectF(h: fcQPainter_boundingRect_QRectFInt_QString(self.h, rect.h, flags, struct_seaqt_string(data: if len(text) > 0: addr text[0] else: nil, len: csize_t(len(text)))), owned: true)

proc boundingRect*(self: gen_qpainter_types.QPainter, rect: gen_qrect_types.QRect, flags: cint, text: openArray[char]): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fcQPainter_boundingRect_QRectInt_QString(self.h, rect.h, flags, struct_seaqt_string(data: if len(text) > 0: addr text[0] else: nil, len: csize_t(len(text)))), owned: true)

proc boundingRect*(self: gen_qpainter_types.QPainter, x: cint, y: cint, w: cint, h: cint, flags: cint, text: openArray[char]): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fcQPainter_boundingRectIntIntIntIntInt_QString(self.h, x, y, w, h, flags, struct_seaqt_string(data: if len(text) > 0: addr text[0] else: nil, len: csize_t(len(text)))), owned: true)

proc boundingRect*(self: gen_qpainter_types.QPainter, rect: gen_qrect_types.QRectF, text: openArray[char]): gen_qrect_types.QRectF =
  gen_qrect_types.QRectF(h: fcQPainter_boundingRect_QRectF_QString(self.h, rect.h, struct_seaqt_string(data: if len(text) > 0: addr text[0] else: nil, len: csize_t(len(text)))), owned: true)

proc drawTextItem*(self: gen_qpainter_types.QPainter, p: gen_qpoint_types.QPointF, ti: gen_qpaintengine_types.QTextItem): void =
  fcQPainter_drawTextItem_QPointF_QTextItem(self.h, p.h, ti.h)

proc drawTextItem*(self: gen_qpainter_types.QPainter, x: cint, y: cint, ti: gen_qpaintengine_types.QTextItem): void =
  fcQPainter_drawTextItemIntInt_QTextItem(self.h, x, y, ti.h)

proc drawTextItem*(self: gen_qpainter_types.QPainter, p: gen_qpoint_types.QPoint, ti: gen_qpaintengine_types.QTextItem): void =
  fcQPainter_drawTextItem_QPoint_QTextItem(self.h, p.h, ti.h)

proc fillRect*(self: gen_qpainter_types.QPainter, param1: gen_qrect_types.QRectF, param2: gen_qbrush_types.QBrush): void =
  fcQPainter_fillRect_QRectF_QBrush(self.h, param1.h, param2.h)

proc fillRect*(self: gen_qpainter_types.QPainter, x: cint, y: cint, w: cint, h: cint, param5: gen_qbrush_types.QBrush): void =
  fcQPainter_fillRectIntIntIntInt_QBrush(self.h, x, y, w, h, param5.h)

proc fillRect*(self: gen_qpainter_types.QPainter, param1: gen_qrect_types.QRect, param2: gen_qbrush_types.QBrush): void =
  fcQPainter_fillRect_QRect_QBrush(self.h, param1.h, param2.h)

proc fillRect*(self: gen_qpainter_types.QPainter, param1: gen_qrect_types.QRectF, color: gen_qcolor_types.QColor): void =
  fcQPainter_fillRect_QRectF_QColor(self.h, param1.h, color.h)

proc fillRect*(self: gen_qpainter_types.QPainter, x: cint, y: cint, w: cint, h: cint, color: gen_qcolor_types.QColor): void =
  fcQPainter_fillRectIntIntIntInt_QColor(self.h, x, y, w, h, color.h)

proc fillRect*(self: gen_qpainter_types.QPainter, param1: gen_qrect_types.QRect, color: gen_qcolor_types.QColor): void =
  fcQPainter_fillRect_QRect_QColor(self.h, param1.h, color.h)

proc fillRect*(self: gen_qpainter_types.QPainter, x: cint, y: cint, w: cint, h: cint, c: cint): void =
  fcQPainter_fillRectIntIntIntInt_Qt_GlobalColor(self.h, x, y, w, h, cint(c))

proc fillRect*(self: gen_qpainter_types.QPainter, r: gen_qrect_types.QRect, c: cint): void =
  fcQPainter_fillRect_QRect_Qt_GlobalColor(self.h, r.h, cint(c))

proc fillRect*(self: gen_qpainter_types.QPainter, r: gen_qrect_types.QRectF, c: cint): void =
  fcQPainter_fillRect_QRectF_Qt_GlobalColor(self.h, r.h, cint(c))

proc fillRect2*(self: gen_qpainter_types.QPainter, x: cint, y: cint, w: cint, h: cint, style: cint): void =
  fcQPainter_fillRectIntIntIntInt_Qt_BrushStyle(self.h, x, y, w, h, cint(style))

proc fillRect2*(self: gen_qpainter_types.QPainter, r: gen_qrect_types.QRect, style: cint): void =
  fcQPainter_fillRect_QRect_Qt_BrushStyle(self.h, r.h, cint(style))

proc fillRect2*(self: gen_qpainter_types.QPainter, r: gen_qrect_types.QRectF, style: cint): void =
  fcQPainter_fillRect_QRectF_Qt_BrushStyle(self.h, r.h, cint(style))

proc fillRect3*(self: gen_qpainter_types.QPainter, x: cint, y: cint, w: cint, h: cint, preset: cint): void =
  fcQPainter_fillRectIntIntIntInt_QGradient_Preset(self.h, x, y, w, h, cint(preset))

proc fillRect3*(self: gen_qpainter_types.QPainter, r: gen_qrect_types.QRect, preset: cint): void =
  fcQPainter_fillRect_QRect_QGradient_Preset(self.h, r.h, cint(preset))

proc fillRect3*(self: gen_qpainter_types.QPainter, r: gen_qrect_types.QRectF, preset: cint): void =
  fcQPainter_fillRect_QRectF_QGradient_Preset(self.h, r.h, cint(preset))

proc eraseRect*(self: gen_qpainter_types.QPainter, param1: gen_qrect_types.QRectF): void =
  fcQPainter_eraseRect_QRectF(self.h, param1.h)

proc eraseRect*(self: gen_qpainter_types.QPainter, x: cint, y: cint, w: cint, h: cint): void =
  fcQPainter_eraseRectIntIntIntInt(self.h, x, y, w, h)

proc eraseRect*(self: gen_qpainter_types.QPainter, param1: gen_qrect_types.QRect): void =
  fcQPainter_eraseRect_QRect(self.h, param1.h)

proc setRenderHint*(self: gen_qpainter_types.QPainter, hint: cint): void =
  fcQPainter_setRenderHintHint(self.h, cint(hint))

proc setRenderHints*(self: gen_qpainter_types.QPainter, hints: cint): void =
  fcQPainter_setRenderHintsHints(self.h, cint(hints))

proc renderHints*(self: gen_qpainter_types.QPainter): cint =
  cint(fcQPainter_renderHints(self.h))

proc testRenderHint*(self: gen_qpainter_types.QPainter, hint: cint): bool =
  fcQPainter_testRenderHint(self.h, cint(hint))

proc paintEngine*(self: gen_qpainter_types.QPainter): gen_qpaintengine_types.QPaintEngine =
  gen_qpaintengine_types.QPaintEngine(h: fcQPainter_paintEngine(self.h), owned: false)

proc beginNativePainting*(self: gen_qpainter_types.QPainter): void =
  fcQPainter_beginNativePainting(self.h)

proc endNativePainting*(self: gen_qpainter_types.QPainter): void =
  fcQPainter_endNativePainting(self.h)

proc setClipRect*(self: gen_qpainter_types.QPainter, param1: gen_qrect_types.QRectF, op: cint): void =
  fcQPainter_setClipRect_QRectF_Qt_ClipOperation(self.h, param1.h, cint(op))

proc setClipRect*(self: gen_qpainter_types.QPainter, param1: gen_qrect_types.QRect, op: cint): void =
  fcQPainter_setClipRect_QRect_Qt_ClipOperation(self.h, param1.h, cint(op))

proc setClipRect*(self: gen_qpainter_types.QPainter, x: cint, y: cint, w: cint, h: cint, op: cint): void =
  fcQPainter_setClipRectIntIntIntInt_Qt_ClipOperation(self.h, x, y, w, h, cint(op))

proc setClipRegion*(self: gen_qpainter_types.QPainter, param1: gen_qregion_types.QRegion, op: cint): void =
  fcQPainter_setClipRegion_QRegion_Qt_ClipOperation(self.h, param1.h, cint(op))

proc setClipPath*(self: gen_qpainter_types.QPainter, path: gen_qpainterpath_types.QPainterPath, op: cint): void =
  fcQPainter_setClipPathPathOp(self.h, path.h, cint(op))

proc setTransform*(self: gen_qpainter_types.QPainter, transform: gen_qtransform_types.QTransform, combine: bool): void =
  fcQPainter_setTransformTransformCombine(self.h, transform.h, combine)

proc setWorldTransform*(self: gen_qpainter_types.QPainter, matrix: gen_qtransform_types.QTransform, combine: bool): void =
  fcQPainter_setWorldTransformMatrixCombine(self.h, matrix.h, combine)

proc drawPolygon*(self: gen_qpainter_types.QPainter, points: gen_qpoint_types.QPointF, pointCount: cint, fillRule: cint): void =
  fcQPainter_drawPolygon_QPointFInt_Qt_FillRule(self.h, points.h, pointCount, cint(fillRule))

proc drawPolygon*(self: gen_qpainter_types.QPainter, points: gen_qpoint_types.QPoint, pointCount: cint, fillRule: cint): void =
  fcQPainter_drawPolygon_QPointInt_Qt_FillRule(self.h, points.h, pointCount, cint(fillRule))

proc drawRoundedRect*(self: gen_qpainter_types.QPainter, rect: gen_qrect_types.QRectF, xRadius: float64, yRadius: float64, mode: cint): void =
  fcQPainter_drawRoundedRect_QRectFQrealQreal_Qt_SizeMode(self.h, rect.h, xRadius, yRadius, cint(mode))

proc drawRoundedRect*(self: gen_qpainter_types.QPainter, x: cint, y: cint, w: cint, h: cint, xRadius: float64, yRadius: float64, mode: cint): void =
  fcQPainter_drawRoundedRectIntIntIntIntQrealQreal_Qt_SizeMode(self.h, x, y, w, h, xRadius, yRadius, cint(mode))

proc drawRoundedRect*(self: gen_qpainter_types.QPainter, rect: gen_qrect_types.QRect, xRadius: float64, yRadius: float64, mode: cint): void =
  fcQPainter_drawRoundedRect_QRectQrealQreal_Qt_SizeMode(self.h, rect.h, xRadius, yRadius, cint(mode))

proc drawTiledPixmap*(self: gen_qpainter_types.QPainter, rect: gen_qrect_types.QRectF, pm: gen_qpixmap_types.QPixmap, offset: gen_qpoint_types.QPointF): void =
  fcQPainter_drawTiledPixmap_QRectF_QPixmap_QPointF(self.h, rect.h, pm.h, offset.h)

proc drawTiledPixmap*(self: gen_qpainter_types.QPainter, x: cint, y: cint, w: cint, h: cint, param5: gen_qpixmap_types.QPixmap, sx: cint): void =
  fcQPainter_drawTiledPixmapIntIntIntInt_QPixmapInt(self.h, x, y, w, h, param5.h, sx)

proc drawTiledPixmap*(self: gen_qpainter_types.QPainter, x: cint, y: cint, w: cint, h: cint, param5: gen_qpixmap_types.QPixmap, sx: cint, sy: cint): void =
  fcQPainter_drawTiledPixmapIntIntIntInt_QPixmapIntInt(self.h, x, y, w, h, param5.h, sx, sy)

proc drawTiledPixmap*(self: gen_qpainter_types.QPainter, param1: gen_qrect_types.QRect, param2: gen_qpixmap_types.QPixmap, param3: gen_qpoint_types.QPoint): void =
  fcQPainter_drawTiledPixmap_QRect_QPixmap_QPoint(self.h, param1.h, param2.h, param3.h)

proc drawPixmapFragments*(self: gen_qpainter_types.QPainter, fragments: gen_qpainter_types.QPainterPixmapFragment, fragmentCount: cint, pixmap: gen_qpixmap_types.QPixmap, hints: cint): void =
  fcQPainter_drawPixmapFragmentsFragmentsFragmentCountPixmapHints(self.h, fragments.h, fragmentCount, pixmap.h, cint(hints))

proc drawImage*(self: gen_qpainter_types.QPainter, targetRect: gen_qrect_types.QRectF, image: gen_qimage_types.QImage, sourceRect: gen_qrect_types.QRectF, flags: cint): void =
  fcQPainter_drawImage_QRectF_QImage_QRectF_Qt_ImageConversionFlags(self.h, targetRect.h, image.h, sourceRect.h, cint(flags))

proc drawImage*(self: gen_qpainter_types.QPainter, targetRect: gen_qrect_types.QRect, image: gen_qimage_types.QImage, sourceRect: gen_qrect_types.QRect, flags: cint): void =
  fcQPainter_drawImage_QRect_QImage_QRect_Qt_ImageConversionFlags(self.h, targetRect.h, image.h, sourceRect.h, cint(flags))

proc drawImage*(self: gen_qpainter_types.QPainter, p: gen_qpoint_types.QPointF, image: gen_qimage_types.QImage, sr: gen_qrect_types.QRectF, flags: cint): void =
  fcQPainter_drawImage_QPointF_QImage_QRectF_Qt_ImageConversionFlags(self.h, p.h, image.h, sr.h, cint(flags))

proc drawImage*(self: gen_qpainter_types.QPainter, p: gen_qpoint_types.QPoint, image: gen_qimage_types.QImage, sr: gen_qrect_types.QRect, flags: cint): void =
  fcQPainter_drawImage_QPoint_QImage_QRect_Qt_ImageConversionFlags(self.h, p.h, image.h, sr.h, cint(flags))

proc drawImage*(self: gen_qpainter_types.QPainter, x: cint, y: cint, image: gen_qimage_types.QImage, sx: cint): void =
  fcQPainter_drawImageIntInt_QImageInt(self.h, x, y, image.h, sx)

proc drawImage*(self: gen_qpainter_types.QPainter, x: cint, y: cint, image: gen_qimage_types.QImage, sx: cint, sy: cint): void =
  fcQPainter_drawImageIntInt_QImageIntInt(self.h, x, y, image.h, sx, sy)

proc drawImage*(self: gen_qpainter_types.QPainter, x: cint, y: cint, image: gen_qimage_types.QImage, sx: cint, sy: cint, sw: cint): void =
  fcQPainter_drawImageIntInt_QImageIntIntInt(self.h, x, y, image.h, sx, sy, sw)

proc drawImage*(self: gen_qpainter_types.QPainter, x: cint, y: cint, image: gen_qimage_types.QImage, sx: cint, sy: cint, sw: cint, sh: cint): void =
  fcQPainter_drawImageIntInt_QImageIntIntIntInt(self.h, x, y, image.h, sx, sy, sw, sh)

proc drawImage*(self: gen_qpainter_types.QPainter, x: cint, y: cint, image: gen_qimage_types.QImage, sx: cint, sy: cint, sw: cint, sh: cint, flags: cint): void =
  fcQPainter_drawImageIntInt_QImageIntIntIntInt_Qt_ImageConversionFlags(self.h, x, y, image.h, sx, sy, sw, sh, cint(flags))

proc drawText*(self: gen_qpainter_types.QPainter, r: gen_qrect_types.QRectF, flags: cint, text: openArray[char], br: gen_qrect_types.QRectF): void =
  fcQPainter_drawText_QRectFInt_QString_QRectF(self.h, r.h, flags, struct_seaqt_string(data: if len(text) > 0: addr text[0] else: nil, len: csize_t(len(text))), br.h)

proc drawText*(self: gen_qpainter_types.QPainter, r: gen_qrect_types.QRect, flags: cint, text: openArray[char], br: gen_qrect_types.QRect): void =
  fcQPainter_drawText_QRectInt_QString_QRect(self.h, r.h, flags, struct_seaqt_string(data: if len(text) > 0: addr text[0] else: nil, len: csize_t(len(text))), br.h)

proc drawText*(self: gen_qpainter_types.QPainter, x: cint, y: cint, w: cint, h: cint, flags: cint, text: openArray[char], br: gen_qrect_types.QRect): void =
  fcQPainter_drawTextIntIntIntIntInt_QString_QRect(self.h, x, y, w, h, flags, struct_seaqt_string(data: if len(text) > 0: addr text[0] else: nil, len: csize_t(len(text))), br.h)

proc drawText*(self: gen_qpainter_types.QPainter, r: gen_qrect_types.QRectF, text: openArray[char], o: gen_qtextoption_types.QTextOption): void =
  fcQPainter_drawText_QRectF_QString_QTextOption(self.h, r.h, struct_seaqt_string(data: if len(text) > 0: addr text[0] else: nil, len: csize_t(len(text))), o.h)

proc boundingRect*(self: gen_qpainter_types.QPainter, rect: gen_qrect_types.QRectF, text: openArray[char], o: gen_qtextoption_types.QTextOption): gen_qrect_types.QRectF =
  gen_qrect_types.QRectF(h: fcQPainter_boundingRect_QRectF_QString_QTextOption(self.h, rect.h, struct_seaqt_string(data: if len(text) > 0: addr text[0] else: nil, len: csize_t(len(text))), o.h), owned: true)

proc setRenderHint*(self: gen_qpainter_types.QPainter, hint: cint, on: bool): void =
  fcQPainter_setRenderHintHintOn(self.h, cint(hint), on)

proc setRenderHints*(self: gen_qpainter_types.QPainter, hints: cint, on: bool): void =
  fcQPainter_setRenderHintsHintsOn(self.h, cint(hints), on)

proc create*(T: type gen_qpainter_types.QPainter): gen_qpainter_types.QPainter =
  let tmp = gen_qpainter_types.QPainter(h: fcQPainter_new(), owned: true)
  tmp
proc create*(T: type gen_qpainter_types.QPainter,
    param1: gen_qpaintdevice_types.QPaintDevice): gen_qpainter_types.QPainter =
  let tmp = gen_qpainter_types.QPainter(h: fcQPainter_new2(param1.h), owned: true)
  tmp
proc staticMetaObject*(_: type gen_qpainter_types.QPainter): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQPainter_staticMetaObject())
proc x*(self: gen_qpainter_types.QPainterPixmapFragment): float64 =
  fcQPainterPixmapFragment_x(self.h)

proc setX*(self: gen_qpainter_types.QPainterPixmapFragment, x: float64): void =
  fcQPainterPixmapFragment_setX(self.h, x)

proc y*(self: gen_qpainter_types.QPainterPixmapFragment): float64 =
  fcQPainterPixmapFragment_y(self.h)

proc setY*(self: gen_qpainter_types.QPainterPixmapFragment, y: float64): void =
  fcQPainterPixmapFragment_setY(self.h, y)

proc sourceLeft*(self: gen_qpainter_types.QPainterPixmapFragment): float64 =
  fcQPainterPixmapFragment_sourceLeft(self.h)

proc setSourceLeft*(self: gen_qpainter_types.QPainterPixmapFragment, sourceLeft: float64): void =
  fcQPainterPixmapFragment_setSourceLeft(self.h, sourceLeft)

proc sourceTop*(self: gen_qpainter_types.QPainterPixmapFragment): float64 =
  fcQPainterPixmapFragment_sourceTop(self.h)

proc setSourceTop*(self: gen_qpainter_types.QPainterPixmapFragment, sourceTop: float64): void =
  fcQPainterPixmapFragment_setSourceTop(self.h, sourceTop)

proc width*(self: gen_qpainter_types.QPainterPixmapFragment): float64 =
  fcQPainterPixmapFragment_width(self.h)

proc setWidth*(self: gen_qpainter_types.QPainterPixmapFragment, width: float64): void =
  fcQPainterPixmapFragment_setWidth(self.h, width)

proc height*(self: gen_qpainter_types.QPainterPixmapFragment): float64 =
  fcQPainterPixmapFragment_height(self.h)

proc setHeight*(self: gen_qpainter_types.QPainterPixmapFragment, height: float64): void =
  fcQPainterPixmapFragment_setHeight(self.h, height)

proc scaleX*(self: gen_qpainter_types.QPainterPixmapFragment): float64 =
  fcQPainterPixmapFragment_scaleX(self.h)

proc setScaleX*(self: gen_qpainter_types.QPainterPixmapFragment, scaleX: float64): void =
  fcQPainterPixmapFragment_setScaleX(self.h, scaleX)

proc scaleY*(self: gen_qpainter_types.QPainterPixmapFragment): float64 =
  fcQPainterPixmapFragment_scaleY(self.h)

proc setScaleY*(self: gen_qpainter_types.QPainterPixmapFragment, scaleY: float64): void =
  fcQPainterPixmapFragment_setScaleY(self.h, scaleY)

proc rotation*(self: gen_qpainter_types.QPainterPixmapFragment): float64 =
  fcQPainterPixmapFragment_rotation(self.h)

proc setRotation*(self: gen_qpainter_types.QPainterPixmapFragment, rotation: float64): void =
  fcQPainterPixmapFragment_setRotation(self.h, rotation)

proc opacity*(self: gen_qpainter_types.QPainterPixmapFragment): float64 =
  fcQPainterPixmapFragment_opacity(self.h)

proc setOpacity*(self: gen_qpainter_types.QPainterPixmapFragment, opacity: float64): void =
  fcQPainterPixmapFragment_setOpacity(self.h, opacity)

proc createX*(_: type gen_qpainter_types.QPainterPixmapFragment, pos: gen_qpoint_types.QPointF, sourceRect: gen_qrect_types.QRectF): gen_qpainter_types.QPainterPixmapFragment =
  gen_qpainter_types.QPainterPixmapFragment(h: fcQPainterPixmapFragment_createPosSourceRect(pos.h, sourceRect.h), owned: true)

proc createX*(_: type gen_qpainter_types.QPainterPixmapFragment, pos: gen_qpoint_types.QPointF, sourceRect: gen_qrect_types.QRectF, scaleX: float64): gen_qpainter_types.QPainterPixmapFragment =
  gen_qpainter_types.QPainterPixmapFragment(h: fcQPainterPixmapFragment_createPosSourceRectScaleX(pos.h, sourceRect.h, scaleX), owned: true)

proc createX*(_: type gen_qpainter_types.QPainterPixmapFragment, pos: gen_qpoint_types.QPointF, sourceRect: gen_qrect_types.QRectF, scaleX: float64, scaleY: float64): gen_qpainter_types.QPainterPixmapFragment =
  gen_qpainter_types.QPainterPixmapFragment(h: fcQPainterPixmapFragment_createPosSourceRectScaleXScaleY(pos.h, sourceRect.h, scaleX, scaleY), owned: true)

proc createX*(_: type gen_qpainter_types.QPainterPixmapFragment, pos: gen_qpoint_types.QPointF, sourceRect: gen_qrect_types.QRectF, scaleX: float64, scaleY: float64, rotation: float64): gen_qpainter_types.QPainterPixmapFragment =
  gen_qpainter_types.QPainterPixmapFragment(h: fcQPainterPixmapFragment_createPosSourceRectScaleXScaleYRotation(pos.h, sourceRect.h, scaleX, scaleY, rotation), owned: true)

proc createX*(_: type gen_qpainter_types.QPainterPixmapFragment, pos: gen_qpoint_types.QPointF, sourceRect: gen_qrect_types.QRectF, scaleX: float64, scaleY: float64, rotation: float64, opacity: float64): gen_qpainter_types.QPainterPixmapFragment =
  gen_qpainter_types.QPainterPixmapFragment(h: fcQPainterPixmapFragment_createPosSourceRectScaleXScaleYRotationOpacity(pos.h, sourceRect.h, scaleX, scaleY, rotation, opacity), owned: true)

proc create*(T: type gen_qpainter_types.QPainterPixmapFragment): gen_qpainter_types.QPainterPixmapFragment =
  let tmp = gen_qpainter_types.QPainterPixmapFragment(h: fcQPainterPixmapFragment_new(), owned: true)
  tmp
proc create*(T: type gen_qpainter_types.QPainterPixmapFragment,
    fromVal: gen_qpainter_types.QPainterPixmapFragment): gen_qpainter_types.QPainterPixmapFragment =
  let tmp = gen_qpainter_types.QPainterPixmapFragment(h: fcQPainterPixmapFragment_new2(fromVal.h), owned: true)
  tmp
