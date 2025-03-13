import ./Qt5Network_libs

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

const cflags = gorge("pkg-config --cflags Qt5Network") & " -fPIC"
{.compile("gen_qssl.cpp", cflags).}


type QSslKeyTypeEnum* = distinct cint
template PrivateKey*(_: type QSslKeyTypeEnum): untyped = 0
template PublicKey*(_: type QSslKeyTypeEnum): untyped = 1


type QSslEncodingFormatEnum* = distinct cint
template Pem*(_: type QSslEncodingFormatEnum): untyped = 0
template Der*(_: type QSslEncodingFormatEnum): untyped = 1


type QSslKeyAlgorithmEnum* = distinct cint
template Opaque*(_: type QSslKeyAlgorithmEnum): untyped = 0
template Rsa*(_: type QSslKeyAlgorithmEnum): untyped = 1
template Dsa*(_: type QSslKeyAlgorithmEnum): untyped = 2
template Ec*(_: type QSslKeyAlgorithmEnum): untyped = 3
template Dh*(_: type QSslKeyAlgorithmEnum): untyped = 4


type QSslAlternativeNameEntryTypeEnum* = distinct cint
template EmailEntry*(_: type QSslAlternativeNameEntryTypeEnum): untyped = 0
template DnsEntry*(_: type QSslAlternativeNameEntryTypeEnum): untyped = 1
template IpAddressEntry*(_: type QSslAlternativeNameEntryTypeEnum): untyped = 2


type QSslSslProtocolEnum* = distinct cint
template SslV3*(_: type QSslSslProtocolEnum): untyped = 0
template SslV2*(_: type QSslSslProtocolEnum): untyped = 1
template TlsV1_0*(_: type QSslSslProtocolEnum): untyped = 2
template TlsV1_1*(_: type QSslSslProtocolEnum): untyped = 3
template TlsV1_2*(_: type QSslSslProtocolEnum): untyped = 4
template AnyProtocol*(_: type QSslSslProtocolEnum): untyped = 5
template TlsV1SslV3*(_: type QSslSslProtocolEnum): untyped = 6
template SecureProtocols*(_: type QSslSslProtocolEnum): untyped = 7
template TlsV1_0OrLater*(_: type QSslSslProtocolEnum): untyped = 8
template TlsV1_1OrLater*(_: type QSslSslProtocolEnum): untyped = 9
template TlsV1_2OrLater*(_: type QSslSslProtocolEnum): untyped = 10
template DtlsV1_0*(_: type QSslSslProtocolEnum): untyped = 11
template DtlsV1_0OrLater*(_: type QSslSslProtocolEnum): untyped = 12
template DtlsV1_2*(_: type QSslSslProtocolEnum): untyped = 13
template DtlsV1_2OrLater*(_: type QSslSslProtocolEnum): untyped = 14
template TlsV1_3*(_: type QSslSslProtocolEnum): untyped = 15
template TlsV1_3OrLater*(_: type QSslSslProtocolEnum): untyped = 16
template UnknownProtocol*(_: type QSslSslProtocolEnum): untyped = -1


type QSslSslOptionEnum* = distinct cint
template SslOptionDisableEmptyFragments*(_: type QSslSslOptionEnum): untyped = 1
template SslOptionDisableSessionTickets*(_: type QSslSslOptionEnum): untyped = 2
template SslOptionDisableCompression*(_: type QSslSslOptionEnum): untyped = 4
template SslOptionDisableServerNameIndication*(_: type QSslSslOptionEnum): untyped = 8
template SslOptionDisableLegacyRenegotiation*(_: type QSslSslOptionEnum): untyped = 16
template SslOptionDisableSessionSharing*(_: type QSslSslOptionEnum): untyped = 32
template SslOptionDisableSessionPersistence*(_: type QSslSslOptionEnum): untyped = 64
template SslOptionDisableServerCipherPreference*(_: type QSslSslOptionEnum): untyped = 128


import ./gen_qssl_types
export gen_qssl_types




