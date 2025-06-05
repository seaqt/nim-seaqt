import ./qtmultimedia_pkg

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


import ./gen_qmediabindableinterface_types
export gen_qmediabindableinterface_types

import
  ./gen_qmediaobject_types
export
  gen_qmediaobject_types

type cQMediaBindableInterface*{.exportc: "QMediaBindableInterface", incompleteStruct.} = object

proc fcQMediaBindableInterface_mediaObject(self: pointer): pointer {.importc: "QMediaBindableInterface_mediaObject".}
proc fcQMediaBindableInterface_delete(self: pointer) {.importc: "QMediaBindableInterface_delete".}

proc mediaObject*(self: gen_qmediabindableinterface_types.QMediaBindableInterface): gen_qmediaobject_types.QMediaObject =
  gen_qmediaobject_types.QMediaObject(h: fcQMediaBindableInterface_mediaObject(self.h))

proc delete*(self: gen_qmediabindableinterface_types.QMediaBindableInterface) =
  fcQMediaBindableInterface_delete(self.h)
