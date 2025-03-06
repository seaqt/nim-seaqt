import ./Qt5Multimedia_libs

{.push raises: [].}

from system/ansi_c import c_free

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

const cflags = gorge("pkg-config --cflags Qt5Multimedia")  & " -fPIC"
{.compile("gen_qcameraimagecapturecontrol.cpp", cflags).}


import ./gen_qcameraimagecapturecontrol_types
export gen_qcameraimagecapturecontrol_types

import
  ../QtCore/gen_qobjectdefs_types,
  ../QtCore/gen_qvariant_types,
  ../QtGui/gen_qimage_types,
  ./gen_qmediacontrol,
  ./gen_qvideoframe_types
export
  gen_qobjectdefs_types,
  gen_qvariant_types,
  gen_qimage_types,
  gen_qmediacontrol,
  gen_qvideoframe_types

type cQCameraImageCaptureControl*{.exportc: "QCameraImageCaptureControl", incompleteStruct.} = object

proc fcQCameraImageCaptureControl_metaObject(self: pointer, ): pointer {.importc: "QCameraImageCaptureControl_metaObject".}
proc fcQCameraImageCaptureControl_metacast(self: pointer, param1: cstring): pointer {.importc: "QCameraImageCaptureControl_metacast".}
proc fcQCameraImageCaptureControl_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QCameraImageCaptureControl_metacall".}
proc fcQCameraImageCaptureControl_tr(s: cstring): struct_miqt_string {.importc: "QCameraImageCaptureControl_tr".}
proc fcQCameraImageCaptureControl_trUtf8(s: cstring): struct_miqt_string {.importc: "QCameraImageCaptureControl_trUtf8".}
proc fcQCameraImageCaptureControl_isReadyForCapture(self: pointer, ): bool {.importc: "QCameraImageCaptureControl_isReadyForCapture".}
proc fcQCameraImageCaptureControl_driveMode(self: pointer, ): cint {.importc: "QCameraImageCaptureControl_driveMode".}
proc fcQCameraImageCaptureControl_setDriveMode(self: pointer, mode: cint): void {.importc: "QCameraImageCaptureControl_setDriveMode".}
proc fcQCameraImageCaptureControl_capture(self: pointer, fileName: struct_miqt_string): cint {.importc: "QCameraImageCaptureControl_capture".}
proc fcQCameraImageCaptureControl_cancelCapture(self: pointer, ): void {.importc: "QCameraImageCaptureControl_cancelCapture".}
proc fcQCameraImageCaptureControl_readyForCaptureChanged(self: pointer, ready: bool): void {.importc: "QCameraImageCaptureControl_readyForCaptureChanged".}
proc fcQCameraImageCaptureControl_connect_readyForCaptureChanged(self: pointer, slot: int, callback: proc (slot: int, ready: bool) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QCameraImageCaptureControl_connect_readyForCaptureChanged".}
proc fcQCameraImageCaptureControl_imageExposed(self: pointer, requestId: cint): void {.importc: "QCameraImageCaptureControl_imageExposed".}
proc fcQCameraImageCaptureControl_connect_imageExposed(self: pointer, slot: int, callback: proc (slot: int, requestId: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QCameraImageCaptureControl_connect_imageExposed".}
proc fcQCameraImageCaptureControl_imageCaptured(self: pointer, requestId: cint, preview: pointer): void {.importc: "QCameraImageCaptureControl_imageCaptured".}
proc fcQCameraImageCaptureControl_connect_imageCaptured(self: pointer, slot: int, callback: proc (slot: int, requestId: cint, preview: pointer) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QCameraImageCaptureControl_connect_imageCaptured".}
proc fcQCameraImageCaptureControl_imageMetadataAvailable(self: pointer, id: cint, key: struct_miqt_string, value: pointer): void {.importc: "QCameraImageCaptureControl_imageMetadataAvailable".}
proc fcQCameraImageCaptureControl_connect_imageMetadataAvailable(self: pointer, slot: int, callback: proc (slot: int, id: cint, key: struct_miqt_string, value: pointer) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QCameraImageCaptureControl_connect_imageMetadataAvailable".}
proc fcQCameraImageCaptureControl_imageAvailable(self: pointer, requestId: cint, buffer: pointer): void {.importc: "QCameraImageCaptureControl_imageAvailable".}
proc fcQCameraImageCaptureControl_connect_imageAvailable(self: pointer, slot: int, callback: proc (slot: int, requestId: cint, buffer: pointer) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QCameraImageCaptureControl_connect_imageAvailable".}
proc fcQCameraImageCaptureControl_imageSaved(self: pointer, requestId: cint, fileName: struct_miqt_string): void {.importc: "QCameraImageCaptureControl_imageSaved".}
proc fcQCameraImageCaptureControl_connect_imageSaved(self: pointer, slot: int, callback: proc (slot: int, requestId: cint, fileName: struct_miqt_string) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QCameraImageCaptureControl_connect_imageSaved".}
proc fcQCameraImageCaptureControl_error(self: pointer, id: cint, error: cint, errorString: struct_miqt_string): void {.importc: "QCameraImageCaptureControl_error".}
proc fcQCameraImageCaptureControl_connect_error(self: pointer, slot: int, callback: proc (slot: int, id: cint, error: cint, errorString: struct_miqt_string) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QCameraImageCaptureControl_connect_error".}
proc fcQCameraImageCaptureControl_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QCameraImageCaptureControl_tr2".}
proc fcQCameraImageCaptureControl_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QCameraImageCaptureControl_tr3".}
proc fcQCameraImageCaptureControl_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QCameraImageCaptureControl_trUtf82".}
proc fcQCameraImageCaptureControl_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QCameraImageCaptureControl_trUtf83".}
proc fcQCameraImageCaptureControl_staticMetaObject(): pointer {.importc: "QCameraImageCaptureControl_staticMetaObject".}
proc fcQCameraImageCaptureControl_delete(self: pointer) {.importc: "QCameraImageCaptureControl_delete".}

proc metaObject*(self: gen_qcameraimagecapturecontrol_types.QCameraImageCaptureControl, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQCameraImageCaptureControl_metaObject(self.h))

proc metacast*(self: gen_qcameraimagecapturecontrol_types.QCameraImageCaptureControl, param1: cstring): pointer =
  fcQCameraImageCaptureControl_metacast(self.h, param1)

proc metacall*(self: gen_qcameraimagecapturecontrol_types.QCameraImageCaptureControl, param1: cint, param2: cint, param3: pointer): cint =
  fcQCameraImageCaptureControl_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qcameraimagecapturecontrol_types.QCameraImageCaptureControl, s: cstring): string =
  let v_ms = fcQCameraImageCaptureControl_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qcameraimagecapturecontrol_types.QCameraImageCaptureControl, s: cstring): string =
  let v_ms = fcQCameraImageCaptureControl_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc isReadyForCapture*(self: gen_qcameraimagecapturecontrol_types.QCameraImageCaptureControl, ): bool =
  fcQCameraImageCaptureControl_isReadyForCapture(self.h)

proc driveMode*(self: gen_qcameraimagecapturecontrol_types.QCameraImageCaptureControl, ): cint =
  cint(fcQCameraImageCaptureControl_driveMode(self.h))

proc setDriveMode*(self: gen_qcameraimagecapturecontrol_types.QCameraImageCaptureControl, mode: cint): void =
  fcQCameraImageCaptureControl_setDriveMode(self.h, cint(mode))

proc capture*(self: gen_qcameraimagecapturecontrol_types.QCameraImageCaptureControl, fileName: string): cint =
  fcQCameraImageCaptureControl_capture(self.h, struct_miqt_string(data: fileName, len: csize_t(len(fileName))))

proc cancelCapture*(self: gen_qcameraimagecapturecontrol_types.QCameraImageCaptureControl, ): void =
  fcQCameraImageCaptureControl_cancelCapture(self.h)

proc readyForCaptureChanged*(self: gen_qcameraimagecapturecontrol_types.QCameraImageCaptureControl, ready: bool): void =
  fcQCameraImageCaptureControl_readyForCaptureChanged(self.h, ready)

type QCameraImageCaptureControlreadyForCaptureChangedSlot* = proc(ready: bool)
proc miqt_exec_callback_cQCameraImageCaptureControl_readyForCaptureChanged(slot: int, ready: bool) {.cdecl.} =
  let nimfunc = cast[ptr QCameraImageCaptureControlreadyForCaptureChangedSlot](cast[pointer](slot))
  let slotval1 = ready

  nimfunc[](slotval1)

proc miqt_exec_callback_cQCameraImageCaptureControl_readyForCaptureChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QCameraImageCaptureControlreadyForCaptureChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onreadyForCaptureChanged*(self: gen_qcameraimagecapturecontrol_types.QCameraImageCaptureControl, slot: QCameraImageCaptureControlreadyForCaptureChangedSlot) =
  var tmp = new QCameraImageCaptureControlreadyForCaptureChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQCameraImageCaptureControl_connect_readyForCaptureChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQCameraImageCaptureControl_readyForCaptureChanged, miqt_exec_callback_cQCameraImageCaptureControl_readyForCaptureChanged_release)

proc imageExposed*(self: gen_qcameraimagecapturecontrol_types.QCameraImageCaptureControl, requestId: cint): void =
  fcQCameraImageCaptureControl_imageExposed(self.h, requestId)

type QCameraImageCaptureControlimageExposedSlot* = proc(requestId: cint)
proc miqt_exec_callback_cQCameraImageCaptureControl_imageExposed(slot: int, requestId: cint) {.cdecl.} =
  let nimfunc = cast[ptr QCameraImageCaptureControlimageExposedSlot](cast[pointer](slot))
  let slotval1 = requestId

  nimfunc[](slotval1)

proc miqt_exec_callback_cQCameraImageCaptureControl_imageExposed_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QCameraImageCaptureControlimageExposedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onimageExposed*(self: gen_qcameraimagecapturecontrol_types.QCameraImageCaptureControl, slot: QCameraImageCaptureControlimageExposedSlot) =
  var tmp = new QCameraImageCaptureControlimageExposedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQCameraImageCaptureControl_connect_imageExposed(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQCameraImageCaptureControl_imageExposed, miqt_exec_callback_cQCameraImageCaptureControl_imageExposed_release)

proc imageCaptured*(self: gen_qcameraimagecapturecontrol_types.QCameraImageCaptureControl, requestId: cint, preview: gen_qimage_types.QImage): void =
  fcQCameraImageCaptureControl_imageCaptured(self.h, requestId, preview.h)

type QCameraImageCaptureControlimageCapturedSlot* = proc(requestId: cint, preview: gen_qimage_types.QImage)
proc miqt_exec_callback_cQCameraImageCaptureControl_imageCaptured(slot: int, requestId: cint, preview: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QCameraImageCaptureControlimageCapturedSlot](cast[pointer](slot))
  let slotval1 = requestId

  let slotval2 = gen_qimage_types.QImage(h: preview)

  nimfunc[](slotval1, slotval2)

proc miqt_exec_callback_cQCameraImageCaptureControl_imageCaptured_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QCameraImageCaptureControlimageCapturedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onimageCaptured*(self: gen_qcameraimagecapturecontrol_types.QCameraImageCaptureControl, slot: QCameraImageCaptureControlimageCapturedSlot) =
  var tmp = new QCameraImageCaptureControlimageCapturedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQCameraImageCaptureControl_connect_imageCaptured(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQCameraImageCaptureControl_imageCaptured, miqt_exec_callback_cQCameraImageCaptureControl_imageCaptured_release)

proc imageMetadataAvailable*(self: gen_qcameraimagecapturecontrol_types.QCameraImageCaptureControl, id: cint, key: string, value: gen_qvariant_types.QVariant): void =
  fcQCameraImageCaptureControl_imageMetadataAvailable(self.h, id, struct_miqt_string(data: key, len: csize_t(len(key))), value.h)

type QCameraImageCaptureControlimageMetadataAvailableSlot* = proc(id: cint, key: string, value: gen_qvariant_types.QVariant)
proc miqt_exec_callback_cQCameraImageCaptureControl_imageMetadataAvailable(slot: int, id: cint, key: struct_miqt_string, value: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QCameraImageCaptureControlimageMetadataAvailableSlot](cast[pointer](slot))
  let slotval1 = id

  let vkey_ms = key
  let vkeyx_ret = string.fromBytes(toOpenArrayByte(vkey_ms.data, 0, int(vkey_ms.len)-1))
  c_free(vkey_ms.data)
  let slotval2 = vkeyx_ret

  let slotval3 = gen_qvariant_types.QVariant(h: value)

  nimfunc[](slotval1, slotval2, slotval3)

proc miqt_exec_callback_cQCameraImageCaptureControl_imageMetadataAvailable_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QCameraImageCaptureControlimageMetadataAvailableSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onimageMetadataAvailable*(self: gen_qcameraimagecapturecontrol_types.QCameraImageCaptureControl, slot: QCameraImageCaptureControlimageMetadataAvailableSlot) =
  var tmp = new QCameraImageCaptureControlimageMetadataAvailableSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQCameraImageCaptureControl_connect_imageMetadataAvailable(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQCameraImageCaptureControl_imageMetadataAvailable, miqt_exec_callback_cQCameraImageCaptureControl_imageMetadataAvailable_release)

proc imageAvailable*(self: gen_qcameraimagecapturecontrol_types.QCameraImageCaptureControl, requestId: cint, buffer: gen_qvideoframe_types.QVideoFrame): void =
  fcQCameraImageCaptureControl_imageAvailable(self.h, requestId, buffer.h)

type QCameraImageCaptureControlimageAvailableSlot* = proc(requestId: cint, buffer: gen_qvideoframe_types.QVideoFrame)
proc miqt_exec_callback_cQCameraImageCaptureControl_imageAvailable(slot: int, requestId: cint, buffer: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QCameraImageCaptureControlimageAvailableSlot](cast[pointer](slot))
  let slotval1 = requestId

  let slotval2 = gen_qvideoframe_types.QVideoFrame(h: buffer)

  nimfunc[](slotval1, slotval2)

proc miqt_exec_callback_cQCameraImageCaptureControl_imageAvailable_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QCameraImageCaptureControlimageAvailableSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onimageAvailable*(self: gen_qcameraimagecapturecontrol_types.QCameraImageCaptureControl, slot: QCameraImageCaptureControlimageAvailableSlot) =
  var tmp = new QCameraImageCaptureControlimageAvailableSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQCameraImageCaptureControl_connect_imageAvailable(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQCameraImageCaptureControl_imageAvailable, miqt_exec_callback_cQCameraImageCaptureControl_imageAvailable_release)

proc imageSaved*(self: gen_qcameraimagecapturecontrol_types.QCameraImageCaptureControl, requestId: cint, fileName: string): void =
  fcQCameraImageCaptureControl_imageSaved(self.h, requestId, struct_miqt_string(data: fileName, len: csize_t(len(fileName))))

type QCameraImageCaptureControlimageSavedSlot* = proc(requestId: cint, fileName: string)
proc miqt_exec_callback_cQCameraImageCaptureControl_imageSaved(slot: int, requestId: cint, fileName: struct_miqt_string) {.cdecl.} =
  let nimfunc = cast[ptr QCameraImageCaptureControlimageSavedSlot](cast[pointer](slot))
  let slotval1 = requestId

  let vfileName_ms = fileName
  let vfileNamex_ret = string.fromBytes(toOpenArrayByte(vfileName_ms.data, 0, int(vfileName_ms.len)-1))
  c_free(vfileName_ms.data)
  let slotval2 = vfileNamex_ret

  nimfunc[](slotval1, slotval2)

proc miqt_exec_callback_cQCameraImageCaptureControl_imageSaved_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QCameraImageCaptureControlimageSavedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onimageSaved*(self: gen_qcameraimagecapturecontrol_types.QCameraImageCaptureControl, slot: QCameraImageCaptureControlimageSavedSlot) =
  var tmp = new QCameraImageCaptureControlimageSavedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQCameraImageCaptureControl_connect_imageSaved(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQCameraImageCaptureControl_imageSaved, miqt_exec_callback_cQCameraImageCaptureControl_imageSaved_release)

proc error*(self: gen_qcameraimagecapturecontrol_types.QCameraImageCaptureControl, id: cint, error: cint, errorString: string): void =
  fcQCameraImageCaptureControl_error(self.h, id, error, struct_miqt_string(data: errorString, len: csize_t(len(errorString))))

type QCameraImageCaptureControlerrorSlot* = proc(id: cint, error: cint, errorString: string)
proc miqt_exec_callback_cQCameraImageCaptureControl_error(slot: int, id: cint, error: cint, errorString: struct_miqt_string) {.cdecl.} =
  let nimfunc = cast[ptr QCameraImageCaptureControlerrorSlot](cast[pointer](slot))
  let slotval1 = id

  let slotval2 = error

  let verrorString_ms = errorString
  let verrorStringx_ret = string.fromBytes(toOpenArrayByte(verrorString_ms.data, 0, int(verrorString_ms.len)-1))
  c_free(verrorString_ms.data)
  let slotval3 = verrorStringx_ret

  nimfunc[](slotval1, slotval2, slotval3)

proc miqt_exec_callback_cQCameraImageCaptureControl_error_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QCameraImageCaptureControlerrorSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onerror*(self: gen_qcameraimagecapturecontrol_types.QCameraImageCaptureControl, slot: QCameraImageCaptureControlerrorSlot) =
  var tmp = new QCameraImageCaptureControlerrorSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQCameraImageCaptureControl_connect_error(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQCameraImageCaptureControl_error, miqt_exec_callback_cQCameraImageCaptureControl_error_release)

proc tr*(_: type gen_qcameraimagecapturecontrol_types.QCameraImageCaptureControl, s: cstring, c: cstring): string =
  let v_ms = fcQCameraImageCaptureControl_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qcameraimagecapturecontrol_types.QCameraImageCaptureControl, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQCameraImageCaptureControl_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qcameraimagecapturecontrol_types.QCameraImageCaptureControl, s: cstring, c: cstring): string =
  let v_ms = fcQCameraImageCaptureControl_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qcameraimagecapturecontrol_types.QCameraImageCaptureControl, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQCameraImageCaptureControl_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc staticMetaObject*(_: type gen_qcameraimagecapturecontrol_types.QCameraImageCaptureControl): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQCameraImageCaptureControl_staticMetaObject())
proc delete*(self: gen_qcameraimagecapturecontrol_types.QCameraImageCaptureControl) =
  fcQCameraImageCaptureControl_delete(self.h)
