import ./gen_qmediarecorder_types
export gen_qmediarecorder_types

type QAudioRecorder* = object of gen_qmediarecorder_types.QMediaRecorder
proc `=copy`(dest: var QAudioRecorder, source: QAudioRecorder) {.error.}
proc `=sink`(dest: var QAudioRecorder, source: QAudioRecorder) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

