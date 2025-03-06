import ./Qt6Widgets_libs

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

const cflags = gorge("pkg-config --cflags Qt6Widgets")  & " -fPIC"
{.compile("gen_qcommonstyle.cpp", cflags).}


import ./gen_qcommonstyle_types
export gen_qcommonstyle_types

import
  ../QtCore/gen_qcoreevent_types,
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qobject_types,
  ../QtCore/gen_qobjectdefs_types,
  ../QtCore/gen_qpoint_types,
  ../QtCore/gen_qrect_types,
  ../QtCore/gen_qsize_types,
  ../QtGui/gen_qfontmetrics_types,
  ../QtGui/gen_qicon_types,
  ../QtGui/gen_qpainter_types,
  ../QtGui/gen_qpalette_types,
  ../QtGui/gen_qpixmap_types,
  ./gen_qapplication_types,
  ./gen_qstyle,
  ./gen_qstyleoption_types,
  ./gen_qwidget_types
export
  gen_qcoreevent_types,
  gen_qmetaobject_types,
  gen_qobject_types,
  gen_qobjectdefs_types,
  gen_qpoint_types,
  gen_qrect_types,
  gen_qsize_types,
  gen_qfontmetrics_types,
  gen_qicon_types,
  gen_qpainter_types,
  gen_qpalette_types,
  gen_qpixmap_types,
  gen_qapplication_types,
  gen_qstyle,
  gen_qstyleoption_types,
  gen_qwidget_types

type cQCommonStyle*{.exportc: "QCommonStyle", incompleteStruct.} = object

proc fcQCommonStyle_metaObject(self: pointer, ): pointer {.importc: "QCommonStyle_metaObject".}
proc fcQCommonStyle_metacast(self: pointer, param1: cstring): pointer {.importc: "QCommonStyle_metacast".}
proc fcQCommonStyle_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QCommonStyle_metacall".}
proc fcQCommonStyle_tr(s: cstring): struct_miqt_string {.importc: "QCommonStyle_tr".}
proc fcQCommonStyle_drawPrimitive(self: pointer, pe: cint, opt: pointer, p: pointer, w: pointer): void {.importc: "QCommonStyle_drawPrimitive".}
proc fcQCommonStyle_drawControl(self: pointer, element: cint, opt: pointer, p: pointer, w: pointer): void {.importc: "QCommonStyle_drawControl".}
proc fcQCommonStyle_subElementRect(self: pointer, r: cint, opt: pointer, widget: pointer): pointer {.importc: "QCommonStyle_subElementRect".}
proc fcQCommonStyle_drawComplexControl(self: pointer, cc: cint, opt: pointer, p: pointer, w: pointer): void {.importc: "QCommonStyle_drawComplexControl".}
proc fcQCommonStyle_hitTestComplexControl(self: pointer, cc: cint, opt: pointer, pt: pointer, w: pointer): cint {.importc: "QCommonStyle_hitTestComplexControl".}
proc fcQCommonStyle_subControlRect(self: pointer, cc: cint, opt: pointer, sc: cint, w: pointer): pointer {.importc: "QCommonStyle_subControlRect".}
proc fcQCommonStyle_sizeFromContents(self: pointer, ct: cint, opt: pointer, contentsSize: pointer, widget: pointer): pointer {.importc: "QCommonStyle_sizeFromContents".}
proc fcQCommonStyle_pixelMetric(self: pointer, m: cint, opt: pointer, widget: pointer): cint {.importc: "QCommonStyle_pixelMetric".}
proc fcQCommonStyle_styleHint(self: pointer, sh: cint, opt: pointer, w: pointer, shret: pointer): cint {.importc: "QCommonStyle_styleHint".}
proc fcQCommonStyle_standardIcon(self: pointer, standardIcon: cint, opt: pointer, widget: pointer): pointer {.importc: "QCommonStyle_standardIcon".}
proc fcQCommonStyle_standardPixmap(self: pointer, sp: cint, opt: pointer, widget: pointer): pointer {.importc: "QCommonStyle_standardPixmap".}
proc fcQCommonStyle_generatedIconPixmap(self: pointer, iconMode: cint, pixmap: pointer, opt: pointer): pointer {.importc: "QCommonStyle_generatedIconPixmap".}
proc fcQCommonStyle_layoutSpacing(self: pointer, control1: cint, control2: cint, orientation: cint, option: pointer, widget: pointer): cint {.importc: "QCommonStyle_layoutSpacing".}
proc fcQCommonStyle_polish(self: pointer, param1: pointer): void {.importc: "QCommonStyle_polish".}
proc fcQCommonStyle_polishWithApp(self: pointer, app: pointer): void {.importc: "QCommonStyle_polishWithApp".}
proc fcQCommonStyle_polishWithWidget(self: pointer, widget: pointer): void {.importc: "QCommonStyle_polishWithWidget".}
proc fcQCommonStyle_unpolish(self: pointer, widget: pointer): void {.importc: "QCommonStyle_unpolish".}
proc fcQCommonStyle_unpolishWithApplication(self: pointer, application: pointer): void {.importc: "QCommonStyle_unpolishWithApplication".}
proc fcQCommonStyle_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QCommonStyle_tr2".}
proc fcQCommonStyle_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QCommonStyle_tr3".}
type cQCommonStyleVTable = object
  destructor*: proc(vtbl: ptr cQCommonStyleVTable, self: ptr cQCommonStyle) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(vtbl, self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(vtbl, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  drawPrimitive*: proc(vtbl, self: pointer, pe: cint, opt: pointer, p: pointer, w: pointer): void {.cdecl, raises: [], gcsafe.}
  drawControl*: proc(vtbl, self: pointer, element: cint, opt: pointer, p: pointer, w: pointer): void {.cdecl, raises: [], gcsafe.}
  subElementRect*: proc(vtbl, self: pointer, r: cint, opt: pointer, widget: pointer): pointer {.cdecl, raises: [], gcsafe.}
  drawComplexControl*: proc(vtbl, self: pointer, cc: cint, opt: pointer, p: pointer, w: pointer): void {.cdecl, raises: [], gcsafe.}
  hitTestComplexControl*: proc(vtbl, self: pointer, cc: cint, opt: pointer, pt: pointer, w: pointer): cint {.cdecl, raises: [], gcsafe.}
  subControlRect*: proc(vtbl, self: pointer, cc: cint, opt: pointer, sc: cint, w: pointer): pointer {.cdecl, raises: [], gcsafe.}
  sizeFromContents*: proc(vtbl, self: pointer, ct: cint, opt: pointer, contentsSize: pointer, widget: pointer): pointer {.cdecl, raises: [], gcsafe.}
  pixelMetric*: proc(vtbl, self: pointer, m: cint, opt: pointer, widget: pointer): cint {.cdecl, raises: [], gcsafe.}
  styleHint*: proc(vtbl, self: pointer, sh: cint, opt: pointer, w: pointer, shret: pointer): cint {.cdecl, raises: [], gcsafe.}
  standardIcon*: proc(vtbl, self: pointer, standardIcon: cint, opt: pointer, widget: pointer): pointer {.cdecl, raises: [], gcsafe.}
  standardPixmap*: proc(vtbl, self: pointer, sp: cint, opt: pointer, widget: pointer): pointer {.cdecl, raises: [], gcsafe.}
  generatedIconPixmap*: proc(vtbl, self: pointer, iconMode: cint, pixmap: pointer, opt: pointer): pointer {.cdecl, raises: [], gcsafe.}
  layoutSpacing*: proc(vtbl, self: pointer, control1: cint, control2: cint, orientation: cint, option: pointer, widget: pointer): cint {.cdecl, raises: [], gcsafe.}
  polish*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  polishWithApp*: proc(vtbl, self: pointer, app: pointer): void {.cdecl, raises: [], gcsafe.}
  polishWithWidget*: proc(vtbl, self: pointer, widget: pointer): void {.cdecl, raises: [], gcsafe.}
  unpolish*: proc(vtbl, self: pointer, widget: pointer): void {.cdecl, raises: [], gcsafe.}
  unpolishWithApplication*: proc(vtbl, self: pointer, application: pointer): void {.cdecl, raises: [], gcsafe.}
  itemTextRect*: proc(vtbl, self: pointer, fm: pointer, r: pointer, flags: cint, enabled: bool, text: struct_miqt_string): pointer {.cdecl, raises: [], gcsafe.}
  itemPixmapRect*: proc(vtbl, self: pointer, r: pointer, flags: cint, pixmap: pointer): pointer {.cdecl, raises: [], gcsafe.}
  drawItemText*: proc(vtbl, self: pointer, painter: pointer, rect: pointer, flags: cint, pal: pointer, enabled: bool, text: struct_miqt_string, textRole: cint): void {.cdecl, raises: [], gcsafe.}
  drawItemPixmap*: proc(vtbl, self: pointer, painter: pointer, rect: pointer, alignment: cint, pixmap: pointer): void {.cdecl, raises: [], gcsafe.}
  standardPalette*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  event*: proc(vtbl, self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(vtbl, self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQCommonStyle_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QCommonStyle_virtualbase_metaObject".}
proc fcQCommonStyle_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QCommonStyle_virtualbase_metacast".}
proc fcQCommonStyle_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QCommonStyle_virtualbase_metacall".}
proc fcQCommonStyle_virtualbase_drawPrimitive(self: pointer, pe: cint, opt: pointer, p: pointer, w: pointer): void {.importc: "QCommonStyle_virtualbase_drawPrimitive".}
proc fcQCommonStyle_virtualbase_drawControl(self: pointer, element: cint, opt: pointer, p: pointer, w: pointer): void {.importc: "QCommonStyle_virtualbase_drawControl".}
proc fcQCommonStyle_virtualbase_subElementRect(self: pointer, r: cint, opt: pointer, widget: pointer): pointer {.importc: "QCommonStyle_virtualbase_subElementRect".}
proc fcQCommonStyle_virtualbase_drawComplexControl(self: pointer, cc: cint, opt: pointer, p: pointer, w: pointer): void {.importc: "QCommonStyle_virtualbase_drawComplexControl".}
proc fcQCommonStyle_virtualbase_hitTestComplexControl(self: pointer, cc: cint, opt: pointer, pt: pointer, w: pointer): cint {.importc: "QCommonStyle_virtualbase_hitTestComplexControl".}
proc fcQCommonStyle_virtualbase_subControlRect(self: pointer, cc: cint, opt: pointer, sc: cint, w: pointer): pointer {.importc: "QCommonStyle_virtualbase_subControlRect".}
proc fcQCommonStyle_virtualbase_sizeFromContents(self: pointer, ct: cint, opt: pointer, contentsSize: pointer, widget: pointer): pointer {.importc: "QCommonStyle_virtualbase_sizeFromContents".}
proc fcQCommonStyle_virtualbase_pixelMetric(self: pointer, m: cint, opt: pointer, widget: pointer): cint {.importc: "QCommonStyle_virtualbase_pixelMetric".}
proc fcQCommonStyle_virtualbase_styleHint(self: pointer, sh: cint, opt: pointer, w: pointer, shret: pointer): cint {.importc: "QCommonStyle_virtualbase_styleHint".}
proc fcQCommonStyle_virtualbase_standardIcon(self: pointer, standardIcon: cint, opt: pointer, widget: pointer): pointer {.importc: "QCommonStyle_virtualbase_standardIcon".}
proc fcQCommonStyle_virtualbase_standardPixmap(self: pointer, sp: cint, opt: pointer, widget: pointer): pointer {.importc: "QCommonStyle_virtualbase_standardPixmap".}
proc fcQCommonStyle_virtualbase_generatedIconPixmap(self: pointer, iconMode: cint, pixmap: pointer, opt: pointer): pointer {.importc: "QCommonStyle_virtualbase_generatedIconPixmap".}
proc fcQCommonStyle_virtualbase_layoutSpacing(self: pointer, control1: cint, control2: cint, orientation: cint, option: pointer, widget: pointer): cint {.importc: "QCommonStyle_virtualbase_layoutSpacing".}
proc fcQCommonStyle_virtualbase_polish(self: pointer, param1: pointer): void {.importc: "QCommonStyle_virtualbase_polish".}
proc fcQCommonStyle_virtualbase_polishWithApp(self: pointer, app: pointer): void {.importc: "QCommonStyle_virtualbase_polishWithApp".}
proc fcQCommonStyle_virtualbase_polishWithWidget(self: pointer, widget: pointer): void {.importc: "QCommonStyle_virtualbase_polishWithWidget".}
proc fcQCommonStyle_virtualbase_unpolish(self: pointer, widget: pointer): void {.importc: "QCommonStyle_virtualbase_unpolish".}
proc fcQCommonStyle_virtualbase_unpolishWithApplication(self: pointer, application: pointer): void {.importc: "QCommonStyle_virtualbase_unpolishWithApplication".}
proc fcQCommonStyle_virtualbase_itemTextRect(self: pointer, fm: pointer, r: pointer, flags: cint, enabled: bool, text: struct_miqt_string): pointer {.importc: "QCommonStyle_virtualbase_itemTextRect".}
proc fcQCommonStyle_virtualbase_itemPixmapRect(self: pointer, r: pointer, flags: cint, pixmap: pointer): pointer {.importc: "QCommonStyle_virtualbase_itemPixmapRect".}
proc fcQCommonStyle_virtualbase_drawItemText(self: pointer, painter: pointer, rect: pointer, flags: cint, pal: pointer, enabled: bool, text: struct_miqt_string, textRole: cint): void {.importc: "QCommonStyle_virtualbase_drawItemText".}
proc fcQCommonStyle_virtualbase_drawItemPixmap(self: pointer, painter: pointer, rect: pointer, alignment: cint, pixmap: pointer): void {.importc: "QCommonStyle_virtualbase_drawItemPixmap".}
proc fcQCommonStyle_virtualbase_standardPalette(self: pointer, ): pointer {.importc: "QCommonStyle_virtualbase_standardPalette".}
proc fcQCommonStyle_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QCommonStyle_virtualbase_event".}
proc fcQCommonStyle_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QCommonStyle_virtualbase_eventFilter".}
proc fcQCommonStyle_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QCommonStyle_virtualbase_timerEvent".}
proc fcQCommonStyle_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QCommonStyle_virtualbase_childEvent".}
proc fcQCommonStyle_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QCommonStyle_virtualbase_customEvent".}
proc fcQCommonStyle_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QCommonStyle_virtualbase_connectNotify".}
proc fcQCommonStyle_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QCommonStyle_virtualbase_disconnectNotify".}
proc fcQCommonStyle_protectedbase_sender(self: pointer, ): pointer {.importc: "QCommonStyle_protectedbase_sender".}
proc fcQCommonStyle_protectedbase_senderSignalIndex(self: pointer, ): cint {.importc: "QCommonStyle_protectedbase_senderSignalIndex".}
proc fcQCommonStyle_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QCommonStyle_protectedbase_receivers".}
proc fcQCommonStyle_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QCommonStyle_protectedbase_isSignalConnected".}
proc fcQCommonStyle_new(vtbl: pointer, ): ptr cQCommonStyle {.importc: "QCommonStyle_new".}
proc fcQCommonStyle_staticMetaObject(): pointer {.importc: "QCommonStyle_staticMetaObject".}
proc fcQCommonStyle_delete(self: pointer) {.importc: "QCommonStyle_delete".}

proc metaObject*(self: gen_qcommonstyle_types.QCommonStyle, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQCommonStyle_metaObject(self.h))

proc metacast*(self: gen_qcommonstyle_types.QCommonStyle, param1: cstring): pointer =
  fcQCommonStyle_metacast(self.h, param1)

proc metacall*(self: gen_qcommonstyle_types.QCommonStyle, param1: cint, param2: cint, param3: pointer): cint =
  fcQCommonStyle_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qcommonstyle_types.QCommonStyle, s: cstring): string =
  let v_ms = fcQCommonStyle_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc drawPrimitive*(self: gen_qcommonstyle_types.QCommonStyle, pe: cint, opt: gen_qstyleoption_types.QStyleOption, p: gen_qpainter_types.QPainter, w: gen_qwidget_types.QWidget): void =
  fcQCommonStyle_drawPrimitive(self.h, cint(pe), opt.h, p.h, w.h)

proc drawControl*(self: gen_qcommonstyle_types.QCommonStyle, element: cint, opt: gen_qstyleoption_types.QStyleOption, p: gen_qpainter_types.QPainter, w: gen_qwidget_types.QWidget): void =
  fcQCommonStyle_drawControl(self.h, cint(element), opt.h, p.h, w.h)

proc subElementRect*(self: gen_qcommonstyle_types.QCommonStyle, r: cint, opt: gen_qstyleoption_types.QStyleOption, widget: gen_qwidget_types.QWidget): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fcQCommonStyle_subElementRect(self.h, cint(r), opt.h, widget.h))

proc drawComplexControl*(self: gen_qcommonstyle_types.QCommonStyle, cc: cint, opt: gen_qstyleoption_types.QStyleOptionComplex, p: gen_qpainter_types.QPainter, w: gen_qwidget_types.QWidget): void =
  fcQCommonStyle_drawComplexControl(self.h, cint(cc), opt.h, p.h, w.h)

proc hitTestComplexControl*(self: gen_qcommonstyle_types.QCommonStyle, cc: cint, opt: gen_qstyleoption_types.QStyleOptionComplex, pt: gen_qpoint_types.QPoint, w: gen_qwidget_types.QWidget): cint =
  cint(fcQCommonStyle_hitTestComplexControl(self.h, cint(cc), opt.h, pt.h, w.h))

proc subControlRect*(self: gen_qcommonstyle_types.QCommonStyle, cc: cint, opt: gen_qstyleoption_types.QStyleOptionComplex, sc: cint, w: gen_qwidget_types.QWidget): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fcQCommonStyle_subControlRect(self.h, cint(cc), opt.h, cint(sc), w.h))

proc sizeFromContents*(self: gen_qcommonstyle_types.QCommonStyle, ct: cint, opt: gen_qstyleoption_types.QStyleOption, contentsSize: gen_qsize_types.QSize, widget: gen_qwidget_types.QWidget): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQCommonStyle_sizeFromContents(self.h, cint(ct), opt.h, contentsSize.h, widget.h))

proc pixelMetric*(self: gen_qcommonstyle_types.QCommonStyle, m: cint, opt: gen_qstyleoption_types.QStyleOption, widget: gen_qwidget_types.QWidget): cint =
  fcQCommonStyle_pixelMetric(self.h, cint(m), opt.h, widget.h)

proc styleHint*(self: gen_qcommonstyle_types.QCommonStyle, sh: cint, opt: gen_qstyleoption_types.QStyleOption, w: gen_qwidget_types.QWidget, shret: gen_qstyleoption_types.QStyleHintReturn): cint =
  fcQCommonStyle_styleHint(self.h, cint(sh), opt.h, w.h, shret.h)

proc standardIcon*(self: gen_qcommonstyle_types.QCommonStyle, standardIcon: cint, opt: gen_qstyleoption_types.QStyleOption, widget: gen_qwidget_types.QWidget): gen_qicon_types.QIcon =
  gen_qicon_types.QIcon(h: fcQCommonStyle_standardIcon(self.h, cint(standardIcon), opt.h, widget.h))

proc standardPixmap*(self: gen_qcommonstyle_types.QCommonStyle, sp: cint, opt: gen_qstyleoption_types.QStyleOption, widget: gen_qwidget_types.QWidget): gen_qpixmap_types.QPixmap =
  gen_qpixmap_types.QPixmap(h: fcQCommonStyle_standardPixmap(self.h, cint(sp), opt.h, widget.h))

proc generatedIconPixmap*(self: gen_qcommonstyle_types.QCommonStyle, iconMode: cint, pixmap: gen_qpixmap_types.QPixmap, opt: gen_qstyleoption_types.QStyleOption): gen_qpixmap_types.QPixmap =
  gen_qpixmap_types.QPixmap(h: fcQCommonStyle_generatedIconPixmap(self.h, cint(iconMode), pixmap.h, opt.h))

proc layoutSpacing*(self: gen_qcommonstyle_types.QCommonStyle, control1: cint, control2: cint, orientation: cint, option: gen_qstyleoption_types.QStyleOption, widget: gen_qwidget_types.QWidget): cint =
  fcQCommonStyle_layoutSpacing(self.h, cint(control1), cint(control2), cint(orientation), option.h, widget.h)

proc polish*(self: gen_qcommonstyle_types.QCommonStyle, param1: gen_qpalette_types.QPalette): void =
  fcQCommonStyle_polish(self.h, param1.h)

proc polish*(self: gen_qcommonstyle_types.QCommonStyle, app: gen_qapplication_types.QApplication): void =
  fcQCommonStyle_polishWithApp(self.h, app.h)

proc polish*(self: gen_qcommonstyle_types.QCommonStyle, widget: gen_qwidget_types.QWidget): void =
  fcQCommonStyle_polishWithWidget(self.h, widget.h)

proc unpolish*(self: gen_qcommonstyle_types.QCommonStyle, widget: gen_qwidget_types.QWidget): void =
  fcQCommonStyle_unpolish(self.h, widget.h)

proc unpolish*(self: gen_qcommonstyle_types.QCommonStyle, application: gen_qapplication_types.QApplication): void =
  fcQCommonStyle_unpolishWithApplication(self.h, application.h)

proc tr*(_: type gen_qcommonstyle_types.QCommonStyle, s: cstring, c: cstring): string =
  let v_ms = fcQCommonStyle_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qcommonstyle_types.QCommonStyle, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQCommonStyle_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

type QCommonStylemetaObjectProc* = proc(self: QCommonStyle): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QCommonStylemetacastProc* = proc(self: QCommonStyle, param1: cstring): pointer {.raises: [], gcsafe.}
type QCommonStylemetacallProc* = proc(self: QCommonStyle, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QCommonStyledrawPrimitiveProc* = proc(self: QCommonStyle, pe: cint, opt: gen_qstyleoption_types.QStyleOption, p: gen_qpainter_types.QPainter, w: gen_qwidget_types.QWidget): void {.raises: [], gcsafe.}
type QCommonStyledrawControlProc* = proc(self: QCommonStyle, element: cint, opt: gen_qstyleoption_types.QStyleOption, p: gen_qpainter_types.QPainter, w: gen_qwidget_types.QWidget): void {.raises: [], gcsafe.}
type QCommonStylesubElementRectProc* = proc(self: QCommonStyle, r: cint, opt: gen_qstyleoption_types.QStyleOption, widget: gen_qwidget_types.QWidget): gen_qrect_types.QRect {.raises: [], gcsafe.}
type QCommonStyledrawComplexControlProc* = proc(self: QCommonStyle, cc: cint, opt: gen_qstyleoption_types.QStyleOptionComplex, p: gen_qpainter_types.QPainter, w: gen_qwidget_types.QWidget): void {.raises: [], gcsafe.}
type QCommonStylehitTestComplexControlProc* = proc(self: QCommonStyle, cc: cint, opt: gen_qstyleoption_types.QStyleOptionComplex, pt: gen_qpoint_types.QPoint, w: gen_qwidget_types.QWidget): cint {.raises: [], gcsafe.}
type QCommonStylesubControlRectProc* = proc(self: QCommonStyle, cc: cint, opt: gen_qstyleoption_types.QStyleOptionComplex, sc: cint, w: gen_qwidget_types.QWidget): gen_qrect_types.QRect {.raises: [], gcsafe.}
type QCommonStylesizeFromContentsProc* = proc(self: QCommonStyle, ct: cint, opt: gen_qstyleoption_types.QStyleOption, contentsSize: gen_qsize_types.QSize, widget: gen_qwidget_types.QWidget): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QCommonStylepixelMetricProc* = proc(self: QCommonStyle, m: cint, opt: gen_qstyleoption_types.QStyleOption, widget: gen_qwidget_types.QWidget): cint {.raises: [], gcsafe.}
type QCommonStylestyleHintProc* = proc(self: QCommonStyle, sh: cint, opt: gen_qstyleoption_types.QStyleOption, w: gen_qwidget_types.QWidget, shret: gen_qstyleoption_types.QStyleHintReturn): cint {.raises: [], gcsafe.}
type QCommonStylestandardIconProc* = proc(self: QCommonStyle, standardIcon: cint, opt: gen_qstyleoption_types.QStyleOption, widget: gen_qwidget_types.QWidget): gen_qicon_types.QIcon {.raises: [], gcsafe.}
type QCommonStylestandardPixmapProc* = proc(self: QCommonStyle, sp: cint, opt: gen_qstyleoption_types.QStyleOption, widget: gen_qwidget_types.QWidget): gen_qpixmap_types.QPixmap {.raises: [], gcsafe.}
type QCommonStylegeneratedIconPixmapProc* = proc(self: QCommonStyle, iconMode: cint, pixmap: gen_qpixmap_types.QPixmap, opt: gen_qstyleoption_types.QStyleOption): gen_qpixmap_types.QPixmap {.raises: [], gcsafe.}
type QCommonStylelayoutSpacingProc* = proc(self: QCommonStyle, control1: cint, control2: cint, orientation: cint, option: gen_qstyleoption_types.QStyleOption, widget: gen_qwidget_types.QWidget): cint {.raises: [], gcsafe.}
type QCommonStylepolishProc* = proc(self: QCommonStyle, param1: gen_qpalette_types.QPalette): void {.raises: [], gcsafe.}
type QCommonStylepolishWithAppProc* = proc(self: QCommonStyle, app: gen_qapplication_types.QApplication): void {.raises: [], gcsafe.}
type QCommonStylepolishWithWidgetProc* = proc(self: QCommonStyle, widget: gen_qwidget_types.QWidget): void {.raises: [], gcsafe.}
type QCommonStyleunpolishProc* = proc(self: QCommonStyle, widget: gen_qwidget_types.QWidget): void {.raises: [], gcsafe.}
type QCommonStyleunpolishWithApplicationProc* = proc(self: QCommonStyle, application: gen_qapplication_types.QApplication): void {.raises: [], gcsafe.}
type QCommonStyleitemTextRectProc* = proc(self: QCommonStyle, fm: gen_qfontmetrics_types.QFontMetrics, r: gen_qrect_types.QRect, flags: cint, enabled: bool, text: string): gen_qrect_types.QRect {.raises: [], gcsafe.}
type QCommonStyleitemPixmapRectProc* = proc(self: QCommonStyle, r: gen_qrect_types.QRect, flags: cint, pixmap: gen_qpixmap_types.QPixmap): gen_qrect_types.QRect {.raises: [], gcsafe.}
type QCommonStyledrawItemTextProc* = proc(self: QCommonStyle, painter: gen_qpainter_types.QPainter, rect: gen_qrect_types.QRect, flags: cint, pal: gen_qpalette_types.QPalette, enabled: bool, text: string, textRole: cint): void {.raises: [], gcsafe.}
type QCommonStyledrawItemPixmapProc* = proc(self: QCommonStyle, painter: gen_qpainter_types.QPainter, rect: gen_qrect_types.QRect, alignment: cint, pixmap: gen_qpixmap_types.QPixmap): void {.raises: [], gcsafe.}
type QCommonStylestandardPaletteProc* = proc(self: QCommonStyle): gen_qpalette_types.QPalette {.raises: [], gcsafe.}
type QCommonStyleeventProc* = proc(self: QCommonStyle, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QCommonStyleeventFilterProc* = proc(self: QCommonStyle, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QCommonStyletimerEventProc* = proc(self: QCommonStyle, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QCommonStylechildEventProc* = proc(self: QCommonStyle, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QCommonStylecustomEventProc* = proc(self: QCommonStyle, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QCommonStyleconnectNotifyProc* = proc(self: QCommonStyle, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QCommonStyledisconnectNotifyProc* = proc(self: QCommonStyle, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QCommonStyleVTable* = object
  vtbl: cQCommonStyleVTable
  metaObject*: QCommonStylemetaObjectProc
  metacast*: QCommonStylemetacastProc
  metacall*: QCommonStylemetacallProc
  drawPrimitive*: QCommonStyledrawPrimitiveProc
  drawControl*: QCommonStyledrawControlProc
  subElementRect*: QCommonStylesubElementRectProc
  drawComplexControl*: QCommonStyledrawComplexControlProc
  hitTestComplexControl*: QCommonStylehitTestComplexControlProc
  subControlRect*: QCommonStylesubControlRectProc
  sizeFromContents*: QCommonStylesizeFromContentsProc
  pixelMetric*: QCommonStylepixelMetricProc
  styleHint*: QCommonStylestyleHintProc
  standardIcon*: QCommonStylestandardIconProc
  standardPixmap*: QCommonStylestandardPixmapProc
  generatedIconPixmap*: QCommonStylegeneratedIconPixmapProc
  layoutSpacing*: QCommonStylelayoutSpacingProc
  polish*: QCommonStylepolishProc
  polishWithApp*: QCommonStylepolishWithAppProc
  polishWithWidget*: QCommonStylepolishWithWidgetProc
  unpolish*: QCommonStyleunpolishProc
  unpolishWithApplication*: QCommonStyleunpolishWithApplicationProc
  itemTextRect*: QCommonStyleitemTextRectProc
  itemPixmapRect*: QCommonStyleitemPixmapRectProc
  drawItemText*: QCommonStyledrawItemTextProc
  drawItemPixmap*: QCommonStyledrawItemPixmapProc
  standardPalette*: QCommonStylestandardPaletteProc
  event*: QCommonStyleeventProc
  eventFilter*: QCommonStyleeventFilterProc
  timerEvent*: QCommonStyletimerEventProc
  childEvent*: QCommonStylechildEventProc
  customEvent*: QCommonStylecustomEventProc
  connectNotify*: QCommonStyleconnectNotifyProc
  disconnectNotify*: QCommonStyledisconnectNotifyProc
proc QCommonStylemetaObject*(self: gen_qcommonstyle_types.QCommonStyle, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQCommonStyle_virtualbase_metaObject(self.h))

proc miqt_exec_callback_cQCommonStyle_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QCommonStyleVTable](vtbl)
  let self = QCommonStyle(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.h

proc QCommonStylemetacast*(self: gen_qcommonstyle_types.QCommonStyle, param1: cstring): pointer =
  fcQCommonStyle_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQCommonStyle_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QCommonStyleVTable](vtbl)
  let self = QCommonStyle(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QCommonStylemetacall*(self: gen_qcommonstyle_types.QCommonStyle, param1: cint, param2: cint, param3: pointer): cint =
  fcQCommonStyle_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQCommonStyle_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QCommonStyleVTable](vtbl)
  let self = QCommonStyle(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QCommonStyledrawPrimitive*(self: gen_qcommonstyle_types.QCommonStyle, pe: cint, opt: gen_qstyleoption_types.QStyleOption, p: gen_qpainter_types.QPainter, w: gen_qwidget_types.QWidget): void =
  fcQCommonStyle_virtualbase_drawPrimitive(self.h, cint(pe), opt.h, p.h, w.h)

proc miqt_exec_callback_cQCommonStyle_drawPrimitive(vtbl: pointer, self: pointer, pe: cint, opt: pointer, p: pointer, w: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCommonStyleVTable](vtbl)
  let self = QCommonStyle(h: self)
  let slotval1 = cint(pe)
  let slotval2 = gen_qstyleoption_types.QStyleOption(h: opt)
  let slotval3 = gen_qpainter_types.QPainter(h: p)
  let slotval4 = gen_qwidget_types.QWidget(h: w)
  vtbl[].drawPrimitive(self, slotval1, slotval2, slotval3, slotval4)

proc QCommonStyledrawControl*(self: gen_qcommonstyle_types.QCommonStyle, element: cint, opt: gen_qstyleoption_types.QStyleOption, p: gen_qpainter_types.QPainter, w: gen_qwidget_types.QWidget): void =
  fcQCommonStyle_virtualbase_drawControl(self.h, cint(element), opt.h, p.h, w.h)

proc miqt_exec_callback_cQCommonStyle_drawControl(vtbl: pointer, self: pointer, element: cint, opt: pointer, p: pointer, w: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCommonStyleVTable](vtbl)
  let self = QCommonStyle(h: self)
  let slotval1 = cint(element)
  let slotval2 = gen_qstyleoption_types.QStyleOption(h: opt)
  let slotval3 = gen_qpainter_types.QPainter(h: p)
  let slotval4 = gen_qwidget_types.QWidget(h: w)
  vtbl[].drawControl(self, slotval1, slotval2, slotval3, slotval4)

proc QCommonStylesubElementRect*(self: gen_qcommonstyle_types.QCommonStyle, r: cint, opt: gen_qstyleoption_types.QStyleOption, widget: gen_qwidget_types.QWidget): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fcQCommonStyle_virtualbase_subElementRect(self.h, cint(r), opt.h, widget.h))

proc miqt_exec_callback_cQCommonStyle_subElementRect(vtbl: pointer, self: pointer, r: cint, opt: pointer, widget: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QCommonStyleVTable](vtbl)
  let self = QCommonStyle(h: self)
  let slotval1 = cint(r)
  let slotval2 = gen_qstyleoption_types.QStyleOption(h: opt)
  let slotval3 = gen_qwidget_types.QWidget(h: widget)
  var virtualReturn = vtbl[].subElementRect(self, slotval1, slotval2, slotval3)
  virtualReturn.h

proc QCommonStyledrawComplexControl*(self: gen_qcommonstyle_types.QCommonStyle, cc: cint, opt: gen_qstyleoption_types.QStyleOptionComplex, p: gen_qpainter_types.QPainter, w: gen_qwidget_types.QWidget): void =
  fcQCommonStyle_virtualbase_drawComplexControl(self.h, cint(cc), opt.h, p.h, w.h)

proc miqt_exec_callback_cQCommonStyle_drawComplexControl(vtbl: pointer, self: pointer, cc: cint, opt: pointer, p: pointer, w: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCommonStyleVTable](vtbl)
  let self = QCommonStyle(h: self)
  let slotval1 = cint(cc)
  let slotval2 = gen_qstyleoption_types.QStyleOptionComplex(h: opt)
  let slotval3 = gen_qpainter_types.QPainter(h: p)
  let slotval4 = gen_qwidget_types.QWidget(h: w)
  vtbl[].drawComplexControl(self, slotval1, slotval2, slotval3, slotval4)

proc QCommonStylehitTestComplexControl*(self: gen_qcommonstyle_types.QCommonStyle, cc: cint, opt: gen_qstyleoption_types.QStyleOptionComplex, pt: gen_qpoint_types.QPoint, w: gen_qwidget_types.QWidget): cint =
  cint(fcQCommonStyle_virtualbase_hitTestComplexControl(self.h, cint(cc), opt.h, pt.h, w.h))

proc miqt_exec_callback_cQCommonStyle_hitTestComplexControl(vtbl: pointer, self: pointer, cc: cint, opt: pointer, pt: pointer, w: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QCommonStyleVTable](vtbl)
  let self = QCommonStyle(h: self)
  let slotval1 = cint(cc)
  let slotval2 = gen_qstyleoption_types.QStyleOptionComplex(h: opt)
  let slotval3 = gen_qpoint_types.QPoint(h: pt)
  let slotval4 = gen_qwidget_types.QWidget(h: w)
  var virtualReturn = vtbl[].hitTestComplexControl(self, slotval1, slotval2, slotval3, slotval4)
  cint(virtualReturn)

proc QCommonStylesubControlRect*(self: gen_qcommonstyle_types.QCommonStyle, cc: cint, opt: gen_qstyleoption_types.QStyleOptionComplex, sc: cint, w: gen_qwidget_types.QWidget): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fcQCommonStyle_virtualbase_subControlRect(self.h, cint(cc), opt.h, cint(sc), w.h))

proc miqt_exec_callback_cQCommonStyle_subControlRect(vtbl: pointer, self: pointer, cc: cint, opt: pointer, sc: cint, w: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QCommonStyleVTable](vtbl)
  let self = QCommonStyle(h: self)
  let slotval1 = cint(cc)
  let slotval2 = gen_qstyleoption_types.QStyleOptionComplex(h: opt)
  let slotval3 = cint(sc)
  let slotval4 = gen_qwidget_types.QWidget(h: w)
  var virtualReturn = vtbl[].subControlRect(self, slotval1, slotval2, slotval3, slotval4)
  virtualReturn.h

proc QCommonStylesizeFromContents*(self: gen_qcommonstyle_types.QCommonStyle, ct: cint, opt: gen_qstyleoption_types.QStyleOption, contentsSize: gen_qsize_types.QSize, widget: gen_qwidget_types.QWidget): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQCommonStyle_virtualbase_sizeFromContents(self.h, cint(ct), opt.h, contentsSize.h, widget.h))

proc miqt_exec_callback_cQCommonStyle_sizeFromContents(vtbl: pointer, self: pointer, ct: cint, opt: pointer, contentsSize: pointer, widget: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QCommonStyleVTable](vtbl)
  let self = QCommonStyle(h: self)
  let slotval1 = cint(ct)
  let slotval2 = gen_qstyleoption_types.QStyleOption(h: opt)
  let slotval3 = gen_qsize_types.QSize(h: contentsSize)
  let slotval4 = gen_qwidget_types.QWidget(h: widget)
  var virtualReturn = vtbl[].sizeFromContents(self, slotval1, slotval2, slotval3, slotval4)
  virtualReturn.h

proc QCommonStylepixelMetric*(self: gen_qcommonstyle_types.QCommonStyle, m: cint, opt: gen_qstyleoption_types.QStyleOption, widget: gen_qwidget_types.QWidget): cint =
  fcQCommonStyle_virtualbase_pixelMetric(self.h, cint(m), opt.h, widget.h)

proc miqt_exec_callback_cQCommonStyle_pixelMetric(vtbl: pointer, self: pointer, m: cint, opt: pointer, widget: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QCommonStyleVTable](vtbl)
  let self = QCommonStyle(h: self)
  let slotval1 = cint(m)
  let slotval2 = gen_qstyleoption_types.QStyleOption(h: opt)
  let slotval3 = gen_qwidget_types.QWidget(h: widget)
  var virtualReturn = vtbl[].pixelMetric(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QCommonStylestyleHint*(self: gen_qcommonstyle_types.QCommonStyle, sh: cint, opt: gen_qstyleoption_types.QStyleOption, w: gen_qwidget_types.QWidget, shret: gen_qstyleoption_types.QStyleHintReturn): cint =
  fcQCommonStyle_virtualbase_styleHint(self.h, cint(sh), opt.h, w.h, shret.h)

proc miqt_exec_callback_cQCommonStyle_styleHint(vtbl: pointer, self: pointer, sh: cint, opt: pointer, w: pointer, shret: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QCommonStyleVTable](vtbl)
  let self = QCommonStyle(h: self)
  let slotval1 = cint(sh)
  let slotval2 = gen_qstyleoption_types.QStyleOption(h: opt)
  let slotval3 = gen_qwidget_types.QWidget(h: w)
  let slotval4 = gen_qstyleoption_types.QStyleHintReturn(h: shret)
  var virtualReturn = vtbl[].styleHint(self, slotval1, slotval2, slotval3, slotval4)
  virtualReturn

proc QCommonStylestandardIcon*(self: gen_qcommonstyle_types.QCommonStyle, standardIcon: cint, opt: gen_qstyleoption_types.QStyleOption, widget: gen_qwidget_types.QWidget): gen_qicon_types.QIcon =
  gen_qicon_types.QIcon(h: fcQCommonStyle_virtualbase_standardIcon(self.h, cint(standardIcon), opt.h, widget.h))

proc miqt_exec_callback_cQCommonStyle_standardIcon(vtbl: pointer, self: pointer, standardIcon: cint, opt: pointer, widget: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QCommonStyleVTable](vtbl)
  let self = QCommonStyle(h: self)
  let slotval1 = cint(standardIcon)
  let slotval2 = gen_qstyleoption_types.QStyleOption(h: opt)
  let slotval3 = gen_qwidget_types.QWidget(h: widget)
  var virtualReturn = vtbl[].standardIcon(self, slotval1, slotval2, slotval3)
  virtualReturn.h

proc QCommonStylestandardPixmap*(self: gen_qcommonstyle_types.QCommonStyle, sp: cint, opt: gen_qstyleoption_types.QStyleOption, widget: gen_qwidget_types.QWidget): gen_qpixmap_types.QPixmap =
  gen_qpixmap_types.QPixmap(h: fcQCommonStyle_virtualbase_standardPixmap(self.h, cint(sp), opt.h, widget.h))

proc miqt_exec_callback_cQCommonStyle_standardPixmap(vtbl: pointer, self: pointer, sp: cint, opt: pointer, widget: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QCommonStyleVTable](vtbl)
  let self = QCommonStyle(h: self)
  let slotval1 = cint(sp)
  let slotval2 = gen_qstyleoption_types.QStyleOption(h: opt)
  let slotval3 = gen_qwidget_types.QWidget(h: widget)
  var virtualReturn = vtbl[].standardPixmap(self, slotval1, slotval2, slotval3)
  virtualReturn.h

proc QCommonStylegeneratedIconPixmap*(self: gen_qcommonstyle_types.QCommonStyle, iconMode: cint, pixmap: gen_qpixmap_types.QPixmap, opt: gen_qstyleoption_types.QStyleOption): gen_qpixmap_types.QPixmap =
  gen_qpixmap_types.QPixmap(h: fcQCommonStyle_virtualbase_generatedIconPixmap(self.h, cint(iconMode), pixmap.h, opt.h))

proc miqt_exec_callback_cQCommonStyle_generatedIconPixmap(vtbl: pointer, self: pointer, iconMode: cint, pixmap: pointer, opt: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QCommonStyleVTable](vtbl)
  let self = QCommonStyle(h: self)
  let slotval1 = cint(iconMode)
  let slotval2 = gen_qpixmap_types.QPixmap(h: pixmap)
  let slotval3 = gen_qstyleoption_types.QStyleOption(h: opt)
  var virtualReturn = vtbl[].generatedIconPixmap(self, slotval1, slotval2, slotval3)
  virtualReturn.h

proc QCommonStylelayoutSpacing*(self: gen_qcommonstyle_types.QCommonStyle, control1: cint, control2: cint, orientation: cint, option: gen_qstyleoption_types.QStyleOption, widget: gen_qwidget_types.QWidget): cint =
  fcQCommonStyle_virtualbase_layoutSpacing(self.h, cint(control1), cint(control2), cint(orientation), option.h, widget.h)

proc miqt_exec_callback_cQCommonStyle_layoutSpacing(vtbl: pointer, self: pointer, control1: cint, control2: cint, orientation: cint, option: pointer, widget: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QCommonStyleVTable](vtbl)
  let self = QCommonStyle(h: self)
  let slotval1 = cint(control1)
  let slotval2 = cint(control2)
  let slotval3 = cint(orientation)
  let slotval4 = gen_qstyleoption_types.QStyleOption(h: option)
  let slotval5 = gen_qwidget_types.QWidget(h: widget)
  var virtualReturn = vtbl[].layoutSpacing(self, slotval1, slotval2, slotval3, slotval4, slotval5)
  virtualReturn

proc QCommonStylepolish*(self: gen_qcommonstyle_types.QCommonStyle, param1: gen_qpalette_types.QPalette): void =
  fcQCommonStyle_virtualbase_polish(self.h, param1.h)

proc miqt_exec_callback_cQCommonStyle_polish(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCommonStyleVTable](vtbl)
  let self = QCommonStyle(h: self)
  let slotval1 = gen_qpalette_types.QPalette(h: param1)
  vtbl[].polish(self, slotval1)

proc QCommonStylepolish*(self: gen_qcommonstyle_types.QCommonStyle, app: gen_qapplication_types.QApplication): void =
  fcQCommonStyle_virtualbase_polishWithApp(self.h, app.h)

proc miqt_exec_callback_cQCommonStyle_polishWithApp(vtbl: pointer, self: pointer, app: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCommonStyleVTable](vtbl)
  let self = QCommonStyle(h: self)
  let slotval1 = gen_qapplication_types.QApplication(h: app)
  vtbl[].polishWithApp(self, slotval1)

proc QCommonStylepolish*(self: gen_qcommonstyle_types.QCommonStyle, widget: gen_qwidget_types.QWidget): void =
  fcQCommonStyle_virtualbase_polishWithWidget(self.h, widget.h)

proc miqt_exec_callback_cQCommonStyle_polishWithWidget(vtbl: pointer, self: pointer, widget: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCommonStyleVTable](vtbl)
  let self = QCommonStyle(h: self)
  let slotval1 = gen_qwidget_types.QWidget(h: widget)
  vtbl[].polishWithWidget(self, slotval1)

proc QCommonStyleunpolish*(self: gen_qcommonstyle_types.QCommonStyle, widget: gen_qwidget_types.QWidget): void =
  fcQCommonStyle_virtualbase_unpolish(self.h, widget.h)

proc miqt_exec_callback_cQCommonStyle_unpolish(vtbl: pointer, self: pointer, widget: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCommonStyleVTable](vtbl)
  let self = QCommonStyle(h: self)
  let slotval1 = gen_qwidget_types.QWidget(h: widget)
  vtbl[].unpolish(self, slotval1)

proc QCommonStyleunpolish*(self: gen_qcommonstyle_types.QCommonStyle, application: gen_qapplication_types.QApplication): void =
  fcQCommonStyle_virtualbase_unpolishWithApplication(self.h, application.h)

proc miqt_exec_callback_cQCommonStyle_unpolishWithApplication(vtbl: pointer, self: pointer, application: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCommonStyleVTable](vtbl)
  let self = QCommonStyle(h: self)
  let slotval1 = gen_qapplication_types.QApplication(h: application)
  vtbl[].unpolishWithApplication(self, slotval1)

proc QCommonStyleitemTextRect*(self: gen_qcommonstyle_types.QCommonStyle, fm: gen_qfontmetrics_types.QFontMetrics, r: gen_qrect_types.QRect, flags: cint, enabled: bool, text: string): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fcQCommonStyle_virtualbase_itemTextRect(self.h, fm.h, r.h, flags, enabled, struct_miqt_string(data: text, len: csize_t(len(text)))))

proc miqt_exec_callback_cQCommonStyle_itemTextRect(vtbl: pointer, self: pointer, fm: pointer, r: pointer, flags: cint, enabled: bool, text: struct_miqt_string): pointer {.cdecl.} =
  let vtbl = cast[ptr QCommonStyleVTable](vtbl)
  let self = QCommonStyle(h: self)
  let slotval1 = gen_qfontmetrics_types.QFontMetrics(h: fm)
  let slotval2 = gen_qrect_types.QRect(h: r)
  let slotval3 = flags
  let slotval4 = enabled
  let vtext_ms = text
  let vtextx_ret = string.fromBytes(toOpenArrayByte(vtext_ms.data, 0, int(vtext_ms.len)-1))
  c_free(vtext_ms.data)
  let slotval5 = vtextx_ret
  var virtualReturn = vtbl[].itemTextRect(self, slotval1, slotval2, slotval3, slotval4, slotval5)
  virtualReturn.h

proc QCommonStyleitemPixmapRect*(self: gen_qcommonstyle_types.QCommonStyle, r: gen_qrect_types.QRect, flags: cint, pixmap: gen_qpixmap_types.QPixmap): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fcQCommonStyle_virtualbase_itemPixmapRect(self.h, r.h, flags, pixmap.h))

proc miqt_exec_callback_cQCommonStyle_itemPixmapRect(vtbl: pointer, self: pointer, r: pointer, flags: cint, pixmap: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QCommonStyleVTable](vtbl)
  let self = QCommonStyle(h: self)
  let slotval1 = gen_qrect_types.QRect(h: r)
  let slotval2 = flags
  let slotval3 = gen_qpixmap_types.QPixmap(h: pixmap)
  var virtualReturn = vtbl[].itemPixmapRect(self, slotval1, slotval2, slotval3)
  virtualReturn.h

proc QCommonStyledrawItemText*(self: gen_qcommonstyle_types.QCommonStyle, painter: gen_qpainter_types.QPainter, rect: gen_qrect_types.QRect, flags: cint, pal: gen_qpalette_types.QPalette, enabled: bool, text: string, textRole: cint): void =
  fcQCommonStyle_virtualbase_drawItemText(self.h, painter.h, rect.h, flags, pal.h, enabled, struct_miqt_string(data: text, len: csize_t(len(text))), cint(textRole))

proc miqt_exec_callback_cQCommonStyle_drawItemText(vtbl: pointer, self: pointer, painter: pointer, rect: pointer, flags: cint, pal: pointer, enabled: bool, text: struct_miqt_string, textRole: cint): void {.cdecl.} =
  let vtbl = cast[ptr QCommonStyleVTable](vtbl)
  let self = QCommonStyle(h: self)
  let slotval1 = gen_qpainter_types.QPainter(h: painter)
  let slotval2 = gen_qrect_types.QRect(h: rect)
  let slotval3 = flags
  let slotval4 = gen_qpalette_types.QPalette(h: pal)
  let slotval5 = enabled
  let vtext_ms = text
  let vtextx_ret = string.fromBytes(toOpenArrayByte(vtext_ms.data, 0, int(vtext_ms.len)-1))
  c_free(vtext_ms.data)
  let slotval6 = vtextx_ret
  let slotval7 = cint(textRole)
  vtbl[].drawItemText(self, slotval1, slotval2, slotval3, slotval4, slotval5, slotval6, slotval7)

proc QCommonStyledrawItemPixmap*(self: gen_qcommonstyle_types.QCommonStyle, painter: gen_qpainter_types.QPainter, rect: gen_qrect_types.QRect, alignment: cint, pixmap: gen_qpixmap_types.QPixmap): void =
  fcQCommonStyle_virtualbase_drawItemPixmap(self.h, painter.h, rect.h, alignment, pixmap.h)

proc miqt_exec_callback_cQCommonStyle_drawItemPixmap(vtbl: pointer, self: pointer, painter: pointer, rect: pointer, alignment: cint, pixmap: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCommonStyleVTable](vtbl)
  let self = QCommonStyle(h: self)
  let slotval1 = gen_qpainter_types.QPainter(h: painter)
  let slotval2 = gen_qrect_types.QRect(h: rect)
  let slotval3 = alignment
  let slotval4 = gen_qpixmap_types.QPixmap(h: pixmap)
  vtbl[].drawItemPixmap(self, slotval1, slotval2, slotval3, slotval4)

proc QCommonStylestandardPalette*(self: gen_qcommonstyle_types.QCommonStyle, ): gen_qpalette_types.QPalette =
  gen_qpalette_types.QPalette(h: fcQCommonStyle_virtualbase_standardPalette(self.h))

proc miqt_exec_callback_cQCommonStyle_standardPalette(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QCommonStyleVTable](vtbl)
  let self = QCommonStyle(h: self)
  var virtualReturn = vtbl[].standardPalette(self)
  virtualReturn.h

proc QCommonStyleevent*(self: gen_qcommonstyle_types.QCommonStyle, event: gen_qcoreevent_types.QEvent): bool =
  fcQCommonStyle_virtualbase_event(self.h, event.h)

proc miqt_exec_callback_cQCommonStyle_event(vtbl: pointer, self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QCommonStyleVTable](vtbl)
  let self = QCommonStyle(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QCommonStyleeventFilter*(self: gen_qcommonstyle_types.QCommonStyle, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQCommonStyle_virtualbase_eventFilter(self.h, watched.h, event.h)

proc miqt_exec_callback_cQCommonStyle_eventFilter(vtbl: pointer, self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QCommonStyleVTable](vtbl)
  let self = QCommonStyle(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QCommonStyletimerEvent*(self: gen_qcommonstyle_types.QCommonStyle, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQCommonStyle_virtualbase_timerEvent(self.h, event.h)

proc miqt_exec_callback_cQCommonStyle_timerEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCommonStyleVTable](vtbl)
  let self = QCommonStyle(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)
  vtbl[].timerEvent(self, slotval1)

proc QCommonStylechildEvent*(self: gen_qcommonstyle_types.QCommonStyle, event: gen_qcoreevent_types.QChildEvent): void =
  fcQCommonStyle_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQCommonStyle_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCommonStyleVTable](vtbl)
  let self = QCommonStyle(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)
  vtbl[].childEvent(self, slotval1)

proc QCommonStylecustomEvent*(self: gen_qcommonstyle_types.QCommonStyle, event: gen_qcoreevent_types.QEvent): void =
  fcQCommonStyle_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQCommonStyle_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCommonStyleVTable](vtbl)
  let self = QCommonStyle(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].customEvent(self, slotval1)

proc QCommonStyleconnectNotify*(self: gen_qcommonstyle_types.QCommonStyle, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQCommonStyle_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQCommonStyle_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCommonStyleVTable](vtbl)
  let self = QCommonStyle(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].connectNotify(self, slotval1)

proc QCommonStyledisconnectNotify*(self: gen_qcommonstyle_types.QCommonStyle, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQCommonStyle_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQCommonStyle_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCommonStyleVTable](vtbl)
  let self = QCommonStyle(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].disconnectNotify(self, slotval1)

proc sender*(self: gen_qcommonstyle_types.QCommonStyle, ): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQCommonStyle_protectedbase_sender(self.h))

proc senderSignalIndex*(self: gen_qcommonstyle_types.QCommonStyle, ): cint =
  fcQCommonStyle_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qcommonstyle_types.QCommonStyle, signal: cstring): cint =
  fcQCommonStyle_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qcommonstyle_types.QCommonStyle, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQCommonStyle_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qcommonstyle_types.QCommonStyle,
    vtbl: ref QCommonStyleVTable = nil): gen_qcommonstyle_types.QCommonStyle =
  let vtbl = if vtbl == nil: new QCommonStyleVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQCommonStyleVTable, _: ptr cQCommonStyle) {.cdecl.} =
    let vtbl = cast[ref QCommonStyleVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQCommonStyle_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQCommonStyle_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQCommonStyle_metacall
  if not isNil(vtbl.drawPrimitive):
    vtbl[].vtbl.drawPrimitive = miqt_exec_callback_cQCommonStyle_drawPrimitive
  if not isNil(vtbl.drawControl):
    vtbl[].vtbl.drawControl = miqt_exec_callback_cQCommonStyle_drawControl
  if not isNil(vtbl.subElementRect):
    vtbl[].vtbl.subElementRect = miqt_exec_callback_cQCommonStyle_subElementRect
  if not isNil(vtbl.drawComplexControl):
    vtbl[].vtbl.drawComplexControl = miqt_exec_callback_cQCommonStyle_drawComplexControl
  if not isNil(vtbl.hitTestComplexControl):
    vtbl[].vtbl.hitTestComplexControl = miqt_exec_callback_cQCommonStyle_hitTestComplexControl
  if not isNil(vtbl.subControlRect):
    vtbl[].vtbl.subControlRect = miqt_exec_callback_cQCommonStyle_subControlRect
  if not isNil(vtbl.sizeFromContents):
    vtbl[].vtbl.sizeFromContents = miqt_exec_callback_cQCommonStyle_sizeFromContents
  if not isNil(vtbl.pixelMetric):
    vtbl[].vtbl.pixelMetric = miqt_exec_callback_cQCommonStyle_pixelMetric
  if not isNil(vtbl.styleHint):
    vtbl[].vtbl.styleHint = miqt_exec_callback_cQCommonStyle_styleHint
  if not isNil(vtbl.standardIcon):
    vtbl[].vtbl.standardIcon = miqt_exec_callback_cQCommonStyle_standardIcon
  if not isNil(vtbl.standardPixmap):
    vtbl[].vtbl.standardPixmap = miqt_exec_callback_cQCommonStyle_standardPixmap
  if not isNil(vtbl.generatedIconPixmap):
    vtbl[].vtbl.generatedIconPixmap = miqt_exec_callback_cQCommonStyle_generatedIconPixmap
  if not isNil(vtbl.layoutSpacing):
    vtbl[].vtbl.layoutSpacing = miqt_exec_callback_cQCommonStyle_layoutSpacing
  if not isNil(vtbl.polish):
    vtbl[].vtbl.polish = miqt_exec_callback_cQCommonStyle_polish
  if not isNil(vtbl.polishWithApp):
    vtbl[].vtbl.polishWithApp = miqt_exec_callback_cQCommonStyle_polishWithApp
  if not isNil(vtbl.polishWithWidget):
    vtbl[].vtbl.polishWithWidget = miqt_exec_callback_cQCommonStyle_polishWithWidget
  if not isNil(vtbl.unpolish):
    vtbl[].vtbl.unpolish = miqt_exec_callback_cQCommonStyle_unpolish
  if not isNil(vtbl.unpolishWithApplication):
    vtbl[].vtbl.unpolishWithApplication = miqt_exec_callback_cQCommonStyle_unpolishWithApplication
  if not isNil(vtbl.itemTextRect):
    vtbl[].vtbl.itemTextRect = miqt_exec_callback_cQCommonStyle_itemTextRect
  if not isNil(vtbl.itemPixmapRect):
    vtbl[].vtbl.itemPixmapRect = miqt_exec_callback_cQCommonStyle_itemPixmapRect
  if not isNil(vtbl.drawItemText):
    vtbl[].vtbl.drawItemText = miqt_exec_callback_cQCommonStyle_drawItemText
  if not isNil(vtbl.drawItemPixmap):
    vtbl[].vtbl.drawItemPixmap = miqt_exec_callback_cQCommonStyle_drawItemPixmap
  if not isNil(vtbl.standardPalette):
    vtbl[].vtbl.standardPalette = miqt_exec_callback_cQCommonStyle_standardPalette
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQCommonStyle_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQCommonStyle_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQCommonStyle_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQCommonStyle_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQCommonStyle_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQCommonStyle_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQCommonStyle_disconnectNotify
  gen_qcommonstyle_types.QCommonStyle(h: fcQCommonStyle_new(addr(vtbl[]), ))

proc staticMetaObject*(_: type gen_qcommonstyle_types.QCommonStyle): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQCommonStyle_staticMetaObject())
proc delete*(self: gen_qcommonstyle_types.QCommonStyle) =
  fcQCommonStyle_delete(self.h)
