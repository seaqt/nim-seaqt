import ./qtnetwork_pkg

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


import ./gen_qnetworkdatagram_types
export gen_qnetworkdatagram_types

import
  ./gen_qhostaddress_types
export
  gen_qhostaddress_types

type cQNetworkDatagram*{.exportc: "QNetworkDatagram", incompleteStruct.} = object

proc fcQNetworkDatagram_operatorAssign(self: pointer, other: pointer): void {.importc: "QNetworkDatagram_operatorAssign".}
proc fcQNetworkDatagram_swap(self: pointer, other: pointer): void {.importc: "QNetworkDatagram_swap".}
proc fcQNetworkDatagram_clear(self: pointer): void {.importc: "QNetworkDatagram_clear".}
proc fcQNetworkDatagram_isValid(self: pointer): bool {.importc: "QNetworkDatagram_isValid".}
proc fcQNetworkDatagram_isNull(self: pointer): bool {.importc: "QNetworkDatagram_isNull".}
proc fcQNetworkDatagram_interfaceIndex(self: pointer): cuint {.importc: "QNetworkDatagram_interfaceIndex".}
proc fcQNetworkDatagram_setInterfaceIndex(self: pointer, index: cuint): void {.importc: "QNetworkDatagram_setInterfaceIndex".}
proc fcQNetworkDatagram_senderAddress(self: pointer): pointer {.importc: "QNetworkDatagram_senderAddress".}
proc fcQNetworkDatagram_destinationAddress(self: pointer): pointer {.importc: "QNetworkDatagram_destinationAddress".}
proc fcQNetworkDatagram_senderPort(self: pointer): cint {.importc: "QNetworkDatagram_senderPort".}
proc fcQNetworkDatagram_destinationPort(self: pointer): cint {.importc: "QNetworkDatagram_destinationPort".}
proc fcQNetworkDatagram_setSender(self: pointer, address: pointer): void {.importc: "QNetworkDatagram_setSender".}
proc fcQNetworkDatagram_setDestination(self: pointer, address: pointer, port: cushort): void {.importc: "QNetworkDatagram_setDestination".}
proc fcQNetworkDatagram_hopLimit(self: pointer): cint {.importc: "QNetworkDatagram_hopLimit".}
proc fcQNetworkDatagram_setHopLimit(self: pointer, count: cint): void {.importc: "QNetworkDatagram_setHopLimit".}
proc fcQNetworkDatagram_data(self: pointer): struct_miqt_string {.importc: "QNetworkDatagram_data".}
proc fcQNetworkDatagram_setData(self: pointer, data: struct_miqt_string): void {.importc: "QNetworkDatagram_setData".}
proc fcQNetworkDatagram_makeReply(self: pointer, payload: struct_miqt_string): pointer {.importc: "QNetworkDatagram_makeReply".}
proc fcQNetworkDatagram_setSender2(self: pointer, address: pointer, port: cushort): void {.importc: "QNetworkDatagram_setSender2".}
proc fcQNetworkDatagram_new(): ptr cQNetworkDatagram {.importc: "QNetworkDatagram_new".}
proc fcQNetworkDatagram_new2(data: struct_miqt_string): ptr cQNetworkDatagram {.importc: "QNetworkDatagram_new2".}
proc fcQNetworkDatagram_new3(other: pointer): ptr cQNetworkDatagram {.importc: "QNetworkDatagram_new3".}
proc fcQNetworkDatagram_new4(data: struct_miqt_string, destinationAddress: pointer): ptr cQNetworkDatagram {.importc: "QNetworkDatagram_new4".}
proc fcQNetworkDatagram_new5(data: struct_miqt_string, destinationAddress: pointer, port: cushort): ptr cQNetworkDatagram {.importc: "QNetworkDatagram_new5".}

proc operatorAssign*(self: gen_qnetworkdatagram_types.QNetworkDatagram, other: gen_qnetworkdatagram_types.QNetworkDatagram): void =
  fcQNetworkDatagram_operatorAssign(self.h, other.h)

proc swap*(self: gen_qnetworkdatagram_types.QNetworkDatagram, other: gen_qnetworkdatagram_types.QNetworkDatagram): void =
  fcQNetworkDatagram_swap(self.h, other.h)

proc clear*(self: gen_qnetworkdatagram_types.QNetworkDatagram): void =
  fcQNetworkDatagram_clear(self.h)

proc isValid*(self: gen_qnetworkdatagram_types.QNetworkDatagram): bool =
  fcQNetworkDatagram_isValid(self.h)

proc isNull*(self: gen_qnetworkdatagram_types.QNetworkDatagram): bool =
  fcQNetworkDatagram_isNull(self.h)

proc interfaceIndex*(self: gen_qnetworkdatagram_types.QNetworkDatagram): cuint =
  fcQNetworkDatagram_interfaceIndex(self.h)

proc setInterfaceIndex*(self: gen_qnetworkdatagram_types.QNetworkDatagram, index: cuint): void =
  fcQNetworkDatagram_setInterfaceIndex(self.h, index)

proc senderAddress*(self: gen_qnetworkdatagram_types.QNetworkDatagram): gen_qhostaddress_types.QHostAddress =
  gen_qhostaddress_types.QHostAddress(h: fcQNetworkDatagram_senderAddress(self.h), owned: true)

proc destinationAddress*(self: gen_qnetworkdatagram_types.QNetworkDatagram): gen_qhostaddress_types.QHostAddress =
  gen_qhostaddress_types.QHostAddress(h: fcQNetworkDatagram_destinationAddress(self.h), owned: true)

proc senderPort*(self: gen_qnetworkdatagram_types.QNetworkDatagram): cint =
  fcQNetworkDatagram_senderPort(self.h)

proc destinationPort*(self: gen_qnetworkdatagram_types.QNetworkDatagram): cint =
  fcQNetworkDatagram_destinationPort(self.h)

proc setSender*(self: gen_qnetworkdatagram_types.QNetworkDatagram, address: gen_qhostaddress_types.QHostAddress): void =
  fcQNetworkDatagram_setSender(self.h, address.h)

proc setDestination*(self: gen_qnetworkdatagram_types.QNetworkDatagram, address: gen_qhostaddress_types.QHostAddress, port: cushort): void =
  fcQNetworkDatagram_setDestination(self.h, address.h, port)

proc hopLimit*(self: gen_qnetworkdatagram_types.QNetworkDatagram): cint =
  fcQNetworkDatagram_hopLimit(self.h)

proc setHopLimit*(self: gen_qnetworkdatagram_types.QNetworkDatagram, count: cint): void =
  fcQNetworkDatagram_setHopLimit(self.h, count)

proc data*(self: gen_qnetworkdatagram_types.QNetworkDatagram): seq[byte] =
  var v_bytearray = fcQNetworkDatagram_data(self.h)
  var vx_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](v_bytearray.data), 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc setData*(self: gen_qnetworkdatagram_types.QNetworkDatagram, data: openArray[byte]): void =
  fcQNetworkDatagram_setData(self.h, struct_miqt_string(data: cast[cstring](if len(data) == 0: nil else: unsafeAddr data[0]), len: csize_t(len(data))))

proc makeReply*(self: gen_qnetworkdatagram_types.QNetworkDatagram, payload: openArray[byte]): gen_qnetworkdatagram_types.QNetworkDatagram =
  gen_qnetworkdatagram_types.QNetworkDatagram(h: fcQNetworkDatagram_makeReply(self.h, struct_miqt_string(data: cast[cstring](if len(payload) == 0: nil else: unsafeAddr payload[0]), len: csize_t(len(payload)))), owned: true)

proc setSender*(self: gen_qnetworkdatagram_types.QNetworkDatagram, address: gen_qhostaddress_types.QHostAddress, port: cushort): void =
  fcQNetworkDatagram_setSender2(self.h, address.h, port)

proc create*(T: type gen_qnetworkdatagram_types.QNetworkDatagram): gen_qnetworkdatagram_types.QNetworkDatagram =
  gen_qnetworkdatagram_types.QNetworkDatagram(h: fcQNetworkDatagram_new(), owned: true)

proc create*(T: type gen_qnetworkdatagram_types.QNetworkDatagram,
    data: openArray[byte]): gen_qnetworkdatagram_types.QNetworkDatagram =
  gen_qnetworkdatagram_types.QNetworkDatagram(h: fcQNetworkDatagram_new2(struct_miqt_string(data: cast[cstring](if len(data) == 0: nil else: unsafeAddr data[0]), len: csize_t(len(data)))), owned: true)

proc create*(T: type gen_qnetworkdatagram_types.QNetworkDatagram,
    other: gen_qnetworkdatagram_types.QNetworkDatagram): gen_qnetworkdatagram_types.QNetworkDatagram =
  gen_qnetworkdatagram_types.QNetworkDatagram(h: fcQNetworkDatagram_new3(other.h), owned: true)

proc create*(T: type gen_qnetworkdatagram_types.QNetworkDatagram,
    data: openArray[byte], destinationAddress: gen_qhostaddress_types.QHostAddress): gen_qnetworkdatagram_types.QNetworkDatagram =
  gen_qnetworkdatagram_types.QNetworkDatagram(h: fcQNetworkDatagram_new4(struct_miqt_string(data: cast[cstring](if len(data) == 0: nil else: unsafeAddr data[0]), len: csize_t(len(data))), destinationAddress.h), owned: true)

proc create*(T: type gen_qnetworkdatagram_types.QNetworkDatagram,
    data: openArray[byte], destinationAddress: gen_qhostaddress_types.QHostAddress, port: cushort): gen_qnetworkdatagram_types.QNetworkDatagram =
  gen_qnetworkdatagram_types.QNetworkDatagram(h: fcQNetworkDatagram_new5(struct_miqt_string(data: cast[cstring](if len(data) == 0: nil else: unsafeAddr data[0]), len: csize_t(len(data))), destinationAddress.h, port), owned: true)

