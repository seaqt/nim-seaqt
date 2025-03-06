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
{.compile("gen_qboxlayout.cpp", cflags).}


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

proc fcQBoxLayout_metaObject(self: pointer, ): pointer {.importc: "QBoxLayout_metaObject".}
proc fcQBoxLayout_metacast(self: pointer, param1: cstring): pointer {.importc: "QBoxLayout_metacast".}
proc fcQBoxLayout_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QBoxLayout_metacall".}
proc fcQBoxLayout_tr(s: cstring): struct_miqt_string {.importc: "QBoxLayout_tr".}
proc fcQBoxLayout_direction(self: pointer, ): cint {.importc: "QBoxLayout_direction".}
proc fcQBoxLayout_setDirection(self: pointer, direction: cint): void {.importc: "QBoxLayout_setDirection".}
proc fcQBoxLayout_addSpacing(self: pointer, size: cint): void {.importc: "QBoxLayout_addSpacing".}
proc fcQBoxLayout_addStretch(self: pointer, ): void {.importc: "QBoxLayout_addStretch".}
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
proc fcQBoxLayout_spacing(self: pointer, ): cint {.importc: "QBoxLayout_spacing".}
proc fcQBoxLayout_setSpacing(self: pointer, spacing: cint): void {.importc: "QBoxLayout_setSpacing".}
proc fcQBoxLayout_setStretchFactor(self: pointer, w: pointer, stretch: cint): bool {.importc: "QBoxLayout_setStretchFactor".}
proc fcQBoxLayout_setStretchFactor2(self: pointer, l: pointer, stretch: cint): bool {.importc: "QBoxLayout_setStretchFactor2".}
proc fcQBoxLayout_setStretch(self: pointer, index: cint, stretch: cint): void {.importc: "QBoxLayout_setStretch".}
proc fcQBoxLayout_stretch(self: pointer, index: cint): cint {.importc: "QBoxLayout_stretch".}
proc fcQBoxLayout_sizeHint(self: pointer, ): pointer {.importc: "QBoxLayout_sizeHint".}
proc fcQBoxLayout_minimumSize(self: pointer, ): pointer {.importc: "QBoxLayout_minimumSize".}
proc fcQBoxLayout_maximumSize(self: pointer, ): pointer {.importc: "QBoxLayout_maximumSize".}
proc fcQBoxLayout_hasHeightForWidth(self: pointer, ): bool {.importc: "QBoxLayout_hasHeightForWidth".}
proc fcQBoxLayout_heightForWidth(self: pointer, param1: cint): cint {.importc: "QBoxLayout_heightForWidth".}
proc fcQBoxLayout_minimumHeightForWidth(self: pointer, param1: cint): cint {.importc: "QBoxLayout_minimumHeightForWidth".}
proc fcQBoxLayout_expandingDirections(self: pointer, ): cint {.importc: "QBoxLayout_expandingDirections".}
proc fcQBoxLayout_invalidate(self: pointer, ): void {.importc: "QBoxLayout_invalidate".}
proc fcQBoxLayout_itemAt(self: pointer, param1: cint): pointer {.importc: "QBoxLayout_itemAt".}
proc fcQBoxLayout_takeAt(self: pointer, param1: cint): pointer {.importc: "QBoxLayout_takeAt".}
proc fcQBoxLayout_count(self: pointer, ): cint {.importc: "QBoxLayout_count".}
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
type cQBoxLayoutVTable = object
  destructor*: proc(vtbl: ptr cQBoxLayoutVTable, self: ptr cQBoxLayout) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(vtbl, self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(vtbl, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  addItem*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  spacing*: proc(vtbl, self: pointer, ): cint {.cdecl, raises: [], gcsafe.}
  setSpacing*: proc(vtbl, self: pointer, spacing: cint): void {.cdecl, raises: [], gcsafe.}
  sizeHint*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  minimumSize*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  maximumSize*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  hasHeightForWidth*: proc(vtbl, self: pointer, ): bool {.cdecl, raises: [], gcsafe.}
  heightForWidth*: proc(vtbl, self: pointer, param1: cint): cint {.cdecl, raises: [], gcsafe.}
  minimumHeightForWidth*: proc(vtbl, self: pointer, param1: cint): cint {.cdecl, raises: [], gcsafe.}
  expandingDirections*: proc(vtbl, self: pointer, ): cint {.cdecl, raises: [], gcsafe.}
  invalidate*: proc(vtbl, self: pointer, ): void {.cdecl, raises: [], gcsafe.}
  itemAt*: proc(vtbl, self: pointer, param1: cint): pointer {.cdecl, raises: [], gcsafe.}
  takeAt*: proc(vtbl, self: pointer, param1: cint): pointer {.cdecl, raises: [], gcsafe.}
  count*: proc(vtbl, self: pointer, ): cint {.cdecl, raises: [], gcsafe.}
  setGeometry*: proc(vtbl, self: pointer, geometry: pointer): void {.cdecl, raises: [], gcsafe.}
  geometry*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  indexOf*: proc(vtbl, self: pointer, param1: pointer): cint {.cdecl, raises: [], gcsafe.}
  isEmpty*: proc(vtbl, self: pointer, ): bool {.cdecl, raises: [], gcsafe.}
  controlTypes*: proc(vtbl, self: pointer, ): cint {.cdecl, raises: [], gcsafe.}
  replaceWidget*: proc(vtbl, self: pointer, fromVal: pointer, to: pointer, options: cint): pointer {.cdecl, raises: [], gcsafe.}
  layout*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(vtbl, self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  event*: proc(vtbl, self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(vtbl, self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  widget*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  spacerItem*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
proc fcQBoxLayout_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QBoxLayout_virtualbase_metaObject".}
proc fcQBoxLayout_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QBoxLayout_virtualbase_metacast".}
proc fcQBoxLayout_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QBoxLayout_virtualbase_metacall".}
proc fcQBoxLayout_virtualbase_addItem(self: pointer, param1: pointer): void {.importc: "QBoxLayout_virtualbase_addItem".}
proc fcQBoxLayout_virtualbase_spacing(self: pointer, ): cint {.importc: "QBoxLayout_virtualbase_spacing".}
proc fcQBoxLayout_virtualbase_setSpacing(self: pointer, spacing: cint): void {.importc: "QBoxLayout_virtualbase_setSpacing".}
proc fcQBoxLayout_virtualbase_sizeHint(self: pointer, ): pointer {.importc: "QBoxLayout_virtualbase_sizeHint".}
proc fcQBoxLayout_virtualbase_minimumSize(self: pointer, ): pointer {.importc: "QBoxLayout_virtualbase_minimumSize".}
proc fcQBoxLayout_virtualbase_maximumSize(self: pointer, ): pointer {.importc: "QBoxLayout_virtualbase_maximumSize".}
proc fcQBoxLayout_virtualbase_hasHeightForWidth(self: pointer, ): bool {.importc: "QBoxLayout_virtualbase_hasHeightForWidth".}
proc fcQBoxLayout_virtualbase_heightForWidth(self: pointer, param1: cint): cint {.importc: "QBoxLayout_virtualbase_heightForWidth".}
proc fcQBoxLayout_virtualbase_minimumHeightForWidth(self: pointer, param1: cint): cint {.importc: "QBoxLayout_virtualbase_minimumHeightForWidth".}
proc fcQBoxLayout_virtualbase_expandingDirections(self: pointer, ): cint {.importc: "QBoxLayout_virtualbase_expandingDirections".}
proc fcQBoxLayout_virtualbase_invalidate(self: pointer, ): void {.importc: "QBoxLayout_virtualbase_invalidate".}
proc fcQBoxLayout_virtualbase_itemAt(self: pointer, param1: cint): pointer {.importc: "QBoxLayout_virtualbase_itemAt".}
proc fcQBoxLayout_virtualbase_takeAt(self: pointer, param1: cint): pointer {.importc: "QBoxLayout_virtualbase_takeAt".}
proc fcQBoxLayout_virtualbase_count(self: pointer, ): cint {.importc: "QBoxLayout_virtualbase_count".}
proc fcQBoxLayout_virtualbase_setGeometry(self: pointer, geometry: pointer): void {.importc: "QBoxLayout_virtualbase_setGeometry".}
proc fcQBoxLayout_virtualbase_geometry(self: pointer, ): pointer {.importc: "QBoxLayout_virtualbase_geometry".}
proc fcQBoxLayout_virtualbase_indexOf(self: pointer, param1: pointer): cint {.importc: "QBoxLayout_virtualbase_indexOf".}
proc fcQBoxLayout_virtualbase_isEmpty(self: pointer, ): bool {.importc: "QBoxLayout_virtualbase_isEmpty".}
proc fcQBoxLayout_virtualbase_controlTypes(self: pointer, ): cint {.importc: "QBoxLayout_virtualbase_controlTypes".}
proc fcQBoxLayout_virtualbase_replaceWidget(self: pointer, fromVal: pointer, to: pointer, options: cint): pointer {.importc: "QBoxLayout_virtualbase_replaceWidget".}
proc fcQBoxLayout_virtualbase_layout(self: pointer, ): pointer {.importc: "QBoxLayout_virtualbase_layout".}
proc fcQBoxLayout_virtualbase_childEvent(self: pointer, e: pointer): void {.importc: "QBoxLayout_virtualbase_childEvent".}
proc fcQBoxLayout_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QBoxLayout_virtualbase_event".}
proc fcQBoxLayout_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QBoxLayout_virtualbase_eventFilter".}
proc fcQBoxLayout_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QBoxLayout_virtualbase_timerEvent".}
proc fcQBoxLayout_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QBoxLayout_virtualbase_customEvent".}
proc fcQBoxLayout_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QBoxLayout_virtualbase_connectNotify".}
proc fcQBoxLayout_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QBoxLayout_virtualbase_disconnectNotify".}
proc fcQBoxLayout_virtualbase_widget(self: pointer, ): pointer {.importc: "QBoxLayout_virtualbase_widget".}
proc fcQBoxLayout_virtualbase_spacerItem(self: pointer, ): pointer {.importc: "QBoxLayout_virtualbase_spacerItem".}
proc fcQBoxLayout_new(vtbl: pointer, param1: cint): ptr cQBoxLayout {.importc: "QBoxLayout_new".}
proc fcQBoxLayout_new2(vtbl: pointer, param1: cint, parent: pointer): ptr cQBoxLayout {.importc: "QBoxLayout_new2".}
proc fcQBoxLayout_staticMetaObject(): pointer {.importc: "QBoxLayout_staticMetaObject".}
proc fcQBoxLayout_delete(self: pointer) {.importc: "QBoxLayout_delete".}
proc fcQHBoxLayout_metaObject(self: pointer, ): pointer {.importc: "QHBoxLayout_metaObject".}
proc fcQHBoxLayout_metacast(self: pointer, param1: cstring): pointer {.importc: "QHBoxLayout_metacast".}
proc fcQHBoxLayout_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QHBoxLayout_metacall".}
proc fcQHBoxLayout_tr(s: cstring): struct_miqt_string {.importc: "QHBoxLayout_tr".}
proc fcQHBoxLayout_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QHBoxLayout_tr2".}
proc fcQHBoxLayout_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QHBoxLayout_tr3".}
type cQHBoxLayoutVTable = object
  destructor*: proc(vtbl: ptr cQHBoxLayoutVTable, self: ptr cQHBoxLayout) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(vtbl, self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(vtbl, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  addItem*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  spacing*: proc(vtbl, self: pointer, ): cint {.cdecl, raises: [], gcsafe.}
  setSpacing*: proc(vtbl, self: pointer, spacing: cint): void {.cdecl, raises: [], gcsafe.}
  sizeHint*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  minimumSize*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  maximumSize*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  hasHeightForWidth*: proc(vtbl, self: pointer, ): bool {.cdecl, raises: [], gcsafe.}
  heightForWidth*: proc(vtbl, self: pointer, param1: cint): cint {.cdecl, raises: [], gcsafe.}
  minimumHeightForWidth*: proc(vtbl, self: pointer, param1: cint): cint {.cdecl, raises: [], gcsafe.}
  expandingDirections*: proc(vtbl, self: pointer, ): cint {.cdecl, raises: [], gcsafe.}
  invalidate*: proc(vtbl, self: pointer, ): void {.cdecl, raises: [], gcsafe.}
  itemAt*: proc(vtbl, self: pointer, param1: cint): pointer {.cdecl, raises: [], gcsafe.}
  takeAt*: proc(vtbl, self: pointer, param1: cint): pointer {.cdecl, raises: [], gcsafe.}
  count*: proc(vtbl, self: pointer, ): cint {.cdecl, raises: [], gcsafe.}
  setGeometry*: proc(vtbl, self: pointer, geometry: pointer): void {.cdecl, raises: [], gcsafe.}
  geometry*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  indexOf*: proc(vtbl, self: pointer, param1: pointer): cint {.cdecl, raises: [], gcsafe.}
  isEmpty*: proc(vtbl, self: pointer, ): bool {.cdecl, raises: [], gcsafe.}
  controlTypes*: proc(vtbl, self: pointer, ): cint {.cdecl, raises: [], gcsafe.}
  replaceWidget*: proc(vtbl, self: pointer, fromVal: pointer, to: pointer, options: cint): pointer {.cdecl, raises: [], gcsafe.}
  layout*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(vtbl, self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  event*: proc(vtbl, self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(vtbl, self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  widget*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  spacerItem*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
proc fcQHBoxLayout_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QHBoxLayout_virtualbase_metaObject".}
proc fcQHBoxLayout_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QHBoxLayout_virtualbase_metacast".}
proc fcQHBoxLayout_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QHBoxLayout_virtualbase_metacall".}
proc fcQHBoxLayout_virtualbase_addItem(self: pointer, param1: pointer): void {.importc: "QHBoxLayout_virtualbase_addItem".}
proc fcQHBoxLayout_virtualbase_spacing(self: pointer, ): cint {.importc: "QHBoxLayout_virtualbase_spacing".}
proc fcQHBoxLayout_virtualbase_setSpacing(self: pointer, spacing: cint): void {.importc: "QHBoxLayout_virtualbase_setSpacing".}
proc fcQHBoxLayout_virtualbase_sizeHint(self: pointer, ): pointer {.importc: "QHBoxLayout_virtualbase_sizeHint".}
proc fcQHBoxLayout_virtualbase_minimumSize(self: pointer, ): pointer {.importc: "QHBoxLayout_virtualbase_minimumSize".}
proc fcQHBoxLayout_virtualbase_maximumSize(self: pointer, ): pointer {.importc: "QHBoxLayout_virtualbase_maximumSize".}
proc fcQHBoxLayout_virtualbase_hasHeightForWidth(self: pointer, ): bool {.importc: "QHBoxLayout_virtualbase_hasHeightForWidth".}
proc fcQHBoxLayout_virtualbase_heightForWidth(self: pointer, param1: cint): cint {.importc: "QHBoxLayout_virtualbase_heightForWidth".}
proc fcQHBoxLayout_virtualbase_minimumHeightForWidth(self: pointer, param1: cint): cint {.importc: "QHBoxLayout_virtualbase_minimumHeightForWidth".}
proc fcQHBoxLayout_virtualbase_expandingDirections(self: pointer, ): cint {.importc: "QHBoxLayout_virtualbase_expandingDirections".}
proc fcQHBoxLayout_virtualbase_invalidate(self: pointer, ): void {.importc: "QHBoxLayout_virtualbase_invalidate".}
proc fcQHBoxLayout_virtualbase_itemAt(self: pointer, param1: cint): pointer {.importc: "QHBoxLayout_virtualbase_itemAt".}
proc fcQHBoxLayout_virtualbase_takeAt(self: pointer, param1: cint): pointer {.importc: "QHBoxLayout_virtualbase_takeAt".}
proc fcQHBoxLayout_virtualbase_count(self: pointer, ): cint {.importc: "QHBoxLayout_virtualbase_count".}
proc fcQHBoxLayout_virtualbase_setGeometry(self: pointer, geometry: pointer): void {.importc: "QHBoxLayout_virtualbase_setGeometry".}
proc fcQHBoxLayout_virtualbase_geometry(self: pointer, ): pointer {.importc: "QHBoxLayout_virtualbase_geometry".}
proc fcQHBoxLayout_virtualbase_indexOf(self: pointer, param1: pointer): cint {.importc: "QHBoxLayout_virtualbase_indexOf".}
proc fcQHBoxLayout_virtualbase_isEmpty(self: pointer, ): bool {.importc: "QHBoxLayout_virtualbase_isEmpty".}
proc fcQHBoxLayout_virtualbase_controlTypes(self: pointer, ): cint {.importc: "QHBoxLayout_virtualbase_controlTypes".}
proc fcQHBoxLayout_virtualbase_replaceWidget(self: pointer, fromVal: pointer, to: pointer, options: cint): pointer {.importc: "QHBoxLayout_virtualbase_replaceWidget".}
proc fcQHBoxLayout_virtualbase_layout(self: pointer, ): pointer {.importc: "QHBoxLayout_virtualbase_layout".}
proc fcQHBoxLayout_virtualbase_childEvent(self: pointer, e: pointer): void {.importc: "QHBoxLayout_virtualbase_childEvent".}
proc fcQHBoxLayout_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QHBoxLayout_virtualbase_event".}
proc fcQHBoxLayout_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QHBoxLayout_virtualbase_eventFilter".}
proc fcQHBoxLayout_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QHBoxLayout_virtualbase_timerEvent".}
proc fcQHBoxLayout_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QHBoxLayout_virtualbase_customEvent".}
proc fcQHBoxLayout_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QHBoxLayout_virtualbase_connectNotify".}
proc fcQHBoxLayout_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QHBoxLayout_virtualbase_disconnectNotify".}
proc fcQHBoxLayout_virtualbase_widget(self: pointer, ): pointer {.importc: "QHBoxLayout_virtualbase_widget".}
proc fcQHBoxLayout_virtualbase_spacerItem(self: pointer, ): pointer {.importc: "QHBoxLayout_virtualbase_spacerItem".}
proc fcQHBoxLayout_new(vtbl: pointer, parent: pointer): ptr cQHBoxLayout {.importc: "QHBoxLayout_new".}
proc fcQHBoxLayout_new2(vtbl: pointer, ): ptr cQHBoxLayout {.importc: "QHBoxLayout_new2".}
proc fcQHBoxLayout_staticMetaObject(): pointer {.importc: "QHBoxLayout_staticMetaObject".}
proc fcQHBoxLayout_delete(self: pointer) {.importc: "QHBoxLayout_delete".}
proc fcQVBoxLayout_metaObject(self: pointer, ): pointer {.importc: "QVBoxLayout_metaObject".}
proc fcQVBoxLayout_metacast(self: pointer, param1: cstring): pointer {.importc: "QVBoxLayout_metacast".}
proc fcQVBoxLayout_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QVBoxLayout_metacall".}
proc fcQVBoxLayout_tr(s: cstring): struct_miqt_string {.importc: "QVBoxLayout_tr".}
proc fcQVBoxLayout_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QVBoxLayout_tr2".}
proc fcQVBoxLayout_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QVBoxLayout_tr3".}
type cQVBoxLayoutVTable = object
  destructor*: proc(vtbl: ptr cQVBoxLayoutVTable, self: ptr cQVBoxLayout) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(vtbl, self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(vtbl, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  addItem*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  spacing*: proc(vtbl, self: pointer, ): cint {.cdecl, raises: [], gcsafe.}
  setSpacing*: proc(vtbl, self: pointer, spacing: cint): void {.cdecl, raises: [], gcsafe.}
  sizeHint*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  minimumSize*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  maximumSize*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  hasHeightForWidth*: proc(vtbl, self: pointer, ): bool {.cdecl, raises: [], gcsafe.}
  heightForWidth*: proc(vtbl, self: pointer, param1: cint): cint {.cdecl, raises: [], gcsafe.}
  minimumHeightForWidth*: proc(vtbl, self: pointer, param1: cint): cint {.cdecl, raises: [], gcsafe.}
  expandingDirections*: proc(vtbl, self: pointer, ): cint {.cdecl, raises: [], gcsafe.}
  invalidate*: proc(vtbl, self: pointer, ): void {.cdecl, raises: [], gcsafe.}
  itemAt*: proc(vtbl, self: pointer, param1: cint): pointer {.cdecl, raises: [], gcsafe.}
  takeAt*: proc(vtbl, self: pointer, param1: cint): pointer {.cdecl, raises: [], gcsafe.}
  count*: proc(vtbl, self: pointer, ): cint {.cdecl, raises: [], gcsafe.}
  setGeometry*: proc(vtbl, self: pointer, geometry: pointer): void {.cdecl, raises: [], gcsafe.}
  geometry*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  indexOf*: proc(vtbl, self: pointer, param1: pointer): cint {.cdecl, raises: [], gcsafe.}
  isEmpty*: proc(vtbl, self: pointer, ): bool {.cdecl, raises: [], gcsafe.}
  controlTypes*: proc(vtbl, self: pointer, ): cint {.cdecl, raises: [], gcsafe.}
  replaceWidget*: proc(vtbl, self: pointer, fromVal: pointer, to: pointer, options: cint): pointer {.cdecl, raises: [], gcsafe.}
  layout*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(vtbl, self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  event*: proc(vtbl, self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(vtbl, self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  widget*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  spacerItem*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
proc fcQVBoxLayout_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QVBoxLayout_virtualbase_metaObject".}
proc fcQVBoxLayout_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QVBoxLayout_virtualbase_metacast".}
proc fcQVBoxLayout_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QVBoxLayout_virtualbase_metacall".}
proc fcQVBoxLayout_virtualbase_addItem(self: pointer, param1: pointer): void {.importc: "QVBoxLayout_virtualbase_addItem".}
proc fcQVBoxLayout_virtualbase_spacing(self: pointer, ): cint {.importc: "QVBoxLayout_virtualbase_spacing".}
proc fcQVBoxLayout_virtualbase_setSpacing(self: pointer, spacing: cint): void {.importc: "QVBoxLayout_virtualbase_setSpacing".}
proc fcQVBoxLayout_virtualbase_sizeHint(self: pointer, ): pointer {.importc: "QVBoxLayout_virtualbase_sizeHint".}
proc fcQVBoxLayout_virtualbase_minimumSize(self: pointer, ): pointer {.importc: "QVBoxLayout_virtualbase_minimumSize".}
proc fcQVBoxLayout_virtualbase_maximumSize(self: pointer, ): pointer {.importc: "QVBoxLayout_virtualbase_maximumSize".}
proc fcQVBoxLayout_virtualbase_hasHeightForWidth(self: pointer, ): bool {.importc: "QVBoxLayout_virtualbase_hasHeightForWidth".}
proc fcQVBoxLayout_virtualbase_heightForWidth(self: pointer, param1: cint): cint {.importc: "QVBoxLayout_virtualbase_heightForWidth".}
proc fcQVBoxLayout_virtualbase_minimumHeightForWidth(self: pointer, param1: cint): cint {.importc: "QVBoxLayout_virtualbase_minimumHeightForWidth".}
proc fcQVBoxLayout_virtualbase_expandingDirections(self: pointer, ): cint {.importc: "QVBoxLayout_virtualbase_expandingDirections".}
proc fcQVBoxLayout_virtualbase_invalidate(self: pointer, ): void {.importc: "QVBoxLayout_virtualbase_invalidate".}
proc fcQVBoxLayout_virtualbase_itemAt(self: pointer, param1: cint): pointer {.importc: "QVBoxLayout_virtualbase_itemAt".}
proc fcQVBoxLayout_virtualbase_takeAt(self: pointer, param1: cint): pointer {.importc: "QVBoxLayout_virtualbase_takeAt".}
proc fcQVBoxLayout_virtualbase_count(self: pointer, ): cint {.importc: "QVBoxLayout_virtualbase_count".}
proc fcQVBoxLayout_virtualbase_setGeometry(self: pointer, geometry: pointer): void {.importc: "QVBoxLayout_virtualbase_setGeometry".}
proc fcQVBoxLayout_virtualbase_geometry(self: pointer, ): pointer {.importc: "QVBoxLayout_virtualbase_geometry".}
proc fcQVBoxLayout_virtualbase_indexOf(self: pointer, param1: pointer): cint {.importc: "QVBoxLayout_virtualbase_indexOf".}
proc fcQVBoxLayout_virtualbase_isEmpty(self: pointer, ): bool {.importc: "QVBoxLayout_virtualbase_isEmpty".}
proc fcQVBoxLayout_virtualbase_controlTypes(self: pointer, ): cint {.importc: "QVBoxLayout_virtualbase_controlTypes".}
proc fcQVBoxLayout_virtualbase_replaceWidget(self: pointer, fromVal: pointer, to: pointer, options: cint): pointer {.importc: "QVBoxLayout_virtualbase_replaceWidget".}
proc fcQVBoxLayout_virtualbase_layout(self: pointer, ): pointer {.importc: "QVBoxLayout_virtualbase_layout".}
proc fcQVBoxLayout_virtualbase_childEvent(self: pointer, e: pointer): void {.importc: "QVBoxLayout_virtualbase_childEvent".}
proc fcQVBoxLayout_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QVBoxLayout_virtualbase_event".}
proc fcQVBoxLayout_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QVBoxLayout_virtualbase_eventFilter".}
proc fcQVBoxLayout_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QVBoxLayout_virtualbase_timerEvent".}
proc fcQVBoxLayout_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QVBoxLayout_virtualbase_customEvent".}
proc fcQVBoxLayout_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QVBoxLayout_virtualbase_connectNotify".}
proc fcQVBoxLayout_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QVBoxLayout_virtualbase_disconnectNotify".}
proc fcQVBoxLayout_virtualbase_widget(self: pointer, ): pointer {.importc: "QVBoxLayout_virtualbase_widget".}
proc fcQVBoxLayout_virtualbase_spacerItem(self: pointer, ): pointer {.importc: "QVBoxLayout_virtualbase_spacerItem".}
proc fcQVBoxLayout_new(vtbl: pointer, parent: pointer): ptr cQVBoxLayout {.importc: "QVBoxLayout_new".}
proc fcQVBoxLayout_new2(vtbl: pointer, ): ptr cQVBoxLayout {.importc: "QVBoxLayout_new2".}
proc fcQVBoxLayout_staticMetaObject(): pointer {.importc: "QVBoxLayout_staticMetaObject".}
proc fcQVBoxLayout_delete(self: pointer) {.importc: "QVBoxLayout_delete".}

proc metaObject*(self: gen_qboxlayout_types.QBoxLayout, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQBoxLayout_metaObject(self.h))

proc metacast*(self: gen_qboxlayout_types.QBoxLayout, param1: cstring): pointer =
  fcQBoxLayout_metacast(self.h, param1)

proc metacall*(self: gen_qboxlayout_types.QBoxLayout, param1: cint, param2: cint, param3: pointer): cint =
  fcQBoxLayout_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qboxlayout_types.QBoxLayout, s: cstring): string =
  let v_ms = fcQBoxLayout_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc direction*(self: gen_qboxlayout_types.QBoxLayout, ): cint =
  cint(fcQBoxLayout_direction(self.h))

proc setDirection*(self: gen_qboxlayout_types.QBoxLayout, direction: cint): void =
  fcQBoxLayout_setDirection(self.h, cint(direction))

proc addSpacing*(self: gen_qboxlayout_types.QBoxLayout, size: cint): void =
  fcQBoxLayout_addSpacing(self.h, size)

proc addStretch*(self: gen_qboxlayout_types.QBoxLayout, ): void =
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

proc spacing*(self: gen_qboxlayout_types.QBoxLayout, ): cint =
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

proc sizeHint*(self: gen_qboxlayout_types.QBoxLayout, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQBoxLayout_sizeHint(self.h))

proc minimumSize*(self: gen_qboxlayout_types.QBoxLayout, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQBoxLayout_minimumSize(self.h))

proc maximumSize*(self: gen_qboxlayout_types.QBoxLayout, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQBoxLayout_maximumSize(self.h))

proc hasHeightForWidth*(self: gen_qboxlayout_types.QBoxLayout, ): bool =
  fcQBoxLayout_hasHeightForWidth(self.h)

proc heightForWidth*(self: gen_qboxlayout_types.QBoxLayout, param1: cint): cint =
  fcQBoxLayout_heightForWidth(self.h, param1)

proc minimumHeightForWidth*(self: gen_qboxlayout_types.QBoxLayout, param1: cint): cint =
  fcQBoxLayout_minimumHeightForWidth(self.h, param1)

proc expandingDirections*(self: gen_qboxlayout_types.QBoxLayout, ): cint =
  cint(fcQBoxLayout_expandingDirections(self.h))

proc invalidate*(self: gen_qboxlayout_types.QBoxLayout, ): void =
  fcQBoxLayout_invalidate(self.h)

proc itemAt*(self: gen_qboxlayout_types.QBoxLayout, param1: cint): gen_qlayoutitem_types.QLayoutItem =
  gen_qlayoutitem_types.QLayoutItem(h: fcQBoxLayout_itemAt(self.h, param1))

proc takeAt*(self: gen_qboxlayout_types.QBoxLayout, param1: cint): gen_qlayoutitem_types.QLayoutItem =
  gen_qlayoutitem_types.QLayoutItem(h: fcQBoxLayout_takeAt(self.h, param1))

proc count*(self: gen_qboxlayout_types.QBoxLayout, ): cint =
  fcQBoxLayout_count(self.h)

proc setGeometry*(self: gen_qboxlayout_types.QBoxLayout, geometry: gen_qrect_types.QRect): void =
  fcQBoxLayout_setGeometry(self.h, geometry.h)

proc tr*(_: type gen_qboxlayout_types.QBoxLayout, s: cstring, c: cstring): string =
  let v_ms = fcQBoxLayout_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qboxlayout_types.QBoxLayout, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQBoxLayout_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
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
type QBoxLayoutVTable* = object
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
proc QBoxLayoutmetaObject*(self: gen_qboxlayout_types.QBoxLayout, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQBoxLayout_virtualbase_metaObject(self.h))

proc miqt_exec_callback_cQBoxLayout_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QBoxLayoutVTable](vtbl)
  let self = QBoxLayout(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.h

proc QBoxLayoutmetacast*(self: gen_qboxlayout_types.QBoxLayout, param1: cstring): pointer =
  fcQBoxLayout_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQBoxLayout_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QBoxLayoutVTable](vtbl)
  let self = QBoxLayout(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QBoxLayoutmetacall*(self: gen_qboxlayout_types.QBoxLayout, param1: cint, param2: cint, param3: pointer): cint =
  fcQBoxLayout_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQBoxLayout_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QBoxLayoutVTable](vtbl)
  let self = QBoxLayout(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QBoxLayoutaddItem*(self: gen_qboxlayout_types.QBoxLayout, param1: gen_qlayoutitem_types.QLayoutItem): void =
  fcQBoxLayout_virtualbase_addItem(self.h, param1.h)

proc miqt_exec_callback_cQBoxLayout_addItem(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QBoxLayoutVTable](vtbl)
  let self = QBoxLayout(h: self)
  let slotval1 = gen_qlayoutitem_types.QLayoutItem(h: param1)
  vtbl[].addItem(self, slotval1)

proc QBoxLayoutspacing*(self: gen_qboxlayout_types.QBoxLayout, ): cint =
  fcQBoxLayout_virtualbase_spacing(self.h)

proc miqt_exec_callback_cQBoxLayout_spacing(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QBoxLayoutVTable](vtbl)
  let self = QBoxLayout(h: self)
  var virtualReturn = vtbl[].spacing(self)
  virtualReturn

proc QBoxLayoutsetSpacing*(self: gen_qboxlayout_types.QBoxLayout, spacing: cint): void =
  fcQBoxLayout_virtualbase_setSpacing(self.h, spacing)

proc miqt_exec_callback_cQBoxLayout_setSpacing(vtbl: pointer, self: pointer, spacing: cint): void {.cdecl.} =
  let vtbl = cast[ptr QBoxLayoutVTable](vtbl)
  let self = QBoxLayout(h: self)
  let slotval1 = spacing
  vtbl[].setSpacing(self, slotval1)

proc QBoxLayoutsizeHint*(self: gen_qboxlayout_types.QBoxLayout, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQBoxLayout_virtualbase_sizeHint(self.h))

proc miqt_exec_callback_cQBoxLayout_sizeHint(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QBoxLayoutVTable](vtbl)
  let self = QBoxLayout(h: self)
  var virtualReturn = vtbl[].sizeHint(self)
  virtualReturn.h

proc QBoxLayoutminimumSize*(self: gen_qboxlayout_types.QBoxLayout, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQBoxLayout_virtualbase_minimumSize(self.h))

proc miqt_exec_callback_cQBoxLayout_minimumSize(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QBoxLayoutVTable](vtbl)
  let self = QBoxLayout(h: self)
  var virtualReturn = vtbl[].minimumSize(self)
  virtualReturn.h

proc QBoxLayoutmaximumSize*(self: gen_qboxlayout_types.QBoxLayout, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQBoxLayout_virtualbase_maximumSize(self.h))

proc miqt_exec_callback_cQBoxLayout_maximumSize(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QBoxLayoutVTable](vtbl)
  let self = QBoxLayout(h: self)
  var virtualReturn = vtbl[].maximumSize(self)
  virtualReturn.h

proc QBoxLayouthasHeightForWidth*(self: gen_qboxlayout_types.QBoxLayout, ): bool =
  fcQBoxLayout_virtualbase_hasHeightForWidth(self.h)

proc miqt_exec_callback_cQBoxLayout_hasHeightForWidth(vtbl: pointer, self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QBoxLayoutVTable](vtbl)
  let self = QBoxLayout(h: self)
  var virtualReturn = vtbl[].hasHeightForWidth(self)
  virtualReturn

proc QBoxLayoutheightForWidth*(self: gen_qboxlayout_types.QBoxLayout, param1: cint): cint =
  fcQBoxLayout_virtualbase_heightForWidth(self.h, param1)

proc miqt_exec_callback_cQBoxLayout_heightForWidth(vtbl: pointer, self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QBoxLayoutVTable](vtbl)
  let self = QBoxLayout(h: self)
  let slotval1 = param1
  var virtualReturn = vtbl[].heightForWidth(self, slotval1)
  virtualReturn

proc QBoxLayoutminimumHeightForWidth*(self: gen_qboxlayout_types.QBoxLayout, param1: cint): cint =
  fcQBoxLayout_virtualbase_minimumHeightForWidth(self.h, param1)

proc miqt_exec_callback_cQBoxLayout_minimumHeightForWidth(vtbl: pointer, self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QBoxLayoutVTable](vtbl)
  let self = QBoxLayout(h: self)
  let slotval1 = param1
  var virtualReturn = vtbl[].minimumHeightForWidth(self, slotval1)
  virtualReturn

proc QBoxLayoutexpandingDirections*(self: gen_qboxlayout_types.QBoxLayout, ): cint =
  cint(fcQBoxLayout_virtualbase_expandingDirections(self.h))

proc miqt_exec_callback_cQBoxLayout_expandingDirections(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QBoxLayoutVTable](vtbl)
  let self = QBoxLayout(h: self)
  var virtualReturn = vtbl[].expandingDirections(self)
  cint(virtualReturn)

proc QBoxLayoutinvalidate*(self: gen_qboxlayout_types.QBoxLayout, ): void =
  fcQBoxLayout_virtualbase_invalidate(self.h)

proc miqt_exec_callback_cQBoxLayout_invalidate(vtbl: pointer, self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QBoxLayoutVTable](vtbl)
  let self = QBoxLayout(h: self)
  vtbl[].invalidate(self)

proc QBoxLayoutitemAt*(self: gen_qboxlayout_types.QBoxLayout, param1: cint): gen_qlayoutitem_types.QLayoutItem =
  gen_qlayoutitem_types.QLayoutItem(h: fcQBoxLayout_virtualbase_itemAt(self.h, param1))

proc miqt_exec_callback_cQBoxLayout_itemAt(vtbl: pointer, self: pointer, param1: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QBoxLayoutVTable](vtbl)
  let self = QBoxLayout(h: self)
  let slotval1 = param1
  var virtualReturn = vtbl[].itemAt(self, slotval1)
  virtualReturn.h

proc QBoxLayouttakeAt*(self: gen_qboxlayout_types.QBoxLayout, param1: cint): gen_qlayoutitem_types.QLayoutItem =
  gen_qlayoutitem_types.QLayoutItem(h: fcQBoxLayout_virtualbase_takeAt(self.h, param1))

proc miqt_exec_callback_cQBoxLayout_takeAt(vtbl: pointer, self: pointer, param1: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QBoxLayoutVTable](vtbl)
  let self = QBoxLayout(h: self)
  let slotval1 = param1
  var virtualReturn = vtbl[].takeAt(self, slotval1)
  virtualReturn.h

proc QBoxLayoutcount*(self: gen_qboxlayout_types.QBoxLayout, ): cint =
  fcQBoxLayout_virtualbase_count(self.h)

proc miqt_exec_callback_cQBoxLayout_count(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QBoxLayoutVTable](vtbl)
  let self = QBoxLayout(h: self)
  var virtualReturn = vtbl[].count(self)
  virtualReturn

proc QBoxLayoutsetGeometry*(self: gen_qboxlayout_types.QBoxLayout, geometry: gen_qrect_types.QRect): void =
  fcQBoxLayout_virtualbase_setGeometry(self.h, geometry.h)

proc miqt_exec_callback_cQBoxLayout_setGeometry(vtbl: pointer, self: pointer, geometry: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QBoxLayoutVTable](vtbl)
  let self = QBoxLayout(h: self)
  let slotval1 = gen_qrect_types.QRect(h: geometry)
  vtbl[].setGeometry(self, slotval1)

proc QBoxLayoutgeometry*(self: gen_qboxlayout_types.QBoxLayout, ): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fcQBoxLayout_virtualbase_geometry(self.h))

proc miqt_exec_callback_cQBoxLayout_geometry(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QBoxLayoutVTable](vtbl)
  let self = QBoxLayout(h: self)
  var virtualReturn = vtbl[].geometry(self)
  virtualReturn.h

proc QBoxLayoutindexOf*(self: gen_qboxlayout_types.QBoxLayout, param1: gen_qwidget_types.QWidget): cint =
  fcQBoxLayout_virtualbase_indexOf(self.h, param1.h)

proc miqt_exec_callback_cQBoxLayout_indexOf(vtbl: pointer, self: pointer, param1: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QBoxLayoutVTable](vtbl)
  let self = QBoxLayout(h: self)
  let slotval1 = gen_qwidget_types.QWidget(h: param1)
  var virtualReturn = vtbl[].indexOf(self, slotval1)
  virtualReturn

proc QBoxLayoutisEmpty*(self: gen_qboxlayout_types.QBoxLayout, ): bool =
  fcQBoxLayout_virtualbase_isEmpty(self.h)

proc miqt_exec_callback_cQBoxLayout_isEmpty(vtbl: pointer, self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QBoxLayoutVTable](vtbl)
  let self = QBoxLayout(h: self)
  var virtualReturn = vtbl[].isEmpty(self)
  virtualReturn

proc QBoxLayoutcontrolTypes*(self: gen_qboxlayout_types.QBoxLayout, ): cint =
  cint(fcQBoxLayout_virtualbase_controlTypes(self.h))

proc miqt_exec_callback_cQBoxLayout_controlTypes(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QBoxLayoutVTable](vtbl)
  let self = QBoxLayout(h: self)
  var virtualReturn = vtbl[].controlTypes(self)
  cint(virtualReturn)

proc QBoxLayoutreplaceWidget*(self: gen_qboxlayout_types.QBoxLayout, fromVal: gen_qwidget_types.QWidget, to: gen_qwidget_types.QWidget, options: cint): gen_qlayoutitem_types.QLayoutItem =
  gen_qlayoutitem_types.QLayoutItem(h: fcQBoxLayout_virtualbase_replaceWidget(self.h, fromVal.h, to.h, cint(options)))

proc miqt_exec_callback_cQBoxLayout_replaceWidget(vtbl: pointer, self: pointer, fromVal: pointer, to: pointer, options: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QBoxLayoutVTable](vtbl)
  let self = QBoxLayout(h: self)
  let slotval1 = gen_qwidget_types.QWidget(h: fromVal)
  let slotval2 = gen_qwidget_types.QWidget(h: to)
  let slotval3 = cint(options)
  var virtualReturn = vtbl[].replaceWidget(self, slotval1, slotval2, slotval3)
  virtualReturn.h

proc QBoxLayoutlayout*(self: gen_qboxlayout_types.QBoxLayout, ): gen_qlayout_types.QLayout =
  gen_qlayout_types.QLayout(h: fcQBoxLayout_virtualbase_layout(self.h))

proc miqt_exec_callback_cQBoxLayout_layout(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QBoxLayoutVTable](vtbl)
  let self = QBoxLayout(h: self)
  var virtualReturn = vtbl[].layout(self)
  virtualReturn.h

proc QBoxLayoutchildEvent*(self: gen_qboxlayout_types.QBoxLayout, e: gen_qcoreevent_types.QChildEvent): void =
  fcQBoxLayout_virtualbase_childEvent(self.h, e.h)

proc miqt_exec_callback_cQBoxLayout_childEvent(vtbl: pointer, self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QBoxLayoutVTable](vtbl)
  let self = QBoxLayout(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: e)
  vtbl[].childEvent(self, slotval1)

proc QBoxLayoutevent*(self: gen_qboxlayout_types.QBoxLayout, event: gen_qcoreevent_types.QEvent): bool =
  fcQBoxLayout_virtualbase_event(self.h, event.h)

proc miqt_exec_callback_cQBoxLayout_event(vtbl: pointer, self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QBoxLayoutVTable](vtbl)
  let self = QBoxLayout(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QBoxLayouteventFilter*(self: gen_qboxlayout_types.QBoxLayout, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQBoxLayout_virtualbase_eventFilter(self.h, watched.h, event.h)

proc miqt_exec_callback_cQBoxLayout_eventFilter(vtbl: pointer, self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QBoxLayoutVTable](vtbl)
  let self = QBoxLayout(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QBoxLayouttimerEvent*(self: gen_qboxlayout_types.QBoxLayout, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQBoxLayout_virtualbase_timerEvent(self.h, event.h)

proc miqt_exec_callback_cQBoxLayout_timerEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QBoxLayoutVTable](vtbl)
  let self = QBoxLayout(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)
  vtbl[].timerEvent(self, slotval1)

proc QBoxLayoutcustomEvent*(self: gen_qboxlayout_types.QBoxLayout, event: gen_qcoreevent_types.QEvent): void =
  fcQBoxLayout_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQBoxLayout_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QBoxLayoutVTable](vtbl)
  let self = QBoxLayout(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].customEvent(self, slotval1)

proc QBoxLayoutconnectNotify*(self: gen_qboxlayout_types.QBoxLayout, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQBoxLayout_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQBoxLayout_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QBoxLayoutVTable](vtbl)
  let self = QBoxLayout(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].connectNotify(self, slotval1)

proc QBoxLayoutdisconnectNotify*(self: gen_qboxlayout_types.QBoxLayout, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQBoxLayout_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQBoxLayout_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QBoxLayoutVTable](vtbl)
  let self = QBoxLayout(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].disconnectNotify(self, slotval1)

proc QBoxLayoutwidget*(self: gen_qboxlayout_types.QBoxLayout, ): gen_qwidget_types.QWidget =
  gen_qwidget_types.QWidget(h: fcQBoxLayout_virtualbase_widget(self.h))

proc miqt_exec_callback_cQBoxLayout_widget(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QBoxLayoutVTable](vtbl)
  let self = QBoxLayout(h: self)
  var virtualReturn = vtbl[].widget(self)
  virtualReturn.h

proc QBoxLayoutspacerItem*(self: gen_qboxlayout_types.QBoxLayout, ): gen_qlayoutitem_types.QSpacerItem =
  gen_qlayoutitem_types.QSpacerItem(h: fcQBoxLayout_virtualbase_spacerItem(self.h))

proc miqt_exec_callback_cQBoxLayout_spacerItem(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QBoxLayoutVTable](vtbl)
  let self = QBoxLayout(h: self)
  var virtualReturn = vtbl[].spacerItem(self)
  virtualReturn.h

proc create*(T: type gen_qboxlayout_types.QBoxLayout,
    param1: cint,
    vtbl: ref QBoxLayoutVTable = nil): gen_qboxlayout_types.QBoxLayout =
  let vtbl = if vtbl == nil: new QBoxLayoutVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQBoxLayoutVTable, _: ptr cQBoxLayout) {.cdecl.} =
    let vtbl = cast[ref QBoxLayoutVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQBoxLayout_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQBoxLayout_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQBoxLayout_metacall
  if not isNil(vtbl.addItem):
    vtbl[].vtbl.addItem = miqt_exec_callback_cQBoxLayout_addItem
  if not isNil(vtbl.spacing):
    vtbl[].vtbl.spacing = miqt_exec_callback_cQBoxLayout_spacing
  if not isNil(vtbl.setSpacing):
    vtbl[].vtbl.setSpacing = miqt_exec_callback_cQBoxLayout_setSpacing
  if not isNil(vtbl.sizeHint):
    vtbl[].vtbl.sizeHint = miqt_exec_callback_cQBoxLayout_sizeHint
  if not isNil(vtbl.minimumSize):
    vtbl[].vtbl.minimumSize = miqt_exec_callback_cQBoxLayout_minimumSize
  if not isNil(vtbl.maximumSize):
    vtbl[].vtbl.maximumSize = miqt_exec_callback_cQBoxLayout_maximumSize
  if not isNil(vtbl.hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = miqt_exec_callback_cQBoxLayout_hasHeightForWidth
  if not isNil(vtbl.heightForWidth):
    vtbl[].vtbl.heightForWidth = miqt_exec_callback_cQBoxLayout_heightForWidth
  if not isNil(vtbl.minimumHeightForWidth):
    vtbl[].vtbl.minimumHeightForWidth = miqt_exec_callback_cQBoxLayout_minimumHeightForWidth
  if not isNil(vtbl.expandingDirections):
    vtbl[].vtbl.expandingDirections = miqt_exec_callback_cQBoxLayout_expandingDirections
  if not isNil(vtbl.invalidate):
    vtbl[].vtbl.invalidate = miqt_exec_callback_cQBoxLayout_invalidate
  if not isNil(vtbl.itemAt):
    vtbl[].vtbl.itemAt = miqt_exec_callback_cQBoxLayout_itemAt
  if not isNil(vtbl.takeAt):
    vtbl[].vtbl.takeAt = miqt_exec_callback_cQBoxLayout_takeAt
  if not isNil(vtbl.count):
    vtbl[].vtbl.count = miqt_exec_callback_cQBoxLayout_count
  if not isNil(vtbl.setGeometry):
    vtbl[].vtbl.setGeometry = miqt_exec_callback_cQBoxLayout_setGeometry
  if not isNil(vtbl.geometry):
    vtbl[].vtbl.geometry = miqt_exec_callback_cQBoxLayout_geometry
  if not isNil(vtbl.indexOf):
    vtbl[].vtbl.indexOf = miqt_exec_callback_cQBoxLayout_indexOf
  if not isNil(vtbl.isEmpty):
    vtbl[].vtbl.isEmpty = miqt_exec_callback_cQBoxLayout_isEmpty
  if not isNil(vtbl.controlTypes):
    vtbl[].vtbl.controlTypes = miqt_exec_callback_cQBoxLayout_controlTypes
  if not isNil(vtbl.replaceWidget):
    vtbl[].vtbl.replaceWidget = miqt_exec_callback_cQBoxLayout_replaceWidget
  if not isNil(vtbl.layout):
    vtbl[].vtbl.layout = miqt_exec_callback_cQBoxLayout_layout
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQBoxLayout_childEvent
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQBoxLayout_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQBoxLayout_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQBoxLayout_timerEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQBoxLayout_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQBoxLayout_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQBoxLayout_disconnectNotify
  if not isNil(vtbl.widget):
    vtbl[].vtbl.widget = miqt_exec_callback_cQBoxLayout_widget
  if not isNil(vtbl.spacerItem):
    vtbl[].vtbl.spacerItem = miqt_exec_callback_cQBoxLayout_spacerItem
  gen_qboxlayout_types.QBoxLayout(h: fcQBoxLayout_new(addr(vtbl[]), cint(param1)))

proc create*(T: type gen_qboxlayout_types.QBoxLayout,
    param1: cint, parent: gen_qwidget_types.QWidget,
    vtbl: ref QBoxLayoutVTable = nil): gen_qboxlayout_types.QBoxLayout =
  let vtbl = if vtbl == nil: new QBoxLayoutVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQBoxLayoutVTable, _: ptr cQBoxLayout) {.cdecl.} =
    let vtbl = cast[ref QBoxLayoutVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQBoxLayout_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQBoxLayout_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQBoxLayout_metacall
  if not isNil(vtbl.addItem):
    vtbl[].vtbl.addItem = miqt_exec_callback_cQBoxLayout_addItem
  if not isNil(vtbl.spacing):
    vtbl[].vtbl.spacing = miqt_exec_callback_cQBoxLayout_spacing
  if not isNil(vtbl.setSpacing):
    vtbl[].vtbl.setSpacing = miqt_exec_callback_cQBoxLayout_setSpacing
  if not isNil(vtbl.sizeHint):
    vtbl[].vtbl.sizeHint = miqt_exec_callback_cQBoxLayout_sizeHint
  if not isNil(vtbl.minimumSize):
    vtbl[].vtbl.minimumSize = miqt_exec_callback_cQBoxLayout_minimumSize
  if not isNil(vtbl.maximumSize):
    vtbl[].vtbl.maximumSize = miqt_exec_callback_cQBoxLayout_maximumSize
  if not isNil(vtbl.hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = miqt_exec_callback_cQBoxLayout_hasHeightForWidth
  if not isNil(vtbl.heightForWidth):
    vtbl[].vtbl.heightForWidth = miqt_exec_callback_cQBoxLayout_heightForWidth
  if not isNil(vtbl.minimumHeightForWidth):
    vtbl[].vtbl.minimumHeightForWidth = miqt_exec_callback_cQBoxLayout_minimumHeightForWidth
  if not isNil(vtbl.expandingDirections):
    vtbl[].vtbl.expandingDirections = miqt_exec_callback_cQBoxLayout_expandingDirections
  if not isNil(vtbl.invalidate):
    vtbl[].vtbl.invalidate = miqt_exec_callback_cQBoxLayout_invalidate
  if not isNil(vtbl.itemAt):
    vtbl[].vtbl.itemAt = miqt_exec_callback_cQBoxLayout_itemAt
  if not isNil(vtbl.takeAt):
    vtbl[].vtbl.takeAt = miqt_exec_callback_cQBoxLayout_takeAt
  if not isNil(vtbl.count):
    vtbl[].vtbl.count = miqt_exec_callback_cQBoxLayout_count
  if not isNil(vtbl.setGeometry):
    vtbl[].vtbl.setGeometry = miqt_exec_callback_cQBoxLayout_setGeometry
  if not isNil(vtbl.geometry):
    vtbl[].vtbl.geometry = miqt_exec_callback_cQBoxLayout_geometry
  if not isNil(vtbl.indexOf):
    vtbl[].vtbl.indexOf = miqt_exec_callback_cQBoxLayout_indexOf
  if not isNil(vtbl.isEmpty):
    vtbl[].vtbl.isEmpty = miqt_exec_callback_cQBoxLayout_isEmpty
  if not isNil(vtbl.controlTypes):
    vtbl[].vtbl.controlTypes = miqt_exec_callback_cQBoxLayout_controlTypes
  if not isNil(vtbl.replaceWidget):
    vtbl[].vtbl.replaceWidget = miqt_exec_callback_cQBoxLayout_replaceWidget
  if not isNil(vtbl.layout):
    vtbl[].vtbl.layout = miqt_exec_callback_cQBoxLayout_layout
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQBoxLayout_childEvent
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQBoxLayout_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQBoxLayout_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQBoxLayout_timerEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQBoxLayout_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQBoxLayout_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQBoxLayout_disconnectNotify
  if not isNil(vtbl.widget):
    vtbl[].vtbl.widget = miqt_exec_callback_cQBoxLayout_widget
  if not isNil(vtbl.spacerItem):
    vtbl[].vtbl.spacerItem = miqt_exec_callback_cQBoxLayout_spacerItem
  gen_qboxlayout_types.QBoxLayout(h: fcQBoxLayout_new2(addr(vtbl[]), cint(param1), parent.h))

proc staticMetaObject*(_: type gen_qboxlayout_types.QBoxLayout): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQBoxLayout_staticMetaObject())
proc delete*(self: gen_qboxlayout_types.QBoxLayout) =
  fcQBoxLayout_delete(self.h)
proc metaObject*(self: gen_qboxlayout_types.QHBoxLayout, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQHBoxLayout_metaObject(self.h))

proc metacast*(self: gen_qboxlayout_types.QHBoxLayout, param1: cstring): pointer =
  fcQHBoxLayout_metacast(self.h, param1)

proc metacall*(self: gen_qboxlayout_types.QHBoxLayout, param1: cint, param2: cint, param3: pointer): cint =
  fcQHBoxLayout_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qboxlayout_types.QHBoxLayout, s: cstring): string =
  let v_ms = fcQHBoxLayout_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qboxlayout_types.QHBoxLayout, s: cstring, c: cstring): string =
  let v_ms = fcQHBoxLayout_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qboxlayout_types.QHBoxLayout, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQHBoxLayout_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
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
type QHBoxLayoutVTable* = object
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
proc QHBoxLayoutmetaObject*(self: gen_qboxlayout_types.QHBoxLayout, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQHBoxLayout_virtualbase_metaObject(self.h))

proc miqt_exec_callback_cQHBoxLayout_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QHBoxLayoutVTable](vtbl)
  let self = QHBoxLayout(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.h

proc QHBoxLayoutmetacast*(self: gen_qboxlayout_types.QHBoxLayout, param1: cstring): pointer =
  fcQHBoxLayout_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQHBoxLayout_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QHBoxLayoutVTable](vtbl)
  let self = QHBoxLayout(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QHBoxLayoutmetacall*(self: gen_qboxlayout_types.QHBoxLayout, param1: cint, param2: cint, param3: pointer): cint =
  fcQHBoxLayout_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQHBoxLayout_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QHBoxLayoutVTable](vtbl)
  let self = QHBoxLayout(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QHBoxLayoutaddItem*(self: gen_qboxlayout_types.QHBoxLayout, param1: gen_qlayoutitem_types.QLayoutItem): void =
  fcQHBoxLayout_virtualbase_addItem(self.h, param1.h)

proc miqt_exec_callback_cQHBoxLayout_addItem(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QHBoxLayoutVTable](vtbl)
  let self = QHBoxLayout(h: self)
  let slotval1 = gen_qlayoutitem_types.QLayoutItem(h: param1)
  vtbl[].addItem(self, slotval1)

proc QHBoxLayoutspacing*(self: gen_qboxlayout_types.QHBoxLayout, ): cint =
  fcQHBoxLayout_virtualbase_spacing(self.h)

proc miqt_exec_callback_cQHBoxLayout_spacing(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QHBoxLayoutVTable](vtbl)
  let self = QHBoxLayout(h: self)
  var virtualReturn = vtbl[].spacing(self)
  virtualReturn

proc QHBoxLayoutsetSpacing*(self: gen_qboxlayout_types.QHBoxLayout, spacing: cint): void =
  fcQHBoxLayout_virtualbase_setSpacing(self.h, spacing)

proc miqt_exec_callback_cQHBoxLayout_setSpacing(vtbl: pointer, self: pointer, spacing: cint): void {.cdecl.} =
  let vtbl = cast[ptr QHBoxLayoutVTable](vtbl)
  let self = QHBoxLayout(h: self)
  let slotval1 = spacing
  vtbl[].setSpacing(self, slotval1)

proc QHBoxLayoutsizeHint*(self: gen_qboxlayout_types.QHBoxLayout, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQHBoxLayout_virtualbase_sizeHint(self.h))

proc miqt_exec_callback_cQHBoxLayout_sizeHint(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QHBoxLayoutVTable](vtbl)
  let self = QHBoxLayout(h: self)
  var virtualReturn = vtbl[].sizeHint(self)
  virtualReturn.h

proc QHBoxLayoutminimumSize*(self: gen_qboxlayout_types.QHBoxLayout, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQHBoxLayout_virtualbase_minimumSize(self.h))

proc miqt_exec_callback_cQHBoxLayout_minimumSize(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QHBoxLayoutVTable](vtbl)
  let self = QHBoxLayout(h: self)
  var virtualReturn = vtbl[].minimumSize(self)
  virtualReturn.h

proc QHBoxLayoutmaximumSize*(self: gen_qboxlayout_types.QHBoxLayout, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQHBoxLayout_virtualbase_maximumSize(self.h))

proc miqt_exec_callback_cQHBoxLayout_maximumSize(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QHBoxLayoutVTable](vtbl)
  let self = QHBoxLayout(h: self)
  var virtualReturn = vtbl[].maximumSize(self)
  virtualReturn.h

proc QHBoxLayouthasHeightForWidth*(self: gen_qboxlayout_types.QHBoxLayout, ): bool =
  fcQHBoxLayout_virtualbase_hasHeightForWidth(self.h)

proc miqt_exec_callback_cQHBoxLayout_hasHeightForWidth(vtbl: pointer, self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QHBoxLayoutVTable](vtbl)
  let self = QHBoxLayout(h: self)
  var virtualReturn = vtbl[].hasHeightForWidth(self)
  virtualReturn

proc QHBoxLayoutheightForWidth*(self: gen_qboxlayout_types.QHBoxLayout, param1: cint): cint =
  fcQHBoxLayout_virtualbase_heightForWidth(self.h, param1)

proc miqt_exec_callback_cQHBoxLayout_heightForWidth(vtbl: pointer, self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QHBoxLayoutVTable](vtbl)
  let self = QHBoxLayout(h: self)
  let slotval1 = param1
  var virtualReturn = vtbl[].heightForWidth(self, slotval1)
  virtualReturn

proc QHBoxLayoutminimumHeightForWidth*(self: gen_qboxlayout_types.QHBoxLayout, param1: cint): cint =
  fcQHBoxLayout_virtualbase_minimumHeightForWidth(self.h, param1)

proc miqt_exec_callback_cQHBoxLayout_minimumHeightForWidth(vtbl: pointer, self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QHBoxLayoutVTable](vtbl)
  let self = QHBoxLayout(h: self)
  let slotval1 = param1
  var virtualReturn = vtbl[].minimumHeightForWidth(self, slotval1)
  virtualReturn

proc QHBoxLayoutexpandingDirections*(self: gen_qboxlayout_types.QHBoxLayout, ): cint =
  cint(fcQHBoxLayout_virtualbase_expandingDirections(self.h))

proc miqt_exec_callback_cQHBoxLayout_expandingDirections(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QHBoxLayoutVTable](vtbl)
  let self = QHBoxLayout(h: self)
  var virtualReturn = vtbl[].expandingDirections(self)
  cint(virtualReturn)

proc QHBoxLayoutinvalidate*(self: gen_qboxlayout_types.QHBoxLayout, ): void =
  fcQHBoxLayout_virtualbase_invalidate(self.h)

proc miqt_exec_callback_cQHBoxLayout_invalidate(vtbl: pointer, self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QHBoxLayoutVTable](vtbl)
  let self = QHBoxLayout(h: self)
  vtbl[].invalidate(self)

proc QHBoxLayoutitemAt*(self: gen_qboxlayout_types.QHBoxLayout, param1: cint): gen_qlayoutitem_types.QLayoutItem =
  gen_qlayoutitem_types.QLayoutItem(h: fcQHBoxLayout_virtualbase_itemAt(self.h, param1))

proc miqt_exec_callback_cQHBoxLayout_itemAt(vtbl: pointer, self: pointer, param1: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QHBoxLayoutVTable](vtbl)
  let self = QHBoxLayout(h: self)
  let slotval1 = param1
  var virtualReturn = vtbl[].itemAt(self, slotval1)
  virtualReturn.h

proc QHBoxLayouttakeAt*(self: gen_qboxlayout_types.QHBoxLayout, param1: cint): gen_qlayoutitem_types.QLayoutItem =
  gen_qlayoutitem_types.QLayoutItem(h: fcQHBoxLayout_virtualbase_takeAt(self.h, param1))

proc miqt_exec_callback_cQHBoxLayout_takeAt(vtbl: pointer, self: pointer, param1: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QHBoxLayoutVTable](vtbl)
  let self = QHBoxLayout(h: self)
  let slotval1 = param1
  var virtualReturn = vtbl[].takeAt(self, slotval1)
  virtualReturn.h

proc QHBoxLayoutcount*(self: gen_qboxlayout_types.QHBoxLayout, ): cint =
  fcQHBoxLayout_virtualbase_count(self.h)

proc miqt_exec_callback_cQHBoxLayout_count(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QHBoxLayoutVTable](vtbl)
  let self = QHBoxLayout(h: self)
  var virtualReturn = vtbl[].count(self)
  virtualReturn

proc QHBoxLayoutsetGeometry*(self: gen_qboxlayout_types.QHBoxLayout, geometry: gen_qrect_types.QRect): void =
  fcQHBoxLayout_virtualbase_setGeometry(self.h, geometry.h)

proc miqt_exec_callback_cQHBoxLayout_setGeometry(vtbl: pointer, self: pointer, geometry: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QHBoxLayoutVTable](vtbl)
  let self = QHBoxLayout(h: self)
  let slotval1 = gen_qrect_types.QRect(h: geometry)
  vtbl[].setGeometry(self, slotval1)

proc QHBoxLayoutgeometry*(self: gen_qboxlayout_types.QHBoxLayout, ): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fcQHBoxLayout_virtualbase_geometry(self.h))

proc miqt_exec_callback_cQHBoxLayout_geometry(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QHBoxLayoutVTable](vtbl)
  let self = QHBoxLayout(h: self)
  var virtualReturn = vtbl[].geometry(self)
  virtualReturn.h

proc QHBoxLayoutindexOf*(self: gen_qboxlayout_types.QHBoxLayout, param1: gen_qwidget_types.QWidget): cint =
  fcQHBoxLayout_virtualbase_indexOf(self.h, param1.h)

proc miqt_exec_callback_cQHBoxLayout_indexOf(vtbl: pointer, self: pointer, param1: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QHBoxLayoutVTable](vtbl)
  let self = QHBoxLayout(h: self)
  let slotval1 = gen_qwidget_types.QWidget(h: param1)
  var virtualReturn = vtbl[].indexOf(self, slotval1)
  virtualReturn

proc QHBoxLayoutisEmpty*(self: gen_qboxlayout_types.QHBoxLayout, ): bool =
  fcQHBoxLayout_virtualbase_isEmpty(self.h)

proc miqt_exec_callback_cQHBoxLayout_isEmpty(vtbl: pointer, self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QHBoxLayoutVTable](vtbl)
  let self = QHBoxLayout(h: self)
  var virtualReturn = vtbl[].isEmpty(self)
  virtualReturn

proc QHBoxLayoutcontrolTypes*(self: gen_qboxlayout_types.QHBoxLayout, ): cint =
  cint(fcQHBoxLayout_virtualbase_controlTypes(self.h))

proc miqt_exec_callback_cQHBoxLayout_controlTypes(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QHBoxLayoutVTable](vtbl)
  let self = QHBoxLayout(h: self)
  var virtualReturn = vtbl[].controlTypes(self)
  cint(virtualReturn)

proc QHBoxLayoutreplaceWidget*(self: gen_qboxlayout_types.QHBoxLayout, fromVal: gen_qwidget_types.QWidget, to: gen_qwidget_types.QWidget, options: cint): gen_qlayoutitem_types.QLayoutItem =
  gen_qlayoutitem_types.QLayoutItem(h: fcQHBoxLayout_virtualbase_replaceWidget(self.h, fromVal.h, to.h, cint(options)))

proc miqt_exec_callback_cQHBoxLayout_replaceWidget(vtbl: pointer, self: pointer, fromVal: pointer, to: pointer, options: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QHBoxLayoutVTable](vtbl)
  let self = QHBoxLayout(h: self)
  let slotval1 = gen_qwidget_types.QWidget(h: fromVal)
  let slotval2 = gen_qwidget_types.QWidget(h: to)
  let slotval3 = cint(options)
  var virtualReturn = vtbl[].replaceWidget(self, slotval1, slotval2, slotval3)
  virtualReturn.h

proc QHBoxLayoutlayout*(self: gen_qboxlayout_types.QHBoxLayout, ): gen_qlayout_types.QLayout =
  gen_qlayout_types.QLayout(h: fcQHBoxLayout_virtualbase_layout(self.h))

proc miqt_exec_callback_cQHBoxLayout_layout(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QHBoxLayoutVTable](vtbl)
  let self = QHBoxLayout(h: self)
  var virtualReturn = vtbl[].layout(self)
  virtualReturn.h

proc QHBoxLayoutchildEvent*(self: gen_qboxlayout_types.QHBoxLayout, e: gen_qcoreevent_types.QChildEvent): void =
  fcQHBoxLayout_virtualbase_childEvent(self.h, e.h)

proc miqt_exec_callback_cQHBoxLayout_childEvent(vtbl: pointer, self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QHBoxLayoutVTable](vtbl)
  let self = QHBoxLayout(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: e)
  vtbl[].childEvent(self, slotval1)

proc QHBoxLayoutevent*(self: gen_qboxlayout_types.QHBoxLayout, event: gen_qcoreevent_types.QEvent): bool =
  fcQHBoxLayout_virtualbase_event(self.h, event.h)

proc miqt_exec_callback_cQHBoxLayout_event(vtbl: pointer, self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QHBoxLayoutVTable](vtbl)
  let self = QHBoxLayout(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QHBoxLayouteventFilter*(self: gen_qboxlayout_types.QHBoxLayout, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQHBoxLayout_virtualbase_eventFilter(self.h, watched.h, event.h)

proc miqt_exec_callback_cQHBoxLayout_eventFilter(vtbl: pointer, self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QHBoxLayoutVTable](vtbl)
  let self = QHBoxLayout(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QHBoxLayouttimerEvent*(self: gen_qboxlayout_types.QHBoxLayout, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQHBoxLayout_virtualbase_timerEvent(self.h, event.h)

proc miqt_exec_callback_cQHBoxLayout_timerEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QHBoxLayoutVTable](vtbl)
  let self = QHBoxLayout(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)
  vtbl[].timerEvent(self, slotval1)

proc QHBoxLayoutcustomEvent*(self: gen_qboxlayout_types.QHBoxLayout, event: gen_qcoreevent_types.QEvent): void =
  fcQHBoxLayout_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQHBoxLayout_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QHBoxLayoutVTable](vtbl)
  let self = QHBoxLayout(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].customEvent(self, slotval1)

proc QHBoxLayoutconnectNotify*(self: gen_qboxlayout_types.QHBoxLayout, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQHBoxLayout_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQHBoxLayout_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QHBoxLayoutVTable](vtbl)
  let self = QHBoxLayout(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].connectNotify(self, slotval1)

proc QHBoxLayoutdisconnectNotify*(self: gen_qboxlayout_types.QHBoxLayout, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQHBoxLayout_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQHBoxLayout_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QHBoxLayoutVTable](vtbl)
  let self = QHBoxLayout(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].disconnectNotify(self, slotval1)

proc QHBoxLayoutwidget*(self: gen_qboxlayout_types.QHBoxLayout, ): gen_qwidget_types.QWidget =
  gen_qwidget_types.QWidget(h: fcQHBoxLayout_virtualbase_widget(self.h))

proc miqt_exec_callback_cQHBoxLayout_widget(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QHBoxLayoutVTable](vtbl)
  let self = QHBoxLayout(h: self)
  var virtualReturn = vtbl[].widget(self)
  virtualReturn.h

proc QHBoxLayoutspacerItem*(self: gen_qboxlayout_types.QHBoxLayout, ): gen_qlayoutitem_types.QSpacerItem =
  gen_qlayoutitem_types.QSpacerItem(h: fcQHBoxLayout_virtualbase_spacerItem(self.h))

proc miqt_exec_callback_cQHBoxLayout_spacerItem(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QHBoxLayoutVTable](vtbl)
  let self = QHBoxLayout(h: self)
  var virtualReturn = vtbl[].spacerItem(self)
  virtualReturn.h

proc create*(T: type gen_qboxlayout_types.QHBoxLayout,
    parent: gen_qwidget_types.QWidget,
    vtbl: ref QHBoxLayoutVTable = nil): gen_qboxlayout_types.QHBoxLayout =
  let vtbl = if vtbl == nil: new QHBoxLayoutVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQHBoxLayoutVTable, _: ptr cQHBoxLayout) {.cdecl.} =
    let vtbl = cast[ref QHBoxLayoutVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQHBoxLayout_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQHBoxLayout_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQHBoxLayout_metacall
  if not isNil(vtbl.addItem):
    vtbl[].vtbl.addItem = miqt_exec_callback_cQHBoxLayout_addItem
  if not isNil(vtbl.spacing):
    vtbl[].vtbl.spacing = miqt_exec_callback_cQHBoxLayout_spacing
  if not isNil(vtbl.setSpacing):
    vtbl[].vtbl.setSpacing = miqt_exec_callback_cQHBoxLayout_setSpacing
  if not isNil(vtbl.sizeHint):
    vtbl[].vtbl.sizeHint = miqt_exec_callback_cQHBoxLayout_sizeHint
  if not isNil(vtbl.minimumSize):
    vtbl[].vtbl.minimumSize = miqt_exec_callback_cQHBoxLayout_minimumSize
  if not isNil(vtbl.maximumSize):
    vtbl[].vtbl.maximumSize = miqt_exec_callback_cQHBoxLayout_maximumSize
  if not isNil(vtbl.hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = miqt_exec_callback_cQHBoxLayout_hasHeightForWidth
  if not isNil(vtbl.heightForWidth):
    vtbl[].vtbl.heightForWidth = miqt_exec_callback_cQHBoxLayout_heightForWidth
  if not isNil(vtbl.minimumHeightForWidth):
    vtbl[].vtbl.minimumHeightForWidth = miqt_exec_callback_cQHBoxLayout_minimumHeightForWidth
  if not isNil(vtbl.expandingDirections):
    vtbl[].vtbl.expandingDirections = miqt_exec_callback_cQHBoxLayout_expandingDirections
  if not isNil(vtbl.invalidate):
    vtbl[].vtbl.invalidate = miqt_exec_callback_cQHBoxLayout_invalidate
  if not isNil(vtbl.itemAt):
    vtbl[].vtbl.itemAt = miqt_exec_callback_cQHBoxLayout_itemAt
  if not isNil(vtbl.takeAt):
    vtbl[].vtbl.takeAt = miqt_exec_callback_cQHBoxLayout_takeAt
  if not isNil(vtbl.count):
    vtbl[].vtbl.count = miqt_exec_callback_cQHBoxLayout_count
  if not isNil(vtbl.setGeometry):
    vtbl[].vtbl.setGeometry = miqt_exec_callback_cQHBoxLayout_setGeometry
  if not isNil(vtbl.geometry):
    vtbl[].vtbl.geometry = miqt_exec_callback_cQHBoxLayout_geometry
  if not isNil(vtbl.indexOf):
    vtbl[].vtbl.indexOf = miqt_exec_callback_cQHBoxLayout_indexOf
  if not isNil(vtbl.isEmpty):
    vtbl[].vtbl.isEmpty = miqt_exec_callback_cQHBoxLayout_isEmpty
  if not isNil(vtbl.controlTypes):
    vtbl[].vtbl.controlTypes = miqt_exec_callback_cQHBoxLayout_controlTypes
  if not isNil(vtbl.replaceWidget):
    vtbl[].vtbl.replaceWidget = miqt_exec_callback_cQHBoxLayout_replaceWidget
  if not isNil(vtbl.layout):
    vtbl[].vtbl.layout = miqt_exec_callback_cQHBoxLayout_layout
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQHBoxLayout_childEvent
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQHBoxLayout_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQHBoxLayout_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQHBoxLayout_timerEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQHBoxLayout_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQHBoxLayout_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQHBoxLayout_disconnectNotify
  if not isNil(vtbl.widget):
    vtbl[].vtbl.widget = miqt_exec_callback_cQHBoxLayout_widget
  if not isNil(vtbl.spacerItem):
    vtbl[].vtbl.spacerItem = miqt_exec_callback_cQHBoxLayout_spacerItem
  gen_qboxlayout_types.QHBoxLayout(h: fcQHBoxLayout_new(addr(vtbl[]), parent.h))

proc create*(T: type gen_qboxlayout_types.QHBoxLayout,
    vtbl: ref QHBoxLayoutVTable = nil): gen_qboxlayout_types.QHBoxLayout =
  let vtbl = if vtbl == nil: new QHBoxLayoutVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQHBoxLayoutVTable, _: ptr cQHBoxLayout) {.cdecl.} =
    let vtbl = cast[ref QHBoxLayoutVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQHBoxLayout_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQHBoxLayout_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQHBoxLayout_metacall
  if not isNil(vtbl.addItem):
    vtbl[].vtbl.addItem = miqt_exec_callback_cQHBoxLayout_addItem
  if not isNil(vtbl.spacing):
    vtbl[].vtbl.spacing = miqt_exec_callback_cQHBoxLayout_spacing
  if not isNil(vtbl.setSpacing):
    vtbl[].vtbl.setSpacing = miqt_exec_callback_cQHBoxLayout_setSpacing
  if not isNil(vtbl.sizeHint):
    vtbl[].vtbl.sizeHint = miqt_exec_callback_cQHBoxLayout_sizeHint
  if not isNil(vtbl.minimumSize):
    vtbl[].vtbl.minimumSize = miqt_exec_callback_cQHBoxLayout_minimumSize
  if not isNil(vtbl.maximumSize):
    vtbl[].vtbl.maximumSize = miqt_exec_callback_cQHBoxLayout_maximumSize
  if not isNil(vtbl.hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = miqt_exec_callback_cQHBoxLayout_hasHeightForWidth
  if not isNil(vtbl.heightForWidth):
    vtbl[].vtbl.heightForWidth = miqt_exec_callback_cQHBoxLayout_heightForWidth
  if not isNil(vtbl.minimumHeightForWidth):
    vtbl[].vtbl.minimumHeightForWidth = miqt_exec_callback_cQHBoxLayout_minimumHeightForWidth
  if not isNil(vtbl.expandingDirections):
    vtbl[].vtbl.expandingDirections = miqt_exec_callback_cQHBoxLayout_expandingDirections
  if not isNil(vtbl.invalidate):
    vtbl[].vtbl.invalidate = miqt_exec_callback_cQHBoxLayout_invalidate
  if not isNil(vtbl.itemAt):
    vtbl[].vtbl.itemAt = miqt_exec_callback_cQHBoxLayout_itemAt
  if not isNil(vtbl.takeAt):
    vtbl[].vtbl.takeAt = miqt_exec_callback_cQHBoxLayout_takeAt
  if not isNil(vtbl.count):
    vtbl[].vtbl.count = miqt_exec_callback_cQHBoxLayout_count
  if not isNil(vtbl.setGeometry):
    vtbl[].vtbl.setGeometry = miqt_exec_callback_cQHBoxLayout_setGeometry
  if not isNil(vtbl.geometry):
    vtbl[].vtbl.geometry = miqt_exec_callback_cQHBoxLayout_geometry
  if not isNil(vtbl.indexOf):
    vtbl[].vtbl.indexOf = miqt_exec_callback_cQHBoxLayout_indexOf
  if not isNil(vtbl.isEmpty):
    vtbl[].vtbl.isEmpty = miqt_exec_callback_cQHBoxLayout_isEmpty
  if not isNil(vtbl.controlTypes):
    vtbl[].vtbl.controlTypes = miqt_exec_callback_cQHBoxLayout_controlTypes
  if not isNil(vtbl.replaceWidget):
    vtbl[].vtbl.replaceWidget = miqt_exec_callback_cQHBoxLayout_replaceWidget
  if not isNil(vtbl.layout):
    vtbl[].vtbl.layout = miqt_exec_callback_cQHBoxLayout_layout
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQHBoxLayout_childEvent
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQHBoxLayout_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQHBoxLayout_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQHBoxLayout_timerEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQHBoxLayout_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQHBoxLayout_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQHBoxLayout_disconnectNotify
  if not isNil(vtbl.widget):
    vtbl[].vtbl.widget = miqt_exec_callback_cQHBoxLayout_widget
  if not isNil(vtbl.spacerItem):
    vtbl[].vtbl.spacerItem = miqt_exec_callback_cQHBoxLayout_spacerItem
  gen_qboxlayout_types.QHBoxLayout(h: fcQHBoxLayout_new2(addr(vtbl[]), ))

proc staticMetaObject*(_: type gen_qboxlayout_types.QHBoxLayout): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQHBoxLayout_staticMetaObject())
proc delete*(self: gen_qboxlayout_types.QHBoxLayout) =
  fcQHBoxLayout_delete(self.h)
proc metaObject*(self: gen_qboxlayout_types.QVBoxLayout, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQVBoxLayout_metaObject(self.h))

proc metacast*(self: gen_qboxlayout_types.QVBoxLayout, param1: cstring): pointer =
  fcQVBoxLayout_metacast(self.h, param1)

proc metacall*(self: gen_qboxlayout_types.QVBoxLayout, param1: cint, param2: cint, param3: pointer): cint =
  fcQVBoxLayout_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qboxlayout_types.QVBoxLayout, s: cstring): string =
  let v_ms = fcQVBoxLayout_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qboxlayout_types.QVBoxLayout, s: cstring, c: cstring): string =
  let v_ms = fcQVBoxLayout_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qboxlayout_types.QVBoxLayout, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQVBoxLayout_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
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
type QVBoxLayoutVTable* = object
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
proc QVBoxLayoutmetaObject*(self: gen_qboxlayout_types.QVBoxLayout, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQVBoxLayout_virtualbase_metaObject(self.h))

proc miqt_exec_callback_cQVBoxLayout_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QVBoxLayoutVTable](vtbl)
  let self = QVBoxLayout(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.h

proc QVBoxLayoutmetacast*(self: gen_qboxlayout_types.QVBoxLayout, param1: cstring): pointer =
  fcQVBoxLayout_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQVBoxLayout_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QVBoxLayoutVTable](vtbl)
  let self = QVBoxLayout(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QVBoxLayoutmetacall*(self: gen_qboxlayout_types.QVBoxLayout, param1: cint, param2: cint, param3: pointer): cint =
  fcQVBoxLayout_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQVBoxLayout_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QVBoxLayoutVTable](vtbl)
  let self = QVBoxLayout(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QVBoxLayoutaddItem*(self: gen_qboxlayout_types.QVBoxLayout, param1: gen_qlayoutitem_types.QLayoutItem): void =
  fcQVBoxLayout_virtualbase_addItem(self.h, param1.h)

proc miqt_exec_callback_cQVBoxLayout_addItem(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QVBoxLayoutVTable](vtbl)
  let self = QVBoxLayout(h: self)
  let slotval1 = gen_qlayoutitem_types.QLayoutItem(h: param1)
  vtbl[].addItem(self, slotval1)

proc QVBoxLayoutspacing*(self: gen_qboxlayout_types.QVBoxLayout, ): cint =
  fcQVBoxLayout_virtualbase_spacing(self.h)

proc miqt_exec_callback_cQVBoxLayout_spacing(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QVBoxLayoutVTable](vtbl)
  let self = QVBoxLayout(h: self)
  var virtualReturn = vtbl[].spacing(self)
  virtualReturn

proc QVBoxLayoutsetSpacing*(self: gen_qboxlayout_types.QVBoxLayout, spacing: cint): void =
  fcQVBoxLayout_virtualbase_setSpacing(self.h, spacing)

proc miqt_exec_callback_cQVBoxLayout_setSpacing(vtbl: pointer, self: pointer, spacing: cint): void {.cdecl.} =
  let vtbl = cast[ptr QVBoxLayoutVTable](vtbl)
  let self = QVBoxLayout(h: self)
  let slotval1 = spacing
  vtbl[].setSpacing(self, slotval1)

proc QVBoxLayoutsizeHint*(self: gen_qboxlayout_types.QVBoxLayout, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQVBoxLayout_virtualbase_sizeHint(self.h))

proc miqt_exec_callback_cQVBoxLayout_sizeHint(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QVBoxLayoutVTable](vtbl)
  let self = QVBoxLayout(h: self)
  var virtualReturn = vtbl[].sizeHint(self)
  virtualReturn.h

proc QVBoxLayoutminimumSize*(self: gen_qboxlayout_types.QVBoxLayout, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQVBoxLayout_virtualbase_minimumSize(self.h))

proc miqt_exec_callback_cQVBoxLayout_minimumSize(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QVBoxLayoutVTable](vtbl)
  let self = QVBoxLayout(h: self)
  var virtualReturn = vtbl[].minimumSize(self)
  virtualReturn.h

proc QVBoxLayoutmaximumSize*(self: gen_qboxlayout_types.QVBoxLayout, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQVBoxLayout_virtualbase_maximumSize(self.h))

proc miqt_exec_callback_cQVBoxLayout_maximumSize(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QVBoxLayoutVTable](vtbl)
  let self = QVBoxLayout(h: self)
  var virtualReturn = vtbl[].maximumSize(self)
  virtualReturn.h

proc QVBoxLayouthasHeightForWidth*(self: gen_qboxlayout_types.QVBoxLayout, ): bool =
  fcQVBoxLayout_virtualbase_hasHeightForWidth(self.h)

proc miqt_exec_callback_cQVBoxLayout_hasHeightForWidth(vtbl: pointer, self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QVBoxLayoutVTable](vtbl)
  let self = QVBoxLayout(h: self)
  var virtualReturn = vtbl[].hasHeightForWidth(self)
  virtualReturn

proc QVBoxLayoutheightForWidth*(self: gen_qboxlayout_types.QVBoxLayout, param1: cint): cint =
  fcQVBoxLayout_virtualbase_heightForWidth(self.h, param1)

proc miqt_exec_callback_cQVBoxLayout_heightForWidth(vtbl: pointer, self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QVBoxLayoutVTable](vtbl)
  let self = QVBoxLayout(h: self)
  let slotval1 = param1
  var virtualReturn = vtbl[].heightForWidth(self, slotval1)
  virtualReturn

proc QVBoxLayoutminimumHeightForWidth*(self: gen_qboxlayout_types.QVBoxLayout, param1: cint): cint =
  fcQVBoxLayout_virtualbase_minimumHeightForWidth(self.h, param1)

proc miqt_exec_callback_cQVBoxLayout_minimumHeightForWidth(vtbl: pointer, self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QVBoxLayoutVTable](vtbl)
  let self = QVBoxLayout(h: self)
  let slotval1 = param1
  var virtualReturn = vtbl[].minimumHeightForWidth(self, slotval1)
  virtualReturn

proc QVBoxLayoutexpandingDirections*(self: gen_qboxlayout_types.QVBoxLayout, ): cint =
  cint(fcQVBoxLayout_virtualbase_expandingDirections(self.h))

proc miqt_exec_callback_cQVBoxLayout_expandingDirections(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QVBoxLayoutVTable](vtbl)
  let self = QVBoxLayout(h: self)
  var virtualReturn = vtbl[].expandingDirections(self)
  cint(virtualReturn)

proc QVBoxLayoutinvalidate*(self: gen_qboxlayout_types.QVBoxLayout, ): void =
  fcQVBoxLayout_virtualbase_invalidate(self.h)

proc miqt_exec_callback_cQVBoxLayout_invalidate(vtbl: pointer, self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QVBoxLayoutVTable](vtbl)
  let self = QVBoxLayout(h: self)
  vtbl[].invalidate(self)

proc QVBoxLayoutitemAt*(self: gen_qboxlayout_types.QVBoxLayout, param1: cint): gen_qlayoutitem_types.QLayoutItem =
  gen_qlayoutitem_types.QLayoutItem(h: fcQVBoxLayout_virtualbase_itemAt(self.h, param1))

proc miqt_exec_callback_cQVBoxLayout_itemAt(vtbl: pointer, self: pointer, param1: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QVBoxLayoutVTable](vtbl)
  let self = QVBoxLayout(h: self)
  let slotval1 = param1
  var virtualReturn = vtbl[].itemAt(self, slotval1)
  virtualReturn.h

proc QVBoxLayouttakeAt*(self: gen_qboxlayout_types.QVBoxLayout, param1: cint): gen_qlayoutitem_types.QLayoutItem =
  gen_qlayoutitem_types.QLayoutItem(h: fcQVBoxLayout_virtualbase_takeAt(self.h, param1))

proc miqt_exec_callback_cQVBoxLayout_takeAt(vtbl: pointer, self: pointer, param1: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QVBoxLayoutVTable](vtbl)
  let self = QVBoxLayout(h: self)
  let slotval1 = param1
  var virtualReturn = vtbl[].takeAt(self, slotval1)
  virtualReturn.h

proc QVBoxLayoutcount*(self: gen_qboxlayout_types.QVBoxLayout, ): cint =
  fcQVBoxLayout_virtualbase_count(self.h)

proc miqt_exec_callback_cQVBoxLayout_count(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QVBoxLayoutVTable](vtbl)
  let self = QVBoxLayout(h: self)
  var virtualReturn = vtbl[].count(self)
  virtualReturn

proc QVBoxLayoutsetGeometry*(self: gen_qboxlayout_types.QVBoxLayout, geometry: gen_qrect_types.QRect): void =
  fcQVBoxLayout_virtualbase_setGeometry(self.h, geometry.h)

proc miqt_exec_callback_cQVBoxLayout_setGeometry(vtbl: pointer, self: pointer, geometry: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QVBoxLayoutVTable](vtbl)
  let self = QVBoxLayout(h: self)
  let slotval1 = gen_qrect_types.QRect(h: geometry)
  vtbl[].setGeometry(self, slotval1)

proc QVBoxLayoutgeometry*(self: gen_qboxlayout_types.QVBoxLayout, ): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fcQVBoxLayout_virtualbase_geometry(self.h))

proc miqt_exec_callback_cQVBoxLayout_geometry(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QVBoxLayoutVTable](vtbl)
  let self = QVBoxLayout(h: self)
  var virtualReturn = vtbl[].geometry(self)
  virtualReturn.h

proc QVBoxLayoutindexOf*(self: gen_qboxlayout_types.QVBoxLayout, param1: gen_qwidget_types.QWidget): cint =
  fcQVBoxLayout_virtualbase_indexOf(self.h, param1.h)

proc miqt_exec_callback_cQVBoxLayout_indexOf(vtbl: pointer, self: pointer, param1: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QVBoxLayoutVTable](vtbl)
  let self = QVBoxLayout(h: self)
  let slotval1 = gen_qwidget_types.QWidget(h: param1)
  var virtualReturn = vtbl[].indexOf(self, slotval1)
  virtualReturn

proc QVBoxLayoutisEmpty*(self: gen_qboxlayout_types.QVBoxLayout, ): bool =
  fcQVBoxLayout_virtualbase_isEmpty(self.h)

proc miqt_exec_callback_cQVBoxLayout_isEmpty(vtbl: pointer, self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QVBoxLayoutVTable](vtbl)
  let self = QVBoxLayout(h: self)
  var virtualReturn = vtbl[].isEmpty(self)
  virtualReturn

proc QVBoxLayoutcontrolTypes*(self: gen_qboxlayout_types.QVBoxLayout, ): cint =
  cint(fcQVBoxLayout_virtualbase_controlTypes(self.h))

proc miqt_exec_callback_cQVBoxLayout_controlTypes(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QVBoxLayoutVTable](vtbl)
  let self = QVBoxLayout(h: self)
  var virtualReturn = vtbl[].controlTypes(self)
  cint(virtualReturn)

proc QVBoxLayoutreplaceWidget*(self: gen_qboxlayout_types.QVBoxLayout, fromVal: gen_qwidget_types.QWidget, to: gen_qwidget_types.QWidget, options: cint): gen_qlayoutitem_types.QLayoutItem =
  gen_qlayoutitem_types.QLayoutItem(h: fcQVBoxLayout_virtualbase_replaceWidget(self.h, fromVal.h, to.h, cint(options)))

proc miqt_exec_callback_cQVBoxLayout_replaceWidget(vtbl: pointer, self: pointer, fromVal: pointer, to: pointer, options: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QVBoxLayoutVTable](vtbl)
  let self = QVBoxLayout(h: self)
  let slotval1 = gen_qwidget_types.QWidget(h: fromVal)
  let slotval2 = gen_qwidget_types.QWidget(h: to)
  let slotval3 = cint(options)
  var virtualReturn = vtbl[].replaceWidget(self, slotval1, slotval2, slotval3)
  virtualReturn.h

proc QVBoxLayoutlayout*(self: gen_qboxlayout_types.QVBoxLayout, ): gen_qlayout_types.QLayout =
  gen_qlayout_types.QLayout(h: fcQVBoxLayout_virtualbase_layout(self.h))

proc miqt_exec_callback_cQVBoxLayout_layout(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QVBoxLayoutVTable](vtbl)
  let self = QVBoxLayout(h: self)
  var virtualReturn = vtbl[].layout(self)
  virtualReturn.h

proc QVBoxLayoutchildEvent*(self: gen_qboxlayout_types.QVBoxLayout, e: gen_qcoreevent_types.QChildEvent): void =
  fcQVBoxLayout_virtualbase_childEvent(self.h, e.h)

proc miqt_exec_callback_cQVBoxLayout_childEvent(vtbl: pointer, self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QVBoxLayoutVTable](vtbl)
  let self = QVBoxLayout(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: e)
  vtbl[].childEvent(self, slotval1)

proc QVBoxLayoutevent*(self: gen_qboxlayout_types.QVBoxLayout, event: gen_qcoreevent_types.QEvent): bool =
  fcQVBoxLayout_virtualbase_event(self.h, event.h)

proc miqt_exec_callback_cQVBoxLayout_event(vtbl: pointer, self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QVBoxLayoutVTable](vtbl)
  let self = QVBoxLayout(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QVBoxLayouteventFilter*(self: gen_qboxlayout_types.QVBoxLayout, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQVBoxLayout_virtualbase_eventFilter(self.h, watched.h, event.h)

proc miqt_exec_callback_cQVBoxLayout_eventFilter(vtbl: pointer, self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QVBoxLayoutVTable](vtbl)
  let self = QVBoxLayout(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QVBoxLayouttimerEvent*(self: gen_qboxlayout_types.QVBoxLayout, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQVBoxLayout_virtualbase_timerEvent(self.h, event.h)

proc miqt_exec_callback_cQVBoxLayout_timerEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QVBoxLayoutVTable](vtbl)
  let self = QVBoxLayout(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)
  vtbl[].timerEvent(self, slotval1)

proc QVBoxLayoutcustomEvent*(self: gen_qboxlayout_types.QVBoxLayout, event: gen_qcoreevent_types.QEvent): void =
  fcQVBoxLayout_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQVBoxLayout_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QVBoxLayoutVTable](vtbl)
  let self = QVBoxLayout(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].customEvent(self, slotval1)

proc QVBoxLayoutconnectNotify*(self: gen_qboxlayout_types.QVBoxLayout, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQVBoxLayout_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQVBoxLayout_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QVBoxLayoutVTable](vtbl)
  let self = QVBoxLayout(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].connectNotify(self, slotval1)

proc QVBoxLayoutdisconnectNotify*(self: gen_qboxlayout_types.QVBoxLayout, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQVBoxLayout_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQVBoxLayout_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QVBoxLayoutVTable](vtbl)
  let self = QVBoxLayout(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].disconnectNotify(self, slotval1)

proc QVBoxLayoutwidget*(self: gen_qboxlayout_types.QVBoxLayout, ): gen_qwidget_types.QWidget =
  gen_qwidget_types.QWidget(h: fcQVBoxLayout_virtualbase_widget(self.h))

proc miqt_exec_callback_cQVBoxLayout_widget(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QVBoxLayoutVTable](vtbl)
  let self = QVBoxLayout(h: self)
  var virtualReturn = vtbl[].widget(self)
  virtualReturn.h

proc QVBoxLayoutspacerItem*(self: gen_qboxlayout_types.QVBoxLayout, ): gen_qlayoutitem_types.QSpacerItem =
  gen_qlayoutitem_types.QSpacerItem(h: fcQVBoxLayout_virtualbase_spacerItem(self.h))

proc miqt_exec_callback_cQVBoxLayout_spacerItem(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QVBoxLayoutVTable](vtbl)
  let self = QVBoxLayout(h: self)
  var virtualReturn = vtbl[].spacerItem(self)
  virtualReturn.h

proc create*(T: type gen_qboxlayout_types.QVBoxLayout,
    parent: gen_qwidget_types.QWidget,
    vtbl: ref QVBoxLayoutVTable = nil): gen_qboxlayout_types.QVBoxLayout =
  let vtbl = if vtbl == nil: new QVBoxLayoutVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQVBoxLayoutVTable, _: ptr cQVBoxLayout) {.cdecl.} =
    let vtbl = cast[ref QVBoxLayoutVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQVBoxLayout_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQVBoxLayout_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQVBoxLayout_metacall
  if not isNil(vtbl.addItem):
    vtbl[].vtbl.addItem = miqt_exec_callback_cQVBoxLayout_addItem
  if not isNil(vtbl.spacing):
    vtbl[].vtbl.spacing = miqt_exec_callback_cQVBoxLayout_spacing
  if not isNil(vtbl.setSpacing):
    vtbl[].vtbl.setSpacing = miqt_exec_callback_cQVBoxLayout_setSpacing
  if not isNil(vtbl.sizeHint):
    vtbl[].vtbl.sizeHint = miqt_exec_callback_cQVBoxLayout_sizeHint
  if not isNil(vtbl.minimumSize):
    vtbl[].vtbl.minimumSize = miqt_exec_callback_cQVBoxLayout_minimumSize
  if not isNil(vtbl.maximumSize):
    vtbl[].vtbl.maximumSize = miqt_exec_callback_cQVBoxLayout_maximumSize
  if not isNil(vtbl.hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = miqt_exec_callback_cQVBoxLayout_hasHeightForWidth
  if not isNil(vtbl.heightForWidth):
    vtbl[].vtbl.heightForWidth = miqt_exec_callback_cQVBoxLayout_heightForWidth
  if not isNil(vtbl.minimumHeightForWidth):
    vtbl[].vtbl.minimumHeightForWidth = miqt_exec_callback_cQVBoxLayout_minimumHeightForWidth
  if not isNil(vtbl.expandingDirections):
    vtbl[].vtbl.expandingDirections = miqt_exec_callback_cQVBoxLayout_expandingDirections
  if not isNil(vtbl.invalidate):
    vtbl[].vtbl.invalidate = miqt_exec_callback_cQVBoxLayout_invalidate
  if not isNil(vtbl.itemAt):
    vtbl[].vtbl.itemAt = miqt_exec_callback_cQVBoxLayout_itemAt
  if not isNil(vtbl.takeAt):
    vtbl[].vtbl.takeAt = miqt_exec_callback_cQVBoxLayout_takeAt
  if not isNil(vtbl.count):
    vtbl[].vtbl.count = miqt_exec_callback_cQVBoxLayout_count
  if not isNil(vtbl.setGeometry):
    vtbl[].vtbl.setGeometry = miqt_exec_callback_cQVBoxLayout_setGeometry
  if not isNil(vtbl.geometry):
    vtbl[].vtbl.geometry = miqt_exec_callback_cQVBoxLayout_geometry
  if not isNil(vtbl.indexOf):
    vtbl[].vtbl.indexOf = miqt_exec_callback_cQVBoxLayout_indexOf
  if not isNil(vtbl.isEmpty):
    vtbl[].vtbl.isEmpty = miqt_exec_callback_cQVBoxLayout_isEmpty
  if not isNil(vtbl.controlTypes):
    vtbl[].vtbl.controlTypes = miqt_exec_callback_cQVBoxLayout_controlTypes
  if not isNil(vtbl.replaceWidget):
    vtbl[].vtbl.replaceWidget = miqt_exec_callback_cQVBoxLayout_replaceWidget
  if not isNil(vtbl.layout):
    vtbl[].vtbl.layout = miqt_exec_callback_cQVBoxLayout_layout
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQVBoxLayout_childEvent
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQVBoxLayout_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQVBoxLayout_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQVBoxLayout_timerEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQVBoxLayout_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQVBoxLayout_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQVBoxLayout_disconnectNotify
  if not isNil(vtbl.widget):
    vtbl[].vtbl.widget = miqt_exec_callback_cQVBoxLayout_widget
  if not isNil(vtbl.spacerItem):
    vtbl[].vtbl.spacerItem = miqt_exec_callback_cQVBoxLayout_spacerItem
  gen_qboxlayout_types.QVBoxLayout(h: fcQVBoxLayout_new(addr(vtbl[]), parent.h))

proc create*(T: type gen_qboxlayout_types.QVBoxLayout,
    vtbl: ref QVBoxLayoutVTable = nil): gen_qboxlayout_types.QVBoxLayout =
  let vtbl = if vtbl == nil: new QVBoxLayoutVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQVBoxLayoutVTable, _: ptr cQVBoxLayout) {.cdecl.} =
    let vtbl = cast[ref QVBoxLayoutVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQVBoxLayout_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQVBoxLayout_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQVBoxLayout_metacall
  if not isNil(vtbl.addItem):
    vtbl[].vtbl.addItem = miqt_exec_callback_cQVBoxLayout_addItem
  if not isNil(vtbl.spacing):
    vtbl[].vtbl.spacing = miqt_exec_callback_cQVBoxLayout_spacing
  if not isNil(vtbl.setSpacing):
    vtbl[].vtbl.setSpacing = miqt_exec_callback_cQVBoxLayout_setSpacing
  if not isNil(vtbl.sizeHint):
    vtbl[].vtbl.sizeHint = miqt_exec_callback_cQVBoxLayout_sizeHint
  if not isNil(vtbl.minimumSize):
    vtbl[].vtbl.minimumSize = miqt_exec_callback_cQVBoxLayout_minimumSize
  if not isNil(vtbl.maximumSize):
    vtbl[].vtbl.maximumSize = miqt_exec_callback_cQVBoxLayout_maximumSize
  if not isNil(vtbl.hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = miqt_exec_callback_cQVBoxLayout_hasHeightForWidth
  if not isNil(vtbl.heightForWidth):
    vtbl[].vtbl.heightForWidth = miqt_exec_callback_cQVBoxLayout_heightForWidth
  if not isNil(vtbl.minimumHeightForWidth):
    vtbl[].vtbl.minimumHeightForWidth = miqt_exec_callback_cQVBoxLayout_minimumHeightForWidth
  if not isNil(vtbl.expandingDirections):
    vtbl[].vtbl.expandingDirections = miqt_exec_callback_cQVBoxLayout_expandingDirections
  if not isNil(vtbl.invalidate):
    vtbl[].vtbl.invalidate = miqt_exec_callback_cQVBoxLayout_invalidate
  if not isNil(vtbl.itemAt):
    vtbl[].vtbl.itemAt = miqt_exec_callback_cQVBoxLayout_itemAt
  if not isNil(vtbl.takeAt):
    vtbl[].vtbl.takeAt = miqt_exec_callback_cQVBoxLayout_takeAt
  if not isNil(vtbl.count):
    vtbl[].vtbl.count = miqt_exec_callback_cQVBoxLayout_count
  if not isNil(vtbl.setGeometry):
    vtbl[].vtbl.setGeometry = miqt_exec_callback_cQVBoxLayout_setGeometry
  if not isNil(vtbl.geometry):
    vtbl[].vtbl.geometry = miqt_exec_callback_cQVBoxLayout_geometry
  if not isNil(vtbl.indexOf):
    vtbl[].vtbl.indexOf = miqt_exec_callback_cQVBoxLayout_indexOf
  if not isNil(vtbl.isEmpty):
    vtbl[].vtbl.isEmpty = miqt_exec_callback_cQVBoxLayout_isEmpty
  if not isNil(vtbl.controlTypes):
    vtbl[].vtbl.controlTypes = miqt_exec_callback_cQVBoxLayout_controlTypes
  if not isNil(vtbl.replaceWidget):
    vtbl[].vtbl.replaceWidget = miqt_exec_callback_cQVBoxLayout_replaceWidget
  if not isNil(vtbl.layout):
    vtbl[].vtbl.layout = miqt_exec_callback_cQVBoxLayout_layout
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQVBoxLayout_childEvent
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQVBoxLayout_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQVBoxLayout_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQVBoxLayout_timerEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQVBoxLayout_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQVBoxLayout_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQVBoxLayout_disconnectNotify
  if not isNil(vtbl.widget):
    vtbl[].vtbl.widget = miqt_exec_callback_cQVBoxLayout_widget
  if not isNil(vtbl.spacerItem):
    vtbl[].vtbl.spacerItem = miqt_exec_callback_cQVBoxLayout_spacerItem
  gen_qboxlayout_types.QVBoxLayout(h: fcQVBoxLayout_new2(addr(vtbl[]), ))

proc staticMetaObject*(_: type gen_qboxlayout_types.QVBoxLayout): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQVBoxLayout_staticMetaObject())
proc delete*(self: gen_qboxlayout_types.QVBoxLayout) =
  fcQVBoxLayout_delete(self.h)
