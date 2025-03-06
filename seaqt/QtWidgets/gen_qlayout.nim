import ./Qt5Widgets_libs

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

const cflags = gorge("pkg-config --cflags Qt5Widgets") & " -fPIC"
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

proc fcQLayout_metaObject(self: pointer, ): pointer {.importc: "QLayout_metaObject".}
proc fcQLayout_metacast(self: pointer, param1: cstring): pointer {.importc: "QLayout_metacast".}
proc fcQLayout_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QLayout_metacall".}
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
type cQLayoutVTable {.pure.} = object
  destructor*: proc(vtbl: ptr cQLayoutVTable, self: ptr cQLayout) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(vtbl, self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(vtbl, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  invalidate*: proc(vtbl, self: pointer, ): void {.cdecl, raises: [], gcsafe.}
  geometry*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  addItem*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  expandingDirections*: proc(vtbl, self: pointer, ): cint {.cdecl, raises: [], gcsafe.}
  minimumSize*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  maximumSize*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  setGeometry*: proc(vtbl, self: pointer, geometry: pointer): void {.cdecl, raises: [], gcsafe.}
  itemAt*: proc(vtbl, self: pointer, index: cint): pointer {.cdecl, raises: [], gcsafe.}
  takeAt*: proc(vtbl, self: pointer, index: cint): pointer {.cdecl, raises: [], gcsafe.}
  indexOf*: proc(vtbl, self: pointer, param1: pointer): cint {.cdecl, raises: [], gcsafe.}
  count*: proc(vtbl, self: pointer, ): cint {.cdecl, raises: [], gcsafe.}
  isEmpty*: proc(vtbl, self: pointer, ): bool {.cdecl, raises: [], gcsafe.}
  controlTypes*: proc(vtbl, self: pointer, ): cint {.cdecl, raises: [], gcsafe.}
  layout*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(vtbl, self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  event*: proc(vtbl, self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(vtbl, self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  sizeHint*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  hasHeightForWidth*: proc(vtbl, self: pointer, ): bool {.cdecl, raises: [], gcsafe.}
  heightForWidth*: proc(vtbl, self: pointer, param1: cint): cint {.cdecl, raises: [], gcsafe.}
  minimumHeightForWidth*: proc(vtbl, self: pointer, param1: cint): cint {.cdecl, raises: [], gcsafe.}
  widget*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  spacerItem*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
proc fcQLayout_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QLayout_virtualbase_metaObject".}
proc fcQLayout_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QLayout_virtualbase_metacast".}
proc fcQLayout_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QLayout_virtualbase_metacall".}
proc fcQLayout_virtualbase_invalidate(self: pointer, ): void {.importc: "QLayout_virtualbase_invalidate".}
proc fcQLayout_virtualbase_geometry(self: pointer, ): pointer {.importc: "QLayout_virtualbase_geometry".}
proc fcQLayout_virtualbase_expandingDirections(self: pointer, ): cint {.importc: "QLayout_virtualbase_expandingDirections".}
proc fcQLayout_virtualbase_minimumSize(self: pointer, ): pointer {.importc: "QLayout_virtualbase_minimumSize".}
proc fcQLayout_virtualbase_maximumSize(self: pointer, ): pointer {.importc: "QLayout_virtualbase_maximumSize".}
proc fcQLayout_virtualbase_setGeometry(self: pointer, geometry: pointer): void {.importc: "QLayout_virtualbase_setGeometry".}
proc fcQLayout_virtualbase_indexOf(self: pointer, param1: pointer): cint {.importc: "QLayout_virtualbase_indexOf".}
proc fcQLayout_virtualbase_isEmpty(self: pointer, ): bool {.importc: "QLayout_virtualbase_isEmpty".}
proc fcQLayout_virtualbase_controlTypes(self: pointer, ): cint {.importc: "QLayout_virtualbase_controlTypes".}
proc fcQLayout_virtualbase_layout(self: pointer, ): pointer {.importc: "QLayout_virtualbase_layout".}
proc fcQLayout_virtualbase_childEvent(self: pointer, e: pointer): void {.importc: "QLayout_virtualbase_childEvent".}
proc fcQLayout_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QLayout_virtualbase_event".}
proc fcQLayout_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QLayout_virtualbase_eventFilter".}
proc fcQLayout_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QLayout_virtualbase_timerEvent".}
proc fcQLayout_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QLayout_virtualbase_customEvent".}
proc fcQLayout_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QLayout_virtualbase_connectNotify".}
proc fcQLayout_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QLayout_virtualbase_disconnectNotify".}
proc fcQLayout_virtualbase_hasHeightForWidth(self: pointer, ): bool {.importc: "QLayout_virtualbase_hasHeightForWidth".}
proc fcQLayout_virtualbase_heightForWidth(self: pointer, param1: cint): cint {.importc: "QLayout_virtualbase_heightForWidth".}
proc fcQLayout_virtualbase_minimumHeightForWidth(self: pointer, param1: cint): cint {.importc: "QLayout_virtualbase_minimumHeightForWidth".}
proc fcQLayout_virtualbase_widget(self: pointer, ): pointer {.importc: "QLayout_virtualbase_widget".}
proc fcQLayout_virtualbase_spacerItem(self: pointer, ): pointer {.importc: "QLayout_virtualbase_spacerItem".}
proc fcQLayout_protectedbase_widgetEvent(self: pointer, param1: pointer): void {.importc: "QLayout_protectedbase_widgetEvent".}
proc fcQLayout_protectedbase_addChildLayout(self: pointer, l: pointer): void {.importc: "QLayout_protectedbase_addChildLayout".}
proc fcQLayout_protectedbase_addChildWidget(self: pointer, w: pointer): void {.importc: "QLayout_protectedbase_addChildWidget".}
proc fcQLayout_protectedbase_adoptLayout(self: pointer, layout: pointer): bool {.importc: "QLayout_protectedbase_adoptLayout".}
proc fcQLayout_protectedbase_alignmentRect(self: pointer, param1: pointer): pointer {.importc: "QLayout_protectedbase_alignmentRect".}
proc fcQLayout_protectedbase_sender(self: pointer, ): pointer {.importc: "QLayout_protectedbase_sender".}
proc fcQLayout_protectedbase_senderSignalIndex(self: pointer, ): cint {.importc: "QLayout_protectedbase_senderSignalIndex".}
proc fcQLayout_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QLayout_protectedbase_receivers".}
proc fcQLayout_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QLayout_protectedbase_isSignalConnected".}
proc fcQLayout_new(vtbl: pointer, parent: pointer): ptr cQLayout {.importc: "QLayout_new".}
proc fcQLayout_new2(vtbl: pointer, ): ptr cQLayout {.importc: "QLayout_new2".}
proc fcQLayout_staticMetaObject(): pointer {.importc: "QLayout_staticMetaObject".}

proc metaObject*(self: gen_qlayout_types.QLayout, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQLayout_metaObject(self.h), owned: false)

proc metacast*(self: gen_qlayout_types.QLayout, param1: cstring): pointer =
  fcQLayout_metacast(self.h, param1)

proc metacall*(self: gen_qlayout_types.QLayout, param1: cint, param2: cint, param3: pointer): cint =
  fcQLayout_metacall(self.h, cint(param1), param2, param3)

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
  gen_qmargins_types.QMargins(h: fcQLayout_contentsMargins(self.h), owned: true)

proc contentsRect*(self: gen_qlayout_types.QLayout, ): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fcQLayout_contentsRect(self.h), owned: true)

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
  gen_qwidget_types.QWidget(h: fcQLayout_menuBar(self.h), owned: false)

proc parentWidget*(self: gen_qlayout_types.QLayout, ): gen_qwidget_types.QWidget =
  gen_qwidget_types.QWidget(h: fcQLayout_parentWidget(self.h), owned: false)

proc invalidate*(self: gen_qlayout_types.QLayout, ): void =
  fcQLayout_invalidate(self.h)

proc geometry*(self: gen_qlayout_types.QLayout, ): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fcQLayout_geometry(self.h), owned: true)

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
  gen_qsize_types.QSize(h: fcQLayout_minimumSize(self.h), owned: true)

proc maximumSize*(self: gen_qlayout_types.QLayout, ): gen_qsize_types.QSize =
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

proc count*(self: gen_qlayout_types.QLayout, ): cint =
  fcQLayout_count(self.h)

proc isEmpty*(self: gen_qlayout_types.QLayout, ): bool =
  fcQLayout_isEmpty(self.h)

proc controlTypes*(self: gen_qlayout_types.QLayout, ): cint =
  cint(fcQLayout_controlTypes(self.h))

proc replaceWidget*(self: gen_qlayout_types.QLayout, fromVal: gen_qwidget_types.QWidget, to: gen_qwidget_types.QWidget): gen_qlayoutitem_types.QLayoutItem =
  gen_qlayoutitem_types.QLayoutItem(h: fcQLayout_replaceWidget(self.h, fromVal.h, to.h), owned: false)

proc totalHeightForWidth*(self: gen_qlayout_types.QLayout, w: cint): cint =
  fcQLayout_totalHeightForWidth(self.h, w)

proc totalMinimumSize*(self: gen_qlayout_types.QLayout, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQLayout_totalMinimumSize(self.h), owned: true)

proc totalMaximumSize*(self: gen_qlayout_types.QLayout, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQLayout_totalMaximumSize(self.h), owned: true)

proc totalSizeHint*(self: gen_qlayout_types.QLayout, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQLayout_totalSizeHint(self.h), owned: true)

proc layout*(self: gen_qlayout_types.QLayout, ): gen_qlayout_types.QLayout =
  gen_qlayout_types.QLayout(h: fcQLayout_layout(self.h), owned: false)

proc setEnabled*(self: gen_qlayout_types.QLayout, enabled: bool): void =
  fcQLayout_setEnabled(self.h, enabled)

proc isEnabled*(self: gen_qlayout_types.QLayout, ): bool =
  fcQLayout_isEnabled(self.h)

proc closestAcceptableSize*(_: type gen_qlayout_types.QLayout, w: gen_qwidget_types.QWidget, s: gen_qsize_types.QSize): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQLayout_closestAcceptableSize(w.h, s.h), owned: true)

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
proc QLayoutmetaObject*(self: gen_qlayout_types.QLayout, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQLayout_virtualbase_metaObject(self.h), owned: false)

proc miqt_exec_callback_cQLayout_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QLayoutVTable](vtbl)
  let self = QLayout(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QLayoutmetacast*(self: gen_qlayout_types.QLayout, param1: cstring): pointer =
  fcQLayout_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQLayout_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QLayoutVTable](vtbl)
  let self = QLayout(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QLayoutmetacall*(self: gen_qlayout_types.QLayout, param1: cint, param2: cint, param3: pointer): cint =
  fcQLayout_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQLayout_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QLayoutVTable](vtbl)
  let self = QLayout(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QLayoutinvalidate*(self: gen_qlayout_types.QLayout, ): void =
  fcQLayout_virtualbase_invalidate(self.h)

proc miqt_exec_callback_cQLayout_invalidate(vtbl: pointer, self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QLayoutVTable](vtbl)
  let self = QLayout(h: self)
  vtbl[].invalidate(self)

proc QLayoutgeometry*(self: gen_qlayout_types.QLayout, ): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fcQLayout_virtualbase_geometry(self.h), owned: true)

proc miqt_exec_callback_cQLayout_geometry(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QLayoutVTable](vtbl)
  let self = QLayout(h: self)
  var virtualReturn = vtbl[].geometry(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc miqt_exec_callback_cQLayout_addItem(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QLayoutVTable](vtbl)
  let self = QLayout(h: self)
  let slotval1 = gen_qlayoutitem_types.QLayoutItem(h: param1, owned: false)
  vtbl[].addItem(self, slotval1)

proc QLayoutexpandingDirections*(self: gen_qlayout_types.QLayout, ): cint =
  cint(fcQLayout_virtualbase_expandingDirections(self.h))

proc miqt_exec_callback_cQLayout_expandingDirections(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QLayoutVTable](vtbl)
  let self = QLayout(h: self)
  var virtualReturn = vtbl[].expandingDirections(self)
  cint(virtualReturn)

proc QLayoutminimumSize*(self: gen_qlayout_types.QLayout, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQLayout_virtualbase_minimumSize(self.h), owned: true)

proc miqt_exec_callback_cQLayout_minimumSize(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QLayoutVTable](vtbl)
  let self = QLayout(h: self)
  var virtualReturn = vtbl[].minimumSize(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QLayoutmaximumSize*(self: gen_qlayout_types.QLayout, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQLayout_virtualbase_maximumSize(self.h), owned: true)

proc miqt_exec_callback_cQLayout_maximumSize(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QLayoutVTable](vtbl)
  let self = QLayout(h: self)
  var virtualReturn = vtbl[].maximumSize(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QLayoutsetGeometry*(self: gen_qlayout_types.QLayout, geometry: gen_qrect_types.QRect): void =
  fcQLayout_virtualbase_setGeometry(self.h, geometry.h)

proc miqt_exec_callback_cQLayout_setGeometry(vtbl: pointer, self: pointer, geometry: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QLayoutVTable](vtbl)
  let self = QLayout(h: self)
  let slotval1 = gen_qrect_types.QRect(h: geometry, owned: false)
  vtbl[].setGeometry(self, slotval1)

proc miqt_exec_callback_cQLayout_itemAt(vtbl: pointer, self: pointer, index: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QLayoutVTable](vtbl)
  let self = QLayout(h: self)
  let slotval1 = index
  var virtualReturn = vtbl[].itemAt(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc miqt_exec_callback_cQLayout_takeAt(vtbl: pointer, self: pointer, index: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QLayoutVTable](vtbl)
  let self = QLayout(h: self)
  let slotval1 = index
  var virtualReturn = vtbl[].takeAt(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QLayoutindexOf*(self: gen_qlayout_types.QLayout, param1: gen_qwidget_types.QWidget): cint =
  fcQLayout_virtualbase_indexOf(self.h, param1.h)

proc miqt_exec_callback_cQLayout_indexOf(vtbl: pointer, self: pointer, param1: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QLayoutVTable](vtbl)
  let self = QLayout(h: self)
  let slotval1 = gen_qwidget_types.QWidget(h: param1, owned: false)
  var virtualReturn = vtbl[].indexOf(self, slotval1)
  virtualReturn

proc miqt_exec_callback_cQLayout_count(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QLayoutVTable](vtbl)
  let self = QLayout(h: self)
  var virtualReturn = vtbl[].count(self)
  virtualReturn

proc QLayoutisEmpty*(self: gen_qlayout_types.QLayout, ): bool =
  fcQLayout_virtualbase_isEmpty(self.h)

proc miqt_exec_callback_cQLayout_isEmpty(vtbl: pointer, self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QLayoutVTable](vtbl)
  let self = QLayout(h: self)
  var virtualReturn = vtbl[].isEmpty(self)
  virtualReturn

proc QLayoutcontrolTypes*(self: gen_qlayout_types.QLayout, ): cint =
  cint(fcQLayout_virtualbase_controlTypes(self.h))

proc miqt_exec_callback_cQLayout_controlTypes(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QLayoutVTable](vtbl)
  let self = QLayout(h: self)
  var virtualReturn = vtbl[].controlTypes(self)
  cint(virtualReturn)

proc QLayoutlayout*(self: gen_qlayout_types.QLayout, ): gen_qlayout_types.QLayout =
  gen_qlayout_types.QLayout(h: fcQLayout_virtualbase_layout(self.h), owned: false)

proc miqt_exec_callback_cQLayout_layout(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QLayoutVTable](vtbl)
  let self = QLayout(h: self)
  var virtualReturn = vtbl[].layout(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QLayoutchildEvent*(self: gen_qlayout_types.QLayout, e: gen_qcoreevent_types.QChildEvent): void =
  fcQLayout_virtualbase_childEvent(self.h, e.h)

proc miqt_exec_callback_cQLayout_childEvent(vtbl: pointer, self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QLayoutVTable](vtbl)
  let self = QLayout(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: e, owned: false)
  vtbl[].childEvent(self, slotval1)

proc QLayoutevent*(self: gen_qlayout_types.QLayout, event: gen_qcoreevent_types.QEvent): bool =
  fcQLayout_virtualbase_event(self.h, event.h)

proc miqt_exec_callback_cQLayout_event(vtbl: pointer, self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QLayoutVTable](vtbl)
  let self = QLayout(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QLayouteventFilter*(self: gen_qlayout_types.QLayout, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQLayout_virtualbase_eventFilter(self.h, watched.h, event.h)

proc miqt_exec_callback_cQLayout_eventFilter(vtbl: pointer, self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QLayoutVTable](vtbl)
  let self = QLayout(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QLayouttimerEvent*(self: gen_qlayout_types.QLayout, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQLayout_virtualbase_timerEvent(self.h, event.h)

proc miqt_exec_callback_cQLayout_timerEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QLayoutVTable](vtbl)
  let self = QLayout(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc QLayoutcustomEvent*(self: gen_qlayout_types.QLayout, event: gen_qcoreevent_types.QEvent): void =
  fcQLayout_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQLayout_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QLayoutVTable](vtbl)
  let self = QLayout(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc QLayoutconnectNotify*(self: gen_qlayout_types.QLayout, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQLayout_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQLayout_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QLayoutVTable](vtbl)
  let self = QLayout(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc QLayoutdisconnectNotify*(self: gen_qlayout_types.QLayout, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQLayout_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQLayout_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QLayoutVTable](vtbl)
  let self = QLayout(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

proc miqt_exec_callback_cQLayout_sizeHint(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QLayoutVTable](vtbl)
  let self = QLayout(h: self)
  var virtualReturn = vtbl[].sizeHint(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QLayouthasHeightForWidth*(self: gen_qlayout_types.QLayout, ): bool =
  fcQLayout_virtualbase_hasHeightForWidth(self.h)

proc miqt_exec_callback_cQLayout_hasHeightForWidth(vtbl: pointer, self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QLayoutVTable](vtbl)
  let self = QLayout(h: self)
  var virtualReturn = vtbl[].hasHeightForWidth(self)
  virtualReturn

proc QLayoutheightForWidth*(self: gen_qlayout_types.QLayout, param1: cint): cint =
  fcQLayout_virtualbase_heightForWidth(self.h, param1)

proc miqt_exec_callback_cQLayout_heightForWidth(vtbl: pointer, self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QLayoutVTable](vtbl)
  let self = QLayout(h: self)
  let slotval1 = param1
  var virtualReturn = vtbl[].heightForWidth(self, slotval1)
  virtualReturn

proc QLayoutminimumHeightForWidth*(self: gen_qlayout_types.QLayout, param1: cint): cint =
  fcQLayout_virtualbase_minimumHeightForWidth(self.h, param1)

proc miqt_exec_callback_cQLayout_minimumHeightForWidth(vtbl: pointer, self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QLayoutVTable](vtbl)
  let self = QLayout(h: self)
  let slotval1 = param1
  var virtualReturn = vtbl[].minimumHeightForWidth(self, slotval1)
  virtualReturn

proc QLayoutwidget*(self: gen_qlayout_types.QLayout, ): gen_qwidget_types.QWidget =
  gen_qwidget_types.QWidget(h: fcQLayout_virtualbase_widget(self.h), owned: false)

proc miqt_exec_callback_cQLayout_widget(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QLayoutVTable](vtbl)
  let self = QLayout(h: self)
  var virtualReturn = vtbl[].widget(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QLayoutspacerItem*(self: gen_qlayout_types.QLayout, ): gen_qlayoutitem_types.QSpacerItem =
  gen_qlayoutitem_types.QSpacerItem(h: fcQLayout_virtualbase_spacerItem(self.h), owned: false)

proc miqt_exec_callback_cQLayout_spacerItem(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QLayoutVTable](vtbl)
  let self = QLayout(h: self)
  var virtualReturn = vtbl[].spacerItem(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

type VirtualQLayout* {.inheritable.} = ref object of QLayout
  vtbl*: cQLayoutVTable
method metaObject*(self: VirtualQLayout, ): gen_qobjectdefs_types.QMetaObject {.base.} =
  QLayoutmetaObject(self[])
proc miqt_exec_method_cQLayout_metaObject(vtbl: pointer, inst: pointer): pointer {.cdecl.} =
  let vtbl = cast[VirtualQLayout](cast[uint](vtbl) - uint(offsetOf(VirtualQLayout, vtbl)))
  var virtualReturn = vtbl.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method metacast*(self: VirtualQLayout, param1: cstring): pointer {.base.} =
  QLayoutmetacast(self[], param1)
proc miqt_exec_method_cQLayout_metacast(vtbl: pointer, inst: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[VirtualQLayout](cast[uint](vtbl) - uint(offsetOf(VirtualQLayout, vtbl)))
  let slotval1 = (param1)
  var virtualReturn = vtbl.metacast(slotval1)
  virtualReturn

method metacall*(self: VirtualQLayout, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QLayoutmetacall(self[], param1, param2, param3)
proc miqt_exec_method_cQLayout_metacall(vtbl: pointer, inst: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[VirtualQLayout](cast[uint](vtbl) - uint(offsetOf(VirtualQLayout, vtbl)))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl.metacall(slotval1, slotval2, slotval3)
  virtualReturn

method invalidate*(self: VirtualQLayout, ): void {.base.} =
  QLayoutinvalidate(self[])
proc miqt_exec_method_cQLayout_invalidate(vtbl: pointer, inst: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQLayout](cast[uint](vtbl) - uint(offsetOf(VirtualQLayout, vtbl)))
  vtbl.invalidate()

method geometry*(self: VirtualQLayout, ): gen_qrect_types.QRect {.base.} =
  QLayoutgeometry(self[])
proc miqt_exec_method_cQLayout_geometry(vtbl: pointer, inst: pointer): pointer {.cdecl.} =
  let vtbl = cast[VirtualQLayout](cast[uint](vtbl) - uint(offsetOf(VirtualQLayout, vtbl)))
  var virtualReturn = vtbl.geometry()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method addItem*(self: VirtualQLayout, param1: gen_qlayoutitem_types.QLayoutItem): void {.base.} =
  raiseAssert("missing implementation of QLayout_virtualbase_addItem")
proc miqt_exec_method_cQLayout_addItem(vtbl: pointer, inst: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQLayout](cast[uint](vtbl) - uint(offsetOf(VirtualQLayout, vtbl)))
  let slotval1 = gen_qlayoutitem_types.QLayoutItem(h: param1, owned: false)
  vtbl.addItem(slotval1)

method expandingDirections*(self: VirtualQLayout, ): cint {.base.} =
  QLayoutexpandingDirections(self[])
proc miqt_exec_method_cQLayout_expandingDirections(vtbl: pointer, inst: pointer): cint {.cdecl.} =
  let vtbl = cast[VirtualQLayout](cast[uint](vtbl) - uint(offsetOf(VirtualQLayout, vtbl)))
  var virtualReturn = vtbl.expandingDirections()
  cint(virtualReturn)

method minimumSize*(self: VirtualQLayout, ): gen_qsize_types.QSize {.base.} =
  QLayoutminimumSize(self[])
proc miqt_exec_method_cQLayout_minimumSize(vtbl: pointer, inst: pointer): pointer {.cdecl.} =
  let vtbl = cast[VirtualQLayout](cast[uint](vtbl) - uint(offsetOf(VirtualQLayout, vtbl)))
  var virtualReturn = vtbl.minimumSize()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method maximumSize*(self: VirtualQLayout, ): gen_qsize_types.QSize {.base.} =
  QLayoutmaximumSize(self[])
proc miqt_exec_method_cQLayout_maximumSize(vtbl: pointer, inst: pointer): pointer {.cdecl.} =
  let vtbl = cast[VirtualQLayout](cast[uint](vtbl) - uint(offsetOf(VirtualQLayout, vtbl)))
  var virtualReturn = vtbl.maximumSize()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method setGeometry*(self: VirtualQLayout, geometry: gen_qrect_types.QRect): void {.base.} =
  QLayoutsetGeometry(self[], geometry)
proc miqt_exec_method_cQLayout_setGeometry(vtbl: pointer, inst: pointer, geometry: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQLayout](cast[uint](vtbl) - uint(offsetOf(VirtualQLayout, vtbl)))
  let slotval1 = gen_qrect_types.QRect(h: geometry, owned: false)
  vtbl.setGeometry(slotval1)

method itemAt*(self: VirtualQLayout, index: cint): gen_qlayoutitem_types.QLayoutItem {.base.} =
  raiseAssert("missing implementation of QLayout_virtualbase_itemAt")
proc miqt_exec_method_cQLayout_itemAt(vtbl: pointer, inst: pointer, index: cint): pointer {.cdecl.} =
  let vtbl = cast[VirtualQLayout](cast[uint](vtbl) - uint(offsetOf(VirtualQLayout, vtbl)))
  let slotval1 = index
  var virtualReturn = vtbl.itemAt(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method takeAt*(self: VirtualQLayout, index: cint): gen_qlayoutitem_types.QLayoutItem {.base.} =
  raiseAssert("missing implementation of QLayout_virtualbase_takeAt")
proc miqt_exec_method_cQLayout_takeAt(vtbl: pointer, inst: pointer, index: cint): pointer {.cdecl.} =
  let vtbl = cast[VirtualQLayout](cast[uint](vtbl) - uint(offsetOf(VirtualQLayout, vtbl)))
  let slotval1 = index
  var virtualReturn = vtbl.takeAt(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method indexOf*(self: VirtualQLayout, param1: gen_qwidget_types.QWidget): cint {.base.} =
  QLayoutindexOf(self[], param1)
proc miqt_exec_method_cQLayout_indexOf(vtbl: pointer, inst: pointer, param1: pointer): cint {.cdecl.} =
  let vtbl = cast[VirtualQLayout](cast[uint](vtbl) - uint(offsetOf(VirtualQLayout, vtbl)))
  let slotval1 = gen_qwidget_types.QWidget(h: param1, owned: false)
  var virtualReturn = vtbl.indexOf(slotval1)
  virtualReturn

method count*(self: VirtualQLayout, ): cint {.base.} =
  raiseAssert("missing implementation of QLayout_virtualbase_count")
proc miqt_exec_method_cQLayout_count(vtbl: pointer, inst: pointer): cint {.cdecl.} =
  let vtbl = cast[VirtualQLayout](cast[uint](vtbl) - uint(offsetOf(VirtualQLayout, vtbl)))
  var virtualReturn = vtbl.count()
  virtualReturn

method isEmpty*(self: VirtualQLayout, ): bool {.base.} =
  QLayoutisEmpty(self[])
proc miqt_exec_method_cQLayout_isEmpty(vtbl: pointer, inst: pointer): bool {.cdecl.} =
  let vtbl = cast[VirtualQLayout](cast[uint](vtbl) - uint(offsetOf(VirtualQLayout, vtbl)))
  var virtualReturn = vtbl.isEmpty()
  virtualReturn

method controlTypes*(self: VirtualQLayout, ): cint {.base.} =
  QLayoutcontrolTypes(self[])
proc miqt_exec_method_cQLayout_controlTypes(vtbl: pointer, inst: pointer): cint {.cdecl.} =
  let vtbl = cast[VirtualQLayout](cast[uint](vtbl) - uint(offsetOf(VirtualQLayout, vtbl)))
  var virtualReturn = vtbl.controlTypes()
  cint(virtualReturn)

method layout*(self: VirtualQLayout, ): gen_qlayout_types.QLayout {.base.} =
  QLayoutlayout(self[])
proc miqt_exec_method_cQLayout_layout(vtbl: pointer, inst: pointer): pointer {.cdecl.} =
  let vtbl = cast[VirtualQLayout](cast[uint](vtbl) - uint(offsetOf(VirtualQLayout, vtbl)))
  var virtualReturn = vtbl.layout()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method childEvent*(self: VirtualQLayout, e: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QLayoutchildEvent(self[], e)
proc miqt_exec_method_cQLayout_childEvent(vtbl: pointer, inst: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQLayout](cast[uint](vtbl) - uint(offsetOf(VirtualQLayout, vtbl)))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: e, owned: false)
  vtbl.childEvent(slotval1)

method event*(self: VirtualQLayout, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QLayoutevent(self[], event)
proc miqt_exec_method_cQLayout_event(vtbl: pointer, inst: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[VirtualQLayout](cast[uint](vtbl) - uint(offsetOf(VirtualQLayout, vtbl)))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl.event(slotval1)
  virtualReturn

method eventFilter*(self: VirtualQLayout, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QLayouteventFilter(self[], watched, event)
proc miqt_exec_method_cQLayout_eventFilter(vtbl: pointer, inst: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[VirtualQLayout](cast[uint](vtbl) - uint(offsetOf(VirtualQLayout, vtbl)))
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl.eventFilter(slotval1, slotval2)
  virtualReturn

method timerEvent*(self: VirtualQLayout, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QLayouttimerEvent(self[], event)
proc miqt_exec_method_cQLayout_timerEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQLayout](cast[uint](vtbl) - uint(offsetOf(VirtualQLayout, vtbl)))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl.timerEvent(slotval1)

method customEvent*(self: VirtualQLayout, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QLayoutcustomEvent(self[], event)
proc miqt_exec_method_cQLayout_customEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQLayout](cast[uint](vtbl) - uint(offsetOf(VirtualQLayout, vtbl)))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl.customEvent(slotval1)

method connectNotify*(self: VirtualQLayout, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QLayoutconnectNotify(self[], signal)
proc miqt_exec_method_cQLayout_connectNotify(vtbl: pointer, inst: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQLayout](cast[uint](vtbl) - uint(offsetOf(VirtualQLayout, vtbl)))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl.connectNotify(slotval1)

method disconnectNotify*(self: VirtualQLayout, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QLayoutdisconnectNotify(self[], signal)
proc miqt_exec_method_cQLayout_disconnectNotify(vtbl: pointer, inst: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQLayout](cast[uint](vtbl) - uint(offsetOf(VirtualQLayout, vtbl)))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl.disconnectNotify(slotval1)

method sizeHint*(self: VirtualQLayout, ): gen_qsize_types.QSize {.base.} =
  raiseAssert("missing implementation of QLayout_virtualbase_sizeHint")
proc miqt_exec_method_cQLayout_sizeHint(vtbl: pointer, inst: pointer): pointer {.cdecl.} =
  let vtbl = cast[VirtualQLayout](cast[uint](vtbl) - uint(offsetOf(VirtualQLayout, vtbl)))
  var virtualReturn = vtbl.sizeHint()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method hasHeightForWidth*(self: VirtualQLayout, ): bool {.base.} =
  QLayouthasHeightForWidth(self[])
proc miqt_exec_method_cQLayout_hasHeightForWidth(vtbl: pointer, inst: pointer): bool {.cdecl.} =
  let vtbl = cast[VirtualQLayout](cast[uint](vtbl) - uint(offsetOf(VirtualQLayout, vtbl)))
  var virtualReturn = vtbl.hasHeightForWidth()
  virtualReturn

method heightForWidth*(self: VirtualQLayout, param1: cint): cint {.base.} =
  QLayoutheightForWidth(self[], param1)
proc miqt_exec_method_cQLayout_heightForWidth(vtbl: pointer, inst: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[VirtualQLayout](cast[uint](vtbl) - uint(offsetOf(VirtualQLayout, vtbl)))
  let slotval1 = param1
  var virtualReturn = vtbl.heightForWidth(slotval1)
  virtualReturn

method minimumHeightForWidth*(self: VirtualQLayout, param1: cint): cint {.base.} =
  QLayoutminimumHeightForWidth(self[], param1)
proc miqt_exec_method_cQLayout_minimumHeightForWidth(vtbl: pointer, inst: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[VirtualQLayout](cast[uint](vtbl) - uint(offsetOf(VirtualQLayout, vtbl)))
  let slotval1 = param1
  var virtualReturn = vtbl.minimumHeightForWidth(slotval1)
  virtualReturn

method widget*(self: VirtualQLayout, ): gen_qwidget_types.QWidget {.base.} =
  QLayoutwidget(self[])
proc miqt_exec_method_cQLayout_widget(vtbl: pointer, inst: pointer): pointer {.cdecl.} =
  let vtbl = cast[VirtualQLayout](cast[uint](vtbl) - uint(offsetOf(VirtualQLayout, vtbl)))
  var virtualReturn = vtbl.widget()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method spacerItem*(self: VirtualQLayout, ): gen_qlayoutitem_types.QSpacerItem {.base.} =
  QLayoutspacerItem(self[])
proc miqt_exec_method_cQLayout_spacerItem(vtbl: pointer, inst: pointer): pointer {.cdecl.} =
  let vtbl = cast[VirtualQLayout](cast[uint](vtbl) - uint(offsetOf(VirtualQLayout, vtbl)))
  var virtualReturn = vtbl.spacerItem()
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

proc sender*(self: gen_qlayout_types.QLayout, ): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQLayout_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qlayout_types.QLayout, ): cint =
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
  vtbl[].vtbl.destructor = proc(vtbl: ptr cQLayoutVTable, _: ptr cQLayout) {.cdecl.} =
    let vtbl = cast[ref QLayoutVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQLayout_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQLayout_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQLayout_metacall
  if not isNil(vtbl[].invalidate):
    vtbl[].vtbl.invalidate = miqt_exec_callback_cQLayout_invalidate
  if not isNil(vtbl[].geometry):
    vtbl[].vtbl.geometry = miqt_exec_callback_cQLayout_geometry
  if not isNil(vtbl[].addItem):
    vtbl[].vtbl.addItem = miqt_exec_callback_cQLayout_addItem
  if not isNil(vtbl[].expandingDirections):
    vtbl[].vtbl.expandingDirections = miqt_exec_callback_cQLayout_expandingDirections
  if not isNil(vtbl[].minimumSize):
    vtbl[].vtbl.minimumSize = miqt_exec_callback_cQLayout_minimumSize
  if not isNil(vtbl[].maximumSize):
    vtbl[].vtbl.maximumSize = miqt_exec_callback_cQLayout_maximumSize
  if not isNil(vtbl[].setGeometry):
    vtbl[].vtbl.setGeometry = miqt_exec_callback_cQLayout_setGeometry
  if not isNil(vtbl[].itemAt):
    vtbl[].vtbl.itemAt = miqt_exec_callback_cQLayout_itemAt
  if not isNil(vtbl[].takeAt):
    vtbl[].vtbl.takeAt = miqt_exec_callback_cQLayout_takeAt
  if not isNil(vtbl[].indexOf):
    vtbl[].vtbl.indexOf = miqt_exec_callback_cQLayout_indexOf
  if not isNil(vtbl[].count):
    vtbl[].vtbl.count = miqt_exec_callback_cQLayout_count
  if not isNil(vtbl[].isEmpty):
    vtbl[].vtbl.isEmpty = miqt_exec_callback_cQLayout_isEmpty
  if not isNil(vtbl[].controlTypes):
    vtbl[].vtbl.controlTypes = miqt_exec_callback_cQLayout_controlTypes
  if not isNil(vtbl[].layout):
    vtbl[].vtbl.layout = miqt_exec_callback_cQLayout_layout
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQLayout_childEvent
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = miqt_exec_callback_cQLayout_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQLayout_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQLayout_timerEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQLayout_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQLayout_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQLayout_disconnectNotify
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = miqt_exec_callback_cQLayout_sizeHint
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = miqt_exec_callback_cQLayout_hasHeightForWidth
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = miqt_exec_callback_cQLayout_heightForWidth
  if not isNil(vtbl[].minimumHeightForWidth):
    vtbl[].vtbl.minimumHeightForWidth = miqt_exec_callback_cQLayout_minimumHeightForWidth
  if not isNil(vtbl[].widget):
    vtbl[].vtbl.widget = miqt_exec_callback_cQLayout_widget
  if not isNil(vtbl[].spacerItem):
    vtbl[].vtbl.spacerItem = miqt_exec_callback_cQLayout_spacerItem
  gen_qlayout_types.QLayout(h: fcQLayout_new(addr(vtbl[].vtbl), parent.h), owned: true)

proc create*(T: type gen_qlayout_types.QLayout,
    vtbl: ref QLayoutVTable = nil): gen_qlayout_types.QLayout =
  let vtbl = if vtbl == nil: new QLayoutVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(vtbl: ptr cQLayoutVTable, _: ptr cQLayout) {.cdecl.} =
    let vtbl = cast[ref QLayoutVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQLayout_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQLayout_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQLayout_metacall
  if not isNil(vtbl[].invalidate):
    vtbl[].vtbl.invalidate = miqt_exec_callback_cQLayout_invalidate
  if not isNil(vtbl[].geometry):
    vtbl[].vtbl.geometry = miqt_exec_callback_cQLayout_geometry
  if not isNil(vtbl[].addItem):
    vtbl[].vtbl.addItem = miqt_exec_callback_cQLayout_addItem
  if not isNil(vtbl[].expandingDirections):
    vtbl[].vtbl.expandingDirections = miqt_exec_callback_cQLayout_expandingDirections
  if not isNil(vtbl[].minimumSize):
    vtbl[].vtbl.minimumSize = miqt_exec_callback_cQLayout_minimumSize
  if not isNil(vtbl[].maximumSize):
    vtbl[].vtbl.maximumSize = miqt_exec_callback_cQLayout_maximumSize
  if not isNil(vtbl[].setGeometry):
    vtbl[].vtbl.setGeometry = miqt_exec_callback_cQLayout_setGeometry
  if not isNil(vtbl[].itemAt):
    vtbl[].vtbl.itemAt = miqt_exec_callback_cQLayout_itemAt
  if not isNil(vtbl[].takeAt):
    vtbl[].vtbl.takeAt = miqt_exec_callback_cQLayout_takeAt
  if not isNil(vtbl[].indexOf):
    vtbl[].vtbl.indexOf = miqt_exec_callback_cQLayout_indexOf
  if not isNil(vtbl[].count):
    vtbl[].vtbl.count = miqt_exec_callback_cQLayout_count
  if not isNil(vtbl[].isEmpty):
    vtbl[].vtbl.isEmpty = miqt_exec_callback_cQLayout_isEmpty
  if not isNil(vtbl[].controlTypes):
    vtbl[].vtbl.controlTypes = miqt_exec_callback_cQLayout_controlTypes
  if not isNil(vtbl[].layout):
    vtbl[].vtbl.layout = miqt_exec_callback_cQLayout_layout
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQLayout_childEvent
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = miqt_exec_callback_cQLayout_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQLayout_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQLayout_timerEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQLayout_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQLayout_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQLayout_disconnectNotify
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = miqt_exec_callback_cQLayout_sizeHint
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = miqt_exec_callback_cQLayout_hasHeightForWidth
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = miqt_exec_callback_cQLayout_heightForWidth
  if not isNil(vtbl[].minimumHeightForWidth):
    vtbl[].vtbl.minimumHeightForWidth = miqt_exec_callback_cQLayout_minimumHeightForWidth
  if not isNil(vtbl[].widget):
    vtbl[].vtbl.widget = miqt_exec_callback_cQLayout_widget
  if not isNil(vtbl[].spacerItem):
    vtbl[].vtbl.spacerItem = miqt_exec_callback_cQLayout_spacerItem
  gen_qlayout_types.QLayout(h: fcQLayout_new2(addr(vtbl[].vtbl), ), owned: true)

proc create*(T: type gen_qlayout_types.QLayout,
    parent: gen_qwidget_types.QWidget,
    vtbl: VirtualQLayout) =

  vtbl[].vtbl.destructor = proc(vtbl: ptr cQLayoutVTable, _: ptr cQLayout) {.cdecl.} =
    let vtbl = cast[ptr typeof(VirtualQLayout()[])](cast[uint](vtbl) - uint(offsetOf(VirtualQLayout, vtbl)))
    vtbl[].h = nil
    vtbl[].owned = false
  vtbl[].vtbl.metaObject = miqt_exec_method_cQLayout_metaObject
  vtbl[].vtbl.metacast = miqt_exec_method_cQLayout_metacast
  vtbl[].vtbl.metacall = miqt_exec_method_cQLayout_metacall
  vtbl[].vtbl.invalidate = miqt_exec_method_cQLayout_invalidate
  vtbl[].vtbl.geometry = miqt_exec_method_cQLayout_geometry
  vtbl[].vtbl.addItem = miqt_exec_method_cQLayout_addItem
  vtbl[].vtbl.expandingDirections = miqt_exec_method_cQLayout_expandingDirections
  vtbl[].vtbl.minimumSize = miqt_exec_method_cQLayout_minimumSize
  vtbl[].vtbl.maximumSize = miqt_exec_method_cQLayout_maximumSize
  vtbl[].vtbl.setGeometry = miqt_exec_method_cQLayout_setGeometry
  vtbl[].vtbl.itemAt = miqt_exec_method_cQLayout_itemAt
  vtbl[].vtbl.takeAt = miqt_exec_method_cQLayout_takeAt
  vtbl[].vtbl.indexOf = miqt_exec_method_cQLayout_indexOf
  vtbl[].vtbl.count = miqt_exec_method_cQLayout_count
  vtbl[].vtbl.isEmpty = miqt_exec_method_cQLayout_isEmpty
  vtbl[].vtbl.controlTypes = miqt_exec_method_cQLayout_controlTypes
  vtbl[].vtbl.layout = miqt_exec_method_cQLayout_layout
  vtbl[].vtbl.childEvent = miqt_exec_method_cQLayout_childEvent
  vtbl[].vtbl.event = miqt_exec_method_cQLayout_event
  vtbl[].vtbl.eventFilter = miqt_exec_method_cQLayout_eventFilter
  vtbl[].vtbl.timerEvent = miqt_exec_method_cQLayout_timerEvent
  vtbl[].vtbl.customEvent = miqt_exec_method_cQLayout_customEvent
  vtbl[].vtbl.connectNotify = miqt_exec_method_cQLayout_connectNotify
  vtbl[].vtbl.disconnectNotify = miqt_exec_method_cQLayout_disconnectNotify
  vtbl[].vtbl.sizeHint = miqt_exec_method_cQLayout_sizeHint
  vtbl[].vtbl.hasHeightForWidth = miqt_exec_method_cQLayout_hasHeightForWidth
  vtbl[].vtbl.heightForWidth = miqt_exec_method_cQLayout_heightForWidth
  vtbl[].vtbl.minimumHeightForWidth = miqt_exec_method_cQLayout_minimumHeightForWidth
  vtbl[].vtbl.widget = miqt_exec_method_cQLayout_widget
  vtbl[].vtbl.spacerItem = miqt_exec_method_cQLayout_spacerItem
  if vtbl[].h != nil: delete(move(vtbl[]))
  vtbl[].h = fcQLayout_new(addr(vtbl[].vtbl), parent.h)
  vtbl[].owned = true

proc create*(T: type gen_qlayout_types.QLayout,
    vtbl: VirtualQLayout) =

  vtbl[].vtbl.destructor = proc(vtbl: ptr cQLayoutVTable, _: ptr cQLayout) {.cdecl.} =
    let vtbl = cast[ptr typeof(VirtualQLayout()[])](cast[uint](vtbl) - uint(offsetOf(VirtualQLayout, vtbl)))
    vtbl[].h = nil
    vtbl[].owned = false
  vtbl[].vtbl.metaObject = miqt_exec_method_cQLayout_metaObject
  vtbl[].vtbl.metacast = miqt_exec_method_cQLayout_metacast
  vtbl[].vtbl.metacall = miqt_exec_method_cQLayout_metacall
  vtbl[].vtbl.invalidate = miqt_exec_method_cQLayout_invalidate
  vtbl[].vtbl.geometry = miqt_exec_method_cQLayout_geometry
  vtbl[].vtbl.addItem = miqt_exec_method_cQLayout_addItem
  vtbl[].vtbl.expandingDirections = miqt_exec_method_cQLayout_expandingDirections
  vtbl[].vtbl.minimumSize = miqt_exec_method_cQLayout_minimumSize
  vtbl[].vtbl.maximumSize = miqt_exec_method_cQLayout_maximumSize
  vtbl[].vtbl.setGeometry = miqt_exec_method_cQLayout_setGeometry
  vtbl[].vtbl.itemAt = miqt_exec_method_cQLayout_itemAt
  vtbl[].vtbl.takeAt = miqt_exec_method_cQLayout_takeAt
  vtbl[].vtbl.indexOf = miqt_exec_method_cQLayout_indexOf
  vtbl[].vtbl.count = miqt_exec_method_cQLayout_count
  vtbl[].vtbl.isEmpty = miqt_exec_method_cQLayout_isEmpty
  vtbl[].vtbl.controlTypes = miqt_exec_method_cQLayout_controlTypes
  vtbl[].vtbl.layout = miqt_exec_method_cQLayout_layout
  vtbl[].vtbl.childEvent = miqt_exec_method_cQLayout_childEvent
  vtbl[].vtbl.event = miqt_exec_method_cQLayout_event
  vtbl[].vtbl.eventFilter = miqt_exec_method_cQLayout_eventFilter
  vtbl[].vtbl.timerEvent = miqt_exec_method_cQLayout_timerEvent
  vtbl[].vtbl.customEvent = miqt_exec_method_cQLayout_customEvent
  vtbl[].vtbl.connectNotify = miqt_exec_method_cQLayout_connectNotify
  vtbl[].vtbl.disconnectNotify = miqt_exec_method_cQLayout_disconnectNotify
  vtbl[].vtbl.sizeHint = miqt_exec_method_cQLayout_sizeHint
  vtbl[].vtbl.hasHeightForWidth = miqt_exec_method_cQLayout_hasHeightForWidth
  vtbl[].vtbl.heightForWidth = miqt_exec_method_cQLayout_heightForWidth
  vtbl[].vtbl.minimumHeightForWidth = miqt_exec_method_cQLayout_minimumHeightForWidth
  vtbl[].vtbl.widget = miqt_exec_method_cQLayout_widget
  vtbl[].vtbl.spacerItem = miqt_exec_method_cQLayout_spacerItem
  if vtbl[].h != nil: delete(move(vtbl[]))
  vtbl[].h = fcQLayout_new2(addr(vtbl[].vtbl), )
  vtbl[].owned = true

proc staticMetaObject*(_: type gen_qlayout_types.QLayout): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQLayout_staticMetaObject())
