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
{.compile("gen_qlayoutitem.cpp", cflags).}


import ./gen_qlayoutitem_types
export gen_qlayoutitem_types

import
  ../QtCore/gen_qrect_types,
  ../QtCore/gen_qsize_types,
  ./gen_qlayout_types,
  ./gen_qsizepolicy_types,
  ./gen_qwidget_types
export
  gen_qrect_types,
  gen_qsize_types,
  gen_qlayout_types,
  gen_qsizepolicy_types,
  gen_qwidget_types

type cQLayoutItem*{.exportc: "QLayoutItem", incompleteStruct.} = object
type cQSpacerItem*{.exportc: "QSpacerItem", incompleteStruct.} = object
type cQWidgetItem*{.exportc: "QWidgetItem", incompleteStruct.} = object
type cQWidgetItemV2*{.exportc: "QWidgetItemV2", incompleteStruct.} = object

proc fcQLayoutItem_new(): ptr cQLayoutItem {.importc: "QLayoutItem_new".}
proc fcQLayoutItem_new2(param1: pointer): ptr cQLayoutItem {.importc: "QLayoutItem_new2".}
proc fcQLayoutItem_new3(alignment: cint): ptr cQLayoutItem {.importc: "QLayoutItem_new3".}
proc fcQLayoutItem_sizeHint(self: pointer, ): pointer {.importc: "QLayoutItem_sizeHint".}
proc fcQLayoutItem_minimumSize(self: pointer, ): pointer {.importc: "QLayoutItem_minimumSize".}
proc fcQLayoutItem_maximumSize(self: pointer, ): pointer {.importc: "QLayoutItem_maximumSize".}
proc fcQLayoutItem_expandingDirections(self: pointer, ): cint {.importc: "QLayoutItem_expandingDirections".}
proc fcQLayoutItem_setGeometry(self: pointer, geometry: pointer): void {.importc: "QLayoutItem_setGeometry".}
proc fcQLayoutItem_geometry(self: pointer, ): pointer {.importc: "QLayoutItem_geometry".}
proc fcQLayoutItem_isEmpty(self: pointer, ): bool {.importc: "QLayoutItem_isEmpty".}
proc fcQLayoutItem_hasHeightForWidth(self: pointer, ): bool {.importc: "QLayoutItem_hasHeightForWidth".}
proc fcQLayoutItem_heightForWidth(self: pointer, param1: cint): cint {.importc: "QLayoutItem_heightForWidth".}
proc fcQLayoutItem_minimumHeightForWidth(self: pointer, param1: cint): cint {.importc: "QLayoutItem_minimumHeightForWidth".}
proc fcQLayoutItem_invalidate(self: pointer, ): void {.importc: "QLayoutItem_invalidate".}
proc fcQLayoutItem_widget(self: pointer, ): pointer {.importc: "QLayoutItem_widget".}
proc fcQLayoutItem_layout(self: pointer, ): pointer {.importc: "QLayoutItem_layout".}
proc fcQLayoutItem_spacerItem(self: pointer, ): pointer {.importc: "QLayoutItem_spacerItem".}
proc fcQLayoutItem_alignment(self: pointer, ): cint {.importc: "QLayoutItem_alignment".}
proc fcQLayoutItem_setAlignment(self: pointer, a: cint): void {.importc: "QLayoutItem_setAlignment".}
proc fcQLayoutItem_controlTypes(self: pointer, ): cint {.importc: "QLayoutItem_controlTypes".}
proc fcQLayoutItem_override_virtual_sizeHint(self: pointer, slot: int) {.importc: "QLayoutItem_override_virtual_sizeHint".}
proc fcQLayoutItem_override_virtual_minimumSize(self: pointer, slot: int) {.importc: "QLayoutItem_override_virtual_minimumSize".}
proc fcQLayoutItem_override_virtual_maximumSize(self: pointer, slot: int) {.importc: "QLayoutItem_override_virtual_maximumSize".}
proc fcQLayoutItem_override_virtual_expandingDirections(self: pointer, slot: int) {.importc: "QLayoutItem_override_virtual_expandingDirections".}
proc fcQLayoutItem_override_virtual_setGeometry(self: pointer, slot: int) {.importc: "QLayoutItem_override_virtual_setGeometry".}
proc fcQLayoutItem_override_virtual_geometry(self: pointer, slot: int) {.importc: "QLayoutItem_override_virtual_geometry".}
proc fcQLayoutItem_override_virtual_isEmpty(self: pointer, slot: int) {.importc: "QLayoutItem_override_virtual_isEmpty".}
proc fQLayoutItem_virtualbase_hasHeightForWidth(self: pointer, ): bool{.importc: "QLayoutItem_virtualbase_hasHeightForWidth".}
proc fcQLayoutItem_override_virtual_hasHeightForWidth(self: pointer, slot: int) {.importc: "QLayoutItem_override_virtual_hasHeightForWidth".}
proc fQLayoutItem_virtualbase_heightForWidth(self: pointer, param1: cint): cint{.importc: "QLayoutItem_virtualbase_heightForWidth".}
proc fcQLayoutItem_override_virtual_heightForWidth(self: pointer, slot: int) {.importc: "QLayoutItem_override_virtual_heightForWidth".}
proc fQLayoutItem_virtualbase_minimumHeightForWidth(self: pointer, param1: cint): cint{.importc: "QLayoutItem_virtualbase_minimumHeightForWidth".}
proc fcQLayoutItem_override_virtual_minimumHeightForWidth(self: pointer, slot: int) {.importc: "QLayoutItem_override_virtual_minimumHeightForWidth".}
proc fQLayoutItem_virtualbase_invalidate(self: pointer, ): void{.importc: "QLayoutItem_virtualbase_invalidate".}
proc fcQLayoutItem_override_virtual_invalidate(self: pointer, slot: int) {.importc: "QLayoutItem_override_virtual_invalidate".}
proc fQLayoutItem_virtualbase_widget(self: pointer, ): pointer{.importc: "QLayoutItem_virtualbase_widget".}
proc fcQLayoutItem_override_virtual_widget(self: pointer, slot: int) {.importc: "QLayoutItem_override_virtual_widget".}
proc fQLayoutItem_virtualbase_layout(self: pointer, ): pointer{.importc: "QLayoutItem_virtualbase_layout".}
proc fcQLayoutItem_override_virtual_layout(self: pointer, slot: int) {.importc: "QLayoutItem_override_virtual_layout".}
proc fQLayoutItem_virtualbase_spacerItem(self: pointer, ): pointer{.importc: "QLayoutItem_virtualbase_spacerItem".}
proc fcQLayoutItem_override_virtual_spacerItem(self: pointer, slot: int) {.importc: "QLayoutItem_override_virtual_spacerItem".}
proc fQLayoutItem_virtualbase_controlTypes(self: pointer, ): cint{.importc: "QLayoutItem_virtualbase_controlTypes".}
proc fcQLayoutItem_override_virtual_controlTypes(self: pointer, slot: int) {.importc: "QLayoutItem_override_virtual_controlTypes".}
proc fcQLayoutItem_delete(self: pointer) {.importc: "QLayoutItem_delete".}
proc fcQSpacerItem_new(w: cint, h: cint): ptr cQSpacerItem {.importc: "QSpacerItem_new".}
proc fcQSpacerItem_new2(param1: pointer): ptr cQSpacerItem {.importc: "QSpacerItem_new2".}
proc fcQSpacerItem_new3(w: cint, h: cint, hData: cint): ptr cQSpacerItem {.importc: "QSpacerItem_new3".}
proc fcQSpacerItem_new4(w: cint, h: cint, hData: cint, vData: cint): ptr cQSpacerItem {.importc: "QSpacerItem_new4".}
proc fcQSpacerItem_changeSize(self: pointer, w: cint, h: cint): void {.importc: "QSpacerItem_changeSize".}
proc fcQSpacerItem_sizeHint(self: pointer, ): pointer {.importc: "QSpacerItem_sizeHint".}
proc fcQSpacerItem_minimumSize(self: pointer, ): pointer {.importc: "QSpacerItem_minimumSize".}
proc fcQSpacerItem_maximumSize(self: pointer, ): pointer {.importc: "QSpacerItem_maximumSize".}
proc fcQSpacerItem_expandingDirections(self: pointer, ): cint {.importc: "QSpacerItem_expandingDirections".}
proc fcQSpacerItem_isEmpty(self: pointer, ): bool {.importc: "QSpacerItem_isEmpty".}
proc fcQSpacerItem_setGeometry(self: pointer, geometry: pointer): void {.importc: "QSpacerItem_setGeometry".}
proc fcQSpacerItem_geometry(self: pointer, ): pointer {.importc: "QSpacerItem_geometry".}
proc fcQSpacerItem_spacerItem(self: pointer, ): pointer {.importc: "QSpacerItem_spacerItem".}
proc fcQSpacerItem_sizePolicy(self: pointer, ): pointer {.importc: "QSpacerItem_sizePolicy".}
proc fcQSpacerItem_changeSize3(self: pointer, w: cint, h: cint, hData: cint): void {.importc: "QSpacerItem_changeSize3".}
proc fcQSpacerItem_changeSize4(self: pointer, w: cint, h: cint, hData: cint, vData: cint): void {.importc: "QSpacerItem_changeSize4".}
proc fQSpacerItem_virtualbase_sizeHint(self: pointer, ): pointer{.importc: "QSpacerItem_virtualbase_sizeHint".}
proc fcQSpacerItem_override_virtual_sizeHint(self: pointer, slot: int) {.importc: "QSpacerItem_override_virtual_sizeHint".}
proc fQSpacerItem_virtualbase_minimumSize(self: pointer, ): pointer{.importc: "QSpacerItem_virtualbase_minimumSize".}
proc fcQSpacerItem_override_virtual_minimumSize(self: pointer, slot: int) {.importc: "QSpacerItem_override_virtual_minimumSize".}
proc fQSpacerItem_virtualbase_maximumSize(self: pointer, ): pointer{.importc: "QSpacerItem_virtualbase_maximumSize".}
proc fcQSpacerItem_override_virtual_maximumSize(self: pointer, slot: int) {.importc: "QSpacerItem_override_virtual_maximumSize".}
proc fQSpacerItem_virtualbase_expandingDirections(self: pointer, ): cint{.importc: "QSpacerItem_virtualbase_expandingDirections".}
proc fcQSpacerItem_override_virtual_expandingDirections(self: pointer, slot: int) {.importc: "QSpacerItem_override_virtual_expandingDirections".}
proc fQSpacerItem_virtualbase_isEmpty(self: pointer, ): bool{.importc: "QSpacerItem_virtualbase_isEmpty".}
proc fcQSpacerItem_override_virtual_isEmpty(self: pointer, slot: int) {.importc: "QSpacerItem_override_virtual_isEmpty".}
proc fQSpacerItem_virtualbase_setGeometry(self: pointer, geometry: pointer): void{.importc: "QSpacerItem_virtualbase_setGeometry".}
proc fcQSpacerItem_override_virtual_setGeometry(self: pointer, slot: int) {.importc: "QSpacerItem_override_virtual_setGeometry".}
proc fQSpacerItem_virtualbase_geometry(self: pointer, ): pointer{.importc: "QSpacerItem_virtualbase_geometry".}
proc fcQSpacerItem_override_virtual_geometry(self: pointer, slot: int) {.importc: "QSpacerItem_override_virtual_geometry".}
proc fQSpacerItem_virtualbase_spacerItem(self: pointer, ): pointer{.importc: "QSpacerItem_virtualbase_spacerItem".}
proc fcQSpacerItem_override_virtual_spacerItem(self: pointer, slot: int) {.importc: "QSpacerItem_override_virtual_spacerItem".}
proc fQSpacerItem_virtualbase_hasHeightForWidth(self: pointer, ): bool{.importc: "QSpacerItem_virtualbase_hasHeightForWidth".}
proc fcQSpacerItem_override_virtual_hasHeightForWidth(self: pointer, slot: int) {.importc: "QSpacerItem_override_virtual_hasHeightForWidth".}
proc fQSpacerItem_virtualbase_heightForWidth(self: pointer, param1: cint): cint{.importc: "QSpacerItem_virtualbase_heightForWidth".}
proc fcQSpacerItem_override_virtual_heightForWidth(self: pointer, slot: int) {.importc: "QSpacerItem_override_virtual_heightForWidth".}
proc fQSpacerItem_virtualbase_minimumHeightForWidth(self: pointer, param1: cint): cint{.importc: "QSpacerItem_virtualbase_minimumHeightForWidth".}
proc fcQSpacerItem_override_virtual_minimumHeightForWidth(self: pointer, slot: int) {.importc: "QSpacerItem_override_virtual_minimumHeightForWidth".}
proc fQSpacerItem_virtualbase_invalidate(self: pointer, ): void{.importc: "QSpacerItem_virtualbase_invalidate".}
proc fcQSpacerItem_override_virtual_invalidate(self: pointer, slot: int) {.importc: "QSpacerItem_override_virtual_invalidate".}
proc fQSpacerItem_virtualbase_widget(self: pointer, ): pointer{.importc: "QSpacerItem_virtualbase_widget".}
proc fcQSpacerItem_override_virtual_widget(self: pointer, slot: int) {.importc: "QSpacerItem_override_virtual_widget".}
proc fQSpacerItem_virtualbase_layout(self: pointer, ): pointer{.importc: "QSpacerItem_virtualbase_layout".}
proc fcQSpacerItem_override_virtual_layout(self: pointer, slot: int) {.importc: "QSpacerItem_override_virtual_layout".}
proc fQSpacerItem_virtualbase_controlTypes(self: pointer, ): cint{.importc: "QSpacerItem_virtualbase_controlTypes".}
proc fcQSpacerItem_override_virtual_controlTypes(self: pointer, slot: int) {.importc: "QSpacerItem_override_virtual_controlTypes".}
proc fcQSpacerItem_delete(self: pointer) {.importc: "QSpacerItem_delete".}
proc fcQWidgetItem_new(w: pointer): ptr cQWidgetItem {.importc: "QWidgetItem_new".}
proc fcQWidgetItem_sizeHint(self: pointer, ): pointer {.importc: "QWidgetItem_sizeHint".}
proc fcQWidgetItem_minimumSize(self: pointer, ): pointer {.importc: "QWidgetItem_minimumSize".}
proc fcQWidgetItem_maximumSize(self: pointer, ): pointer {.importc: "QWidgetItem_maximumSize".}
proc fcQWidgetItem_expandingDirections(self: pointer, ): cint {.importc: "QWidgetItem_expandingDirections".}
proc fcQWidgetItem_isEmpty(self: pointer, ): bool {.importc: "QWidgetItem_isEmpty".}
proc fcQWidgetItem_setGeometry(self: pointer, geometry: pointer): void {.importc: "QWidgetItem_setGeometry".}
proc fcQWidgetItem_geometry(self: pointer, ): pointer {.importc: "QWidgetItem_geometry".}
proc fcQWidgetItem_widget(self: pointer, ): pointer {.importc: "QWidgetItem_widget".}
proc fcQWidgetItem_hasHeightForWidth(self: pointer, ): bool {.importc: "QWidgetItem_hasHeightForWidth".}
proc fcQWidgetItem_heightForWidth(self: pointer, param1: cint): cint {.importc: "QWidgetItem_heightForWidth".}
proc fcQWidgetItem_controlTypes(self: pointer, ): cint {.importc: "QWidgetItem_controlTypes".}
proc fQWidgetItem_virtualbase_sizeHint(self: pointer, ): pointer{.importc: "QWidgetItem_virtualbase_sizeHint".}
proc fcQWidgetItem_override_virtual_sizeHint(self: pointer, slot: int) {.importc: "QWidgetItem_override_virtual_sizeHint".}
proc fQWidgetItem_virtualbase_minimumSize(self: pointer, ): pointer{.importc: "QWidgetItem_virtualbase_minimumSize".}
proc fcQWidgetItem_override_virtual_minimumSize(self: pointer, slot: int) {.importc: "QWidgetItem_override_virtual_minimumSize".}
proc fQWidgetItem_virtualbase_maximumSize(self: pointer, ): pointer{.importc: "QWidgetItem_virtualbase_maximumSize".}
proc fcQWidgetItem_override_virtual_maximumSize(self: pointer, slot: int) {.importc: "QWidgetItem_override_virtual_maximumSize".}
proc fQWidgetItem_virtualbase_expandingDirections(self: pointer, ): cint{.importc: "QWidgetItem_virtualbase_expandingDirections".}
proc fcQWidgetItem_override_virtual_expandingDirections(self: pointer, slot: int) {.importc: "QWidgetItem_override_virtual_expandingDirections".}
proc fQWidgetItem_virtualbase_isEmpty(self: pointer, ): bool{.importc: "QWidgetItem_virtualbase_isEmpty".}
proc fcQWidgetItem_override_virtual_isEmpty(self: pointer, slot: int) {.importc: "QWidgetItem_override_virtual_isEmpty".}
proc fQWidgetItem_virtualbase_setGeometry(self: pointer, geometry: pointer): void{.importc: "QWidgetItem_virtualbase_setGeometry".}
proc fcQWidgetItem_override_virtual_setGeometry(self: pointer, slot: int) {.importc: "QWidgetItem_override_virtual_setGeometry".}
proc fQWidgetItem_virtualbase_geometry(self: pointer, ): pointer{.importc: "QWidgetItem_virtualbase_geometry".}
proc fcQWidgetItem_override_virtual_geometry(self: pointer, slot: int) {.importc: "QWidgetItem_override_virtual_geometry".}
proc fQWidgetItem_virtualbase_widget(self: pointer, ): pointer{.importc: "QWidgetItem_virtualbase_widget".}
proc fcQWidgetItem_override_virtual_widget(self: pointer, slot: int) {.importc: "QWidgetItem_override_virtual_widget".}
proc fQWidgetItem_virtualbase_hasHeightForWidth(self: pointer, ): bool{.importc: "QWidgetItem_virtualbase_hasHeightForWidth".}
proc fcQWidgetItem_override_virtual_hasHeightForWidth(self: pointer, slot: int) {.importc: "QWidgetItem_override_virtual_hasHeightForWidth".}
proc fQWidgetItem_virtualbase_heightForWidth(self: pointer, param1: cint): cint{.importc: "QWidgetItem_virtualbase_heightForWidth".}
proc fcQWidgetItem_override_virtual_heightForWidth(self: pointer, slot: int) {.importc: "QWidgetItem_override_virtual_heightForWidth".}
proc fQWidgetItem_virtualbase_controlTypes(self: pointer, ): cint{.importc: "QWidgetItem_virtualbase_controlTypes".}
proc fcQWidgetItem_override_virtual_controlTypes(self: pointer, slot: int) {.importc: "QWidgetItem_override_virtual_controlTypes".}
proc fQWidgetItem_virtualbase_minimumHeightForWidth(self: pointer, param1: cint): cint{.importc: "QWidgetItem_virtualbase_minimumHeightForWidth".}
proc fcQWidgetItem_override_virtual_minimumHeightForWidth(self: pointer, slot: int) {.importc: "QWidgetItem_override_virtual_minimumHeightForWidth".}
proc fQWidgetItem_virtualbase_invalidate(self: pointer, ): void{.importc: "QWidgetItem_virtualbase_invalidate".}
proc fcQWidgetItem_override_virtual_invalidate(self: pointer, slot: int) {.importc: "QWidgetItem_override_virtual_invalidate".}
proc fQWidgetItem_virtualbase_layout(self: pointer, ): pointer{.importc: "QWidgetItem_virtualbase_layout".}
proc fcQWidgetItem_override_virtual_layout(self: pointer, slot: int) {.importc: "QWidgetItem_override_virtual_layout".}
proc fQWidgetItem_virtualbase_spacerItem(self: pointer, ): pointer{.importc: "QWidgetItem_virtualbase_spacerItem".}
proc fcQWidgetItem_override_virtual_spacerItem(self: pointer, slot: int) {.importc: "QWidgetItem_override_virtual_spacerItem".}
proc fcQWidgetItem_delete(self: pointer) {.importc: "QWidgetItem_delete".}
proc fcQWidgetItemV2_new(widget: pointer): ptr cQWidgetItemV2 {.importc: "QWidgetItemV2_new".}
proc fcQWidgetItemV2_sizeHint(self: pointer, ): pointer {.importc: "QWidgetItemV2_sizeHint".}
proc fcQWidgetItemV2_minimumSize(self: pointer, ): pointer {.importc: "QWidgetItemV2_minimumSize".}
proc fcQWidgetItemV2_maximumSize(self: pointer, ): pointer {.importc: "QWidgetItemV2_maximumSize".}
proc fcQWidgetItemV2_heightForWidth(self: pointer, width: cint): cint {.importc: "QWidgetItemV2_heightForWidth".}
proc fQWidgetItemV2_virtualbase_sizeHint(self: pointer, ): pointer{.importc: "QWidgetItemV2_virtualbase_sizeHint".}
proc fcQWidgetItemV2_override_virtual_sizeHint(self: pointer, slot: int) {.importc: "QWidgetItemV2_override_virtual_sizeHint".}
proc fQWidgetItemV2_virtualbase_minimumSize(self: pointer, ): pointer{.importc: "QWidgetItemV2_virtualbase_minimumSize".}
proc fcQWidgetItemV2_override_virtual_minimumSize(self: pointer, slot: int) {.importc: "QWidgetItemV2_override_virtual_minimumSize".}
proc fQWidgetItemV2_virtualbase_maximumSize(self: pointer, ): pointer{.importc: "QWidgetItemV2_virtualbase_maximumSize".}
proc fcQWidgetItemV2_override_virtual_maximumSize(self: pointer, slot: int) {.importc: "QWidgetItemV2_override_virtual_maximumSize".}
proc fQWidgetItemV2_virtualbase_heightForWidth(self: pointer, width: cint): cint{.importc: "QWidgetItemV2_virtualbase_heightForWidth".}
proc fcQWidgetItemV2_override_virtual_heightForWidth(self: pointer, slot: int) {.importc: "QWidgetItemV2_override_virtual_heightForWidth".}
proc fQWidgetItemV2_virtualbase_expandingDirections(self: pointer, ): cint{.importc: "QWidgetItemV2_virtualbase_expandingDirections".}
proc fcQWidgetItemV2_override_virtual_expandingDirections(self: pointer, slot: int) {.importc: "QWidgetItemV2_override_virtual_expandingDirections".}
proc fQWidgetItemV2_virtualbase_isEmpty(self: pointer, ): bool{.importc: "QWidgetItemV2_virtualbase_isEmpty".}
proc fcQWidgetItemV2_override_virtual_isEmpty(self: pointer, slot: int) {.importc: "QWidgetItemV2_override_virtual_isEmpty".}
proc fQWidgetItemV2_virtualbase_setGeometry(self: pointer, geometry: pointer): void{.importc: "QWidgetItemV2_virtualbase_setGeometry".}
proc fcQWidgetItemV2_override_virtual_setGeometry(self: pointer, slot: int) {.importc: "QWidgetItemV2_override_virtual_setGeometry".}
proc fQWidgetItemV2_virtualbase_geometry(self: pointer, ): pointer{.importc: "QWidgetItemV2_virtualbase_geometry".}
proc fcQWidgetItemV2_override_virtual_geometry(self: pointer, slot: int) {.importc: "QWidgetItemV2_override_virtual_geometry".}
proc fQWidgetItemV2_virtualbase_widget(self: pointer, ): pointer{.importc: "QWidgetItemV2_virtualbase_widget".}
proc fcQWidgetItemV2_override_virtual_widget(self: pointer, slot: int) {.importc: "QWidgetItemV2_override_virtual_widget".}
proc fQWidgetItemV2_virtualbase_hasHeightForWidth(self: pointer, ): bool{.importc: "QWidgetItemV2_virtualbase_hasHeightForWidth".}
proc fcQWidgetItemV2_override_virtual_hasHeightForWidth(self: pointer, slot: int) {.importc: "QWidgetItemV2_override_virtual_hasHeightForWidth".}
proc fQWidgetItemV2_virtualbase_controlTypes(self: pointer, ): cint{.importc: "QWidgetItemV2_virtualbase_controlTypes".}
proc fcQWidgetItemV2_override_virtual_controlTypes(self: pointer, slot: int) {.importc: "QWidgetItemV2_override_virtual_controlTypes".}
proc fQWidgetItemV2_virtualbase_minimumHeightForWidth(self: pointer, param1: cint): cint{.importc: "QWidgetItemV2_virtualbase_minimumHeightForWidth".}
proc fcQWidgetItemV2_override_virtual_minimumHeightForWidth(self: pointer, slot: int) {.importc: "QWidgetItemV2_override_virtual_minimumHeightForWidth".}
proc fQWidgetItemV2_virtualbase_invalidate(self: pointer, ): void{.importc: "QWidgetItemV2_virtualbase_invalidate".}
proc fcQWidgetItemV2_override_virtual_invalidate(self: pointer, slot: int) {.importc: "QWidgetItemV2_override_virtual_invalidate".}
proc fQWidgetItemV2_virtualbase_layout(self: pointer, ): pointer{.importc: "QWidgetItemV2_virtualbase_layout".}
proc fcQWidgetItemV2_override_virtual_layout(self: pointer, slot: int) {.importc: "QWidgetItemV2_override_virtual_layout".}
proc fQWidgetItemV2_virtualbase_spacerItem(self: pointer, ): pointer{.importc: "QWidgetItemV2_virtualbase_spacerItem".}
proc fcQWidgetItemV2_override_virtual_spacerItem(self: pointer, slot: int) {.importc: "QWidgetItemV2_override_virtual_spacerItem".}
proc fcQWidgetItemV2_delete(self: pointer) {.importc: "QWidgetItemV2_delete".}


func init*(T: type gen_qlayoutitem_types.QLayoutItem, h: ptr cQLayoutItem): gen_qlayoutitem_types.QLayoutItem =
  T(h: h)
proc create*(T: type gen_qlayoutitem_types.QLayoutItem, ): gen_qlayoutitem_types.QLayoutItem =
  gen_qlayoutitem_types.QLayoutItem.init(fcQLayoutItem_new())

proc create*(T: type gen_qlayoutitem_types.QLayoutItem, param1: gen_qlayoutitem_types.QLayoutItem): gen_qlayoutitem_types.QLayoutItem =
  gen_qlayoutitem_types.QLayoutItem.init(fcQLayoutItem_new2(param1.h))

proc create*(T: type gen_qlayoutitem_types.QLayoutItem, alignment: cint): gen_qlayoutitem_types.QLayoutItem =
  gen_qlayoutitem_types.QLayoutItem.init(fcQLayoutItem_new3(cint(alignment)))

proc sizeHint*(self: gen_qlayoutitem_types.QLayoutItem, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQLayoutItem_sizeHint(self.h))

proc minimumSize*(self: gen_qlayoutitem_types.QLayoutItem, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQLayoutItem_minimumSize(self.h))

proc maximumSize*(self: gen_qlayoutitem_types.QLayoutItem, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQLayoutItem_maximumSize(self.h))

proc expandingDirections*(self: gen_qlayoutitem_types.QLayoutItem, ): cint =
  cint(fcQLayoutItem_expandingDirections(self.h))

proc setGeometry*(self: gen_qlayoutitem_types.QLayoutItem, geometry: gen_qrect_types.QRect): void =
  fcQLayoutItem_setGeometry(self.h, geometry.h)

proc geometry*(self: gen_qlayoutitem_types.QLayoutItem, ): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fcQLayoutItem_geometry(self.h))

proc isEmpty*(self: gen_qlayoutitem_types.QLayoutItem, ): bool =
  fcQLayoutItem_isEmpty(self.h)

proc hasHeightForWidth*(self: gen_qlayoutitem_types.QLayoutItem, ): bool =
  fcQLayoutItem_hasHeightForWidth(self.h)

proc heightForWidth*(self: gen_qlayoutitem_types.QLayoutItem, param1: cint): cint =
  fcQLayoutItem_heightForWidth(self.h, param1)

proc minimumHeightForWidth*(self: gen_qlayoutitem_types.QLayoutItem, param1: cint): cint =
  fcQLayoutItem_minimumHeightForWidth(self.h, param1)

proc invalidate*(self: gen_qlayoutitem_types.QLayoutItem, ): void =
  fcQLayoutItem_invalidate(self.h)

proc widget*(self: gen_qlayoutitem_types.QLayoutItem, ): gen_qwidget_types.QWidget =
  gen_qwidget_types.QWidget(h: fcQLayoutItem_widget(self.h))

proc layout*(self: gen_qlayoutitem_types.QLayoutItem, ): gen_qlayout_types.QLayout =
  gen_qlayout_types.QLayout(h: fcQLayoutItem_layout(self.h))

proc spacerItem*(self: gen_qlayoutitem_types.QLayoutItem, ): gen_qlayoutitem_types.QSpacerItem =
  gen_qlayoutitem_types.QSpacerItem(h: fcQLayoutItem_spacerItem(self.h))

proc alignment*(self: gen_qlayoutitem_types.QLayoutItem, ): cint =
  cint(fcQLayoutItem_alignment(self.h))

proc setAlignment*(self: gen_qlayoutitem_types.QLayoutItem, a: cint): void =
  fcQLayoutItem_setAlignment(self.h, cint(a))

proc controlTypes*(self: gen_qlayoutitem_types.QLayoutItem, ): cint =
  cint(fcQLayoutItem_controlTypes(self.h))

type QLayoutItemsizeHintProc* = proc(): gen_qsize_types.QSize
proc onsizeHint*(self: gen_qlayoutitem_types.QLayoutItem, slot: QLayoutItemsizeHintProc) =
  # TODO check subclass
  var tmp = new QLayoutItemsizeHintProc
  tmp[] = slot
  GC_ref(tmp)
  fcQLayoutItem_override_virtual_sizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLayoutItem_sizeHint(self: ptr cQLayoutItem, slot: int): pointer {.exportc: "miqt_exec_callback_QLayoutItem_sizeHint ".} =
  var nimfunc = cast[ptr QLayoutItemsizeHintProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
type QLayoutItemminimumSizeProc* = proc(): gen_qsize_types.QSize
proc onminimumSize*(self: gen_qlayoutitem_types.QLayoutItem, slot: QLayoutItemminimumSizeProc) =
  # TODO check subclass
  var tmp = new QLayoutItemminimumSizeProc
  tmp[] = slot
  GC_ref(tmp)
  fcQLayoutItem_override_virtual_minimumSize(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLayoutItem_minimumSize(self: ptr cQLayoutItem, slot: int): pointer {.exportc: "miqt_exec_callback_QLayoutItem_minimumSize ".} =
  var nimfunc = cast[ptr QLayoutItemminimumSizeProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
type QLayoutItemmaximumSizeProc* = proc(): gen_qsize_types.QSize
proc onmaximumSize*(self: gen_qlayoutitem_types.QLayoutItem, slot: QLayoutItemmaximumSizeProc) =
  # TODO check subclass
  var tmp = new QLayoutItemmaximumSizeProc
  tmp[] = slot
  GC_ref(tmp)
  fcQLayoutItem_override_virtual_maximumSize(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLayoutItem_maximumSize(self: ptr cQLayoutItem, slot: int): pointer {.exportc: "miqt_exec_callback_QLayoutItem_maximumSize ".} =
  var nimfunc = cast[ptr QLayoutItemmaximumSizeProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
type QLayoutItemexpandingDirectionsProc* = proc(): cint
proc onexpandingDirections*(self: gen_qlayoutitem_types.QLayoutItem, slot: QLayoutItemexpandingDirectionsProc) =
  # TODO check subclass
  var tmp = new QLayoutItemexpandingDirectionsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQLayoutItem_override_virtual_expandingDirections(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLayoutItem_expandingDirections(self: ptr cQLayoutItem, slot: int): cint {.exportc: "miqt_exec_callback_QLayoutItem_expandingDirections ".} =
  var nimfunc = cast[ptr QLayoutItemexpandingDirectionsProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  cint(virtualReturn)
type QLayoutItemsetGeometryProc* = proc(geometry: gen_qrect_types.QRect): void
proc onsetGeometry*(self: gen_qlayoutitem_types.QLayoutItem, slot: QLayoutItemsetGeometryProc) =
  # TODO check subclass
  var tmp = new QLayoutItemsetGeometryProc
  tmp[] = slot
  GC_ref(tmp)
  fcQLayoutItem_override_virtual_setGeometry(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLayoutItem_setGeometry(self: ptr cQLayoutItem, slot: int, geometry: pointer): void {.exportc: "miqt_exec_callback_QLayoutItem_setGeometry ".} =
  var nimfunc = cast[ptr QLayoutItemsetGeometryProc](cast[pointer](slot))
  let slotval1 = gen_qrect_types.QRect(h: geometry)


  nimfunc[](slotval1)
type QLayoutItemgeometryProc* = proc(): gen_qrect_types.QRect
proc ongeometry*(self: gen_qlayoutitem_types.QLayoutItem, slot: QLayoutItemgeometryProc) =
  # TODO check subclass
  var tmp = new QLayoutItemgeometryProc
  tmp[] = slot
  GC_ref(tmp)
  fcQLayoutItem_override_virtual_geometry(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLayoutItem_geometry(self: ptr cQLayoutItem, slot: int): pointer {.exportc: "miqt_exec_callback_QLayoutItem_geometry ".} =
  var nimfunc = cast[ptr QLayoutItemgeometryProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
type QLayoutItemisEmptyProc* = proc(): bool
proc onisEmpty*(self: gen_qlayoutitem_types.QLayoutItem, slot: QLayoutItemisEmptyProc) =
  # TODO check subclass
  var tmp = new QLayoutItemisEmptyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQLayoutItem_override_virtual_isEmpty(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLayoutItem_isEmpty(self: ptr cQLayoutItem, slot: int): bool {.exportc: "miqt_exec_callback_QLayoutItem_isEmpty ".} =
  var nimfunc = cast[ptr QLayoutItemisEmptyProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QLayoutItemhasHeightForWidth*(self: gen_qlayoutitem_types.QLayoutItem, ): bool =
  fQLayoutItem_virtualbase_hasHeightForWidth(self.h)

type QLayoutItemhasHeightForWidthProc* = proc(): bool
proc onhasHeightForWidth*(self: gen_qlayoutitem_types.QLayoutItem, slot: QLayoutItemhasHeightForWidthProc) =
  # TODO check subclass
  var tmp = new QLayoutItemhasHeightForWidthProc
  tmp[] = slot
  GC_ref(tmp)
  fcQLayoutItem_override_virtual_hasHeightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLayoutItem_hasHeightForWidth(self: ptr cQLayoutItem, slot: int): bool {.exportc: "miqt_exec_callback_QLayoutItem_hasHeightForWidth ".} =
  var nimfunc = cast[ptr QLayoutItemhasHeightForWidthProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QLayoutItemheightForWidth*(self: gen_qlayoutitem_types.QLayoutItem, param1: cint): cint =
  fQLayoutItem_virtualbase_heightForWidth(self.h, param1)

type QLayoutItemheightForWidthProc* = proc(param1: cint): cint
proc onheightForWidth*(self: gen_qlayoutitem_types.QLayoutItem, slot: QLayoutItemheightForWidthProc) =
  # TODO check subclass
  var tmp = new QLayoutItemheightForWidthProc
  tmp[] = slot
  GC_ref(tmp)
  fcQLayoutItem_override_virtual_heightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLayoutItem_heightForWidth(self: ptr cQLayoutItem, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QLayoutItem_heightForWidth ".} =
  var nimfunc = cast[ptr QLayoutItemheightForWidthProc](cast[pointer](slot))
  let slotval1 = param1


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QLayoutItemminimumHeightForWidth*(self: gen_qlayoutitem_types.QLayoutItem, param1: cint): cint =
  fQLayoutItem_virtualbase_minimumHeightForWidth(self.h, param1)

type QLayoutItemminimumHeightForWidthProc* = proc(param1: cint): cint
proc onminimumHeightForWidth*(self: gen_qlayoutitem_types.QLayoutItem, slot: QLayoutItemminimumHeightForWidthProc) =
  # TODO check subclass
  var tmp = new QLayoutItemminimumHeightForWidthProc
  tmp[] = slot
  GC_ref(tmp)
  fcQLayoutItem_override_virtual_minimumHeightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLayoutItem_minimumHeightForWidth(self: ptr cQLayoutItem, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QLayoutItem_minimumHeightForWidth ".} =
  var nimfunc = cast[ptr QLayoutItemminimumHeightForWidthProc](cast[pointer](slot))
  let slotval1 = param1


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QLayoutIteminvalidate*(self: gen_qlayoutitem_types.QLayoutItem, ): void =
  fQLayoutItem_virtualbase_invalidate(self.h)

type QLayoutIteminvalidateProc* = proc(): void
proc oninvalidate*(self: gen_qlayoutitem_types.QLayoutItem, slot: QLayoutIteminvalidateProc) =
  # TODO check subclass
  var tmp = new QLayoutIteminvalidateProc
  tmp[] = slot
  GC_ref(tmp)
  fcQLayoutItem_override_virtual_invalidate(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLayoutItem_invalidate(self: ptr cQLayoutItem, slot: int): void {.exportc: "miqt_exec_callback_QLayoutItem_invalidate ".} =
  var nimfunc = cast[ptr QLayoutIteminvalidateProc](cast[pointer](slot))

  nimfunc[]()
proc QLayoutItemwidget*(self: gen_qlayoutitem_types.QLayoutItem, ): gen_qwidget_types.QWidget =
  gen_qwidget_types.QWidget(h: fQLayoutItem_virtualbase_widget(self.h))

type QLayoutItemwidgetProc* = proc(): gen_qwidget_types.QWidget
proc onwidget*(self: gen_qlayoutitem_types.QLayoutItem, slot: QLayoutItemwidgetProc) =
  # TODO check subclass
  var tmp = new QLayoutItemwidgetProc
  tmp[] = slot
  GC_ref(tmp)
  fcQLayoutItem_override_virtual_widget(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLayoutItem_widget(self: ptr cQLayoutItem, slot: int): pointer {.exportc: "miqt_exec_callback_QLayoutItem_widget ".} =
  var nimfunc = cast[ptr QLayoutItemwidgetProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QLayoutItemlayout*(self: gen_qlayoutitem_types.QLayoutItem, ): gen_qlayout_types.QLayout =
  gen_qlayout_types.QLayout(h: fQLayoutItem_virtualbase_layout(self.h))

type QLayoutItemlayoutProc* = proc(): gen_qlayout_types.QLayout
proc onlayout*(self: gen_qlayoutitem_types.QLayoutItem, slot: QLayoutItemlayoutProc) =
  # TODO check subclass
  var tmp = new QLayoutItemlayoutProc
  tmp[] = slot
  GC_ref(tmp)
  fcQLayoutItem_override_virtual_layout(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLayoutItem_layout(self: ptr cQLayoutItem, slot: int): pointer {.exportc: "miqt_exec_callback_QLayoutItem_layout ".} =
  var nimfunc = cast[ptr QLayoutItemlayoutProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QLayoutItemspacerItem*(self: gen_qlayoutitem_types.QLayoutItem, ): gen_qlayoutitem_types.QSpacerItem =
  gen_qlayoutitem_types.QSpacerItem(h: fQLayoutItem_virtualbase_spacerItem(self.h))

type QLayoutItemspacerItemProc* = proc(): gen_qlayoutitem_types.QSpacerItem
proc onspacerItem*(self: gen_qlayoutitem_types.QLayoutItem, slot: QLayoutItemspacerItemProc) =
  # TODO check subclass
  var tmp = new QLayoutItemspacerItemProc
  tmp[] = slot
  GC_ref(tmp)
  fcQLayoutItem_override_virtual_spacerItem(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLayoutItem_spacerItem(self: ptr cQLayoutItem, slot: int): pointer {.exportc: "miqt_exec_callback_QLayoutItem_spacerItem ".} =
  var nimfunc = cast[ptr QLayoutItemspacerItemProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QLayoutItemcontrolTypes*(self: gen_qlayoutitem_types.QLayoutItem, ): cint =
  cint(fQLayoutItem_virtualbase_controlTypes(self.h))

type QLayoutItemcontrolTypesProc* = proc(): cint
proc oncontrolTypes*(self: gen_qlayoutitem_types.QLayoutItem, slot: QLayoutItemcontrolTypesProc) =
  # TODO check subclass
  var tmp = new QLayoutItemcontrolTypesProc
  tmp[] = slot
  GC_ref(tmp)
  fcQLayoutItem_override_virtual_controlTypes(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLayoutItem_controlTypes(self: ptr cQLayoutItem, slot: int): cint {.exportc: "miqt_exec_callback_QLayoutItem_controlTypes ".} =
  var nimfunc = cast[ptr QLayoutItemcontrolTypesProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  cint(virtualReturn)
proc delete*(self: gen_qlayoutitem_types.QLayoutItem) =
  fcQLayoutItem_delete(self.h)

func init*(T: type gen_qlayoutitem_types.QSpacerItem, h: ptr cQSpacerItem): gen_qlayoutitem_types.QSpacerItem =
  T(h: h)
proc create*(T: type gen_qlayoutitem_types.QSpacerItem, w: cint, h: cint): gen_qlayoutitem_types.QSpacerItem =
  gen_qlayoutitem_types.QSpacerItem.init(fcQSpacerItem_new(w, h))

proc create*(T: type gen_qlayoutitem_types.QSpacerItem, param1: gen_qlayoutitem_types.QSpacerItem): gen_qlayoutitem_types.QSpacerItem =
  gen_qlayoutitem_types.QSpacerItem.init(fcQSpacerItem_new2(param1.h))

proc create*(T: type gen_qlayoutitem_types.QSpacerItem, w: cint, h: cint, hData: cint): gen_qlayoutitem_types.QSpacerItem =
  gen_qlayoutitem_types.QSpacerItem.init(fcQSpacerItem_new3(w, h, cint(hData)))

proc create*(T: type gen_qlayoutitem_types.QSpacerItem, w: cint, h: cint, hData: cint, vData: cint): gen_qlayoutitem_types.QSpacerItem =
  gen_qlayoutitem_types.QSpacerItem.init(fcQSpacerItem_new4(w, h, cint(hData), cint(vData)))

proc changeSize*(self: gen_qlayoutitem_types.QSpacerItem, w: cint, h: cint): void =
  fcQSpacerItem_changeSize(self.h, w, h)

proc sizeHint*(self: gen_qlayoutitem_types.QSpacerItem, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQSpacerItem_sizeHint(self.h))

proc minimumSize*(self: gen_qlayoutitem_types.QSpacerItem, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQSpacerItem_minimumSize(self.h))

proc maximumSize*(self: gen_qlayoutitem_types.QSpacerItem, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQSpacerItem_maximumSize(self.h))

proc expandingDirections*(self: gen_qlayoutitem_types.QSpacerItem, ): cint =
  cint(fcQSpacerItem_expandingDirections(self.h))

proc isEmpty*(self: gen_qlayoutitem_types.QSpacerItem, ): bool =
  fcQSpacerItem_isEmpty(self.h)

proc setGeometry*(self: gen_qlayoutitem_types.QSpacerItem, geometry: gen_qrect_types.QRect): void =
  fcQSpacerItem_setGeometry(self.h, geometry.h)

proc geometry*(self: gen_qlayoutitem_types.QSpacerItem, ): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fcQSpacerItem_geometry(self.h))

proc spacerItem*(self: gen_qlayoutitem_types.QSpacerItem, ): gen_qlayoutitem_types.QSpacerItem =
  gen_qlayoutitem_types.QSpacerItem(h: fcQSpacerItem_spacerItem(self.h))

proc sizePolicy*(self: gen_qlayoutitem_types.QSpacerItem, ): gen_qsizepolicy_types.QSizePolicy =
  gen_qsizepolicy_types.QSizePolicy(h: fcQSpacerItem_sizePolicy(self.h))

proc changeSize*(self: gen_qlayoutitem_types.QSpacerItem, w: cint, h: cint, hData: cint): void =
  fcQSpacerItem_changeSize3(self.h, w, h, cint(hData))

proc changeSize*(self: gen_qlayoutitem_types.QSpacerItem, w: cint, h: cint, hData: cint, vData: cint): void =
  fcQSpacerItem_changeSize4(self.h, w, h, cint(hData), cint(vData))

proc QSpacerItemsizeHint*(self: gen_qlayoutitem_types.QSpacerItem, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fQSpacerItem_virtualbase_sizeHint(self.h))

type QSpacerItemsizeHintProc* = proc(): gen_qsize_types.QSize
proc onsizeHint*(self: gen_qlayoutitem_types.QSpacerItem, slot: QSpacerItemsizeHintProc) =
  # TODO check subclass
  var tmp = new QSpacerItemsizeHintProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSpacerItem_override_virtual_sizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSpacerItem_sizeHint(self: ptr cQSpacerItem, slot: int): pointer {.exportc: "miqt_exec_callback_QSpacerItem_sizeHint ".} =
  var nimfunc = cast[ptr QSpacerItemsizeHintProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QSpacerItemminimumSize*(self: gen_qlayoutitem_types.QSpacerItem, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fQSpacerItem_virtualbase_minimumSize(self.h))

type QSpacerItemminimumSizeProc* = proc(): gen_qsize_types.QSize
proc onminimumSize*(self: gen_qlayoutitem_types.QSpacerItem, slot: QSpacerItemminimumSizeProc) =
  # TODO check subclass
  var tmp = new QSpacerItemminimumSizeProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSpacerItem_override_virtual_minimumSize(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSpacerItem_minimumSize(self: ptr cQSpacerItem, slot: int): pointer {.exportc: "miqt_exec_callback_QSpacerItem_minimumSize ".} =
  var nimfunc = cast[ptr QSpacerItemminimumSizeProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QSpacerItemmaximumSize*(self: gen_qlayoutitem_types.QSpacerItem, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fQSpacerItem_virtualbase_maximumSize(self.h))

type QSpacerItemmaximumSizeProc* = proc(): gen_qsize_types.QSize
proc onmaximumSize*(self: gen_qlayoutitem_types.QSpacerItem, slot: QSpacerItemmaximumSizeProc) =
  # TODO check subclass
  var tmp = new QSpacerItemmaximumSizeProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSpacerItem_override_virtual_maximumSize(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSpacerItem_maximumSize(self: ptr cQSpacerItem, slot: int): pointer {.exportc: "miqt_exec_callback_QSpacerItem_maximumSize ".} =
  var nimfunc = cast[ptr QSpacerItemmaximumSizeProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QSpacerItemexpandingDirections*(self: gen_qlayoutitem_types.QSpacerItem, ): cint =
  cint(fQSpacerItem_virtualbase_expandingDirections(self.h))

type QSpacerItemexpandingDirectionsProc* = proc(): cint
proc onexpandingDirections*(self: gen_qlayoutitem_types.QSpacerItem, slot: QSpacerItemexpandingDirectionsProc) =
  # TODO check subclass
  var tmp = new QSpacerItemexpandingDirectionsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSpacerItem_override_virtual_expandingDirections(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSpacerItem_expandingDirections(self: ptr cQSpacerItem, slot: int): cint {.exportc: "miqt_exec_callback_QSpacerItem_expandingDirections ".} =
  var nimfunc = cast[ptr QSpacerItemexpandingDirectionsProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  cint(virtualReturn)
proc QSpacerItemisEmpty*(self: gen_qlayoutitem_types.QSpacerItem, ): bool =
  fQSpacerItem_virtualbase_isEmpty(self.h)

type QSpacerItemisEmptyProc* = proc(): bool
proc onisEmpty*(self: gen_qlayoutitem_types.QSpacerItem, slot: QSpacerItemisEmptyProc) =
  # TODO check subclass
  var tmp = new QSpacerItemisEmptyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSpacerItem_override_virtual_isEmpty(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSpacerItem_isEmpty(self: ptr cQSpacerItem, slot: int): bool {.exportc: "miqt_exec_callback_QSpacerItem_isEmpty ".} =
  var nimfunc = cast[ptr QSpacerItemisEmptyProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QSpacerItemsetGeometry*(self: gen_qlayoutitem_types.QSpacerItem, geometry: gen_qrect_types.QRect): void =
  fQSpacerItem_virtualbase_setGeometry(self.h, geometry.h)

type QSpacerItemsetGeometryProc* = proc(geometry: gen_qrect_types.QRect): void
proc onsetGeometry*(self: gen_qlayoutitem_types.QSpacerItem, slot: QSpacerItemsetGeometryProc) =
  # TODO check subclass
  var tmp = new QSpacerItemsetGeometryProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSpacerItem_override_virtual_setGeometry(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSpacerItem_setGeometry(self: ptr cQSpacerItem, slot: int, geometry: pointer): void {.exportc: "miqt_exec_callback_QSpacerItem_setGeometry ".} =
  var nimfunc = cast[ptr QSpacerItemsetGeometryProc](cast[pointer](slot))
  let slotval1 = gen_qrect_types.QRect(h: geometry)


  nimfunc[](slotval1)
proc QSpacerItemgeometry*(self: gen_qlayoutitem_types.QSpacerItem, ): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fQSpacerItem_virtualbase_geometry(self.h))

type QSpacerItemgeometryProc* = proc(): gen_qrect_types.QRect
proc ongeometry*(self: gen_qlayoutitem_types.QSpacerItem, slot: QSpacerItemgeometryProc) =
  # TODO check subclass
  var tmp = new QSpacerItemgeometryProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSpacerItem_override_virtual_geometry(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSpacerItem_geometry(self: ptr cQSpacerItem, slot: int): pointer {.exportc: "miqt_exec_callback_QSpacerItem_geometry ".} =
  var nimfunc = cast[ptr QSpacerItemgeometryProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QSpacerItemspacerItem*(self: gen_qlayoutitem_types.QSpacerItem, ): gen_qlayoutitem_types.QSpacerItem =
  gen_qlayoutitem_types.QSpacerItem(h: fQSpacerItem_virtualbase_spacerItem(self.h))

type QSpacerItemspacerItemProc* = proc(): gen_qlayoutitem_types.QSpacerItem
proc onspacerItem*(self: gen_qlayoutitem_types.QSpacerItem, slot: QSpacerItemspacerItemProc) =
  # TODO check subclass
  var tmp = new QSpacerItemspacerItemProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSpacerItem_override_virtual_spacerItem(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSpacerItem_spacerItem(self: ptr cQSpacerItem, slot: int): pointer {.exportc: "miqt_exec_callback_QSpacerItem_spacerItem ".} =
  var nimfunc = cast[ptr QSpacerItemspacerItemProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QSpacerItemhasHeightForWidth*(self: gen_qlayoutitem_types.QSpacerItem, ): bool =
  fQSpacerItem_virtualbase_hasHeightForWidth(self.h)

type QSpacerItemhasHeightForWidthProc* = proc(): bool
proc onhasHeightForWidth*(self: gen_qlayoutitem_types.QSpacerItem, slot: QSpacerItemhasHeightForWidthProc) =
  # TODO check subclass
  var tmp = new QSpacerItemhasHeightForWidthProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSpacerItem_override_virtual_hasHeightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSpacerItem_hasHeightForWidth(self: ptr cQSpacerItem, slot: int): bool {.exportc: "miqt_exec_callback_QSpacerItem_hasHeightForWidth ".} =
  var nimfunc = cast[ptr QSpacerItemhasHeightForWidthProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QSpacerItemheightForWidth*(self: gen_qlayoutitem_types.QSpacerItem, param1: cint): cint =
  fQSpacerItem_virtualbase_heightForWidth(self.h, param1)

type QSpacerItemheightForWidthProc* = proc(param1: cint): cint
proc onheightForWidth*(self: gen_qlayoutitem_types.QSpacerItem, slot: QSpacerItemheightForWidthProc) =
  # TODO check subclass
  var tmp = new QSpacerItemheightForWidthProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSpacerItem_override_virtual_heightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSpacerItem_heightForWidth(self: ptr cQSpacerItem, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QSpacerItem_heightForWidth ".} =
  var nimfunc = cast[ptr QSpacerItemheightForWidthProc](cast[pointer](slot))
  let slotval1 = param1


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QSpacerItemminimumHeightForWidth*(self: gen_qlayoutitem_types.QSpacerItem, param1: cint): cint =
  fQSpacerItem_virtualbase_minimumHeightForWidth(self.h, param1)

type QSpacerItemminimumHeightForWidthProc* = proc(param1: cint): cint
proc onminimumHeightForWidth*(self: gen_qlayoutitem_types.QSpacerItem, slot: QSpacerItemminimumHeightForWidthProc) =
  # TODO check subclass
  var tmp = new QSpacerItemminimumHeightForWidthProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSpacerItem_override_virtual_minimumHeightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSpacerItem_minimumHeightForWidth(self: ptr cQSpacerItem, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QSpacerItem_minimumHeightForWidth ".} =
  var nimfunc = cast[ptr QSpacerItemminimumHeightForWidthProc](cast[pointer](slot))
  let slotval1 = param1


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QSpacerIteminvalidate*(self: gen_qlayoutitem_types.QSpacerItem, ): void =
  fQSpacerItem_virtualbase_invalidate(self.h)

type QSpacerIteminvalidateProc* = proc(): void
proc oninvalidate*(self: gen_qlayoutitem_types.QSpacerItem, slot: QSpacerIteminvalidateProc) =
  # TODO check subclass
  var tmp = new QSpacerIteminvalidateProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSpacerItem_override_virtual_invalidate(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSpacerItem_invalidate(self: ptr cQSpacerItem, slot: int): void {.exportc: "miqt_exec_callback_QSpacerItem_invalidate ".} =
  var nimfunc = cast[ptr QSpacerIteminvalidateProc](cast[pointer](slot))

  nimfunc[]()
proc QSpacerItemwidget*(self: gen_qlayoutitem_types.QSpacerItem, ): gen_qwidget_types.QWidget =
  gen_qwidget_types.QWidget(h: fQSpacerItem_virtualbase_widget(self.h))

type QSpacerItemwidgetProc* = proc(): gen_qwidget_types.QWidget
proc onwidget*(self: gen_qlayoutitem_types.QSpacerItem, slot: QSpacerItemwidgetProc) =
  # TODO check subclass
  var tmp = new QSpacerItemwidgetProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSpacerItem_override_virtual_widget(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSpacerItem_widget(self: ptr cQSpacerItem, slot: int): pointer {.exportc: "miqt_exec_callback_QSpacerItem_widget ".} =
  var nimfunc = cast[ptr QSpacerItemwidgetProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QSpacerItemlayout*(self: gen_qlayoutitem_types.QSpacerItem, ): gen_qlayout_types.QLayout =
  gen_qlayout_types.QLayout(h: fQSpacerItem_virtualbase_layout(self.h))

type QSpacerItemlayoutProc* = proc(): gen_qlayout_types.QLayout
proc onlayout*(self: gen_qlayoutitem_types.QSpacerItem, slot: QSpacerItemlayoutProc) =
  # TODO check subclass
  var tmp = new QSpacerItemlayoutProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSpacerItem_override_virtual_layout(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSpacerItem_layout(self: ptr cQSpacerItem, slot: int): pointer {.exportc: "miqt_exec_callback_QSpacerItem_layout ".} =
  var nimfunc = cast[ptr QSpacerItemlayoutProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QSpacerItemcontrolTypes*(self: gen_qlayoutitem_types.QSpacerItem, ): cint =
  cint(fQSpacerItem_virtualbase_controlTypes(self.h))

type QSpacerItemcontrolTypesProc* = proc(): cint
proc oncontrolTypes*(self: gen_qlayoutitem_types.QSpacerItem, slot: QSpacerItemcontrolTypesProc) =
  # TODO check subclass
  var tmp = new QSpacerItemcontrolTypesProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSpacerItem_override_virtual_controlTypes(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSpacerItem_controlTypes(self: ptr cQSpacerItem, slot: int): cint {.exportc: "miqt_exec_callback_QSpacerItem_controlTypes ".} =
  var nimfunc = cast[ptr QSpacerItemcontrolTypesProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  cint(virtualReturn)
proc delete*(self: gen_qlayoutitem_types.QSpacerItem) =
  fcQSpacerItem_delete(self.h)

func init*(T: type gen_qlayoutitem_types.QWidgetItem, h: ptr cQWidgetItem): gen_qlayoutitem_types.QWidgetItem =
  T(h: h)
proc create*(T: type gen_qlayoutitem_types.QWidgetItem, w: gen_qwidget_types.QWidget): gen_qlayoutitem_types.QWidgetItem =
  gen_qlayoutitem_types.QWidgetItem.init(fcQWidgetItem_new(w.h))

proc sizeHint*(self: gen_qlayoutitem_types.QWidgetItem, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQWidgetItem_sizeHint(self.h))

proc minimumSize*(self: gen_qlayoutitem_types.QWidgetItem, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQWidgetItem_minimumSize(self.h))

proc maximumSize*(self: gen_qlayoutitem_types.QWidgetItem, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQWidgetItem_maximumSize(self.h))

proc expandingDirections*(self: gen_qlayoutitem_types.QWidgetItem, ): cint =
  cint(fcQWidgetItem_expandingDirections(self.h))

proc isEmpty*(self: gen_qlayoutitem_types.QWidgetItem, ): bool =
  fcQWidgetItem_isEmpty(self.h)

proc setGeometry*(self: gen_qlayoutitem_types.QWidgetItem, geometry: gen_qrect_types.QRect): void =
  fcQWidgetItem_setGeometry(self.h, geometry.h)

proc geometry*(self: gen_qlayoutitem_types.QWidgetItem, ): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fcQWidgetItem_geometry(self.h))

proc widget*(self: gen_qlayoutitem_types.QWidgetItem, ): gen_qwidget_types.QWidget =
  gen_qwidget_types.QWidget(h: fcQWidgetItem_widget(self.h))

proc hasHeightForWidth*(self: gen_qlayoutitem_types.QWidgetItem, ): bool =
  fcQWidgetItem_hasHeightForWidth(self.h)

proc heightForWidth*(self: gen_qlayoutitem_types.QWidgetItem, param1: cint): cint =
  fcQWidgetItem_heightForWidth(self.h, param1)

proc controlTypes*(self: gen_qlayoutitem_types.QWidgetItem, ): cint =
  cint(fcQWidgetItem_controlTypes(self.h))

proc QWidgetItemsizeHint*(self: gen_qlayoutitem_types.QWidgetItem, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fQWidgetItem_virtualbase_sizeHint(self.h))

type QWidgetItemsizeHintProc* = proc(): gen_qsize_types.QSize
proc onsizeHint*(self: gen_qlayoutitem_types.QWidgetItem, slot: QWidgetItemsizeHintProc) =
  # TODO check subclass
  var tmp = new QWidgetItemsizeHintProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWidgetItem_override_virtual_sizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWidgetItem_sizeHint(self: ptr cQWidgetItem, slot: int): pointer {.exportc: "miqt_exec_callback_QWidgetItem_sizeHint ".} =
  var nimfunc = cast[ptr QWidgetItemsizeHintProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QWidgetItemminimumSize*(self: gen_qlayoutitem_types.QWidgetItem, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fQWidgetItem_virtualbase_minimumSize(self.h))

type QWidgetItemminimumSizeProc* = proc(): gen_qsize_types.QSize
proc onminimumSize*(self: gen_qlayoutitem_types.QWidgetItem, slot: QWidgetItemminimumSizeProc) =
  # TODO check subclass
  var tmp = new QWidgetItemminimumSizeProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWidgetItem_override_virtual_minimumSize(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWidgetItem_minimumSize(self: ptr cQWidgetItem, slot: int): pointer {.exportc: "miqt_exec_callback_QWidgetItem_minimumSize ".} =
  var nimfunc = cast[ptr QWidgetItemminimumSizeProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QWidgetItemmaximumSize*(self: gen_qlayoutitem_types.QWidgetItem, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fQWidgetItem_virtualbase_maximumSize(self.h))

type QWidgetItemmaximumSizeProc* = proc(): gen_qsize_types.QSize
proc onmaximumSize*(self: gen_qlayoutitem_types.QWidgetItem, slot: QWidgetItemmaximumSizeProc) =
  # TODO check subclass
  var tmp = new QWidgetItemmaximumSizeProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWidgetItem_override_virtual_maximumSize(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWidgetItem_maximumSize(self: ptr cQWidgetItem, slot: int): pointer {.exportc: "miqt_exec_callback_QWidgetItem_maximumSize ".} =
  var nimfunc = cast[ptr QWidgetItemmaximumSizeProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QWidgetItemexpandingDirections*(self: gen_qlayoutitem_types.QWidgetItem, ): cint =
  cint(fQWidgetItem_virtualbase_expandingDirections(self.h))

type QWidgetItemexpandingDirectionsProc* = proc(): cint
proc onexpandingDirections*(self: gen_qlayoutitem_types.QWidgetItem, slot: QWidgetItemexpandingDirectionsProc) =
  # TODO check subclass
  var tmp = new QWidgetItemexpandingDirectionsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWidgetItem_override_virtual_expandingDirections(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWidgetItem_expandingDirections(self: ptr cQWidgetItem, slot: int): cint {.exportc: "miqt_exec_callback_QWidgetItem_expandingDirections ".} =
  var nimfunc = cast[ptr QWidgetItemexpandingDirectionsProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  cint(virtualReturn)
proc QWidgetItemisEmpty*(self: gen_qlayoutitem_types.QWidgetItem, ): bool =
  fQWidgetItem_virtualbase_isEmpty(self.h)

type QWidgetItemisEmptyProc* = proc(): bool
proc onisEmpty*(self: gen_qlayoutitem_types.QWidgetItem, slot: QWidgetItemisEmptyProc) =
  # TODO check subclass
  var tmp = new QWidgetItemisEmptyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWidgetItem_override_virtual_isEmpty(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWidgetItem_isEmpty(self: ptr cQWidgetItem, slot: int): bool {.exportc: "miqt_exec_callback_QWidgetItem_isEmpty ".} =
  var nimfunc = cast[ptr QWidgetItemisEmptyProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QWidgetItemsetGeometry*(self: gen_qlayoutitem_types.QWidgetItem, geometry: gen_qrect_types.QRect): void =
  fQWidgetItem_virtualbase_setGeometry(self.h, geometry.h)

type QWidgetItemsetGeometryProc* = proc(geometry: gen_qrect_types.QRect): void
proc onsetGeometry*(self: gen_qlayoutitem_types.QWidgetItem, slot: QWidgetItemsetGeometryProc) =
  # TODO check subclass
  var tmp = new QWidgetItemsetGeometryProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWidgetItem_override_virtual_setGeometry(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWidgetItem_setGeometry(self: ptr cQWidgetItem, slot: int, geometry: pointer): void {.exportc: "miqt_exec_callback_QWidgetItem_setGeometry ".} =
  var nimfunc = cast[ptr QWidgetItemsetGeometryProc](cast[pointer](slot))
  let slotval1 = gen_qrect_types.QRect(h: geometry)


  nimfunc[](slotval1)
proc QWidgetItemgeometry*(self: gen_qlayoutitem_types.QWidgetItem, ): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fQWidgetItem_virtualbase_geometry(self.h))

type QWidgetItemgeometryProc* = proc(): gen_qrect_types.QRect
proc ongeometry*(self: gen_qlayoutitem_types.QWidgetItem, slot: QWidgetItemgeometryProc) =
  # TODO check subclass
  var tmp = new QWidgetItemgeometryProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWidgetItem_override_virtual_geometry(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWidgetItem_geometry(self: ptr cQWidgetItem, slot: int): pointer {.exportc: "miqt_exec_callback_QWidgetItem_geometry ".} =
  var nimfunc = cast[ptr QWidgetItemgeometryProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QWidgetItemwidget*(self: gen_qlayoutitem_types.QWidgetItem, ): gen_qwidget_types.QWidget =
  gen_qwidget_types.QWidget(h: fQWidgetItem_virtualbase_widget(self.h))

type QWidgetItemwidgetProc* = proc(): gen_qwidget_types.QWidget
proc onwidget*(self: gen_qlayoutitem_types.QWidgetItem, slot: QWidgetItemwidgetProc) =
  # TODO check subclass
  var tmp = new QWidgetItemwidgetProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWidgetItem_override_virtual_widget(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWidgetItem_widget(self: ptr cQWidgetItem, slot: int): pointer {.exportc: "miqt_exec_callback_QWidgetItem_widget ".} =
  var nimfunc = cast[ptr QWidgetItemwidgetProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QWidgetItemhasHeightForWidth*(self: gen_qlayoutitem_types.QWidgetItem, ): bool =
  fQWidgetItem_virtualbase_hasHeightForWidth(self.h)

type QWidgetItemhasHeightForWidthProc* = proc(): bool
proc onhasHeightForWidth*(self: gen_qlayoutitem_types.QWidgetItem, slot: QWidgetItemhasHeightForWidthProc) =
  # TODO check subclass
  var tmp = new QWidgetItemhasHeightForWidthProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWidgetItem_override_virtual_hasHeightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWidgetItem_hasHeightForWidth(self: ptr cQWidgetItem, slot: int): bool {.exportc: "miqt_exec_callback_QWidgetItem_hasHeightForWidth ".} =
  var nimfunc = cast[ptr QWidgetItemhasHeightForWidthProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QWidgetItemheightForWidth*(self: gen_qlayoutitem_types.QWidgetItem, param1: cint): cint =
  fQWidgetItem_virtualbase_heightForWidth(self.h, param1)

type QWidgetItemheightForWidthProc* = proc(param1: cint): cint
proc onheightForWidth*(self: gen_qlayoutitem_types.QWidgetItem, slot: QWidgetItemheightForWidthProc) =
  # TODO check subclass
  var tmp = new QWidgetItemheightForWidthProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWidgetItem_override_virtual_heightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWidgetItem_heightForWidth(self: ptr cQWidgetItem, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QWidgetItem_heightForWidth ".} =
  var nimfunc = cast[ptr QWidgetItemheightForWidthProc](cast[pointer](slot))
  let slotval1 = param1


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QWidgetItemcontrolTypes*(self: gen_qlayoutitem_types.QWidgetItem, ): cint =
  cint(fQWidgetItem_virtualbase_controlTypes(self.h))

type QWidgetItemcontrolTypesProc* = proc(): cint
proc oncontrolTypes*(self: gen_qlayoutitem_types.QWidgetItem, slot: QWidgetItemcontrolTypesProc) =
  # TODO check subclass
  var tmp = new QWidgetItemcontrolTypesProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWidgetItem_override_virtual_controlTypes(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWidgetItem_controlTypes(self: ptr cQWidgetItem, slot: int): cint {.exportc: "miqt_exec_callback_QWidgetItem_controlTypes ".} =
  var nimfunc = cast[ptr QWidgetItemcontrolTypesProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  cint(virtualReturn)
proc QWidgetItemminimumHeightForWidth*(self: gen_qlayoutitem_types.QWidgetItem, param1: cint): cint =
  fQWidgetItem_virtualbase_minimumHeightForWidth(self.h, param1)

type QWidgetItemminimumHeightForWidthProc* = proc(param1: cint): cint
proc onminimumHeightForWidth*(self: gen_qlayoutitem_types.QWidgetItem, slot: QWidgetItemminimumHeightForWidthProc) =
  # TODO check subclass
  var tmp = new QWidgetItemminimumHeightForWidthProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWidgetItem_override_virtual_minimumHeightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWidgetItem_minimumHeightForWidth(self: ptr cQWidgetItem, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QWidgetItem_minimumHeightForWidth ".} =
  var nimfunc = cast[ptr QWidgetItemminimumHeightForWidthProc](cast[pointer](slot))
  let slotval1 = param1


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QWidgetIteminvalidate*(self: gen_qlayoutitem_types.QWidgetItem, ): void =
  fQWidgetItem_virtualbase_invalidate(self.h)

type QWidgetIteminvalidateProc* = proc(): void
proc oninvalidate*(self: gen_qlayoutitem_types.QWidgetItem, slot: QWidgetIteminvalidateProc) =
  # TODO check subclass
  var tmp = new QWidgetIteminvalidateProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWidgetItem_override_virtual_invalidate(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWidgetItem_invalidate(self: ptr cQWidgetItem, slot: int): void {.exportc: "miqt_exec_callback_QWidgetItem_invalidate ".} =
  var nimfunc = cast[ptr QWidgetIteminvalidateProc](cast[pointer](slot))

  nimfunc[]()
proc QWidgetItemlayout*(self: gen_qlayoutitem_types.QWidgetItem, ): gen_qlayout_types.QLayout =
  gen_qlayout_types.QLayout(h: fQWidgetItem_virtualbase_layout(self.h))

type QWidgetItemlayoutProc* = proc(): gen_qlayout_types.QLayout
proc onlayout*(self: gen_qlayoutitem_types.QWidgetItem, slot: QWidgetItemlayoutProc) =
  # TODO check subclass
  var tmp = new QWidgetItemlayoutProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWidgetItem_override_virtual_layout(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWidgetItem_layout(self: ptr cQWidgetItem, slot: int): pointer {.exportc: "miqt_exec_callback_QWidgetItem_layout ".} =
  var nimfunc = cast[ptr QWidgetItemlayoutProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QWidgetItemspacerItem*(self: gen_qlayoutitem_types.QWidgetItem, ): gen_qlayoutitem_types.QSpacerItem =
  gen_qlayoutitem_types.QSpacerItem(h: fQWidgetItem_virtualbase_spacerItem(self.h))

type QWidgetItemspacerItemProc* = proc(): gen_qlayoutitem_types.QSpacerItem
proc onspacerItem*(self: gen_qlayoutitem_types.QWidgetItem, slot: QWidgetItemspacerItemProc) =
  # TODO check subclass
  var tmp = new QWidgetItemspacerItemProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWidgetItem_override_virtual_spacerItem(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWidgetItem_spacerItem(self: ptr cQWidgetItem, slot: int): pointer {.exportc: "miqt_exec_callback_QWidgetItem_spacerItem ".} =
  var nimfunc = cast[ptr QWidgetItemspacerItemProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc delete*(self: gen_qlayoutitem_types.QWidgetItem) =
  fcQWidgetItem_delete(self.h)

func init*(T: type gen_qlayoutitem_types.QWidgetItemV2, h: ptr cQWidgetItemV2): gen_qlayoutitem_types.QWidgetItemV2 =
  T(h: h)
proc create*(T: type gen_qlayoutitem_types.QWidgetItemV2, widget: gen_qwidget_types.QWidget): gen_qlayoutitem_types.QWidgetItemV2 =
  gen_qlayoutitem_types.QWidgetItemV2.init(fcQWidgetItemV2_new(widget.h))

proc sizeHint*(self: gen_qlayoutitem_types.QWidgetItemV2, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQWidgetItemV2_sizeHint(self.h))

proc minimumSize*(self: gen_qlayoutitem_types.QWidgetItemV2, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQWidgetItemV2_minimumSize(self.h))

proc maximumSize*(self: gen_qlayoutitem_types.QWidgetItemV2, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQWidgetItemV2_maximumSize(self.h))

proc heightForWidth*(self: gen_qlayoutitem_types.QWidgetItemV2, width: cint): cint =
  fcQWidgetItemV2_heightForWidth(self.h, width)

proc QWidgetItemV2sizeHint*(self: gen_qlayoutitem_types.QWidgetItemV2, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fQWidgetItemV2_virtualbase_sizeHint(self.h))

type QWidgetItemV2sizeHintProc* = proc(): gen_qsize_types.QSize
proc onsizeHint*(self: gen_qlayoutitem_types.QWidgetItemV2, slot: QWidgetItemV2sizeHintProc) =
  # TODO check subclass
  var tmp = new QWidgetItemV2sizeHintProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWidgetItemV2_override_virtual_sizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWidgetItemV2_sizeHint(self: ptr cQWidgetItemV2, slot: int): pointer {.exportc: "miqt_exec_callback_QWidgetItemV2_sizeHint ".} =
  var nimfunc = cast[ptr QWidgetItemV2sizeHintProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QWidgetItemV2minimumSize*(self: gen_qlayoutitem_types.QWidgetItemV2, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fQWidgetItemV2_virtualbase_minimumSize(self.h))

type QWidgetItemV2minimumSizeProc* = proc(): gen_qsize_types.QSize
proc onminimumSize*(self: gen_qlayoutitem_types.QWidgetItemV2, slot: QWidgetItemV2minimumSizeProc) =
  # TODO check subclass
  var tmp = new QWidgetItemV2minimumSizeProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWidgetItemV2_override_virtual_minimumSize(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWidgetItemV2_minimumSize(self: ptr cQWidgetItemV2, slot: int): pointer {.exportc: "miqt_exec_callback_QWidgetItemV2_minimumSize ".} =
  var nimfunc = cast[ptr QWidgetItemV2minimumSizeProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QWidgetItemV2maximumSize*(self: gen_qlayoutitem_types.QWidgetItemV2, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fQWidgetItemV2_virtualbase_maximumSize(self.h))

type QWidgetItemV2maximumSizeProc* = proc(): gen_qsize_types.QSize
proc onmaximumSize*(self: gen_qlayoutitem_types.QWidgetItemV2, slot: QWidgetItemV2maximumSizeProc) =
  # TODO check subclass
  var tmp = new QWidgetItemV2maximumSizeProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWidgetItemV2_override_virtual_maximumSize(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWidgetItemV2_maximumSize(self: ptr cQWidgetItemV2, slot: int): pointer {.exportc: "miqt_exec_callback_QWidgetItemV2_maximumSize ".} =
  var nimfunc = cast[ptr QWidgetItemV2maximumSizeProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QWidgetItemV2heightForWidth*(self: gen_qlayoutitem_types.QWidgetItemV2, width: cint): cint =
  fQWidgetItemV2_virtualbase_heightForWidth(self.h, width)

type QWidgetItemV2heightForWidthProc* = proc(width: cint): cint
proc onheightForWidth*(self: gen_qlayoutitem_types.QWidgetItemV2, slot: QWidgetItemV2heightForWidthProc) =
  # TODO check subclass
  var tmp = new QWidgetItemV2heightForWidthProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWidgetItemV2_override_virtual_heightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWidgetItemV2_heightForWidth(self: ptr cQWidgetItemV2, slot: int, width: cint): cint {.exportc: "miqt_exec_callback_QWidgetItemV2_heightForWidth ".} =
  var nimfunc = cast[ptr QWidgetItemV2heightForWidthProc](cast[pointer](slot))
  let slotval1 = width


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QWidgetItemV2expandingDirections*(self: gen_qlayoutitem_types.QWidgetItemV2, ): cint =
  cint(fQWidgetItemV2_virtualbase_expandingDirections(self.h))

type QWidgetItemV2expandingDirectionsProc* = proc(): cint
proc onexpandingDirections*(self: gen_qlayoutitem_types.QWidgetItemV2, slot: QWidgetItemV2expandingDirectionsProc) =
  # TODO check subclass
  var tmp = new QWidgetItemV2expandingDirectionsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWidgetItemV2_override_virtual_expandingDirections(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWidgetItemV2_expandingDirections(self: ptr cQWidgetItemV2, slot: int): cint {.exportc: "miqt_exec_callback_QWidgetItemV2_expandingDirections ".} =
  var nimfunc = cast[ptr QWidgetItemV2expandingDirectionsProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  cint(virtualReturn)
proc QWidgetItemV2isEmpty*(self: gen_qlayoutitem_types.QWidgetItemV2, ): bool =
  fQWidgetItemV2_virtualbase_isEmpty(self.h)

type QWidgetItemV2isEmptyProc* = proc(): bool
proc onisEmpty*(self: gen_qlayoutitem_types.QWidgetItemV2, slot: QWidgetItemV2isEmptyProc) =
  # TODO check subclass
  var tmp = new QWidgetItemV2isEmptyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWidgetItemV2_override_virtual_isEmpty(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWidgetItemV2_isEmpty(self: ptr cQWidgetItemV2, slot: int): bool {.exportc: "miqt_exec_callback_QWidgetItemV2_isEmpty ".} =
  var nimfunc = cast[ptr QWidgetItemV2isEmptyProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QWidgetItemV2setGeometry*(self: gen_qlayoutitem_types.QWidgetItemV2, geometry: gen_qrect_types.QRect): void =
  fQWidgetItemV2_virtualbase_setGeometry(self.h, geometry.h)

type QWidgetItemV2setGeometryProc* = proc(geometry: gen_qrect_types.QRect): void
proc onsetGeometry*(self: gen_qlayoutitem_types.QWidgetItemV2, slot: QWidgetItemV2setGeometryProc) =
  # TODO check subclass
  var tmp = new QWidgetItemV2setGeometryProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWidgetItemV2_override_virtual_setGeometry(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWidgetItemV2_setGeometry(self: ptr cQWidgetItemV2, slot: int, geometry: pointer): void {.exportc: "miqt_exec_callback_QWidgetItemV2_setGeometry ".} =
  var nimfunc = cast[ptr QWidgetItemV2setGeometryProc](cast[pointer](slot))
  let slotval1 = gen_qrect_types.QRect(h: geometry)


  nimfunc[](slotval1)
proc QWidgetItemV2geometry*(self: gen_qlayoutitem_types.QWidgetItemV2, ): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fQWidgetItemV2_virtualbase_geometry(self.h))

type QWidgetItemV2geometryProc* = proc(): gen_qrect_types.QRect
proc ongeometry*(self: gen_qlayoutitem_types.QWidgetItemV2, slot: QWidgetItemV2geometryProc) =
  # TODO check subclass
  var tmp = new QWidgetItemV2geometryProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWidgetItemV2_override_virtual_geometry(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWidgetItemV2_geometry(self: ptr cQWidgetItemV2, slot: int): pointer {.exportc: "miqt_exec_callback_QWidgetItemV2_geometry ".} =
  var nimfunc = cast[ptr QWidgetItemV2geometryProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QWidgetItemV2widget*(self: gen_qlayoutitem_types.QWidgetItemV2, ): gen_qwidget_types.QWidget =
  gen_qwidget_types.QWidget(h: fQWidgetItemV2_virtualbase_widget(self.h))

type QWidgetItemV2widgetProc* = proc(): gen_qwidget_types.QWidget
proc onwidget*(self: gen_qlayoutitem_types.QWidgetItemV2, slot: QWidgetItemV2widgetProc) =
  # TODO check subclass
  var tmp = new QWidgetItemV2widgetProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWidgetItemV2_override_virtual_widget(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWidgetItemV2_widget(self: ptr cQWidgetItemV2, slot: int): pointer {.exportc: "miqt_exec_callback_QWidgetItemV2_widget ".} =
  var nimfunc = cast[ptr QWidgetItemV2widgetProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QWidgetItemV2hasHeightForWidth*(self: gen_qlayoutitem_types.QWidgetItemV2, ): bool =
  fQWidgetItemV2_virtualbase_hasHeightForWidth(self.h)

type QWidgetItemV2hasHeightForWidthProc* = proc(): bool
proc onhasHeightForWidth*(self: gen_qlayoutitem_types.QWidgetItemV2, slot: QWidgetItemV2hasHeightForWidthProc) =
  # TODO check subclass
  var tmp = new QWidgetItemV2hasHeightForWidthProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWidgetItemV2_override_virtual_hasHeightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWidgetItemV2_hasHeightForWidth(self: ptr cQWidgetItemV2, slot: int): bool {.exportc: "miqt_exec_callback_QWidgetItemV2_hasHeightForWidth ".} =
  var nimfunc = cast[ptr QWidgetItemV2hasHeightForWidthProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QWidgetItemV2controlTypes*(self: gen_qlayoutitem_types.QWidgetItemV2, ): cint =
  cint(fQWidgetItemV2_virtualbase_controlTypes(self.h))

type QWidgetItemV2controlTypesProc* = proc(): cint
proc oncontrolTypes*(self: gen_qlayoutitem_types.QWidgetItemV2, slot: QWidgetItemV2controlTypesProc) =
  # TODO check subclass
  var tmp = new QWidgetItemV2controlTypesProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWidgetItemV2_override_virtual_controlTypes(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWidgetItemV2_controlTypes(self: ptr cQWidgetItemV2, slot: int): cint {.exportc: "miqt_exec_callback_QWidgetItemV2_controlTypes ".} =
  var nimfunc = cast[ptr QWidgetItemV2controlTypesProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  cint(virtualReturn)
proc QWidgetItemV2minimumHeightForWidth*(self: gen_qlayoutitem_types.QWidgetItemV2, param1: cint): cint =
  fQWidgetItemV2_virtualbase_minimumHeightForWidth(self.h, param1)

type QWidgetItemV2minimumHeightForWidthProc* = proc(param1: cint): cint
proc onminimumHeightForWidth*(self: gen_qlayoutitem_types.QWidgetItemV2, slot: QWidgetItemV2minimumHeightForWidthProc) =
  # TODO check subclass
  var tmp = new QWidgetItemV2minimumHeightForWidthProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWidgetItemV2_override_virtual_minimumHeightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWidgetItemV2_minimumHeightForWidth(self: ptr cQWidgetItemV2, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QWidgetItemV2_minimumHeightForWidth ".} =
  var nimfunc = cast[ptr QWidgetItemV2minimumHeightForWidthProc](cast[pointer](slot))
  let slotval1 = param1


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QWidgetItemV2invalidate*(self: gen_qlayoutitem_types.QWidgetItemV2, ): void =
  fQWidgetItemV2_virtualbase_invalidate(self.h)

type QWidgetItemV2invalidateProc* = proc(): void
proc oninvalidate*(self: gen_qlayoutitem_types.QWidgetItemV2, slot: QWidgetItemV2invalidateProc) =
  # TODO check subclass
  var tmp = new QWidgetItemV2invalidateProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWidgetItemV2_override_virtual_invalidate(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWidgetItemV2_invalidate(self: ptr cQWidgetItemV2, slot: int): void {.exportc: "miqt_exec_callback_QWidgetItemV2_invalidate ".} =
  var nimfunc = cast[ptr QWidgetItemV2invalidateProc](cast[pointer](slot))

  nimfunc[]()
proc QWidgetItemV2layout*(self: gen_qlayoutitem_types.QWidgetItemV2, ): gen_qlayout_types.QLayout =
  gen_qlayout_types.QLayout(h: fQWidgetItemV2_virtualbase_layout(self.h))

type QWidgetItemV2layoutProc* = proc(): gen_qlayout_types.QLayout
proc onlayout*(self: gen_qlayoutitem_types.QWidgetItemV2, slot: QWidgetItemV2layoutProc) =
  # TODO check subclass
  var tmp = new QWidgetItemV2layoutProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWidgetItemV2_override_virtual_layout(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWidgetItemV2_layout(self: ptr cQWidgetItemV2, slot: int): pointer {.exportc: "miqt_exec_callback_QWidgetItemV2_layout ".} =
  var nimfunc = cast[ptr QWidgetItemV2layoutProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QWidgetItemV2spacerItem*(self: gen_qlayoutitem_types.QWidgetItemV2, ): gen_qlayoutitem_types.QSpacerItem =
  gen_qlayoutitem_types.QSpacerItem(h: fQWidgetItemV2_virtualbase_spacerItem(self.h))

type QWidgetItemV2spacerItemProc* = proc(): gen_qlayoutitem_types.QSpacerItem
proc onspacerItem*(self: gen_qlayoutitem_types.QWidgetItemV2, slot: QWidgetItemV2spacerItemProc) =
  # TODO check subclass
  var tmp = new QWidgetItemV2spacerItemProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWidgetItemV2_override_virtual_spacerItem(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWidgetItemV2_spacerItem(self: ptr cQWidgetItemV2, slot: int): pointer {.exportc: "miqt_exec_callback_QWidgetItemV2_spacerItem ".} =
  var nimfunc = cast[ptr QWidgetItemV2spacerItemProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc delete*(self: gen_qlayoutitem_types.QWidgetItemV2) =
  fcQWidgetItemV2_delete(self.h)
