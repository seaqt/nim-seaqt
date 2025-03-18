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


{.compile("gen_qgridlayout.cpp", QtWidgetsCFlags).}


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

proc fcQGridLayout_metaObject(self: pointer): pointer {.importc: "QGridLayout_metaObject".}
proc fcQGridLayout_metacast(self: pointer, param1: cstring): pointer {.importc: "QGridLayout_metacast".}
proc fcQGridLayout_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QGridLayout_metacall".}
proc fcQGridLayout_tr(s: cstring): struct_miqt_string {.importc: "QGridLayout_tr".}
proc fcQGridLayout_trUtf8(s: cstring): struct_miqt_string {.importc: "QGridLayout_trUtf8".}
proc fcQGridLayout_sizeHint(self: pointer): pointer {.importc: "QGridLayout_sizeHint".}
proc fcQGridLayout_minimumSize(self: pointer): pointer {.importc: "QGridLayout_minimumSize".}
proc fcQGridLayout_maximumSize(self: pointer): pointer {.importc: "QGridLayout_maximumSize".}
proc fcQGridLayout_setHorizontalSpacing(self: pointer, spacing: cint): void {.importc: "QGridLayout_setHorizontalSpacing".}
proc fcQGridLayout_horizontalSpacing(self: pointer): cint {.importc: "QGridLayout_horizontalSpacing".}
proc fcQGridLayout_setVerticalSpacing(self: pointer, spacing: cint): void {.importc: "QGridLayout_setVerticalSpacing".}
proc fcQGridLayout_verticalSpacing(self: pointer): cint {.importc: "QGridLayout_verticalSpacing".}
proc fcQGridLayout_setSpacing(self: pointer, spacing: cint): void {.importc: "QGridLayout_setSpacing".}
proc fcQGridLayout_spacing(self: pointer): cint {.importc: "QGridLayout_spacing".}
proc fcQGridLayout_setRowStretch(self: pointer, row: cint, stretch: cint): void {.importc: "QGridLayout_setRowStretch".}
proc fcQGridLayout_setColumnStretch(self: pointer, column: cint, stretch: cint): void {.importc: "QGridLayout_setColumnStretch".}
proc fcQGridLayout_rowStretch(self: pointer, row: cint): cint {.importc: "QGridLayout_rowStretch".}
proc fcQGridLayout_columnStretch(self: pointer, column: cint): cint {.importc: "QGridLayout_columnStretch".}
proc fcQGridLayout_setRowMinimumHeight(self: pointer, row: cint, minSize: cint): void {.importc: "QGridLayout_setRowMinimumHeight".}
proc fcQGridLayout_setColumnMinimumWidth(self: pointer, column: cint, minSize: cint): void {.importc: "QGridLayout_setColumnMinimumWidth".}
proc fcQGridLayout_rowMinimumHeight(self: pointer, row: cint): cint {.importc: "QGridLayout_rowMinimumHeight".}
proc fcQGridLayout_columnMinimumWidth(self: pointer, column: cint): cint {.importc: "QGridLayout_columnMinimumWidth".}
proc fcQGridLayout_columnCount(self: pointer): cint {.importc: "QGridLayout_columnCount".}
proc fcQGridLayout_rowCount(self: pointer): cint {.importc: "QGridLayout_rowCount".}
proc fcQGridLayout_cellRect(self: pointer, row: cint, column: cint): pointer {.importc: "QGridLayout_cellRect".}
proc fcQGridLayout_hasHeightForWidth(self: pointer): bool {.importc: "QGridLayout_hasHeightForWidth".}
proc fcQGridLayout_heightForWidth(self: pointer, param1: cint): cint {.importc: "QGridLayout_heightForWidth".}
proc fcQGridLayout_minimumHeightForWidth(self: pointer, param1: cint): cint {.importc: "QGridLayout_minimumHeightForWidth".}
proc fcQGridLayout_expandingDirections(self: pointer): cint {.importc: "QGridLayout_expandingDirections".}
proc fcQGridLayout_invalidate(self: pointer): void {.importc: "QGridLayout_invalidate".}
proc fcQGridLayout_addWidget(self: pointer, w: pointer): void {.importc: "QGridLayout_addWidget".}
proc fcQGridLayout_addWidget2(self: pointer, param1: pointer, row: cint, column: cint): void {.importc: "QGridLayout_addWidget2".}
proc fcQGridLayout_addWidget3(self: pointer, param1: pointer, row: cint, column: cint, rowSpan: cint, columnSpan: cint): void {.importc: "QGridLayout_addWidget3".}
proc fcQGridLayout_addLayout(self: pointer, param1: pointer, row: cint, column: cint): void {.importc: "QGridLayout_addLayout".}
proc fcQGridLayout_addLayout2(self: pointer, param1: pointer, row: cint, column: cint, rowSpan: cint, columnSpan: cint): void {.importc: "QGridLayout_addLayout2".}
proc fcQGridLayout_setOriginCorner(self: pointer, originCorner: cint): void {.importc: "QGridLayout_setOriginCorner".}
proc fcQGridLayout_originCorner(self: pointer): cint {.importc: "QGridLayout_originCorner".}
proc fcQGridLayout_itemAt(self: pointer, index: cint): pointer {.importc: "QGridLayout_itemAt".}
proc fcQGridLayout_itemAtPosition(self: pointer, row: cint, column: cint): pointer {.importc: "QGridLayout_itemAtPosition".}
proc fcQGridLayout_takeAt(self: pointer, index: cint): pointer {.importc: "QGridLayout_takeAt".}
proc fcQGridLayout_count(self: pointer): cint {.importc: "QGridLayout_count".}
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
proc fcQGridLayout_vtbl(self: pointer): pointer {.importc: "QGridLayout_vtbl".}
proc fcQGridLayout_vdata(self: pointer): pointer {.importc: "QGridLayout_vdata".}

type cQGridLayoutVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  sizeHint*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  minimumSize*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  maximumSize*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  hasHeightForWidth*: proc(self: pointer): bool {.cdecl, raises: [], gcsafe.}
  heightForWidth*: proc(self: pointer, param1: cint): cint {.cdecl, raises: [], gcsafe.}
  minimumHeightForWidth*: proc(self: pointer, param1: cint): cint {.cdecl, raises: [], gcsafe.}
  expandingDirections*: proc(self: pointer): cint {.cdecl, raises: [], gcsafe.}
  invalidate*: proc(self: pointer): void {.cdecl, raises: [], gcsafe.}
  itemAt*: proc(self: pointer, index: cint): pointer {.cdecl, raises: [], gcsafe.}
  takeAt*: proc(self: pointer, index: cint): pointer {.cdecl, raises: [], gcsafe.}
  count*: proc(self: pointer): cint {.cdecl, raises: [], gcsafe.}
  setGeometry*: proc(self: pointer, geometry: pointer): void {.cdecl, raises: [], gcsafe.}
  addItemWithQLayoutItem*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  geometry*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  indexOf*: proc(self: pointer, param1: pointer): cint {.cdecl, raises: [], gcsafe.}
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
  widget*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  spacerItem*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
proc fcQGridLayout_virtualbase_metaObject(self: pointer): pointer {.importc: "QGridLayout_virtualbase_metaObject".}
proc fcQGridLayout_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QGridLayout_virtualbase_metacast".}
proc fcQGridLayout_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QGridLayout_virtualbase_metacall".}
proc fcQGridLayout_virtualbase_sizeHint(self: pointer): pointer {.importc: "QGridLayout_virtualbase_sizeHint".}
proc fcQGridLayout_virtualbase_minimumSize(self: pointer): pointer {.importc: "QGridLayout_virtualbase_minimumSize".}
proc fcQGridLayout_virtualbase_maximumSize(self: pointer): pointer {.importc: "QGridLayout_virtualbase_maximumSize".}
proc fcQGridLayout_virtualbase_hasHeightForWidth(self: pointer): bool {.importc: "QGridLayout_virtualbase_hasHeightForWidth".}
proc fcQGridLayout_virtualbase_heightForWidth(self: pointer, param1: cint): cint {.importc: "QGridLayout_virtualbase_heightForWidth".}
proc fcQGridLayout_virtualbase_minimumHeightForWidth(self: pointer, param1: cint): cint {.importc: "QGridLayout_virtualbase_minimumHeightForWidth".}
proc fcQGridLayout_virtualbase_expandingDirections(self: pointer): cint {.importc: "QGridLayout_virtualbase_expandingDirections".}
proc fcQGridLayout_virtualbase_invalidate(self: pointer): void {.importc: "QGridLayout_virtualbase_invalidate".}
proc fcQGridLayout_virtualbase_itemAt(self: pointer, index: cint): pointer {.importc: "QGridLayout_virtualbase_itemAt".}
proc fcQGridLayout_virtualbase_takeAt(self: pointer, index: cint): pointer {.importc: "QGridLayout_virtualbase_takeAt".}
proc fcQGridLayout_virtualbase_count(self: pointer): cint {.importc: "QGridLayout_virtualbase_count".}
proc fcQGridLayout_virtualbase_setGeometry(self: pointer, geometry: pointer): void {.importc: "QGridLayout_virtualbase_setGeometry".}
proc fcQGridLayout_virtualbase_addItemWithQLayoutItem(self: pointer, param1: pointer): void {.importc: "QGridLayout_virtualbase_addItemWithQLayoutItem".}
proc fcQGridLayout_virtualbase_geometry(self: pointer): pointer {.importc: "QGridLayout_virtualbase_geometry".}
proc fcQGridLayout_virtualbase_indexOf(self: pointer, param1: pointer): cint {.importc: "QGridLayout_virtualbase_indexOf".}
proc fcQGridLayout_virtualbase_isEmpty(self: pointer): bool {.importc: "QGridLayout_virtualbase_isEmpty".}
proc fcQGridLayout_virtualbase_controlTypes(self: pointer): cint {.importc: "QGridLayout_virtualbase_controlTypes".}
proc fcQGridLayout_virtualbase_layout(self: pointer): pointer {.importc: "QGridLayout_virtualbase_layout".}
proc fcQGridLayout_virtualbase_childEvent(self: pointer, e: pointer): void {.importc: "QGridLayout_virtualbase_childEvent".}
proc fcQGridLayout_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QGridLayout_virtualbase_event".}
proc fcQGridLayout_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QGridLayout_virtualbase_eventFilter".}
proc fcQGridLayout_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QGridLayout_virtualbase_timerEvent".}
proc fcQGridLayout_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QGridLayout_virtualbase_customEvent".}
proc fcQGridLayout_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QGridLayout_virtualbase_connectNotify".}
proc fcQGridLayout_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QGridLayout_virtualbase_disconnectNotify".}
proc fcQGridLayout_virtualbase_widget(self: pointer): pointer {.importc: "QGridLayout_virtualbase_widget".}
proc fcQGridLayout_virtualbase_spacerItem(self: pointer): pointer {.importc: "QGridLayout_virtualbase_spacerItem".}
proc fcQGridLayout_protectedbase_widgetEvent(self: pointer, param1: pointer): void {.importc: "QGridLayout_protectedbase_widgetEvent".}
proc fcQGridLayout_protectedbase_addChildLayout(self: pointer, l: pointer): void {.importc: "QGridLayout_protectedbase_addChildLayout".}
proc fcQGridLayout_protectedbase_addChildWidget(self: pointer, w: pointer): void {.importc: "QGridLayout_protectedbase_addChildWidget".}
proc fcQGridLayout_protectedbase_adoptLayout(self: pointer, layout: pointer): bool {.importc: "QGridLayout_protectedbase_adoptLayout".}
proc fcQGridLayout_protectedbase_alignmentRect(self: pointer, param1: pointer): pointer {.importc: "QGridLayout_protectedbase_alignmentRect".}
proc fcQGridLayout_protectedbase_sender(self: pointer): pointer {.importc: "QGridLayout_protectedbase_sender".}
proc fcQGridLayout_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QGridLayout_protectedbase_senderSignalIndex".}
proc fcQGridLayout_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QGridLayout_protectedbase_receivers".}
proc fcQGridLayout_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QGridLayout_protectedbase_isSignalConnected".}
proc fcQGridLayout_new(vtbl, vdata: pointer, parent: pointer): ptr cQGridLayout {.importc: "QGridLayout_new".}
proc fcQGridLayout_new2(vtbl, vdata: pointer): ptr cQGridLayout {.importc: "QGridLayout_new2".}
proc fcQGridLayout_staticMetaObject(): pointer {.importc: "QGridLayout_staticMetaObject".}

proc metaObject*(self: gen_qgridlayout_types.QGridLayout): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQGridLayout_metaObject(self.h), owned: false)

proc metacast*(self: gen_qgridlayout_types.QGridLayout, param1: cstring): pointer =
  fcQGridLayout_metacast(self.h, param1)

proc metacall*(self: gen_qgridlayout_types.QGridLayout, param1: cint, param2: cint, param3: pointer): cint =
  fcQGridLayout_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qgridlayout_types.QGridLayout, s: cstring): string =
  let v_ms = fcQGridLayout_tr(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qgridlayout_types.QGridLayout, s: cstring): string =
  let v_ms = fcQGridLayout_trUtf8(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc sizeHint*(self: gen_qgridlayout_types.QGridLayout): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQGridLayout_sizeHint(self.h), owned: true)

proc minimumSize*(self: gen_qgridlayout_types.QGridLayout): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQGridLayout_minimumSize(self.h), owned: true)

proc maximumSize*(self: gen_qgridlayout_types.QGridLayout): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQGridLayout_maximumSize(self.h), owned: true)

proc setHorizontalSpacing*(self: gen_qgridlayout_types.QGridLayout, spacing: cint): void =
  fcQGridLayout_setHorizontalSpacing(self.h, spacing)

proc horizontalSpacing*(self: gen_qgridlayout_types.QGridLayout): cint =
  fcQGridLayout_horizontalSpacing(self.h)

proc setVerticalSpacing*(self: gen_qgridlayout_types.QGridLayout, spacing: cint): void =
  fcQGridLayout_setVerticalSpacing(self.h, spacing)

proc verticalSpacing*(self: gen_qgridlayout_types.QGridLayout): cint =
  fcQGridLayout_verticalSpacing(self.h)

proc setSpacing*(self: gen_qgridlayout_types.QGridLayout, spacing: cint): void =
  fcQGridLayout_setSpacing(self.h, spacing)

proc spacing*(self: gen_qgridlayout_types.QGridLayout): cint =
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

proc columnCount*(self: gen_qgridlayout_types.QGridLayout): cint =
  fcQGridLayout_columnCount(self.h)

proc rowCount*(self: gen_qgridlayout_types.QGridLayout): cint =
  fcQGridLayout_rowCount(self.h)

proc cellRect*(self: gen_qgridlayout_types.QGridLayout, row: cint, column: cint): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fcQGridLayout_cellRect(self.h, row, column), owned: true)

proc hasHeightForWidth*(self: gen_qgridlayout_types.QGridLayout): bool =
  fcQGridLayout_hasHeightForWidth(self.h)

proc heightForWidth*(self: gen_qgridlayout_types.QGridLayout, param1: cint): cint =
  fcQGridLayout_heightForWidth(self.h, param1)

proc minimumHeightForWidth*(self: gen_qgridlayout_types.QGridLayout, param1: cint): cint =
  fcQGridLayout_minimumHeightForWidth(self.h, param1)

proc expandingDirections*(self: gen_qgridlayout_types.QGridLayout): cint =
  cint(fcQGridLayout_expandingDirections(self.h))

proc invalidate*(self: gen_qgridlayout_types.QGridLayout): void =
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

proc originCorner*(self: gen_qgridlayout_types.QGridLayout): cint =
  cint(fcQGridLayout_originCorner(self.h))

proc itemAt*(self: gen_qgridlayout_types.QGridLayout, index: cint): gen_qlayoutitem_types.QLayoutItem =
  gen_qlayoutitem_types.QLayoutItem(h: fcQGridLayout_itemAt(self.h, index), owned: false)

proc itemAtPosition*(self: gen_qgridlayout_types.QGridLayout, row: cint, column: cint): gen_qlayoutitem_types.QLayoutItem =
  gen_qlayoutitem_types.QLayoutItem(h: fcQGridLayout_itemAtPosition(self.h, row, column), owned: false)

proc takeAt*(self: gen_qgridlayout_types.QGridLayout, index: cint): gen_qlayoutitem_types.QLayoutItem =
  gen_qlayoutitem_types.QLayoutItem(h: fcQGridLayout_takeAt(self.h, index), owned: false)

proc count*(self: gen_qgridlayout_types.QGridLayout): cint =
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
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qgridlayout_types.QGridLayout, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQGridLayout_tr3(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qgridlayout_types.QGridLayout, s: cstring, c: cstring): string =
  let v_ms = fcQGridLayout_trUtf82(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qgridlayout_types.QGridLayout, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQGridLayout_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
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

type QGridLayoutmetaObjectProc* = proc(self: QGridLayout): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QGridLayoutmetacastProc* = proc(self: QGridLayout, param1: cstring): pointer {.raises: [], gcsafe.}
type QGridLayoutmetacallProc* = proc(self: QGridLayout, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QGridLayoutsizeHintProc* = proc(self: QGridLayout): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QGridLayoutminimumSizeProc* = proc(self: QGridLayout): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QGridLayoutmaximumSizeProc* = proc(self: QGridLayout): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QGridLayouthasHeightForWidthProc* = proc(self: QGridLayout): bool {.raises: [], gcsafe.}
type QGridLayoutheightForWidthProc* = proc(self: QGridLayout, param1: cint): cint {.raises: [], gcsafe.}
type QGridLayoutminimumHeightForWidthProc* = proc(self: QGridLayout, param1: cint): cint {.raises: [], gcsafe.}
type QGridLayoutexpandingDirectionsProc* = proc(self: QGridLayout): cint {.raises: [], gcsafe.}
type QGridLayoutinvalidateProc* = proc(self: QGridLayout): void {.raises: [], gcsafe.}
type QGridLayoutitemAtProc* = proc(self: QGridLayout, index: cint): gen_qlayoutitem_types.QLayoutItem {.raises: [], gcsafe.}
type QGridLayouttakeAtProc* = proc(self: QGridLayout, index: cint): gen_qlayoutitem_types.QLayoutItem {.raises: [], gcsafe.}
type QGridLayoutcountProc* = proc(self: QGridLayout): cint {.raises: [], gcsafe.}
type QGridLayoutsetGeometryProc* = proc(self: QGridLayout, geometry: gen_qrect_types.QRect): void {.raises: [], gcsafe.}
type QGridLayoutaddItemWithQLayoutItemProc* = proc(self: QGridLayout, param1: gen_qlayoutitem_types.QLayoutItem): void {.raises: [], gcsafe.}
type QGridLayoutgeometryProc* = proc(self: QGridLayout): gen_qrect_types.QRect {.raises: [], gcsafe.}
type QGridLayoutindexOfProc* = proc(self: QGridLayout, param1: gen_qwidget_types.QWidget): cint {.raises: [], gcsafe.}
type QGridLayoutisEmptyProc* = proc(self: QGridLayout): bool {.raises: [], gcsafe.}
type QGridLayoutcontrolTypesProc* = proc(self: QGridLayout): cint {.raises: [], gcsafe.}
type QGridLayoutlayoutProc* = proc(self: QGridLayout): gen_qlayout_types.QLayout {.raises: [], gcsafe.}
type QGridLayoutchildEventProc* = proc(self: QGridLayout, e: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QGridLayouteventProc* = proc(self: QGridLayout, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QGridLayouteventFilterProc* = proc(self: QGridLayout, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QGridLayouttimerEventProc* = proc(self: QGridLayout, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QGridLayoutcustomEventProc* = proc(self: QGridLayout, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QGridLayoutconnectNotifyProc* = proc(self: QGridLayout, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QGridLayoutdisconnectNotifyProc* = proc(self: QGridLayout, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QGridLayoutwidgetProc* = proc(self: QGridLayout): gen_qwidget_types.QWidget {.raises: [], gcsafe.}
type QGridLayoutspacerItemProc* = proc(self: QGridLayout): gen_qlayoutitem_types.QSpacerItem {.raises: [], gcsafe.}

type QGridLayoutVTable* {.inheritable, pure.} = object
  vtbl: cQGridLayoutVTable
  metaObject*: QGridLayoutmetaObjectProc
  metacast*: QGridLayoutmetacastProc
  metacall*: QGridLayoutmetacallProc
  sizeHint*: QGridLayoutsizeHintProc
  minimumSize*: QGridLayoutminimumSizeProc
  maximumSize*: QGridLayoutmaximumSizeProc
  hasHeightForWidth*: QGridLayouthasHeightForWidthProc
  heightForWidth*: QGridLayoutheightForWidthProc
  minimumHeightForWidth*: QGridLayoutminimumHeightForWidthProc
  expandingDirections*: QGridLayoutexpandingDirectionsProc
  invalidate*: QGridLayoutinvalidateProc
  itemAt*: QGridLayoutitemAtProc
  takeAt*: QGridLayouttakeAtProc
  count*: QGridLayoutcountProc
  setGeometry*: QGridLayoutsetGeometryProc
  addItemWithQLayoutItem*: QGridLayoutaddItemWithQLayoutItemProc
  geometry*: QGridLayoutgeometryProc
  indexOf*: QGridLayoutindexOfProc
  isEmpty*: QGridLayoutisEmptyProc
  controlTypes*: QGridLayoutcontrolTypesProc
  layout*: QGridLayoutlayoutProc
  childEvent*: QGridLayoutchildEventProc
  event*: QGridLayouteventProc
  eventFilter*: QGridLayouteventFilterProc
  timerEvent*: QGridLayouttimerEventProc
  customEvent*: QGridLayoutcustomEventProc
  connectNotify*: QGridLayoutconnectNotifyProc
  disconnectNotify*: QGridLayoutdisconnectNotifyProc
  widget*: QGridLayoutwidgetProc
  spacerItem*: QGridLayoutspacerItemProc

proc QGridLayoutmetaObject*(self: gen_qgridlayout_types.QGridLayout): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQGridLayout_virtualbase_metaObject(self.h), owned: false)

proc QGridLayoutmetacast*(self: gen_qgridlayout_types.QGridLayout, param1: cstring): pointer =
  fcQGridLayout_virtualbase_metacast(self.h, param1)

proc QGridLayoutmetacall*(self: gen_qgridlayout_types.QGridLayout, param1: cint, param2: cint, param3: pointer): cint =
  fcQGridLayout_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc QGridLayoutsizeHint*(self: gen_qgridlayout_types.QGridLayout): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQGridLayout_virtualbase_sizeHint(self.h), owned: true)

proc QGridLayoutminimumSize*(self: gen_qgridlayout_types.QGridLayout): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQGridLayout_virtualbase_minimumSize(self.h), owned: true)

proc QGridLayoutmaximumSize*(self: gen_qgridlayout_types.QGridLayout): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQGridLayout_virtualbase_maximumSize(self.h), owned: true)

proc QGridLayouthasHeightForWidth*(self: gen_qgridlayout_types.QGridLayout): bool =
  fcQGridLayout_virtualbase_hasHeightForWidth(self.h)

proc QGridLayoutheightForWidth*(self: gen_qgridlayout_types.QGridLayout, param1: cint): cint =
  fcQGridLayout_virtualbase_heightForWidth(self.h, param1)

proc QGridLayoutminimumHeightForWidth*(self: gen_qgridlayout_types.QGridLayout, param1: cint): cint =
  fcQGridLayout_virtualbase_minimumHeightForWidth(self.h, param1)

proc QGridLayoutexpandingDirections*(self: gen_qgridlayout_types.QGridLayout): cint =
  cint(fcQGridLayout_virtualbase_expandingDirections(self.h))

proc QGridLayoutinvalidate*(self: gen_qgridlayout_types.QGridLayout): void =
  fcQGridLayout_virtualbase_invalidate(self.h)

proc QGridLayoutitemAt*(self: gen_qgridlayout_types.QGridLayout, index: cint): gen_qlayoutitem_types.QLayoutItem =
  gen_qlayoutitem_types.QLayoutItem(h: fcQGridLayout_virtualbase_itemAt(self.h, index), owned: false)

proc QGridLayouttakeAt*(self: gen_qgridlayout_types.QGridLayout, index: cint): gen_qlayoutitem_types.QLayoutItem =
  gen_qlayoutitem_types.QLayoutItem(h: fcQGridLayout_virtualbase_takeAt(self.h, index), owned: false)

proc QGridLayoutcount*(self: gen_qgridlayout_types.QGridLayout): cint =
  fcQGridLayout_virtualbase_count(self.h)

proc QGridLayoutsetGeometry*(self: gen_qgridlayout_types.QGridLayout, geometry: gen_qrect_types.QRect): void =
  fcQGridLayout_virtualbase_setGeometry(self.h, geometry.h)

proc QGridLayoutaddItem*(self: gen_qgridlayout_types.QGridLayout, param1: gen_qlayoutitem_types.QLayoutItem): void =
  fcQGridLayout_virtualbase_addItemWithQLayoutItem(self.h, param1.h)

proc QGridLayoutgeometry*(self: gen_qgridlayout_types.QGridLayout): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fcQGridLayout_virtualbase_geometry(self.h), owned: true)

proc QGridLayoutindexOf*(self: gen_qgridlayout_types.QGridLayout, param1: gen_qwidget_types.QWidget): cint =
  fcQGridLayout_virtualbase_indexOf(self.h, param1.h)

proc QGridLayoutisEmpty*(self: gen_qgridlayout_types.QGridLayout): bool =
  fcQGridLayout_virtualbase_isEmpty(self.h)

proc QGridLayoutcontrolTypes*(self: gen_qgridlayout_types.QGridLayout): cint =
  cint(fcQGridLayout_virtualbase_controlTypes(self.h))

proc QGridLayoutlayout*(self: gen_qgridlayout_types.QGridLayout): gen_qlayout_types.QLayout =
  gen_qlayout_types.QLayout(h: fcQGridLayout_virtualbase_layout(self.h), owned: false)

proc QGridLayoutchildEvent*(self: gen_qgridlayout_types.QGridLayout, e: gen_qcoreevent_types.QChildEvent): void =
  fcQGridLayout_virtualbase_childEvent(self.h, e.h)

proc QGridLayoutevent*(self: gen_qgridlayout_types.QGridLayout, event: gen_qcoreevent_types.QEvent): bool =
  fcQGridLayout_virtualbase_event(self.h, event.h)

proc QGridLayouteventFilter*(self: gen_qgridlayout_types.QGridLayout, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQGridLayout_virtualbase_eventFilter(self.h, watched.h, event.h)

proc QGridLayouttimerEvent*(self: gen_qgridlayout_types.QGridLayout, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQGridLayout_virtualbase_timerEvent(self.h, event.h)

proc QGridLayoutcustomEvent*(self: gen_qgridlayout_types.QGridLayout, event: gen_qcoreevent_types.QEvent): void =
  fcQGridLayout_virtualbase_customEvent(self.h, event.h)

proc QGridLayoutconnectNotify*(self: gen_qgridlayout_types.QGridLayout, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQGridLayout_virtualbase_connectNotify(self.h, signal.h)

proc QGridLayoutdisconnectNotify*(self: gen_qgridlayout_types.QGridLayout, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQGridLayout_virtualbase_disconnectNotify(self.h, signal.h)

proc QGridLayoutwidget*(self: gen_qgridlayout_types.QGridLayout): gen_qwidget_types.QWidget =
  gen_qwidget_types.QWidget(h: fcQGridLayout_virtualbase_widget(self.h), owned: false)

proc QGridLayoutspacerItem*(self: gen_qgridlayout_types.QGridLayout): gen_qlayoutitem_types.QSpacerItem =
  gen_qlayoutitem_types.QSpacerItem(h: fcQGridLayout_virtualbase_spacerItem(self.h), owned: false)


proc fcQGridLayout_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QGridLayoutVTable](fcQGridLayout_vdata(self))
  let self = QGridLayout(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQGridLayout_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QGridLayoutVTable](fcQGridLayout_vdata(self))
  let self = QGridLayout(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc fcQGridLayout_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QGridLayoutVTable](fcQGridLayout_vdata(self))
  let self = QGridLayout(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc fcQGridLayout_vtable_callback_sizeHint(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QGridLayoutVTable](fcQGridLayout_vdata(self))
  let self = QGridLayout(h: self)
  var virtualReturn = vtbl[].sizeHint(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQGridLayout_vtable_callback_minimumSize(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QGridLayoutVTable](fcQGridLayout_vdata(self))
  let self = QGridLayout(h: self)
  var virtualReturn = vtbl[].minimumSize(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQGridLayout_vtable_callback_maximumSize(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QGridLayoutVTable](fcQGridLayout_vdata(self))
  let self = QGridLayout(h: self)
  var virtualReturn = vtbl[].maximumSize(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQGridLayout_vtable_callback_hasHeightForWidth(self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QGridLayoutVTable](fcQGridLayout_vdata(self))
  let self = QGridLayout(h: self)
  var virtualReturn = vtbl[].hasHeightForWidth(self)
  virtualReturn

proc fcQGridLayout_vtable_callback_heightForWidth(self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QGridLayoutVTable](fcQGridLayout_vdata(self))
  let self = QGridLayout(h: self)
  let slotval1 = param1
  var virtualReturn = vtbl[].heightForWidth(self, slotval1)
  virtualReturn

proc fcQGridLayout_vtable_callback_minimumHeightForWidth(self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QGridLayoutVTable](fcQGridLayout_vdata(self))
  let self = QGridLayout(h: self)
  let slotval1 = param1
  var virtualReturn = vtbl[].minimumHeightForWidth(self, slotval1)
  virtualReturn

proc fcQGridLayout_vtable_callback_expandingDirections(self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QGridLayoutVTable](fcQGridLayout_vdata(self))
  let self = QGridLayout(h: self)
  var virtualReturn = vtbl[].expandingDirections(self)
  cint(virtualReturn)

proc fcQGridLayout_vtable_callback_invalidate(self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGridLayoutVTable](fcQGridLayout_vdata(self))
  let self = QGridLayout(h: self)
  vtbl[].invalidate(self)

proc fcQGridLayout_vtable_callback_itemAt(self: pointer, index: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QGridLayoutVTable](fcQGridLayout_vdata(self))
  let self = QGridLayout(h: self)
  let slotval1 = index
  var virtualReturn = vtbl[].itemAt(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQGridLayout_vtable_callback_takeAt(self: pointer, index: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QGridLayoutVTable](fcQGridLayout_vdata(self))
  let self = QGridLayout(h: self)
  let slotval1 = index
  var virtualReturn = vtbl[].takeAt(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQGridLayout_vtable_callback_count(self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QGridLayoutVTable](fcQGridLayout_vdata(self))
  let self = QGridLayout(h: self)
  var virtualReturn = vtbl[].count(self)
  virtualReturn

proc fcQGridLayout_vtable_callback_setGeometry(self: pointer, geometry: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGridLayoutVTable](fcQGridLayout_vdata(self))
  let self = QGridLayout(h: self)
  let slotval1 = gen_qrect_types.QRect(h: geometry, owned: false)
  vtbl[].setGeometry(self, slotval1)

proc fcQGridLayout_vtable_callback_addItemWithQLayoutItem(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGridLayoutVTable](fcQGridLayout_vdata(self))
  let self = QGridLayout(h: self)
  let slotval1 = gen_qlayoutitem_types.QLayoutItem(h: param1, owned: false)
  vtbl[].addItemWithQLayoutItem(self, slotval1)

proc fcQGridLayout_vtable_callback_geometry(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QGridLayoutVTable](fcQGridLayout_vdata(self))
  let self = QGridLayout(h: self)
  var virtualReturn = vtbl[].geometry(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQGridLayout_vtable_callback_indexOf(self: pointer, param1: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QGridLayoutVTable](fcQGridLayout_vdata(self))
  let self = QGridLayout(h: self)
  let slotval1 = gen_qwidget_types.QWidget(h: param1, owned: false)
  var virtualReturn = vtbl[].indexOf(self, slotval1)
  virtualReturn

proc fcQGridLayout_vtable_callback_isEmpty(self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QGridLayoutVTable](fcQGridLayout_vdata(self))
  let self = QGridLayout(h: self)
  var virtualReturn = vtbl[].isEmpty(self)
  virtualReturn

proc fcQGridLayout_vtable_callback_controlTypes(self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QGridLayoutVTable](fcQGridLayout_vdata(self))
  let self = QGridLayout(h: self)
  var virtualReturn = vtbl[].controlTypes(self)
  cint(virtualReturn)

proc fcQGridLayout_vtable_callback_layout(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QGridLayoutVTable](fcQGridLayout_vdata(self))
  let self = QGridLayout(h: self)
  var virtualReturn = vtbl[].layout(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQGridLayout_vtable_callback_childEvent(self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGridLayoutVTable](fcQGridLayout_vdata(self))
  let self = QGridLayout(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: e, owned: false)
  vtbl[].childEvent(self, slotval1)

proc fcQGridLayout_vtable_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QGridLayoutVTable](fcQGridLayout_vdata(self))
  let self = QGridLayout(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc fcQGridLayout_vtable_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QGridLayoutVTable](fcQGridLayout_vdata(self))
  let self = QGridLayout(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc fcQGridLayout_vtable_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGridLayoutVTable](fcQGridLayout_vdata(self))
  let self = QGridLayout(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc fcQGridLayout_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGridLayoutVTable](fcQGridLayout_vdata(self))
  let self = QGridLayout(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc fcQGridLayout_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGridLayoutVTable](fcQGridLayout_vdata(self))
  let self = QGridLayout(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc fcQGridLayout_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGridLayoutVTable](fcQGridLayout_vdata(self))
  let self = QGridLayout(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

proc fcQGridLayout_vtable_callback_widget(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QGridLayoutVTable](fcQGridLayout_vdata(self))
  let self = QGridLayout(h: self)
  var virtualReturn = vtbl[].widget(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQGridLayout_vtable_callback_spacerItem(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QGridLayoutVTable](fcQGridLayout_vdata(self))
  let self = QGridLayout(h: self)
  var virtualReturn = vtbl[].spacerItem(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

type VirtualQGridLayout* {.inheritable.} = ref object of QGridLayout
  vtbl*: cQGridLayoutVTable

method metaObject*(self: VirtualQGridLayout): gen_qobjectdefs_types.QMetaObject {.base.} =
  QGridLayoutmetaObject(self[])
method metacast*(self: VirtualQGridLayout, param1: cstring): pointer {.base.} =
  QGridLayoutmetacast(self[], param1)
method metacall*(self: VirtualQGridLayout, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QGridLayoutmetacall(self[], param1, param2, param3)
method sizeHint*(self: VirtualQGridLayout): gen_qsize_types.QSize {.base.} =
  QGridLayoutsizeHint(self[])
method minimumSize*(self: VirtualQGridLayout): gen_qsize_types.QSize {.base.} =
  QGridLayoutminimumSize(self[])
method maximumSize*(self: VirtualQGridLayout): gen_qsize_types.QSize {.base.} =
  QGridLayoutmaximumSize(self[])
method hasHeightForWidth*(self: VirtualQGridLayout): bool {.base.} =
  QGridLayouthasHeightForWidth(self[])
method heightForWidth*(self: VirtualQGridLayout, param1: cint): cint {.base.} =
  QGridLayoutheightForWidth(self[], param1)
method minimumHeightForWidth*(self: VirtualQGridLayout, param1: cint): cint {.base.} =
  QGridLayoutminimumHeightForWidth(self[], param1)
method expandingDirections*(self: VirtualQGridLayout): cint {.base.} =
  QGridLayoutexpandingDirections(self[])
method invalidate*(self: VirtualQGridLayout): void {.base.} =
  QGridLayoutinvalidate(self[])
method itemAt*(self: VirtualQGridLayout, index: cint): gen_qlayoutitem_types.QLayoutItem {.base.} =
  QGridLayoutitemAt(self[], index)
method takeAt*(self: VirtualQGridLayout, index: cint): gen_qlayoutitem_types.QLayoutItem {.base.} =
  QGridLayouttakeAt(self[], index)
method count*(self: VirtualQGridLayout): cint {.base.} =
  QGridLayoutcount(self[])
method setGeometry*(self: VirtualQGridLayout, geometry: gen_qrect_types.QRect): void {.base.} =
  QGridLayoutsetGeometry(self[], geometry)
method addItem*(self: VirtualQGridLayout, param1: gen_qlayoutitem_types.QLayoutItem): void {.base.} =
  QGridLayoutaddItem(self[], param1)
method geometry*(self: VirtualQGridLayout): gen_qrect_types.QRect {.base.} =
  QGridLayoutgeometry(self[])
method indexOf*(self: VirtualQGridLayout, param1: gen_qwidget_types.QWidget): cint {.base.} =
  QGridLayoutindexOf(self[], param1)
method isEmpty*(self: VirtualQGridLayout): bool {.base.} =
  QGridLayoutisEmpty(self[])
method controlTypes*(self: VirtualQGridLayout): cint {.base.} =
  QGridLayoutcontrolTypes(self[])
method layout*(self: VirtualQGridLayout): gen_qlayout_types.QLayout {.base.} =
  QGridLayoutlayout(self[])
method childEvent*(self: VirtualQGridLayout, e: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QGridLayoutchildEvent(self[], e)
method event*(self: VirtualQGridLayout, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QGridLayoutevent(self[], event)
method eventFilter*(self: VirtualQGridLayout, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QGridLayouteventFilter(self[], watched, event)
method timerEvent*(self: VirtualQGridLayout, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QGridLayouttimerEvent(self[], event)
method customEvent*(self: VirtualQGridLayout, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QGridLayoutcustomEvent(self[], event)
method connectNotify*(self: VirtualQGridLayout, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QGridLayoutconnectNotify(self[], signal)
method disconnectNotify*(self: VirtualQGridLayout, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QGridLayoutdisconnectNotify(self[], signal)
method widget*(self: VirtualQGridLayout): gen_qwidget_types.QWidget {.base.} =
  QGridLayoutwidget(self[])
method spacerItem*(self: VirtualQGridLayout): gen_qlayoutitem_types.QSpacerItem {.base.} =
  QGridLayoutspacerItem(self[])

proc fcQGridLayout_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQGridLayout](fcQGridLayout_vdata(self))
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQGridLayout_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQGridLayout](fcQGridLayout_vdata(self))
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

proc fcQGridLayout_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQGridLayout](fcQGridLayout_vdata(self))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

proc fcQGridLayout_method_callback_sizeHint(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQGridLayout](fcQGridLayout_vdata(self))
  var virtualReturn = inst.sizeHint()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQGridLayout_method_callback_minimumSize(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQGridLayout](fcQGridLayout_vdata(self))
  var virtualReturn = inst.minimumSize()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQGridLayout_method_callback_maximumSize(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQGridLayout](fcQGridLayout_vdata(self))
  var virtualReturn = inst.maximumSize()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQGridLayout_method_callback_hasHeightForWidth(self: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQGridLayout](fcQGridLayout_vdata(self))
  var virtualReturn = inst.hasHeightForWidth()
  virtualReturn

proc fcQGridLayout_method_callback_heightForWidth(self: pointer, param1: cint): cint {.cdecl.} =
  let inst = cast[VirtualQGridLayout](fcQGridLayout_vdata(self))
  let slotval1 = param1
  var virtualReturn = inst.heightForWidth(slotval1)
  virtualReturn

proc fcQGridLayout_method_callback_minimumHeightForWidth(self: pointer, param1: cint): cint {.cdecl.} =
  let inst = cast[VirtualQGridLayout](fcQGridLayout_vdata(self))
  let slotval1 = param1
  var virtualReturn = inst.minimumHeightForWidth(slotval1)
  virtualReturn

proc fcQGridLayout_method_callback_expandingDirections(self: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQGridLayout](fcQGridLayout_vdata(self))
  var virtualReturn = inst.expandingDirections()
  cint(virtualReturn)

proc fcQGridLayout_method_callback_invalidate(self: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGridLayout](fcQGridLayout_vdata(self))
  inst.invalidate()

proc fcQGridLayout_method_callback_itemAt(self: pointer, index: cint): pointer {.cdecl.} =
  let inst = cast[VirtualQGridLayout](fcQGridLayout_vdata(self))
  let slotval1 = index
  var virtualReturn = inst.itemAt(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQGridLayout_method_callback_takeAt(self: pointer, index: cint): pointer {.cdecl.} =
  let inst = cast[VirtualQGridLayout](fcQGridLayout_vdata(self))
  let slotval1 = index
  var virtualReturn = inst.takeAt(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQGridLayout_method_callback_count(self: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQGridLayout](fcQGridLayout_vdata(self))
  var virtualReturn = inst.count()
  virtualReturn

proc fcQGridLayout_method_callback_setGeometry(self: pointer, geometry: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGridLayout](fcQGridLayout_vdata(self))
  let slotval1 = gen_qrect_types.QRect(h: geometry, owned: false)
  inst.setGeometry(slotval1)

proc fcQGridLayout_method_callback_addItemWithQLayoutItem(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGridLayout](fcQGridLayout_vdata(self))
  let slotval1 = gen_qlayoutitem_types.QLayoutItem(h: param1, owned: false)
  inst.addItem(slotval1)

proc fcQGridLayout_method_callback_geometry(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQGridLayout](fcQGridLayout_vdata(self))
  var virtualReturn = inst.geometry()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQGridLayout_method_callback_indexOf(self: pointer, param1: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQGridLayout](fcQGridLayout_vdata(self))
  let slotval1 = gen_qwidget_types.QWidget(h: param1, owned: false)
  var virtualReturn = inst.indexOf(slotval1)
  virtualReturn

proc fcQGridLayout_method_callback_isEmpty(self: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQGridLayout](fcQGridLayout_vdata(self))
  var virtualReturn = inst.isEmpty()
  virtualReturn

proc fcQGridLayout_method_callback_controlTypes(self: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQGridLayout](fcQGridLayout_vdata(self))
  var virtualReturn = inst.controlTypes()
  cint(virtualReturn)

proc fcQGridLayout_method_callback_layout(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQGridLayout](fcQGridLayout_vdata(self))
  var virtualReturn = inst.layout()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQGridLayout_method_callback_childEvent(self: pointer, e: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGridLayout](fcQGridLayout_vdata(self))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: e, owned: false)
  inst.childEvent(slotval1)

proc fcQGridLayout_method_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQGridLayout](fcQGridLayout_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

proc fcQGridLayout_method_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQGridLayout](fcQGridLayout_vdata(self))
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

proc fcQGridLayout_method_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGridLayout](fcQGridLayout_vdata(self))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  inst.timerEvent(slotval1)

proc fcQGridLayout_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGridLayout](fcQGridLayout_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)

proc fcQGridLayout_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGridLayout](fcQGridLayout_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

proc fcQGridLayout_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGridLayout](fcQGridLayout_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.disconnectNotify(slotval1)

proc fcQGridLayout_method_callback_widget(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQGridLayout](fcQGridLayout_vdata(self))
  var virtualReturn = inst.widget()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQGridLayout_method_callback_spacerItem(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQGridLayout](fcQGridLayout_vdata(self))
  var virtualReturn = inst.spacerItem()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h


proc widgetEvent*(self: gen_qgridlayout_types.QGridLayout, param1: gen_qcoreevent_types.QEvent): void =
  fcQGridLayout_protectedbase_widgetEvent(self.h, param1.h)

proc addChildLayout*(self: gen_qgridlayout_types.QGridLayout, l: gen_qlayout_types.QLayout): void =
  fcQGridLayout_protectedbase_addChildLayout(self.h, l.h)

proc addChildWidget*(self: gen_qgridlayout_types.QGridLayout, w: gen_qwidget_types.QWidget): void =
  fcQGridLayout_protectedbase_addChildWidget(self.h, w.h)

proc adoptLayout*(self: gen_qgridlayout_types.QGridLayout, layout: gen_qlayout_types.QLayout): bool =
  fcQGridLayout_protectedbase_adoptLayout(self.h, layout.h)

proc alignmentRect*(self: gen_qgridlayout_types.QGridLayout, param1: gen_qrect_types.QRect): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fcQGridLayout_protectedbase_alignmentRect(self.h, param1.h), owned: true)

proc sender*(self: gen_qgridlayout_types.QGridLayout): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQGridLayout_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qgridlayout_types.QGridLayout): cint =
  fcQGridLayout_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qgridlayout_types.QGridLayout, signal: cstring): cint =
  fcQGridLayout_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qgridlayout_types.QGridLayout, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQGridLayout_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qgridlayout_types.QGridLayout,
    parent: gen_qwidget_types.QWidget,
    vtbl: ref QGridLayoutVTable = nil): gen_qgridlayout_types.QGridLayout =
  let vtbl = if vtbl == nil: new QGridLayoutVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QGridLayoutVTable](fcQGridLayout_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQGridLayout_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQGridLayout_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQGridLayout_vtable_callback_metacall
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = fcQGridLayout_vtable_callback_sizeHint
  if not isNil(vtbl[].minimumSize):
    vtbl[].vtbl.minimumSize = fcQGridLayout_vtable_callback_minimumSize
  if not isNil(vtbl[].maximumSize):
    vtbl[].vtbl.maximumSize = fcQGridLayout_vtable_callback_maximumSize
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = fcQGridLayout_vtable_callback_hasHeightForWidth
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = fcQGridLayout_vtable_callback_heightForWidth
  if not isNil(vtbl[].minimumHeightForWidth):
    vtbl[].vtbl.minimumHeightForWidth = fcQGridLayout_vtable_callback_minimumHeightForWidth
  if not isNil(vtbl[].expandingDirections):
    vtbl[].vtbl.expandingDirections = fcQGridLayout_vtable_callback_expandingDirections
  if not isNil(vtbl[].invalidate):
    vtbl[].vtbl.invalidate = fcQGridLayout_vtable_callback_invalidate
  if not isNil(vtbl[].itemAt):
    vtbl[].vtbl.itemAt = fcQGridLayout_vtable_callback_itemAt
  if not isNil(vtbl[].takeAt):
    vtbl[].vtbl.takeAt = fcQGridLayout_vtable_callback_takeAt
  if not isNil(vtbl[].count):
    vtbl[].vtbl.count = fcQGridLayout_vtable_callback_count
  if not isNil(vtbl[].setGeometry):
    vtbl[].vtbl.setGeometry = fcQGridLayout_vtable_callback_setGeometry
  if not isNil(vtbl[].addItemWithQLayoutItem):
    vtbl[].vtbl.addItemWithQLayoutItem = fcQGridLayout_vtable_callback_addItemWithQLayoutItem
  if not isNil(vtbl[].geometry):
    vtbl[].vtbl.geometry = fcQGridLayout_vtable_callback_geometry
  if not isNil(vtbl[].indexOf):
    vtbl[].vtbl.indexOf = fcQGridLayout_vtable_callback_indexOf
  if not isNil(vtbl[].isEmpty):
    vtbl[].vtbl.isEmpty = fcQGridLayout_vtable_callback_isEmpty
  if not isNil(vtbl[].controlTypes):
    vtbl[].vtbl.controlTypes = fcQGridLayout_vtable_callback_controlTypes
  if not isNil(vtbl[].layout):
    vtbl[].vtbl.layout = fcQGridLayout_vtable_callback_layout
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQGridLayout_vtable_callback_childEvent
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQGridLayout_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQGridLayout_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQGridLayout_vtable_callback_timerEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQGridLayout_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQGridLayout_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQGridLayout_vtable_callback_disconnectNotify
  if not isNil(vtbl[].widget):
    vtbl[].vtbl.widget = fcQGridLayout_vtable_callback_widget
  if not isNil(vtbl[].spacerItem):
    vtbl[].vtbl.spacerItem = fcQGridLayout_vtable_callback_spacerItem
  gen_qgridlayout_types.QGridLayout(h: fcQGridLayout_new(addr(vtbl[].vtbl), addr(vtbl[]), parent.h), owned: true)

proc create*(T: type gen_qgridlayout_types.QGridLayout,
    vtbl: ref QGridLayoutVTable = nil): gen_qgridlayout_types.QGridLayout =
  let vtbl = if vtbl == nil: new QGridLayoutVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QGridLayoutVTable](fcQGridLayout_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQGridLayout_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQGridLayout_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQGridLayout_vtable_callback_metacall
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = fcQGridLayout_vtable_callback_sizeHint
  if not isNil(vtbl[].minimumSize):
    vtbl[].vtbl.minimumSize = fcQGridLayout_vtable_callback_minimumSize
  if not isNil(vtbl[].maximumSize):
    vtbl[].vtbl.maximumSize = fcQGridLayout_vtable_callback_maximumSize
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = fcQGridLayout_vtable_callback_hasHeightForWidth
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = fcQGridLayout_vtable_callback_heightForWidth
  if not isNil(vtbl[].minimumHeightForWidth):
    vtbl[].vtbl.minimumHeightForWidth = fcQGridLayout_vtable_callback_minimumHeightForWidth
  if not isNil(vtbl[].expandingDirections):
    vtbl[].vtbl.expandingDirections = fcQGridLayout_vtable_callback_expandingDirections
  if not isNil(vtbl[].invalidate):
    vtbl[].vtbl.invalidate = fcQGridLayout_vtable_callback_invalidate
  if not isNil(vtbl[].itemAt):
    vtbl[].vtbl.itemAt = fcQGridLayout_vtable_callback_itemAt
  if not isNil(vtbl[].takeAt):
    vtbl[].vtbl.takeAt = fcQGridLayout_vtable_callback_takeAt
  if not isNil(vtbl[].count):
    vtbl[].vtbl.count = fcQGridLayout_vtable_callback_count
  if not isNil(vtbl[].setGeometry):
    vtbl[].vtbl.setGeometry = fcQGridLayout_vtable_callback_setGeometry
  if not isNil(vtbl[].addItemWithQLayoutItem):
    vtbl[].vtbl.addItemWithQLayoutItem = fcQGridLayout_vtable_callback_addItemWithQLayoutItem
  if not isNil(vtbl[].geometry):
    vtbl[].vtbl.geometry = fcQGridLayout_vtable_callback_geometry
  if not isNil(vtbl[].indexOf):
    vtbl[].vtbl.indexOf = fcQGridLayout_vtable_callback_indexOf
  if not isNil(vtbl[].isEmpty):
    vtbl[].vtbl.isEmpty = fcQGridLayout_vtable_callback_isEmpty
  if not isNil(vtbl[].controlTypes):
    vtbl[].vtbl.controlTypes = fcQGridLayout_vtable_callback_controlTypes
  if not isNil(vtbl[].layout):
    vtbl[].vtbl.layout = fcQGridLayout_vtable_callback_layout
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQGridLayout_vtable_callback_childEvent
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQGridLayout_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQGridLayout_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQGridLayout_vtable_callback_timerEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQGridLayout_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQGridLayout_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQGridLayout_vtable_callback_disconnectNotify
  if not isNil(vtbl[].widget):
    vtbl[].vtbl.widget = fcQGridLayout_vtable_callback_widget
  if not isNil(vtbl[].spacerItem):
    vtbl[].vtbl.spacerItem = fcQGridLayout_vtable_callback_spacerItem
  gen_qgridlayout_types.QGridLayout(h: fcQGridLayout_new2(addr(vtbl[].vtbl), addr(vtbl[])), owned: true)

const cQGridLayout_mvtbl = cQGridLayoutVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQGridLayout()[])](self.fcQGridLayout_vtbl())
    inst[].h = nil
    inst[].owned = false,

  metaObject: fcQGridLayout_method_callback_metaObject,
  metacast: fcQGridLayout_method_callback_metacast,
  metacall: fcQGridLayout_method_callback_metacall,
  sizeHint: fcQGridLayout_method_callback_sizeHint,
  minimumSize: fcQGridLayout_method_callback_minimumSize,
  maximumSize: fcQGridLayout_method_callback_maximumSize,
  hasHeightForWidth: fcQGridLayout_method_callback_hasHeightForWidth,
  heightForWidth: fcQGridLayout_method_callback_heightForWidth,
  minimumHeightForWidth: fcQGridLayout_method_callback_minimumHeightForWidth,
  expandingDirections: fcQGridLayout_method_callback_expandingDirections,
  invalidate: fcQGridLayout_method_callback_invalidate,
  itemAt: fcQGridLayout_method_callback_itemAt,
  takeAt: fcQGridLayout_method_callback_takeAt,
  count: fcQGridLayout_method_callback_count,
  setGeometry: fcQGridLayout_method_callback_setGeometry,
  addItemWithQLayoutItem: fcQGridLayout_method_callback_addItemWithQLayoutItem,
  geometry: fcQGridLayout_method_callback_geometry,
  indexOf: fcQGridLayout_method_callback_indexOf,
  isEmpty: fcQGridLayout_method_callback_isEmpty,
  controlTypes: fcQGridLayout_method_callback_controlTypes,
  layout: fcQGridLayout_method_callback_layout,
  childEvent: fcQGridLayout_method_callback_childEvent,
  event: fcQGridLayout_method_callback_event,
  eventFilter: fcQGridLayout_method_callback_eventFilter,
  timerEvent: fcQGridLayout_method_callback_timerEvent,
  customEvent: fcQGridLayout_method_callback_customEvent,
  connectNotify: fcQGridLayout_method_callback_connectNotify,
  disconnectNotify: fcQGridLayout_method_callback_disconnectNotify,
  widget: fcQGridLayout_method_callback_widget,
  spacerItem: fcQGridLayout_method_callback_spacerItem,
)
proc create*(T: type gen_qgridlayout_types.QGridLayout,
    parent: gen_qwidget_types.QWidget,
    inst: VirtualQGridLayout) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQGridLayout_new(addr(cQGridLayout_mvtbl), addr(inst[]), parent.h)
  inst[].owned = true

proc create*(T: type gen_qgridlayout_types.QGridLayout,
    inst: VirtualQGridLayout) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQGridLayout_new2(addr(cQGridLayout_mvtbl), addr(inst[]))
  inst[].owned = true

proc staticMetaObject*(_: type gen_qgridlayout_types.QGridLayout): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQGridLayout_staticMetaObject())
