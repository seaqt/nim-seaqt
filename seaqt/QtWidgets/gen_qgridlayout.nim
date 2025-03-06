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
{.compile("gen_qgridlayout.cpp", cflags).}


import ./gen_qgridlayout_types
export gen_qgridlayout_types

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

type cQGridLayout*{.exportc: "QGridLayout", incompleteStruct.} = object

proc fcQGridLayout_new(parent: pointer): ptr cQGridLayout {.importc: "QGridLayout_new".}
proc fcQGridLayout_new2(): ptr cQGridLayout {.importc: "QGridLayout_new2".}
proc fcQGridLayout_metaObject(self: pointer, ): pointer {.importc: "QGridLayout_metaObject".}
proc fcQGridLayout_metacast(self: pointer, param1: cstring): pointer {.importc: "QGridLayout_metacast".}
proc fcQGridLayout_tr(s: cstring): struct_miqt_string {.importc: "QGridLayout_tr".}
proc fcQGridLayout_trUtf8(s: cstring): struct_miqt_string {.importc: "QGridLayout_trUtf8".}
proc fcQGridLayout_sizeHint(self: pointer, ): pointer {.importc: "QGridLayout_sizeHint".}
proc fcQGridLayout_minimumSize(self: pointer, ): pointer {.importc: "QGridLayout_minimumSize".}
proc fcQGridLayout_maximumSize(self: pointer, ): pointer {.importc: "QGridLayout_maximumSize".}
proc fcQGridLayout_setHorizontalSpacing(self: pointer, spacing: cint): void {.importc: "QGridLayout_setHorizontalSpacing".}
proc fcQGridLayout_horizontalSpacing(self: pointer, ): cint {.importc: "QGridLayout_horizontalSpacing".}
proc fcQGridLayout_setVerticalSpacing(self: pointer, spacing: cint): void {.importc: "QGridLayout_setVerticalSpacing".}
proc fcQGridLayout_verticalSpacing(self: pointer, ): cint {.importc: "QGridLayout_verticalSpacing".}
proc fcQGridLayout_setSpacing(self: pointer, spacing: cint): void {.importc: "QGridLayout_setSpacing".}
proc fcQGridLayout_spacing(self: pointer, ): cint {.importc: "QGridLayout_spacing".}
proc fcQGridLayout_setRowStretch(self: pointer, row: cint, stretch: cint): void {.importc: "QGridLayout_setRowStretch".}
proc fcQGridLayout_setColumnStretch(self: pointer, column: cint, stretch: cint): void {.importc: "QGridLayout_setColumnStretch".}
proc fcQGridLayout_rowStretch(self: pointer, row: cint): cint {.importc: "QGridLayout_rowStretch".}
proc fcQGridLayout_columnStretch(self: pointer, column: cint): cint {.importc: "QGridLayout_columnStretch".}
proc fcQGridLayout_setRowMinimumHeight(self: pointer, row: cint, minSize: cint): void {.importc: "QGridLayout_setRowMinimumHeight".}
proc fcQGridLayout_setColumnMinimumWidth(self: pointer, column: cint, minSize: cint): void {.importc: "QGridLayout_setColumnMinimumWidth".}
proc fcQGridLayout_rowMinimumHeight(self: pointer, row: cint): cint {.importc: "QGridLayout_rowMinimumHeight".}
proc fcQGridLayout_columnMinimumWidth(self: pointer, column: cint): cint {.importc: "QGridLayout_columnMinimumWidth".}
proc fcQGridLayout_columnCount(self: pointer, ): cint {.importc: "QGridLayout_columnCount".}
proc fcQGridLayout_rowCount(self: pointer, ): cint {.importc: "QGridLayout_rowCount".}
proc fcQGridLayout_cellRect(self: pointer, row: cint, column: cint): pointer {.importc: "QGridLayout_cellRect".}
proc fcQGridLayout_hasHeightForWidth(self: pointer, ): bool {.importc: "QGridLayout_hasHeightForWidth".}
proc fcQGridLayout_heightForWidth(self: pointer, param1: cint): cint {.importc: "QGridLayout_heightForWidth".}
proc fcQGridLayout_minimumHeightForWidth(self: pointer, param1: cint): cint {.importc: "QGridLayout_minimumHeightForWidth".}
proc fcQGridLayout_expandingDirections(self: pointer, ): cint {.importc: "QGridLayout_expandingDirections".}
proc fcQGridLayout_invalidate(self: pointer, ): void {.importc: "QGridLayout_invalidate".}
proc fcQGridLayout_addWidget(self: pointer, w: pointer): void {.importc: "QGridLayout_addWidget".}
proc fcQGridLayout_addWidget2(self: pointer, param1: pointer, row: cint, column: cint): void {.importc: "QGridLayout_addWidget2".}
proc fcQGridLayout_addWidget3(self: pointer, param1: pointer, row: cint, column: cint, rowSpan: cint, columnSpan: cint): void {.importc: "QGridLayout_addWidget3".}
proc fcQGridLayout_addLayout(self: pointer, param1: pointer, row: cint, column: cint): void {.importc: "QGridLayout_addLayout".}
proc fcQGridLayout_addLayout2(self: pointer, param1: pointer, row: cint, column: cint, rowSpan: cint, columnSpan: cint): void {.importc: "QGridLayout_addLayout2".}
proc fcQGridLayout_setOriginCorner(self: pointer, originCorner: cint): void {.importc: "QGridLayout_setOriginCorner".}
proc fcQGridLayout_originCorner(self: pointer, ): cint {.importc: "QGridLayout_originCorner".}
proc fcQGridLayout_itemAt(self: pointer, index: cint): pointer {.importc: "QGridLayout_itemAt".}
proc fcQGridLayout_itemAtPosition(self: pointer, row: cint, column: cint): pointer {.importc: "QGridLayout_itemAtPosition".}
proc fcQGridLayout_takeAt(self: pointer, index: cint): pointer {.importc: "QGridLayout_takeAt".}
proc fcQGridLayout_count(self: pointer, ): cint {.importc: "QGridLayout_count".}
proc fcQGridLayout_setGeometry(self: pointer, geometry: pointer): void {.importc: "QGridLayout_setGeometry".}
proc fcQGridLayout_addItem(self: pointer, item: pointer, row: cint, column: cint): void {.importc: "QGridLayout_addItem".}
proc fcQGridLayout_setDefaultPositioning(self: pointer, n: cint, orient: cint): void {.importc: "QGridLayout_setDefaultPositioning".}
proc fcQGridLayout_getItemPosition(self: pointer, idx: cint, row: ptr cint, column: ptr cint, rowSpan: ptr cint, columnSpan: ptr cint): void {.importc: "QGridLayout_getItemPosition".}
proc fcQGridLayout_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QGridLayout_tr2".}
proc fcQGridLayout_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QGridLayout_tr3".}
proc fcQGridLayout_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QGridLayout_trUtf82".}
proc fcQGridLayout_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QGridLayout_trUtf83".}
proc fcQGridLayout_addWidget4(self: pointer, param1: pointer, row: cint, column: cint, param4: cint): void {.importc: "QGridLayout_addWidget4".}
proc fcQGridLayout_addWidget6(self: pointer, param1: pointer, row: cint, column: cint, rowSpan: cint, columnSpan: cint, param6: cint): void {.importc: "QGridLayout_addWidget6".}
proc fcQGridLayout_addLayout4(self: pointer, param1: pointer, row: cint, column: cint, param4: cint): void {.importc: "QGridLayout_addLayout4".}
proc fcQGridLayout_addLayout6(self: pointer, param1: pointer, row: cint, column: cint, rowSpan: cint, columnSpan: cint, param6: cint): void {.importc: "QGridLayout_addLayout6".}
proc fcQGridLayout_addItem4(self: pointer, item: pointer, row: cint, column: cint, rowSpan: cint): void {.importc: "QGridLayout_addItem4".}
proc fcQGridLayout_addItem5(self: pointer, item: pointer, row: cint, column: cint, rowSpan: cint, columnSpan: cint): void {.importc: "QGridLayout_addItem5".}
proc fcQGridLayout_addItem6(self: pointer, item: pointer, row: cint, column: cint, rowSpan: cint, columnSpan: cint, param6: cint): void {.importc: "QGridLayout_addItem6".}
proc fQGridLayout_virtualbase_sizeHint(self: pointer, ): pointer{.importc: "QGridLayout_virtualbase_sizeHint".}
proc fcQGridLayout_override_virtual_sizeHint(self: pointer, slot: int) {.importc: "QGridLayout_override_virtual_sizeHint".}
proc fQGridLayout_virtualbase_minimumSize(self: pointer, ): pointer{.importc: "QGridLayout_virtualbase_minimumSize".}
proc fcQGridLayout_override_virtual_minimumSize(self: pointer, slot: int) {.importc: "QGridLayout_override_virtual_minimumSize".}
proc fQGridLayout_virtualbase_maximumSize(self: pointer, ): pointer{.importc: "QGridLayout_virtualbase_maximumSize".}
proc fcQGridLayout_override_virtual_maximumSize(self: pointer, slot: int) {.importc: "QGridLayout_override_virtual_maximumSize".}
proc fQGridLayout_virtualbase_hasHeightForWidth(self: pointer, ): bool{.importc: "QGridLayout_virtualbase_hasHeightForWidth".}
proc fcQGridLayout_override_virtual_hasHeightForWidth(self: pointer, slot: int) {.importc: "QGridLayout_override_virtual_hasHeightForWidth".}
proc fQGridLayout_virtualbase_heightForWidth(self: pointer, param1: cint): cint{.importc: "QGridLayout_virtualbase_heightForWidth".}
proc fcQGridLayout_override_virtual_heightForWidth(self: pointer, slot: int) {.importc: "QGridLayout_override_virtual_heightForWidth".}
proc fQGridLayout_virtualbase_minimumHeightForWidth(self: pointer, param1: cint): cint{.importc: "QGridLayout_virtualbase_minimumHeightForWidth".}
proc fcQGridLayout_override_virtual_minimumHeightForWidth(self: pointer, slot: int) {.importc: "QGridLayout_override_virtual_minimumHeightForWidth".}
proc fQGridLayout_virtualbase_expandingDirections(self: pointer, ): cint{.importc: "QGridLayout_virtualbase_expandingDirections".}
proc fcQGridLayout_override_virtual_expandingDirections(self: pointer, slot: int) {.importc: "QGridLayout_override_virtual_expandingDirections".}
proc fQGridLayout_virtualbase_invalidate(self: pointer, ): void{.importc: "QGridLayout_virtualbase_invalidate".}
proc fcQGridLayout_override_virtual_invalidate(self: pointer, slot: int) {.importc: "QGridLayout_override_virtual_invalidate".}
proc fQGridLayout_virtualbase_itemAt(self: pointer, index: cint): pointer{.importc: "QGridLayout_virtualbase_itemAt".}
proc fcQGridLayout_override_virtual_itemAt(self: pointer, slot: int) {.importc: "QGridLayout_override_virtual_itemAt".}
proc fQGridLayout_virtualbase_takeAt(self: pointer, index: cint): pointer{.importc: "QGridLayout_virtualbase_takeAt".}
proc fcQGridLayout_override_virtual_takeAt(self: pointer, slot: int) {.importc: "QGridLayout_override_virtual_takeAt".}
proc fQGridLayout_virtualbase_count(self: pointer, ): cint{.importc: "QGridLayout_virtualbase_count".}
proc fcQGridLayout_override_virtual_count(self: pointer, slot: int) {.importc: "QGridLayout_override_virtual_count".}
proc fQGridLayout_virtualbase_setGeometry(self: pointer, geometry: pointer): void{.importc: "QGridLayout_virtualbase_setGeometry".}
proc fcQGridLayout_override_virtual_setGeometry(self: pointer, slot: int) {.importc: "QGridLayout_override_virtual_setGeometry".}
proc fQGridLayout_virtualbase_addItemWithQLayoutItem(self: pointer, param1: pointer): void{.importc: "QGridLayout_virtualbase_addItemWithQLayoutItem".}
proc fcQGridLayout_override_virtual_addItemWithQLayoutItem(self: pointer, slot: int) {.importc: "QGridLayout_override_virtual_addItemWithQLayoutItem".}
proc fQGridLayout_virtualbase_geometry(self: pointer, ): pointer{.importc: "QGridLayout_virtualbase_geometry".}
proc fcQGridLayout_override_virtual_geometry(self: pointer, slot: int) {.importc: "QGridLayout_override_virtual_geometry".}
proc fQGridLayout_virtualbase_indexOf(self: pointer, param1: pointer): cint{.importc: "QGridLayout_virtualbase_indexOf".}
proc fcQGridLayout_override_virtual_indexOf(self: pointer, slot: int) {.importc: "QGridLayout_override_virtual_indexOf".}
proc fQGridLayout_virtualbase_isEmpty(self: pointer, ): bool{.importc: "QGridLayout_virtualbase_isEmpty".}
proc fcQGridLayout_override_virtual_isEmpty(self: pointer, slot: int) {.importc: "QGridLayout_override_virtual_isEmpty".}
proc fQGridLayout_virtualbase_controlTypes(self: pointer, ): cint{.importc: "QGridLayout_virtualbase_controlTypes".}
proc fcQGridLayout_override_virtual_controlTypes(self: pointer, slot: int) {.importc: "QGridLayout_override_virtual_controlTypes".}
proc fQGridLayout_virtualbase_layout(self: pointer, ): pointer{.importc: "QGridLayout_virtualbase_layout".}
proc fcQGridLayout_override_virtual_layout(self: pointer, slot: int) {.importc: "QGridLayout_override_virtual_layout".}
proc fQGridLayout_virtualbase_childEvent(self: pointer, e: pointer): void{.importc: "QGridLayout_virtualbase_childEvent".}
proc fcQGridLayout_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QGridLayout_override_virtual_childEvent".}
proc fQGridLayout_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QGridLayout_virtualbase_event".}
proc fcQGridLayout_override_virtual_event(self: pointer, slot: int) {.importc: "QGridLayout_override_virtual_event".}
proc fQGridLayout_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QGridLayout_virtualbase_eventFilter".}
proc fcQGridLayout_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QGridLayout_override_virtual_eventFilter".}
proc fQGridLayout_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QGridLayout_virtualbase_timerEvent".}
proc fcQGridLayout_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QGridLayout_override_virtual_timerEvent".}
proc fQGridLayout_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QGridLayout_virtualbase_customEvent".}
proc fcQGridLayout_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QGridLayout_override_virtual_customEvent".}
proc fQGridLayout_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QGridLayout_virtualbase_connectNotify".}
proc fcQGridLayout_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QGridLayout_override_virtual_connectNotify".}
proc fQGridLayout_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QGridLayout_virtualbase_disconnectNotify".}
proc fcQGridLayout_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QGridLayout_override_virtual_disconnectNotify".}
proc fQGridLayout_virtualbase_widget(self: pointer, ): pointer{.importc: "QGridLayout_virtualbase_widget".}
proc fcQGridLayout_override_virtual_widget(self: pointer, slot: int) {.importc: "QGridLayout_override_virtual_widget".}
proc fQGridLayout_virtualbase_spacerItem(self: pointer, ): pointer{.importc: "QGridLayout_virtualbase_spacerItem".}
proc fcQGridLayout_override_virtual_spacerItem(self: pointer, slot: int) {.importc: "QGridLayout_override_virtual_spacerItem".}
proc fcQGridLayout_delete(self: pointer) {.importc: "QGridLayout_delete".}


func init*(T: type gen_qgridlayout_types.QGridLayout, h: ptr cQGridLayout): gen_qgridlayout_types.QGridLayout =
  T(h: h)
proc create*(T: type gen_qgridlayout_types.QGridLayout, parent: gen_qwidget_types.QWidget): gen_qgridlayout_types.QGridLayout =
  gen_qgridlayout_types.QGridLayout.init(fcQGridLayout_new(parent.h))

proc create*(T: type gen_qgridlayout_types.QGridLayout, ): gen_qgridlayout_types.QGridLayout =
  gen_qgridlayout_types.QGridLayout.init(fcQGridLayout_new2())

proc metaObject*(self: gen_qgridlayout_types.QGridLayout, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQGridLayout_metaObject(self.h))

proc metacast*(self: gen_qgridlayout_types.QGridLayout, param1: cstring): pointer =
  fcQGridLayout_metacast(self.h, param1)

proc tr*(_: type gen_qgridlayout_types.QGridLayout, s: cstring): string =
  let v_ms = fcQGridLayout_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qgridlayout_types.QGridLayout, s: cstring): string =
  let v_ms = fcQGridLayout_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc sizeHint*(self: gen_qgridlayout_types.QGridLayout, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQGridLayout_sizeHint(self.h))

proc minimumSize*(self: gen_qgridlayout_types.QGridLayout, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQGridLayout_minimumSize(self.h))

proc maximumSize*(self: gen_qgridlayout_types.QGridLayout, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQGridLayout_maximumSize(self.h))

proc setHorizontalSpacing*(self: gen_qgridlayout_types.QGridLayout, spacing: cint): void =
  fcQGridLayout_setHorizontalSpacing(self.h, spacing)

proc horizontalSpacing*(self: gen_qgridlayout_types.QGridLayout, ): cint =
  fcQGridLayout_horizontalSpacing(self.h)

proc setVerticalSpacing*(self: gen_qgridlayout_types.QGridLayout, spacing: cint): void =
  fcQGridLayout_setVerticalSpacing(self.h, spacing)

proc verticalSpacing*(self: gen_qgridlayout_types.QGridLayout, ): cint =
  fcQGridLayout_verticalSpacing(self.h)

proc setSpacing*(self: gen_qgridlayout_types.QGridLayout, spacing: cint): void =
  fcQGridLayout_setSpacing(self.h, spacing)

proc spacing*(self: gen_qgridlayout_types.QGridLayout, ): cint =
  fcQGridLayout_spacing(self.h)

proc setRowStretch*(self: gen_qgridlayout_types.QGridLayout, row: cint, stretch: cint): void =
  fcQGridLayout_setRowStretch(self.h, row, stretch)

proc setColumnStretch*(self: gen_qgridlayout_types.QGridLayout, column: cint, stretch: cint): void =
  fcQGridLayout_setColumnStretch(self.h, column, stretch)

proc rowStretch*(self: gen_qgridlayout_types.QGridLayout, row: cint): cint =
  fcQGridLayout_rowStretch(self.h, row)

proc columnStretch*(self: gen_qgridlayout_types.QGridLayout, column: cint): cint =
  fcQGridLayout_columnStretch(self.h, column)

proc setRowMinimumHeight*(self: gen_qgridlayout_types.QGridLayout, row: cint, minSize: cint): void =
  fcQGridLayout_setRowMinimumHeight(self.h, row, minSize)

proc setColumnMinimumWidth*(self: gen_qgridlayout_types.QGridLayout, column: cint, minSize: cint): void =
  fcQGridLayout_setColumnMinimumWidth(self.h, column, minSize)

proc rowMinimumHeight*(self: gen_qgridlayout_types.QGridLayout, row: cint): cint =
  fcQGridLayout_rowMinimumHeight(self.h, row)

proc columnMinimumWidth*(self: gen_qgridlayout_types.QGridLayout, column: cint): cint =
  fcQGridLayout_columnMinimumWidth(self.h, column)

proc columnCount*(self: gen_qgridlayout_types.QGridLayout, ): cint =
  fcQGridLayout_columnCount(self.h)

proc rowCount*(self: gen_qgridlayout_types.QGridLayout, ): cint =
  fcQGridLayout_rowCount(self.h)

proc cellRect*(self: gen_qgridlayout_types.QGridLayout, row: cint, column: cint): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fcQGridLayout_cellRect(self.h, row, column))

proc hasHeightForWidth*(self: gen_qgridlayout_types.QGridLayout, ): bool =
  fcQGridLayout_hasHeightForWidth(self.h)

proc heightForWidth*(self: gen_qgridlayout_types.QGridLayout, param1: cint): cint =
  fcQGridLayout_heightForWidth(self.h, param1)

proc minimumHeightForWidth*(self: gen_qgridlayout_types.QGridLayout, param1: cint): cint =
  fcQGridLayout_minimumHeightForWidth(self.h, param1)

proc expandingDirections*(self: gen_qgridlayout_types.QGridLayout, ): cint =
  cint(fcQGridLayout_expandingDirections(self.h))

proc invalidate*(self: gen_qgridlayout_types.QGridLayout, ): void =
  fcQGridLayout_invalidate(self.h)

proc addWidget*(self: gen_qgridlayout_types.QGridLayout, w: gen_qwidget_types.QWidget): void =
  fcQGridLayout_addWidget(self.h, w.h)

proc addWidget*(self: gen_qgridlayout_types.QGridLayout, param1: gen_qwidget_types.QWidget, row: cint, column: cint): void =
  fcQGridLayout_addWidget2(self.h, param1.h, row, column)

proc addWidget*(self: gen_qgridlayout_types.QGridLayout, param1: gen_qwidget_types.QWidget, row: cint, column: cint, rowSpan: cint, columnSpan: cint): void =
  fcQGridLayout_addWidget3(self.h, param1.h, row, column, rowSpan, columnSpan)

proc addLayout*(self: gen_qgridlayout_types.QGridLayout, param1: gen_qlayout_types.QLayout, row: cint, column: cint): void =
  fcQGridLayout_addLayout(self.h, param1.h, row, column)

proc addLayout*(self: gen_qgridlayout_types.QGridLayout, param1: gen_qlayout_types.QLayout, row: cint, column: cint, rowSpan: cint, columnSpan: cint): void =
  fcQGridLayout_addLayout2(self.h, param1.h, row, column, rowSpan, columnSpan)

proc setOriginCorner*(self: gen_qgridlayout_types.QGridLayout, originCorner: cint): void =
  fcQGridLayout_setOriginCorner(self.h, cint(originCorner))

proc originCorner*(self: gen_qgridlayout_types.QGridLayout, ): cint =
  cint(fcQGridLayout_originCorner(self.h))

proc itemAt*(self: gen_qgridlayout_types.QGridLayout, index: cint): gen_qlayoutitem_types.QLayoutItem =
  gen_qlayoutitem_types.QLayoutItem(h: fcQGridLayout_itemAt(self.h, index))

proc itemAtPosition*(self: gen_qgridlayout_types.QGridLayout, row: cint, column: cint): gen_qlayoutitem_types.QLayoutItem =
  gen_qlayoutitem_types.QLayoutItem(h: fcQGridLayout_itemAtPosition(self.h, row, column))

proc takeAt*(self: gen_qgridlayout_types.QGridLayout, index: cint): gen_qlayoutitem_types.QLayoutItem =
  gen_qlayoutitem_types.QLayoutItem(h: fcQGridLayout_takeAt(self.h, index))

proc count*(self: gen_qgridlayout_types.QGridLayout, ): cint =
  fcQGridLayout_count(self.h)

proc setGeometry*(self: gen_qgridlayout_types.QGridLayout, geometry: gen_qrect_types.QRect): void =
  fcQGridLayout_setGeometry(self.h, geometry.h)

proc addItem*(self: gen_qgridlayout_types.QGridLayout, item: gen_qlayoutitem_types.QLayoutItem, row: cint, column: cint): void =
  fcQGridLayout_addItem(self.h, item.h, row, column)

proc setDefaultPositioning*(self: gen_qgridlayout_types.QGridLayout, n: cint, orient: cint): void =
  fcQGridLayout_setDefaultPositioning(self.h, n, cint(orient))

proc getItemPosition*(self: gen_qgridlayout_types.QGridLayout, idx: cint, row: ptr cint, column: ptr cint, rowSpan: ptr cint, columnSpan: ptr cint): void =
  fcQGridLayout_getItemPosition(self.h, idx, row, column, rowSpan, columnSpan)

proc tr*(_: type gen_qgridlayout_types.QGridLayout, s: cstring, c: cstring): string =
  let v_ms = fcQGridLayout_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qgridlayout_types.QGridLayout, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQGridLayout_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qgridlayout_types.QGridLayout, s: cstring, c: cstring): string =
  let v_ms = fcQGridLayout_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qgridlayout_types.QGridLayout, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQGridLayout_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc addWidget*(self: gen_qgridlayout_types.QGridLayout, param1: gen_qwidget_types.QWidget, row: cint, column: cint, param4: cint): void =
  fcQGridLayout_addWidget4(self.h, param1.h, row, column, cint(param4))

proc addWidget*(self: gen_qgridlayout_types.QGridLayout, param1: gen_qwidget_types.QWidget, row: cint, column: cint, rowSpan: cint, columnSpan: cint, param6: cint): void =
  fcQGridLayout_addWidget6(self.h, param1.h, row, column, rowSpan, columnSpan, cint(param6))

proc addLayout*(self: gen_qgridlayout_types.QGridLayout, param1: gen_qlayout_types.QLayout, row: cint, column: cint, param4: cint): void =
  fcQGridLayout_addLayout4(self.h, param1.h, row, column, cint(param4))

proc addLayout*(self: gen_qgridlayout_types.QGridLayout, param1: gen_qlayout_types.QLayout, row: cint, column: cint, rowSpan: cint, columnSpan: cint, param6: cint): void =
  fcQGridLayout_addLayout6(self.h, param1.h, row, column, rowSpan, columnSpan, cint(param6))

proc addItem*(self: gen_qgridlayout_types.QGridLayout, item: gen_qlayoutitem_types.QLayoutItem, row: cint, column: cint, rowSpan: cint): void =
  fcQGridLayout_addItem4(self.h, item.h, row, column, rowSpan)

proc addItem*(self: gen_qgridlayout_types.QGridLayout, item: gen_qlayoutitem_types.QLayoutItem, row: cint, column: cint, rowSpan: cint, columnSpan: cint): void =
  fcQGridLayout_addItem5(self.h, item.h, row, column, rowSpan, columnSpan)

proc addItem*(self: gen_qgridlayout_types.QGridLayout, item: gen_qlayoutitem_types.QLayoutItem, row: cint, column: cint, rowSpan: cint, columnSpan: cint, param6: cint): void =
  fcQGridLayout_addItem6(self.h, item.h, row, column, rowSpan, columnSpan, cint(param6))

proc QGridLayoutsizeHint*(self: gen_qgridlayout_types.QGridLayout, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fQGridLayout_virtualbase_sizeHint(self.h))

type QGridLayoutsizeHintProc* = proc(): gen_qsize_types.QSize
proc onsizeHint*(self: gen_qgridlayout_types.QGridLayout, slot: QGridLayoutsizeHintProc) =
  # TODO check subclass
  var tmp = new QGridLayoutsizeHintProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGridLayout_override_virtual_sizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGridLayout_sizeHint(self: ptr cQGridLayout, slot: int): pointer {.exportc: "miqt_exec_callback_QGridLayout_sizeHint ".} =
  var nimfunc = cast[ptr QGridLayoutsizeHintProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QGridLayoutminimumSize*(self: gen_qgridlayout_types.QGridLayout, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fQGridLayout_virtualbase_minimumSize(self.h))

type QGridLayoutminimumSizeProc* = proc(): gen_qsize_types.QSize
proc onminimumSize*(self: gen_qgridlayout_types.QGridLayout, slot: QGridLayoutminimumSizeProc) =
  # TODO check subclass
  var tmp = new QGridLayoutminimumSizeProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGridLayout_override_virtual_minimumSize(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGridLayout_minimumSize(self: ptr cQGridLayout, slot: int): pointer {.exportc: "miqt_exec_callback_QGridLayout_minimumSize ".} =
  var nimfunc = cast[ptr QGridLayoutminimumSizeProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QGridLayoutmaximumSize*(self: gen_qgridlayout_types.QGridLayout, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fQGridLayout_virtualbase_maximumSize(self.h))

type QGridLayoutmaximumSizeProc* = proc(): gen_qsize_types.QSize
proc onmaximumSize*(self: gen_qgridlayout_types.QGridLayout, slot: QGridLayoutmaximumSizeProc) =
  # TODO check subclass
  var tmp = new QGridLayoutmaximumSizeProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGridLayout_override_virtual_maximumSize(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGridLayout_maximumSize(self: ptr cQGridLayout, slot: int): pointer {.exportc: "miqt_exec_callback_QGridLayout_maximumSize ".} =
  var nimfunc = cast[ptr QGridLayoutmaximumSizeProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QGridLayouthasHeightForWidth*(self: gen_qgridlayout_types.QGridLayout, ): bool =
  fQGridLayout_virtualbase_hasHeightForWidth(self.h)

type QGridLayouthasHeightForWidthProc* = proc(): bool
proc onhasHeightForWidth*(self: gen_qgridlayout_types.QGridLayout, slot: QGridLayouthasHeightForWidthProc) =
  # TODO check subclass
  var tmp = new QGridLayouthasHeightForWidthProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGridLayout_override_virtual_hasHeightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGridLayout_hasHeightForWidth(self: ptr cQGridLayout, slot: int): bool {.exportc: "miqt_exec_callback_QGridLayout_hasHeightForWidth ".} =
  var nimfunc = cast[ptr QGridLayouthasHeightForWidthProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QGridLayoutheightForWidth*(self: gen_qgridlayout_types.QGridLayout, param1: cint): cint =
  fQGridLayout_virtualbase_heightForWidth(self.h, param1)

type QGridLayoutheightForWidthProc* = proc(param1: cint): cint
proc onheightForWidth*(self: gen_qgridlayout_types.QGridLayout, slot: QGridLayoutheightForWidthProc) =
  # TODO check subclass
  var tmp = new QGridLayoutheightForWidthProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGridLayout_override_virtual_heightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGridLayout_heightForWidth(self: ptr cQGridLayout, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QGridLayout_heightForWidth ".} =
  var nimfunc = cast[ptr QGridLayoutheightForWidthProc](cast[pointer](slot))
  let slotval1 = param1


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QGridLayoutminimumHeightForWidth*(self: gen_qgridlayout_types.QGridLayout, param1: cint): cint =
  fQGridLayout_virtualbase_minimumHeightForWidth(self.h, param1)

type QGridLayoutminimumHeightForWidthProc* = proc(param1: cint): cint
proc onminimumHeightForWidth*(self: gen_qgridlayout_types.QGridLayout, slot: QGridLayoutminimumHeightForWidthProc) =
  # TODO check subclass
  var tmp = new QGridLayoutminimumHeightForWidthProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGridLayout_override_virtual_minimumHeightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGridLayout_minimumHeightForWidth(self: ptr cQGridLayout, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QGridLayout_minimumHeightForWidth ".} =
  var nimfunc = cast[ptr QGridLayoutminimumHeightForWidthProc](cast[pointer](slot))
  let slotval1 = param1


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QGridLayoutexpandingDirections*(self: gen_qgridlayout_types.QGridLayout, ): cint =
  cint(fQGridLayout_virtualbase_expandingDirections(self.h))

type QGridLayoutexpandingDirectionsProc* = proc(): cint
proc onexpandingDirections*(self: gen_qgridlayout_types.QGridLayout, slot: QGridLayoutexpandingDirectionsProc) =
  # TODO check subclass
  var tmp = new QGridLayoutexpandingDirectionsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGridLayout_override_virtual_expandingDirections(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGridLayout_expandingDirections(self: ptr cQGridLayout, slot: int): cint {.exportc: "miqt_exec_callback_QGridLayout_expandingDirections ".} =
  var nimfunc = cast[ptr QGridLayoutexpandingDirectionsProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  cint(virtualReturn)
proc QGridLayoutinvalidate*(self: gen_qgridlayout_types.QGridLayout, ): void =
  fQGridLayout_virtualbase_invalidate(self.h)

type QGridLayoutinvalidateProc* = proc(): void
proc oninvalidate*(self: gen_qgridlayout_types.QGridLayout, slot: QGridLayoutinvalidateProc) =
  # TODO check subclass
  var tmp = new QGridLayoutinvalidateProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGridLayout_override_virtual_invalidate(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGridLayout_invalidate(self: ptr cQGridLayout, slot: int): void {.exportc: "miqt_exec_callback_QGridLayout_invalidate ".} =
  var nimfunc = cast[ptr QGridLayoutinvalidateProc](cast[pointer](slot))

  nimfunc[]()
proc QGridLayoutitemAt*(self: gen_qgridlayout_types.QGridLayout, index: cint): gen_qlayoutitem_types.QLayoutItem =
  gen_qlayoutitem_types.QLayoutItem(h: fQGridLayout_virtualbase_itemAt(self.h, index))

type QGridLayoutitemAtProc* = proc(index: cint): gen_qlayoutitem_types.QLayoutItem
proc onitemAt*(self: gen_qgridlayout_types.QGridLayout, slot: QGridLayoutitemAtProc) =
  # TODO check subclass
  var tmp = new QGridLayoutitemAtProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGridLayout_override_virtual_itemAt(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGridLayout_itemAt(self: ptr cQGridLayout, slot: int, index: cint): pointer {.exportc: "miqt_exec_callback_QGridLayout_itemAt ".} =
  var nimfunc = cast[ptr QGridLayoutitemAtProc](cast[pointer](slot))
  let slotval1 = index


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QGridLayouttakeAt*(self: gen_qgridlayout_types.QGridLayout, index: cint): gen_qlayoutitem_types.QLayoutItem =
  gen_qlayoutitem_types.QLayoutItem(h: fQGridLayout_virtualbase_takeAt(self.h, index))

type QGridLayouttakeAtProc* = proc(index: cint): gen_qlayoutitem_types.QLayoutItem
proc ontakeAt*(self: gen_qgridlayout_types.QGridLayout, slot: QGridLayouttakeAtProc) =
  # TODO check subclass
  var tmp = new QGridLayouttakeAtProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGridLayout_override_virtual_takeAt(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGridLayout_takeAt(self: ptr cQGridLayout, slot: int, index: cint): pointer {.exportc: "miqt_exec_callback_QGridLayout_takeAt ".} =
  var nimfunc = cast[ptr QGridLayouttakeAtProc](cast[pointer](slot))
  let slotval1 = index


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QGridLayoutcount*(self: gen_qgridlayout_types.QGridLayout, ): cint =
  fQGridLayout_virtualbase_count(self.h)

type QGridLayoutcountProc* = proc(): cint
proc oncount*(self: gen_qgridlayout_types.QGridLayout, slot: QGridLayoutcountProc) =
  # TODO check subclass
  var tmp = new QGridLayoutcountProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGridLayout_override_virtual_count(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGridLayout_count(self: ptr cQGridLayout, slot: int): cint {.exportc: "miqt_exec_callback_QGridLayout_count ".} =
  var nimfunc = cast[ptr QGridLayoutcountProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QGridLayoutsetGeometry*(self: gen_qgridlayout_types.QGridLayout, geometry: gen_qrect_types.QRect): void =
  fQGridLayout_virtualbase_setGeometry(self.h, geometry.h)

type QGridLayoutsetGeometryProc* = proc(geometry: gen_qrect_types.QRect): void
proc onsetGeometry*(self: gen_qgridlayout_types.QGridLayout, slot: QGridLayoutsetGeometryProc) =
  # TODO check subclass
  var tmp = new QGridLayoutsetGeometryProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGridLayout_override_virtual_setGeometry(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGridLayout_setGeometry(self: ptr cQGridLayout, slot: int, geometry: pointer): void {.exportc: "miqt_exec_callback_QGridLayout_setGeometry ".} =
  var nimfunc = cast[ptr QGridLayoutsetGeometryProc](cast[pointer](slot))
  let slotval1 = gen_qrect_types.QRect(h: geometry)


  nimfunc[](slotval1)
proc QGridLayoutaddItem*(self: gen_qgridlayout_types.QGridLayout, param1: gen_qlayoutitem_types.QLayoutItem): void =
  fQGridLayout_virtualbase_addItemWithQLayoutItem(self.h, param1.h)

type QGridLayoutaddItemWithQLayoutItemProc* = proc(param1: gen_qlayoutitem_types.QLayoutItem): void
proc onaddItem*(self: gen_qgridlayout_types.QGridLayout, slot: QGridLayoutaddItemWithQLayoutItemProc) =
  # TODO check subclass
  var tmp = new QGridLayoutaddItemWithQLayoutItemProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGridLayout_override_virtual_addItemWithQLayoutItem(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGridLayout_addItemWithQLayoutItem(self: ptr cQGridLayout, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QGridLayout_addItemWithQLayoutItem ".} =
  var nimfunc = cast[ptr QGridLayoutaddItemWithQLayoutItemProc](cast[pointer](slot))
  let slotval1 = gen_qlayoutitem_types.QLayoutItem(h: param1)


  nimfunc[](slotval1)
proc QGridLayoutgeometry*(self: gen_qgridlayout_types.QGridLayout, ): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fQGridLayout_virtualbase_geometry(self.h))

type QGridLayoutgeometryProc* = proc(): gen_qrect_types.QRect
proc ongeometry*(self: gen_qgridlayout_types.QGridLayout, slot: QGridLayoutgeometryProc) =
  # TODO check subclass
  var tmp = new QGridLayoutgeometryProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGridLayout_override_virtual_geometry(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGridLayout_geometry(self: ptr cQGridLayout, slot: int): pointer {.exportc: "miqt_exec_callback_QGridLayout_geometry ".} =
  var nimfunc = cast[ptr QGridLayoutgeometryProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QGridLayoutindexOf*(self: gen_qgridlayout_types.QGridLayout, param1: gen_qwidget_types.QWidget): cint =
  fQGridLayout_virtualbase_indexOf(self.h, param1.h)

type QGridLayoutindexOfProc* = proc(param1: gen_qwidget_types.QWidget): cint
proc onindexOf*(self: gen_qgridlayout_types.QGridLayout, slot: QGridLayoutindexOfProc) =
  # TODO check subclass
  var tmp = new QGridLayoutindexOfProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGridLayout_override_virtual_indexOf(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGridLayout_indexOf(self: ptr cQGridLayout, slot: int, param1: pointer): cint {.exportc: "miqt_exec_callback_QGridLayout_indexOf ".} =
  var nimfunc = cast[ptr QGridLayoutindexOfProc](cast[pointer](slot))
  let slotval1 = gen_qwidget_types.QWidget(h: param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QGridLayoutisEmpty*(self: gen_qgridlayout_types.QGridLayout, ): bool =
  fQGridLayout_virtualbase_isEmpty(self.h)

type QGridLayoutisEmptyProc* = proc(): bool
proc onisEmpty*(self: gen_qgridlayout_types.QGridLayout, slot: QGridLayoutisEmptyProc) =
  # TODO check subclass
  var tmp = new QGridLayoutisEmptyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGridLayout_override_virtual_isEmpty(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGridLayout_isEmpty(self: ptr cQGridLayout, slot: int): bool {.exportc: "miqt_exec_callback_QGridLayout_isEmpty ".} =
  var nimfunc = cast[ptr QGridLayoutisEmptyProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QGridLayoutcontrolTypes*(self: gen_qgridlayout_types.QGridLayout, ): cint =
  cint(fQGridLayout_virtualbase_controlTypes(self.h))

type QGridLayoutcontrolTypesProc* = proc(): cint
proc oncontrolTypes*(self: gen_qgridlayout_types.QGridLayout, slot: QGridLayoutcontrolTypesProc) =
  # TODO check subclass
  var tmp = new QGridLayoutcontrolTypesProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGridLayout_override_virtual_controlTypes(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGridLayout_controlTypes(self: ptr cQGridLayout, slot: int): cint {.exportc: "miqt_exec_callback_QGridLayout_controlTypes ".} =
  var nimfunc = cast[ptr QGridLayoutcontrolTypesProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  cint(virtualReturn)
proc QGridLayoutlayout*(self: gen_qgridlayout_types.QGridLayout, ): gen_qlayout_types.QLayout =
  gen_qlayout_types.QLayout(h: fQGridLayout_virtualbase_layout(self.h))

type QGridLayoutlayoutProc* = proc(): gen_qlayout_types.QLayout
proc onlayout*(self: gen_qgridlayout_types.QGridLayout, slot: QGridLayoutlayoutProc) =
  # TODO check subclass
  var tmp = new QGridLayoutlayoutProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGridLayout_override_virtual_layout(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGridLayout_layout(self: ptr cQGridLayout, slot: int): pointer {.exportc: "miqt_exec_callback_QGridLayout_layout ".} =
  var nimfunc = cast[ptr QGridLayoutlayoutProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QGridLayoutchildEvent*(self: gen_qgridlayout_types.QGridLayout, e: gen_qcoreevent_types.QChildEvent): void =
  fQGridLayout_virtualbase_childEvent(self.h, e.h)

type QGridLayoutchildEventProc* = proc(e: gen_qcoreevent_types.QChildEvent): void
proc onchildEvent*(self: gen_qgridlayout_types.QGridLayout, slot: QGridLayoutchildEventProc) =
  # TODO check subclass
  var tmp = new QGridLayoutchildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGridLayout_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGridLayout_childEvent(self: ptr cQGridLayout, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QGridLayout_childEvent ".} =
  var nimfunc = cast[ptr QGridLayoutchildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: e)


  nimfunc[](slotval1)
proc QGridLayoutevent*(self: gen_qgridlayout_types.QGridLayout, event: gen_qcoreevent_types.QEvent): bool =
  fQGridLayout_virtualbase_event(self.h, event.h)

type QGridLayouteventProc* = proc(event: gen_qcoreevent_types.QEvent): bool
proc onevent*(self: gen_qgridlayout_types.QGridLayout, slot: QGridLayouteventProc) =
  # TODO check subclass
  var tmp = new QGridLayouteventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGridLayout_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGridLayout_event(self: ptr cQGridLayout, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QGridLayout_event ".} =
  var nimfunc = cast[ptr QGridLayouteventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QGridLayouteventFilter*(self: gen_qgridlayout_types.QGridLayout, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fQGridLayout_virtualbase_eventFilter(self.h, watched.h, event.h)

type QGridLayouteventFilterProc* = proc(watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool
proc oneventFilter*(self: gen_qgridlayout_types.QGridLayout, slot: QGridLayouteventFilterProc) =
  # TODO check subclass
  var tmp = new QGridLayouteventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGridLayout_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGridLayout_eventFilter(self: ptr cQGridLayout, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QGridLayout_eventFilter ".} =
  var nimfunc = cast[ptr QGridLayouteventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: watched)

  let slotval2 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QGridLayouttimerEvent*(self: gen_qgridlayout_types.QGridLayout, event: gen_qcoreevent_types.QTimerEvent): void =
  fQGridLayout_virtualbase_timerEvent(self.h, event.h)

type QGridLayouttimerEventProc* = proc(event: gen_qcoreevent_types.QTimerEvent): void
proc ontimerEvent*(self: gen_qgridlayout_types.QGridLayout, slot: QGridLayouttimerEventProc) =
  # TODO check subclass
  var tmp = new QGridLayouttimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGridLayout_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGridLayout_timerEvent(self: ptr cQGridLayout, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGridLayout_timerEvent ".} =
  var nimfunc = cast[ptr QGridLayouttimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QGridLayoutcustomEvent*(self: gen_qgridlayout_types.QGridLayout, event: gen_qcoreevent_types.QEvent): void =
  fQGridLayout_virtualbase_customEvent(self.h, event.h)

type QGridLayoutcustomEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc oncustomEvent*(self: gen_qgridlayout_types.QGridLayout, slot: QGridLayoutcustomEventProc) =
  # TODO check subclass
  var tmp = new QGridLayoutcustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGridLayout_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGridLayout_customEvent(self: ptr cQGridLayout, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGridLayout_customEvent ".} =
  var nimfunc = cast[ptr QGridLayoutcustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QGridLayoutconnectNotify*(self: gen_qgridlayout_types.QGridLayout, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQGridLayout_virtualbase_connectNotify(self.h, signal.h)

type QGridLayoutconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc onconnectNotify*(self: gen_qgridlayout_types.QGridLayout, slot: QGridLayoutconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QGridLayoutconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGridLayout_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGridLayout_connectNotify(self: ptr cQGridLayout, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QGridLayout_connectNotify ".} =
  var nimfunc = cast[ptr QGridLayoutconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QGridLayoutdisconnectNotify*(self: gen_qgridlayout_types.QGridLayout, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQGridLayout_virtualbase_disconnectNotify(self.h, signal.h)

type QGridLayoutdisconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qgridlayout_types.QGridLayout, slot: QGridLayoutdisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QGridLayoutdisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGridLayout_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGridLayout_disconnectNotify(self: ptr cQGridLayout, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QGridLayout_disconnectNotify ".} =
  var nimfunc = cast[ptr QGridLayoutdisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QGridLayoutwidget*(self: gen_qgridlayout_types.QGridLayout, ): gen_qwidget_types.QWidget =
  gen_qwidget_types.QWidget(h: fQGridLayout_virtualbase_widget(self.h))

type QGridLayoutwidgetProc* = proc(): gen_qwidget_types.QWidget
proc onwidget*(self: gen_qgridlayout_types.QGridLayout, slot: QGridLayoutwidgetProc) =
  # TODO check subclass
  var tmp = new QGridLayoutwidgetProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGridLayout_override_virtual_widget(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGridLayout_widget(self: ptr cQGridLayout, slot: int): pointer {.exportc: "miqt_exec_callback_QGridLayout_widget ".} =
  var nimfunc = cast[ptr QGridLayoutwidgetProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QGridLayoutspacerItem*(self: gen_qgridlayout_types.QGridLayout, ): gen_qlayoutitem_types.QSpacerItem =
  gen_qlayoutitem_types.QSpacerItem(h: fQGridLayout_virtualbase_spacerItem(self.h))

type QGridLayoutspacerItemProc* = proc(): gen_qlayoutitem_types.QSpacerItem
proc onspacerItem*(self: gen_qgridlayout_types.QGridLayout, slot: QGridLayoutspacerItemProc) =
  # TODO check subclass
  var tmp = new QGridLayoutspacerItemProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGridLayout_override_virtual_spacerItem(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGridLayout_spacerItem(self: ptr cQGridLayout, slot: int): pointer {.exportc: "miqt_exec_callback_QGridLayout_spacerItem ".} =
  var nimfunc = cast[ptr QGridLayoutspacerItemProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc delete*(self: gen_qgridlayout_types.QGridLayout) =
  fcQGridLayout_delete(self.h)
