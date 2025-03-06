import ./Qt5Core_libs

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

const cflags = gorge("pkg-config --cflags Qt5Core")  & " -fPIC"
{.compile("gen_qstringlistmodel.cpp", cflags).}


import ./gen_qstringlistmodel_types
export gen_qstringlistmodel_types

import
  ./gen_qabstractitemmodel,
  ./gen_qcoreevent_types,
  ./gen_qmetaobject_types,
  ./gen_qmimedata_types,
  ./gen_qobject_types,
  ./gen_qobjectdefs_types,
  ./gen_qsize_types,
  ./gen_qvariant_types,
  std/tables
export
  gen_qabstractitemmodel,
  gen_qcoreevent_types,
  gen_qmetaobject_types,
  gen_qmimedata_types,
  gen_qobject_types,
  gen_qobjectdefs_types,
  gen_qsize_types,
  gen_qvariant_types

type cQStringListModel*{.exportc: "QStringListModel", incompleteStruct.} = object

proc fcQStringListModel_new(): ptr cQStringListModel {.importc: "QStringListModel_new".}
proc fcQStringListModel_new2(strings: struct_miqt_array): ptr cQStringListModel {.importc: "QStringListModel_new2".}
proc fcQStringListModel_new3(parent: pointer): ptr cQStringListModel {.importc: "QStringListModel_new3".}
proc fcQStringListModel_new4(strings: struct_miqt_array, parent: pointer): ptr cQStringListModel {.importc: "QStringListModel_new4".}
proc fcQStringListModel_metaObject(self: pointer, ): pointer {.importc: "QStringListModel_metaObject".}
proc fcQStringListModel_metacast(self: pointer, param1: cstring): pointer {.importc: "QStringListModel_metacast".}
proc fcQStringListModel_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QStringListModel_metacall".}
proc fcQStringListModel_tr(s: cstring): struct_miqt_string {.importc: "QStringListModel_tr".}
proc fcQStringListModel_trUtf8(s: cstring): struct_miqt_string {.importc: "QStringListModel_trUtf8".}
proc fcQStringListModel_rowCount(self: pointer, parent: pointer): cint {.importc: "QStringListModel_rowCount".}
proc fcQStringListModel_sibling(self: pointer, row: cint, column: cint, idx: pointer): pointer {.importc: "QStringListModel_sibling".}
proc fcQStringListModel_data(self: pointer, index: pointer, role: cint): pointer {.importc: "QStringListModel_data".}
proc fcQStringListModel_setData(self: pointer, index: pointer, value: pointer, role: cint): bool {.importc: "QStringListModel_setData".}
proc fcQStringListModel_flags(self: pointer, index: pointer): cint {.importc: "QStringListModel_flags".}
proc fcQStringListModel_insertRows(self: pointer, row: cint, count: cint, parent: pointer): bool {.importc: "QStringListModel_insertRows".}
proc fcQStringListModel_removeRows(self: pointer, row: cint, count: cint, parent: pointer): bool {.importc: "QStringListModel_removeRows".}
proc fcQStringListModel_moveRows(self: pointer, sourceParent: pointer, sourceRow: cint, count: cint, destinationParent: pointer, destinationChild: cint): bool {.importc: "QStringListModel_moveRows".}
proc fcQStringListModel_itemData(self: pointer, index: pointer): struct_miqt_map {.importc: "QStringListModel_itemData".}
proc fcQStringListModel_setItemData(self: pointer, index: pointer, roles: struct_miqt_map): bool {.importc: "QStringListModel_setItemData".}
proc fcQStringListModel_sort(self: pointer, column: cint, order: cint): void {.importc: "QStringListModel_sort".}
proc fcQStringListModel_stringList(self: pointer, ): struct_miqt_array {.importc: "QStringListModel_stringList".}
proc fcQStringListModel_setStringList(self: pointer, strings: struct_miqt_array): void {.importc: "QStringListModel_setStringList".}
proc fcQStringListModel_supportedDropActions(self: pointer, ): cint {.importc: "QStringListModel_supportedDropActions".}
proc fcQStringListModel_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QStringListModel_tr2".}
proc fcQStringListModel_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QStringListModel_tr3".}
proc fcQStringListModel_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QStringListModel_trUtf82".}
proc fcQStringListModel_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QStringListModel_trUtf83".}
proc fQStringListModel_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QStringListModel_virtualbase_metaObject".}
proc fcQStringListModel_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QStringListModel_override_virtual_metaObject".}
proc fQStringListModel_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QStringListModel_virtualbase_metacast".}
proc fcQStringListModel_override_virtual_metacast(self: pointer, slot: int) {.importc: "QStringListModel_override_virtual_metacast".}
proc fQStringListModel_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QStringListModel_virtualbase_metacall".}
proc fcQStringListModel_override_virtual_metacall(self: pointer, slot: int) {.importc: "QStringListModel_override_virtual_metacall".}
proc fQStringListModel_virtualbase_rowCount(self: pointer, parent: pointer): cint{.importc: "QStringListModel_virtualbase_rowCount".}
proc fcQStringListModel_override_virtual_rowCount(self: pointer, slot: int) {.importc: "QStringListModel_override_virtual_rowCount".}
proc fQStringListModel_virtualbase_sibling(self: pointer, row: cint, column: cint, idx: pointer): pointer{.importc: "QStringListModel_virtualbase_sibling".}
proc fcQStringListModel_override_virtual_sibling(self: pointer, slot: int) {.importc: "QStringListModel_override_virtual_sibling".}
proc fQStringListModel_virtualbase_data(self: pointer, index: pointer, role: cint): pointer{.importc: "QStringListModel_virtualbase_data".}
proc fcQStringListModel_override_virtual_data(self: pointer, slot: int) {.importc: "QStringListModel_override_virtual_data".}
proc fQStringListModel_virtualbase_setData(self: pointer, index: pointer, value: pointer, role: cint): bool{.importc: "QStringListModel_virtualbase_setData".}
proc fcQStringListModel_override_virtual_setData(self: pointer, slot: int) {.importc: "QStringListModel_override_virtual_setData".}
proc fQStringListModel_virtualbase_flags(self: pointer, index: pointer): cint{.importc: "QStringListModel_virtualbase_flags".}
proc fcQStringListModel_override_virtual_flags(self: pointer, slot: int) {.importc: "QStringListModel_override_virtual_flags".}
proc fQStringListModel_virtualbase_insertRows(self: pointer, row: cint, count: cint, parent: pointer): bool{.importc: "QStringListModel_virtualbase_insertRows".}
proc fcQStringListModel_override_virtual_insertRows(self: pointer, slot: int) {.importc: "QStringListModel_override_virtual_insertRows".}
proc fQStringListModel_virtualbase_removeRows(self: pointer, row: cint, count: cint, parent: pointer): bool{.importc: "QStringListModel_virtualbase_removeRows".}
proc fcQStringListModel_override_virtual_removeRows(self: pointer, slot: int) {.importc: "QStringListModel_override_virtual_removeRows".}
proc fQStringListModel_virtualbase_moveRows(self: pointer, sourceParent: pointer, sourceRow: cint, count: cint, destinationParent: pointer, destinationChild: cint): bool{.importc: "QStringListModel_virtualbase_moveRows".}
proc fcQStringListModel_override_virtual_moveRows(self: pointer, slot: int) {.importc: "QStringListModel_override_virtual_moveRows".}
proc fQStringListModel_virtualbase_itemData(self: pointer, index: pointer): struct_miqt_map{.importc: "QStringListModel_virtualbase_itemData".}
proc fcQStringListModel_override_virtual_itemData(self: pointer, slot: int) {.importc: "QStringListModel_override_virtual_itemData".}
proc fQStringListModel_virtualbase_setItemData(self: pointer, index: pointer, roles: struct_miqt_map): bool{.importc: "QStringListModel_virtualbase_setItemData".}
proc fcQStringListModel_override_virtual_setItemData(self: pointer, slot: int) {.importc: "QStringListModel_override_virtual_setItemData".}
proc fQStringListModel_virtualbase_sort(self: pointer, column: cint, order: cint): void{.importc: "QStringListModel_virtualbase_sort".}
proc fcQStringListModel_override_virtual_sort(self: pointer, slot: int) {.importc: "QStringListModel_override_virtual_sort".}
proc fQStringListModel_virtualbase_supportedDropActions(self: pointer, ): cint{.importc: "QStringListModel_virtualbase_supportedDropActions".}
proc fcQStringListModel_override_virtual_supportedDropActions(self: pointer, slot: int) {.importc: "QStringListModel_override_virtual_supportedDropActions".}
proc fQStringListModel_virtualbase_index(self: pointer, row: cint, column: cint, parent: pointer): pointer{.importc: "QStringListModel_virtualbase_index".}
proc fcQStringListModel_override_virtual_index(self: pointer, slot: int) {.importc: "QStringListModel_override_virtual_index".}
proc fQStringListModel_virtualbase_dropMimeData(self: pointer, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool{.importc: "QStringListModel_virtualbase_dropMimeData".}
proc fcQStringListModel_override_virtual_dropMimeData(self: pointer, slot: int) {.importc: "QStringListModel_override_virtual_dropMimeData".}
proc fQStringListModel_virtualbase_headerData(self: pointer, section: cint, orientation: cint, role: cint): pointer{.importc: "QStringListModel_virtualbase_headerData".}
proc fcQStringListModel_override_virtual_headerData(self: pointer, slot: int) {.importc: "QStringListModel_override_virtual_headerData".}
proc fQStringListModel_virtualbase_setHeaderData(self: pointer, section: cint, orientation: cint, value: pointer, role: cint): bool{.importc: "QStringListModel_virtualbase_setHeaderData".}
proc fcQStringListModel_override_virtual_setHeaderData(self: pointer, slot: int) {.importc: "QStringListModel_override_virtual_setHeaderData".}
proc fQStringListModel_virtualbase_mimeTypes(self: pointer, ): struct_miqt_array{.importc: "QStringListModel_virtualbase_mimeTypes".}
proc fcQStringListModel_override_virtual_mimeTypes(self: pointer, slot: int) {.importc: "QStringListModel_override_virtual_mimeTypes".}
proc fQStringListModel_virtualbase_mimeData(self: pointer, indexes: struct_miqt_array): pointer{.importc: "QStringListModel_virtualbase_mimeData".}
proc fcQStringListModel_override_virtual_mimeData(self: pointer, slot: int) {.importc: "QStringListModel_override_virtual_mimeData".}
proc fQStringListModel_virtualbase_canDropMimeData(self: pointer, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool{.importc: "QStringListModel_virtualbase_canDropMimeData".}
proc fcQStringListModel_override_virtual_canDropMimeData(self: pointer, slot: int) {.importc: "QStringListModel_override_virtual_canDropMimeData".}
proc fQStringListModel_virtualbase_supportedDragActions(self: pointer, ): cint{.importc: "QStringListModel_virtualbase_supportedDragActions".}
proc fcQStringListModel_override_virtual_supportedDragActions(self: pointer, slot: int) {.importc: "QStringListModel_override_virtual_supportedDragActions".}
proc fQStringListModel_virtualbase_insertColumns(self: pointer, column: cint, count: cint, parent: pointer): bool{.importc: "QStringListModel_virtualbase_insertColumns".}
proc fcQStringListModel_override_virtual_insertColumns(self: pointer, slot: int) {.importc: "QStringListModel_override_virtual_insertColumns".}
proc fQStringListModel_virtualbase_removeColumns(self: pointer, column: cint, count: cint, parent: pointer): bool{.importc: "QStringListModel_virtualbase_removeColumns".}
proc fcQStringListModel_override_virtual_removeColumns(self: pointer, slot: int) {.importc: "QStringListModel_override_virtual_removeColumns".}
proc fQStringListModel_virtualbase_moveColumns(self: pointer, sourceParent: pointer, sourceColumn: cint, count: cint, destinationParent: pointer, destinationChild: cint): bool{.importc: "QStringListModel_virtualbase_moveColumns".}
proc fcQStringListModel_override_virtual_moveColumns(self: pointer, slot: int) {.importc: "QStringListModel_override_virtual_moveColumns".}
proc fQStringListModel_virtualbase_fetchMore(self: pointer, parent: pointer): void{.importc: "QStringListModel_virtualbase_fetchMore".}
proc fcQStringListModel_override_virtual_fetchMore(self: pointer, slot: int) {.importc: "QStringListModel_override_virtual_fetchMore".}
proc fQStringListModel_virtualbase_canFetchMore(self: pointer, parent: pointer): bool{.importc: "QStringListModel_virtualbase_canFetchMore".}
proc fcQStringListModel_override_virtual_canFetchMore(self: pointer, slot: int) {.importc: "QStringListModel_override_virtual_canFetchMore".}
proc fQStringListModel_virtualbase_buddy(self: pointer, index: pointer): pointer{.importc: "QStringListModel_virtualbase_buddy".}
proc fcQStringListModel_override_virtual_buddy(self: pointer, slot: int) {.importc: "QStringListModel_override_virtual_buddy".}
proc fQStringListModel_virtualbase_match(self: pointer, start: pointer, role: cint, value: pointer, hits: cint, flags: cint): struct_miqt_array{.importc: "QStringListModel_virtualbase_match".}
proc fcQStringListModel_override_virtual_match(self: pointer, slot: int) {.importc: "QStringListModel_override_virtual_match".}
proc fQStringListModel_virtualbase_span(self: pointer, index: pointer): pointer{.importc: "QStringListModel_virtualbase_span".}
proc fcQStringListModel_override_virtual_span(self: pointer, slot: int) {.importc: "QStringListModel_override_virtual_span".}
proc fQStringListModel_virtualbase_roleNames(self: pointer, ): struct_miqt_map{.importc: "QStringListModel_virtualbase_roleNames".}
proc fcQStringListModel_override_virtual_roleNames(self: pointer, slot: int) {.importc: "QStringListModel_override_virtual_roleNames".}
proc fQStringListModel_virtualbase_submit(self: pointer, ): bool{.importc: "QStringListModel_virtualbase_submit".}
proc fcQStringListModel_override_virtual_submit(self: pointer, slot: int) {.importc: "QStringListModel_override_virtual_submit".}
proc fQStringListModel_virtualbase_revert(self: pointer, ): void{.importc: "QStringListModel_virtualbase_revert".}
proc fcQStringListModel_override_virtual_revert(self: pointer, slot: int) {.importc: "QStringListModel_override_virtual_revert".}
proc fQStringListModel_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QStringListModel_virtualbase_event".}
proc fcQStringListModel_override_virtual_event(self: pointer, slot: int) {.importc: "QStringListModel_override_virtual_event".}
proc fQStringListModel_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QStringListModel_virtualbase_eventFilter".}
proc fcQStringListModel_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QStringListModel_override_virtual_eventFilter".}
proc fQStringListModel_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QStringListModel_virtualbase_timerEvent".}
proc fcQStringListModel_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QStringListModel_override_virtual_timerEvent".}
proc fQStringListModel_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QStringListModel_virtualbase_childEvent".}
proc fcQStringListModel_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QStringListModel_override_virtual_childEvent".}
proc fQStringListModel_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QStringListModel_virtualbase_customEvent".}
proc fcQStringListModel_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QStringListModel_override_virtual_customEvent".}
proc fQStringListModel_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QStringListModel_virtualbase_connectNotify".}
proc fcQStringListModel_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QStringListModel_override_virtual_connectNotify".}
proc fQStringListModel_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QStringListModel_virtualbase_disconnectNotify".}
proc fcQStringListModel_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QStringListModel_override_virtual_disconnectNotify".}
proc fcQStringListModel_staticMetaObject(): pointer {.importc: "QStringListModel_staticMetaObject".}
proc fcQStringListModel_delete(self: pointer) {.importc: "QStringListModel_delete".}


func init*(T: type gen_qstringlistmodel_types.QStringListModel, h: ptr cQStringListModel): gen_qstringlistmodel_types.QStringListModel =
  T(h: h)
proc create*(T: type gen_qstringlistmodel_types.QStringListModel, ): gen_qstringlistmodel_types.QStringListModel =
  gen_qstringlistmodel_types.QStringListModel.init(fcQStringListModel_new())

proc create*(T: type gen_qstringlistmodel_types.QStringListModel, strings: seq[string]): gen_qstringlistmodel_types.QStringListModel =
  var strings_CArray = newSeq[struct_miqt_string](len(strings))
  for i in 0..<len(strings):
    strings_CArray[i] = struct_miqt_string(data: strings[i], len: csize_t(len(strings[i])))

  gen_qstringlistmodel_types.QStringListModel.init(fcQStringListModel_new2(struct_miqt_array(len: csize_t(len(strings)), data: if len(strings) == 0: nil else: addr(strings_CArray[0]))))

proc create*(T: type gen_qstringlistmodel_types.QStringListModel, parent: gen_qobject_types.QObject): gen_qstringlistmodel_types.QStringListModel =
  gen_qstringlistmodel_types.QStringListModel.init(fcQStringListModel_new3(parent.h))

proc create*(T: type gen_qstringlistmodel_types.QStringListModel, strings: seq[string], parent: gen_qobject_types.QObject): gen_qstringlistmodel_types.QStringListModel =
  var strings_CArray = newSeq[struct_miqt_string](len(strings))
  for i in 0..<len(strings):
    strings_CArray[i] = struct_miqt_string(data: strings[i], len: csize_t(len(strings[i])))

  gen_qstringlistmodel_types.QStringListModel.init(fcQStringListModel_new4(struct_miqt_array(len: csize_t(len(strings)), data: if len(strings) == 0: nil else: addr(strings_CArray[0])), parent.h))

proc metaObject*(self: gen_qstringlistmodel_types.QStringListModel, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQStringListModel_metaObject(self.h))

proc metacast*(self: gen_qstringlistmodel_types.QStringListModel, param1: cstring): pointer =
  fcQStringListModel_metacast(self.h, param1)

proc metacall*(self: gen_qstringlistmodel_types.QStringListModel, param1: cint, param2: cint, param3: pointer): cint =
  fcQStringListModel_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qstringlistmodel_types.QStringListModel, s: cstring): string =
  let v_ms = fcQStringListModel_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qstringlistmodel_types.QStringListModel, s: cstring): string =
  let v_ms = fcQStringListModel_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc rowCount*(self: gen_qstringlistmodel_types.QStringListModel, parent: gen_qabstractitemmodel_types.QModelIndex): cint =
  fcQStringListModel_rowCount(self.h, parent.h)

proc sibling*(self: gen_qstringlistmodel_types.QStringListModel, row: cint, column: cint, idx: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQStringListModel_sibling(self.h, row, column, idx.h))

proc data*(self: gen_qstringlistmodel_types.QStringListModel, index: gen_qabstractitemmodel_types.QModelIndex, role: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQStringListModel_data(self.h, index.h, role))

proc setData*(self: gen_qstringlistmodel_types.QStringListModel, index: gen_qabstractitemmodel_types.QModelIndex, value: gen_qvariant_types.QVariant, role: cint): bool =
  fcQStringListModel_setData(self.h, index.h, value.h, role)

proc flags*(self: gen_qstringlistmodel_types.QStringListModel, index: gen_qabstractitemmodel_types.QModelIndex): cint =
  cint(fcQStringListModel_flags(self.h, index.h))

proc insertRows*(self: gen_qstringlistmodel_types.QStringListModel, row: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQStringListModel_insertRows(self.h, row, count, parent.h)

proc removeRows*(self: gen_qstringlistmodel_types.QStringListModel, row: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQStringListModel_removeRows(self.h, row, count, parent.h)

proc moveRows*(self: gen_qstringlistmodel_types.QStringListModel, sourceParent: gen_qabstractitemmodel_types.QModelIndex, sourceRow: cint, count: cint, destinationParent: gen_qabstractitemmodel_types.QModelIndex, destinationChild: cint): bool =
  fcQStringListModel_moveRows(self.h, sourceParent.h, sourceRow, count, destinationParent.h, destinationChild)

proc itemData*(self: gen_qstringlistmodel_types.QStringListModel, index: gen_qabstractitemmodel_types.QModelIndex): Table[cint,gen_qvariant_types.QVariant] =
  var v_mm = fcQStringListModel_itemData(self.h, index.h)
  var vx_ret: Table[cint, gen_qvariant_types.QVariant]
  var v_Keys = cast[ptr UncheckedArray[cint]](v_mm.keys)
  var v_Values = cast[ptr UncheckedArray[pointer]](v_mm.values)
  for i in 0..<v_mm.len:
    var v_entry_Key = v_Keys[i]

    var v_entry_Value = gen_qvariant_types.QVariant(h: v_Values[i])

    vx_ret[v_entry_Key] = v_entry_Value
  vx_ret

proc setItemData*(self: gen_qstringlistmodel_types.QStringListModel, index: gen_qabstractitemmodel_types.QModelIndex, roles: Table[cint,gen_qvariant_types.QVariant]): bool =
  var roles_Keys_CArray = newSeq[cint](len(roles))
  var roles_Values_CArray = newSeq[pointer](len(roles))
  var roles_ctr = 0
  for rolesk, rolesv in roles:
    roles_Keys_CArray[roles_ctr] = roles_k
    roles_Values_CArray[roles_ctr] = roles_v.h
    roles_ctr += 1

  fcQStringListModel_setItemData(self.h, index.h, struct_miqt_map(len: csize_t(len(roles)),keys: if len(roles) == 0: nil else: addr(roles_Keys_CArray[0]), values: if len(roles) == 0: nil else: addr(roles_Values_CArray[0]),))

proc sort*(self: gen_qstringlistmodel_types.QStringListModel, column: cint, order: cint): void =
  fcQStringListModel_sort(self.h, column, cint(order))

proc stringList*(self: gen_qstringlistmodel_types.QStringListModel, ): seq[string] =
  var v_ma = fcQStringListModel_stringList(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc setStringList*(self: gen_qstringlistmodel_types.QStringListModel, strings: seq[string]): void =
  var strings_CArray = newSeq[struct_miqt_string](len(strings))
  for i in 0..<len(strings):
    strings_CArray[i] = struct_miqt_string(data: strings[i], len: csize_t(len(strings[i])))

  fcQStringListModel_setStringList(self.h, struct_miqt_array(len: csize_t(len(strings)), data: if len(strings) == 0: nil else: addr(strings_CArray[0])))

proc supportedDropActions*(self: gen_qstringlistmodel_types.QStringListModel, ): cint =
  cint(fcQStringListModel_supportedDropActions(self.h))

proc tr*(_: type gen_qstringlistmodel_types.QStringListModel, s: cstring, c: cstring): string =
  let v_ms = fcQStringListModel_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qstringlistmodel_types.QStringListModel, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQStringListModel_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qstringlistmodel_types.QStringListModel, s: cstring, c: cstring): string =
  let v_ms = fcQStringListModel_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qstringlistmodel_types.QStringListModel, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQStringListModel_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc QStringListModelmetaObject*(self: gen_qstringlistmodel_types.QStringListModel, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fQStringListModel_virtualbase_metaObject(self.h))

type QStringListModelmetaObjectProc* = proc(): gen_qobjectdefs_types.QMetaObject
proc onmetaObject*(self: gen_qstringlistmodel_types.QStringListModel, slot: QStringListModelmetaObjectProc) =
  # TODO check subclass
  var tmp = new QStringListModelmetaObjectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQStringListModel_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStringListModel_metaObject(self: ptr cQStringListModel, slot: int): pointer {.exportc: "miqt_exec_callback_QStringListModel_metaObject ".} =
  var nimfunc = cast[ptr QStringListModelmetaObjectProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QStringListModelmetacast*(self: gen_qstringlistmodel_types.QStringListModel, param1: cstring): pointer =
  fQStringListModel_virtualbase_metacast(self.h, param1)

type QStringListModelmetacastProc* = proc(param1: cstring): pointer
proc onmetacast*(self: gen_qstringlistmodel_types.QStringListModel, slot: QStringListModelmetacastProc) =
  # TODO check subclass
  var tmp = new QStringListModelmetacastProc
  tmp[] = slot
  GC_ref(tmp)
  fcQStringListModel_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStringListModel_metacast(self: ptr cQStringListModel, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QStringListModel_metacast ".} =
  var nimfunc = cast[ptr QStringListModelmetacastProc](cast[pointer](slot))
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QStringListModelmetacall*(self: gen_qstringlistmodel_types.QStringListModel, param1: cint, param2: cint, param3: pointer): cint =
  fQStringListModel_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QStringListModelmetacallProc* = proc(param1: cint, param2: cint, param3: pointer): cint
proc onmetacall*(self: gen_qstringlistmodel_types.QStringListModel, slot: QStringListModelmetacallProc) =
  # TODO check subclass
  var tmp = new QStringListModelmetacallProc
  tmp[] = slot
  GC_ref(tmp)
  fcQStringListModel_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStringListModel_metacall(self: ptr cQStringListModel, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QStringListModel_metacall ".} =
  var nimfunc = cast[ptr QStringListModelmetacallProc](cast[pointer](slot))
  let slotval1 = cint(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QStringListModelrowCount*(self: gen_qstringlistmodel_types.QStringListModel, parent: gen_qabstractitemmodel_types.QModelIndex): cint =
  fQStringListModel_virtualbase_rowCount(self.h, parent.h)

type QStringListModelrowCountProc* = proc(parent: gen_qabstractitemmodel_types.QModelIndex): cint
proc onrowCount*(self: gen_qstringlistmodel_types.QStringListModel, slot: QStringListModelrowCountProc) =
  # TODO check subclass
  var tmp = new QStringListModelrowCountProc
  tmp[] = slot
  GC_ref(tmp)
  fcQStringListModel_override_virtual_rowCount(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStringListModel_rowCount(self: ptr cQStringListModel, slot: int, parent: pointer): cint {.exportc: "miqt_exec_callback_QStringListModel_rowCount ".} =
  var nimfunc = cast[ptr QStringListModelrowCountProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QStringListModelsibling*(self: gen_qstringlistmodel_types.QStringListModel, row: cint, column: cint, idx: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fQStringListModel_virtualbase_sibling(self.h, row, column, idx.h))

type QStringListModelsiblingProc* = proc(row: cint, column: cint, idx: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex
proc onsibling*(self: gen_qstringlistmodel_types.QStringListModel, slot: QStringListModelsiblingProc) =
  # TODO check subclass
  var tmp = new QStringListModelsiblingProc
  tmp[] = slot
  GC_ref(tmp)
  fcQStringListModel_override_virtual_sibling(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStringListModel_sibling(self: ptr cQStringListModel, slot: int, row: cint, column: cint, idx: pointer): pointer {.exportc: "miqt_exec_callback_QStringListModel_sibling ".} =
  var nimfunc = cast[ptr QStringListModelsiblingProc](cast[pointer](slot))
  let slotval1 = row

  let slotval2 = column

  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: idx)


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn.h
proc QStringListModeldata*(self: gen_qstringlistmodel_types.QStringListModel, index: gen_qabstractitemmodel_types.QModelIndex, role: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fQStringListModel_virtualbase_data(self.h, index.h, role))

type QStringListModeldataProc* = proc(index: gen_qabstractitemmodel_types.QModelIndex, role: cint): gen_qvariant_types.QVariant
proc ondata*(self: gen_qstringlistmodel_types.QStringListModel, slot: QStringListModeldataProc) =
  # TODO check subclass
  var tmp = new QStringListModeldataProc
  tmp[] = slot
  GC_ref(tmp)
  fcQStringListModel_override_virtual_data(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStringListModel_data(self: ptr cQStringListModel, slot: int, index: pointer, role: cint): pointer {.exportc: "miqt_exec_callback_QStringListModel_data ".} =
  var nimfunc = cast[ptr QStringListModeldataProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index)

  let slotval2 = role


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn.h
proc QStringListModelsetData*(self: gen_qstringlistmodel_types.QStringListModel, index: gen_qabstractitemmodel_types.QModelIndex, value: gen_qvariant_types.QVariant, role: cint): bool =
  fQStringListModel_virtualbase_setData(self.h, index.h, value.h, role)

type QStringListModelsetDataProc* = proc(index: gen_qabstractitemmodel_types.QModelIndex, value: gen_qvariant_types.QVariant, role: cint): bool
proc onsetData*(self: gen_qstringlistmodel_types.QStringListModel, slot: QStringListModelsetDataProc) =
  # TODO check subclass
  var tmp = new QStringListModelsetDataProc
  tmp[] = slot
  GC_ref(tmp)
  fcQStringListModel_override_virtual_setData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStringListModel_setData(self: ptr cQStringListModel, slot: int, index: pointer, value: pointer, role: cint): bool {.exportc: "miqt_exec_callback_QStringListModel_setData ".} =
  var nimfunc = cast[ptr QStringListModelsetDataProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index)

  let slotval2 = gen_qvariant_types.QVariant(h: value)

  let slotval3 = role


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QStringListModelflags*(self: gen_qstringlistmodel_types.QStringListModel, index: gen_qabstractitemmodel_types.QModelIndex): cint =
  cint(fQStringListModel_virtualbase_flags(self.h, index.h))

type QStringListModelflagsProc* = proc(index: gen_qabstractitemmodel_types.QModelIndex): cint
proc onflags*(self: gen_qstringlistmodel_types.QStringListModel, slot: QStringListModelflagsProc) =
  # TODO check subclass
  var tmp = new QStringListModelflagsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQStringListModel_override_virtual_flags(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStringListModel_flags(self: ptr cQStringListModel, slot: int, index: pointer): cint {.exportc: "miqt_exec_callback_QStringListModel_flags ".} =
  var nimfunc = cast[ptr QStringListModelflagsProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index)


  let virtualReturn = nimfunc[](slotval1 )

  cint(virtualReturn)
proc QStringListModelinsertRows*(self: gen_qstringlistmodel_types.QStringListModel, row: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fQStringListModel_virtualbase_insertRows(self.h, row, count, parent.h)

type QStringListModelinsertRowsProc* = proc(row: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool
proc oninsertRows*(self: gen_qstringlistmodel_types.QStringListModel, slot: QStringListModelinsertRowsProc) =
  # TODO check subclass
  var tmp = new QStringListModelinsertRowsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQStringListModel_override_virtual_insertRows(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStringListModel_insertRows(self: ptr cQStringListModel, slot: int, row: cint, count: cint, parent: pointer): bool {.exportc: "miqt_exec_callback_QStringListModel_insertRows ".} =
  var nimfunc = cast[ptr QStringListModelinsertRowsProc](cast[pointer](slot))
  let slotval1 = row

  let slotval2 = count

  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent)


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QStringListModelremoveRows*(self: gen_qstringlistmodel_types.QStringListModel, row: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fQStringListModel_virtualbase_removeRows(self.h, row, count, parent.h)

type QStringListModelremoveRowsProc* = proc(row: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool
proc onremoveRows*(self: gen_qstringlistmodel_types.QStringListModel, slot: QStringListModelremoveRowsProc) =
  # TODO check subclass
  var tmp = new QStringListModelremoveRowsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQStringListModel_override_virtual_removeRows(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStringListModel_removeRows(self: ptr cQStringListModel, slot: int, row: cint, count: cint, parent: pointer): bool {.exportc: "miqt_exec_callback_QStringListModel_removeRows ".} =
  var nimfunc = cast[ptr QStringListModelremoveRowsProc](cast[pointer](slot))
  let slotval1 = row

  let slotval2 = count

  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent)


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QStringListModelmoveRows*(self: gen_qstringlistmodel_types.QStringListModel, sourceParent: gen_qabstractitemmodel_types.QModelIndex, sourceRow: cint, count: cint, destinationParent: gen_qabstractitemmodel_types.QModelIndex, destinationChild: cint): bool =
  fQStringListModel_virtualbase_moveRows(self.h, sourceParent.h, sourceRow, count, destinationParent.h, destinationChild)

type QStringListModelmoveRowsProc* = proc(sourceParent: gen_qabstractitemmodel_types.QModelIndex, sourceRow: cint, count: cint, destinationParent: gen_qabstractitemmodel_types.QModelIndex, destinationChild: cint): bool
proc onmoveRows*(self: gen_qstringlistmodel_types.QStringListModel, slot: QStringListModelmoveRowsProc) =
  # TODO check subclass
  var tmp = new QStringListModelmoveRowsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQStringListModel_override_virtual_moveRows(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStringListModel_moveRows(self: ptr cQStringListModel, slot: int, sourceParent: pointer, sourceRow: cint, count: cint, destinationParent: pointer, destinationChild: cint): bool {.exportc: "miqt_exec_callback_QStringListModel_moveRows ".} =
  var nimfunc = cast[ptr QStringListModelmoveRowsProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: sourceParent)

  let slotval2 = sourceRow

  let slotval3 = count

  let slotval4 = gen_qabstractitemmodel_types.QModelIndex(h: destinationParent)

  let slotval5 = destinationChild


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3, slotval4, slotval5 )

  virtualReturn
proc QStringListModelitemData*(self: gen_qstringlistmodel_types.QStringListModel, index: gen_qabstractitemmodel_types.QModelIndex): Table[cint,gen_qvariant_types.QVariant] =
  var v_mm = fQStringListModel_virtualbase_itemData(self.h, index.h)
  var vx_ret: Table[cint, gen_qvariant_types.QVariant]
  var v_Keys = cast[ptr UncheckedArray[cint]](v_mm.keys)
  var v_Values = cast[ptr UncheckedArray[pointer]](v_mm.values)
  for i in 0..<v_mm.len:
    var v_entry_Key = v_Keys[i]

    var v_entry_Value = gen_qvariant_types.QVariant(h: v_Values[i])

    vx_ret[v_entry_Key] = v_entry_Value
  vx_ret

type QStringListModelitemDataProc* = proc(index: gen_qabstractitemmodel_types.QModelIndex): Table[cint,gen_qvariant_types.QVariant]
proc onitemData*(self: gen_qstringlistmodel_types.QStringListModel, slot: QStringListModelitemDataProc) =
  # TODO check subclass
  var tmp = new QStringListModelitemDataProc
  tmp[] = slot
  GC_ref(tmp)
  fcQStringListModel_override_virtual_itemData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStringListModel_itemData(self: ptr cQStringListModel, slot: int, index: pointer): struct_miqt_map {.exportc: "miqt_exec_callback_QStringListModel_itemData ".} =
  var nimfunc = cast[ptr QStringListModelitemDataProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index)


  let virtualReturn = nimfunc[](slotval1 )
  var virtualReturn_Keys_CArray = newSeq[cint](len(virtualReturn))
  var virtualReturn_Values_CArray = newSeq[pointer](len(virtualReturn))
  var virtualReturn_ctr = 0
  for virtualReturnk, virtualReturnv in virtualReturn:
    virtualReturn_Keys_CArray[virtualReturn_ctr] = virtualReturn_k
    virtualReturn_Values_CArray[virtualReturn_ctr] = virtualReturn_v.h
    virtualReturn_ctr += 1


  struct_miqt_map(len: csize_t(len(virtualReturn)),keys: if len(virtualReturn) == 0: nil else: addr(virtualReturn_Keys_CArray[0]), values: if len(virtualReturn) == 0: nil else: addr(virtualReturn_Values_CArray[0]),)
proc QStringListModelsetItemData*(self: gen_qstringlistmodel_types.QStringListModel, index: gen_qabstractitemmodel_types.QModelIndex, roles: Table[cint,gen_qvariant_types.QVariant]): bool =
  var roles_Keys_CArray = newSeq[cint](len(roles))
  var roles_Values_CArray = newSeq[pointer](len(roles))
  var roles_ctr = 0
  for rolesk, rolesv in roles:
    roles_Keys_CArray[roles_ctr] = roles_k
    roles_Values_CArray[roles_ctr] = roles_v.h
    roles_ctr += 1

  fQStringListModel_virtualbase_setItemData(self.h, index.h, struct_miqt_map(len: csize_t(len(roles)),keys: if len(roles) == 0: nil else: addr(roles_Keys_CArray[0]), values: if len(roles) == 0: nil else: addr(roles_Values_CArray[0]),))

type QStringListModelsetItemDataProc* = proc(index: gen_qabstractitemmodel_types.QModelIndex, roles: Table[cint,gen_qvariant_types.QVariant]): bool
proc onsetItemData*(self: gen_qstringlistmodel_types.QStringListModel, slot: QStringListModelsetItemDataProc) =
  # TODO check subclass
  var tmp = new QStringListModelsetItemDataProc
  tmp[] = slot
  GC_ref(tmp)
  fcQStringListModel_override_virtual_setItemData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStringListModel_setItemData(self: ptr cQStringListModel, slot: int, index: pointer, roles: struct_miqt_map): bool {.exportc: "miqt_exec_callback_QStringListModel_setItemData ".} =
  var nimfunc = cast[ptr QStringListModelsetItemDataProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index)

  var vroles_mm = roles
  var vrolesx_ret: Table[cint, gen_qvariant_types.QVariant]
  var vroles_Keys = cast[ptr UncheckedArray[cint]](vroles_mm.keys)
  var vroles_Values = cast[ptr UncheckedArray[pointer]](vroles_mm.values)
  for i in 0..<vroles_mm.len:
    var vroles_entry_Key = vroles_Keys[i]

    var vroles_entry_Value = gen_qvariant_types.QVariant(h: vroles_Values[i])

    vrolesx_ret[vroles_entry_Key] = vroles_entry_Value
  let slotval2 = vrolesx_ret


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QStringListModelsort*(self: gen_qstringlistmodel_types.QStringListModel, column: cint, order: cint): void =
  fQStringListModel_virtualbase_sort(self.h, column, cint(order))

type QStringListModelsortProc* = proc(column: cint, order: cint): void
proc onsort*(self: gen_qstringlistmodel_types.QStringListModel, slot: QStringListModelsortProc) =
  # TODO check subclass
  var tmp = new QStringListModelsortProc
  tmp[] = slot
  GC_ref(tmp)
  fcQStringListModel_override_virtual_sort(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStringListModel_sort(self: ptr cQStringListModel, slot: int, column: cint, order: cint): void {.exportc: "miqt_exec_callback_QStringListModel_sort ".} =
  var nimfunc = cast[ptr QStringListModelsortProc](cast[pointer](slot))
  let slotval1 = column

  let slotval2 = cint(order)


  nimfunc[](slotval1, slotval2)
proc QStringListModelsupportedDropActions*(self: gen_qstringlistmodel_types.QStringListModel, ): cint =
  cint(fQStringListModel_virtualbase_supportedDropActions(self.h))

type QStringListModelsupportedDropActionsProc* = proc(): cint
proc onsupportedDropActions*(self: gen_qstringlistmodel_types.QStringListModel, slot: QStringListModelsupportedDropActionsProc) =
  # TODO check subclass
  var tmp = new QStringListModelsupportedDropActionsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQStringListModel_override_virtual_supportedDropActions(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStringListModel_supportedDropActions(self: ptr cQStringListModel, slot: int): cint {.exportc: "miqt_exec_callback_QStringListModel_supportedDropActions ".} =
  var nimfunc = cast[ptr QStringListModelsupportedDropActionsProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  cint(virtualReturn)
proc QStringListModelindex*(self: gen_qstringlistmodel_types.QStringListModel, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fQStringListModel_virtualbase_index(self.h, row, column, parent.h))

type QStringListModelindexProc* = proc(row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex
proc onindex*(self: gen_qstringlistmodel_types.QStringListModel, slot: QStringListModelindexProc) =
  # TODO check subclass
  var tmp = new QStringListModelindexProc
  tmp[] = slot
  GC_ref(tmp)
  fcQStringListModel_override_virtual_index(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStringListModel_index(self: ptr cQStringListModel, slot: int, row: cint, column: cint, parent: pointer): pointer {.exportc: "miqt_exec_callback_QStringListModel_index ".} =
  var nimfunc = cast[ptr QStringListModelindexProc](cast[pointer](slot))
  let slotval1 = row

  let slotval2 = column

  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent)


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn.h
proc QStringListModeldropMimeData*(self: gen_qstringlistmodel_types.QStringListModel, data: gen_qmimedata_types.QMimeData, action: cint, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fQStringListModel_virtualbase_dropMimeData(self.h, data.h, cint(action), row, column, parent.h)

type QStringListModeldropMimeDataProc* = proc(data: gen_qmimedata_types.QMimeData, action: cint, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool
proc ondropMimeData*(self: gen_qstringlistmodel_types.QStringListModel, slot: QStringListModeldropMimeDataProc) =
  # TODO check subclass
  var tmp = new QStringListModeldropMimeDataProc
  tmp[] = slot
  GC_ref(tmp)
  fcQStringListModel_override_virtual_dropMimeData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStringListModel_dropMimeData(self: ptr cQStringListModel, slot: int, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool {.exportc: "miqt_exec_callback_QStringListModel_dropMimeData ".} =
  var nimfunc = cast[ptr QStringListModeldropMimeDataProc](cast[pointer](slot))
  let slotval1 = gen_qmimedata_types.QMimeData(h: data)

  let slotval2 = cint(action)

  let slotval3 = row

  let slotval4 = column

  let slotval5 = gen_qabstractitemmodel_types.QModelIndex(h: parent)


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3, slotval4, slotval5 )

  virtualReturn
proc QStringListModelheaderData*(self: gen_qstringlistmodel_types.QStringListModel, section: cint, orientation: cint, role: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fQStringListModel_virtualbase_headerData(self.h, section, cint(orientation), role))

type QStringListModelheaderDataProc* = proc(section: cint, orientation: cint, role: cint): gen_qvariant_types.QVariant
proc onheaderData*(self: gen_qstringlistmodel_types.QStringListModel, slot: QStringListModelheaderDataProc) =
  # TODO check subclass
  var tmp = new QStringListModelheaderDataProc
  tmp[] = slot
  GC_ref(tmp)
  fcQStringListModel_override_virtual_headerData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStringListModel_headerData(self: ptr cQStringListModel, slot: int, section: cint, orientation: cint, role: cint): pointer {.exportc: "miqt_exec_callback_QStringListModel_headerData ".} =
  var nimfunc = cast[ptr QStringListModelheaderDataProc](cast[pointer](slot))
  let slotval1 = section

  let slotval2 = cint(orientation)

  let slotval3 = role


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn.h
proc QStringListModelsetHeaderData*(self: gen_qstringlistmodel_types.QStringListModel, section: cint, orientation: cint, value: gen_qvariant_types.QVariant, role: cint): bool =
  fQStringListModel_virtualbase_setHeaderData(self.h, section, cint(orientation), value.h, role)

type QStringListModelsetHeaderDataProc* = proc(section: cint, orientation: cint, value: gen_qvariant_types.QVariant, role: cint): bool
proc onsetHeaderData*(self: gen_qstringlistmodel_types.QStringListModel, slot: QStringListModelsetHeaderDataProc) =
  # TODO check subclass
  var tmp = new QStringListModelsetHeaderDataProc
  tmp[] = slot
  GC_ref(tmp)
  fcQStringListModel_override_virtual_setHeaderData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStringListModel_setHeaderData(self: ptr cQStringListModel, slot: int, section: cint, orientation: cint, value: pointer, role: cint): bool {.exportc: "miqt_exec_callback_QStringListModel_setHeaderData ".} =
  var nimfunc = cast[ptr QStringListModelsetHeaderDataProc](cast[pointer](slot))
  let slotval1 = section

  let slotval2 = cint(orientation)

  let slotval3 = gen_qvariant_types.QVariant(h: value)

  let slotval4 = role


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3, slotval4 )

  virtualReturn
proc QStringListModelmimeTypes*(self: gen_qstringlistmodel_types.QStringListModel, ): seq[string] =
  var v_ma = fQStringListModel_virtualbase_mimeTypes(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

type QStringListModelmimeTypesProc* = proc(): seq[string]
proc onmimeTypes*(self: gen_qstringlistmodel_types.QStringListModel, slot: QStringListModelmimeTypesProc) =
  # TODO check subclass
  var tmp = new QStringListModelmimeTypesProc
  tmp[] = slot
  GC_ref(tmp)
  fcQStringListModel_override_virtual_mimeTypes(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStringListModel_mimeTypes(self: ptr cQStringListModel, slot: int): struct_miqt_array {.exportc: "miqt_exec_callback_QStringListModel_mimeTypes ".} =
  var nimfunc = cast[ptr QStringListModelmimeTypesProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )
  var virtualReturn_CArray = newSeq[struct_miqt_string](len(virtualReturn))
  for i in 0..<len(virtualReturn):
    virtualReturn_CArray[i] = struct_miqt_string(data: virtualReturn[i], len: csize_t(len(virtualReturn[i])))


  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))
proc QStringListModelmimeData*(self: gen_qstringlistmodel_types.QStringListModel, indexes: seq[gen_qabstractitemmodel_types.QModelIndex]): gen_qmimedata_types.QMimeData =
  var indexes_CArray = newSeq[pointer](len(indexes))
  for i in 0..<len(indexes):
    indexes_CArray[i] = indexes[i].h

  gen_qmimedata_types.QMimeData(h: fQStringListModel_virtualbase_mimeData(self.h, struct_miqt_array(len: csize_t(len(indexes)), data: if len(indexes) == 0: nil else: addr(indexes_CArray[0]))))

type QStringListModelmimeDataProc* = proc(indexes: seq[gen_qabstractitemmodel_types.QModelIndex]): gen_qmimedata_types.QMimeData
proc onmimeData*(self: gen_qstringlistmodel_types.QStringListModel, slot: QStringListModelmimeDataProc) =
  # TODO check subclass
  var tmp = new QStringListModelmimeDataProc
  tmp[] = slot
  GC_ref(tmp)
  fcQStringListModel_override_virtual_mimeData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStringListModel_mimeData(self: ptr cQStringListModel, slot: int, indexes: struct_miqt_array): pointer {.exportc: "miqt_exec_callback_QStringListModel_mimeData ".} =
  var nimfunc = cast[ptr QStringListModelmimeDataProc](cast[pointer](slot))
  var vindexes_ma = indexes
  var vindexesx_ret = newSeq[gen_qabstractitemmodel_types.QModelIndex](int(vindexes_ma.len))
  let vindexes_outCast = cast[ptr UncheckedArray[pointer]](vindexes_ma.data)
  for i in 0 ..< vindexes_ma.len:
    vindexesx_ret[i] = gen_qabstractitemmodel_types.QModelIndex(h: vindexes_outCast[i])
  let slotval1 = vindexesx_ret


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QStringListModelcanDropMimeData*(self: gen_qstringlistmodel_types.QStringListModel, data: gen_qmimedata_types.QMimeData, action: cint, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fQStringListModel_virtualbase_canDropMimeData(self.h, data.h, cint(action), row, column, parent.h)

type QStringListModelcanDropMimeDataProc* = proc(data: gen_qmimedata_types.QMimeData, action: cint, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool
proc oncanDropMimeData*(self: gen_qstringlistmodel_types.QStringListModel, slot: QStringListModelcanDropMimeDataProc) =
  # TODO check subclass
  var tmp = new QStringListModelcanDropMimeDataProc
  tmp[] = slot
  GC_ref(tmp)
  fcQStringListModel_override_virtual_canDropMimeData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStringListModel_canDropMimeData(self: ptr cQStringListModel, slot: int, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool {.exportc: "miqt_exec_callback_QStringListModel_canDropMimeData ".} =
  var nimfunc = cast[ptr QStringListModelcanDropMimeDataProc](cast[pointer](slot))
  let slotval1 = gen_qmimedata_types.QMimeData(h: data)

  let slotval2 = cint(action)

  let slotval3 = row

  let slotval4 = column

  let slotval5 = gen_qabstractitemmodel_types.QModelIndex(h: parent)


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3, slotval4, slotval5 )

  virtualReturn
proc QStringListModelsupportedDragActions*(self: gen_qstringlistmodel_types.QStringListModel, ): cint =
  cint(fQStringListModel_virtualbase_supportedDragActions(self.h))

type QStringListModelsupportedDragActionsProc* = proc(): cint
proc onsupportedDragActions*(self: gen_qstringlistmodel_types.QStringListModel, slot: QStringListModelsupportedDragActionsProc) =
  # TODO check subclass
  var tmp = new QStringListModelsupportedDragActionsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQStringListModel_override_virtual_supportedDragActions(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStringListModel_supportedDragActions(self: ptr cQStringListModel, slot: int): cint {.exportc: "miqt_exec_callback_QStringListModel_supportedDragActions ".} =
  var nimfunc = cast[ptr QStringListModelsupportedDragActionsProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  cint(virtualReturn)
proc QStringListModelinsertColumns*(self: gen_qstringlistmodel_types.QStringListModel, column: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fQStringListModel_virtualbase_insertColumns(self.h, column, count, parent.h)

type QStringListModelinsertColumnsProc* = proc(column: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool
proc oninsertColumns*(self: gen_qstringlistmodel_types.QStringListModel, slot: QStringListModelinsertColumnsProc) =
  # TODO check subclass
  var tmp = new QStringListModelinsertColumnsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQStringListModel_override_virtual_insertColumns(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStringListModel_insertColumns(self: ptr cQStringListModel, slot: int, column: cint, count: cint, parent: pointer): bool {.exportc: "miqt_exec_callback_QStringListModel_insertColumns ".} =
  var nimfunc = cast[ptr QStringListModelinsertColumnsProc](cast[pointer](slot))
  let slotval1 = column

  let slotval2 = count

  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent)


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QStringListModelremoveColumns*(self: gen_qstringlistmodel_types.QStringListModel, column: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fQStringListModel_virtualbase_removeColumns(self.h, column, count, parent.h)

type QStringListModelremoveColumnsProc* = proc(column: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool
proc onremoveColumns*(self: gen_qstringlistmodel_types.QStringListModel, slot: QStringListModelremoveColumnsProc) =
  # TODO check subclass
  var tmp = new QStringListModelremoveColumnsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQStringListModel_override_virtual_removeColumns(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStringListModel_removeColumns(self: ptr cQStringListModel, slot: int, column: cint, count: cint, parent: pointer): bool {.exportc: "miqt_exec_callback_QStringListModel_removeColumns ".} =
  var nimfunc = cast[ptr QStringListModelremoveColumnsProc](cast[pointer](slot))
  let slotval1 = column

  let slotval2 = count

  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent)


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QStringListModelmoveColumns*(self: gen_qstringlistmodel_types.QStringListModel, sourceParent: gen_qabstractitemmodel_types.QModelIndex, sourceColumn: cint, count: cint, destinationParent: gen_qabstractitemmodel_types.QModelIndex, destinationChild: cint): bool =
  fQStringListModel_virtualbase_moveColumns(self.h, sourceParent.h, sourceColumn, count, destinationParent.h, destinationChild)

type QStringListModelmoveColumnsProc* = proc(sourceParent: gen_qabstractitemmodel_types.QModelIndex, sourceColumn: cint, count: cint, destinationParent: gen_qabstractitemmodel_types.QModelIndex, destinationChild: cint): bool
proc onmoveColumns*(self: gen_qstringlistmodel_types.QStringListModel, slot: QStringListModelmoveColumnsProc) =
  # TODO check subclass
  var tmp = new QStringListModelmoveColumnsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQStringListModel_override_virtual_moveColumns(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStringListModel_moveColumns(self: ptr cQStringListModel, slot: int, sourceParent: pointer, sourceColumn: cint, count: cint, destinationParent: pointer, destinationChild: cint): bool {.exportc: "miqt_exec_callback_QStringListModel_moveColumns ".} =
  var nimfunc = cast[ptr QStringListModelmoveColumnsProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: sourceParent)

  let slotval2 = sourceColumn

  let slotval3 = count

  let slotval4 = gen_qabstractitemmodel_types.QModelIndex(h: destinationParent)

  let slotval5 = destinationChild


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3, slotval4, slotval5 )

  virtualReturn
proc QStringListModelfetchMore*(self: gen_qstringlistmodel_types.QStringListModel, parent: gen_qabstractitemmodel_types.QModelIndex): void =
  fQStringListModel_virtualbase_fetchMore(self.h, parent.h)

type QStringListModelfetchMoreProc* = proc(parent: gen_qabstractitemmodel_types.QModelIndex): void
proc onfetchMore*(self: gen_qstringlistmodel_types.QStringListModel, slot: QStringListModelfetchMoreProc) =
  # TODO check subclass
  var tmp = new QStringListModelfetchMoreProc
  tmp[] = slot
  GC_ref(tmp)
  fcQStringListModel_override_virtual_fetchMore(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStringListModel_fetchMore(self: ptr cQStringListModel, slot: int, parent: pointer): void {.exportc: "miqt_exec_callback_QStringListModel_fetchMore ".} =
  var nimfunc = cast[ptr QStringListModelfetchMoreProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent)


  nimfunc[](slotval1)
proc QStringListModelcanFetchMore*(self: gen_qstringlistmodel_types.QStringListModel, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fQStringListModel_virtualbase_canFetchMore(self.h, parent.h)

type QStringListModelcanFetchMoreProc* = proc(parent: gen_qabstractitemmodel_types.QModelIndex): bool
proc oncanFetchMore*(self: gen_qstringlistmodel_types.QStringListModel, slot: QStringListModelcanFetchMoreProc) =
  # TODO check subclass
  var tmp = new QStringListModelcanFetchMoreProc
  tmp[] = slot
  GC_ref(tmp)
  fcQStringListModel_override_virtual_canFetchMore(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStringListModel_canFetchMore(self: ptr cQStringListModel, slot: int, parent: pointer): bool {.exportc: "miqt_exec_callback_QStringListModel_canFetchMore ".} =
  var nimfunc = cast[ptr QStringListModelcanFetchMoreProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QStringListModelbuddy*(self: gen_qstringlistmodel_types.QStringListModel, index: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fQStringListModel_virtualbase_buddy(self.h, index.h))

type QStringListModelbuddyProc* = proc(index: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex
proc onbuddy*(self: gen_qstringlistmodel_types.QStringListModel, slot: QStringListModelbuddyProc) =
  # TODO check subclass
  var tmp = new QStringListModelbuddyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQStringListModel_override_virtual_buddy(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStringListModel_buddy(self: ptr cQStringListModel, slot: int, index: pointer): pointer {.exportc: "miqt_exec_callback_QStringListModel_buddy ".} =
  var nimfunc = cast[ptr QStringListModelbuddyProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QStringListModelmatch*(self: gen_qstringlistmodel_types.QStringListModel, start: gen_qabstractitemmodel_types.QModelIndex, role: cint, value: gen_qvariant_types.QVariant, hits: cint, flags: cint): seq[gen_qabstractitemmodel_types.QModelIndex] =
  var v_ma = fQStringListModel_virtualbase_match(self.h, start.h, role, value.h, hits, cint(flags))
  var vx_ret = newSeq[gen_qabstractitemmodel_types.QModelIndex](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qabstractitemmodel_types.QModelIndex(h: v_outCast[i])
  vx_ret

type QStringListModelmatchProc* = proc(start: gen_qabstractitemmodel_types.QModelIndex, role: cint, value: gen_qvariant_types.QVariant, hits: cint, flags: cint): seq[gen_qabstractitemmodel_types.QModelIndex]
proc onmatch*(self: gen_qstringlistmodel_types.QStringListModel, slot: QStringListModelmatchProc) =
  # TODO check subclass
  var tmp = new QStringListModelmatchProc
  tmp[] = slot
  GC_ref(tmp)
  fcQStringListModel_override_virtual_match(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStringListModel_match(self: ptr cQStringListModel, slot: int, start: pointer, role: cint, value: pointer, hits: cint, flags: cint): struct_miqt_array {.exportc: "miqt_exec_callback_QStringListModel_match ".} =
  var nimfunc = cast[ptr QStringListModelmatchProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: start)

  let slotval2 = role

  let slotval3 = gen_qvariant_types.QVariant(h: value)

  let slotval4 = hits

  let slotval5 = cint(flags)


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3, slotval4, slotval5 )
  var virtualReturn_CArray = newSeq[pointer](len(virtualReturn))
  for i in 0..<len(virtualReturn):
    virtualReturn_CArray[i] = virtualReturn[i].h


  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))
proc QStringListModelspan*(self: gen_qstringlistmodel_types.QStringListModel, index: gen_qabstractitemmodel_types.QModelIndex): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fQStringListModel_virtualbase_span(self.h, index.h))

type QStringListModelspanProc* = proc(index: gen_qabstractitemmodel_types.QModelIndex): gen_qsize_types.QSize
proc onspan*(self: gen_qstringlistmodel_types.QStringListModel, slot: QStringListModelspanProc) =
  # TODO check subclass
  var tmp = new QStringListModelspanProc
  tmp[] = slot
  GC_ref(tmp)
  fcQStringListModel_override_virtual_span(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStringListModel_span(self: ptr cQStringListModel, slot: int, index: pointer): pointer {.exportc: "miqt_exec_callback_QStringListModel_span ".} =
  var nimfunc = cast[ptr QStringListModelspanProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QStringListModelroleNames*(self: gen_qstringlistmodel_types.QStringListModel, ): Table[cint,seq[byte]] =
  var v_mm = fQStringListModel_virtualbase_roleNames(self.h)
  var vx_ret: Table[cint, seq[byte]]
  var v_Keys = cast[ptr UncheckedArray[cint]](v_mm.keys)
  var v_Values = cast[ptr UncheckedArray[struct_miqt_string]](v_mm.values)
  for i in 0..<v_mm.len:
    var v_entry_Key = v_Keys[i]

    var vx_hashval_bytearray = v_Values[i]
    var vx_hashvalx_ret = @(toOpenArrayByte(vx_hashval_bytearray.data, 0, int(vx_hashval_bytearray.len)-1))
    c_free(vx_hashval_bytearray.data)
    var v_entry_Value = vx_hashvalx_ret

    vx_ret[v_entry_Key] = v_entry_Value
  vx_ret

type QStringListModelroleNamesProc* = proc(): Table[cint,seq[byte]]
proc onroleNames*(self: gen_qstringlistmodel_types.QStringListModel, slot: QStringListModelroleNamesProc) =
  # TODO check subclass
  var tmp = new QStringListModelroleNamesProc
  tmp[] = slot
  GC_ref(tmp)
  fcQStringListModel_override_virtual_roleNames(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStringListModel_roleNames(self: ptr cQStringListModel, slot: int): struct_miqt_map {.exportc: "miqt_exec_callback_QStringListModel_roleNames ".} =
  var nimfunc = cast[ptr QStringListModelroleNamesProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )
  var virtualReturn_Keys_CArray = newSeq[cint](len(virtualReturn))
  var virtualReturn_Values_CArray = newSeq[struct_miqt_string](len(virtualReturn))
  var virtualReturn_ctr = 0
  for virtualReturnk, virtualReturnv in virtualReturn:
    virtualReturn_Keys_CArray[virtualReturn_ctr] = virtualReturn_k
    virtualReturn_Values_CArray[virtualReturn_ctr] = struct_miqt_string(data: cast[cstring](if len(virtualReturn_v) == 0: nil else: unsafeAddr virtualReturn_v[0]), len: csize_t(len(virtualReturn_v)))
    virtualReturn_ctr += 1


  struct_miqt_map(len: csize_t(len(virtualReturn)),keys: if len(virtualReturn) == 0: nil else: addr(virtualReturn_Keys_CArray[0]), values: if len(virtualReturn) == 0: nil else: addr(virtualReturn_Values_CArray[0]),)
proc QStringListModelsubmit*(self: gen_qstringlistmodel_types.QStringListModel, ): bool =
  fQStringListModel_virtualbase_submit(self.h)

type QStringListModelsubmitProc* = proc(): bool
proc onsubmit*(self: gen_qstringlistmodel_types.QStringListModel, slot: QStringListModelsubmitProc) =
  # TODO check subclass
  var tmp = new QStringListModelsubmitProc
  tmp[] = slot
  GC_ref(tmp)
  fcQStringListModel_override_virtual_submit(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStringListModel_submit(self: ptr cQStringListModel, slot: int): bool {.exportc: "miqt_exec_callback_QStringListModel_submit ".} =
  var nimfunc = cast[ptr QStringListModelsubmitProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QStringListModelrevert*(self: gen_qstringlistmodel_types.QStringListModel, ): void =
  fQStringListModel_virtualbase_revert(self.h)

type QStringListModelrevertProc* = proc(): void
proc onrevert*(self: gen_qstringlistmodel_types.QStringListModel, slot: QStringListModelrevertProc) =
  # TODO check subclass
  var tmp = new QStringListModelrevertProc
  tmp[] = slot
  GC_ref(tmp)
  fcQStringListModel_override_virtual_revert(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStringListModel_revert(self: ptr cQStringListModel, slot: int): void {.exportc: "miqt_exec_callback_QStringListModel_revert ".} =
  var nimfunc = cast[ptr QStringListModelrevertProc](cast[pointer](slot))

  nimfunc[]()
proc QStringListModelevent*(self: gen_qstringlistmodel_types.QStringListModel, event: gen_qcoreevent_types.QEvent): bool =
  fQStringListModel_virtualbase_event(self.h, event.h)

type QStringListModeleventProc* = proc(event: gen_qcoreevent_types.QEvent): bool
proc onevent*(self: gen_qstringlistmodel_types.QStringListModel, slot: QStringListModeleventProc) =
  # TODO check subclass
  var tmp = new QStringListModeleventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQStringListModel_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStringListModel_event(self: ptr cQStringListModel, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QStringListModel_event ".} =
  var nimfunc = cast[ptr QStringListModeleventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QStringListModeleventFilter*(self: gen_qstringlistmodel_types.QStringListModel, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fQStringListModel_virtualbase_eventFilter(self.h, watched.h, event.h)

type QStringListModeleventFilterProc* = proc(watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool
proc oneventFilter*(self: gen_qstringlistmodel_types.QStringListModel, slot: QStringListModeleventFilterProc) =
  # TODO check subclass
  var tmp = new QStringListModeleventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQStringListModel_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStringListModel_eventFilter(self: ptr cQStringListModel, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QStringListModel_eventFilter ".} =
  var nimfunc = cast[ptr QStringListModeleventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: watched)

  let slotval2 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QStringListModeltimerEvent*(self: gen_qstringlistmodel_types.QStringListModel, event: gen_qcoreevent_types.QTimerEvent): void =
  fQStringListModel_virtualbase_timerEvent(self.h, event.h)

type QStringListModeltimerEventProc* = proc(event: gen_qcoreevent_types.QTimerEvent): void
proc ontimerEvent*(self: gen_qstringlistmodel_types.QStringListModel, slot: QStringListModeltimerEventProc) =
  # TODO check subclass
  var tmp = new QStringListModeltimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQStringListModel_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStringListModel_timerEvent(self: ptr cQStringListModel, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QStringListModel_timerEvent ".} =
  var nimfunc = cast[ptr QStringListModeltimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QStringListModelchildEvent*(self: gen_qstringlistmodel_types.QStringListModel, event: gen_qcoreevent_types.QChildEvent): void =
  fQStringListModel_virtualbase_childEvent(self.h, event.h)

type QStringListModelchildEventProc* = proc(event: gen_qcoreevent_types.QChildEvent): void
proc onchildEvent*(self: gen_qstringlistmodel_types.QStringListModel, slot: QStringListModelchildEventProc) =
  # TODO check subclass
  var tmp = new QStringListModelchildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQStringListModel_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStringListModel_childEvent(self: ptr cQStringListModel, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QStringListModel_childEvent ".} =
  var nimfunc = cast[ptr QStringListModelchildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QStringListModelcustomEvent*(self: gen_qstringlistmodel_types.QStringListModel, event: gen_qcoreevent_types.QEvent): void =
  fQStringListModel_virtualbase_customEvent(self.h, event.h)

type QStringListModelcustomEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc oncustomEvent*(self: gen_qstringlistmodel_types.QStringListModel, slot: QStringListModelcustomEventProc) =
  # TODO check subclass
  var tmp = new QStringListModelcustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQStringListModel_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStringListModel_customEvent(self: ptr cQStringListModel, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QStringListModel_customEvent ".} =
  var nimfunc = cast[ptr QStringListModelcustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QStringListModelconnectNotify*(self: gen_qstringlistmodel_types.QStringListModel, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQStringListModel_virtualbase_connectNotify(self.h, signal.h)

type QStringListModelconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc onconnectNotify*(self: gen_qstringlistmodel_types.QStringListModel, slot: QStringListModelconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QStringListModelconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQStringListModel_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStringListModel_connectNotify(self: ptr cQStringListModel, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QStringListModel_connectNotify ".} =
  var nimfunc = cast[ptr QStringListModelconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QStringListModeldisconnectNotify*(self: gen_qstringlistmodel_types.QStringListModel, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQStringListModel_virtualbase_disconnectNotify(self.h, signal.h)

type QStringListModeldisconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qstringlistmodel_types.QStringListModel, slot: QStringListModeldisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QStringListModeldisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQStringListModel_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStringListModel_disconnectNotify(self: ptr cQStringListModel, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QStringListModel_disconnectNotify ".} =
  var nimfunc = cast[ptr QStringListModeldisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc staticMetaObject*(_: type gen_qstringlistmodel_types.QStringListModel): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQStringListModel_staticMetaObject())
proc delete*(self: gen_qstringlistmodel_types.QStringListModel) =
  fcQStringListModel_delete(self.h)
