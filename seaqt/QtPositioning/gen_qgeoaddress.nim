import ./qtpositioning_pkg

{.push raises: [].}

from system/ansi_c import c_free

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


import ./gen_qgeoaddress_types
export gen_qgeoaddress_types


type cQGeoAddress*{.exportc: "QGeoAddress", incompleteStruct.} = object

proc fcQGeoAddress_operatorAssign(self: pointer, other: pointer): void {.importc: "QGeoAddress_operatorAssign".}
proc fcQGeoAddress_swap(self: pointer, other: pointer): void {.importc: "QGeoAddress_swap".}
proc fcQGeoAddress_text(self: pointer): struct_seaqt_string {.importc: "QGeoAddress_text".}
proc fcQGeoAddress_setText(self: pointer, text: struct_seaqt_string): void {.importc: "QGeoAddress_setText".}
proc fcQGeoAddress_country(self: pointer): struct_seaqt_string {.importc: "QGeoAddress_country".}
proc fcQGeoAddress_setCountry(self: pointer, country: struct_seaqt_string): void {.importc: "QGeoAddress_setCountry".}
proc fcQGeoAddress_countryCode(self: pointer): struct_seaqt_string {.importc: "QGeoAddress_countryCode".}
proc fcQGeoAddress_setCountryCode(self: pointer, countryCode: struct_seaqt_string): void {.importc: "QGeoAddress_setCountryCode".}
proc fcQGeoAddress_state(self: pointer): struct_seaqt_string {.importc: "QGeoAddress_state".}
proc fcQGeoAddress_setState(self: pointer, state: struct_seaqt_string): void {.importc: "QGeoAddress_setState".}
proc fcQGeoAddress_county(self: pointer): struct_seaqt_string {.importc: "QGeoAddress_county".}
proc fcQGeoAddress_setCounty(self: pointer, county: struct_seaqt_string): void {.importc: "QGeoAddress_setCounty".}
proc fcQGeoAddress_city(self: pointer): struct_seaqt_string {.importc: "QGeoAddress_city".}
proc fcQGeoAddress_setCity(self: pointer, city: struct_seaqt_string): void {.importc: "QGeoAddress_setCity".}
proc fcQGeoAddress_district(self: pointer): struct_seaqt_string {.importc: "QGeoAddress_district".}
proc fcQGeoAddress_setDistrict(self: pointer, district: struct_seaqt_string): void {.importc: "QGeoAddress_setDistrict".}
proc fcQGeoAddress_postalCode(self: pointer): struct_seaqt_string {.importc: "QGeoAddress_postalCode".}
proc fcQGeoAddress_setPostalCode(self: pointer, postalCode: struct_seaqt_string): void {.importc: "QGeoAddress_setPostalCode".}
proc fcQGeoAddress_street(self: pointer): struct_seaqt_string {.importc: "QGeoAddress_street".}
proc fcQGeoAddress_setStreet(self: pointer, street: struct_seaqt_string): void {.importc: "QGeoAddress_setStreet".}
proc fcQGeoAddress_streetNumber(self: pointer): struct_seaqt_string {.importc: "QGeoAddress_streetNumber".}
proc fcQGeoAddress_setStreetNumber(self: pointer, streetNumber: struct_seaqt_string): void {.importc: "QGeoAddress_setStreetNumber".}
proc fcQGeoAddress_isEmpty(self: pointer): bool {.importc: "QGeoAddress_isEmpty".}
proc fcQGeoAddress_clear(self: pointer): void {.importc: "QGeoAddress_clear".}
proc fcQGeoAddress_isTextGenerated(self: pointer): bool {.importc: "QGeoAddress_isTextGenerated".}
proc fcQGeoAddress_new(): ptr cQGeoAddress {.importc: "QGeoAddress_new".}
proc fcQGeoAddress_new2(other: pointer): ptr cQGeoAddress {.importc: "QGeoAddress_new2".}
proc fcQGeoAddress_delete(self: pointer) {.importc: "QGeoAddress_delete".}

proc operatorAssign*(self: gen_qgeoaddress_types.QGeoAddress, other: gen_qgeoaddress_types.QGeoAddress): void =
  fcQGeoAddress_operatorAssign(self.h, other.h)

proc swap*(self: gen_qgeoaddress_types.QGeoAddress, other: gen_qgeoaddress_types.QGeoAddress): void =
  fcQGeoAddress_swap(self.h, other.h)

proc text*(self: gen_qgeoaddress_types.QGeoAddress): string =
  let v_ms = fcQGeoAddress_text(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc setText*(self: gen_qgeoaddress_types.QGeoAddress, text: openArray[char]): void =
  fcQGeoAddress_setText(self.h, struct_seaqt_string(data: if len(text) > 0: addr text[0] else: nil, len: csize_t(len(text))))

proc country*(self: gen_qgeoaddress_types.QGeoAddress): string =
  let v_ms = fcQGeoAddress_country(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc setCountry*(self: gen_qgeoaddress_types.QGeoAddress, country: openArray[char]): void =
  fcQGeoAddress_setCountry(self.h, struct_seaqt_string(data: if len(country) > 0: addr country[0] else: nil, len: csize_t(len(country))))

proc countryCode*(self: gen_qgeoaddress_types.QGeoAddress): string =
  let v_ms = fcQGeoAddress_countryCode(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc setCountryCode*(self: gen_qgeoaddress_types.QGeoAddress, countryCode: openArray[char]): void =
  fcQGeoAddress_setCountryCode(self.h, struct_seaqt_string(data: if len(countryCode) > 0: addr countryCode[0] else: nil, len: csize_t(len(countryCode))))

proc state*(self: gen_qgeoaddress_types.QGeoAddress): string =
  let v_ms = fcQGeoAddress_state(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc setState*(self: gen_qgeoaddress_types.QGeoAddress, state: openArray[char]): void =
  fcQGeoAddress_setState(self.h, struct_seaqt_string(data: if len(state) > 0: addr state[0] else: nil, len: csize_t(len(state))))

proc county*(self: gen_qgeoaddress_types.QGeoAddress): string =
  let v_ms = fcQGeoAddress_county(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc setCounty*(self: gen_qgeoaddress_types.QGeoAddress, county: openArray[char]): void =
  fcQGeoAddress_setCounty(self.h, struct_seaqt_string(data: if len(county) > 0: addr county[0] else: nil, len: csize_t(len(county))))

proc city*(self: gen_qgeoaddress_types.QGeoAddress): string =
  let v_ms = fcQGeoAddress_city(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc setCity*(self: gen_qgeoaddress_types.QGeoAddress, city: openArray[char]): void =
  fcQGeoAddress_setCity(self.h, struct_seaqt_string(data: if len(city) > 0: addr city[0] else: nil, len: csize_t(len(city))))

proc district*(self: gen_qgeoaddress_types.QGeoAddress): string =
  let v_ms = fcQGeoAddress_district(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc setDistrict*(self: gen_qgeoaddress_types.QGeoAddress, district: openArray[char]): void =
  fcQGeoAddress_setDistrict(self.h, struct_seaqt_string(data: if len(district) > 0: addr district[0] else: nil, len: csize_t(len(district))))

proc postalCode*(self: gen_qgeoaddress_types.QGeoAddress): string =
  let v_ms = fcQGeoAddress_postalCode(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc setPostalCode*(self: gen_qgeoaddress_types.QGeoAddress, postalCode: openArray[char]): void =
  fcQGeoAddress_setPostalCode(self.h, struct_seaqt_string(data: if len(postalCode) > 0: addr postalCode[0] else: nil, len: csize_t(len(postalCode))))

proc street*(self: gen_qgeoaddress_types.QGeoAddress): string =
  let v_ms = fcQGeoAddress_street(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc setStreet*(self: gen_qgeoaddress_types.QGeoAddress, street: openArray[char]): void =
  fcQGeoAddress_setStreet(self.h, struct_seaqt_string(data: if len(street) > 0: addr street[0] else: nil, len: csize_t(len(street))))

proc streetNumber*(self: gen_qgeoaddress_types.QGeoAddress): string =
  let v_ms = fcQGeoAddress_streetNumber(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc setStreetNumber*(self: gen_qgeoaddress_types.QGeoAddress, streetNumber: openArray[char]): void =
  fcQGeoAddress_setStreetNumber(self.h, struct_seaqt_string(data: if len(streetNumber) > 0: addr streetNumber[0] else: nil, len: csize_t(len(streetNumber))))

proc isEmpty*(self: gen_qgeoaddress_types.QGeoAddress): bool =
  fcQGeoAddress_isEmpty(self.h)

proc clear*(self: gen_qgeoaddress_types.QGeoAddress): void =
  fcQGeoAddress_clear(self.h)

proc isTextGenerated*(self: gen_qgeoaddress_types.QGeoAddress): bool =
  fcQGeoAddress_isTextGenerated(self.h)

proc create*(T: type gen_qgeoaddress_types.QGeoAddress): gen_qgeoaddress_types.QGeoAddress =
  let tmp = gen_qgeoaddress_types.QGeoAddress(h: fcQGeoAddress_new())
  tmp
proc create*(T: type gen_qgeoaddress_types.QGeoAddress,
    other: gen_qgeoaddress_types.QGeoAddress): gen_qgeoaddress_types.QGeoAddress =
  let tmp = gen_qgeoaddress_types.QGeoAddress(h: fcQGeoAddress_new2(other.h))
  tmp
proc delete*(self: gen_qgeoaddress_types.QGeoAddress) =
  fcQGeoAddress_delete(self.h)
