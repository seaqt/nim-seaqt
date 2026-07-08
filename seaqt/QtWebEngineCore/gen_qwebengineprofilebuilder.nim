import ./qtwebenginecore_pkg

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


import ./gen_qwebengineprofilebuilder_types
export gen_qwebengineprofilebuilder_types

import
  ../QtCore/gen_qobject_types,
  ../QtNetwork/gen_qsslcertificate_types,
  ./gen_qwebengineprofile_types
export
  gen_qobject_types,
  gen_qsslcertificate_types,
  gen_qwebengineprofile_types

type cQWebEngineProfileBuilder*{.exportc: "QWebEngineProfileBuilder", incompleteStruct.} = object

proc fcQWebEngineProfileBuilder_createProfileStorageName(self: pointer, storageName: struct_seaqt_string): pointer {.importc: "QWebEngineProfileBuilder_createProfile_storageName".}
proc fcQWebEngineProfileBuilder_createOffTheRecordProfile(): pointer {.importc: "QWebEngineProfileBuilder_createOffTheRecordProfile".}
proc fcQWebEngineProfileBuilder_setPersistentStoragePath(self: pointer, path: struct_seaqt_string): pointer {.importc: "QWebEngineProfileBuilder_setPersistentStoragePath".}
proc fcQWebEngineProfileBuilder_setCachePath(self: pointer, path: struct_seaqt_string): pointer {.importc: "QWebEngineProfileBuilder_setCachePath".}
proc fcQWebEngineProfileBuilder_setHttpCacheType(self: pointer, httpCacheType: cint): pointer {.importc: "QWebEngineProfileBuilder_setHttpCacheType".}
proc fcQWebEngineProfileBuilder_setPersistentCookiesPolicy(self: pointer, persistentCookiesPolicy: cint): pointer {.importc: "QWebEngineProfileBuilder_setPersistentCookiesPolicy".}
proc fcQWebEngineProfileBuilder_setHttpCacheMaximumSize(self: pointer, maxSizeInBytes: cint): pointer {.importc: "QWebEngineProfileBuilder_setHttpCacheMaximumSize".}
proc fcQWebEngineProfileBuilder_setPersistentPermissionsPolicy(self: pointer, persistentPermissionPolicy: cint): pointer {.importc: "QWebEngineProfileBuilder_setPersistentPermissionsPolicy".}
proc fcQWebEngineProfileBuilder_setAdditionalTrustedCertificates(self: pointer, additionalTrustedCertificates: struct_seaqt_array): pointer {.importc: "QWebEngineProfileBuilder_setAdditionalTrustedCertificates".}
proc fcQWebEngineProfileBuilder_createProfileStorageNameParent(self: pointer, storageName: struct_seaqt_string, parent: pointer): pointer {.importc: "QWebEngineProfileBuilder_createProfile_storageName_parent".}
proc fcQWebEngineProfileBuilder_createOffTheRecordProfileParent(parent: pointer): pointer {.importc: "QWebEngineProfileBuilder_createOffTheRecordProfile_parent".}
proc fcQWebEngineProfileBuilder_new(): ptr cQWebEngineProfileBuilder {.importc: "QWebEngineProfileBuilder_new".}

proc createProfile*(self: gen_qwebengineprofilebuilder_types.QWebEngineProfileBuilder, storageName: openArray[char]): gen_qwebengineprofile_types.QWebEngineProfile =
  gen_qwebengineprofile_types.QWebEngineProfile(h: fcQWebEngineProfileBuilder_createProfileStorageName(self.h, struct_seaqt_string(data: if len(storageName) > 0: addr storageName[0] else: nil, len: csize_t(len(storageName)))), owned: false)

proc createOffTheRecordProfile*(_: type gen_qwebengineprofilebuilder_types.QWebEngineProfileBuilder): gen_qwebengineprofile_types.QWebEngineProfile =
  gen_qwebengineprofile_types.QWebEngineProfile(h: fcQWebEngineProfileBuilder_createOffTheRecordProfile(), owned: false)

proc setPersistentStoragePath*(self: gen_qwebengineprofilebuilder_types.QWebEngineProfileBuilder, path: openArray[char]): gen_qwebengineprofilebuilder_types.QWebEngineProfileBuilder =
  gen_qwebengineprofilebuilder_types.QWebEngineProfileBuilder(h: fcQWebEngineProfileBuilder_setPersistentStoragePath(self.h, struct_seaqt_string(data: if len(path) > 0: addr path[0] else: nil, len: csize_t(len(path)))), owned: false)

proc setCachePath*(self: gen_qwebengineprofilebuilder_types.QWebEngineProfileBuilder, path: openArray[char]): gen_qwebengineprofilebuilder_types.QWebEngineProfileBuilder =
  gen_qwebengineprofilebuilder_types.QWebEngineProfileBuilder(h: fcQWebEngineProfileBuilder_setCachePath(self.h, struct_seaqt_string(data: if len(path) > 0: addr path[0] else: nil, len: csize_t(len(path)))), owned: false)

proc setHttpCacheType*(self: gen_qwebengineprofilebuilder_types.QWebEngineProfileBuilder, httpCacheType: cint): gen_qwebengineprofilebuilder_types.QWebEngineProfileBuilder =
  gen_qwebengineprofilebuilder_types.QWebEngineProfileBuilder(h: fcQWebEngineProfileBuilder_setHttpCacheType(self.h, cint(httpCacheType)), owned: false)

proc setPersistentCookiesPolicy*(self: gen_qwebengineprofilebuilder_types.QWebEngineProfileBuilder, persistentCookiesPolicy: cint): gen_qwebengineprofilebuilder_types.QWebEngineProfileBuilder =
  gen_qwebengineprofilebuilder_types.QWebEngineProfileBuilder(h: fcQWebEngineProfileBuilder_setPersistentCookiesPolicy(self.h, cint(persistentCookiesPolicy)), owned: false)

proc setHttpCacheMaximumSize*(self: gen_qwebengineprofilebuilder_types.QWebEngineProfileBuilder, maxSizeInBytes: cint): gen_qwebengineprofilebuilder_types.QWebEngineProfileBuilder =
  gen_qwebengineprofilebuilder_types.QWebEngineProfileBuilder(h: fcQWebEngineProfileBuilder_setHttpCacheMaximumSize(self.h, maxSizeInBytes), owned: false)

proc setPersistentPermissionsPolicy*(self: gen_qwebengineprofilebuilder_types.QWebEngineProfileBuilder, persistentPermissionPolicy: cint): gen_qwebengineprofilebuilder_types.QWebEngineProfileBuilder =
  gen_qwebengineprofilebuilder_types.QWebEngineProfileBuilder(h: fcQWebEngineProfileBuilder_setPersistentPermissionsPolicy(self.h, cint(persistentPermissionPolicy)), owned: false)

proc setAdditionalTrustedCertificates*(self: gen_qwebengineprofilebuilder_types.QWebEngineProfileBuilder, additionalTrustedCertificates: openArray[gen_qsslcertificate_types.QSslCertificate]): gen_qwebengineprofilebuilder_types.QWebEngineProfileBuilder =
  var additionalTrustedCertificates_CArray = newSeq[pointer](len(additionalTrustedCertificates))
  for i in 0..<len(additionalTrustedCertificates):
    additionalTrustedCertificates_CArray[i] = additionalTrustedCertificates[i].h

  gen_qwebengineprofilebuilder_types.QWebEngineProfileBuilder(h: fcQWebEngineProfileBuilder_setAdditionalTrustedCertificates(self.h, struct_seaqt_array(len: csize_t(len(additionalTrustedCertificates)), data: if len(additionalTrustedCertificates) == 0: nil else: addr(additionalTrustedCertificates_CArray[0]))), owned: false)

proc createProfile*(self: gen_qwebengineprofilebuilder_types.QWebEngineProfileBuilder, storageName: openArray[char], parent: gen_qobject_types.QObject): gen_qwebengineprofile_types.QWebEngineProfile =
  gen_qwebengineprofile_types.QWebEngineProfile(h: fcQWebEngineProfileBuilder_createProfileStorageNameParent(self.h, struct_seaqt_string(data: if len(storageName) > 0: addr storageName[0] else: nil, len: csize_t(len(storageName))), parent.h), owned: false)

proc createOffTheRecordProfile*(_: type gen_qwebengineprofilebuilder_types.QWebEngineProfileBuilder, parent: gen_qobject_types.QObject): gen_qwebengineprofile_types.QWebEngineProfile =
  gen_qwebengineprofile_types.QWebEngineProfile(h: fcQWebEngineProfileBuilder_createOffTheRecordProfileParent(parent.h), owned: false)

proc create*(T: type gen_qwebengineprofilebuilder_types.QWebEngineProfileBuilder): gen_qwebengineprofilebuilder_types.QWebEngineProfileBuilder =
  let tmp = gen_qwebengineprofilebuilder_types.QWebEngineProfileBuilder(h: fcQWebEngineProfileBuilder_new(), owned: true)
  tmp
