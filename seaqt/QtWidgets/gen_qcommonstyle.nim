import ./qtwidgets_pkg

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


{.compile("gen_qcommonstyle.cpp", QtWidgetsCFlags).}


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

proc fcQCommonStyle_metaObject(self: pointer): pointer {.importc: "QCommonStyle_metaObject".}
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
proc fcQCommonStyle_vtbl(self: pointer): pointer {.importc: "QCommonStyle_vtbl".}
proc fcQCommonStyle_vdata(self: pointer): pointer {.importc: "QCommonStyle_vdata".}

type cQCommonStyleVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  drawPrimitive*: proc(self: pointer, pe: cint, opt: pointer, p: pointer, w: pointer): void {.cdecl, raises: [], gcsafe.}
  drawControl*: proc(self: pointer, element: cint, opt: pointer, p: pointer, w: pointer): void {.cdecl, raises: [], gcsafe.}
  subElementRect*: proc(self: pointer, r: cint, opt: pointer, widget: pointer): pointer {.cdecl, raises: [], gcsafe.}
  drawComplexControl*: proc(self: pointer, cc: cint, opt: pointer, p: pointer, w: pointer): void {.cdecl, raises: [], gcsafe.}
  hitTestComplexControl*: proc(self: pointer, cc: cint, opt: pointer, pt: pointer, w: pointer): cint {.cdecl, raises: [], gcsafe.}
  subControlRect*: proc(self: pointer, cc: cint, opt: pointer, sc: cint, w: pointer): pointer {.cdecl, raises: [], gcsafe.}
  sizeFromContents*: proc(self: pointer, ct: cint, opt: pointer, contentsSize: pointer, widget: pointer): pointer {.cdecl, raises: [], gcsafe.}
  pixelMetric*: proc(self: pointer, m: cint, opt: pointer, widget: pointer): cint {.cdecl, raises: [], gcsafe.}
  styleHint*: proc(self: pointer, sh: cint, opt: pointer, w: pointer, shret: pointer): cint {.cdecl, raises: [], gcsafe.}
  standardIcon*: proc(self: pointer, standardIcon: cint, opt: pointer, widget: pointer): pointer {.cdecl, raises: [], gcsafe.}
  standardPixmap*: proc(self: pointer, sp: cint, opt: pointer, widget: pointer): pointer {.cdecl, raises: [], gcsafe.}
  generatedIconPixmap*: proc(self: pointer, iconMode: cint, pixmap: pointer, opt: pointer): pointer {.cdecl, raises: [], gcsafe.}
  layoutSpacing*: proc(self: pointer, control1: cint, control2: cint, orientation: cint, option: pointer, widget: pointer): cint {.cdecl, raises: [], gcsafe.}
  polish*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  polishWithApp*: proc(self: pointer, app: pointer): void {.cdecl, raises: [], gcsafe.}
  polishWithWidget*: proc(self: pointer, widget: pointer): void {.cdecl, raises: [], gcsafe.}
  unpolish*: proc(self: pointer, widget: pointer): void {.cdecl, raises: [], gcsafe.}
  unpolishWithApplication*: proc(self: pointer, application: pointer): void {.cdecl, raises: [], gcsafe.}
  itemTextRect*: proc(self: pointer, fm: pointer, r: pointer, flags: cint, enabled: bool, text: struct_miqt_string): pointer {.cdecl, raises: [], gcsafe.}
  itemPixmapRect*: proc(self: pointer, r: pointer, flags: cint, pixmap: pointer): pointer {.cdecl, raises: [], gcsafe.}
  drawItemText*: proc(self: pointer, painter: pointer, rect: pointer, flags: cint, pal: pointer, enabled: bool, text: struct_miqt_string, textRole: cint): void {.cdecl, raises: [], gcsafe.}
  drawItemPixmap*: proc(self: pointer, painter: pointer, rect: pointer, alignment: cint, pixmap: pointer): void {.cdecl, raises: [], gcsafe.}
  standardPalette*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  event*: proc(self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQCommonStyle_virtualbase_metaObject(self: pointer): pointer {.importc: "QCommonStyle_virtualbase_metaObject".}
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
proc fcQCommonStyle_virtualbase_standardPalette(self: pointer): pointer {.importc: "QCommonStyle_virtualbase_standardPalette".}
proc fcQCommonStyle_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QCommonStyle_virtualbase_event".}
proc fcQCommonStyle_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QCommonStyle_virtualbase_eventFilter".}
proc fcQCommonStyle_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QCommonStyle_virtualbase_timerEvent".}
proc fcQCommonStyle_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QCommonStyle_virtualbase_childEvent".}
proc fcQCommonStyle_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QCommonStyle_virtualbase_customEvent".}
proc fcQCommonStyle_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QCommonStyle_virtualbase_connectNotify".}
proc fcQCommonStyle_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QCommonStyle_virtualbase_disconnectNotify".}
proc fcQCommonStyle_protectedbase_sender(self: pointer): pointer {.importc: "QCommonStyle_protectedbase_sender".}
proc fcQCommonStyle_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QCommonStyle_protectedbase_senderSignalIndex".}
proc fcQCommonStyle_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QCommonStyle_protectedbase_receivers".}
proc fcQCommonStyle_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QCommonStyle_protectedbase_isSignalConnected".}
proc fcQCommonStyle_new(vtbl, vdata: pointer): ptr cQCommonStyle {.importc: "QCommonStyle_new".}
proc fcQCommonStyle_staticMetaObject(): pointer {.importc: "QCommonStyle_staticMetaObject".}

proc metaObject*(self: gen_qcommonstyle_types.QCommonStyle): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQCommonStyle_metaObject(self.h), owned: false)

proc metacast*(self: gen_qcommonstyle_types.QCommonStyle, param1: cstring): pointer =
  fcQCommonStyle_metacast(self.h, param1)

proc metacall*(self: gen_qcommonstyle_types.QCommonStyle, param1: cint, param2: cint, param3: pointer): cint =
  fcQCommonStyle_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qcommonstyle_types.QCommonStyle, s: cstring): string =
  let v_ms = fcQCommonStyle_tr(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc drawPrimitive*(self: gen_qcommonstyle_types.QCommonStyle, pe: cint, opt: gen_qstyleoption_types.QStyleOption, p: gen_qpainter_types.QPainter, w: gen_qwidget_types.QWidget): void =
  fcQCommonStyle_drawPrimitive(self.h, cint(pe), opt.h, p.h, w.h)

proc drawControl*(self: gen_qcommonstyle_types.QCommonStyle, element: cint, opt: gen_qstyleoption_types.QStyleOption, p: gen_qpainter_types.QPainter, w: gen_qwidget_types.QWidget): void =
  fcQCommonStyle_drawControl(self.h, cint(element), opt.h, p.h, w.h)

proc subElementRect*(self: gen_qcommonstyle_types.QCommonStyle, r: cint, opt: gen_qstyleoption_types.QStyleOption, widget: gen_qwidget_types.QWidget): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fcQCommonStyle_subElementRect(self.h, cint(r), opt.h, widget.h), owned: true)

proc drawComplexControl*(self: gen_qcommonstyle_types.QCommonStyle, cc: cint, opt: gen_qstyleoption_types.QStyleOptionComplex, p: gen_qpainter_types.QPainter, w: gen_qwidget_types.QWidget): void =
  fcQCommonStyle_drawComplexControl(self.h, cint(cc), opt.h, p.h, w.h)

proc hitTestComplexControl*(self: gen_qcommonstyle_types.QCommonStyle, cc: cint, opt: gen_qstyleoption_types.QStyleOptionComplex, pt: gen_qpoint_types.QPoint, w: gen_qwidget_types.QWidget): cint =
  cint(fcQCommonStyle_hitTestComplexControl(self.h, cint(cc), opt.h, pt.h, w.h))

proc subControlRect*(self: gen_qcommonstyle_types.QCommonStyle, cc: cint, opt: gen_qstyleoption_types.QStyleOptionComplex, sc: cint, w: gen_qwidget_types.QWidget): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fcQCommonStyle_subControlRect(self.h, cint(cc), opt.h, cint(sc), w.h), owned: true)

proc sizeFromContents*(self: gen_qcommonstyle_types.QCommonStyle, ct: cint, opt: gen_qstyleoption_types.QStyleOption, contentsSize: gen_qsize_types.QSize, widget: gen_qwidget_types.QWidget): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQCommonStyle_sizeFromContents(self.h, cint(ct), opt.h, contentsSize.h, widget.h), owned: true)

proc pixelMetric*(self: gen_qcommonstyle_types.QCommonStyle, m: cint, opt: gen_qstyleoption_types.QStyleOption, widget: gen_qwidget_types.QWidget): cint =
  fcQCommonStyle_pixelMetric(self.h, cint(m), opt.h, widget.h)

proc styleHint*(self: gen_qcommonstyle_types.QCommonStyle, sh: cint, opt: gen_qstyleoption_types.QStyleOption, w: gen_qwidget_types.QWidget, shret: gen_qstyleoption_types.QStyleHintReturn): cint =
  fcQCommonStyle_styleHint(self.h, cint(sh), opt.h, w.h, shret.h)

proc standardIcon*(self: gen_qcommonstyle_types.QCommonStyle, standardIcon: cint, opt: gen_qstyleoption_types.QStyleOption, widget: gen_qwidget_types.QWidget): gen_qicon_types.QIcon =
  gen_qicon_types.QIcon(h: fcQCommonStyle_standardIcon(self.h, cint(standardIcon), opt.h, widget.h), owned: true)

proc standardPixmap*(self: gen_qcommonstyle_types.QCommonStyle, sp: cint, opt: gen_qstyleoption_types.QStyleOption, widget: gen_qwidget_types.QWidget): gen_qpixmap_types.QPixmap =
  gen_qpixmap_types.QPixmap(h: fcQCommonStyle_standardPixmap(self.h, cint(sp), opt.h, widget.h), owned: true)

proc generatedIconPixmap*(self: gen_qcommonstyle_types.QCommonStyle, iconMode: cint, pixmap: gen_qpixmap_types.QPixmap, opt: gen_qstyleoption_types.QStyleOption): gen_qpixmap_types.QPixmap =
  gen_qpixmap_types.QPixmap(h: fcQCommonStyle_generatedIconPixmap(self.h, cint(iconMode), pixmap.h, opt.h), owned: true)

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
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qcommonstyle_types.QCommonStyle, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQCommonStyle_tr3(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
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
type QCommonStyleitemTextRectProc* = proc(self: QCommonStyle, fm: gen_qfontmetrics_types.QFontMetrics, r: gen_qrect_types.QRect, flags: cint, enabled: bool, text: openArray[char]): gen_qrect_types.QRect {.raises: [], gcsafe.}
type QCommonStyleitemPixmapRectProc* = proc(self: QCommonStyle, r: gen_qrect_types.QRect, flags: cint, pixmap: gen_qpixmap_types.QPixmap): gen_qrect_types.QRect {.raises: [], gcsafe.}
type QCommonStyledrawItemTextProc* = proc(self: QCommonStyle, painter: gen_qpainter_types.QPainter, rect: gen_qrect_types.QRect, flags: cint, pal: gen_qpalette_types.QPalette, enabled: bool, text: openArray[char], textRole: cint): void {.raises: [], gcsafe.}
type QCommonStyledrawItemPixmapProc* = proc(self: QCommonStyle, painter: gen_qpainter_types.QPainter, rect: gen_qrect_types.QRect, alignment: cint, pixmap: gen_qpixmap_types.QPixmap): void {.raises: [], gcsafe.}
type QCommonStylestandardPaletteProc* = proc(self: QCommonStyle): gen_qpalette_types.QPalette {.raises: [], gcsafe.}
type QCommonStyleeventProc* = proc(self: QCommonStyle, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QCommonStyleeventFilterProc* = proc(self: QCommonStyle, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QCommonStyletimerEventProc* = proc(self: QCommonStyle, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QCommonStylechildEventProc* = proc(self: QCommonStyle, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QCommonStylecustomEventProc* = proc(self: QCommonStyle, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QCommonStyleconnectNotifyProc* = proc(self: QCommonStyle, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QCommonStyledisconnectNotifyProc* = proc(self: QCommonStyle, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}

type QCommonStyleVTable* {.inheritable, pure.} = object
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

proc QCommonStylemetaObject*(self: gen_qcommonstyle_types.QCommonStyle): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQCommonStyle_virtualbase_metaObject(self.h), owned: false)

proc QCommonStylemetacast*(self: gen_qcommonstyle_types.QCommonStyle, param1: cstring): pointer =
  fcQCommonStyle_virtualbase_metacast(self.h, param1)

proc QCommonStylemetacall*(self: gen_qcommonstyle_types.QCommonStyle, param1: cint, param2: cint, param3: pointer): cint =
  fcQCommonStyle_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc QCommonStyledrawPrimitive*(self: gen_qcommonstyle_types.QCommonStyle, pe: cint, opt: gen_qstyleoption_types.QStyleOption, p: gen_qpainter_types.QPainter, w: gen_qwidget_types.QWidget): void =
  fcQCommonStyle_virtualbase_drawPrimitive(self.h, cint(pe), opt.h, p.h, w.h)

proc QCommonStyledrawControl*(self: gen_qcommonstyle_types.QCommonStyle, element: cint, opt: gen_qstyleoption_types.QStyleOption, p: gen_qpainter_types.QPainter, w: gen_qwidget_types.QWidget): void =
  fcQCommonStyle_virtualbase_drawControl(self.h, cint(element), opt.h, p.h, w.h)

proc QCommonStylesubElementRect*(self: gen_qcommonstyle_types.QCommonStyle, r: cint, opt: gen_qstyleoption_types.QStyleOption, widget: gen_qwidget_types.QWidget): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fcQCommonStyle_virtualbase_subElementRect(self.h, cint(r), opt.h, widget.h), owned: true)

proc QCommonStyledrawComplexControl*(self: gen_qcommonstyle_types.QCommonStyle, cc: cint, opt: gen_qstyleoption_types.QStyleOptionComplex, p: gen_qpainter_types.QPainter, w: gen_qwidget_types.QWidget): void =
  fcQCommonStyle_virtualbase_drawComplexControl(self.h, cint(cc), opt.h, p.h, w.h)

proc QCommonStylehitTestComplexControl*(self: gen_qcommonstyle_types.QCommonStyle, cc: cint, opt: gen_qstyleoption_types.QStyleOptionComplex, pt: gen_qpoint_types.QPoint, w: gen_qwidget_types.QWidget): cint =
  cint(fcQCommonStyle_virtualbase_hitTestComplexControl(self.h, cint(cc), opt.h, pt.h, w.h))

proc QCommonStylesubControlRect*(self: gen_qcommonstyle_types.QCommonStyle, cc: cint, opt: gen_qstyleoption_types.QStyleOptionComplex, sc: cint, w: gen_qwidget_types.QWidget): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fcQCommonStyle_virtualbase_subControlRect(self.h, cint(cc), opt.h, cint(sc), w.h), owned: true)

proc QCommonStylesizeFromContents*(self: gen_qcommonstyle_types.QCommonStyle, ct: cint, opt: gen_qstyleoption_types.QStyleOption, contentsSize: gen_qsize_types.QSize, widget: gen_qwidget_types.QWidget): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQCommonStyle_virtualbase_sizeFromContents(self.h, cint(ct), opt.h, contentsSize.h, widget.h), owned: true)

proc QCommonStylepixelMetric*(self: gen_qcommonstyle_types.QCommonStyle, m: cint, opt: gen_qstyleoption_types.QStyleOption, widget: gen_qwidget_types.QWidget): cint =
  fcQCommonStyle_virtualbase_pixelMetric(self.h, cint(m), opt.h, widget.h)

proc QCommonStylestyleHint*(self: gen_qcommonstyle_types.QCommonStyle, sh: cint, opt: gen_qstyleoption_types.QStyleOption, w: gen_qwidget_types.QWidget, shret: gen_qstyleoption_types.QStyleHintReturn): cint =
  fcQCommonStyle_virtualbase_styleHint(self.h, cint(sh), opt.h, w.h, shret.h)

proc QCommonStylestandardIcon*(self: gen_qcommonstyle_types.QCommonStyle, standardIcon: cint, opt: gen_qstyleoption_types.QStyleOption, widget: gen_qwidget_types.QWidget): gen_qicon_types.QIcon =
  gen_qicon_types.QIcon(h: fcQCommonStyle_virtualbase_standardIcon(self.h, cint(standardIcon), opt.h, widget.h), owned: true)

proc QCommonStylestandardPixmap*(self: gen_qcommonstyle_types.QCommonStyle, sp: cint, opt: gen_qstyleoption_types.QStyleOption, widget: gen_qwidget_types.QWidget): gen_qpixmap_types.QPixmap =
  gen_qpixmap_types.QPixmap(h: fcQCommonStyle_virtualbase_standardPixmap(self.h, cint(sp), opt.h, widget.h), owned: true)

proc QCommonStylegeneratedIconPixmap*(self: gen_qcommonstyle_types.QCommonStyle, iconMode: cint, pixmap: gen_qpixmap_types.QPixmap, opt: gen_qstyleoption_types.QStyleOption): gen_qpixmap_types.QPixmap =
  gen_qpixmap_types.QPixmap(h: fcQCommonStyle_virtualbase_generatedIconPixmap(self.h, cint(iconMode), pixmap.h, opt.h), owned: true)

proc QCommonStylelayoutSpacing*(self: gen_qcommonstyle_types.QCommonStyle, control1: cint, control2: cint, orientation: cint, option: gen_qstyleoption_types.QStyleOption, widget: gen_qwidget_types.QWidget): cint =
  fcQCommonStyle_virtualbase_layoutSpacing(self.h, cint(control1), cint(control2), cint(orientation), option.h, widget.h)

proc QCommonStylepolish*(self: gen_qcommonstyle_types.QCommonStyle, param1: gen_qpalette_types.QPalette): void =
  fcQCommonStyle_virtualbase_polish(self.h, param1.h)

proc QCommonStylepolish*(self: gen_qcommonstyle_types.QCommonStyle, app: gen_qapplication_types.QApplication): void =
  fcQCommonStyle_virtualbase_polishWithApp(self.h, app.h)

proc QCommonStylepolish*(self: gen_qcommonstyle_types.QCommonStyle, widget: gen_qwidget_types.QWidget): void =
  fcQCommonStyle_virtualbase_polishWithWidget(self.h, widget.h)

proc QCommonStyleunpolish*(self: gen_qcommonstyle_types.QCommonStyle, widget: gen_qwidget_types.QWidget): void =
  fcQCommonStyle_virtualbase_unpolish(self.h, widget.h)

proc QCommonStyleunpolish*(self: gen_qcommonstyle_types.QCommonStyle, application: gen_qapplication_types.QApplication): void =
  fcQCommonStyle_virtualbase_unpolishWithApplication(self.h, application.h)

proc QCommonStyleitemTextRect*(self: gen_qcommonstyle_types.QCommonStyle, fm: gen_qfontmetrics_types.QFontMetrics, r: gen_qrect_types.QRect, flags: cint, enabled: bool, text: openArray[char]): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fcQCommonStyle_virtualbase_itemTextRect(self.h, fm.h, r.h, flags, enabled, struct_miqt_string(data: if len(text) > 0: addr text[0] else: nil, len: csize_t(len(text)))), owned: true)

proc QCommonStyleitemPixmapRect*(self: gen_qcommonstyle_types.QCommonStyle, r: gen_qrect_types.QRect, flags: cint, pixmap: gen_qpixmap_types.QPixmap): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fcQCommonStyle_virtualbase_itemPixmapRect(self.h, r.h, flags, pixmap.h), owned: true)

proc QCommonStyledrawItemText*(self: gen_qcommonstyle_types.QCommonStyle, painter: gen_qpainter_types.QPainter, rect: gen_qrect_types.QRect, flags: cint, pal: gen_qpalette_types.QPalette, enabled: bool, text: openArray[char], textRole: cint): void =
  fcQCommonStyle_virtualbase_drawItemText(self.h, painter.h, rect.h, flags, pal.h, enabled, struct_miqt_string(data: if len(text) > 0: addr text[0] else: nil, len: csize_t(len(text))), cint(textRole))

proc QCommonStyledrawItemPixmap*(self: gen_qcommonstyle_types.QCommonStyle, painter: gen_qpainter_types.QPainter, rect: gen_qrect_types.QRect, alignment: cint, pixmap: gen_qpixmap_types.QPixmap): void =
  fcQCommonStyle_virtualbase_drawItemPixmap(self.h, painter.h, rect.h, alignment, pixmap.h)

proc QCommonStylestandardPalette*(self: gen_qcommonstyle_types.QCommonStyle): gen_qpalette_types.QPalette =
  gen_qpalette_types.QPalette(h: fcQCommonStyle_virtualbase_standardPalette(self.h), owned: true)

proc QCommonStyleevent*(self: gen_qcommonstyle_types.QCommonStyle, event: gen_qcoreevent_types.QEvent): bool =
  fcQCommonStyle_virtualbase_event(self.h, event.h)

proc QCommonStyleeventFilter*(self: gen_qcommonstyle_types.QCommonStyle, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQCommonStyle_virtualbase_eventFilter(self.h, watched.h, event.h)

proc QCommonStyletimerEvent*(self: gen_qcommonstyle_types.QCommonStyle, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQCommonStyle_virtualbase_timerEvent(self.h, event.h)

proc QCommonStylechildEvent*(self: gen_qcommonstyle_types.QCommonStyle, event: gen_qcoreevent_types.QChildEvent): void =
  fcQCommonStyle_virtualbase_childEvent(self.h, event.h)

proc QCommonStylecustomEvent*(self: gen_qcommonstyle_types.QCommonStyle, event: gen_qcoreevent_types.QEvent): void =
  fcQCommonStyle_virtualbase_customEvent(self.h, event.h)

proc QCommonStyleconnectNotify*(self: gen_qcommonstyle_types.QCommonStyle, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQCommonStyle_virtualbase_connectNotify(self.h, signal.h)

proc QCommonStyledisconnectNotify*(self: gen_qcommonstyle_types.QCommonStyle, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQCommonStyle_virtualbase_disconnectNotify(self.h, signal.h)


proc fcQCommonStyle_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QCommonStyleVTable](fcQCommonStyle_vdata(self))
  let self = QCommonStyle(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQCommonStyle_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QCommonStyleVTable](fcQCommonStyle_vdata(self))
  let self = QCommonStyle(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc fcQCommonStyle_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QCommonStyleVTable](fcQCommonStyle_vdata(self))
  let self = QCommonStyle(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc fcQCommonStyle_vtable_callback_drawPrimitive(self: pointer, pe: cint, opt: pointer, p: pointer, w: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCommonStyleVTable](fcQCommonStyle_vdata(self))
  let self = QCommonStyle(h: self)
  let slotval1 = cint(pe)
  let slotval2 = gen_qstyleoption_types.QStyleOption(h: opt, owned: false)
  let slotval3 = gen_qpainter_types.QPainter(h: p, owned: false)
  let slotval4 = gen_qwidget_types.QWidget(h: w, owned: false)
  vtbl[].drawPrimitive(self, slotval1, slotval2, slotval3, slotval4)

proc fcQCommonStyle_vtable_callback_drawControl(self: pointer, element: cint, opt: pointer, p: pointer, w: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCommonStyleVTable](fcQCommonStyle_vdata(self))
  let self = QCommonStyle(h: self)
  let slotval1 = cint(element)
  let slotval2 = gen_qstyleoption_types.QStyleOption(h: opt, owned: false)
  let slotval3 = gen_qpainter_types.QPainter(h: p, owned: false)
  let slotval4 = gen_qwidget_types.QWidget(h: w, owned: false)
  vtbl[].drawControl(self, slotval1, slotval2, slotval3, slotval4)

proc fcQCommonStyle_vtable_callback_subElementRect(self: pointer, r: cint, opt: pointer, widget: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QCommonStyleVTable](fcQCommonStyle_vdata(self))
  let self = QCommonStyle(h: self)
  let slotval1 = cint(r)
  let slotval2 = gen_qstyleoption_types.QStyleOption(h: opt, owned: false)
  let slotval3 = gen_qwidget_types.QWidget(h: widget, owned: false)
  var virtualReturn = vtbl[].subElementRect(self, slotval1, slotval2, slotval3)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQCommonStyle_vtable_callback_drawComplexControl(self: pointer, cc: cint, opt: pointer, p: pointer, w: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCommonStyleVTable](fcQCommonStyle_vdata(self))
  let self = QCommonStyle(h: self)
  let slotval1 = cint(cc)
  let slotval2 = gen_qstyleoption_types.QStyleOptionComplex(h: opt, owned: false)
  let slotval3 = gen_qpainter_types.QPainter(h: p, owned: false)
  let slotval4 = gen_qwidget_types.QWidget(h: w, owned: false)
  vtbl[].drawComplexControl(self, slotval1, slotval2, slotval3, slotval4)

proc fcQCommonStyle_vtable_callback_hitTestComplexControl(self: pointer, cc: cint, opt: pointer, pt: pointer, w: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QCommonStyleVTable](fcQCommonStyle_vdata(self))
  let self = QCommonStyle(h: self)
  let slotval1 = cint(cc)
  let slotval2 = gen_qstyleoption_types.QStyleOptionComplex(h: opt, owned: false)
  let slotval3 = gen_qpoint_types.QPoint(h: pt, owned: false)
  let slotval4 = gen_qwidget_types.QWidget(h: w, owned: false)
  var virtualReturn = vtbl[].hitTestComplexControl(self, slotval1, slotval2, slotval3, slotval4)
  cint(virtualReturn)

proc fcQCommonStyle_vtable_callback_subControlRect(self: pointer, cc: cint, opt: pointer, sc: cint, w: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QCommonStyleVTable](fcQCommonStyle_vdata(self))
  let self = QCommonStyle(h: self)
  let slotval1 = cint(cc)
  let slotval2 = gen_qstyleoption_types.QStyleOptionComplex(h: opt, owned: false)
  let slotval3 = cint(sc)
  let slotval4 = gen_qwidget_types.QWidget(h: w, owned: false)
  var virtualReturn = vtbl[].subControlRect(self, slotval1, slotval2, slotval3, slotval4)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQCommonStyle_vtable_callback_sizeFromContents(self: pointer, ct: cint, opt: pointer, contentsSize: pointer, widget: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QCommonStyleVTable](fcQCommonStyle_vdata(self))
  let self = QCommonStyle(h: self)
  let slotval1 = cint(ct)
  let slotval2 = gen_qstyleoption_types.QStyleOption(h: opt, owned: false)
  let slotval3 = gen_qsize_types.QSize(h: contentsSize, owned: false)
  let slotval4 = gen_qwidget_types.QWidget(h: widget, owned: false)
  var virtualReturn = vtbl[].sizeFromContents(self, slotval1, slotval2, slotval3, slotval4)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQCommonStyle_vtable_callback_pixelMetric(self: pointer, m: cint, opt: pointer, widget: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QCommonStyleVTable](fcQCommonStyle_vdata(self))
  let self = QCommonStyle(h: self)
  let slotval1 = cint(m)
  let slotval2 = gen_qstyleoption_types.QStyleOption(h: opt, owned: false)
  let slotval3 = gen_qwidget_types.QWidget(h: widget, owned: false)
  var virtualReturn = vtbl[].pixelMetric(self, slotval1, slotval2, slotval3)
  virtualReturn

proc fcQCommonStyle_vtable_callback_styleHint(self: pointer, sh: cint, opt: pointer, w: pointer, shret: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QCommonStyleVTable](fcQCommonStyle_vdata(self))
  let self = QCommonStyle(h: self)
  let slotval1 = cint(sh)
  let slotval2 = gen_qstyleoption_types.QStyleOption(h: opt, owned: false)
  let slotval3 = gen_qwidget_types.QWidget(h: w, owned: false)
  let slotval4 = gen_qstyleoption_types.QStyleHintReturn(h: shret, owned: false)
  var virtualReturn = vtbl[].styleHint(self, slotval1, slotval2, slotval3, slotval4)
  virtualReturn

proc fcQCommonStyle_vtable_callback_standardIcon(self: pointer, standardIcon: cint, opt: pointer, widget: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QCommonStyleVTable](fcQCommonStyle_vdata(self))
  let self = QCommonStyle(h: self)
  let slotval1 = cint(standardIcon)
  let slotval2 = gen_qstyleoption_types.QStyleOption(h: opt, owned: false)
  let slotval3 = gen_qwidget_types.QWidget(h: widget, owned: false)
  var virtualReturn = vtbl[].standardIcon(self, slotval1, slotval2, slotval3)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQCommonStyle_vtable_callback_standardPixmap(self: pointer, sp: cint, opt: pointer, widget: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QCommonStyleVTable](fcQCommonStyle_vdata(self))
  let self = QCommonStyle(h: self)
  let slotval1 = cint(sp)
  let slotval2 = gen_qstyleoption_types.QStyleOption(h: opt, owned: false)
  let slotval3 = gen_qwidget_types.QWidget(h: widget, owned: false)
  var virtualReturn = vtbl[].standardPixmap(self, slotval1, slotval2, slotval3)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQCommonStyle_vtable_callback_generatedIconPixmap(self: pointer, iconMode: cint, pixmap: pointer, opt: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QCommonStyleVTable](fcQCommonStyle_vdata(self))
  let self = QCommonStyle(h: self)
  let slotval1 = cint(iconMode)
  let slotval2 = gen_qpixmap_types.QPixmap(h: pixmap, owned: false)
  let slotval3 = gen_qstyleoption_types.QStyleOption(h: opt, owned: false)
  var virtualReturn = vtbl[].generatedIconPixmap(self, slotval1, slotval2, slotval3)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQCommonStyle_vtable_callback_layoutSpacing(self: pointer, control1: cint, control2: cint, orientation: cint, option: pointer, widget: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QCommonStyleVTable](fcQCommonStyle_vdata(self))
  let self = QCommonStyle(h: self)
  let slotval1 = cint(control1)
  let slotval2 = cint(control2)
  let slotval3 = cint(orientation)
  let slotval4 = gen_qstyleoption_types.QStyleOption(h: option, owned: false)
  let slotval5 = gen_qwidget_types.QWidget(h: widget, owned: false)
  var virtualReturn = vtbl[].layoutSpacing(self, slotval1, slotval2, slotval3, slotval4, slotval5)
  virtualReturn

proc fcQCommonStyle_vtable_callback_polish(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCommonStyleVTable](fcQCommonStyle_vdata(self))
  let self = QCommonStyle(h: self)
  let slotval1 = gen_qpalette_types.QPalette(h: param1, owned: false)
  vtbl[].polish(self, slotval1)

proc fcQCommonStyle_vtable_callback_polishWithApp(self: pointer, app: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCommonStyleVTable](fcQCommonStyle_vdata(self))
  let self = QCommonStyle(h: self)
  let slotval1 = gen_qapplication_types.QApplication(h: app, owned: false)
  vtbl[].polishWithApp(self, slotval1)

proc fcQCommonStyle_vtable_callback_polishWithWidget(self: pointer, widget: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCommonStyleVTable](fcQCommonStyle_vdata(self))
  let self = QCommonStyle(h: self)
  let slotval1 = gen_qwidget_types.QWidget(h: widget, owned: false)
  vtbl[].polishWithWidget(self, slotval1)

proc fcQCommonStyle_vtable_callback_unpolish(self: pointer, widget: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCommonStyleVTable](fcQCommonStyle_vdata(self))
  let self = QCommonStyle(h: self)
  let slotval1 = gen_qwidget_types.QWidget(h: widget, owned: false)
  vtbl[].unpolish(self, slotval1)

proc fcQCommonStyle_vtable_callback_unpolishWithApplication(self: pointer, application: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCommonStyleVTable](fcQCommonStyle_vdata(self))
  let self = QCommonStyle(h: self)
  let slotval1 = gen_qapplication_types.QApplication(h: application, owned: false)
  vtbl[].unpolishWithApplication(self, slotval1)

proc fcQCommonStyle_vtable_callback_itemTextRect(self: pointer, fm: pointer, r: pointer, flags: cint, enabled: bool, text: struct_miqt_string): pointer {.cdecl.} =
  let vtbl = cast[ptr QCommonStyleVTable](fcQCommonStyle_vdata(self))
  let self = QCommonStyle(h: self)
  let slotval1 = gen_qfontmetrics_types.QFontMetrics(h: fm, owned: false)
  let slotval2 = gen_qrect_types.QRect(h: r, owned: false)
  let slotval3 = flags
  let slotval4 = enabled
  let vtext_ms = text
  let vtextx_ret = string.fromBytes(vtext_ms)
  c_free(vtext_ms.data)
  let slotval5 = vtextx_ret
  var virtualReturn = vtbl[].itemTextRect(self, slotval1, slotval2, slotval3, slotval4, slotval5)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQCommonStyle_vtable_callback_itemPixmapRect(self: pointer, r: pointer, flags: cint, pixmap: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QCommonStyleVTable](fcQCommonStyle_vdata(self))
  let self = QCommonStyle(h: self)
  let slotval1 = gen_qrect_types.QRect(h: r, owned: false)
  let slotval2 = flags
  let slotval3 = gen_qpixmap_types.QPixmap(h: pixmap, owned: false)
  var virtualReturn = vtbl[].itemPixmapRect(self, slotval1, slotval2, slotval3)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQCommonStyle_vtable_callback_drawItemText(self: pointer, painter: pointer, rect: pointer, flags: cint, pal: pointer, enabled: bool, text: struct_miqt_string, textRole: cint): void {.cdecl.} =
  let vtbl = cast[ptr QCommonStyleVTable](fcQCommonStyle_vdata(self))
  let self = QCommonStyle(h: self)
  let slotval1 = gen_qpainter_types.QPainter(h: painter, owned: false)
  let slotval2 = gen_qrect_types.QRect(h: rect, owned: false)
  let slotval3 = flags
  let slotval4 = gen_qpalette_types.QPalette(h: pal, owned: false)
  let slotval5 = enabled
  let vtext_ms = text
  let vtextx_ret = string.fromBytes(vtext_ms)
  c_free(vtext_ms.data)
  let slotval6 = vtextx_ret
  let slotval7 = cint(textRole)
  vtbl[].drawItemText(self, slotval1, slotval2, slotval3, slotval4, slotval5, slotval6, slotval7)

proc fcQCommonStyle_vtable_callback_drawItemPixmap(self: pointer, painter: pointer, rect: pointer, alignment: cint, pixmap: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCommonStyleVTable](fcQCommonStyle_vdata(self))
  let self = QCommonStyle(h: self)
  let slotval1 = gen_qpainter_types.QPainter(h: painter, owned: false)
  let slotval2 = gen_qrect_types.QRect(h: rect, owned: false)
  let slotval3 = alignment
  let slotval4 = gen_qpixmap_types.QPixmap(h: pixmap, owned: false)
  vtbl[].drawItemPixmap(self, slotval1, slotval2, slotval3, slotval4)

proc fcQCommonStyle_vtable_callback_standardPalette(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QCommonStyleVTable](fcQCommonStyle_vdata(self))
  let self = QCommonStyle(h: self)
  var virtualReturn = vtbl[].standardPalette(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQCommonStyle_vtable_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QCommonStyleVTable](fcQCommonStyle_vdata(self))
  let self = QCommonStyle(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc fcQCommonStyle_vtable_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QCommonStyleVTable](fcQCommonStyle_vdata(self))
  let self = QCommonStyle(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc fcQCommonStyle_vtable_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCommonStyleVTable](fcQCommonStyle_vdata(self))
  let self = QCommonStyle(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc fcQCommonStyle_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCommonStyleVTable](fcQCommonStyle_vdata(self))
  let self = QCommonStyle(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc fcQCommonStyle_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCommonStyleVTable](fcQCommonStyle_vdata(self))
  let self = QCommonStyle(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc fcQCommonStyle_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCommonStyleVTable](fcQCommonStyle_vdata(self))
  let self = QCommonStyle(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc fcQCommonStyle_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCommonStyleVTable](fcQCommonStyle_vdata(self))
  let self = QCommonStyle(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQCommonStyle* {.inheritable.} = ref object of QCommonStyle
  vtbl*: cQCommonStyleVTable

method metaObject*(self: VirtualQCommonStyle): gen_qobjectdefs_types.QMetaObject {.base.} =
  QCommonStylemetaObject(self[])
method metacast*(self: VirtualQCommonStyle, param1: cstring): pointer {.base.} =
  QCommonStylemetacast(self[], param1)
method metacall*(self: VirtualQCommonStyle, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QCommonStylemetacall(self[], param1, param2, param3)
method drawPrimitive*(self: VirtualQCommonStyle, pe: cint, opt: gen_qstyleoption_types.QStyleOption, p: gen_qpainter_types.QPainter, w: gen_qwidget_types.QWidget): void {.base.} =
  QCommonStyledrawPrimitive(self[], pe, opt, p, w)
method drawControl*(self: VirtualQCommonStyle, element: cint, opt: gen_qstyleoption_types.QStyleOption, p: gen_qpainter_types.QPainter, w: gen_qwidget_types.QWidget): void {.base.} =
  QCommonStyledrawControl(self[], element, opt, p, w)
method subElementRect*(self: VirtualQCommonStyle, r: cint, opt: gen_qstyleoption_types.QStyleOption, widget: gen_qwidget_types.QWidget): gen_qrect_types.QRect {.base.} =
  QCommonStylesubElementRect(self[], r, opt, widget)
method drawComplexControl*(self: VirtualQCommonStyle, cc: cint, opt: gen_qstyleoption_types.QStyleOptionComplex, p: gen_qpainter_types.QPainter, w: gen_qwidget_types.QWidget): void {.base.} =
  QCommonStyledrawComplexControl(self[], cc, opt, p, w)
method hitTestComplexControl*(self: VirtualQCommonStyle, cc: cint, opt: gen_qstyleoption_types.QStyleOptionComplex, pt: gen_qpoint_types.QPoint, w: gen_qwidget_types.QWidget): cint {.base.} =
  QCommonStylehitTestComplexControl(self[], cc, opt, pt, w)
method subControlRect*(self: VirtualQCommonStyle, cc: cint, opt: gen_qstyleoption_types.QStyleOptionComplex, sc: cint, w: gen_qwidget_types.QWidget): gen_qrect_types.QRect {.base.} =
  QCommonStylesubControlRect(self[], cc, opt, sc, w)
method sizeFromContents*(self: VirtualQCommonStyle, ct: cint, opt: gen_qstyleoption_types.QStyleOption, contentsSize: gen_qsize_types.QSize, widget: gen_qwidget_types.QWidget): gen_qsize_types.QSize {.base.} =
  QCommonStylesizeFromContents(self[], ct, opt, contentsSize, widget)
method pixelMetric*(self: VirtualQCommonStyle, m: cint, opt: gen_qstyleoption_types.QStyleOption, widget: gen_qwidget_types.QWidget): cint {.base.} =
  QCommonStylepixelMetric(self[], m, opt, widget)
method styleHint*(self: VirtualQCommonStyle, sh: cint, opt: gen_qstyleoption_types.QStyleOption, w: gen_qwidget_types.QWidget, shret: gen_qstyleoption_types.QStyleHintReturn): cint {.base.} =
  QCommonStylestyleHint(self[], sh, opt, w, shret)
method standardIcon*(self: VirtualQCommonStyle, standardIcon: cint, opt: gen_qstyleoption_types.QStyleOption, widget: gen_qwidget_types.QWidget): gen_qicon_types.QIcon {.base.} =
  QCommonStylestandardIcon(self[], standardIcon, opt, widget)
method standardPixmap*(self: VirtualQCommonStyle, sp: cint, opt: gen_qstyleoption_types.QStyleOption, widget: gen_qwidget_types.QWidget): gen_qpixmap_types.QPixmap {.base.} =
  QCommonStylestandardPixmap(self[], sp, opt, widget)
method generatedIconPixmap*(self: VirtualQCommonStyle, iconMode: cint, pixmap: gen_qpixmap_types.QPixmap, opt: gen_qstyleoption_types.QStyleOption): gen_qpixmap_types.QPixmap {.base.} =
  QCommonStylegeneratedIconPixmap(self[], iconMode, pixmap, opt)
method layoutSpacing*(self: VirtualQCommonStyle, control1: cint, control2: cint, orientation: cint, option: gen_qstyleoption_types.QStyleOption, widget: gen_qwidget_types.QWidget): cint {.base.} =
  QCommonStylelayoutSpacing(self[], control1, control2, orientation, option, widget)
method polish*(self: VirtualQCommonStyle, param1: gen_qpalette_types.QPalette): void {.base.} =
  QCommonStylepolish(self[], param1)
method polish*(self: VirtualQCommonStyle, app: gen_qapplication_types.QApplication): void {.base.} =
  QCommonStylepolish(self[], app)
method polish*(self: VirtualQCommonStyle, widget: gen_qwidget_types.QWidget): void {.base.} =
  QCommonStylepolish(self[], widget)
method unpolish*(self: VirtualQCommonStyle, widget: gen_qwidget_types.QWidget): void {.base.} =
  QCommonStyleunpolish(self[], widget)
method unpolish*(self: VirtualQCommonStyle, application: gen_qapplication_types.QApplication): void {.base.} =
  QCommonStyleunpolish(self[], application)
method itemTextRect*(self: VirtualQCommonStyle, fm: gen_qfontmetrics_types.QFontMetrics, r: gen_qrect_types.QRect, flags: cint, enabled: bool, text: openArray[char]): gen_qrect_types.QRect {.base.} =
  QCommonStyleitemTextRect(self[], fm, r, flags, enabled, text)
method itemPixmapRect*(self: VirtualQCommonStyle, r: gen_qrect_types.QRect, flags: cint, pixmap: gen_qpixmap_types.QPixmap): gen_qrect_types.QRect {.base.} =
  QCommonStyleitemPixmapRect(self[], r, flags, pixmap)
method drawItemText*(self: VirtualQCommonStyle, painter: gen_qpainter_types.QPainter, rect: gen_qrect_types.QRect, flags: cint, pal: gen_qpalette_types.QPalette, enabled: bool, text: openArray[char], textRole: cint): void {.base.} =
  QCommonStyledrawItemText(self[], painter, rect, flags, pal, enabled, text, textRole)
method drawItemPixmap*(self: VirtualQCommonStyle, painter: gen_qpainter_types.QPainter, rect: gen_qrect_types.QRect, alignment: cint, pixmap: gen_qpixmap_types.QPixmap): void {.base.} =
  QCommonStyledrawItemPixmap(self[], painter, rect, alignment, pixmap)
method standardPalette*(self: VirtualQCommonStyle): gen_qpalette_types.QPalette {.base.} =
  QCommonStylestandardPalette(self[])
method event*(self: VirtualQCommonStyle, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QCommonStyleevent(self[], event)
method eventFilter*(self: VirtualQCommonStyle, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QCommonStyleeventFilter(self[], watched, event)
method timerEvent*(self: VirtualQCommonStyle, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QCommonStyletimerEvent(self[], event)
method childEvent*(self: VirtualQCommonStyle, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QCommonStylechildEvent(self[], event)
method customEvent*(self: VirtualQCommonStyle, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QCommonStylecustomEvent(self[], event)
method connectNotify*(self: VirtualQCommonStyle, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QCommonStyleconnectNotify(self[], signal)
method disconnectNotify*(self: VirtualQCommonStyle, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QCommonStyledisconnectNotify(self[], signal)

proc fcQCommonStyle_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQCommonStyle](fcQCommonStyle_vdata(self))
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQCommonStyle_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQCommonStyle](fcQCommonStyle_vdata(self))
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

proc fcQCommonStyle_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQCommonStyle](fcQCommonStyle_vdata(self))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

proc fcQCommonStyle_method_callback_drawPrimitive(self: pointer, pe: cint, opt: pointer, p: pointer, w: pointer): void {.cdecl.} =
  let inst = cast[VirtualQCommonStyle](fcQCommonStyle_vdata(self))
  let slotval1 = cint(pe)
  let slotval2 = gen_qstyleoption_types.QStyleOption(h: opt, owned: false)
  let slotval3 = gen_qpainter_types.QPainter(h: p, owned: false)
  let slotval4 = gen_qwidget_types.QWidget(h: w, owned: false)
  inst.drawPrimitive(slotval1, slotval2, slotval3, slotval4)

proc fcQCommonStyle_method_callback_drawControl(self: pointer, element: cint, opt: pointer, p: pointer, w: pointer): void {.cdecl.} =
  let inst = cast[VirtualQCommonStyle](fcQCommonStyle_vdata(self))
  let slotval1 = cint(element)
  let slotval2 = gen_qstyleoption_types.QStyleOption(h: opt, owned: false)
  let slotval3 = gen_qpainter_types.QPainter(h: p, owned: false)
  let slotval4 = gen_qwidget_types.QWidget(h: w, owned: false)
  inst.drawControl(slotval1, slotval2, slotval3, slotval4)

proc fcQCommonStyle_method_callback_subElementRect(self: pointer, r: cint, opt: pointer, widget: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQCommonStyle](fcQCommonStyle_vdata(self))
  let slotval1 = cint(r)
  let slotval2 = gen_qstyleoption_types.QStyleOption(h: opt, owned: false)
  let slotval3 = gen_qwidget_types.QWidget(h: widget, owned: false)
  var virtualReturn = inst.subElementRect(slotval1, slotval2, slotval3)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQCommonStyle_method_callback_drawComplexControl(self: pointer, cc: cint, opt: pointer, p: pointer, w: pointer): void {.cdecl.} =
  let inst = cast[VirtualQCommonStyle](fcQCommonStyle_vdata(self))
  let slotval1 = cint(cc)
  let slotval2 = gen_qstyleoption_types.QStyleOptionComplex(h: opt, owned: false)
  let slotval3 = gen_qpainter_types.QPainter(h: p, owned: false)
  let slotval4 = gen_qwidget_types.QWidget(h: w, owned: false)
  inst.drawComplexControl(slotval1, slotval2, slotval3, slotval4)

proc fcQCommonStyle_method_callback_hitTestComplexControl(self: pointer, cc: cint, opt: pointer, pt: pointer, w: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQCommonStyle](fcQCommonStyle_vdata(self))
  let slotval1 = cint(cc)
  let slotval2 = gen_qstyleoption_types.QStyleOptionComplex(h: opt, owned: false)
  let slotval3 = gen_qpoint_types.QPoint(h: pt, owned: false)
  let slotval4 = gen_qwidget_types.QWidget(h: w, owned: false)
  var virtualReturn = inst.hitTestComplexControl(slotval1, slotval2, slotval3, slotval4)
  cint(virtualReturn)

proc fcQCommonStyle_method_callback_subControlRect(self: pointer, cc: cint, opt: pointer, sc: cint, w: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQCommonStyle](fcQCommonStyle_vdata(self))
  let slotval1 = cint(cc)
  let slotval2 = gen_qstyleoption_types.QStyleOptionComplex(h: opt, owned: false)
  let slotval3 = cint(sc)
  let slotval4 = gen_qwidget_types.QWidget(h: w, owned: false)
  var virtualReturn = inst.subControlRect(slotval1, slotval2, slotval3, slotval4)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQCommonStyle_method_callback_sizeFromContents(self: pointer, ct: cint, opt: pointer, contentsSize: pointer, widget: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQCommonStyle](fcQCommonStyle_vdata(self))
  let slotval1 = cint(ct)
  let slotval2 = gen_qstyleoption_types.QStyleOption(h: opt, owned: false)
  let slotval3 = gen_qsize_types.QSize(h: contentsSize, owned: false)
  let slotval4 = gen_qwidget_types.QWidget(h: widget, owned: false)
  var virtualReturn = inst.sizeFromContents(slotval1, slotval2, slotval3, slotval4)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQCommonStyle_method_callback_pixelMetric(self: pointer, m: cint, opt: pointer, widget: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQCommonStyle](fcQCommonStyle_vdata(self))
  let slotval1 = cint(m)
  let slotval2 = gen_qstyleoption_types.QStyleOption(h: opt, owned: false)
  let slotval3 = gen_qwidget_types.QWidget(h: widget, owned: false)
  var virtualReturn = inst.pixelMetric(slotval1, slotval2, slotval3)
  virtualReturn

proc fcQCommonStyle_method_callback_styleHint(self: pointer, sh: cint, opt: pointer, w: pointer, shret: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQCommonStyle](fcQCommonStyle_vdata(self))
  let slotval1 = cint(sh)
  let slotval2 = gen_qstyleoption_types.QStyleOption(h: opt, owned: false)
  let slotval3 = gen_qwidget_types.QWidget(h: w, owned: false)
  let slotval4 = gen_qstyleoption_types.QStyleHintReturn(h: shret, owned: false)
  var virtualReturn = inst.styleHint(slotval1, slotval2, slotval3, slotval4)
  virtualReturn

proc fcQCommonStyle_method_callback_standardIcon(self: pointer, standardIcon: cint, opt: pointer, widget: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQCommonStyle](fcQCommonStyle_vdata(self))
  let slotval1 = cint(standardIcon)
  let slotval2 = gen_qstyleoption_types.QStyleOption(h: opt, owned: false)
  let slotval3 = gen_qwidget_types.QWidget(h: widget, owned: false)
  var virtualReturn = inst.standardIcon(slotval1, slotval2, slotval3)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQCommonStyle_method_callback_standardPixmap(self: pointer, sp: cint, opt: pointer, widget: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQCommonStyle](fcQCommonStyle_vdata(self))
  let slotval1 = cint(sp)
  let slotval2 = gen_qstyleoption_types.QStyleOption(h: opt, owned: false)
  let slotval3 = gen_qwidget_types.QWidget(h: widget, owned: false)
  var virtualReturn = inst.standardPixmap(slotval1, slotval2, slotval3)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQCommonStyle_method_callback_generatedIconPixmap(self: pointer, iconMode: cint, pixmap: pointer, opt: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQCommonStyle](fcQCommonStyle_vdata(self))
  let slotval1 = cint(iconMode)
  let slotval2 = gen_qpixmap_types.QPixmap(h: pixmap, owned: false)
  let slotval3 = gen_qstyleoption_types.QStyleOption(h: opt, owned: false)
  var virtualReturn = inst.generatedIconPixmap(slotval1, slotval2, slotval3)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQCommonStyle_method_callback_layoutSpacing(self: pointer, control1: cint, control2: cint, orientation: cint, option: pointer, widget: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQCommonStyle](fcQCommonStyle_vdata(self))
  let slotval1 = cint(control1)
  let slotval2 = cint(control2)
  let slotval3 = cint(orientation)
  let slotval4 = gen_qstyleoption_types.QStyleOption(h: option, owned: false)
  let slotval5 = gen_qwidget_types.QWidget(h: widget, owned: false)
  var virtualReturn = inst.layoutSpacing(slotval1, slotval2, slotval3, slotval4, slotval5)
  virtualReturn

proc fcQCommonStyle_method_callback_polish(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQCommonStyle](fcQCommonStyle_vdata(self))
  let slotval1 = gen_qpalette_types.QPalette(h: param1, owned: false)
  inst.polish(slotval1)

proc fcQCommonStyle_method_callback_polishWithApp(self: pointer, app: pointer): void {.cdecl.} =
  let inst = cast[VirtualQCommonStyle](fcQCommonStyle_vdata(self))
  let slotval1 = gen_qapplication_types.QApplication(h: app, owned: false)
  inst.polish(slotval1)

proc fcQCommonStyle_method_callback_polishWithWidget(self: pointer, widget: pointer): void {.cdecl.} =
  let inst = cast[VirtualQCommonStyle](fcQCommonStyle_vdata(self))
  let slotval1 = gen_qwidget_types.QWidget(h: widget, owned: false)
  inst.polish(slotval1)

proc fcQCommonStyle_method_callback_unpolish(self: pointer, widget: pointer): void {.cdecl.} =
  let inst = cast[VirtualQCommonStyle](fcQCommonStyle_vdata(self))
  let slotval1 = gen_qwidget_types.QWidget(h: widget, owned: false)
  inst.unpolish(slotval1)

proc fcQCommonStyle_method_callback_unpolishWithApplication(self: pointer, application: pointer): void {.cdecl.} =
  let inst = cast[VirtualQCommonStyle](fcQCommonStyle_vdata(self))
  let slotval1 = gen_qapplication_types.QApplication(h: application, owned: false)
  inst.unpolish(slotval1)

proc fcQCommonStyle_method_callback_itemTextRect(self: pointer, fm: pointer, r: pointer, flags: cint, enabled: bool, text: struct_miqt_string): pointer {.cdecl.} =
  let inst = cast[VirtualQCommonStyle](fcQCommonStyle_vdata(self))
  let slotval1 = gen_qfontmetrics_types.QFontMetrics(h: fm, owned: false)
  let slotval2 = gen_qrect_types.QRect(h: r, owned: false)
  let slotval3 = flags
  let slotval4 = enabled
  let vtext_ms = text
  let vtextx_ret = string.fromBytes(vtext_ms)
  c_free(vtext_ms.data)
  let slotval5 = vtextx_ret
  var virtualReturn = inst.itemTextRect(slotval1, slotval2, slotval3, slotval4, slotval5)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQCommonStyle_method_callback_itemPixmapRect(self: pointer, r: pointer, flags: cint, pixmap: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQCommonStyle](fcQCommonStyle_vdata(self))
  let slotval1 = gen_qrect_types.QRect(h: r, owned: false)
  let slotval2 = flags
  let slotval3 = gen_qpixmap_types.QPixmap(h: pixmap, owned: false)
  var virtualReturn = inst.itemPixmapRect(slotval1, slotval2, slotval3)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQCommonStyle_method_callback_drawItemText(self: pointer, painter: pointer, rect: pointer, flags: cint, pal: pointer, enabled: bool, text: struct_miqt_string, textRole: cint): void {.cdecl.} =
  let inst = cast[VirtualQCommonStyle](fcQCommonStyle_vdata(self))
  let slotval1 = gen_qpainter_types.QPainter(h: painter, owned: false)
  let slotval2 = gen_qrect_types.QRect(h: rect, owned: false)
  let slotval3 = flags
  let slotval4 = gen_qpalette_types.QPalette(h: pal, owned: false)
  let slotval5 = enabled
  let vtext_ms = text
  let vtextx_ret = string.fromBytes(vtext_ms)
  c_free(vtext_ms.data)
  let slotval6 = vtextx_ret
  let slotval7 = cint(textRole)
  inst.drawItemText(slotval1, slotval2, slotval3, slotval4, slotval5, slotval6, slotval7)

proc fcQCommonStyle_method_callback_drawItemPixmap(self: pointer, painter: pointer, rect: pointer, alignment: cint, pixmap: pointer): void {.cdecl.} =
  let inst = cast[VirtualQCommonStyle](fcQCommonStyle_vdata(self))
  let slotval1 = gen_qpainter_types.QPainter(h: painter, owned: false)
  let slotval2 = gen_qrect_types.QRect(h: rect, owned: false)
  let slotval3 = alignment
  let slotval4 = gen_qpixmap_types.QPixmap(h: pixmap, owned: false)
  inst.drawItemPixmap(slotval1, slotval2, slotval3, slotval4)

proc fcQCommonStyle_method_callback_standardPalette(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQCommonStyle](fcQCommonStyle_vdata(self))
  var virtualReturn = inst.standardPalette()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQCommonStyle_method_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQCommonStyle](fcQCommonStyle_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

proc fcQCommonStyle_method_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQCommonStyle](fcQCommonStyle_vdata(self))
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

proc fcQCommonStyle_method_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQCommonStyle](fcQCommonStyle_vdata(self))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  inst.timerEvent(slotval1)

proc fcQCommonStyle_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQCommonStyle](fcQCommonStyle_vdata(self))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  inst.childEvent(slotval1)

proc fcQCommonStyle_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQCommonStyle](fcQCommonStyle_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)

proc fcQCommonStyle_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQCommonStyle](fcQCommonStyle_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

proc fcQCommonStyle_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQCommonStyle](fcQCommonStyle_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.disconnectNotify(slotval1)


proc sender*(self: gen_qcommonstyle_types.QCommonStyle): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQCommonStyle_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qcommonstyle_types.QCommonStyle): cint =
  fcQCommonStyle_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qcommonstyle_types.QCommonStyle, signal: cstring): cint =
  fcQCommonStyle_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qcommonstyle_types.QCommonStyle, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQCommonStyle_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qcommonstyle_types.QCommonStyle,
    vtbl: ref QCommonStyleVTable = nil): gen_qcommonstyle_types.QCommonStyle =
  let vtbl = if vtbl == nil: new QCommonStyleVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QCommonStyleVTable](fcQCommonStyle_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQCommonStyle_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQCommonStyle_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQCommonStyle_vtable_callback_metacall
  if not isNil(vtbl[].drawPrimitive):
    vtbl[].vtbl.drawPrimitive = fcQCommonStyle_vtable_callback_drawPrimitive
  if not isNil(vtbl[].drawControl):
    vtbl[].vtbl.drawControl = fcQCommonStyle_vtable_callback_drawControl
  if not isNil(vtbl[].subElementRect):
    vtbl[].vtbl.subElementRect = fcQCommonStyle_vtable_callback_subElementRect
  if not isNil(vtbl[].drawComplexControl):
    vtbl[].vtbl.drawComplexControl = fcQCommonStyle_vtable_callback_drawComplexControl
  if not isNil(vtbl[].hitTestComplexControl):
    vtbl[].vtbl.hitTestComplexControl = fcQCommonStyle_vtable_callback_hitTestComplexControl
  if not isNil(vtbl[].subControlRect):
    vtbl[].vtbl.subControlRect = fcQCommonStyle_vtable_callback_subControlRect
  if not isNil(vtbl[].sizeFromContents):
    vtbl[].vtbl.sizeFromContents = fcQCommonStyle_vtable_callback_sizeFromContents
  if not isNil(vtbl[].pixelMetric):
    vtbl[].vtbl.pixelMetric = fcQCommonStyle_vtable_callback_pixelMetric
  if not isNil(vtbl[].styleHint):
    vtbl[].vtbl.styleHint = fcQCommonStyle_vtable_callback_styleHint
  if not isNil(vtbl[].standardIcon):
    vtbl[].vtbl.standardIcon = fcQCommonStyle_vtable_callback_standardIcon
  if not isNil(vtbl[].standardPixmap):
    vtbl[].vtbl.standardPixmap = fcQCommonStyle_vtable_callback_standardPixmap
  if not isNil(vtbl[].generatedIconPixmap):
    vtbl[].vtbl.generatedIconPixmap = fcQCommonStyle_vtable_callback_generatedIconPixmap
  if not isNil(vtbl[].layoutSpacing):
    vtbl[].vtbl.layoutSpacing = fcQCommonStyle_vtable_callback_layoutSpacing
  if not isNil(vtbl[].polish):
    vtbl[].vtbl.polish = fcQCommonStyle_vtable_callback_polish
  if not isNil(vtbl[].polishWithApp):
    vtbl[].vtbl.polishWithApp = fcQCommonStyle_vtable_callback_polishWithApp
  if not isNil(vtbl[].polishWithWidget):
    vtbl[].vtbl.polishWithWidget = fcQCommonStyle_vtable_callback_polishWithWidget
  if not isNil(vtbl[].unpolish):
    vtbl[].vtbl.unpolish = fcQCommonStyle_vtable_callback_unpolish
  if not isNil(vtbl[].unpolishWithApplication):
    vtbl[].vtbl.unpolishWithApplication = fcQCommonStyle_vtable_callback_unpolishWithApplication
  if not isNil(vtbl[].itemTextRect):
    vtbl[].vtbl.itemTextRect = fcQCommonStyle_vtable_callback_itemTextRect
  if not isNil(vtbl[].itemPixmapRect):
    vtbl[].vtbl.itemPixmapRect = fcQCommonStyle_vtable_callback_itemPixmapRect
  if not isNil(vtbl[].drawItemText):
    vtbl[].vtbl.drawItemText = fcQCommonStyle_vtable_callback_drawItemText
  if not isNil(vtbl[].drawItemPixmap):
    vtbl[].vtbl.drawItemPixmap = fcQCommonStyle_vtable_callback_drawItemPixmap
  if not isNil(vtbl[].standardPalette):
    vtbl[].vtbl.standardPalette = fcQCommonStyle_vtable_callback_standardPalette
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQCommonStyle_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQCommonStyle_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQCommonStyle_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQCommonStyle_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQCommonStyle_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQCommonStyle_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQCommonStyle_vtable_callback_disconnectNotify
  gen_qcommonstyle_types.QCommonStyle(h: fcQCommonStyle_new(addr(vtbl[].vtbl), addr(vtbl[])), owned: true)

const cQCommonStyle_mvtbl = cQCommonStyleVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQCommonStyle()[])](self.fcQCommonStyle_vtbl())
    inst[].h = nil
    inst[].owned = false,

  metaObject: fcQCommonStyle_method_callback_metaObject,
  metacast: fcQCommonStyle_method_callback_metacast,
  metacall: fcQCommonStyle_method_callback_metacall,
  drawPrimitive: fcQCommonStyle_method_callback_drawPrimitive,
  drawControl: fcQCommonStyle_method_callback_drawControl,
  subElementRect: fcQCommonStyle_method_callback_subElementRect,
  drawComplexControl: fcQCommonStyle_method_callback_drawComplexControl,
  hitTestComplexControl: fcQCommonStyle_method_callback_hitTestComplexControl,
  subControlRect: fcQCommonStyle_method_callback_subControlRect,
  sizeFromContents: fcQCommonStyle_method_callback_sizeFromContents,
  pixelMetric: fcQCommonStyle_method_callback_pixelMetric,
  styleHint: fcQCommonStyle_method_callback_styleHint,
  standardIcon: fcQCommonStyle_method_callback_standardIcon,
  standardPixmap: fcQCommonStyle_method_callback_standardPixmap,
  generatedIconPixmap: fcQCommonStyle_method_callback_generatedIconPixmap,
  layoutSpacing: fcQCommonStyle_method_callback_layoutSpacing,
  polish: fcQCommonStyle_method_callback_polish,
  polishWithApp: fcQCommonStyle_method_callback_polishWithApp,
  polishWithWidget: fcQCommonStyle_method_callback_polishWithWidget,
  unpolish: fcQCommonStyle_method_callback_unpolish,
  unpolishWithApplication: fcQCommonStyle_method_callback_unpolishWithApplication,
  itemTextRect: fcQCommonStyle_method_callback_itemTextRect,
  itemPixmapRect: fcQCommonStyle_method_callback_itemPixmapRect,
  drawItemText: fcQCommonStyle_method_callback_drawItemText,
  drawItemPixmap: fcQCommonStyle_method_callback_drawItemPixmap,
  standardPalette: fcQCommonStyle_method_callback_standardPalette,
  event: fcQCommonStyle_method_callback_event,
  eventFilter: fcQCommonStyle_method_callback_eventFilter,
  timerEvent: fcQCommonStyle_method_callback_timerEvent,
  childEvent: fcQCommonStyle_method_callback_childEvent,
  customEvent: fcQCommonStyle_method_callback_customEvent,
  connectNotify: fcQCommonStyle_method_callback_connectNotify,
  disconnectNotify: fcQCommonStyle_method_callback_disconnectNotify,
)
proc create*(T: type gen_qcommonstyle_types.QCommonStyle,
    inst: VirtualQCommonStyle) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQCommonStyle_new(addr(cQCommonStyle_mvtbl), addr(inst[]))
  inst[].owned = true

proc staticMetaObject*(_: type gen_qcommonstyle_types.QCommonStyle): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQCommonStyle_staticMetaObject())
