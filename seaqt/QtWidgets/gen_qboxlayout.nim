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


{.compile("gen_qboxlayout.cpp", QtWidgetsCFlags).}


type QBoxLayoutDirectionEnum* = distinct cint
template LeftToRight*(_: type QBoxLayoutDirectionEnum): untyped = 0
template RightToLeft*(_: type QBoxLayoutDirectionEnum): untyped = 1
template TopToBottom*(_: type QBoxLayoutDirectionEnum): untyped = 2
template BottomToTop*(_: type QBoxLayoutDirectionEnum): untyped = 3
template Down*(_: type QBoxLayoutDirectionEnum): untyped = 2
template Up*(_: type QBoxLayoutDirectionEnum): untyped = 3


import ./gen_qboxlayout_types
export gen_qboxlayout_types

import
  ../QtCore/gen_qcoreevent_types,
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qobject_types,
  ../QtCore/gen_qobjectdefs_types,
  ../QtCore/gen_qrect_types,
  ../QtCore/gen_qsize_types,
  ./gen_qlayout,
  ./gen_qlayoutitem_types,
  ./gen_qwidget_types
export
  gen_qcoreevent_types,
  gen_qmetaobject_types,
  gen_qobject_types,
  gen_qobjectdefs_types,
  gen_qrect_types,
  gen_qsize_types,
  gen_qlayout,
  gen_qlayoutitem_types,
  gen_qwidget_types

type cQBoxLayout*{.exportc: "QBoxLayout", incompleteStruct.} = object
type cQHBoxLayout*{.exportc: "QHBoxLayout", incompleteStruct.} = object
type cQVBoxLayout*{.exportc: "QVBoxLayout", incompleteStruct.} = object

proc fcQBoxLayout_metaObject(self: pointer): pointer {.importc: "QBoxLayout_metaObject".}
proc fcQBoxLayout_metacast(self: pointer, param1: cstring): pointer {.importc: "QBoxLayout_metacast".}
proc fcQBoxLayout_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QBoxLayout_metacall".}
proc fcQBoxLayout_tr(s: cstring): struct_miqt_string {.importc: "QBoxLayout_tr".}
proc fcQBoxLayout_direction(self: pointer): cint {.importc: "QBoxLayout_direction".}
proc fcQBoxLayout_setDirection(self: pointer, direction: cint): void {.importc: "QBoxLayout_setDirection".}
proc fcQBoxLayout_addSpacing(self: pointer, size: cint): void {.importc: "QBoxLayout_addSpacing".}
proc fcQBoxLayout_addStretch(self: pointer): void {.importc: "QBoxLayout_addStretch".}
proc fcQBoxLayout_addSpacerItem(self: pointer, spacerItem: pointer): void {.importc: "QBoxLayout_addSpacerItem".}
proc fcQBoxLayout_addWidget(self: pointer, param1: pointer): void {.importc: "QBoxLayout_addWidget".}
proc fcQBoxLayout_addLayout(self: pointer, layout: pointer): void {.importc: "QBoxLayout_addLayout".}
proc fcQBoxLayout_addStrut(self: pointer, param1: cint): void {.importc: "QBoxLayout_addStrut".}
proc fcQBoxLayout_addItem(self: pointer, param1: pointer): void {.importc: "QBoxLayout_addItem".}
proc fcQBoxLayout_insertSpacing(self: pointer, index: cint, size: cint): void {.importc: "QBoxLayout_insertSpacing".}
proc fcQBoxLayout_insertStretch(self: pointer, index: cint): void {.importc: "QBoxLayout_insertStretch".}
proc fcQBoxLayout_insertSpacerItem(self: pointer, index: cint, spacerItem: pointer): void {.importc: "QBoxLayout_insertSpacerItem".}
proc fcQBoxLayout_insertWidget(self: pointer, index: cint, widget: pointer): void {.importc: "QBoxLayout_insertWidget".}
proc fcQBoxLayout_insertLayout(self: pointer, index: cint, layout: pointer): void {.importc: "QBoxLayout_insertLayout".}
proc fcQBoxLayout_insertItem(self: pointer, index: cint, param2: pointer): void {.importc: "QBoxLayout_insertItem".}
proc fcQBoxLayout_spacing(self: pointer): cint {.importc: "QBoxLayout_spacing".}
proc fcQBoxLayout_setSpacing(self: pointer, spacing: cint): void {.importc: "QBoxLayout_setSpacing".}
proc fcQBoxLayout_setStretchFactor(self: pointer, w: pointer, stretch: cint): bool {.importc: "QBoxLayout_setStretchFactor".}
proc fcQBoxLayout_setStretchFactor2(self: pointer, l: pointer, stretch: cint): bool {.importc: "QBoxLayout_setStretchFactor2".}
proc fcQBoxLayout_setStretch(self: pointer, index: cint, stretch: cint): void {.importc: "QBoxLayout_setStretch".}
proc fcQBoxLayout_stretch(self: pointer, index: cint): cint {.importc: "QBoxLayout_stretch".}
proc fcQBoxLayout_sizeHint(self: pointer): pointer {.importc: "QBoxLayout_sizeHint".}
proc fcQBoxLayout_minimumSize(self: pointer): pointer {.importc: "QBoxLayout_minimumSize".}
proc fcQBoxLayout_maximumSize(self: pointer): pointer {.importc: "QBoxLayout_maximumSize".}
proc fcQBoxLayout_hasHeightForWidth(self: pointer): bool {.importc: "QBoxLayout_hasHeightForWidth".}
proc fcQBoxLayout_heightForWidth(self: pointer, param1: cint): cint {.importc: "QBoxLayout_heightForWidth".}
proc fcQBoxLayout_minimumHeightForWidth(self: pointer, param1: cint): cint {.importc: "QBoxLayout_minimumHeightForWidth".}
proc fcQBoxLayout_expandingDirections(self: pointer): cint {.importc: "QBoxLayout_expandingDirections".}
proc fcQBoxLayout_invalidate(self: pointer): void {.importc: "QBoxLayout_invalidate".}
proc fcQBoxLayout_itemAt(self: pointer, param1: cint): pointer {.importc: "QBoxLayout_itemAt".}
proc fcQBoxLayout_takeAt(self: pointer, param1: cint): pointer {.importc: "QBoxLayout_takeAt".}
proc fcQBoxLayout_count(self: pointer): cint {.importc: "QBoxLayout_count".}
proc fcQBoxLayout_setGeometry(self: pointer, geometry: pointer): void {.importc: "QBoxLayout_setGeometry".}
proc fcQBoxLayout_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QBoxLayout_tr2".}
proc fcQBoxLayout_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QBoxLayout_tr3".}
proc fcQBoxLayout_addStretch1(self: pointer, stretch: cint): void {.importc: "QBoxLayout_addStretch1".}
proc fcQBoxLayout_addWidget2(self: pointer, param1: pointer, stretch: cint): void {.importc: "QBoxLayout_addWidget2".}
proc fcQBoxLayout_addWidget3(self: pointer, param1: pointer, stretch: cint, alignment: cint): void {.importc: "QBoxLayout_addWidget3".}
proc fcQBoxLayout_addLayout2(self: pointer, layout: pointer, stretch: cint): void {.importc: "QBoxLayout_addLayout2".}
proc fcQBoxLayout_insertStretch2(self: pointer, index: cint, stretch: cint): void {.importc: "QBoxLayout_insertStretch2".}
proc fcQBoxLayout_insertWidget3(self: pointer, index: cint, widget: pointer, stretch: cint): void {.importc: "QBoxLayout_insertWidget3".}
proc fcQBoxLayout_insertWidget4(self: pointer, index: cint, widget: pointer, stretch: cint, alignment: cint): void {.importc: "QBoxLayout_insertWidget4".}
proc fcQBoxLayout_insertLayout3(self: pointer, index: cint, layout: pointer, stretch: cint): void {.importc: "QBoxLayout_insertLayout3".}
proc fcQBoxLayout_vtbl(self: pointer): pointer {.importc: "QBoxLayout_vtbl".}
proc fcQBoxLayout_vdata(self: pointer): pointer {.importc: "QBoxLayout_vdata".}

type cQBoxLayoutVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  addItem*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  spacing*: proc(self: pointer): cint {.cdecl, raises: [], gcsafe.}
  setSpacing*: proc(self: pointer, spacing: cint): void {.cdecl, raises: [], gcsafe.}
  sizeHint*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  minimumSize*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  maximumSize*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  hasHeightForWidth*: proc(self: pointer): bool {.cdecl, raises: [], gcsafe.}
  heightForWidth*: proc(self: pointer, param1: cint): cint {.cdecl, raises: [], gcsafe.}
  minimumHeightForWidth*: proc(self: pointer, param1: cint): cint {.cdecl, raises: [], gcsafe.}
  expandingDirections*: proc(self: pointer): cint {.cdecl, raises: [], gcsafe.}
  invalidate*: proc(self: pointer): void {.cdecl, raises: [], gcsafe.}
  itemAt*: proc(self: pointer, param1: cint): pointer {.cdecl, raises: [], gcsafe.}
  takeAt*: proc(self: pointer, param1: cint): pointer {.cdecl, raises: [], gcsafe.}
  count*: proc(self: pointer): cint {.cdecl, raises: [], gcsafe.}
  setGeometry*: proc(self: pointer, geometry: pointer): void {.cdecl, raises: [], gcsafe.}
  geometry*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  indexOf*: proc(self: pointer, param1: pointer): cint {.cdecl, raises: [], gcsafe.}
  isEmpty*: proc(self: pointer): bool {.cdecl, raises: [], gcsafe.}
  controlTypes*: proc(self: pointer): cint {.cdecl, raises: [], gcsafe.}
  replaceWidget*: proc(self: pointer, fromVal: pointer, to: pointer, options: cint): pointer {.cdecl, raises: [], gcsafe.}
  layout*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  event*: proc(self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  widget*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  spacerItem*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
proc fcQBoxLayout_virtualbase_metaObject(self: pointer): pointer {.importc: "QBoxLayout_virtualbase_metaObject".}
proc fcQBoxLayout_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QBoxLayout_virtualbase_metacast".}
proc fcQBoxLayout_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QBoxLayout_virtualbase_metacall".}
proc fcQBoxLayout_virtualbase_addItem(self: pointer, param1: pointer): void {.importc: "QBoxLayout_virtualbase_addItem".}
proc fcQBoxLayout_virtualbase_spacing(self: pointer): cint {.importc: "QBoxLayout_virtualbase_spacing".}
proc fcQBoxLayout_virtualbase_setSpacing(self: pointer, spacing: cint): void {.importc: "QBoxLayout_virtualbase_setSpacing".}
proc fcQBoxLayout_virtualbase_sizeHint(self: pointer): pointer {.importc: "QBoxLayout_virtualbase_sizeHint".}
proc fcQBoxLayout_virtualbase_minimumSize(self: pointer): pointer {.importc: "QBoxLayout_virtualbase_minimumSize".}
proc fcQBoxLayout_virtualbase_maximumSize(self: pointer): pointer {.importc: "QBoxLayout_virtualbase_maximumSize".}
proc fcQBoxLayout_virtualbase_hasHeightForWidth(self: pointer): bool {.importc: "QBoxLayout_virtualbase_hasHeightForWidth".}
proc fcQBoxLayout_virtualbase_heightForWidth(self: pointer, param1: cint): cint {.importc: "QBoxLayout_virtualbase_heightForWidth".}
proc fcQBoxLayout_virtualbase_minimumHeightForWidth(self: pointer, param1: cint): cint {.importc: "QBoxLayout_virtualbase_minimumHeightForWidth".}
proc fcQBoxLayout_virtualbase_expandingDirections(self: pointer): cint {.importc: "QBoxLayout_virtualbase_expandingDirections".}
proc fcQBoxLayout_virtualbase_invalidate(self: pointer): void {.importc: "QBoxLayout_virtualbase_invalidate".}
proc fcQBoxLayout_virtualbase_itemAt(self: pointer, param1: cint): pointer {.importc: "QBoxLayout_virtualbase_itemAt".}
proc fcQBoxLayout_virtualbase_takeAt(self: pointer, param1: cint): pointer {.importc: "QBoxLayout_virtualbase_takeAt".}
proc fcQBoxLayout_virtualbase_count(self: pointer): cint {.importc: "QBoxLayout_virtualbase_count".}
proc fcQBoxLayout_virtualbase_setGeometry(self: pointer, geometry: pointer): void {.importc: "QBoxLayout_virtualbase_setGeometry".}
proc fcQBoxLayout_virtualbase_geometry(self: pointer): pointer {.importc: "QBoxLayout_virtualbase_geometry".}
proc fcQBoxLayout_virtualbase_indexOf(self: pointer, param1: pointer): cint {.importc: "QBoxLayout_virtualbase_indexOf".}
proc fcQBoxLayout_virtualbase_isEmpty(self: pointer): bool {.importc: "QBoxLayout_virtualbase_isEmpty".}
proc fcQBoxLayout_virtualbase_controlTypes(self: pointer): cint {.importc: "QBoxLayout_virtualbase_controlTypes".}
proc fcQBoxLayout_virtualbase_replaceWidget(self: pointer, fromVal: pointer, to: pointer, options: cint): pointer {.importc: "QBoxLayout_virtualbase_replaceWidget".}
proc fcQBoxLayout_virtualbase_layout(self: pointer): pointer {.importc: "QBoxLayout_virtualbase_layout".}
proc fcQBoxLayout_virtualbase_childEvent(self: pointer, e: pointer): void {.importc: "QBoxLayout_virtualbase_childEvent".}
proc fcQBoxLayout_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QBoxLayout_virtualbase_event".}
proc fcQBoxLayout_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QBoxLayout_virtualbase_eventFilter".}
proc fcQBoxLayout_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QBoxLayout_virtualbase_timerEvent".}
proc fcQBoxLayout_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QBoxLayout_virtualbase_customEvent".}
proc fcQBoxLayout_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QBoxLayout_virtualbase_connectNotify".}
proc fcQBoxLayout_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QBoxLayout_virtualbase_disconnectNotify".}
proc fcQBoxLayout_virtualbase_widget(self: pointer): pointer {.importc: "QBoxLayout_virtualbase_widget".}
proc fcQBoxLayout_virtualbase_spacerItem(self: pointer): pointer {.importc: "QBoxLayout_virtualbase_spacerItem".}
proc fcQBoxLayout_protectedbase_widgetEvent(self: pointer, param1: pointer): void {.importc: "QBoxLayout_protectedbase_widgetEvent".}
proc fcQBoxLayout_protectedbase_addChildLayout(self: pointer, l: pointer): void {.importc: "QBoxLayout_protectedbase_addChildLayout".}
proc fcQBoxLayout_protectedbase_addChildWidget(self: pointer, w: pointer): void {.importc: "QBoxLayout_protectedbase_addChildWidget".}
proc fcQBoxLayout_protectedbase_adoptLayout(self: pointer, layout: pointer): bool {.importc: "QBoxLayout_protectedbase_adoptLayout".}
proc fcQBoxLayout_protectedbase_alignmentRect(self: pointer, param1: pointer): pointer {.importc: "QBoxLayout_protectedbase_alignmentRect".}
proc fcQBoxLayout_protectedbase_sender(self: pointer): pointer {.importc: "QBoxLayout_protectedbase_sender".}
proc fcQBoxLayout_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QBoxLayout_protectedbase_senderSignalIndex".}
proc fcQBoxLayout_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QBoxLayout_protectedbase_receivers".}
proc fcQBoxLayout_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QBoxLayout_protectedbase_isSignalConnected".}
proc fcQBoxLayout_new(vtbl, vdata: pointer, param1: cint): ptr cQBoxLayout {.importc: "QBoxLayout_new".}
proc fcQBoxLayout_new2(vtbl, vdata: pointer, param1: cint, parent: pointer): ptr cQBoxLayout {.importc: "QBoxLayout_new2".}
proc fcQBoxLayout_staticMetaObject(): pointer {.importc: "QBoxLayout_staticMetaObject".}
proc fcQHBoxLayout_metaObject(self: pointer): pointer {.importc: "QHBoxLayout_metaObject".}
proc fcQHBoxLayout_metacast(self: pointer, param1: cstring): pointer {.importc: "QHBoxLayout_metacast".}
proc fcQHBoxLayout_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QHBoxLayout_metacall".}
proc fcQHBoxLayout_tr(s: cstring): struct_miqt_string {.importc: "QHBoxLayout_tr".}
proc fcQHBoxLayout_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QHBoxLayout_tr2".}
proc fcQHBoxLayout_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QHBoxLayout_tr3".}
proc fcQHBoxLayout_vtbl(self: pointer): pointer {.importc: "QHBoxLayout_vtbl".}
proc fcQHBoxLayout_vdata(self: pointer): pointer {.importc: "QHBoxLayout_vdata".}

type cQHBoxLayoutVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  addItem*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  spacing*: proc(self: pointer): cint {.cdecl, raises: [], gcsafe.}
  setSpacing*: proc(self: pointer, spacing: cint): void {.cdecl, raises: [], gcsafe.}
  sizeHint*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  minimumSize*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  maximumSize*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  hasHeightForWidth*: proc(self: pointer): bool {.cdecl, raises: [], gcsafe.}
  heightForWidth*: proc(self: pointer, param1: cint): cint {.cdecl, raises: [], gcsafe.}
  minimumHeightForWidth*: proc(self: pointer, param1: cint): cint {.cdecl, raises: [], gcsafe.}
  expandingDirections*: proc(self: pointer): cint {.cdecl, raises: [], gcsafe.}
  invalidate*: proc(self: pointer): void {.cdecl, raises: [], gcsafe.}
  itemAt*: proc(self: pointer, param1: cint): pointer {.cdecl, raises: [], gcsafe.}
  takeAt*: proc(self: pointer, param1: cint): pointer {.cdecl, raises: [], gcsafe.}
  count*: proc(self: pointer): cint {.cdecl, raises: [], gcsafe.}
  setGeometry*: proc(self: pointer, geometry: pointer): void {.cdecl, raises: [], gcsafe.}
  geometry*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  indexOf*: proc(self: pointer, param1: pointer): cint {.cdecl, raises: [], gcsafe.}
  isEmpty*: proc(self: pointer): bool {.cdecl, raises: [], gcsafe.}
  controlTypes*: proc(self: pointer): cint {.cdecl, raises: [], gcsafe.}
  replaceWidget*: proc(self: pointer, fromVal: pointer, to: pointer, options: cint): pointer {.cdecl, raises: [], gcsafe.}
  layout*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  event*: proc(self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  widget*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  spacerItem*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
proc fcQHBoxLayout_virtualbase_metaObject(self: pointer): pointer {.importc: "QHBoxLayout_virtualbase_metaObject".}
proc fcQHBoxLayout_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QHBoxLayout_virtualbase_metacast".}
proc fcQHBoxLayout_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QHBoxLayout_virtualbase_metacall".}
proc fcQHBoxLayout_virtualbase_addItem(self: pointer, param1: pointer): void {.importc: "QHBoxLayout_virtualbase_addItem".}
proc fcQHBoxLayout_virtualbase_spacing(self: pointer): cint {.importc: "QHBoxLayout_virtualbase_spacing".}
proc fcQHBoxLayout_virtualbase_setSpacing(self: pointer, spacing: cint): void {.importc: "QHBoxLayout_virtualbase_setSpacing".}
proc fcQHBoxLayout_virtualbase_sizeHint(self: pointer): pointer {.importc: "QHBoxLayout_virtualbase_sizeHint".}
proc fcQHBoxLayout_virtualbase_minimumSize(self: pointer): pointer {.importc: "QHBoxLayout_virtualbase_minimumSize".}
proc fcQHBoxLayout_virtualbase_maximumSize(self: pointer): pointer {.importc: "QHBoxLayout_virtualbase_maximumSize".}
proc fcQHBoxLayout_virtualbase_hasHeightForWidth(self: pointer): bool {.importc: "QHBoxLayout_virtualbase_hasHeightForWidth".}
proc fcQHBoxLayout_virtualbase_heightForWidth(self: pointer, param1: cint): cint {.importc: "QHBoxLayout_virtualbase_heightForWidth".}
proc fcQHBoxLayout_virtualbase_minimumHeightForWidth(self: pointer, param1: cint): cint {.importc: "QHBoxLayout_virtualbase_minimumHeightForWidth".}
proc fcQHBoxLayout_virtualbase_expandingDirections(self: pointer): cint {.importc: "QHBoxLayout_virtualbase_expandingDirections".}
proc fcQHBoxLayout_virtualbase_invalidate(self: pointer): void {.importc: "QHBoxLayout_virtualbase_invalidate".}
proc fcQHBoxLayout_virtualbase_itemAt(self: pointer, param1: cint): pointer {.importc: "QHBoxLayout_virtualbase_itemAt".}
proc fcQHBoxLayout_virtualbase_takeAt(self: pointer, param1: cint): pointer {.importc: "QHBoxLayout_virtualbase_takeAt".}
proc fcQHBoxLayout_virtualbase_count(self: pointer): cint {.importc: "QHBoxLayout_virtualbase_count".}
proc fcQHBoxLayout_virtualbase_setGeometry(self: pointer, geometry: pointer): void {.importc: "QHBoxLayout_virtualbase_setGeometry".}
proc fcQHBoxLayout_virtualbase_geometry(self: pointer): pointer {.importc: "QHBoxLayout_virtualbase_geometry".}
proc fcQHBoxLayout_virtualbase_indexOf(self: pointer, param1: pointer): cint {.importc: "QHBoxLayout_virtualbase_indexOf".}
proc fcQHBoxLayout_virtualbase_isEmpty(self: pointer): bool {.importc: "QHBoxLayout_virtualbase_isEmpty".}
proc fcQHBoxLayout_virtualbase_controlTypes(self: pointer): cint {.importc: "QHBoxLayout_virtualbase_controlTypes".}
proc fcQHBoxLayout_virtualbase_replaceWidget(self: pointer, fromVal: pointer, to: pointer, options: cint): pointer {.importc: "QHBoxLayout_virtualbase_replaceWidget".}
proc fcQHBoxLayout_virtualbase_layout(self: pointer): pointer {.importc: "QHBoxLayout_virtualbase_layout".}
proc fcQHBoxLayout_virtualbase_childEvent(self: pointer, e: pointer): void {.importc: "QHBoxLayout_virtualbase_childEvent".}
proc fcQHBoxLayout_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QHBoxLayout_virtualbase_event".}
proc fcQHBoxLayout_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QHBoxLayout_virtualbase_eventFilter".}
proc fcQHBoxLayout_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QHBoxLayout_virtualbase_timerEvent".}
proc fcQHBoxLayout_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QHBoxLayout_virtualbase_customEvent".}
proc fcQHBoxLayout_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QHBoxLayout_virtualbase_connectNotify".}
proc fcQHBoxLayout_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QHBoxLayout_virtualbase_disconnectNotify".}
proc fcQHBoxLayout_virtualbase_widget(self: pointer): pointer {.importc: "QHBoxLayout_virtualbase_widget".}
proc fcQHBoxLayout_virtualbase_spacerItem(self: pointer): pointer {.importc: "QHBoxLayout_virtualbase_spacerItem".}
proc fcQHBoxLayout_protectedbase_widgetEvent(self: pointer, param1: pointer): void {.importc: "QHBoxLayout_protectedbase_widgetEvent".}
proc fcQHBoxLayout_protectedbase_addChildLayout(self: pointer, l: pointer): void {.importc: "QHBoxLayout_protectedbase_addChildLayout".}
proc fcQHBoxLayout_protectedbase_addChildWidget(self: pointer, w: pointer): void {.importc: "QHBoxLayout_protectedbase_addChildWidget".}
proc fcQHBoxLayout_protectedbase_adoptLayout(self: pointer, layout: pointer): bool {.importc: "QHBoxLayout_protectedbase_adoptLayout".}
proc fcQHBoxLayout_protectedbase_alignmentRect(self: pointer, param1: pointer): pointer {.importc: "QHBoxLayout_protectedbase_alignmentRect".}
proc fcQHBoxLayout_protectedbase_sender(self: pointer): pointer {.importc: "QHBoxLayout_protectedbase_sender".}
proc fcQHBoxLayout_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QHBoxLayout_protectedbase_senderSignalIndex".}
proc fcQHBoxLayout_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QHBoxLayout_protectedbase_receivers".}
proc fcQHBoxLayout_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QHBoxLayout_protectedbase_isSignalConnected".}
proc fcQHBoxLayout_new(vtbl, vdata: pointer, parent: pointer): ptr cQHBoxLayout {.importc: "QHBoxLayout_new".}
proc fcQHBoxLayout_new2(vtbl, vdata: pointer): ptr cQHBoxLayout {.importc: "QHBoxLayout_new2".}
proc fcQHBoxLayout_staticMetaObject(): pointer {.importc: "QHBoxLayout_staticMetaObject".}
proc fcQVBoxLayout_metaObject(self: pointer): pointer {.importc: "QVBoxLayout_metaObject".}
proc fcQVBoxLayout_metacast(self: pointer, param1: cstring): pointer {.importc: "QVBoxLayout_metacast".}
proc fcQVBoxLayout_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QVBoxLayout_metacall".}
proc fcQVBoxLayout_tr(s: cstring): struct_miqt_string {.importc: "QVBoxLayout_tr".}
proc fcQVBoxLayout_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QVBoxLayout_tr2".}
proc fcQVBoxLayout_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QVBoxLayout_tr3".}
proc fcQVBoxLayout_vtbl(self: pointer): pointer {.importc: "QVBoxLayout_vtbl".}
proc fcQVBoxLayout_vdata(self: pointer): pointer {.importc: "QVBoxLayout_vdata".}

type cQVBoxLayoutVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  addItem*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  spacing*: proc(self: pointer): cint {.cdecl, raises: [], gcsafe.}
  setSpacing*: proc(self: pointer, spacing: cint): void {.cdecl, raises: [], gcsafe.}
  sizeHint*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  minimumSize*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  maximumSize*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  hasHeightForWidth*: proc(self: pointer): bool {.cdecl, raises: [], gcsafe.}
  heightForWidth*: proc(self: pointer, param1: cint): cint {.cdecl, raises: [], gcsafe.}
  minimumHeightForWidth*: proc(self: pointer, param1: cint): cint {.cdecl, raises: [], gcsafe.}
  expandingDirections*: proc(self: pointer): cint {.cdecl, raises: [], gcsafe.}
  invalidate*: proc(self: pointer): void {.cdecl, raises: [], gcsafe.}
  itemAt*: proc(self: pointer, param1: cint): pointer {.cdecl, raises: [], gcsafe.}
  takeAt*: proc(self: pointer, param1: cint): pointer {.cdecl, raises: [], gcsafe.}
  count*: proc(self: pointer): cint {.cdecl, raises: [], gcsafe.}
  setGeometry*: proc(self: pointer, geometry: pointer): void {.cdecl, raises: [], gcsafe.}
  geometry*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  indexOf*: proc(self: pointer, param1: pointer): cint {.cdecl, raises: [], gcsafe.}
  isEmpty*: proc(self: pointer): bool {.cdecl, raises: [], gcsafe.}
  controlTypes*: proc(self: pointer): cint {.cdecl, raises: [], gcsafe.}
  replaceWidget*: proc(self: pointer, fromVal: pointer, to: pointer, options: cint): pointer {.cdecl, raises: [], gcsafe.}
  layout*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  event*: proc(self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  widget*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  spacerItem*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
proc fcQVBoxLayout_virtualbase_metaObject(self: pointer): pointer {.importc: "QVBoxLayout_virtualbase_metaObject".}
proc fcQVBoxLayout_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QVBoxLayout_virtualbase_metacast".}
proc fcQVBoxLayout_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QVBoxLayout_virtualbase_metacall".}
proc fcQVBoxLayout_virtualbase_addItem(self: pointer, param1: pointer): void {.importc: "QVBoxLayout_virtualbase_addItem".}
proc fcQVBoxLayout_virtualbase_spacing(self: pointer): cint {.importc: "QVBoxLayout_virtualbase_spacing".}
proc fcQVBoxLayout_virtualbase_setSpacing(self: pointer, spacing: cint): void {.importc: "QVBoxLayout_virtualbase_setSpacing".}
proc fcQVBoxLayout_virtualbase_sizeHint(self: pointer): pointer {.importc: "QVBoxLayout_virtualbase_sizeHint".}
proc fcQVBoxLayout_virtualbase_minimumSize(self: pointer): pointer {.importc: "QVBoxLayout_virtualbase_minimumSize".}
proc fcQVBoxLayout_virtualbase_maximumSize(self: pointer): pointer {.importc: "QVBoxLayout_virtualbase_maximumSize".}
proc fcQVBoxLayout_virtualbase_hasHeightForWidth(self: pointer): bool {.importc: "QVBoxLayout_virtualbase_hasHeightForWidth".}
proc fcQVBoxLayout_virtualbase_heightForWidth(self: pointer, param1: cint): cint {.importc: "QVBoxLayout_virtualbase_heightForWidth".}
proc fcQVBoxLayout_virtualbase_minimumHeightForWidth(self: pointer, param1: cint): cint {.importc: "QVBoxLayout_virtualbase_minimumHeightForWidth".}
proc fcQVBoxLayout_virtualbase_expandingDirections(self: pointer): cint {.importc: "QVBoxLayout_virtualbase_expandingDirections".}
proc fcQVBoxLayout_virtualbase_invalidate(self: pointer): void {.importc: "QVBoxLayout_virtualbase_invalidate".}
proc fcQVBoxLayout_virtualbase_itemAt(self: pointer, param1: cint): pointer {.importc: "QVBoxLayout_virtualbase_itemAt".}
proc fcQVBoxLayout_virtualbase_takeAt(self: pointer, param1: cint): pointer {.importc: "QVBoxLayout_virtualbase_takeAt".}
proc fcQVBoxLayout_virtualbase_count(self: pointer): cint {.importc: "QVBoxLayout_virtualbase_count".}
proc fcQVBoxLayout_virtualbase_setGeometry(self: pointer, geometry: pointer): void {.importc: "QVBoxLayout_virtualbase_setGeometry".}
proc fcQVBoxLayout_virtualbase_geometry(self: pointer): pointer {.importc: "QVBoxLayout_virtualbase_geometry".}
proc fcQVBoxLayout_virtualbase_indexOf(self: pointer, param1: pointer): cint {.importc: "QVBoxLayout_virtualbase_indexOf".}
proc fcQVBoxLayout_virtualbase_isEmpty(self: pointer): bool {.importc: "QVBoxLayout_virtualbase_isEmpty".}
proc fcQVBoxLayout_virtualbase_controlTypes(self: pointer): cint {.importc: "QVBoxLayout_virtualbase_controlTypes".}
proc fcQVBoxLayout_virtualbase_replaceWidget(self: pointer, fromVal: pointer, to: pointer, options: cint): pointer {.importc: "QVBoxLayout_virtualbase_replaceWidget".}
proc fcQVBoxLayout_virtualbase_layout(self: pointer): pointer {.importc: "QVBoxLayout_virtualbase_layout".}
proc fcQVBoxLayout_virtualbase_childEvent(self: pointer, e: pointer): void {.importc: "QVBoxLayout_virtualbase_childEvent".}
proc fcQVBoxLayout_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QVBoxLayout_virtualbase_event".}
proc fcQVBoxLayout_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QVBoxLayout_virtualbase_eventFilter".}
proc fcQVBoxLayout_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QVBoxLayout_virtualbase_timerEvent".}
proc fcQVBoxLayout_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QVBoxLayout_virtualbase_customEvent".}
proc fcQVBoxLayout_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QVBoxLayout_virtualbase_connectNotify".}
proc fcQVBoxLayout_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QVBoxLayout_virtualbase_disconnectNotify".}
proc fcQVBoxLayout_virtualbase_widget(self: pointer): pointer {.importc: "QVBoxLayout_virtualbase_widget".}
proc fcQVBoxLayout_virtualbase_spacerItem(self: pointer): pointer {.importc: "QVBoxLayout_virtualbase_spacerItem".}
proc fcQVBoxLayout_protectedbase_widgetEvent(self: pointer, param1: pointer): void {.importc: "QVBoxLayout_protectedbase_widgetEvent".}
proc fcQVBoxLayout_protectedbase_addChildLayout(self: pointer, l: pointer): void {.importc: "QVBoxLayout_protectedbase_addChildLayout".}
proc fcQVBoxLayout_protectedbase_addChildWidget(self: pointer, w: pointer): void {.importc: "QVBoxLayout_protectedbase_addChildWidget".}
proc fcQVBoxLayout_protectedbase_adoptLayout(self: pointer, layout: pointer): bool {.importc: "QVBoxLayout_protectedbase_adoptLayout".}
proc fcQVBoxLayout_protectedbase_alignmentRect(self: pointer, param1: pointer): pointer {.importc: "QVBoxLayout_protectedbase_alignmentRect".}
proc fcQVBoxLayout_protectedbase_sender(self: pointer): pointer {.importc: "QVBoxLayout_protectedbase_sender".}
proc fcQVBoxLayout_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QVBoxLayout_protectedbase_senderSignalIndex".}
proc fcQVBoxLayout_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QVBoxLayout_protectedbase_receivers".}
proc fcQVBoxLayout_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QVBoxLayout_protectedbase_isSignalConnected".}
proc fcQVBoxLayout_new(vtbl, vdata: pointer, parent: pointer): ptr cQVBoxLayout {.importc: "QVBoxLayout_new".}
proc fcQVBoxLayout_new2(vtbl, vdata: pointer): ptr cQVBoxLayout {.importc: "QVBoxLayout_new2".}
proc fcQVBoxLayout_staticMetaObject(): pointer {.importc: "QVBoxLayout_staticMetaObject".}

proc metaObject*(self: gen_qboxlayout_types.QBoxLayout): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQBoxLayout_metaObject(self.h), owned: false)

proc metacast*(self: gen_qboxlayout_types.QBoxLayout, param1: cstring): pointer =
  fcQBoxLayout_metacast(self.h, param1)

proc metacall*(self: gen_qboxlayout_types.QBoxLayout, param1: cint, param2: cint, param3: pointer): cint =
  fcQBoxLayout_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qboxlayout_types.QBoxLayout, s: cstring): string =
  let v_ms = fcQBoxLayout_tr(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc direction*(self: gen_qboxlayout_types.QBoxLayout): cint =
  cint(fcQBoxLayout_direction(self.h))

proc setDirection*(self: gen_qboxlayout_types.QBoxLayout, direction: cint): void =
  fcQBoxLayout_setDirection(self.h, cint(direction))

proc addSpacing*(self: gen_qboxlayout_types.QBoxLayout, size: cint): void =
  fcQBoxLayout_addSpacing(self.h, size)

proc addStretch*(self: gen_qboxlayout_types.QBoxLayout): void =
  fcQBoxLayout_addStretch(self.h)

proc addSpacerItem*(self: gen_qboxlayout_types.QBoxLayout, spacerItem: gen_qlayoutitem_types.QSpacerItem): void =
  fcQBoxLayout_addSpacerItem(self.h, spacerItem.h)

proc addWidget*(self: gen_qboxlayout_types.QBoxLayout, param1: gen_qwidget_types.QWidget): void =
  fcQBoxLayout_addWidget(self.h, param1.h)

proc addLayout*(self: gen_qboxlayout_types.QBoxLayout, layout: gen_qlayout_types.QLayout): void =
  fcQBoxLayout_addLayout(self.h, layout.h)

proc addStrut*(self: gen_qboxlayout_types.QBoxLayout, param1: cint): void =
  fcQBoxLayout_addStrut(self.h, param1)

proc addItem*(self: gen_qboxlayout_types.QBoxLayout, param1: gen_qlayoutitem_types.QLayoutItem): void =
  fcQBoxLayout_addItem(self.h, param1.h)

proc insertSpacing*(self: gen_qboxlayout_types.QBoxLayout, index: cint, size: cint): void =
  fcQBoxLayout_insertSpacing(self.h, index, size)

proc insertStretch*(self: gen_qboxlayout_types.QBoxLayout, index: cint): void =
  fcQBoxLayout_insertStretch(self.h, index)

proc insertSpacerItem*(self: gen_qboxlayout_types.QBoxLayout, index: cint, spacerItem: gen_qlayoutitem_types.QSpacerItem): void =
  fcQBoxLayout_insertSpacerItem(self.h, index, spacerItem.h)

proc insertWidget*(self: gen_qboxlayout_types.QBoxLayout, index: cint, widget: gen_qwidget_types.QWidget): void =
  fcQBoxLayout_insertWidget(self.h, index, widget.h)

proc insertLayout*(self: gen_qboxlayout_types.QBoxLayout, index: cint, layout: gen_qlayout_types.QLayout): void =
  fcQBoxLayout_insertLayout(self.h, index, layout.h)

proc insertItem*(self: gen_qboxlayout_types.QBoxLayout, index: cint, param2: gen_qlayoutitem_types.QLayoutItem): void =
  fcQBoxLayout_insertItem(self.h, index, param2.h)

proc spacing*(self: gen_qboxlayout_types.QBoxLayout): cint =
  fcQBoxLayout_spacing(self.h)

proc setSpacing*(self: gen_qboxlayout_types.QBoxLayout, spacing: cint): void =
  fcQBoxLayout_setSpacing(self.h, spacing)

proc setStretchFactor*(self: gen_qboxlayout_types.QBoxLayout, w: gen_qwidget_types.QWidget, stretch: cint): bool =
  fcQBoxLayout_setStretchFactor(self.h, w.h, stretch)

proc setStretchFactor*(self: gen_qboxlayout_types.QBoxLayout, l: gen_qlayout_types.QLayout, stretch: cint): bool =
  fcQBoxLayout_setStretchFactor2(self.h, l.h, stretch)

proc setStretch*(self: gen_qboxlayout_types.QBoxLayout, index: cint, stretch: cint): void =
  fcQBoxLayout_setStretch(self.h, index, stretch)

proc stretch*(self: gen_qboxlayout_types.QBoxLayout, index: cint): cint =
  fcQBoxLayout_stretch(self.h, index)

proc sizeHint*(self: gen_qboxlayout_types.QBoxLayout): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQBoxLayout_sizeHint(self.h), owned: true)

proc minimumSize*(self: gen_qboxlayout_types.QBoxLayout): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQBoxLayout_minimumSize(self.h), owned: true)

proc maximumSize*(self: gen_qboxlayout_types.QBoxLayout): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQBoxLayout_maximumSize(self.h), owned: true)

proc hasHeightForWidth*(self: gen_qboxlayout_types.QBoxLayout): bool =
  fcQBoxLayout_hasHeightForWidth(self.h)

proc heightForWidth*(self: gen_qboxlayout_types.QBoxLayout, param1: cint): cint =
  fcQBoxLayout_heightForWidth(self.h, param1)

proc minimumHeightForWidth*(self: gen_qboxlayout_types.QBoxLayout, param1: cint): cint =
  fcQBoxLayout_minimumHeightForWidth(self.h, param1)

proc expandingDirections*(self: gen_qboxlayout_types.QBoxLayout): cint =
  cint(fcQBoxLayout_expandingDirections(self.h))

proc invalidate*(self: gen_qboxlayout_types.QBoxLayout): void =
  fcQBoxLayout_invalidate(self.h)

proc itemAt*(self: gen_qboxlayout_types.QBoxLayout, param1: cint): gen_qlayoutitem_types.QLayoutItem =
  gen_qlayoutitem_types.QLayoutItem(h: fcQBoxLayout_itemAt(self.h, param1), owned: false)

proc takeAt*(self: gen_qboxlayout_types.QBoxLayout, param1: cint): gen_qlayoutitem_types.QLayoutItem =
  gen_qlayoutitem_types.QLayoutItem(h: fcQBoxLayout_takeAt(self.h, param1), owned: false)

proc count*(self: gen_qboxlayout_types.QBoxLayout): cint =
  fcQBoxLayout_count(self.h)

proc setGeometry*(self: gen_qboxlayout_types.QBoxLayout, geometry: gen_qrect_types.QRect): void =
  fcQBoxLayout_setGeometry(self.h, geometry.h)

proc tr*(_: type gen_qboxlayout_types.QBoxLayout, s: cstring, c: cstring): string =
  let v_ms = fcQBoxLayout_tr2(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qboxlayout_types.QBoxLayout, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQBoxLayout_tr3(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc addStretch*(self: gen_qboxlayout_types.QBoxLayout, stretch: cint): void =
  fcQBoxLayout_addStretch1(self.h, stretch)

proc addWidget*(self: gen_qboxlayout_types.QBoxLayout, param1: gen_qwidget_types.QWidget, stretch: cint): void =
  fcQBoxLayout_addWidget2(self.h, param1.h, stretch)

proc addWidget*(self: gen_qboxlayout_types.QBoxLayout, param1: gen_qwidget_types.QWidget, stretch: cint, alignment: cint): void =
  fcQBoxLayout_addWidget3(self.h, param1.h, stretch, cint(alignment))

proc addLayout*(self: gen_qboxlayout_types.QBoxLayout, layout: gen_qlayout_types.QLayout, stretch: cint): void =
  fcQBoxLayout_addLayout2(self.h, layout.h, stretch)

proc insertStretch*(self: gen_qboxlayout_types.QBoxLayout, index: cint, stretch: cint): void =
  fcQBoxLayout_insertStretch2(self.h, index, stretch)

proc insertWidget*(self: gen_qboxlayout_types.QBoxLayout, index: cint, widget: gen_qwidget_types.QWidget, stretch: cint): void =
  fcQBoxLayout_insertWidget3(self.h, index, widget.h, stretch)

proc insertWidget*(self: gen_qboxlayout_types.QBoxLayout, index: cint, widget: gen_qwidget_types.QWidget, stretch: cint, alignment: cint): void =
  fcQBoxLayout_insertWidget4(self.h, index, widget.h, stretch, cint(alignment))

proc insertLayout*(self: gen_qboxlayout_types.QBoxLayout, index: cint, layout: gen_qlayout_types.QLayout, stretch: cint): void =
  fcQBoxLayout_insertLayout3(self.h, index, layout.h, stretch)

type QBoxLayoutmetaObjectProc* = proc(self: QBoxLayout): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QBoxLayoutmetacastProc* = proc(self: QBoxLayout, param1: cstring): pointer {.raises: [], gcsafe.}
type QBoxLayoutmetacallProc* = proc(self: QBoxLayout, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QBoxLayoutaddItemProc* = proc(self: QBoxLayout, param1: gen_qlayoutitem_types.QLayoutItem): void {.raises: [], gcsafe.}
type QBoxLayoutspacingProc* = proc(self: QBoxLayout): cint {.raises: [], gcsafe.}
type QBoxLayoutsetSpacingProc* = proc(self: QBoxLayout, spacing: cint): void {.raises: [], gcsafe.}
type QBoxLayoutsizeHintProc* = proc(self: QBoxLayout): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QBoxLayoutminimumSizeProc* = proc(self: QBoxLayout): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QBoxLayoutmaximumSizeProc* = proc(self: QBoxLayout): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QBoxLayouthasHeightForWidthProc* = proc(self: QBoxLayout): bool {.raises: [], gcsafe.}
type QBoxLayoutheightForWidthProc* = proc(self: QBoxLayout, param1: cint): cint {.raises: [], gcsafe.}
type QBoxLayoutminimumHeightForWidthProc* = proc(self: QBoxLayout, param1: cint): cint {.raises: [], gcsafe.}
type QBoxLayoutexpandingDirectionsProc* = proc(self: QBoxLayout): cint {.raises: [], gcsafe.}
type QBoxLayoutinvalidateProc* = proc(self: QBoxLayout): void {.raises: [], gcsafe.}
type QBoxLayoutitemAtProc* = proc(self: QBoxLayout, param1: cint): gen_qlayoutitem_types.QLayoutItem {.raises: [], gcsafe.}
type QBoxLayouttakeAtProc* = proc(self: QBoxLayout, param1: cint): gen_qlayoutitem_types.QLayoutItem {.raises: [], gcsafe.}
type QBoxLayoutcountProc* = proc(self: QBoxLayout): cint {.raises: [], gcsafe.}
type QBoxLayoutsetGeometryProc* = proc(self: QBoxLayout, geometry: gen_qrect_types.QRect): void {.raises: [], gcsafe.}
type QBoxLayoutgeometryProc* = proc(self: QBoxLayout): gen_qrect_types.QRect {.raises: [], gcsafe.}
type QBoxLayoutindexOfProc* = proc(self: QBoxLayout, param1: gen_qwidget_types.QWidget): cint {.raises: [], gcsafe.}
type QBoxLayoutisEmptyProc* = proc(self: QBoxLayout): bool {.raises: [], gcsafe.}
type QBoxLayoutcontrolTypesProc* = proc(self: QBoxLayout): cint {.raises: [], gcsafe.}
type QBoxLayoutreplaceWidgetProc* = proc(self: QBoxLayout, fromVal: gen_qwidget_types.QWidget, to: gen_qwidget_types.QWidget, options: cint): gen_qlayoutitem_types.QLayoutItem {.raises: [], gcsafe.}
type QBoxLayoutlayoutProc* = proc(self: QBoxLayout): gen_qlayout_types.QLayout {.raises: [], gcsafe.}
type QBoxLayoutchildEventProc* = proc(self: QBoxLayout, e: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QBoxLayouteventProc* = proc(self: QBoxLayout, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QBoxLayouteventFilterProc* = proc(self: QBoxLayout, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QBoxLayouttimerEventProc* = proc(self: QBoxLayout, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QBoxLayoutcustomEventProc* = proc(self: QBoxLayout, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QBoxLayoutconnectNotifyProc* = proc(self: QBoxLayout, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QBoxLayoutdisconnectNotifyProc* = proc(self: QBoxLayout, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QBoxLayoutwidgetProc* = proc(self: QBoxLayout): gen_qwidget_types.QWidget {.raises: [], gcsafe.}
type QBoxLayoutspacerItemProc* = proc(self: QBoxLayout): gen_qlayoutitem_types.QSpacerItem {.raises: [], gcsafe.}

type QBoxLayoutVTable* {.inheritable, pure.} = object
  vtbl: cQBoxLayoutVTable
  metaObject*: QBoxLayoutmetaObjectProc
  metacast*: QBoxLayoutmetacastProc
  metacall*: QBoxLayoutmetacallProc
  addItem*: QBoxLayoutaddItemProc
  spacing*: QBoxLayoutspacingProc
  setSpacing*: QBoxLayoutsetSpacingProc
  sizeHint*: QBoxLayoutsizeHintProc
  minimumSize*: QBoxLayoutminimumSizeProc
  maximumSize*: QBoxLayoutmaximumSizeProc
  hasHeightForWidth*: QBoxLayouthasHeightForWidthProc
  heightForWidth*: QBoxLayoutheightForWidthProc
  minimumHeightForWidth*: QBoxLayoutminimumHeightForWidthProc
  expandingDirections*: QBoxLayoutexpandingDirectionsProc
  invalidate*: QBoxLayoutinvalidateProc
  itemAt*: QBoxLayoutitemAtProc
  takeAt*: QBoxLayouttakeAtProc
  count*: QBoxLayoutcountProc
  setGeometry*: QBoxLayoutsetGeometryProc
  geometry*: QBoxLayoutgeometryProc
  indexOf*: QBoxLayoutindexOfProc
  isEmpty*: QBoxLayoutisEmptyProc
  controlTypes*: QBoxLayoutcontrolTypesProc
  replaceWidget*: QBoxLayoutreplaceWidgetProc
  layout*: QBoxLayoutlayoutProc
  childEvent*: QBoxLayoutchildEventProc
  event*: QBoxLayouteventProc
  eventFilter*: QBoxLayouteventFilterProc
  timerEvent*: QBoxLayouttimerEventProc
  customEvent*: QBoxLayoutcustomEventProc
  connectNotify*: QBoxLayoutconnectNotifyProc
  disconnectNotify*: QBoxLayoutdisconnectNotifyProc
  widget*: QBoxLayoutwidgetProc
  spacerItem*: QBoxLayoutspacerItemProc

proc QBoxLayoutmetaObject*(self: gen_qboxlayout_types.QBoxLayout): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQBoxLayout_virtualbase_metaObject(self.h), owned: false)

proc QBoxLayoutmetacast*(self: gen_qboxlayout_types.QBoxLayout, param1: cstring): pointer =
  fcQBoxLayout_virtualbase_metacast(self.h, param1)

proc QBoxLayoutmetacall*(self: gen_qboxlayout_types.QBoxLayout, param1: cint, param2: cint, param3: pointer): cint =
  fcQBoxLayout_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc QBoxLayoutaddItem*(self: gen_qboxlayout_types.QBoxLayout, param1: gen_qlayoutitem_types.QLayoutItem): void =
  fcQBoxLayout_virtualbase_addItem(self.h, param1.h)

proc QBoxLayoutspacing*(self: gen_qboxlayout_types.QBoxLayout): cint =
  fcQBoxLayout_virtualbase_spacing(self.h)

proc QBoxLayoutsetSpacing*(self: gen_qboxlayout_types.QBoxLayout, spacing: cint): void =
  fcQBoxLayout_virtualbase_setSpacing(self.h, spacing)

proc QBoxLayoutsizeHint*(self: gen_qboxlayout_types.QBoxLayout): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQBoxLayout_virtualbase_sizeHint(self.h), owned: true)

proc QBoxLayoutminimumSize*(self: gen_qboxlayout_types.QBoxLayout): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQBoxLayout_virtualbase_minimumSize(self.h), owned: true)

proc QBoxLayoutmaximumSize*(self: gen_qboxlayout_types.QBoxLayout): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQBoxLayout_virtualbase_maximumSize(self.h), owned: true)

proc QBoxLayouthasHeightForWidth*(self: gen_qboxlayout_types.QBoxLayout): bool =
  fcQBoxLayout_virtualbase_hasHeightForWidth(self.h)

proc QBoxLayoutheightForWidth*(self: gen_qboxlayout_types.QBoxLayout, param1: cint): cint =
  fcQBoxLayout_virtualbase_heightForWidth(self.h, param1)

proc QBoxLayoutminimumHeightForWidth*(self: gen_qboxlayout_types.QBoxLayout, param1: cint): cint =
  fcQBoxLayout_virtualbase_minimumHeightForWidth(self.h, param1)

proc QBoxLayoutexpandingDirections*(self: gen_qboxlayout_types.QBoxLayout): cint =
  cint(fcQBoxLayout_virtualbase_expandingDirections(self.h))

proc QBoxLayoutinvalidate*(self: gen_qboxlayout_types.QBoxLayout): void =
  fcQBoxLayout_virtualbase_invalidate(self.h)

proc QBoxLayoutitemAt*(self: gen_qboxlayout_types.QBoxLayout, param1: cint): gen_qlayoutitem_types.QLayoutItem =
  gen_qlayoutitem_types.QLayoutItem(h: fcQBoxLayout_virtualbase_itemAt(self.h, param1), owned: false)

proc QBoxLayouttakeAt*(self: gen_qboxlayout_types.QBoxLayout, param1: cint): gen_qlayoutitem_types.QLayoutItem =
  gen_qlayoutitem_types.QLayoutItem(h: fcQBoxLayout_virtualbase_takeAt(self.h, param1), owned: false)

proc QBoxLayoutcount*(self: gen_qboxlayout_types.QBoxLayout): cint =
  fcQBoxLayout_virtualbase_count(self.h)

proc QBoxLayoutsetGeometry*(self: gen_qboxlayout_types.QBoxLayout, geometry: gen_qrect_types.QRect): void =
  fcQBoxLayout_virtualbase_setGeometry(self.h, geometry.h)

proc QBoxLayoutgeometry*(self: gen_qboxlayout_types.QBoxLayout): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fcQBoxLayout_virtualbase_geometry(self.h), owned: true)

proc QBoxLayoutindexOf*(self: gen_qboxlayout_types.QBoxLayout, param1: gen_qwidget_types.QWidget): cint =
  fcQBoxLayout_virtualbase_indexOf(self.h, param1.h)

proc QBoxLayoutisEmpty*(self: gen_qboxlayout_types.QBoxLayout): bool =
  fcQBoxLayout_virtualbase_isEmpty(self.h)

proc QBoxLayoutcontrolTypes*(self: gen_qboxlayout_types.QBoxLayout): cint =
  cint(fcQBoxLayout_virtualbase_controlTypes(self.h))

proc QBoxLayoutreplaceWidget*(self: gen_qboxlayout_types.QBoxLayout, fromVal: gen_qwidget_types.QWidget, to: gen_qwidget_types.QWidget, options: cint): gen_qlayoutitem_types.QLayoutItem =
  gen_qlayoutitem_types.QLayoutItem(h: fcQBoxLayout_virtualbase_replaceWidget(self.h, fromVal.h, to.h, cint(options)), owned: false)

proc QBoxLayoutlayout*(self: gen_qboxlayout_types.QBoxLayout): gen_qlayout_types.QLayout =
  gen_qlayout_types.QLayout(h: fcQBoxLayout_virtualbase_layout(self.h), owned: false)

proc QBoxLayoutchildEvent*(self: gen_qboxlayout_types.QBoxLayout, e: gen_qcoreevent_types.QChildEvent): void =
  fcQBoxLayout_virtualbase_childEvent(self.h, e.h)

proc QBoxLayoutevent*(self: gen_qboxlayout_types.QBoxLayout, event: gen_qcoreevent_types.QEvent): bool =
  fcQBoxLayout_virtualbase_event(self.h, event.h)

proc QBoxLayouteventFilter*(self: gen_qboxlayout_types.QBoxLayout, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQBoxLayout_virtualbase_eventFilter(self.h, watched.h, event.h)

proc QBoxLayouttimerEvent*(self: gen_qboxlayout_types.QBoxLayout, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQBoxLayout_virtualbase_timerEvent(self.h, event.h)

proc QBoxLayoutcustomEvent*(self: gen_qboxlayout_types.QBoxLayout, event: gen_qcoreevent_types.QEvent): void =
  fcQBoxLayout_virtualbase_customEvent(self.h, event.h)

proc QBoxLayoutconnectNotify*(self: gen_qboxlayout_types.QBoxLayout, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQBoxLayout_virtualbase_connectNotify(self.h, signal.h)

proc QBoxLayoutdisconnectNotify*(self: gen_qboxlayout_types.QBoxLayout, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQBoxLayout_virtualbase_disconnectNotify(self.h, signal.h)

proc QBoxLayoutwidget*(self: gen_qboxlayout_types.QBoxLayout): gen_qwidget_types.QWidget =
  gen_qwidget_types.QWidget(h: fcQBoxLayout_virtualbase_widget(self.h), owned: false)

proc QBoxLayoutspacerItem*(self: gen_qboxlayout_types.QBoxLayout): gen_qlayoutitem_types.QSpacerItem =
  gen_qlayoutitem_types.QSpacerItem(h: fcQBoxLayout_virtualbase_spacerItem(self.h), owned: false)


proc fcQBoxLayout_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QBoxLayoutVTable](fcQBoxLayout_vdata(self))
  let self = QBoxLayout(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQBoxLayout_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QBoxLayoutVTable](fcQBoxLayout_vdata(self))
  let self = QBoxLayout(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc fcQBoxLayout_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QBoxLayoutVTable](fcQBoxLayout_vdata(self))
  let self = QBoxLayout(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc fcQBoxLayout_vtable_callback_addItem(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QBoxLayoutVTable](fcQBoxLayout_vdata(self))
  let self = QBoxLayout(h: self)
  let slotval1 = gen_qlayoutitem_types.QLayoutItem(h: param1, owned: false)
  vtbl[].addItem(self, slotval1)

proc fcQBoxLayout_vtable_callback_spacing(self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QBoxLayoutVTable](fcQBoxLayout_vdata(self))
  let self = QBoxLayout(h: self)
  var virtualReturn = vtbl[].spacing(self)
  virtualReturn

proc fcQBoxLayout_vtable_callback_setSpacing(self: pointer, spacing: cint): void {.cdecl.} =
  let vtbl = cast[ptr QBoxLayoutVTable](fcQBoxLayout_vdata(self))
  let self = QBoxLayout(h: self)
  let slotval1 = spacing
  vtbl[].setSpacing(self, slotval1)

proc fcQBoxLayout_vtable_callback_sizeHint(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QBoxLayoutVTable](fcQBoxLayout_vdata(self))
  let self = QBoxLayout(h: self)
  var virtualReturn = vtbl[].sizeHint(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQBoxLayout_vtable_callback_minimumSize(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QBoxLayoutVTable](fcQBoxLayout_vdata(self))
  let self = QBoxLayout(h: self)
  var virtualReturn = vtbl[].minimumSize(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQBoxLayout_vtable_callback_maximumSize(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QBoxLayoutVTable](fcQBoxLayout_vdata(self))
  let self = QBoxLayout(h: self)
  var virtualReturn = vtbl[].maximumSize(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQBoxLayout_vtable_callback_hasHeightForWidth(self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QBoxLayoutVTable](fcQBoxLayout_vdata(self))
  let self = QBoxLayout(h: self)
  var virtualReturn = vtbl[].hasHeightForWidth(self)
  virtualReturn

proc fcQBoxLayout_vtable_callback_heightForWidth(self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QBoxLayoutVTable](fcQBoxLayout_vdata(self))
  let self = QBoxLayout(h: self)
  let slotval1 = param1
  var virtualReturn = vtbl[].heightForWidth(self, slotval1)
  virtualReturn

proc fcQBoxLayout_vtable_callback_minimumHeightForWidth(self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QBoxLayoutVTable](fcQBoxLayout_vdata(self))
  let self = QBoxLayout(h: self)
  let slotval1 = param1
  var virtualReturn = vtbl[].minimumHeightForWidth(self, slotval1)
  virtualReturn

proc fcQBoxLayout_vtable_callback_expandingDirections(self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QBoxLayoutVTable](fcQBoxLayout_vdata(self))
  let self = QBoxLayout(h: self)
  var virtualReturn = vtbl[].expandingDirections(self)
  cint(virtualReturn)

proc fcQBoxLayout_vtable_callback_invalidate(self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QBoxLayoutVTable](fcQBoxLayout_vdata(self))
  let self = QBoxLayout(h: self)
  vtbl[].invalidate(self)

proc fcQBoxLayout_vtable_callback_itemAt(self: pointer, param1: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QBoxLayoutVTable](fcQBoxLayout_vdata(self))
  let self = QBoxLayout(h: self)
  let slotval1 = param1
  var virtualReturn = vtbl[].itemAt(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQBoxLayout_vtable_callback_takeAt(self: pointer, param1: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QBoxLayoutVTable](fcQBoxLayout_vdata(self))
  let self = QBoxLayout(h: self)
  let slotval1 = param1
  var virtualReturn = vtbl[].takeAt(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQBoxLayout_vtable_callback_count(self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QBoxLayoutVTable](fcQBoxLayout_vdata(self))
  let self = QBoxLayout(h: self)
  var virtualReturn = vtbl[].count(self)
  virtualReturn

proc fcQBoxLayout_vtable_callback_setGeometry(self: pointer, geometry: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QBoxLayoutVTable](fcQBoxLayout_vdata(self))
  let self = QBoxLayout(h: self)
  let slotval1 = gen_qrect_types.QRect(h: geometry, owned: false)
  vtbl[].setGeometry(self, slotval1)

proc fcQBoxLayout_vtable_callback_geometry(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QBoxLayoutVTable](fcQBoxLayout_vdata(self))
  let self = QBoxLayout(h: self)
  var virtualReturn = vtbl[].geometry(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQBoxLayout_vtable_callback_indexOf(self: pointer, param1: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QBoxLayoutVTable](fcQBoxLayout_vdata(self))
  let self = QBoxLayout(h: self)
  let slotval1 = gen_qwidget_types.QWidget(h: param1, owned: false)
  var virtualReturn = vtbl[].indexOf(self, slotval1)
  virtualReturn

proc fcQBoxLayout_vtable_callback_isEmpty(self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QBoxLayoutVTable](fcQBoxLayout_vdata(self))
  let self = QBoxLayout(h: self)
  var virtualReturn = vtbl[].isEmpty(self)
  virtualReturn

proc fcQBoxLayout_vtable_callback_controlTypes(self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QBoxLayoutVTable](fcQBoxLayout_vdata(self))
  let self = QBoxLayout(h: self)
  var virtualReturn = vtbl[].controlTypes(self)
  cint(virtualReturn)

proc fcQBoxLayout_vtable_callback_replaceWidget(self: pointer, fromVal: pointer, to: pointer, options: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QBoxLayoutVTable](fcQBoxLayout_vdata(self))
  let self = QBoxLayout(h: self)
  let slotval1 = gen_qwidget_types.QWidget(h: fromVal, owned: false)
  let slotval2 = gen_qwidget_types.QWidget(h: to, owned: false)
  let slotval3 = cint(options)
  var virtualReturn = vtbl[].replaceWidget(self, slotval1, slotval2, slotval3)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQBoxLayout_vtable_callback_layout(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QBoxLayoutVTable](fcQBoxLayout_vdata(self))
  let self = QBoxLayout(h: self)
  var virtualReturn = vtbl[].layout(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQBoxLayout_vtable_callback_childEvent(self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QBoxLayoutVTable](fcQBoxLayout_vdata(self))
  let self = QBoxLayout(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: e, owned: false)
  vtbl[].childEvent(self, slotval1)

proc fcQBoxLayout_vtable_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QBoxLayoutVTable](fcQBoxLayout_vdata(self))
  let self = QBoxLayout(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc fcQBoxLayout_vtable_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QBoxLayoutVTable](fcQBoxLayout_vdata(self))
  let self = QBoxLayout(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc fcQBoxLayout_vtable_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QBoxLayoutVTable](fcQBoxLayout_vdata(self))
  let self = QBoxLayout(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc fcQBoxLayout_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QBoxLayoutVTable](fcQBoxLayout_vdata(self))
  let self = QBoxLayout(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc fcQBoxLayout_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QBoxLayoutVTable](fcQBoxLayout_vdata(self))
  let self = QBoxLayout(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc fcQBoxLayout_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QBoxLayoutVTable](fcQBoxLayout_vdata(self))
  let self = QBoxLayout(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

proc fcQBoxLayout_vtable_callback_widget(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QBoxLayoutVTable](fcQBoxLayout_vdata(self))
  let self = QBoxLayout(h: self)
  var virtualReturn = vtbl[].widget(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQBoxLayout_vtable_callback_spacerItem(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QBoxLayoutVTable](fcQBoxLayout_vdata(self))
  let self = QBoxLayout(h: self)
  var virtualReturn = vtbl[].spacerItem(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

type VirtualQBoxLayout* {.inheritable.} = ref object of QBoxLayout
  vtbl*: cQBoxLayoutVTable

method metaObject*(self: VirtualQBoxLayout): gen_qobjectdefs_types.QMetaObject {.base.} =
  QBoxLayoutmetaObject(self[])
method metacast*(self: VirtualQBoxLayout, param1: cstring): pointer {.base.} =
  QBoxLayoutmetacast(self[], param1)
method metacall*(self: VirtualQBoxLayout, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QBoxLayoutmetacall(self[], param1, param2, param3)
method addItem*(self: VirtualQBoxLayout, param1: gen_qlayoutitem_types.QLayoutItem): void {.base.} =
  QBoxLayoutaddItem(self[], param1)
method spacing*(self: VirtualQBoxLayout): cint {.base.} =
  QBoxLayoutspacing(self[])
method setSpacing*(self: VirtualQBoxLayout, spacing: cint): void {.base.} =
  QBoxLayoutsetSpacing(self[], spacing)
method sizeHint*(self: VirtualQBoxLayout): gen_qsize_types.QSize {.base.} =
  QBoxLayoutsizeHint(self[])
method minimumSize*(self: VirtualQBoxLayout): gen_qsize_types.QSize {.base.} =
  QBoxLayoutminimumSize(self[])
method maximumSize*(self: VirtualQBoxLayout): gen_qsize_types.QSize {.base.} =
  QBoxLayoutmaximumSize(self[])
method hasHeightForWidth*(self: VirtualQBoxLayout): bool {.base.} =
  QBoxLayouthasHeightForWidth(self[])
method heightForWidth*(self: VirtualQBoxLayout, param1: cint): cint {.base.} =
  QBoxLayoutheightForWidth(self[], param1)
method minimumHeightForWidth*(self: VirtualQBoxLayout, param1: cint): cint {.base.} =
  QBoxLayoutminimumHeightForWidth(self[], param1)
method expandingDirections*(self: VirtualQBoxLayout): cint {.base.} =
  QBoxLayoutexpandingDirections(self[])
method invalidate*(self: VirtualQBoxLayout): void {.base.} =
  QBoxLayoutinvalidate(self[])
method itemAt*(self: VirtualQBoxLayout, param1: cint): gen_qlayoutitem_types.QLayoutItem {.base.} =
  QBoxLayoutitemAt(self[], param1)
method takeAt*(self: VirtualQBoxLayout, param1: cint): gen_qlayoutitem_types.QLayoutItem {.base.} =
  QBoxLayouttakeAt(self[], param1)
method count*(self: VirtualQBoxLayout): cint {.base.} =
  QBoxLayoutcount(self[])
method setGeometry*(self: VirtualQBoxLayout, geometry: gen_qrect_types.QRect): void {.base.} =
  QBoxLayoutsetGeometry(self[], geometry)
method geometry*(self: VirtualQBoxLayout): gen_qrect_types.QRect {.base.} =
  QBoxLayoutgeometry(self[])
method indexOf*(self: VirtualQBoxLayout, param1: gen_qwidget_types.QWidget): cint {.base.} =
  QBoxLayoutindexOf(self[], param1)
method isEmpty*(self: VirtualQBoxLayout): bool {.base.} =
  QBoxLayoutisEmpty(self[])
method controlTypes*(self: VirtualQBoxLayout): cint {.base.} =
  QBoxLayoutcontrolTypes(self[])
method replaceWidget*(self: VirtualQBoxLayout, fromVal: gen_qwidget_types.QWidget, to: gen_qwidget_types.QWidget, options: cint): gen_qlayoutitem_types.QLayoutItem {.base.} =
  QBoxLayoutreplaceWidget(self[], fromVal, to, options)
method layout*(self: VirtualQBoxLayout): gen_qlayout_types.QLayout {.base.} =
  QBoxLayoutlayout(self[])
method childEvent*(self: VirtualQBoxLayout, e: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QBoxLayoutchildEvent(self[], e)
method event*(self: VirtualQBoxLayout, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QBoxLayoutevent(self[], event)
method eventFilter*(self: VirtualQBoxLayout, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QBoxLayouteventFilter(self[], watched, event)
method timerEvent*(self: VirtualQBoxLayout, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QBoxLayouttimerEvent(self[], event)
method customEvent*(self: VirtualQBoxLayout, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QBoxLayoutcustomEvent(self[], event)
method connectNotify*(self: VirtualQBoxLayout, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QBoxLayoutconnectNotify(self[], signal)
method disconnectNotify*(self: VirtualQBoxLayout, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QBoxLayoutdisconnectNotify(self[], signal)
method widget*(self: VirtualQBoxLayout): gen_qwidget_types.QWidget {.base.} =
  QBoxLayoutwidget(self[])
method spacerItem*(self: VirtualQBoxLayout): gen_qlayoutitem_types.QSpacerItem {.base.} =
  QBoxLayoutspacerItem(self[])

proc fcQBoxLayout_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQBoxLayout](fcQBoxLayout_vdata(self))
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQBoxLayout_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQBoxLayout](fcQBoxLayout_vdata(self))
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

proc fcQBoxLayout_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQBoxLayout](fcQBoxLayout_vdata(self))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

proc fcQBoxLayout_method_callback_addItem(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQBoxLayout](fcQBoxLayout_vdata(self))
  let slotval1 = gen_qlayoutitem_types.QLayoutItem(h: param1, owned: false)
  inst.addItem(slotval1)

proc fcQBoxLayout_method_callback_spacing(self: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQBoxLayout](fcQBoxLayout_vdata(self))
  var virtualReturn = inst.spacing()
  virtualReturn

proc fcQBoxLayout_method_callback_setSpacing(self: pointer, spacing: cint): void {.cdecl.} =
  let inst = cast[VirtualQBoxLayout](fcQBoxLayout_vdata(self))
  let slotval1 = spacing
  inst.setSpacing(slotval1)

proc fcQBoxLayout_method_callback_sizeHint(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQBoxLayout](fcQBoxLayout_vdata(self))
  var virtualReturn = inst.sizeHint()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQBoxLayout_method_callback_minimumSize(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQBoxLayout](fcQBoxLayout_vdata(self))
  var virtualReturn = inst.minimumSize()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQBoxLayout_method_callback_maximumSize(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQBoxLayout](fcQBoxLayout_vdata(self))
  var virtualReturn = inst.maximumSize()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQBoxLayout_method_callback_hasHeightForWidth(self: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQBoxLayout](fcQBoxLayout_vdata(self))
  var virtualReturn = inst.hasHeightForWidth()
  virtualReturn

proc fcQBoxLayout_method_callback_heightForWidth(self: pointer, param1: cint): cint {.cdecl.} =
  let inst = cast[VirtualQBoxLayout](fcQBoxLayout_vdata(self))
  let slotval1 = param1
  var virtualReturn = inst.heightForWidth(slotval1)
  virtualReturn

proc fcQBoxLayout_method_callback_minimumHeightForWidth(self: pointer, param1: cint): cint {.cdecl.} =
  let inst = cast[VirtualQBoxLayout](fcQBoxLayout_vdata(self))
  let slotval1 = param1
  var virtualReturn = inst.minimumHeightForWidth(slotval1)
  virtualReturn

proc fcQBoxLayout_method_callback_expandingDirections(self: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQBoxLayout](fcQBoxLayout_vdata(self))
  var virtualReturn = inst.expandingDirections()
  cint(virtualReturn)

proc fcQBoxLayout_method_callback_invalidate(self: pointer): void {.cdecl.} =
  let inst = cast[VirtualQBoxLayout](fcQBoxLayout_vdata(self))
  inst.invalidate()

proc fcQBoxLayout_method_callback_itemAt(self: pointer, param1: cint): pointer {.cdecl.} =
  let inst = cast[VirtualQBoxLayout](fcQBoxLayout_vdata(self))
  let slotval1 = param1
  var virtualReturn = inst.itemAt(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQBoxLayout_method_callback_takeAt(self: pointer, param1: cint): pointer {.cdecl.} =
  let inst = cast[VirtualQBoxLayout](fcQBoxLayout_vdata(self))
  let slotval1 = param1
  var virtualReturn = inst.takeAt(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQBoxLayout_method_callback_count(self: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQBoxLayout](fcQBoxLayout_vdata(self))
  var virtualReturn = inst.count()
  virtualReturn

proc fcQBoxLayout_method_callback_setGeometry(self: pointer, geometry: pointer): void {.cdecl.} =
  let inst = cast[VirtualQBoxLayout](fcQBoxLayout_vdata(self))
  let slotval1 = gen_qrect_types.QRect(h: geometry, owned: false)
  inst.setGeometry(slotval1)

proc fcQBoxLayout_method_callback_geometry(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQBoxLayout](fcQBoxLayout_vdata(self))
  var virtualReturn = inst.geometry()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQBoxLayout_method_callback_indexOf(self: pointer, param1: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQBoxLayout](fcQBoxLayout_vdata(self))
  let slotval1 = gen_qwidget_types.QWidget(h: param1, owned: false)
  var virtualReturn = inst.indexOf(slotval1)
  virtualReturn

proc fcQBoxLayout_method_callback_isEmpty(self: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQBoxLayout](fcQBoxLayout_vdata(self))
  var virtualReturn = inst.isEmpty()
  virtualReturn

proc fcQBoxLayout_method_callback_controlTypes(self: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQBoxLayout](fcQBoxLayout_vdata(self))
  var virtualReturn = inst.controlTypes()
  cint(virtualReturn)

proc fcQBoxLayout_method_callback_replaceWidget(self: pointer, fromVal: pointer, to: pointer, options: cint): pointer {.cdecl.} =
  let inst = cast[VirtualQBoxLayout](fcQBoxLayout_vdata(self))
  let slotval1 = gen_qwidget_types.QWidget(h: fromVal, owned: false)
  let slotval2 = gen_qwidget_types.QWidget(h: to, owned: false)
  let slotval3 = cint(options)
  var virtualReturn = inst.replaceWidget(slotval1, slotval2, slotval3)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQBoxLayout_method_callback_layout(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQBoxLayout](fcQBoxLayout_vdata(self))
  var virtualReturn = inst.layout()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQBoxLayout_method_callback_childEvent(self: pointer, e: pointer): void {.cdecl.} =
  let inst = cast[VirtualQBoxLayout](fcQBoxLayout_vdata(self))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: e, owned: false)
  inst.childEvent(slotval1)

proc fcQBoxLayout_method_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQBoxLayout](fcQBoxLayout_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

proc fcQBoxLayout_method_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQBoxLayout](fcQBoxLayout_vdata(self))
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

proc fcQBoxLayout_method_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQBoxLayout](fcQBoxLayout_vdata(self))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  inst.timerEvent(slotval1)

proc fcQBoxLayout_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQBoxLayout](fcQBoxLayout_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)

proc fcQBoxLayout_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQBoxLayout](fcQBoxLayout_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

proc fcQBoxLayout_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQBoxLayout](fcQBoxLayout_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.disconnectNotify(slotval1)

proc fcQBoxLayout_method_callback_widget(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQBoxLayout](fcQBoxLayout_vdata(self))
  var virtualReturn = inst.widget()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQBoxLayout_method_callback_spacerItem(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQBoxLayout](fcQBoxLayout_vdata(self))
  var virtualReturn = inst.spacerItem()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h


proc widgetEvent*(self: gen_qboxlayout_types.QBoxLayout, param1: gen_qcoreevent_types.QEvent): void =
  fcQBoxLayout_protectedbase_widgetEvent(self.h, param1.h)

proc addChildLayout*(self: gen_qboxlayout_types.QBoxLayout, l: gen_qlayout_types.QLayout): void =
  fcQBoxLayout_protectedbase_addChildLayout(self.h, l.h)

proc addChildWidget*(self: gen_qboxlayout_types.QBoxLayout, w: gen_qwidget_types.QWidget): void =
  fcQBoxLayout_protectedbase_addChildWidget(self.h, w.h)

proc adoptLayout*(self: gen_qboxlayout_types.QBoxLayout, layout: gen_qlayout_types.QLayout): bool =
  fcQBoxLayout_protectedbase_adoptLayout(self.h, layout.h)

proc alignmentRect*(self: gen_qboxlayout_types.QBoxLayout, param1: gen_qrect_types.QRect): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fcQBoxLayout_protectedbase_alignmentRect(self.h, param1.h), owned: true)

proc sender*(self: gen_qboxlayout_types.QBoxLayout): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQBoxLayout_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qboxlayout_types.QBoxLayout): cint =
  fcQBoxLayout_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qboxlayout_types.QBoxLayout, signal: cstring): cint =
  fcQBoxLayout_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qboxlayout_types.QBoxLayout, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQBoxLayout_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qboxlayout_types.QBoxLayout,
    param1: cint,
    vtbl: ref QBoxLayoutVTable = nil): gen_qboxlayout_types.QBoxLayout =
  let vtbl = if vtbl == nil: new QBoxLayoutVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QBoxLayoutVTable](fcQBoxLayout_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQBoxLayout_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQBoxLayout_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQBoxLayout_vtable_callback_metacall
  if not isNil(vtbl[].addItem):
    vtbl[].vtbl.addItem = fcQBoxLayout_vtable_callback_addItem
  if not isNil(vtbl[].spacing):
    vtbl[].vtbl.spacing = fcQBoxLayout_vtable_callback_spacing
  if not isNil(vtbl[].setSpacing):
    vtbl[].vtbl.setSpacing = fcQBoxLayout_vtable_callback_setSpacing
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = fcQBoxLayout_vtable_callback_sizeHint
  if not isNil(vtbl[].minimumSize):
    vtbl[].vtbl.minimumSize = fcQBoxLayout_vtable_callback_minimumSize
  if not isNil(vtbl[].maximumSize):
    vtbl[].vtbl.maximumSize = fcQBoxLayout_vtable_callback_maximumSize
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = fcQBoxLayout_vtable_callback_hasHeightForWidth
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = fcQBoxLayout_vtable_callback_heightForWidth
  if not isNil(vtbl[].minimumHeightForWidth):
    vtbl[].vtbl.minimumHeightForWidth = fcQBoxLayout_vtable_callback_minimumHeightForWidth
  if not isNil(vtbl[].expandingDirections):
    vtbl[].vtbl.expandingDirections = fcQBoxLayout_vtable_callback_expandingDirections
  if not isNil(vtbl[].invalidate):
    vtbl[].vtbl.invalidate = fcQBoxLayout_vtable_callback_invalidate
  if not isNil(vtbl[].itemAt):
    vtbl[].vtbl.itemAt = fcQBoxLayout_vtable_callback_itemAt
  if not isNil(vtbl[].takeAt):
    vtbl[].vtbl.takeAt = fcQBoxLayout_vtable_callback_takeAt
  if not isNil(vtbl[].count):
    vtbl[].vtbl.count = fcQBoxLayout_vtable_callback_count
  if not isNil(vtbl[].setGeometry):
    vtbl[].vtbl.setGeometry = fcQBoxLayout_vtable_callback_setGeometry
  if not isNil(vtbl[].geometry):
    vtbl[].vtbl.geometry = fcQBoxLayout_vtable_callback_geometry
  if not isNil(vtbl[].indexOf):
    vtbl[].vtbl.indexOf = fcQBoxLayout_vtable_callback_indexOf
  if not isNil(vtbl[].isEmpty):
    vtbl[].vtbl.isEmpty = fcQBoxLayout_vtable_callback_isEmpty
  if not isNil(vtbl[].controlTypes):
    vtbl[].vtbl.controlTypes = fcQBoxLayout_vtable_callback_controlTypes
  if not isNil(vtbl[].replaceWidget):
    vtbl[].vtbl.replaceWidget = fcQBoxLayout_vtable_callback_replaceWidget
  if not isNil(vtbl[].layout):
    vtbl[].vtbl.layout = fcQBoxLayout_vtable_callback_layout
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQBoxLayout_vtable_callback_childEvent
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQBoxLayout_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQBoxLayout_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQBoxLayout_vtable_callback_timerEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQBoxLayout_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQBoxLayout_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQBoxLayout_vtable_callback_disconnectNotify
  if not isNil(vtbl[].widget):
    vtbl[].vtbl.widget = fcQBoxLayout_vtable_callback_widget
  if not isNil(vtbl[].spacerItem):
    vtbl[].vtbl.spacerItem = fcQBoxLayout_vtable_callback_spacerItem
  gen_qboxlayout_types.QBoxLayout(h: fcQBoxLayout_new(addr(vtbl[].vtbl), addr(vtbl[]), cint(param1)), owned: true)

proc create*(T: type gen_qboxlayout_types.QBoxLayout,
    param1: cint, parent: gen_qwidget_types.QWidget,
    vtbl: ref QBoxLayoutVTable = nil): gen_qboxlayout_types.QBoxLayout =
  let vtbl = if vtbl == nil: new QBoxLayoutVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QBoxLayoutVTable](fcQBoxLayout_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQBoxLayout_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQBoxLayout_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQBoxLayout_vtable_callback_metacall
  if not isNil(vtbl[].addItem):
    vtbl[].vtbl.addItem = fcQBoxLayout_vtable_callback_addItem
  if not isNil(vtbl[].spacing):
    vtbl[].vtbl.spacing = fcQBoxLayout_vtable_callback_spacing
  if not isNil(vtbl[].setSpacing):
    vtbl[].vtbl.setSpacing = fcQBoxLayout_vtable_callback_setSpacing
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = fcQBoxLayout_vtable_callback_sizeHint
  if not isNil(vtbl[].minimumSize):
    vtbl[].vtbl.minimumSize = fcQBoxLayout_vtable_callback_minimumSize
  if not isNil(vtbl[].maximumSize):
    vtbl[].vtbl.maximumSize = fcQBoxLayout_vtable_callback_maximumSize
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = fcQBoxLayout_vtable_callback_hasHeightForWidth
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = fcQBoxLayout_vtable_callback_heightForWidth
  if not isNil(vtbl[].minimumHeightForWidth):
    vtbl[].vtbl.minimumHeightForWidth = fcQBoxLayout_vtable_callback_minimumHeightForWidth
  if not isNil(vtbl[].expandingDirections):
    vtbl[].vtbl.expandingDirections = fcQBoxLayout_vtable_callback_expandingDirections
  if not isNil(vtbl[].invalidate):
    vtbl[].vtbl.invalidate = fcQBoxLayout_vtable_callback_invalidate
  if not isNil(vtbl[].itemAt):
    vtbl[].vtbl.itemAt = fcQBoxLayout_vtable_callback_itemAt
  if not isNil(vtbl[].takeAt):
    vtbl[].vtbl.takeAt = fcQBoxLayout_vtable_callback_takeAt
  if not isNil(vtbl[].count):
    vtbl[].vtbl.count = fcQBoxLayout_vtable_callback_count
  if not isNil(vtbl[].setGeometry):
    vtbl[].vtbl.setGeometry = fcQBoxLayout_vtable_callback_setGeometry
  if not isNil(vtbl[].geometry):
    vtbl[].vtbl.geometry = fcQBoxLayout_vtable_callback_geometry
  if not isNil(vtbl[].indexOf):
    vtbl[].vtbl.indexOf = fcQBoxLayout_vtable_callback_indexOf
  if not isNil(vtbl[].isEmpty):
    vtbl[].vtbl.isEmpty = fcQBoxLayout_vtable_callback_isEmpty
  if not isNil(vtbl[].controlTypes):
    vtbl[].vtbl.controlTypes = fcQBoxLayout_vtable_callback_controlTypes
  if not isNil(vtbl[].replaceWidget):
    vtbl[].vtbl.replaceWidget = fcQBoxLayout_vtable_callback_replaceWidget
  if not isNil(vtbl[].layout):
    vtbl[].vtbl.layout = fcQBoxLayout_vtable_callback_layout
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQBoxLayout_vtable_callback_childEvent
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQBoxLayout_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQBoxLayout_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQBoxLayout_vtable_callback_timerEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQBoxLayout_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQBoxLayout_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQBoxLayout_vtable_callback_disconnectNotify
  if not isNil(vtbl[].widget):
    vtbl[].vtbl.widget = fcQBoxLayout_vtable_callback_widget
  if not isNil(vtbl[].spacerItem):
    vtbl[].vtbl.spacerItem = fcQBoxLayout_vtable_callback_spacerItem
  gen_qboxlayout_types.QBoxLayout(h: fcQBoxLayout_new2(addr(vtbl[].vtbl), addr(vtbl[]), cint(param1), parent.h), owned: true)

const cQBoxLayout_mvtbl = cQBoxLayoutVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQBoxLayout()[])](self.fcQBoxLayout_vdata())
    inst[].h = nil
    inst[].owned = false,

  metaObject: fcQBoxLayout_method_callback_metaObject,
  metacast: fcQBoxLayout_method_callback_metacast,
  metacall: fcQBoxLayout_method_callback_metacall,
  addItem: fcQBoxLayout_method_callback_addItem,
  spacing: fcQBoxLayout_method_callback_spacing,
  setSpacing: fcQBoxLayout_method_callback_setSpacing,
  sizeHint: fcQBoxLayout_method_callback_sizeHint,
  minimumSize: fcQBoxLayout_method_callback_minimumSize,
  maximumSize: fcQBoxLayout_method_callback_maximumSize,
  hasHeightForWidth: fcQBoxLayout_method_callback_hasHeightForWidth,
  heightForWidth: fcQBoxLayout_method_callback_heightForWidth,
  minimumHeightForWidth: fcQBoxLayout_method_callback_minimumHeightForWidth,
  expandingDirections: fcQBoxLayout_method_callback_expandingDirections,
  invalidate: fcQBoxLayout_method_callback_invalidate,
  itemAt: fcQBoxLayout_method_callback_itemAt,
  takeAt: fcQBoxLayout_method_callback_takeAt,
  count: fcQBoxLayout_method_callback_count,
  setGeometry: fcQBoxLayout_method_callback_setGeometry,
  geometry: fcQBoxLayout_method_callback_geometry,
  indexOf: fcQBoxLayout_method_callback_indexOf,
  isEmpty: fcQBoxLayout_method_callback_isEmpty,
  controlTypes: fcQBoxLayout_method_callback_controlTypes,
  replaceWidget: fcQBoxLayout_method_callback_replaceWidget,
  layout: fcQBoxLayout_method_callback_layout,
  childEvent: fcQBoxLayout_method_callback_childEvent,
  event: fcQBoxLayout_method_callback_event,
  eventFilter: fcQBoxLayout_method_callback_eventFilter,
  timerEvent: fcQBoxLayout_method_callback_timerEvent,
  customEvent: fcQBoxLayout_method_callback_customEvent,
  connectNotify: fcQBoxLayout_method_callback_connectNotify,
  disconnectNotify: fcQBoxLayout_method_callback_disconnectNotify,
  widget: fcQBoxLayout_method_callback_widget,
  spacerItem: fcQBoxLayout_method_callback_spacerItem,
)
proc create*(T: type gen_qboxlayout_types.QBoxLayout,
    param1: cint,
    inst: VirtualQBoxLayout) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQBoxLayout_new(addr(cQBoxLayout_mvtbl), addr(inst[]), cint(param1))
  inst[].owned = true

proc create*(T: type gen_qboxlayout_types.QBoxLayout,
    param1: cint, parent: gen_qwidget_types.QWidget,
    inst: VirtualQBoxLayout) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQBoxLayout_new2(addr(cQBoxLayout_mvtbl), addr(inst[]), cint(param1), parent.h)
  inst[].owned = true

proc staticMetaObject*(_: type gen_qboxlayout_types.QBoxLayout): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQBoxLayout_staticMetaObject())
proc metaObject*(self: gen_qboxlayout_types.QHBoxLayout): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQHBoxLayout_metaObject(self.h), owned: false)

proc metacast*(self: gen_qboxlayout_types.QHBoxLayout, param1: cstring): pointer =
  fcQHBoxLayout_metacast(self.h, param1)

proc metacall*(self: gen_qboxlayout_types.QHBoxLayout, param1: cint, param2: cint, param3: pointer): cint =
  fcQHBoxLayout_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qboxlayout_types.QHBoxLayout, s: cstring): string =
  let v_ms = fcQHBoxLayout_tr(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qboxlayout_types.QHBoxLayout, s: cstring, c: cstring): string =
  let v_ms = fcQHBoxLayout_tr2(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qboxlayout_types.QHBoxLayout, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQHBoxLayout_tr3(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

type QHBoxLayoutmetaObjectProc* = proc(self: QHBoxLayout): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QHBoxLayoutmetacastProc* = proc(self: QHBoxLayout, param1: cstring): pointer {.raises: [], gcsafe.}
type QHBoxLayoutmetacallProc* = proc(self: QHBoxLayout, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QHBoxLayoutaddItemProc* = proc(self: QHBoxLayout, param1: gen_qlayoutitem_types.QLayoutItem): void {.raises: [], gcsafe.}
type QHBoxLayoutspacingProc* = proc(self: QHBoxLayout): cint {.raises: [], gcsafe.}
type QHBoxLayoutsetSpacingProc* = proc(self: QHBoxLayout, spacing: cint): void {.raises: [], gcsafe.}
type QHBoxLayoutsizeHintProc* = proc(self: QHBoxLayout): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QHBoxLayoutminimumSizeProc* = proc(self: QHBoxLayout): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QHBoxLayoutmaximumSizeProc* = proc(self: QHBoxLayout): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QHBoxLayouthasHeightForWidthProc* = proc(self: QHBoxLayout): bool {.raises: [], gcsafe.}
type QHBoxLayoutheightForWidthProc* = proc(self: QHBoxLayout, param1: cint): cint {.raises: [], gcsafe.}
type QHBoxLayoutminimumHeightForWidthProc* = proc(self: QHBoxLayout, param1: cint): cint {.raises: [], gcsafe.}
type QHBoxLayoutexpandingDirectionsProc* = proc(self: QHBoxLayout): cint {.raises: [], gcsafe.}
type QHBoxLayoutinvalidateProc* = proc(self: QHBoxLayout): void {.raises: [], gcsafe.}
type QHBoxLayoutitemAtProc* = proc(self: QHBoxLayout, param1: cint): gen_qlayoutitem_types.QLayoutItem {.raises: [], gcsafe.}
type QHBoxLayouttakeAtProc* = proc(self: QHBoxLayout, param1: cint): gen_qlayoutitem_types.QLayoutItem {.raises: [], gcsafe.}
type QHBoxLayoutcountProc* = proc(self: QHBoxLayout): cint {.raises: [], gcsafe.}
type QHBoxLayoutsetGeometryProc* = proc(self: QHBoxLayout, geometry: gen_qrect_types.QRect): void {.raises: [], gcsafe.}
type QHBoxLayoutgeometryProc* = proc(self: QHBoxLayout): gen_qrect_types.QRect {.raises: [], gcsafe.}
type QHBoxLayoutindexOfProc* = proc(self: QHBoxLayout, param1: gen_qwidget_types.QWidget): cint {.raises: [], gcsafe.}
type QHBoxLayoutisEmptyProc* = proc(self: QHBoxLayout): bool {.raises: [], gcsafe.}
type QHBoxLayoutcontrolTypesProc* = proc(self: QHBoxLayout): cint {.raises: [], gcsafe.}
type QHBoxLayoutreplaceWidgetProc* = proc(self: QHBoxLayout, fromVal: gen_qwidget_types.QWidget, to: gen_qwidget_types.QWidget, options: cint): gen_qlayoutitem_types.QLayoutItem {.raises: [], gcsafe.}
type QHBoxLayoutlayoutProc* = proc(self: QHBoxLayout): gen_qlayout_types.QLayout {.raises: [], gcsafe.}
type QHBoxLayoutchildEventProc* = proc(self: QHBoxLayout, e: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QHBoxLayouteventProc* = proc(self: QHBoxLayout, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QHBoxLayouteventFilterProc* = proc(self: QHBoxLayout, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QHBoxLayouttimerEventProc* = proc(self: QHBoxLayout, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QHBoxLayoutcustomEventProc* = proc(self: QHBoxLayout, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QHBoxLayoutconnectNotifyProc* = proc(self: QHBoxLayout, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QHBoxLayoutdisconnectNotifyProc* = proc(self: QHBoxLayout, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QHBoxLayoutwidgetProc* = proc(self: QHBoxLayout): gen_qwidget_types.QWidget {.raises: [], gcsafe.}
type QHBoxLayoutspacerItemProc* = proc(self: QHBoxLayout): gen_qlayoutitem_types.QSpacerItem {.raises: [], gcsafe.}

type QHBoxLayoutVTable* {.inheritable, pure.} = object
  vtbl: cQHBoxLayoutVTable
  metaObject*: QHBoxLayoutmetaObjectProc
  metacast*: QHBoxLayoutmetacastProc
  metacall*: QHBoxLayoutmetacallProc
  addItem*: QHBoxLayoutaddItemProc
  spacing*: QHBoxLayoutspacingProc
  setSpacing*: QHBoxLayoutsetSpacingProc
  sizeHint*: QHBoxLayoutsizeHintProc
  minimumSize*: QHBoxLayoutminimumSizeProc
  maximumSize*: QHBoxLayoutmaximumSizeProc
  hasHeightForWidth*: QHBoxLayouthasHeightForWidthProc
  heightForWidth*: QHBoxLayoutheightForWidthProc
  minimumHeightForWidth*: QHBoxLayoutminimumHeightForWidthProc
  expandingDirections*: QHBoxLayoutexpandingDirectionsProc
  invalidate*: QHBoxLayoutinvalidateProc
  itemAt*: QHBoxLayoutitemAtProc
  takeAt*: QHBoxLayouttakeAtProc
  count*: QHBoxLayoutcountProc
  setGeometry*: QHBoxLayoutsetGeometryProc
  geometry*: QHBoxLayoutgeometryProc
  indexOf*: QHBoxLayoutindexOfProc
  isEmpty*: QHBoxLayoutisEmptyProc
  controlTypes*: QHBoxLayoutcontrolTypesProc
  replaceWidget*: QHBoxLayoutreplaceWidgetProc
  layout*: QHBoxLayoutlayoutProc
  childEvent*: QHBoxLayoutchildEventProc
  event*: QHBoxLayouteventProc
  eventFilter*: QHBoxLayouteventFilterProc
  timerEvent*: QHBoxLayouttimerEventProc
  customEvent*: QHBoxLayoutcustomEventProc
  connectNotify*: QHBoxLayoutconnectNotifyProc
  disconnectNotify*: QHBoxLayoutdisconnectNotifyProc
  widget*: QHBoxLayoutwidgetProc
  spacerItem*: QHBoxLayoutspacerItemProc

proc QHBoxLayoutmetaObject*(self: gen_qboxlayout_types.QHBoxLayout): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQHBoxLayout_virtualbase_metaObject(self.h), owned: false)

proc QHBoxLayoutmetacast*(self: gen_qboxlayout_types.QHBoxLayout, param1: cstring): pointer =
  fcQHBoxLayout_virtualbase_metacast(self.h, param1)

proc QHBoxLayoutmetacall*(self: gen_qboxlayout_types.QHBoxLayout, param1: cint, param2: cint, param3: pointer): cint =
  fcQHBoxLayout_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc QHBoxLayoutaddItem*(self: gen_qboxlayout_types.QHBoxLayout, param1: gen_qlayoutitem_types.QLayoutItem): void =
  fcQHBoxLayout_virtualbase_addItem(self.h, param1.h)

proc QHBoxLayoutspacing*(self: gen_qboxlayout_types.QHBoxLayout): cint =
  fcQHBoxLayout_virtualbase_spacing(self.h)

proc QHBoxLayoutsetSpacing*(self: gen_qboxlayout_types.QHBoxLayout, spacing: cint): void =
  fcQHBoxLayout_virtualbase_setSpacing(self.h, spacing)

proc QHBoxLayoutsizeHint*(self: gen_qboxlayout_types.QHBoxLayout): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQHBoxLayout_virtualbase_sizeHint(self.h), owned: true)

proc QHBoxLayoutminimumSize*(self: gen_qboxlayout_types.QHBoxLayout): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQHBoxLayout_virtualbase_minimumSize(self.h), owned: true)

proc QHBoxLayoutmaximumSize*(self: gen_qboxlayout_types.QHBoxLayout): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQHBoxLayout_virtualbase_maximumSize(self.h), owned: true)

proc QHBoxLayouthasHeightForWidth*(self: gen_qboxlayout_types.QHBoxLayout): bool =
  fcQHBoxLayout_virtualbase_hasHeightForWidth(self.h)

proc QHBoxLayoutheightForWidth*(self: gen_qboxlayout_types.QHBoxLayout, param1: cint): cint =
  fcQHBoxLayout_virtualbase_heightForWidth(self.h, param1)

proc QHBoxLayoutminimumHeightForWidth*(self: gen_qboxlayout_types.QHBoxLayout, param1: cint): cint =
  fcQHBoxLayout_virtualbase_minimumHeightForWidth(self.h, param1)

proc QHBoxLayoutexpandingDirections*(self: gen_qboxlayout_types.QHBoxLayout): cint =
  cint(fcQHBoxLayout_virtualbase_expandingDirections(self.h))

proc QHBoxLayoutinvalidate*(self: gen_qboxlayout_types.QHBoxLayout): void =
  fcQHBoxLayout_virtualbase_invalidate(self.h)

proc QHBoxLayoutitemAt*(self: gen_qboxlayout_types.QHBoxLayout, param1: cint): gen_qlayoutitem_types.QLayoutItem =
  gen_qlayoutitem_types.QLayoutItem(h: fcQHBoxLayout_virtualbase_itemAt(self.h, param1), owned: false)

proc QHBoxLayouttakeAt*(self: gen_qboxlayout_types.QHBoxLayout, param1: cint): gen_qlayoutitem_types.QLayoutItem =
  gen_qlayoutitem_types.QLayoutItem(h: fcQHBoxLayout_virtualbase_takeAt(self.h, param1), owned: false)

proc QHBoxLayoutcount*(self: gen_qboxlayout_types.QHBoxLayout): cint =
  fcQHBoxLayout_virtualbase_count(self.h)

proc QHBoxLayoutsetGeometry*(self: gen_qboxlayout_types.QHBoxLayout, geometry: gen_qrect_types.QRect): void =
  fcQHBoxLayout_virtualbase_setGeometry(self.h, geometry.h)

proc QHBoxLayoutgeometry*(self: gen_qboxlayout_types.QHBoxLayout): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fcQHBoxLayout_virtualbase_geometry(self.h), owned: true)

proc QHBoxLayoutindexOf*(self: gen_qboxlayout_types.QHBoxLayout, param1: gen_qwidget_types.QWidget): cint =
  fcQHBoxLayout_virtualbase_indexOf(self.h, param1.h)

proc QHBoxLayoutisEmpty*(self: gen_qboxlayout_types.QHBoxLayout): bool =
  fcQHBoxLayout_virtualbase_isEmpty(self.h)

proc QHBoxLayoutcontrolTypes*(self: gen_qboxlayout_types.QHBoxLayout): cint =
  cint(fcQHBoxLayout_virtualbase_controlTypes(self.h))

proc QHBoxLayoutreplaceWidget*(self: gen_qboxlayout_types.QHBoxLayout, fromVal: gen_qwidget_types.QWidget, to: gen_qwidget_types.QWidget, options: cint): gen_qlayoutitem_types.QLayoutItem =
  gen_qlayoutitem_types.QLayoutItem(h: fcQHBoxLayout_virtualbase_replaceWidget(self.h, fromVal.h, to.h, cint(options)), owned: false)

proc QHBoxLayoutlayout*(self: gen_qboxlayout_types.QHBoxLayout): gen_qlayout_types.QLayout =
  gen_qlayout_types.QLayout(h: fcQHBoxLayout_virtualbase_layout(self.h), owned: false)

proc QHBoxLayoutchildEvent*(self: gen_qboxlayout_types.QHBoxLayout, e: gen_qcoreevent_types.QChildEvent): void =
  fcQHBoxLayout_virtualbase_childEvent(self.h, e.h)

proc QHBoxLayoutevent*(self: gen_qboxlayout_types.QHBoxLayout, event: gen_qcoreevent_types.QEvent): bool =
  fcQHBoxLayout_virtualbase_event(self.h, event.h)

proc QHBoxLayouteventFilter*(self: gen_qboxlayout_types.QHBoxLayout, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQHBoxLayout_virtualbase_eventFilter(self.h, watched.h, event.h)

proc QHBoxLayouttimerEvent*(self: gen_qboxlayout_types.QHBoxLayout, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQHBoxLayout_virtualbase_timerEvent(self.h, event.h)

proc QHBoxLayoutcustomEvent*(self: gen_qboxlayout_types.QHBoxLayout, event: gen_qcoreevent_types.QEvent): void =
  fcQHBoxLayout_virtualbase_customEvent(self.h, event.h)

proc QHBoxLayoutconnectNotify*(self: gen_qboxlayout_types.QHBoxLayout, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQHBoxLayout_virtualbase_connectNotify(self.h, signal.h)

proc QHBoxLayoutdisconnectNotify*(self: gen_qboxlayout_types.QHBoxLayout, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQHBoxLayout_virtualbase_disconnectNotify(self.h, signal.h)

proc QHBoxLayoutwidget*(self: gen_qboxlayout_types.QHBoxLayout): gen_qwidget_types.QWidget =
  gen_qwidget_types.QWidget(h: fcQHBoxLayout_virtualbase_widget(self.h), owned: false)

proc QHBoxLayoutspacerItem*(self: gen_qboxlayout_types.QHBoxLayout): gen_qlayoutitem_types.QSpacerItem =
  gen_qlayoutitem_types.QSpacerItem(h: fcQHBoxLayout_virtualbase_spacerItem(self.h), owned: false)


proc fcQHBoxLayout_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QHBoxLayoutVTable](fcQHBoxLayout_vdata(self))
  let self = QHBoxLayout(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQHBoxLayout_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QHBoxLayoutVTable](fcQHBoxLayout_vdata(self))
  let self = QHBoxLayout(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc fcQHBoxLayout_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QHBoxLayoutVTable](fcQHBoxLayout_vdata(self))
  let self = QHBoxLayout(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc fcQHBoxLayout_vtable_callback_addItem(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QHBoxLayoutVTable](fcQHBoxLayout_vdata(self))
  let self = QHBoxLayout(h: self)
  let slotval1 = gen_qlayoutitem_types.QLayoutItem(h: param1, owned: false)
  vtbl[].addItem(self, slotval1)

proc fcQHBoxLayout_vtable_callback_spacing(self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QHBoxLayoutVTable](fcQHBoxLayout_vdata(self))
  let self = QHBoxLayout(h: self)
  var virtualReturn = vtbl[].spacing(self)
  virtualReturn

proc fcQHBoxLayout_vtable_callback_setSpacing(self: pointer, spacing: cint): void {.cdecl.} =
  let vtbl = cast[ptr QHBoxLayoutVTable](fcQHBoxLayout_vdata(self))
  let self = QHBoxLayout(h: self)
  let slotval1 = spacing
  vtbl[].setSpacing(self, slotval1)

proc fcQHBoxLayout_vtable_callback_sizeHint(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QHBoxLayoutVTable](fcQHBoxLayout_vdata(self))
  let self = QHBoxLayout(h: self)
  var virtualReturn = vtbl[].sizeHint(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQHBoxLayout_vtable_callback_minimumSize(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QHBoxLayoutVTable](fcQHBoxLayout_vdata(self))
  let self = QHBoxLayout(h: self)
  var virtualReturn = vtbl[].minimumSize(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQHBoxLayout_vtable_callback_maximumSize(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QHBoxLayoutVTable](fcQHBoxLayout_vdata(self))
  let self = QHBoxLayout(h: self)
  var virtualReturn = vtbl[].maximumSize(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQHBoxLayout_vtable_callback_hasHeightForWidth(self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QHBoxLayoutVTable](fcQHBoxLayout_vdata(self))
  let self = QHBoxLayout(h: self)
  var virtualReturn = vtbl[].hasHeightForWidth(self)
  virtualReturn

proc fcQHBoxLayout_vtable_callback_heightForWidth(self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QHBoxLayoutVTable](fcQHBoxLayout_vdata(self))
  let self = QHBoxLayout(h: self)
  let slotval1 = param1
  var virtualReturn = vtbl[].heightForWidth(self, slotval1)
  virtualReturn

proc fcQHBoxLayout_vtable_callback_minimumHeightForWidth(self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QHBoxLayoutVTable](fcQHBoxLayout_vdata(self))
  let self = QHBoxLayout(h: self)
  let slotval1 = param1
  var virtualReturn = vtbl[].minimumHeightForWidth(self, slotval1)
  virtualReturn

proc fcQHBoxLayout_vtable_callback_expandingDirections(self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QHBoxLayoutVTable](fcQHBoxLayout_vdata(self))
  let self = QHBoxLayout(h: self)
  var virtualReturn = vtbl[].expandingDirections(self)
  cint(virtualReturn)

proc fcQHBoxLayout_vtable_callback_invalidate(self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QHBoxLayoutVTable](fcQHBoxLayout_vdata(self))
  let self = QHBoxLayout(h: self)
  vtbl[].invalidate(self)

proc fcQHBoxLayout_vtable_callback_itemAt(self: pointer, param1: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QHBoxLayoutVTable](fcQHBoxLayout_vdata(self))
  let self = QHBoxLayout(h: self)
  let slotval1 = param1
  var virtualReturn = vtbl[].itemAt(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQHBoxLayout_vtable_callback_takeAt(self: pointer, param1: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QHBoxLayoutVTable](fcQHBoxLayout_vdata(self))
  let self = QHBoxLayout(h: self)
  let slotval1 = param1
  var virtualReturn = vtbl[].takeAt(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQHBoxLayout_vtable_callback_count(self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QHBoxLayoutVTable](fcQHBoxLayout_vdata(self))
  let self = QHBoxLayout(h: self)
  var virtualReturn = vtbl[].count(self)
  virtualReturn

proc fcQHBoxLayout_vtable_callback_setGeometry(self: pointer, geometry: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QHBoxLayoutVTable](fcQHBoxLayout_vdata(self))
  let self = QHBoxLayout(h: self)
  let slotval1 = gen_qrect_types.QRect(h: geometry, owned: false)
  vtbl[].setGeometry(self, slotval1)

proc fcQHBoxLayout_vtable_callback_geometry(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QHBoxLayoutVTable](fcQHBoxLayout_vdata(self))
  let self = QHBoxLayout(h: self)
  var virtualReturn = vtbl[].geometry(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQHBoxLayout_vtable_callback_indexOf(self: pointer, param1: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QHBoxLayoutVTable](fcQHBoxLayout_vdata(self))
  let self = QHBoxLayout(h: self)
  let slotval1 = gen_qwidget_types.QWidget(h: param1, owned: false)
  var virtualReturn = vtbl[].indexOf(self, slotval1)
  virtualReturn

proc fcQHBoxLayout_vtable_callback_isEmpty(self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QHBoxLayoutVTable](fcQHBoxLayout_vdata(self))
  let self = QHBoxLayout(h: self)
  var virtualReturn = vtbl[].isEmpty(self)
  virtualReturn

proc fcQHBoxLayout_vtable_callback_controlTypes(self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QHBoxLayoutVTable](fcQHBoxLayout_vdata(self))
  let self = QHBoxLayout(h: self)
  var virtualReturn = vtbl[].controlTypes(self)
  cint(virtualReturn)

proc fcQHBoxLayout_vtable_callback_replaceWidget(self: pointer, fromVal: pointer, to: pointer, options: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QHBoxLayoutVTable](fcQHBoxLayout_vdata(self))
  let self = QHBoxLayout(h: self)
  let slotval1 = gen_qwidget_types.QWidget(h: fromVal, owned: false)
  let slotval2 = gen_qwidget_types.QWidget(h: to, owned: false)
  let slotval3 = cint(options)
  var virtualReturn = vtbl[].replaceWidget(self, slotval1, slotval2, slotval3)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQHBoxLayout_vtable_callback_layout(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QHBoxLayoutVTable](fcQHBoxLayout_vdata(self))
  let self = QHBoxLayout(h: self)
  var virtualReturn = vtbl[].layout(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQHBoxLayout_vtable_callback_childEvent(self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QHBoxLayoutVTable](fcQHBoxLayout_vdata(self))
  let self = QHBoxLayout(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: e, owned: false)
  vtbl[].childEvent(self, slotval1)

proc fcQHBoxLayout_vtable_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QHBoxLayoutVTable](fcQHBoxLayout_vdata(self))
  let self = QHBoxLayout(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc fcQHBoxLayout_vtable_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QHBoxLayoutVTable](fcQHBoxLayout_vdata(self))
  let self = QHBoxLayout(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc fcQHBoxLayout_vtable_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QHBoxLayoutVTable](fcQHBoxLayout_vdata(self))
  let self = QHBoxLayout(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc fcQHBoxLayout_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QHBoxLayoutVTable](fcQHBoxLayout_vdata(self))
  let self = QHBoxLayout(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc fcQHBoxLayout_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QHBoxLayoutVTable](fcQHBoxLayout_vdata(self))
  let self = QHBoxLayout(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc fcQHBoxLayout_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QHBoxLayoutVTable](fcQHBoxLayout_vdata(self))
  let self = QHBoxLayout(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

proc fcQHBoxLayout_vtable_callback_widget(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QHBoxLayoutVTable](fcQHBoxLayout_vdata(self))
  let self = QHBoxLayout(h: self)
  var virtualReturn = vtbl[].widget(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQHBoxLayout_vtable_callback_spacerItem(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QHBoxLayoutVTable](fcQHBoxLayout_vdata(self))
  let self = QHBoxLayout(h: self)
  var virtualReturn = vtbl[].spacerItem(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

type VirtualQHBoxLayout* {.inheritable.} = ref object of QHBoxLayout
  vtbl*: cQHBoxLayoutVTable

method metaObject*(self: VirtualQHBoxLayout): gen_qobjectdefs_types.QMetaObject {.base.} =
  QHBoxLayoutmetaObject(self[])
method metacast*(self: VirtualQHBoxLayout, param1: cstring): pointer {.base.} =
  QHBoxLayoutmetacast(self[], param1)
method metacall*(self: VirtualQHBoxLayout, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QHBoxLayoutmetacall(self[], param1, param2, param3)
method addItem*(self: VirtualQHBoxLayout, param1: gen_qlayoutitem_types.QLayoutItem): void {.base.} =
  QHBoxLayoutaddItem(self[], param1)
method spacing*(self: VirtualQHBoxLayout): cint {.base.} =
  QHBoxLayoutspacing(self[])
method setSpacing*(self: VirtualQHBoxLayout, spacing: cint): void {.base.} =
  QHBoxLayoutsetSpacing(self[], spacing)
method sizeHint*(self: VirtualQHBoxLayout): gen_qsize_types.QSize {.base.} =
  QHBoxLayoutsizeHint(self[])
method minimumSize*(self: VirtualQHBoxLayout): gen_qsize_types.QSize {.base.} =
  QHBoxLayoutminimumSize(self[])
method maximumSize*(self: VirtualQHBoxLayout): gen_qsize_types.QSize {.base.} =
  QHBoxLayoutmaximumSize(self[])
method hasHeightForWidth*(self: VirtualQHBoxLayout): bool {.base.} =
  QHBoxLayouthasHeightForWidth(self[])
method heightForWidth*(self: VirtualQHBoxLayout, param1: cint): cint {.base.} =
  QHBoxLayoutheightForWidth(self[], param1)
method minimumHeightForWidth*(self: VirtualQHBoxLayout, param1: cint): cint {.base.} =
  QHBoxLayoutminimumHeightForWidth(self[], param1)
method expandingDirections*(self: VirtualQHBoxLayout): cint {.base.} =
  QHBoxLayoutexpandingDirections(self[])
method invalidate*(self: VirtualQHBoxLayout): void {.base.} =
  QHBoxLayoutinvalidate(self[])
method itemAt*(self: VirtualQHBoxLayout, param1: cint): gen_qlayoutitem_types.QLayoutItem {.base.} =
  QHBoxLayoutitemAt(self[], param1)
method takeAt*(self: VirtualQHBoxLayout, param1: cint): gen_qlayoutitem_types.QLayoutItem {.base.} =
  QHBoxLayouttakeAt(self[], param1)
method count*(self: VirtualQHBoxLayout): cint {.base.} =
  QHBoxLayoutcount(self[])
method setGeometry*(self: VirtualQHBoxLayout, geometry: gen_qrect_types.QRect): void {.base.} =
  QHBoxLayoutsetGeometry(self[], geometry)
method geometry*(self: VirtualQHBoxLayout): gen_qrect_types.QRect {.base.} =
  QHBoxLayoutgeometry(self[])
method indexOf*(self: VirtualQHBoxLayout, param1: gen_qwidget_types.QWidget): cint {.base.} =
  QHBoxLayoutindexOf(self[], param1)
method isEmpty*(self: VirtualQHBoxLayout): bool {.base.} =
  QHBoxLayoutisEmpty(self[])
method controlTypes*(self: VirtualQHBoxLayout): cint {.base.} =
  QHBoxLayoutcontrolTypes(self[])
method replaceWidget*(self: VirtualQHBoxLayout, fromVal: gen_qwidget_types.QWidget, to: gen_qwidget_types.QWidget, options: cint): gen_qlayoutitem_types.QLayoutItem {.base.} =
  QHBoxLayoutreplaceWidget(self[], fromVal, to, options)
method layout*(self: VirtualQHBoxLayout): gen_qlayout_types.QLayout {.base.} =
  QHBoxLayoutlayout(self[])
method childEvent*(self: VirtualQHBoxLayout, e: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QHBoxLayoutchildEvent(self[], e)
method event*(self: VirtualQHBoxLayout, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QHBoxLayoutevent(self[], event)
method eventFilter*(self: VirtualQHBoxLayout, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QHBoxLayouteventFilter(self[], watched, event)
method timerEvent*(self: VirtualQHBoxLayout, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QHBoxLayouttimerEvent(self[], event)
method customEvent*(self: VirtualQHBoxLayout, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QHBoxLayoutcustomEvent(self[], event)
method connectNotify*(self: VirtualQHBoxLayout, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QHBoxLayoutconnectNotify(self[], signal)
method disconnectNotify*(self: VirtualQHBoxLayout, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QHBoxLayoutdisconnectNotify(self[], signal)
method widget*(self: VirtualQHBoxLayout): gen_qwidget_types.QWidget {.base.} =
  QHBoxLayoutwidget(self[])
method spacerItem*(self: VirtualQHBoxLayout): gen_qlayoutitem_types.QSpacerItem {.base.} =
  QHBoxLayoutspacerItem(self[])

proc fcQHBoxLayout_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQHBoxLayout](fcQHBoxLayout_vdata(self))
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQHBoxLayout_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQHBoxLayout](fcQHBoxLayout_vdata(self))
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

proc fcQHBoxLayout_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQHBoxLayout](fcQHBoxLayout_vdata(self))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

proc fcQHBoxLayout_method_callback_addItem(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQHBoxLayout](fcQHBoxLayout_vdata(self))
  let slotval1 = gen_qlayoutitem_types.QLayoutItem(h: param1, owned: false)
  inst.addItem(slotval1)

proc fcQHBoxLayout_method_callback_spacing(self: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQHBoxLayout](fcQHBoxLayout_vdata(self))
  var virtualReturn = inst.spacing()
  virtualReturn

proc fcQHBoxLayout_method_callback_setSpacing(self: pointer, spacing: cint): void {.cdecl.} =
  let inst = cast[VirtualQHBoxLayout](fcQHBoxLayout_vdata(self))
  let slotval1 = spacing
  inst.setSpacing(slotval1)

proc fcQHBoxLayout_method_callback_sizeHint(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQHBoxLayout](fcQHBoxLayout_vdata(self))
  var virtualReturn = inst.sizeHint()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQHBoxLayout_method_callback_minimumSize(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQHBoxLayout](fcQHBoxLayout_vdata(self))
  var virtualReturn = inst.minimumSize()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQHBoxLayout_method_callback_maximumSize(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQHBoxLayout](fcQHBoxLayout_vdata(self))
  var virtualReturn = inst.maximumSize()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQHBoxLayout_method_callback_hasHeightForWidth(self: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQHBoxLayout](fcQHBoxLayout_vdata(self))
  var virtualReturn = inst.hasHeightForWidth()
  virtualReturn

proc fcQHBoxLayout_method_callback_heightForWidth(self: pointer, param1: cint): cint {.cdecl.} =
  let inst = cast[VirtualQHBoxLayout](fcQHBoxLayout_vdata(self))
  let slotval1 = param1
  var virtualReturn = inst.heightForWidth(slotval1)
  virtualReturn

proc fcQHBoxLayout_method_callback_minimumHeightForWidth(self: pointer, param1: cint): cint {.cdecl.} =
  let inst = cast[VirtualQHBoxLayout](fcQHBoxLayout_vdata(self))
  let slotval1 = param1
  var virtualReturn = inst.minimumHeightForWidth(slotval1)
  virtualReturn

proc fcQHBoxLayout_method_callback_expandingDirections(self: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQHBoxLayout](fcQHBoxLayout_vdata(self))
  var virtualReturn = inst.expandingDirections()
  cint(virtualReturn)

proc fcQHBoxLayout_method_callback_invalidate(self: pointer): void {.cdecl.} =
  let inst = cast[VirtualQHBoxLayout](fcQHBoxLayout_vdata(self))
  inst.invalidate()

proc fcQHBoxLayout_method_callback_itemAt(self: pointer, param1: cint): pointer {.cdecl.} =
  let inst = cast[VirtualQHBoxLayout](fcQHBoxLayout_vdata(self))
  let slotval1 = param1
  var virtualReturn = inst.itemAt(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQHBoxLayout_method_callback_takeAt(self: pointer, param1: cint): pointer {.cdecl.} =
  let inst = cast[VirtualQHBoxLayout](fcQHBoxLayout_vdata(self))
  let slotval1 = param1
  var virtualReturn = inst.takeAt(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQHBoxLayout_method_callback_count(self: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQHBoxLayout](fcQHBoxLayout_vdata(self))
  var virtualReturn = inst.count()
  virtualReturn

proc fcQHBoxLayout_method_callback_setGeometry(self: pointer, geometry: pointer): void {.cdecl.} =
  let inst = cast[VirtualQHBoxLayout](fcQHBoxLayout_vdata(self))
  let slotval1 = gen_qrect_types.QRect(h: geometry, owned: false)
  inst.setGeometry(slotval1)

proc fcQHBoxLayout_method_callback_geometry(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQHBoxLayout](fcQHBoxLayout_vdata(self))
  var virtualReturn = inst.geometry()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQHBoxLayout_method_callback_indexOf(self: pointer, param1: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQHBoxLayout](fcQHBoxLayout_vdata(self))
  let slotval1 = gen_qwidget_types.QWidget(h: param1, owned: false)
  var virtualReturn = inst.indexOf(slotval1)
  virtualReturn

proc fcQHBoxLayout_method_callback_isEmpty(self: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQHBoxLayout](fcQHBoxLayout_vdata(self))
  var virtualReturn = inst.isEmpty()
  virtualReturn

proc fcQHBoxLayout_method_callback_controlTypes(self: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQHBoxLayout](fcQHBoxLayout_vdata(self))
  var virtualReturn = inst.controlTypes()
  cint(virtualReturn)

proc fcQHBoxLayout_method_callback_replaceWidget(self: pointer, fromVal: pointer, to: pointer, options: cint): pointer {.cdecl.} =
  let inst = cast[VirtualQHBoxLayout](fcQHBoxLayout_vdata(self))
  let slotval1 = gen_qwidget_types.QWidget(h: fromVal, owned: false)
  let slotval2 = gen_qwidget_types.QWidget(h: to, owned: false)
  let slotval3 = cint(options)
  var virtualReturn = inst.replaceWidget(slotval1, slotval2, slotval3)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQHBoxLayout_method_callback_layout(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQHBoxLayout](fcQHBoxLayout_vdata(self))
  var virtualReturn = inst.layout()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQHBoxLayout_method_callback_childEvent(self: pointer, e: pointer): void {.cdecl.} =
  let inst = cast[VirtualQHBoxLayout](fcQHBoxLayout_vdata(self))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: e, owned: false)
  inst.childEvent(slotval1)

proc fcQHBoxLayout_method_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQHBoxLayout](fcQHBoxLayout_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

proc fcQHBoxLayout_method_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQHBoxLayout](fcQHBoxLayout_vdata(self))
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

proc fcQHBoxLayout_method_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQHBoxLayout](fcQHBoxLayout_vdata(self))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  inst.timerEvent(slotval1)

proc fcQHBoxLayout_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQHBoxLayout](fcQHBoxLayout_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)

proc fcQHBoxLayout_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQHBoxLayout](fcQHBoxLayout_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

proc fcQHBoxLayout_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQHBoxLayout](fcQHBoxLayout_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.disconnectNotify(slotval1)

proc fcQHBoxLayout_method_callback_widget(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQHBoxLayout](fcQHBoxLayout_vdata(self))
  var virtualReturn = inst.widget()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQHBoxLayout_method_callback_spacerItem(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQHBoxLayout](fcQHBoxLayout_vdata(self))
  var virtualReturn = inst.spacerItem()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h


proc widgetEvent*(self: gen_qboxlayout_types.QHBoxLayout, param1: gen_qcoreevent_types.QEvent): void =
  fcQHBoxLayout_protectedbase_widgetEvent(self.h, param1.h)

proc addChildLayout*(self: gen_qboxlayout_types.QHBoxLayout, l: gen_qlayout_types.QLayout): void =
  fcQHBoxLayout_protectedbase_addChildLayout(self.h, l.h)

proc addChildWidget*(self: gen_qboxlayout_types.QHBoxLayout, w: gen_qwidget_types.QWidget): void =
  fcQHBoxLayout_protectedbase_addChildWidget(self.h, w.h)

proc adoptLayout*(self: gen_qboxlayout_types.QHBoxLayout, layout: gen_qlayout_types.QLayout): bool =
  fcQHBoxLayout_protectedbase_adoptLayout(self.h, layout.h)

proc alignmentRect*(self: gen_qboxlayout_types.QHBoxLayout, param1: gen_qrect_types.QRect): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fcQHBoxLayout_protectedbase_alignmentRect(self.h, param1.h), owned: true)

proc sender*(self: gen_qboxlayout_types.QHBoxLayout): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQHBoxLayout_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qboxlayout_types.QHBoxLayout): cint =
  fcQHBoxLayout_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qboxlayout_types.QHBoxLayout, signal: cstring): cint =
  fcQHBoxLayout_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qboxlayout_types.QHBoxLayout, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQHBoxLayout_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qboxlayout_types.QHBoxLayout,
    parent: gen_qwidget_types.QWidget,
    vtbl: ref QHBoxLayoutVTable = nil): gen_qboxlayout_types.QHBoxLayout =
  let vtbl = if vtbl == nil: new QHBoxLayoutVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QHBoxLayoutVTable](fcQHBoxLayout_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQHBoxLayout_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQHBoxLayout_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQHBoxLayout_vtable_callback_metacall
  if not isNil(vtbl[].addItem):
    vtbl[].vtbl.addItem = fcQHBoxLayout_vtable_callback_addItem
  if not isNil(vtbl[].spacing):
    vtbl[].vtbl.spacing = fcQHBoxLayout_vtable_callback_spacing
  if not isNil(vtbl[].setSpacing):
    vtbl[].vtbl.setSpacing = fcQHBoxLayout_vtable_callback_setSpacing
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = fcQHBoxLayout_vtable_callback_sizeHint
  if not isNil(vtbl[].minimumSize):
    vtbl[].vtbl.minimumSize = fcQHBoxLayout_vtable_callback_minimumSize
  if not isNil(vtbl[].maximumSize):
    vtbl[].vtbl.maximumSize = fcQHBoxLayout_vtable_callback_maximumSize
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = fcQHBoxLayout_vtable_callback_hasHeightForWidth
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = fcQHBoxLayout_vtable_callback_heightForWidth
  if not isNil(vtbl[].minimumHeightForWidth):
    vtbl[].vtbl.minimumHeightForWidth = fcQHBoxLayout_vtable_callback_minimumHeightForWidth
  if not isNil(vtbl[].expandingDirections):
    vtbl[].vtbl.expandingDirections = fcQHBoxLayout_vtable_callback_expandingDirections
  if not isNil(vtbl[].invalidate):
    vtbl[].vtbl.invalidate = fcQHBoxLayout_vtable_callback_invalidate
  if not isNil(vtbl[].itemAt):
    vtbl[].vtbl.itemAt = fcQHBoxLayout_vtable_callback_itemAt
  if not isNil(vtbl[].takeAt):
    vtbl[].vtbl.takeAt = fcQHBoxLayout_vtable_callback_takeAt
  if not isNil(vtbl[].count):
    vtbl[].vtbl.count = fcQHBoxLayout_vtable_callback_count
  if not isNil(vtbl[].setGeometry):
    vtbl[].vtbl.setGeometry = fcQHBoxLayout_vtable_callback_setGeometry
  if not isNil(vtbl[].geometry):
    vtbl[].vtbl.geometry = fcQHBoxLayout_vtable_callback_geometry
  if not isNil(vtbl[].indexOf):
    vtbl[].vtbl.indexOf = fcQHBoxLayout_vtable_callback_indexOf
  if not isNil(vtbl[].isEmpty):
    vtbl[].vtbl.isEmpty = fcQHBoxLayout_vtable_callback_isEmpty
  if not isNil(vtbl[].controlTypes):
    vtbl[].vtbl.controlTypes = fcQHBoxLayout_vtable_callback_controlTypes
  if not isNil(vtbl[].replaceWidget):
    vtbl[].vtbl.replaceWidget = fcQHBoxLayout_vtable_callback_replaceWidget
  if not isNil(vtbl[].layout):
    vtbl[].vtbl.layout = fcQHBoxLayout_vtable_callback_layout
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQHBoxLayout_vtable_callback_childEvent
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQHBoxLayout_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQHBoxLayout_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQHBoxLayout_vtable_callback_timerEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQHBoxLayout_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQHBoxLayout_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQHBoxLayout_vtable_callback_disconnectNotify
  if not isNil(vtbl[].widget):
    vtbl[].vtbl.widget = fcQHBoxLayout_vtable_callback_widget
  if not isNil(vtbl[].spacerItem):
    vtbl[].vtbl.spacerItem = fcQHBoxLayout_vtable_callback_spacerItem
  gen_qboxlayout_types.QHBoxLayout(h: fcQHBoxLayout_new(addr(vtbl[].vtbl), addr(vtbl[]), parent.h), owned: true)

proc create*(T: type gen_qboxlayout_types.QHBoxLayout,
    vtbl: ref QHBoxLayoutVTable = nil): gen_qboxlayout_types.QHBoxLayout =
  let vtbl = if vtbl == nil: new QHBoxLayoutVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QHBoxLayoutVTable](fcQHBoxLayout_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQHBoxLayout_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQHBoxLayout_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQHBoxLayout_vtable_callback_metacall
  if not isNil(vtbl[].addItem):
    vtbl[].vtbl.addItem = fcQHBoxLayout_vtable_callback_addItem
  if not isNil(vtbl[].spacing):
    vtbl[].vtbl.spacing = fcQHBoxLayout_vtable_callback_spacing
  if not isNil(vtbl[].setSpacing):
    vtbl[].vtbl.setSpacing = fcQHBoxLayout_vtable_callback_setSpacing
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = fcQHBoxLayout_vtable_callback_sizeHint
  if not isNil(vtbl[].minimumSize):
    vtbl[].vtbl.minimumSize = fcQHBoxLayout_vtable_callback_minimumSize
  if not isNil(vtbl[].maximumSize):
    vtbl[].vtbl.maximumSize = fcQHBoxLayout_vtable_callback_maximumSize
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = fcQHBoxLayout_vtable_callback_hasHeightForWidth
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = fcQHBoxLayout_vtable_callback_heightForWidth
  if not isNil(vtbl[].minimumHeightForWidth):
    vtbl[].vtbl.minimumHeightForWidth = fcQHBoxLayout_vtable_callback_minimumHeightForWidth
  if not isNil(vtbl[].expandingDirections):
    vtbl[].vtbl.expandingDirections = fcQHBoxLayout_vtable_callback_expandingDirections
  if not isNil(vtbl[].invalidate):
    vtbl[].vtbl.invalidate = fcQHBoxLayout_vtable_callback_invalidate
  if not isNil(vtbl[].itemAt):
    vtbl[].vtbl.itemAt = fcQHBoxLayout_vtable_callback_itemAt
  if not isNil(vtbl[].takeAt):
    vtbl[].vtbl.takeAt = fcQHBoxLayout_vtable_callback_takeAt
  if not isNil(vtbl[].count):
    vtbl[].vtbl.count = fcQHBoxLayout_vtable_callback_count
  if not isNil(vtbl[].setGeometry):
    vtbl[].vtbl.setGeometry = fcQHBoxLayout_vtable_callback_setGeometry
  if not isNil(vtbl[].geometry):
    vtbl[].vtbl.geometry = fcQHBoxLayout_vtable_callback_geometry
  if not isNil(vtbl[].indexOf):
    vtbl[].vtbl.indexOf = fcQHBoxLayout_vtable_callback_indexOf
  if not isNil(vtbl[].isEmpty):
    vtbl[].vtbl.isEmpty = fcQHBoxLayout_vtable_callback_isEmpty
  if not isNil(vtbl[].controlTypes):
    vtbl[].vtbl.controlTypes = fcQHBoxLayout_vtable_callback_controlTypes
  if not isNil(vtbl[].replaceWidget):
    vtbl[].vtbl.replaceWidget = fcQHBoxLayout_vtable_callback_replaceWidget
  if not isNil(vtbl[].layout):
    vtbl[].vtbl.layout = fcQHBoxLayout_vtable_callback_layout
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQHBoxLayout_vtable_callback_childEvent
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQHBoxLayout_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQHBoxLayout_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQHBoxLayout_vtable_callback_timerEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQHBoxLayout_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQHBoxLayout_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQHBoxLayout_vtable_callback_disconnectNotify
  if not isNil(vtbl[].widget):
    vtbl[].vtbl.widget = fcQHBoxLayout_vtable_callback_widget
  if not isNil(vtbl[].spacerItem):
    vtbl[].vtbl.spacerItem = fcQHBoxLayout_vtable_callback_spacerItem
  gen_qboxlayout_types.QHBoxLayout(h: fcQHBoxLayout_new2(addr(vtbl[].vtbl), addr(vtbl[])), owned: true)

const cQHBoxLayout_mvtbl = cQHBoxLayoutVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQHBoxLayout()[])](self.fcQHBoxLayout_vdata())
    inst[].h = nil
    inst[].owned = false,

  metaObject: fcQHBoxLayout_method_callback_metaObject,
  metacast: fcQHBoxLayout_method_callback_metacast,
  metacall: fcQHBoxLayout_method_callback_metacall,
  addItem: fcQHBoxLayout_method_callback_addItem,
  spacing: fcQHBoxLayout_method_callback_spacing,
  setSpacing: fcQHBoxLayout_method_callback_setSpacing,
  sizeHint: fcQHBoxLayout_method_callback_sizeHint,
  minimumSize: fcQHBoxLayout_method_callback_minimumSize,
  maximumSize: fcQHBoxLayout_method_callback_maximumSize,
  hasHeightForWidth: fcQHBoxLayout_method_callback_hasHeightForWidth,
  heightForWidth: fcQHBoxLayout_method_callback_heightForWidth,
  minimumHeightForWidth: fcQHBoxLayout_method_callback_minimumHeightForWidth,
  expandingDirections: fcQHBoxLayout_method_callback_expandingDirections,
  invalidate: fcQHBoxLayout_method_callback_invalidate,
  itemAt: fcQHBoxLayout_method_callback_itemAt,
  takeAt: fcQHBoxLayout_method_callback_takeAt,
  count: fcQHBoxLayout_method_callback_count,
  setGeometry: fcQHBoxLayout_method_callback_setGeometry,
  geometry: fcQHBoxLayout_method_callback_geometry,
  indexOf: fcQHBoxLayout_method_callback_indexOf,
  isEmpty: fcQHBoxLayout_method_callback_isEmpty,
  controlTypes: fcQHBoxLayout_method_callback_controlTypes,
  replaceWidget: fcQHBoxLayout_method_callback_replaceWidget,
  layout: fcQHBoxLayout_method_callback_layout,
  childEvent: fcQHBoxLayout_method_callback_childEvent,
  event: fcQHBoxLayout_method_callback_event,
  eventFilter: fcQHBoxLayout_method_callback_eventFilter,
  timerEvent: fcQHBoxLayout_method_callback_timerEvent,
  customEvent: fcQHBoxLayout_method_callback_customEvent,
  connectNotify: fcQHBoxLayout_method_callback_connectNotify,
  disconnectNotify: fcQHBoxLayout_method_callback_disconnectNotify,
  widget: fcQHBoxLayout_method_callback_widget,
  spacerItem: fcQHBoxLayout_method_callback_spacerItem,
)
proc create*(T: type gen_qboxlayout_types.QHBoxLayout,
    parent: gen_qwidget_types.QWidget,
    inst: VirtualQHBoxLayout) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQHBoxLayout_new(addr(cQHBoxLayout_mvtbl), addr(inst[]), parent.h)
  inst[].owned = true

proc create*(T: type gen_qboxlayout_types.QHBoxLayout,
    inst: VirtualQHBoxLayout) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQHBoxLayout_new2(addr(cQHBoxLayout_mvtbl), addr(inst[]))
  inst[].owned = true

proc staticMetaObject*(_: type gen_qboxlayout_types.QHBoxLayout): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQHBoxLayout_staticMetaObject())
proc metaObject*(self: gen_qboxlayout_types.QVBoxLayout): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQVBoxLayout_metaObject(self.h), owned: false)

proc metacast*(self: gen_qboxlayout_types.QVBoxLayout, param1: cstring): pointer =
  fcQVBoxLayout_metacast(self.h, param1)

proc metacall*(self: gen_qboxlayout_types.QVBoxLayout, param1: cint, param2: cint, param3: pointer): cint =
  fcQVBoxLayout_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qboxlayout_types.QVBoxLayout, s: cstring): string =
  let v_ms = fcQVBoxLayout_tr(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qboxlayout_types.QVBoxLayout, s: cstring, c: cstring): string =
  let v_ms = fcQVBoxLayout_tr2(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qboxlayout_types.QVBoxLayout, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQVBoxLayout_tr3(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

type QVBoxLayoutmetaObjectProc* = proc(self: QVBoxLayout): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QVBoxLayoutmetacastProc* = proc(self: QVBoxLayout, param1: cstring): pointer {.raises: [], gcsafe.}
type QVBoxLayoutmetacallProc* = proc(self: QVBoxLayout, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QVBoxLayoutaddItemProc* = proc(self: QVBoxLayout, param1: gen_qlayoutitem_types.QLayoutItem): void {.raises: [], gcsafe.}
type QVBoxLayoutspacingProc* = proc(self: QVBoxLayout): cint {.raises: [], gcsafe.}
type QVBoxLayoutsetSpacingProc* = proc(self: QVBoxLayout, spacing: cint): void {.raises: [], gcsafe.}
type QVBoxLayoutsizeHintProc* = proc(self: QVBoxLayout): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QVBoxLayoutminimumSizeProc* = proc(self: QVBoxLayout): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QVBoxLayoutmaximumSizeProc* = proc(self: QVBoxLayout): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QVBoxLayouthasHeightForWidthProc* = proc(self: QVBoxLayout): bool {.raises: [], gcsafe.}
type QVBoxLayoutheightForWidthProc* = proc(self: QVBoxLayout, param1: cint): cint {.raises: [], gcsafe.}
type QVBoxLayoutminimumHeightForWidthProc* = proc(self: QVBoxLayout, param1: cint): cint {.raises: [], gcsafe.}
type QVBoxLayoutexpandingDirectionsProc* = proc(self: QVBoxLayout): cint {.raises: [], gcsafe.}
type QVBoxLayoutinvalidateProc* = proc(self: QVBoxLayout): void {.raises: [], gcsafe.}
type QVBoxLayoutitemAtProc* = proc(self: QVBoxLayout, param1: cint): gen_qlayoutitem_types.QLayoutItem {.raises: [], gcsafe.}
type QVBoxLayouttakeAtProc* = proc(self: QVBoxLayout, param1: cint): gen_qlayoutitem_types.QLayoutItem {.raises: [], gcsafe.}
type QVBoxLayoutcountProc* = proc(self: QVBoxLayout): cint {.raises: [], gcsafe.}
type QVBoxLayoutsetGeometryProc* = proc(self: QVBoxLayout, geometry: gen_qrect_types.QRect): void {.raises: [], gcsafe.}
type QVBoxLayoutgeometryProc* = proc(self: QVBoxLayout): gen_qrect_types.QRect {.raises: [], gcsafe.}
type QVBoxLayoutindexOfProc* = proc(self: QVBoxLayout, param1: gen_qwidget_types.QWidget): cint {.raises: [], gcsafe.}
type QVBoxLayoutisEmptyProc* = proc(self: QVBoxLayout): bool {.raises: [], gcsafe.}
type QVBoxLayoutcontrolTypesProc* = proc(self: QVBoxLayout): cint {.raises: [], gcsafe.}
type QVBoxLayoutreplaceWidgetProc* = proc(self: QVBoxLayout, fromVal: gen_qwidget_types.QWidget, to: gen_qwidget_types.QWidget, options: cint): gen_qlayoutitem_types.QLayoutItem {.raises: [], gcsafe.}
type QVBoxLayoutlayoutProc* = proc(self: QVBoxLayout): gen_qlayout_types.QLayout {.raises: [], gcsafe.}
type QVBoxLayoutchildEventProc* = proc(self: QVBoxLayout, e: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QVBoxLayouteventProc* = proc(self: QVBoxLayout, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QVBoxLayouteventFilterProc* = proc(self: QVBoxLayout, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QVBoxLayouttimerEventProc* = proc(self: QVBoxLayout, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QVBoxLayoutcustomEventProc* = proc(self: QVBoxLayout, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QVBoxLayoutconnectNotifyProc* = proc(self: QVBoxLayout, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QVBoxLayoutdisconnectNotifyProc* = proc(self: QVBoxLayout, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QVBoxLayoutwidgetProc* = proc(self: QVBoxLayout): gen_qwidget_types.QWidget {.raises: [], gcsafe.}
type QVBoxLayoutspacerItemProc* = proc(self: QVBoxLayout): gen_qlayoutitem_types.QSpacerItem {.raises: [], gcsafe.}

type QVBoxLayoutVTable* {.inheritable, pure.} = object
  vtbl: cQVBoxLayoutVTable
  metaObject*: QVBoxLayoutmetaObjectProc
  metacast*: QVBoxLayoutmetacastProc
  metacall*: QVBoxLayoutmetacallProc
  addItem*: QVBoxLayoutaddItemProc
  spacing*: QVBoxLayoutspacingProc
  setSpacing*: QVBoxLayoutsetSpacingProc
  sizeHint*: QVBoxLayoutsizeHintProc
  minimumSize*: QVBoxLayoutminimumSizeProc
  maximumSize*: QVBoxLayoutmaximumSizeProc
  hasHeightForWidth*: QVBoxLayouthasHeightForWidthProc
  heightForWidth*: QVBoxLayoutheightForWidthProc
  minimumHeightForWidth*: QVBoxLayoutminimumHeightForWidthProc
  expandingDirections*: QVBoxLayoutexpandingDirectionsProc
  invalidate*: QVBoxLayoutinvalidateProc
  itemAt*: QVBoxLayoutitemAtProc
  takeAt*: QVBoxLayouttakeAtProc
  count*: QVBoxLayoutcountProc
  setGeometry*: QVBoxLayoutsetGeometryProc
  geometry*: QVBoxLayoutgeometryProc
  indexOf*: QVBoxLayoutindexOfProc
  isEmpty*: QVBoxLayoutisEmptyProc
  controlTypes*: QVBoxLayoutcontrolTypesProc
  replaceWidget*: QVBoxLayoutreplaceWidgetProc
  layout*: QVBoxLayoutlayoutProc
  childEvent*: QVBoxLayoutchildEventProc
  event*: QVBoxLayouteventProc
  eventFilter*: QVBoxLayouteventFilterProc
  timerEvent*: QVBoxLayouttimerEventProc
  customEvent*: QVBoxLayoutcustomEventProc
  connectNotify*: QVBoxLayoutconnectNotifyProc
  disconnectNotify*: QVBoxLayoutdisconnectNotifyProc
  widget*: QVBoxLayoutwidgetProc
  spacerItem*: QVBoxLayoutspacerItemProc

proc QVBoxLayoutmetaObject*(self: gen_qboxlayout_types.QVBoxLayout): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQVBoxLayout_virtualbase_metaObject(self.h), owned: false)

proc QVBoxLayoutmetacast*(self: gen_qboxlayout_types.QVBoxLayout, param1: cstring): pointer =
  fcQVBoxLayout_virtualbase_metacast(self.h, param1)

proc QVBoxLayoutmetacall*(self: gen_qboxlayout_types.QVBoxLayout, param1: cint, param2: cint, param3: pointer): cint =
  fcQVBoxLayout_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc QVBoxLayoutaddItem*(self: gen_qboxlayout_types.QVBoxLayout, param1: gen_qlayoutitem_types.QLayoutItem): void =
  fcQVBoxLayout_virtualbase_addItem(self.h, param1.h)

proc QVBoxLayoutspacing*(self: gen_qboxlayout_types.QVBoxLayout): cint =
  fcQVBoxLayout_virtualbase_spacing(self.h)

proc QVBoxLayoutsetSpacing*(self: gen_qboxlayout_types.QVBoxLayout, spacing: cint): void =
  fcQVBoxLayout_virtualbase_setSpacing(self.h, spacing)

proc QVBoxLayoutsizeHint*(self: gen_qboxlayout_types.QVBoxLayout): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQVBoxLayout_virtualbase_sizeHint(self.h), owned: true)

proc QVBoxLayoutminimumSize*(self: gen_qboxlayout_types.QVBoxLayout): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQVBoxLayout_virtualbase_minimumSize(self.h), owned: true)

proc QVBoxLayoutmaximumSize*(self: gen_qboxlayout_types.QVBoxLayout): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQVBoxLayout_virtualbase_maximumSize(self.h), owned: true)

proc QVBoxLayouthasHeightForWidth*(self: gen_qboxlayout_types.QVBoxLayout): bool =
  fcQVBoxLayout_virtualbase_hasHeightForWidth(self.h)

proc QVBoxLayoutheightForWidth*(self: gen_qboxlayout_types.QVBoxLayout, param1: cint): cint =
  fcQVBoxLayout_virtualbase_heightForWidth(self.h, param1)

proc QVBoxLayoutminimumHeightForWidth*(self: gen_qboxlayout_types.QVBoxLayout, param1: cint): cint =
  fcQVBoxLayout_virtualbase_minimumHeightForWidth(self.h, param1)

proc QVBoxLayoutexpandingDirections*(self: gen_qboxlayout_types.QVBoxLayout): cint =
  cint(fcQVBoxLayout_virtualbase_expandingDirections(self.h))

proc QVBoxLayoutinvalidate*(self: gen_qboxlayout_types.QVBoxLayout): void =
  fcQVBoxLayout_virtualbase_invalidate(self.h)

proc QVBoxLayoutitemAt*(self: gen_qboxlayout_types.QVBoxLayout, param1: cint): gen_qlayoutitem_types.QLayoutItem =
  gen_qlayoutitem_types.QLayoutItem(h: fcQVBoxLayout_virtualbase_itemAt(self.h, param1), owned: false)

proc QVBoxLayouttakeAt*(self: gen_qboxlayout_types.QVBoxLayout, param1: cint): gen_qlayoutitem_types.QLayoutItem =
  gen_qlayoutitem_types.QLayoutItem(h: fcQVBoxLayout_virtualbase_takeAt(self.h, param1), owned: false)

proc QVBoxLayoutcount*(self: gen_qboxlayout_types.QVBoxLayout): cint =
  fcQVBoxLayout_virtualbase_count(self.h)

proc QVBoxLayoutsetGeometry*(self: gen_qboxlayout_types.QVBoxLayout, geometry: gen_qrect_types.QRect): void =
  fcQVBoxLayout_virtualbase_setGeometry(self.h, geometry.h)

proc QVBoxLayoutgeometry*(self: gen_qboxlayout_types.QVBoxLayout): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fcQVBoxLayout_virtualbase_geometry(self.h), owned: true)

proc QVBoxLayoutindexOf*(self: gen_qboxlayout_types.QVBoxLayout, param1: gen_qwidget_types.QWidget): cint =
  fcQVBoxLayout_virtualbase_indexOf(self.h, param1.h)

proc QVBoxLayoutisEmpty*(self: gen_qboxlayout_types.QVBoxLayout): bool =
  fcQVBoxLayout_virtualbase_isEmpty(self.h)

proc QVBoxLayoutcontrolTypes*(self: gen_qboxlayout_types.QVBoxLayout): cint =
  cint(fcQVBoxLayout_virtualbase_controlTypes(self.h))

proc QVBoxLayoutreplaceWidget*(self: gen_qboxlayout_types.QVBoxLayout, fromVal: gen_qwidget_types.QWidget, to: gen_qwidget_types.QWidget, options: cint): gen_qlayoutitem_types.QLayoutItem =
  gen_qlayoutitem_types.QLayoutItem(h: fcQVBoxLayout_virtualbase_replaceWidget(self.h, fromVal.h, to.h, cint(options)), owned: false)

proc QVBoxLayoutlayout*(self: gen_qboxlayout_types.QVBoxLayout): gen_qlayout_types.QLayout =
  gen_qlayout_types.QLayout(h: fcQVBoxLayout_virtualbase_layout(self.h), owned: false)

proc QVBoxLayoutchildEvent*(self: gen_qboxlayout_types.QVBoxLayout, e: gen_qcoreevent_types.QChildEvent): void =
  fcQVBoxLayout_virtualbase_childEvent(self.h, e.h)

proc QVBoxLayoutevent*(self: gen_qboxlayout_types.QVBoxLayout, event: gen_qcoreevent_types.QEvent): bool =
  fcQVBoxLayout_virtualbase_event(self.h, event.h)

proc QVBoxLayouteventFilter*(self: gen_qboxlayout_types.QVBoxLayout, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQVBoxLayout_virtualbase_eventFilter(self.h, watched.h, event.h)

proc QVBoxLayouttimerEvent*(self: gen_qboxlayout_types.QVBoxLayout, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQVBoxLayout_virtualbase_timerEvent(self.h, event.h)

proc QVBoxLayoutcustomEvent*(self: gen_qboxlayout_types.QVBoxLayout, event: gen_qcoreevent_types.QEvent): void =
  fcQVBoxLayout_virtualbase_customEvent(self.h, event.h)

proc QVBoxLayoutconnectNotify*(self: gen_qboxlayout_types.QVBoxLayout, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQVBoxLayout_virtualbase_connectNotify(self.h, signal.h)

proc QVBoxLayoutdisconnectNotify*(self: gen_qboxlayout_types.QVBoxLayout, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQVBoxLayout_virtualbase_disconnectNotify(self.h, signal.h)

proc QVBoxLayoutwidget*(self: gen_qboxlayout_types.QVBoxLayout): gen_qwidget_types.QWidget =
  gen_qwidget_types.QWidget(h: fcQVBoxLayout_virtualbase_widget(self.h), owned: false)

proc QVBoxLayoutspacerItem*(self: gen_qboxlayout_types.QVBoxLayout): gen_qlayoutitem_types.QSpacerItem =
  gen_qlayoutitem_types.QSpacerItem(h: fcQVBoxLayout_virtualbase_spacerItem(self.h), owned: false)


proc fcQVBoxLayout_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QVBoxLayoutVTable](fcQVBoxLayout_vdata(self))
  let self = QVBoxLayout(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQVBoxLayout_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QVBoxLayoutVTable](fcQVBoxLayout_vdata(self))
  let self = QVBoxLayout(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc fcQVBoxLayout_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QVBoxLayoutVTable](fcQVBoxLayout_vdata(self))
  let self = QVBoxLayout(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc fcQVBoxLayout_vtable_callback_addItem(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QVBoxLayoutVTable](fcQVBoxLayout_vdata(self))
  let self = QVBoxLayout(h: self)
  let slotval1 = gen_qlayoutitem_types.QLayoutItem(h: param1, owned: false)
  vtbl[].addItem(self, slotval1)

proc fcQVBoxLayout_vtable_callback_spacing(self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QVBoxLayoutVTable](fcQVBoxLayout_vdata(self))
  let self = QVBoxLayout(h: self)
  var virtualReturn = vtbl[].spacing(self)
  virtualReturn

proc fcQVBoxLayout_vtable_callback_setSpacing(self: pointer, spacing: cint): void {.cdecl.} =
  let vtbl = cast[ptr QVBoxLayoutVTable](fcQVBoxLayout_vdata(self))
  let self = QVBoxLayout(h: self)
  let slotval1 = spacing
  vtbl[].setSpacing(self, slotval1)

proc fcQVBoxLayout_vtable_callback_sizeHint(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QVBoxLayoutVTable](fcQVBoxLayout_vdata(self))
  let self = QVBoxLayout(h: self)
  var virtualReturn = vtbl[].sizeHint(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQVBoxLayout_vtable_callback_minimumSize(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QVBoxLayoutVTable](fcQVBoxLayout_vdata(self))
  let self = QVBoxLayout(h: self)
  var virtualReturn = vtbl[].minimumSize(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQVBoxLayout_vtable_callback_maximumSize(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QVBoxLayoutVTable](fcQVBoxLayout_vdata(self))
  let self = QVBoxLayout(h: self)
  var virtualReturn = vtbl[].maximumSize(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQVBoxLayout_vtable_callback_hasHeightForWidth(self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QVBoxLayoutVTable](fcQVBoxLayout_vdata(self))
  let self = QVBoxLayout(h: self)
  var virtualReturn = vtbl[].hasHeightForWidth(self)
  virtualReturn

proc fcQVBoxLayout_vtable_callback_heightForWidth(self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QVBoxLayoutVTable](fcQVBoxLayout_vdata(self))
  let self = QVBoxLayout(h: self)
  let slotval1 = param1
  var virtualReturn = vtbl[].heightForWidth(self, slotval1)
  virtualReturn

proc fcQVBoxLayout_vtable_callback_minimumHeightForWidth(self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QVBoxLayoutVTable](fcQVBoxLayout_vdata(self))
  let self = QVBoxLayout(h: self)
  let slotval1 = param1
  var virtualReturn = vtbl[].minimumHeightForWidth(self, slotval1)
  virtualReturn

proc fcQVBoxLayout_vtable_callback_expandingDirections(self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QVBoxLayoutVTable](fcQVBoxLayout_vdata(self))
  let self = QVBoxLayout(h: self)
  var virtualReturn = vtbl[].expandingDirections(self)
  cint(virtualReturn)

proc fcQVBoxLayout_vtable_callback_invalidate(self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QVBoxLayoutVTable](fcQVBoxLayout_vdata(self))
  let self = QVBoxLayout(h: self)
  vtbl[].invalidate(self)

proc fcQVBoxLayout_vtable_callback_itemAt(self: pointer, param1: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QVBoxLayoutVTable](fcQVBoxLayout_vdata(self))
  let self = QVBoxLayout(h: self)
  let slotval1 = param1
  var virtualReturn = vtbl[].itemAt(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQVBoxLayout_vtable_callback_takeAt(self: pointer, param1: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QVBoxLayoutVTable](fcQVBoxLayout_vdata(self))
  let self = QVBoxLayout(h: self)
  let slotval1 = param1
  var virtualReturn = vtbl[].takeAt(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQVBoxLayout_vtable_callback_count(self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QVBoxLayoutVTable](fcQVBoxLayout_vdata(self))
  let self = QVBoxLayout(h: self)
  var virtualReturn = vtbl[].count(self)
  virtualReturn

proc fcQVBoxLayout_vtable_callback_setGeometry(self: pointer, geometry: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QVBoxLayoutVTable](fcQVBoxLayout_vdata(self))
  let self = QVBoxLayout(h: self)
  let slotval1 = gen_qrect_types.QRect(h: geometry, owned: false)
  vtbl[].setGeometry(self, slotval1)

proc fcQVBoxLayout_vtable_callback_geometry(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QVBoxLayoutVTable](fcQVBoxLayout_vdata(self))
  let self = QVBoxLayout(h: self)
  var virtualReturn = vtbl[].geometry(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQVBoxLayout_vtable_callback_indexOf(self: pointer, param1: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QVBoxLayoutVTable](fcQVBoxLayout_vdata(self))
  let self = QVBoxLayout(h: self)
  let slotval1 = gen_qwidget_types.QWidget(h: param1, owned: false)
  var virtualReturn = vtbl[].indexOf(self, slotval1)
  virtualReturn

proc fcQVBoxLayout_vtable_callback_isEmpty(self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QVBoxLayoutVTable](fcQVBoxLayout_vdata(self))
  let self = QVBoxLayout(h: self)
  var virtualReturn = vtbl[].isEmpty(self)
  virtualReturn

proc fcQVBoxLayout_vtable_callback_controlTypes(self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QVBoxLayoutVTable](fcQVBoxLayout_vdata(self))
  let self = QVBoxLayout(h: self)
  var virtualReturn = vtbl[].controlTypes(self)
  cint(virtualReturn)

proc fcQVBoxLayout_vtable_callback_replaceWidget(self: pointer, fromVal: pointer, to: pointer, options: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QVBoxLayoutVTable](fcQVBoxLayout_vdata(self))
  let self = QVBoxLayout(h: self)
  let slotval1 = gen_qwidget_types.QWidget(h: fromVal, owned: false)
  let slotval2 = gen_qwidget_types.QWidget(h: to, owned: false)
  let slotval3 = cint(options)
  var virtualReturn = vtbl[].replaceWidget(self, slotval1, slotval2, slotval3)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQVBoxLayout_vtable_callback_layout(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QVBoxLayoutVTable](fcQVBoxLayout_vdata(self))
  let self = QVBoxLayout(h: self)
  var virtualReturn = vtbl[].layout(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQVBoxLayout_vtable_callback_childEvent(self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QVBoxLayoutVTable](fcQVBoxLayout_vdata(self))
  let self = QVBoxLayout(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: e, owned: false)
  vtbl[].childEvent(self, slotval1)

proc fcQVBoxLayout_vtable_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QVBoxLayoutVTable](fcQVBoxLayout_vdata(self))
  let self = QVBoxLayout(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc fcQVBoxLayout_vtable_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QVBoxLayoutVTable](fcQVBoxLayout_vdata(self))
  let self = QVBoxLayout(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc fcQVBoxLayout_vtable_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QVBoxLayoutVTable](fcQVBoxLayout_vdata(self))
  let self = QVBoxLayout(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc fcQVBoxLayout_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QVBoxLayoutVTable](fcQVBoxLayout_vdata(self))
  let self = QVBoxLayout(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc fcQVBoxLayout_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QVBoxLayoutVTable](fcQVBoxLayout_vdata(self))
  let self = QVBoxLayout(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc fcQVBoxLayout_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QVBoxLayoutVTable](fcQVBoxLayout_vdata(self))
  let self = QVBoxLayout(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

proc fcQVBoxLayout_vtable_callback_widget(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QVBoxLayoutVTable](fcQVBoxLayout_vdata(self))
  let self = QVBoxLayout(h: self)
  var virtualReturn = vtbl[].widget(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQVBoxLayout_vtable_callback_spacerItem(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QVBoxLayoutVTable](fcQVBoxLayout_vdata(self))
  let self = QVBoxLayout(h: self)
  var virtualReturn = vtbl[].spacerItem(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

type VirtualQVBoxLayout* {.inheritable.} = ref object of QVBoxLayout
  vtbl*: cQVBoxLayoutVTable

method metaObject*(self: VirtualQVBoxLayout): gen_qobjectdefs_types.QMetaObject {.base.} =
  QVBoxLayoutmetaObject(self[])
method metacast*(self: VirtualQVBoxLayout, param1: cstring): pointer {.base.} =
  QVBoxLayoutmetacast(self[], param1)
method metacall*(self: VirtualQVBoxLayout, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QVBoxLayoutmetacall(self[], param1, param2, param3)
method addItem*(self: VirtualQVBoxLayout, param1: gen_qlayoutitem_types.QLayoutItem): void {.base.} =
  QVBoxLayoutaddItem(self[], param1)
method spacing*(self: VirtualQVBoxLayout): cint {.base.} =
  QVBoxLayoutspacing(self[])
method setSpacing*(self: VirtualQVBoxLayout, spacing: cint): void {.base.} =
  QVBoxLayoutsetSpacing(self[], spacing)
method sizeHint*(self: VirtualQVBoxLayout): gen_qsize_types.QSize {.base.} =
  QVBoxLayoutsizeHint(self[])
method minimumSize*(self: VirtualQVBoxLayout): gen_qsize_types.QSize {.base.} =
  QVBoxLayoutminimumSize(self[])
method maximumSize*(self: VirtualQVBoxLayout): gen_qsize_types.QSize {.base.} =
  QVBoxLayoutmaximumSize(self[])
method hasHeightForWidth*(self: VirtualQVBoxLayout): bool {.base.} =
  QVBoxLayouthasHeightForWidth(self[])
method heightForWidth*(self: VirtualQVBoxLayout, param1: cint): cint {.base.} =
  QVBoxLayoutheightForWidth(self[], param1)
method minimumHeightForWidth*(self: VirtualQVBoxLayout, param1: cint): cint {.base.} =
  QVBoxLayoutminimumHeightForWidth(self[], param1)
method expandingDirections*(self: VirtualQVBoxLayout): cint {.base.} =
  QVBoxLayoutexpandingDirections(self[])
method invalidate*(self: VirtualQVBoxLayout): void {.base.} =
  QVBoxLayoutinvalidate(self[])
method itemAt*(self: VirtualQVBoxLayout, param1: cint): gen_qlayoutitem_types.QLayoutItem {.base.} =
  QVBoxLayoutitemAt(self[], param1)
method takeAt*(self: VirtualQVBoxLayout, param1: cint): gen_qlayoutitem_types.QLayoutItem {.base.} =
  QVBoxLayouttakeAt(self[], param1)
method count*(self: VirtualQVBoxLayout): cint {.base.} =
  QVBoxLayoutcount(self[])
method setGeometry*(self: VirtualQVBoxLayout, geometry: gen_qrect_types.QRect): void {.base.} =
  QVBoxLayoutsetGeometry(self[], geometry)
method geometry*(self: VirtualQVBoxLayout): gen_qrect_types.QRect {.base.} =
  QVBoxLayoutgeometry(self[])
method indexOf*(self: VirtualQVBoxLayout, param1: gen_qwidget_types.QWidget): cint {.base.} =
  QVBoxLayoutindexOf(self[], param1)
method isEmpty*(self: VirtualQVBoxLayout): bool {.base.} =
  QVBoxLayoutisEmpty(self[])
method controlTypes*(self: VirtualQVBoxLayout): cint {.base.} =
  QVBoxLayoutcontrolTypes(self[])
method replaceWidget*(self: VirtualQVBoxLayout, fromVal: gen_qwidget_types.QWidget, to: gen_qwidget_types.QWidget, options: cint): gen_qlayoutitem_types.QLayoutItem {.base.} =
  QVBoxLayoutreplaceWidget(self[], fromVal, to, options)
method layout*(self: VirtualQVBoxLayout): gen_qlayout_types.QLayout {.base.} =
  QVBoxLayoutlayout(self[])
method childEvent*(self: VirtualQVBoxLayout, e: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QVBoxLayoutchildEvent(self[], e)
method event*(self: VirtualQVBoxLayout, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QVBoxLayoutevent(self[], event)
method eventFilter*(self: VirtualQVBoxLayout, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QVBoxLayouteventFilter(self[], watched, event)
method timerEvent*(self: VirtualQVBoxLayout, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QVBoxLayouttimerEvent(self[], event)
method customEvent*(self: VirtualQVBoxLayout, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QVBoxLayoutcustomEvent(self[], event)
method connectNotify*(self: VirtualQVBoxLayout, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QVBoxLayoutconnectNotify(self[], signal)
method disconnectNotify*(self: VirtualQVBoxLayout, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QVBoxLayoutdisconnectNotify(self[], signal)
method widget*(self: VirtualQVBoxLayout): gen_qwidget_types.QWidget {.base.} =
  QVBoxLayoutwidget(self[])
method spacerItem*(self: VirtualQVBoxLayout): gen_qlayoutitem_types.QSpacerItem {.base.} =
  QVBoxLayoutspacerItem(self[])

proc fcQVBoxLayout_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQVBoxLayout](fcQVBoxLayout_vdata(self))
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQVBoxLayout_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQVBoxLayout](fcQVBoxLayout_vdata(self))
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

proc fcQVBoxLayout_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQVBoxLayout](fcQVBoxLayout_vdata(self))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

proc fcQVBoxLayout_method_callback_addItem(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQVBoxLayout](fcQVBoxLayout_vdata(self))
  let slotval1 = gen_qlayoutitem_types.QLayoutItem(h: param1, owned: false)
  inst.addItem(slotval1)

proc fcQVBoxLayout_method_callback_spacing(self: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQVBoxLayout](fcQVBoxLayout_vdata(self))
  var virtualReturn = inst.spacing()
  virtualReturn

proc fcQVBoxLayout_method_callback_setSpacing(self: pointer, spacing: cint): void {.cdecl.} =
  let inst = cast[VirtualQVBoxLayout](fcQVBoxLayout_vdata(self))
  let slotval1 = spacing
  inst.setSpacing(slotval1)

proc fcQVBoxLayout_method_callback_sizeHint(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQVBoxLayout](fcQVBoxLayout_vdata(self))
  var virtualReturn = inst.sizeHint()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQVBoxLayout_method_callback_minimumSize(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQVBoxLayout](fcQVBoxLayout_vdata(self))
  var virtualReturn = inst.minimumSize()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQVBoxLayout_method_callback_maximumSize(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQVBoxLayout](fcQVBoxLayout_vdata(self))
  var virtualReturn = inst.maximumSize()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQVBoxLayout_method_callback_hasHeightForWidth(self: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQVBoxLayout](fcQVBoxLayout_vdata(self))
  var virtualReturn = inst.hasHeightForWidth()
  virtualReturn

proc fcQVBoxLayout_method_callback_heightForWidth(self: pointer, param1: cint): cint {.cdecl.} =
  let inst = cast[VirtualQVBoxLayout](fcQVBoxLayout_vdata(self))
  let slotval1 = param1
  var virtualReturn = inst.heightForWidth(slotval1)
  virtualReturn

proc fcQVBoxLayout_method_callback_minimumHeightForWidth(self: pointer, param1: cint): cint {.cdecl.} =
  let inst = cast[VirtualQVBoxLayout](fcQVBoxLayout_vdata(self))
  let slotval1 = param1
  var virtualReturn = inst.minimumHeightForWidth(slotval1)
  virtualReturn

proc fcQVBoxLayout_method_callback_expandingDirections(self: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQVBoxLayout](fcQVBoxLayout_vdata(self))
  var virtualReturn = inst.expandingDirections()
  cint(virtualReturn)

proc fcQVBoxLayout_method_callback_invalidate(self: pointer): void {.cdecl.} =
  let inst = cast[VirtualQVBoxLayout](fcQVBoxLayout_vdata(self))
  inst.invalidate()

proc fcQVBoxLayout_method_callback_itemAt(self: pointer, param1: cint): pointer {.cdecl.} =
  let inst = cast[VirtualQVBoxLayout](fcQVBoxLayout_vdata(self))
  let slotval1 = param1
  var virtualReturn = inst.itemAt(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQVBoxLayout_method_callback_takeAt(self: pointer, param1: cint): pointer {.cdecl.} =
  let inst = cast[VirtualQVBoxLayout](fcQVBoxLayout_vdata(self))
  let slotval1 = param1
  var virtualReturn = inst.takeAt(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQVBoxLayout_method_callback_count(self: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQVBoxLayout](fcQVBoxLayout_vdata(self))
  var virtualReturn = inst.count()
  virtualReturn

proc fcQVBoxLayout_method_callback_setGeometry(self: pointer, geometry: pointer): void {.cdecl.} =
  let inst = cast[VirtualQVBoxLayout](fcQVBoxLayout_vdata(self))
  let slotval1 = gen_qrect_types.QRect(h: geometry, owned: false)
  inst.setGeometry(slotval1)

proc fcQVBoxLayout_method_callback_geometry(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQVBoxLayout](fcQVBoxLayout_vdata(self))
  var virtualReturn = inst.geometry()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQVBoxLayout_method_callback_indexOf(self: pointer, param1: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQVBoxLayout](fcQVBoxLayout_vdata(self))
  let slotval1 = gen_qwidget_types.QWidget(h: param1, owned: false)
  var virtualReturn = inst.indexOf(slotval1)
  virtualReturn

proc fcQVBoxLayout_method_callback_isEmpty(self: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQVBoxLayout](fcQVBoxLayout_vdata(self))
  var virtualReturn = inst.isEmpty()
  virtualReturn

proc fcQVBoxLayout_method_callback_controlTypes(self: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQVBoxLayout](fcQVBoxLayout_vdata(self))
  var virtualReturn = inst.controlTypes()
  cint(virtualReturn)

proc fcQVBoxLayout_method_callback_replaceWidget(self: pointer, fromVal: pointer, to: pointer, options: cint): pointer {.cdecl.} =
  let inst = cast[VirtualQVBoxLayout](fcQVBoxLayout_vdata(self))
  let slotval1 = gen_qwidget_types.QWidget(h: fromVal, owned: false)
  let slotval2 = gen_qwidget_types.QWidget(h: to, owned: false)
  let slotval3 = cint(options)
  var virtualReturn = inst.replaceWidget(slotval1, slotval2, slotval3)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQVBoxLayout_method_callback_layout(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQVBoxLayout](fcQVBoxLayout_vdata(self))
  var virtualReturn = inst.layout()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQVBoxLayout_method_callback_childEvent(self: pointer, e: pointer): void {.cdecl.} =
  let inst = cast[VirtualQVBoxLayout](fcQVBoxLayout_vdata(self))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: e, owned: false)
  inst.childEvent(slotval1)

proc fcQVBoxLayout_method_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQVBoxLayout](fcQVBoxLayout_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

proc fcQVBoxLayout_method_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQVBoxLayout](fcQVBoxLayout_vdata(self))
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

proc fcQVBoxLayout_method_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQVBoxLayout](fcQVBoxLayout_vdata(self))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  inst.timerEvent(slotval1)

proc fcQVBoxLayout_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQVBoxLayout](fcQVBoxLayout_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)

proc fcQVBoxLayout_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQVBoxLayout](fcQVBoxLayout_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

proc fcQVBoxLayout_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQVBoxLayout](fcQVBoxLayout_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.disconnectNotify(slotval1)

proc fcQVBoxLayout_method_callback_widget(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQVBoxLayout](fcQVBoxLayout_vdata(self))
  var virtualReturn = inst.widget()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQVBoxLayout_method_callback_spacerItem(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQVBoxLayout](fcQVBoxLayout_vdata(self))
  var virtualReturn = inst.spacerItem()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h


proc widgetEvent*(self: gen_qboxlayout_types.QVBoxLayout, param1: gen_qcoreevent_types.QEvent): void =
  fcQVBoxLayout_protectedbase_widgetEvent(self.h, param1.h)

proc addChildLayout*(self: gen_qboxlayout_types.QVBoxLayout, l: gen_qlayout_types.QLayout): void =
  fcQVBoxLayout_protectedbase_addChildLayout(self.h, l.h)

proc addChildWidget*(self: gen_qboxlayout_types.QVBoxLayout, w: gen_qwidget_types.QWidget): void =
  fcQVBoxLayout_protectedbase_addChildWidget(self.h, w.h)

proc adoptLayout*(self: gen_qboxlayout_types.QVBoxLayout, layout: gen_qlayout_types.QLayout): bool =
  fcQVBoxLayout_protectedbase_adoptLayout(self.h, layout.h)

proc alignmentRect*(self: gen_qboxlayout_types.QVBoxLayout, param1: gen_qrect_types.QRect): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fcQVBoxLayout_protectedbase_alignmentRect(self.h, param1.h), owned: true)

proc sender*(self: gen_qboxlayout_types.QVBoxLayout): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQVBoxLayout_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qboxlayout_types.QVBoxLayout): cint =
  fcQVBoxLayout_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qboxlayout_types.QVBoxLayout, signal: cstring): cint =
  fcQVBoxLayout_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qboxlayout_types.QVBoxLayout, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQVBoxLayout_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qboxlayout_types.QVBoxLayout,
    parent: gen_qwidget_types.QWidget,
    vtbl: ref QVBoxLayoutVTable = nil): gen_qboxlayout_types.QVBoxLayout =
  let vtbl = if vtbl == nil: new QVBoxLayoutVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QVBoxLayoutVTable](fcQVBoxLayout_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQVBoxLayout_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQVBoxLayout_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQVBoxLayout_vtable_callback_metacall
  if not isNil(vtbl[].addItem):
    vtbl[].vtbl.addItem = fcQVBoxLayout_vtable_callback_addItem
  if not isNil(vtbl[].spacing):
    vtbl[].vtbl.spacing = fcQVBoxLayout_vtable_callback_spacing
  if not isNil(vtbl[].setSpacing):
    vtbl[].vtbl.setSpacing = fcQVBoxLayout_vtable_callback_setSpacing
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = fcQVBoxLayout_vtable_callback_sizeHint
  if not isNil(vtbl[].minimumSize):
    vtbl[].vtbl.minimumSize = fcQVBoxLayout_vtable_callback_minimumSize
  if not isNil(vtbl[].maximumSize):
    vtbl[].vtbl.maximumSize = fcQVBoxLayout_vtable_callback_maximumSize
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = fcQVBoxLayout_vtable_callback_hasHeightForWidth
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = fcQVBoxLayout_vtable_callback_heightForWidth
  if not isNil(vtbl[].minimumHeightForWidth):
    vtbl[].vtbl.minimumHeightForWidth = fcQVBoxLayout_vtable_callback_minimumHeightForWidth
  if not isNil(vtbl[].expandingDirections):
    vtbl[].vtbl.expandingDirections = fcQVBoxLayout_vtable_callback_expandingDirections
  if not isNil(vtbl[].invalidate):
    vtbl[].vtbl.invalidate = fcQVBoxLayout_vtable_callback_invalidate
  if not isNil(vtbl[].itemAt):
    vtbl[].vtbl.itemAt = fcQVBoxLayout_vtable_callback_itemAt
  if not isNil(vtbl[].takeAt):
    vtbl[].vtbl.takeAt = fcQVBoxLayout_vtable_callback_takeAt
  if not isNil(vtbl[].count):
    vtbl[].vtbl.count = fcQVBoxLayout_vtable_callback_count
  if not isNil(vtbl[].setGeometry):
    vtbl[].vtbl.setGeometry = fcQVBoxLayout_vtable_callback_setGeometry
  if not isNil(vtbl[].geometry):
    vtbl[].vtbl.geometry = fcQVBoxLayout_vtable_callback_geometry
  if not isNil(vtbl[].indexOf):
    vtbl[].vtbl.indexOf = fcQVBoxLayout_vtable_callback_indexOf
  if not isNil(vtbl[].isEmpty):
    vtbl[].vtbl.isEmpty = fcQVBoxLayout_vtable_callback_isEmpty
  if not isNil(vtbl[].controlTypes):
    vtbl[].vtbl.controlTypes = fcQVBoxLayout_vtable_callback_controlTypes
  if not isNil(vtbl[].replaceWidget):
    vtbl[].vtbl.replaceWidget = fcQVBoxLayout_vtable_callback_replaceWidget
  if not isNil(vtbl[].layout):
    vtbl[].vtbl.layout = fcQVBoxLayout_vtable_callback_layout
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQVBoxLayout_vtable_callback_childEvent
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQVBoxLayout_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQVBoxLayout_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQVBoxLayout_vtable_callback_timerEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQVBoxLayout_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQVBoxLayout_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQVBoxLayout_vtable_callback_disconnectNotify
  if not isNil(vtbl[].widget):
    vtbl[].vtbl.widget = fcQVBoxLayout_vtable_callback_widget
  if not isNil(vtbl[].spacerItem):
    vtbl[].vtbl.spacerItem = fcQVBoxLayout_vtable_callback_spacerItem
  gen_qboxlayout_types.QVBoxLayout(h: fcQVBoxLayout_new(addr(vtbl[].vtbl), addr(vtbl[]), parent.h), owned: true)

proc create*(T: type gen_qboxlayout_types.QVBoxLayout,
    vtbl: ref QVBoxLayoutVTable = nil): gen_qboxlayout_types.QVBoxLayout =
  let vtbl = if vtbl == nil: new QVBoxLayoutVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QVBoxLayoutVTable](fcQVBoxLayout_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQVBoxLayout_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQVBoxLayout_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQVBoxLayout_vtable_callback_metacall
  if not isNil(vtbl[].addItem):
    vtbl[].vtbl.addItem = fcQVBoxLayout_vtable_callback_addItem
  if not isNil(vtbl[].spacing):
    vtbl[].vtbl.spacing = fcQVBoxLayout_vtable_callback_spacing
  if not isNil(vtbl[].setSpacing):
    vtbl[].vtbl.setSpacing = fcQVBoxLayout_vtable_callback_setSpacing
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = fcQVBoxLayout_vtable_callback_sizeHint
  if not isNil(vtbl[].minimumSize):
    vtbl[].vtbl.minimumSize = fcQVBoxLayout_vtable_callback_minimumSize
  if not isNil(vtbl[].maximumSize):
    vtbl[].vtbl.maximumSize = fcQVBoxLayout_vtable_callback_maximumSize
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = fcQVBoxLayout_vtable_callback_hasHeightForWidth
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = fcQVBoxLayout_vtable_callback_heightForWidth
  if not isNil(vtbl[].minimumHeightForWidth):
    vtbl[].vtbl.minimumHeightForWidth = fcQVBoxLayout_vtable_callback_minimumHeightForWidth
  if not isNil(vtbl[].expandingDirections):
    vtbl[].vtbl.expandingDirections = fcQVBoxLayout_vtable_callback_expandingDirections
  if not isNil(vtbl[].invalidate):
    vtbl[].vtbl.invalidate = fcQVBoxLayout_vtable_callback_invalidate
  if not isNil(vtbl[].itemAt):
    vtbl[].vtbl.itemAt = fcQVBoxLayout_vtable_callback_itemAt
  if not isNil(vtbl[].takeAt):
    vtbl[].vtbl.takeAt = fcQVBoxLayout_vtable_callback_takeAt
  if not isNil(vtbl[].count):
    vtbl[].vtbl.count = fcQVBoxLayout_vtable_callback_count
  if not isNil(vtbl[].setGeometry):
    vtbl[].vtbl.setGeometry = fcQVBoxLayout_vtable_callback_setGeometry
  if not isNil(vtbl[].geometry):
    vtbl[].vtbl.geometry = fcQVBoxLayout_vtable_callback_geometry
  if not isNil(vtbl[].indexOf):
    vtbl[].vtbl.indexOf = fcQVBoxLayout_vtable_callback_indexOf
  if not isNil(vtbl[].isEmpty):
    vtbl[].vtbl.isEmpty = fcQVBoxLayout_vtable_callback_isEmpty
  if not isNil(vtbl[].controlTypes):
    vtbl[].vtbl.controlTypes = fcQVBoxLayout_vtable_callback_controlTypes
  if not isNil(vtbl[].replaceWidget):
    vtbl[].vtbl.replaceWidget = fcQVBoxLayout_vtable_callback_replaceWidget
  if not isNil(vtbl[].layout):
    vtbl[].vtbl.layout = fcQVBoxLayout_vtable_callback_layout
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQVBoxLayout_vtable_callback_childEvent
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQVBoxLayout_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQVBoxLayout_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQVBoxLayout_vtable_callback_timerEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQVBoxLayout_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQVBoxLayout_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQVBoxLayout_vtable_callback_disconnectNotify
  if not isNil(vtbl[].widget):
    vtbl[].vtbl.widget = fcQVBoxLayout_vtable_callback_widget
  if not isNil(vtbl[].spacerItem):
    vtbl[].vtbl.spacerItem = fcQVBoxLayout_vtable_callback_spacerItem
  gen_qboxlayout_types.QVBoxLayout(h: fcQVBoxLayout_new2(addr(vtbl[].vtbl), addr(vtbl[])), owned: true)

const cQVBoxLayout_mvtbl = cQVBoxLayoutVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQVBoxLayout()[])](self.fcQVBoxLayout_vdata())
    inst[].h = nil
    inst[].owned = false,

  metaObject: fcQVBoxLayout_method_callback_metaObject,
  metacast: fcQVBoxLayout_method_callback_metacast,
  metacall: fcQVBoxLayout_method_callback_metacall,
  addItem: fcQVBoxLayout_method_callback_addItem,
  spacing: fcQVBoxLayout_method_callback_spacing,
  setSpacing: fcQVBoxLayout_method_callback_setSpacing,
  sizeHint: fcQVBoxLayout_method_callback_sizeHint,
  minimumSize: fcQVBoxLayout_method_callback_minimumSize,
  maximumSize: fcQVBoxLayout_method_callback_maximumSize,
  hasHeightForWidth: fcQVBoxLayout_method_callback_hasHeightForWidth,
  heightForWidth: fcQVBoxLayout_method_callback_heightForWidth,
  minimumHeightForWidth: fcQVBoxLayout_method_callback_minimumHeightForWidth,
  expandingDirections: fcQVBoxLayout_method_callback_expandingDirections,
  invalidate: fcQVBoxLayout_method_callback_invalidate,
  itemAt: fcQVBoxLayout_method_callback_itemAt,
  takeAt: fcQVBoxLayout_method_callback_takeAt,
  count: fcQVBoxLayout_method_callback_count,
  setGeometry: fcQVBoxLayout_method_callback_setGeometry,
  geometry: fcQVBoxLayout_method_callback_geometry,
  indexOf: fcQVBoxLayout_method_callback_indexOf,
  isEmpty: fcQVBoxLayout_method_callback_isEmpty,
  controlTypes: fcQVBoxLayout_method_callback_controlTypes,
  replaceWidget: fcQVBoxLayout_method_callback_replaceWidget,
  layout: fcQVBoxLayout_method_callback_layout,
  childEvent: fcQVBoxLayout_method_callback_childEvent,
  event: fcQVBoxLayout_method_callback_event,
  eventFilter: fcQVBoxLayout_method_callback_eventFilter,
  timerEvent: fcQVBoxLayout_method_callback_timerEvent,
  customEvent: fcQVBoxLayout_method_callback_customEvent,
  connectNotify: fcQVBoxLayout_method_callback_connectNotify,
  disconnectNotify: fcQVBoxLayout_method_callback_disconnectNotify,
  widget: fcQVBoxLayout_method_callback_widget,
  spacerItem: fcQVBoxLayout_method_callback_spacerItem,
)
proc create*(T: type gen_qboxlayout_types.QVBoxLayout,
    parent: gen_qwidget_types.QWidget,
    inst: VirtualQVBoxLayout) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQVBoxLayout_new(addr(cQVBoxLayout_mvtbl), addr(inst[]), parent.h)
  inst[].owned = true

proc create*(T: type gen_qboxlayout_types.QVBoxLayout,
    inst: VirtualQVBoxLayout) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQVBoxLayout_new2(addr(cQVBoxLayout_mvtbl), addr(inst[]))
  inst[].owned = true

proc staticMetaObject*(_: type gen_qboxlayout_types.QVBoxLayout): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQVBoxLayout_staticMetaObject())
