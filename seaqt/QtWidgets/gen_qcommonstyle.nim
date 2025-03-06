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

proc fcQCommonStyle_new(): ptr cQCommonStyle {.importc: "QCommonStyle_new".}
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
proc fQCommonStyle_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QCommonStyle_virtualbase_metaObject".}
proc fcQCommonStyle_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QCommonStyle_override_virtual_metaObject".}
proc fQCommonStyle_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QCommonStyle_virtualbase_metacast".}
proc fcQCommonStyle_override_virtual_metacast(self: pointer, slot: int) {.importc: "QCommonStyle_override_virtual_metacast".}
proc fQCommonStyle_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QCommonStyle_virtualbase_metacall".}
proc fcQCommonStyle_override_virtual_metacall(self: pointer, slot: int) {.importc: "QCommonStyle_override_virtual_metacall".}
proc fQCommonStyle_virtualbase_drawPrimitive(self: pointer, pe: cint, opt: pointer, p: pointer, w: pointer): void{.importc: "QCommonStyle_virtualbase_drawPrimitive".}
proc fcQCommonStyle_override_virtual_drawPrimitive(self: pointer, slot: int) {.importc: "QCommonStyle_override_virtual_drawPrimitive".}
proc fQCommonStyle_virtualbase_drawControl(self: pointer, element: cint, opt: pointer, p: pointer, w: pointer): void{.importc: "QCommonStyle_virtualbase_drawControl".}
proc fcQCommonStyle_override_virtual_drawControl(self: pointer, slot: int) {.importc: "QCommonStyle_override_virtual_drawControl".}
proc fQCommonStyle_virtualbase_subElementRect(self: pointer, r: cint, opt: pointer, widget: pointer): pointer{.importc: "QCommonStyle_virtualbase_subElementRect".}
proc fcQCommonStyle_override_virtual_subElementRect(self: pointer, slot: int) {.importc: "QCommonStyle_override_virtual_subElementRect".}
proc fQCommonStyle_virtualbase_drawComplexControl(self: pointer, cc: cint, opt: pointer, p: pointer, w: pointer): void{.importc: "QCommonStyle_virtualbase_drawComplexControl".}
proc fcQCommonStyle_override_virtual_drawComplexControl(self: pointer, slot: int) {.importc: "QCommonStyle_override_virtual_drawComplexControl".}
proc fQCommonStyle_virtualbase_hitTestComplexControl(self: pointer, cc: cint, opt: pointer, pt: pointer, w: pointer): cint{.importc: "QCommonStyle_virtualbase_hitTestComplexControl".}
proc fcQCommonStyle_override_virtual_hitTestComplexControl(self: pointer, slot: int) {.importc: "QCommonStyle_override_virtual_hitTestComplexControl".}
proc fQCommonStyle_virtualbase_subControlRect(self: pointer, cc: cint, opt: pointer, sc: cint, w: pointer): pointer{.importc: "QCommonStyle_virtualbase_subControlRect".}
proc fcQCommonStyle_override_virtual_subControlRect(self: pointer, slot: int) {.importc: "QCommonStyle_override_virtual_subControlRect".}
proc fQCommonStyle_virtualbase_sizeFromContents(self: pointer, ct: cint, opt: pointer, contentsSize: pointer, widget: pointer): pointer{.importc: "QCommonStyle_virtualbase_sizeFromContents".}
proc fcQCommonStyle_override_virtual_sizeFromContents(self: pointer, slot: int) {.importc: "QCommonStyle_override_virtual_sizeFromContents".}
proc fQCommonStyle_virtualbase_pixelMetric(self: pointer, m: cint, opt: pointer, widget: pointer): cint{.importc: "QCommonStyle_virtualbase_pixelMetric".}
proc fcQCommonStyle_override_virtual_pixelMetric(self: pointer, slot: int) {.importc: "QCommonStyle_override_virtual_pixelMetric".}
proc fQCommonStyle_virtualbase_styleHint(self: pointer, sh: cint, opt: pointer, w: pointer, shret: pointer): cint{.importc: "QCommonStyle_virtualbase_styleHint".}
proc fcQCommonStyle_override_virtual_styleHint(self: pointer, slot: int) {.importc: "QCommonStyle_override_virtual_styleHint".}
proc fQCommonStyle_virtualbase_standardIcon(self: pointer, standardIcon: cint, opt: pointer, widget: pointer): pointer{.importc: "QCommonStyle_virtualbase_standardIcon".}
proc fcQCommonStyle_override_virtual_standardIcon(self: pointer, slot: int) {.importc: "QCommonStyle_override_virtual_standardIcon".}
proc fQCommonStyle_virtualbase_standardPixmap(self: pointer, sp: cint, opt: pointer, widget: pointer): pointer{.importc: "QCommonStyle_virtualbase_standardPixmap".}
proc fcQCommonStyle_override_virtual_standardPixmap(self: pointer, slot: int) {.importc: "QCommonStyle_override_virtual_standardPixmap".}
proc fQCommonStyle_virtualbase_generatedIconPixmap(self: pointer, iconMode: cint, pixmap: pointer, opt: pointer): pointer{.importc: "QCommonStyle_virtualbase_generatedIconPixmap".}
proc fcQCommonStyle_override_virtual_generatedIconPixmap(self: pointer, slot: int) {.importc: "QCommonStyle_override_virtual_generatedIconPixmap".}
proc fQCommonStyle_virtualbase_layoutSpacing(self: pointer, control1: cint, control2: cint, orientation: cint, option: pointer, widget: pointer): cint{.importc: "QCommonStyle_virtualbase_layoutSpacing".}
proc fcQCommonStyle_override_virtual_layoutSpacing(self: pointer, slot: int) {.importc: "QCommonStyle_override_virtual_layoutSpacing".}
proc fQCommonStyle_virtualbase_polish(self: pointer, param1: pointer): void{.importc: "QCommonStyle_virtualbase_polish".}
proc fcQCommonStyle_override_virtual_polish(self: pointer, slot: int) {.importc: "QCommonStyle_override_virtual_polish".}
proc fQCommonStyle_virtualbase_polishWithApp(self: pointer, app: pointer): void{.importc: "QCommonStyle_virtualbase_polishWithApp".}
proc fcQCommonStyle_override_virtual_polishWithApp(self: pointer, slot: int) {.importc: "QCommonStyle_override_virtual_polishWithApp".}
proc fQCommonStyle_virtualbase_polishWithWidget(self: pointer, widget: pointer): void{.importc: "QCommonStyle_virtualbase_polishWithWidget".}
proc fcQCommonStyle_override_virtual_polishWithWidget(self: pointer, slot: int) {.importc: "QCommonStyle_override_virtual_polishWithWidget".}
proc fQCommonStyle_virtualbase_unpolish(self: pointer, widget: pointer): void{.importc: "QCommonStyle_virtualbase_unpolish".}
proc fcQCommonStyle_override_virtual_unpolish(self: pointer, slot: int) {.importc: "QCommonStyle_override_virtual_unpolish".}
proc fQCommonStyle_virtualbase_unpolishWithApplication(self: pointer, application: pointer): void{.importc: "QCommonStyle_virtualbase_unpolishWithApplication".}
proc fcQCommonStyle_override_virtual_unpolishWithApplication(self: pointer, slot: int) {.importc: "QCommonStyle_override_virtual_unpolishWithApplication".}
proc fQCommonStyle_virtualbase_itemTextRect(self: pointer, fm: pointer, r: pointer, flags: cint, enabled: bool, text: struct_miqt_string): pointer{.importc: "QCommonStyle_virtualbase_itemTextRect".}
proc fcQCommonStyle_override_virtual_itemTextRect(self: pointer, slot: int) {.importc: "QCommonStyle_override_virtual_itemTextRect".}
proc fQCommonStyle_virtualbase_itemPixmapRect(self: pointer, r: pointer, flags: cint, pixmap: pointer): pointer{.importc: "QCommonStyle_virtualbase_itemPixmapRect".}
proc fcQCommonStyle_override_virtual_itemPixmapRect(self: pointer, slot: int) {.importc: "QCommonStyle_override_virtual_itemPixmapRect".}
proc fQCommonStyle_virtualbase_drawItemText(self: pointer, painter: pointer, rect: pointer, flags: cint, pal: pointer, enabled: bool, text: struct_miqt_string, textRole: cint): void{.importc: "QCommonStyle_virtualbase_drawItemText".}
proc fcQCommonStyle_override_virtual_drawItemText(self: pointer, slot: int) {.importc: "QCommonStyle_override_virtual_drawItemText".}
proc fQCommonStyle_virtualbase_drawItemPixmap(self: pointer, painter: pointer, rect: pointer, alignment: cint, pixmap: pointer): void{.importc: "QCommonStyle_virtualbase_drawItemPixmap".}
proc fcQCommonStyle_override_virtual_drawItemPixmap(self: pointer, slot: int) {.importc: "QCommonStyle_override_virtual_drawItemPixmap".}
proc fQCommonStyle_virtualbase_standardPalette(self: pointer, ): pointer{.importc: "QCommonStyle_virtualbase_standardPalette".}
proc fcQCommonStyle_override_virtual_standardPalette(self: pointer, slot: int) {.importc: "QCommonStyle_override_virtual_standardPalette".}
proc fQCommonStyle_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QCommonStyle_virtualbase_event".}
proc fcQCommonStyle_override_virtual_event(self: pointer, slot: int) {.importc: "QCommonStyle_override_virtual_event".}
proc fQCommonStyle_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QCommonStyle_virtualbase_eventFilter".}
proc fcQCommonStyle_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QCommonStyle_override_virtual_eventFilter".}
proc fQCommonStyle_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QCommonStyle_virtualbase_timerEvent".}
proc fcQCommonStyle_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QCommonStyle_override_virtual_timerEvent".}
proc fQCommonStyle_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QCommonStyle_virtualbase_childEvent".}
proc fcQCommonStyle_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QCommonStyle_override_virtual_childEvent".}
proc fQCommonStyle_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QCommonStyle_virtualbase_customEvent".}
proc fcQCommonStyle_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QCommonStyle_override_virtual_customEvent".}
proc fQCommonStyle_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QCommonStyle_virtualbase_connectNotify".}
proc fcQCommonStyle_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QCommonStyle_override_virtual_connectNotify".}
proc fQCommonStyle_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QCommonStyle_virtualbase_disconnectNotify".}
proc fcQCommonStyle_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QCommonStyle_override_virtual_disconnectNotify".}
proc fcQCommonStyle_staticMetaObject(): pointer {.importc: "QCommonStyle_staticMetaObject".}
proc fcQCommonStyle_delete(self: pointer) {.importc: "QCommonStyle_delete".}


func init*(T: type gen_qcommonstyle_types.QCommonStyle, h: ptr cQCommonStyle): gen_qcommonstyle_types.QCommonStyle =
  T(h: h)
proc create*(T: type gen_qcommonstyle_types.QCommonStyle, ): gen_qcommonstyle_types.QCommonStyle =
  gen_qcommonstyle_types.QCommonStyle.init(fcQCommonStyle_new())

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

proc QCommonStylemetaObject*(self: gen_qcommonstyle_types.QCommonStyle, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fQCommonStyle_virtualbase_metaObject(self.h))

type QCommonStylemetaObjectProc* = proc(): gen_qobjectdefs_types.QMetaObject
proc onmetaObject*(self: gen_qcommonstyle_types.QCommonStyle, slot: QCommonStylemetaObjectProc) =
  # TODO check subclass
  var tmp = new QCommonStylemetaObjectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQCommonStyle_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCommonStyle_metaObject(self: ptr cQCommonStyle, slot: int): pointer {.exportc: "miqt_exec_callback_QCommonStyle_metaObject ".} =
  var nimfunc = cast[ptr QCommonStylemetaObjectProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QCommonStylemetacast*(self: gen_qcommonstyle_types.QCommonStyle, param1: cstring): pointer =
  fQCommonStyle_virtualbase_metacast(self.h, param1)

type QCommonStylemetacastProc* = proc(param1: cstring): pointer
proc onmetacast*(self: gen_qcommonstyle_types.QCommonStyle, slot: QCommonStylemetacastProc) =
  # TODO check subclass
  var tmp = new QCommonStylemetacastProc
  tmp[] = slot
  GC_ref(tmp)
  fcQCommonStyle_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCommonStyle_metacast(self: ptr cQCommonStyle, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QCommonStyle_metacast ".} =
  var nimfunc = cast[ptr QCommonStylemetacastProc](cast[pointer](slot))
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QCommonStylemetacall*(self: gen_qcommonstyle_types.QCommonStyle, param1: cint, param2: cint, param3: pointer): cint =
  fQCommonStyle_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QCommonStylemetacallProc* = proc(param1: cint, param2: cint, param3: pointer): cint
proc onmetacall*(self: gen_qcommonstyle_types.QCommonStyle, slot: QCommonStylemetacallProc) =
  # TODO check subclass
  var tmp = new QCommonStylemetacallProc
  tmp[] = slot
  GC_ref(tmp)
  fcQCommonStyle_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCommonStyle_metacall(self: ptr cQCommonStyle, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QCommonStyle_metacall ".} =
  var nimfunc = cast[ptr QCommonStylemetacallProc](cast[pointer](slot))
  let slotval1 = cint(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QCommonStyledrawPrimitive*(self: gen_qcommonstyle_types.QCommonStyle, pe: cint, opt: gen_qstyleoption_types.QStyleOption, p: gen_qpainter_types.QPainter, w: gen_qwidget_types.QWidget): void =
  fQCommonStyle_virtualbase_drawPrimitive(self.h, cint(pe), opt.h, p.h, w.h)

type QCommonStyledrawPrimitiveProc* = proc(pe: cint, opt: gen_qstyleoption_types.QStyleOption, p: gen_qpainter_types.QPainter, w: gen_qwidget_types.QWidget): void
proc ondrawPrimitive*(self: gen_qcommonstyle_types.QCommonStyle, slot: QCommonStyledrawPrimitiveProc) =
  # TODO check subclass
  var tmp = new QCommonStyledrawPrimitiveProc
  tmp[] = slot
  GC_ref(tmp)
  fcQCommonStyle_override_virtual_drawPrimitive(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCommonStyle_drawPrimitive(self: ptr cQCommonStyle, slot: int, pe: cint, opt: pointer, p: pointer, w: pointer): void {.exportc: "miqt_exec_callback_QCommonStyle_drawPrimitive ".} =
  var nimfunc = cast[ptr QCommonStyledrawPrimitiveProc](cast[pointer](slot))
  let slotval1 = cint(pe)

  let slotval2 = gen_qstyleoption_types.QStyleOption(h: opt)

  let slotval3 = gen_qpainter_types.QPainter(h: p)

  let slotval4 = gen_qwidget_types.QWidget(h: w)


  nimfunc[](slotval1, slotval2, slotval3, slotval4)
proc QCommonStyledrawControl*(self: gen_qcommonstyle_types.QCommonStyle, element: cint, opt: gen_qstyleoption_types.QStyleOption, p: gen_qpainter_types.QPainter, w: gen_qwidget_types.QWidget): void =
  fQCommonStyle_virtualbase_drawControl(self.h, cint(element), opt.h, p.h, w.h)

type QCommonStyledrawControlProc* = proc(element: cint, opt: gen_qstyleoption_types.QStyleOption, p: gen_qpainter_types.QPainter, w: gen_qwidget_types.QWidget): void
proc ondrawControl*(self: gen_qcommonstyle_types.QCommonStyle, slot: QCommonStyledrawControlProc) =
  # TODO check subclass
  var tmp = new QCommonStyledrawControlProc
  tmp[] = slot
  GC_ref(tmp)
  fcQCommonStyle_override_virtual_drawControl(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCommonStyle_drawControl(self: ptr cQCommonStyle, slot: int, element: cint, opt: pointer, p: pointer, w: pointer): void {.exportc: "miqt_exec_callback_QCommonStyle_drawControl ".} =
  var nimfunc = cast[ptr QCommonStyledrawControlProc](cast[pointer](slot))
  let slotval1 = cint(element)

  let slotval2 = gen_qstyleoption_types.QStyleOption(h: opt)

  let slotval3 = gen_qpainter_types.QPainter(h: p)

  let slotval4 = gen_qwidget_types.QWidget(h: w)


  nimfunc[](slotval1, slotval2, slotval3, slotval4)
proc QCommonStylesubElementRect*(self: gen_qcommonstyle_types.QCommonStyle, r: cint, opt: gen_qstyleoption_types.QStyleOption, widget: gen_qwidget_types.QWidget): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fQCommonStyle_virtualbase_subElementRect(self.h, cint(r), opt.h, widget.h))

type QCommonStylesubElementRectProc* = proc(r: cint, opt: gen_qstyleoption_types.QStyleOption, widget: gen_qwidget_types.QWidget): gen_qrect_types.QRect
proc onsubElementRect*(self: gen_qcommonstyle_types.QCommonStyle, slot: QCommonStylesubElementRectProc) =
  # TODO check subclass
  var tmp = new QCommonStylesubElementRectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQCommonStyle_override_virtual_subElementRect(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCommonStyle_subElementRect(self: ptr cQCommonStyle, slot: int, r: cint, opt: pointer, widget: pointer): pointer {.exportc: "miqt_exec_callback_QCommonStyle_subElementRect ".} =
  var nimfunc = cast[ptr QCommonStylesubElementRectProc](cast[pointer](slot))
  let slotval1 = cint(r)

  let slotval2 = gen_qstyleoption_types.QStyleOption(h: opt)

  let slotval3 = gen_qwidget_types.QWidget(h: widget)


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn.h
proc QCommonStyledrawComplexControl*(self: gen_qcommonstyle_types.QCommonStyle, cc: cint, opt: gen_qstyleoption_types.QStyleOptionComplex, p: gen_qpainter_types.QPainter, w: gen_qwidget_types.QWidget): void =
  fQCommonStyle_virtualbase_drawComplexControl(self.h, cint(cc), opt.h, p.h, w.h)

type QCommonStyledrawComplexControlProc* = proc(cc: cint, opt: gen_qstyleoption_types.QStyleOptionComplex, p: gen_qpainter_types.QPainter, w: gen_qwidget_types.QWidget): void
proc ondrawComplexControl*(self: gen_qcommonstyle_types.QCommonStyle, slot: QCommonStyledrawComplexControlProc) =
  # TODO check subclass
  var tmp = new QCommonStyledrawComplexControlProc
  tmp[] = slot
  GC_ref(tmp)
  fcQCommonStyle_override_virtual_drawComplexControl(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCommonStyle_drawComplexControl(self: ptr cQCommonStyle, slot: int, cc: cint, opt: pointer, p: pointer, w: pointer): void {.exportc: "miqt_exec_callback_QCommonStyle_drawComplexControl ".} =
  var nimfunc = cast[ptr QCommonStyledrawComplexControlProc](cast[pointer](slot))
  let slotval1 = cint(cc)

  let slotval2 = gen_qstyleoption_types.QStyleOptionComplex(h: opt)

  let slotval3 = gen_qpainter_types.QPainter(h: p)

  let slotval4 = gen_qwidget_types.QWidget(h: w)


  nimfunc[](slotval1, slotval2, slotval3, slotval4)
proc QCommonStylehitTestComplexControl*(self: gen_qcommonstyle_types.QCommonStyle, cc: cint, opt: gen_qstyleoption_types.QStyleOptionComplex, pt: gen_qpoint_types.QPoint, w: gen_qwidget_types.QWidget): cint =
  cint(fQCommonStyle_virtualbase_hitTestComplexControl(self.h, cint(cc), opt.h, pt.h, w.h))

type QCommonStylehitTestComplexControlProc* = proc(cc: cint, opt: gen_qstyleoption_types.QStyleOptionComplex, pt: gen_qpoint_types.QPoint, w: gen_qwidget_types.QWidget): cint
proc onhitTestComplexControl*(self: gen_qcommonstyle_types.QCommonStyle, slot: QCommonStylehitTestComplexControlProc) =
  # TODO check subclass
  var tmp = new QCommonStylehitTestComplexControlProc
  tmp[] = slot
  GC_ref(tmp)
  fcQCommonStyle_override_virtual_hitTestComplexControl(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCommonStyle_hitTestComplexControl(self: ptr cQCommonStyle, slot: int, cc: cint, opt: pointer, pt: pointer, w: pointer): cint {.exportc: "miqt_exec_callback_QCommonStyle_hitTestComplexControl ".} =
  var nimfunc = cast[ptr QCommonStylehitTestComplexControlProc](cast[pointer](slot))
  let slotval1 = cint(cc)

  let slotval2 = gen_qstyleoption_types.QStyleOptionComplex(h: opt)

  let slotval3 = gen_qpoint_types.QPoint(h: pt)

  let slotval4 = gen_qwidget_types.QWidget(h: w)


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3, slotval4 )

  cint(virtualReturn)
proc QCommonStylesubControlRect*(self: gen_qcommonstyle_types.QCommonStyle, cc: cint, opt: gen_qstyleoption_types.QStyleOptionComplex, sc: cint, w: gen_qwidget_types.QWidget): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fQCommonStyle_virtualbase_subControlRect(self.h, cint(cc), opt.h, cint(sc), w.h))

type QCommonStylesubControlRectProc* = proc(cc: cint, opt: gen_qstyleoption_types.QStyleOptionComplex, sc: cint, w: gen_qwidget_types.QWidget): gen_qrect_types.QRect
proc onsubControlRect*(self: gen_qcommonstyle_types.QCommonStyle, slot: QCommonStylesubControlRectProc) =
  # TODO check subclass
  var tmp = new QCommonStylesubControlRectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQCommonStyle_override_virtual_subControlRect(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCommonStyle_subControlRect(self: ptr cQCommonStyle, slot: int, cc: cint, opt: pointer, sc: cint, w: pointer): pointer {.exportc: "miqt_exec_callback_QCommonStyle_subControlRect ".} =
  var nimfunc = cast[ptr QCommonStylesubControlRectProc](cast[pointer](slot))
  let slotval1 = cint(cc)

  let slotval2 = gen_qstyleoption_types.QStyleOptionComplex(h: opt)

  let slotval3 = cint(sc)

  let slotval4 = gen_qwidget_types.QWidget(h: w)


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3, slotval4 )

  virtualReturn.h
proc QCommonStylesizeFromContents*(self: gen_qcommonstyle_types.QCommonStyle, ct: cint, opt: gen_qstyleoption_types.QStyleOption, contentsSize: gen_qsize_types.QSize, widget: gen_qwidget_types.QWidget): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fQCommonStyle_virtualbase_sizeFromContents(self.h, cint(ct), opt.h, contentsSize.h, widget.h))

type QCommonStylesizeFromContentsProc* = proc(ct: cint, opt: gen_qstyleoption_types.QStyleOption, contentsSize: gen_qsize_types.QSize, widget: gen_qwidget_types.QWidget): gen_qsize_types.QSize
proc onsizeFromContents*(self: gen_qcommonstyle_types.QCommonStyle, slot: QCommonStylesizeFromContentsProc) =
  # TODO check subclass
  var tmp = new QCommonStylesizeFromContentsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQCommonStyle_override_virtual_sizeFromContents(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCommonStyle_sizeFromContents(self: ptr cQCommonStyle, slot: int, ct: cint, opt: pointer, contentsSize: pointer, widget: pointer): pointer {.exportc: "miqt_exec_callback_QCommonStyle_sizeFromContents ".} =
  var nimfunc = cast[ptr QCommonStylesizeFromContentsProc](cast[pointer](slot))
  let slotval1 = cint(ct)

  let slotval2 = gen_qstyleoption_types.QStyleOption(h: opt)

  let slotval3 = gen_qsize_types.QSize(h: contentsSize)

  let slotval4 = gen_qwidget_types.QWidget(h: widget)


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3, slotval4 )

  virtualReturn.h
proc QCommonStylepixelMetric*(self: gen_qcommonstyle_types.QCommonStyle, m: cint, opt: gen_qstyleoption_types.QStyleOption, widget: gen_qwidget_types.QWidget): cint =
  fQCommonStyle_virtualbase_pixelMetric(self.h, cint(m), opt.h, widget.h)

type QCommonStylepixelMetricProc* = proc(m: cint, opt: gen_qstyleoption_types.QStyleOption, widget: gen_qwidget_types.QWidget): cint
proc onpixelMetric*(self: gen_qcommonstyle_types.QCommonStyle, slot: QCommonStylepixelMetricProc) =
  # TODO check subclass
  var tmp = new QCommonStylepixelMetricProc
  tmp[] = slot
  GC_ref(tmp)
  fcQCommonStyle_override_virtual_pixelMetric(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCommonStyle_pixelMetric(self: ptr cQCommonStyle, slot: int, m: cint, opt: pointer, widget: pointer): cint {.exportc: "miqt_exec_callback_QCommonStyle_pixelMetric ".} =
  var nimfunc = cast[ptr QCommonStylepixelMetricProc](cast[pointer](slot))
  let slotval1 = cint(m)

  let slotval2 = gen_qstyleoption_types.QStyleOption(h: opt)

  let slotval3 = gen_qwidget_types.QWidget(h: widget)


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QCommonStylestyleHint*(self: gen_qcommonstyle_types.QCommonStyle, sh: cint, opt: gen_qstyleoption_types.QStyleOption, w: gen_qwidget_types.QWidget, shret: gen_qstyleoption_types.QStyleHintReturn): cint =
  fQCommonStyle_virtualbase_styleHint(self.h, cint(sh), opt.h, w.h, shret.h)

type QCommonStylestyleHintProc* = proc(sh: cint, opt: gen_qstyleoption_types.QStyleOption, w: gen_qwidget_types.QWidget, shret: gen_qstyleoption_types.QStyleHintReturn): cint
proc onstyleHint*(self: gen_qcommonstyle_types.QCommonStyle, slot: QCommonStylestyleHintProc) =
  # TODO check subclass
  var tmp = new QCommonStylestyleHintProc
  tmp[] = slot
  GC_ref(tmp)
  fcQCommonStyle_override_virtual_styleHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCommonStyle_styleHint(self: ptr cQCommonStyle, slot: int, sh: cint, opt: pointer, w: pointer, shret: pointer): cint {.exportc: "miqt_exec_callback_QCommonStyle_styleHint ".} =
  var nimfunc = cast[ptr QCommonStylestyleHintProc](cast[pointer](slot))
  let slotval1 = cint(sh)

  let slotval2 = gen_qstyleoption_types.QStyleOption(h: opt)

  let slotval3 = gen_qwidget_types.QWidget(h: w)

  let slotval4 = gen_qstyleoption_types.QStyleHintReturn(h: shret)


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3, slotval4 )

  virtualReturn
proc QCommonStylestandardIcon*(self: gen_qcommonstyle_types.QCommonStyle, standardIcon: cint, opt: gen_qstyleoption_types.QStyleOption, widget: gen_qwidget_types.QWidget): gen_qicon_types.QIcon =
  gen_qicon_types.QIcon(h: fQCommonStyle_virtualbase_standardIcon(self.h, cint(standardIcon), opt.h, widget.h))

type QCommonStylestandardIconProc* = proc(standardIcon: cint, opt: gen_qstyleoption_types.QStyleOption, widget: gen_qwidget_types.QWidget): gen_qicon_types.QIcon
proc onstandardIcon*(self: gen_qcommonstyle_types.QCommonStyle, slot: QCommonStylestandardIconProc) =
  # TODO check subclass
  var tmp = new QCommonStylestandardIconProc
  tmp[] = slot
  GC_ref(tmp)
  fcQCommonStyle_override_virtual_standardIcon(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCommonStyle_standardIcon(self: ptr cQCommonStyle, slot: int, standardIcon: cint, opt: pointer, widget: pointer): pointer {.exportc: "miqt_exec_callback_QCommonStyle_standardIcon ".} =
  var nimfunc = cast[ptr QCommonStylestandardIconProc](cast[pointer](slot))
  let slotval1 = cint(standardIcon)

  let slotval2 = gen_qstyleoption_types.QStyleOption(h: opt)

  let slotval3 = gen_qwidget_types.QWidget(h: widget)


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn.h
proc QCommonStylestandardPixmap*(self: gen_qcommonstyle_types.QCommonStyle, sp: cint, opt: gen_qstyleoption_types.QStyleOption, widget: gen_qwidget_types.QWidget): gen_qpixmap_types.QPixmap =
  gen_qpixmap_types.QPixmap(h: fQCommonStyle_virtualbase_standardPixmap(self.h, cint(sp), opt.h, widget.h))

type QCommonStylestandardPixmapProc* = proc(sp: cint, opt: gen_qstyleoption_types.QStyleOption, widget: gen_qwidget_types.QWidget): gen_qpixmap_types.QPixmap
proc onstandardPixmap*(self: gen_qcommonstyle_types.QCommonStyle, slot: QCommonStylestandardPixmapProc) =
  # TODO check subclass
  var tmp = new QCommonStylestandardPixmapProc
  tmp[] = slot
  GC_ref(tmp)
  fcQCommonStyle_override_virtual_standardPixmap(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCommonStyle_standardPixmap(self: ptr cQCommonStyle, slot: int, sp: cint, opt: pointer, widget: pointer): pointer {.exportc: "miqt_exec_callback_QCommonStyle_standardPixmap ".} =
  var nimfunc = cast[ptr QCommonStylestandardPixmapProc](cast[pointer](slot))
  let slotval1 = cint(sp)

  let slotval2 = gen_qstyleoption_types.QStyleOption(h: opt)

  let slotval3 = gen_qwidget_types.QWidget(h: widget)


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn.h
proc QCommonStylegeneratedIconPixmap*(self: gen_qcommonstyle_types.QCommonStyle, iconMode: cint, pixmap: gen_qpixmap_types.QPixmap, opt: gen_qstyleoption_types.QStyleOption): gen_qpixmap_types.QPixmap =
  gen_qpixmap_types.QPixmap(h: fQCommonStyle_virtualbase_generatedIconPixmap(self.h, cint(iconMode), pixmap.h, opt.h))

type QCommonStylegeneratedIconPixmapProc* = proc(iconMode: cint, pixmap: gen_qpixmap_types.QPixmap, opt: gen_qstyleoption_types.QStyleOption): gen_qpixmap_types.QPixmap
proc ongeneratedIconPixmap*(self: gen_qcommonstyle_types.QCommonStyle, slot: QCommonStylegeneratedIconPixmapProc) =
  # TODO check subclass
  var tmp = new QCommonStylegeneratedIconPixmapProc
  tmp[] = slot
  GC_ref(tmp)
  fcQCommonStyle_override_virtual_generatedIconPixmap(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCommonStyle_generatedIconPixmap(self: ptr cQCommonStyle, slot: int, iconMode: cint, pixmap: pointer, opt: pointer): pointer {.exportc: "miqt_exec_callback_QCommonStyle_generatedIconPixmap ".} =
  var nimfunc = cast[ptr QCommonStylegeneratedIconPixmapProc](cast[pointer](slot))
  let slotval1 = cint(iconMode)

  let slotval2 = gen_qpixmap_types.QPixmap(h: pixmap)

  let slotval3 = gen_qstyleoption_types.QStyleOption(h: opt)


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn.h
proc QCommonStylelayoutSpacing*(self: gen_qcommonstyle_types.QCommonStyle, control1: cint, control2: cint, orientation: cint, option: gen_qstyleoption_types.QStyleOption, widget: gen_qwidget_types.QWidget): cint =
  fQCommonStyle_virtualbase_layoutSpacing(self.h, cint(control1), cint(control2), cint(orientation), option.h, widget.h)

type QCommonStylelayoutSpacingProc* = proc(control1: cint, control2: cint, orientation: cint, option: gen_qstyleoption_types.QStyleOption, widget: gen_qwidget_types.QWidget): cint
proc onlayoutSpacing*(self: gen_qcommonstyle_types.QCommonStyle, slot: QCommonStylelayoutSpacingProc) =
  # TODO check subclass
  var tmp = new QCommonStylelayoutSpacingProc
  tmp[] = slot
  GC_ref(tmp)
  fcQCommonStyle_override_virtual_layoutSpacing(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCommonStyle_layoutSpacing(self: ptr cQCommonStyle, slot: int, control1: cint, control2: cint, orientation: cint, option: pointer, widget: pointer): cint {.exportc: "miqt_exec_callback_QCommonStyle_layoutSpacing ".} =
  var nimfunc = cast[ptr QCommonStylelayoutSpacingProc](cast[pointer](slot))
  let slotval1 = cint(control1)

  let slotval2 = cint(control2)

  let slotval3 = cint(orientation)

  let slotval4 = gen_qstyleoption_types.QStyleOption(h: option)

  let slotval5 = gen_qwidget_types.QWidget(h: widget)


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3, slotval4, slotval5 )

  virtualReturn
proc QCommonStylepolish*(self: gen_qcommonstyle_types.QCommonStyle, param1: gen_qpalette_types.QPalette): void =
  fQCommonStyle_virtualbase_polish(self.h, param1.h)

type QCommonStylepolishProc* = proc(param1: gen_qpalette_types.QPalette): void
proc onpolish*(self: gen_qcommonstyle_types.QCommonStyle, slot: QCommonStylepolishProc) =
  # TODO check subclass
  var tmp = new QCommonStylepolishProc
  tmp[] = slot
  GC_ref(tmp)
  fcQCommonStyle_override_virtual_polish(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCommonStyle_polish(self: ptr cQCommonStyle, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QCommonStyle_polish ".} =
  var nimfunc = cast[ptr QCommonStylepolishProc](cast[pointer](slot))
  let slotval1 = gen_qpalette_types.QPalette(h: param1)


  nimfunc[](slotval1)
proc QCommonStylepolish*(self: gen_qcommonstyle_types.QCommonStyle, app: gen_qapplication_types.QApplication): void =
  fQCommonStyle_virtualbase_polishWithApp(self.h, app.h)

type QCommonStylepolishWithAppProc* = proc(app: gen_qapplication_types.QApplication): void
proc onpolish*(self: gen_qcommonstyle_types.QCommonStyle, slot: QCommonStylepolishWithAppProc) =
  # TODO check subclass
  var tmp = new QCommonStylepolishWithAppProc
  tmp[] = slot
  GC_ref(tmp)
  fcQCommonStyle_override_virtual_polishWithApp(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCommonStyle_polishWithApp(self: ptr cQCommonStyle, slot: int, app: pointer): void {.exportc: "miqt_exec_callback_QCommonStyle_polishWithApp ".} =
  var nimfunc = cast[ptr QCommonStylepolishWithAppProc](cast[pointer](slot))
  let slotval1 = gen_qapplication_types.QApplication(h: app)


  nimfunc[](slotval1)
proc QCommonStylepolish*(self: gen_qcommonstyle_types.QCommonStyle, widget: gen_qwidget_types.QWidget): void =
  fQCommonStyle_virtualbase_polishWithWidget(self.h, widget.h)

type QCommonStylepolishWithWidgetProc* = proc(widget: gen_qwidget_types.QWidget): void
proc onpolish*(self: gen_qcommonstyle_types.QCommonStyle, slot: QCommonStylepolishWithWidgetProc) =
  # TODO check subclass
  var tmp = new QCommonStylepolishWithWidgetProc
  tmp[] = slot
  GC_ref(tmp)
  fcQCommonStyle_override_virtual_polishWithWidget(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCommonStyle_polishWithWidget(self: ptr cQCommonStyle, slot: int, widget: pointer): void {.exportc: "miqt_exec_callback_QCommonStyle_polishWithWidget ".} =
  var nimfunc = cast[ptr QCommonStylepolishWithWidgetProc](cast[pointer](slot))
  let slotval1 = gen_qwidget_types.QWidget(h: widget)


  nimfunc[](slotval1)
proc QCommonStyleunpolish*(self: gen_qcommonstyle_types.QCommonStyle, widget: gen_qwidget_types.QWidget): void =
  fQCommonStyle_virtualbase_unpolish(self.h, widget.h)

type QCommonStyleunpolishProc* = proc(widget: gen_qwidget_types.QWidget): void
proc onunpolish*(self: gen_qcommonstyle_types.QCommonStyle, slot: QCommonStyleunpolishProc) =
  # TODO check subclass
  var tmp = new QCommonStyleunpolishProc
  tmp[] = slot
  GC_ref(tmp)
  fcQCommonStyle_override_virtual_unpolish(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCommonStyle_unpolish(self: ptr cQCommonStyle, slot: int, widget: pointer): void {.exportc: "miqt_exec_callback_QCommonStyle_unpolish ".} =
  var nimfunc = cast[ptr QCommonStyleunpolishProc](cast[pointer](slot))
  let slotval1 = gen_qwidget_types.QWidget(h: widget)


  nimfunc[](slotval1)
proc QCommonStyleunpolish*(self: gen_qcommonstyle_types.QCommonStyle, application: gen_qapplication_types.QApplication): void =
  fQCommonStyle_virtualbase_unpolishWithApplication(self.h, application.h)

type QCommonStyleunpolishWithApplicationProc* = proc(application: gen_qapplication_types.QApplication): void
proc onunpolish*(self: gen_qcommonstyle_types.QCommonStyle, slot: QCommonStyleunpolishWithApplicationProc) =
  # TODO check subclass
  var tmp = new QCommonStyleunpolishWithApplicationProc
  tmp[] = slot
  GC_ref(tmp)
  fcQCommonStyle_override_virtual_unpolishWithApplication(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCommonStyle_unpolishWithApplication(self: ptr cQCommonStyle, slot: int, application: pointer): void {.exportc: "miqt_exec_callback_QCommonStyle_unpolishWithApplication ".} =
  var nimfunc = cast[ptr QCommonStyleunpolishWithApplicationProc](cast[pointer](slot))
  let slotval1 = gen_qapplication_types.QApplication(h: application)


  nimfunc[](slotval1)
proc QCommonStyleitemTextRect*(self: gen_qcommonstyle_types.QCommonStyle, fm: gen_qfontmetrics_types.QFontMetrics, r: gen_qrect_types.QRect, flags: cint, enabled: bool, text: string): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fQCommonStyle_virtualbase_itemTextRect(self.h, fm.h, r.h, flags, enabled, struct_miqt_string(data: text, len: csize_t(len(text)))))

type QCommonStyleitemTextRectProc* = proc(fm: gen_qfontmetrics_types.QFontMetrics, r: gen_qrect_types.QRect, flags: cint, enabled: bool, text: string): gen_qrect_types.QRect
proc onitemTextRect*(self: gen_qcommonstyle_types.QCommonStyle, slot: QCommonStyleitemTextRectProc) =
  # TODO check subclass
  var tmp = new QCommonStyleitemTextRectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQCommonStyle_override_virtual_itemTextRect(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCommonStyle_itemTextRect(self: ptr cQCommonStyle, slot: int, fm: pointer, r: pointer, flags: cint, enabled: bool, text: struct_miqt_string): pointer {.exportc: "miqt_exec_callback_QCommonStyle_itemTextRect ".} =
  var nimfunc = cast[ptr QCommonStyleitemTextRectProc](cast[pointer](slot))
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
proc QCommonStyleitemPixmapRect*(self: gen_qcommonstyle_types.QCommonStyle, r: gen_qrect_types.QRect, flags: cint, pixmap: gen_qpixmap_types.QPixmap): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fQCommonStyle_virtualbase_itemPixmapRect(self.h, r.h, flags, pixmap.h))

type QCommonStyleitemPixmapRectProc* = proc(r: gen_qrect_types.QRect, flags: cint, pixmap: gen_qpixmap_types.QPixmap): gen_qrect_types.QRect
proc onitemPixmapRect*(self: gen_qcommonstyle_types.QCommonStyle, slot: QCommonStyleitemPixmapRectProc) =
  # TODO check subclass
  var tmp = new QCommonStyleitemPixmapRectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQCommonStyle_override_virtual_itemPixmapRect(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCommonStyle_itemPixmapRect(self: ptr cQCommonStyle, slot: int, r: pointer, flags: cint, pixmap: pointer): pointer {.exportc: "miqt_exec_callback_QCommonStyle_itemPixmapRect ".} =
  var nimfunc = cast[ptr QCommonStyleitemPixmapRectProc](cast[pointer](slot))
  let slotval1 = gen_qrect_types.QRect(h: r)

  let slotval2 = flags

  let slotval3 = gen_qpixmap_types.QPixmap(h: pixmap)


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn.h
proc QCommonStyledrawItemText*(self: gen_qcommonstyle_types.QCommonStyle, painter: gen_qpainter_types.QPainter, rect: gen_qrect_types.QRect, flags: cint, pal: gen_qpalette_types.QPalette, enabled: bool, text: string, textRole: cint): void =
  fQCommonStyle_virtualbase_drawItemText(self.h, painter.h, rect.h, flags, pal.h, enabled, struct_miqt_string(data: text, len: csize_t(len(text))), cint(textRole))

type QCommonStyledrawItemTextProc* = proc(painter: gen_qpainter_types.QPainter, rect: gen_qrect_types.QRect, flags: cint, pal: gen_qpalette_types.QPalette, enabled: bool, text: string, textRole: cint): void
proc ondrawItemText*(self: gen_qcommonstyle_types.QCommonStyle, slot: QCommonStyledrawItemTextProc) =
  # TODO check subclass
  var tmp = new QCommonStyledrawItemTextProc
  tmp[] = slot
  GC_ref(tmp)
  fcQCommonStyle_override_virtual_drawItemText(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCommonStyle_drawItemText(self: ptr cQCommonStyle, slot: int, painter: pointer, rect: pointer, flags: cint, pal: pointer, enabled: bool, text: struct_miqt_string, textRole: cint): void {.exportc: "miqt_exec_callback_QCommonStyle_drawItemText ".} =
  var nimfunc = cast[ptr QCommonStyledrawItemTextProc](cast[pointer](slot))
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
proc QCommonStyledrawItemPixmap*(self: gen_qcommonstyle_types.QCommonStyle, painter: gen_qpainter_types.QPainter, rect: gen_qrect_types.QRect, alignment: cint, pixmap: gen_qpixmap_types.QPixmap): void =
  fQCommonStyle_virtualbase_drawItemPixmap(self.h, painter.h, rect.h, alignment, pixmap.h)

type QCommonStyledrawItemPixmapProc* = proc(painter: gen_qpainter_types.QPainter, rect: gen_qrect_types.QRect, alignment: cint, pixmap: gen_qpixmap_types.QPixmap): void
proc ondrawItemPixmap*(self: gen_qcommonstyle_types.QCommonStyle, slot: QCommonStyledrawItemPixmapProc) =
  # TODO check subclass
  var tmp = new QCommonStyledrawItemPixmapProc
  tmp[] = slot
  GC_ref(tmp)
  fcQCommonStyle_override_virtual_drawItemPixmap(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCommonStyle_drawItemPixmap(self: ptr cQCommonStyle, slot: int, painter: pointer, rect: pointer, alignment: cint, pixmap: pointer): void {.exportc: "miqt_exec_callback_QCommonStyle_drawItemPixmap ".} =
  var nimfunc = cast[ptr QCommonStyledrawItemPixmapProc](cast[pointer](slot))
  let slotval1 = gen_qpainter_types.QPainter(h: painter)

  let slotval2 = gen_qrect_types.QRect(h: rect)

  let slotval3 = alignment

  let slotval4 = gen_qpixmap_types.QPixmap(h: pixmap)


  nimfunc[](slotval1, slotval2, slotval3, slotval4)
proc QCommonStylestandardPalette*(self: gen_qcommonstyle_types.QCommonStyle, ): gen_qpalette_types.QPalette =
  gen_qpalette_types.QPalette(h: fQCommonStyle_virtualbase_standardPalette(self.h))

type QCommonStylestandardPaletteProc* = proc(): gen_qpalette_types.QPalette
proc onstandardPalette*(self: gen_qcommonstyle_types.QCommonStyle, slot: QCommonStylestandardPaletteProc) =
  # TODO check subclass
  var tmp = new QCommonStylestandardPaletteProc
  tmp[] = slot
  GC_ref(tmp)
  fcQCommonStyle_override_virtual_standardPalette(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCommonStyle_standardPalette(self: ptr cQCommonStyle, slot: int): pointer {.exportc: "miqt_exec_callback_QCommonStyle_standardPalette ".} =
  var nimfunc = cast[ptr QCommonStylestandardPaletteProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QCommonStyleevent*(self: gen_qcommonstyle_types.QCommonStyle, event: gen_qcoreevent_types.QEvent): bool =
  fQCommonStyle_virtualbase_event(self.h, event.h)

type QCommonStyleeventProc* = proc(event: gen_qcoreevent_types.QEvent): bool
proc onevent*(self: gen_qcommonstyle_types.QCommonStyle, slot: QCommonStyleeventProc) =
  # TODO check subclass
  var tmp = new QCommonStyleeventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQCommonStyle_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCommonStyle_event(self: ptr cQCommonStyle, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QCommonStyle_event ".} =
  var nimfunc = cast[ptr QCommonStyleeventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QCommonStyleeventFilter*(self: gen_qcommonstyle_types.QCommonStyle, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fQCommonStyle_virtualbase_eventFilter(self.h, watched.h, event.h)

type QCommonStyleeventFilterProc* = proc(watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool
proc oneventFilter*(self: gen_qcommonstyle_types.QCommonStyle, slot: QCommonStyleeventFilterProc) =
  # TODO check subclass
  var tmp = new QCommonStyleeventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQCommonStyle_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCommonStyle_eventFilter(self: ptr cQCommonStyle, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QCommonStyle_eventFilter ".} =
  var nimfunc = cast[ptr QCommonStyleeventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: watched)

  let slotval2 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QCommonStyletimerEvent*(self: gen_qcommonstyle_types.QCommonStyle, event: gen_qcoreevent_types.QTimerEvent): void =
  fQCommonStyle_virtualbase_timerEvent(self.h, event.h)

type QCommonStyletimerEventProc* = proc(event: gen_qcoreevent_types.QTimerEvent): void
proc ontimerEvent*(self: gen_qcommonstyle_types.QCommonStyle, slot: QCommonStyletimerEventProc) =
  # TODO check subclass
  var tmp = new QCommonStyletimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQCommonStyle_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCommonStyle_timerEvent(self: ptr cQCommonStyle, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QCommonStyle_timerEvent ".} =
  var nimfunc = cast[ptr QCommonStyletimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QCommonStylechildEvent*(self: gen_qcommonstyle_types.QCommonStyle, event: gen_qcoreevent_types.QChildEvent): void =
  fQCommonStyle_virtualbase_childEvent(self.h, event.h)

type QCommonStylechildEventProc* = proc(event: gen_qcoreevent_types.QChildEvent): void
proc onchildEvent*(self: gen_qcommonstyle_types.QCommonStyle, slot: QCommonStylechildEventProc) =
  # TODO check subclass
  var tmp = new QCommonStylechildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQCommonStyle_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCommonStyle_childEvent(self: ptr cQCommonStyle, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QCommonStyle_childEvent ".} =
  var nimfunc = cast[ptr QCommonStylechildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QCommonStylecustomEvent*(self: gen_qcommonstyle_types.QCommonStyle, event: gen_qcoreevent_types.QEvent): void =
  fQCommonStyle_virtualbase_customEvent(self.h, event.h)

type QCommonStylecustomEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc oncustomEvent*(self: gen_qcommonstyle_types.QCommonStyle, slot: QCommonStylecustomEventProc) =
  # TODO check subclass
  var tmp = new QCommonStylecustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQCommonStyle_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCommonStyle_customEvent(self: ptr cQCommonStyle, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QCommonStyle_customEvent ".} =
  var nimfunc = cast[ptr QCommonStylecustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QCommonStyleconnectNotify*(self: gen_qcommonstyle_types.QCommonStyle, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQCommonStyle_virtualbase_connectNotify(self.h, signal.h)

type QCommonStyleconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc onconnectNotify*(self: gen_qcommonstyle_types.QCommonStyle, slot: QCommonStyleconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QCommonStyleconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQCommonStyle_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCommonStyle_connectNotify(self: ptr cQCommonStyle, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QCommonStyle_connectNotify ".} =
  var nimfunc = cast[ptr QCommonStyleconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QCommonStyledisconnectNotify*(self: gen_qcommonstyle_types.QCommonStyle, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQCommonStyle_virtualbase_disconnectNotify(self.h, signal.h)

type QCommonStyledisconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qcommonstyle_types.QCommonStyle, slot: QCommonStyledisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QCommonStyledisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQCommonStyle_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCommonStyle_disconnectNotify(self: ptr cQCommonStyle, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QCommonStyle_disconnectNotify ".} =
  var nimfunc = cast[ptr QCommonStyledisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc staticMetaObject*(_: type gen_qcommonstyle_types.QCommonStyle): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQCommonStyle_staticMetaObject())
proc delete*(self: gen_qcommonstyle_types.QCommonStyle) =
  fcQCommonStyle_delete(self.h)
