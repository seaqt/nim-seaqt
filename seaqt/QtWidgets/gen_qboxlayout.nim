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

proc fcQBoxLayout_new(param1: cint): ptr cQBoxLayout {.importc: "QBoxLayout_new".}
proc fcQBoxLayout_new2(param1: cint, parent: pointer): ptr cQBoxLayout {.importc: "QBoxLayout_new2".}
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
proc fQBoxLayout_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QBoxLayout_virtualbase_metaObject".}
proc fcQBoxLayout_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QBoxLayout_override_virtual_metaObject".}
proc fQBoxLayout_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QBoxLayout_virtualbase_metacast".}
proc fcQBoxLayout_override_virtual_metacast(self: pointer, slot: int) {.importc: "QBoxLayout_override_virtual_metacast".}
proc fQBoxLayout_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QBoxLayout_virtualbase_metacall".}
proc fcQBoxLayout_override_virtual_metacall(self: pointer, slot: int) {.importc: "QBoxLayout_override_virtual_metacall".}
proc fQBoxLayout_virtualbase_addItem(self: pointer, param1: pointer): void{.importc: "QBoxLayout_virtualbase_addItem".}
proc fcQBoxLayout_override_virtual_addItem(self: pointer, slot: int) {.importc: "QBoxLayout_override_virtual_addItem".}
proc fQBoxLayout_virtualbase_spacing(self: pointer, ): cint{.importc: "QBoxLayout_virtualbase_spacing".}
proc fcQBoxLayout_override_virtual_spacing(self: pointer, slot: int) {.importc: "QBoxLayout_override_virtual_spacing".}
proc fQBoxLayout_virtualbase_setSpacing(self: pointer, spacing: cint): void{.importc: "QBoxLayout_virtualbase_setSpacing".}
proc fcQBoxLayout_override_virtual_setSpacing(self: pointer, slot: int) {.importc: "QBoxLayout_override_virtual_setSpacing".}
proc fQBoxLayout_virtualbase_sizeHint(self: pointer, ): pointer{.importc: "QBoxLayout_virtualbase_sizeHint".}
proc fcQBoxLayout_override_virtual_sizeHint(self: pointer, slot: int) {.importc: "QBoxLayout_override_virtual_sizeHint".}
proc fQBoxLayout_virtualbase_minimumSize(self: pointer, ): pointer{.importc: "QBoxLayout_virtualbase_minimumSize".}
proc fcQBoxLayout_override_virtual_minimumSize(self: pointer, slot: int) {.importc: "QBoxLayout_override_virtual_minimumSize".}
proc fQBoxLayout_virtualbase_maximumSize(self: pointer, ): pointer{.importc: "QBoxLayout_virtualbase_maximumSize".}
proc fcQBoxLayout_override_virtual_maximumSize(self: pointer, slot: int) {.importc: "QBoxLayout_override_virtual_maximumSize".}
proc fQBoxLayout_virtualbase_hasHeightForWidth(self: pointer, ): bool{.importc: "QBoxLayout_virtualbase_hasHeightForWidth".}
proc fcQBoxLayout_override_virtual_hasHeightForWidth(self: pointer, slot: int) {.importc: "QBoxLayout_override_virtual_hasHeightForWidth".}
proc fQBoxLayout_virtualbase_heightForWidth(self: pointer, param1: cint): cint{.importc: "QBoxLayout_virtualbase_heightForWidth".}
proc fcQBoxLayout_override_virtual_heightForWidth(self: pointer, slot: int) {.importc: "QBoxLayout_override_virtual_heightForWidth".}
proc fQBoxLayout_virtualbase_minimumHeightForWidth(self: pointer, param1: cint): cint{.importc: "QBoxLayout_virtualbase_minimumHeightForWidth".}
proc fcQBoxLayout_override_virtual_minimumHeightForWidth(self: pointer, slot: int) {.importc: "QBoxLayout_override_virtual_minimumHeightForWidth".}
proc fQBoxLayout_virtualbase_expandingDirections(self: pointer, ): cint{.importc: "QBoxLayout_virtualbase_expandingDirections".}
proc fcQBoxLayout_override_virtual_expandingDirections(self: pointer, slot: int) {.importc: "QBoxLayout_override_virtual_expandingDirections".}
proc fQBoxLayout_virtualbase_invalidate(self: pointer, ): void{.importc: "QBoxLayout_virtualbase_invalidate".}
proc fcQBoxLayout_override_virtual_invalidate(self: pointer, slot: int) {.importc: "QBoxLayout_override_virtual_invalidate".}
proc fQBoxLayout_virtualbase_itemAt(self: pointer, param1: cint): pointer{.importc: "QBoxLayout_virtualbase_itemAt".}
proc fcQBoxLayout_override_virtual_itemAt(self: pointer, slot: int) {.importc: "QBoxLayout_override_virtual_itemAt".}
proc fQBoxLayout_virtualbase_takeAt(self: pointer, param1: cint): pointer{.importc: "QBoxLayout_virtualbase_takeAt".}
proc fcQBoxLayout_override_virtual_takeAt(self: pointer, slot: int) {.importc: "QBoxLayout_override_virtual_takeAt".}
proc fQBoxLayout_virtualbase_count(self: pointer, ): cint{.importc: "QBoxLayout_virtualbase_count".}
proc fcQBoxLayout_override_virtual_count(self: pointer, slot: int) {.importc: "QBoxLayout_override_virtual_count".}
proc fQBoxLayout_virtualbase_setGeometry(self: pointer, geometry: pointer): void{.importc: "QBoxLayout_virtualbase_setGeometry".}
proc fcQBoxLayout_override_virtual_setGeometry(self: pointer, slot: int) {.importc: "QBoxLayout_override_virtual_setGeometry".}
proc fQBoxLayout_virtualbase_geometry(self: pointer, ): pointer{.importc: "QBoxLayout_virtualbase_geometry".}
proc fcQBoxLayout_override_virtual_geometry(self: pointer, slot: int) {.importc: "QBoxLayout_override_virtual_geometry".}
proc fQBoxLayout_virtualbase_indexOf(self: pointer, param1: pointer): cint{.importc: "QBoxLayout_virtualbase_indexOf".}
proc fcQBoxLayout_override_virtual_indexOf(self: pointer, slot: int) {.importc: "QBoxLayout_override_virtual_indexOf".}
proc fQBoxLayout_virtualbase_isEmpty(self: pointer, ): bool{.importc: "QBoxLayout_virtualbase_isEmpty".}
proc fcQBoxLayout_override_virtual_isEmpty(self: pointer, slot: int) {.importc: "QBoxLayout_override_virtual_isEmpty".}
proc fQBoxLayout_virtualbase_controlTypes(self: pointer, ): cint{.importc: "QBoxLayout_virtualbase_controlTypes".}
proc fcQBoxLayout_override_virtual_controlTypes(self: pointer, slot: int) {.importc: "QBoxLayout_override_virtual_controlTypes".}
proc fQBoxLayout_virtualbase_replaceWidget(self: pointer, fromVal: pointer, to: pointer, options: cint): pointer{.importc: "QBoxLayout_virtualbase_replaceWidget".}
proc fcQBoxLayout_override_virtual_replaceWidget(self: pointer, slot: int) {.importc: "QBoxLayout_override_virtual_replaceWidget".}
proc fQBoxLayout_virtualbase_layout(self: pointer, ): pointer{.importc: "QBoxLayout_virtualbase_layout".}
proc fcQBoxLayout_override_virtual_layout(self: pointer, slot: int) {.importc: "QBoxLayout_override_virtual_layout".}
proc fQBoxLayout_virtualbase_childEvent(self: pointer, e: pointer): void{.importc: "QBoxLayout_virtualbase_childEvent".}
proc fcQBoxLayout_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QBoxLayout_override_virtual_childEvent".}
proc fQBoxLayout_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QBoxLayout_virtualbase_event".}
proc fcQBoxLayout_override_virtual_event(self: pointer, slot: int) {.importc: "QBoxLayout_override_virtual_event".}
proc fQBoxLayout_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QBoxLayout_virtualbase_eventFilter".}
proc fcQBoxLayout_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QBoxLayout_override_virtual_eventFilter".}
proc fQBoxLayout_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QBoxLayout_virtualbase_timerEvent".}
proc fcQBoxLayout_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QBoxLayout_override_virtual_timerEvent".}
proc fQBoxLayout_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QBoxLayout_virtualbase_customEvent".}
proc fcQBoxLayout_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QBoxLayout_override_virtual_customEvent".}
proc fQBoxLayout_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QBoxLayout_virtualbase_connectNotify".}
proc fcQBoxLayout_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QBoxLayout_override_virtual_connectNotify".}
proc fQBoxLayout_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QBoxLayout_virtualbase_disconnectNotify".}
proc fcQBoxLayout_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QBoxLayout_override_virtual_disconnectNotify".}
proc fQBoxLayout_virtualbase_widget(self: pointer, ): pointer{.importc: "QBoxLayout_virtualbase_widget".}
proc fcQBoxLayout_override_virtual_widget(self: pointer, slot: int) {.importc: "QBoxLayout_override_virtual_widget".}
proc fQBoxLayout_virtualbase_spacerItem(self: pointer, ): pointer{.importc: "QBoxLayout_virtualbase_spacerItem".}
proc fcQBoxLayout_override_virtual_spacerItem(self: pointer, slot: int) {.importc: "QBoxLayout_override_virtual_spacerItem".}
proc fcQBoxLayout_staticMetaObject(): pointer {.importc: "QBoxLayout_staticMetaObject".}
proc fcQBoxLayout_delete(self: pointer) {.importc: "QBoxLayout_delete".}
proc fcQHBoxLayout_new(parent: pointer): ptr cQHBoxLayout {.importc: "QHBoxLayout_new".}
proc fcQHBoxLayout_new2(): ptr cQHBoxLayout {.importc: "QHBoxLayout_new2".}
proc fcQHBoxLayout_metaObject(self: pointer, ): pointer {.importc: "QHBoxLayout_metaObject".}
proc fcQHBoxLayout_metacast(self: pointer, param1: cstring): pointer {.importc: "QHBoxLayout_metacast".}
proc fcQHBoxLayout_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QHBoxLayout_metacall".}
proc fcQHBoxLayout_tr(s: cstring): struct_miqt_string {.importc: "QHBoxLayout_tr".}
proc fcQHBoxLayout_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QHBoxLayout_tr2".}
proc fcQHBoxLayout_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QHBoxLayout_tr3".}
proc fQHBoxLayout_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QHBoxLayout_virtualbase_metaObject".}
proc fcQHBoxLayout_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QHBoxLayout_override_virtual_metaObject".}
proc fQHBoxLayout_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QHBoxLayout_virtualbase_metacast".}
proc fcQHBoxLayout_override_virtual_metacast(self: pointer, slot: int) {.importc: "QHBoxLayout_override_virtual_metacast".}
proc fQHBoxLayout_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QHBoxLayout_virtualbase_metacall".}
proc fcQHBoxLayout_override_virtual_metacall(self: pointer, slot: int) {.importc: "QHBoxLayout_override_virtual_metacall".}
proc fQHBoxLayout_virtualbase_addItem(self: pointer, param1: pointer): void{.importc: "QHBoxLayout_virtualbase_addItem".}
proc fcQHBoxLayout_override_virtual_addItem(self: pointer, slot: int) {.importc: "QHBoxLayout_override_virtual_addItem".}
proc fQHBoxLayout_virtualbase_spacing(self: pointer, ): cint{.importc: "QHBoxLayout_virtualbase_spacing".}
proc fcQHBoxLayout_override_virtual_spacing(self: pointer, slot: int) {.importc: "QHBoxLayout_override_virtual_spacing".}
proc fQHBoxLayout_virtualbase_setSpacing(self: pointer, spacing: cint): void{.importc: "QHBoxLayout_virtualbase_setSpacing".}
proc fcQHBoxLayout_override_virtual_setSpacing(self: pointer, slot: int) {.importc: "QHBoxLayout_override_virtual_setSpacing".}
proc fQHBoxLayout_virtualbase_sizeHint(self: pointer, ): pointer{.importc: "QHBoxLayout_virtualbase_sizeHint".}
proc fcQHBoxLayout_override_virtual_sizeHint(self: pointer, slot: int) {.importc: "QHBoxLayout_override_virtual_sizeHint".}
proc fQHBoxLayout_virtualbase_minimumSize(self: pointer, ): pointer{.importc: "QHBoxLayout_virtualbase_minimumSize".}
proc fcQHBoxLayout_override_virtual_minimumSize(self: pointer, slot: int) {.importc: "QHBoxLayout_override_virtual_minimumSize".}
proc fQHBoxLayout_virtualbase_maximumSize(self: pointer, ): pointer{.importc: "QHBoxLayout_virtualbase_maximumSize".}
proc fcQHBoxLayout_override_virtual_maximumSize(self: pointer, slot: int) {.importc: "QHBoxLayout_override_virtual_maximumSize".}
proc fQHBoxLayout_virtualbase_hasHeightForWidth(self: pointer, ): bool{.importc: "QHBoxLayout_virtualbase_hasHeightForWidth".}
proc fcQHBoxLayout_override_virtual_hasHeightForWidth(self: pointer, slot: int) {.importc: "QHBoxLayout_override_virtual_hasHeightForWidth".}
proc fQHBoxLayout_virtualbase_heightForWidth(self: pointer, param1: cint): cint{.importc: "QHBoxLayout_virtualbase_heightForWidth".}
proc fcQHBoxLayout_override_virtual_heightForWidth(self: pointer, slot: int) {.importc: "QHBoxLayout_override_virtual_heightForWidth".}
proc fQHBoxLayout_virtualbase_minimumHeightForWidth(self: pointer, param1: cint): cint{.importc: "QHBoxLayout_virtualbase_minimumHeightForWidth".}
proc fcQHBoxLayout_override_virtual_minimumHeightForWidth(self: pointer, slot: int) {.importc: "QHBoxLayout_override_virtual_minimumHeightForWidth".}
proc fQHBoxLayout_virtualbase_expandingDirections(self: pointer, ): cint{.importc: "QHBoxLayout_virtualbase_expandingDirections".}
proc fcQHBoxLayout_override_virtual_expandingDirections(self: pointer, slot: int) {.importc: "QHBoxLayout_override_virtual_expandingDirections".}
proc fQHBoxLayout_virtualbase_invalidate(self: pointer, ): void{.importc: "QHBoxLayout_virtualbase_invalidate".}
proc fcQHBoxLayout_override_virtual_invalidate(self: pointer, slot: int) {.importc: "QHBoxLayout_override_virtual_invalidate".}
proc fQHBoxLayout_virtualbase_itemAt(self: pointer, param1: cint): pointer{.importc: "QHBoxLayout_virtualbase_itemAt".}
proc fcQHBoxLayout_override_virtual_itemAt(self: pointer, slot: int) {.importc: "QHBoxLayout_override_virtual_itemAt".}
proc fQHBoxLayout_virtualbase_takeAt(self: pointer, param1: cint): pointer{.importc: "QHBoxLayout_virtualbase_takeAt".}
proc fcQHBoxLayout_override_virtual_takeAt(self: pointer, slot: int) {.importc: "QHBoxLayout_override_virtual_takeAt".}
proc fQHBoxLayout_virtualbase_count(self: pointer, ): cint{.importc: "QHBoxLayout_virtualbase_count".}
proc fcQHBoxLayout_override_virtual_count(self: pointer, slot: int) {.importc: "QHBoxLayout_override_virtual_count".}
proc fQHBoxLayout_virtualbase_setGeometry(self: pointer, geometry: pointer): void{.importc: "QHBoxLayout_virtualbase_setGeometry".}
proc fcQHBoxLayout_override_virtual_setGeometry(self: pointer, slot: int) {.importc: "QHBoxLayout_override_virtual_setGeometry".}
proc fQHBoxLayout_virtualbase_geometry(self: pointer, ): pointer{.importc: "QHBoxLayout_virtualbase_geometry".}
proc fcQHBoxLayout_override_virtual_geometry(self: pointer, slot: int) {.importc: "QHBoxLayout_override_virtual_geometry".}
proc fQHBoxLayout_virtualbase_indexOf(self: pointer, param1: pointer): cint{.importc: "QHBoxLayout_virtualbase_indexOf".}
proc fcQHBoxLayout_override_virtual_indexOf(self: pointer, slot: int) {.importc: "QHBoxLayout_override_virtual_indexOf".}
proc fQHBoxLayout_virtualbase_isEmpty(self: pointer, ): bool{.importc: "QHBoxLayout_virtualbase_isEmpty".}
proc fcQHBoxLayout_override_virtual_isEmpty(self: pointer, slot: int) {.importc: "QHBoxLayout_override_virtual_isEmpty".}
proc fQHBoxLayout_virtualbase_controlTypes(self: pointer, ): cint{.importc: "QHBoxLayout_virtualbase_controlTypes".}
proc fcQHBoxLayout_override_virtual_controlTypes(self: pointer, slot: int) {.importc: "QHBoxLayout_override_virtual_controlTypes".}
proc fQHBoxLayout_virtualbase_replaceWidget(self: pointer, fromVal: pointer, to: pointer, options: cint): pointer{.importc: "QHBoxLayout_virtualbase_replaceWidget".}
proc fcQHBoxLayout_override_virtual_replaceWidget(self: pointer, slot: int) {.importc: "QHBoxLayout_override_virtual_replaceWidget".}
proc fQHBoxLayout_virtualbase_layout(self: pointer, ): pointer{.importc: "QHBoxLayout_virtualbase_layout".}
proc fcQHBoxLayout_override_virtual_layout(self: pointer, slot: int) {.importc: "QHBoxLayout_override_virtual_layout".}
proc fQHBoxLayout_virtualbase_childEvent(self: pointer, e: pointer): void{.importc: "QHBoxLayout_virtualbase_childEvent".}
proc fcQHBoxLayout_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QHBoxLayout_override_virtual_childEvent".}
proc fQHBoxLayout_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QHBoxLayout_virtualbase_event".}
proc fcQHBoxLayout_override_virtual_event(self: pointer, slot: int) {.importc: "QHBoxLayout_override_virtual_event".}
proc fQHBoxLayout_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QHBoxLayout_virtualbase_eventFilter".}
proc fcQHBoxLayout_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QHBoxLayout_override_virtual_eventFilter".}
proc fQHBoxLayout_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QHBoxLayout_virtualbase_timerEvent".}
proc fcQHBoxLayout_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QHBoxLayout_override_virtual_timerEvent".}
proc fQHBoxLayout_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QHBoxLayout_virtualbase_customEvent".}
proc fcQHBoxLayout_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QHBoxLayout_override_virtual_customEvent".}
proc fQHBoxLayout_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QHBoxLayout_virtualbase_connectNotify".}
proc fcQHBoxLayout_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QHBoxLayout_override_virtual_connectNotify".}
proc fQHBoxLayout_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QHBoxLayout_virtualbase_disconnectNotify".}
proc fcQHBoxLayout_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QHBoxLayout_override_virtual_disconnectNotify".}
proc fQHBoxLayout_virtualbase_widget(self: pointer, ): pointer{.importc: "QHBoxLayout_virtualbase_widget".}
proc fcQHBoxLayout_override_virtual_widget(self: pointer, slot: int) {.importc: "QHBoxLayout_override_virtual_widget".}
proc fQHBoxLayout_virtualbase_spacerItem(self: pointer, ): pointer{.importc: "QHBoxLayout_virtualbase_spacerItem".}
proc fcQHBoxLayout_override_virtual_spacerItem(self: pointer, slot: int) {.importc: "QHBoxLayout_override_virtual_spacerItem".}
proc fcQHBoxLayout_staticMetaObject(): pointer {.importc: "QHBoxLayout_staticMetaObject".}
proc fcQHBoxLayout_delete(self: pointer) {.importc: "QHBoxLayout_delete".}
proc fcQVBoxLayout_new(parent: pointer): ptr cQVBoxLayout {.importc: "QVBoxLayout_new".}
proc fcQVBoxLayout_new2(): ptr cQVBoxLayout {.importc: "QVBoxLayout_new2".}
proc fcQVBoxLayout_metaObject(self: pointer, ): pointer {.importc: "QVBoxLayout_metaObject".}
proc fcQVBoxLayout_metacast(self: pointer, param1: cstring): pointer {.importc: "QVBoxLayout_metacast".}
proc fcQVBoxLayout_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QVBoxLayout_metacall".}
proc fcQVBoxLayout_tr(s: cstring): struct_miqt_string {.importc: "QVBoxLayout_tr".}
proc fcQVBoxLayout_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QVBoxLayout_tr2".}
proc fcQVBoxLayout_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QVBoxLayout_tr3".}
proc fQVBoxLayout_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QVBoxLayout_virtualbase_metaObject".}
proc fcQVBoxLayout_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QVBoxLayout_override_virtual_metaObject".}
proc fQVBoxLayout_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QVBoxLayout_virtualbase_metacast".}
proc fcQVBoxLayout_override_virtual_metacast(self: pointer, slot: int) {.importc: "QVBoxLayout_override_virtual_metacast".}
proc fQVBoxLayout_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QVBoxLayout_virtualbase_metacall".}
proc fcQVBoxLayout_override_virtual_metacall(self: pointer, slot: int) {.importc: "QVBoxLayout_override_virtual_metacall".}
proc fQVBoxLayout_virtualbase_addItem(self: pointer, param1: pointer): void{.importc: "QVBoxLayout_virtualbase_addItem".}
proc fcQVBoxLayout_override_virtual_addItem(self: pointer, slot: int) {.importc: "QVBoxLayout_override_virtual_addItem".}
proc fQVBoxLayout_virtualbase_spacing(self: pointer, ): cint{.importc: "QVBoxLayout_virtualbase_spacing".}
proc fcQVBoxLayout_override_virtual_spacing(self: pointer, slot: int) {.importc: "QVBoxLayout_override_virtual_spacing".}
proc fQVBoxLayout_virtualbase_setSpacing(self: pointer, spacing: cint): void{.importc: "QVBoxLayout_virtualbase_setSpacing".}
proc fcQVBoxLayout_override_virtual_setSpacing(self: pointer, slot: int) {.importc: "QVBoxLayout_override_virtual_setSpacing".}
proc fQVBoxLayout_virtualbase_sizeHint(self: pointer, ): pointer{.importc: "QVBoxLayout_virtualbase_sizeHint".}
proc fcQVBoxLayout_override_virtual_sizeHint(self: pointer, slot: int) {.importc: "QVBoxLayout_override_virtual_sizeHint".}
proc fQVBoxLayout_virtualbase_minimumSize(self: pointer, ): pointer{.importc: "QVBoxLayout_virtualbase_minimumSize".}
proc fcQVBoxLayout_override_virtual_minimumSize(self: pointer, slot: int) {.importc: "QVBoxLayout_override_virtual_minimumSize".}
proc fQVBoxLayout_virtualbase_maximumSize(self: pointer, ): pointer{.importc: "QVBoxLayout_virtualbase_maximumSize".}
proc fcQVBoxLayout_override_virtual_maximumSize(self: pointer, slot: int) {.importc: "QVBoxLayout_override_virtual_maximumSize".}
proc fQVBoxLayout_virtualbase_hasHeightForWidth(self: pointer, ): bool{.importc: "QVBoxLayout_virtualbase_hasHeightForWidth".}
proc fcQVBoxLayout_override_virtual_hasHeightForWidth(self: pointer, slot: int) {.importc: "QVBoxLayout_override_virtual_hasHeightForWidth".}
proc fQVBoxLayout_virtualbase_heightForWidth(self: pointer, param1: cint): cint{.importc: "QVBoxLayout_virtualbase_heightForWidth".}
proc fcQVBoxLayout_override_virtual_heightForWidth(self: pointer, slot: int) {.importc: "QVBoxLayout_override_virtual_heightForWidth".}
proc fQVBoxLayout_virtualbase_minimumHeightForWidth(self: pointer, param1: cint): cint{.importc: "QVBoxLayout_virtualbase_minimumHeightForWidth".}
proc fcQVBoxLayout_override_virtual_minimumHeightForWidth(self: pointer, slot: int) {.importc: "QVBoxLayout_override_virtual_minimumHeightForWidth".}
proc fQVBoxLayout_virtualbase_expandingDirections(self: pointer, ): cint{.importc: "QVBoxLayout_virtualbase_expandingDirections".}
proc fcQVBoxLayout_override_virtual_expandingDirections(self: pointer, slot: int) {.importc: "QVBoxLayout_override_virtual_expandingDirections".}
proc fQVBoxLayout_virtualbase_invalidate(self: pointer, ): void{.importc: "QVBoxLayout_virtualbase_invalidate".}
proc fcQVBoxLayout_override_virtual_invalidate(self: pointer, slot: int) {.importc: "QVBoxLayout_override_virtual_invalidate".}
proc fQVBoxLayout_virtualbase_itemAt(self: pointer, param1: cint): pointer{.importc: "QVBoxLayout_virtualbase_itemAt".}
proc fcQVBoxLayout_override_virtual_itemAt(self: pointer, slot: int) {.importc: "QVBoxLayout_override_virtual_itemAt".}
proc fQVBoxLayout_virtualbase_takeAt(self: pointer, param1: cint): pointer{.importc: "QVBoxLayout_virtualbase_takeAt".}
proc fcQVBoxLayout_override_virtual_takeAt(self: pointer, slot: int) {.importc: "QVBoxLayout_override_virtual_takeAt".}
proc fQVBoxLayout_virtualbase_count(self: pointer, ): cint{.importc: "QVBoxLayout_virtualbase_count".}
proc fcQVBoxLayout_override_virtual_count(self: pointer, slot: int) {.importc: "QVBoxLayout_override_virtual_count".}
proc fQVBoxLayout_virtualbase_setGeometry(self: pointer, geometry: pointer): void{.importc: "QVBoxLayout_virtualbase_setGeometry".}
proc fcQVBoxLayout_override_virtual_setGeometry(self: pointer, slot: int) {.importc: "QVBoxLayout_override_virtual_setGeometry".}
proc fQVBoxLayout_virtualbase_geometry(self: pointer, ): pointer{.importc: "QVBoxLayout_virtualbase_geometry".}
proc fcQVBoxLayout_override_virtual_geometry(self: pointer, slot: int) {.importc: "QVBoxLayout_override_virtual_geometry".}
proc fQVBoxLayout_virtualbase_indexOf(self: pointer, param1: pointer): cint{.importc: "QVBoxLayout_virtualbase_indexOf".}
proc fcQVBoxLayout_override_virtual_indexOf(self: pointer, slot: int) {.importc: "QVBoxLayout_override_virtual_indexOf".}
proc fQVBoxLayout_virtualbase_isEmpty(self: pointer, ): bool{.importc: "QVBoxLayout_virtualbase_isEmpty".}
proc fcQVBoxLayout_override_virtual_isEmpty(self: pointer, slot: int) {.importc: "QVBoxLayout_override_virtual_isEmpty".}
proc fQVBoxLayout_virtualbase_controlTypes(self: pointer, ): cint{.importc: "QVBoxLayout_virtualbase_controlTypes".}
proc fcQVBoxLayout_override_virtual_controlTypes(self: pointer, slot: int) {.importc: "QVBoxLayout_override_virtual_controlTypes".}
proc fQVBoxLayout_virtualbase_replaceWidget(self: pointer, fromVal: pointer, to: pointer, options: cint): pointer{.importc: "QVBoxLayout_virtualbase_replaceWidget".}
proc fcQVBoxLayout_override_virtual_replaceWidget(self: pointer, slot: int) {.importc: "QVBoxLayout_override_virtual_replaceWidget".}
proc fQVBoxLayout_virtualbase_layout(self: pointer, ): pointer{.importc: "QVBoxLayout_virtualbase_layout".}
proc fcQVBoxLayout_override_virtual_layout(self: pointer, slot: int) {.importc: "QVBoxLayout_override_virtual_layout".}
proc fQVBoxLayout_virtualbase_childEvent(self: pointer, e: pointer): void{.importc: "QVBoxLayout_virtualbase_childEvent".}
proc fcQVBoxLayout_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QVBoxLayout_override_virtual_childEvent".}
proc fQVBoxLayout_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QVBoxLayout_virtualbase_event".}
proc fcQVBoxLayout_override_virtual_event(self: pointer, slot: int) {.importc: "QVBoxLayout_override_virtual_event".}
proc fQVBoxLayout_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QVBoxLayout_virtualbase_eventFilter".}
proc fcQVBoxLayout_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QVBoxLayout_override_virtual_eventFilter".}
proc fQVBoxLayout_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QVBoxLayout_virtualbase_timerEvent".}
proc fcQVBoxLayout_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QVBoxLayout_override_virtual_timerEvent".}
proc fQVBoxLayout_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QVBoxLayout_virtualbase_customEvent".}
proc fcQVBoxLayout_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QVBoxLayout_override_virtual_customEvent".}
proc fQVBoxLayout_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QVBoxLayout_virtualbase_connectNotify".}
proc fcQVBoxLayout_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QVBoxLayout_override_virtual_connectNotify".}
proc fQVBoxLayout_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QVBoxLayout_virtualbase_disconnectNotify".}
proc fcQVBoxLayout_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QVBoxLayout_override_virtual_disconnectNotify".}
proc fQVBoxLayout_virtualbase_widget(self: pointer, ): pointer{.importc: "QVBoxLayout_virtualbase_widget".}
proc fcQVBoxLayout_override_virtual_widget(self: pointer, slot: int) {.importc: "QVBoxLayout_override_virtual_widget".}
proc fQVBoxLayout_virtualbase_spacerItem(self: pointer, ): pointer{.importc: "QVBoxLayout_virtualbase_spacerItem".}
proc fcQVBoxLayout_override_virtual_spacerItem(self: pointer, slot: int) {.importc: "QVBoxLayout_override_virtual_spacerItem".}
proc fcQVBoxLayout_staticMetaObject(): pointer {.importc: "QVBoxLayout_staticMetaObject".}
proc fcQVBoxLayout_delete(self: pointer) {.importc: "QVBoxLayout_delete".}


func init*(T: type gen_qboxlayout_types.QBoxLayout, h: ptr cQBoxLayout): gen_qboxlayout_types.QBoxLayout =
  T(h: h)
proc create*(T: type gen_qboxlayout_types.QBoxLayout, param1: cint): gen_qboxlayout_types.QBoxLayout =
  gen_qboxlayout_types.QBoxLayout.init(fcQBoxLayout_new(cint(param1)))

proc create*(T: type gen_qboxlayout_types.QBoxLayout, param1: cint, parent: gen_qwidget_types.QWidget): gen_qboxlayout_types.QBoxLayout =
  gen_qboxlayout_types.QBoxLayout.init(fcQBoxLayout_new2(cint(param1), parent.h))

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

proc QBoxLayoutmetaObject*(self: gen_qboxlayout_types.QBoxLayout, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fQBoxLayout_virtualbase_metaObject(self.h))

type QBoxLayoutmetaObjectProc* = proc(): gen_qobjectdefs_types.QMetaObject
proc onmetaObject*(self: gen_qboxlayout_types.QBoxLayout, slot: QBoxLayoutmetaObjectProc) =
  # TODO check subclass
  var tmp = new QBoxLayoutmetaObjectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQBoxLayout_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QBoxLayout_metaObject(self: ptr cQBoxLayout, slot: int): pointer {.exportc: "miqt_exec_callback_QBoxLayout_metaObject ".} =
  var nimfunc = cast[ptr QBoxLayoutmetaObjectProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QBoxLayoutmetacast*(self: gen_qboxlayout_types.QBoxLayout, param1: cstring): pointer =
  fQBoxLayout_virtualbase_metacast(self.h, param1)

type QBoxLayoutmetacastProc* = proc(param1: cstring): pointer
proc onmetacast*(self: gen_qboxlayout_types.QBoxLayout, slot: QBoxLayoutmetacastProc) =
  # TODO check subclass
  var tmp = new QBoxLayoutmetacastProc
  tmp[] = slot
  GC_ref(tmp)
  fcQBoxLayout_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QBoxLayout_metacast(self: ptr cQBoxLayout, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QBoxLayout_metacast ".} =
  var nimfunc = cast[ptr QBoxLayoutmetacastProc](cast[pointer](slot))
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QBoxLayoutmetacall*(self: gen_qboxlayout_types.QBoxLayout, param1: cint, param2: cint, param3: pointer): cint =
  fQBoxLayout_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QBoxLayoutmetacallProc* = proc(param1: cint, param2: cint, param3: pointer): cint
proc onmetacall*(self: gen_qboxlayout_types.QBoxLayout, slot: QBoxLayoutmetacallProc) =
  # TODO check subclass
  var tmp = new QBoxLayoutmetacallProc
  tmp[] = slot
  GC_ref(tmp)
  fcQBoxLayout_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QBoxLayout_metacall(self: ptr cQBoxLayout, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QBoxLayout_metacall ".} =
  var nimfunc = cast[ptr QBoxLayoutmetacallProc](cast[pointer](slot))
  let slotval1 = cint(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QBoxLayoutaddItem*(self: gen_qboxlayout_types.QBoxLayout, param1: gen_qlayoutitem_types.QLayoutItem): void =
  fQBoxLayout_virtualbase_addItem(self.h, param1.h)

type QBoxLayoutaddItemProc* = proc(param1: gen_qlayoutitem_types.QLayoutItem): void
proc onaddItem*(self: gen_qboxlayout_types.QBoxLayout, slot: QBoxLayoutaddItemProc) =
  # TODO check subclass
  var tmp = new QBoxLayoutaddItemProc
  tmp[] = slot
  GC_ref(tmp)
  fcQBoxLayout_override_virtual_addItem(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QBoxLayout_addItem(self: ptr cQBoxLayout, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QBoxLayout_addItem ".} =
  var nimfunc = cast[ptr QBoxLayoutaddItemProc](cast[pointer](slot))
  let slotval1 = gen_qlayoutitem_types.QLayoutItem(h: param1)


  nimfunc[](slotval1)
proc QBoxLayoutspacing*(self: gen_qboxlayout_types.QBoxLayout, ): cint =
  fQBoxLayout_virtualbase_spacing(self.h)

type QBoxLayoutspacingProc* = proc(): cint
proc onspacing*(self: gen_qboxlayout_types.QBoxLayout, slot: QBoxLayoutspacingProc) =
  # TODO check subclass
  var tmp = new QBoxLayoutspacingProc
  tmp[] = slot
  GC_ref(tmp)
  fcQBoxLayout_override_virtual_spacing(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QBoxLayout_spacing(self: ptr cQBoxLayout, slot: int): cint {.exportc: "miqt_exec_callback_QBoxLayout_spacing ".} =
  var nimfunc = cast[ptr QBoxLayoutspacingProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QBoxLayoutsetSpacing*(self: gen_qboxlayout_types.QBoxLayout, spacing: cint): void =
  fQBoxLayout_virtualbase_setSpacing(self.h, spacing)

type QBoxLayoutsetSpacingProc* = proc(spacing: cint): void
proc onsetSpacing*(self: gen_qboxlayout_types.QBoxLayout, slot: QBoxLayoutsetSpacingProc) =
  # TODO check subclass
  var tmp = new QBoxLayoutsetSpacingProc
  tmp[] = slot
  GC_ref(tmp)
  fcQBoxLayout_override_virtual_setSpacing(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QBoxLayout_setSpacing(self: ptr cQBoxLayout, slot: int, spacing: cint): void {.exportc: "miqt_exec_callback_QBoxLayout_setSpacing ".} =
  var nimfunc = cast[ptr QBoxLayoutsetSpacingProc](cast[pointer](slot))
  let slotval1 = spacing


  nimfunc[](slotval1)
proc QBoxLayoutsizeHint*(self: gen_qboxlayout_types.QBoxLayout, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fQBoxLayout_virtualbase_sizeHint(self.h))

type QBoxLayoutsizeHintProc* = proc(): gen_qsize_types.QSize
proc onsizeHint*(self: gen_qboxlayout_types.QBoxLayout, slot: QBoxLayoutsizeHintProc) =
  # TODO check subclass
  var tmp = new QBoxLayoutsizeHintProc
  tmp[] = slot
  GC_ref(tmp)
  fcQBoxLayout_override_virtual_sizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QBoxLayout_sizeHint(self: ptr cQBoxLayout, slot: int): pointer {.exportc: "miqt_exec_callback_QBoxLayout_sizeHint ".} =
  var nimfunc = cast[ptr QBoxLayoutsizeHintProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QBoxLayoutminimumSize*(self: gen_qboxlayout_types.QBoxLayout, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fQBoxLayout_virtualbase_minimumSize(self.h))

type QBoxLayoutminimumSizeProc* = proc(): gen_qsize_types.QSize
proc onminimumSize*(self: gen_qboxlayout_types.QBoxLayout, slot: QBoxLayoutminimumSizeProc) =
  # TODO check subclass
  var tmp = new QBoxLayoutminimumSizeProc
  tmp[] = slot
  GC_ref(tmp)
  fcQBoxLayout_override_virtual_minimumSize(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QBoxLayout_minimumSize(self: ptr cQBoxLayout, slot: int): pointer {.exportc: "miqt_exec_callback_QBoxLayout_minimumSize ".} =
  var nimfunc = cast[ptr QBoxLayoutminimumSizeProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QBoxLayoutmaximumSize*(self: gen_qboxlayout_types.QBoxLayout, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fQBoxLayout_virtualbase_maximumSize(self.h))

type QBoxLayoutmaximumSizeProc* = proc(): gen_qsize_types.QSize
proc onmaximumSize*(self: gen_qboxlayout_types.QBoxLayout, slot: QBoxLayoutmaximumSizeProc) =
  # TODO check subclass
  var tmp = new QBoxLayoutmaximumSizeProc
  tmp[] = slot
  GC_ref(tmp)
  fcQBoxLayout_override_virtual_maximumSize(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QBoxLayout_maximumSize(self: ptr cQBoxLayout, slot: int): pointer {.exportc: "miqt_exec_callback_QBoxLayout_maximumSize ".} =
  var nimfunc = cast[ptr QBoxLayoutmaximumSizeProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QBoxLayouthasHeightForWidth*(self: gen_qboxlayout_types.QBoxLayout, ): bool =
  fQBoxLayout_virtualbase_hasHeightForWidth(self.h)

type QBoxLayouthasHeightForWidthProc* = proc(): bool
proc onhasHeightForWidth*(self: gen_qboxlayout_types.QBoxLayout, slot: QBoxLayouthasHeightForWidthProc) =
  # TODO check subclass
  var tmp = new QBoxLayouthasHeightForWidthProc
  tmp[] = slot
  GC_ref(tmp)
  fcQBoxLayout_override_virtual_hasHeightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QBoxLayout_hasHeightForWidth(self: ptr cQBoxLayout, slot: int): bool {.exportc: "miqt_exec_callback_QBoxLayout_hasHeightForWidth ".} =
  var nimfunc = cast[ptr QBoxLayouthasHeightForWidthProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QBoxLayoutheightForWidth*(self: gen_qboxlayout_types.QBoxLayout, param1: cint): cint =
  fQBoxLayout_virtualbase_heightForWidth(self.h, param1)

type QBoxLayoutheightForWidthProc* = proc(param1: cint): cint
proc onheightForWidth*(self: gen_qboxlayout_types.QBoxLayout, slot: QBoxLayoutheightForWidthProc) =
  # TODO check subclass
  var tmp = new QBoxLayoutheightForWidthProc
  tmp[] = slot
  GC_ref(tmp)
  fcQBoxLayout_override_virtual_heightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QBoxLayout_heightForWidth(self: ptr cQBoxLayout, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QBoxLayout_heightForWidth ".} =
  var nimfunc = cast[ptr QBoxLayoutheightForWidthProc](cast[pointer](slot))
  let slotval1 = param1


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QBoxLayoutminimumHeightForWidth*(self: gen_qboxlayout_types.QBoxLayout, param1: cint): cint =
  fQBoxLayout_virtualbase_minimumHeightForWidth(self.h, param1)

type QBoxLayoutminimumHeightForWidthProc* = proc(param1: cint): cint
proc onminimumHeightForWidth*(self: gen_qboxlayout_types.QBoxLayout, slot: QBoxLayoutminimumHeightForWidthProc) =
  # TODO check subclass
  var tmp = new QBoxLayoutminimumHeightForWidthProc
  tmp[] = slot
  GC_ref(tmp)
  fcQBoxLayout_override_virtual_minimumHeightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QBoxLayout_minimumHeightForWidth(self: ptr cQBoxLayout, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QBoxLayout_minimumHeightForWidth ".} =
  var nimfunc = cast[ptr QBoxLayoutminimumHeightForWidthProc](cast[pointer](slot))
  let slotval1 = param1


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QBoxLayoutexpandingDirections*(self: gen_qboxlayout_types.QBoxLayout, ): cint =
  cint(fQBoxLayout_virtualbase_expandingDirections(self.h))

type QBoxLayoutexpandingDirectionsProc* = proc(): cint
proc onexpandingDirections*(self: gen_qboxlayout_types.QBoxLayout, slot: QBoxLayoutexpandingDirectionsProc) =
  # TODO check subclass
  var tmp = new QBoxLayoutexpandingDirectionsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQBoxLayout_override_virtual_expandingDirections(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QBoxLayout_expandingDirections(self: ptr cQBoxLayout, slot: int): cint {.exportc: "miqt_exec_callback_QBoxLayout_expandingDirections ".} =
  var nimfunc = cast[ptr QBoxLayoutexpandingDirectionsProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  cint(virtualReturn)
proc QBoxLayoutinvalidate*(self: gen_qboxlayout_types.QBoxLayout, ): void =
  fQBoxLayout_virtualbase_invalidate(self.h)

type QBoxLayoutinvalidateProc* = proc(): void
proc oninvalidate*(self: gen_qboxlayout_types.QBoxLayout, slot: QBoxLayoutinvalidateProc) =
  # TODO check subclass
  var tmp = new QBoxLayoutinvalidateProc
  tmp[] = slot
  GC_ref(tmp)
  fcQBoxLayout_override_virtual_invalidate(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QBoxLayout_invalidate(self: ptr cQBoxLayout, slot: int): void {.exportc: "miqt_exec_callback_QBoxLayout_invalidate ".} =
  var nimfunc = cast[ptr QBoxLayoutinvalidateProc](cast[pointer](slot))

  nimfunc[]()
proc QBoxLayoutitemAt*(self: gen_qboxlayout_types.QBoxLayout, param1: cint): gen_qlayoutitem_types.QLayoutItem =
  gen_qlayoutitem_types.QLayoutItem(h: fQBoxLayout_virtualbase_itemAt(self.h, param1))

type QBoxLayoutitemAtProc* = proc(param1: cint): gen_qlayoutitem_types.QLayoutItem
proc onitemAt*(self: gen_qboxlayout_types.QBoxLayout, slot: QBoxLayoutitemAtProc) =
  # TODO check subclass
  var tmp = new QBoxLayoutitemAtProc
  tmp[] = slot
  GC_ref(tmp)
  fcQBoxLayout_override_virtual_itemAt(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QBoxLayout_itemAt(self: ptr cQBoxLayout, slot: int, param1: cint): pointer {.exportc: "miqt_exec_callback_QBoxLayout_itemAt ".} =
  var nimfunc = cast[ptr QBoxLayoutitemAtProc](cast[pointer](slot))
  let slotval1 = param1


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QBoxLayouttakeAt*(self: gen_qboxlayout_types.QBoxLayout, param1: cint): gen_qlayoutitem_types.QLayoutItem =
  gen_qlayoutitem_types.QLayoutItem(h: fQBoxLayout_virtualbase_takeAt(self.h, param1))

type QBoxLayouttakeAtProc* = proc(param1: cint): gen_qlayoutitem_types.QLayoutItem
proc ontakeAt*(self: gen_qboxlayout_types.QBoxLayout, slot: QBoxLayouttakeAtProc) =
  # TODO check subclass
  var tmp = new QBoxLayouttakeAtProc
  tmp[] = slot
  GC_ref(tmp)
  fcQBoxLayout_override_virtual_takeAt(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QBoxLayout_takeAt(self: ptr cQBoxLayout, slot: int, param1: cint): pointer {.exportc: "miqt_exec_callback_QBoxLayout_takeAt ".} =
  var nimfunc = cast[ptr QBoxLayouttakeAtProc](cast[pointer](slot))
  let slotval1 = param1


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QBoxLayoutcount*(self: gen_qboxlayout_types.QBoxLayout, ): cint =
  fQBoxLayout_virtualbase_count(self.h)

type QBoxLayoutcountProc* = proc(): cint
proc oncount*(self: gen_qboxlayout_types.QBoxLayout, slot: QBoxLayoutcountProc) =
  # TODO check subclass
  var tmp = new QBoxLayoutcountProc
  tmp[] = slot
  GC_ref(tmp)
  fcQBoxLayout_override_virtual_count(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QBoxLayout_count(self: ptr cQBoxLayout, slot: int): cint {.exportc: "miqt_exec_callback_QBoxLayout_count ".} =
  var nimfunc = cast[ptr QBoxLayoutcountProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QBoxLayoutsetGeometry*(self: gen_qboxlayout_types.QBoxLayout, geometry: gen_qrect_types.QRect): void =
  fQBoxLayout_virtualbase_setGeometry(self.h, geometry.h)

type QBoxLayoutsetGeometryProc* = proc(geometry: gen_qrect_types.QRect): void
proc onsetGeometry*(self: gen_qboxlayout_types.QBoxLayout, slot: QBoxLayoutsetGeometryProc) =
  # TODO check subclass
  var tmp = new QBoxLayoutsetGeometryProc
  tmp[] = slot
  GC_ref(tmp)
  fcQBoxLayout_override_virtual_setGeometry(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QBoxLayout_setGeometry(self: ptr cQBoxLayout, slot: int, geometry: pointer): void {.exportc: "miqt_exec_callback_QBoxLayout_setGeometry ".} =
  var nimfunc = cast[ptr QBoxLayoutsetGeometryProc](cast[pointer](slot))
  let slotval1 = gen_qrect_types.QRect(h: geometry)


  nimfunc[](slotval1)
proc QBoxLayoutgeometry*(self: gen_qboxlayout_types.QBoxLayout, ): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fQBoxLayout_virtualbase_geometry(self.h))

type QBoxLayoutgeometryProc* = proc(): gen_qrect_types.QRect
proc ongeometry*(self: gen_qboxlayout_types.QBoxLayout, slot: QBoxLayoutgeometryProc) =
  # TODO check subclass
  var tmp = new QBoxLayoutgeometryProc
  tmp[] = slot
  GC_ref(tmp)
  fcQBoxLayout_override_virtual_geometry(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QBoxLayout_geometry(self: ptr cQBoxLayout, slot: int): pointer {.exportc: "miqt_exec_callback_QBoxLayout_geometry ".} =
  var nimfunc = cast[ptr QBoxLayoutgeometryProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QBoxLayoutindexOf*(self: gen_qboxlayout_types.QBoxLayout, param1: gen_qwidget_types.QWidget): cint =
  fQBoxLayout_virtualbase_indexOf(self.h, param1.h)

type QBoxLayoutindexOfProc* = proc(param1: gen_qwidget_types.QWidget): cint
proc onindexOf*(self: gen_qboxlayout_types.QBoxLayout, slot: QBoxLayoutindexOfProc) =
  # TODO check subclass
  var tmp = new QBoxLayoutindexOfProc
  tmp[] = slot
  GC_ref(tmp)
  fcQBoxLayout_override_virtual_indexOf(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QBoxLayout_indexOf(self: ptr cQBoxLayout, slot: int, param1: pointer): cint {.exportc: "miqt_exec_callback_QBoxLayout_indexOf ".} =
  var nimfunc = cast[ptr QBoxLayoutindexOfProc](cast[pointer](slot))
  let slotval1 = gen_qwidget_types.QWidget(h: param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QBoxLayoutisEmpty*(self: gen_qboxlayout_types.QBoxLayout, ): bool =
  fQBoxLayout_virtualbase_isEmpty(self.h)

type QBoxLayoutisEmptyProc* = proc(): bool
proc onisEmpty*(self: gen_qboxlayout_types.QBoxLayout, slot: QBoxLayoutisEmptyProc) =
  # TODO check subclass
  var tmp = new QBoxLayoutisEmptyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQBoxLayout_override_virtual_isEmpty(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QBoxLayout_isEmpty(self: ptr cQBoxLayout, slot: int): bool {.exportc: "miqt_exec_callback_QBoxLayout_isEmpty ".} =
  var nimfunc = cast[ptr QBoxLayoutisEmptyProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QBoxLayoutcontrolTypes*(self: gen_qboxlayout_types.QBoxLayout, ): cint =
  cint(fQBoxLayout_virtualbase_controlTypes(self.h))

type QBoxLayoutcontrolTypesProc* = proc(): cint
proc oncontrolTypes*(self: gen_qboxlayout_types.QBoxLayout, slot: QBoxLayoutcontrolTypesProc) =
  # TODO check subclass
  var tmp = new QBoxLayoutcontrolTypesProc
  tmp[] = slot
  GC_ref(tmp)
  fcQBoxLayout_override_virtual_controlTypes(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QBoxLayout_controlTypes(self: ptr cQBoxLayout, slot: int): cint {.exportc: "miqt_exec_callback_QBoxLayout_controlTypes ".} =
  var nimfunc = cast[ptr QBoxLayoutcontrolTypesProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  cint(virtualReturn)
proc QBoxLayoutreplaceWidget*(self: gen_qboxlayout_types.QBoxLayout, fromVal: gen_qwidget_types.QWidget, to: gen_qwidget_types.QWidget, options: cint): gen_qlayoutitem_types.QLayoutItem =
  gen_qlayoutitem_types.QLayoutItem(h: fQBoxLayout_virtualbase_replaceWidget(self.h, fromVal.h, to.h, cint(options)))

type QBoxLayoutreplaceWidgetProc* = proc(fromVal: gen_qwidget_types.QWidget, to: gen_qwidget_types.QWidget, options: cint): gen_qlayoutitem_types.QLayoutItem
proc onreplaceWidget*(self: gen_qboxlayout_types.QBoxLayout, slot: QBoxLayoutreplaceWidgetProc) =
  # TODO check subclass
  var tmp = new QBoxLayoutreplaceWidgetProc
  tmp[] = slot
  GC_ref(tmp)
  fcQBoxLayout_override_virtual_replaceWidget(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QBoxLayout_replaceWidget(self: ptr cQBoxLayout, slot: int, fromVal: pointer, to: pointer, options: cint): pointer {.exportc: "miqt_exec_callback_QBoxLayout_replaceWidget ".} =
  var nimfunc = cast[ptr QBoxLayoutreplaceWidgetProc](cast[pointer](slot))
  let slotval1 = gen_qwidget_types.QWidget(h: fromVal)

  let slotval2 = gen_qwidget_types.QWidget(h: to)

  let slotval3 = cint(options)


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn.h
proc QBoxLayoutlayout*(self: gen_qboxlayout_types.QBoxLayout, ): gen_qlayout_types.QLayout =
  gen_qlayout_types.QLayout(h: fQBoxLayout_virtualbase_layout(self.h))

type QBoxLayoutlayoutProc* = proc(): gen_qlayout_types.QLayout
proc onlayout*(self: gen_qboxlayout_types.QBoxLayout, slot: QBoxLayoutlayoutProc) =
  # TODO check subclass
  var tmp = new QBoxLayoutlayoutProc
  tmp[] = slot
  GC_ref(tmp)
  fcQBoxLayout_override_virtual_layout(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QBoxLayout_layout(self: ptr cQBoxLayout, slot: int): pointer {.exportc: "miqt_exec_callback_QBoxLayout_layout ".} =
  var nimfunc = cast[ptr QBoxLayoutlayoutProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QBoxLayoutchildEvent*(self: gen_qboxlayout_types.QBoxLayout, e: gen_qcoreevent_types.QChildEvent): void =
  fQBoxLayout_virtualbase_childEvent(self.h, e.h)

type QBoxLayoutchildEventProc* = proc(e: gen_qcoreevent_types.QChildEvent): void
proc onchildEvent*(self: gen_qboxlayout_types.QBoxLayout, slot: QBoxLayoutchildEventProc) =
  # TODO check subclass
  var tmp = new QBoxLayoutchildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQBoxLayout_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QBoxLayout_childEvent(self: ptr cQBoxLayout, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QBoxLayout_childEvent ".} =
  var nimfunc = cast[ptr QBoxLayoutchildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: e)


  nimfunc[](slotval1)
proc QBoxLayoutevent*(self: gen_qboxlayout_types.QBoxLayout, event: gen_qcoreevent_types.QEvent): bool =
  fQBoxLayout_virtualbase_event(self.h, event.h)

type QBoxLayouteventProc* = proc(event: gen_qcoreevent_types.QEvent): bool
proc onevent*(self: gen_qboxlayout_types.QBoxLayout, slot: QBoxLayouteventProc) =
  # TODO check subclass
  var tmp = new QBoxLayouteventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQBoxLayout_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QBoxLayout_event(self: ptr cQBoxLayout, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QBoxLayout_event ".} =
  var nimfunc = cast[ptr QBoxLayouteventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QBoxLayouteventFilter*(self: gen_qboxlayout_types.QBoxLayout, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fQBoxLayout_virtualbase_eventFilter(self.h, watched.h, event.h)

type QBoxLayouteventFilterProc* = proc(watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool
proc oneventFilter*(self: gen_qboxlayout_types.QBoxLayout, slot: QBoxLayouteventFilterProc) =
  # TODO check subclass
  var tmp = new QBoxLayouteventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQBoxLayout_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QBoxLayout_eventFilter(self: ptr cQBoxLayout, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QBoxLayout_eventFilter ".} =
  var nimfunc = cast[ptr QBoxLayouteventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: watched)

  let slotval2 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QBoxLayouttimerEvent*(self: gen_qboxlayout_types.QBoxLayout, event: gen_qcoreevent_types.QTimerEvent): void =
  fQBoxLayout_virtualbase_timerEvent(self.h, event.h)

type QBoxLayouttimerEventProc* = proc(event: gen_qcoreevent_types.QTimerEvent): void
proc ontimerEvent*(self: gen_qboxlayout_types.QBoxLayout, slot: QBoxLayouttimerEventProc) =
  # TODO check subclass
  var tmp = new QBoxLayouttimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQBoxLayout_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QBoxLayout_timerEvent(self: ptr cQBoxLayout, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QBoxLayout_timerEvent ".} =
  var nimfunc = cast[ptr QBoxLayouttimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QBoxLayoutcustomEvent*(self: gen_qboxlayout_types.QBoxLayout, event: gen_qcoreevent_types.QEvent): void =
  fQBoxLayout_virtualbase_customEvent(self.h, event.h)

type QBoxLayoutcustomEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc oncustomEvent*(self: gen_qboxlayout_types.QBoxLayout, slot: QBoxLayoutcustomEventProc) =
  # TODO check subclass
  var tmp = new QBoxLayoutcustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQBoxLayout_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QBoxLayout_customEvent(self: ptr cQBoxLayout, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QBoxLayout_customEvent ".} =
  var nimfunc = cast[ptr QBoxLayoutcustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QBoxLayoutconnectNotify*(self: gen_qboxlayout_types.QBoxLayout, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQBoxLayout_virtualbase_connectNotify(self.h, signal.h)

type QBoxLayoutconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc onconnectNotify*(self: gen_qboxlayout_types.QBoxLayout, slot: QBoxLayoutconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QBoxLayoutconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQBoxLayout_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QBoxLayout_connectNotify(self: ptr cQBoxLayout, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QBoxLayout_connectNotify ".} =
  var nimfunc = cast[ptr QBoxLayoutconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QBoxLayoutdisconnectNotify*(self: gen_qboxlayout_types.QBoxLayout, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQBoxLayout_virtualbase_disconnectNotify(self.h, signal.h)

type QBoxLayoutdisconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qboxlayout_types.QBoxLayout, slot: QBoxLayoutdisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QBoxLayoutdisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQBoxLayout_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QBoxLayout_disconnectNotify(self: ptr cQBoxLayout, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QBoxLayout_disconnectNotify ".} =
  var nimfunc = cast[ptr QBoxLayoutdisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QBoxLayoutwidget*(self: gen_qboxlayout_types.QBoxLayout, ): gen_qwidget_types.QWidget =
  gen_qwidget_types.QWidget(h: fQBoxLayout_virtualbase_widget(self.h))

type QBoxLayoutwidgetProc* = proc(): gen_qwidget_types.QWidget
proc onwidget*(self: gen_qboxlayout_types.QBoxLayout, slot: QBoxLayoutwidgetProc) =
  # TODO check subclass
  var tmp = new QBoxLayoutwidgetProc
  tmp[] = slot
  GC_ref(tmp)
  fcQBoxLayout_override_virtual_widget(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QBoxLayout_widget(self: ptr cQBoxLayout, slot: int): pointer {.exportc: "miqt_exec_callback_QBoxLayout_widget ".} =
  var nimfunc = cast[ptr QBoxLayoutwidgetProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QBoxLayoutspacerItem*(self: gen_qboxlayout_types.QBoxLayout, ): gen_qlayoutitem_types.QSpacerItem =
  gen_qlayoutitem_types.QSpacerItem(h: fQBoxLayout_virtualbase_spacerItem(self.h))

type QBoxLayoutspacerItemProc* = proc(): gen_qlayoutitem_types.QSpacerItem
proc onspacerItem*(self: gen_qboxlayout_types.QBoxLayout, slot: QBoxLayoutspacerItemProc) =
  # TODO check subclass
  var tmp = new QBoxLayoutspacerItemProc
  tmp[] = slot
  GC_ref(tmp)
  fcQBoxLayout_override_virtual_spacerItem(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QBoxLayout_spacerItem(self: ptr cQBoxLayout, slot: int): pointer {.exportc: "miqt_exec_callback_QBoxLayout_spacerItem ".} =
  var nimfunc = cast[ptr QBoxLayoutspacerItemProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc staticMetaObject*(_: type gen_qboxlayout_types.QBoxLayout): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQBoxLayout_staticMetaObject())
proc delete*(self: gen_qboxlayout_types.QBoxLayout) =
  fcQBoxLayout_delete(self.h)

func init*(T: type gen_qboxlayout_types.QHBoxLayout, h: ptr cQHBoxLayout): gen_qboxlayout_types.QHBoxLayout =
  T(h: h)
proc create*(T: type gen_qboxlayout_types.QHBoxLayout, parent: gen_qwidget_types.QWidget): gen_qboxlayout_types.QHBoxLayout =
  gen_qboxlayout_types.QHBoxLayout.init(fcQHBoxLayout_new(parent.h))

proc create*(T: type gen_qboxlayout_types.QHBoxLayout, ): gen_qboxlayout_types.QHBoxLayout =
  gen_qboxlayout_types.QHBoxLayout.init(fcQHBoxLayout_new2())

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

proc QHBoxLayoutmetaObject*(self: gen_qboxlayout_types.QHBoxLayout, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fQHBoxLayout_virtualbase_metaObject(self.h))

type QHBoxLayoutmetaObjectProc* = proc(): gen_qobjectdefs_types.QMetaObject
proc onmetaObject*(self: gen_qboxlayout_types.QHBoxLayout, slot: QHBoxLayoutmetaObjectProc) =
  # TODO check subclass
  var tmp = new QHBoxLayoutmetaObjectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQHBoxLayout_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHBoxLayout_metaObject(self: ptr cQHBoxLayout, slot: int): pointer {.exportc: "miqt_exec_callback_QHBoxLayout_metaObject ".} =
  var nimfunc = cast[ptr QHBoxLayoutmetaObjectProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QHBoxLayoutmetacast*(self: gen_qboxlayout_types.QHBoxLayout, param1: cstring): pointer =
  fQHBoxLayout_virtualbase_metacast(self.h, param1)

type QHBoxLayoutmetacastProc* = proc(param1: cstring): pointer
proc onmetacast*(self: gen_qboxlayout_types.QHBoxLayout, slot: QHBoxLayoutmetacastProc) =
  # TODO check subclass
  var tmp = new QHBoxLayoutmetacastProc
  tmp[] = slot
  GC_ref(tmp)
  fcQHBoxLayout_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHBoxLayout_metacast(self: ptr cQHBoxLayout, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QHBoxLayout_metacast ".} =
  var nimfunc = cast[ptr QHBoxLayoutmetacastProc](cast[pointer](slot))
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QHBoxLayoutmetacall*(self: gen_qboxlayout_types.QHBoxLayout, param1: cint, param2: cint, param3: pointer): cint =
  fQHBoxLayout_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QHBoxLayoutmetacallProc* = proc(param1: cint, param2: cint, param3: pointer): cint
proc onmetacall*(self: gen_qboxlayout_types.QHBoxLayout, slot: QHBoxLayoutmetacallProc) =
  # TODO check subclass
  var tmp = new QHBoxLayoutmetacallProc
  tmp[] = slot
  GC_ref(tmp)
  fcQHBoxLayout_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHBoxLayout_metacall(self: ptr cQHBoxLayout, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QHBoxLayout_metacall ".} =
  var nimfunc = cast[ptr QHBoxLayoutmetacallProc](cast[pointer](slot))
  let slotval1 = cint(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QHBoxLayoutaddItem*(self: gen_qboxlayout_types.QHBoxLayout, param1: gen_qlayoutitem_types.QLayoutItem): void =
  fQHBoxLayout_virtualbase_addItem(self.h, param1.h)

type QHBoxLayoutaddItemProc* = proc(param1: gen_qlayoutitem_types.QLayoutItem): void
proc onaddItem*(self: gen_qboxlayout_types.QHBoxLayout, slot: QHBoxLayoutaddItemProc) =
  # TODO check subclass
  var tmp = new QHBoxLayoutaddItemProc
  tmp[] = slot
  GC_ref(tmp)
  fcQHBoxLayout_override_virtual_addItem(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHBoxLayout_addItem(self: ptr cQHBoxLayout, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QHBoxLayout_addItem ".} =
  var nimfunc = cast[ptr QHBoxLayoutaddItemProc](cast[pointer](slot))
  let slotval1 = gen_qlayoutitem_types.QLayoutItem(h: param1)


  nimfunc[](slotval1)
proc QHBoxLayoutspacing*(self: gen_qboxlayout_types.QHBoxLayout, ): cint =
  fQHBoxLayout_virtualbase_spacing(self.h)

type QHBoxLayoutspacingProc* = proc(): cint
proc onspacing*(self: gen_qboxlayout_types.QHBoxLayout, slot: QHBoxLayoutspacingProc) =
  # TODO check subclass
  var tmp = new QHBoxLayoutspacingProc
  tmp[] = slot
  GC_ref(tmp)
  fcQHBoxLayout_override_virtual_spacing(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHBoxLayout_spacing(self: ptr cQHBoxLayout, slot: int): cint {.exportc: "miqt_exec_callback_QHBoxLayout_spacing ".} =
  var nimfunc = cast[ptr QHBoxLayoutspacingProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QHBoxLayoutsetSpacing*(self: gen_qboxlayout_types.QHBoxLayout, spacing: cint): void =
  fQHBoxLayout_virtualbase_setSpacing(self.h, spacing)

type QHBoxLayoutsetSpacingProc* = proc(spacing: cint): void
proc onsetSpacing*(self: gen_qboxlayout_types.QHBoxLayout, slot: QHBoxLayoutsetSpacingProc) =
  # TODO check subclass
  var tmp = new QHBoxLayoutsetSpacingProc
  tmp[] = slot
  GC_ref(tmp)
  fcQHBoxLayout_override_virtual_setSpacing(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHBoxLayout_setSpacing(self: ptr cQHBoxLayout, slot: int, spacing: cint): void {.exportc: "miqt_exec_callback_QHBoxLayout_setSpacing ".} =
  var nimfunc = cast[ptr QHBoxLayoutsetSpacingProc](cast[pointer](slot))
  let slotval1 = spacing


  nimfunc[](slotval1)
proc QHBoxLayoutsizeHint*(self: gen_qboxlayout_types.QHBoxLayout, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fQHBoxLayout_virtualbase_sizeHint(self.h))

type QHBoxLayoutsizeHintProc* = proc(): gen_qsize_types.QSize
proc onsizeHint*(self: gen_qboxlayout_types.QHBoxLayout, slot: QHBoxLayoutsizeHintProc) =
  # TODO check subclass
  var tmp = new QHBoxLayoutsizeHintProc
  tmp[] = slot
  GC_ref(tmp)
  fcQHBoxLayout_override_virtual_sizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHBoxLayout_sizeHint(self: ptr cQHBoxLayout, slot: int): pointer {.exportc: "miqt_exec_callback_QHBoxLayout_sizeHint ".} =
  var nimfunc = cast[ptr QHBoxLayoutsizeHintProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QHBoxLayoutminimumSize*(self: gen_qboxlayout_types.QHBoxLayout, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fQHBoxLayout_virtualbase_minimumSize(self.h))

type QHBoxLayoutminimumSizeProc* = proc(): gen_qsize_types.QSize
proc onminimumSize*(self: gen_qboxlayout_types.QHBoxLayout, slot: QHBoxLayoutminimumSizeProc) =
  # TODO check subclass
  var tmp = new QHBoxLayoutminimumSizeProc
  tmp[] = slot
  GC_ref(tmp)
  fcQHBoxLayout_override_virtual_minimumSize(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHBoxLayout_minimumSize(self: ptr cQHBoxLayout, slot: int): pointer {.exportc: "miqt_exec_callback_QHBoxLayout_minimumSize ".} =
  var nimfunc = cast[ptr QHBoxLayoutminimumSizeProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QHBoxLayoutmaximumSize*(self: gen_qboxlayout_types.QHBoxLayout, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fQHBoxLayout_virtualbase_maximumSize(self.h))

type QHBoxLayoutmaximumSizeProc* = proc(): gen_qsize_types.QSize
proc onmaximumSize*(self: gen_qboxlayout_types.QHBoxLayout, slot: QHBoxLayoutmaximumSizeProc) =
  # TODO check subclass
  var tmp = new QHBoxLayoutmaximumSizeProc
  tmp[] = slot
  GC_ref(tmp)
  fcQHBoxLayout_override_virtual_maximumSize(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHBoxLayout_maximumSize(self: ptr cQHBoxLayout, slot: int): pointer {.exportc: "miqt_exec_callback_QHBoxLayout_maximumSize ".} =
  var nimfunc = cast[ptr QHBoxLayoutmaximumSizeProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QHBoxLayouthasHeightForWidth*(self: gen_qboxlayout_types.QHBoxLayout, ): bool =
  fQHBoxLayout_virtualbase_hasHeightForWidth(self.h)

type QHBoxLayouthasHeightForWidthProc* = proc(): bool
proc onhasHeightForWidth*(self: gen_qboxlayout_types.QHBoxLayout, slot: QHBoxLayouthasHeightForWidthProc) =
  # TODO check subclass
  var tmp = new QHBoxLayouthasHeightForWidthProc
  tmp[] = slot
  GC_ref(tmp)
  fcQHBoxLayout_override_virtual_hasHeightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHBoxLayout_hasHeightForWidth(self: ptr cQHBoxLayout, slot: int): bool {.exportc: "miqt_exec_callback_QHBoxLayout_hasHeightForWidth ".} =
  var nimfunc = cast[ptr QHBoxLayouthasHeightForWidthProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QHBoxLayoutheightForWidth*(self: gen_qboxlayout_types.QHBoxLayout, param1: cint): cint =
  fQHBoxLayout_virtualbase_heightForWidth(self.h, param1)

type QHBoxLayoutheightForWidthProc* = proc(param1: cint): cint
proc onheightForWidth*(self: gen_qboxlayout_types.QHBoxLayout, slot: QHBoxLayoutheightForWidthProc) =
  # TODO check subclass
  var tmp = new QHBoxLayoutheightForWidthProc
  tmp[] = slot
  GC_ref(tmp)
  fcQHBoxLayout_override_virtual_heightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHBoxLayout_heightForWidth(self: ptr cQHBoxLayout, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QHBoxLayout_heightForWidth ".} =
  var nimfunc = cast[ptr QHBoxLayoutheightForWidthProc](cast[pointer](slot))
  let slotval1 = param1


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QHBoxLayoutminimumHeightForWidth*(self: gen_qboxlayout_types.QHBoxLayout, param1: cint): cint =
  fQHBoxLayout_virtualbase_minimumHeightForWidth(self.h, param1)

type QHBoxLayoutminimumHeightForWidthProc* = proc(param1: cint): cint
proc onminimumHeightForWidth*(self: gen_qboxlayout_types.QHBoxLayout, slot: QHBoxLayoutminimumHeightForWidthProc) =
  # TODO check subclass
  var tmp = new QHBoxLayoutminimumHeightForWidthProc
  tmp[] = slot
  GC_ref(tmp)
  fcQHBoxLayout_override_virtual_minimumHeightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHBoxLayout_minimumHeightForWidth(self: ptr cQHBoxLayout, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QHBoxLayout_minimumHeightForWidth ".} =
  var nimfunc = cast[ptr QHBoxLayoutminimumHeightForWidthProc](cast[pointer](slot))
  let slotval1 = param1


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QHBoxLayoutexpandingDirections*(self: gen_qboxlayout_types.QHBoxLayout, ): cint =
  cint(fQHBoxLayout_virtualbase_expandingDirections(self.h))

type QHBoxLayoutexpandingDirectionsProc* = proc(): cint
proc onexpandingDirections*(self: gen_qboxlayout_types.QHBoxLayout, slot: QHBoxLayoutexpandingDirectionsProc) =
  # TODO check subclass
  var tmp = new QHBoxLayoutexpandingDirectionsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQHBoxLayout_override_virtual_expandingDirections(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHBoxLayout_expandingDirections(self: ptr cQHBoxLayout, slot: int): cint {.exportc: "miqt_exec_callback_QHBoxLayout_expandingDirections ".} =
  var nimfunc = cast[ptr QHBoxLayoutexpandingDirectionsProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  cint(virtualReturn)
proc QHBoxLayoutinvalidate*(self: gen_qboxlayout_types.QHBoxLayout, ): void =
  fQHBoxLayout_virtualbase_invalidate(self.h)

type QHBoxLayoutinvalidateProc* = proc(): void
proc oninvalidate*(self: gen_qboxlayout_types.QHBoxLayout, slot: QHBoxLayoutinvalidateProc) =
  # TODO check subclass
  var tmp = new QHBoxLayoutinvalidateProc
  tmp[] = slot
  GC_ref(tmp)
  fcQHBoxLayout_override_virtual_invalidate(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHBoxLayout_invalidate(self: ptr cQHBoxLayout, slot: int): void {.exportc: "miqt_exec_callback_QHBoxLayout_invalidate ".} =
  var nimfunc = cast[ptr QHBoxLayoutinvalidateProc](cast[pointer](slot))

  nimfunc[]()
proc QHBoxLayoutitemAt*(self: gen_qboxlayout_types.QHBoxLayout, param1: cint): gen_qlayoutitem_types.QLayoutItem =
  gen_qlayoutitem_types.QLayoutItem(h: fQHBoxLayout_virtualbase_itemAt(self.h, param1))

type QHBoxLayoutitemAtProc* = proc(param1: cint): gen_qlayoutitem_types.QLayoutItem
proc onitemAt*(self: gen_qboxlayout_types.QHBoxLayout, slot: QHBoxLayoutitemAtProc) =
  # TODO check subclass
  var tmp = new QHBoxLayoutitemAtProc
  tmp[] = slot
  GC_ref(tmp)
  fcQHBoxLayout_override_virtual_itemAt(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHBoxLayout_itemAt(self: ptr cQHBoxLayout, slot: int, param1: cint): pointer {.exportc: "miqt_exec_callback_QHBoxLayout_itemAt ".} =
  var nimfunc = cast[ptr QHBoxLayoutitemAtProc](cast[pointer](slot))
  let slotval1 = param1


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QHBoxLayouttakeAt*(self: gen_qboxlayout_types.QHBoxLayout, param1: cint): gen_qlayoutitem_types.QLayoutItem =
  gen_qlayoutitem_types.QLayoutItem(h: fQHBoxLayout_virtualbase_takeAt(self.h, param1))

type QHBoxLayouttakeAtProc* = proc(param1: cint): gen_qlayoutitem_types.QLayoutItem
proc ontakeAt*(self: gen_qboxlayout_types.QHBoxLayout, slot: QHBoxLayouttakeAtProc) =
  # TODO check subclass
  var tmp = new QHBoxLayouttakeAtProc
  tmp[] = slot
  GC_ref(tmp)
  fcQHBoxLayout_override_virtual_takeAt(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHBoxLayout_takeAt(self: ptr cQHBoxLayout, slot: int, param1: cint): pointer {.exportc: "miqt_exec_callback_QHBoxLayout_takeAt ".} =
  var nimfunc = cast[ptr QHBoxLayouttakeAtProc](cast[pointer](slot))
  let slotval1 = param1


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QHBoxLayoutcount*(self: gen_qboxlayout_types.QHBoxLayout, ): cint =
  fQHBoxLayout_virtualbase_count(self.h)

type QHBoxLayoutcountProc* = proc(): cint
proc oncount*(self: gen_qboxlayout_types.QHBoxLayout, slot: QHBoxLayoutcountProc) =
  # TODO check subclass
  var tmp = new QHBoxLayoutcountProc
  tmp[] = slot
  GC_ref(tmp)
  fcQHBoxLayout_override_virtual_count(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHBoxLayout_count(self: ptr cQHBoxLayout, slot: int): cint {.exportc: "miqt_exec_callback_QHBoxLayout_count ".} =
  var nimfunc = cast[ptr QHBoxLayoutcountProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QHBoxLayoutsetGeometry*(self: gen_qboxlayout_types.QHBoxLayout, geometry: gen_qrect_types.QRect): void =
  fQHBoxLayout_virtualbase_setGeometry(self.h, geometry.h)

type QHBoxLayoutsetGeometryProc* = proc(geometry: gen_qrect_types.QRect): void
proc onsetGeometry*(self: gen_qboxlayout_types.QHBoxLayout, slot: QHBoxLayoutsetGeometryProc) =
  # TODO check subclass
  var tmp = new QHBoxLayoutsetGeometryProc
  tmp[] = slot
  GC_ref(tmp)
  fcQHBoxLayout_override_virtual_setGeometry(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHBoxLayout_setGeometry(self: ptr cQHBoxLayout, slot: int, geometry: pointer): void {.exportc: "miqt_exec_callback_QHBoxLayout_setGeometry ".} =
  var nimfunc = cast[ptr QHBoxLayoutsetGeometryProc](cast[pointer](slot))
  let slotval1 = gen_qrect_types.QRect(h: geometry)


  nimfunc[](slotval1)
proc QHBoxLayoutgeometry*(self: gen_qboxlayout_types.QHBoxLayout, ): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fQHBoxLayout_virtualbase_geometry(self.h))

type QHBoxLayoutgeometryProc* = proc(): gen_qrect_types.QRect
proc ongeometry*(self: gen_qboxlayout_types.QHBoxLayout, slot: QHBoxLayoutgeometryProc) =
  # TODO check subclass
  var tmp = new QHBoxLayoutgeometryProc
  tmp[] = slot
  GC_ref(tmp)
  fcQHBoxLayout_override_virtual_geometry(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHBoxLayout_geometry(self: ptr cQHBoxLayout, slot: int): pointer {.exportc: "miqt_exec_callback_QHBoxLayout_geometry ".} =
  var nimfunc = cast[ptr QHBoxLayoutgeometryProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QHBoxLayoutindexOf*(self: gen_qboxlayout_types.QHBoxLayout, param1: gen_qwidget_types.QWidget): cint =
  fQHBoxLayout_virtualbase_indexOf(self.h, param1.h)

type QHBoxLayoutindexOfProc* = proc(param1: gen_qwidget_types.QWidget): cint
proc onindexOf*(self: gen_qboxlayout_types.QHBoxLayout, slot: QHBoxLayoutindexOfProc) =
  # TODO check subclass
  var tmp = new QHBoxLayoutindexOfProc
  tmp[] = slot
  GC_ref(tmp)
  fcQHBoxLayout_override_virtual_indexOf(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHBoxLayout_indexOf(self: ptr cQHBoxLayout, slot: int, param1: pointer): cint {.exportc: "miqt_exec_callback_QHBoxLayout_indexOf ".} =
  var nimfunc = cast[ptr QHBoxLayoutindexOfProc](cast[pointer](slot))
  let slotval1 = gen_qwidget_types.QWidget(h: param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QHBoxLayoutisEmpty*(self: gen_qboxlayout_types.QHBoxLayout, ): bool =
  fQHBoxLayout_virtualbase_isEmpty(self.h)

type QHBoxLayoutisEmptyProc* = proc(): bool
proc onisEmpty*(self: gen_qboxlayout_types.QHBoxLayout, slot: QHBoxLayoutisEmptyProc) =
  # TODO check subclass
  var tmp = new QHBoxLayoutisEmptyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQHBoxLayout_override_virtual_isEmpty(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHBoxLayout_isEmpty(self: ptr cQHBoxLayout, slot: int): bool {.exportc: "miqt_exec_callback_QHBoxLayout_isEmpty ".} =
  var nimfunc = cast[ptr QHBoxLayoutisEmptyProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QHBoxLayoutcontrolTypes*(self: gen_qboxlayout_types.QHBoxLayout, ): cint =
  cint(fQHBoxLayout_virtualbase_controlTypes(self.h))

type QHBoxLayoutcontrolTypesProc* = proc(): cint
proc oncontrolTypes*(self: gen_qboxlayout_types.QHBoxLayout, slot: QHBoxLayoutcontrolTypesProc) =
  # TODO check subclass
  var tmp = new QHBoxLayoutcontrolTypesProc
  tmp[] = slot
  GC_ref(tmp)
  fcQHBoxLayout_override_virtual_controlTypes(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHBoxLayout_controlTypes(self: ptr cQHBoxLayout, slot: int): cint {.exportc: "miqt_exec_callback_QHBoxLayout_controlTypes ".} =
  var nimfunc = cast[ptr QHBoxLayoutcontrolTypesProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  cint(virtualReturn)
proc QHBoxLayoutreplaceWidget*(self: gen_qboxlayout_types.QHBoxLayout, fromVal: gen_qwidget_types.QWidget, to: gen_qwidget_types.QWidget, options: cint): gen_qlayoutitem_types.QLayoutItem =
  gen_qlayoutitem_types.QLayoutItem(h: fQHBoxLayout_virtualbase_replaceWidget(self.h, fromVal.h, to.h, cint(options)))

type QHBoxLayoutreplaceWidgetProc* = proc(fromVal: gen_qwidget_types.QWidget, to: gen_qwidget_types.QWidget, options: cint): gen_qlayoutitem_types.QLayoutItem
proc onreplaceWidget*(self: gen_qboxlayout_types.QHBoxLayout, slot: QHBoxLayoutreplaceWidgetProc) =
  # TODO check subclass
  var tmp = new QHBoxLayoutreplaceWidgetProc
  tmp[] = slot
  GC_ref(tmp)
  fcQHBoxLayout_override_virtual_replaceWidget(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHBoxLayout_replaceWidget(self: ptr cQHBoxLayout, slot: int, fromVal: pointer, to: pointer, options: cint): pointer {.exportc: "miqt_exec_callback_QHBoxLayout_replaceWidget ".} =
  var nimfunc = cast[ptr QHBoxLayoutreplaceWidgetProc](cast[pointer](slot))
  let slotval1 = gen_qwidget_types.QWidget(h: fromVal)

  let slotval2 = gen_qwidget_types.QWidget(h: to)

  let slotval3 = cint(options)


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn.h
proc QHBoxLayoutlayout*(self: gen_qboxlayout_types.QHBoxLayout, ): gen_qlayout_types.QLayout =
  gen_qlayout_types.QLayout(h: fQHBoxLayout_virtualbase_layout(self.h))

type QHBoxLayoutlayoutProc* = proc(): gen_qlayout_types.QLayout
proc onlayout*(self: gen_qboxlayout_types.QHBoxLayout, slot: QHBoxLayoutlayoutProc) =
  # TODO check subclass
  var tmp = new QHBoxLayoutlayoutProc
  tmp[] = slot
  GC_ref(tmp)
  fcQHBoxLayout_override_virtual_layout(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHBoxLayout_layout(self: ptr cQHBoxLayout, slot: int): pointer {.exportc: "miqt_exec_callback_QHBoxLayout_layout ".} =
  var nimfunc = cast[ptr QHBoxLayoutlayoutProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QHBoxLayoutchildEvent*(self: gen_qboxlayout_types.QHBoxLayout, e: gen_qcoreevent_types.QChildEvent): void =
  fQHBoxLayout_virtualbase_childEvent(self.h, e.h)

type QHBoxLayoutchildEventProc* = proc(e: gen_qcoreevent_types.QChildEvent): void
proc onchildEvent*(self: gen_qboxlayout_types.QHBoxLayout, slot: QHBoxLayoutchildEventProc) =
  # TODO check subclass
  var tmp = new QHBoxLayoutchildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQHBoxLayout_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHBoxLayout_childEvent(self: ptr cQHBoxLayout, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QHBoxLayout_childEvent ".} =
  var nimfunc = cast[ptr QHBoxLayoutchildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: e)


  nimfunc[](slotval1)
proc QHBoxLayoutevent*(self: gen_qboxlayout_types.QHBoxLayout, event: gen_qcoreevent_types.QEvent): bool =
  fQHBoxLayout_virtualbase_event(self.h, event.h)

type QHBoxLayouteventProc* = proc(event: gen_qcoreevent_types.QEvent): bool
proc onevent*(self: gen_qboxlayout_types.QHBoxLayout, slot: QHBoxLayouteventProc) =
  # TODO check subclass
  var tmp = new QHBoxLayouteventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQHBoxLayout_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHBoxLayout_event(self: ptr cQHBoxLayout, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QHBoxLayout_event ".} =
  var nimfunc = cast[ptr QHBoxLayouteventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QHBoxLayouteventFilter*(self: gen_qboxlayout_types.QHBoxLayout, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fQHBoxLayout_virtualbase_eventFilter(self.h, watched.h, event.h)

type QHBoxLayouteventFilterProc* = proc(watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool
proc oneventFilter*(self: gen_qboxlayout_types.QHBoxLayout, slot: QHBoxLayouteventFilterProc) =
  # TODO check subclass
  var tmp = new QHBoxLayouteventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQHBoxLayout_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHBoxLayout_eventFilter(self: ptr cQHBoxLayout, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QHBoxLayout_eventFilter ".} =
  var nimfunc = cast[ptr QHBoxLayouteventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: watched)

  let slotval2 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QHBoxLayouttimerEvent*(self: gen_qboxlayout_types.QHBoxLayout, event: gen_qcoreevent_types.QTimerEvent): void =
  fQHBoxLayout_virtualbase_timerEvent(self.h, event.h)

type QHBoxLayouttimerEventProc* = proc(event: gen_qcoreevent_types.QTimerEvent): void
proc ontimerEvent*(self: gen_qboxlayout_types.QHBoxLayout, slot: QHBoxLayouttimerEventProc) =
  # TODO check subclass
  var tmp = new QHBoxLayouttimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQHBoxLayout_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHBoxLayout_timerEvent(self: ptr cQHBoxLayout, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QHBoxLayout_timerEvent ".} =
  var nimfunc = cast[ptr QHBoxLayouttimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QHBoxLayoutcustomEvent*(self: gen_qboxlayout_types.QHBoxLayout, event: gen_qcoreevent_types.QEvent): void =
  fQHBoxLayout_virtualbase_customEvent(self.h, event.h)

type QHBoxLayoutcustomEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc oncustomEvent*(self: gen_qboxlayout_types.QHBoxLayout, slot: QHBoxLayoutcustomEventProc) =
  # TODO check subclass
  var tmp = new QHBoxLayoutcustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQHBoxLayout_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHBoxLayout_customEvent(self: ptr cQHBoxLayout, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QHBoxLayout_customEvent ".} =
  var nimfunc = cast[ptr QHBoxLayoutcustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QHBoxLayoutconnectNotify*(self: gen_qboxlayout_types.QHBoxLayout, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQHBoxLayout_virtualbase_connectNotify(self.h, signal.h)

type QHBoxLayoutconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc onconnectNotify*(self: gen_qboxlayout_types.QHBoxLayout, slot: QHBoxLayoutconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QHBoxLayoutconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQHBoxLayout_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHBoxLayout_connectNotify(self: ptr cQHBoxLayout, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QHBoxLayout_connectNotify ".} =
  var nimfunc = cast[ptr QHBoxLayoutconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QHBoxLayoutdisconnectNotify*(self: gen_qboxlayout_types.QHBoxLayout, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQHBoxLayout_virtualbase_disconnectNotify(self.h, signal.h)

type QHBoxLayoutdisconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qboxlayout_types.QHBoxLayout, slot: QHBoxLayoutdisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QHBoxLayoutdisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQHBoxLayout_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHBoxLayout_disconnectNotify(self: ptr cQHBoxLayout, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QHBoxLayout_disconnectNotify ".} =
  var nimfunc = cast[ptr QHBoxLayoutdisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QHBoxLayoutwidget*(self: gen_qboxlayout_types.QHBoxLayout, ): gen_qwidget_types.QWidget =
  gen_qwidget_types.QWidget(h: fQHBoxLayout_virtualbase_widget(self.h))

type QHBoxLayoutwidgetProc* = proc(): gen_qwidget_types.QWidget
proc onwidget*(self: gen_qboxlayout_types.QHBoxLayout, slot: QHBoxLayoutwidgetProc) =
  # TODO check subclass
  var tmp = new QHBoxLayoutwidgetProc
  tmp[] = slot
  GC_ref(tmp)
  fcQHBoxLayout_override_virtual_widget(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHBoxLayout_widget(self: ptr cQHBoxLayout, slot: int): pointer {.exportc: "miqt_exec_callback_QHBoxLayout_widget ".} =
  var nimfunc = cast[ptr QHBoxLayoutwidgetProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QHBoxLayoutspacerItem*(self: gen_qboxlayout_types.QHBoxLayout, ): gen_qlayoutitem_types.QSpacerItem =
  gen_qlayoutitem_types.QSpacerItem(h: fQHBoxLayout_virtualbase_spacerItem(self.h))

type QHBoxLayoutspacerItemProc* = proc(): gen_qlayoutitem_types.QSpacerItem
proc onspacerItem*(self: gen_qboxlayout_types.QHBoxLayout, slot: QHBoxLayoutspacerItemProc) =
  # TODO check subclass
  var tmp = new QHBoxLayoutspacerItemProc
  tmp[] = slot
  GC_ref(tmp)
  fcQHBoxLayout_override_virtual_spacerItem(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHBoxLayout_spacerItem(self: ptr cQHBoxLayout, slot: int): pointer {.exportc: "miqt_exec_callback_QHBoxLayout_spacerItem ".} =
  var nimfunc = cast[ptr QHBoxLayoutspacerItemProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc staticMetaObject*(_: type gen_qboxlayout_types.QHBoxLayout): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQHBoxLayout_staticMetaObject())
proc delete*(self: gen_qboxlayout_types.QHBoxLayout) =
  fcQHBoxLayout_delete(self.h)

func init*(T: type gen_qboxlayout_types.QVBoxLayout, h: ptr cQVBoxLayout): gen_qboxlayout_types.QVBoxLayout =
  T(h: h)
proc create*(T: type gen_qboxlayout_types.QVBoxLayout, parent: gen_qwidget_types.QWidget): gen_qboxlayout_types.QVBoxLayout =
  gen_qboxlayout_types.QVBoxLayout.init(fcQVBoxLayout_new(parent.h))

proc create*(T: type gen_qboxlayout_types.QVBoxLayout, ): gen_qboxlayout_types.QVBoxLayout =
  gen_qboxlayout_types.QVBoxLayout.init(fcQVBoxLayout_new2())

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

proc QVBoxLayoutmetaObject*(self: gen_qboxlayout_types.QVBoxLayout, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fQVBoxLayout_virtualbase_metaObject(self.h))

type QVBoxLayoutmetaObjectProc* = proc(): gen_qobjectdefs_types.QMetaObject
proc onmetaObject*(self: gen_qboxlayout_types.QVBoxLayout, slot: QVBoxLayoutmetaObjectProc) =
  # TODO check subclass
  var tmp = new QVBoxLayoutmetaObjectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQVBoxLayout_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QVBoxLayout_metaObject(self: ptr cQVBoxLayout, slot: int): pointer {.exportc: "miqt_exec_callback_QVBoxLayout_metaObject ".} =
  var nimfunc = cast[ptr QVBoxLayoutmetaObjectProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QVBoxLayoutmetacast*(self: gen_qboxlayout_types.QVBoxLayout, param1: cstring): pointer =
  fQVBoxLayout_virtualbase_metacast(self.h, param1)

type QVBoxLayoutmetacastProc* = proc(param1: cstring): pointer
proc onmetacast*(self: gen_qboxlayout_types.QVBoxLayout, slot: QVBoxLayoutmetacastProc) =
  # TODO check subclass
  var tmp = new QVBoxLayoutmetacastProc
  tmp[] = slot
  GC_ref(tmp)
  fcQVBoxLayout_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QVBoxLayout_metacast(self: ptr cQVBoxLayout, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QVBoxLayout_metacast ".} =
  var nimfunc = cast[ptr QVBoxLayoutmetacastProc](cast[pointer](slot))
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QVBoxLayoutmetacall*(self: gen_qboxlayout_types.QVBoxLayout, param1: cint, param2: cint, param3: pointer): cint =
  fQVBoxLayout_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QVBoxLayoutmetacallProc* = proc(param1: cint, param2: cint, param3: pointer): cint
proc onmetacall*(self: gen_qboxlayout_types.QVBoxLayout, slot: QVBoxLayoutmetacallProc) =
  # TODO check subclass
  var tmp = new QVBoxLayoutmetacallProc
  tmp[] = slot
  GC_ref(tmp)
  fcQVBoxLayout_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QVBoxLayout_metacall(self: ptr cQVBoxLayout, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QVBoxLayout_metacall ".} =
  var nimfunc = cast[ptr QVBoxLayoutmetacallProc](cast[pointer](slot))
  let slotval1 = cint(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QVBoxLayoutaddItem*(self: gen_qboxlayout_types.QVBoxLayout, param1: gen_qlayoutitem_types.QLayoutItem): void =
  fQVBoxLayout_virtualbase_addItem(self.h, param1.h)

type QVBoxLayoutaddItemProc* = proc(param1: gen_qlayoutitem_types.QLayoutItem): void
proc onaddItem*(self: gen_qboxlayout_types.QVBoxLayout, slot: QVBoxLayoutaddItemProc) =
  # TODO check subclass
  var tmp = new QVBoxLayoutaddItemProc
  tmp[] = slot
  GC_ref(tmp)
  fcQVBoxLayout_override_virtual_addItem(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QVBoxLayout_addItem(self: ptr cQVBoxLayout, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QVBoxLayout_addItem ".} =
  var nimfunc = cast[ptr QVBoxLayoutaddItemProc](cast[pointer](slot))
  let slotval1 = gen_qlayoutitem_types.QLayoutItem(h: param1)


  nimfunc[](slotval1)
proc QVBoxLayoutspacing*(self: gen_qboxlayout_types.QVBoxLayout, ): cint =
  fQVBoxLayout_virtualbase_spacing(self.h)

type QVBoxLayoutspacingProc* = proc(): cint
proc onspacing*(self: gen_qboxlayout_types.QVBoxLayout, slot: QVBoxLayoutspacingProc) =
  # TODO check subclass
  var tmp = new QVBoxLayoutspacingProc
  tmp[] = slot
  GC_ref(tmp)
  fcQVBoxLayout_override_virtual_spacing(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QVBoxLayout_spacing(self: ptr cQVBoxLayout, slot: int): cint {.exportc: "miqt_exec_callback_QVBoxLayout_spacing ".} =
  var nimfunc = cast[ptr QVBoxLayoutspacingProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QVBoxLayoutsetSpacing*(self: gen_qboxlayout_types.QVBoxLayout, spacing: cint): void =
  fQVBoxLayout_virtualbase_setSpacing(self.h, spacing)

type QVBoxLayoutsetSpacingProc* = proc(spacing: cint): void
proc onsetSpacing*(self: gen_qboxlayout_types.QVBoxLayout, slot: QVBoxLayoutsetSpacingProc) =
  # TODO check subclass
  var tmp = new QVBoxLayoutsetSpacingProc
  tmp[] = slot
  GC_ref(tmp)
  fcQVBoxLayout_override_virtual_setSpacing(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QVBoxLayout_setSpacing(self: ptr cQVBoxLayout, slot: int, spacing: cint): void {.exportc: "miqt_exec_callback_QVBoxLayout_setSpacing ".} =
  var nimfunc = cast[ptr QVBoxLayoutsetSpacingProc](cast[pointer](slot))
  let slotval1 = spacing


  nimfunc[](slotval1)
proc QVBoxLayoutsizeHint*(self: gen_qboxlayout_types.QVBoxLayout, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fQVBoxLayout_virtualbase_sizeHint(self.h))

type QVBoxLayoutsizeHintProc* = proc(): gen_qsize_types.QSize
proc onsizeHint*(self: gen_qboxlayout_types.QVBoxLayout, slot: QVBoxLayoutsizeHintProc) =
  # TODO check subclass
  var tmp = new QVBoxLayoutsizeHintProc
  tmp[] = slot
  GC_ref(tmp)
  fcQVBoxLayout_override_virtual_sizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QVBoxLayout_sizeHint(self: ptr cQVBoxLayout, slot: int): pointer {.exportc: "miqt_exec_callback_QVBoxLayout_sizeHint ".} =
  var nimfunc = cast[ptr QVBoxLayoutsizeHintProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QVBoxLayoutminimumSize*(self: gen_qboxlayout_types.QVBoxLayout, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fQVBoxLayout_virtualbase_minimumSize(self.h))

type QVBoxLayoutminimumSizeProc* = proc(): gen_qsize_types.QSize
proc onminimumSize*(self: gen_qboxlayout_types.QVBoxLayout, slot: QVBoxLayoutminimumSizeProc) =
  # TODO check subclass
  var tmp = new QVBoxLayoutminimumSizeProc
  tmp[] = slot
  GC_ref(tmp)
  fcQVBoxLayout_override_virtual_minimumSize(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QVBoxLayout_minimumSize(self: ptr cQVBoxLayout, slot: int): pointer {.exportc: "miqt_exec_callback_QVBoxLayout_minimumSize ".} =
  var nimfunc = cast[ptr QVBoxLayoutminimumSizeProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QVBoxLayoutmaximumSize*(self: gen_qboxlayout_types.QVBoxLayout, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fQVBoxLayout_virtualbase_maximumSize(self.h))

type QVBoxLayoutmaximumSizeProc* = proc(): gen_qsize_types.QSize
proc onmaximumSize*(self: gen_qboxlayout_types.QVBoxLayout, slot: QVBoxLayoutmaximumSizeProc) =
  # TODO check subclass
  var tmp = new QVBoxLayoutmaximumSizeProc
  tmp[] = slot
  GC_ref(tmp)
  fcQVBoxLayout_override_virtual_maximumSize(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QVBoxLayout_maximumSize(self: ptr cQVBoxLayout, slot: int): pointer {.exportc: "miqt_exec_callback_QVBoxLayout_maximumSize ".} =
  var nimfunc = cast[ptr QVBoxLayoutmaximumSizeProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QVBoxLayouthasHeightForWidth*(self: gen_qboxlayout_types.QVBoxLayout, ): bool =
  fQVBoxLayout_virtualbase_hasHeightForWidth(self.h)

type QVBoxLayouthasHeightForWidthProc* = proc(): bool
proc onhasHeightForWidth*(self: gen_qboxlayout_types.QVBoxLayout, slot: QVBoxLayouthasHeightForWidthProc) =
  # TODO check subclass
  var tmp = new QVBoxLayouthasHeightForWidthProc
  tmp[] = slot
  GC_ref(tmp)
  fcQVBoxLayout_override_virtual_hasHeightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QVBoxLayout_hasHeightForWidth(self: ptr cQVBoxLayout, slot: int): bool {.exportc: "miqt_exec_callback_QVBoxLayout_hasHeightForWidth ".} =
  var nimfunc = cast[ptr QVBoxLayouthasHeightForWidthProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QVBoxLayoutheightForWidth*(self: gen_qboxlayout_types.QVBoxLayout, param1: cint): cint =
  fQVBoxLayout_virtualbase_heightForWidth(self.h, param1)

type QVBoxLayoutheightForWidthProc* = proc(param1: cint): cint
proc onheightForWidth*(self: gen_qboxlayout_types.QVBoxLayout, slot: QVBoxLayoutheightForWidthProc) =
  # TODO check subclass
  var tmp = new QVBoxLayoutheightForWidthProc
  tmp[] = slot
  GC_ref(tmp)
  fcQVBoxLayout_override_virtual_heightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QVBoxLayout_heightForWidth(self: ptr cQVBoxLayout, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QVBoxLayout_heightForWidth ".} =
  var nimfunc = cast[ptr QVBoxLayoutheightForWidthProc](cast[pointer](slot))
  let slotval1 = param1


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QVBoxLayoutminimumHeightForWidth*(self: gen_qboxlayout_types.QVBoxLayout, param1: cint): cint =
  fQVBoxLayout_virtualbase_minimumHeightForWidth(self.h, param1)

type QVBoxLayoutminimumHeightForWidthProc* = proc(param1: cint): cint
proc onminimumHeightForWidth*(self: gen_qboxlayout_types.QVBoxLayout, slot: QVBoxLayoutminimumHeightForWidthProc) =
  # TODO check subclass
  var tmp = new QVBoxLayoutminimumHeightForWidthProc
  tmp[] = slot
  GC_ref(tmp)
  fcQVBoxLayout_override_virtual_minimumHeightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QVBoxLayout_minimumHeightForWidth(self: ptr cQVBoxLayout, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QVBoxLayout_minimumHeightForWidth ".} =
  var nimfunc = cast[ptr QVBoxLayoutminimumHeightForWidthProc](cast[pointer](slot))
  let slotval1 = param1


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QVBoxLayoutexpandingDirections*(self: gen_qboxlayout_types.QVBoxLayout, ): cint =
  cint(fQVBoxLayout_virtualbase_expandingDirections(self.h))

type QVBoxLayoutexpandingDirectionsProc* = proc(): cint
proc onexpandingDirections*(self: gen_qboxlayout_types.QVBoxLayout, slot: QVBoxLayoutexpandingDirectionsProc) =
  # TODO check subclass
  var tmp = new QVBoxLayoutexpandingDirectionsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQVBoxLayout_override_virtual_expandingDirections(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QVBoxLayout_expandingDirections(self: ptr cQVBoxLayout, slot: int): cint {.exportc: "miqt_exec_callback_QVBoxLayout_expandingDirections ".} =
  var nimfunc = cast[ptr QVBoxLayoutexpandingDirectionsProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  cint(virtualReturn)
proc QVBoxLayoutinvalidate*(self: gen_qboxlayout_types.QVBoxLayout, ): void =
  fQVBoxLayout_virtualbase_invalidate(self.h)

type QVBoxLayoutinvalidateProc* = proc(): void
proc oninvalidate*(self: gen_qboxlayout_types.QVBoxLayout, slot: QVBoxLayoutinvalidateProc) =
  # TODO check subclass
  var tmp = new QVBoxLayoutinvalidateProc
  tmp[] = slot
  GC_ref(tmp)
  fcQVBoxLayout_override_virtual_invalidate(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QVBoxLayout_invalidate(self: ptr cQVBoxLayout, slot: int): void {.exportc: "miqt_exec_callback_QVBoxLayout_invalidate ".} =
  var nimfunc = cast[ptr QVBoxLayoutinvalidateProc](cast[pointer](slot))

  nimfunc[]()
proc QVBoxLayoutitemAt*(self: gen_qboxlayout_types.QVBoxLayout, param1: cint): gen_qlayoutitem_types.QLayoutItem =
  gen_qlayoutitem_types.QLayoutItem(h: fQVBoxLayout_virtualbase_itemAt(self.h, param1))

type QVBoxLayoutitemAtProc* = proc(param1: cint): gen_qlayoutitem_types.QLayoutItem
proc onitemAt*(self: gen_qboxlayout_types.QVBoxLayout, slot: QVBoxLayoutitemAtProc) =
  # TODO check subclass
  var tmp = new QVBoxLayoutitemAtProc
  tmp[] = slot
  GC_ref(tmp)
  fcQVBoxLayout_override_virtual_itemAt(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QVBoxLayout_itemAt(self: ptr cQVBoxLayout, slot: int, param1: cint): pointer {.exportc: "miqt_exec_callback_QVBoxLayout_itemAt ".} =
  var nimfunc = cast[ptr QVBoxLayoutitemAtProc](cast[pointer](slot))
  let slotval1 = param1


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QVBoxLayouttakeAt*(self: gen_qboxlayout_types.QVBoxLayout, param1: cint): gen_qlayoutitem_types.QLayoutItem =
  gen_qlayoutitem_types.QLayoutItem(h: fQVBoxLayout_virtualbase_takeAt(self.h, param1))

type QVBoxLayouttakeAtProc* = proc(param1: cint): gen_qlayoutitem_types.QLayoutItem
proc ontakeAt*(self: gen_qboxlayout_types.QVBoxLayout, slot: QVBoxLayouttakeAtProc) =
  # TODO check subclass
  var tmp = new QVBoxLayouttakeAtProc
  tmp[] = slot
  GC_ref(tmp)
  fcQVBoxLayout_override_virtual_takeAt(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QVBoxLayout_takeAt(self: ptr cQVBoxLayout, slot: int, param1: cint): pointer {.exportc: "miqt_exec_callback_QVBoxLayout_takeAt ".} =
  var nimfunc = cast[ptr QVBoxLayouttakeAtProc](cast[pointer](slot))
  let slotval1 = param1


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QVBoxLayoutcount*(self: gen_qboxlayout_types.QVBoxLayout, ): cint =
  fQVBoxLayout_virtualbase_count(self.h)

type QVBoxLayoutcountProc* = proc(): cint
proc oncount*(self: gen_qboxlayout_types.QVBoxLayout, slot: QVBoxLayoutcountProc) =
  # TODO check subclass
  var tmp = new QVBoxLayoutcountProc
  tmp[] = slot
  GC_ref(tmp)
  fcQVBoxLayout_override_virtual_count(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QVBoxLayout_count(self: ptr cQVBoxLayout, slot: int): cint {.exportc: "miqt_exec_callback_QVBoxLayout_count ".} =
  var nimfunc = cast[ptr QVBoxLayoutcountProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QVBoxLayoutsetGeometry*(self: gen_qboxlayout_types.QVBoxLayout, geometry: gen_qrect_types.QRect): void =
  fQVBoxLayout_virtualbase_setGeometry(self.h, geometry.h)

type QVBoxLayoutsetGeometryProc* = proc(geometry: gen_qrect_types.QRect): void
proc onsetGeometry*(self: gen_qboxlayout_types.QVBoxLayout, slot: QVBoxLayoutsetGeometryProc) =
  # TODO check subclass
  var tmp = new QVBoxLayoutsetGeometryProc
  tmp[] = slot
  GC_ref(tmp)
  fcQVBoxLayout_override_virtual_setGeometry(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QVBoxLayout_setGeometry(self: ptr cQVBoxLayout, slot: int, geometry: pointer): void {.exportc: "miqt_exec_callback_QVBoxLayout_setGeometry ".} =
  var nimfunc = cast[ptr QVBoxLayoutsetGeometryProc](cast[pointer](slot))
  let slotval1 = gen_qrect_types.QRect(h: geometry)


  nimfunc[](slotval1)
proc QVBoxLayoutgeometry*(self: gen_qboxlayout_types.QVBoxLayout, ): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fQVBoxLayout_virtualbase_geometry(self.h))

type QVBoxLayoutgeometryProc* = proc(): gen_qrect_types.QRect
proc ongeometry*(self: gen_qboxlayout_types.QVBoxLayout, slot: QVBoxLayoutgeometryProc) =
  # TODO check subclass
  var tmp = new QVBoxLayoutgeometryProc
  tmp[] = slot
  GC_ref(tmp)
  fcQVBoxLayout_override_virtual_geometry(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QVBoxLayout_geometry(self: ptr cQVBoxLayout, slot: int): pointer {.exportc: "miqt_exec_callback_QVBoxLayout_geometry ".} =
  var nimfunc = cast[ptr QVBoxLayoutgeometryProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QVBoxLayoutindexOf*(self: gen_qboxlayout_types.QVBoxLayout, param1: gen_qwidget_types.QWidget): cint =
  fQVBoxLayout_virtualbase_indexOf(self.h, param1.h)

type QVBoxLayoutindexOfProc* = proc(param1: gen_qwidget_types.QWidget): cint
proc onindexOf*(self: gen_qboxlayout_types.QVBoxLayout, slot: QVBoxLayoutindexOfProc) =
  # TODO check subclass
  var tmp = new QVBoxLayoutindexOfProc
  tmp[] = slot
  GC_ref(tmp)
  fcQVBoxLayout_override_virtual_indexOf(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QVBoxLayout_indexOf(self: ptr cQVBoxLayout, slot: int, param1: pointer): cint {.exportc: "miqt_exec_callback_QVBoxLayout_indexOf ".} =
  var nimfunc = cast[ptr QVBoxLayoutindexOfProc](cast[pointer](slot))
  let slotval1 = gen_qwidget_types.QWidget(h: param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QVBoxLayoutisEmpty*(self: gen_qboxlayout_types.QVBoxLayout, ): bool =
  fQVBoxLayout_virtualbase_isEmpty(self.h)

type QVBoxLayoutisEmptyProc* = proc(): bool
proc onisEmpty*(self: gen_qboxlayout_types.QVBoxLayout, slot: QVBoxLayoutisEmptyProc) =
  # TODO check subclass
  var tmp = new QVBoxLayoutisEmptyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQVBoxLayout_override_virtual_isEmpty(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QVBoxLayout_isEmpty(self: ptr cQVBoxLayout, slot: int): bool {.exportc: "miqt_exec_callback_QVBoxLayout_isEmpty ".} =
  var nimfunc = cast[ptr QVBoxLayoutisEmptyProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QVBoxLayoutcontrolTypes*(self: gen_qboxlayout_types.QVBoxLayout, ): cint =
  cint(fQVBoxLayout_virtualbase_controlTypes(self.h))

type QVBoxLayoutcontrolTypesProc* = proc(): cint
proc oncontrolTypes*(self: gen_qboxlayout_types.QVBoxLayout, slot: QVBoxLayoutcontrolTypesProc) =
  # TODO check subclass
  var tmp = new QVBoxLayoutcontrolTypesProc
  tmp[] = slot
  GC_ref(tmp)
  fcQVBoxLayout_override_virtual_controlTypes(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QVBoxLayout_controlTypes(self: ptr cQVBoxLayout, slot: int): cint {.exportc: "miqt_exec_callback_QVBoxLayout_controlTypes ".} =
  var nimfunc = cast[ptr QVBoxLayoutcontrolTypesProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  cint(virtualReturn)
proc QVBoxLayoutreplaceWidget*(self: gen_qboxlayout_types.QVBoxLayout, fromVal: gen_qwidget_types.QWidget, to: gen_qwidget_types.QWidget, options: cint): gen_qlayoutitem_types.QLayoutItem =
  gen_qlayoutitem_types.QLayoutItem(h: fQVBoxLayout_virtualbase_replaceWidget(self.h, fromVal.h, to.h, cint(options)))

type QVBoxLayoutreplaceWidgetProc* = proc(fromVal: gen_qwidget_types.QWidget, to: gen_qwidget_types.QWidget, options: cint): gen_qlayoutitem_types.QLayoutItem
proc onreplaceWidget*(self: gen_qboxlayout_types.QVBoxLayout, slot: QVBoxLayoutreplaceWidgetProc) =
  # TODO check subclass
  var tmp = new QVBoxLayoutreplaceWidgetProc
  tmp[] = slot
  GC_ref(tmp)
  fcQVBoxLayout_override_virtual_replaceWidget(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QVBoxLayout_replaceWidget(self: ptr cQVBoxLayout, slot: int, fromVal: pointer, to: pointer, options: cint): pointer {.exportc: "miqt_exec_callback_QVBoxLayout_replaceWidget ".} =
  var nimfunc = cast[ptr QVBoxLayoutreplaceWidgetProc](cast[pointer](slot))
  let slotval1 = gen_qwidget_types.QWidget(h: fromVal)

  let slotval2 = gen_qwidget_types.QWidget(h: to)

  let slotval3 = cint(options)


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn.h
proc QVBoxLayoutlayout*(self: gen_qboxlayout_types.QVBoxLayout, ): gen_qlayout_types.QLayout =
  gen_qlayout_types.QLayout(h: fQVBoxLayout_virtualbase_layout(self.h))

type QVBoxLayoutlayoutProc* = proc(): gen_qlayout_types.QLayout
proc onlayout*(self: gen_qboxlayout_types.QVBoxLayout, slot: QVBoxLayoutlayoutProc) =
  # TODO check subclass
  var tmp = new QVBoxLayoutlayoutProc
  tmp[] = slot
  GC_ref(tmp)
  fcQVBoxLayout_override_virtual_layout(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QVBoxLayout_layout(self: ptr cQVBoxLayout, slot: int): pointer {.exportc: "miqt_exec_callback_QVBoxLayout_layout ".} =
  var nimfunc = cast[ptr QVBoxLayoutlayoutProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QVBoxLayoutchildEvent*(self: gen_qboxlayout_types.QVBoxLayout, e: gen_qcoreevent_types.QChildEvent): void =
  fQVBoxLayout_virtualbase_childEvent(self.h, e.h)

type QVBoxLayoutchildEventProc* = proc(e: gen_qcoreevent_types.QChildEvent): void
proc onchildEvent*(self: gen_qboxlayout_types.QVBoxLayout, slot: QVBoxLayoutchildEventProc) =
  # TODO check subclass
  var tmp = new QVBoxLayoutchildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQVBoxLayout_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QVBoxLayout_childEvent(self: ptr cQVBoxLayout, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QVBoxLayout_childEvent ".} =
  var nimfunc = cast[ptr QVBoxLayoutchildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: e)


  nimfunc[](slotval1)
proc QVBoxLayoutevent*(self: gen_qboxlayout_types.QVBoxLayout, event: gen_qcoreevent_types.QEvent): bool =
  fQVBoxLayout_virtualbase_event(self.h, event.h)

type QVBoxLayouteventProc* = proc(event: gen_qcoreevent_types.QEvent): bool
proc onevent*(self: gen_qboxlayout_types.QVBoxLayout, slot: QVBoxLayouteventProc) =
  # TODO check subclass
  var tmp = new QVBoxLayouteventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQVBoxLayout_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QVBoxLayout_event(self: ptr cQVBoxLayout, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QVBoxLayout_event ".} =
  var nimfunc = cast[ptr QVBoxLayouteventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QVBoxLayouteventFilter*(self: gen_qboxlayout_types.QVBoxLayout, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fQVBoxLayout_virtualbase_eventFilter(self.h, watched.h, event.h)

type QVBoxLayouteventFilterProc* = proc(watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool
proc oneventFilter*(self: gen_qboxlayout_types.QVBoxLayout, slot: QVBoxLayouteventFilterProc) =
  # TODO check subclass
  var tmp = new QVBoxLayouteventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQVBoxLayout_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QVBoxLayout_eventFilter(self: ptr cQVBoxLayout, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QVBoxLayout_eventFilter ".} =
  var nimfunc = cast[ptr QVBoxLayouteventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: watched)

  let slotval2 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QVBoxLayouttimerEvent*(self: gen_qboxlayout_types.QVBoxLayout, event: gen_qcoreevent_types.QTimerEvent): void =
  fQVBoxLayout_virtualbase_timerEvent(self.h, event.h)

type QVBoxLayouttimerEventProc* = proc(event: gen_qcoreevent_types.QTimerEvent): void
proc ontimerEvent*(self: gen_qboxlayout_types.QVBoxLayout, slot: QVBoxLayouttimerEventProc) =
  # TODO check subclass
  var tmp = new QVBoxLayouttimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQVBoxLayout_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QVBoxLayout_timerEvent(self: ptr cQVBoxLayout, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QVBoxLayout_timerEvent ".} =
  var nimfunc = cast[ptr QVBoxLayouttimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QVBoxLayoutcustomEvent*(self: gen_qboxlayout_types.QVBoxLayout, event: gen_qcoreevent_types.QEvent): void =
  fQVBoxLayout_virtualbase_customEvent(self.h, event.h)

type QVBoxLayoutcustomEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc oncustomEvent*(self: gen_qboxlayout_types.QVBoxLayout, slot: QVBoxLayoutcustomEventProc) =
  # TODO check subclass
  var tmp = new QVBoxLayoutcustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQVBoxLayout_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QVBoxLayout_customEvent(self: ptr cQVBoxLayout, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QVBoxLayout_customEvent ".} =
  var nimfunc = cast[ptr QVBoxLayoutcustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QVBoxLayoutconnectNotify*(self: gen_qboxlayout_types.QVBoxLayout, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQVBoxLayout_virtualbase_connectNotify(self.h, signal.h)

type QVBoxLayoutconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc onconnectNotify*(self: gen_qboxlayout_types.QVBoxLayout, slot: QVBoxLayoutconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QVBoxLayoutconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQVBoxLayout_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QVBoxLayout_connectNotify(self: ptr cQVBoxLayout, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QVBoxLayout_connectNotify ".} =
  var nimfunc = cast[ptr QVBoxLayoutconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QVBoxLayoutdisconnectNotify*(self: gen_qboxlayout_types.QVBoxLayout, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQVBoxLayout_virtualbase_disconnectNotify(self.h, signal.h)

type QVBoxLayoutdisconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qboxlayout_types.QVBoxLayout, slot: QVBoxLayoutdisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QVBoxLayoutdisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQVBoxLayout_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QVBoxLayout_disconnectNotify(self: ptr cQVBoxLayout, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QVBoxLayout_disconnectNotify ".} =
  var nimfunc = cast[ptr QVBoxLayoutdisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QVBoxLayoutwidget*(self: gen_qboxlayout_types.QVBoxLayout, ): gen_qwidget_types.QWidget =
  gen_qwidget_types.QWidget(h: fQVBoxLayout_virtualbase_widget(self.h))

type QVBoxLayoutwidgetProc* = proc(): gen_qwidget_types.QWidget
proc onwidget*(self: gen_qboxlayout_types.QVBoxLayout, slot: QVBoxLayoutwidgetProc) =
  # TODO check subclass
  var tmp = new QVBoxLayoutwidgetProc
  tmp[] = slot
  GC_ref(tmp)
  fcQVBoxLayout_override_virtual_widget(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QVBoxLayout_widget(self: ptr cQVBoxLayout, slot: int): pointer {.exportc: "miqt_exec_callback_QVBoxLayout_widget ".} =
  var nimfunc = cast[ptr QVBoxLayoutwidgetProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QVBoxLayoutspacerItem*(self: gen_qboxlayout_types.QVBoxLayout, ): gen_qlayoutitem_types.QSpacerItem =
  gen_qlayoutitem_types.QSpacerItem(h: fQVBoxLayout_virtualbase_spacerItem(self.h))

type QVBoxLayoutspacerItemProc* = proc(): gen_qlayoutitem_types.QSpacerItem
proc onspacerItem*(self: gen_qboxlayout_types.QVBoxLayout, slot: QVBoxLayoutspacerItemProc) =
  # TODO check subclass
  var tmp = new QVBoxLayoutspacerItemProc
  tmp[] = slot
  GC_ref(tmp)
  fcQVBoxLayout_override_virtual_spacerItem(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QVBoxLayout_spacerItem(self: ptr cQVBoxLayout, slot: int): pointer {.exportc: "miqt_exec_callback_QVBoxLayout_spacerItem ".} =
  var nimfunc = cast[ptr QVBoxLayoutspacerItemProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc staticMetaObject*(_: type gen_qboxlayout_types.QVBoxLayout): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQVBoxLayout_staticMetaObject())
proc delete*(self: gen_qboxlayout_types.QVBoxLayout) =
  fcQVBoxLayout_delete(self.h)
