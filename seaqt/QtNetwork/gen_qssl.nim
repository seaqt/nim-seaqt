import ./Qt6Network_libs

{.push raises: [].}

from system/ansi_c import c_free, c_malloc

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

const cflags = gorge("pkg-config --cflags Qt6Network") & " -fPIC"
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
template TlsV1_2*(_: type QSslSslProtocolEnum): untyped = 0
template AnyProtocol*(_: type QSslSslProtocolEnum): untyped = 1
template SecureProtocols*(_: type QSslSslProtocolEnum): untyped = 2
template TlsV1_2OrLater*(_: type QSslSslProtocolEnum): untyped = 3
template DtlsV1_2*(_: type QSslSslProtocolEnum): untyped = 4
template DtlsV1_2OrLater*(_: type QSslSslProtocolEnum): untyped = 5
template TlsV1_3*(_: type QSslSslProtocolEnum): untyped = 6
template TlsV1_3OrLater*(_: type QSslSslProtocolEnum): untyped = 7
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


type QSslAlertLevelEnum* = distinct cint
template Warning*(_: type QSslAlertLevelEnum): untyped = 0
template Fatal*(_: type QSslAlertLevelEnum): untyped = 1
template Unknown*(_: type QSslAlertLevelEnum): untyped = 2


type QSslAlertTypeEnum* = distinct cint
template CloseNotify*(_: type QSslAlertTypeEnum): untyped = 0
template UnexpectedMessage*(_: type QSslAlertTypeEnum): untyped = 10
template BadRecordMac*(_: type QSslAlertTypeEnum): untyped = 20
template RecordOverflow*(_: type QSslAlertTypeEnum): untyped = 22
template DecompressionFailure*(_: type QSslAlertTypeEnum): untyped = 30
template HandshakeFailure*(_: type QSslAlertTypeEnum): untyped = 40
template NoCertificate*(_: type QSslAlertTypeEnum): untyped = 41
template BadCertificate*(_: type QSslAlertTypeEnum): untyped = 42
template UnsupportedCertificate*(_: type QSslAlertTypeEnum): untyped = 43
template CertificateRevoked*(_: type QSslAlertTypeEnum): untyped = 44
template CertificateExpired*(_: type QSslAlertTypeEnum): untyped = 45
template CertificateUnknown*(_: type QSslAlertTypeEnum): untyped = 46
template IllegalParameter*(_: type QSslAlertTypeEnum): untyped = 47
template UnknownCa*(_: type QSslAlertTypeEnum): untyped = 48
template AccessDenied*(_: type QSslAlertTypeEnum): untyped = 49
template DecodeError*(_: type QSslAlertTypeEnum): untyped = 50
template DecryptError*(_: type QSslAlertTypeEnum): untyped = 51
template ExportRestriction*(_: type QSslAlertTypeEnum): untyped = 60
template ProtocolVersion*(_: type QSslAlertTypeEnum): untyped = 70
template InsufficientSecurity*(_: type QSslAlertTypeEnum): untyped = 71
template InternalError*(_: type QSslAlertTypeEnum): untyped = 80
template InappropriateFallback*(_: type QSslAlertTypeEnum): untyped = 86
template UserCancelled*(_: type QSslAlertTypeEnum): untyped = 90
template NoRenegotiation*(_: type QSslAlertTypeEnum): untyped = 100
template MissingExtension*(_: type QSslAlertTypeEnum): untyped = 109
template UnsupportedExtension*(_: type QSslAlertTypeEnum): untyped = 110
template CertificateUnobtainable*(_: type QSslAlertTypeEnum): untyped = 111
template UnrecognizedName*(_: type QSslAlertTypeEnum): untyped = 112
template BadCertificateStatusResponse*(_: type QSslAlertTypeEnum): untyped = 113
template BadCertificateHashValue*(_: type QSslAlertTypeEnum): untyped = 114
template UnknownPskIdentity*(_: type QSslAlertTypeEnum): untyped = 115
template CertificateRequired*(_: type QSslAlertTypeEnum): untyped = 116
template NoApplicationProtocol*(_: type QSslAlertTypeEnum): untyped = 120
template UnknownAlertMessage*(_: type QSslAlertTypeEnum): untyped = 255


type QSslImplementedClassEnum* = distinct cint
template Key*(_: type QSslImplementedClassEnum): untyped = 0
template Certificate*(_: type QSslImplementedClassEnum): untyped = 1
template Socket*(_: type QSslImplementedClassEnum): untyped = 2
template DiffieHellman*(_: type QSslImplementedClassEnum): untyped = 3
template EllipticCurve*(_: type QSslImplementedClassEnum): untyped = 4
template Dtls*(_: type QSslImplementedClassEnum): untyped = 5
template DtlsCookie*(_: type QSslImplementedClassEnum): untyped = 6


type QSslSupportedFeatureEnum* = distinct cint
template CertificateVerification*(_: type QSslSupportedFeatureEnum): untyped = 0
template ClientSideAlpn*(_: type QSslSupportedFeatureEnum): untyped = 1
template ServerSideAlpn*(_: type QSslSupportedFeatureEnum): untyped = 2
template Ocsp*(_: type QSslSupportedFeatureEnum): untyped = 3
template Psk*(_: type QSslSupportedFeatureEnum): untyped = 4
template SessionTicket*(_: type QSslSupportedFeatureEnum): untyped = 5
template Alerts*(_: type QSslSupportedFeatureEnum): untyped = 6


import ./gen_qssl_types
export gen_qssl_types




