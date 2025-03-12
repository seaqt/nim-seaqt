#pragma once
#ifndef SEAQT_QTMULTIMEDIA_GEN_QMEDIACAPTURESESSION_H
#define SEAQT_QTMULTIMEDIA_GEN_QMEDIACAPTURESESSION_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt/libseaqt.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QAudioInput;
class QAudioOutput;
class QCamera;
class QChildEvent;
class QEvent;
class QImageCapture;
class QMediaCaptureSession;
class QMediaRecorder;
class QMetaMethod;
class QMetaObject;
class QObject;
class QTimerEvent;
class QVideoSink;
#else
typedef struct QAudioInput QAudioInput;
typedef struct QAudioOutput QAudioOutput;
typedef struct QCamera QCamera;
typedef struct QChildEvent QChildEvent;
typedef struct QEvent QEvent;
typedef struct QImageCapture QImageCapture;
typedef struct QMediaCaptureSession QMediaCaptureSession;
typedef struct QMediaRecorder QMediaRecorder;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QObject QObject;
typedef struct QTimerEvent QTimerEvent;
typedef struct QVideoSink QVideoSink;
#endif

typedef struct VirtualQMediaCaptureSession VirtualQMediaCaptureSession;
typedef struct QMediaCaptureSession_VTable{
	void (*destructor)(VirtualQMediaCaptureSession* self);
	QMetaObject* (*metaObject)(const VirtualQMediaCaptureSession* self);
	void* (*metacast)(VirtualQMediaCaptureSession* self, const char* param1);
	int (*metacall)(VirtualQMediaCaptureSession* self, int param1, int param2, void** param3);
	bool (*event)(VirtualQMediaCaptureSession* self, QEvent* event);
	bool (*eventFilter)(VirtualQMediaCaptureSession* self, QObject* watched, QEvent* event);
	void (*timerEvent)(VirtualQMediaCaptureSession* self, QTimerEvent* event);
	void (*childEvent)(VirtualQMediaCaptureSession* self, QChildEvent* event);
	void (*customEvent)(VirtualQMediaCaptureSession* self, QEvent* event);
	void (*connectNotify)(VirtualQMediaCaptureSession* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQMediaCaptureSession* self, QMetaMethod* signal);
}QMediaCaptureSession_VTable;

const QMediaCaptureSession_VTable* QMediaCaptureSession_vtbl(const VirtualQMediaCaptureSession* self);
void* QMediaCaptureSession_vdata(const VirtualQMediaCaptureSession* self);
void QMediaCaptureSession_setVdata(VirtualQMediaCaptureSession* self, void* vdata);

VirtualQMediaCaptureSession* QMediaCaptureSession_new(const QMediaCaptureSession_VTable* vtbl, void* vdata);
VirtualQMediaCaptureSession* QMediaCaptureSession_new2(const QMediaCaptureSession_VTable* vtbl, void* vdata, QObject* parent);

void QMediaCaptureSession_virtbase(QMediaCaptureSession* src, QObject** outptr_QObject);
QMetaObject* QMediaCaptureSession_metaObject(const QMediaCaptureSession* self);
void* QMediaCaptureSession_metacast(QMediaCaptureSession* self, const char* param1);
int QMediaCaptureSession_metacall(QMediaCaptureSession* self, int param1, int param2, void** param3);
struct miqt_string QMediaCaptureSession_tr(const char* s);
QAudioInput* QMediaCaptureSession_audioInput(const QMediaCaptureSession* self);
void QMediaCaptureSession_setAudioInput(QMediaCaptureSession* self, QAudioInput* input);
QCamera* QMediaCaptureSession_camera(const QMediaCaptureSession* self);
void QMediaCaptureSession_setCamera(QMediaCaptureSession* self, QCamera* camera);
QImageCapture* QMediaCaptureSession_imageCapture(QMediaCaptureSession* self);
void QMediaCaptureSession_setImageCapture(QMediaCaptureSession* self, QImageCapture* imageCapture);
QMediaRecorder* QMediaCaptureSession_recorder(QMediaCaptureSession* self);
void QMediaCaptureSession_setRecorder(QMediaCaptureSession* self, QMediaRecorder* recorder);
void QMediaCaptureSession_setVideoOutput(QMediaCaptureSession* self, QObject* output);
QObject* QMediaCaptureSession_videoOutput(const QMediaCaptureSession* self);
void QMediaCaptureSession_setVideoSink(QMediaCaptureSession* self, QVideoSink* sink);
QVideoSink* QMediaCaptureSession_videoSink(const QMediaCaptureSession* self);
void QMediaCaptureSession_setAudioOutput(QMediaCaptureSession* self, QAudioOutput* output);
QAudioOutput* QMediaCaptureSession_audioOutput(const QMediaCaptureSession* self);
void QMediaCaptureSession_audioInputChanged(QMediaCaptureSession* self);
void QMediaCaptureSession_connect_audioInputChanged(VirtualQMediaCaptureSession* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QMediaCaptureSession_cameraChanged(QMediaCaptureSession* self);
void QMediaCaptureSession_connect_cameraChanged(VirtualQMediaCaptureSession* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QMediaCaptureSession_imageCaptureChanged(QMediaCaptureSession* self);
void QMediaCaptureSession_connect_imageCaptureChanged(VirtualQMediaCaptureSession* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QMediaCaptureSession_recorderChanged(QMediaCaptureSession* self);
void QMediaCaptureSession_connect_recorderChanged(VirtualQMediaCaptureSession* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QMediaCaptureSession_videoOutputChanged(QMediaCaptureSession* self);
void QMediaCaptureSession_connect_videoOutputChanged(VirtualQMediaCaptureSession* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QMediaCaptureSession_audioOutputChanged(QMediaCaptureSession* self);
void QMediaCaptureSession_connect_audioOutputChanged(VirtualQMediaCaptureSession* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
struct miqt_string QMediaCaptureSession_tr2(const char* s, const char* c);
struct miqt_string QMediaCaptureSession_tr3(const char* s, const char* c, int n);

QMetaObject* QMediaCaptureSession_virtualbase_metaObject(const VirtualQMediaCaptureSession* self);
void* QMediaCaptureSession_virtualbase_metacast(VirtualQMediaCaptureSession* self, const char* param1);
int QMediaCaptureSession_virtualbase_metacall(VirtualQMediaCaptureSession* self, int param1, int param2, void** param3);
bool QMediaCaptureSession_virtualbase_event(VirtualQMediaCaptureSession* self, QEvent* event);
bool QMediaCaptureSession_virtualbase_eventFilter(VirtualQMediaCaptureSession* self, QObject* watched, QEvent* event);
void QMediaCaptureSession_virtualbase_timerEvent(VirtualQMediaCaptureSession* self, QTimerEvent* event);
void QMediaCaptureSession_virtualbase_childEvent(VirtualQMediaCaptureSession* self, QChildEvent* event);
void QMediaCaptureSession_virtualbase_customEvent(VirtualQMediaCaptureSession* self, QEvent* event);
void QMediaCaptureSession_virtualbase_connectNotify(VirtualQMediaCaptureSession* self, QMetaMethod* signal);
void QMediaCaptureSession_virtualbase_disconnectNotify(VirtualQMediaCaptureSession* self, QMetaMethod* signal);

QObject* QMediaCaptureSession_protectedbase_sender(const VirtualQMediaCaptureSession* self);
int QMediaCaptureSession_protectedbase_senderSignalIndex(const VirtualQMediaCaptureSession* self);
int QMediaCaptureSession_protectedbase_receivers(const VirtualQMediaCaptureSession* self, const char* signal);
bool QMediaCaptureSession_protectedbase_isSignalConnected(const VirtualQMediaCaptureSession* self, QMetaMethod* signal);

const QMetaObject* QMediaCaptureSession_staticMetaObject();
void QMediaCaptureSession_delete(QMediaCaptureSession* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
