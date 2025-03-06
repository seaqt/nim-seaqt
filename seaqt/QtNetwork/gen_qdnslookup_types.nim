type QDnsDomainNameRecord* {.inheritable, pure.} = object
  h*: pointer
type QDnsHostAddressRecord* {.inheritable, pure.} = object
  h*: pointer
type QDnsMailExchangeRecord* {.inheritable, pure.} = object
  h*: pointer
type QDnsServiceRecord* {.inheritable, pure.} = object
  h*: pointer
type QDnsTextRecord* {.inheritable, pure.} = object
  h*: pointer
import ../QtCore/gen_qobject_types
export gen_qobject_types

type QDnsLookup* = object of gen_qobject_types.QObject
