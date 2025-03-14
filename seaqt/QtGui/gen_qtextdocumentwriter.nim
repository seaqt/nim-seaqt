import ./qtgui_pkg

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


import ./gen_qtextdocumentwriter_types
export gen_qtextdocumentwriter_types

import
  ../QtCore/gen_qiodevice_types,
  ./gen_qtextdocument_types,
  ./gen_qtextdocumentfragment_types
export
  gen_qiodevice_types,
  gen_qtextdocument_types,
  gen_qtextdocumentfragment_types

type cQTextDocumentWriter*{.exportc: "QTextDocumentWriter", incompleteStruct.} = object

proc fcQTextDocumentWriter_setFormat(self: pointer, format: struct_miqt_string): void {.importc: "QTextDocumentWriter_setFormat".}
proc fcQTextDocumentWriter_format(self: pointer): struct_miqt_string {.importc: "QTextDocumentWriter_format".}
proc fcQTextDocumentWriter_setDevice(self: pointer, device: pointer): void {.importc: "QTextDocumentWriter_setDevice".}
proc fcQTextDocumentWriter_device(self: pointer): pointer {.importc: "QTextDocumentWriter_device".}
proc fcQTextDocumentWriter_setFileName(self: pointer, fileName: struct_miqt_string): void {.importc: "QTextDocumentWriter_setFileName".}
proc fcQTextDocumentWriter_fileName(self: pointer): struct_miqt_string {.importc: "QTextDocumentWriter_fileName".}
proc fcQTextDocumentWriter_write(self: pointer, document: pointer): bool {.importc: "QTextDocumentWriter_write".}
proc fcQTextDocumentWriter_writeWithFragment(self: pointer, fragment: pointer): bool {.importc: "QTextDocumentWriter_writeWithFragment".}
proc fcQTextDocumentWriter_supportedDocumentFormats(): struct_miqt_array {.importc: "QTextDocumentWriter_supportedDocumentFormats".}
proc fcQTextDocumentWriter_new(): ptr cQTextDocumentWriter {.importc: "QTextDocumentWriter_new".}
proc fcQTextDocumentWriter_new2(device: pointer, format: struct_miqt_string): ptr cQTextDocumentWriter {.importc: "QTextDocumentWriter_new2".}
proc fcQTextDocumentWriter_new3(fileName: struct_miqt_string): ptr cQTextDocumentWriter {.importc: "QTextDocumentWriter_new3".}
proc fcQTextDocumentWriter_new4(fileName: struct_miqt_string, format: struct_miqt_string): ptr cQTextDocumentWriter {.importc: "QTextDocumentWriter_new4".}

proc setFormat*(self: gen_qtextdocumentwriter_types.QTextDocumentWriter, format: openArray[byte]): void =
  fcQTextDocumentWriter_setFormat(self.h, struct_miqt_string(data: cast[cstring](if len(format) == 0: nil else: unsafeAddr format[0]), len: csize_t(len(format))))

proc format*(self: gen_qtextdocumentwriter_types.QTextDocumentWriter): seq[byte] =
  var v_bytearray = fcQTextDocumentWriter_format(self.h)
  var vx_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](v_bytearray.data), 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc setDevice*(self: gen_qtextdocumentwriter_types.QTextDocumentWriter, device: gen_qiodevice_types.QIODevice): void =
  fcQTextDocumentWriter_setDevice(self.h, device.h)

proc device*(self: gen_qtextdocumentwriter_types.QTextDocumentWriter): gen_qiodevice_types.QIODevice =
  gen_qiodevice_types.QIODevice(h: fcQTextDocumentWriter_device(self.h), owned: false)

proc setFileName*(self: gen_qtextdocumentwriter_types.QTextDocumentWriter, fileName: openArray[char]): void =
  fcQTextDocumentWriter_setFileName(self.h, struct_miqt_string(data: if len(fileName) > 0: addr fileName[0] else: nil, len: csize_t(len(fileName))))

proc fileName*(self: gen_qtextdocumentwriter_types.QTextDocumentWriter): string =
  let v_ms = fcQTextDocumentWriter_fileName(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc write*(self: gen_qtextdocumentwriter_types.QTextDocumentWriter, document: gen_qtextdocument_types.QTextDocument): bool =
  fcQTextDocumentWriter_write(self.h, document.h)

proc write*(self: gen_qtextdocumentwriter_types.QTextDocumentWriter, fragment: gen_qtextdocumentfragment_types.QTextDocumentFragment): bool =
  fcQTextDocumentWriter_writeWithFragment(self.h, fragment.h)

proc supportedDocumentFormats*(_: type gen_qtextdocumentwriter_types.QTextDocumentWriter): seq[seq[byte]] =
  var v_ma = fcQTextDocumentWriter_supportedDocumentFormats()
  var vx_ret = newSeq[seq[byte]](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    var vx_lv_bytearray = v_outCast[i]
    var vx_lvx_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](vx_lv_bytearray.data), 0, int(vx_lv_bytearray.len)-1))
    c_free(vx_lv_bytearray.data)
    vx_ret[i] = vx_lvx_ret
  c_free(v_ma.data)
  vx_ret

proc create*(T: type gen_qtextdocumentwriter_types.QTextDocumentWriter): gen_qtextdocumentwriter_types.QTextDocumentWriter =
  gen_qtextdocumentwriter_types.QTextDocumentWriter(h: fcQTextDocumentWriter_new(), owned: true)

proc create*(T: type gen_qtextdocumentwriter_types.QTextDocumentWriter,
    device: gen_qiodevice_types.QIODevice, format: openArray[byte]): gen_qtextdocumentwriter_types.QTextDocumentWriter =
  gen_qtextdocumentwriter_types.QTextDocumentWriter(h: fcQTextDocumentWriter_new2(device.h, struct_miqt_string(data: cast[cstring](if len(format) == 0: nil else: unsafeAddr format[0]), len: csize_t(len(format)))), owned: true)

proc create*(T: type gen_qtextdocumentwriter_types.QTextDocumentWriter,
    fileName: openArray[char]): gen_qtextdocumentwriter_types.QTextDocumentWriter =
  gen_qtextdocumentwriter_types.QTextDocumentWriter(h: fcQTextDocumentWriter_new3(struct_miqt_string(data: if len(fileName) > 0: addr fileName[0] else: nil, len: csize_t(len(fileName)))), owned: true)

proc create*(T: type gen_qtextdocumentwriter_types.QTextDocumentWriter,
    fileName: openArray[char], format: openArray[byte]): gen_qtextdocumentwriter_types.QTextDocumentWriter =
  gen_qtextdocumentwriter_types.QTextDocumentWriter(h: fcQTextDocumentWriter_new4(struct_miqt_string(data: if len(fileName) > 0: addr fileName[0] else: nil, len: csize_t(len(fileName))), struct_miqt_string(data: cast[cstring](if len(format) == 0: nil else: unsafeAddr format[0]), len: csize_t(len(format)))), owned: true)

