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
proc fcQBoxLayout_trUtf8(s: cstring): struct_miqt_string {.importc: "QBoxLayout_trUtf8".}
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
proc fcQBoxLayout_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QBoxLayout_trUtf82".}
proc fcQBoxLayout_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QBoxLayout_trUtf83".}
proc fcQBoxLayout_addStretch1(self: pointer, stretch: cint): void {.importc: "QBoxLayout_addStretch1".}
proc fcQBoxLayout_addWidget2(self: pointer, param1: pointer, stretch: cint): void {.importc: "QBoxLayout_addWidget2".}
proc fcQBoxLayout_addWidget3(self: pointer, param1: pointer, stretch: cint, alignment: cint): void {.importc: "QBoxLayout_addWidget3".}
proc fcQBoxLayout_addLayout2(self: pointer, layout: pointer, stretch: cint): void {.importc: "QBoxLayout_addLayout2".}
proc fcQBoxLayout_insertStretch2(self: pointer, index: cint, stretch: cint): void {.importc: "QBoxLayout_insertStretch2".}
proc fcQBoxLayout_insertWidget3(self: pointer, index: cint, widget: pointer, stretch: cint): void {.importc: "QBoxLayout_insertWidget3".}
proc fcQBoxLayout_insertWidget4(self: pointer, index: cint, widget: pointer, stretch: cint, alignment: cint): void {.importc: "QBoxLayout_insertWidget4".}
proc fcQBoxLayout_insertLayout3(self: pointer, index: cint, layout: pointer, stretch: cint): void {.importc: "QBoxLayout_insertLayout3".}
type cQBoxLayoutVTable {.pure.} = object
  destructor*: proc(vtbl: ptr cQBoxLayoutVTable, self: ptr cQBoxLayout) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(vtbl, self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(vtbl, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  addItem*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
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
proc fcQBoxLayout_protectedbase_widgetEvent(self: pointer, param1: pointer): void {.importc: "QBoxLayout_protectedbase_widgetEvent".}
proc fcQBoxLayout_protectedbase_addChildLayout(self: pointer, l: pointer): void {.importc: "QBoxLayout_protectedbase_addChildLayout".}
proc fcQBoxLayout_protectedbase_addChildWidget(self: pointer, w: pointer): void {.importc: "QBoxLayout_protectedbase_addChildWidget".}
proc fcQBoxLayout_protectedbase_adoptLayout(self: pointer, layout: pointer): bool {.importc: "QBoxLayout_protectedbase_adoptLayout".}
proc fcQBoxLayout_protectedbase_alignmentRect(self: pointer, param1: pointer): pointer {.importc: "QBoxLayout_protectedbase_alignmentRect".}
proc fcQBoxLayout_protectedbase_sender(self: pointer, ): pointer {.importc: "QBoxLayout_protectedbase_sender".}
proc fcQBoxLayout_protectedbase_senderSignalIndex(self: pointer, ): cint {.importc: "QBoxLayout_protectedbase_senderSignalIndex".}
proc fcQBoxLayout_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QBoxLayout_protectedbase_receivers".}
proc fcQBoxLayout_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QBoxLayout_protectedbase_isSignalConnected".}
proc fcQBoxLayout_new(vtbl: pointer, param1: cint): ptr cQBoxLayout {.importc: "QBoxLayout_new".}
proc fcQBoxLayout_new2(vtbl: pointer, param1: cint, parent: pointer): ptr cQBoxLayout {.importc: "QBoxLayout_new2".}
proc fcQBoxLayout_staticMetaObject(): pointer {.importc: "QBoxLayout_staticMetaObject".}
proc fcQHBoxLayout_metaObject(self: pointer, ): pointer {.importc: "QHBoxLayout_metaObject".}
proc fcQHBoxLayout_metacast(self: pointer, param1: cstring): pointer {.importc: "QHBoxLayout_metacast".}
proc fcQHBoxLayout_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QHBoxLayout_metacall".}
proc fcQHBoxLayout_tr(s: cstring): struct_miqt_string {.importc: "QHBoxLayout_tr".}
proc fcQHBoxLayout_trUtf8(s: cstring): struct_miqt_string {.importc: "QHBoxLayout_trUtf8".}
proc fcQHBoxLayout_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QHBoxLayout_tr2".}
proc fcQHBoxLayout_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QHBoxLayout_tr3".}
proc fcQHBoxLayout_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QHBoxLayout_trUtf82".}
proc fcQHBoxLayout_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QHBoxLayout_trUtf83".}
type cQHBoxLayoutVTable {.pure.} = object
  destructor*: proc(vtbl: ptr cQHBoxLayoutVTable, self: ptr cQHBoxLayout) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(vtbl, self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(vtbl, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  addItem*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
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
proc fcQHBoxLayout_protectedbase_widgetEvent(self: pointer, param1: pointer): void {.importc: "QHBoxLayout_protectedbase_widgetEvent".}
proc fcQHBoxLayout_protectedbase_addChildLayout(self: pointer, l: pointer): void {.importc: "QHBoxLayout_protectedbase_addChildLayout".}
proc fcQHBoxLayout_protectedbase_addChildWidget(self: pointer, w: pointer): void {.importc: "QHBoxLayout_protectedbase_addChildWidget".}
proc fcQHBoxLayout_protectedbase_adoptLayout(self: pointer, layout: pointer): bool {.importc: "QHBoxLayout_protectedbase_adoptLayout".}
proc fcQHBoxLayout_protectedbase_alignmentRect(self: pointer, param1: pointer): pointer {.importc: "QHBoxLayout_protectedbase_alignmentRect".}
proc fcQHBoxLayout_protectedbase_sender(self: pointer, ): pointer {.importc: "QHBoxLayout_protectedbase_sender".}
proc fcQHBoxLayout_protectedbase_senderSignalIndex(self: pointer, ): cint {.importc: "QHBoxLayout_protectedbase_senderSignalIndex".}
proc fcQHBoxLayout_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QHBoxLayout_protectedbase_receivers".}
proc fcQHBoxLayout_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QHBoxLayout_protectedbase_isSignalConnected".}
proc fcQHBoxLayout_new(vtbl: pointer, parent: pointer): ptr cQHBoxLayout {.importc: "QHBoxLayout_new".}
proc fcQHBoxLayout_new2(vtbl: pointer, ): ptr cQHBoxLayout {.importc: "QHBoxLayout_new2".}
proc fcQHBoxLayout_staticMetaObject(): pointer {.importc: "QHBoxLayout_staticMetaObject".}
proc fcQVBoxLayout_metaObject(self: pointer, ): pointer {.importc: "QVBoxLayout_metaObject".}
proc fcQVBoxLayout_metacast(self: pointer, param1: cstring): pointer {.importc: "QVBoxLayout_metacast".}
proc fcQVBoxLayout_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QVBoxLayout_metacall".}
proc fcQVBoxLayout_tr(s: cstring): struct_miqt_string {.importc: "QVBoxLayout_tr".}
proc fcQVBoxLayout_trUtf8(s: cstring): struct_miqt_string {.importc: "QVBoxLayout_trUtf8".}
proc fcQVBoxLayout_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QVBoxLayout_tr2".}
proc fcQVBoxLayout_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QVBoxLayout_tr3".}
proc fcQVBoxLayout_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QVBoxLayout_trUtf82".}
proc fcQVBoxLayout_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QVBoxLayout_trUtf83".}
type cQVBoxLayoutVTable {.pure.} = object
  destructor*: proc(vtbl: ptr cQVBoxLayoutVTable, self: ptr cQVBoxLayout) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(vtbl, self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(vtbl, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  addItem*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
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
proc fcQVBoxLayout_protectedbase_widgetEvent(self: pointer, param1: pointer): void {.importc: "QVBoxLayout_protectedbase_widgetEvent".}
proc fcQVBoxLayout_protectedbase_addChildLayout(self: pointer, l: pointer): void {.importc: "QVBoxLayout_protectedbase_addChildLayout".}
proc fcQVBoxLayout_protectedbase_addChildWidget(self: pointer, w: pointer): void {.importc: "QVBoxLayout_protectedbase_addChildWidget".}
proc fcQVBoxLayout_protectedbase_adoptLayout(self: pointer, layout: pointer): bool {.importc: "QVBoxLayout_protectedbase_adoptLayout".}
proc fcQVBoxLayout_protectedbase_alignmentRect(self: pointer, param1: pointer): pointer {.importc: "QVBoxLayout_protectedbase_alignmentRect".}
proc fcQVBoxLayout_protectedbase_sender(self: pointer, ): pointer {.importc: "QVBoxLayout_protectedbase_sender".}
proc fcQVBoxLayout_protectedbase_senderSignalIndex(self: pointer, ): cint {.importc: "QVBoxLayout_protectedbase_senderSignalIndex".}
proc fcQVBoxLayout_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QVBoxLayout_protectedbase_receivers".}
proc fcQVBoxLayout_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QVBoxLayout_protectedbase_isSignalConnected".}
proc fcQVBoxLayout_new(vtbl: pointer, parent: pointer): ptr cQVBoxLayout {.importc: "QVBoxLayout_new".}
proc fcQVBoxLayout_new2(vtbl: pointer, ): ptr cQVBoxLayout {.importc: "QVBoxLayout_new2".}
proc fcQVBoxLayout_staticMetaObject(): pointer {.importc: "QVBoxLayout_staticMetaObject".}

proc metaObject*(self: gen_qboxlayout_types.QBoxLayout, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQBoxLayout_metaObject(self.h), owned: false)

proc metacast*(self: gen_qboxlayout_types.QBoxLayout, param1: cstring): pointer =
  fcQBoxLayout_metacast(self.h, param1)

proc metacall*(self: gen_qboxlayout_types.QBoxLayout, param1: cint, param2: cint, param3: pointer): cint =
  fcQBoxLayout_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qboxlayout_types.QBoxLayout, s: cstring): string =
  let v_ms = fcQBoxLayout_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qboxlayout_types.QBoxLayout, s: cstring): string =
  let v_ms = fcQBoxLayout_trUtf8(s)
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
  gen_qsize_types.QSize(h: fcQBoxLayout_sizeHint(self.h), owned: true)

proc minimumSize*(self: gen_qboxlayout_types.QBoxLayout, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQBoxLayout_minimumSize(self.h), owned: true)

proc maximumSize*(self: gen_qboxlayout_types.QBoxLayout, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQBoxLayout_maximumSize(self.h), owned: true)

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
  gen_qlayoutitem_types.QLayoutItem(h: fcQBoxLayout_itemAt(self.h, param1), owned: false)

proc takeAt*(self: gen_qboxlayout_types.QBoxLayout, param1: cint): gen_qlayoutitem_types.QLayoutItem =
  gen_qlayoutitem_types.QLayoutItem(h: fcQBoxLayout_takeAt(self.h, param1), owned: false)

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

proc trUtf8*(_: type gen_qboxlayout_types.QBoxLayout, s: cstring, c: cstring): string =
  let v_ms = fcQBoxLayout_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qboxlayout_types.QBoxLayout, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQBoxLayout_trUtf83(s, c, n)
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
  gen_qobjectdefs_types.QMetaObject(h: fcQBoxLayout_virtualbase_metaObject(self.h), owned: false)

proc miqt_exec_callback_cQBoxLayout_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QBoxLayoutVTable](vtbl)
  let self = QBoxLayout(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

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
  let slotval1 = gen_qlayoutitem_types.QLayoutItem(h: param1, owned: false)
  vtbl[].addItem(self, slotval1)

proc QBoxLayoutsizeHint*(self: gen_qboxlayout_types.QBoxLayout, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQBoxLayout_virtualbase_sizeHint(self.h), owned: true)

proc miqt_exec_callback_cQBoxLayout_sizeHint(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QBoxLayoutVTable](vtbl)
  let self = QBoxLayout(h: self)
  var virtualReturn = vtbl[].sizeHint(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QBoxLayoutminimumSize*(self: gen_qboxlayout_types.QBoxLayout, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQBoxLayout_virtualbase_minimumSize(self.h), owned: true)

proc miqt_exec_callback_cQBoxLayout_minimumSize(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QBoxLayoutVTable](vtbl)
  let self = QBoxLayout(h: self)
  var virtualReturn = vtbl[].minimumSize(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QBoxLayoutmaximumSize*(self: gen_qboxlayout_types.QBoxLayout, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQBoxLayout_virtualbase_maximumSize(self.h), owned: true)

proc miqt_exec_callback_cQBoxLayout_maximumSize(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QBoxLayoutVTable](vtbl)
  let self = QBoxLayout(h: self)
  var virtualReturn = vtbl[].maximumSize(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

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
  gen_qlayoutitem_types.QLayoutItem(h: fcQBoxLayout_virtualbase_itemAt(self.h, param1), owned: false)

proc miqt_exec_callback_cQBoxLayout_itemAt(vtbl: pointer, self: pointer, param1: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QBoxLayoutVTable](vtbl)
  let self = QBoxLayout(h: self)
  let slotval1 = param1
  var virtualReturn = vtbl[].itemAt(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QBoxLayouttakeAt*(self: gen_qboxlayout_types.QBoxLayout, param1: cint): gen_qlayoutitem_types.QLayoutItem =
  gen_qlayoutitem_types.QLayoutItem(h: fcQBoxLayout_virtualbase_takeAt(self.h, param1), owned: false)

proc miqt_exec_callback_cQBoxLayout_takeAt(vtbl: pointer, self: pointer, param1: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QBoxLayoutVTable](vtbl)
  let self = QBoxLayout(h: self)
  let slotval1 = param1
  var virtualReturn = vtbl[].takeAt(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

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
  let slotval1 = gen_qrect_types.QRect(h: geometry, owned: false)
  vtbl[].setGeometry(self, slotval1)

proc QBoxLayoutgeometry*(self: gen_qboxlayout_types.QBoxLayout, ): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fcQBoxLayout_virtualbase_geometry(self.h), owned: true)

proc miqt_exec_callback_cQBoxLayout_geometry(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QBoxLayoutVTable](vtbl)
  let self = QBoxLayout(h: self)
  var virtualReturn = vtbl[].geometry(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QBoxLayoutindexOf*(self: gen_qboxlayout_types.QBoxLayout, param1: gen_qwidget_types.QWidget): cint =
  fcQBoxLayout_virtualbase_indexOf(self.h, param1.h)

proc miqt_exec_callback_cQBoxLayout_indexOf(vtbl: pointer, self: pointer, param1: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QBoxLayoutVTable](vtbl)
  let self = QBoxLayout(h: self)
  let slotval1 = gen_qwidget_types.QWidget(h: param1, owned: false)
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

proc QBoxLayoutlayout*(self: gen_qboxlayout_types.QBoxLayout, ): gen_qlayout_types.QLayout =
  gen_qlayout_types.QLayout(h: fcQBoxLayout_virtualbase_layout(self.h), owned: false)

proc miqt_exec_callback_cQBoxLayout_layout(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QBoxLayoutVTable](vtbl)
  let self = QBoxLayout(h: self)
  var virtualReturn = vtbl[].layout(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QBoxLayoutchildEvent*(self: gen_qboxlayout_types.QBoxLayout, e: gen_qcoreevent_types.QChildEvent): void =
  fcQBoxLayout_virtualbase_childEvent(self.h, e.h)

proc miqt_exec_callback_cQBoxLayout_childEvent(vtbl: pointer, self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QBoxLayoutVTable](vtbl)
  let self = QBoxLayout(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: e, owned: false)
  vtbl[].childEvent(self, slotval1)

proc QBoxLayoutevent*(self: gen_qboxlayout_types.QBoxLayout, event: gen_qcoreevent_types.QEvent): bool =
  fcQBoxLayout_virtualbase_event(self.h, event.h)

proc miqt_exec_callback_cQBoxLayout_event(vtbl: pointer, self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QBoxLayoutVTable](vtbl)
  let self = QBoxLayout(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QBoxLayouteventFilter*(self: gen_qboxlayout_types.QBoxLayout, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQBoxLayout_virtualbase_eventFilter(self.h, watched.h, event.h)

proc miqt_exec_callback_cQBoxLayout_eventFilter(vtbl: pointer, self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QBoxLayoutVTable](vtbl)
  let self = QBoxLayout(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QBoxLayouttimerEvent*(self: gen_qboxlayout_types.QBoxLayout, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQBoxLayout_virtualbase_timerEvent(self.h, event.h)

proc miqt_exec_callback_cQBoxLayout_timerEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QBoxLayoutVTable](vtbl)
  let self = QBoxLayout(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc QBoxLayoutcustomEvent*(self: gen_qboxlayout_types.QBoxLayout, event: gen_qcoreevent_types.QEvent): void =
  fcQBoxLayout_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQBoxLayout_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QBoxLayoutVTable](vtbl)
  let self = QBoxLayout(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc QBoxLayoutconnectNotify*(self: gen_qboxlayout_types.QBoxLayout, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQBoxLayout_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQBoxLayout_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QBoxLayoutVTable](vtbl)
  let self = QBoxLayout(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc QBoxLayoutdisconnectNotify*(self: gen_qboxlayout_types.QBoxLayout, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQBoxLayout_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQBoxLayout_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QBoxLayoutVTable](vtbl)
  let self = QBoxLayout(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

proc QBoxLayoutwidget*(self: gen_qboxlayout_types.QBoxLayout, ): gen_qwidget_types.QWidget =
  gen_qwidget_types.QWidget(h: fcQBoxLayout_virtualbase_widget(self.h), owned: false)

proc miqt_exec_callback_cQBoxLayout_widget(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QBoxLayoutVTable](vtbl)
  let self = QBoxLayout(h: self)
  var virtualReturn = vtbl[].widget(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QBoxLayoutspacerItem*(self: gen_qboxlayout_types.QBoxLayout, ): gen_qlayoutitem_types.QSpacerItem =
  gen_qlayoutitem_types.QSpacerItem(h: fcQBoxLayout_virtualbase_spacerItem(self.h), owned: false)

proc miqt_exec_callback_cQBoxLayout_spacerItem(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QBoxLayoutVTable](vtbl)
  let self = QBoxLayout(h: self)
  var virtualReturn = vtbl[].spacerItem(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

type VirtualQBoxLayout* {.inheritable.} = ref object of QBoxLayout
  vtbl*: cQBoxLayoutVTable
method metaObject*(self: VirtualQBoxLayout, ): gen_qobjectdefs_types.QMetaObject {.base.} =
  QBoxLayoutmetaObject(self[])
proc miqt_exec_method_cQBoxLayout_metaObject(vtbl: pointer, inst: pointer): pointer {.cdecl.} =
  let vtbl = cast[VirtualQBoxLayout](cast[uint](vtbl) - uint(offsetOf(VirtualQBoxLayout, vtbl)))
  var virtualReturn = vtbl.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method metacast*(self: VirtualQBoxLayout, param1: cstring): pointer {.base.} =
  QBoxLayoutmetacast(self[], param1)
proc miqt_exec_method_cQBoxLayout_metacast(vtbl: pointer, inst: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[VirtualQBoxLayout](cast[uint](vtbl) - uint(offsetOf(VirtualQBoxLayout, vtbl)))
  let slotval1 = (param1)
  var virtualReturn = vtbl.metacast(slotval1)
  virtualReturn

method metacall*(self: VirtualQBoxLayout, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QBoxLayoutmetacall(self[], param1, param2, param3)
proc miqt_exec_method_cQBoxLayout_metacall(vtbl: pointer, inst: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[VirtualQBoxLayout](cast[uint](vtbl) - uint(offsetOf(VirtualQBoxLayout, vtbl)))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl.metacall(slotval1, slotval2, slotval3)
  virtualReturn

method addItem*(self: VirtualQBoxLayout, param1: gen_qlayoutitem_types.QLayoutItem): void {.base.} =
  QBoxLayoutaddItem(self[], param1)
proc miqt_exec_method_cQBoxLayout_addItem(vtbl: pointer, inst: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQBoxLayout](cast[uint](vtbl) - uint(offsetOf(VirtualQBoxLayout, vtbl)))
  let slotval1 = gen_qlayoutitem_types.QLayoutItem(h: param1, owned: false)
  vtbl.addItem(slotval1)

method sizeHint*(self: VirtualQBoxLayout, ): gen_qsize_types.QSize {.base.} =
  QBoxLayoutsizeHint(self[])
proc miqt_exec_method_cQBoxLayout_sizeHint(vtbl: pointer, inst: pointer): pointer {.cdecl.} =
  let vtbl = cast[VirtualQBoxLayout](cast[uint](vtbl) - uint(offsetOf(VirtualQBoxLayout, vtbl)))
  var virtualReturn = vtbl.sizeHint()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method minimumSize*(self: VirtualQBoxLayout, ): gen_qsize_types.QSize {.base.} =
  QBoxLayoutminimumSize(self[])
proc miqt_exec_method_cQBoxLayout_minimumSize(vtbl: pointer, inst: pointer): pointer {.cdecl.} =
  let vtbl = cast[VirtualQBoxLayout](cast[uint](vtbl) - uint(offsetOf(VirtualQBoxLayout, vtbl)))
  var virtualReturn = vtbl.minimumSize()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method maximumSize*(self: VirtualQBoxLayout, ): gen_qsize_types.QSize {.base.} =
  QBoxLayoutmaximumSize(self[])
proc miqt_exec_method_cQBoxLayout_maximumSize(vtbl: pointer, inst: pointer): pointer {.cdecl.} =
  let vtbl = cast[VirtualQBoxLayout](cast[uint](vtbl) - uint(offsetOf(VirtualQBoxLayout, vtbl)))
  var virtualReturn = vtbl.maximumSize()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method hasHeightForWidth*(self: VirtualQBoxLayout, ): bool {.base.} =
  QBoxLayouthasHeightForWidth(self[])
proc miqt_exec_method_cQBoxLayout_hasHeightForWidth(vtbl: pointer, inst: pointer): bool {.cdecl.} =
  let vtbl = cast[VirtualQBoxLayout](cast[uint](vtbl) - uint(offsetOf(VirtualQBoxLayout, vtbl)))
  var virtualReturn = vtbl.hasHeightForWidth()
  virtualReturn

method heightForWidth*(self: VirtualQBoxLayout, param1: cint): cint {.base.} =
  QBoxLayoutheightForWidth(self[], param1)
proc miqt_exec_method_cQBoxLayout_heightForWidth(vtbl: pointer, inst: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[VirtualQBoxLayout](cast[uint](vtbl) - uint(offsetOf(VirtualQBoxLayout, vtbl)))
  let slotval1 = param1
  var virtualReturn = vtbl.heightForWidth(slotval1)
  virtualReturn

method minimumHeightForWidth*(self: VirtualQBoxLayout, param1: cint): cint {.base.} =
  QBoxLayoutminimumHeightForWidth(self[], param1)
proc miqt_exec_method_cQBoxLayout_minimumHeightForWidth(vtbl: pointer, inst: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[VirtualQBoxLayout](cast[uint](vtbl) - uint(offsetOf(VirtualQBoxLayout, vtbl)))
  let slotval1 = param1
  var virtualReturn = vtbl.minimumHeightForWidth(slotval1)
  virtualReturn

method expandingDirections*(self: VirtualQBoxLayout, ): cint {.base.} =
  QBoxLayoutexpandingDirections(self[])
proc miqt_exec_method_cQBoxLayout_expandingDirections(vtbl: pointer, inst: pointer): cint {.cdecl.} =
  let vtbl = cast[VirtualQBoxLayout](cast[uint](vtbl) - uint(offsetOf(VirtualQBoxLayout, vtbl)))
  var virtualReturn = vtbl.expandingDirections()
  cint(virtualReturn)

method invalidate*(self: VirtualQBoxLayout, ): void {.base.} =
  QBoxLayoutinvalidate(self[])
proc miqt_exec_method_cQBoxLayout_invalidate(vtbl: pointer, inst: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQBoxLayout](cast[uint](vtbl) - uint(offsetOf(VirtualQBoxLayout, vtbl)))
  vtbl.invalidate()

method itemAt*(self: VirtualQBoxLayout, param1: cint): gen_qlayoutitem_types.QLayoutItem {.base.} =
  QBoxLayoutitemAt(self[], param1)
proc miqt_exec_method_cQBoxLayout_itemAt(vtbl: pointer, inst: pointer, param1: cint): pointer {.cdecl.} =
  let vtbl = cast[VirtualQBoxLayout](cast[uint](vtbl) - uint(offsetOf(VirtualQBoxLayout, vtbl)))
  let slotval1 = param1
  var virtualReturn = vtbl.itemAt(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method takeAt*(self: VirtualQBoxLayout, param1: cint): gen_qlayoutitem_types.QLayoutItem {.base.} =
  QBoxLayouttakeAt(self[], param1)
proc miqt_exec_method_cQBoxLayout_takeAt(vtbl: pointer, inst: pointer, param1: cint): pointer {.cdecl.} =
  let vtbl = cast[VirtualQBoxLayout](cast[uint](vtbl) - uint(offsetOf(VirtualQBoxLayout, vtbl)))
  let slotval1 = param1
  var virtualReturn = vtbl.takeAt(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method count*(self: VirtualQBoxLayout, ): cint {.base.} =
  QBoxLayoutcount(self[])
proc miqt_exec_method_cQBoxLayout_count(vtbl: pointer, inst: pointer): cint {.cdecl.} =
  let vtbl = cast[VirtualQBoxLayout](cast[uint](vtbl) - uint(offsetOf(VirtualQBoxLayout, vtbl)))
  var virtualReturn = vtbl.count()
  virtualReturn

method setGeometry*(self: VirtualQBoxLayout, geometry: gen_qrect_types.QRect): void {.base.} =
  QBoxLayoutsetGeometry(self[], geometry)
proc miqt_exec_method_cQBoxLayout_setGeometry(vtbl: pointer, inst: pointer, geometry: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQBoxLayout](cast[uint](vtbl) - uint(offsetOf(VirtualQBoxLayout, vtbl)))
  let slotval1 = gen_qrect_types.QRect(h: geometry, owned: false)
  vtbl.setGeometry(slotval1)

method geometry*(self: VirtualQBoxLayout, ): gen_qrect_types.QRect {.base.} =
  QBoxLayoutgeometry(self[])
proc miqt_exec_method_cQBoxLayout_geometry(vtbl: pointer, inst: pointer): pointer {.cdecl.} =
  let vtbl = cast[VirtualQBoxLayout](cast[uint](vtbl) - uint(offsetOf(VirtualQBoxLayout, vtbl)))
  var virtualReturn = vtbl.geometry()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method indexOf*(self: VirtualQBoxLayout, param1: gen_qwidget_types.QWidget): cint {.base.} =
  QBoxLayoutindexOf(self[], param1)
proc miqt_exec_method_cQBoxLayout_indexOf(vtbl: pointer, inst: pointer, param1: pointer): cint {.cdecl.} =
  let vtbl = cast[VirtualQBoxLayout](cast[uint](vtbl) - uint(offsetOf(VirtualQBoxLayout, vtbl)))
  let slotval1 = gen_qwidget_types.QWidget(h: param1, owned: false)
  var virtualReturn = vtbl.indexOf(slotval1)
  virtualReturn

method isEmpty*(self: VirtualQBoxLayout, ): bool {.base.} =
  QBoxLayoutisEmpty(self[])
proc miqt_exec_method_cQBoxLayout_isEmpty(vtbl: pointer, inst: pointer): bool {.cdecl.} =
  let vtbl = cast[VirtualQBoxLayout](cast[uint](vtbl) - uint(offsetOf(VirtualQBoxLayout, vtbl)))
  var virtualReturn = vtbl.isEmpty()
  virtualReturn

method controlTypes*(self: VirtualQBoxLayout, ): cint {.base.} =
  QBoxLayoutcontrolTypes(self[])
proc miqt_exec_method_cQBoxLayout_controlTypes(vtbl: pointer, inst: pointer): cint {.cdecl.} =
  let vtbl = cast[VirtualQBoxLayout](cast[uint](vtbl) - uint(offsetOf(VirtualQBoxLayout, vtbl)))
  var virtualReturn = vtbl.controlTypes()
  cint(virtualReturn)

method layout*(self: VirtualQBoxLayout, ): gen_qlayout_types.QLayout {.base.} =
  QBoxLayoutlayout(self[])
proc miqt_exec_method_cQBoxLayout_layout(vtbl: pointer, inst: pointer): pointer {.cdecl.} =
  let vtbl = cast[VirtualQBoxLayout](cast[uint](vtbl) - uint(offsetOf(VirtualQBoxLayout, vtbl)))
  var virtualReturn = vtbl.layout()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method childEvent*(self: VirtualQBoxLayout, e: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QBoxLayoutchildEvent(self[], e)
proc miqt_exec_method_cQBoxLayout_childEvent(vtbl: pointer, inst: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQBoxLayout](cast[uint](vtbl) - uint(offsetOf(VirtualQBoxLayout, vtbl)))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: e, owned: false)
  vtbl.childEvent(slotval1)

method event*(self: VirtualQBoxLayout, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QBoxLayoutevent(self[], event)
proc miqt_exec_method_cQBoxLayout_event(vtbl: pointer, inst: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[VirtualQBoxLayout](cast[uint](vtbl) - uint(offsetOf(VirtualQBoxLayout, vtbl)))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl.event(slotval1)
  virtualReturn

method eventFilter*(self: VirtualQBoxLayout, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QBoxLayouteventFilter(self[], watched, event)
proc miqt_exec_method_cQBoxLayout_eventFilter(vtbl: pointer, inst: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[VirtualQBoxLayout](cast[uint](vtbl) - uint(offsetOf(VirtualQBoxLayout, vtbl)))
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl.eventFilter(slotval1, slotval2)
  virtualReturn

method timerEvent*(self: VirtualQBoxLayout, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QBoxLayouttimerEvent(self[], event)
proc miqt_exec_method_cQBoxLayout_timerEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQBoxLayout](cast[uint](vtbl) - uint(offsetOf(VirtualQBoxLayout, vtbl)))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl.timerEvent(slotval1)

method customEvent*(self: VirtualQBoxLayout, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QBoxLayoutcustomEvent(self[], event)
proc miqt_exec_method_cQBoxLayout_customEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQBoxLayout](cast[uint](vtbl) - uint(offsetOf(VirtualQBoxLayout, vtbl)))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl.customEvent(slotval1)

method connectNotify*(self: VirtualQBoxLayout, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QBoxLayoutconnectNotify(self[], signal)
proc miqt_exec_method_cQBoxLayout_connectNotify(vtbl: pointer, inst: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQBoxLayout](cast[uint](vtbl) - uint(offsetOf(VirtualQBoxLayout, vtbl)))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl.connectNotify(slotval1)

method disconnectNotify*(self: VirtualQBoxLayout, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QBoxLayoutdisconnectNotify(self[], signal)
proc miqt_exec_method_cQBoxLayout_disconnectNotify(vtbl: pointer, inst: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQBoxLayout](cast[uint](vtbl) - uint(offsetOf(VirtualQBoxLayout, vtbl)))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl.disconnectNotify(slotval1)

method widget*(self: VirtualQBoxLayout, ): gen_qwidget_types.QWidget {.base.} =
  QBoxLayoutwidget(self[])
proc miqt_exec_method_cQBoxLayout_widget(vtbl: pointer, inst: pointer): pointer {.cdecl.} =
  let vtbl = cast[VirtualQBoxLayout](cast[uint](vtbl) - uint(offsetOf(VirtualQBoxLayout, vtbl)))
  var virtualReturn = vtbl.widget()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method spacerItem*(self: VirtualQBoxLayout, ): gen_qlayoutitem_types.QSpacerItem {.base.} =
  QBoxLayoutspacerItem(self[])
proc miqt_exec_method_cQBoxLayout_spacerItem(vtbl: pointer, inst: pointer): pointer {.cdecl.} =
  let vtbl = cast[VirtualQBoxLayout](cast[uint](vtbl) - uint(offsetOf(VirtualQBoxLayout, vtbl)))
  var virtualReturn = vtbl.spacerItem()
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

proc sender*(self: gen_qboxlayout_types.QBoxLayout, ): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQBoxLayout_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qboxlayout_types.QBoxLayout, ): cint =
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
  vtbl[].vtbl.destructor = proc(vtbl: ptr cQBoxLayoutVTable, _: ptr cQBoxLayout) {.cdecl.} =
    let vtbl = cast[ref QBoxLayoutVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQBoxLayout_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQBoxLayout_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQBoxLayout_metacall
  if not isNil(vtbl[].addItem):
    vtbl[].vtbl.addItem = miqt_exec_callback_cQBoxLayout_addItem
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = miqt_exec_callback_cQBoxLayout_sizeHint
  if not isNil(vtbl[].minimumSize):
    vtbl[].vtbl.minimumSize = miqt_exec_callback_cQBoxLayout_minimumSize
  if not isNil(vtbl[].maximumSize):
    vtbl[].vtbl.maximumSize = miqt_exec_callback_cQBoxLayout_maximumSize
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = miqt_exec_callback_cQBoxLayout_hasHeightForWidth
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = miqt_exec_callback_cQBoxLayout_heightForWidth
  if not isNil(vtbl[].minimumHeightForWidth):
    vtbl[].vtbl.minimumHeightForWidth = miqt_exec_callback_cQBoxLayout_minimumHeightForWidth
  if not isNil(vtbl[].expandingDirections):
    vtbl[].vtbl.expandingDirections = miqt_exec_callback_cQBoxLayout_expandingDirections
  if not isNil(vtbl[].invalidate):
    vtbl[].vtbl.invalidate = miqt_exec_callback_cQBoxLayout_invalidate
  if not isNil(vtbl[].itemAt):
    vtbl[].vtbl.itemAt = miqt_exec_callback_cQBoxLayout_itemAt
  if not isNil(vtbl[].takeAt):
    vtbl[].vtbl.takeAt = miqt_exec_callback_cQBoxLayout_takeAt
  if not isNil(vtbl[].count):
    vtbl[].vtbl.count = miqt_exec_callback_cQBoxLayout_count
  if not isNil(vtbl[].setGeometry):
    vtbl[].vtbl.setGeometry = miqt_exec_callback_cQBoxLayout_setGeometry
  if not isNil(vtbl[].geometry):
    vtbl[].vtbl.geometry = miqt_exec_callback_cQBoxLayout_geometry
  if not isNil(vtbl[].indexOf):
    vtbl[].vtbl.indexOf = miqt_exec_callback_cQBoxLayout_indexOf
  if not isNil(vtbl[].isEmpty):
    vtbl[].vtbl.isEmpty = miqt_exec_callback_cQBoxLayout_isEmpty
  if not isNil(vtbl[].controlTypes):
    vtbl[].vtbl.controlTypes = miqt_exec_callback_cQBoxLayout_controlTypes
  if not isNil(vtbl[].layout):
    vtbl[].vtbl.layout = miqt_exec_callback_cQBoxLayout_layout
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQBoxLayout_childEvent
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = miqt_exec_callback_cQBoxLayout_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQBoxLayout_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQBoxLayout_timerEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQBoxLayout_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQBoxLayout_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQBoxLayout_disconnectNotify
  if not isNil(vtbl[].widget):
    vtbl[].vtbl.widget = miqt_exec_callback_cQBoxLayout_widget
  if not isNil(vtbl[].spacerItem):
    vtbl[].vtbl.spacerItem = miqt_exec_callback_cQBoxLayout_spacerItem
  gen_qboxlayout_types.QBoxLayout(h: fcQBoxLayout_new(addr(vtbl[].vtbl), cint(param1)), owned: true)

proc create*(T: type gen_qboxlayout_types.QBoxLayout,
    param1: cint, parent: gen_qwidget_types.QWidget,
    vtbl: ref QBoxLayoutVTable = nil): gen_qboxlayout_types.QBoxLayout =
  let vtbl = if vtbl == nil: new QBoxLayoutVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(vtbl: ptr cQBoxLayoutVTable, _: ptr cQBoxLayout) {.cdecl.} =
    let vtbl = cast[ref QBoxLayoutVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQBoxLayout_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQBoxLayout_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQBoxLayout_metacall
  if not isNil(vtbl[].addItem):
    vtbl[].vtbl.addItem = miqt_exec_callback_cQBoxLayout_addItem
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = miqt_exec_callback_cQBoxLayout_sizeHint
  if not isNil(vtbl[].minimumSize):
    vtbl[].vtbl.minimumSize = miqt_exec_callback_cQBoxLayout_minimumSize
  if not isNil(vtbl[].maximumSize):
    vtbl[].vtbl.maximumSize = miqt_exec_callback_cQBoxLayout_maximumSize
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = miqt_exec_callback_cQBoxLayout_hasHeightForWidth
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = miqt_exec_callback_cQBoxLayout_heightForWidth
  if not isNil(vtbl[].minimumHeightForWidth):
    vtbl[].vtbl.minimumHeightForWidth = miqt_exec_callback_cQBoxLayout_minimumHeightForWidth
  if not isNil(vtbl[].expandingDirections):
    vtbl[].vtbl.expandingDirections = miqt_exec_callback_cQBoxLayout_expandingDirections
  if not isNil(vtbl[].invalidate):
    vtbl[].vtbl.invalidate = miqt_exec_callback_cQBoxLayout_invalidate
  if not isNil(vtbl[].itemAt):
    vtbl[].vtbl.itemAt = miqt_exec_callback_cQBoxLayout_itemAt
  if not isNil(vtbl[].takeAt):
    vtbl[].vtbl.takeAt = miqt_exec_callback_cQBoxLayout_takeAt
  if not isNil(vtbl[].count):
    vtbl[].vtbl.count = miqt_exec_callback_cQBoxLayout_count
  if not isNil(vtbl[].setGeometry):
    vtbl[].vtbl.setGeometry = miqt_exec_callback_cQBoxLayout_setGeometry
  if not isNil(vtbl[].geometry):
    vtbl[].vtbl.geometry = miqt_exec_callback_cQBoxLayout_geometry
  if not isNil(vtbl[].indexOf):
    vtbl[].vtbl.indexOf = miqt_exec_callback_cQBoxLayout_indexOf
  if not isNil(vtbl[].isEmpty):
    vtbl[].vtbl.isEmpty = miqt_exec_callback_cQBoxLayout_isEmpty
  if not isNil(vtbl[].controlTypes):
    vtbl[].vtbl.controlTypes = miqt_exec_callback_cQBoxLayout_controlTypes
  if not isNil(vtbl[].layout):
    vtbl[].vtbl.layout = miqt_exec_callback_cQBoxLayout_layout
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQBoxLayout_childEvent
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = miqt_exec_callback_cQBoxLayout_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQBoxLayout_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQBoxLayout_timerEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQBoxLayout_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQBoxLayout_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQBoxLayout_disconnectNotify
  if not isNil(vtbl[].widget):
    vtbl[].vtbl.widget = miqt_exec_callback_cQBoxLayout_widget
  if not isNil(vtbl[].spacerItem):
    vtbl[].vtbl.spacerItem = miqt_exec_callback_cQBoxLayout_spacerItem
  gen_qboxlayout_types.QBoxLayout(h: fcQBoxLayout_new2(addr(vtbl[].vtbl), cint(param1), parent.h), owned: true)

proc create*(T: type gen_qboxlayout_types.QBoxLayout,
    param1: cint,
    vtbl: VirtualQBoxLayout) =

  vtbl[].vtbl.destructor = proc(vtbl: ptr cQBoxLayoutVTable, _: ptr cQBoxLayout) {.cdecl.} =
    let vtbl = cast[ptr typeof(VirtualQBoxLayout()[])](cast[uint](vtbl) - uint(offsetOf(VirtualQBoxLayout, vtbl)))
    vtbl[].h = nil
    vtbl[].owned = false
  vtbl[].vtbl.metaObject = miqt_exec_method_cQBoxLayout_metaObject
  vtbl[].vtbl.metacast = miqt_exec_method_cQBoxLayout_metacast
  vtbl[].vtbl.metacall = miqt_exec_method_cQBoxLayout_metacall
  vtbl[].vtbl.addItem = miqt_exec_method_cQBoxLayout_addItem
  vtbl[].vtbl.sizeHint = miqt_exec_method_cQBoxLayout_sizeHint
  vtbl[].vtbl.minimumSize = miqt_exec_method_cQBoxLayout_minimumSize
  vtbl[].vtbl.maximumSize = miqt_exec_method_cQBoxLayout_maximumSize
  vtbl[].vtbl.hasHeightForWidth = miqt_exec_method_cQBoxLayout_hasHeightForWidth
  vtbl[].vtbl.heightForWidth = miqt_exec_method_cQBoxLayout_heightForWidth
  vtbl[].vtbl.minimumHeightForWidth = miqt_exec_method_cQBoxLayout_minimumHeightForWidth
  vtbl[].vtbl.expandingDirections = miqt_exec_method_cQBoxLayout_expandingDirections
  vtbl[].vtbl.invalidate = miqt_exec_method_cQBoxLayout_invalidate
  vtbl[].vtbl.itemAt = miqt_exec_method_cQBoxLayout_itemAt
  vtbl[].vtbl.takeAt = miqt_exec_method_cQBoxLayout_takeAt
  vtbl[].vtbl.count = miqt_exec_method_cQBoxLayout_count
  vtbl[].vtbl.setGeometry = miqt_exec_method_cQBoxLayout_setGeometry
  vtbl[].vtbl.geometry = miqt_exec_method_cQBoxLayout_geometry
  vtbl[].vtbl.indexOf = miqt_exec_method_cQBoxLayout_indexOf
  vtbl[].vtbl.isEmpty = miqt_exec_method_cQBoxLayout_isEmpty
  vtbl[].vtbl.controlTypes = miqt_exec_method_cQBoxLayout_controlTypes
  vtbl[].vtbl.layout = miqt_exec_method_cQBoxLayout_layout
  vtbl[].vtbl.childEvent = miqt_exec_method_cQBoxLayout_childEvent
  vtbl[].vtbl.event = miqt_exec_method_cQBoxLayout_event
  vtbl[].vtbl.eventFilter = miqt_exec_method_cQBoxLayout_eventFilter
  vtbl[].vtbl.timerEvent = miqt_exec_method_cQBoxLayout_timerEvent
  vtbl[].vtbl.customEvent = miqt_exec_method_cQBoxLayout_customEvent
  vtbl[].vtbl.connectNotify = miqt_exec_method_cQBoxLayout_connectNotify
  vtbl[].vtbl.disconnectNotify = miqt_exec_method_cQBoxLayout_disconnectNotify
  vtbl[].vtbl.widget = miqt_exec_method_cQBoxLayout_widget
  vtbl[].vtbl.spacerItem = miqt_exec_method_cQBoxLayout_spacerItem
  if vtbl[].h != nil: delete(move(vtbl[]))
  vtbl[].h = fcQBoxLayout_new(addr(vtbl[].vtbl), cint(param1))
  vtbl[].owned = true

proc create*(T: type gen_qboxlayout_types.QBoxLayout,
    param1: cint, parent: gen_qwidget_types.QWidget,
    vtbl: VirtualQBoxLayout) =

  vtbl[].vtbl.destructor = proc(vtbl: ptr cQBoxLayoutVTable, _: ptr cQBoxLayout) {.cdecl.} =
    let vtbl = cast[ptr typeof(VirtualQBoxLayout()[])](cast[uint](vtbl) - uint(offsetOf(VirtualQBoxLayout, vtbl)))
    vtbl[].h = nil
    vtbl[].owned = false
  vtbl[].vtbl.metaObject = miqt_exec_method_cQBoxLayout_metaObject
  vtbl[].vtbl.metacast = miqt_exec_method_cQBoxLayout_metacast
  vtbl[].vtbl.metacall = miqt_exec_method_cQBoxLayout_metacall
  vtbl[].vtbl.addItem = miqt_exec_method_cQBoxLayout_addItem
  vtbl[].vtbl.sizeHint = miqt_exec_method_cQBoxLayout_sizeHint
  vtbl[].vtbl.minimumSize = miqt_exec_method_cQBoxLayout_minimumSize
  vtbl[].vtbl.maximumSize = miqt_exec_method_cQBoxLayout_maximumSize
  vtbl[].vtbl.hasHeightForWidth = miqt_exec_method_cQBoxLayout_hasHeightForWidth
  vtbl[].vtbl.heightForWidth = miqt_exec_method_cQBoxLayout_heightForWidth
  vtbl[].vtbl.minimumHeightForWidth = miqt_exec_method_cQBoxLayout_minimumHeightForWidth
  vtbl[].vtbl.expandingDirections = miqt_exec_method_cQBoxLayout_expandingDirections
  vtbl[].vtbl.invalidate = miqt_exec_method_cQBoxLayout_invalidate
  vtbl[].vtbl.itemAt = miqt_exec_method_cQBoxLayout_itemAt
  vtbl[].vtbl.takeAt = miqt_exec_method_cQBoxLayout_takeAt
  vtbl[].vtbl.count = miqt_exec_method_cQBoxLayout_count
  vtbl[].vtbl.setGeometry = miqt_exec_method_cQBoxLayout_setGeometry
  vtbl[].vtbl.geometry = miqt_exec_method_cQBoxLayout_geometry
  vtbl[].vtbl.indexOf = miqt_exec_method_cQBoxLayout_indexOf
  vtbl[].vtbl.isEmpty = miqt_exec_method_cQBoxLayout_isEmpty
  vtbl[].vtbl.controlTypes = miqt_exec_method_cQBoxLayout_controlTypes
  vtbl[].vtbl.layout = miqt_exec_method_cQBoxLayout_layout
  vtbl[].vtbl.childEvent = miqt_exec_method_cQBoxLayout_childEvent
  vtbl[].vtbl.event = miqt_exec_method_cQBoxLayout_event
  vtbl[].vtbl.eventFilter = miqt_exec_method_cQBoxLayout_eventFilter
  vtbl[].vtbl.timerEvent = miqt_exec_method_cQBoxLayout_timerEvent
  vtbl[].vtbl.customEvent = miqt_exec_method_cQBoxLayout_customEvent
  vtbl[].vtbl.connectNotify = miqt_exec_method_cQBoxLayout_connectNotify
  vtbl[].vtbl.disconnectNotify = miqt_exec_method_cQBoxLayout_disconnectNotify
  vtbl[].vtbl.widget = miqt_exec_method_cQBoxLayout_widget
  vtbl[].vtbl.spacerItem = miqt_exec_method_cQBoxLayout_spacerItem
  if vtbl[].h != nil: delete(move(vtbl[]))
  vtbl[].h = fcQBoxLayout_new2(addr(vtbl[].vtbl), cint(param1), parent.h)
  vtbl[].owned = true

proc staticMetaObject*(_: type gen_qboxlayout_types.QBoxLayout): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQBoxLayout_staticMetaObject())
proc metaObject*(self: gen_qboxlayout_types.QHBoxLayout, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQHBoxLayout_metaObject(self.h), owned: false)

proc metacast*(self: gen_qboxlayout_types.QHBoxLayout, param1: cstring): pointer =
  fcQHBoxLayout_metacast(self.h, param1)

proc metacall*(self: gen_qboxlayout_types.QHBoxLayout, param1: cint, param2: cint, param3: pointer): cint =
  fcQHBoxLayout_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qboxlayout_types.QHBoxLayout, s: cstring): string =
  let v_ms = fcQHBoxLayout_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qboxlayout_types.QHBoxLayout, s: cstring): string =
  let v_ms = fcQHBoxLayout_trUtf8(s)
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

proc trUtf8*(_: type gen_qboxlayout_types.QHBoxLayout, s: cstring, c: cstring): string =
  let v_ms = fcQHBoxLayout_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qboxlayout_types.QHBoxLayout, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQHBoxLayout_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

type QHBoxLayoutmetaObjectProc* = proc(self: QHBoxLayout): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QHBoxLayoutmetacastProc* = proc(self: QHBoxLayout, param1: cstring): pointer {.raises: [], gcsafe.}
type QHBoxLayoutmetacallProc* = proc(self: QHBoxLayout, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QHBoxLayoutaddItemProc* = proc(self: QHBoxLayout, param1: gen_qlayoutitem_types.QLayoutItem): void {.raises: [], gcsafe.}
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
  gen_qobjectdefs_types.QMetaObject(h: fcQHBoxLayout_virtualbase_metaObject(self.h), owned: false)

proc miqt_exec_callback_cQHBoxLayout_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QHBoxLayoutVTable](vtbl)
  let self = QHBoxLayout(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

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
  let slotval1 = gen_qlayoutitem_types.QLayoutItem(h: param1, owned: false)
  vtbl[].addItem(self, slotval1)

proc QHBoxLayoutsizeHint*(self: gen_qboxlayout_types.QHBoxLayout, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQHBoxLayout_virtualbase_sizeHint(self.h), owned: true)

proc miqt_exec_callback_cQHBoxLayout_sizeHint(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QHBoxLayoutVTable](vtbl)
  let self = QHBoxLayout(h: self)
  var virtualReturn = vtbl[].sizeHint(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QHBoxLayoutminimumSize*(self: gen_qboxlayout_types.QHBoxLayout, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQHBoxLayout_virtualbase_minimumSize(self.h), owned: true)

proc miqt_exec_callback_cQHBoxLayout_minimumSize(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QHBoxLayoutVTable](vtbl)
  let self = QHBoxLayout(h: self)
  var virtualReturn = vtbl[].minimumSize(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QHBoxLayoutmaximumSize*(self: gen_qboxlayout_types.QHBoxLayout, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQHBoxLayout_virtualbase_maximumSize(self.h), owned: true)

proc miqt_exec_callback_cQHBoxLayout_maximumSize(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QHBoxLayoutVTable](vtbl)
  let self = QHBoxLayout(h: self)
  var virtualReturn = vtbl[].maximumSize(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

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
  gen_qlayoutitem_types.QLayoutItem(h: fcQHBoxLayout_virtualbase_itemAt(self.h, param1), owned: false)

proc miqt_exec_callback_cQHBoxLayout_itemAt(vtbl: pointer, self: pointer, param1: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QHBoxLayoutVTable](vtbl)
  let self = QHBoxLayout(h: self)
  let slotval1 = param1
  var virtualReturn = vtbl[].itemAt(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QHBoxLayouttakeAt*(self: gen_qboxlayout_types.QHBoxLayout, param1: cint): gen_qlayoutitem_types.QLayoutItem =
  gen_qlayoutitem_types.QLayoutItem(h: fcQHBoxLayout_virtualbase_takeAt(self.h, param1), owned: false)

proc miqt_exec_callback_cQHBoxLayout_takeAt(vtbl: pointer, self: pointer, param1: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QHBoxLayoutVTable](vtbl)
  let self = QHBoxLayout(h: self)
  let slotval1 = param1
  var virtualReturn = vtbl[].takeAt(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

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
  let slotval1 = gen_qrect_types.QRect(h: geometry, owned: false)
  vtbl[].setGeometry(self, slotval1)

proc QHBoxLayoutgeometry*(self: gen_qboxlayout_types.QHBoxLayout, ): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fcQHBoxLayout_virtualbase_geometry(self.h), owned: true)

proc miqt_exec_callback_cQHBoxLayout_geometry(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QHBoxLayoutVTable](vtbl)
  let self = QHBoxLayout(h: self)
  var virtualReturn = vtbl[].geometry(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QHBoxLayoutindexOf*(self: gen_qboxlayout_types.QHBoxLayout, param1: gen_qwidget_types.QWidget): cint =
  fcQHBoxLayout_virtualbase_indexOf(self.h, param1.h)

proc miqt_exec_callback_cQHBoxLayout_indexOf(vtbl: pointer, self: pointer, param1: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QHBoxLayoutVTable](vtbl)
  let self = QHBoxLayout(h: self)
  let slotval1 = gen_qwidget_types.QWidget(h: param1, owned: false)
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

proc QHBoxLayoutlayout*(self: gen_qboxlayout_types.QHBoxLayout, ): gen_qlayout_types.QLayout =
  gen_qlayout_types.QLayout(h: fcQHBoxLayout_virtualbase_layout(self.h), owned: false)

proc miqt_exec_callback_cQHBoxLayout_layout(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QHBoxLayoutVTable](vtbl)
  let self = QHBoxLayout(h: self)
  var virtualReturn = vtbl[].layout(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QHBoxLayoutchildEvent*(self: gen_qboxlayout_types.QHBoxLayout, e: gen_qcoreevent_types.QChildEvent): void =
  fcQHBoxLayout_virtualbase_childEvent(self.h, e.h)

proc miqt_exec_callback_cQHBoxLayout_childEvent(vtbl: pointer, self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QHBoxLayoutVTable](vtbl)
  let self = QHBoxLayout(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: e, owned: false)
  vtbl[].childEvent(self, slotval1)

proc QHBoxLayoutevent*(self: gen_qboxlayout_types.QHBoxLayout, event: gen_qcoreevent_types.QEvent): bool =
  fcQHBoxLayout_virtualbase_event(self.h, event.h)

proc miqt_exec_callback_cQHBoxLayout_event(vtbl: pointer, self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QHBoxLayoutVTable](vtbl)
  let self = QHBoxLayout(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QHBoxLayouteventFilter*(self: gen_qboxlayout_types.QHBoxLayout, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQHBoxLayout_virtualbase_eventFilter(self.h, watched.h, event.h)

proc miqt_exec_callback_cQHBoxLayout_eventFilter(vtbl: pointer, self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QHBoxLayoutVTable](vtbl)
  let self = QHBoxLayout(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QHBoxLayouttimerEvent*(self: gen_qboxlayout_types.QHBoxLayout, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQHBoxLayout_virtualbase_timerEvent(self.h, event.h)

proc miqt_exec_callback_cQHBoxLayout_timerEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QHBoxLayoutVTable](vtbl)
  let self = QHBoxLayout(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc QHBoxLayoutcustomEvent*(self: gen_qboxlayout_types.QHBoxLayout, event: gen_qcoreevent_types.QEvent): void =
  fcQHBoxLayout_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQHBoxLayout_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QHBoxLayoutVTable](vtbl)
  let self = QHBoxLayout(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc QHBoxLayoutconnectNotify*(self: gen_qboxlayout_types.QHBoxLayout, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQHBoxLayout_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQHBoxLayout_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QHBoxLayoutVTable](vtbl)
  let self = QHBoxLayout(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc QHBoxLayoutdisconnectNotify*(self: gen_qboxlayout_types.QHBoxLayout, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQHBoxLayout_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQHBoxLayout_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QHBoxLayoutVTable](vtbl)
  let self = QHBoxLayout(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

proc QHBoxLayoutwidget*(self: gen_qboxlayout_types.QHBoxLayout, ): gen_qwidget_types.QWidget =
  gen_qwidget_types.QWidget(h: fcQHBoxLayout_virtualbase_widget(self.h), owned: false)

proc miqt_exec_callback_cQHBoxLayout_widget(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QHBoxLayoutVTable](vtbl)
  let self = QHBoxLayout(h: self)
  var virtualReturn = vtbl[].widget(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QHBoxLayoutspacerItem*(self: gen_qboxlayout_types.QHBoxLayout, ): gen_qlayoutitem_types.QSpacerItem =
  gen_qlayoutitem_types.QSpacerItem(h: fcQHBoxLayout_virtualbase_spacerItem(self.h), owned: false)

proc miqt_exec_callback_cQHBoxLayout_spacerItem(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QHBoxLayoutVTable](vtbl)
  let self = QHBoxLayout(h: self)
  var virtualReturn = vtbl[].spacerItem(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

type VirtualQHBoxLayout* {.inheritable.} = ref object of QHBoxLayout
  vtbl*: cQHBoxLayoutVTable
method metaObject*(self: VirtualQHBoxLayout, ): gen_qobjectdefs_types.QMetaObject {.base.} =
  QHBoxLayoutmetaObject(self[])
proc miqt_exec_method_cQHBoxLayout_metaObject(vtbl: pointer, inst: pointer): pointer {.cdecl.} =
  let vtbl = cast[VirtualQHBoxLayout](cast[uint](vtbl) - uint(offsetOf(VirtualQHBoxLayout, vtbl)))
  var virtualReturn = vtbl.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method metacast*(self: VirtualQHBoxLayout, param1: cstring): pointer {.base.} =
  QHBoxLayoutmetacast(self[], param1)
proc miqt_exec_method_cQHBoxLayout_metacast(vtbl: pointer, inst: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[VirtualQHBoxLayout](cast[uint](vtbl) - uint(offsetOf(VirtualQHBoxLayout, vtbl)))
  let slotval1 = (param1)
  var virtualReturn = vtbl.metacast(slotval1)
  virtualReturn

method metacall*(self: VirtualQHBoxLayout, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QHBoxLayoutmetacall(self[], param1, param2, param3)
proc miqt_exec_method_cQHBoxLayout_metacall(vtbl: pointer, inst: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[VirtualQHBoxLayout](cast[uint](vtbl) - uint(offsetOf(VirtualQHBoxLayout, vtbl)))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl.metacall(slotval1, slotval2, slotval3)
  virtualReturn

method addItem*(self: VirtualQHBoxLayout, param1: gen_qlayoutitem_types.QLayoutItem): void {.base.} =
  QHBoxLayoutaddItem(self[], param1)
proc miqt_exec_method_cQHBoxLayout_addItem(vtbl: pointer, inst: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQHBoxLayout](cast[uint](vtbl) - uint(offsetOf(VirtualQHBoxLayout, vtbl)))
  let slotval1 = gen_qlayoutitem_types.QLayoutItem(h: param1, owned: false)
  vtbl.addItem(slotval1)

method sizeHint*(self: VirtualQHBoxLayout, ): gen_qsize_types.QSize {.base.} =
  QHBoxLayoutsizeHint(self[])
proc miqt_exec_method_cQHBoxLayout_sizeHint(vtbl: pointer, inst: pointer): pointer {.cdecl.} =
  let vtbl = cast[VirtualQHBoxLayout](cast[uint](vtbl) - uint(offsetOf(VirtualQHBoxLayout, vtbl)))
  var virtualReturn = vtbl.sizeHint()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method minimumSize*(self: VirtualQHBoxLayout, ): gen_qsize_types.QSize {.base.} =
  QHBoxLayoutminimumSize(self[])
proc miqt_exec_method_cQHBoxLayout_minimumSize(vtbl: pointer, inst: pointer): pointer {.cdecl.} =
  let vtbl = cast[VirtualQHBoxLayout](cast[uint](vtbl) - uint(offsetOf(VirtualQHBoxLayout, vtbl)))
  var virtualReturn = vtbl.minimumSize()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method maximumSize*(self: VirtualQHBoxLayout, ): gen_qsize_types.QSize {.base.} =
  QHBoxLayoutmaximumSize(self[])
proc miqt_exec_method_cQHBoxLayout_maximumSize(vtbl: pointer, inst: pointer): pointer {.cdecl.} =
  let vtbl = cast[VirtualQHBoxLayout](cast[uint](vtbl) - uint(offsetOf(VirtualQHBoxLayout, vtbl)))
  var virtualReturn = vtbl.maximumSize()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method hasHeightForWidth*(self: VirtualQHBoxLayout, ): bool {.base.} =
  QHBoxLayouthasHeightForWidth(self[])
proc miqt_exec_method_cQHBoxLayout_hasHeightForWidth(vtbl: pointer, inst: pointer): bool {.cdecl.} =
  let vtbl = cast[VirtualQHBoxLayout](cast[uint](vtbl) - uint(offsetOf(VirtualQHBoxLayout, vtbl)))
  var virtualReturn = vtbl.hasHeightForWidth()
  virtualReturn

method heightForWidth*(self: VirtualQHBoxLayout, param1: cint): cint {.base.} =
  QHBoxLayoutheightForWidth(self[], param1)
proc miqt_exec_method_cQHBoxLayout_heightForWidth(vtbl: pointer, inst: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[VirtualQHBoxLayout](cast[uint](vtbl) - uint(offsetOf(VirtualQHBoxLayout, vtbl)))
  let slotval1 = param1
  var virtualReturn = vtbl.heightForWidth(slotval1)
  virtualReturn

method minimumHeightForWidth*(self: VirtualQHBoxLayout, param1: cint): cint {.base.} =
  QHBoxLayoutminimumHeightForWidth(self[], param1)
proc miqt_exec_method_cQHBoxLayout_minimumHeightForWidth(vtbl: pointer, inst: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[VirtualQHBoxLayout](cast[uint](vtbl) - uint(offsetOf(VirtualQHBoxLayout, vtbl)))
  let slotval1 = param1
  var virtualReturn = vtbl.minimumHeightForWidth(slotval1)
  virtualReturn

method expandingDirections*(self: VirtualQHBoxLayout, ): cint {.base.} =
  QHBoxLayoutexpandingDirections(self[])
proc miqt_exec_method_cQHBoxLayout_expandingDirections(vtbl: pointer, inst: pointer): cint {.cdecl.} =
  let vtbl = cast[VirtualQHBoxLayout](cast[uint](vtbl) - uint(offsetOf(VirtualQHBoxLayout, vtbl)))
  var virtualReturn = vtbl.expandingDirections()
  cint(virtualReturn)

method invalidate*(self: VirtualQHBoxLayout, ): void {.base.} =
  QHBoxLayoutinvalidate(self[])
proc miqt_exec_method_cQHBoxLayout_invalidate(vtbl: pointer, inst: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQHBoxLayout](cast[uint](vtbl) - uint(offsetOf(VirtualQHBoxLayout, vtbl)))
  vtbl.invalidate()

method itemAt*(self: VirtualQHBoxLayout, param1: cint): gen_qlayoutitem_types.QLayoutItem {.base.} =
  QHBoxLayoutitemAt(self[], param1)
proc miqt_exec_method_cQHBoxLayout_itemAt(vtbl: pointer, inst: pointer, param1: cint): pointer {.cdecl.} =
  let vtbl = cast[VirtualQHBoxLayout](cast[uint](vtbl) - uint(offsetOf(VirtualQHBoxLayout, vtbl)))
  let slotval1 = param1
  var virtualReturn = vtbl.itemAt(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method takeAt*(self: VirtualQHBoxLayout, param1: cint): gen_qlayoutitem_types.QLayoutItem {.base.} =
  QHBoxLayouttakeAt(self[], param1)
proc miqt_exec_method_cQHBoxLayout_takeAt(vtbl: pointer, inst: pointer, param1: cint): pointer {.cdecl.} =
  let vtbl = cast[VirtualQHBoxLayout](cast[uint](vtbl) - uint(offsetOf(VirtualQHBoxLayout, vtbl)))
  let slotval1 = param1
  var virtualReturn = vtbl.takeAt(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method count*(self: VirtualQHBoxLayout, ): cint {.base.} =
  QHBoxLayoutcount(self[])
proc miqt_exec_method_cQHBoxLayout_count(vtbl: pointer, inst: pointer): cint {.cdecl.} =
  let vtbl = cast[VirtualQHBoxLayout](cast[uint](vtbl) - uint(offsetOf(VirtualQHBoxLayout, vtbl)))
  var virtualReturn = vtbl.count()
  virtualReturn

method setGeometry*(self: VirtualQHBoxLayout, geometry: gen_qrect_types.QRect): void {.base.} =
  QHBoxLayoutsetGeometry(self[], geometry)
proc miqt_exec_method_cQHBoxLayout_setGeometry(vtbl: pointer, inst: pointer, geometry: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQHBoxLayout](cast[uint](vtbl) - uint(offsetOf(VirtualQHBoxLayout, vtbl)))
  let slotval1 = gen_qrect_types.QRect(h: geometry, owned: false)
  vtbl.setGeometry(slotval1)

method geometry*(self: VirtualQHBoxLayout, ): gen_qrect_types.QRect {.base.} =
  QHBoxLayoutgeometry(self[])
proc miqt_exec_method_cQHBoxLayout_geometry(vtbl: pointer, inst: pointer): pointer {.cdecl.} =
  let vtbl = cast[VirtualQHBoxLayout](cast[uint](vtbl) - uint(offsetOf(VirtualQHBoxLayout, vtbl)))
  var virtualReturn = vtbl.geometry()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method indexOf*(self: VirtualQHBoxLayout, param1: gen_qwidget_types.QWidget): cint {.base.} =
  QHBoxLayoutindexOf(self[], param1)
proc miqt_exec_method_cQHBoxLayout_indexOf(vtbl: pointer, inst: pointer, param1: pointer): cint {.cdecl.} =
  let vtbl = cast[VirtualQHBoxLayout](cast[uint](vtbl) - uint(offsetOf(VirtualQHBoxLayout, vtbl)))
  let slotval1 = gen_qwidget_types.QWidget(h: param1, owned: false)
  var virtualReturn = vtbl.indexOf(slotval1)
  virtualReturn

method isEmpty*(self: VirtualQHBoxLayout, ): bool {.base.} =
  QHBoxLayoutisEmpty(self[])
proc miqt_exec_method_cQHBoxLayout_isEmpty(vtbl: pointer, inst: pointer): bool {.cdecl.} =
  let vtbl = cast[VirtualQHBoxLayout](cast[uint](vtbl) - uint(offsetOf(VirtualQHBoxLayout, vtbl)))
  var virtualReturn = vtbl.isEmpty()
  virtualReturn

method controlTypes*(self: VirtualQHBoxLayout, ): cint {.base.} =
  QHBoxLayoutcontrolTypes(self[])
proc miqt_exec_method_cQHBoxLayout_controlTypes(vtbl: pointer, inst: pointer): cint {.cdecl.} =
  let vtbl = cast[VirtualQHBoxLayout](cast[uint](vtbl) - uint(offsetOf(VirtualQHBoxLayout, vtbl)))
  var virtualReturn = vtbl.controlTypes()
  cint(virtualReturn)

method layout*(self: VirtualQHBoxLayout, ): gen_qlayout_types.QLayout {.base.} =
  QHBoxLayoutlayout(self[])
proc miqt_exec_method_cQHBoxLayout_layout(vtbl: pointer, inst: pointer): pointer {.cdecl.} =
  let vtbl = cast[VirtualQHBoxLayout](cast[uint](vtbl) - uint(offsetOf(VirtualQHBoxLayout, vtbl)))
  var virtualReturn = vtbl.layout()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method childEvent*(self: VirtualQHBoxLayout, e: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QHBoxLayoutchildEvent(self[], e)
proc miqt_exec_method_cQHBoxLayout_childEvent(vtbl: pointer, inst: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQHBoxLayout](cast[uint](vtbl) - uint(offsetOf(VirtualQHBoxLayout, vtbl)))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: e, owned: false)
  vtbl.childEvent(slotval1)

method event*(self: VirtualQHBoxLayout, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QHBoxLayoutevent(self[], event)
proc miqt_exec_method_cQHBoxLayout_event(vtbl: pointer, inst: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[VirtualQHBoxLayout](cast[uint](vtbl) - uint(offsetOf(VirtualQHBoxLayout, vtbl)))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl.event(slotval1)
  virtualReturn

method eventFilter*(self: VirtualQHBoxLayout, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QHBoxLayouteventFilter(self[], watched, event)
proc miqt_exec_method_cQHBoxLayout_eventFilter(vtbl: pointer, inst: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[VirtualQHBoxLayout](cast[uint](vtbl) - uint(offsetOf(VirtualQHBoxLayout, vtbl)))
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl.eventFilter(slotval1, slotval2)
  virtualReturn

method timerEvent*(self: VirtualQHBoxLayout, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QHBoxLayouttimerEvent(self[], event)
proc miqt_exec_method_cQHBoxLayout_timerEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQHBoxLayout](cast[uint](vtbl) - uint(offsetOf(VirtualQHBoxLayout, vtbl)))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl.timerEvent(slotval1)

method customEvent*(self: VirtualQHBoxLayout, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QHBoxLayoutcustomEvent(self[], event)
proc miqt_exec_method_cQHBoxLayout_customEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQHBoxLayout](cast[uint](vtbl) - uint(offsetOf(VirtualQHBoxLayout, vtbl)))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl.customEvent(slotval1)

method connectNotify*(self: VirtualQHBoxLayout, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QHBoxLayoutconnectNotify(self[], signal)
proc miqt_exec_method_cQHBoxLayout_connectNotify(vtbl: pointer, inst: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQHBoxLayout](cast[uint](vtbl) - uint(offsetOf(VirtualQHBoxLayout, vtbl)))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl.connectNotify(slotval1)

method disconnectNotify*(self: VirtualQHBoxLayout, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QHBoxLayoutdisconnectNotify(self[], signal)
proc miqt_exec_method_cQHBoxLayout_disconnectNotify(vtbl: pointer, inst: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQHBoxLayout](cast[uint](vtbl) - uint(offsetOf(VirtualQHBoxLayout, vtbl)))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl.disconnectNotify(slotval1)

method widget*(self: VirtualQHBoxLayout, ): gen_qwidget_types.QWidget {.base.} =
  QHBoxLayoutwidget(self[])
proc miqt_exec_method_cQHBoxLayout_widget(vtbl: pointer, inst: pointer): pointer {.cdecl.} =
  let vtbl = cast[VirtualQHBoxLayout](cast[uint](vtbl) - uint(offsetOf(VirtualQHBoxLayout, vtbl)))
  var virtualReturn = vtbl.widget()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method spacerItem*(self: VirtualQHBoxLayout, ): gen_qlayoutitem_types.QSpacerItem {.base.} =
  QHBoxLayoutspacerItem(self[])
proc miqt_exec_method_cQHBoxLayout_spacerItem(vtbl: pointer, inst: pointer): pointer {.cdecl.} =
  let vtbl = cast[VirtualQHBoxLayout](cast[uint](vtbl) - uint(offsetOf(VirtualQHBoxLayout, vtbl)))
  var virtualReturn = vtbl.spacerItem()
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

proc sender*(self: gen_qboxlayout_types.QHBoxLayout, ): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQHBoxLayout_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qboxlayout_types.QHBoxLayout, ): cint =
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
  vtbl[].vtbl.destructor = proc(vtbl: ptr cQHBoxLayoutVTable, _: ptr cQHBoxLayout) {.cdecl.} =
    let vtbl = cast[ref QHBoxLayoutVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQHBoxLayout_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQHBoxLayout_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQHBoxLayout_metacall
  if not isNil(vtbl[].addItem):
    vtbl[].vtbl.addItem = miqt_exec_callback_cQHBoxLayout_addItem
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = miqt_exec_callback_cQHBoxLayout_sizeHint
  if not isNil(vtbl[].minimumSize):
    vtbl[].vtbl.minimumSize = miqt_exec_callback_cQHBoxLayout_minimumSize
  if not isNil(vtbl[].maximumSize):
    vtbl[].vtbl.maximumSize = miqt_exec_callback_cQHBoxLayout_maximumSize
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = miqt_exec_callback_cQHBoxLayout_hasHeightForWidth
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = miqt_exec_callback_cQHBoxLayout_heightForWidth
  if not isNil(vtbl[].minimumHeightForWidth):
    vtbl[].vtbl.minimumHeightForWidth = miqt_exec_callback_cQHBoxLayout_minimumHeightForWidth
  if not isNil(vtbl[].expandingDirections):
    vtbl[].vtbl.expandingDirections = miqt_exec_callback_cQHBoxLayout_expandingDirections
  if not isNil(vtbl[].invalidate):
    vtbl[].vtbl.invalidate = miqt_exec_callback_cQHBoxLayout_invalidate
  if not isNil(vtbl[].itemAt):
    vtbl[].vtbl.itemAt = miqt_exec_callback_cQHBoxLayout_itemAt
  if not isNil(vtbl[].takeAt):
    vtbl[].vtbl.takeAt = miqt_exec_callback_cQHBoxLayout_takeAt
  if not isNil(vtbl[].count):
    vtbl[].vtbl.count = miqt_exec_callback_cQHBoxLayout_count
  if not isNil(vtbl[].setGeometry):
    vtbl[].vtbl.setGeometry = miqt_exec_callback_cQHBoxLayout_setGeometry
  if not isNil(vtbl[].geometry):
    vtbl[].vtbl.geometry = miqt_exec_callback_cQHBoxLayout_geometry
  if not isNil(vtbl[].indexOf):
    vtbl[].vtbl.indexOf = miqt_exec_callback_cQHBoxLayout_indexOf
  if not isNil(vtbl[].isEmpty):
    vtbl[].vtbl.isEmpty = miqt_exec_callback_cQHBoxLayout_isEmpty
  if not isNil(vtbl[].controlTypes):
    vtbl[].vtbl.controlTypes = miqt_exec_callback_cQHBoxLayout_controlTypes
  if not isNil(vtbl[].layout):
    vtbl[].vtbl.layout = miqt_exec_callback_cQHBoxLayout_layout
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQHBoxLayout_childEvent
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = miqt_exec_callback_cQHBoxLayout_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQHBoxLayout_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQHBoxLayout_timerEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQHBoxLayout_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQHBoxLayout_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQHBoxLayout_disconnectNotify
  if not isNil(vtbl[].widget):
    vtbl[].vtbl.widget = miqt_exec_callback_cQHBoxLayout_widget
  if not isNil(vtbl[].spacerItem):
    vtbl[].vtbl.spacerItem = miqt_exec_callback_cQHBoxLayout_spacerItem
  gen_qboxlayout_types.QHBoxLayout(h: fcQHBoxLayout_new(addr(vtbl[].vtbl), parent.h), owned: true)

proc create*(T: type gen_qboxlayout_types.QHBoxLayout,
    vtbl: ref QHBoxLayoutVTable = nil): gen_qboxlayout_types.QHBoxLayout =
  let vtbl = if vtbl == nil: new QHBoxLayoutVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(vtbl: ptr cQHBoxLayoutVTable, _: ptr cQHBoxLayout) {.cdecl.} =
    let vtbl = cast[ref QHBoxLayoutVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQHBoxLayout_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQHBoxLayout_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQHBoxLayout_metacall
  if not isNil(vtbl[].addItem):
    vtbl[].vtbl.addItem = miqt_exec_callback_cQHBoxLayout_addItem
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = miqt_exec_callback_cQHBoxLayout_sizeHint
  if not isNil(vtbl[].minimumSize):
    vtbl[].vtbl.minimumSize = miqt_exec_callback_cQHBoxLayout_minimumSize
  if not isNil(vtbl[].maximumSize):
    vtbl[].vtbl.maximumSize = miqt_exec_callback_cQHBoxLayout_maximumSize
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = miqt_exec_callback_cQHBoxLayout_hasHeightForWidth
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = miqt_exec_callback_cQHBoxLayout_heightForWidth
  if not isNil(vtbl[].minimumHeightForWidth):
    vtbl[].vtbl.minimumHeightForWidth = miqt_exec_callback_cQHBoxLayout_minimumHeightForWidth
  if not isNil(vtbl[].expandingDirections):
    vtbl[].vtbl.expandingDirections = miqt_exec_callback_cQHBoxLayout_expandingDirections
  if not isNil(vtbl[].invalidate):
    vtbl[].vtbl.invalidate = miqt_exec_callback_cQHBoxLayout_invalidate
  if not isNil(vtbl[].itemAt):
    vtbl[].vtbl.itemAt = miqt_exec_callback_cQHBoxLayout_itemAt
  if not isNil(vtbl[].takeAt):
    vtbl[].vtbl.takeAt = miqt_exec_callback_cQHBoxLayout_takeAt
  if not isNil(vtbl[].count):
    vtbl[].vtbl.count = miqt_exec_callback_cQHBoxLayout_count
  if not isNil(vtbl[].setGeometry):
    vtbl[].vtbl.setGeometry = miqt_exec_callback_cQHBoxLayout_setGeometry
  if not isNil(vtbl[].geometry):
    vtbl[].vtbl.geometry = miqt_exec_callback_cQHBoxLayout_geometry
  if not isNil(vtbl[].indexOf):
    vtbl[].vtbl.indexOf = miqt_exec_callback_cQHBoxLayout_indexOf
  if not isNil(vtbl[].isEmpty):
    vtbl[].vtbl.isEmpty = miqt_exec_callback_cQHBoxLayout_isEmpty
  if not isNil(vtbl[].controlTypes):
    vtbl[].vtbl.controlTypes = miqt_exec_callback_cQHBoxLayout_controlTypes
  if not isNil(vtbl[].layout):
    vtbl[].vtbl.layout = miqt_exec_callback_cQHBoxLayout_layout
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQHBoxLayout_childEvent
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = miqt_exec_callback_cQHBoxLayout_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQHBoxLayout_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQHBoxLayout_timerEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQHBoxLayout_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQHBoxLayout_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQHBoxLayout_disconnectNotify
  if not isNil(vtbl[].widget):
    vtbl[].vtbl.widget = miqt_exec_callback_cQHBoxLayout_widget
  if not isNil(vtbl[].spacerItem):
    vtbl[].vtbl.spacerItem = miqt_exec_callback_cQHBoxLayout_spacerItem
  gen_qboxlayout_types.QHBoxLayout(h: fcQHBoxLayout_new2(addr(vtbl[].vtbl), ), owned: true)

proc create*(T: type gen_qboxlayout_types.QHBoxLayout,
    parent: gen_qwidget_types.QWidget,
    vtbl: VirtualQHBoxLayout) =

  vtbl[].vtbl.destructor = proc(vtbl: ptr cQHBoxLayoutVTable, _: ptr cQHBoxLayout) {.cdecl.} =
    let vtbl = cast[ptr typeof(VirtualQHBoxLayout()[])](cast[uint](vtbl) - uint(offsetOf(VirtualQHBoxLayout, vtbl)))
    vtbl[].h = nil
    vtbl[].owned = false
  vtbl[].vtbl.metaObject = miqt_exec_method_cQHBoxLayout_metaObject
  vtbl[].vtbl.metacast = miqt_exec_method_cQHBoxLayout_metacast
  vtbl[].vtbl.metacall = miqt_exec_method_cQHBoxLayout_metacall
  vtbl[].vtbl.addItem = miqt_exec_method_cQHBoxLayout_addItem
  vtbl[].vtbl.sizeHint = miqt_exec_method_cQHBoxLayout_sizeHint
  vtbl[].vtbl.minimumSize = miqt_exec_method_cQHBoxLayout_minimumSize
  vtbl[].vtbl.maximumSize = miqt_exec_method_cQHBoxLayout_maximumSize
  vtbl[].vtbl.hasHeightForWidth = miqt_exec_method_cQHBoxLayout_hasHeightForWidth
  vtbl[].vtbl.heightForWidth = miqt_exec_method_cQHBoxLayout_heightForWidth
  vtbl[].vtbl.minimumHeightForWidth = miqt_exec_method_cQHBoxLayout_minimumHeightForWidth
  vtbl[].vtbl.expandingDirections = miqt_exec_method_cQHBoxLayout_expandingDirections
  vtbl[].vtbl.invalidate = miqt_exec_method_cQHBoxLayout_invalidate
  vtbl[].vtbl.itemAt = miqt_exec_method_cQHBoxLayout_itemAt
  vtbl[].vtbl.takeAt = miqt_exec_method_cQHBoxLayout_takeAt
  vtbl[].vtbl.count = miqt_exec_method_cQHBoxLayout_count
  vtbl[].vtbl.setGeometry = miqt_exec_method_cQHBoxLayout_setGeometry
  vtbl[].vtbl.geometry = miqt_exec_method_cQHBoxLayout_geometry
  vtbl[].vtbl.indexOf = miqt_exec_method_cQHBoxLayout_indexOf
  vtbl[].vtbl.isEmpty = miqt_exec_method_cQHBoxLayout_isEmpty
  vtbl[].vtbl.controlTypes = miqt_exec_method_cQHBoxLayout_controlTypes
  vtbl[].vtbl.layout = miqt_exec_method_cQHBoxLayout_layout
  vtbl[].vtbl.childEvent = miqt_exec_method_cQHBoxLayout_childEvent
  vtbl[].vtbl.event = miqt_exec_method_cQHBoxLayout_event
  vtbl[].vtbl.eventFilter = miqt_exec_method_cQHBoxLayout_eventFilter
  vtbl[].vtbl.timerEvent = miqt_exec_method_cQHBoxLayout_timerEvent
  vtbl[].vtbl.customEvent = miqt_exec_method_cQHBoxLayout_customEvent
  vtbl[].vtbl.connectNotify = miqt_exec_method_cQHBoxLayout_connectNotify
  vtbl[].vtbl.disconnectNotify = miqt_exec_method_cQHBoxLayout_disconnectNotify
  vtbl[].vtbl.widget = miqt_exec_method_cQHBoxLayout_widget
  vtbl[].vtbl.spacerItem = miqt_exec_method_cQHBoxLayout_spacerItem
  if vtbl[].h != nil: delete(move(vtbl[]))
  vtbl[].h = fcQHBoxLayout_new(addr(vtbl[].vtbl), parent.h)
  vtbl[].owned = true

proc create*(T: type gen_qboxlayout_types.QHBoxLayout,
    vtbl: VirtualQHBoxLayout) =

  vtbl[].vtbl.destructor = proc(vtbl: ptr cQHBoxLayoutVTable, _: ptr cQHBoxLayout) {.cdecl.} =
    let vtbl = cast[ptr typeof(VirtualQHBoxLayout()[])](cast[uint](vtbl) - uint(offsetOf(VirtualQHBoxLayout, vtbl)))
    vtbl[].h = nil
    vtbl[].owned = false
  vtbl[].vtbl.metaObject = miqt_exec_method_cQHBoxLayout_metaObject
  vtbl[].vtbl.metacast = miqt_exec_method_cQHBoxLayout_metacast
  vtbl[].vtbl.metacall = miqt_exec_method_cQHBoxLayout_metacall
  vtbl[].vtbl.addItem = miqt_exec_method_cQHBoxLayout_addItem
  vtbl[].vtbl.sizeHint = miqt_exec_method_cQHBoxLayout_sizeHint
  vtbl[].vtbl.minimumSize = miqt_exec_method_cQHBoxLayout_minimumSize
  vtbl[].vtbl.maximumSize = miqt_exec_method_cQHBoxLayout_maximumSize
  vtbl[].vtbl.hasHeightForWidth = miqt_exec_method_cQHBoxLayout_hasHeightForWidth
  vtbl[].vtbl.heightForWidth = miqt_exec_method_cQHBoxLayout_heightForWidth
  vtbl[].vtbl.minimumHeightForWidth = miqt_exec_method_cQHBoxLayout_minimumHeightForWidth
  vtbl[].vtbl.expandingDirections = miqt_exec_method_cQHBoxLayout_expandingDirections
  vtbl[].vtbl.invalidate = miqt_exec_method_cQHBoxLayout_invalidate
  vtbl[].vtbl.itemAt = miqt_exec_method_cQHBoxLayout_itemAt
  vtbl[].vtbl.takeAt = miqt_exec_method_cQHBoxLayout_takeAt
  vtbl[].vtbl.count = miqt_exec_method_cQHBoxLayout_count
  vtbl[].vtbl.setGeometry = miqt_exec_method_cQHBoxLayout_setGeometry
  vtbl[].vtbl.geometry = miqt_exec_method_cQHBoxLayout_geometry
  vtbl[].vtbl.indexOf = miqt_exec_method_cQHBoxLayout_indexOf
  vtbl[].vtbl.isEmpty = miqt_exec_method_cQHBoxLayout_isEmpty
  vtbl[].vtbl.controlTypes = miqt_exec_method_cQHBoxLayout_controlTypes
  vtbl[].vtbl.layout = miqt_exec_method_cQHBoxLayout_layout
  vtbl[].vtbl.childEvent = miqt_exec_method_cQHBoxLayout_childEvent
  vtbl[].vtbl.event = miqt_exec_method_cQHBoxLayout_event
  vtbl[].vtbl.eventFilter = miqt_exec_method_cQHBoxLayout_eventFilter
  vtbl[].vtbl.timerEvent = miqt_exec_method_cQHBoxLayout_timerEvent
  vtbl[].vtbl.customEvent = miqt_exec_method_cQHBoxLayout_customEvent
  vtbl[].vtbl.connectNotify = miqt_exec_method_cQHBoxLayout_connectNotify
  vtbl[].vtbl.disconnectNotify = miqt_exec_method_cQHBoxLayout_disconnectNotify
  vtbl[].vtbl.widget = miqt_exec_method_cQHBoxLayout_widget
  vtbl[].vtbl.spacerItem = miqt_exec_method_cQHBoxLayout_spacerItem
  if vtbl[].h != nil: delete(move(vtbl[]))
  vtbl[].h = fcQHBoxLayout_new2(addr(vtbl[].vtbl), )
  vtbl[].owned = true

proc staticMetaObject*(_: type gen_qboxlayout_types.QHBoxLayout): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQHBoxLayout_staticMetaObject())
proc metaObject*(self: gen_qboxlayout_types.QVBoxLayout, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQVBoxLayout_metaObject(self.h), owned: false)

proc metacast*(self: gen_qboxlayout_types.QVBoxLayout, param1: cstring): pointer =
  fcQVBoxLayout_metacast(self.h, param1)

proc metacall*(self: gen_qboxlayout_types.QVBoxLayout, param1: cint, param2: cint, param3: pointer): cint =
  fcQVBoxLayout_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qboxlayout_types.QVBoxLayout, s: cstring): string =
  let v_ms = fcQVBoxLayout_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qboxlayout_types.QVBoxLayout, s: cstring): string =
  let v_ms = fcQVBoxLayout_trUtf8(s)
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

proc trUtf8*(_: type gen_qboxlayout_types.QVBoxLayout, s: cstring, c: cstring): string =
  let v_ms = fcQVBoxLayout_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qboxlayout_types.QVBoxLayout, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQVBoxLayout_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

type QVBoxLayoutmetaObjectProc* = proc(self: QVBoxLayout): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QVBoxLayoutmetacastProc* = proc(self: QVBoxLayout, param1: cstring): pointer {.raises: [], gcsafe.}
type QVBoxLayoutmetacallProc* = proc(self: QVBoxLayout, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QVBoxLayoutaddItemProc* = proc(self: QVBoxLayout, param1: gen_qlayoutitem_types.QLayoutItem): void {.raises: [], gcsafe.}
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
  gen_qobjectdefs_types.QMetaObject(h: fcQVBoxLayout_virtualbase_metaObject(self.h), owned: false)

proc miqt_exec_callback_cQVBoxLayout_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QVBoxLayoutVTable](vtbl)
  let self = QVBoxLayout(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

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
  let slotval1 = gen_qlayoutitem_types.QLayoutItem(h: param1, owned: false)
  vtbl[].addItem(self, slotval1)

proc QVBoxLayoutsizeHint*(self: gen_qboxlayout_types.QVBoxLayout, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQVBoxLayout_virtualbase_sizeHint(self.h), owned: true)

proc miqt_exec_callback_cQVBoxLayout_sizeHint(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QVBoxLayoutVTable](vtbl)
  let self = QVBoxLayout(h: self)
  var virtualReturn = vtbl[].sizeHint(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QVBoxLayoutminimumSize*(self: gen_qboxlayout_types.QVBoxLayout, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQVBoxLayout_virtualbase_minimumSize(self.h), owned: true)

proc miqt_exec_callback_cQVBoxLayout_minimumSize(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QVBoxLayoutVTable](vtbl)
  let self = QVBoxLayout(h: self)
  var virtualReturn = vtbl[].minimumSize(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QVBoxLayoutmaximumSize*(self: gen_qboxlayout_types.QVBoxLayout, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQVBoxLayout_virtualbase_maximumSize(self.h), owned: true)

proc miqt_exec_callback_cQVBoxLayout_maximumSize(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QVBoxLayoutVTable](vtbl)
  let self = QVBoxLayout(h: self)
  var virtualReturn = vtbl[].maximumSize(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

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
  gen_qlayoutitem_types.QLayoutItem(h: fcQVBoxLayout_virtualbase_itemAt(self.h, param1), owned: false)

proc miqt_exec_callback_cQVBoxLayout_itemAt(vtbl: pointer, self: pointer, param1: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QVBoxLayoutVTable](vtbl)
  let self = QVBoxLayout(h: self)
  let slotval1 = param1
  var virtualReturn = vtbl[].itemAt(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QVBoxLayouttakeAt*(self: gen_qboxlayout_types.QVBoxLayout, param1: cint): gen_qlayoutitem_types.QLayoutItem =
  gen_qlayoutitem_types.QLayoutItem(h: fcQVBoxLayout_virtualbase_takeAt(self.h, param1), owned: false)

proc miqt_exec_callback_cQVBoxLayout_takeAt(vtbl: pointer, self: pointer, param1: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QVBoxLayoutVTable](vtbl)
  let self = QVBoxLayout(h: self)
  let slotval1 = param1
  var virtualReturn = vtbl[].takeAt(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

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
  let slotval1 = gen_qrect_types.QRect(h: geometry, owned: false)
  vtbl[].setGeometry(self, slotval1)

proc QVBoxLayoutgeometry*(self: gen_qboxlayout_types.QVBoxLayout, ): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fcQVBoxLayout_virtualbase_geometry(self.h), owned: true)

proc miqt_exec_callback_cQVBoxLayout_geometry(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QVBoxLayoutVTable](vtbl)
  let self = QVBoxLayout(h: self)
  var virtualReturn = vtbl[].geometry(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QVBoxLayoutindexOf*(self: gen_qboxlayout_types.QVBoxLayout, param1: gen_qwidget_types.QWidget): cint =
  fcQVBoxLayout_virtualbase_indexOf(self.h, param1.h)

proc miqt_exec_callback_cQVBoxLayout_indexOf(vtbl: pointer, self: pointer, param1: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QVBoxLayoutVTable](vtbl)
  let self = QVBoxLayout(h: self)
  let slotval1 = gen_qwidget_types.QWidget(h: param1, owned: false)
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

proc QVBoxLayoutlayout*(self: gen_qboxlayout_types.QVBoxLayout, ): gen_qlayout_types.QLayout =
  gen_qlayout_types.QLayout(h: fcQVBoxLayout_virtualbase_layout(self.h), owned: false)

proc miqt_exec_callback_cQVBoxLayout_layout(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QVBoxLayoutVTable](vtbl)
  let self = QVBoxLayout(h: self)
  var virtualReturn = vtbl[].layout(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QVBoxLayoutchildEvent*(self: gen_qboxlayout_types.QVBoxLayout, e: gen_qcoreevent_types.QChildEvent): void =
  fcQVBoxLayout_virtualbase_childEvent(self.h, e.h)

proc miqt_exec_callback_cQVBoxLayout_childEvent(vtbl: pointer, self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QVBoxLayoutVTable](vtbl)
  let self = QVBoxLayout(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: e, owned: false)
  vtbl[].childEvent(self, slotval1)

proc QVBoxLayoutevent*(self: gen_qboxlayout_types.QVBoxLayout, event: gen_qcoreevent_types.QEvent): bool =
  fcQVBoxLayout_virtualbase_event(self.h, event.h)

proc miqt_exec_callback_cQVBoxLayout_event(vtbl: pointer, self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QVBoxLayoutVTable](vtbl)
  let self = QVBoxLayout(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QVBoxLayouteventFilter*(self: gen_qboxlayout_types.QVBoxLayout, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQVBoxLayout_virtualbase_eventFilter(self.h, watched.h, event.h)

proc miqt_exec_callback_cQVBoxLayout_eventFilter(vtbl: pointer, self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QVBoxLayoutVTable](vtbl)
  let self = QVBoxLayout(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QVBoxLayouttimerEvent*(self: gen_qboxlayout_types.QVBoxLayout, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQVBoxLayout_virtualbase_timerEvent(self.h, event.h)

proc miqt_exec_callback_cQVBoxLayout_timerEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QVBoxLayoutVTable](vtbl)
  let self = QVBoxLayout(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc QVBoxLayoutcustomEvent*(self: gen_qboxlayout_types.QVBoxLayout, event: gen_qcoreevent_types.QEvent): void =
  fcQVBoxLayout_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQVBoxLayout_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QVBoxLayoutVTable](vtbl)
  let self = QVBoxLayout(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc QVBoxLayoutconnectNotify*(self: gen_qboxlayout_types.QVBoxLayout, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQVBoxLayout_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQVBoxLayout_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QVBoxLayoutVTable](vtbl)
  let self = QVBoxLayout(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc QVBoxLayoutdisconnectNotify*(self: gen_qboxlayout_types.QVBoxLayout, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQVBoxLayout_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQVBoxLayout_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QVBoxLayoutVTable](vtbl)
  let self = QVBoxLayout(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

proc QVBoxLayoutwidget*(self: gen_qboxlayout_types.QVBoxLayout, ): gen_qwidget_types.QWidget =
  gen_qwidget_types.QWidget(h: fcQVBoxLayout_virtualbase_widget(self.h), owned: false)

proc miqt_exec_callback_cQVBoxLayout_widget(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QVBoxLayoutVTable](vtbl)
  let self = QVBoxLayout(h: self)
  var virtualReturn = vtbl[].widget(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QVBoxLayoutspacerItem*(self: gen_qboxlayout_types.QVBoxLayout, ): gen_qlayoutitem_types.QSpacerItem =
  gen_qlayoutitem_types.QSpacerItem(h: fcQVBoxLayout_virtualbase_spacerItem(self.h), owned: false)

proc miqt_exec_callback_cQVBoxLayout_spacerItem(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QVBoxLayoutVTable](vtbl)
  let self = QVBoxLayout(h: self)
  var virtualReturn = vtbl[].spacerItem(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

type VirtualQVBoxLayout* {.inheritable.} = ref object of QVBoxLayout
  vtbl*: cQVBoxLayoutVTable
method metaObject*(self: VirtualQVBoxLayout, ): gen_qobjectdefs_types.QMetaObject {.base.} =
  QVBoxLayoutmetaObject(self[])
proc miqt_exec_method_cQVBoxLayout_metaObject(vtbl: pointer, inst: pointer): pointer {.cdecl.} =
  let vtbl = cast[VirtualQVBoxLayout](cast[uint](vtbl) - uint(offsetOf(VirtualQVBoxLayout, vtbl)))
  var virtualReturn = vtbl.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method metacast*(self: VirtualQVBoxLayout, param1: cstring): pointer {.base.} =
  QVBoxLayoutmetacast(self[], param1)
proc miqt_exec_method_cQVBoxLayout_metacast(vtbl: pointer, inst: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[VirtualQVBoxLayout](cast[uint](vtbl) - uint(offsetOf(VirtualQVBoxLayout, vtbl)))
  let slotval1 = (param1)
  var virtualReturn = vtbl.metacast(slotval1)
  virtualReturn

method metacall*(self: VirtualQVBoxLayout, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QVBoxLayoutmetacall(self[], param1, param2, param3)
proc miqt_exec_method_cQVBoxLayout_metacall(vtbl: pointer, inst: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[VirtualQVBoxLayout](cast[uint](vtbl) - uint(offsetOf(VirtualQVBoxLayout, vtbl)))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl.metacall(slotval1, slotval2, slotval3)
  virtualReturn

method addItem*(self: VirtualQVBoxLayout, param1: gen_qlayoutitem_types.QLayoutItem): void {.base.} =
  QVBoxLayoutaddItem(self[], param1)
proc miqt_exec_method_cQVBoxLayout_addItem(vtbl: pointer, inst: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQVBoxLayout](cast[uint](vtbl) - uint(offsetOf(VirtualQVBoxLayout, vtbl)))
  let slotval1 = gen_qlayoutitem_types.QLayoutItem(h: param1, owned: false)
  vtbl.addItem(slotval1)

method sizeHint*(self: VirtualQVBoxLayout, ): gen_qsize_types.QSize {.base.} =
  QVBoxLayoutsizeHint(self[])
proc miqt_exec_method_cQVBoxLayout_sizeHint(vtbl: pointer, inst: pointer): pointer {.cdecl.} =
  let vtbl = cast[VirtualQVBoxLayout](cast[uint](vtbl) - uint(offsetOf(VirtualQVBoxLayout, vtbl)))
  var virtualReturn = vtbl.sizeHint()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method minimumSize*(self: VirtualQVBoxLayout, ): gen_qsize_types.QSize {.base.} =
  QVBoxLayoutminimumSize(self[])
proc miqt_exec_method_cQVBoxLayout_minimumSize(vtbl: pointer, inst: pointer): pointer {.cdecl.} =
  let vtbl = cast[VirtualQVBoxLayout](cast[uint](vtbl) - uint(offsetOf(VirtualQVBoxLayout, vtbl)))
  var virtualReturn = vtbl.minimumSize()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method maximumSize*(self: VirtualQVBoxLayout, ): gen_qsize_types.QSize {.base.} =
  QVBoxLayoutmaximumSize(self[])
proc miqt_exec_method_cQVBoxLayout_maximumSize(vtbl: pointer, inst: pointer): pointer {.cdecl.} =
  let vtbl = cast[VirtualQVBoxLayout](cast[uint](vtbl) - uint(offsetOf(VirtualQVBoxLayout, vtbl)))
  var virtualReturn = vtbl.maximumSize()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method hasHeightForWidth*(self: VirtualQVBoxLayout, ): bool {.base.} =
  QVBoxLayouthasHeightForWidth(self[])
proc miqt_exec_method_cQVBoxLayout_hasHeightForWidth(vtbl: pointer, inst: pointer): bool {.cdecl.} =
  let vtbl = cast[VirtualQVBoxLayout](cast[uint](vtbl) - uint(offsetOf(VirtualQVBoxLayout, vtbl)))
  var virtualReturn = vtbl.hasHeightForWidth()
  virtualReturn

method heightForWidth*(self: VirtualQVBoxLayout, param1: cint): cint {.base.} =
  QVBoxLayoutheightForWidth(self[], param1)
proc miqt_exec_method_cQVBoxLayout_heightForWidth(vtbl: pointer, inst: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[VirtualQVBoxLayout](cast[uint](vtbl) - uint(offsetOf(VirtualQVBoxLayout, vtbl)))
  let slotval1 = param1
  var virtualReturn = vtbl.heightForWidth(slotval1)
  virtualReturn

method minimumHeightForWidth*(self: VirtualQVBoxLayout, param1: cint): cint {.base.} =
  QVBoxLayoutminimumHeightForWidth(self[], param1)
proc miqt_exec_method_cQVBoxLayout_minimumHeightForWidth(vtbl: pointer, inst: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[VirtualQVBoxLayout](cast[uint](vtbl) - uint(offsetOf(VirtualQVBoxLayout, vtbl)))
  let slotval1 = param1
  var virtualReturn = vtbl.minimumHeightForWidth(slotval1)
  virtualReturn

method expandingDirections*(self: VirtualQVBoxLayout, ): cint {.base.} =
  QVBoxLayoutexpandingDirections(self[])
proc miqt_exec_method_cQVBoxLayout_expandingDirections(vtbl: pointer, inst: pointer): cint {.cdecl.} =
  let vtbl = cast[VirtualQVBoxLayout](cast[uint](vtbl) - uint(offsetOf(VirtualQVBoxLayout, vtbl)))
  var virtualReturn = vtbl.expandingDirections()
  cint(virtualReturn)

method invalidate*(self: VirtualQVBoxLayout, ): void {.base.} =
  QVBoxLayoutinvalidate(self[])
proc miqt_exec_method_cQVBoxLayout_invalidate(vtbl: pointer, inst: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQVBoxLayout](cast[uint](vtbl) - uint(offsetOf(VirtualQVBoxLayout, vtbl)))
  vtbl.invalidate()

method itemAt*(self: VirtualQVBoxLayout, param1: cint): gen_qlayoutitem_types.QLayoutItem {.base.} =
  QVBoxLayoutitemAt(self[], param1)
proc miqt_exec_method_cQVBoxLayout_itemAt(vtbl: pointer, inst: pointer, param1: cint): pointer {.cdecl.} =
  let vtbl = cast[VirtualQVBoxLayout](cast[uint](vtbl) - uint(offsetOf(VirtualQVBoxLayout, vtbl)))
  let slotval1 = param1
  var virtualReturn = vtbl.itemAt(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method takeAt*(self: VirtualQVBoxLayout, param1: cint): gen_qlayoutitem_types.QLayoutItem {.base.} =
  QVBoxLayouttakeAt(self[], param1)
proc miqt_exec_method_cQVBoxLayout_takeAt(vtbl: pointer, inst: pointer, param1: cint): pointer {.cdecl.} =
  let vtbl = cast[VirtualQVBoxLayout](cast[uint](vtbl) - uint(offsetOf(VirtualQVBoxLayout, vtbl)))
  let slotval1 = param1
  var virtualReturn = vtbl.takeAt(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method count*(self: VirtualQVBoxLayout, ): cint {.base.} =
  QVBoxLayoutcount(self[])
proc miqt_exec_method_cQVBoxLayout_count(vtbl: pointer, inst: pointer): cint {.cdecl.} =
  let vtbl = cast[VirtualQVBoxLayout](cast[uint](vtbl) - uint(offsetOf(VirtualQVBoxLayout, vtbl)))
  var virtualReturn = vtbl.count()
  virtualReturn

method setGeometry*(self: VirtualQVBoxLayout, geometry: gen_qrect_types.QRect): void {.base.} =
  QVBoxLayoutsetGeometry(self[], geometry)
proc miqt_exec_method_cQVBoxLayout_setGeometry(vtbl: pointer, inst: pointer, geometry: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQVBoxLayout](cast[uint](vtbl) - uint(offsetOf(VirtualQVBoxLayout, vtbl)))
  let slotval1 = gen_qrect_types.QRect(h: geometry, owned: false)
  vtbl.setGeometry(slotval1)

method geometry*(self: VirtualQVBoxLayout, ): gen_qrect_types.QRect {.base.} =
  QVBoxLayoutgeometry(self[])
proc miqt_exec_method_cQVBoxLayout_geometry(vtbl: pointer, inst: pointer): pointer {.cdecl.} =
  let vtbl = cast[VirtualQVBoxLayout](cast[uint](vtbl) - uint(offsetOf(VirtualQVBoxLayout, vtbl)))
  var virtualReturn = vtbl.geometry()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method indexOf*(self: VirtualQVBoxLayout, param1: gen_qwidget_types.QWidget): cint {.base.} =
  QVBoxLayoutindexOf(self[], param1)
proc miqt_exec_method_cQVBoxLayout_indexOf(vtbl: pointer, inst: pointer, param1: pointer): cint {.cdecl.} =
  let vtbl = cast[VirtualQVBoxLayout](cast[uint](vtbl) - uint(offsetOf(VirtualQVBoxLayout, vtbl)))
  let slotval1 = gen_qwidget_types.QWidget(h: param1, owned: false)
  var virtualReturn = vtbl.indexOf(slotval1)
  virtualReturn

method isEmpty*(self: VirtualQVBoxLayout, ): bool {.base.} =
  QVBoxLayoutisEmpty(self[])
proc miqt_exec_method_cQVBoxLayout_isEmpty(vtbl: pointer, inst: pointer): bool {.cdecl.} =
  let vtbl = cast[VirtualQVBoxLayout](cast[uint](vtbl) - uint(offsetOf(VirtualQVBoxLayout, vtbl)))
  var virtualReturn = vtbl.isEmpty()
  virtualReturn

method controlTypes*(self: VirtualQVBoxLayout, ): cint {.base.} =
  QVBoxLayoutcontrolTypes(self[])
proc miqt_exec_method_cQVBoxLayout_controlTypes(vtbl: pointer, inst: pointer): cint {.cdecl.} =
  let vtbl = cast[VirtualQVBoxLayout](cast[uint](vtbl) - uint(offsetOf(VirtualQVBoxLayout, vtbl)))
  var virtualReturn = vtbl.controlTypes()
  cint(virtualReturn)

method layout*(self: VirtualQVBoxLayout, ): gen_qlayout_types.QLayout {.base.} =
  QVBoxLayoutlayout(self[])
proc miqt_exec_method_cQVBoxLayout_layout(vtbl: pointer, inst: pointer): pointer {.cdecl.} =
  let vtbl = cast[VirtualQVBoxLayout](cast[uint](vtbl) - uint(offsetOf(VirtualQVBoxLayout, vtbl)))
  var virtualReturn = vtbl.layout()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method childEvent*(self: VirtualQVBoxLayout, e: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QVBoxLayoutchildEvent(self[], e)
proc miqt_exec_method_cQVBoxLayout_childEvent(vtbl: pointer, inst: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQVBoxLayout](cast[uint](vtbl) - uint(offsetOf(VirtualQVBoxLayout, vtbl)))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: e, owned: false)
  vtbl.childEvent(slotval1)

method event*(self: VirtualQVBoxLayout, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QVBoxLayoutevent(self[], event)
proc miqt_exec_method_cQVBoxLayout_event(vtbl: pointer, inst: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[VirtualQVBoxLayout](cast[uint](vtbl) - uint(offsetOf(VirtualQVBoxLayout, vtbl)))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl.event(slotval1)
  virtualReturn

method eventFilter*(self: VirtualQVBoxLayout, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QVBoxLayouteventFilter(self[], watched, event)
proc miqt_exec_method_cQVBoxLayout_eventFilter(vtbl: pointer, inst: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[VirtualQVBoxLayout](cast[uint](vtbl) - uint(offsetOf(VirtualQVBoxLayout, vtbl)))
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl.eventFilter(slotval1, slotval2)
  virtualReturn

method timerEvent*(self: VirtualQVBoxLayout, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QVBoxLayouttimerEvent(self[], event)
proc miqt_exec_method_cQVBoxLayout_timerEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQVBoxLayout](cast[uint](vtbl) - uint(offsetOf(VirtualQVBoxLayout, vtbl)))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl.timerEvent(slotval1)

method customEvent*(self: VirtualQVBoxLayout, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QVBoxLayoutcustomEvent(self[], event)
proc miqt_exec_method_cQVBoxLayout_customEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQVBoxLayout](cast[uint](vtbl) - uint(offsetOf(VirtualQVBoxLayout, vtbl)))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl.customEvent(slotval1)

method connectNotify*(self: VirtualQVBoxLayout, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QVBoxLayoutconnectNotify(self[], signal)
proc miqt_exec_method_cQVBoxLayout_connectNotify(vtbl: pointer, inst: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQVBoxLayout](cast[uint](vtbl) - uint(offsetOf(VirtualQVBoxLayout, vtbl)))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl.connectNotify(slotval1)

method disconnectNotify*(self: VirtualQVBoxLayout, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QVBoxLayoutdisconnectNotify(self[], signal)
proc miqt_exec_method_cQVBoxLayout_disconnectNotify(vtbl: pointer, inst: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQVBoxLayout](cast[uint](vtbl) - uint(offsetOf(VirtualQVBoxLayout, vtbl)))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl.disconnectNotify(slotval1)

method widget*(self: VirtualQVBoxLayout, ): gen_qwidget_types.QWidget {.base.} =
  QVBoxLayoutwidget(self[])
proc miqt_exec_method_cQVBoxLayout_widget(vtbl: pointer, inst: pointer): pointer {.cdecl.} =
  let vtbl = cast[VirtualQVBoxLayout](cast[uint](vtbl) - uint(offsetOf(VirtualQVBoxLayout, vtbl)))
  var virtualReturn = vtbl.widget()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method spacerItem*(self: VirtualQVBoxLayout, ): gen_qlayoutitem_types.QSpacerItem {.base.} =
  QVBoxLayoutspacerItem(self[])
proc miqt_exec_method_cQVBoxLayout_spacerItem(vtbl: pointer, inst: pointer): pointer {.cdecl.} =
  let vtbl = cast[VirtualQVBoxLayout](cast[uint](vtbl) - uint(offsetOf(VirtualQVBoxLayout, vtbl)))
  var virtualReturn = vtbl.spacerItem()
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

proc sender*(self: gen_qboxlayout_types.QVBoxLayout, ): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQVBoxLayout_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qboxlayout_types.QVBoxLayout, ): cint =
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
  vtbl[].vtbl.destructor = proc(vtbl: ptr cQVBoxLayoutVTable, _: ptr cQVBoxLayout) {.cdecl.} =
    let vtbl = cast[ref QVBoxLayoutVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQVBoxLayout_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQVBoxLayout_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQVBoxLayout_metacall
  if not isNil(vtbl[].addItem):
    vtbl[].vtbl.addItem = miqt_exec_callback_cQVBoxLayout_addItem
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = miqt_exec_callback_cQVBoxLayout_sizeHint
  if not isNil(vtbl[].minimumSize):
    vtbl[].vtbl.minimumSize = miqt_exec_callback_cQVBoxLayout_minimumSize
  if not isNil(vtbl[].maximumSize):
    vtbl[].vtbl.maximumSize = miqt_exec_callback_cQVBoxLayout_maximumSize
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = miqt_exec_callback_cQVBoxLayout_hasHeightForWidth
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = miqt_exec_callback_cQVBoxLayout_heightForWidth
  if not isNil(vtbl[].minimumHeightForWidth):
    vtbl[].vtbl.minimumHeightForWidth = miqt_exec_callback_cQVBoxLayout_minimumHeightForWidth
  if not isNil(vtbl[].expandingDirections):
    vtbl[].vtbl.expandingDirections = miqt_exec_callback_cQVBoxLayout_expandingDirections
  if not isNil(vtbl[].invalidate):
    vtbl[].vtbl.invalidate = miqt_exec_callback_cQVBoxLayout_invalidate
  if not isNil(vtbl[].itemAt):
    vtbl[].vtbl.itemAt = miqt_exec_callback_cQVBoxLayout_itemAt
  if not isNil(vtbl[].takeAt):
    vtbl[].vtbl.takeAt = miqt_exec_callback_cQVBoxLayout_takeAt
  if not isNil(vtbl[].count):
    vtbl[].vtbl.count = miqt_exec_callback_cQVBoxLayout_count
  if not isNil(vtbl[].setGeometry):
    vtbl[].vtbl.setGeometry = miqt_exec_callback_cQVBoxLayout_setGeometry
  if not isNil(vtbl[].geometry):
    vtbl[].vtbl.geometry = miqt_exec_callback_cQVBoxLayout_geometry
  if not isNil(vtbl[].indexOf):
    vtbl[].vtbl.indexOf = miqt_exec_callback_cQVBoxLayout_indexOf
  if not isNil(vtbl[].isEmpty):
    vtbl[].vtbl.isEmpty = miqt_exec_callback_cQVBoxLayout_isEmpty
  if not isNil(vtbl[].controlTypes):
    vtbl[].vtbl.controlTypes = miqt_exec_callback_cQVBoxLayout_controlTypes
  if not isNil(vtbl[].layout):
    vtbl[].vtbl.layout = miqt_exec_callback_cQVBoxLayout_layout
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQVBoxLayout_childEvent
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = miqt_exec_callback_cQVBoxLayout_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQVBoxLayout_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQVBoxLayout_timerEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQVBoxLayout_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQVBoxLayout_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQVBoxLayout_disconnectNotify
  if not isNil(vtbl[].widget):
    vtbl[].vtbl.widget = miqt_exec_callback_cQVBoxLayout_widget
  if not isNil(vtbl[].spacerItem):
    vtbl[].vtbl.spacerItem = miqt_exec_callback_cQVBoxLayout_spacerItem
  gen_qboxlayout_types.QVBoxLayout(h: fcQVBoxLayout_new(addr(vtbl[].vtbl), parent.h), owned: true)

proc create*(T: type gen_qboxlayout_types.QVBoxLayout,
    vtbl: ref QVBoxLayoutVTable = nil): gen_qboxlayout_types.QVBoxLayout =
  let vtbl = if vtbl == nil: new QVBoxLayoutVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(vtbl: ptr cQVBoxLayoutVTable, _: ptr cQVBoxLayout) {.cdecl.} =
    let vtbl = cast[ref QVBoxLayoutVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQVBoxLayout_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQVBoxLayout_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQVBoxLayout_metacall
  if not isNil(vtbl[].addItem):
    vtbl[].vtbl.addItem = miqt_exec_callback_cQVBoxLayout_addItem
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = miqt_exec_callback_cQVBoxLayout_sizeHint
  if not isNil(vtbl[].minimumSize):
    vtbl[].vtbl.minimumSize = miqt_exec_callback_cQVBoxLayout_minimumSize
  if not isNil(vtbl[].maximumSize):
    vtbl[].vtbl.maximumSize = miqt_exec_callback_cQVBoxLayout_maximumSize
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = miqt_exec_callback_cQVBoxLayout_hasHeightForWidth
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = miqt_exec_callback_cQVBoxLayout_heightForWidth
  if not isNil(vtbl[].minimumHeightForWidth):
    vtbl[].vtbl.minimumHeightForWidth = miqt_exec_callback_cQVBoxLayout_minimumHeightForWidth
  if not isNil(vtbl[].expandingDirections):
    vtbl[].vtbl.expandingDirections = miqt_exec_callback_cQVBoxLayout_expandingDirections
  if not isNil(vtbl[].invalidate):
    vtbl[].vtbl.invalidate = miqt_exec_callback_cQVBoxLayout_invalidate
  if not isNil(vtbl[].itemAt):
    vtbl[].vtbl.itemAt = miqt_exec_callback_cQVBoxLayout_itemAt
  if not isNil(vtbl[].takeAt):
    vtbl[].vtbl.takeAt = miqt_exec_callback_cQVBoxLayout_takeAt
  if not isNil(vtbl[].count):
    vtbl[].vtbl.count = miqt_exec_callback_cQVBoxLayout_count
  if not isNil(vtbl[].setGeometry):
    vtbl[].vtbl.setGeometry = miqt_exec_callback_cQVBoxLayout_setGeometry
  if not isNil(vtbl[].geometry):
    vtbl[].vtbl.geometry = miqt_exec_callback_cQVBoxLayout_geometry
  if not isNil(vtbl[].indexOf):
    vtbl[].vtbl.indexOf = miqt_exec_callback_cQVBoxLayout_indexOf
  if not isNil(vtbl[].isEmpty):
    vtbl[].vtbl.isEmpty = miqt_exec_callback_cQVBoxLayout_isEmpty
  if not isNil(vtbl[].controlTypes):
    vtbl[].vtbl.controlTypes = miqt_exec_callback_cQVBoxLayout_controlTypes
  if not isNil(vtbl[].layout):
    vtbl[].vtbl.layout = miqt_exec_callback_cQVBoxLayout_layout
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQVBoxLayout_childEvent
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = miqt_exec_callback_cQVBoxLayout_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQVBoxLayout_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQVBoxLayout_timerEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQVBoxLayout_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQVBoxLayout_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQVBoxLayout_disconnectNotify
  if not isNil(vtbl[].widget):
    vtbl[].vtbl.widget = miqt_exec_callback_cQVBoxLayout_widget
  if not isNil(vtbl[].spacerItem):
    vtbl[].vtbl.spacerItem = miqt_exec_callback_cQVBoxLayout_spacerItem
  gen_qboxlayout_types.QVBoxLayout(h: fcQVBoxLayout_new2(addr(vtbl[].vtbl), ), owned: true)

proc create*(T: type gen_qboxlayout_types.QVBoxLayout,
    parent: gen_qwidget_types.QWidget,
    vtbl: VirtualQVBoxLayout) =

  vtbl[].vtbl.destructor = proc(vtbl: ptr cQVBoxLayoutVTable, _: ptr cQVBoxLayout) {.cdecl.} =
    let vtbl = cast[ptr typeof(VirtualQVBoxLayout()[])](cast[uint](vtbl) - uint(offsetOf(VirtualQVBoxLayout, vtbl)))
    vtbl[].h = nil
    vtbl[].owned = false
  vtbl[].vtbl.metaObject = miqt_exec_method_cQVBoxLayout_metaObject
  vtbl[].vtbl.metacast = miqt_exec_method_cQVBoxLayout_metacast
  vtbl[].vtbl.metacall = miqt_exec_method_cQVBoxLayout_metacall
  vtbl[].vtbl.addItem = miqt_exec_method_cQVBoxLayout_addItem
  vtbl[].vtbl.sizeHint = miqt_exec_method_cQVBoxLayout_sizeHint
  vtbl[].vtbl.minimumSize = miqt_exec_method_cQVBoxLayout_minimumSize
  vtbl[].vtbl.maximumSize = miqt_exec_method_cQVBoxLayout_maximumSize
  vtbl[].vtbl.hasHeightForWidth = miqt_exec_method_cQVBoxLayout_hasHeightForWidth
  vtbl[].vtbl.heightForWidth = miqt_exec_method_cQVBoxLayout_heightForWidth
  vtbl[].vtbl.minimumHeightForWidth = miqt_exec_method_cQVBoxLayout_minimumHeightForWidth
  vtbl[].vtbl.expandingDirections = miqt_exec_method_cQVBoxLayout_expandingDirections
  vtbl[].vtbl.invalidate = miqt_exec_method_cQVBoxLayout_invalidate
  vtbl[].vtbl.itemAt = miqt_exec_method_cQVBoxLayout_itemAt
  vtbl[].vtbl.takeAt = miqt_exec_method_cQVBoxLayout_takeAt
  vtbl[].vtbl.count = miqt_exec_method_cQVBoxLayout_count
  vtbl[].vtbl.setGeometry = miqt_exec_method_cQVBoxLayout_setGeometry
  vtbl[].vtbl.geometry = miqt_exec_method_cQVBoxLayout_geometry
  vtbl[].vtbl.indexOf = miqt_exec_method_cQVBoxLayout_indexOf
  vtbl[].vtbl.isEmpty = miqt_exec_method_cQVBoxLayout_isEmpty
  vtbl[].vtbl.controlTypes = miqt_exec_method_cQVBoxLayout_controlTypes
  vtbl[].vtbl.layout = miqt_exec_method_cQVBoxLayout_layout
  vtbl[].vtbl.childEvent = miqt_exec_method_cQVBoxLayout_childEvent
  vtbl[].vtbl.event = miqt_exec_method_cQVBoxLayout_event
  vtbl[].vtbl.eventFilter = miqt_exec_method_cQVBoxLayout_eventFilter
  vtbl[].vtbl.timerEvent = miqt_exec_method_cQVBoxLayout_timerEvent
  vtbl[].vtbl.customEvent = miqt_exec_method_cQVBoxLayout_customEvent
  vtbl[].vtbl.connectNotify = miqt_exec_method_cQVBoxLayout_connectNotify
  vtbl[].vtbl.disconnectNotify = miqt_exec_method_cQVBoxLayout_disconnectNotify
  vtbl[].vtbl.widget = miqt_exec_method_cQVBoxLayout_widget
  vtbl[].vtbl.spacerItem = miqt_exec_method_cQVBoxLayout_spacerItem
  if vtbl[].h != nil: delete(move(vtbl[]))
  vtbl[].h = fcQVBoxLayout_new(addr(vtbl[].vtbl), parent.h)
  vtbl[].owned = true

proc create*(T: type gen_qboxlayout_types.QVBoxLayout,
    vtbl: VirtualQVBoxLayout) =

  vtbl[].vtbl.destructor = proc(vtbl: ptr cQVBoxLayoutVTable, _: ptr cQVBoxLayout) {.cdecl.} =
    let vtbl = cast[ptr typeof(VirtualQVBoxLayout()[])](cast[uint](vtbl) - uint(offsetOf(VirtualQVBoxLayout, vtbl)))
    vtbl[].h = nil
    vtbl[].owned = false
  vtbl[].vtbl.metaObject = miqt_exec_method_cQVBoxLayout_metaObject
  vtbl[].vtbl.metacast = miqt_exec_method_cQVBoxLayout_metacast
  vtbl[].vtbl.metacall = miqt_exec_method_cQVBoxLayout_metacall
  vtbl[].vtbl.addItem = miqt_exec_method_cQVBoxLayout_addItem
  vtbl[].vtbl.sizeHint = miqt_exec_method_cQVBoxLayout_sizeHint
  vtbl[].vtbl.minimumSize = miqt_exec_method_cQVBoxLayout_minimumSize
  vtbl[].vtbl.maximumSize = miqt_exec_method_cQVBoxLayout_maximumSize
  vtbl[].vtbl.hasHeightForWidth = miqt_exec_method_cQVBoxLayout_hasHeightForWidth
  vtbl[].vtbl.heightForWidth = miqt_exec_method_cQVBoxLayout_heightForWidth
  vtbl[].vtbl.minimumHeightForWidth = miqt_exec_method_cQVBoxLayout_minimumHeightForWidth
  vtbl[].vtbl.expandingDirections = miqt_exec_method_cQVBoxLayout_expandingDirections
  vtbl[].vtbl.invalidate = miqt_exec_method_cQVBoxLayout_invalidate
  vtbl[].vtbl.itemAt = miqt_exec_method_cQVBoxLayout_itemAt
  vtbl[].vtbl.takeAt = miqt_exec_method_cQVBoxLayout_takeAt
  vtbl[].vtbl.count = miqt_exec_method_cQVBoxLayout_count
  vtbl[].vtbl.setGeometry = miqt_exec_method_cQVBoxLayout_setGeometry
  vtbl[].vtbl.geometry = miqt_exec_method_cQVBoxLayout_geometry
  vtbl[].vtbl.indexOf = miqt_exec_method_cQVBoxLayout_indexOf
  vtbl[].vtbl.isEmpty = miqt_exec_method_cQVBoxLayout_isEmpty
  vtbl[].vtbl.controlTypes = miqt_exec_method_cQVBoxLayout_controlTypes
  vtbl[].vtbl.layout = miqt_exec_method_cQVBoxLayout_layout
  vtbl[].vtbl.childEvent = miqt_exec_method_cQVBoxLayout_childEvent
  vtbl[].vtbl.event = miqt_exec_method_cQVBoxLayout_event
  vtbl[].vtbl.eventFilter = miqt_exec_method_cQVBoxLayout_eventFilter
  vtbl[].vtbl.timerEvent = miqt_exec_method_cQVBoxLayout_timerEvent
  vtbl[].vtbl.customEvent = miqt_exec_method_cQVBoxLayout_customEvent
  vtbl[].vtbl.connectNotify = miqt_exec_method_cQVBoxLayout_connectNotify
  vtbl[].vtbl.disconnectNotify = miqt_exec_method_cQVBoxLayout_disconnectNotify
  vtbl[].vtbl.widget = miqt_exec_method_cQVBoxLayout_widget
  vtbl[].vtbl.spacerItem = miqt_exec_method_cQVBoxLayout_spacerItem
  if vtbl[].h != nil: delete(move(vtbl[]))
  vtbl[].h = fcQVBoxLayout_new2(addr(vtbl[].vtbl), )
  vtbl[].owned = true

proc staticMetaObject*(_: type gen_qboxlayout_types.QVBoxLayout): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQVBoxLayout_staticMetaObject())
