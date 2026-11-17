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


import ./gen_qsqldatabase_types
export gen_qsqldatabase_types

import
  ./gen_qsqldriver_types,
  ./gen_qsqlerror_types,
  ./gen_qsqlindex_types,
  ./gen_qsqlquery_types,
  ./gen_qsqlrecord_types
export
  gen_qsqldriver_types,
  gen_qsqlerror_types,
  gen_qsqlindex_types,
  gen_qsqlquery_types,
  gen_qsqlrecord_types

type cQSqlDriverCreatorBase*{.exportc: "QSqlDriverCreatorBase", incompleteStruct.} = object
type cQSqlDatabase*{.exportc: "QSqlDatabase", incompleteStruct.} = object

proc fcQSqlDriverCreatorBase_createObject(self: pointer): pointer {.importc: "QSqlDriverCreatorBase_createObject".}
proc fcQSqlDriverCreatorBase_operatorAssign(self: pointer, param1: pointer): void {.importc: "QSqlDriverCreatorBase_operatorAssign".}
proc fcQSqlDriverCreatorBase_delete(self: pointer) {.importc: "QSqlDriverCreatorBase_delete".}
proc fcQSqlDatabase_operatorAssign(self: pointer, other: pointer): void {.importc: "QSqlDatabase_operatorAssign".}
proc fcQSqlDatabase_open(self: pointer): bool {.importc: "QSqlDatabase_open".}
proc fcQSqlDatabase_open2(self: pointer, user: struct_seaqt_string, password: struct_seaqt_string): bool {.importc: "QSqlDatabase_open2".}
proc fcQSqlDatabase_close(self: pointer): void {.importc: "QSqlDatabase_close".}
proc fcQSqlDatabase_isOpen(self: pointer): bool {.importc: "QSqlDatabase_isOpen".}
proc fcQSqlDatabase_isOpenError(self: pointer): bool {.importc: "QSqlDatabase_isOpenError".}
proc fcQSqlDatabase_tables(self: pointer): struct_seaqt_array {.importc: "QSqlDatabase_tables".}
proc fcQSqlDatabase_primaryIndex(self: pointer, tablename: struct_seaqt_string): pointer {.importc: "QSqlDatabase_primaryIndex".}
proc fcQSqlDatabase_record(self: pointer, tablename: struct_seaqt_string): pointer {.importc: "QSqlDatabase_record".}
proc fcQSqlDatabase_exec(self: pointer): pointer {.importc: "QSqlDatabase_exec".}
proc fcQSqlDatabase_lastError(self: pointer): pointer {.importc: "QSqlDatabase_lastError".}
proc fcQSqlDatabase_isValid(self: pointer): bool {.importc: "QSqlDatabase_isValid".}
proc fcQSqlDatabase_transaction(self: pointer): bool {.importc: "QSqlDatabase_transaction".}
proc fcQSqlDatabase_commit(self: pointer): bool {.importc: "QSqlDatabase_commit".}
proc fcQSqlDatabase_rollback(self: pointer): bool {.importc: "QSqlDatabase_rollback".}
proc fcQSqlDatabase_setDatabaseName(self: pointer, name: struct_seaqt_string): void {.importc: "QSqlDatabase_setDatabaseName".}
proc fcQSqlDatabase_setUserName(self: pointer, name: struct_seaqt_string): void {.importc: "QSqlDatabase_setUserName".}
proc fcQSqlDatabase_setPassword(self: pointer, password: struct_seaqt_string): void {.importc: "QSqlDatabase_setPassword".}
proc fcQSqlDatabase_setHostName(self: pointer, host: struct_seaqt_string): void {.importc: "QSqlDatabase_setHostName".}
proc fcQSqlDatabase_setPort(self: pointer, p: cint): void {.importc: "QSqlDatabase_setPort".}
proc fcQSqlDatabase_setConnectOptions(self: pointer): void {.importc: "QSqlDatabase_setConnectOptions".}
proc fcQSqlDatabase_databaseName(self: pointer): struct_seaqt_string {.importc: "QSqlDatabase_databaseName".}
proc fcQSqlDatabase_userName(self: pointer): struct_seaqt_string {.importc: "QSqlDatabase_userName".}
proc fcQSqlDatabase_password(self: pointer): struct_seaqt_string {.importc: "QSqlDatabase_password".}
proc fcQSqlDatabase_hostName(self: pointer): struct_seaqt_string {.importc: "QSqlDatabase_hostName".}
proc fcQSqlDatabase_driverName(self: pointer): struct_seaqt_string {.importc: "QSqlDatabase_driverName".}
proc fcQSqlDatabase_port(self: pointer): cint {.importc: "QSqlDatabase_port".}
proc fcQSqlDatabase_connectOptions(self: pointer): struct_seaqt_string {.importc: "QSqlDatabase_connectOptions".}
proc fcQSqlDatabase_connectionName(self: pointer): struct_seaqt_string {.importc: "QSqlDatabase_connectionName".}
proc fcQSqlDatabase_setNumericalPrecisionPolicy(self: pointer, precisionPolicy: cint): void {.importc: "QSqlDatabase_setNumericalPrecisionPolicy".}
proc fcQSqlDatabase_numericalPrecisionPolicy(self: pointer): cint {.importc: "QSqlDatabase_numericalPrecisionPolicy".}
proc fcQSqlDatabase_driver(self: pointer): pointer {.importc: "QSqlDatabase_driver".}
proc fcQSqlDatabase_addDatabase(typeVal: struct_seaqt_string): pointer {.importc: "QSqlDatabase_addDatabase".}
proc fcQSqlDatabase_addDatabaseWithDriver(driver: pointer): pointer {.importc: "QSqlDatabase_addDatabaseWithDriver".}
proc fcQSqlDatabase_cloneDatabase(other: pointer, connectionName: struct_seaqt_string): pointer {.importc: "QSqlDatabase_cloneDatabase".}
proc fcQSqlDatabase_cloneDatabase2(other: struct_seaqt_string, connectionName: struct_seaqt_string): pointer {.importc: "QSqlDatabase_cloneDatabase2".}
proc fcQSqlDatabase_database(): pointer {.importc: "QSqlDatabase_database".}
proc fcQSqlDatabase_removeDatabase(connectionName: struct_seaqt_string): void {.importc: "QSqlDatabase_removeDatabase".}
proc fcQSqlDatabase_contains(): bool {.importc: "QSqlDatabase_contains".}
proc fcQSqlDatabase_drivers(): struct_seaqt_array {.importc: "QSqlDatabase_drivers".}
proc fcQSqlDatabase_connectionNames(): struct_seaqt_array {.importc: "QSqlDatabase_connectionNames".}
proc fcQSqlDatabase_registerSqlDriver(name: struct_seaqt_string, creator: pointer): void {.importc: "QSqlDatabase_registerSqlDriver".}
proc fcQSqlDatabase_isDriverAvailable(name: struct_seaqt_string): bool {.importc: "QSqlDatabase_isDriverAvailable".}
proc fcQSqlDatabase_tablesWithType(self: pointer, typeVal: cint): struct_seaqt_array {.importc: "QSqlDatabase_tablesWithType".}
proc fcQSqlDatabase_execWithQuery(self: pointer, query: struct_seaqt_string): pointer {.importc: "QSqlDatabase_execWithQuery".}
proc fcQSqlDatabase_setConnectOptionsWithOptions(self: pointer, options: struct_seaqt_string): void {.importc: "QSqlDatabase_setConnectOptionsWithOptions".}
proc fcQSqlDatabase_addDatabase2(typeVal: struct_seaqt_string, connectionName: struct_seaqt_string): pointer {.importc: "QSqlDatabase_addDatabase2".}
proc fcQSqlDatabase_addDatabase3(driver: pointer, connectionName: struct_seaqt_string): pointer {.importc: "QSqlDatabase_addDatabase3".}
proc fcQSqlDatabase_databaseWithConnectionName(connectionName: struct_seaqt_string): pointer {.importc: "QSqlDatabase_databaseWithConnectionName".}
proc fcQSqlDatabase_database2(connectionName: struct_seaqt_string, open: bool): pointer {.importc: "QSqlDatabase_database2".}
proc fcQSqlDatabase_containsWithConnectionName(connectionName: struct_seaqt_string): bool {.importc: "QSqlDatabase_containsWithConnectionName".}
proc fcQSqlDatabase_new(): ptr cQSqlDatabase {.importc: "QSqlDatabase_new".}
proc fcQSqlDatabase_new2(other: pointer): ptr cQSqlDatabase {.importc: "QSqlDatabase_new2".}
proc fcQSqlDatabase_delete(self: pointer) {.importc: "QSqlDatabase_delete".}

proc createObject*(self: gen_qsqldatabase_types.QSqlDriverCreatorBase): gen_qsqldriver_types.QSqlDriver =
  gen_qsqldriver_types.QSqlDriver(h: fcQSqlDriverCreatorBase_createObject(self.h))

proc operatorAssign*(self: gen_qsqldatabase_types.QSqlDriverCreatorBase, param1: gen_qsqldatabase_types.QSqlDriverCreatorBase): void =
  fcQSqlDriverCreatorBase_operatorAssign(self.h, param1.h)

proc delete*(self: gen_qsqldatabase_types.QSqlDriverCreatorBase) =
  fcQSqlDriverCreatorBase_delete(self.h)
proc operatorAssign*(self: gen_qsqldatabase_types.QSqlDatabase, other: gen_qsqldatabase_types.QSqlDatabase): void =
  fcQSqlDatabase_operatorAssign(self.h, other.h)

proc open*(self: gen_qsqldatabase_types.QSqlDatabase): bool =
  fcQSqlDatabase_open(self.h)

proc open*(self: gen_qsqldatabase_types.QSqlDatabase, user: openArray[char], password: openArray[char]): bool =
  fcQSqlDatabase_open2(self.h, struct_seaqt_string(data: if len(user) > 0: addr user[0] else: nil, len: csize_t(len(user))), struct_seaqt_string(data: if len(password) > 0: addr password[0] else: nil, len: csize_t(len(password))))

proc close*(self: gen_qsqldatabase_types.QSqlDatabase): void =
  fcQSqlDatabase_close(self.h)

proc isOpen*(self: gen_qsqldatabase_types.QSqlDatabase): bool =
  fcQSqlDatabase_isOpen(self.h)

proc isOpenError*(self: gen_qsqldatabase_types.QSqlDatabase): bool =
  fcQSqlDatabase_isOpenError(self.h)

proc tables*(self: gen_qsqldatabase_types.QSqlDatabase): seq[string] =
  var v_ma = fcQSqlDatabase_tables(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_seaqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(vx_lv_ms)
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  c_free(v_ma.data)
  vx_ret

proc primaryIndex*(self: gen_qsqldatabase_types.QSqlDatabase, tablename: openArray[char]): gen_qsqlindex_types.QSqlIndex =
  gen_qsqlindex_types.QSqlIndex(h: fcQSqlDatabase_primaryIndex(self.h, struct_seaqt_string(data: if len(tablename) > 0: addr tablename[0] else: nil, len: csize_t(len(tablename)))))

proc record*(self: gen_qsqldatabase_types.QSqlDatabase, tablename: openArray[char]): gen_qsqlrecord_types.QSqlRecord =
  gen_qsqlrecord_types.QSqlRecord(h: fcQSqlDatabase_record(self.h, struct_seaqt_string(data: if len(tablename) > 0: addr tablename[0] else: nil, len: csize_t(len(tablename)))))

proc exec*(self: gen_qsqldatabase_types.QSqlDatabase): gen_qsqlquery_types.QSqlQuery =
  gen_qsqlquery_types.QSqlQuery(h: fcQSqlDatabase_exec(self.h))

proc lastError*(self: gen_qsqldatabase_types.QSqlDatabase): gen_qsqlerror_types.QSqlError =
  gen_qsqlerror_types.QSqlError(h: fcQSqlDatabase_lastError(self.h))

proc isValid*(self: gen_qsqldatabase_types.QSqlDatabase): bool =
  fcQSqlDatabase_isValid(self.h)

proc transaction*(self: gen_qsqldatabase_types.QSqlDatabase): bool =
  fcQSqlDatabase_transaction(self.h)

proc commit*(self: gen_qsqldatabase_types.QSqlDatabase): bool =
  fcQSqlDatabase_commit(self.h)

proc rollback*(self: gen_qsqldatabase_types.QSqlDatabase): bool =
  fcQSqlDatabase_rollback(self.h)

proc setDatabaseName*(self: gen_qsqldatabase_types.QSqlDatabase, name: openArray[char]): void =
  fcQSqlDatabase_setDatabaseName(self.h, struct_seaqt_string(data: if len(name) > 0: addr name[0] else: nil, len: csize_t(len(name))))

proc setUserName*(self: gen_qsqldatabase_types.QSqlDatabase, name: openArray[char]): void =
  fcQSqlDatabase_setUserName(self.h, struct_seaqt_string(data: if len(name) > 0: addr name[0] else: nil, len: csize_t(len(name))))

proc setPassword*(self: gen_qsqldatabase_types.QSqlDatabase, password: openArray[char]): void =
  fcQSqlDatabase_setPassword(self.h, struct_seaqt_string(data: if len(password) > 0: addr password[0] else: nil, len: csize_t(len(password))))

proc setHostName*(self: gen_qsqldatabase_types.QSqlDatabase, host: openArray[char]): void =
  fcQSqlDatabase_setHostName(self.h, struct_seaqt_string(data: if len(host) > 0: addr host[0] else: nil, len: csize_t(len(host))))

proc setPort*(self: gen_qsqldatabase_types.QSqlDatabase, p: cint): void =
  fcQSqlDatabase_setPort(self.h, p)

proc setConnectOptions*(self: gen_qsqldatabase_types.QSqlDatabase): void =
  fcQSqlDatabase_setConnectOptions(self.h)

proc databaseName*(self: gen_qsqldatabase_types.QSqlDatabase): string =
  let v_ms = fcQSqlDatabase_databaseName(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc userName*(self: gen_qsqldatabase_types.QSqlDatabase): string =
  let v_ms = fcQSqlDatabase_userName(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc password*(self: gen_qsqldatabase_types.QSqlDatabase): string =
  let v_ms = fcQSqlDatabase_password(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc hostName*(self: gen_qsqldatabase_types.QSqlDatabase): string =
  let v_ms = fcQSqlDatabase_hostName(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc driverName*(self: gen_qsqldatabase_types.QSqlDatabase): string =
  let v_ms = fcQSqlDatabase_driverName(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc port*(self: gen_qsqldatabase_types.QSqlDatabase): cint =
  fcQSqlDatabase_port(self.h)

proc connectOptions*(self: gen_qsqldatabase_types.QSqlDatabase): string =
  let v_ms = fcQSqlDatabase_connectOptions(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc connectionName*(self: gen_qsqldatabase_types.QSqlDatabase): string =
  let v_ms = fcQSqlDatabase_connectionName(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc setNumericalPrecisionPolicy*(self: gen_qsqldatabase_types.QSqlDatabase, precisionPolicy: cint): void =
  fcQSqlDatabase_setNumericalPrecisionPolicy(self.h, cint(precisionPolicy))

proc numericalPrecisionPolicy*(self: gen_qsqldatabase_types.QSqlDatabase): cint =
  cint(fcQSqlDatabase_numericalPrecisionPolicy(self.h))

proc driver*(self: gen_qsqldatabase_types.QSqlDatabase): gen_qsqldriver_types.QSqlDriver =
  gen_qsqldriver_types.QSqlDriver(h: fcQSqlDatabase_driver(self.h))

proc addDatabase*(_: type gen_qsqldatabase_types.QSqlDatabase, typeVal: openArray[char]): gen_qsqldatabase_types.QSqlDatabase =
  gen_qsqldatabase_types.QSqlDatabase(h: fcQSqlDatabase_addDatabase(struct_seaqt_string(data: if len(typeVal) > 0: addr typeVal[0] else: nil, len: csize_t(len(typeVal)))))

proc addDatabase*(_: type gen_qsqldatabase_types.QSqlDatabase, driver: gen_qsqldriver_types.QSqlDriver): gen_qsqldatabase_types.QSqlDatabase =
  gen_qsqldatabase_types.QSqlDatabase(h: fcQSqlDatabase_addDatabaseWithDriver(driver.h))

proc cloneDatabase*(_: type gen_qsqldatabase_types.QSqlDatabase, other: gen_qsqldatabase_types.QSqlDatabase, connectionName: openArray[char]): gen_qsqldatabase_types.QSqlDatabase =
  gen_qsqldatabase_types.QSqlDatabase(h: fcQSqlDatabase_cloneDatabase(other.h, struct_seaqt_string(data: if len(connectionName) > 0: addr connectionName[0] else: nil, len: csize_t(len(connectionName)))))

proc cloneDatabase*(_: type gen_qsqldatabase_types.QSqlDatabase, other: openArray[char], connectionName: openArray[char]): gen_qsqldatabase_types.QSqlDatabase =
  gen_qsqldatabase_types.QSqlDatabase(h: fcQSqlDatabase_cloneDatabase2(struct_seaqt_string(data: if len(other) > 0: addr other[0] else: nil, len: csize_t(len(other))), struct_seaqt_string(data: if len(connectionName) > 0: addr connectionName[0] else: nil, len: csize_t(len(connectionName)))))

proc database*(_: type gen_qsqldatabase_types.QSqlDatabase): gen_qsqldatabase_types.QSqlDatabase =
  gen_qsqldatabase_types.QSqlDatabase(h: fcQSqlDatabase_database())

proc removeDatabase*(_: type gen_qsqldatabase_types.QSqlDatabase, connectionName: openArray[char]): void =
  fcQSqlDatabase_removeDatabase(struct_seaqt_string(data: if len(connectionName) > 0: addr connectionName[0] else: nil, len: csize_t(len(connectionName))))

proc contains*(_: type gen_qsqldatabase_types.QSqlDatabase): bool =
  fcQSqlDatabase_contains()

proc drivers*(_: type gen_qsqldatabase_types.QSqlDatabase): seq[string] =
  var v_ma = fcQSqlDatabase_drivers()
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_seaqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(vx_lv_ms)
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  c_free(v_ma.data)
  vx_ret

proc connectionNames*(_: type gen_qsqldatabase_types.QSqlDatabase): seq[string] =
  var v_ma = fcQSqlDatabase_connectionNames()
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_seaqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(vx_lv_ms)
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  c_free(v_ma.data)
  vx_ret

proc registerSqlDriver*(_: type gen_qsqldatabase_types.QSqlDatabase, name: openArray[char], creator: gen_qsqldatabase_types.QSqlDriverCreatorBase): void =
  fcQSqlDatabase_registerSqlDriver(struct_seaqt_string(data: if len(name) > 0: addr name[0] else: nil, len: csize_t(len(name))), creator.h)

proc isDriverAvailable*(_: type gen_qsqldatabase_types.QSqlDatabase, name: openArray[char]): bool =
  fcQSqlDatabase_isDriverAvailable(struct_seaqt_string(data: if len(name) > 0: addr name[0] else: nil, len: csize_t(len(name))))

proc tables*(self: gen_qsqldatabase_types.QSqlDatabase, typeVal: cint): seq[string] =
  var v_ma = fcQSqlDatabase_tablesWithType(self.h, cint(typeVal))
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_seaqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(vx_lv_ms)
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  c_free(v_ma.data)
  vx_ret

proc exec*(self: gen_qsqldatabase_types.QSqlDatabase, query: openArray[char]): gen_qsqlquery_types.QSqlQuery =
  gen_qsqlquery_types.QSqlQuery(h: fcQSqlDatabase_execWithQuery(self.h, struct_seaqt_string(data: if len(query) > 0: addr query[0] else: nil, len: csize_t(len(query)))))

proc setConnectOptions*(self: gen_qsqldatabase_types.QSqlDatabase, options: openArray[char]): void =
  fcQSqlDatabase_setConnectOptionsWithOptions(self.h, struct_seaqt_string(data: if len(options) > 0: addr options[0] else: nil, len: csize_t(len(options))))

proc addDatabase*(_: type gen_qsqldatabase_types.QSqlDatabase, typeVal: openArray[char], connectionName: openArray[char]): gen_qsqldatabase_types.QSqlDatabase =
  gen_qsqldatabase_types.QSqlDatabase(h: fcQSqlDatabase_addDatabase2(struct_seaqt_string(data: if len(typeVal) > 0: addr typeVal[0] else: nil, len: csize_t(len(typeVal))), struct_seaqt_string(data: if len(connectionName) > 0: addr connectionName[0] else: nil, len: csize_t(len(connectionName)))))

proc addDatabase*(_: type gen_qsqldatabase_types.QSqlDatabase, driver: gen_qsqldriver_types.QSqlDriver, connectionName: openArray[char]): gen_qsqldatabase_types.QSqlDatabase =
  gen_qsqldatabase_types.QSqlDatabase(h: fcQSqlDatabase_addDatabase3(driver.h, struct_seaqt_string(data: if len(connectionName) > 0: addr connectionName[0] else: nil, len: csize_t(len(connectionName)))))

proc database*(_: type gen_qsqldatabase_types.QSqlDatabase, connectionName: openArray[char]): gen_qsqldatabase_types.QSqlDatabase =
  gen_qsqldatabase_types.QSqlDatabase(h: fcQSqlDatabase_databaseWithConnectionName(struct_seaqt_string(data: if len(connectionName) > 0: addr connectionName[0] else: nil, len: csize_t(len(connectionName)))))

proc database*(_: type gen_qsqldatabase_types.QSqlDatabase, connectionName: openArray[char], open: bool): gen_qsqldatabase_types.QSqlDatabase =
  gen_qsqldatabase_types.QSqlDatabase(h: fcQSqlDatabase_database2(struct_seaqt_string(data: if len(connectionName) > 0: addr connectionName[0] else: nil, len: csize_t(len(connectionName))), open))

proc contains*(_: type gen_qsqldatabase_types.QSqlDatabase, connectionName: openArray[char]): bool =
  fcQSqlDatabase_containsWithConnectionName(struct_seaqt_string(data: if len(connectionName) > 0: addr connectionName[0] else: nil, len: csize_t(len(connectionName))))

proc create*(T: type gen_qsqldatabase_types.QSqlDatabase): gen_qsqldatabase_types.QSqlDatabase =
  let tmp = gen_qsqldatabase_types.QSqlDatabase(h: fcQSqlDatabase_new())
  tmp
proc create*(T: type gen_qsqldatabase_types.QSqlDatabase,
    other: gen_qsqldatabase_types.QSqlDatabase): gen_qsqldatabase_types.QSqlDatabase =
  let tmp = gen_qsqldatabase_types.QSqlDatabase(h: fcQSqlDatabase_new2(other.h))
  tmp
proc delete*(self: gen_qsqldatabase_types.QSqlDatabase) =
  fcQSqlDatabase_delete(self.h)
