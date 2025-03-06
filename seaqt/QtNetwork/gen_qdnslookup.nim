import ./Qt5Network_libs

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

const cflags = gorge("pkg-config --cflags Qt5Network")  & " -fPIC"
{.compile("gen_qdnslookup.cpp", cflags).}


type QDnsLookupErrorEnum* = distinct cint
template NoError*(_: type QDnsLookupErrorEnum): untyped = 0
template ResolverError*(_: type QDnsLookupErrorEnum): untyped = 1
template OperationCancelledError*(_: type QDnsLookupErrorEnum): untyped = 2
template InvalidRequestError*(_: type QDnsLookupErrorEnum): untyped = 3
template InvalidReplyError*(_: type QDnsLookupErrorEnum): untyped = 4
template ServerFailureError*(_: type QDnsLookupErrorEnum): untyped = 5
template ServerRefusedError*(_: type QDnsLookupErrorEnum): untyped = 6
template NotFoundError*(_: type QDnsLookupErrorEnum): untyped = 7


type QDnsLookupTypeEnum* = distinct cint
template A*(_: type QDnsLookupTypeEnum): untyped = 1
template AAAA*(_: type QDnsLookupTypeEnum): untyped = 28
template ANY*(_: type QDnsLookupTypeEnum): untyped = 255
template CNAME*(_: type QDnsLookupTypeEnum): untyped = 5
template MX*(_: type QDnsLookupTypeEnum): untyped = 15
template NS*(_: type QDnsLookupTypeEnum): untyped = 2
template PTR*(_: type QDnsLookupTypeEnum): untyped = 12
template SRV*(_: type QDnsLookupTypeEnum): untyped = 33
template TXT*(_: type QDnsLookupTypeEnum): untyped = 16


import ./gen_qdnslookup_types
export gen_qdnslookup_types

import
  ../QtCore/gen_qcoreevent_types,
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qobject,
  ../QtCore/gen_qobjectdefs_types,
  ./gen_qhostaddress_types
export
  gen_qcoreevent_types,
  gen_qmetaobject_types,
  gen_qobject,
  gen_qobjectdefs_types,
  gen_qhostaddress_types

type cQDnsDomainNameRecord*{.exportc: "QDnsDomainNameRecord", incompleteStruct.} = object
type cQDnsHostAddressRecord*{.exportc: "QDnsHostAddressRecord", incompleteStruct.} = object
type cQDnsMailExchangeRecord*{.exportc: "QDnsMailExchangeRecord", incompleteStruct.} = object
type cQDnsServiceRecord*{.exportc: "QDnsServiceRecord", incompleteStruct.} = object
type cQDnsTextRecord*{.exportc: "QDnsTextRecord", incompleteStruct.} = object
type cQDnsLookup*{.exportc: "QDnsLookup", incompleteStruct.} = object

proc fcQDnsDomainNameRecord_new(): ptr cQDnsDomainNameRecord {.importc: "QDnsDomainNameRecord_new".}
proc fcQDnsDomainNameRecord_new2(other: pointer): ptr cQDnsDomainNameRecord {.importc: "QDnsDomainNameRecord_new2".}
proc fcQDnsDomainNameRecord_operatorAssign(self: pointer, other: pointer): void {.importc: "QDnsDomainNameRecord_operatorAssign".}
proc fcQDnsDomainNameRecord_swap(self: pointer, other: pointer): void {.importc: "QDnsDomainNameRecord_swap".}
proc fcQDnsDomainNameRecord_name(self: pointer, ): struct_miqt_string {.importc: "QDnsDomainNameRecord_name".}
proc fcQDnsDomainNameRecord_timeToLive(self: pointer, ): cuint {.importc: "QDnsDomainNameRecord_timeToLive".}
proc fcQDnsDomainNameRecord_value(self: pointer, ): struct_miqt_string {.importc: "QDnsDomainNameRecord_value".}
proc fcQDnsDomainNameRecord_delete(self: pointer) {.importc: "QDnsDomainNameRecord_delete".}
proc fcQDnsHostAddressRecord_new(): ptr cQDnsHostAddressRecord {.importc: "QDnsHostAddressRecord_new".}
proc fcQDnsHostAddressRecord_new2(other: pointer): ptr cQDnsHostAddressRecord {.importc: "QDnsHostAddressRecord_new2".}
proc fcQDnsHostAddressRecord_operatorAssign(self: pointer, other: pointer): void {.importc: "QDnsHostAddressRecord_operatorAssign".}
proc fcQDnsHostAddressRecord_swap(self: pointer, other: pointer): void {.importc: "QDnsHostAddressRecord_swap".}
proc fcQDnsHostAddressRecord_name(self: pointer, ): struct_miqt_string {.importc: "QDnsHostAddressRecord_name".}
proc fcQDnsHostAddressRecord_timeToLive(self: pointer, ): cuint {.importc: "QDnsHostAddressRecord_timeToLive".}
proc fcQDnsHostAddressRecord_value(self: pointer, ): pointer {.importc: "QDnsHostAddressRecord_value".}
proc fcQDnsHostAddressRecord_delete(self: pointer) {.importc: "QDnsHostAddressRecord_delete".}
proc fcQDnsMailExchangeRecord_new(): ptr cQDnsMailExchangeRecord {.importc: "QDnsMailExchangeRecord_new".}
proc fcQDnsMailExchangeRecord_new2(other: pointer): ptr cQDnsMailExchangeRecord {.importc: "QDnsMailExchangeRecord_new2".}
proc fcQDnsMailExchangeRecord_operatorAssign(self: pointer, other: pointer): void {.importc: "QDnsMailExchangeRecord_operatorAssign".}
proc fcQDnsMailExchangeRecord_swap(self: pointer, other: pointer): void {.importc: "QDnsMailExchangeRecord_swap".}
proc fcQDnsMailExchangeRecord_exchange(self: pointer, ): struct_miqt_string {.importc: "QDnsMailExchangeRecord_exchange".}
proc fcQDnsMailExchangeRecord_name(self: pointer, ): struct_miqt_string {.importc: "QDnsMailExchangeRecord_name".}
proc fcQDnsMailExchangeRecord_preference(self: pointer, ): cushort {.importc: "QDnsMailExchangeRecord_preference".}
proc fcQDnsMailExchangeRecord_timeToLive(self: pointer, ): cuint {.importc: "QDnsMailExchangeRecord_timeToLive".}
proc fcQDnsMailExchangeRecord_delete(self: pointer) {.importc: "QDnsMailExchangeRecord_delete".}
proc fcQDnsServiceRecord_new(): ptr cQDnsServiceRecord {.importc: "QDnsServiceRecord_new".}
proc fcQDnsServiceRecord_new2(other: pointer): ptr cQDnsServiceRecord {.importc: "QDnsServiceRecord_new2".}
proc fcQDnsServiceRecord_operatorAssign(self: pointer, other: pointer): void {.importc: "QDnsServiceRecord_operatorAssign".}
proc fcQDnsServiceRecord_swap(self: pointer, other: pointer): void {.importc: "QDnsServiceRecord_swap".}
proc fcQDnsServiceRecord_name(self: pointer, ): struct_miqt_string {.importc: "QDnsServiceRecord_name".}
proc fcQDnsServiceRecord_port(self: pointer, ): cushort {.importc: "QDnsServiceRecord_port".}
proc fcQDnsServiceRecord_priority(self: pointer, ): cushort {.importc: "QDnsServiceRecord_priority".}
proc fcQDnsServiceRecord_target(self: pointer, ): struct_miqt_string {.importc: "QDnsServiceRecord_target".}
proc fcQDnsServiceRecord_timeToLive(self: pointer, ): cuint {.importc: "QDnsServiceRecord_timeToLive".}
proc fcQDnsServiceRecord_weight(self: pointer, ): cushort {.importc: "QDnsServiceRecord_weight".}
proc fcQDnsServiceRecord_delete(self: pointer) {.importc: "QDnsServiceRecord_delete".}
proc fcQDnsTextRecord_new(): ptr cQDnsTextRecord {.importc: "QDnsTextRecord_new".}
proc fcQDnsTextRecord_new2(other: pointer): ptr cQDnsTextRecord {.importc: "QDnsTextRecord_new2".}
proc fcQDnsTextRecord_operatorAssign(self: pointer, other: pointer): void {.importc: "QDnsTextRecord_operatorAssign".}
proc fcQDnsTextRecord_swap(self: pointer, other: pointer): void {.importc: "QDnsTextRecord_swap".}
proc fcQDnsTextRecord_name(self: pointer, ): struct_miqt_string {.importc: "QDnsTextRecord_name".}
proc fcQDnsTextRecord_timeToLive(self: pointer, ): cuint {.importc: "QDnsTextRecord_timeToLive".}
proc fcQDnsTextRecord_values(self: pointer, ): struct_miqt_array {.importc: "QDnsTextRecord_values".}
proc fcQDnsTextRecord_delete(self: pointer) {.importc: "QDnsTextRecord_delete".}
proc fcQDnsLookup_new(): ptr cQDnsLookup {.importc: "QDnsLookup_new".}
proc fcQDnsLookup_new2(typeVal: cint, name: struct_miqt_string): ptr cQDnsLookup {.importc: "QDnsLookup_new2".}
proc fcQDnsLookup_new3(typeVal: cint, name: struct_miqt_string, nameserver: pointer): ptr cQDnsLookup {.importc: "QDnsLookup_new3".}
proc fcQDnsLookup_new4(parent: pointer): ptr cQDnsLookup {.importc: "QDnsLookup_new4".}
proc fcQDnsLookup_new5(typeVal: cint, name: struct_miqt_string, parent: pointer): ptr cQDnsLookup {.importc: "QDnsLookup_new5".}
proc fcQDnsLookup_new6(typeVal: cint, name: struct_miqt_string, nameserver: pointer, parent: pointer): ptr cQDnsLookup {.importc: "QDnsLookup_new6".}
proc fcQDnsLookup_metaObject(self: pointer, ): pointer {.importc: "QDnsLookup_metaObject".}
proc fcQDnsLookup_metacast(self: pointer, param1: cstring): pointer {.importc: "QDnsLookup_metacast".}
proc fcQDnsLookup_tr(s: cstring): struct_miqt_string {.importc: "QDnsLookup_tr".}
proc fcQDnsLookup_trUtf8(s: cstring): struct_miqt_string {.importc: "QDnsLookup_trUtf8".}
proc fcQDnsLookup_error(self: pointer, ): cint {.importc: "QDnsLookup_error".}
proc fcQDnsLookup_errorString(self: pointer, ): struct_miqt_string {.importc: "QDnsLookup_errorString".}
proc fcQDnsLookup_isFinished(self: pointer, ): bool {.importc: "QDnsLookup_isFinished".}
proc fcQDnsLookup_name(self: pointer, ): struct_miqt_string {.importc: "QDnsLookup_name".}
proc fcQDnsLookup_setName(self: pointer, name: struct_miqt_string): void {.importc: "QDnsLookup_setName".}
proc fcQDnsLookup_typeX(self: pointer, ): cint {.importc: "QDnsLookup_type".}
proc fcQDnsLookup_setType(self: pointer, typeVal: cint): void {.importc: "QDnsLookup_setType".}
proc fcQDnsLookup_nameserver(self: pointer, ): pointer {.importc: "QDnsLookup_nameserver".}
proc fcQDnsLookup_setNameserver(self: pointer, nameserver: pointer): void {.importc: "QDnsLookup_setNameserver".}
proc fcQDnsLookup_canonicalNameRecords(self: pointer, ): struct_miqt_array {.importc: "QDnsLookup_canonicalNameRecords".}
proc fcQDnsLookup_hostAddressRecords(self: pointer, ): struct_miqt_array {.importc: "QDnsLookup_hostAddressRecords".}
proc fcQDnsLookup_mailExchangeRecords(self: pointer, ): struct_miqt_array {.importc: "QDnsLookup_mailExchangeRecords".}
proc fcQDnsLookup_nameServerRecords(self: pointer, ): struct_miqt_array {.importc: "QDnsLookup_nameServerRecords".}
proc fcQDnsLookup_pointerRecords(self: pointer, ): struct_miqt_array {.importc: "QDnsLookup_pointerRecords".}
proc fcQDnsLookup_serviceRecords(self: pointer, ): struct_miqt_array {.importc: "QDnsLookup_serviceRecords".}
proc fcQDnsLookup_textRecords(self: pointer, ): struct_miqt_array {.importc: "QDnsLookup_textRecords".}
proc fcQDnsLookup_abort(self: pointer, ): void {.importc: "QDnsLookup_abort".}
proc fcQDnsLookup_lookup(self: pointer, ): void {.importc: "QDnsLookup_lookup".}
proc fcQDnsLookup_finished(self: pointer, ): void {.importc: "QDnsLookup_finished".}
proc fcQDnsLookup_connect_finished(self: pointer, slot: int) {.importc: "QDnsLookup_connect_finished".}
proc fcQDnsLookup_nameChanged(self: pointer, name: struct_miqt_string): void {.importc: "QDnsLookup_nameChanged".}
proc fcQDnsLookup_connect_nameChanged(self: pointer, slot: int) {.importc: "QDnsLookup_connect_nameChanged".}
proc fcQDnsLookup_typeChanged(self: pointer, typeVal: cint): void {.importc: "QDnsLookup_typeChanged".}
proc fcQDnsLookup_connect_typeChanged(self: pointer, slot: int) {.importc: "QDnsLookup_connect_typeChanged".}
proc fcQDnsLookup_nameserverChanged(self: pointer, nameserver: pointer): void {.importc: "QDnsLookup_nameserverChanged".}
proc fcQDnsLookup_connect_nameserverChanged(self: pointer, slot: int) {.importc: "QDnsLookup_connect_nameserverChanged".}
proc fcQDnsLookup_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QDnsLookup_tr2".}
proc fcQDnsLookup_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QDnsLookup_tr3".}
proc fcQDnsLookup_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QDnsLookup_trUtf82".}
proc fcQDnsLookup_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QDnsLookup_trUtf83".}
proc fQDnsLookup_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QDnsLookup_virtualbase_event".}
proc fcQDnsLookup_override_virtual_event(self: pointer, slot: int) {.importc: "QDnsLookup_override_virtual_event".}
proc fQDnsLookup_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QDnsLookup_virtualbase_eventFilter".}
proc fcQDnsLookup_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QDnsLookup_override_virtual_eventFilter".}
proc fQDnsLookup_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QDnsLookup_virtualbase_timerEvent".}
proc fcQDnsLookup_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QDnsLookup_override_virtual_timerEvent".}
proc fQDnsLookup_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QDnsLookup_virtualbase_childEvent".}
proc fcQDnsLookup_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QDnsLookup_override_virtual_childEvent".}
proc fQDnsLookup_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QDnsLookup_virtualbase_customEvent".}
proc fcQDnsLookup_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QDnsLookup_override_virtual_customEvent".}
proc fQDnsLookup_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QDnsLookup_virtualbase_connectNotify".}
proc fcQDnsLookup_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QDnsLookup_override_virtual_connectNotify".}
proc fQDnsLookup_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QDnsLookup_virtualbase_disconnectNotify".}
proc fcQDnsLookup_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QDnsLookup_override_virtual_disconnectNotify".}
proc fcQDnsLookup_delete(self: pointer) {.importc: "QDnsLookup_delete".}


func init*(T: type gen_qdnslookup_types.QDnsDomainNameRecord, h: ptr cQDnsDomainNameRecord): gen_qdnslookup_types.QDnsDomainNameRecord =
  T(h: h)
proc create*(T: type gen_qdnslookup_types.QDnsDomainNameRecord, ): gen_qdnslookup_types.QDnsDomainNameRecord =
  gen_qdnslookup_types.QDnsDomainNameRecord.init(fcQDnsDomainNameRecord_new())

proc create*(T: type gen_qdnslookup_types.QDnsDomainNameRecord, other: gen_qdnslookup_types.QDnsDomainNameRecord): gen_qdnslookup_types.QDnsDomainNameRecord =
  gen_qdnslookup_types.QDnsDomainNameRecord.init(fcQDnsDomainNameRecord_new2(other.h))

proc operatorAssign*(self: gen_qdnslookup_types.QDnsDomainNameRecord, other: gen_qdnslookup_types.QDnsDomainNameRecord): void =
  fcQDnsDomainNameRecord_operatorAssign(self.h, other.h)

proc swap*(self: gen_qdnslookup_types.QDnsDomainNameRecord, other: gen_qdnslookup_types.QDnsDomainNameRecord): void =
  fcQDnsDomainNameRecord_swap(self.h, other.h)

proc name*(self: gen_qdnslookup_types.QDnsDomainNameRecord, ): string =
  let v_ms = fcQDnsDomainNameRecord_name(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc timeToLive*(self: gen_qdnslookup_types.QDnsDomainNameRecord, ): cuint =
  fcQDnsDomainNameRecord_timeToLive(self.h)

proc value*(self: gen_qdnslookup_types.QDnsDomainNameRecord, ): string =
  let v_ms = fcQDnsDomainNameRecord_value(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc delete*(self: gen_qdnslookup_types.QDnsDomainNameRecord) =
  fcQDnsDomainNameRecord_delete(self.h)

func init*(T: type gen_qdnslookup_types.QDnsHostAddressRecord, h: ptr cQDnsHostAddressRecord): gen_qdnslookup_types.QDnsHostAddressRecord =
  T(h: h)
proc create*(T: type gen_qdnslookup_types.QDnsHostAddressRecord, ): gen_qdnslookup_types.QDnsHostAddressRecord =
  gen_qdnslookup_types.QDnsHostAddressRecord.init(fcQDnsHostAddressRecord_new())

proc create*(T: type gen_qdnslookup_types.QDnsHostAddressRecord, other: gen_qdnslookup_types.QDnsHostAddressRecord): gen_qdnslookup_types.QDnsHostAddressRecord =
  gen_qdnslookup_types.QDnsHostAddressRecord.init(fcQDnsHostAddressRecord_new2(other.h))

proc operatorAssign*(self: gen_qdnslookup_types.QDnsHostAddressRecord, other: gen_qdnslookup_types.QDnsHostAddressRecord): void =
  fcQDnsHostAddressRecord_operatorAssign(self.h, other.h)

proc swap*(self: gen_qdnslookup_types.QDnsHostAddressRecord, other: gen_qdnslookup_types.QDnsHostAddressRecord): void =
  fcQDnsHostAddressRecord_swap(self.h, other.h)

proc name*(self: gen_qdnslookup_types.QDnsHostAddressRecord, ): string =
  let v_ms = fcQDnsHostAddressRecord_name(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc timeToLive*(self: gen_qdnslookup_types.QDnsHostAddressRecord, ): cuint =
  fcQDnsHostAddressRecord_timeToLive(self.h)

proc value*(self: gen_qdnslookup_types.QDnsHostAddressRecord, ): gen_qhostaddress_types.QHostAddress =
  gen_qhostaddress_types.QHostAddress(h: fcQDnsHostAddressRecord_value(self.h))

proc delete*(self: gen_qdnslookup_types.QDnsHostAddressRecord) =
  fcQDnsHostAddressRecord_delete(self.h)

func init*(T: type gen_qdnslookup_types.QDnsMailExchangeRecord, h: ptr cQDnsMailExchangeRecord): gen_qdnslookup_types.QDnsMailExchangeRecord =
  T(h: h)
proc create*(T: type gen_qdnslookup_types.QDnsMailExchangeRecord, ): gen_qdnslookup_types.QDnsMailExchangeRecord =
  gen_qdnslookup_types.QDnsMailExchangeRecord.init(fcQDnsMailExchangeRecord_new())

proc create*(T: type gen_qdnslookup_types.QDnsMailExchangeRecord, other: gen_qdnslookup_types.QDnsMailExchangeRecord): gen_qdnslookup_types.QDnsMailExchangeRecord =
  gen_qdnslookup_types.QDnsMailExchangeRecord.init(fcQDnsMailExchangeRecord_new2(other.h))

proc operatorAssign*(self: gen_qdnslookup_types.QDnsMailExchangeRecord, other: gen_qdnslookup_types.QDnsMailExchangeRecord): void =
  fcQDnsMailExchangeRecord_operatorAssign(self.h, other.h)

proc swap*(self: gen_qdnslookup_types.QDnsMailExchangeRecord, other: gen_qdnslookup_types.QDnsMailExchangeRecord): void =
  fcQDnsMailExchangeRecord_swap(self.h, other.h)

proc exchange*(self: gen_qdnslookup_types.QDnsMailExchangeRecord, ): string =
  let v_ms = fcQDnsMailExchangeRecord_exchange(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc name*(self: gen_qdnslookup_types.QDnsMailExchangeRecord, ): string =
  let v_ms = fcQDnsMailExchangeRecord_name(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc preference*(self: gen_qdnslookup_types.QDnsMailExchangeRecord, ): cushort =
  fcQDnsMailExchangeRecord_preference(self.h)

proc timeToLive*(self: gen_qdnslookup_types.QDnsMailExchangeRecord, ): cuint =
  fcQDnsMailExchangeRecord_timeToLive(self.h)

proc delete*(self: gen_qdnslookup_types.QDnsMailExchangeRecord) =
  fcQDnsMailExchangeRecord_delete(self.h)

func init*(T: type gen_qdnslookup_types.QDnsServiceRecord, h: ptr cQDnsServiceRecord): gen_qdnslookup_types.QDnsServiceRecord =
  T(h: h)
proc create*(T: type gen_qdnslookup_types.QDnsServiceRecord, ): gen_qdnslookup_types.QDnsServiceRecord =
  gen_qdnslookup_types.QDnsServiceRecord.init(fcQDnsServiceRecord_new())

proc create*(T: type gen_qdnslookup_types.QDnsServiceRecord, other: gen_qdnslookup_types.QDnsServiceRecord): gen_qdnslookup_types.QDnsServiceRecord =
  gen_qdnslookup_types.QDnsServiceRecord.init(fcQDnsServiceRecord_new2(other.h))

proc operatorAssign*(self: gen_qdnslookup_types.QDnsServiceRecord, other: gen_qdnslookup_types.QDnsServiceRecord): void =
  fcQDnsServiceRecord_operatorAssign(self.h, other.h)

proc swap*(self: gen_qdnslookup_types.QDnsServiceRecord, other: gen_qdnslookup_types.QDnsServiceRecord): void =
  fcQDnsServiceRecord_swap(self.h, other.h)

proc name*(self: gen_qdnslookup_types.QDnsServiceRecord, ): string =
  let v_ms = fcQDnsServiceRecord_name(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc port*(self: gen_qdnslookup_types.QDnsServiceRecord, ): cushort =
  fcQDnsServiceRecord_port(self.h)

proc priority*(self: gen_qdnslookup_types.QDnsServiceRecord, ): cushort =
  fcQDnsServiceRecord_priority(self.h)

proc target*(self: gen_qdnslookup_types.QDnsServiceRecord, ): string =
  let v_ms = fcQDnsServiceRecord_target(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc timeToLive*(self: gen_qdnslookup_types.QDnsServiceRecord, ): cuint =
  fcQDnsServiceRecord_timeToLive(self.h)

proc weight*(self: gen_qdnslookup_types.QDnsServiceRecord, ): cushort =
  fcQDnsServiceRecord_weight(self.h)

proc delete*(self: gen_qdnslookup_types.QDnsServiceRecord) =
  fcQDnsServiceRecord_delete(self.h)

func init*(T: type gen_qdnslookup_types.QDnsTextRecord, h: ptr cQDnsTextRecord): gen_qdnslookup_types.QDnsTextRecord =
  T(h: h)
proc create*(T: type gen_qdnslookup_types.QDnsTextRecord, ): gen_qdnslookup_types.QDnsTextRecord =
  gen_qdnslookup_types.QDnsTextRecord.init(fcQDnsTextRecord_new())

proc create*(T: type gen_qdnslookup_types.QDnsTextRecord, other: gen_qdnslookup_types.QDnsTextRecord): gen_qdnslookup_types.QDnsTextRecord =
  gen_qdnslookup_types.QDnsTextRecord.init(fcQDnsTextRecord_new2(other.h))

proc operatorAssign*(self: gen_qdnslookup_types.QDnsTextRecord, other: gen_qdnslookup_types.QDnsTextRecord): void =
  fcQDnsTextRecord_operatorAssign(self.h, other.h)

proc swap*(self: gen_qdnslookup_types.QDnsTextRecord, other: gen_qdnslookup_types.QDnsTextRecord): void =
  fcQDnsTextRecord_swap(self.h, other.h)

proc name*(self: gen_qdnslookup_types.QDnsTextRecord, ): string =
  let v_ms = fcQDnsTextRecord_name(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc timeToLive*(self: gen_qdnslookup_types.QDnsTextRecord, ): cuint =
  fcQDnsTextRecord_timeToLive(self.h)

proc values*(self: gen_qdnslookup_types.QDnsTextRecord, ): seq[seq[byte]] =
  var v_ma = fcQDnsTextRecord_values(self.h)
  var vx_ret = newSeq[seq[byte]](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    var vx_lv_bytearray = v_outCast[i]
    var vx_lvx_ret = @(toOpenArrayByte(vx_lv_bytearray.data, 0, int(vx_lv_bytearray.len)-1))
    c_free(vx_lv_bytearray.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc delete*(self: gen_qdnslookup_types.QDnsTextRecord) =
  fcQDnsTextRecord_delete(self.h)

func init*(T: type gen_qdnslookup_types.QDnsLookup, h: ptr cQDnsLookup): gen_qdnslookup_types.QDnsLookup =
  T(h: h)
proc create*(T: type gen_qdnslookup_types.QDnsLookup, ): gen_qdnslookup_types.QDnsLookup =
  gen_qdnslookup_types.QDnsLookup.init(fcQDnsLookup_new())

proc create*(T: type gen_qdnslookup_types.QDnsLookup, typeVal: cint, name: string): gen_qdnslookup_types.QDnsLookup =
  gen_qdnslookup_types.QDnsLookup.init(fcQDnsLookup_new2(cint(typeVal), struct_miqt_string(data: name, len: csize_t(len(name)))))

proc create*(T: type gen_qdnslookup_types.QDnsLookup, typeVal: cint, name: string, nameserver: gen_qhostaddress_types.QHostAddress): gen_qdnslookup_types.QDnsLookup =
  gen_qdnslookup_types.QDnsLookup.init(fcQDnsLookup_new3(cint(typeVal), struct_miqt_string(data: name, len: csize_t(len(name))), nameserver.h))

proc create*(T: type gen_qdnslookup_types.QDnsLookup, parent: gen_qobject_types.QObject): gen_qdnslookup_types.QDnsLookup =
  gen_qdnslookup_types.QDnsLookup.init(fcQDnsLookup_new4(parent.h))

proc create*(T: type gen_qdnslookup_types.QDnsLookup, typeVal: cint, name: string, parent: gen_qobject_types.QObject): gen_qdnslookup_types.QDnsLookup =
  gen_qdnslookup_types.QDnsLookup.init(fcQDnsLookup_new5(cint(typeVal), struct_miqt_string(data: name, len: csize_t(len(name))), parent.h))

proc create*(T: type gen_qdnslookup_types.QDnsLookup, typeVal: cint, name: string, nameserver: gen_qhostaddress_types.QHostAddress, parent: gen_qobject_types.QObject): gen_qdnslookup_types.QDnsLookup =
  gen_qdnslookup_types.QDnsLookup.init(fcQDnsLookup_new6(cint(typeVal), struct_miqt_string(data: name, len: csize_t(len(name))), nameserver.h, parent.h))

proc metaObject*(self: gen_qdnslookup_types.QDnsLookup, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQDnsLookup_metaObject(self.h))

proc metacast*(self: gen_qdnslookup_types.QDnsLookup, param1: cstring): pointer =
  fcQDnsLookup_metacast(self.h, param1)

proc tr*(_: type gen_qdnslookup_types.QDnsLookup, s: cstring): string =
  let v_ms = fcQDnsLookup_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qdnslookup_types.QDnsLookup, s: cstring): string =
  let v_ms = fcQDnsLookup_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc error*(self: gen_qdnslookup_types.QDnsLookup, ): cint =
  cint(fcQDnsLookup_error(self.h))

proc errorString*(self: gen_qdnslookup_types.QDnsLookup, ): string =
  let v_ms = fcQDnsLookup_errorString(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc isFinished*(self: gen_qdnslookup_types.QDnsLookup, ): bool =
  fcQDnsLookup_isFinished(self.h)

proc name*(self: gen_qdnslookup_types.QDnsLookup, ): string =
  let v_ms = fcQDnsLookup_name(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setName*(self: gen_qdnslookup_types.QDnsLookup, name: string): void =
  fcQDnsLookup_setName(self.h, struct_miqt_string(data: name, len: csize_t(len(name))))

proc typeX*(self: gen_qdnslookup_types.QDnsLookup, ): cint =
  cint(fcQDnsLookup_typeX(self.h))

proc setType*(self: gen_qdnslookup_types.QDnsLookup, typeVal: cint): void =
  fcQDnsLookup_setType(self.h, cint(typeVal))

proc nameserver*(self: gen_qdnslookup_types.QDnsLookup, ): gen_qhostaddress_types.QHostAddress =
  gen_qhostaddress_types.QHostAddress(h: fcQDnsLookup_nameserver(self.h))

proc setNameserver*(self: gen_qdnslookup_types.QDnsLookup, nameserver: gen_qhostaddress_types.QHostAddress): void =
  fcQDnsLookup_setNameserver(self.h, nameserver.h)

proc canonicalNameRecords*(self: gen_qdnslookup_types.QDnsLookup, ): seq[gen_qdnslookup_types.QDnsDomainNameRecord] =
  var v_ma = fcQDnsLookup_canonicalNameRecords(self.h)
  var vx_ret = newSeq[gen_qdnslookup_types.QDnsDomainNameRecord](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qdnslookup_types.QDnsDomainNameRecord(h: v_outCast[i])
  vx_ret

proc hostAddressRecords*(self: gen_qdnslookup_types.QDnsLookup, ): seq[gen_qdnslookup_types.QDnsHostAddressRecord] =
  var v_ma = fcQDnsLookup_hostAddressRecords(self.h)
  var vx_ret = newSeq[gen_qdnslookup_types.QDnsHostAddressRecord](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qdnslookup_types.QDnsHostAddressRecord(h: v_outCast[i])
  vx_ret

proc mailExchangeRecords*(self: gen_qdnslookup_types.QDnsLookup, ): seq[gen_qdnslookup_types.QDnsMailExchangeRecord] =
  var v_ma = fcQDnsLookup_mailExchangeRecords(self.h)
  var vx_ret = newSeq[gen_qdnslookup_types.QDnsMailExchangeRecord](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qdnslookup_types.QDnsMailExchangeRecord(h: v_outCast[i])
  vx_ret

proc nameServerRecords*(self: gen_qdnslookup_types.QDnsLookup, ): seq[gen_qdnslookup_types.QDnsDomainNameRecord] =
  var v_ma = fcQDnsLookup_nameServerRecords(self.h)
  var vx_ret = newSeq[gen_qdnslookup_types.QDnsDomainNameRecord](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qdnslookup_types.QDnsDomainNameRecord(h: v_outCast[i])
  vx_ret

proc pointerRecords*(self: gen_qdnslookup_types.QDnsLookup, ): seq[gen_qdnslookup_types.QDnsDomainNameRecord] =
  var v_ma = fcQDnsLookup_pointerRecords(self.h)
  var vx_ret = newSeq[gen_qdnslookup_types.QDnsDomainNameRecord](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qdnslookup_types.QDnsDomainNameRecord(h: v_outCast[i])
  vx_ret

proc serviceRecords*(self: gen_qdnslookup_types.QDnsLookup, ): seq[gen_qdnslookup_types.QDnsServiceRecord] =
  var v_ma = fcQDnsLookup_serviceRecords(self.h)
  var vx_ret = newSeq[gen_qdnslookup_types.QDnsServiceRecord](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qdnslookup_types.QDnsServiceRecord(h: v_outCast[i])
  vx_ret

proc textRecords*(self: gen_qdnslookup_types.QDnsLookup, ): seq[gen_qdnslookup_types.QDnsTextRecord] =
  var v_ma = fcQDnsLookup_textRecords(self.h)
  var vx_ret = newSeq[gen_qdnslookup_types.QDnsTextRecord](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qdnslookup_types.QDnsTextRecord(h: v_outCast[i])
  vx_ret

proc abort*(self: gen_qdnslookup_types.QDnsLookup, ): void =
  fcQDnsLookup_abort(self.h)

proc lookup*(self: gen_qdnslookup_types.QDnsLookup, ): void =
  fcQDnsLookup_lookup(self.h)

proc finished*(self: gen_qdnslookup_types.QDnsLookup, ): void =
  fcQDnsLookup_finished(self.h)

type QDnsLookupfinishedSlot* = proc()
proc miqt_exec_callback_QDnsLookup_finished(slot: int) {.exportc.} =
  let nimfunc = cast[ptr QDnsLookupfinishedSlot](cast[pointer](slot))
  nimfunc[]()

proc onfinished*(self: gen_qdnslookup_types.QDnsLookup, slot: QDnsLookupfinishedSlot) =
  var tmp = new QDnsLookupfinishedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQDnsLookup_connect_finished(self.h, cast[int](addr tmp[]))

proc nameChanged*(self: gen_qdnslookup_types.QDnsLookup, name: string): void =
  fcQDnsLookup_nameChanged(self.h, struct_miqt_string(data: name, len: csize_t(len(name))))

type QDnsLookupnameChangedSlot* = proc(name: string)
proc miqt_exec_callback_QDnsLookup_nameChanged(slot: int, name: struct_miqt_string) {.exportc.} =
  let nimfunc = cast[ptr QDnsLookupnameChangedSlot](cast[pointer](slot))
  let vname_ms = name
  let vnamex_ret = string.fromBytes(toOpenArrayByte(vname_ms.data, 0, int(vname_ms.len)-1))
  c_free(vname_ms.data)
  let slotval1 = vnamex_ret

  nimfunc[](slotval1)

proc onnameChanged*(self: gen_qdnslookup_types.QDnsLookup, slot: QDnsLookupnameChangedSlot) =
  var tmp = new QDnsLookupnameChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQDnsLookup_connect_nameChanged(self.h, cast[int](addr tmp[]))

proc typeChanged*(self: gen_qdnslookup_types.QDnsLookup, typeVal: cint): void =
  fcQDnsLookup_typeChanged(self.h, cint(typeVal))

type QDnsLookuptypeChangedSlot* = proc(typeVal: cint)
proc miqt_exec_callback_QDnsLookup_typeChanged(slot: int, typeVal: cint) {.exportc.} =
  let nimfunc = cast[ptr QDnsLookuptypeChangedSlot](cast[pointer](slot))
  let slotval1 = cint(typeVal)

  nimfunc[](slotval1)

proc ontypeChanged*(self: gen_qdnslookup_types.QDnsLookup, slot: QDnsLookuptypeChangedSlot) =
  var tmp = new QDnsLookuptypeChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQDnsLookup_connect_typeChanged(self.h, cast[int](addr tmp[]))

proc nameserverChanged*(self: gen_qdnslookup_types.QDnsLookup, nameserver: gen_qhostaddress_types.QHostAddress): void =
  fcQDnsLookup_nameserverChanged(self.h, nameserver.h)

type QDnsLookupnameserverChangedSlot* = proc(nameserver: gen_qhostaddress_types.QHostAddress)
proc miqt_exec_callback_QDnsLookup_nameserverChanged(slot: int, nameserver: pointer) {.exportc.} =
  let nimfunc = cast[ptr QDnsLookupnameserverChangedSlot](cast[pointer](slot))
  let slotval1 = gen_qhostaddress_types.QHostAddress(h: nameserver)

  nimfunc[](slotval1)

proc onnameserverChanged*(self: gen_qdnslookup_types.QDnsLookup, slot: QDnsLookupnameserverChangedSlot) =
  var tmp = new QDnsLookupnameserverChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQDnsLookup_connect_nameserverChanged(self.h, cast[int](addr tmp[]))

proc tr*(_: type gen_qdnslookup_types.QDnsLookup, s: cstring, c: cstring): string =
  let v_ms = fcQDnsLookup_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qdnslookup_types.QDnsLookup, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQDnsLookup_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qdnslookup_types.QDnsLookup, s: cstring, c: cstring): string =
  let v_ms = fcQDnsLookup_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qdnslookup_types.QDnsLookup, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQDnsLookup_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc QDnsLookupevent*(self: gen_qdnslookup_types.QDnsLookup, event: gen_qcoreevent_types.QEvent): bool =
  fQDnsLookup_virtualbase_event(self.h, event.h)

type QDnsLookupeventProc* = proc(event: gen_qcoreevent_types.QEvent): bool
proc onevent*(self: gen_qdnslookup_types.QDnsLookup, slot: QDnsLookupeventProc) =
  # TODO check subclass
  var tmp = new QDnsLookupeventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDnsLookup_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDnsLookup_event(self: ptr cQDnsLookup, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QDnsLookup_event ".} =
  var nimfunc = cast[ptr QDnsLookupeventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QDnsLookupeventFilter*(self: gen_qdnslookup_types.QDnsLookup, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fQDnsLookup_virtualbase_eventFilter(self.h, watched.h, event.h)

type QDnsLookupeventFilterProc* = proc(watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool
proc oneventFilter*(self: gen_qdnslookup_types.QDnsLookup, slot: QDnsLookupeventFilterProc) =
  # TODO check subclass
  var tmp = new QDnsLookupeventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDnsLookup_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDnsLookup_eventFilter(self: ptr cQDnsLookup, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QDnsLookup_eventFilter ".} =
  var nimfunc = cast[ptr QDnsLookupeventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: watched)

  let slotval2 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QDnsLookuptimerEvent*(self: gen_qdnslookup_types.QDnsLookup, event: gen_qcoreevent_types.QTimerEvent): void =
  fQDnsLookup_virtualbase_timerEvent(self.h, event.h)

type QDnsLookuptimerEventProc* = proc(event: gen_qcoreevent_types.QTimerEvent): void
proc ontimerEvent*(self: gen_qdnslookup_types.QDnsLookup, slot: QDnsLookuptimerEventProc) =
  # TODO check subclass
  var tmp = new QDnsLookuptimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDnsLookup_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDnsLookup_timerEvent(self: ptr cQDnsLookup, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDnsLookup_timerEvent ".} =
  var nimfunc = cast[ptr QDnsLookuptimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QDnsLookupchildEvent*(self: gen_qdnslookup_types.QDnsLookup, event: gen_qcoreevent_types.QChildEvent): void =
  fQDnsLookup_virtualbase_childEvent(self.h, event.h)

type QDnsLookupchildEventProc* = proc(event: gen_qcoreevent_types.QChildEvent): void
proc onchildEvent*(self: gen_qdnslookup_types.QDnsLookup, slot: QDnsLookupchildEventProc) =
  # TODO check subclass
  var tmp = new QDnsLookupchildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDnsLookup_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDnsLookup_childEvent(self: ptr cQDnsLookup, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDnsLookup_childEvent ".} =
  var nimfunc = cast[ptr QDnsLookupchildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QDnsLookupcustomEvent*(self: gen_qdnslookup_types.QDnsLookup, event: gen_qcoreevent_types.QEvent): void =
  fQDnsLookup_virtualbase_customEvent(self.h, event.h)

type QDnsLookupcustomEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc oncustomEvent*(self: gen_qdnslookup_types.QDnsLookup, slot: QDnsLookupcustomEventProc) =
  # TODO check subclass
  var tmp = new QDnsLookupcustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDnsLookup_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDnsLookup_customEvent(self: ptr cQDnsLookup, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDnsLookup_customEvent ".} =
  var nimfunc = cast[ptr QDnsLookupcustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QDnsLookupconnectNotify*(self: gen_qdnslookup_types.QDnsLookup, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQDnsLookup_virtualbase_connectNotify(self.h, signal.h)

type QDnsLookupconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc onconnectNotify*(self: gen_qdnslookup_types.QDnsLookup, slot: QDnsLookupconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QDnsLookupconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDnsLookup_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDnsLookup_connectNotify(self: ptr cQDnsLookup, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QDnsLookup_connectNotify ".} =
  var nimfunc = cast[ptr QDnsLookupconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QDnsLookupdisconnectNotify*(self: gen_qdnslookup_types.QDnsLookup, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQDnsLookup_virtualbase_disconnectNotify(self.h, signal.h)

type QDnsLookupdisconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qdnslookup_types.QDnsLookup, slot: QDnsLookupdisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QDnsLookupdisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDnsLookup_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDnsLookup_disconnectNotify(self: ptr cQDnsLookup, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QDnsLookup_disconnectNotify ".} =
  var nimfunc = cast[ptr QDnsLookupdisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc delete*(self: gen_qdnslookup_types.QDnsLookup) =
  fcQDnsLookup_delete(self.h)
