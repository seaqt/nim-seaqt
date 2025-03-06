type QDnsDomainNameRecord* {.inheritable.} = object
  h*: pointer
  owned*: bool

const cflags = gorge("pkg-config --cflags Qt6Network") & " -fPIC"
{.compile("gen_qdnslookup.cpp", cflags).}

proc fcQDnsDomainNameRecord_delete(self: pointer) {.importc: "QDnsDomainNameRecord_delete".}
proc `=destroy`(self: var QDnsDomainNameRecord) =
  if self.owned: fcQDnsDomainNameRecord_delete(self.h)

proc `=sink`(dest: var QDnsDomainNameRecord, source: QDnsDomainNameRecord) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QDnsDomainNameRecord, source: QDnsDomainNameRecord) {.error.}
proc delete*(self: sink QDnsDomainNameRecord) =
  let h = self.h
  wasMoved(self)
  fcQDnsDomainNameRecord_delete(h)

type QDnsHostAddressRecord* {.inheritable.} = object
  h*: pointer
  owned*: bool

proc fcQDnsHostAddressRecord_delete(self: pointer) {.importc: "QDnsHostAddressRecord_delete".}
proc `=destroy`(self: var QDnsHostAddressRecord) =
  if self.owned: fcQDnsHostAddressRecord_delete(self.h)

proc `=sink`(dest: var QDnsHostAddressRecord, source: QDnsHostAddressRecord) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QDnsHostAddressRecord, source: QDnsHostAddressRecord) {.error.}
proc delete*(self: sink QDnsHostAddressRecord) =
  let h = self.h
  wasMoved(self)
  fcQDnsHostAddressRecord_delete(h)

type QDnsMailExchangeRecord* {.inheritable.} = object
  h*: pointer
  owned*: bool

proc fcQDnsMailExchangeRecord_delete(self: pointer) {.importc: "QDnsMailExchangeRecord_delete".}
proc `=destroy`(self: var QDnsMailExchangeRecord) =
  if self.owned: fcQDnsMailExchangeRecord_delete(self.h)

proc `=sink`(dest: var QDnsMailExchangeRecord, source: QDnsMailExchangeRecord) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QDnsMailExchangeRecord, source: QDnsMailExchangeRecord) {.error.}
proc delete*(self: sink QDnsMailExchangeRecord) =
  let h = self.h
  wasMoved(self)
  fcQDnsMailExchangeRecord_delete(h)

type QDnsServiceRecord* {.inheritable.} = object
  h*: pointer
  owned*: bool

proc fcQDnsServiceRecord_delete(self: pointer) {.importc: "QDnsServiceRecord_delete".}
proc `=destroy`(self: var QDnsServiceRecord) =
  if self.owned: fcQDnsServiceRecord_delete(self.h)

proc `=sink`(dest: var QDnsServiceRecord, source: QDnsServiceRecord) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QDnsServiceRecord, source: QDnsServiceRecord) {.error.}
proc delete*(self: sink QDnsServiceRecord) =
  let h = self.h
  wasMoved(self)
  fcQDnsServiceRecord_delete(h)

type QDnsTextRecord* {.inheritable.} = object
  h*: pointer
  owned*: bool

proc fcQDnsTextRecord_delete(self: pointer) {.importc: "QDnsTextRecord_delete".}
proc `=destroy`(self: var QDnsTextRecord) =
  if self.owned: fcQDnsTextRecord_delete(self.h)

proc `=sink`(dest: var QDnsTextRecord, source: QDnsTextRecord) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QDnsTextRecord, source: QDnsTextRecord) {.error.}
proc delete*(self: sink QDnsTextRecord) =
  let h = self.h
  wasMoved(self)
  fcQDnsTextRecord_delete(h)

import ../QtCore/gen_qobject_types
export gen_qobject_types

type QDnsLookup* = object of gen_qobject_types.QObject
