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


{.compile("gen_qlayout.cpp", QtWidgetsCFlags).}


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

proc fcQLayout_metaObject(self: pointer): pointer {.importc: "QLayout_metaObject".}
proc fcQLayout_metacast(self: pointer, param1: cstring): pointer {.importc: "QLayout_metacast".}
proc fcQLayout_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QLayout_metacall".}
proc fcQLayout_tr(s: cstring): struct_miqt_string {.importc: "QLayout_tr".}
proc fcQLayout_trUtf8(s: cstring): struct_miqt_string {.importc: "QLayout_trUtf8".}
proc fcQLayout_margin(self: pointer): cint {.importc: "QLayout_margin".}
proc fcQLayout_setMargin(self: pointer, margin: cint): void {.importc: "QLayout_setMargin".}
proc fcQLayout_spacing(self: pointer): cint {.importc: "QLayout_spacing".}
proc fcQLayout_setSpacing(self: pointer, spacing: cint): void {.importc: "QLayout_setSpacing".}
proc fcQLayout_setContentsMargins(self: pointer, left: cint, top: cint, right: cint, bottom: cint): void {.importc: "QLayout_setContentsMargins".}
proc fcQLayout_setContentsMarginsWithMargins(self: pointer, margins: pointer): void {.importc: "QLayout_setContentsMarginsWithMargins".}
proc fcQLayout_getContentsMargins(self: pointer, left: ptr cint, top: ptr cint, right: ptr cint, bottom: ptr cint): void {.importc: "QLayout_getContentsMargins".}
proc fcQLayout_contentsMargins(self: pointer): pointer {.importc: "QLayout_contentsMargins".}
proc fcQLayout_contentsRect(self: pointer): pointer {.importc: "QLayout_contentsRect".}
proc fcQLayout_setAlignment(self: pointer, w: pointer, alignment: cint): bool {.importc: "QLayout_setAlignment".}
proc fcQLayout_setAlignment2(self: pointer, l: pointer, alignment: cint): bool {.importc: "QLayout_setAlignment2".}
proc fcQLayout_setSizeConstraint(self: pointer, sizeConstraint: cint): void {.importc: "QLayout_setSizeConstraint".}
proc fcQLayout_sizeConstraint(self: pointer): cint {.importc: "QLayout_sizeConstraint".}
proc fcQLayout_setMenuBar(self: pointer, w: pointer): void {.importc: "QLayout_setMenuBar".}
proc fcQLayout_menuBar(self: pointer): pointer {.importc: "QLayout_menuBar".}
proc fcQLayout_parentWidget(self: pointer): pointer {.importc: "QLayout_parentWidget".}
proc fcQLayout_invalidate(self: pointer): void {.importc: "QLayout_invalidate".}
proc fcQLayout_geometry(self: pointer): pointer {.importc: "QLayout_geometry".}
proc fcQLayout_activate(self: pointer): bool {.importc: "QLayout_activate".}
proc fcQLayout_update(self: pointer): void {.importc: "QLayout_update".}
proc fcQLayout_addWidget(self: pointer, w: pointer): void {.importc: "QLayout_addWidget".}
proc fcQLayout_addItem(self: pointer, param1: pointer): void {.importc: "QLayout_addItem".}
proc fcQLayout_removeWidget(self: pointer, w: pointer): void {.importc: "QLayout_removeWidget".}
proc fcQLayout_removeItem(self: pointer, param1: pointer): void {.importc: "QLayout_removeItem".}
proc fcQLayout_expandingDirections(self: pointer): cint {.importc: "QLayout_expandingDirections".}
proc fcQLayout_minimumSize(self: pointer): pointer {.importc: "QLayout_minimumSize".}
proc fcQLayout_maximumSize(self: pointer): pointer {.importc: "QLayout_maximumSize".}
proc fcQLayout_setGeometry(self: pointer, geometry: pointer): void {.importc: "QLayout_setGeometry".}
proc fcQLayout_itemAt(self: pointer, index: cint): pointer {.importc: "QLayout_itemAt".}
proc fcQLayout_takeAt(self: pointer, index: cint): pointer {.importc: "QLayout_takeAt".}
proc fcQLayout_indexOf(self: pointer, param1: pointer): cint {.importc: "QLayout_indexOf".}
proc fcQLayout_indexOfWithQLayoutItem(self: pointer, param1: pointer): cint {.importc: "QLayout_indexOfWithQLayoutItem".}
proc fcQLayout_count(self: pointer): cint {.importc: "QLayout_count".}
proc fcQLayout_isEmpty(self: pointer): bool {.importc: "QLayout_isEmpty".}
proc fcQLayout_controlTypes(self: pointer): cint {.importc: "QLayout_controlTypes".}
proc fcQLayout_replaceWidget(self: pointer, fromVal: pointer, to: pointer): pointer {.importc: "QLayout_replaceWidget".}
proc fcQLayout_totalHeightForWidth(self: pointer, w: cint): cint {.importc: "QLayout_totalHeightForWidth".}
proc fcQLayout_totalMinimumSize(self: pointer): pointer {.importc: "QLayout_totalMinimumSize".}
proc fcQLayout_totalMaximumSize(self: pointer): pointer {.importc: "QLayout_totalMaximumSize".}
proc fcQLayout_totalSizeHint(self: pointer): pointer {.importc: "QLayout_totalSizeHint".}
proc fcQLayout_layout(self: pointer): pointer {.importc: "QLayout_layout".}
proc fcQLayout_setEnabled(self: pointer, enabled: bool): void {.importc: "QLayout_setEnabled".}
proc fcQLayout_isEnabled(self: pointer): bool {.importc: "QLayout_isEnabled".}
proc fcQLayout_closestAcceptableSize(w: pointer, s: pointer): pointer {.importc: "QLayout_closestAcceptableSize".}
proc fcQLayout_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QLayout_tr2".}
proc fcQLayout_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QLayout_tr3".}
proc fcQLayout_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QLayout_trUtf82".}
proc fcQLayout_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QLayout_trUtf83".}
proc fcQLayout_replaceWidget3(self: pointer, fromVal: pointer, to: pointer, options: cint): pointer {.importc: "QLayout_replaceWidget3".}
proc fcQLayout_vtbl(self: pointer): pointer {.importc: "QLayout_vtbl".}
proc fcQLayout_vdata(self: pointer): pointer {.importc: "QLayout_vdata".}

type cQLayoutVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  invalidate*: proc(self: pointer): void {.cdecl, raises: [], gcsafe.}
  geometry*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  addItem*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  expandingDirections*: proc(self: pointer): cint {.cdecl, raises: [], gcsafe.}
  minimumSize*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  maximumSize*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  setGeometry*: proc(self: pointer, geometry: pointer): void {.cdecl, raises: [], gcsafe.}
  itemAt*: proc(self: pointer, index: cint): pointer {.cdecl, raises: [], gcsafe.}
  takeAt*: proc(self: pointer, index: cint): pointer {.cdecl, raises: [], gcsafe.}
  indexOf*: proc(self: pointer, param1: pointer): cint {.cdecl, raises: [], gcsafe.}
  count*: proc(self: pointer): cint {.cdecl, raises: [], gcsafe.}
  isEmpty*: proc(self: pointer): bool {.cdecl, raises: [], gcsafe.}
  controlTypes*: proc(self: pointer): cint {.cdecl, raises: [], gcsafe.}
  layout*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  event*: proc(self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  sizeHint*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  hasHeightForWidth*: proc(self: pointer): bool {.cdecl, raises: [], gcsafe.}
  heightForWidth*: proc(self: pointer, param1: cint): cint {.cdecl, raises: [], gcsafe.}
  minimumHeightForWidth*: proc(self: pointer, param1: cint): cint {.cdecl, raises: [], gcsafe.}
  widget*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  spacerItem*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
proc fcQLayout_virtualbase_metaObject(self: pointer): pointer {.importc: "QLayout_virtualbase_metaObject".}
proc fcQLayout_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QLayout_virtualbase_metacast".}
proc fcQLayout_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QLayout_virtualbase_metacall".}
proc fcQLayout_virtualbase_invalidate(self: pointer): void {.importc: "QLayout_virtualbase_invalidate".}
proc fcQLayout_virtualbase_geometry(self: pointer): pointer {.importc: "QLayout_virtualbase_geometry".}
proc fcQLayout_virtualbase_expandingDirections(self: pointer): cint {.importc: "QLayout_virtualbase_expandingDirections".}
proc fcQLayout_virtualbase_minimumSize(self: pointer): pointer {.importc: "QLayout_virtualbase_minimumSize".}
proc fcQLayout_virtualbase_maximumSize(self: pointer): pointer {.importc: "QLayout_virtualbase_maximumSize".}
proc fcQLayout_virtualbase_setGeometry(self: pointer, geometry: pointer): void {.importc: "QLayout_virtualbase_setGeometry".}
proc fcQLayout_virtualbase_indexOf(self: pointer, param1: pointer): cint {.importc: "QLayout_virtualbase_indexOf".}
proc fcQLayout_virtualbase_isEmpty(self: pointer): bool {.importc: "QLayout_virtualbase_isEmpty".}
proc fcQLayout_virtualbase_controlTypes(self: pointer): cint {.importc: "QLayout_virtualbase_controlTypes".}
proc fcQLayout_virtualbase_layout(self: pointer): pointer {.importc: "QLayout_virtualbase_layout".}
proc fcQLayout_virtualbase_childEvent(self: pointer, e: pointer): void {.importc: "QLayout_virtualbase_childEvent".}
proc fcQLayout_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QLayout_virtualbase_event".}
proc fcQLayout_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QLayout_virtualbase_eventFilter".}
proc fcQLayout_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QLayout_virtualbase_timerEvent".}
proc fcQLayout_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QLayout_virtualbase_customEvent".}
proc fcQLayout_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QLayout_virtualbase_connectNotify".}
proc fcQLayout_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QLayout_virtualbase_disconnectNotify".}
proc fcQLayout_virtualbase_hasHeightForWidth(self: pointer): bool {.importc: "QLayout_virtualbase_hasHeightForWidth".}
proc fcQLayout_virtualbase_heightForWidth(self: pointer, param1: cint): cint {.importc: "QLayout_virtualbase_heightForWidth".}
proc fcQLayout_virtualbase_minimumHeightForWidth(self: pointer, param1: cint): cint {.importc: "QLayout_virtualbase_minimumHeightForWidth".}
proc fcQLayout_virtualbase_widget(self: pointer): pointer {.importc: "QLayout_virtualbase_widget".}
proc fcQLayout_virtualbase_spacerItem(self: pointer): pointer {.importc: "QLayout_virtualbase_spacerItem".}
proc fcQLayout_protectedbase_widgetEvent(self: pointer, param1: pointer): void {.importc: "QLayout_protectedbase_widgetEvent".}
proc fcQLayout_protectedbase_addChildLayout(self: pointer, l: pointer): void {.importc: "QLayout_protectedbase_addChildLayout".}
proc fcQLayout_protectedbase_addChildWidget(self: pointer, w: pointer): void {.importc: "QLayout_protectedbase_addChildWidget".}
proc fcQLayout_protectedbase_adoptLayout(self: pointer, layout: pointer): bool {.importc: "QLayout_protectedbase_adoptLayout".}
proc fcQLayout_protectedbase_alignmentRect(self: pointer, param1: pointer): pointer {.importc: "QLayout_protectedbase_alignmentRect".}
proc fcQLayout_protectedbase_sender(self: pointer): pointer {.importc: "QLayout_protectedbase_sender".}
proc fcQLayout_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QLayout_protectedbase_senderSignalIndex".}
proc fcQLayout_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QLayout_protectedbase_receivers".}
proc fcQLayout_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QLayout_protectedbase_isSignalConnected".}
proc fcQLayout_new(vtbl, vdata: pointer, parent: pointer): ptr cQLayout {.importc: "QLayout_new".}
proc fcQLayout_new2(vtbl, vdata: pointer): ptr cQLayout {.importc: "QLayout_new2".}
proc fcQLayout_staticMetaObject(): pointer {.importc: "QLayout_staticMetaObject".}

proc metaObject*(self: gen_qlayout_types.QLayout): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQLayout_metaObject(self.h), owned: false)

proc metacast*(self: gen_qlayout_types.QLayout, param1: cstring): pointer =
  fcQLayout_metacast(self.h, param1)

proc metacall*(self: gen_qlayout_types.QLayout, param1: cint, param2: cint, param3: pointer): cint =
  fcQLayout_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qlayout_types.QLayout, s: cstring): string =
  let v_ms = fcQLayout_tr(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qlayout_types.QLayout, s: cstring): string =
  let v_ms = fcQLayout_trUtf8(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc margin*(self: gen_qlayout_types.QLayout): cint =
  fcQLayout_margin(self.h)

proc setMargin*(self: gen_qlayout_types.QLayout, margin: cint): void =
  fcQLayout_setMargin(self.h, margin)

proc spacing*(self: gen_qlayout_types.QLayout): cint =
  fcQLayout_spacing(self.h)

proc setSpacing*(self: gen_qlayout_types.QLayout, spacing: cint): void =
  fcQLayout_setSpacing(self.h, spacing)

proc setContentsMargins*(self: gen_qlayout_types.QLayout, left: cint, top: cint, right: cint, bottom: cint): void =
  fcQLayout_setContentsMargins(self.h, left, top, right, bottom)

proc setContentsMargins*(self: gen_qlayout_types.QLayout, margins: gen_qmargins_types.QMargins): void =
  fcQLayout_setContentsMarginsWithMargins(self.h, margins.h)

proc getContentsMargins*(self: gen_qlayout_types.QLayout, left: ptr cint, top: ptr cint, right: ptr cint, bottom: ptr cint): void =
  fcQLayout_getContentsMargins(self.h, left, top, right, bottom)

proc contentsMargins*(self: gen_qlayout_types.QLayout): gen_qmargins_types.QMargins =
  gen_qmargins_types.QMargins(h: fcQLayout_contentsMargins(self.h), owned: true)

proc contentsRect*(self: gen_qlayout_types.QLayout): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fcQLayout_contentsRect(self.h), owned: true)

proc setAlignment*(self: gen_qlayout_types.QLayout, w: gen_qwidget_types.QWidget, alignment: cint): bool =
  fcQLayout_setAlignment(self.h, w.h, cint(alignment))

proc setAlignment*(self: gen_qlayout_types.QLayout, l: gen_qlayout_types.QLayout, alignment: cint): bool =
  fcQLayout_setAlignment2(self.h, l.h, cint(alignment))

proc setSizeConstraint*(self: gen_qlayout_types.QLayout, sizeConstraint: cint): void =
  fcQLayout_setSizeConstraint(self.h, cint(sizeConstraint))

proc sizeConstraint*(self: gen_qlayout_types.QLayout): cint =
  cint(fcQLayout_sizeConstraint(self.h))

proc setMenuBar*(self: gen_qlayout_types.QLayout, w: gen_qwidget_types.QWidget): void =
  fcQLayout_setMenuBar(self.h, w.h)

proc menuBar*(self: gen_qlayout_types.QLayout): gen_qwidget_types.QWidget =
  gen_qwidget_types.QWidget(h: fcQLayout_menuBar(self.h), owned: false)

proc parentWidget*(self: gen_qlayout_types.QLayout): gen_qwidget_types.QWidget =
  gen_qwidget_types.QWidget(h: fcQLayout_parentWidget(self.h), owned: false)

proc invalidate*(self: gen_qlayout_types.QLayout): void =
  fcQLayout_invalidate(self.h)

proc geometry*(self: gen_qlayout_types.QLayout): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fcQLayout_geometry(self.h), owned: true)

proc activate*(self: gen_qlayout_types.QLayout): bool =
  fcQLayout_activate(self.h)

proc update*(self: gen_qlayout_types.QLayout): void =
  fcQLayout_update(self.h)

proc addWidget*(self: gen_qlayout_types.QLayout, w: gen_qwidget_types.QWidget): void =
  fcQLayout_addWidget(self.h, w.h)

proc addItem*(self: gen_qlayout_types.QLayout, param1: gen_qlayoutitem_types.QLayoutItem): void =
  fcQLayout_addItem(self.h, param1.h)

proc removeWidget*(self: gen_qlayout_types.QLayout, w: gen_qwidget_types.QWidget): void =
  fcQLayout_removeWidget(self.h, w.h)

proc removeItem*(self: gen_qlayout_types.QLayout, param1: gen_qlayoutitem_types.QLayoutItem): void =
  fcQLayout_removeItem(self.h, param1.h)

proc expandingDirections*(self: gen_qlayout_types.QLayout): cint =
  cint(fcQLayout_expandingDirections(self.h))

proc minimumSize*(self: gen_qlayout_types.QLayout): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQLayout_minimumSize(self.h), owned: true)

proc maximumSize*(self: gen_qlayout_types.QLayout): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQLayout_maximumSize(self.h), owned: true)

proc setGeometry*(self: gen_qlayout_types.QLayout, geometry: gen_qrect_types.QRect): void =
  fcQLayout_setGeometry(self.h, geometry.h)

proc itemAt*(self: gen_qlayout_types.QLayout, index: cint): gen_qlayoutitem_types.QLayoutItem =
  gen_qlayoutitem_types.QLayoutItem(h: fcQLayout_itemAt(self.h, index), owned: false)

proc takeAt*(self: gen_qlayout_types.QLayout, index: cint): gen_qlayoutitem_types.QLayoutItem =
  gen_qlayoutitem_types.QLayoutItem(h: fcQLayout_takeAt(self.h, index), owned: false)

proc indexOf*(self: gen_qlayout_types.QLayout, param1: gen_qwidget_types.QWidget): cint =
  fcQLayout_indexOf(self.h, param1.h)

proc indexOf*(self: gen_qlayout_types.QLayout, param1: gen_qlayoutitem_types.QLayoutItem): cint =
  fcQLayout_indexOfWithQLayoutItem(self.h, param1.h)

proc count*(self: gen_qlayout_types.QLayout): cint =
  fcQLayout_count(self.h)

proc isEmpty*(self: gen_qlayout_types.QLayout): bool =
  fcQLayout_isEmpty(self.h)

proc controlTypes*(self: gen_qlayout_types.QLayout): cint =
  cint(fcQLayout_controlTypes(self.h))

proc replaceWidget*(self: gen_qlayout_types.QLayout, fromVal: gen_qwidget_types.QWidget, to: gen_qwidget_types.QWidget): gen_qlayoutitem_types.QLayoutItem =
  gen_qlayoutitem_types.QLayoutItem(h: fcQLayout_replaceWidget(self.h, fromVal.h, to.h), owned: false)

proc totalHeightForWidth*(self: gen_qlayout_types.QLayout, w: cint): cint =
  fcQLayout_totalHeightForWidth(self.h, w)

proc totalMinimumSize*(self: gen_qlayout_types.QLayout): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQLayout_totalMinimumSize(self.h), owned: true)

proc totalMaximumSize*(self: gen_qlayout_types.QLayout): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQLayout_totalMaximumSize(self.h), owned: true)

proc totalSizeHint*(self: gen_qlayout_types.QLayout): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQLayout_totalSizeHint(self.h), owned: true)

proc layout*(self: gen_qlayout_types.QLayout): gen_qlayout_types.QLayout =
  gen_qlayout_types.QLayout(h: fcQLayout_layout(self.h), owned: false)

proc setEnabled*(self: gen_qlayout_types.QLayout, enabled: bool): void =
  fcQLayout_setEnabled(self.h, enabled)

proc isEnabled*(self: gen_qlayout_types.QLayout): bool =
  fcQLayout_isEnabled(self.h)

proc closestAcceptableSize*(_: type gen_qlayout_types.QLayout, w: gen_qwidget_types.QWidget, s: gen_qsize_types.QSize): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQLayout_closestAcceptableSize(w.h, s.h), owned: true)

proc tr*(_: type gen_qlayout_types.QLayout, s: cstring, c: cstring): string =
  let v_ms = fcQLayout_tr2(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qlayout_types.QLayout, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQLayout_tr3(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qlayout_types.QLayout, s: cstring, c: cstring): string =
  let v_ms = fcQLayout_trUtf82(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qlayout_types.QLayout, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQLayout_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc replaceWidget*(self: gen_qlayout_types.QLayout, fromVal: gen_qwidget_types.QWidget, to: gen_qwidget_types.QWidget, options: cint): gen_qlayoutitem_types.QLayoutItem =
  gen_qlayoutitem_types.QLayoutItem(h: fcQLayout_replaceWidget3(self.h, fromVal.h, to.h, cint(options)), owned: false)

type QLayoutmetaObjectProc* = proc(self: QLayout): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QLayoutmetacastProc* = proc(self: QLayout, param1: cstring): pointer {.raises: [], gcsafe.}
type QLayoutmetacallProc* = proc(self: QLayout, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QLayoutinvalidateProc* = proc(self: QLayout): void {.raises: [], gcsafe.}
type QLayoutgeometryProc* = proc(self: QLayout): gen_qrect_types.QRect {.raises: [], gcsafe.}
type QLayoutaddItemProc* = proc(self: QLayout, param1: gen_qlayoutitem_types.QLayoutItem): void {.raises: [], gcsafe.}
type QLayoutexpandingDirectionsProc* = proc(self: QLayout): cint {.raises: [], gcsafe.}
type QLayoutminimumSizeProc* = proc(self: QLayout): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QLayoutmaximumSizeProc* = proc(self: QLayout): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QLayoutsetGeometryProc* = proc(self: QLayout, geometry: gen_qrect_types.QRect): void {.raises: [], gcsafe.}
type QLayoutitemAtProc* = proc(self: QLayout, index: cint): gen_qlayoutitem_types.QLayoutItem {.raises: [], gcsafe.}
type QLayouttakeAtProc* = proc(self: QLayout, index: cint): gen_qlayoutitem_types.QLayoutItem {.raises: [], gcsafe.}
type QLayoutindexOfProc* = proc(self: QLayout, param1: gen_qwidget_types.QWidget): cint {.raises: [], gcsafe.}
type QLayoutcountProc* = proc(self: QLayout): cint {.raises: [], gcsafe.}
type QLayoutisEmptyProc* = proc(self: QLayout): bool {.raises: [], gcsafe.}
type QLayoutcontrolTypesProc* = proc(self: QLayout): cint {.raises: [], gcsafe.}
type QLayoutlayoutProc* = proc(self: QLayout): gen_qlayout_types.QLayout {.raises: [], gcsafe.}
type QLayoutchildEventProc* = proc(self: QLayout, e: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QLayouteventProc* = proc(self: QLayout, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QLayouteventFilterProc* = proc(self: QLayout, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QLayouttimerEventProc* = proc(self: QLayout, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QLayoutcustomEventProc* = proc(self: QLayout, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QLayoutconnectNotifyProc* = proc(self: QLayout, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QLayoutdisconnectNotifyProc* = proc(self: QLayout, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QLayoutsizeHintProc* = proc(self: QLayout): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QLayouthasHeightForWidthProc* = proc(self: QLayout): bool {.raises: [], gcsafe.}
type QLayoutheightForWidthProc* = proc(self: QLayout, param1: cint): cint {.raises: [], gcsafe.}
type QLayoutminimumHeightForWidthProc* = proc(self: QLayout, param1: cint): cint {.raises: [], gcsafe.}
type QLayoutwidgetProc* = proc(self: QLayout): gen_qwidget_types.QWidget {.raises: [], gcsafe.}
type QLayoutspacerItemProc* = proc(self: QLayout): gen_qlayoutitem_types.QSpacerItem {.raises: [], gcsafe.}

type QLayoutVTable* {.inheritable, pure.} = object
  vtbl: cQLayoutVTable
  metaObject*: QLayoutmetaObjectProc
  metacast*: QLayoutmetacastProc
  metacall*: QLayoutmetacallProc
  invalidate*: QLayoutinvalidateProc
  geometry*: QLayoutgeometryProc
  addItem*: QLayoutaddItemProc
  expandingDirections*: QLayoutexpandingDirectionsProc
  minimumSize*: QLayoutminimumSizeProc
  maximumSize*: QLayoutmaximumSizeProc
  setGeometry*: QLayoutsetGeometryProc
  itemAt*: QLayoutitemAtProc
  takeAt*: QLayouttakeAtProc
  indexOf*: QLayoutindexOfProc
  count*: QLayoutcountProc
  isEmpty*: QLayoutisEmptyProc
  controlTypes*: QLayoutcontrolTypesProc
  layout*: QLayoutlayoutProc
  childEvent*: QLayoutchildEventProc
  event*: QLayouteventProc
  eventFilter*: QLayouteventFilterProc
  timerEvent*: QLayouttimerEventProc
  customEvent*: QLayoutcustomEventProc
  connectNotify*: QLayoutconnectNotifyProc
  disconnectNotify*: QLayoutdisconnectNotifyProc
  sizeHint*: QLayoutsizeHintProc
  hasHeightForWidth*: QLayouthasHeightForWidthProc
  heightForWidth*: QLayoutheightForWidthProc
  minimumHeightForWidth*: QLayoutminimumHeightForWidthProc
  widget*: QLayoutwidgetProc
  spacerItem*: QLayoutspacerItemProc

proc QLayoutmetaObject*(self: gen_qlayout_types.QLayout): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQLayout_virtualbase_metaObject(self.h), owned: false)

proc QLayoutmetacast*(self: gen_qlayout_types.QLayout, param1: cstring): pointer =
  fcQLayout_virtualbase_metacast(self.h, param1)

proc QLayoutmetacall*(self: gen_qlayout_types.QLayout, param1: cint, param2: cint, param3: pointer): cint =
  fcQLayout_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc QLayoutinvalidate*(self: gen_qlayout_types.QLayout): void =
  fcQLayout_virtualbase_invalidate(self.h)

proc QLayoutgeometry*(self: gen_qlayout_types.QLayout): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fcQLayout_virtualbase_geometry(self.h), owned: true)

proc QLayoutexpandingDirections*(self: gen_qlayout_types.QLayout): cint =
  cint(fcQLayout_virtualbase_expandingDirections(self.h))

proc QLayoutminimumSize*(self: gen_qlayout_types.QLayout): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQLayout_virtualbase_minimumSize(self.h), owned: true)

proc QLayoutmaximumSize*(self: gen_qlayout_types.QLayout): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQLayout_virtualbase_maximumSize(self.h), owned: true)

proc QLayoutsetGeometry*(self: gen_qlayout_types.QLayout, geometry: gen_qrect_types.QRect): void =
  fcQLayout_virtualbase_setGeometry(self.h, geometry.h)

proc QLayoutindexOf*(self: gen_qlayout_types.QLayout, param1: gen_qwidget_types.QWidget): cint =
  fcQLayout_virtualbase_indexOf(self.h, param1.h)

proc QLayoutisEmpty*(self: gen_qlayout_types.QLayout): bool =
  fcQLayout_virtualbase_isEmpty(self.h)

proc QLayoutcontrolTypes*(self: gen_qlayout_types.QLayout): cint =
  cint(fcQLayout_virtualbase_controlTypes(self.h))

proc QLayoutlayout*(self: gen_qlayout_types.QLayout): gen_qlayout_types.QLayout =
  gen_qlayout_types.QLayout(h: fcQLayout_virtualbase_layout(self.h), owned: false)

proc QLayoutchildEvent*(self: gen_qlayout_types.QLayout, e: gen_qcoreevent_types.QChildEvent): void =
  fcQLayout_virtualbase_childEvent(self.h, e.h)

proc QLayoutevent*(self: gen_qlayout_types.QLayout, event: gen_qcoreevent_types.QEvent): bool =
  fcQLayout_virtualbase_event(self.h, event.h)

proc QLayouteventFilter*(self: gen_qlayout_types.QLayout, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQLayout_virtualbase_eventFilter(self.h, watched.h, event.h)

proc QLayouttimerEvent*(self: gen_qlayout_types.QLayout, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQLayout_virtualbase_timerEvent(self.h, event.h)

proc QLayoutcustomEvent*(self: gen_qlayout_types.QLayout, event: gen_qcoreevent_types.QEvent): void =
  fcQLayout_virtualbase_customEvent(self.h, event.h)

proc QLayoutconnectNotify*(self: gen_qlayout_types.QLayout, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQLayout_virtualbase_connectNotify(self.h, signal.h)

proc QLayoutdisconnectNotify*(self: gen_qlayout_types.QLayout, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQLayout_virtualbase_disconnectNotify(self.h, signal.h)

proc QLayouthasHeightForWidth*(self: gen_qlayout_types.QLayout): bool =
  fcQLayout_virtualbase_hasHeightForWidth(self.h)

proc QLayoutheightForWidth*(self: gen_qlayout_types.QLayout, param1: cint): cint =
  fcQLayout_virtualbase_heightForWidth(self.h, param1)

proc QLayoutminimumHeightForWidth*(self: gen_qlayout_types.QLayout, param1: cint): cint =
  fcQLayout_virtualbase_minimumHeightForWidth(self.h, param1)

proc QLayoutwidget*(self: gen_qlayout_types.QLayout): gen_qwidget_types.QWidget =
  gen_qwidget_types.QWidget(h: fcQLayout_virtualbase_widget(self.h), owned: false)

proc QLayoutspacerItem*(self: gen_qlayout_types.QLayout): gen_qlayoutitem_types.QSpacerItem =
  gen_qlayoutitem_types.QSpacerItem(h: fcQLayout_virtualbase_spacerItem(self.h), owned: false)


proc fcQLayout_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QLayoutVTable](fcQLayout_vdata(self))
  let self = QLayout(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQLayout_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QLayoutVTable](fcQLayout_vdata(self))
  let self = QLayout(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc fcQLayout_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QLayoutVTable](fcQLayout_vdata(self))
  let self = QLayout(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc fcQLayout_vtable_callback_invalidate(self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QLayoutVTable](fcQLayout_vdata(self))
  let self = QLayout(h: self)
  vtbl[].invalidate(self)

proc fcQLayout_vtable_callback_geometry(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QLayoutVTable](fcQLayout_vdata(self))
  let self = QLayout(h: self)
  var virtualReturn = vtbl[].geometry(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQLayout_vtable_callback_addItem(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QLayoutVTable](fcQLayout_vdata(self))
  let self = QLayout(h: self)
  let slotval1 = gen_qlayoutitem_types.QLayoutItem(h: param1, owned: false)
  vtbl[].addItem(self, slotval1)

proc fcQLayout_vtable_callback_expandingDirections(self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QLayoutVTable](fcQLayout_vdata(self))
  let self = QLayout(h: self)
  var virtualReturn = vtbl[].expandingDirections(self)
  cint(virtualReturn)

proc fcQLayout_vtable_callback_minimumSize(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QLayoutVTable](fcQLayout_vdata(self))
  let self = QLayout(h: self)
  var virtualReturn = vtbl[].minimumSize(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQLayout_vtable_callback_maximumSize(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QLayoutVTable](fcQLayout_vdata(self))
  let self = QLayout(h: self)
  var virtualReturn = vtbl[].maximumSize(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQLayout_vtable_callback_setGeometry(self: pointer, geometry: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QLayoutVTable](fcQLayout_vdata(self))
  let self = QLayout(h: self)
  let slotval1 = gen_qrect_types.QRect(h: geometry, owned: false)
  vtbl[].setGeometry(self, slotval1)

proc fcQLayout_vtable_callback_itemAt(self: pointer, index: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QLayoutVTable](fcQLayout_vdata(self))
  let self = QLayout(h: self)
  let slotval1 = index
  var virtualReturn = vtbl[].itemAt(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQLayout_vtable_callback_takeAt(self: pointer, index: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QLayoutVTable](fcQLayout_vdata(self))
  let self = QLayout(h: self)
  let slotval1 = index
  var virtualReturn = vtbl[].takeAt(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQLayout_vtable_callback_indexOf(self: pointer, param1: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QLayoutVTable](fcQLayout_vdata(self))
  let self = QLayout(h: self)
  let slotval1 = gen_qwidget_types.QWidget(h: param1, owned: false)
  var virtualReturn = vtbl[].indexOf(self, slotval1)
  virtualReturn

proc fcQLayout_vtable_callback_count(self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QLayoutVTable](fcQLayout_vdata(self))
  let self = QLayout(h: self)
  var virtualReturn = vtbl[].count(self)
  virtualReturn

proc fcQLayout_vtable_callback_isEmpty(self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QLayoutVTable](fcQLayout_vdata(self))
  let self = QLayout(h: self)
  var virtualReturn = vtbl[].isEmpty(self)
  virtualReturn

proc fcQLayout_vtable_callback_controlTypes(self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QLayoutVTable](fcQLayout_vdata(self))
  let self = QLayout(h: self)
  var virtualReturn = vtbl[].controlTypes(self)
  cint(virtualReturn)

proc fcQLayout_vtable_callback_layout(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QLayoutVTable](fcQLayout_vdata(self))
  let self = QLayout(h: self)
  var virtualReturn = vtbl[].layout(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQLayout_vtable_callback_childEvent(self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QLayoutVTable](fcQLayout_vdata(self))
  let self = QLayout(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: e, owned: false)
  vtbl[].childEvent(self, slotval1)

proc fcQLayout_vtable_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QLayoutVTable](fcQLayout_vdata(self))
  let self = QLayout(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc fcQLayout_vtable_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QLayoutVTable](fcQLayout_vdata(self))
  let self = QLayout(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc fcQLayout_vtable_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QLayoutVTable](fcQLayout_vdata(self))
  let self = QLayout(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc fcQLayout_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QLayoutVTable](fcQLayout_vdata(self))
  let self = QLayout(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc fcQLayout_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QLayoutVTable](fcQLayout_vdata(self))
  let self = QLayout(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc fcQLayout_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QLayoutVTable](fcQLayout_vdata(self))
  let self = QLayout(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

proc fcQLayout_vtable_callback_sizeHint(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QLayoutVTable](fcQLayout_vdata(self))
  let self = QLayout(h: self)
  var virtualReturn = vtbl[].sizeHint(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQLayout_vtable_callback_hasHeightForWidth(self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QLayoutVTable](fcQLayout_vdata(self))
  let self = QLayout(h: self)
  var virtualReturn = vtbl[].hasHeightForWidth(self)
  virtualReturn

proc fcQLayout_vtable_callback_heightForWidth(self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QLayoutVTable](fcQLayout_vdata(self))
  let self = QLayout(h: self)
  let slotval1 = param1
  var virtualReturn = vtbl[].heightForWidth(self, slotval1)
  virtualReturn

proc fcQLayout_vtable_callback_minimumHeightForWidth(self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QLayoutVTable](fcQLayout_vdata(self))
  let self = QLayout(h: self)
  let slotval1 = param1
  var virtualReturn = vtbl[].minimumHeightForWidth(self, slotval1)
  virtualReturn

proc fcQLayout_vtable_callback_widget(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QLayoutVTable](fcQLayout_vdata(self))
  let self = QLayout(h: self)
  var virtualReturn = vtbl[].widget(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQLayout_vtable_callback_spacerItem(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QLayoutVTable](fcQLayout_vdata(self))
  let self = QLayout(h: self)
  var virtualReturn = vtbl[].spacerItem(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

type VirtualQLayout* {.inheritable.} = ref object of QLayout
  vtbl*: cQLayoutVTable

method metaObject*(self: VirtualQLayout): gen_qobjectdefs_types.QMetaObject {.base.} =
  QLayoutmetaObject(self[])
method metacast*(self: VirtualQLayout, param1: cstring): pointer {.base.} =
  QLayoutmetacast(self[], param1)
method metacall*(self: VirtualQLayout, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QLayoutmetacall(self[], param1, param2, param3)
method invalidate*(self: VirtualQLayout): void {.base.} =
  QLayoutinvalidate(self[])
method geometry*(self: VirtualQLayout): gen_qrect_types.QRect {.base.} =
  QLayoutgeometry(self[])
method addItem*(self: VirtualQLayout, param1: gen_qlayoutitem_types.QLayoutItem): void {.base.} =
  raiseAssert("missing implementation of QLayout.addItem")
method expandingDirections*(self: VirtualQLayout): cint {.base.} =
  QLayoutexpandingDirections(self[])
method minimumSize*(self: VirtualQLayout): gen_qsize_types.QSize {.base.} =
  QLayoutminimumSize(self[])
method maximumSize*(self: VirtualQLayout): gen_qsize_types.QSize {.base.} =
  QLayoutmaximumSize(self[])
method setGeometry*(self: VirtualQLayout, geometry: gen_qrect_types.QRect): void {.base.} =
  QLayoutsetGeometry(self[], geometry)
method itemAt*(self: VirtualQLayout, index: cint): gen_qlayoutitem_types.QLayoutItem {.base.} =
  raiseAssert("missing implementation of QLayout.itemAt")
method takeAt*(self: VirtualQLayout, index: cint): gen_qlayoutitem_types.QLayoutItem {.base.} =
  raiseAssert("missing implementation of QLayout.takeAt")
method indexOf*(self: VirtualQLayout, param1: gen_qwidget_types.QWidget): cint {.base.} =
  QLayoutindexOf(self[], param1)
method count*(self: VirtualQLayout): cint {.base.} =
  raiseAssert("missing implementation of QLayout.count")
method isEmpty*(self: VirtualQLayout): bool {.base.} =
  QLayoutisEmpty(self[])
method controlTypes*(self: VirtualQLayout): cint {.base.} =
  QLayoutcontrolTypes(self[])
method layout*(self: VirtualQLayout): gen_qlayout_types.QLayout {.base.} =
  QLayoutlayout(self[])
method childEvent*(self: VirtualQLayout, e: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QLayoutchildEvent(self[], e)
method event*(self: VirtualQLayout, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QLayoutevent(self[], event)
method eventFilter*(self: VirtualQLayout, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QLayouteventFilter(self[], watched, event)
method timerEvent*(self: VirtualQLayout, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QLayouttimerEvent(self[], event)
method customEvent*(self: VirtualQLayout, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QLayoutcustomEvent(self[], event)
method connectNotify*(self: VirtualQLayout, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QLayoutconnectNotify(self[], signal)
method disconnectNotify*(self: VirtualQLayout, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QLayoutdisconnectNotify(self[], signal)
method sizeHint*(self: VirtualQLayout): gen_qsize_types.QSize {.base.} =
  raiseAssert("missing implementation of QLayout.sizeHint")
method hasHeightForWidth*(self: VirtualQLayout): bool {.base.} =
  QLayouthasHeightForWidth(self[])
method heightForWidth*(self: VirtualQLayout, param1: cint): cint {.base.} =
  QLayoutheightForWidth(self[], param1)
method minimumHeightForWidth*(self: VirtualQLayout, param1: cint): cint {.base.} =
  QLayoutminimumHeightForWidth(self[], param1)
method widget*(self: VirtualQLayout): gen_qwidget_types.QWidget {.base.} =
  QLayoutwidget(self[])
method spacerItem*(self: VirtualQLayout): gen_qlayoutitem_types.QSpacerItem {.base.} =
  QLayoutspacerItem(self[])

proc fcQLayout_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQLayout](fcQLayout_vdata(self))
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQLayout_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQLayout](fcQLayout_vdata(self))
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

proc fcQLayout_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQLayout](fcQLayout_vdata(self))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

proc fcQLayout_method_callback_invalidate(self: pointer): void {.cdecl.} =
  let inst = cast[VirtualQLayout](fcQLayout_vdata(self))
  inst.invalidate()

proc fcQLayout_method_callback_geometry(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQLayout](fcQLayout_vdata(self))
  var virtualReturn = inst.geometry()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQLayout_method_callback_addItem(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQLayout](fcQLayout_vdata(self))
  let slotval1 = gen_qlayoutitem_types.QLayoutItem(h: param1, owned: false)
  inst.addItem(slotval1)

proc fcQLayout_method_callback_expandingDirections(self: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQLayout](fcQLayout_vdata(self))
  var virtualReturn = inst.expandingDirections()
  cint(virtualReturn)

proc fcQLayout_method_callback_minimumSize(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQLayout](fcQLayout_vdata(self))
  var virtualReturn = inst.minimumSize()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQLayout_method_callback_maximumSize(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQLayout](fcQLayout_vdata(self))
  var virtualReturn = inst.maximumSize()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQLayout_method_callback_setGeometry(self: pointer, geometry: pointer): void {.cdecl.} =
  let inst = cast[VirtualQLayout](fcQLayout_vdata(self))
  let slotval1 = gen_qrect_types.QRect(h: geometry, owned: false)
  inst.setGeometry(slotval1)

proc fcQLayout_method_callback_itemAt(self: pointer, index: cint): pointer {.cdecl.} =
  let inst = cast[VirtualQLayout](fcQLayout_vdata(self))
  let slotval1 = index
  var virtualReturn = inst.itemAt(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQLayout_method_callback_takeAt(self: pointer, index: cint): pointer {.cdecl.} =
  let inst = cast[VirtualQLayout](fcQLayout_vdata(self))
  let slotval1 = index
  var virtualReturn = inst.takeAt(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQLayout_method_callback_indexOf(self: pointer, param1: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQLayout](fcQLayout_vdata(self))
  let slotval1 = gen_qwidget_types.QWidget(h: param1, owned: false)
  var virtualReturn = inst.indexOf(slotval1)
  virtualReturn

proc fcQLayout_method_callback_count(self: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQLayout](fcQLayout_vdata(self))
  var virtualReturn = inst.count()
  virtualReturn

proc fcQLayout_method_callback_isEmpty(self: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQLayout](fcQLayout_vdata(self))
  var virtualReturn = inst.isEmpty()
  virtualReturn

proc fcQLayout_method_callback_controlTypes(self: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQLayout](fcQLayout_vdata(self))
  var virtualReturn = inst.controlTypes()
  cint(virtualReturn)

proc fcQLayout_method_callback_layout(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQLayout](fcQLayout_vdata(self))
  var virtualReturn = inst.layout()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQLayout_method_callback_childEvent(self: pointer, e: pointer): void {.cdecl.} =
  let inst = cast[VirtualQLayout](fcQLayout_vdata(self))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: e, owned: false)
  inst.childEvent(slotval1)

proc fcQLayout_method_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQLayout](fcQLayout_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

proc fcQLayout_method_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQLayout](fcQLayout_vdata(self))
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

proc fcQLayout_method_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQLayout](fcQLayout_vdata(self))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  inst.timerEvent(slotval1)

proc fcQLayout_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQLayout](fcQLayout_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)

proc fcQLayout_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQLayout](fcQLayout_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

proc fcQLayout_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQLayout](fcQLayout_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.disconnectNotify(slotval1)

proc fcQLayout_method_callback_sizeHint(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQLayout](fcQLayout_vdata(self))
  var virtualReturn = inst.sizeHint()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQLayout_method_callback_hasHeightForWidth(self: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQLayout](fcQLayout_vdata(self))
  var virtualReturn = inst.hasHeightForWidth()
  virtualReturn

proc fcQLayout_method_callback_heightForWidth(self: pointer, param1: cint): cint {.cdecl.} =
  let inst = cast[VirtualQLayout](fcQLayout_vdata(self))
  let slotval1 = param1
  var virtualReturn = inst.heightForWidth(slotval1)
  virtualReturn

proc fcQLayout_method_callback_minimumHeightForWidth(self: pointer, param1: cint): cint {.cdecl.} =
  let inst = cast[VirtualQLayout](fcQLayout_vdata(self))
  let slotval1 = param1
  var virtualReturn = inst.minimumHeightForWidth(slotval1)
  virtualReturn

proc fcQLayout_method_callback_widget(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQLayout](fcQLayout_vdata(self))
  var virtualReturn = inst.widget()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQLayout_method_callback_spacerItem(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQLayout](fcQLayout_vdata(self))
  var virtualReturn = inst.spacerItem()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h


proc widgetEvent*(self: gen_qlayout_types.QLayout, param1: gen_qcoreevent_types.QEvent): void =
  fcQLayout_protectedbase_widgetEvent(self.h, param1.h)

proc addChildLayout*(self: gen_qlayout_types.QLayout, l: gen_qlayout_types.QLayout): void =
  fcQLayout_protectedbase_addChildLayout(self.h, l.h)

proc addChildWidget*(self: gen_qlayout_types.QLayout, w: gen_qwidget_types.QWidget): void =
  fcQLayout_protectedbase_addChildWidget(self.h, w.h)

proc adoptLayout*(self: gen_qlayout_types.QLayout, layout: gen_qlayout_types.QLayout): bool =
  fcQLayout_protectedbase_adoptLayout(self.h, layout.h)

proc alignmentRect*(self: gen_qlayout_types.QLayout, param1: gen_qrect_types.QRect): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fcQLayout_protectedbase_alignmentRect(self.h, param1.h), owned: true)

proc sender*(self: gen_qlayout_types.QLayout): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQLayout_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qlayout_types.QLayout): cint =
  fcQLayout_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qlayout_types.QLayout, signal: cstring): cint =
  fcQLayout_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qlayout_types.QLayout, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQLayout_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qlayout_types.QLayout,
    parent: gen_qwidget_types.QWidget,
    vtbl: ref QLayoutVTable = nil): gen_qlayout_types.QLayout =
  let vtbl = if vtbl == nil: new QLayoutVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QLayoutVTable](fcQLayout_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQLayout_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQLayout_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQLayout_vtable_callback_metacall
  if not isNil(vtbl[].invalidate):
    vtbl[].vtbl.invalidate = fcQLayout_vtable_callback_invalidate
  if not isNil(vtbl[].geometry):
    vtbl[].vtbl.geometry = fcQLayout_vtable_callback_geometry
  if not isNil(vtbl[].addItem):
    vtbl[].vtbl.addItem = fcQLayout_vtable_callback_addItem
  if not isNil(vtbl[].expandingDirections):
    vtbl[].vtbl.expandingDirections = fcQLayout_vtable_callback_expandingDirections
  if not isNil(vtbl[].minimumSize):
    vtbl[].vtbl.minimumSize = fcQLayout_vtable_callback_minimumSize
  if not isNil(vtbl[].maximumSize):
    vtbl[].vtbl.maximumSize = fcQLayout_vtable_callback_maximumSize
  if not isNil(vtbl[].setGeometry):
    vtbl[].vtbl.setGeometry = fcQLayout_vtable_callback_setGeometry
  if not isNil(vtbl[].itemAt):
    vtbl[].vtbl.itemAt = fcQLayout_vtable_callback_itemAt
  if not isNil(vtbl[].takeAt):
    vtbl[].vtbl.takeAt = fcQLayout_vtable_callback_takeAt
  if not isNil(vtbl[].indexOf):
    vtbl[].vtbl.indexOf = fcQLayout_vtable_callback_indexOf
  if not isNil(vtbl[].count):
    vtbl[].vtbl.count = fcQLayout_vtable_callback_count
  if not isNil(vtbl[].isEmpty):
    vtbl[].vtbl.isEmpty = fcQLayout_vtable_callback_isEmpty
  if not isNil(vtbl[].controlTypes):
    vtbl[].vtbl.controlTypes = fcQLayout_vtable_callback_controlTypes
  if not isNil(vtbl[].layout):
    vtbl[].vtbl.layout = fcQLayout_vtable_callback_layout
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQLayout_vtable_callback_childEvent
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQLayout_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQLayout_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQLayout_vtable_callback_timerEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQLayout_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQLayout_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQLayout_vtable_callback_disconnectNotify
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = fcQLayout_vtable_callback_sizeHint
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = fcQLayout_vtable_callback_hasHeightForWidth
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = fcQLayout_vtable_callback_heightForWidth
  if not isNil(vtbl[].minimumHeightForWidth):
    vtbl[].vtbl.minimumHeightForWidth = fcQLayout_vtable_callback_minimumHeightForWidth
  if not isNil(vtbl[].widget):
    vtbl[].vtbl.widget = fcQLayout_vtable_callback_widget
  if not isNil(vtbl[].spacerItem):
    vtbl[].vtbl.spacerItem = fcQLayout_vtable_callback_spacerItem
  gen_qlayout_types.QLayout(h: fcQLayout_new(addr(vtbl[].vtbl), addr(vtbl[]), parent.h), owned: true)

proc create*(T: type gen_qlayout_types.QLayout,
    vtbl: ref QLayoutVTable = nil): gen_qlayout_types.QLayout =
  let vtbl = if vtbl == nil: new QLayoutVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QLayoutVTable](fcQLayout_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQLayout_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQLayout_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQLayout_vtable_callback_metacall
  if not isNil(vtbl[].invalidate):
    vtbl[].vtbl.invalidate = fcQLayout_vtable_callback_invalidate
  if not isNil(vtbl[].geometry):
    vtbl[].vtbl.geometry = fcQLayout_vtable_callback_geometry
  if not isNil(vtbl[].addItem):
    vtbl[].vtbl.addItem = fcQLayout_vtable_callback_addItem
  if not isNil(vtbl[].expandingDirections):
    vtbl[].vtbl.expandingDirections = fcQLayout_vtable_callback_expandingDirections
  if not isNil(vtbl[].minimumSize):
    vtbl[].vtbl.minimumSize = fcQLayout_vtable_callback_minimumSize
  if not isNil(vtbl[].maximumSize):
    vtbl[].vtbl.maximumSize = fcQLayout_vtable_callback_maximumSize
  if not isNil(vtbl[].setGeometry):
    vtbl[].vtbl.setGeometry = fcQLayout_vtable_callback_setGeometry
  if not isNil(vtbl[].itemAt):
    vtbl[].vtbl.itemAt = fcQLayout_vtable_callback_itemAt
  if not isNil(vtbl[].takeAt):
    vtbl[].vtbl.takeAt = fcQLayout_vtable_callback_takeAt
  if not isNil(vtbl[].indexOf):
    vtbl[].vtbl.indexOf = fcQLayout_vtable_callback_indexOf
  if not isNil(vtbl[].count):
    vtbl[].vtbl.count = fcQLayout_vtable_callback_count
  if not isNil(vtbl[].isEmpty):
    vtbl[].vtbl.isEmpty = fcQLayout_vtable_callback_isEmpty
  if not isNil(vtbl[].controlTypes):
    vtbl[].vtbl.controlTypes = fcQLayout_vtable_callback_controlTypes
  if not isNil(vtbl[].layout):
    vtbl[].vtbl.layout = fcQLayout_vtable_callback_layout
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQLayout_vtable_callback_childEvent
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQLayout_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQLayout_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQLayout_vtable_callback_timerEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQLayout_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQLayout_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQLayout_vtable_callback_disconnectNotify
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = fcQLayout_vtable_callback_sizeHint
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = fcQLayout_vtable_callback_hasHeightForWidth
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = fcQLayout_vtable_callback_heightForWidth
  if not isNil(vtbl[].minimumHeightForWidth):
    vtbl[].vtbl.minimumHeightForWidth = fcQLayout_vtable_callback_minimumHeightForWidth
  if not isNil(vtbl[].widget):
    vtbl[].vtbl.widget = fcQLayout_vtable_callback_widget
  if not isNil(vtbl[].spacerItem):
    vtbl[].vtbl.spacerItem = fcQLayout_vtable_callback_spacerItem
  gen_qlayout_types.QLayout(h: fcQLayout_new2(addr(vtbl[].vtbl), addr(vtbl[])), owned: true)

const cQLayout_mvtbl = cQLayoutVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQLayout()[])](self.fcQLayout_vtbl())
    inst[].h = nil
    inst[].owned = false,

  metaObject: fcQLayout_method_callback_metaObject,
  metacast: fcQLayout_method_callback_metacast,
  metacall: fcQLayout_method_callback_metacall,
  invalidate: fcQLayout_method_callback_invalidate,
  geometry: fcQLayout_method_callback_geometry,
  addItem: fcQLayout_method_callback_addItem,
  expandingDirections: fcQLayout_method_callback_expandingDirections,
  minimumSize: fcQLayout_method_callback_minimumSize,
  maximumSize: fcQLayout_method_callback_maximumSize,
  setGeometry: fcQLayout_method_callback_setGeometry,
  itemAt: fcQLayout_method_callback_itemAt,
  takeAt: fcQLayout_method_callback_takeAt,
  indexOf: fcQLayout_method_callback_indexOf,
  count: fcQLayout_method_callback_count,
  isEmpty: fcQLayout_method_callback_isEmpty,
  controlTypes: fcQLayout_method_callback_controlTypes,
  layout: fcQLayout_method_callback_layout,
  childEvent: fcQLayout_method_callback_childEvent,
  event: fcQLayout_method_callback_event,
  eventFilter: fcQLayout_method_callback_eventFilter,
  timerEvent: fcQLayout_method_callback_timerEvent,
  customEvent: fcQLayout_method_callback_customEvent,
  connectNotify: fcQLayout_method_callback_connectNotify,
  disconnectNotify: fcQLayout_method_callback_disconnectNotify,
  sizeHint: fcQLayout_method_callback_sizeHint,
  hasHeightForWidth: fcQLayout_method_callback_hasHeightForWidth,
  heightForWidth: fcQLayout_method_callback_heightForWidth,
  minimumHeightForWidth: fcQLayout_method_callback_minimumHeightForWidth,
  widget: fcQLayout_method_callback_widget,
  spacerItem: fcQLayout_method_callback_spacerItem,
)
proc create*(T: type gen_qlayout_types.QLayout,
    parent: gen_qwidget_types.QWidget,
    inst: VirtualQLayout) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQLayout_new(addr(cQLayout_mvtbl), addr(inst[]), parent.h)
  inst[].owned = true

proc create*(T: type gen_qlayout_types.QLayout,
    inst: VirtualQLayout) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQLayout_new2(addr(cQLayout_mvtbl), addr(inst[]))
  inst[].owned = true

proc staticMetaObject*(_: type gen_qlayout_types.QLayout): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQLayout_staticMetaObject())
