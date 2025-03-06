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
type cQProxyStyleVTable = object
  destructor*: proc(vtbl: ptr cQProxyStyleVTable, self: ptr cQProxyStyle) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(vtbl, self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(vtbl, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  drawPrimitive*: proc(vtbl, self: pointer, element: cint, option: pointer, painter: pointer, widget: pointer): void {.cdecl, raises: [], gcsafe.}
  drawControl*: proc(vtbl, self: pointer, element: cint, option: pointer, painter: pointer, widget: pointer): void {.cdecl, raises: [], gcsafe.}
  drawComplexControl*: proc(vtbl, self: pointer, control: cint, option: pointer, painter: pointer, widget: pointer): void {.cdecl, raises: [], gcsafe.}
  drawItemText*: proc(vtbl, self: pointer, painter: pointer, rect: pointer, flags: cint, pal: pointer, enabled: bool, text: struct_miqt_string, textRole: cint): void {.cdecl, raises: [], gcsafe.}
  drawItemPixmap*: proc(vtbl, self: pointer, painter: pointer, rect: pointer, alignment: cint, pixmap: pointer): void {.cdecl, raises: [], gcsafe.}
  sizeFromContents*: proc(vtbl, self: pointer, typeVal: cint, option: pointer, size: pointer, widget: pointer): pointer {.cdecl, raises: [], gcsafe.}
  subElementRect*: proc(vtbl, self: pointer, element: cint, option: pointer, widget: pointer): pointer {.cdecl, raises: [], gcsafe.}
  subControlRect*: proc(vtbl, self: pointer, cc: cint, opt: pointer, sc: cint, widget: pointer): pointer {.cdecl, raises: [], gcsafe.}
  itemTextRect*: proc(vtbl, self: pointer, fm: pointer, r: pointer, flags: cint, enabled: bool, text: struct_miqt_string): pointer {.cdecl, raises: [], gcsafe.}
  itemPixmapRect*: proc(vtbl, self: pointer, r: pointer, flags: cint, pixmap: pointer): pointer {.cdecl, raises: [], gcsafe.}
  hitTestComplexControl*: proc(vtbl, self: pointer, control: cint, option: pointer, pos: pointer, widget: pointer): cint {.cdecl, raises: [], gcsafe.}
  styleHint*: proc(vtbl, self: pointer, hint: cint, option: pointer, widget: pointer, returnData: pointer): cint {.cdecl, raises: [], gcsafe.}
  pixelMetric*: proc(vtbl, self: pointer, metric: cint, option: pointer, widget: pointer): cint {.cdecl, raises: [], gcsafe.}
  layoutSpacing*: proc(vtbl, self: pointer, control1: cint, control2: cint, orientation: cint, option: pointer, widget: pointer): cint {.cdecl, raises: [], gcsafe.}
  standardIcon*: proc(vtbl, self: pointer, standardIcon: cint, option: pointer, widget: pointer): pointer {.cdecl, raises: [], gcsafe.}
  standardPixmap*: proc(vtbl, self: pointer, standardPixmap: cint, opt: pointer, widget: pointer): pointer {.cdecl, raises: [], gcsafe.}
  generatedIconPixmap*: proc(vtbl, self: pointer, iconMode: cint, pixmap: pointer, opt: pointer): pointer {.cdecl, raises: [], gcsafe.}
  standardPalette*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  polish*: proc(vtbl, self: pointer, widget: pointer): void {.cdecl, raises: [], gcsafe.}
  polishWithPal*: proc(vtbl, self: pointer, pal: pointer): void {.cdecl, raises: [], gcsafe.}
  polishWithApp*: proc(vtbl, self: pointer, app: pointer): void {.cdecl, raises: [], gcsafe.}
  unpolish*: proc(vtbl, self: pointer, widget: pointer): void {.cdecl, raises: [], gcsafe.}
  unpolishWithApp*: proc(vtbl, self: pointer, app: pointer): void {.cdecl, raises: [], gcsafe.}
  event*: proc(vtbl, self: pointer, e: pointer): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(vtbl, self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQProxyStyle_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QProxyStyle_virtualbase_metaObject".}
proc fcQProxyStyle_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QProxyStyle_virtualbase_metacast".}
proc fcQProxyStyle_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QProxyStyle_virtualbase_metacall".}
proc fcQProxyStyle_virtualbase_drawPrimitive(self: pointer, element: cint, option: pointer, painter: pointer, widget: pointer): void {.importc: "QProxyStyle_virtualbase_drawPrimitive".}
proc fcQProxyStyle_virtualbase_drawControl(self: pointer, element: cint, option: pointer, painter: pointer, widget: pointer): void {.importc: "QProxyStyle_virtualbase_drawControl".}
proc fcQProxyStyle_virtualbase_drawComplexControl(self: pointer, control: cint, option: pointer, painter: pointer, widget: pointer): void {.importc: "QProxyStyle_virtualbase_drawComplexControl".}
proc fcQProxyStyle_virtualbase_drawItemText(self: pointer, painter: pointer, rect: pointer, flags: cint, pal: pointer, enabled: bool, text: struct_miqt_string, textRole: cint): void {.importc: "QProxyStyle_virtualbase_drawItemText".}
proc fcQProxyStyle_virtualbase_drawItemPixmap(self: pointer, painter: pointer, rect: pointer, alignment: cint, pixmap: pointer): void {.importc: "QProxyStyle_virtualbase_drawItemPixmap".}
proc fcQProxyStyle_virtualbase_sizeFromContents(self: pointer, typeVal: cint, option: pointer, size: pointer, widget: pointer): pointer {.importc: "QProxyStyle_virtualbase_sizeFromContents".}
proc fcQProxyStyle_virtualbase_subElementRect(self: pointer, element: cint, option: pointer, widget: pointer): pointer {.importc: "QProxyStyle_virtualbase_subElementRect".}
proc fcQProxyStyle_virtualbase_subControlRect(self: pointer, cc: cint, opt: pointer, sc: cint, widget: pointer): pointer {.importc: "QProxyStyle_virtualbase_subControlRect".}
proc fcQProxyStyle_virtualbase_itemTextRect(self: pointer, fm: pointer, r: pointer, flags: cint, enabled: bool, text: struct_miqt_string): pointer {.importc: "QProxyStyle_virtualbase_itemTextRect".}
proc fcQProxyStyle_virtualbase_itemPixmapRect(self: pointer, r: pointer, flags: cint, pixmap: pointer): pointer {.importc: "QProxyStyle_virtualbase_itemPixmapRect".}
proc fcQProxyStyle_virtualbase_hitTestComplexControl(self: pointer, control: cint, option: pointer, pos: pointer, widget: pointer): cint {.importc: "QProxyStyle_virtualbase_hitTestComplexControl".}
proc fcQProxyStyle_virtualbase_styleHint(self: pointer, hint: cint, option: pointer, widget: pointer, returnData: pointer): cint {.importc: "QProxyStyle_virtualbase_styleHint".}
proc fcQProxyStyle_virtualbase_pixelMetric(self: pointer, metric: cint, option: pointer, widget: pointer): cint {.importc: "QProxyStyle_virtualbase_pixelMetric".}
proc fcQProxyStyle_virtualbase_layoutSpacing(self: pointer, control1: cint, control2: cint, orientation: cint, option: pointer, widget: pointer): cint {.importc: "QProxyStyle_virtualbase_layoutSpacing".}
proc fcQProxyStyle_virtualbase_standardIcon(self: pointer, standardIcon: cint, option: pointer, widget: pointer): pointer {.importc: "QProxyStyle_virtualbase_standardIcon".}
proc fcQProxyStyle_virtualbase_standardPixmap(self: pointer, standardPixmap: cint, opt: pointer, widget: pointer): pointer {.importc: "QProxyStyle_virtualbase_standardPixmap".}
proc fcQProxyStyle_virtualbase_generatedIconPixmap(self: pointer, iconMode: cint, pixmap: pointer, opt: pointer): pointer {.importc: "QProxyStyle_virtualbase_generatedIconPixmap".}
proc fcQProxyStyle_virtualbase_standardPalette(self: pointer, ): pointer {.importc: "QProxyStyle_virtualbase_standardPalette".}
proc fcQProxyStyle_virtualbase_polish(self: pointer, widget: pointer): void {.importc: "QProxyStyle_virtualbase_polish".}
proc fcQProxyStyle_virtualbase_polishWithPal(self: pointer, pal: pointer): void {.importc: "QProxyStyle_virtualbase_polishWithPal".}
proc fcQProxyStyle_virtualbase_polishWithApp(self: pointer, app: pointer): void {.importc: "QProxyStyle_virtualbase_polishWithApp".}
proc fcQProxyStyle_virtualbase_unpolish(self: pointer, widget: pointer): void {.importc: "QProxyStyle_virtualbase_unpolish".}
proc fcQProxyStyle_virtualbase_unpolishWithApp(self: pointer, app: pointer): void {.importc: "QProxyStyle_virtualbase_unpolishWithApp".}
proc fcQProxyStyle_virtualbase_event(self: pointer, e: pointer): bool {.importc: "QProxyStyle_virtualbase_event".}
proc fcQProxyStyle_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QProxyStyle_virtualbase_eventFilter".}
proc fcQProxyStyle_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QProxyStyle_virtualbase_timerEvent".}
proc fcQProxyStyle_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QProxyStyle_virtualbase_childEvent".}
proc fcQProxyStyle_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QProxyStyle_virtualbase_customEvent".}
proc fcQProxyStyle_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QProxyStyle_virtualbase_connectNotify".}
proc fcQProxyStyle_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QProxyStyle_virtualbase_disconnectNotify".}
proc fcQProxyStyle_protectedbase_sender(self: pointer, ): pointer {.importc: "QProxyStyle_protectedbase_sender".}
proc fcQProxyStyle_protectedbase_senderSignalIndex(self: pointer, ): cint {.importc: "QProxyStyle_protectedbase_senderSignalIndex".}
proc fcQProxyStyle_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QProxyStyle_protectedbase_receivers".}
proc fcQProxyStyle_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QProxyStyle_protectedbase_isSignalConnected".}
proc fcQProxyStyle_new(vtbl: pointer, ): ptr cQProxyStyle {.importc: "QProxyStyle_new".}
proc fcQProxyStyle_new2(vtbl: pointer, key: struct_miqt_string): ptr cQProxyStyle {.importc: "QProxyStyle_new2".}
proc fcQProxyStyle_new3(vtbl: pointer, style: pointer): ptr cQProxyStyle {.importc: "QProxyStyle_new3".}
proc fcQProxyStyle_staticMetaObject(): pointer {.importc: "QProxyStyle_staticMetaObject".}
proc fcQProxyStyle_delete(self: pointer) {.importc: "QProxyStyle_delete".}

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

type QProxyStylemetaObjectProc* = proc(self: QProxyStyle): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QProxyStylemetacastProc* = proc(self: QProxyStyle, param1: cstring): pointer {.raises: [], gcsafe.}
type QProxyStylemetacallProc* = proc(self: QProxyStyle, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QProxyStyledrawPrimitiveProc* = proc(self: QProxyStyle, element: cint, option: gen_qstyleoption_types.QStyleOption, painter: gen_qpainter_types.QPainter, widget: gen_qwidget_types.QWidget): void {.raises: [], gcsafe.}
type QProxyStyledrawControlProc* = proc(self: QProxyStyle, element: cint, option: gen_qstyleoption_types.QStyleOption, painter: gen_qpainter_types.QPainter, widget: gen_qwidget_types.QWidget): void {.raises: [], gcsafe.}
type QProxyStyledrawComplexControlProc* = proc(self: QProxyStyle, control: cint, option: gen_qstyleoption_types.QStyleOptionComplex, painter: gen_qpainter_types.QPainter, widget: gen_qwidget_types.QWidget): void {.raises: [], gcsafe.}
type QProxyStyledrawItemTextProc* = proc(self: QProxyStyle, painter: gen_qpainter_types.QPainter, rect: gen_qrect_types.QRect, flags: cint, pal: gen_qpalette_types.QPalette, enabled: bool, text: string, textRole: cint): void {.raises: [], gcsafe.}
type QProxyStyledrawItemPixmapProc* = proc(self: QProxyStyle, painter: gen_qpainter_types.QPainter, rect: gen_qrect_types.QRect, alignment: cint, pixmap: gen_qpixmap_types.QPixmap): void {.raises: [], gcsafe.}
type QProxyStylesizeFromContentsProc* = proc(self: QProxyStyle, typeVal: cint, option: gen_qstyleoption_types.QStyleOption, size: gen_qsize_types.QSize, widget: gen_qwidget_types.QWidget): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QProxyStylesubElementRectProc* = proc(self: QProxyStyle, element: cint, option: gen_qstyleoption_types.QStyleOption, widget: gen_qwidget_types.QWidget): gen_qrect_types.QRect {.raises: [], gcsafe.}
type QProxyStylesubControlRectProc* = proc(self: QProxyStyle, cc: cint, opt: gen_qstyleoption_types.QStyleOptionComplex, sc: cint, widget: gen_qwidget_types.QWidget): gen_qrect_types.QRect {.raises: [], gcsafe.}
type QProxyStyleitemTextRectProc* = proc(self: QProxyStyle, fm: gen_qfontmetrics_types.QFontMetrics, r: gen_qrect_types.QRect, flags: cint, enabled: bool, text: string): gen_qrect_types.QRect {.raises: [], gcsafe.}
type QProxyStyleitemPixmapRectProc* = proc(self: QProxyStyle, r: gen_qrect_types.QRect, flags: cint, pixmap: gen_qpixmap_types.QPixmap): gen_qrect_types.QRect {.raises: [], gcsafe.}
type QProxyStylehitTestComplexControlProc* = proc(self: QProxyStyle, control: cint, option: gen_qstyleoption_types.QStyleOptionComplex, pos: gen_qpoint_types.QPoint, widget: gen_qwidget_types.QWidget): cint {.raises: [], gcsafe.}
type QProxyStylestyleHintProc* = proc(self: QProxyStyle, hint: cint, option: gen_qstyleoption_types.QStyleOption, widget: gen_qwidget_types.QWidget, returnData: gen_qstyleoption_types.QStyleHintReturn): cint {.raises: [], gcsafe.}
type QProxyStylepixelMetricProc* = proc(self: QProxyStyle, metric: cint, option: gen_qstyleoption_types.QStyleOption, widget: gen_qwidget_types.QWidget): cint {.raises: [], gcsafe.}
type QProxyStylelayoutSpacingProc* = proc(self: QProxyStyle, control1: cint, control2: cint, orientation: cint, option: gen_qstyleoption_types.QStyleOption, widget: gen_qwidget_types.QWidget): cint {.raises: [], gcsafe.}
type QProxyStylestandardIconProc* = proc(self: QProxyStyle, standardIcon: cint, option: gen_qstyleoption_types.QStyleOption, widget: gen_qwidget_types.QWidget): gen_qicon_types.QIcon {.raises: [], gcsafe.}
type QProxyStylestandardPixmapProc* = proc(self: QProxyStyle, standardPixmap: cint, opt: gen_qstyleoption_types.QStyleOption, widget: gen_qwidget_types.QWidget): gen_qpixmap_types.QPixmap {.raises: [], gcsafe.}
type QProxyStylegeneratedIconPixmapProc* = proc(self: QProxyStyle, iconMode: cint, pixmap: gen_qpixmap_types.QPixmap, opt: gen_qstyleoption_types.QStyleOption): gen_qpixmap_types.QPixmap {.raises: [], gcsafe.}
type QProxyStylestandardPaletteProc* = proc(self: QProxyStyle): gen_qpalette_types.QPalette {.raises: [], gcsafe.}
type QProxyStylepolishProc* = proc(self: QProxyStyle, widget: gen_qwidget_types.QWidget): void {.raises: [], gcsafe.}
type QProxyStylepolishWithPalProc* = proc(self: QProxyStyle, pal: gen_qpalette_types.QPalette): void {.raises: [], gcsafe.}
type QProxyStylepolishWithAppProc* = proc(self: QProxyStyle, app: gen_qapplication_types.QApplication): void {.raises: [], gcsafe.}
type QProxyStyleunpolishProc* = proc(self: QProxyStyle, widget: gen_qwidget_types.QWidget): void {.raises: [], gcsafe.}
type QProxyStyleunpolishWithAppProc* = proc(self: QProxyStyle, app: gen_qapplication_types.QApplication): void {.raises: [], gcsafe.}
type QProxyStyleeventProc* = proc(self: QProxyStyle, e: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QProxyStyleeventFilterProc* = proc(self: QProxyStyle, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QProxyStyletimerEventProc* = proc(self: QProxyStyle, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QProxyStylechildEventProc* = proc(self: QProxyStyle, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QProxyStylecustomEventProc* = proc(self: QProxyStyle, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QProxyStyleconnectNotifyProc* = proc(self: QProxyStyle, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QProxyStyledisconnectNotifyProc* = proc(self: QProxyStyle, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QProxyStyleVTable* = object
  vtbl: cQProxyStyleVTable
  metaObject*: QProxyStylemetaObjectProc
  metacast*: QProxyStylemetacastProc
  metacall*: QProxyStylemetacallProc
  drawPrimitive*: QProxyStyledrawPrimitiveProc
  drawControl*: QProxyStyledrawControlProc
  drawComplexControl*: QProxyStyledrawComplexControlProc
  drawItemText*: QProxyStyledrawItemTextProc
  drawItemPixmap*: QProxyStyledrawItemPixmapProc
  sizeFromContents*: QProxyStylesizeFromContentsProc
  subElementRect*: QProxyStylesubElementRectProc
  subControlRect*: QProxyStylesubControlRectProc
  itemTextRect*: QProxyStyleitemTextRectProc
  itemPixmapRect*: QProxyStyleitemPixmapRectProc
  hitTestComplexControl*: QProxyStylehitTestComplexControlProc
  styleHint*: QProxyStylestyleHintProc
  pixelMetric*: QProxyStylepixelMetricProc
  layoutSpacing*: QProxyStylelayoutSpacingProc
  standardIcon*: QProxyStylestandardIconProc
  standardPixmap*: QProxyStylestandardPixmapProc
  generatedIconPixmap*: QProxyStylegeneratedIconPixmapProc
  standardPalette*: QProxyStylestandardPaletteProc
  polish*: QProxyStylepolishProc
  polishWithPal*: QProxyStylepolishWithPalProc
  polishWithApp*: QProxyStylepolishWithAppProc
  unpolish*: QProxyStyleunpolishProc
  unpolishWithApp*: QProxyStyleunpolishWithAppProc
  event*: QProxyStyleeventProc
  eventFilter*: QProxyStyleeventFilterProc
  timerEvent*: QProxyStyletimerEventProc
  childEvent*: QProxyStylechildEventProc
  customEvent*: QProxyStylecustomEventProc
  connectNotify*: QProxyStyleconnectNotifyProc
  disconnectNotify*: QProxyStyledisconnectNotifyProc
proc QProxyStylemetaObject*(self: gen_qproxystyle_types.QProxyStyle, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQProxyStyle_virtualbase_metaObject(self.h))

proc miqt_exec_callback_cQProxyStyle_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QProxyStyleVTable](vtbl)
  let self = QProxyStyle(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.h

proc QProxyStylemetacast*(self: gen_qproxystyle_types.QProxyStyle, param1: cstring): pointer =
  fcQProxyStyle_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQProxyStyle_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QProxyStyleVTable](vtbl)
  let self = QProxyStyle(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QProxyStylemetacall*(self: gen_qproxystyle_types.QProxyStyle, param1: cint, param2: cint, param3: pointer): cint =
  fcQProxyStyle_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQProxyStyle_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QProxyStyleVTable](vtbl)
  let self = QProxyStyle(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QProxyStyledrawPrimitive*(self: gen_qproxystyle_types.QProxyStyle, element: cint, option: gen_qstyleoption_types.QStyleOption, painter: gen_qpainter_types.QPainter, widget: gen_qwidget_types.QWidget): void =
  fcQProxyStyle_virtualbase_drawPrimitive(self.h, cint(element), option.h, painter.h, widget.h)

proc miqt_exec_callback_cQProxyStyle_drawPrimitive(vtbl: pointer, self: pointer, element: cint, option: pointer, painter: pointer, widget: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QProxyStyleVTable](vtbl)
  let self = QProxyStyle(h: self)
  let slotval1 = cint(element)
  let slotval2 = gen_qstyleoption_types.QStyleOption(h: option)
  let slotval3 = gen_qpainter_types.QPainter(h: painter)
  let slotval4 = gen_qwidget_types.QWidget(h: widget)
  vtbl[].drawPrimitive(self, slotval1, slotval2, slotval3, slotval4)

proc QProxyStyledrawControl*(self: gen_qproxystyle_types.QProxyStyle, element: cint, option: gen_qstyleoption_types.QStyleOption, painter: gen_qpainter_types.QPainter, widget: gen_qwidget_types.QWidget): void =
  fcQProxyStyle_virtualbase_drawControl(self.h, cint(element), option.h, painter.h, widget.h)

proc miqt_exec_callback_cQProxyStyle_drawControl(vtbl: pointer, self: pointer, element: cint, option: pointer, painter: pointer, widget: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QProxyStyleVTable](vtbl)
  let self = QProxyStyle(h: self)
  let slotval1 = cint(element)
  let slotval2 = gen_qstyleoption_types.QStyleOption(h: option)
  let slotval3 = gen_qpainter_types.QPainter(h: painter)
  let slotval4 = gen_qwidget_types.QWidget(h: widget)
  vtbl[].drawControl(self, slotval1, slotval2, slotval3, slotval4)

proc QProxyStyledrawComplexControl*(self: gen_qproxystyle_types.QProxyStyle, control: cint, option: gen_qstyleoption_types.QStyleOptionComplex, painter: gen_qpainter_types.QPainter, widget: gen_qwidget_types.QWidget): void =
  fcQProxyStyle_virtualbase_drawComplexControl(self.h, cint(control), option.h, painter.h, widget.h)

proc miqt_exec_callback_cQProxyStyle_drawComplexControl(vtbl: pointer, self: pointer, control: cint, option: pointer, painter: pointer, widget: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QProxyStyleVTable](vtbl)
  let self = QProxyStyle(h: self)
  let slotval1 = cint(control)
  let slotval2 = gen_qstyleoption_types.QStyleOptionComplex(h: option)
  let slotval3 = gen_qpainter_types.QPainter(h: painter)
  let slotval4 = gen_qwidget_types.QWidget(h: widget)
  vtbl[].drawComplexControl(self, slotval1, slotval2, slotval3, slotval4)

proc QProxyStyledrawItemText*(self: gen_qproxystyle_types.QProxyStyle, painter: gen_qpainter_types.QPainter, rect: gen_qrect_types.QRect, flags: cint, pal: gen_qpalette_types.QPalette, enabled: bool, text: string, textRole: cint): void =
  fcQProxyStyle_virtualbase_drawItemText(self.h, painter.h, rect.h, flags, pal.h, enabled, struct_miqt_string(data: text, len: csize_t(len(text))), cint(textRole))

proc miqt_exec_callback_cQProxyStyle_drawItemText(vtbl: pointer, self: pointer, painter: pointer, rect: pointer, flags: cint, pal: pointer, enabled: bool, text: struct_miqt_string, textRole: cint): void {.cdecl.} =
  let vtbl = cast[ptr QProxyStyleVTable](vtbl)
  let self = QProxyStyle(h: self)
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

proc QProxyStyledrawItemPixmap*(self: gen_qproxystyle_types.QProxyStyle, painter: gen_qpainter_types.QPainter, rect: gen_qrect_types.QRect, alignment: cint, pixmap: gen_qpixmap_types.QPixmap): void =
  fcQProxyStyle_virtualbase_drawItemPixmap(self.h, painter.h, rect.h, alignment, pixmap.h)

proc miqt_exec_callback_cQProxyStyle_drawItemPixmap(vtbl: pointer, self: pointer, painter: pointer, rect: pointer, alignment: cint, pixmap: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QProxyStyleVTable](vtbl)
  let self = QProxyStyle(h: self)
  let slotval1 = gen_qpainter_types.QPainter(h: painter)
  let slotval2 = gen_qrect_types.QRect(h: rect)
  let slotval3 = alignment
  let slotval4 = gen_qpixmap_types.QPixmap(h: pixmap)
  vtbl[].drawItemPixmap(self, slotval1, slotval2, slotval3, slotval4)

proc QProxyStylesizeFromContents*(self: gen_qproxystyle_types.QProxyStyle, typeVal: cint, option: gen_qstyleoption_types.QStyleOption, size: gen_qsize_types.QSize, widget: gen_qwidget_types.QWidget): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQProxyStyle_virtualbase_sizeFromContents(self.h, cint(typeVal), option.h, size.h, widget.h))

proc miqt_exec_callback_cQProxyStyle_sizeFromContents(vtbl: pointer, self: pointer, typeVal: cint, option: pointer, size: pointer, widget: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QProxyStyleVTable](vtbl)
  let self = QProxyStyle(h: self)
  let slotval1 = cint(typeVal)
  let slotval2 = gen_qstyleoption_types.QStyleOption(h: option)
  let slotval3 = gen_qsize_types.QSize(h: size)
  let slotval4 = gen_qwidget_types.QWidget(h: widget)
  var virtualReturn = vtbl[].sizeFromContents(self, slotval1, slotval2, slotval3, slotval4)
  virtualReturn.h

proc QProxyStylesubElementRect*(self: gen_qproxystyle_types.QProxyStyle, element: cint, option: gen_qstyleoption_types.QStyleOption, widget: gen_qwidget_types.QWidget): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fcQProxyStyle_virtualbase_subElementRect(self.h, cint(element), option.h, widget.h))

proc miqt_exec_callback_cQProxyStyle_subElementRect(vtbl: pointer, self: pointer, element: cint, option: pointer, widget: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QProxyStyleVTable](vtbl)
  let self = QProxyStyle(h: self)
  let slotval1 = cint(element)
  let slotval2 = gen_qstyleoption_types.QStyleOption(h: option)
  let slotval3 = gen_qwidget_types.QWidget(h: widget)
  var virtualReturn = vtbl[].subElementRect(self, slotval1, slotval2, slotval3)
  virtualReturn.h

proc QProxyStylesubControlRect*(self: gen_qproxystyle_types.QProxyStyle, cc: cint, opt: gen_qstyleoption_types.QStyleOptionComplex, sc: cint, widget: gen_qwidget_types.QWidget): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fcQProxyStyle_virtualbase_subControlRect(self.h, cint(cc), opt.h, cint(sc), widget.h))

proc miqt_exec_callback_cQProxyStyle_subControlRect(vtbl: pointer, self: pointer, cc: cint, opt: pointer, sc: cint, widget: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QProxyStyleVTable](vtbl)
  let self = QProxyStyle(h: self)
  let slotval1 = cint(cc)
  let slotval2 = gen_qstyleoption_types.QStyleOptionComplex(h: opt)
  let slotval3 = cint(sc)
  let slotval4 = gen_qwidget_types.QWidget(h: widget)
  var virtualReturn = vtbl[].subControlRect(self, slotval1, slotval2, slotval3, slotval4)
  virtualReturn.h

proc QProxyStyleitemTextRect*(self: gen_qproxystyle_types.QProxyStyle, fm: gen_qfontmetrics_types.QFontMetrics, r: gen_qrect_types.QRect, flags: cint, enabled: bool, text: string): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fcQProxyStyle_virtualbase_itemTextRect(self.h, fm.h, r.h, flags, enabled, struct_miqt_string(data: text, len: csize_t(len(text)))))

proc miqt_exec_callback_cQProxyStyle_itemTextRect(vtbl: pointer, self: pointer, fm: pointer, r: pointer, flags: cint, enabled: bool, text: struct_miqt_string): pointer {.cdecl.} =
  let vtbl = cast[ptr QProxyStyleVTable](vtbl)
  let self = QProxyStyle(h: self)
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

proc QProxyStyleitemPixmapRect*(self: gen_qproxystyle_types.QProxyStyle, r: gen_qrect_types.QRect, flags: cint, pixmap: gen_qpixmap_types.QPixmap): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fcQProxyStyle_virtualbase_itemPixmapRect(self.h, r.h, flags, pixmap.h))

proc miqt_exec_callback_cQProxyStyle_itemPixmapRect(vtbl: pointer, self: pointer, r: pointer, flags: cint, pixmap: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QProxyStyleVTable](vtbl)
  let self = QProxyStyle(h: self)
  let slotval1 = gen_qrect_types.QRect(h: r)
  let slotval2 = flags
  let slotval3 = gen_qpixmap_types.QPixmap(h: pixmap)
  var virtualReturn = vtbl[].itemPixmapRect(self, slotval1, slotval2, slotval3)
  virtualReturn.h

proc QProxyStylehitTestComplexControl*(self: gen_qproxystyle_types.QProxyStyle, control: cint, option: gen_qstyleoption_types.QStyleOptionComplex, pos: gen_qpoint_types.QPoint, widget: gen_qwidget_types.QWidget): cint =
  cint(fcQProxyStyle_virtualbase_hitTestComplexControl(self.h, cint(control), option.h, pos.h, widget.h))

proc miqt_exec_callback_cQProxyStyle_hitTestComplexControl(vtbl: pointer, self: pointer, control: cint, option: pointer, pos: pointer, widget: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QProxyStyleVTable](vtbl)
  let self = QProxyStyle(h: self)
  let slotval1 = cint(control)
  let slotval2 = gen_qstyleoption_types.QStyleOptionComplex(h: option)
  let slotval3 = gen_qpoint_types.QPoint(h: pos)
  let slotval4 = gen_qwidget_types.QWidget(h: widget)
  var virtualReturn = vtbl[].hitTestComplexControl(self, slotval1, slotval2, slotval3, slotval4)
  cint(virtualReturn)

proc QProxyStylestyleHint*(self: gen_qproxystyle_types.QProxyStyle, hint: cint, option: gen_qstyleoption_types.QStyleOption, widget: gen_qwidget_types.QWidget, returnData: gen_qstyleoption_types.QStyleHintReturn): cint =
  fcQProxyStyle_virtualbase_styleHint(self.h, cint(hint), option.h, widget.h, returnData.h)

proc miqt_exec_callback_cQProxyStyle_styleHint(vtbl: pointer, self: pointer, hint: cint, option: pointer, widget: pointer, returnData: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QProxyStyleVTable](vtbl)
  let self = QProxyStyle(h: self)
  let slotval1 = cint(hint)
  let slotval2 = gen_qstyleoption_types.QStyleOption(h: option)
  let slotval3 = gen_qwidget_types.QWidget(h: widget)
  let slotval4 = gen_qstyleoption_types.QStyleHintReturn(h: returnData)
  var virtualReturn = vtbl[].styleHint(self, slotval1, slotval2, slotval3, slotval4)
  virtualReturn

proc QProxyStylepixelMetric*(self: gen_qproxystyle_types.QProxyStyle, metric: cint, option: gen_qstyleoption_types.QStyleOption, widget: gen_qwidget_types.QWidget): cint =
  fcQProxyStyle_virtualbase_pixelMetric(self.h, cint(metric), option.h, widget.h)

proc miqt_exec_callback_cQProxyStyle_pixelMetric(vtbl: pointer, self: pointer, metric: cint, option: pointer, widget: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QProxyStyleVTable](vtbl)
  let self = QProxyStyle(h: self)
  let slotval1 = cint(metric)
  let slotval2 = gen_qstyleoption_types.QStyleOption(h: option)
  let slotval3 = gen_qwidget_types.QWidget(h: widget)
  var virtualReturn = vtbl[].pixelMetric(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QProxyStylelayoutSpacing*(self: gen_qproxystyle_types.QProxyStyle, control1: cint, control2: cint, orientation: cint, option: gen_qstyleoption_types.QStyleOption, widget: gen_qwidget_types.QWidget): cint =
  fcQProxyStyle_virtualbase_layoutSpacing(self.h, cint(control1), cint(control2), cint(orientation), option.h, widget.h)

proc miqt_exec_callback_cQProxyStyle_layoutSpacing(vtbl: pointer, self: pointer, control1: cint, control2: cint, orientation: cint, option: pointer, widget: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QProxyStyleVTable](vtbl)
  let self = QProxyStyle(h: self)
  let slotval1 = cint(control1)
  let slotval2 = cint(control2)
  let slotval3 = cint(orientation)
  let slotval4 = gen_qstyleoption_types.QStyleOption(h: option)
  let slotval5 = gen_qwidget_types.QWidget(h: widget)
  var virtualReturn = vtbl[].layoutSpacing(self, slotval1, slotval2, slotval3, slotval4, slotval5)
  virtualReturn

proc QProxyStylestandardIcon*(self: gen_qproxystyle_types.QProxyStyle, standardIcon: cint, option: gen_qstyleoption_types.QStyleOption, widget: gen_qwidget_types.QWidget): gen_qicon_types.QIcon =
  gen_qicon_types.QIcon(h: fcQProxyStyle_virtualbase_standardIcon(self.h, cint(standardIcon), option.h, widget.h))

proc miqt_exec_callback_cQProxyStyle_standardIcon(vtbl: pointer, self: pointer, standardIcon: cint, option: pointer, widget: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QProxyStyleVTable](vtbl)
  let self = QProxyStyle(h: self)
  let slotval1 = cint(standardIcon)
  let slotval2 = gen_qstyleoption_types.QStyleOption(h: option)
  let slotval3 = gen_qwidget_types.QWidget(h: widget)
  var virtualReturn = vtbl[].standardIcon(self, slotval1, slotval2, slotval3)
  virtualReturn.h

proc QProxyStylestandardPixmap*(self: gen_qproxystyle_types.QProxyStyle, standardPixmap: cint, opt: gen_qstyleoption_types.QStyleOption, widget: gen_qwidget_types.QWidget): gen_qpixmap_types.QPixmap =
  gen_qpixmap_types.QPixmap(h: fcQProxyStyle_virtualbase_standardPixmap(self.h, cint(standardPixmap), opt.h, widget.h))

proc miqt_exec_callback_cQProxyStyle_standardPixmap(vtbl: pointer, self: pointer, standardPixmap: cint, opt: pointer, widget: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QProxyStyleVTable](vtbl)
  let self = QProxyStyle(h: self)
  let slotval1 = cint(standardPixmap)
  let slotval2 = gen_qstyleoption_types.QStyleOption(h: opt)
  let slotval3 = gen_qwidget_types.QWidget(h: widget)
  var virtualReturn = vtbl[].standardPixmap(self, slotval1, slotval2, slotval3)
  virtualReturn.h

proc QProxyStylegeneratedIconPixmap*(self: gen_qproxystyle_types.QProxyStyle, iconMode: cint, pixmap: gen_qpixmap_types.QPixmap, opt: gen_qstyleoption_types.QStyleOption): gen_qpixmap_types.QPixmap =
  gen_qpixmap_types.QPixmap(h: fcQProxyStyle_virtualbase_generatedIconPixmap(self.h, cint(iconMode), pixmap.h, opt.h))

proc miqt_exec_callback_cQProxyStyle_generatedIconPixmap(vtbl: pointer, self: pointer, iconMode: cint, pixmap: pointer, opt: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QProxyStyleVTable](vtbl)
  let self = QProxyStyle(h: self)
  let slotval1 = cint(iconMode)
  let slotval2 = gen_qpixmap_types.QPixmap(h: pixmap)
  let slotval3 = gen_qstyleoption_types.QStyleOption(h: opt)
  var virtualReturn = vtbl[].generatedIconPixmap(self, slotval1, slotval2, slotval3)
  virtualReturn.h

proc QProxyStylestandardPalette*(self: gen_qproxystyle_types.QProxyStyle, ): gen_qpalette_types.QPalette =
  gen_qpalette_types.QPalette(h: fcQProxyStyle_virtualbase_standardPalette(self.h))

proc miqt_exec_callback_cQProxyStyle_standardPalette(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QProxyStyleVTable](vtbl)
  let self = QProxyStyle(h: self)
  var virtualReturn = vtbl[].standardPalette(self)
  virtualReturn.h

proc QProxyStylepolish*(self: gen_qproxystyle_types.QProxyStyle, widget: gen_qwidget_types.QWidget): void =
  fcQProxyStyle_virtualbase_polish(self.h, widget.h)

proc miqt_exec_callback_cQProxyStyle_polish(vtbl: pointer, self: pointer, widget: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QProxyStyleVTable](vtbl)
  let self = QProxyStyle(h: self)
  let slotval1 = gen_qwidget_types.QWidget(h: widget)
  vtbl[].polish(self, slotval1)

proc QProxyStylepolish*(self: gen_qproxystyle_types.QProxyStyle, pal: gen_qpalette_types.QPalette): void =
  fcQProxyStyle_virtualbase_polishWithPal(self.h, pal.h)

proc miqt_exec_callback_cQProxyStyle_polishWithPal(vtbl: pointer, self: pointer, pal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QProxyStyleVTable](vtbl)
  let self = QProxyStyle(h: self)
  let slotval1 = gen_qpalette_types.QPalette(h: pal)
  vtbl[].polishWithPal(self, slotval1)

proc QProxyStylepolish*(self: gen_qproxystyle_types.QProxyStyle, app: gen_qapplication_types.QApplication): void =
  fcQProxyStyle_virtualbase_polishWithApp(self.h, app.h)

proc miqt_exec_callback_cQProxyStyle_polishWithApp(vtbl: pointer, self: pointer, app: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QProxyStyleVTable](vtbl)
  let self = QProxyStyle(h: self)
  let slotval1 = gen_qapplication_types.QApplication(h: app)
  vtbl[].polishWithApp(self, slotval1)

proc QProxyStyleunpolish*(self: gen_qproxystyle_types.QProxyStyle, widget: gen_qwidget_types.QWidget): void =
  fcQProxyStyle_virtualbase_unpolish(self.h, widget.h)

proc miqt_exec_callback_cQProxyStyle_unpolish(vtbl: pointer, self: pointer, widget: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QProxyStyleVTable](vtbl)
  let self = QProxyStyle(h: self)
  let slotval1 = gen_qwidget_types.QWidget(h: widget)
  vtbl[].unpolish(self, slotval1)

proc QProxyStyleunpolish*(self: gen_qproxystyle_types.QProxyStyle, app: gen_qapplication_types.QApplication): void =
  fcQProxyStyle_virtualbase_unpolishWithApp(self.h, app.h)

proc miqt_exec_callback_cQProxyStyle_unpolishWithApp(vtbl: pointer, self: pointer, app: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QProxyStyleVTable](vtbl)
  let self = QProxyStyle(h: self)
  let slotval1 = gen_qapplication_types.QApplication(h: app)
  vtbl[].unpolishWithApp(self, slotval1)

proc QProxyStyleevent*(self: gen_qproxystyle_types.QProxyStyle, e: gen_qcoreevent_types.QEvent): bool =
  fcQProxyStyle_virtualbase_event(self.h, e.h)

proc miqt_exec_callback_cQProxyStyle_event(vtbl: pointer, self: pointer, e: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QProxyStyleVTable](vtbl)
  let self = QProxyStyle(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: e)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QProxyStyleeventFilter*(self: gen_qproxystyle_types.QProxyStyle, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQProxyStyle_virtualbase_eventFilter(self.h, watched.h, event.h)

proc miqt_exec_callback_cQProxyStyle_eventFilter(vtbl: pointer, self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QProxyStyleVTable](vtbl)
  let self = QProxyStyle(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QProxyStyletimerEvent*(self: gen_qproxystyle_types.QProxyStyle, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQProxyStyle_virtualbase_timerEvent(self.h, event.h)

proc miqt_exec_callback_cQProxyStyle_timerEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QProxyStyleVTable](vtbl)
  let self = QProxyStyle(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)
  vtbl[].timerEvent(self, slotval1)

proc QProxyStylechildEvent*(self: gen_qproxystyle_types.QProxyStyle, event: gen_qcoreevent_types.QChildEvent): void =
  fcQProxyStyle_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQProxyStyle_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QProxyStyleVTable](vtbl)
  let self = QProxyStyle(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)
  vtbl[].childEvent(self, slotval1)

proc QProxyStylecustomEvent*(self: gen_qproxystyle_types.QProxyStyle, event: gen_qcoreevent_types.QEvent): void =
  fcQProxyStyle_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQProxyStyle_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QProxyStyleVTable](vtbl)
  let self = QProxyStyle(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].customEvent(self, slotval1)

proc QProxyStyleconnectNotify*(self: gen_qproxystyle_types.QProxyStyle, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQProxyStyle_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQProxyStyle_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QProxyStyleVTable](vtbl)
  let self = QProxyStyle(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].connectNotify(self, slotval1)

proc QProxyStyledisconnectNotify*(self: gen_qproxystyle_types.QProxyStyle, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQProxyStyle_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQProxyStyle_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QProxyStyleVTable](vtbl)
  let self = QProxyStyle(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].disconnectNotify(self, slotval1)

proc sender*(self: gen_qproxystyle_types.QProxyStyle, ): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQProxyStyle_protectedbase_sender(self.h))

proc senderSignalIndex*(self: gen_qproxystyle_types.QProxyStyle, ): cint =
  fcQProxyStyle_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qproxystyle_types.QProxyStyle, signal: cstring): cint =
  fcQProxyStyle_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qproxystyle_types.QProxyStyle, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQProxyStyle_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qproxystyle_types.QProxyStyle,
    vtbl: ref QProxyStyleVTable = nil): gen_qproxystyle_types.QProxyStyle =
  let vtbl = if vtbl == nil: new QProxyStyleVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQProxyStyleVTable, _: ptr cQProxyStyle) {.cdecl.} =
    let vtbl = cast[ref QProxyStyleVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQProxyStyle_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQProxyStyle_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQProxyStyle_metacall
  if not isNil(vtbl.drawPrimitive):
    vtbl[].vtbl.drawPrimitive = miqt_exec_callback_cQProxyStyle_drawPrimitive
  if not isNil(vtbl.drawControl):
    vtbl[].vtbl.drawControl = miqt_exec_callback_cQProxyStyle_drawControl
  if not isNil(vtbl.drawComplexControl):
    vtbl[].vtbl.drawComplexControl = miqt_exec_callback_cQProxyStyle_drawComplexControl
  if not isNil(vtbl.drawItemText):
    vtbl[].vtbl.drawItemText = miqt_exec_callback_cQProxyStyle_drawItemText
  if not isNil(vtbl.drawItemPixmap):
    vtbl[].vtbl.drawItemPixmap = miqt_exec_callback_cQProxyStyle_drawItemPixmap
  if not isNil(vtbl.sizeFromContents):
    vtbl[].vtbl.sizeFromContents = miqt_exec_callback_cQProxyStyle_sizeFromContents
  if not isNil(vtbl.subElementRect):
    vtbl[].vtbl.subElementRect = miqt_exec_callback_cQProxyStyle_subElementRect
  if not isNil(vtbl.subControlRect):
    vtbl[].vtbl.subControlRect = miqt_exec_callback_cQProxyStyle_subControlRect
  if not isNil(vtbl.itemTextRect):
    vtbl[].vtbl.itemTextRect = miqt_exec_callback_cQProxyStyle_itemTextRect
  if not isNil(vtbl.itemPixmapRect):
    vtbl[].vtbl.itemPixmapRect = miqt_exec_callback_cQProxyStyle_itemPixmapRect
  if not isNil(vtbl.hitTestComplexControl):
    vtbl[].vtbl.hitTestComplexControl = miqt_exec_callback_cQProxyStyle_hitTestComplexControl
  if not isNil(vtbl.styleHint):
    vtbl[].vtbl.styleHint = miqt_exec_callback_cQProxyStyle_styleHint
  if not isNil(vtbl.pixelMetric):
    vtbl[].vtbl.pixelMetric = miqt_exec_callback_cQProxyStyle_pixelMetric
  if not isNil(vtbl.layoutSpacing):
    vtbl[].vtbl.layoutSpacing = miqt_exec_callback_cQProxyStyle_layoutSpacing
  if not isNil(vtbl.standardIcon):
    vtbl[].vtbl.standardIcon = miqt_exec_callback_cQProxyStyle_standardIcon
  if not isNil(vtbl.standardPixmap):
    vtbl[].vtbl.standardPixmap = miqt_exec_callback_cQProxyStyle_standardPixmap
  if not isNil(vtbl.generatedIconPixmap):
    vtbl[].vtbl.generatedIconPixmap = miqt_exec_callback_cQProxyStyle_generatedIconPixmap
  if not isNil(vtbl.standardPalette):
    vtbl[].vtbl.standardPalette = miqt_exec_callback_cQProxyStyle_standardPalette
  if not isNil(vtbl.polish):
    vtbl[].vtbl.polish = miqt_exec_callback_cQProxyStyle_polish
  if not isNil(vtbl.polishWithPal):
    vtbl[].vtbl.polishWithPal = miqt_exec_callback_cQProxyStyle_polishWithPal
  if not isNil(vtbl.polishWithApp):
    vtbl[].vtbl.polishWithApp = miqt_exec_callback_cQProxyStyle_polishWithApp
  if not isNil(vtbl.unpolish):
    vtbl[].vtbl.unpolish = miqt_exec_callback_cQProxyStyle_unpolish
  if not isNil(vtbl.unpolishWithApp):
    vtbl[].vtbl.unpolishWithApp = miqt_exec_callback_cQProxyStyle_unpolishWithApp
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQProxyStyle_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQProxyStyle_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQProxyStyle_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQProxyStyle_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQProxyStyle_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQProxyStyle_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQProxyStyle_disconnectNotify
  gen_qproxystyle_types.QProxyStyle(h: fcQProxyStyle_new(addr(vtbl[]), ))

proc create*(T: type gen_qproxystyle_types.QProxyStyle,
    key: string,
    vtbl: ref QProxyStyleVTable = nil): gen_qproxystyle_types.QProxyStyle =
  let vtbl = if vtbl == nil: new QProxyStyleVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQProxyStyleVTable, _: ptr cQProxyStyle) {.cdecl.} =
    let vtbl = cast[ref QProxyStyleVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQProxyStyle_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQProxyStyle_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQProxyStyle_metacall
  if not isNil(vtbl.drawPrimitive):
    vtbl[].vtbl.drawPrimitive = miqt_exec_callback_cQProxyStyle_drawPrimitive
  if not isNil(vtbl.drawControl):
    vtbl[].vtbl.drawControl = miqt_exec_callback_cQProxyStyle_drawControl
  if not isNil(vtbl.drawComplexControl):
    vtbl[].vtbl.drawComplexControl = miqt_exec_callback_cQProxyStyle_drawComplexControl
  if not isNil(vtbl.drawItemText):
    vtbl[].vtbl.drawItemText = miqt_exec_callback_cQProxyStyle_drawItemText
  if not isNil(vtbl.drawItemPixmap):
    vtbl[].vtbl.drawItemPixmap = miqt_exec_callback_cQProxyStyle_drawItemPixmap
  if not isNil(vtbl.sizeFromContents):
    vtbl[].vtbl.sizeFromContents = miqt_exec_callback_cQProxyStyle_sizeFromContents
  if not isNil(vtbl.subElementRect):
    vtbl[].vtbl.subElementRect = miqt_exec_callback_cQProxyStyle_subElementRect
  if not isNil(vtbl.subControlRect):
    vtbl[].vtbl.subControlRect = miqt_exec_callback_cQProxyStyle_subControlRect
  if not isNil(vtbl.itemTextRect):
    vtbl[].vtbl.itemTextRect = miqt_exec_callback_cQProxyStyle_itemTextRect
  if not isNil(vtbl.itemPixmapRect):
    vtbl[].vtbl.itemPixmapRect = miqt_exec_callback_cQProxyStyle_itemPixmapRect
  if not isNil(vtbl.hitTestComplexControl):
    vtbl[].vtbl.hitTestComplexControl = miqt_exec_callback_cQProxyStyle_hitTestComplexControl
  if not isNil(vtbl.styleHint):
    vtbl[].vtbl.styleHint = miqt_exec_callback_cQProxyStyle_styleHint
  if not isNil(vtbl.pixelMetric):
    vtbl[].vtbl.pixelMetric = miqt_exec_callback_cQProxyStyle_pixelMetric
  if not isNil(vtbl.layoutSpacing):
    vtbl[].vtbl.layoutSpacing = miqt_exec_callback_cQProxyStyle_layoutSpacing
  if not isNil(vtbl.standardIcon):
    vtbl[].vtbl.standardIcon = miqt_exec_callback_cQProxyStyle_standardIcon
  if not isNil(vtbl.standardPixmap):
    vtbl[].vtbl.standardPixmap = miqt_exec_callback_cQProxyStyle_standardPixmap
  if not isNil(vtbl.generatedIconPixmap):
    vtbl[].vtbl.generatedIconPixmap = miqt_exec_callback_cQProxyStyle_generatedIconPixmap
  if not isNil(vtbl.standardPalette):
    vtbl[].vtbl.standardPalette = miqt_exec_callback_cQProxyStyle_standardPalette
  if not isNil(vtbl.polish):
    vtbl[].vtbl.polish = miqt_exec_callback_cQProxyStyle_polish
  if not isNil(vtbl.polishWithPal):
    vtbl[].vtbl.polishWithPal = miqt_exec_callback_cQProxyStyle_polishWithPal
  if not isNil(vtbl.polishWithApp):
    vtbl[].vtbl.polishWithApp = miqt_exec_callback_cQProxyStyle_polishWithApp
  if not isNil(vtbl.unpolish):
    vtbl[].vtbl.unpolish = miqt_exec_callback_cQProxyStyle_unpolish
  if not isNil(vtbl.unpolishWithApp):
    vtbl[].vtbl.unpolishWithApp = miqt_exec_callback_cQProxyStyle_unpolishWithApp
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQProxyStyle_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQProxyStyle_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQProxyStyle_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQProxyStyle_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQProxyStyle_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQProxyStyle_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQProxyStyle_disconnectNotify
  gen_qproxystyle_types.QProxyStyle(h: fcQProxyStyle_new2(addr(vtbl[]), struct_miqt_string(data: key, len: csize_t(len(key)))))

proc create*(T: type gen_qproxystyle_types.QProxyStyle,
    style: gen_qstyle_types.QStyle,
    vtbl: ref QProxyStyleVTable = nil): gen_qproxystyle_types.QProxyStyle =
  let vtbl = if vtbl == nil: new QProxyStyleVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQProxyStyleVTable, _: ptr cQProxyStyle) {.cdecl.} =
    let vtbl = cast[ref QProxyStyleVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQProxyStyle_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQProxyStyle_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQProxyStyle_metacall
  if not isNil(vtbl.drawPrimitive):
    vtbl[].vtbl.drawPrimitive = miqt_exec_callback_cQProxyStyle_drawPrimitive
  if not isNil(vtbl.drawControl):
    vtbl[].vtbl.drawControl = miqt_exec_callback_cQProxyStyle_drawControl
  if not isNil(vtbl.drawComplexControl):
    vtbl[].vtbl.drawComplexControl = miqt_exec_callback_cQProxyStyle_drawComplexControl
  if not isNil(vtbl.drawItemText):
    vtbl[].vtbl.drawItemText = miqt_exec_callback_cQProxyStyle_drawItemText
  if not isNil(vtbl.drawItemPixmap):
    vtbl[].vtbl.drawItemPixmap = miqt_exec_callback_cQProxyStyle_drawItemPixmap
  if not isNil(vtbl.sizeFromContents):
    vtbl[].vtbl.sizeFromContents = miqt_exec_callback_cQProxyStyle_sizeFromContents
  if not isNil(vtbl.subElementRect):
    vtbl[].vtbl.subElementRect = miqt_exec_callback_cQProxyStyle_subElementRect
  if not isNil(vtbl.subControlRect):
    vtbl[].vtbl.subControlRect = miqt_exec_callback_cQProxyStyle_subControlRect
  if not isNil(vtbl.itemTextRect):
    vtbl[].vtbl.itemTextRect = miqt_exec_callback_cQProxyStyle_itemTextRect
  if not isNil(vtbl.itemPixmapRect):
    vtbl[].vtbl.itemPixmapRect = miqt_exec_callback_cQProxyStyle_itemPixmapRect
  if not isNil(vtbl.hitTestComplexControl):
    vtbl[].vtbl.hitTestComplexControl = miqt_exec_callback_cQProxyStyle_hitTestComplexControl
  if not isNil(vtbl.styleHint):
    vtbl[].vtbl.styleHint = miqt_exec_callback_cQProxyStyle_styleHint
  if not isNil(vtbl.pixelMetric):
    vtbl[].vtbl.pixelMetric = miqt_exec_callback_cQProxyStyle_pixelMetric
  if not isNil(vtbl.layoutSpacing):
    vtbl[].vtbl.layoutSpacing = miqt_exec_callback_cQProxyStyle_layoutSpacing
  if not isNil(vtbl.standardIcon):
    vtbl[].vtbl.standardIcon = miqt_exec_callback_cQProxyStyle_standardIcon
  if not isNil(vtbl.standardPixmap):
    vtbl[].vtbl.standardPixmap = miqt_exec_callback_cQProxyStyle_standardPixmap
  if not isNil(vtbl.generatedIconPixmap):
    vtbl[].vtbl.generatedIconPixmap = miqt_exec_callback_cQProxyStyle_generatedIconPixmap
  if not isNil(vtbl.standardPalette):
    vtbl[].vtbl.standardPalette = miqt_exec_callback_cQProxyStyle_standardPalette
  if not isNil(vtbl.polish):
    vtbl[].vtbl.polish = miqt_exec_callback_cQProxyStyle_polish
  if not isNil(vtbl.polishWithPal):
    vtbl[].vtbl.polishWithPal = miqt_exec_callback_cQProxyStyle_polishWithPal
  if not isNil(vtbl.polishWithApp):
    vtbl[].vtbl.polishWithApp = miqt_exec_callback_cQProxyStyle_polishWithApp
  if not isNil(vtbl.unpolish):
    vtbl[].vtbl.unpolish = miqt_exec_callback_cQProxyStyle_unpolish
  if not isNil(vtbl.unpolishWithApp):
    vtbl[].vtbl.unpolishWithApp = miqt_exec_callback_cQProxyStyle_unpolishWithApp
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQProxyStyle_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQProxyStyle_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQProxyStyle_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQProxyStyle_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQProxyStyle_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQProxyStyle_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQProxyStyle_disconnectNotify
  gen_qproxystyle_types.QProxyStyle(h: fcQProxyStyle_new3(addr(vtbl[]), style.h))

proc staticMetaObject*(_: type gen_qproxystyle_types.QProxyStyle): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQProxyStyle_staticMetaObject())
proc delete*(self: gen_qproxystyle_types.QProxyStyle) =
  fcQProxyStyle_delete(self.h)
