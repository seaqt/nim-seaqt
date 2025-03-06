import ./Qt5Widgets_libs

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

const cflags = gorge("pkg-config --cflags Qt5Widgets")  & " -fPIC"
{.compile("gen_qlayout.cpp", cflags).}


type QLayoutSizeConstraintEnum* = distinct cint
template SetDefaultConstraint*(_: type QLayoutSizeConstraintEnum): untyped = 0
template SetNoConstraint*(_: type QLayoutSizeConstraintEnum): untyped = 1
template SetMinimumSize*(_: type QLayoutSizeConstraintEnum): untyped = 2
template SetFixedSize*(_: type QLayoutSizeConstraintEnum): untyped = 3
template SetMaximumSize*(_: type QLayoutSizeConstraintEnum): untyped = 4
template SetMinAndMaxSize*(_: type QLayoutSizeConstraintEnum): untyped = 5


import ./gen_qlayout_types
export gen_qlayout_types

import
  ../QtCore/gen_qcoreevent_types,
  ../QtCore/gen_qmargins_types,
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qobject,
  ../QtCore/gen_qobjectdefs_types,
  ../QtCore/gen_qrect_types,
  ../QtCore/gen_qsize_types,
  ./gen_qlayoutitem_types,
  ./gen_qwidget_types
export
  gen_qcoreevent_types,
  gen_qmargins_types,
  gen_qmetaobject_types,
  gen_qobject,
  gen_qobjectdefs_types,
  gen_qrect_types,
  gen_qsize_types,
  gen_qlayoutitem_types,
  gen_qwidget_types

type cQLayout*{.exportc: "QLayout", incompleteStruct.} = object

proc fcQLayout_new(parent: pointer): ptr cQLayout {.importc: "QLayout_new".}
proc fcQLayout_new2(): ptr cQLayout {.importc: "QLayout_new2".}
proc fcQLayout_metaObject(self: pointer, ): pointer {.importc: "QLayout_metaObject".}
proc fcQLayout_metacast(self: pointer, param1: cstring): pointer {.importc: "QLayout_metacast".}
proc fcQLayout_tr(s: cstring): struct_miqt_string {.importc: "QLayout_tr".}
proc fcQLayout_trUtf8(s: cstring): struct_miqt_string {.importc: "QLayout_trUtf8".}
proc fcQLayout_margin(self: pointer, ): cint {.importc: "QLayout_margin".}
proc fcQLayout_setMargin(self: pointer, margin: cint): void {.importc: "QLayout_setMargin".}
proc fcQLayout_spacing(self: pointer, ): cint {.importc: "QLayout_spacing".}
proc fcQLayout_setSpacing(self: pointer, spacing: cint): void {.importc: "QLayout_setSpacing".}
proc fcQLayout_setContentsMargins(self: pointer, left: cint, top: cint, right: cint, bottom: cint): void {.importc: "QLayout_setContentsMargins".}
proc fcQLayout_setContentsMarginsWithMargins(self: pointer, margins: pointer): void {.importc: "QLayout_setContentsMarginsWithMargins".}
proc fcQLayout_getContentsMargins(self: pointer, left: ptr cint, top: ptr cint, right: ptr cint, bottom: ptr cint): void {.importc: "QLayout_getContentsMargins".}
proc fcQLayout_contentsMargins(self: pointer, ): pointer {.importc: "QLayout_contentsMargins".}
proc fcQLayout_contentsRect(self: pointer, ): pointer {.importc: "QLayout_contentsRect".}
proc fcQLayout_setAlignment(self: pointer, w: pointer, alignment: cint): bool {.importc: "QLayout_setAlignment".}
proc fcQLayout_setAlignment2(self: pointer, l: pointer, alignment: cint): bool {.importc: "QLayout_setAlignment2".}
proc fcQLayout_setSizeConstraint(self: pointer, sizeConstraint: cint): void {.importc: "QLayout_setSizeConstraint".}
proc fcQLayout_sizeConstraint(self: pointer, ): cint {.importc: "QLayout_sizeConstraint".}
proc fcQLayout_setMenuBar(self: pointer, w: pointer): void {.importc: "QLayout_setMenuBar".}
proc fcQLayout_menuBar(self: pointer, ): pointer {.importc: "QLayout_menuBar".}
proc fcQLayout_parentWidget(self: pointer, ): pointer {.importc: "QLayout_parentWidget".}
proc fcQLayout_invalidate(self: pointer, ): void {.importc: "QLayout_invalidate".}
proc fcQLayout_geometry(self: pointer, ): pointer {.importc: "QLayout_geometry".}
proc fcQLayout_activate(self: pointer, ): bool {.importc: "QLayout_activate".}
proc fcQLayout_update(self: pointer, ): void {.importc: "QLayout_update".}
proc fcQLayout_addWidget(self: pointer, w: pointer): void {.importc: "QLayout_addWidget".}
proc fcQLayout_addItem(self: pointer, param1: pointer): void {.importc: "QLayout_addItem".}
proc fcQLayout_removeWidget(self: pointer, w: pointer): void {.importc: "QLayout_removeWidget".}
proc fcQLayout_removeItem(self: pointer, param1: pointer): void {.importc: "QLayout_removeItem".}
proc fcQLayout_expandingDirections(self: pointer, ): cint {.importc: "QLayout_expandingDirections".}
proc fcQLayout_minimumSize(self: pointer, ): pointer {.importc: "QLayout_minimumSize".}
proc fcQLayout_maximumSize(self: pointer, ): pointer {.importc: "QLayout_maximumSize".}
proc fcQLayout_setGeometry(self: pointer, geometry: pointer): void {.importc: "QLayout_setGeometry".}
proc fcQLayout_itemAt(self: pointer, index: cint): pointer {.importc: "QLayout_itemAt".}
proc fcQLayout_takeAt(self: pointer, index: cint): pointer {.importc: "QLayout_takeAt".}
proc fcQLayout_indexOf(self: pointer, param1: pointer): cint {.importc: "QLayout_indexOf".}
proc fcQLayout_indexOfWithQLayoutItem(self: pointer, param1: pointer): cint {.importc: "QLayout_indexOfWithQLayoutItem".}
proc fcQLayout_count(self: pointer, ): cint {.importc: "QLayout_count".}
proc fcQLayout_isEmpty(self: pointer, ): bool {.importc: "QLayout_isEmpty".}
proc fcQLayout_controlTypes(self: pointer, ): cint {.importc: "QLayout_controlTypes".}
proc fcQLayout_replaceWidget(self: pointer, fromVal: pointer, to: pointer): pointer {.importc: "QLayout_replaceWidget".}
proc fcQLayout_totalHeightForWidth(self: pointer, w: cint): cint {.importc: "QLayout_totalHeightForWidth".}
proc fcQLayout_totalMinimumSize(self: pointer, ): pointer {.importc: "QLayout_totalMinimumSize".}
proc fcQLayout_totalMaximumSize(self: pointer, ): pointer {.importc: "QLayout_totalMaximumSize".}
proc fcQLayout_totalSizeHint(self: pointer, ): pointer {.importc: "QLayout_totalSizeHint".}
proc fcQLayout_layout(self: pointer, ): pointer {.importc: "QLayout_layout".}
proc fcQLayout_setEnabled(self: pointer, enabled: bool): void {.importc: "QLayout_setEnabled".}
proc fcQLayout_isEnabled(self: pointer, ): bool {.importc: "QLayout_isEnabled".}
proc fcQLayout_closestAcceptableSize(w: pointer, s: pointer): pointer {.importc: "QLayout_closestAcceptableSize".}
proc fcQLayout_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QLayout_tr2".}
proc fcQLayout_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QLayout_tr3".}
proc fcQLayout_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QLayout_trUtf82".}
proc fcQLayout_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QLayout_trUtf83".}
proc fcQLayout_replaceWidget3(self: pointer, fromVal: pointer, to: pointer, options: cint): pointer {.importc: "QLayout_replaceWidget3".}
proc fQLayout_virtualbase_invalidate(self: pointer, ): void{.importc: "QLayout_virtualbase_invalidate".}
proc fcQLayout_override_virtual_invalidate(self: pointer, slot: int) {.importc: "QLayout_override_virtual_invalidate".}
proc fQLayout_virtualbase_geometry(self: pointer, ): pointer{.importc: "QLayout_virtualbase_geometry".}
proc fcQLayout_override_virtual_geometry(self: pointer, slot: int) {.importc: "QLayout_override_virtual_geometry".}
proc fcQLayout_override_virtual_addItem(self: pointer, slot: int) {.importc: "QLayout_override_virtual_addItem".}
proc fQLayout_virtualbase_expandingDirections(self: pointer, ): cint{.importc: "QLayout_virtualbase_expandingDirections".}
proc fcQLayout_override_virtual_expandingDirections(self: pointer, slot: int) {.importc: "QLayout_override_virtual_expandingDirections".}
proc fQLayout_virtualbase_minimumSize(self: pointer, ): pointer{.importc: "QLayout_virtualbase_minimumSize".}
proc fcQLayout_override_virtual_minimumSize(self: pointer, slot: int) {.importc: "QLayout_override_virtual_minimumSize".}
proc fQLayout_virtualbase_maximumSize(self: pointer, ): pointer{.importc: "QLayout_virtualbase_maximumSize".}
proc fcQLayout_override_virtual_maximumSize(self: pointer, slot: int) {.importc: "QLayout_override_virtual_maximumSize".}
proc fQLayout_virtualbase_setGeometry(self: pointer, geometry: pointer): void{.importc: "QLayout_virtualbase_setGeometry".}
proc fcQLayout_override_virtual_setGeometry(self: pointer, slot: int) {.importc: "QLayout_override_virtual_setGeometry".}
proc fcQLayout_override_virtual_itemAt(self: pointer, slot: int) {.importc: "QLayout_override_virtual_itemAt".}
proc fcQLayout_override_virtual_takeAt(self: pointer, slot: int) {.importc: "QLayout_override_virtual_takeAt".}
proc fQLayout_virtualbase_indexOf(self: pointer, param1: pointer): cint{.importc: "QLayout_virtualbase_indexOf".}
proc fcQLayout_override_virtual_indexOf(self: pointer, slot: int) {.importc: "QLayout_override_virtual_indexOf".}
proc fcQLayout_override_virtual_count(self: pointer, slot: int) {.importc: "QLayout_override_virtual_count".}
proc fQLayout_virtualbase_isEmpty(self: pointer, ): bool{.importc: "QLayout_virtualbase_isEmpty".}
proc fcQLayout_override_virtual_isEmpty(self: pointer, slot: int) {.importc: "QLayout_override_virtual_isEmpty".}
proc fQLayout_virtualbase_controlTypes(self: pointer, ): cint{.importc: "QLayout_virtualbase_controlTypes".}
proc fcQLayout_override_virtual_controlTypes(self: pointer, slot: int) {.importc: "QLayout_override_virtual_controlTypes".}
proc fQLayout_virtualbase_layout(self: pointer, ): pointer{.importc: "QLayout_virtualbase_layout".}
proc fcQLayout_override_virtual_layout(self: pointer, slot: int) {.importc: "QLayout_override_virtual_layout".}
proc fQLayout_virtualbase_childEvent(self: pointer, e: pointer): void{.importc: "QLayout_virtualbase_childEvent".}
proc fcQLayout_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QLayout_override_virtual_childEvent".}
proc fQLayout_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QLayout_virtualbase_event".}
proc fcQLayout_override_virtual_event(self: pointer, slot: int) {.importc: "QLayout_override_virtual_event".}
proc fQLayout_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QLayout_virtualbase_eventFilter".}
proc fcQLayout_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QLayout_override_virtual_eventFilter".}
proc fQLayout_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QLayout_virtualbase_timerEvent".}
proc fcQLayout_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QLayout_override_virtual_timerEvent".}
proc fQLayout_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QLayout_virtualbase_customEvent".}
proc fcQLayout_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QLayout_override_virtual_customEvent".}
proc fQLayout_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QLayout_virtualbase_connectNotify".}
proc fcQLayout_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QLayout_override_virtual_connectNotify".}
proc fQLayout_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QLayout_virtualbase_disconnectNotify".}
proc fcQLayout_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QLayout_override_virtual_disconnectNotify".}
proc fcQLayout_override_virtual_sizeHint(self: pointer, slot: int) {.importc: "QLayout_override_virtual_sizeHint".}
proc fQLayout_virtualbase_hasHeightForWidth(self: pointer, ): bool{.importc: "QLayout_virtualbase_hasHeightForWidth".}
proc fcQLayout_override_virtual_hasHeightForWidth(self: pointer, slot: int) {.importc: "QLayout_override_virtual_hasHeightForWidth".}
proc fQLayout_virtualbase_heightForWidth(self: pointer, param1: cint): cint{.importc: "QLayout_virtualbase_heightForWidth".}
proc fcQLayout_override_virtual_heightForWidth(self: pointer, slot: int) {.importc: "QLayout_override_virtual_heightForWidth".}
proc fQLayout_virtualbase_minimumHeightForWidth(self: pointer, param1: cint): cint{.importc: "QLayout_virtualbase_minimumHeightForWidth".}
proc fcQLayout_override_virtual_minimumHeightForWidth(self: pointer, slot: int) {.importc: "QLayout_override_virtual_minimumHeightForWidth".}
proc fQLayout_virtualbase_widget(self: pointer, ): pointer{.importc: "QLayout_virtualbase_widget".}
proc fcQLayout_override_virtual_widget(self: pointer, slot: int) {.importc: "QLayout_override_virtual_widget".}
proc fQLayout_virtualbase_spacerItem(self: pointer, ): pointer{.importc: "QLayout_virtualbase_spacerItem".}
proc fcQLayout_override_virtual_spacerItem(self: pointer, slot: int) {.importc: "QLayout_override_virtual_spacerItem".}
proc fcQLayout_delete(self: pointer) {.importc: "QLayout_delete".}


func init*(T: type gen_qlayout_types.QLayout, h: ptr cQLayout): gen_qlayout_types.QLayout =
  T(h: h)
proc create*(T: type gen_qlayout_types.QLayout, parent: gen_qwidget_types.QWidget): gen_qlayout_types.QLayout =
  gen_qlayout_types.QLayout.init(fcQLayout_new(parent.h))

proc create*(T: type gen_qlayout_types.QLayout, ): gen_qlayout_types.QLayout =
  gen_qlayout_types.QLayout.init(fcQLayout_new2())

proc metaObject*(self: gen_qlayout_types.QLayout, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQLayout_metaObject(self.h))

proc metacast*(self: gen_qlayout_types.QLayout, param1: cstring): pointer =
  fcQLayout_metacast(self.h, param1)

proc tr*(_: type gen_qlayout_types.QLayout, s: cstring): string =
  let v_ms = fcQLayout_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qlayout_types.QLayout, s: cstring): string =
  let v_ms = fcQLayout_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc margin*(self: gen_qlayout_types.QLayout, ): cint =
  fcQLayout_margin(self.h)

proc setMargin*(self: gen_qlayout_types.QLayout, margin: cint): void =
  fcQLayout_setMargin(self.h, margin)

proc spacing*(self: gen_qlayout_types.QLayout, ): cint =
  fcQLayout_spacing(self.h)

proc setSpacing*(self: gen_qlayout_types.QLayout, spacing: cint): void =
  fcQLayout_setSpacing(self.h, spacing)

proc setContentsMargins*(self: gen_qlayout_types.QLayout, left: cint, top: cint, right: cint, bottom: cint): void =
  fcQLayout_setContentsMargins(self.h, left, top, right, bottom)

proc setContentsMargins*(self: gen_qlayout_types.QLayout, margins: gen_qmargins_types.QMargins): void =
  fcQLayout_setContentsMarginsWithMargins(self.h, margins.h)

proc getContentsMargins*(self: gen_qlayout_types.QLayout, left: ptr cint, top: ptr cint, right: ptr cint, bottom: ptr cint): void =
  fcQLayout_getContentsMargins(self.h, left, top, right, bottom)

proc contentsMargins*(self: gen_qlayout_types.QLayout, ): gen_qmargins_types.QMargins =
  gen_qmargins_types.QMargins(h: fcQLayout_contentsMargins(self.h))

proc contentsRect*(self: gen_qlayout_types.QLayout, ): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fcQLayout_contentsRect(self.h))

proc setAlignment*(self: gen_qlayout_types.QLayout, w: gen_qwidget_types.QWidget, alignment: cint): bool =
  fcQLayout_setAlignment(self.h, w.h, cint(alignment))

proc setAlignment*(self: gen_qlayout_types.QLayout, l: gen_qlayout_types.QLayout, alignment: cint): bool =
  fcQLayout_setAlignment2(self.h, l.h, cint(alignment))

proc setSizeConstraint*(self: gen_qlayout_types.QLayout, sizeConstraint: cint): void =
  fcQLayout_setSizeConstraint(self.h, cint(sizeConstraint))

proc sizeConstraint*(self: gen_qlayout_types.QLayout, ): cint =
  cint(fcQLayout_sizeConstraint(self.h))

proc setMenuBar*(self: gen_qlayout_types.QLayout, w: gen_qwidget_types.QWidget): void =
  fcQLayout_setMenuBar(self.h, w.h)

proc menuBar*(self: gen_qlayout_types.QLayout, ): gen_qwidget_types.QWidget =
  gen_qwidget_types.QWidget(h: fcQLayout_menuBar(self.h))

proc parentWidget*(self: gen_qlayout_types.QLayout, ): gen_qwidget_types.QWidget =
  gen_qwidget_types.QWidget(h: fcQLayout_parentWidget(self.h))

proc invalidate*(self: gen_qlayout_types.QLayout, ): void =
  fcQLayout_invalidate(self.h)

proc geometry*(self: gen_qlayout_types.QLayout, ): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fcQLayout_geometry(self.h))

proc activate*(self: gen_qlayout_types.QLayout, ): bool =
  fcQLayout_activate(self.h)

proc update*(self: gen_qlayout_types.QLayout, ): void =
  fcQLayout_update(self.h)

proc addWidget*(self: gen_qlayout_types.QLayout, w: gen_qwidget_types.QWidget): void =
  fcQLayout_addWidget(self.h, w.h)

proc addItem*(self: gen_qlayout_types.QLayout, param1: gen_qlayoutitem_types.QLayoutItem): void =
  fcQLayout_addItem(self.h, param1.h)

proc removeWidget*(self: gen_qlayout_types.QLayout, w: gen_qwidget_types.QWidget): void =
  fcQLayout_removeWidget(self.h, w.h)

proc removeItem*(self: gen_qlayout_types.QLayout, param1: gen_qlayoutitem_types.QLayoutItem): void =
  fcQLayout_removeItem(self.h, param1.h)

proc expandingDirections*(self: gen_qlayout_types.QLayout, ): cint =
  cint(fcQLayout_expandingDirections(self.h))

proc minimumSize*(self: gen_qlayout_types.QLayout, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQLayout_minimumSize(self.h))

proc maximumSize*(self: gen_qlayout_types.QLayout, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQLayout_maximumSize(self.h))

proc setGeometry*(self: gen_qlayout_types.QLayout, geometry: gen_qrect_types.QRect): void =
  fcQLayout_setGeometry(self.h, geometry.h)

proc itemAt*(self: gen_qlayout_types.QLayout, index: cint): gen_qlayoutitem_types.QLayoutItem =
  gen_qlayoutitem_types.QLayoutItem(h: fcQLayout_itemAt(self.h, index))

proc takeAt*(self: gen_qlayout_types.QLayout, index: cint): gen_qlayoutitem_types.QLayoutItem =
  gen_qlayoutitem_types.QLayoutItem(h: fcQLayout_takeAt(self.h, index))

proc indexOf*(self: gen_qlayout_types.QLayout, param1: gen_qwidget_types.QWidget): cint =
  fcQLayout_indexOf(self.h, param1.h)

proc indexOf*(self: gen_qlayout_types.QLayout, param1: gen_qlayoutitem_types.QLayoutItem): cint =
  fcQLayout_indexOfWithQLayoutItem(self.h, param1.h)

proc count*(self: gen_qlayout_types.QLayout, ): cint =
  fcQLayout_count(self.h)

proc isEmpty*(self: gen_qlayout_types.QLayout, ): bool =
  fcQLayout_isEmpty(self.h)

proc controlTypes*(self: gen_qlayout_types.QLayout, ): cint =
  cint(fcQLayout_controlTypes(self.h))

proc replaceWidget*(self: gen_qlayout_types.QLayout, fromVal: gen_qwidget_types.QWidget, to: gen_qwidget_types.QWidget): gen_qlayoutitem_types.QLayoutItem =
  gen_qlayoutitem_types.QLayoutItem(h: fcQLayout_replaceWidget(self.h, fromVal.h, to.h))

proc totalHeightForWidth*(self: gen_qlayout_types.QLayout, w: cint): cint =
  fcQLayout_totalHeightForWidth(self.h, w)

proc totalMinimumSize*(self: gen_qlayout_types.QLayout, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQLayout_totalMinimumSize(self.h))

proc totalMaximumSize*(self: gen_qlayout_types.QLayout, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQLayout_totalMaximumSize(self.h))

proc totalSizeHint*(self: gen_qlayout_types.QLayout, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQLayout_totalSizeHint(self.h))

proc layout*(self: gen_qlayout_types.QLayout, ): gen_qlayout_types.QLayout =
  gen_qlayout_types.QLayout(h: fcQLayout_layout(self.h))

proc setEnabled*(self: gen_qlayout_types.QLayout, enabled: bool): void =
  fcQLayout_setEnabled(self.h, enabled)

proc isEnabled*(self: gen_qlayout_types.QLayout, ): bool =
  fcQLayout_isEnabled(self.h)

proc closestAcceptableSize*(_: type gen_qlayout_types.QLayout, w: gen_qwidget_types.QWidget, s: gen_qsize_types.QSize): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQLayout_closestAcceptableSize(w.h, s.h))

proc tr*(_: type gen_qlayout_types.QLayout, s: cstring, c: cstring): string =
  let v_ms = fcQLayout_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qlayout_types.QLayout, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQLayout_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qlayout_types.QLayout, s: cstring, c: cstring): string =
  let v_ms = fcQLayout_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qlayout_types.QLayout, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQLayout_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc replaceWidget*(self: gen_qlayout_types.QLayout, fromVal: gen_qwidget_types.QWidget, to: gen_qwidget_types.QWidget, options: cint): gen_qlayoutitem_types.QLayoutItem =
  gen_qlayoutitem_types.QLayoutItem(h: fcQLayout_replaceWidget3(self.h, fromVal.h, to.h, cint(options)))

proc QLayoutinvalidate*(self: gen_qlayout_types.QLayout, ): void =
  fQLayout_virtualbase_invalidate(self.h)

type QLayoutinvalidateProc* = proc(): void
proc oninvalidate*(self: gen_qlayout_types.QLayout, slot: QLayoutinvalidateProc) =
  # TODO check subclass
  var tmp = new QLayoutinvalidateProc
  tmp[] = slot
  GC_ref(tmp)
  fcQLayout_override_virtual_invalidate(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLayout_invalidate(self: ptr cQLayout, slot: int): void {.exportc: "miqt_exec_callback_QLayout_invalidate ".} =
  var nimfunc = cast[ptr QLayoutinvalidateProc](cast[pointer](slot))

  nimfunc[]()
proc QLayoutgeometry*(self: gen_qlayout_types.QLayout, ): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fQLayout_virtualbase_geometry(self.h))

type QLayoutgeometryProc* = proc(): gen_qrect_types.QRect
proc ongeometry*(self: gen_qlayout_types.QLayout, slot: QLayoutgeometryProc) =
  # TODO check subclass
  var tmp = new QLayoutgeometryProc
  tmp[] = slot
  GC_ref(tmp)
  fcQLayout_override_virtual_geometry(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLayout_geometry(self: ptr cQLayout, slot: int): pointer {.exportc: "miqt_exec_callback_QLayout_geometry ".} =
  var nimfunc = cast[ptr QLayoutgeometryProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
type QLayoutaddItemProc* = proc(param1: gen_qlayoutitem_types.QLayoutItem): void
proc onaddItem*(self: gen_qlayout_types.QLayout, slot: QLayoutaddItemProc) =
  # TODO check subclass
  var tmp = new QLayoutaddItemProc
  tmp[] = slot
  GC_ref(tmp)
  fcQLayout_override_virtual_addItem(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLayout_addItem(self: ptr cQLayout, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QLayout_addItem ".} =
  var nimfunc = cast[ptr QLayoutaddItemProc](cast[pointer](slot))
  let slotval1 = gen_qlayoutitem_types.QLayoutItem(h: param1)


  nimfunc[](slotval1)
proc QLayoutexpandingDirections*(self: gen_qlayout_types.QLayout, ): cint =
  cint(fQLayout_virtualbase_expandingDirections(self.h))

type QLayoutexpandingDirectionsProc* = proc(): cint
proc onexpandingDirections*(self: gen_qlayout_types.QLayout, slot: QLayoutexpandingDirectionsProc) =
  # TODO check subclass
  var tmp = new QLayoutexpandingDirectionsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQLayout_override_virtual_expandingDirections(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLayout_expandingDirections(self: ptr cQLayout, slot: int): cint {.exportc: "miqt_exec_callback_QLayout_expandingDirections ".} =
  var nimfunc = cast[ptr QLayoutexpandingDirectionsProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  cint(virtualReturn)
proc QLayoutminimumSize*(self: gen_qlayout_types.QLayout, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fQLayout_virtualbase_minimumSize(self.h))

type QLayoutminimumSizeProc* = proc(): gen_qsize_types.QSize
proc onminimumSize*(self: gen_qlayout_types.QLayout, slot: QLayoutminimumSizeProc) =
  # TODO check subclass
  var tmp = new QLayoutminimumSizeProc
  tmp[] = slot
  GC_ref(tmp)
  fcQLayout_override_virtual_minimumSize(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLayout_minimumSize(self: ptr cQLayout, slot: int): pointer {.exportc: "miqt_exec_callback_QLayout_minimumSize ".} =
  var nimfunc = cast[ptr QLayoutminimumSizeProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QLayoutmaximumSize*(self: gen_qlayout_types.QLayout, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fQLayout_virtualbase_maximumSize(self.h))

type QLayoutmaximumSizeProc* = proc(): gen_qsize_types.QSize
proc onmaximumSize*(self: gen_qlayout_types.QLayout, slot: QLayoutmaximumSizeProc) =
  # TODO check subclass
  var tmp = new QLayoutmaximumSizeProc
  tmp[] = slot
  GC_ref(tmp)
  fcQLayout_override_virtual_maximumSize(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLayout_maximumSize(self: ptr cQLayout, slot: int): pointer {.exportc: "miqt_exec_callback_QLayout_maximumSize ".} =
  var nimfunc = cast[ptr QLayoutmaximumSizeProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QLayoutsetGeometry*(self: gen_qlayout_types.QLayout, geometry: gen_qrect_types.QRect): void =
  fQLayout_virtualbase_setGeometry(self.h, geometry.h)

type QLayoutsetGeometryProc* = proc(geometry: gen_qrect_types.QRect): void
proc onsetGeometry*(self: gen_qlayout_types.QLayout, slot: QLayoutsetGeometryProc) =
  # TODO check subclass
  var tmp = new QLayoutsetGeometryProc
  tmp[] = slot
  GC_ref(tmp)
  fcQLayout_override_virtual_setGeometry(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLayout_setGeometry(self: ptr cQLayout, slot: int, geometry: pointer): void {.exportc: "miqt_exec_callback_QLayout_setGeometry ".} =
  var nimfunc = cast[ptr QLayoutsetGeometryProc](cast[pointer](slot))
  let slotval1 = gen_qrect_types.QRect(h: geometry)


  nimfunc[](slotval1)
type QLayoutitemAtProc* = proc(index: cint): gen_qlayoutitem_types.QLayoutItem
proc onitemAt*(self: gen_qlayout_types.QLayout, slot: QLayoutitemAtProc) =
  # TODO check subclass
  var tmp = new QLayoutitemAtProc
  tmp[] = slot
  GC_ref(tmp)
  fcQLayout_override_virtual_itemAt(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLayout_itemAt(self: ptr cQLayout, slot: int, index: cint): pointer {.exportc: "miqt_exec_callback_QLayout_itemAt ".} =
  var nimfunc = cast[ptr QLayoutitemAtProc](cast[pointer](slot))
  let slotval1 = index


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
type QLayouttakeAtProc* = proc(index: cint): gen_qlayoutitem_types.QLayoutItem
proc ontakeAt*(self: gen_qlayout_types.QLayout, slot: QLayouttakeAtProc) =
  # TODO check subclass
  var tmp = new QLayouttakeAtProc
  tmp[] = slot
  GC_ref(tmp)
  fcQLayout_override_virtual_takeAt(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLayout_takeAt(self: ptr cQLayout, slot: int, index: cint): pointer {.exportc: "miqt_exec_callback_QLayout_takeAt ".} =
  var nimfunc = cast[ptr QLayouttakeAtProc](cast[pointer](slot))
  let slotval1 = index


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QLayoutindexOf*(self: gen_qlayout_types.QLayout, param1: gen_qwidget_types.QWidget): cint =
  fQLayout_virtualbase_indexOf(self.h, param1.h)

type QLayoutindexOfProc* = proc(param1: gen_qwidget_types.QWidget): cint
proc onindexOf*(self: gen_qlayout_types.QLayout, slot: QLayoutindexOfProc) =
  # TODO check subclass
  var tmp = new QLayoutindexOfProc
  tmp[] = slot
  GC_ref(tmp)
  fcQLayout_override_virtual_indexOf(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLayout_indexOf(self: ptr cQLayout, slot: int, param1: pointer): cint {.exportc: "miqt_exec_callback_QLayout_indexOf ".} =
  var nimfunc = cast[ptr QLayoutindexOfProc](cast[pointer](slot))
  let slotval1 = gen_qwidget_types.QWidget(h: param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
type QLayoutcountProc* = proc(): cint
proc oncount*(self: gen_qlayout_types.QLayout, slot: QLayoutcountProc) =
  # TODO check subclass
  var tmp = new QLayoutcountProc
  tmp[] = slot
  GC_ref(tmp)
  fcQLayout_override_virtual_count(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLayout_count(self: ptr cQLayout, slot: int): cint {.exportc: "miqt_exec_callback_QLayout_count ".} =
  var nimfunc = cast[ptr QLayoutcountProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QLayoutisEmpty*(self: gen_qlayout_types.QLayout, ): bool =
  fQLayout_virtualbase_isEmpty(self.h)

type QLayoutisEmptyProc* = proc(): bool
proc onisEmpty*(self: gen_qlayout_types.QLayout, slot: QLayoutisEmptyProc) =
  # TODO check subclass
  var tmp = new QLayoutisEmptyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQLayout_override_virtual_isEmpty(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLayout_isEmpty(self: ptr cQLayout, slot: int): bool {.exportc: "miqt_exec_callback_QLayout_isEmpty ".} =
  var nimfunc = cast[ptr QLayoutisEmptyProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QLayoutcontrolTypes*(self: gen_qlayout_types.QLayout, ): cint =
  cint(fQLayout_virtualbase_controlTypes(self.h))

type QLayoutcontrolTypesProc* = proc(): cint
proc oncontrolTypes*(self: gen_qlayout_types.QLayout, slot: QLayoutcontrolTypesProc) =
  # TODO check subclass
  var tmp = new QLayoutcontrolTypesProc
  tmp[] = slot
  GC_ref(tmp)
  fcQLayout_override_virtual_controlTypes(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLayout_controlTypes(self: ptr cQLayout, slot: int): cint {.exportc: "miqt_exec_callback_QLayout_controlTypes ".} =
  var nimfunc = cast[ptr QLayoutcontrolTypesProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  cint(virtualReturn)
proc QLayoutlayout*(self: gen_qlayout_types.QLayout, ): gen_qlayout_types.QLayout =
  gen_qlayout_types.QLayout(h: fQLayout_virtualbase_layout(self.h))

type QLayoutlayoutProc* = proc(): gen_qlayout_types.QLayout
proc onlayout*(self: gen_qlayout_types.QLayout, slot: QLayoutlayoutProc) =
  # TODO check subclass
  var tmp = new QLayoutlayoutProc
  tmp[] = slot
  GC_ref(tmp)
  fcQLayout_override_virtual_layout(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLayout_layout(self: ptr cQLayout, slot: int): pointer {.exportc: "miqt_exec_callback_QLayout_layout ".} =
  var nimfunc = cast[ptr QLayoutlayoutProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QLayoutchildEvent*(self: gen_qlayout_types.QLayout, e: gen_qcoreevent_types.QChildEvent): void =
  fQLayout_virtualbase_childEvent(self.h, e.h)

type QLayoutchildEventProc* = proc(e: gen_qcoreevent_types.QChildEvent): void
proc onchildEvent*(self: gen_qlayout_types.QLayout, slot: QLayoutchildEventProc) =
  # TODO check subclass
  var tmp = new QLayoutchildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQLayout_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLayout_childEvent(self: ptr cQLayout, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QLayout_childEvent ".} =
  var nimfunc = cast[ptr QLayoutchildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: e)


  nimfunc[](slotval1)
proc QLayoutevent*(self: gen_qlayout_types.QLayout, event: gen_qcoreevent_types.QEvent): bool =
  fQLayout_virtualbase_event(self.h, event.h)

type QLayouteventProc* = proc(event: gen_qcoreevent_types.QEvent): bool
proc onevent*(self: gen_qlayout_types.QLayout, slot: QLayouteventProc) =
  # TODO check subclass
  var tmp = new QLayouteventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQLayout_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLayout_event(self: ptr cQLayout, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QLayout_event ".} =
  var nimfunc = cast[ptr QLayouteventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QLayouteventFilter*(self: gen_qlayout_types.QLayout, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fQLayout_virtualbase_eventFilter(self.h, watched.h, event.h)

type QLayouteventFilterProc* = proc(watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool
proc oneventFilter*(self: gen_qlayout_types.QLayout, slot: QLayouteventFilterProc) =
  # TODO check subclass
  var tmp = new QLayouteventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQLayout_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLayout_eventFilter(self: ptr cQLayout, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QLayout_eventFilter ".} =
  var nimfunc = cast[ptr QLayouteventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: watched)

  let slotval2 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QLayouttimerEvent*(self: gen_qlayout_types.QLayout, event: gen_qcoreevent_types.QTimerEvent): void =
  fQLayout_virtualbase_timerEvent(self.h, event.h)

type QLayouttimerEventProc* = proc(event: gen_qcoreevent_types.QTimerEvent): void
proc ontimerEvent*(self: gen_qlayout_types.QLayout, slot: QLayouttimerEventProc) =
  # TODO check subclass
  var tmp = new QLayouttimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQLayout_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLayout_timerEvent(self: ptr cQLayout, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QLayout_timerEvent ".} =
  var nimfunc = cast[ptr QLayouttimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QLayoutcustomEvent*(self: gen_qlayout_types.QLayout, event: gen_qcoreevent_types.QEvent): void =
  fQLayout_virtualbase_customEvent(self.h, event.h)

type QLayoutcustomEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc oncustomEvent*(self: gen_qlayout_types.QLayout, slot: QLayoutcustomEventProc) =
  # TODO check subclass
  var tmp = new QLayoutcustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQLayout_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLayout_customEvent(self: ptr cQLayout, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QLayout_customEvent ".} =
  var nimfunc = cast[ptr QLayoutcustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QLayoutconnectNotify*(self: gen_qlayout_types.QLayout, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQLayout_virtualbase_connectNotify(self.h, signal.h)

type QLayoutconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc onconnectNotify*(self: gen_qlayout_types.QLayout, slot: QLayoutconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QLayoutconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQLayout_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLayout_connectNotify(self: ptr cQLayout, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QLayout_connectNotify ".} =
  var nimfunc = cast[ptr QLayoutconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QLayoutdisconnectNotify*(self: gen_qlayout_types.QLayout, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQLayout_virtualbase_disconnectNotify(self.h, signal.h)

type QLayoutdisconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qlayout_types.QLayout, slot: QLayoutdisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QLayoutdisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQLayout_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLayout_disconnectNotify(self: ptr cQLayout, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QLayout_disconnectNotify ".} =
  var nimfunc = cast[ptr QLayoutdisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
type QLayoutsizeHintProc* = proc(): gen_qsize_types.QSize
proc onsizeHint*(self: gen_qlayout_types.QLayout, slot: QLayoutsizeHintProc) =
  # TODO check subclass
  var tmp = new QLayoutsizeHintProc
  tmp[] = slot
  GC_ref(tmp)
  fcQLayout_override_virtual_sizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLayout_sizeHint(self: ptr cQLayout, slot: int): pointer {.exportc: "miqt_exec_callback_QLayout_sizeHint ".} =
  var nimfunc = cast[ptr QLayoutsizeHintProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QLayouthasHeightForWidth*(self: gen_qlayout_types.QLayout, ): bool =
  fQLayout_virtualbase_hasHeightForWidth(self.h)

type QLayouthasHeightForWidthProc* = proc(): bool
proc onhasHeightForWidth*(self: gen_qlayout_types.QLayout, slot: QLayouthasHeightForWidthProc) =
  # TODO check subclass
  var tmp = new QLayouthasHeightForWidthProc
  tmp[] = slot
  GC_ref(tmp)
  fcQLayout_override_virtual_hasHeightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLayout_hasHeightForWidth(self: ptr cQLayout, slot: int): bool {.exportc: "miqt_exec_callback_QLayout_hasHeightForWidth ".} =
  var nimfunc = cast[ptr QLayouthasHeightForWidthProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QLayoutheightForWidth*(self: gen_qlayout_types.QLayout, param1: cint): cint =
  fQLayout_virtualbase_heightForWidth(self.h, param1)

type QLayoutheightForWidthProc* = proc(param1: cint): cint
proc onheightForWidth*(self: gen_qlayout_types.QLayout, slot: QLayoutheightForWidthProc) =
  # TODO check subclass
  var tmp = new QLayoutheightForWidthProc
  tmp[] = slot
  GC_ref(tmp)
  fcQLayout_override_virtual_heightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLayout_heightForWidth(self: ptr cQLayout, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QLayout_heightForWidth ".} =
  var nimfunc = cast[ptr QLayoutheightForWidthProc](cast[pointer](slot))
  let slotval1 = param1


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QLayoutminimumHeightForWidth*(self: gen_qlayout_types.QLayout, param1: cint): cint =
  fQLayout_virtualbase_minimumHeightForWidth(self.h, param1)

type QLayoutminimumHeightForWidthProc* = proc(param1: cint): cint
proc onminimumHeightForWidth*(self: gen_qlayout_types.QLayout, slot: QLayoutminimumHeightForWidthProc) =
  # TODO check subclass
  var tmp = new QLayoutminimumHeightForWidthProc
  tmp[] = slot
  GC_ref(tmp)
  fcQLayout_override_virtual_minimumHeightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLayout_minimumHeightForWidth(self: ptr cQLayout, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QLayout_minimumHeightForWidth ".} =
  var nimfunc = cast[ptr QLayoutminimumHeightForWidthProc](cast[pointer](slot))
  let slotval1 = param1


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QLayoutwidget*(self: gen_qlayout_types.QLayout, ): gen_qwidget_types.QWidget =
  gen_qwidget_types.QWidget(h: fQLayout_virtualbase_widget(self.h))

type QLayoutwidgetProc* = proc(): gen_qwidget_types.QWidget
proc onwidget*(self: gen_qlayout_types.QLayout, slot: QLayoutwidgetProc) =
  # TODO check subclass
  var tmp = new QLayoutwidgetProc
  tmp[] = slot
  GC_ref(tmp)
  fcQLayout_override_virtual_widget(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLayout_widget(self: ptr cQLayout, slot: int): pointer {.exportc: "miqt_exec_callback_QLayout_widget ".} =
  var nimfunc = cast[ptr QLayoutwidgetProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QLayoutspacerItem*(self: gen_qlayout_types.QLayout, ): gen_qlayoutitem_types.QSpacerItem =
  gen_qlayoutitem_types.QSpacerItem(h: fQLayout_virtualbase_spacerItem(self.h))

type QLayoutspacerItemProc* = proc(): gen_qlayoutitem_types.QSpacerItem
proc onspacerItem*(self: gen_qlayout_types.QLayout, slot: QLayoutspacerItemProc) =
  # TODO check subclass
  var tmp = new QLayoutspacerItemProc
  tmp[] = slot
  GC_ref(tmp)
  fcQLayout_override_virtual_spacerItem(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLayout_spacerItem(self: ptr cQLayout, slot: int): pointer {.exportc: "miqt_exec_callback_QLayout_spacerItem ".} =
  var nimfunc = cast[ptr QLayoutspacerItemProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc delete*(self: gen_qlayout_types.QLayout) =
  fcQLayout_delete(self.h)
