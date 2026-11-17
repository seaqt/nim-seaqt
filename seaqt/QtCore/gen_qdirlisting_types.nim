type QDirListing* {.inheritable.} = object
  h*: pointer
  owned*: bool

import ./qtcore_pkg

{.compile("gen_qdirlisting.cpp", QtCoreCFlags).}

proc fcQDirListing_delete(self: pointer) {.importc: "QDirListing_delete".}
proc `=destroy`(self: var QDirListing) =
  if self.owned: fcQDirListing_delete(self.h)

proc `=sink`(dest: var QDirListing, source: QDirListing) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QDirListing, source: QDirListing) {.error.}
proc delete*(self: sink QDirListing) =
  let h = self.h
  wasMoved(self)
  fcQDirListing_delete(h)

type QDirListingDirEntry* {.inheritable.} = object
  h*: pointer
  owned*: bool

proc fcQDirListingDirEntry_delete(self: pointer) {.importc: "QDirListing__DirEntry_delete".}
proc `=destroy`(self: var QDirListingDirEntry) =
  if self.owned: fcQDirListingDirEntry_delete(self.h)

proc `=sink`(dest: var QDirListingDirEntry, source: QDirListingDirEntry) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QDirListingDirEntry, source: QDirListingDirEntry) {.error.}
proc delete*(self: sink QDirListingDirEntry) =
  let h = self.h
  wasMoved(self)
  fcQDirListingDirEntry_delete(h)

type QDirListingsentinel* {.inheritable.} = object
  h*: pointer
  owned*: bool

proc fcQDirListingsentinel_delete(self: pointer) {.importc: "QDirListing__sentinel_delete".}
proc `=destroy`(self: var QDirListingsentinel) =
  if self.owned: fcQDirListingsentinel_delete(self.h)

proc `=sink`(dest: var QDirListingsentinel, source: QDirListingsentinel) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QDirListingsentinel, source: QDirListingsentinel) {.error.}
proc delete*(self: sink QDirListingsentinel) =
  let h = self.h
  wasMoved(self)
  fcQDirListingsentinel_delete(h)

type QDirListingconst_iterator* {.inheritable.} = object
  h*: pointer
  owned*: bool

proc fcQDirListingconst_iterator_delete(self: pointer) {.importc: "QDirListing__const_iterator_delete".}
proc `=destroy`(self: var QDirListingconst_iterator) =
  if self.owned: fcQDirListingconst_iterator_delete(self.h)

proc `=sink`(dest: var QDirListingconst_iterator, source: QDirListingconst_iterator) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QDirListingconst_iterator, source: QDirListingconst_iterator) {.error.}
proc delete*(self: sink QDirListingconst_iterator) =
  let h = self.h
  wasMoved(self)
  fcQDirListingconst_iterator_delete(h)

