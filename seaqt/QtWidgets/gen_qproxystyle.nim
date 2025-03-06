import ./Qt6Widgets_libs

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

const cflags = gorge("pkg-config --cflags Qt6Widgets")  & " -fPIC"
{.compile("gen_qproxystyle.cpp", cflags).}


import ./gen_qproxystyle_types
export gen_qproxystyle_types

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
  ./gen_qcommonstyle,
  ./gen_qstyle_types,
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
  gen_qcommonstyle,
  gen_qstyle_types,
  gen_qstyleoption_types,
  gen_qwidget_types

type cQProxyStyle*{.exportc: "QProxyStyle", incompleteStruct.} = object

proc fcQProxyStyle_new(): ptr cQProxyStyle {.importc: "QProxyStyle_new".}
proc fcQProxyStyle_new2(key: struct_miqt_string): ptr cQProxyStyle {.importc: "QProxyStyle_new2".}
proc fcQProxyStyle_new3(style: pointer): ptr cQProxyStyle {.importc: "QProxyStyle_new3".}
proc fcQProxyStyle_metaObject(self: pointer, ): pointer {.importc: "QProxyStyle_metaObject".}
proc fcQProxyStyle_metacast(self: pointer, param1: cstring): pointer {.importc: "QProxyStyle_metacast".}
proc fcQProxyStyle_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QProxyStyle_metacall".}
proc fcQProxyStyle_tr(s: cstring): struct_miqt_string {.importc: "QProxyStyle_tr".}
proc fcQProxyStyle_baseStyle(self: pointer, ): pointer {.importc: "QProxyStyle_baseStyle".}
proc fcQProxyStyle_setBaseStyle(self: pointer, style: pointer): void {.importc: "QProxyStyle_setBaseStyle".}
proc fcQProxyStyle_drawPrimitive(self: pointer, element: cint, option: pointer, painter: pointer, widget: pointer): void {.importc: "QProxyStyle_drawPrimitive".}
proc fcQProxyStyle_drawControl(self: pointer, element: cint, option: pointer, painter: pointer, widget: pointer): void {.importc: "QProxyStyle_drawControl".}
proc fcQProxyStyle_drawComplexControl(self: pointer, control: cint, option: pointer, painter: pointer, widget: pointer): void {.importc: "QProxyStyle_drawComplexControl".}
proc fcQProxyStyle_drawItemText(self: pointer, painter: pointer, rect: pointer, flags: cint, pal: pointer, enabled: bool, text: struct_miqt_string, textRole: cint): void {.importc: "QProxyStyle_drawItemText".}
proc fcQProxyStyle_drawItemPixmap(self: pointer, painter: pointer, rect: pointer, alignment: cint, pixmap: pointer): void {.importc: "QProxyStyle_drawItemPixmap".}
proc fcQProxyStyle_sizeFromContents(self: pointer, typeVal: cint, option: pointer, size: pointer, widget: pointer): pointer {.importc: "QProxyStyle_sizeFromContents".}
proc fcQProxyStyle_subElementRect(self: pointer, element: cint, option: pointer, widget: pointer): pointer {.importc: "QProxyStyle_subElementRect".}
proc fcQProxyStyle_subControlRect(self: pointer, cc: cint, opt: pointer, sc: cint, widget: pointer): pointer {.importc: "QProxyStyle_subControlRect".}
proc fcQProxyStyle_itemTextRect(self: pointer, fm: pointer, r: pointer, flags: cint, enabled: bool, text: struct_miqt_string): pointer {.importc: "QProxyStyle_itemTextRect".}
proc fcQProxyStyle_itemPixmapRect(self: pointer, r: pointer, flags: cint, pixmap: pointer): pointer {.importc: "QProxyStyle_itemPixmapRect".}
proc fcQProxyStyle_hitTestComplexControl(self: pointer, control: cint, option: pointer, pos: pointer, widget: pointer): cint {.importc: "QProxyStyle_hitTestComplexControl".}
proc fcQProxyStyle_styleHint(self: pointer, hint: cint, option: pointer, widget: pointer, returnData: pointer): cint {.importc: "QProxyStyle_styleHint".}
proc fcQProxyStyle_pixelMetric(self: pointer, metric: cint, option: pointer, widget: pointer): cint {.importc: "QProxyStyle_pixelMetric".}
proc fcQProxyStyle_layoutSpacing(self: pointer, control1: cint, control2: cint, orientation: cint, option: pointer, widget: pointer): cint {.importc: "QProxyStyle_layoutSpacing".}
proc fcQProxyStyle_standardIcon(self: pointer, standardIcon: cint, option: pointer, widget: pointer): pointer {.importc: "QProxyStyle_standardIcon".}
proc fcQProxyStyle_standardPixmap(self: pointer, standardPixmap: cint, opt: pointer, widget: pointer): pointer {.importc: "QProxyStyle_standardPixmap".}
proc fcQProxyStyle_generatedIconPixmap(self: pointer, iconMode: cint, pixmap: pointer, opt: pointer): pointer {.importc: "QProxyStyle_generatedIconPixmap".}
proc fcQProxyStyle_standardPalette(self: pointer, ): pointer {.importc: "QProxyStyle_standardPalette".}
proc fcQProxyStyle_polish(self: pointer, widget: pointer): void {.importc: "QProxyStyle_polish".}
proc fcQProxyStyle_polishWithPal(self: pointer, pal: pointer): void {.importc: "QProxyStyle_polishWithPal".}
proc fcQProxyStyle_polishWithApp(self: pointer, app: pointer): void {.importc: "QProxyStyle_polishWithApp".}
proc fcQProxyStyle_unpolish(self: pointer, widget: pointer): void {.importc: "QProxyStyle_unpolish".}
proc fcQProxyStyle_unpolishWithApp(self: pointer, app: pointer): void {.importc: "QProxyStyle_unpolishWithApp".}
proc fcQProxyStyle_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QProxyStyle_tr2".}
proc fcQProxyStyle_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QProxyStyle_tr3".}
proc fQProxyStyle_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QProxyStyle_virtualbase_metaObject".}
proc fcQProxyStyle_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QProxyStyle_override_virtual_metaObject".}
proc fQProxyStyle_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QProxyStyle_virtualbase_metacast".}
proc fcQProxyStyle_override_virtual_metacast(self: pointer, slot: int) {.importc: "QProxyStyle_override_virtual_metacast".}
proc fQProxyStyle_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QProxyStyle_virtualbase_metacall".}
proc fcQProxyStyle_override_virtual_metacall(self: pointer, slot: int) {.importc: "QProxyStyle_override_virtual_metacall".}
proc fQProxyStyle_virtualbase_drawPrimitive(self: pointer, element: cint, option: pointer, painter: pointer, widget: pointer): void{.importc: "QProxyStyle_virtualbase_drawPrimitive".}
proc fcQProxyStyle_override_virtual_drawPrimitive(self: pointer, slot: int) {.importc: "QProxyStyle_override_virtual_drawPrimitive".}
proc fQProxyStyle_virtualbase_drawControl(self: pointer, element: cint, option: pointer, painter: pointer, widget: pointer): void{.importc: "QProxyStyle_virtualbase_drawControl".}
proc fcQProxyStyle_override_virtual_drawControl(self: pointer, slot: int) {.importc: "QProxyStyle_override_virtual_drawControl".}
proc fQProxyStyle_virtualbase_drawComplexControl(self: pointer, control: cint, option: pointer, painter: pointer, widget: pointer): void{.importc: "QProxyStyle_virtualbase_drawComplexControl".}
proc fcQProxyStyle_override_virtual_drawComplexControl(self: pointer, slot: int) {.importc: "QProxyStyle_override_virtual_drawComplexControl".}
proc fQProxyStyle_virtualbase_drawItemText(self: pointer, painter: pointer, rect: pointer, flags: cint, pal: pointer, enabled: bool, text: struct_miqt_string, textRole: cint): void{.importc: "QProxyStyle_virtualbase_drawItemText".}
proc fcQProxyStyle_override_virtual_drawItemText(self: pointer, slot: int) {.importc: "QProxyStyle_override_virtual_drawItemText".}
proc fQProxyStyle_virtualbase_drawItemPixmap(self: pointer, painter: pointer, rect: pointer, alignment: cint, pixmap: pointer): void{.importc: "QProxyStyle_virtualbase_drawItemPixmap".}
proc fcQProxyStyle_override_virtual_drawItemPixmap(self: pointer, slot: int) {.importc: "QProxyStyle_override_virtual_drawItemPixmap".}
proc fQProxyStyle_virtualbase_sizeFromContents(self: pointer, typeVal: cint, option: pointer, size: pointer, widget: pointer): pointer{.importc: "QProxyStyle_virtualbase_sizeFromContents".}
proc fcQProxyStyle_override_virtual_sizeFromContents(self: pointer, slot: int) {.importc: "QProxyStyle_override_virtual_sizeFromContents".}
proc fQProxyStyle_virtualbase_subElementRect(self: pointer, element: cint, option: pointer, widget: pointer): pointer{.importc: "QProxyStyle_virtualbase_subElementRect".}
proc fcQProxyStyle_override_virtual_subElementRect(self: pointer, slot: int) {.importc: "QProxyStyle_override_virtual_subElementRect".}
proc fQProxyStyle_virtualbase_subControlRect(self: pointer, cc: cint, opt: pointer, sc: cint, widget: pointer): pointer{.importc: "QProxyStyle_virtualbase_subControlRect".}
proc fcQProxyStyle_override_virtual_subControlRect(self: pointer, slot: int) {.importc: "QProxyStyle_override_virtual_subControlRect".}
proc fQProxyStyle_virtualbase_itemTextRect(self: pointer, fm: pointer, r: pointer, flags: cint, enabled: bool, text: struct_miqt_string): pointer{.importc: "QProxyStyle_virtualbase_itemTextRect".}
proc fcQProxyStyle_override_virtual_itemTextRect(self: pointer, slot: int) {.importc: "QProxyStyle_override_virtual_itemTextRect".}
proc fQProxyStyle_virtualbase_itemPixmapRect(self: pointer, r: pointer, flags: cint, pixmap: pointer): pointer{.importc: "QProxyStyle_virtualbase_itemPixmapRect".}
proc fcQProxyStyle_override_virtual_itemPixmapRect(self: pointer, slot: int) {.importc: "QProxyStyle_override_virtual_itemPixmapRect".}
proc fQProxyStyle_virtualbase_hitTestComplexControl(self: pointer, control: cint, option: pointer, pos: pointer, widget: pointer): cint{.importc: "QProxyStyle_virtualbase_hitTestComplexControl".}
proc fcQProxyStyle_override_virtual_hitTestComplexControl(self: pointer, slot: int) {.importc: "QProxyStyle_override_virtual_hitTestComplexControl".}
proc fQProxyStyle_virtualbase_styleHint(self: pointer, hint: cint, option: pointer, widget: pointer, returnData: pointer): cint{.importc: "QProxyStyle_virtualbase_styleHint".}
proc fcQProxyStyle_override_virtual_styleHint(self: pointer, slot: int) {.importc: "QProxyStyle_override_virtual_styleHint".}
proc fQProxyStyle_virtualbase_pixelMetric(self: pointer, metric: cint, option: pointer, widget: pointer): cint{.importc: "QProxyStyle_virtualbase_pixelMetric".}
proc fcQProxyStyle_override_virtual_pixelMetric(self: pointer, slot: int) {.importc: "QProxyStyle_override_virtual_pixelMetric".}
proc fQProxyStyle_virtualbase_layoutSpacing(self: pointer, control1: cint, control2: cint, orientation: cint, option: pointer, widget: pointer): cint{.importc: "QProxyStyle_virtualbase_layoutSpacing".}
proc fcQProxyStyle_override_virtual_layoutSpacing(self: pointer, slot: int) {.importc: "QProxyStyle_override_virtual_layoutSpacing".}
proc fQProxyStyle_virtualbase_standardIcon(self: pointer, standardIcon: cint, option: pointer, widget: pointer): pointer{.importc: "QProxyStyle_virtualbase_standardIcon".}
proc fcQProxyStyle_override_virtual_standardIcon(self: pointer, slot: int) {.importc: "QProxyStyle_override_virtual_standardIcon".}
proc fQProxyStyle_virtualbase_standardPixmap(self: pointer, standardPixmap: cint, opt: pointer, widget: pointer): pointer{.importc: "QProxyStyle_virtualbase_standardPixmap".}
proc fcQProxyStyle_override_virtual_standardPixmap(self: pointer, slot: int) {.importc: "QProxyStyle_override_virtual_standardPixmap".}
proc fQProxyStyle_virtualbase_generatedIconPixmap(self: pointer, iconMode: cint, pixmap: pointer, opt: pointer): pointer{.importc: "QProxyStyle_virtualbase_generatedIconPixmap".}
proc fcQProxyStyle_override_virtual_generatedIconPixmap(self: pointer, slot: int) {.importc: "QProxyStyle_override_virtual_generatedIconPixmap".}
proc fQProxyStyle_virtualbase_standardPalette(self: pointer, ): pointer{.importc: "QProxyStyle_virtualbase_standardPalette".}
proc fcQProxyStyle_override_virtual_standardPalette(self: pointer, slot: int) {.importc: "QProxyStyle_override_virtual_standardPalette".}
proc fQProxyStyle_virtualbase_polish(self: pointer, widget: pointer): void{.importc: "QProxyStyle_virtualbase_polish".}
proc fcQProxyStyle_override_virtual_polish(self: pointer, slot: int) {.importc: "QProxyStyle_override_virtual_polish".}
proc fQProxyStyle_virtualbase_polishWithPal(self: pointer, pal: pointer): void{.importc: "QProxyStyle_virtualbase_polishWithPal".}
proc fcQProxyStyle_override_virtual_polishWithPal(self: pointer, slot: int) {.importc: "QProxyStyle_override_virtual_polishWithPal".}
proc fQProxyStyle_virtualbase_polishWithApp(self: pointer, app: pointer): void{.importc: "QProxyStyle_virtualbase_polishWithApp".}
proc fcQProxyStyle_override_virtual_polishWithApp(self: pointer, slot: int) {.importc: "QProxyStyle_override_virtual_polishWithApp".}
proc fQProxyStyle_virtualbase_unpolish(self: pointer, widget: pointer): void{.importc: "QProxyStyle_virtualbase_unpolish".}
proc fcQProxyStyle_override_virtual_unpolish(self: pointer, slot: int) {.importc: "QProxyStyle_override_virtual_unpolish".}
proc fQProxyStyle_virtualbase_unpolishWithApp(self: pointer, app: pointer): void{.importc: "QProxyStyle_virtualbase_unpolishWithApp".}
proc fcQProxyStyle_override_virtual_unpolishWithApp(self: pointer, slot: int) {.importc: "QProxyStyle_override_virtual_unpolishWithApp".}
proc fQProxyStyle_virtualbase_event(self: pointer, e: pointer): bool{.importc: "QProxyStyle_virtualbase_event".}
proc fcQProxyStyle_override_virtual_event(self: pointer, slot: int) {.importc: "QProxyStyle_override_virtual_event".}
proc fQProxyStyle_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QProxyStyle_virtualbase_eventFilter".}
proc fcQProxyStyle_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QProxyStyle_override_virtual_eventFilter".}
proc fQProxyStyle_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QProxyStyle_virtualbase_timerEvent".}
proc fcQProxyStyle_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QProxyStyle_override_virtual_timerEvent".}
proc fQProxyStyle_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QProxyStyle_virtualbase_childEvent".}
proc fcQProxyStyle_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QProxyStyle_override_virtual_childEvent".}
proc fQProxyStyle_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QProxyStyle_virtualbase_customEvent".}
proc fcQProxyStyle_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QProxyStyle_override_virtual_customEvent".}
proc fQProxyStyle_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QProxyStyle_virtualbase_connectNotify".}
proc fcQProxyStyle_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QProxyStyle_override_virtual_connectNotify".}
proc fQProxyStyle_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QProxyStyle_virtualbase_disconnectNotify".}
proc fcQProxyStyle_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QProxyStyle_override_virtual_disconnectNotify".}
proc fcQProxyStyle_staticMetaObject(): pointer {.importc: "QProxyStyle_staticMetaObject".}
proc fcQProxyStyle_delete(self: pointer) {.importc: "QProxyStyle_delete".}


func init*(T: type gen_qproxystyle_types.QProxyStyle, h: ptr cQProxyStyle): gen_qproxystyle_types.QProxyStyle =
  T(h: h)
proc create*(T: type gen_qproxystyle_types.QProxyStyle, ): gen_qproxystyle_types.QProxyStyle =
  gen_qproxystyle_types.QProxyStyle.init(fcQProxyStyle_new())

proc create*(T: type gen_qproxystyle_types.QProxyStyle, key: string): gen_qproxystyle_types.QProxyStyle =
  gen_qproxystyle_types.QProxyStyle.init(fcQProxyStyle_new2(struct_miqt_string(data: key, len: csize_t(len(key)))))

proc create*(T: type gen_qproxystyle_types.QProxyStyle, style: gen_qstyle_types.QStyle): gen_qproxystyle_types.QProxyStyle =
  gen_qproxystyle_types.QProxyStyle.init(fcQProxyStyle_new3(style.h))

proc metaObject*(self: gen_qproxystyle_types.QProxyStyle, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQProxyStyle_metaObject(self.h))

proc metacast*(self: gen_qproxystyle_types.QProxyStyle, param1: cstring): pointer =
  fcQProxyStyle_metacast(self.h, param1)

proc metacall*(self: gen_qproxystyle_types.QProxyStyle, param1: cint, param2: cint, param3: pointer): cint =
  fcQProxyStyle_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qproxystyle_types.QProxyStyle, s: cstring): string =
  let v_ms = fcQProxyStyle_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc baseStyle*(self: gen_qproxystyle_types.QProxyStyle, ): gen_qstyle_types.QStyle =
  gen_qstyle_types.QStyle(h: fcQProxyStyle_baseStyle(self.h))

proc setBaseStyle*(self: gen_qproxystyle_types.QProxyStyle, style: gen_qstyle_types.QStyle): void =
  fcQProxyStyle_setBaseStyle(self.h, style.h)

proc drawPrimitive*(self: gen_qproxystyle_types.QProxyStyle, element: cint, option: gen_qstyleoption_types.QStyleOption, painter: gen_qpainter_types.QPainter, widget: gen_qwidget_types.QWidget): void =
  fcQProxyStyle_drawPrimitive(self.h, cint(element), option.h, painter.h, widget.h)

proc drawControl*(self: gen_qproxystyle_types.QProxyStyle, element: cint, option: gen_qstyleoption_types.QStyleOption, painter: gen_qpainter_types.QPainter, widget: gen_qwidget_types.QWidget): void =
  fcQProxyStyle_drawControl(self.h, cint(element), option.h, painter.h, widget.h)

proc drawComplexControl*(self: gen_qproxystyle_types.QProxyStyle, control: cint, option: gen_qstyleoption_types.QStyleOptionComplex, painter: gen_qpainter_types.QPainter, widget: gen_qwidget_types.QWidget): void =
  fcQProxyStyle_drawComplexControl(self.h, cint(control), option.h, painter.h, widget.h)

proc drawItemText*(self: gen_qproxystyle_types.QProxyStyle, painter: gen_qpainter_types.QPainter, rect: gen_qrect_types.QRect, flags: cint, pal: gen_qpalette_types.QPalette, enabled: bool, text: string, textRole: cint): void =
  fcQProxyStyle_drawItemText(self.h, painter.h, rect.h, flags, pal.h, enabled, struct_miqt_string(data: text, len: csize_t(len(text))), cint(textRole))

proc drawItemPixmap*(self: gen_qproxystyle_types.QProxyStyle, painter: gen_qpainter_types.QPainter, rect: gen_qrect_types.QRect, alignment: cint, pixmap: gen_qpixmap_types.QPixmap): void =
  fcQProxyStyle_drawItemPixmap(self.h, painter.h, rect.h, alignment, pixmap.h)

proc sizeFromContents*(self: gen_qproxystyle_types.QProxyStyle, typeVal: cint, option: gen_qstyleoption_types.QStyleOption, size: gen_qsize_types.QSize, widget: gen_qwidget_types.QWidget): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQProxyStyle_sizeFromContents(self.h, cint(typeVal), option.h, size.h, widget.h))

proc subElementRect*(self: gen_qproxystyle_types.QProxyStyle, element: cint, option: gen_qstyleoption_types.QStyleOption, widget: gen_qwidget_types.QWidget): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fcQProxyStyle_subElementRect(self.h, cint(element), option.h, widget.h))

proc subControlRect*(self: gen_qproxystyle_types.QProxyStyle, cc: cint, opt: gen_qstyleoption_types.QStyleOptionComplex, sc: cint, widget: gen_qwidget_types.QWidget): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fcQProxyStyle_subControlRect(self.h, cint(cc), opt.h, cint(sc), widget.h))

proc itemTextRect*(self: gen_qproxystyle_types.QProxyStyle, fm: gen_qfontmetrics_types.QFontMetrics, r: gen_qrect_types.QRect, flags: cint, enabled: bool, text: string): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fcQProxyStyle_itemTextRect(self.h, fm.h, r.h, flags, enabled, struct_miqt_string(data: text, len: csize_t(len(text)))))

proc itemPixmapRect*(self: gen_qproxystyle_types.QProxyStyle, r: gen_qrect_types.QRect, flags: cint, pixmap: gen_qpixmap_types.QPixmap): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fcQProxyStyle_itemPixmapRect(self.h, r.h, flags, pixmap.h))

proc hitTestComplexControl*(self: gen_qproxystyle_types.QProxyStyle, control: cint, option: gen_qstyleoption_types.QStyleOptionComplex, pos: gen_qpoint_types.QPoint, widget: gen_qwidget_types.QWidget): cint =
  cint(fcQProxyStyle_hitTestComplexControl(self.h, cint(control), option.h, pos.h, widget.h))

proc styleHint*(self: gen_qproxystyle_types.QProxyStyle, hint: cint, option: gen_qstyleoption_types.QStyleOption, widget: gen_qwidget_types.QWidget, returnData: gen_qstyleoption_types.QStyleHintReturn): cint =
  fcQProxyStyle_styleHint(self.h, cint(hint), option.h, widget.h, returnData.h)

proc pixelMetric*(self: gen_qproxystyle_types.QProxyStyle, metric: cint, option: gen_qstyleoption_types.QStyleOption, widget: gen_qwidget_types.QWidget): cint =
  fcQProxyStyle_pixelMetric(self.h, cint(metric), option.h, widget.h)

proc layoutSpacing*(self: gen_qproxystyle_types.QProxyStyle, control1: cint, control2: cint, orientation: cint, option: gen_qstyleoption_types.QStyleOption, widget: gen_qwidget_types.QWidget): cint =
  fcQProxyStyle_layoutSpacing(self.h, cint(control1), cint(control2), cint(orientation), option.h, widget.h)

proc standardIcon*(self: gen_qproxystyle_types.QProxyStyle, standardIcon: cint, option: gen_qstyleoption_types.QStyleOption, widget: gen_qwidget_types.QWidget): gen_qicon_types.QIcon =
  gen_qicon_types.QIcon(h: fcQProxyStyle_standardIcon(self.h, cint(standardIcon), option.h, widget.h))

proc standardPixmap*(self: gen_qproxystyle_types.QProxyStyle, standardPixmap: cint, opt: gen_qstyleoption_types.QStyleOption, widget: gen_qwidget_types.QWidget): gen_qpixmap_types.QPixmap =
  gen_qpixmap_types.QPixmap(h: fcQProxyStyle_standardPixmap(self.h, cint(standardPixmap), opt.h, widget.h))

proc generatedIconPixmap*(self: gen_qproxystyle_types.QProxyStyle, iconMode: cint, pixmap: gen_qpixmap_types.QPixmap, opt: gen_qstyleoption_types.QStyleOption): gen_qpixmap_types.QPixmap =
  gen_qpixmap_types.QPixmap(h: fcQProxyStyle_generatedIconPixmap(self.h, cint(iconMode), pixmap.h, opt.h))

proc standardPalette*(self: gen_qproxystyle_types.QProxyStyle, ): gen_qpalette_types.QPalette =
  gen_qpalette_types.QPalette(h: fcQProxyStyle_standardPalette(self.h))

proc polish*(self: gen_qproxystyle_types.QProxyStyle, widget: gen_qwidget_types.QWidget): void =
  fcQProxyStyle_polish(self.h, widget.h)

proc polish*(self: gen_qproxystyle_types.QProxyStyle, pal: gen_qpalette_types.QPalette): void =
  fcQProxyStyle_polishWithPal(self.h, pal.h)

proc polish*(self: gen_qproxystyle_types.QProxyStyle, app: gen_qapplication_types.QApplication): void =
  fcQProxyStyle_polishWithApp(self.h, app.h)

proc unpolish*(self: gen_qproxystyle_types.QProxyStyle, widget: gen_qwidget_types.QWidget): void =
  fcQProxyStyle_unpolish(self.h, widget.h)

proc unpolish*(self: gen_qproxystyle_types.QProxyStyle, app: gen_qapplication_types.QApplication): void =
  fcQProxyStyle_unpolishWithApp(self.h, app.h)

proc tr*(_: type gen_qproxystyle_types.QProxyStyle, s: cstring, c: cstring): string =
  let v_ms = fcQProxyStyle_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qproxystyle_types.QProxyStyle, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQProxyStyle_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc QProxyStylemetaObject*(self: gen_qproxystyle_types.QProxyStyle, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fQProxyStyle_virtualbase_metaObject(self.h))

type QProxyStylemetaObjectProc* = proc(): gen_qobjectdefs_types.QMetaObject
proc onmetaObject*(self: gen_qproxystyle_types.QProxyStyle, slot: QProxyStylemetaObjectProc) =
  # TODO check subclass
  var tmp = new QProxyStylemetaObjectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQProxyStyle_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProxyStyle_metaObject(self: ptr cQProxyStyle, slot: int): pointer {.exportc: "miqt_exec_callback_QProxyStyle_metaObject ".} =
  var nimfunc = cast[ptr QProxyStylemetaObjectProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QProxyStylemetacast*(self: gen_qproxystyle_types.QProxyStyle, param1: cstring): pointer =
  fQProxyStyle_virtualbase_metacast(self.h, param1)

type QProxyStylemetacastProc* = proc(param1: cstring): pointer
proc onmetacast*(self: gen_qproxystyle_types.QProxyStyle, slot: QProxyStylemetacastProc) =
  # TODO check subclass
  var tmp = new QProxyStylemetacastProc
  tmp[] = slot
  GC_ref(tmp)
  fcQProxyStyle_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProxyStyle_metacast(self: ptr cQProxyStyle, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QProxyStyle_metacast ".} =
  var nimfunc = cast[ptr QProxyStylemetacastProc](cast[pointer](slot))
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QProxyStylemetacall*(self: gen_qproxystyle_types.QProxyStyle, param1: cint, param2: cint, param3: pointer): cint =
  fQProxyStyle_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QProxyStylemetacallProc* = proc(param1: cint, param2: cint, param3: pointer): cint
proc onmetacall*(self: gen_qproxystyle_types.QProxyStyle, slot: QProxyStylemetacallProc) =
  # TODO check subclass
  var tmp = new QProxyStylemetacallProc
  tmp[] = slot
  GC_ref(tmp)
  fcQProxyStyle_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProxyStyle_metacall(self: ptr cQProxyStyle, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QProxyStyle_metacall ".} =
  var nimfunc = cast[ptr QProxyStylemetacallProc](cast[pointer](slot))
  let slotval1 = cint(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QProxyStyledrawPrimitive*(self: gen_qproxystyle_types.QProxyStyle, element: cint, option: gen_qstyleoption_types.QStyleOption, painter: gen_qpainter_types.QPainter, widget: gen_qwidget_types.QWidget): void =
  fQProxyStyle_virtualbase_drawPrimitive(self.h, cint(element), option.h, painter.h, widget.h)

type QProxyStyledrawPrimitiveProc* = proc(element: cint, option: gen_qstyleoption_types.QStyleOption, painter: gen_qpainter_types.QPainter, widget: gen_qwidget_types.QWidget): void
proc ondrawPrimitive*(self: gen_qproxystyle_types.QProxyStyle, slot: QProxyStyledrawPrimitiveProc) =
  # TODO check subclass
  var tmp = new QProxyStyledrawPrimitiveProc
  tmp[] = slot
  GC_ref(tmp)
  fcQProxyStyle_override_virtual_drawPrimitive(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProxyStyle_drawPrimitive(self: ptr cQProxyStyle, slot: int, element: cint, option: pointer, painter: pointer, widget: pointer): void {.exportc: "miqt_exec_callback_QProxyStyle_drawPrimitive ".} =
  var nimfunc = cast[ptr QProxyStyledrawPrimitiveProc](cast[pointer](slot))
  let slotval1 = cint(element)

  let slotval2 = gen_qstyleoption_types.QStyleOption(h: option)

  let slotval3 = gen_qpainter_types.QPainter(h: painter)

  let slotval4 = gen_qwidget_types.QWidget(h: widget)


  nimfunc[](slotval1, slotval2, slotval3, slotval4)
proc QProxyStyledrawControl*(self: gen_qproxystyle_types.QProxyStyle, element: cint, option: gen_qstyleoption_types.QStyleOption, painter: gen_qpainter_types.QPainter, widget: gen_qwidget_types.QWidget): void =
  fQProxyStyle_virtualbase_drawControl(self.h, cint(element), option.h, painter.h, widget.h)

type QProxyStyledrawControlProc* = proc(element: cint, option: gen_qstyleoption_types.QStyleOption, painter: gen_qpainter_types.QPainter, widget: gen_qwidget_types.QWidget): void
proc ondrawControl*(self: gen_qproxystyle_types.QProxyStyle, slot: QProxyStyledrawControlProc) =
  # TODO check subclass
  var tmp = new QProxyStyledrawControlProc
  tmp[] = slot
  GC_ref(tmp)
  fcQProxyStyle_override_virtual_drawControl(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProxyStyle_drawControl(self: ptr cQProxyStyle, slot: int, element: cint, option: pointer, painter: pointer, widget: pointer): void {.exportc: "miqt_exec_callback_QProxyStyle_drawControl ".} =
  var nimfunc = cast[ptr QProxyStyledrawControlProc](cast[pointer](slot))
  let slotval1 = cint(element)

  let slotval2 = gen_qstyleoption_types.QStyleOption(h: option)

  let slotval3 = gen_qpainter_types.QPainter(h: painter)

  let slotval4 = gen_qwidget_types.QWidget(h: widget)


  nimfunc[](slotval1, slotval2, slotval3, slotval4)
proc QProxyStyledrawComplexControl*(self: gen_qproxystyle_types.QProxyStyle, control: cint, option: gen_qstyleoption_types.QStyleOptionComplex, painter: gen_qpainter_types.QPainter, widget: gen_qwidget_types.QWidget): void =
  fQProxyStyle_virtualbase_drawComplexControl(self.h, cint(control), option.h, painter.h, widget.h)

type QProxyStyledrawComplexControlProc* = proc(control: cint, option: gen_qstyleoption_types.QStyleOptionComplex, painter: gen_qpainter_types.QPainter, widget: gen_qwidget_types.QWidget): void
proc ondrawComplexControl*(self: gen_qproxystyle_types.QProxyStyle, slot: QProxyStyledrawComplexControlProc) =
  # TODO check subclass
  var tmp = new QProxyStyledrawComplexControlProc
  tmp[] = slot
  GC_ref(tmp)
  fcQProxyStyle_override_virtual_drawComplexControl(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProxyStyle_drawComplexControl(self: ptr cQProxyStyle, slot: int, control: cint, option: pointer, painter: pointer, widget: pointer): void {.exportc: "miqt_exec_callback_QProxyStyle_drawComplexControl ".} =
  var nimfunc = cast[ptr QProxyStyledrawComplexControlProc](cast[pointer](slot))
  let slotval1 = cint(control)

  let slotval2 = gen_qstyleoption_types.QStyleOptionComplex(h: option)

  let slotval3 = gen_qpainter_types.QPainter(h: painter)

  let slotval4 = gen_qwidget_types.QWidget(h: widget)


  nimfunc[](slotval1, slotval2, slotval3, slotval4)
proc QProxyStyledrawItemText*(self: gen_qproxystyle_types.QProxyStyle, painter: gen_qpainter_types.QPainter, rect: gen_qrect_types.QRect, flags: cint, pal: gen_qpalette_types.QPalette, enabled: bool, text: string, textRole: cint): void =
  fQProxyStyle_virtualbase_drawItemText(self.h, painter.h, rect.h, flags, pal.h, enabled, struct_miqt_string(data: text, len: csize_t(len(text))), cint(textRole))

type QProxyStyledrawItemTextProc* = proc(painter: gen_qpainter_types.QPainter, rect: gen_qrect_types.QRect, flags: cint, pal: gen_qpalette_types.QPalette, enabled: bool, text: string, textRole: cint): void
proc ondrawItemText*(self: gen_qproxystyle_types.QProxyStyle, slot: QProxyStyledrawItemTextProc) =
  # TODO check subclass
  var tmp = new QProxyStyledrawItemTextProc
  tmp[] = slot
  GC_ref(tmp)
  fcQProxyStyle_override_virtual_drawItemText(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProxyStyle_drawItemText(self: ptr cQProxyStyle, slot: int, painter: pointer, rect: pointer, flags: cint, pal: pointer, enabled: bool, text: struct_miqt_string, textRole: cint): void {.exportc: "miqt_exec_callback_QProxyStyle_drawItemText ".} =
  var nimfunc = cast[ptr QProxyStyledrawItemTextProc](cast[pointer](slot))
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


  nimfunc[](slotval1, slotval2, slotval3, slotval4, slotval5, slotval6, slotval7)
proc QProxyStyledrawItemPixmap*(self: gen_qproxystyle_types.QProxyStyle, painter: gen_qpainter_types.QPainter, rect: gen_qrect_types.QRect, alignment: cint, pixmap: gen_qpixmap_types.QPixmap): void =
  fQProxyStyle_virtualbase_drawItemPixmap(self.h, painter.h, rect.h, alignment, pixmap.h)

type QProxyStyledrawItemPixmapProc* = proc(painter: gen_qpainter_types.QPainter, rect: gen_qrect_types.QRect, alignment: cint, pixmap: gen_qpixmap_types.QPixmap): void
proc ondrawItemPixmap*(self: gen_qproxystyle_types.QProxyStyle, slot: QProxyStyledrawItemPixmapProc) =
  # TODO check subclass
  var tmp = new QProxyStyledrawItemPixmapProc
  tmp[] = slot
  GC_ref(tmp)
  fcQProxyStyle_override_virtual_drawItemPixmap(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProxyStyle_drawItemPixmap(self: ptr cQProxyStyle, slot: int, painter: pointer, rect: pointer, alignment: cint, pixmap: pointer): void {.exportc: "miqt_exec_callback_QProxyStyle_drawItemPixmap ".} =
  var nimfunc = cast[ptr QProxyStyledrawItemPixmapProc](cast[pointer](slot))
  let slotval1 = gen_qpainter_types.QPainter(h: painter)

  let slotval2 = gen_qrect_types.QRect(h: rect)

  let slotval3 = alignment

  let slotval4 = gen_qpixmap_types.QPixmap(h: pixmap)


  nimfunc[](slotval1, slotval2, slotval3, slotval4)
proc QProxyStylesizeFromContents*(self: gen_qproxystyle_types.QProxyStyle, typeVal: cint, option: gen_qstyleoption_types.QStyleOption, size: gen_qsize_types.QSize, widget: gen_qwidget_types.QWidget): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fQProxyStyle_virtualbase_sizeFromContents(self.h, cint(typeVal), option.h, size.h, widget.h))

type QProxyStylesizeFromContentsProc* = proc(typeVal: cint, option: gen_qstyleoption_types.QStyleOption, size: gen_qsize_types.QSize, widget: gen_qwidget_types.QWidget): gen_qsize_types.QSize
proc onsizeFromContents*(self: gen_qproxystyle_types.QProxyStyle, slot: QProxyStylesizeFromContentsProc) =
  # TODO check subclass
  var tmp = new QProxyStylesizeFromContentsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQProxyStyle_override_virtual_sizeFromContents(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProxyStyle_sizeFromContents(self: ptr cQProxyStyle, slot: int, typeVal: cint, option: pointer, size: pointer, widget: pointer): pointer {.exportc: "miqt_exec_callback_QProxyStyle_sizeFromContents ".} =
  var nimfunc = cast[ptr QProxyStylesizeFromContentsProc](cast[pointer](slot))
  let slotval1 = cint(typeVal)

  let slotval2 = gen_qstyleoption_types.QStyleOption(h: option)

  let slotval3 = gen_qsize_types.QSize(h: size)

  let slotval4 = gen_qwidget_types.QWidget(h: widget)


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3, slotval4 )

  virtualReturn.h
proc QProxyStylesubElementRect*(self: gen_qproxystyle_types.QProxyStyle, element: cint, option: gen_qstyleoption_types.QStyleOption, widget: gen_qwidget_types.QWidget): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fQProxyStyle_virtualbase_subElementRect(self.h, cint(element), option.h, widget.h))

type QProxyStylesubElementRectProc* = proc(element: cint, option: gen_qstyleoption_types.QStyleOption, widget: gen_qwidget_types.QWidget): gen_qrect_types.QRect
proc onsubElementRect*(self: gen_qproxystyle_types.QProxyStyle, slot: QProxyStylesubElementRectProc) =
  # TODO check subclass
  var tmp = new QProxyStylesubElementRectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQProxyStyle_override_virtual_subElementRect(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProxyStyle_subElementRect(self: ptr cQProxyStyle, slot: int, element: cint, option: pointer, widget: pointer): pointer {.exportc: "miqt_exec_callback_QProxyStyle_subElementRect ".} =
  var nimfunc = cast[ptr QProxyStylesubElementRectProc](cast[pointer](slot))
  let slotval1 = cint(element)

  let slotval2 = gen_qstyleoption_types.QStyleOption(h: option)

  let slotval3 = gen_qwidget_types.QWidget(h: widget)


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn.h
proc QProxyStylesubControlRect*(self: gen_qproxystyle_types.QProxyStyle, cc: cint, opt: gen_qstyleoption_types.QStyleOptionComplex, sc: cint, widget: gen_qwidget_types.QWidget): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fQProxyStyle_virtualbase_subControlRect(self.h, cint(cc), opt.h, cint(sc), widget.h))

type QProxyStylesubControlRectProc* = proc(cc: cint, opt: gen_qstyleoption_types.QStyleOptionComplex, sc: cint, widget: gen_qwidget_types.QWidget): gen_qrect_types.QRect
proc onsubControlRect*(self: gen_qproxystyle_types.QProxyStyle, slot: QProxyStylesubControlRectProc) =
  # TODO check subclass
  var tmp = new QProxyStylesubControlRectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQProxyStyle_override_virtual_subControlRect(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProxyStyle_subControlRect(self: ptr cQProxyStyle, slot: int, cc: cint, opt: pointer, sc: cint, widget: pointer): pointer {.exportc: "miqt_exec_callback_QProxyStyle_subControlRect ".} =
  var nimfunc = cast[ptr QProxyStylesubControlRectProc](cast[pointer](slot))
  let slotval1 = cint(cc)

  let slotval2 = gen_qstyleoption_types.QStyleOptionComplex(h: opt)

  let slotval3 = cint(sc)

  let slotval4 = gen_qwidget_types.QWidget(h: widget)


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3, slotval4 )

  virtualReturn.h
proc QProxyStyleitemTextRect*(self: gen_qproxystyle_types.QProxyStyle, fm: gen_qfontmetrics_types.QFontMetrics, r: gen_qrect_types.QRect, flags: cint, enabled: bool, text: string): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fQProxyStyle_virtualbase_itemTextRect(self.h, fm.h, r.h, flags, enabled, struct_miqt_string(data: text, len: csize_t(len(text)))))

type QProxyStyleitemTextRectProc* = proc(fm: gen_qfontmetrics_types.QFontMetrics, r: gen_qrect_types.QRect, flags: cint, enabled: bool, text: string): gen_qrect_types.QRect
proc onitemTextRect*(self: gen_qproxystyle_types.QProxyStyle, slot: QProxyStyleitemTextRectProc) =
  # TODO check subclass
  var tmp = new QProxyStyleitemTextRectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQProxyStyle_override_virtual_itemTextRect(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProxyStyle_itemTextRect(self: ptr cQProxyStyle, slot: int, fm: pointer, r: pointer, flags: cint, enabled: bool, text: struct_miqt_string): pointer {.exportc: "miqt_exec_callback_QProxyStyle_itemTextRect ".} =
  var nimfunc = cast[ptr QProxyStyleitemTextRectProc](cast[pointer](slot))
  let slotval1 = gen_qfontmetrics_types.QFontMetrics(h: fm)

  let slotval2 = gen_qrect_types.QRect(h: r)

  let slotval3 = flags

  let slotval4 = enabled

  let vtext_ms = text
  let vtextx_ret = string.fromBytes(toOpenArrayByte(vtext_ms.data, 0, int(vtext_ms.len)-1))
  c_free(vtext_ms.data)
  let slotval5 = vtextx_ret


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3, slotval4, slotval5 )

  virtualReturn.h
proc QProxyStyleitemPixmapRect*(self: gen_qproxystyle_types.QProxyStyle, r: gen_qrect_types.QRect, flags: cint, pixmap: gen_qpixmap_types.QPixmap): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fQProxyStyle_virtualbase_itemPixmapRect(self.h, r.h, flags, pixmap.h))

type QProxyStyleitemPixmapRectProc* = proc(r: gen_qrect_types.QRect, flags: cint, pixmap: gen_qpixmap_types.QPixmap): gen_qrect_types.QRect
proc onitemPixmapRect*(self: gen_qproxystyle_types.QProxyStyle, slot: QProxyStyleitemPixmapRectProc) =
  # TODO check subclass
  var tmp = new QProxyStyleitemPixmapRectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQProxyStyle_override_virtual_itemPixmapRect(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProxyStyle_itemPixmapRect(self: ptr cQProxyStyle, slot: int, r: pointer, flags: cint, pixmap: pointer): pointer {.exportc: "miqt_exec_callback_QProxyStyle_itemPixmapRect ".} =
  var nimfunc = cast[ptr QProxyStyleitemPixmapRectProc](cast[pointer](slot))
  let slotval1 = gen_qrect_types.QRect(h: r)

  let slotval2 = flags

  let slotval3 = gen_qpixmap_types.QPixmap(h: pixmap)


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn.h
proc QProxyStylehitTestComplexControl*(self: gen_qproxystyle_types.QProxyStyle, control: cint, option: gen_qstyleoption_types.QStyleOptionComplex, pos: gen_qpoint_types.QPoint, widget: gen_qwidget_types.QWidget): cint =
  cint(fQProxyStyle_virtualbase_hitTestComplexControl(self.h, cint(control), option.h, pos.h, widget.h))

type QProxyStylehitTestComplexControlProc* = proc(control: cint, option: gen_qstyleoption_types.QStyleOptionComplex, pos: gen_qpoint_types.QPoint, widget: gen_qwidget_types.QWidget): cint
proc onhitTestComplexControl*(self: gen_qproxystyle_types.QProxyStyle, slot: QProxyStylehitTestComplexControlProc) =
  # TODO check subclass
  var tmp = new QProxyStylehitTestComplexControlProc
  tmp[] = slot
  GC_ref(tmp)
  fcQProxyStyle_override_virtual_hitTestComplexControl(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProxyStyle_hitTestComplexControl(self: ptr cQProxyStyle, slot: int, control: cint, option: pointer, pos: pointer, widget: pointer): cint {.exportc: "miqt_exec_callback_QProxyStyle_hitTestComplexControl ".} =
  var nimfunc = cast[ptr QProxyStylehitTestComplexControlProc](cast[pointer](slot))
  let slotval1 = cint(control)

  let slotval2 = gen_qstyleoption_types.QStyleOptionComplex(h: option)

  let slotval3 = gen_qpoint_types.QPoint(h: pos)

  let slotval4 = gen_qwidget_types.QWidget(h: widget)


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3, slotval4 )

  cint(virtualReturn)
proc QProxyStylestyleHint*(self: gen_qproxystyle_types.QProxyStyle, hint: cint, option: gen_qstyleoption_types.QStyleOption, widget: gen_qwidget_types.QWidget, returnData: gen_qstyleoption_types.QStyleHintReturn): cint =
  fQProxyStyle_virtualbase_styleHint(self.h, cint(hint), option.h, widget.h, returnData.h)

type QProxyStylestyleHintProc* = proc(hint: cint, option: gen_qstyleoption_types.QStyleOption, widget: gen_qwidget_types.QWidget, returnData: gen_qstyleoption_types.QStyleHintReturn): cint
proc onstyleHint*(self: gen_qproxystyle_types.QProxyStyle, slot: QProxyStylestyleHintProc) =
  # TODO check subclass
  var tmp = new QProxyStylestyleHintProc
  tmp[] = slot
  GC_ref(tmp)
  fcQProxyStyle_override_virtual_styleHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProxyStyle_styleHint(self: ptr cQProxyStyle, slot: int, hint: cint, option: pointer, widget: pointer, returnData: pointer): cint {.exportc: "miqt_exec_callback_QProxyStyle_styleHint ".} =
  var nimfunc = cast[ptr QProxyStylestyleHintProc](cast[pointer](slot))
  let slotval1 = cint(hint)

  let slotval2 = gen_qstyleoption_types.QStyleOption(h: option)

  let slotval3 = gen_qwidget_types.QWidget(h: widget)

  let slotval4 = gen_qstyleoption_types.QStyleHintReturn(h: returnData)


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3, slotval4 )

  virtualReturn
proc QProxyStylepixelMetric*(self: gen_qproxystyle_types.QProxyStyle, metric: cint, option: gen_qstyleoption_types.QStyleOption, widget: gen_qwidget_types.QWidget): cint =
  fQProxyStyle_virtualbase_pixelMetric(self.h, cint(metric), option.h, widget.h)

type QProxyStylepixelMetricProc* = proc(metric: cint, option: gen_qstyleoption_types.QStyleOption, widget: gen_qwidget_types.QWidget): cint
proc onpixelMetric*(self: gen_qproxystyle_types.QProxyStyle, slot: QProxyStylepixelMetricProc) =
  # TODO check subclass
  var tmp = new QProxyStylepixelMetricProc
  tmp[] = slot
  GC_ref(tmp)
  fcQProxyStyle_override_virtual_pixelMetric(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProxyStyle_pixelMetric(self: ptr cQProxyStyle, slot: int, metric: cint, option: pointer, widget: pointer): cint {.exportc: "miqt_exec_callback_QProxyStyle_pixelMetric ".} =
  var nimfunc = cast[ptr QProxyStylepixelMetricProc](cast[pointer](slot))
  let slotval1 = cint(metric)

  let slotval2 = gen_qstyleoption_types.QStyleOption(h: option)

  let slotval3 = gen_qwidget_types.QWidget(h: widget)


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QProxyStylelayoutSpacing*(self: gen_qproxystyle_types.QProxyStyle, control1: cint, control2: cint, orientation: cint, option: gen_qstyleoption_types.QStyleOption, widget: gen_qwidget_types.QWidget): cint =
  fQProxyStyle_virtualbase_layoutSpacing(self.h, cint(control1), cint(control2), cint(orientation), option.h, widget.h)

type QProxyStylelayoutSpacingProc* = proc(control1: cint, control2: cint, orientation: cint, option: gen_qstyleoption_types.QStyleOption, widget: gen_qwidget_types.QWidget): cint
proc onlayoutSpacing*(self: gen_qproxystyle_types.QProxyStyle, slot: QProxyStylelayoutSpacingProc) =
  # TODO check subclass
  var tmp = new QProxyStylelayoutSpacingProc
  tmp[] = slot
  GC_ref(tmp)
  fcQProxyStyle_override_virtual_layoutSpacing(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProxyStyle_layoutSpacing(self: ptr cQProxyStyle, slot: int, control1: cint, control2: cint, orientation: cint, option: pointer, widget: pointer): cint {.exportc: "miqt_exec_callback_QProxyStyle_layoutSpacing ".} =
  var nimfunc = cast[ptr QProxyStylelayoutSpacingProc](cast[pointer](slot))
  let slotval1 = cint(control1)

  let slotval2 = cint(control2)

  let slotval3 = cint(orientation)

  let slotval4 = gen_qstyleoption_types.QStyleOption(h: option)

  let slotval5 = gen_qwidget_types.QWidget(h: widget)


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3, slotval4, slotval5 )

  virtualReturn
proc QProxyStylestandardIcon*(self: gen_qproxystyle_types.QProxyStyle, standardIcon: cint, option: gen_qstyleoption_types.QStyleOption, widget: gen_qwidget_types.QWidget): gen_qicon_types.QIcon =
  gen_qicon_types.QIcon(h: fQProxyStyle_virtualbase_standardIcon(self.h, cint(standardIcon), option.h, widget.h))

type QProxyStylestandardIconProc* = proc(standardIcon: cint, option: gen_qstyleoption_types.QStyleOption, widget: gen_qwidget_types.QWidget): gen_qicon_types.QIcon
proc onstandardIcon*(self: gen_qproxystyle_types.QProxyStyle, slot: QProxyStylestandardIconProc) =
  # TODO check subclass
  var tmp = new QProxyStylestandardIconProc
  tmp[] = slot
  GC_ref(tmp)
  fcQProxyStyle_override_virtual_standardIcon(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProxyStyle_standardIcon(self: ptr cQProxyStyle, slot: int, standardIcon: cint, option: pointer, widget: pointer): pointer {.exportc: "miqt_exec_callback_QProxyStyle_standardIcon ".} =
  var nimfunc = cast[ptr QProxyStylestandardIconProc](cast[pointer](slot))
  let slotval1 = cint(standardIcon)

  let slotval2 = gen_qstyleoption_types.QStyleOption(h: option)

  let slotval3 = gen_qwidget_types.QWidget(h: widget)


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn.h
proc QProxyStylestandardPixmap*(self: gen_qproxystyle_types.QProxyStyle, standardPixmap: cint, opt: gen_qstyleoption_types.QStyleOption, widget: gen_qwidget_types.QWidget): gen_qpixmap_types.QPixmap =
  gen_qpixmap_types.QPixmap(h: fQProxyStyle_virtualbase_standardPixmap(self.h, cint(standardPixmap), opt.h, widget.h))

type QProxyStylestandardPixmapProc* = proc(standardPixmap: cint, opt: gen_qstyleoption_types.QStyleOption, widget: gen_qwidget_types.QWidget): gen_qpixmap_types.QPixmap
proc onstandardPixmap*(self: gen_qproxystyle_types.QProxyStyle, slot: QProxyStylestandardPixmapProc) =
  # TODO check subclass
  var tmp = new QProxyStylestandardPixmapProc
  tmp[] = slot
  GC_ref(tmp)
  fcQProxyStyle_override_virtual_standardPixmap(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProxyStyle_standardPixmap(self: ptr cQProxyStyle, slot: int, standardPixmap: cint, opt: pointer, widget: pointer): pointer {.exportc: "miqt_exec_callback_QProxyStyle_standardPixmap ".} =
  var nimfunc = cast[ptr QProxyStylestandardPixmapProc](cast[pointer](slot))
  let slotval1 = cint(standardPixmap)

  let slotval2 = gen_qstyleoption_types.QStyleOption(h: opt)

  let slotval3 = gen_qwidget_types.QWidget(h: widget)


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn.h
proc QProxyStylegeneratedIconPixmap*(self: gen_qproxystyle_types.QProxyStyle, iconMode: cint, pixmap: gen_qpixmap_types.QPixmap, opt: gen_qstyleoption_types.QStyleOption): gen_qpixmap_types.QPixmap =
  gen_qpixmap_types.QPixmap(h: fQProxyStyle_virtualbase_generatedIconPixmap(self.h, cint(iconMode), pixmap.h, opt.h))

type QProxyStylegeneratedIconPixmapProc* = proc(iconMode: cint, pixmap: gen_qpixmap_types.QPixmap, opt: gen_qstyleoption_types.QStyleOption): gen_qpixmap_types.QPixmap
proc ongeneratedIconPixmap*(self: gen_qproxystyle_types.QProxyStyle, slot: QProxyStylegeneratedIconPixmapProc) =
  # TODO check subclass
  var tmp = new QProxyStylegeneratedIconPixmapProc
  tmp[] = slot
  GC_ref(tmp)
  fcQProxyStyle_override_virtual_generatedIconPixmap(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProxyStyle_generatedIconPixmap(self: ptr cQProxyStyle, slot: int, iconMode: cint, pixmap: pointer, opt: pointer): pointer {.exportc: "miqt_exec_callback_QProxyStyle_generatedIconPixmap ".} =
  var nimfunc = cast[ptr QProxyStylegeneratedIconPixmapProc](cast[pointer](slot))
  let slotval1 = cint(iconMode)

  let slotval2 = gen_qpixmap_types.QPixmap(h: pixmap)

  let slotval3 = gen_qstyleoption_types.QStyleOption(h: opt)


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn.h
proc QProxyStylestandardPalette*(self: gen_qproxystyle_types.QProxyStyle, ): gen_qpalette_types.QPalette =
  gen_qpalette_types.QPalette(h: fQProxyStyle_virtualbase_standardPalette(self.h))

type QProxyStylestandardPaletteProc* = proc(): gen_qpalette_types.QPalette
proc onstandardPalette*(self: gen_qproxystyle_types.QProxyStyle, slot: QProxyStylestandardPaletteProc) =
  # TODO check subclass
  var tmp = new QProxyStylestandardPaletteProc
  tmp[] = slot
  GC_ref(tmp)
  fcQProxyStyle_override_virtual_standardPalette(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProxyStyle_standardPalette(self: ptr cQProxyStyle, slot: int): pointer {.exportc: "miqt_exec_callback_QProxyStyle_standardPalette ".} =
  var nimfunc = cast[ptr QProxyStylestandardPaletteProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QProxyStylepolish*(self: gen_qproxystyle_types.QProxyStyle, widget: gen_qwidget_types.QWidget): void =
  fQProxyStyle_virtualbase_polish(self.h, widget.h)

type QProxyStylepolishProc* = proc(widget: gen_qwidget_types.QWidget): void
proc onpolish*(self: gen_qproxystyle_types.QProxyStyle, slot: QProxyStylepolishProc) =
  # TODO check subclass
  var tmp = new QProxyStylepolishProc
  tmp[] = slot
  GC_ref(tmp)
  fcQProxyStyle_override_virtual_polish(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProxyStyle_polish(self: ptr cQProxyStyle, slot: int, widget: pointer): void {.exportc: "miqt_exec_callback_QProxyStyle_polish ".} =
  var nimfunc = cast[ptr QProxyStylepolishProc](cast[pointer](slot))
  let slotval1 = gen_qwidget_types.QWidget(h: widget)


  nimfunc[](slotval1)
proc QProxyStylepolish*(self: gen_qproxystyle_types.QProxyStyle, pal: gen_qpalette_types.QPalette): void =
  fQProxyStyle_virtualbase_polishWithPal(self.h, pal.h)

type QProxyStylepolishWithPalProc* = proc(pal: gen_qpalette_types.QPalette): void
proc onpolish*(self: gen_qproxystyle_types.QProxyStyle, slot: QProxyStylepolishWithPalProc) =
  # TODO check subclass
  var tmp = new QProxyStylepolishWithPalProc
  tmp[] = slot
  GC_ref(tmp)
  fcQProxyStyle_override_virtual_polishWithPal(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProxyStyle_polishWithPal(self: ptr cQProxyStyle, slot: int, pal: pointer): void {.exportc: "miqt_exec_callback_QProxyStyle_polishWithPal ".} =
  var nimfunc = cast[ptr QProxyStylepolishWithPalProc](cast[pointer](slot))
  let slotval1 = gen_qpalette_types.QPalette(h: pal)


  nimfunc[](slotval1)
proc QProxyStylepolish*(self: gen_qproxystyle_types.QProxyStyle, app: gen_qapplication_types.QApplication): void =
  fQProxyStyle_virtualbase_polishWithApp(self.h, app.h)

type QProxyStylepolishWithAppProc* = proc(app: gen_qapplication_types.QApplication): void
proc onpolish*(self: gen_qproxystyle_types.QProxyStyle, slot: QProxyStylepolishWithAppProc) =
  # TODO check subclass
  var tmp = new QProxyStylepolishWithAppProc
  tmp[] = slot
  GC_ref(tmp)
  fcQProxyStyle_override_virtual_polishWithApp(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProxyStyle_polishWithApp(self: ptr cQProxyStyle, slot: int, app: pointer): void {.exportc: "miqt_exec_callback_QProxyStyle_polishWithApp ".} =
  var nimfunc = cast[ptr QProxyStylepolishWithAppProc](cast[pointer](slot))
  let slotval1 = gen_qapplication_types.QApplication(h: app)


  nimfunc[](slotval1)
proc QProxyStyleunpolish*(self: gen_qproxystyle_types.QProxyStyle, widget: gen_qwidget_types.QWidget): void =
  fQProxyStyle_virtualbase_unpolish(self.h, widget.h)

type QProxyStyleunpolishProc* = proc(widget: gen_qwidget_types.QWidget): void
proc onunpolish*(self: gen_qproxystyle_types.QProxyStyle, slot: QProxyStyleunpolishProc) =
  # TODO check subclass
  var tmp = new QProxyStyleunpolishProc
  tmp[] = slot
  GC_ref(tmp)
  fcQProxyStyle_override_virtual_unpolish(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProxyStyle_unpolish(self: ptr cQProxyStyle, slot: int, widget: pointer): void {.exportc: "miqt_exec_callback_QProxyStyle_unpolish ".} =
  var nimfunc = cast[ptr QProxyStyleunpolishProc](cast[pointer](slot))
  let slotval1 = gen_qwidget_types.QWidget(h: widget)


  nimfunc[](slotval1)
proc QProxyStyleunpolish*(self: gen_qproxystyle_types.QProxyStyle, app: gen_qapplication_types.QApplication): void =
  fQProxyStyle_virtualbase_unpolishWithApp(self.h, app.h)

type QProxyStyleunpolishWithAppProc* = proc(app: gen_qapplication_types.QApplication): void
proc onunpolish*(self: gen_qproxystyle_types.QProxyStyle, slot: QProxyStyleunpolishWithAppProc) =
  # TODO check subclass
  var tmp = new QProxyStyleunpolishWithAppProc
  tmp[] = slot
  GC_ref(tmp)
  fcQProxyStyle_override_virtual_unpolishWithApp(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProxyStyle_unpolishWithApp(self: ptr cQProxyStyle, slot: int, app: pointer): void {.exportc: "miqt_exec_callback_QProxyStyle_unpolishWithApp ".} =
  var nimfunc = cast[ptr QProxyStyleunpolishWithAppProc](cast[pointer](slot))
  let slotval1 = gen_qapplication_types.QApplication(h: app)


  nimfunc[](slotval1)
proc QProxyStyleevent*(self: gen_qproxystyle_types.QProxyStyle, e: gen_qcoreevent_types.QEvent): bool =
  fQProxyStyle_virtualbase_event(self.h, e.h)

type QProxyStyleeventProc* = proc(e: gen_qcoreevent_types.QEvent): bool
proc onevent*(self: gen_qproxystyle_types.QProxyStyle, slot: QProxyStyleeventProc) =
  # TODO check subclass
  var tmp = new QProxyStyleeventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQProxyStyle_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProxyStyle_event(self: ptr cQProxyStyle, slot: int, e: pointer): bool {.exportc: "miqt_exec_callback_QProxyStyle_event ".} =
  var nimfunc = cast[ptr QProxyStyleeventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: e)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QProxyStyleeventFilter*(self: gen_qproxystyle_types.QProxyStyle, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fQProxyStyle_virtualbase_eventFilter(self.h, watched.h, event.h)

type QProxyStyleeventFilterProc* = proc(watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool
proc oneventFilter*(self: gen_qproxystyle_types.QProxyStyle, slot: QProxyStyleeventFilterProc) =
  # TODO check subclass
  var tmp = new QProxyStyleeventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQProxyStyle_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProxyStyle_eventFilter(self: ptr cQProxyStyle, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QProxyStyle_eventFilter ".} =
  var nimfunc = cast[ptr QProxyStyleeventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: watched)

  let slotval2 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QProxyStyletimerEvent*(self: gen_qproxystyle_types.QProxyStyle, event: gen_qcoreevent_types.QTimerEvent): void =
  fQProxyStyle_virtualbase_timerEvent(self.h, event.h)

type QProxyStyletimerEventProc* = proc(event: gen_qcoreevent_types.QTimerEvent): void
proc ontimerEvent*(self: gen_qproxystyle_types.QProxyStyle, slot: QProxyStyletimerEventProc) =
  # TODO check subclass
  var tmp = new QProxyStyletimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQProxyStyle_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProxyStyle_timerEvent(self: ptr cQProxyStyle, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QProxyStyle_timerEvent ".} =
  var nimfunc = cast[ptr QProxyStyletimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QProxyStylechildEvent*(self: gen_qproxystyle_types.QProxyStyle, event: gen_qcoreevent_types.QChildEvent): void =
  fQProxyStyle_virtualbase_childEvent(self.h, event.h)

type QProxyStylechildEventProc* = proc(event: gen_qcoreevent_types.QChildEvent): void
proc onchildEvent*(self: gen_qproxystyle_types.QProxyStyle, slot: QProxyStylechildEventProc) =
  # TODO check subclass
  var tmp = new QProxyStylechildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQProxyStyle_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProxyStyle_childEvent(self: ptr cQProxyStyle, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QProxyStyle_childEvent ".} =
  var nimfunc = cast[ptr QProxyStylechildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QProxyStylecustomEvent*(self: gen_qproxystyle_types.QProxyStyle, event: gen_qcoreevent_types.QEvent): void =
  fQProxyStyle_virtualbase_customEvent(self.h, event.h)

type QProxyStylecustomEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc oncustomEvent*(self: gen_qproxystyle_types.QProxyStyle, slot: QProxyStylecustomEventProc) =
  # TODO check subclass
  var tmp = new QProxyStylecustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQProxyStyle_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProxyStyle_customEvent(self: ptr cQProxyStyle, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QProxyStyle_customEvent ".} =
  var nimfunc = cast[ptr QProxyStylecustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QProxyStyleconnectNotify*(self: gen_qproxystyle_types.QProxyStyle, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQProxyStyle_virtualbase_connectNotify(self.h, signal.h)

type QProxyStyleconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc onconnectNotify*(self: gen_qproxystyle_types.QProxyStyle, slot: QProxyStyleconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QProxyStyleconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQProxyStyle_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProxyStyle_connectNotify(self: ptr cQProxyStyle, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QProxyStyle_connectNotify ".} =
  var nimfunc = cast[ptr QProxyStyleconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QProxyStyledisconnectNotify*(self: gen_qproxystyle_types.QProxyStyle, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQProxyStyle_virtualbase_disconnectNotify(self.h, signal.h)

type QProxyStyledisconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qproxystyle_types.QProxyStyle, slot: QProxyStyledisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QProxyStyledisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQProxyStyle_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProxyStyle_disconnectNotify(self: ptr cQProxyStyle, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QProxyStyle_disconnectNotify ".} =
  var nimfunc = cast[ptr QProxyStyledisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc staticMetaObject*(_: type gen_qproxystyle_types.QProxyStyle): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQProxyStyle_staticMetaObject())
proc delete*(self: gen_qproxystyle_types.QProxyStyle) =
  fcQProxyStyle_delete(self.h)
