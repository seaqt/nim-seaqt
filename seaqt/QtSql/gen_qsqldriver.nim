import ./qtsql_pkg

{.push raises: [].}

from system/ansi_c import c_free, c_malloc

type
  struct_seaqt_string {.used.} = object
    len: csize_t
    data: pointer

  struct_seaqt_array {.used.} = object
    len: csize_t
    data: pointer

  struct_seaqt_map {.used.} = object
    len: csize_t
    keys: pointer
    values: pointer

  miqt_uintptr_t {.importc: "uintptr_t", header: "stdint.h", used.} = uint
  miqt_intptr_t {.importc: "intptr_t", header: "stdint.h", used.} = int

func fromBytes(T: type string, v: struct_seaqt_string): string {.used.} =
  if v.len > 0:
    let len = cast[int](v.len)
    result = newStringUninit(len)
    when nimvm:
      let d = cast[ptr UncheckedArray[char]](v.data)
      for i in 0..<len:
        result[i] = d[i]
    else:
      copyMem(addr result[0], v.data, len)


{.compile("gen_qsqldriver.cpp", QtSqlCFlags).}


type QSqlDriverDriverFeatureEnum* = distinct cint
template Transactions*(_: type QSqlDriverDriverFeatureEnum): untyped = 0
template QuerySize*(_: type QSqlDriverDriverFeatureEnum): untyped = 1
template BLOB*(_: type QSqlDriverDriverFeatureEnum): untyped = 2
template Unicode*(_: type QSqlDriverDriverFeatureEnum): untyped = 3
template PreparedQueries*(_: type QSqlDriverDriverFeatureEnum): untyped = 4
template NamedPlaceholders*(_: type QSqlDriverDriverFeatureEnum): untyped = 5
template PositionalPlaceholders*(_: type QSqlDriverDriverFeatureEnum): untyped = 6
template LastInsertId*(_: type QSqlDriverDriverFeatureEnum): untyped = 7
template BatchOperations*(_: type QSqlDriverDriverFeatureEnum): untyped = 8
template SimpleLocking*(_: type QSqlDriverDriverFeatureEnum): untyped = 9
template LowPrecisionNumbers*(_: type QSqlDriverDriverFeatureEnum): untyped = 10
template EventNotifications*(_: type QSqlDriverDriverFeatureEnum): untyped = 11
template FinishQuery*(_: type QSqlDriverDriverFeatureEnum): untyped = 12
template MultipleResultSets*(_: type QSqlDriverDriverFeatureEnum): untyped = 13
template CancelQuery*(_: type QSqlDriverDriverFeatureEnum): untyped = 14


type QSqlDriverStatementTypeEnum* = distinct cint
template WhereStatement*(_: type QSqlDriverStatementTypeEnum): untyped = 0
template SelectStatement*(_: type QSqlDriverStatementTypeEnum): untyped = 1
template UpdateStatement*(_: type QSqlDriverStatementTypeEnum): untyped = 2
template InsertStatement*(_: type QSqlDriverStatementTypeEnum): untyped = 3
template DeleteStatement*(_: type QSqlDriverStatementTypeEnum): untyped = 4


type QSqlDriverIdentifierTypeEnum* = distinct cint
template FieldName*(_: type QSqlDriverIdentifierTypeEnum): untyped = 0
template TableName*(_: type QSqlDriverIdentifierTypeEnum): untyped = 1


type QSqlDriverNotificationSourceEnum* = distinct cint
template UnknownSource*(_: type QSqlDriverNotificationSourceEnum): untyped = 0
template SelfSource*(_: type QSqlDriverNotificationSourceEnum): untyped = 1
template OtherSource*(_: type QSqlDriverNotificationSourceEnum): untyped = 2


type QSqlDriverDbmsTypeEnum* = distinct cint
template UnknownDbms*(_: type QSqlDriverDbmsTypeEnum): untyped = 0
template MSSqlServer*(_: type QSqlDriverDbmsTypeEnum): untyped = 1
template MySqlServer*(_: type QSqlDriverDbmsTypeEnum): untyped = 2
template PostgreSQL*(_: type QSqlDriverDbmsTypeEnum): untyped = 3
template Oracle*(_: type QSqlDriverDbmsTypeEnum): untyped = 4
template Sybase*(_: type QSqlDriverDbmsTypeEnum): untyped = 5
template SQLite*(_: type QSqlDriverDbmsTypeEnum): untyped = 6
template Interbase*(_: type QSqlDriverDbmsTypeEnum): untyped = 7
template DB2*(_: type QSqlDriverDbmsTypeEnum): untyped = 8


import ./gen_qsqldriver_types
export gen_qsqldriver_types

import
  ../QtCore/gen_qcoreevent_types,
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qobject,
  ../QtCore/gen_qobjectdefs_types,
  ../QtCore/gen_qvariant_types,
  ./gen_qsqlerror_types,
  ./gen_qsqlfield_types,
  ./gen_qsqlindex_types,
  ./gen_qsqlrecord_types,
  ./gen_qsqlresult_types
export
  gen_qcoreevent_types,
  gen_qmetaobject_types,
  gen_qobject,
  gen_qobjectdefs_types,
  gen_qvariant_types,
  gen_qsqlerror_types,
  gen_qsqlfield_types,
  gen_qsqlindex_types,
  gen_qsqlrecord_types,
  gen_qsqlresult_types

type cQSqlDriver*{.exportc: "QSqlDriver", incompleteStruct.} = object

proc fcQSqlDriver_metaObject(self: pointer): pointer {.importc: "QSqlDriver_metaObject".}
proc fcQSqlDriver_metacast(self: pointer, param1: cstring): pointer {.importc: "QSqlDriver_metacast".}
proc fcQSqlDriver_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QSqlDriver_metacall".}
proc fcQSqlDriver_tr(s: cstring): struct_seaqt_string {.importc: "QSqlDriver_tr".}
proc fcQSqlDriver_isOpen(self: pointer): bool {.importc: "QSqlDriver_isOpen".}
proc fcQSqlDriver_isOpenError(self: pointer): bool {.importc: "QSqlDriver_isOpenError".}
proc fcQSqlDriver_beginTransaction(self: pointer): bool {.importc: "QSqlDriver_beginTransaction".}
proc fcQSqlDriver_commitTransaction(self: pointer): bool {.importc: "QSqlDriver_commitTransaction".}
proc fcQSqlDriver_rollbackTransaction(self: pointer): bool {.importc: "QSqlDriver_rollbackTransaction".}
proc fcQSqlDriver_tables(self: pointer, tableType: cint): struct_seaqt_array {.importc: "QSqlDriver_tables".}
proc fcQSqlDriver_primaryIndex(self: pointer, tableName: struct_seaqt_string): pointer {.importc: "QSqlDriver_primaryIndex".}
proc fcQSqlDriver_record(self: pointer, tableName: struct_seaqt_string): pointer {.importc: "QSqlDriver_record".}
proc fcQSqlDriver_formatValue(self: pointer, field: pointer, trimStrings: bool): struct_seaqt_string {.importc: "QSqlDriver_formatValue".}
proc fcQSqlDriver_escapeIdentifier(self: pointer, identifier: struct_seaqt_string, typeVal: cint): struct_seaqt_string {.importc: "QSqlDriver_escapeIdentifier".}
proc fcQSqlDriver_sqlStatement(self: pointer, typeVal: cint, tableName: struct_seaqt_string, rec: pointer, preparedStatement: bool): struct_seaqt_string {.importc: "QSqlDriver_sqlStatement".}
proc fcQSqlDriver_lastError(self: pointer): pointer {.importc: "QSqlDriver_lastError".}
proc fcQSqlDriver_handle(self: pointer): pointer {.importc: "QSqlDriver_handle".}
proc fcQSqlDriver_hasFeature(self: pointer, f: cint): bool {.importc: "QSqlDriver_hasFeature".}
proc fcQSqlDriver_close(self: pointer): void {.importc: "QSqlDriver_close".}
proc fcQSqlDriver_createResult(self: pointer): pointer {.importc: "QSqlDriver_createResult".}
proc fcQSqlDriver_open(self: pointer, db: struct_seaqt_string, user: struct_seaqt_string, password: struct_seaqt_string, host: struct_seaqt_string, port: cint, connOpts: struct_seaqt_string): bool {.importc: "QSqlDriver_open".}
proc fcQSqlDriver_subscribeToNotification(self: pointer, name: struct_seaqt_string): bool {.importc: "QSqlDriver_subscribeToNotification".}
proc fcQSqlDriver_unsubscribeFromNotification(self: pointer, name: struct_seaqt_string): bool {.importc: "QSqlDriver_unsubscribeFromNotification".}
proc fcQSqlDriver_subscribedToNotifications(self: pointer): struct_seaqt_array {.importc: "QSqlDriver_subscribedToNotifications".}
proc fcQSqlDriver_isIdentifierEscaped(self: pointer, identifier: struct_seaqt_string, typeVal: cint): bool {.importc: "QSqlDriver_isIdentifierEscaped".}
proc fcQSqlDriver_stripDelimiters(self: pointer, identifier: struct_seaqt_string, typeVal: cint): struct_seaqt_string {.importc: "QSqlDriver_stripDelimiters".}
proc fcQSqlDriver_setNumericalPrecisionPolicy(self: pointer, precisionPolicy: cint): void {.importc: "QSqlDriver_setNumericalPrecisionPolicy".}
proc fcQSqlDriver_numericalPrecisionPolicy(self: pointer): cint {.importc: "QSqlDriver_numericalPrecisionPolicy".}
proc fcQSqlDriver_dbmsType(self: pointer): cint {.importc: "QSqlDriver_dbmsType".}
proc fcQSqlDriver_maximumIdentifierLength(self: pointer, typeVal: cint): cint {.importc: "QSqlDriver_maximumIdentifierLength".}
proc fcQSqlDriver_cancelQuery(self: pointer): bool {.importc: "QSqlDriver_cancelQuery".}
proc fcQSqlDriver_notification(self: pointer, name: struct_seaqt_string, source: cint, payload: pointer): void {.importc: "QSqlDriver_notification".}
proc fcQSqlDriver_connect_notification(self: pointer, slot: int, callback: proc (slot: int, name: struct_seaqt_string, source: cint, payload: pointer) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QSqlDriver_connect_notification".}
proc fcQSqlDriver_tr2(s: cstring, c: cstring): struct_seaqt_string {.importc: "QSqlDriver_tr2".}
proc fcQSqlDriver_tr3(s: cstring, c: cstring, n: cint): struct_seaqt_string {.importc: "QSqlDriver_tr3".}
proc fcQSqlDriver_vdata(self: pointer): ptr pointer {.importc: "QSqlDriver_vdata".}
proc fvdata_cQSqlDriver(self: pointer): pointer {.importc: "vdata_QSqlDriver".}

type cQSqlDriverVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  isOpen*: proc(self: pointer): bool {.cdecl, raises: [], gcsafe.}
  beginTransaction*: proc(self: pointer): bool {.cdecl, raises: [], gcsafe.}
  commitTransaction*: proc(self: pointer): bool {.cdecl, raises: [], gcsafe.}
  rollbackTransaction*: proc(self: pointer): bool {.cdecl, raises: [], gcsafe.}
  tables*: proc(self: pointer, tableType: cint): struct_seaqt_array {.cdecl, raises: [], gcsafe.}
  primaryIndex*: proc(self: pointer, tableName: struct_seaqt_string): pointer {.cdecl, raises: [], gcsafe.}
  record*: proc(self: pointer, tableName: struct_seaqt_string): pointer {.cdecl, raises: [], gcsafe.}
  formatValue*: proc(self: pointer, field: pointer, trimStrings: bool): struct_seaqt_string {.cdecl, raises: [], gcsafe.}
  escapeIdentifier*: proc(self: pointer, identifier: struct_seaqt_string, typeVal: cint): struct_seaqt_string {.cdecl, raises: [], gcsafe.}
  sqlStatement*: proc(self: pointer, typeVal: cint, tableName: struct_seaqt_string, rec: pointer, preparedStatement: bool): struct_seaqt_string {.cdecl, raises: [], gcsafe.}
  handle*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  hasFeature*: proc(self: pointer, f: cint): bool {.cdecl, raises: [], gcsafe.}
  close*: proc(self: pointer): void {.cdecl, raises: [], gcsafe.}
  createResult*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  open*: proc(self: pointer, db: struct_seaqt_string, user: struct_seaqt_string, password: struct_seaqt_string, host: struct_seaqt_string, port: cint, connOpts: struct_seaqt_string): bool {.cdecl, raises: [], gcsafe.}
  subscribeToNotification*: proc(self: pointer, name: struct_seaqt_string): bool {.cdecl, raises: [], gcsafe.}
  unsubscribeFromNotification*: proc(self: pointer, name: struct_seaqt_string): bool {.cdecl, raises: [], gcsafe.}
  subscribedToNotifications*: proc(self: pointer): struct_seaqt_array {.cdecl, raises: [], gcsafe.}
  isIdentifierEscaped*: proc(self: pointer, identifier: struct_seaqt_string, typeVal: cint): bool {.cdecl, raises: [], gcsafe.}
  stripDelimiters*: proc(self: pointer, identifier: struct_seaqt_string, typeVal: cint): struct_seaqt_string {.cdecl, raises: [], gcsafe.}
  maximumIdentifierLength*: proc(self: pointer, typeVal: cint): cint {.cdecl, raises: [], gcsafe.}
  cancelQuery*: proc(self: pointer): bool {.cdecl, raises: [], gcsafe.}
  setOpen*: proc(self: pointer, o: bool): void {.cdecl, raises: [], gcsafe.}
  setOpenError*: proc(self: pointer, e: bool): void {.cdecl, raises: [], gcsafe.}
  setLastError*: proc(self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  event*: proc(self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQSqlDriver_virtualbase_metaObject(self: pointer): pointer {.importc: "QSqlDriver_virtualbase_metaObject".}
proc fcQSqlDriver_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QSqlDriver_virtualbase_metacast".}
proc fcQSqlDriver_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QSqlDriver_virtualbase_metacall".}
proc fcQSqlDriver_virtualbase_isOpen(self: pointer): bool {.importc: "QSqlDriver_virtualbase_isOpen".}
proc fcQSqlDriver_virtualbase_beginTransaction(self: pointer): bool {.importc: "QSqlDriver_virtualbase_beginTransaction".}
proc fcQSqlDriver_virtualbase_commitTransaction(self: pointer): bool {.importc: "QSqlDriver_virtualbase_commitTransaction".}
proc fcQSqlDriver_virtualbase_rollbackTransaction(self: pointer): bool {.importc: "QSqlDriver_virtualbase_rollbackTransaction".}
proc fcQSqlDriver_virtualbase_tables(self: pointer, tableType: cint): struct_seaqt_array {.importc: "QSqlDriver_virtualbase_tables".}
proc fcQSqlDriver_virtualbase_primaryIndex(self: pointer, tableName: struct_seaqt_string): pointer {.importc: "QSqlDriver_virtualbase_primaryIndex".}
proc fcQSqlDriver_virtualbase_record(self: pointer, tableName: struct_seaqt_string): pointer {.importc: "QSqlDriver_virtualbase_record".}
proc fcQSqlDriver_virtualbase_formatValue(self: pointer, field: pointer, trimStrings: bool): struct_seaqt_string {.importc: "QSqlDriver_virtualbase_formatValue".}
proc fcQSqlDriver_virtualbase_escapeIdentifier(self: pointer, identifier: struct_seaqt_string, typeVal: cint): struct_seaqt_string {.importc: "QSqlDriver_virtualbase_escapeIdentifier".}
proc fcQSqlDriver_virtualbase_sqlStatement(self: pointer, typeVal: cint, tableName: struct_seaqt_string, rec: pointer, preparedStatement: bool): struct_seaqt_string {.importc: "QSqlDriver_virtualbase_sqlStatement".}
proc fcQSqlDriver_virtualbase_handle(self: pointer): pointer {.importc: "QSqlDriver_virtualbase_handle".}
proc fcQSqlDriver_virtualbase_subscribeToNotification(self: pointer, name: struct_seaqt_string): bool {.importc: "QSqlDriver_virtualbase_subscribeToNotification".}
proc fcQSqlDriver_virtualbase_unsubscribeFromNotification(self: pointer, name: struct_seaqt_string): bool {.importc: "QSqlDriver_virtualbase_unsubscribeFromNotification".}
proc fcQSqlDriver_virtualbase_subscribedToNotifications(self: pointer): struct_seaqt_array {.importc: "QSqlDriver_virtualbase_subscribedToNotifications".}
proc fcQSqlDriver_virtualbase_isIdentifierEscaped(self: pointer, identifier: struct_seaqt_string, typeVal: cint): bool {.importc: "QSqlDriver_virtualbase_isIdentifierEscaped".}
proc fcQSqlDriver_virtualbase_stripDelimiters(self: pointer, identifier: struct_seaqt_string, typeVal: cint): struct_seaqt_string {.importc: "QSqlDriver_virtualbase_stripDelimiters".}
proc fcQSqlDriver_virtualbase_maximumIdentifierLength(self: pointer, typeVal: cint): cint {.importc: "QSqlDriver_virtualbase_maximumIdentifierLength".}
proc fcQSqlDriver_virtualbase_cancelQuery(self: pointer): bool {.importc: "QSqlDriver_virtualbase_cancelQuery".}
proc fcQSqlDriver_virtualbase_setOpen(self: pointer, o: bool): void {.importc: "QSqlDriver_virtualbase_setOpen".}
proc fcQSqlDriver_virtualbase_setOpenError(self: pointer, e: bool): void {.importc: "QSqlDriver_virtualbase_setOpenError".}
proc fcQSqlDriver_virtualbase_setLastError(self: pointer, e: pointer): void {.importc: "QSqlDriver_virtualbase_setLastError".}
proc fcQSqlDriver_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QSqlDriver_virtualbase_event".}
proc fcQSqlDriver_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QSqlDriver_virtualbase_eventFilter".}
proc fcQSqlDriver_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QSqlDriver_virtualbase_timerEvent".}
proc fcQSqlDriver_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QSqlDriver_virtualbase_childEvent".}
proc fcQSqlDriver_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QSqlDriver_virtualbase_customEvent".}
proc fcQSqlDriver_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QSqlDriver_virtualbase_connectNotify".}
proc fcQSqlDriver_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QSqlDriver_virtualbase_disconnectNotify".}
proc fcQSqlDriver_protectedbase_sender(self: pointer): pointer {.importc: "QSqlDriver_protectedbase_sender".}
proc fcQSqlDriver_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QSqlDriver_protectedbase_senderSignalIndex".}
proc fcQSqlDriver_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QSqlDriver_protectedbase_receivers".}
proc fcQSqlDriver_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QSqlDriver_protectedbase_isSignalConnected".}
proc fcQSqlDriver_new(vtbl: pointer, vdata: csize_t): ptr cQSqlDriver {.importc: "QSqlDriver_new".}
proc fcQSqlDriver_new2(vtbl: pointer, vdata: csize_t, parent: pointer): ptr cQSqlDriver {.importc: "QSqlDriver_new2".}
proc fcQSqlDriver_staticMetaObject(): pointer {.importc: "QSqlDriver_staticMetaObject".}
proc fcQSqlDriver_delete(self: pointer) {.importc: "QSqlDriver_delete".}

proc metaObject*(self: gen_qsqldriver_types.QSqlDriver): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQSqlDriver_metaObject(self.h))

proc metacast*(self: gen_qsqldriver_types.QSqlDriver, param1: cstring): pointer =
  fcQSqlDriver_metacast(self.h, param1)

proc metacall*(self: gen_qsqldriver_types.QSqlDriver, param1: cint, param2: cint, param3: pointer): cint =
  fcQSqlDriver_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qsqldriver_types.QSqlDriver, s: cstring): string =
  let v_ms = fcQSqlDriver_tr(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc isOpen*(self: gen_qsqldriver_types.QSqlDriver): bool =
  fcQSqlDriver_isOpen(self.h)

proc isOpenError*(self: gen_qsqldriver_types.QSqlDriver): bool =
  fcQSqlDriver_isOpenError(self.h)

proc beginTransaction*(self: gen_qsqldriver_types.QSqlDriver): bool =
  fcQSqlDriver_beginTransaction(self.h)

proc commitTransaction*(self: gen_qsqldriver_types.QSqlDriver): bool =
  fcQSqlDriver_commitTransaction(self.h)

proc rollbackTransaction*(self: gen_qsqldriver_types.QSqlDriver): bool =
  fcQSqlDriver_rollbackTransaction(self.h)

proc tables*(self: gen_qsqldriver_types.QSqlDriver, tableType: cint): seq[string] =
  var v_ma = fcQSqlDriver_tables(self.h, cint(tableType))
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_seaqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(vx_lv_ms)
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  c_free(v_ma.data)
  vx_ret

proc primaryIndex*(self: gen_qsqldriver_types.QSqlDriver, tableName: openArray[char]): gen_qsqlindex_types.QSqlIndex =
  gen_qsqlindex_types.QSqlIndex(h: fcQSqlDriver_primaryIndex(self.h, struct_seaqt_string(data: if len(tableName) > 0: addr tableName[0] else: nil, len: csize_t(len(tableName)))))

proc record*(self: gen_qsqldriver_types.QSqlDriver, tableName: openArray[char]): gen_qsqlrecord_types.QSqlRecord =
  gen_qsqlrecord_types.QSqlRecord(h: fcQSqlDriver_record(self.h, struct_seaqt_string(data: if len(tableName) > 0: addr tableName[0] else: nil, len: csize_t(len(tableName)))))

proc formatValue*(self: gen_qsqldriver_types.QSqlDriver, field: gen_qsqlfield_types.QSqlField, trimStrings: bool): string =
  let v_ms = fcQSqlDriver_formatValue(self.h, field.h, trimStrings)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc escapeIdentifier*(self: gen_qsqldriver_types.QSqlDriver, identifier: openArray[char], typeVal: cint): string =
  let v_ms = fcQSqlDriver_escapeIdentifier(self.h, struct_seaqt_string(data: if len(identifier) > 0: addr identifier[0] else: nil, len: csize_t(len(identifier))), cint(typeVal))
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc sqlStatement*(self: gen_qsqldriver_types.QSqlDriver, typeVal: cint, tableName: openArray[char], rec: gen_qsqlrecord_types.QSqlRecord, preparedStatement: bool): string =
  let v_ms = fcQSqlDriver_sqlStatement(self.h, cint(typeVal), struct_seaqt_string(data: if len(tableName) > 0: addr tableName[0] else: nil, len: csize_t(len(tableName))), rec.h, preparedStatement)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc lastError*(self: gen_qsqldriver_types.QSqlDriver): gen_qsqlerror_types.QSqlError =
  gen_qsqlerror_types.QSqlError(h: fcQSqlDriver_lastError(self.h))

proc handle*(self: gen_qsqldriver_types.QSqlDriver): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQSqlDriver_handle(self.h))

proc hasFeature*(self: gen_qsqldriver_types.QSqlDriver, f: cint): bool =
  fcQSqlDriver_hasFeature(self.h, cint(f))

proc close*(self: gen_qsqldriver_types.QSqlDriver): void =
  fcQSqlDriver_close(self.h)

proc createResult*(self: gen_qsqldriver_types.QSqlDriver): gen_qsqlresult_types.QSqlResult =
  gen_qsqlresult_types.QSqlResult(h: fcQSqlDriver_createResult(self.h))

proc open*(self: gen_qsqldriver_types.QSqlDriver, db: openArray[char], user: openArray[char], password: openArray[char], host: openArray[char], port: cint, connOpts: openArray[char]): bool =
  fcQSqlDriver_open(self.h, struct_seaqt_string(data: if len(db) > 0: addr db[0] else: nil, len: csize_t(len(db))), struct_seaqt_string(data: if len(user) > 0: addr user[0] else: nil, len: csize_t(len(user))), struct_seaqt_string(data: if len(password) > 0: addr password[0] else: nil, len: csize_t(len(password))), struct_seaqt_string(data: if len(host) > 0: addr host[0] else: nil, len: csize_t(len(host))), port, struct_seaqt_string(data: if len(connOpts) > 0: addr connOpts[0] else: nil, len: csize_t(len(connOpts))))

proc subscribeToNotification*(self: gen_qsqldriver_types.QSqlDriver, name: openArray[char]): bool =
  fcQSqlDriver_subscribeToNotification(self.h, struct_seaqt_string(data: if len(name) > 0: addr name[0] else: nil, len: csize_t(len(name))))

proc unsubscribeFromNotification*(self: gen_qsqldriver_types.QSqlDriver, name: openArray[char]): bool =
  fcQSqlDriver_unsubscribeFromNotification(self.h, struct_seaqt_string(data: if len(name) > 0: addr name[0] else: nil, len: csize_t(len(name))))

proc subscribedToNotifications*(self: gen_qsqldriver_types.QSqlDriver): seq[string] =
  var v_ma = fcQSqlDriver_subscribedToNotifications(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_seaqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(vx_lv_ms)
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  c_free(v_ma.data)
  vx_ret

proc isIdentifierEscaped*(self: gen_qsqldriver_types.QSqlDriver, identifier: openArray[char], typeVal: cint): bool =
  fcQSqlDriver_isIdentifierEscaped(self.h, struct_seaqt_string(data: if len(identifier) > 0: addr identifier[0] else: nil, len: csize_t(len(identifier))), cint(typeVal))

proc stripDelimiters*(self: gen_qsqldriver_types.QSqlDriver, identifier: openArray[char], typeVal: cint): string =
  let v_ms = fcQSqlDriver_stripDelimiters(self.h, struct_seaqt_string(data: if len(identifier) > 0: addr identifier[0] else: nil, len: csize_t(len(identifier))), cint(typeVal))
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc setNumericalPrecisionPolicy*(self: gen_qsqldriver_types.QSqlDriver, precisionPolicy: cint): void =
  fcQSqlDriver_setNumericalPrecisionPolicy(self.h, cint(precisionPolicy))

proc numericalPrecisionPolicy*(self: gen_qsqldriver_types.QSqlDriver): cint =
  cint(fcQSqlDriver_numericalPrecisionPolicy(self.h))

proc dbmsType*(self: gen_qsqldriver_types.QSqlDriver): cint =
  cint(fcQSqlDriver_dbmsType(self.h))

proc maximumIdentifierLength*(self: gen_qsqldriver_types.QSqlDriver, typeVal: cint): cint =
  fcQSqlDriver_maximumIdentifierLength(self.h, cint(typeVal))

proc cancelQuery*(self: gen_qsqldriver_types.QSqlDriver): bool =
  fcQSqlDriver_cancelQuery(self.h)

proc notification*(self: gen_qsqldriver_types.QSqlDriver, name: openArray[char], source: cint, payload: gen_qvariant_types.QVariant): void =
  fcQSqlDriver_notification(self.h, struct_seaqt_string(data: if len(name) > 0: addr name[0] else: nil, len: csize_t(len(name))), cint(source), payload.h)

type QSqlDrivernotificationSlot* = proc(name: openArray[char], source: cint, payload: gen_qvariant_types.QVariant)
proc fcQSqlDriver_slot_callback_notification(slot: int, name: struct_seaqt_string, source: cint, payload: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QSqlDrivernotificationSlot](cast[pointer](slot))
  let vname_ms = name
  let vnamex_ret = string.fromBytes(vname_ms)
  c_free(vname_ms.data)
  let slotval1 = vnamex_ret

  let slotval2 = cint(source)

  let slotval3 = gen_qvariant_types.QVariant(h: payload)

  nimfunc[](slotval1, slotval2, slotval3)

proc fcQSqlDriver_slot_callback_notification_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QSqlDrivernotificationSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onNotification*(self: gen_qsqldriver_types.QSqlDriver, slot: QSqlDrivernotificationSlot) =
  var tmp = new QSqlDrivernotificationSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQSqlDriver_connect_notification(self.h, cast[int](addr tmp[]), fcQSqlDriver_slot_callback_notification, fcQSqlDriver_slot_callback_notification_release)

proc tr*(_: type gen_qsqldriver_types.QSqlDriver, s: cstring, c: cstring): string =
  let v_ms = fcQSqlDriver_tr2(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qsqldriver_types.QSqlDriver, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQSqlDriver_tr3(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

type QSqlDrivermetaObjectProc* = proc(self: QSqlDriver): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QSqlDrivermetacastProc* = proc(self: QSqlDriver, param1: cstring): pointer {.raises: [], gcsafe.}
type QSqlDrivermetacallProc* = proc(self: QSqlDriver, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QSqlDriverisOpenProc* = proc(self: QSqlDriver): bool {.raises: [], gcsafe.}
type QSqlDriverbeginTransactionProc* = proc(self: QSqlDriver): bool {.raises: [], gcsafe.}
type QSqlDrivercommitTransactionProc* = proc(self: QSqlDriver): bool {.raises: [], gcsafe.}
type QSqlDriverrollbackTransactionProc* = proc(self: QSqlDriver): bool {.raises: [], gcsafe.}
type QSqlDrivertablesProc* = proc(self: QSqlDriver, tableType: cint): seq[string] {.raises: [], gcsafe.}
type QSqlDriverprimaryIndexProc* = proc(self: QSqlDriver, tableName: openArray[char]): gen_qsqlindex_types.QSqlIndex {.raises: [], gcsafe.}
type QSqlDriverrecordProc* = proc(self: QSqlDriver, tableName: openArray[char]): gen_qsqlrecord_types.QSqlRecord {.raises: [], gcsafe.}
type QSqlDriverformatValueProc* = proc(self: QSqlDriver, field: gen_qsqlfield_types.QSqlField, trimStrings: bool): string {.raises: [], gcsafe.}
type QSqlDriverescapeIdentifierProc* = proc(self: QSqlDriver, identifier: openArray[char], typeVal: cint): string {.raises: [], gcsafe.}
type QSqlDriversqlStatementProc* = proc(self: QSqlDriver, typeVal: cint, tableName: openArray[char], rec: gen_qsqlrecord_types.QSqlRecord, preparedStatement: bool): string {.raises: [], gcsafe.}
type QSqlDriverhandleProc* = proc(self: QSqlDriver): gen_qvariant_types.QVariant {.raises: [], gcsafe.}
type QSqlDriverhasFeatureProc* = proc(self: QSqlDriver, f: cint): bool {.raises: [], gcsafe.}
type QSqlDrivercloseProc* = proc(self: QSqlDriver): void {.raises: [], gcsafe.}
type QSqlDrivercreateResultProc* = proc(self: QSqlDriver): gen_qsqlresult_types.QSqlResult {.raises: [], gcsafe.}
type QSqlDriveropenProc* = proc(self: QSqlDriver, db: openArray[char], user: openArray[char], password: openArray[char], host: openArray[char], port: cint, connOpts: openArray[char]): bool {.raises: [], gcsafe.}
type QSqlDriversubscribeToNotificationProc* = proc(self: QSqlDriver, name: openArray[char]): bool {.raises: [], gcsafe.}
type QSqlDriverunsubscribeFromNotificationProc* = proc(self: QSqlDriver, name: openArray[char]): bool {.raises: [], gcsafe.}
type QSqlDriversubscribedToNotificationsProc* = proc(self: QSqlDriver): seq[string] {.raises: [], gcsafe.}
type QSqlDriverisIdentifierEscapedProc* = proc(self: QSqlDriver, identifier: openArray[char], typeVal: cint): bool {.raises: [], gcsafe.}
type QSqlDriverstripDelimitersProc* = proc(self: QSqlDriver, identifier: openArray[char], typeVal: cint): string {.raises: [], gcsafe.}
type QSqlDrivermaximumIdentifierLengthProc* = proc(self: QSqlDriver, typeVal: cint): cint {.raises: [], gcsafe.}
type QSqlDrivercancelQueryProc* = proc(self: QSqlDriver): bool {.raises: [], gcsafe.}
type QSqlDriversetOpenProc* = proc(self: QSqlDriver, o: bool): void {.raises: [], gcsafe.}
type QSqlDriversetOpenErrorProc* = proc(self: QSqlDriver, e: bool): void {.raises: [], gcsafe.}
type QSqlDriversetLastErrorProc* = proc(self: QSqlDriver, e: gen_qsqlerror_types.QSqlError): void {.raises: [], gcsafe.}
type QSqlDrivereventProc* = proc(self: QSqlDriver, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QSqlDrivereventFilterProc* = proc(self: QSqlDriver, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QSqlDrivertimerEventProc* = proc(self: QSqlDriver, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QSqlDriverchildEventProc* = proc(self: QSqlDriver, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QSqlDrivercustomEventProc* = proc(self: QSqlDriver, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QSqlDriverconnectNotifyProc* = proc(self: QSqlDriver, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QSqlDriverdisconnectNotifyProc* = proc(self: QSqlDriver, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QSqlDriverVTable* = object
  vtbl: cQSqlDriverVTable
  metaObject*: QSqlDrivermetaObjectProc
  metacast*: QSqlDrivermetacastProc
  metacall*: QSqlDrivermetacallProc
  isOpen*: QSqlDriverisOpenProc
  beginTransaction*: QSqlDriverbeginTransactionProc
  commitTransaction*: QSqlDrivercommitTransactionProc
  rollbackTransaction*: QSqlDriverrollbackTransactionProc
  tables*: QSqlDrivertablesProc
  primaryIndex*: QSqlDriverprimaryIndexProc
  record*: QSqlDriverrecordProc
  formatValue*: QSqlDriverformatValueProc
  escapeIdentifier*: QSqlDriverescapeIdentifierProc
  sqlStatement*: QSqlDriversqlStatementProc
  handle*: QSqlDriverhandleProc
  hasFeature*: QSqlDriverhasFeatureProc
  close*: QSqlDrivercloseProc
  createResult*: QSqlDrivercreateResultProc
  open*: QSqlDriveropenProc
  subscribeToNotification*: QSqlDriversubscribeToNotificationProc
  unsubscribeFromNotification*: QSqlDriverunsubscribeFromNotificationProc
  subscribedToNotifications*: QSqlDriversubscribedToNotificationsProc
  isIdentifierEscaped*: QSqlDriverisIdentifierEscapedProc
  stripDelimiters*: QSqlDriverstripDelimitersProc
  maximumIdentifierLength*: QSqlDrivermaximumIdentifierLengthProc
  cancelQuery*: QSqlDrivercancelQueryProc
  setOpen*: QSqlDriversetOpenProc
  setOpenError*: QSqlDriversetOpenErrorProc
  setLastError*: QSqlDriversetLastErrorProc
  event*: QSqlDrivereventProc
  eventFilter*: QSqlDrivereventFilterProc
  timerEvent*: QSqlDrivertimerEventProc
  childEvent*: QSqlDriverchildEventProc
  customEvent*: QSqlDrivercustomEventProc
  connectNotify*: QSqlDriverconnectNotifyProc
  disconnectNotify*: QSqlDriverdisconnectNotifyProc

proc QSqlDrivermetaObject*(self: gen_qsqldriver_types.QSqlDriver): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQSqlDriver_virtualbase_metaObject(self.h))

proc QSqlDrivermetacast*(self: gen_qsqldriver_types.QSqlDriver, param1: cstring): pointer =
  fcQSqlDriver_virtualbase_metacast(self.h, param1)

proc QSqlDrivermetacall*(self: gen_qsqldriver_types.QSqlDriver, param1: cint, param2: cint, param3: pointer): cint =
  fcQSqlDriver_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc QSqlDriverisOpen*(self: gen_qsqldriver_types.QSqlDriver): bool =
  fcQSqlDriver_virtualbase_isOpen(self.h)

proc QSqlDriverbeginTransaction*(self: gen_qsqldriver_types.QSqlDriver): bool =
  fcQSqlDriver_virtualbase_beginTransaction(self.h)

proc QSqlDrivercommitTransaction*(self: gen_qsqldriver_types.QSqlDriver): bool =
  fcQSqlDriver_virtualbase_commitTransaction(self.h)

proc QSqlDriverrollbackTransaction*(self: gen_qsqldriver_types.QSqlDriver): bool =
  fcQSqlDriver_virtualbase_rollbackTransaction(self.h)

proc QSqlDrivertables*(self: gen_qsqldriver_types.QSqlDriver, tableType: cint): seq[string] =
  var v_ma = fcQSqlDriver_virtualbase_tables(self.h, cint(tableType))
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_seaqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(vx_lv_ms)
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  c_free(v_ma.data)
  vx_ret

proc QSqlDriverprimaryIndex*(self: gen_qsqldriver_types.QSqlDriver, tableName: openArray[char]): gen_qsqlindex_types.QSqlIndex =
  gen_qsqlindex_types.QSqlIndex(h: fcQSqlDriver_virtualbase_primaryIndex(self.h, struct_seaqt_string(data: if len(tableName) > 0: addr tableName[0] else: nil, len: csize_t(len(tableName)))))

proc QSqlDriverrecord*(self: gen_qsqldriver_types.QSqlDriver, tableName: openArray[char]): gen_qsqlrecord_types.QSqlRecord =
  gen_qsqlrecord_types.QSqlRecord(h: fcQSqlDriver_virtualbase_record(self.h, struct_seaqt_string(data: if len(tableName) > 0: addr tableName[0] else: nil, len: csize_t(len(tableName)))))

proc QSqlDriverformatValue*(self: gen_qsqldriver_types.QSqlDriver, field: gen_qsqlfield_types.QSqlField, trimStrings: bool): string =
  let v_ms = fcQSqlDriver_virtualbase_formatValue(self.h, field.h, trimStrings)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc QSqlDriverescapeIdentifier*(self: gen_qsqldriver_types.QSqlDriver, identifier: openArray[char], typeVal: cint): string =
  let v_ms = fcQSqlDriver_virtualbase_escapeIdentifier(self.h, struct_seaqt_string(data: if len(identifier) > 0: addr identifier[0] else: nil, len: csize_t(len(identifier))), cint(typeVal))
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc QSqlDriversqlStatement*(self: gen_qsqldriver_types.QSqlDriver, typeVal: cint, tableName: openArray[char], rec: gen_qsqlrecord_types.QSqlRecord, preparedStatement: bool): string =
  let v_ms = fcQSqlDriver_virtualbase_sqlStatement(self.h, cint(typeVal), struct_seaqt_string(data: if len(tableName) > 0: addr tableName[0] else: nil, len: csize_t(len(tableName))), rec.h, preparedStatement)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc QSqlDriverhandle*(self: gen_qsqldriver_types.QSqlDriver): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQSqlDriver_virtualbase_handle(self.h))

proc QSqlDriversubscribeToNotification*(self: gen_qsqldriver_types.QSqlDriver, name: openArray[char]): bool =
  fcQSqlDriver_virtualbase_subscribeToNotification(self.h, struct_seaqt_string(data: if len(name) > 0: addr name[0] else: nil, len: csize_t(len(name))))

proc QSqlDriverunsubscribeFromNotification*(self: gen_qsqldriver_types.QSqlDriver, name: openArray[char]): bool =
  fcQSqlDriver_virtualbase_unsubscribeFromNotification(self.h, struct_seaqt_string(data: if len(name) > 0: addr name[0] else: nil, len: csize_t(len(name))))

proc QSqlDriversubscribedToNotifications*(self: gen_qsqldriver_types.QSqlDriver): seq[string] =
  var v_ma = fcQSqlDriver_virtualbase_subscribedToNotifications(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_seaqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(vx_lv_ms)
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  c_free(v_ma.data)
  vx_ret

proc QSqlDriverisIdentifierEscaped*(self: gen_qsqldriver_types.QSqlDriver, identifier: openArray[char], typeVal: cint): bool =
  fcQSqlDriver_virtualbase_isIdentifierEscaped(self.h, struct_seaqt_string(data: if len(identifier) > 0: addr identifier[0] else: nil, len: csize_t(len(identifier))), cint(typeVal))

proc QSqlDriverstripDelimiters*(self: gen_qsqldriver_types.QSqlDriver, identifier: openArray[char], typeVal: cint): string =
  let v_ms = fcQSqlDriver_virtualbase_stripDelimiters(self.h, struct_seaqt_string(data: if len(identifier) > 0: addr identifier[0] else: nil, len: csize_t(len(identifier))), cint(typeVal))
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc QSqlDrivermaximumIdentifierLength*(self: gen_qsqldriver_types.QSqlDriver, typeVal: cint): cint =
  fcQSqlDriver_virtualbase_maximumIdentifierLength(self.h, cint(typeVal))

proc QSqlDrivercancelQuery*(self: gen_qsqldriver_types.QSqlDriver): bool =
  fcQSqlDriver_virtualbase_cancelQuery(self.h)

proc QSqlDriversetOpen*(self: gen_qsqldriver_types.QSqlDriver, o: bool): void =
  fcQSqlDriver_virtualbase_setOpen(self.h, o)

proc QSqlDriversetOpenError*(self: gen_qsqldriver_types.QSqlDriver, e: bool): void =
  fcQSqlDriver_virtualbase_setOpenError(self.h, e)

proc QSqlDriversetLastError*(self: gen_qsqldriver_types.QSqlDriver, e: gen_qsqlerror_types.QSqlError): void =
  fcQSqlDriver_virtualbase_setLastError(self.h, e.h)

proc QSqlDriverevent*(self: gen_qsqldriver_types.QSqlDriver, event: gen_qcoreevent_types.QEvent): bool =
  fcQSqlDriver_virtualbase_event(self.h, event.h)

proc QSqlDrivereventFilter*(self: gen_qsqldriver_types.QSqlDriver, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQSqlDriver_virtualbase_eventFilter(self.h, watched.h, event.h)

proc QSqlDrivertimerEvent*(self: gen_qsqldriver_types.QSqlDriver, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQSqlDriver_virtualbase_timerEvent(self.h, event.h)

proc QSqlDriverchildEvent*(self: gen_qsqldriver_types.QSqlDriver, event: gen_qcoreevent_types.QChildEvent): void =
  fcQSqlDriver_virtualbase_childEvent(self.h, event.h)

proc QSqlDrivercustomEvent*(self: gen_qsqldriver_types.QSqlDriver, event: gen_qcoreevent_types.QEvent): void =
  fcQSqlDriver_virtualbase_customEvent(self.h, event.h)

proc QSqlDriverconnectNotify*(self: gen_qsqldriver_types.QSqlDriver, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQSqlDriver_virtualbase_connectNotify(self.h, signal.h)

proc QSqlDriverdisconnectNotify*(self: gen_qsqldriver_types.QSqlDriver, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQSqlDriver_virtualbase_disconnectNotify(self.h, signal.h)


proc fcQSqlDriver_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QSqlDriverVTable](fcQSqlDriver_vdata(self)[])
  let self = QSqlDriver(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.h

proc fcQSqlDriver_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QSqlDriverVTable](fcQSqlDriver_vdata(self)[])
  let self = QSqlDriver(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc fcQSqlDriver_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QSqlDriverVTable](fcQSqlDriver_vdata(self)[])
  let self = QSqlDriver(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc fcQSqlDriver_vtable_callback_isOpen(self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QSqlDriverVTable](fcQSqlDriver_vdata(self)[])
  let self = QSqlDriver(h: self)
  var virtualReturn = vtbl[].isOpen(self)
  virtualReturn

proc fcQSqlDriver_vtable_callback_beginTransaction(self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QSqlDriverVTable](fcQSqlDriver_vdata(self)[])
  let self = QSqlDriver(h: self)
  var virtualReturn = vtbl[].beginTransaction(self)
  virtualReturn

proc fcQSqlDriver_vtable_callback_commitTransaction(self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QSqlDriverVTable](fcQSqlDriver_vdata(self)[])
  let self = QSqlDriver(h: self)
  var virtualReturn = vtbl[].commitTransaction(self)
  virtualReturn

proc fcQSqlDriver_vtable_callback_rollbackTransaction(self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QSqlDriverVTable](fcQSqlDriver_vdata(self)[])
  let self = QSqlDriver(h: self)
  var virtualReturn = vtbl[].rollbackTransaction(self)
  virtualReturn

proc fcQSqlDriver_vtable_callback_tables(self: pointer, tableType: cint): struct_seaqt_array {.cdecl.} =
  let vtbl = cast[ptr QSqlDriverVTable](fcQSqlDriver_vdata(self)[])
  let self = QSqlDriver(h: self)
  let slotval1 = cint(tableType)
  var virtualReturn = vtbl[].tables(self, slotval1)
  var virtualReturn_CArray = cast[ptr UncheckedArray[struct_seaqt_string]](if len(virtualReturn) > 0: c_malloc(c_sizet(sizeof(struct_seaqt_string) * len(virtualReturn))) else: nil)
  for i in 0..<len(virtualReturn):
    var virtualReturn_i_copy = if len(virtualReturn[i]) > 0: c_malloc(csize_t(len(virtualReturn[i]))) else: nil
    if len(virtualReturn[i]) > 0: copyMem(virtualReturn_i_copy, addr virtualReturn[i][0], csize_t(len(virtualReturn[i])))
    virtualReturn_CArray[i] = struct_seaqt_string(data: virtualReturn_i_copy, len: csize_t(len(virtualReturn[i])))

  struct_seaqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))

proc fcQSqlDriver_vtable_callback_primaryIndex(self: pointer, tableName: struct_seaqt_string): pointer {.cdecl.} =
  let vtbl = cast[ptr QSqlDriverVTable](fcQSqlDriver_vdata(self)[])
  let self = QSqlDriver(h: self)
  let vtableName_ms = tableName
  let vtableNamex_ret = string.fromBytes(vtableName_ms)
  c_free(vtableName_ms.data)
  let slotval1 = vtableNamex_ret
  var virtualReturn = vtbl[].primaryIndex(self, slotval1)
  virtualReturn.h

proc fcQSqlDriver_vtable_callback_record(self: pointer, tableName: struct_seaqt_string): pointer {.cdecl.} =
  let vtbl = cast[ptr QSqlDriverVTable](fcQSqlDriver_vdata(self)[])
  let self = QSqlDriver(h: self)
  let vtableName_ms = tableName
  let vtableNamex_ret = string.fromBytes(vtableName_ms)
  c_free(vtableName_ms.data)
  let slotval1 = vtableNamex_ret
  var virtualReturn = vtbl[].record(self, slotval1)
  virtualReturn.h

proc fcQSqlDriver_vtable_callback_formatValue(self: pointer, field: pointer, trimStrings: bool): struct_seaqt_string {.cdecl.} =
  let vtbl = cast[ptr QSqlDriverVTable](fcQSqlDriver_vdata(self)[])
  let self = QSqlDriver(h: self)
  let slotval1 = gen_qsqlfield_types.QSqlField(h: field)
  let slotval2 = trimStrings
  var virtualReturn = vtbl[].formatValue(self, slotval1, slotval2)
  var virtualReturn_copy = if len(virtualReturn) > 0: c_malloc(csize_t(len(virtualReturn))) else: nil
  if len(virtualReturn) > 0: copyMem(virtualReturn_copy, addr virtualReturn[0], csize_t(len(virtualReturn)))
  struct_seaqt_string(data: virtualReturn_copy, len: csize_t(len(virtualReturn)))

proc fcQSqlDriver_vtable_callback_escapeIdentifier(self: pointer, identifier: struct_seaqt_string, typeVal: cint): struct_seaqt_string {.cdecl.} =
  let vtbl = cast[ptr QSqlDriverVTable](fcQSqlDriver_vdata(self)[])
  let self = QSqlDriver(h: self)
  let videntifier_ms = identifier
  let videntifierx_ret = string.fromBytes(videntifier_ms)
  c_free(videntifier_ms.data)
  let slotval1 = videntifierx_ret
  let slotval2 = cint(typeVal)
  var virtualReturn = vtbl[].escapeIdentifier(self, slotval1, slotval2)
  var virtualReturn_copy = if len(virtualReturn) > 0: c_malloc(csize_t(len(virtualReturn))) else: nil
  if len(virtualReturn) > 0: copyMem(virtualReturn_copy, addr virtualReturn[0], csize_t(len(virtualReturn)))
  struct_seaqt_string(data: virtualReturn_copy, len: csize_t(len(virtualReturn)))

proc fcQSqlDriver_vtable_callback_sqlStatement(self: pointer, typeVal: cint, tableName: struct_seaqt_string, rec: pointer, preparedStatement: bool): struct_seaqt_string {.cdecl.} =
  let vtbl = cast[ptr QSqlDriverVTable](fcQSqlDriver_vdata(self)[])
  let self = QSqlDriver(h: self)
  let slotval1 = cint(typeVal)
  let vtableName_ms = tableName
  let vtableNamex_ret = string.fromBytes(vtableName_ms)
  c_free(vtableName_ms.data)
  let slotval2 = vtableNamex_ret
  let slotval3 = gen_qsqlrecord_types.QSqlRecord(h: rec)
  let slotval4 = preparedStatement
  var virtualReturn = vtbl[].sqlStatement(self, slotval1, slotval2, slotval3, slotval4)
  var virtualReturn_copy = if len(virtualReturn) > 0: c_malloc(csize_t(len(virtualReturn))) else: nil
  if len(virtualReturn) > 0: copyMem(virtualReturn_copy, addr virtualReturn[0], csize_t(len(virtualReturn)))
  struct_seaqt_string(data: virtualReturn_copy, len: csize_t(len(virtualReturn)))

proc fcQSqlDriver_vtable_callback_handle(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QSqlDriverVTable](fcQSqlDriver_vdata(self)[])
  let self = QSqlDriver(h: self)
  var virtualReturn = vtbl[].handle(self)
  virtualReturn.h

proc fcQSqlDriver_vtable_callback_hasFeature(self: pointer, f: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QSqlDriverVTable](fcQSqlDriver_vdata(self)[])
  let self = QSqlDriver(h: self)
  let slotval1 = cint(f)
  var virtualReturn = vtbl[].hasFeature(self, slotval1)
  virtualReturn

proc fcQSqlDriver_vtable_callback_close(self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSqlDriverVTable](fcQSqlDriver_vdata(self)[])
  let self = QSqlDriver(h: self)
  vtbl[].close(self)

proc fcQSqlDriver_vtable_callback_createResult(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QSqlDriverVTable](fcQSqlDriver_vdata(self)[])
  let self = QSqlDriver(h: self)
  var virtualReturn = vtbl[].createResult(self)
  virtualReturn.h

proc fcQSqlDriver_vtable_callback_open(self: pointer, db: struct_seaqt_string, user: struct_seaqt_string, password: struct_seaqt_string, host: struct_seaqt_string, port: cint, connOpts: struct_seaqt_string): bool {.cdecl.} =
  let vtbl = cast[ptr QSqlDriverVTable](fcQSqlDriver_vdata(self)[])
  let self = QSqlDriver(h: self)
  let vdb_ms = db
  let vdbx_ret = string.fromBytes(vdb_ms)
  c_free(vdb_ms.data)
  let slotval1 = vdbx_ret
  let vuser_ms = user
  let vuserx_ret = string.fromBytes(vuser_ms)
  c_free(vuser_ms.data)
  let slotval2 = vuserx_ret
  let vpassword_ms = password
  let vpasswordx_ret = string.fromBytes(vpassword_ms)
  c_free(vpassword_ms.data)
  let slotval3 = vpasswordx_ret
  let vhost_ms = host
  let vhostx_ret = string.fromBytes(vhost_ms)
  c_free(vhost_ms.data)
  let slotval4 = vhostx_ret
  let slotval5 = port
  let vconnOpts_ms = connOpts
  let vconnOptsx_ret = string.fromBytes(vconnOpts_ms)
  c_free(vconnOpts_ms.data)
  let slotval6 = vconnOptsx_ret
  var virtualReturn = vtbl[].open(self, slotval1, slotval2, slotval3, slotval4, slotval5, slotval6)
  virtualReturn

proc fcQSqlDriver_vtable_callback_subscribeToNotification(self: pointer, name: struct_seaqt_string): bool {.cdecl.} =
  let vtbl = cast[ptr QSqlDriverVTable](fcQSqlDriver_vdata(self)[])
  let self = QSqlDriver(h: self)
  let vname_ms = name
  let vnamex_ret = string.fromBytes(vname_ms)
  c_free(vname_ms.data)
  let slotval1 = vnamex_ret
  var virtualReturn = vtbl[].subscribeToNotification(self, slotval1)
  virtualReturn

proc fcQSqlDriver_vtable_callback_unsubscribeFromNotification(self: pointer, name: struct_seaqt_string): bool {.cdecl.} =
  let vtbl = cast[ptr QSqlDriverVTable](fcQSqlDriver_vdata(self)[])
  let self = QSqlDriver(h: self)
  let vname_ms = name
  let vnamex_ret = string.fromBytes(vname_ms)
  c_free(vname_ms.data)
  let slotval1 = vnamex_ret
  var virtualReturn = vtbl[].unsubscribeFromNotification(self, slotval1)
  virtualReturn

proc fcQSqlDriver_vtable_callback_subscribedToNotifications(self: pointer): struct_seaqt_array {.cdecl.} =
  let vtbl = cast[ptr QSqlDriverVTable](fcQSqlDriver_vdata(self)[])
  let self = QSqlDriver(h: self)
  var virtualReturn = vtbl[].subscribedToNotifications(self)
  var virtualReturn_CArray = cast[ptr UncheckedArray[struct_seaqt_string]](if len(virtualReturn) > 0: c_malloc(c_sizet(sizeof(struct_seaqt_string) * len(virtualReturn))) else: nil)
  for i in 0..<len(virtualReturn):
    var virtualReturn_i_copy = if len(virtualReturn[i]) > 0: c_malloc(csize_t(len(virtualReturn[i]))) else: nil
    if len(virtualReturn[i]) > 0: copyMem(virtualReturn_i_copy, addr virtualReturn[i][0], csize_t(len(virtualReturn[i])))
    virtualReturn_CArray[i] = struct_seaqt_string(data: virtualReturn_i_copy, len: csize_t(len(virtualReturn[i])))

  struct_seaqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))

proc fcQSqlDriver_vtable_callback_isIdentifierEscaped(self: pointer, identifier: struct_seaqt_string, typeVal: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QSqlDriverVTable](fcQSqlDriver_vdata(self)[])
  let self = QSqlDriver(h: self)
  let videntifier_ms = identifier
  let videntifierx_ret = string.fromBytes(videntifier_ms)
  c_free(videntifier_ms.data)
  let slotval1 = videntifierx_ret
  let slotval2 = cint(typeVal)
  var virtualReturn = vtbl[].isIdentifierEscaped(self, slotval1, slotval2)
  virtualReturn

proc fcQSqlDriver_vtable_callback_stripDelimiters(self: pointer, identifier: struct_seaqt_string, typeVal: cint): struct_seaqt_string {.cdecl.} =
  let vtbl = cast[ptr QSqlDriverVTable](fcQSqlDriver_vdata(self)[])
  let self = QSqlDriver(h: self)
  let videntifier_ms = identifier
  let videntifierx_ret = string.fromBytes(videntifier_ms)
  c_free(videntifier_ms.data)
  let slotval1 = videntifierx_ret
  let slotval2 = cint(typeVal)
  var virtualReturn = vtbl[].stripDelimiters(self, slotval1, slotval2)
  var virtualReturn_copy = if len(virtualReturn) > 0: c_malloc(csize_t(len(virtualReturn))) else: nil
  if len(virtualReturn) > 0: copyMem(virtualReturn_copy, addr virtualReturn[0], csize_t(len(virtualReturn)))
  struct_seaqt_string(data: virtualReturn_copy, len: csize_t(len(virtualReturn)))

proc fcQSqlDriver_vtable_callback_maximumIdentifierLength(self: pointer, typeVal: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QSqlDriverVTable](fcQSqlDriver_vdata(self)[])
  let self = QSqlDriver(h: self)
  let slotval1 = cint(typeVal)
  var virtualReturn = vtbl[].maximumIdentifierLength(self, slotval1)
  virtualReturn

proc fcQSqlDriver_vtable_callback_cancelQuery(self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QSqlDriverVTable](fcQSqlDriver_vdata(self)[])
  let self = QSqlDriver(h: self)
  var virtualReturn = vtbl[].cancelQuery(self)
  virtualReturn

proc fcQSqlDriver_vtable_callback_setOpen(self: pointer, o: bool): void {.cdecl.} =
  let vtbl = cast[ptr QSqlDriverVTable](fcQSqlDriver_vdata(self)[])
  let self = QSqlDriver(h: self)
  let slotval1 = o
  vtbl[].setOpen(self, slotval1)

proc fcQSqlDriver_vtable_callback_setOpenError(self: pointer, e: bool): void {.cdecl.} =
  let vtbl = cast[ptr QSqlDriverVTable](fcQSqlDriver_vdata(self)[])
  let self = QSqlDriver(h: self)
  let slotval1 = e
  vtbl[].setOpenError(self, slotval1)

proc fcQSqlDriver_vtable_callback_setLastError(self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSqlDriverVTable](fcQSqlDriver_vdata(self)[])
  let self = QSqlDriver(h: self)
  let slotval1 = gen_qsqlerror_types.QSqlError(h: e)
  vtbl[].setLastError(self, slotval1)

proc fcQSqlDriver_vtable_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QSqlDriverVTable](fcQSqlDriver_vdata(self)[])
  let self = QSqlDriver(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc fcQSqlDriver_vtable_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QSqlDriverVTable](fcQSqlDriver_vdata(self)[])
  let self = QSqlDriver(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc fcQSqlDriver_vtable_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSqlDriverVTable](fcQSqlDriver_vdata(self)[])
  let self = QSqlDriver(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)
  vtbl[].timerEvent(self, slotval1)

proc fcQSqlDriver_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSqlDriverVTable](fcQSqlDriver_vdata(self)[])
  let self = QSqlDriver(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)
  vtbl[].childEvent(self, slotval1)

proc fcQSqlDriver_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSqlDriverVTable](fcQSqlDriver_vdata(self)[])
  let self = QSqlDriver(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].customEvent(self, slotval1)

proc fcQSqlDriver_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSqlDriverVTable](fcQSqlDriver_vdata(self)[])
  let self = QSqlDriver(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].connectNotify(self, slotval1)

proc fcQSqlDriver_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSqlDriverVTable](fcQSqlDriver_vdata(self)[])
  let self = QSqlDriver(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQSqlDriver* {.inheritable.} = ref object of QSqlDriver
  vtbl*: cQSqlDriverVTable

method metaObject*(self: VirtualQSqlDriver): gen_qobjectdefs_types.QMetaObject {.base.} =
  QSqlDrivermetaObject(self[])
method metacast*(self: VirtualQSqlDriver, param1: cstring): pointer {.base.} =
  QSqlDrivermetacast(self[], param1)
method metacall*(self: VirtualQSqlDriver, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QSqlDrivermetacall(self[], param1, param2, param3)
method isOpen*(self: VirtualQSqlDriver): bool {.base.} =
  QSqlDriverisOpen(self[])
method beginTransaction*(self: VirtualQSqlDriver): bool {.base.} =
  QSqlDriverbeginTransaction(self[])
method commitTransaction*(self: VirtualQSqlDriver): bool {.base.} =
  QSqlDrivercommitTransaction(self[])
method rollbackTransaction*(self: VirtualQSqlDriver): bool {.base.} =
  QSqlDriverrollbackTransaction(self[])
method tables*(self: VirtualQSqlDriver, tableType: cint): seq[string] {.base.} =
  QSqlDrivertables(self[], tableType)
method primaryIndex*(self: VirtualQSqlDriver, tableName: openArray[char]): gen_qsqlindex_types.QSqlIndex {.base.} =
  QSqlDriverprimaryIndex(self[], tableName)
method record*(self: VirtualQSqlDriver, tableName: openArray[char]): gen_qsqlrecord_types.QSqlRecord {.base.} =
  QSqlDriverrecord(self[], tableName)
method formatValue*(self: VirtualQSqlDriver, field: gen_qsqlfield_types.QSqlField, trimStrings: bool): string {.base.} =
  QSqlDriverformatValue(self[], field, trimStrings)
method escapeIdentifier*(self: VirtualQSqlDriver, identifier: openArray[char], typeVal: cint): string {.base.} =
  QSqlDriverescapeIdentifier(self[], identifier, typeVal)
method sqlStatement*(self: VirtualQSqlDriver, typeVal: cint, tableName: openArray[char], rec: gen_qsqlrecord_types.QSqlRecord, preparedStatement: bool): string {.base.} =
  QSqlDriversqlStatement(self[], typeVal, tableName, rec, preparedStatement)
method handle*(self: VirtualQSqlDriver): gen_qvariant_types.QVariant {.base.} =
  QSqlDriverhandle(self[])
method hasFeature*(self: VirtualQSqlDriver, f: cint): bool {.base.} =
  raiseAssert("missing implementation of QSqlDriver.hasFeature")
method close*(self: VirtualQSqlDriver): void {.base.} =
  raiseAssert("missing implementation of QSqlDriver.close")
method createResult*(self: VirtualQSqlDriver): gen_qsqlresult_types.QSqlResult {.base.} =
  raiseAssert("missing implementation of QSqlDriver.createResult")
method open*(self: VirtualQSqlDriver, db: openArray[char], user: openArray[char], password: openArray[char], host: openArray[char], port: cint, connOpts: openArray[char]): bool {.base.} =
  raiseAssert("missing implementation of QSqlDriver.open")
method subscribeToNotification*(self: VirtualQSqlDriver, name: openArray[char]): bool {.base.} =
  QSqlDriversubscribeToNotification(self[], name)
method unsubscribeFromNotification*(self: VirtualQSqlDriver, name: openArray[char]): bool {.base.} =
  QSqlDriverunsubscribeFromNotification(self[], name)
method subscribedToNotifications*(self: VirtualQSqlDriver): seq[string] {.base.} =
  QSqlDriversubscribedToNotifications(self[])
method isIdentifierEscaped*(self: VirtualQSqlDriver, identifier: openArray[char], typeVal: cint): bool {.base.} =
  QSqlDriverisIdentifierEscaped(self[], identifier, typeVal)
method stripDelimiters*(self: VirtualQSqlDriver, identifier: openArray[char], typeVal: cint): string {.base.} =
  QSqlDriverstripDelimiters(self[], identifier, typeVal)
method maximumIdentifierLength*(self: VirtualQSqlDriver, typeVal: cint): cint {.base.} =
  QSqlDrivermaximumIdentifierLength(self[], typeVal)
method cancelQuery*(self: VirtualQSqlDriver): bool {.base.} =
  QSqlDrivercancelQuery(self[])
method setOpen*(self: VirtualQSqlDriver, o: bool): void {.base.} =
  QSqlDriversetOpen(self[], o)
method setOpenError*(self: VirtualQSqlDriver, e: bool): void {.base.} =
  QSqlDriversetOpenError(self[], e)
method setLastError*(self: VirtualQSqlDriver, e: gen_qsqlerror_types.QSqlError): void {.base.} =
  QSqlDriversetLastError(self[], e)
method event*(self: VirtualQSqlDriver, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QSqlDriverevent(self[], event)
method eventFilter*(self: VirtualQSqlDriver, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QSqlDrivereventFilter(self[], watched, event)
method timerEvent*(self: VirtualQSqlDriver, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QSqlDrivertimerEvent(self[], event)
method childEvent*(self: VirtualQSqlDriver, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QSqlDriverchildEvent(self[], event)
method customEvent*(self: VirtualQSqlDriver, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QSqlDrivercustomEvent(self[], event)
method connectNotify*(self: VirtualQSqlDriver, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QSqlDriverconnectNotify(self[], signal)
method disconnectNotify*(self: VirtualQSqlDriver, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QSqlDriverdisconnectNotify(self[], signal)

proc fcQSqlDriver_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQSqlDriver](fcQSqlDriver_vdata(self)[])
  var virtualReturn = inst.metaObject()
  virtualReturn.h

proc fcQSqlDriver_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQSqlDriver](fcQSqlDriver_vdata(self)[])
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

proc fcQSqlDriver_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQSqlDriver](fcQSqlDriver_vdata(self)[])
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

proc fcQSqlDriver_method_callback_isOpen(self: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQSqlDriver](fcQSqlDriver_vdata(self)[])
  var virtualReturn = inst.isOpen()
  virtualReturn

proc fcQSqlDriver_method_callback_beginTransaction(self: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQSqlDriver](fcQSqlDriver_vdata(self)[])
  var virtualReturn = inst.beginTransaction()
  virtualReturn

proc fcQSqlDriver_method_callback_commitTransaction(self: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQSqlDriver](fcQSqlDriver_vdata(self)[])
  var virtualReturn = inst.commitTransaction()
  virtualReturn

proc fcQSqlDriver_method_callback_rollbackTransaction(self: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQSqlDriver](fcQSqlDriver_vdata(self)[])
  var virtualReturn = inst.rollbackTransaction()
  virtualReturn

proc fcQSqlDriver_method_callback_tables(self: pointer, tableType: cint): struct_seaqt_array {.cdecl.} =
  let inst = cast[VirtualQSqlDriver](fcQSqlDriver_vdata(self)[])
  let slotval1 = cint(tableType)
  var virtualReturn = inst.tables(slotval1)
  var virtualReturn_CArray = cast[ptr UncheckedArray[struct_seaqt_string]](if len(virtualReturn) > 0: c_malloc(c_sizet(sizeof(struct_seaqt_string) * len(virtualReturn))) else: nil)
  for i in 0..<len(virtualReturn):
    var virtualReturn_i_copy = if len(virtualReturn[i]) > 0: c_malloc(csize_t(len(virtualReturn[i]))) else: nil
    if len(virtualReturn[i]) > 0: copyMem(virtualReturn_i_copy, addr virtualReturn[i][0], csize_t(len(virtualReturn[i])))
    virtualReturn_CArray[i] = struct_seaqt_string(data: virtualReturn_i_copy, len: csize_t(len(virtualReturn[i])))

  struct_seaqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))

proc fcQSqlDriver_method_callback_primaryIndex(self: pointer, tableName: struct_seaqt_string): pointer {.cdecl.} =
  let inst = cast[VirtualQSqlDriver](fcQSqlDriver_vdata(self)[])
  let vtableName_ms = tableName
  let vtableNamex_ret = string.fromBytes(vtableName_ms)
  c_free(vtableName_ms.data)
  let slotval1 = vtableNamex_ret
  var virtualReturn = inst.primaryIndex(slotval1)
  virtualReturn.h

proc fcQSqlDriver_method_callback_record(self: pointer, tableName: struct_seaqt_string): pointer {.cdecl.} =
  let inst = cast[VirtualQSqlDriver](fcQSqlDriver_vdata(self)[])
  let vtableName_ms = tableName
  let vtableNamex_ret = string.fromBytes(vtableName_ms)
  c_free(vtableName_ms.data)
  let slotval1 = vtableNamex_ret
  var virtualReturn = inst.record(slotval1)
  virtualReturn.h

proc fcQSqlDriver_method_callback_formatValue(self: pointer, field: pointer, trimStrings: bool): struct_seaqt_string {.cdecl.} =
  let inst = cast[VirtualQSqlDriver](fcQSqlDriver_vdata(self)[])
  let slotval1 = gen_qsqlfield_types.QSqlField(h: field)
  let slotval2 = trimStrings
  var virtualReturn = inst.formatValue(slotval1, slotval2)
  var virtualReturn_copy = if len(virtualReturn) > 0: c_malloc(csize_t(len(virtualReturn))) else: nil
  if len(virtualReturn) > 0: copyMem(virtualReturn_copy, addr virtualReturn[0], csize_t(len(virtualReturn)))
  struct_seaqt_string(data: virtualReturn_copy, len: csize_t(len(virtualReturn)))

proc fcQSqlDriver_method_callback_escapeIdentifier(self: pointer, identifier: struct_seaqt_string, typeVal: cint): struct_seaqt_string {.cdecl.} =
  let inst = cast[VirtualQSqlDriver](fcQSqlDriver_vdata(self)[])
  let videntifier_ms = identifier
  let videntifierx_ret = string.fromBytes(videntifier_ms)
  c_free(videntifier_ms.data)
  let slotval1 = videntifierx_ret
  let slotval2 = cint(typeVal)
  var virtualReturn = inst.escapeIdentifier(slotval1, slotval2)
  var virtualReturn_copy = if len(virtualReturn) > 0: c_malloc(csize_t(len(virtualReturn))) else: nil
  if len(virtualReturn) > 0: copyMem(virtualReturn_copy, addr virtualReturn[0], csize_t(len(virtualReturn)))
  struct_seaqt_string(data: virtualReturn_copy, len: csize_t(len(virtualReturn)))

proc fcQSqlDriver_method_callback_sqlStatement(self: pointer, typeVal: cint, tableName: struct_seaqt_string, rec: pointer, preparedStatement: bool): struct_seaqt_string {.cdecl.} =
  let inst = cast[VirtualQSqlDriver](fcQSqlDriver_vdata(self)[])
  let slotval1 = cint(typeVal)
  let vtableName_ms = tableName
  let vtableNamex_ret = string.fromBytes(vtableName_ms)
  c_free(vtableName_ms.data)
  let slotval2 = vtableNamex_ret
  let slotval3 = gen_qsqlrecord_types.QSqlRecord(h: rec)
  let slotval4 = preparedStatement
  var virtualReturn = inst.sqlStatement(slotval1, slotval2, slotval3, slotval4)
  var virtualReturn_copy = if len(virtualReturn) > 0: c_malloc(csize_t(len(virtualReturn))) else: nil
  if len(virtualReturn) > 0: copyMem(virtualReturn_copy, addr virtualReturn[0], csize_t(len(virtualReturn)))
  struct_seaqt_string(data: virtualReturn_copy, len: csize_t(len(virtualReturn)))

proc fcQSqlDriver_method_callback_handle(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQSqlDriver](fcQSqlDriver_vdata(self)[])
  var virtualReturn = inst.handle()
  virtualReturn.h

proc fcQSqlDriver_method_callback_hasFeature(self: pointer, f: cint): bool {.cdecl.} =
  let inst = cast[VirtualQSqlDriver](fcQSqlDriver_vdata(self)[])
  let slotval1 = cint(f)
  var virtualReturn = inst.hasFeature(slotval1)
  virtualReturn

proc fcQSqlDriver_method_callback_close(self: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSqlDriver](fcQSqlDriver_vdata(self)[])
  inst.close()

proc fcQSqlDriver_method_callback_createResult(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQSqlDriver](fcQSqlDriver_vdata(self)[])
  var virtualReturn = inst.createResult()
  virtualReturn.h

proc fcQSqlDriver_method_callback_open(self: pointer, db: struct_seaqt_string, user: struct_seaqt_string, password: struct_seaqt_string, host: struct_seaqt_string, port: cint, connOpts: struct_seaqt_string): bool {.cdecl.} =
  let inst = cast[VirtualQSqlDriver](fcQSqlDriver_vdata(self)[])
  let vdb_ms = db
  let vdbx_ret = string.fromBytes(vdb_ms)
  c_free(vdb_ms.data)
  let slotval1 = vdbx_ret
  let vuser_ms = user
  let vuserx_ret = string.fromBytes(vuser_ms)
  c_free(vuser_ms.data)
  let slotval2 = vuserx_ret
  let vpassword_ms = password
  let vpasswordx_ret = string.fromBytes(vpassword_ms)
  c_free(vpassword_ms.data)
  let slotval3 = vpasswordx_ret
  let vhost_ms = host
  let vhostx_ret = string.fromBytes(vhost_ms)
  c_free(vhost_ms.data)
  let slotval4 = vhostx_ret
  let slotval5 = port
  let vconnOpts_ms = connOpts
  let vconnOptsx_ret = string.fromBytes(vconnOpts_ms)
  c_free(vconnOpts_ms.data)
  let slotval6 = vconnOptsx_ret
  var virtualReturn = inst.open(slotval1, slotval2, slotval3, slotval4, slotval5, slotval6)
  virtualReturn

proc fcQSqlDriver_method_callback_subscribeToNotification(self: pointer, name: struct_seaqt_string): bool {.cdecl.} =
  let inst = cast[VirtualQSqlDriver](fcQSqlDriver_vdata(self)[])
  let vname_ms = name
  let vnamex_ret = string.fromBytes(vname_ms)
  c_free(vname_ms.data)
  let slotval1 = vnamex_ret
  var virtualReturn = inst.subscribeToNotification(slotval1)
  virtualReturn

proc fcQSqlDriver_method_callback_unsubscribeFromNotification(self: pointer, name: struct_seaqt_string): bool {.cdecl.} =
  let inst = cast[VirtualQSqlDriver](fcQSqlDriver_vdata(self)[])
  let vname_ms = name
  let vnamex_ret = string.fromBytes(vname_ms)
  c_free(vname_ms.data)
  let slotval1 = vnamex_ret
  var virtualReturn = inst.unsubscribeFromNotification(slotval1)
  virtualReturn

proc fcQSqlDriver_method_callback_subscribedToNotifications(self: pointer): struct_seaqt_array {.cdecl.} =
  let inst = cast[VirtualQSqlDriver](fcQSqlDriver_vdata(self)[])
  var virtualReturn = inst.subscribedToNotifications()
  var virtualReturn_CArray = cast[ptr UncheckedArray[struct_seaqt_string]](if len(virtualReturn) > 0: c_malloc(c_sizet(sizeof(struct_seaqt_string) * len(virtualReturn))) else: nil)
  for i in 0..<len(virtualReturn):
    var virtualReturn_i_copy = if len(virtualReturn[i]) > 0: c_malloc(csize_t(len(virtualReturn[i]))) else: nil
    if len(virtualReturn[i]) > 0: copyMem(virtualReturn_i_copy, addr virtualReturn[i][0], csize_t(len(virtualReturn[i])))
    virtualReturn_CArray[i] = struct_seaqt_string(data: virtualReturn_i_copy, len: csize_t(len(virtualReturn[i])))

  struct_seaqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))

proc fcQSqlDriver_method_callback_isIdentifierEscaped(self: pointer, identifier: struct_seaqt_string, typeVal: cint): bool {.cdecl.} =
  let inst = cast[VirtualQSqlDriver](fcQSqlDriver_vdata(self)[])
  let videntifier_ms = identifier
  let videntifierx_ret = string.fromBytes(videntifier_ms)
  c_free(videntifier_ms.data)
  let slotval1 = videntifierx_ret
  let slotval2 = cint(typeVal)
  var virtualReturn = inst.isIdentifierEscaped(slotval1, slotval2)
  virtualReturn

proc fcQSqlDriver_method_callback_stripDelimiters(self: pointer, identifier: struct_seaqt_string, typeVal: cint): struct_seaqt_string {.cdecl.} =
  let inst = cast[VirtualQSqlDriver](fcQSqlDriver_vdata(self)[])
  let videntifier_ms = identifier
  let videntifierx_ret = string.fromBytes(videntifier_ms)
  c_free(videntifier_ms.data)
  let slotval1 = videntifierx_ret
  let slotval2 = cint(typeVal)
  var virtualReturn = inst.stripDelimiters(slotval1, slotval2)
  var virtualReturn_copy = if len(virtualReturn) > 0: c_malloc(csize_t(len(virtualReturn))) else: nil
  if len(virtualReturn) > 0: copyMem(virtualReturn_copy, addr virtualReturn[0], csize_t(len(virtualReturn)))
  struct_seaqt_string(data: virtualReturn_copy, len: csize_t(len(virtualReturn)))

proc fcQSqlDriver_method_callback_maximumIdentifierLength(self: pointer, typeVal: cint): cint {.cdecl.} =
  let inst = cast[VirtualQSqlDriver](fcQSqlDriver_vdata(self)[])
  let slotval1 = cint(typeVal)
  var virtualReturn = inst.maximumIdentifierLength(slotval1)
  virtualReturn

proc fcQSqlDriver_method_callback_cancelQuery(self: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQSqlDriver](fcQSqlDriver_vdata(self)[])
  var virtualReturn = inst.cancelQuery()
  virtualReturn

proc fcQSqlDriver_method_callback_setOpen(self: pointer, o: bool): void {.cdecl.} =
  let inst = cast[VirtualQSqlDriver](fcQSqlDriver_vdata(self)[])
  let slotval1 = o
  inst.setOpen(slotval1)

proc fcQSqlDriver_method_callback_setOpenError(self: pointer, e: bool): void {.cdecl.} =
  let inst = cast[VirtualQSqlDriver](fcQSqlDriver_vdata(self)[])
  let slotval1 = e
  inst.setOpenError(slotval1)

proc fcQSqlDriver_method_callback_setLastError(self: pointer, e: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSqlDriver](fcQSqlDriver_vdata(self)[])
  let slotval1 = gen_qsqlerror_types.QSqlError(h: e)
  inst.setLastError(slotval1)

proc fcQSqlDriver_method_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQSqlDriver](fcQSqlDriver_vdata(self)[])
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

proc fcQSqlDriver_method_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQSqlDriver](fcQSqlDriver_vdata(self)[])
  let slotval1 = gen_qobject_types.QObject(h: watched)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

proc fcQSqlDriver_method_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSqlDriver](fcQSqlDriver_vdata(self)[])
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)
  inst.timerEvent(slotval1)

proc fcQSqlDriver_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSqlDriver](fcQSqlDriver_vdata(self)[])
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)
  inst.childEvent(slotval1)

proc fcQSqlDriver_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSqlDriver](fcQSqlDriver_vdata(self)[])
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  inst.customEvent(slotval1)

proc fcQSqlDriver_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSqlDriver](fcQSqlDriver_vdata(self)[])
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  inst.connectNotify(slotval1)

proc fcQSqlDriver_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSqlDriver](fcQSqlDriver_vdata(self)[])
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  inst.disconnectNotify(slotval1)


proc sender*(self: gen_qsqldriver_types.QSqlDriver): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQSqlDriver_protectedbase_sender(self.h))

proc senderSignalIndex*(self: gen_qsqldriver_types.QSqlDriver): cint =
  fcQSqlDriver_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qsqldriver_types.QSqlDriver, signal: cstring): cint =
  fcQSqlDriver_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qsqldriver_types.QSqlDriver, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQSqlDriver_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qsqldriver_types.QSqlDriver,
    vtbl: ref QSqlDriverVTable = nil): gen_qsqldriver_types.QSqlDriver =
  let vtbl = if vtbl == nil: new QSqlDriverVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QSqlDriverVTable](fcQSqlDriver_vdata(self)[])
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQSqlDriver_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQSqlDriver_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQSqlDriver_vtable_callback_metacall
  if not isNil(vtbl[].isOpen):
    vtbl[].vtbl.isOpen = fcQSqlDriver_vtable_callback_isOpen
  if not isNil(vtbl[].beginTransaction):
    vtbl[].vtbl.beginTransaction = fcQSqlDriver_vtable_callback_beginTransaction
  if not isNil(vtbl[].commitTransaction):
    vtbl[].vtbl.commitTransaction = fcQSqlDriver_vtable_callback_commitTransaction
  if not isNil(vtbl[].rollbackTransaction):
    vtbl[].vtbl.rollbackTransaction = fcQSqlDriver_vtable_callback_rollbackTransaction
  if not isNil(vtbl[].tables):
    vtbl[].vtbl.tables = fcQSqlDriver_vtable_callback_tables
  if not isNil(vtbl[].primaryIndex):
    vtbl[].vtbl.primaryIndex = fcQSqlDriver_vtable_callback_primaryIndex
  if not isNil(vtbl[].record):
    vtbl[].vtbl.record = fcQSqlDriver_vtable_callback_record
  if not isNil(vtbl[].formatValue):
    vtbl[].vtbl.formatValue = fcQSqlDriver_vtable_callback_formatValue
  if not isNil(vtbl[].escapeIdentifier):
    vtbl[].vtbl.escapeIdentifier = fcQSqlDriver_vtable_callback_escapeIdentifier
  if not isNil(vtbl[].sqlStatement):
    vtbl[].vtbl.sqlStatement = fcQSqlDriver_vtable_callback_sqlStatement
  if not isNil(vtbl[].handle):
    vtbl[].vtbl.handle = fcQSqlDriver_vtable_callback_handle
  if not isNil(vtbl[].hasFeature):
    vtbl[].vtbl.hasFeature = fcQSqlDriver_vtable_callback_hasFeature
  if not isNil(vtbl[].close):
    vtbl[].vtbl.close = fcQSqlDriver_vtable_callback_close
  if not isNil(vtbl[].createResult):
    vtbl[].vtbl.createResult = fcQSqlDriver_vtable_callback_createResult
  if not isNil(vtbl[].open):
    vtbl[].vtbl.open = fcQSqlDriver_vtable_callback_open
  if not isNil(vtbl[].subscribeToNotification):
    vtbl[].vtbl.subscribeToNotification = fcQSqlDriver_vtable_callback_subscribeToNotification
  if not isNil(vtbl[].unsubscribeFromNotification):
    vtbl[].vtbl.unsubscribeFromNotification = fcQSqlDriver_vtable_callback_unsubscribeFromNotification
  if not isNil(vtbl[].subscribedToNotifications):
    vtbl[].vtbl.subscribedToNotifications = fcQSqlDriver_vtable_callback_subscribedToNotifications
  if not isNil(vtbl[].isIdentifierEscaped):
    vtbl[].vtbl.isIdentifierEscaped = fcQSqlDriver_vtable_callback_isIdentifierEscaped
  if not isNil(vtbl[].stripDelimiters):
    vtbl[].vtbl.stripDelimiters = fcQSqlDriver_vtable_callback_stripDelimiters
  if not isNil(vtbl[].maximumIdentifierLength):
    vtbl[].vtbl.maximumIdentifierLength = fcQSqlDriver_vtable_callback_maximumIdentifierLength
  if not isNil(vtbl[].cancelQuery):
    vtbl[].vtbl.cancelQuery = fcQSqlDriver_vtable_callback_cancelQuery
  if not isNil(vtbl[].setOpen):
    vtbl[].vtbl.setOpen = fcQSqlDriver_vtable_callback_setOpen
  if not isNil(vtbl[].setOpenError):
    vtbl[].vtbl.setOpenError = fcQSqlDriver_vtable_callback_setOpenError
  if not isNil(vtbl[].setLastError):
    vtbl[].vtbl.setLastError = fcQSqlDriver_vtable_callback_setLastError
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQSqlDriver_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQSqlDriver_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQSqlDriver_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQSqlDriver_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQSqlDriver_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQSqlDriver_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQSqlDriver_vtable_callback_disconnectNotify
  let tmp = gen_qsqldriver_types.QSqlDriver(h: fcQSqlDriver_new(addr(vtbl[].vtbl), csize_t(sizeof(pointer))))
  fcQSqlDriver_vdata(tmp.h)[] = addr(vtbl[])
  tmp
proc create*(T: type gen_qsqldriver_types.QSqlDriver,
    parent: gen_qobject_types.QObject,
    vtbl: ref QSqlDriverVTable = nil): gen_qsqldriver_types.QSqlDriver =
  let vtbl = if vtbl == nil: new QSqlDriverVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QSqlDriverVTable](fcQSqlDriver_vdata(self)[])
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQSqlDriver_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQSqlDriver_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQSqlDriver_vtable_callback_metacall
  if not isNil(vtbl[].isOpen):
    vtbl[].vtbl.isOpen = fcQSqlDriver_vtable_callback_isOpen
  if not isNil(vtbl[].beginTransaction):
    vtbl[].vtbl.beginTransaction = fcQSqlDriver_vtable_callback_beginTransaction
  if not isNil(vtbl[].commitTransaction):
    vtbl[].vtbl.commitTransaction = fcQSqlDriver_vtable_callback_commitTransaction
  if not isNil(vtbl[].rollbackTransaction):
    vtbl[].vtbl.rollbackTransaction = fcQSqlDriver_vtable_callback_rollbackTransaction
  if not isNil(vtbl[].tables):
    vtbl[].vtbl.tables = fcQSqlDriver_vtable_callback_tables
  if not isNil(vtbl[].primaryIndex):
    vtbl[].vtbl.primaryIndex = fcQSqlDriver_vtable_callback_primaryIndex
  if not isNil(vtbl[].record):
    vtbl[].vtbl.record = fcQSqlDriver_vtable_callback_record
  if not isNil(vtbl[].formatValue):
    vtbl[].vtbl.formatValue = fcQSqlDriver_vtable_callback_formatValue
  if not isNil(vtbl[].escapeIdentifier):
    vtbl[].vtbl.escapeIdentifier = fcQSqlDriver_vtable_callback_escapeIdentifier
  if not isNil(vtbl[].sqlStatement):
    vtbl[].vtbl.sqlStatement = fcQSqlDriver_vtable_callback_sqlStatement
  if not isNil(vtbl[].handle):
    vtbl[].vtbl.handle = fcQSqlDriver_vtable_callback_handle
  if not isNil(vtbl[].hasFeature):
    vtbl[].vtbl.hasFeature = fcQSqlDriver_vtable_callback_hasFeature
  if not isNil(vtbl[].close):
    vtbl[].vtbl.close = fcQSqlDriver_vtable_callback_close
  if not isNil(vtbl[].createResult):
    vtbl[].vtbl.createResult = fcQSqlDriver_vtable_callback_createResult
  if not isNil(vtbl[].open):
    vtbl[].vtbl.open = fcQSqlDriver_vtable_callback_open
  if not isNil(vtbl[].subscribeToNotification):
    vtbl[].vtbl.subscribeToNotification = fcQSqlDriver_vtable_callback_subscribeToNotification
  if not isNil(vtbl[].unsubscribeFromNotification):
    vtbl[].vtbl.unsubscribeFromNotification = fcQSqlDriver_vtable_callback_unsubscribeFromNotification
  if not isNil(vtbl[].subscribedToNotifications):
    vtbl[].vtbl.subscribedToNotifications = fcQSqlDriver_vtable_callback_subscribedToNotifications
  if not isNil(vtbl[].isIdentifierEscaped):
    vtbl[].vtbl.isIdentifierEscaped = fcQSqlDriver_vtable_callback_isIdentifierEscaped
  if not isNil(vtbl[].stripDelimiters):
    vtbl[].vtbl.stripDelimiters = fcQSqlDriver_vtable_callback_stripDelimiters
  if not isNil(vtbl[].maximumIdentifierLength):
    vtbl[].vtbl.maximumIdentifierLength = fcQSqlDriver_vtable_callback_maximumIdentifierLength
  if not isNil(vtbl[].cancelQuery):
    vtbl[].vtbl.cancelQuery = fcQSqlDriver_vtable_callback_cancelQuery
  if not isNil(vtbl[].setOpen):
    vtbl[].vtbl.setOpen = fcQSqlDriver_vtable_callback_setOpen
  if not isNil(vtbl[].setOpenError):
    vtbl[].vtbl.setOpenError = fcQSqlDriver_vtable_callback_setOpenError
  if not isNil(vtbl[].setLastError):
    vtbl[].vtbl.setLastError = fcQSqlDriver_vtable_callback_setLastError
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQSqlDriver_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQSqlDriver_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQSqlDriver_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQSqlDriver_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQSqlDriver_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQSqlDriver_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQSqlDriver_vtable_callback_disconnectNotify
  let tmp = gen_qsqldriver_types.QSqlDriver(h: fcQSqlDriver_new2(addr(vtbl[].vtbl), csize_t(sizeof(pointer)), parent.h))
  fcQSqlDriver_vdata(tmp.h)[] = addr(vtbl[])
  tmp
const cQSqlDriver_mvtbl = cQSqlDriverVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQSqlDriver()[])](self.fcQSqlDriver_vdata()[])
    inst[].h = nil,

  metaObject: fcQSqlDriver_method_callback_metaObject,
  metacast: fcQSqlDriver_method_callback_metacast,
  metacall: fcQSqlDriver_method_callback_metacall,
  isOpen: fcQSqlDriver_method_callback_isOpen,
  beginTransaction: fcQSqlDriver_method_callback_beginTransaction,
  commitTransaction: fcQSqlDriver_method_callback_commitTransaction,
  rollbackTransaction: fcQSqlDriver_method_callback_rollbackTransaction,
  tables: fcQSqlDriver_method_callback_tables,
  primaryIndex: fcQSqlDriver_method_callback_primaryIndex,
  record: fcQSqlDriver_method_callback_record,
  formatValue: fcQSqlDriver_method_callback_formatValue,
  escapeIdentifier: fcQSqlDriver_method_callback_escapeIdentifier,
  sqlStatement: fcQSqlDriver_method_callback_sqlStatement,
  handle: fcQSqlDriver_method_callback_handle,
  hasFeature: fcQSqlDriver_method_callback_hasFeature,
  close: fcQSqlDriver_method_callback_close,
  createResult: fcQSqlDriver_method_callback_createResult,
  open: fcQSqlDriver_method_callback_open,
  subscribeToNotification: fcQSqlDriver_method_callback_subscribeToNotification,
  unsubscribeFromNotification: fcQSqlDriver_method_callback_unsubscribeFromNotification,
  subscribedToNotifications: fcQSqlDriver_method_callback_subscribedToNotifications,
  isIdentifierEscaped: fcQSqlDriver_method_callback_isIdentifierEscaped,
  stripDelimiters: fcQSqlDriver_method_callback_stripDelimiters,
  maximumIdentifierLength: fcQSqlDriver_method_callback_maximumIdentifierLength,
  cancelQuery: fcQSqlDriver_method_callback_cancelQuery,
  setOpen: fcQSqlDriver_method_callback_setOpen,
  setOpenError: fcQSqlDriver_method_callback_setOpenError,
  setLastError: fcQSqlDriver_method_callback_setLastError,
  event: fcQSqlDriver_method_callback_event,
  eventFilter: fcQSqlDriver_method_callback_eventFilter,
  timerEvent: fcQSqlDriver_method_callback_timerEvent,
  childEvent: fcQSqlDriver_method_callback_childEvent,
  customEvent: fcQSqlDriver_method_callback_customEvent,
  connectNotify: fcQSqlDriver_method_callback_connectNotify,
  disconnectNotify: fcQSqlDriver_method_callback_disconnectNotify,
)
proc create*(T: type gen_qsqldriver_types.QSqlDriver,
    inst: VirtualQSqlDriver) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQSqlDriver_new(addr(cQSqlDriver_mvtbl), csize_t(sizeof(pointer)))
  fcQSqlDriver_vdata(inst[].h)[] = addr inst[]
  inst[].owned = true

proc create*(T: type gen_qsqldriver_types.QSqlDriver,
    parent: gen_qobject_types.QObject,
    inst: VirtualQSqlDriver) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQSqlDriver_new2(addr(cQSqlDriver_mvtbl), csize_t(sizeof(pointer)), parent.h)
  fcQSqlDriver_vdata(inst[].h)[] = addr inst[]
  inst[].owned = true

proc staticMetaObject*(_: type gen_qsqldriver_types.QSqlDriver): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQSqlDriver_staticMetaObject())
proc delete*(self: gen_qsqldriver_types.QSqlDriver) =
  fcQSqlDriver_delete(self.h)
