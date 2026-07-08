#pragma once
#ifndef SEAQT_QTMULTIMEDIA_GEN_QVIDEOFRAMEINPUT_H
#define SEAQT_QTMULTIMEDIA_GEN_QVIDEOFRAMEINPUT_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt-runtime.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QChildEvent;
class QEvent;
class QMediaCaptureSession;
class QMetaMethod;
class QMetaObject;
class QObject;
class QTimerEvent;
class QVideoFrame;
class QVideoFrameFormat;
class QVideoFrameInput;
#else
typedef struct QChildEvent QChildEvent;
typedef struct QEvent QEvent;
typedef struct QMediaCaptureSession QMediaCaptureSession;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QObject QObject;
typedef struct QTimerEvent QTimerEvent;
typedef struct QVideoFrame QVideoFrame;
typedef struct QVideoFrameFormat QVideoFrameFormat;
typedef struct QVideoFrameInput QVideoFrameInput;
#endif

typedef struct VirtualQVideoFrameInput VirtualQVideoFrameInput;
typedef struct QVideoFrameInput_VTable{
	void (*destructor)(VirtualQVideoFrameInput* self);
	QMetaObject* (*metaObject)(const VirtualQVideoFrameInput* self);
	void* (*metacast)(VirtualQVideoFrameInput* self, const char* param1);
	int (*metacall)(VirtualQVideoFrameInput* self, int param1, int param2, void** param3);
	bool (*event)(VirtualQVideoFrameInput* self, QEvent* event);
	bool (*eventFilter)(VirtualQVideoFrameInput* self, QObject* watched, QEvent* event);
	void (*timerEvent)(VirtualQVideoFrameInput* self, QTimerEvent* event);
	void (*childEvent)(VirtualQVideoFrameInput* self, QChildEvent* event);
	void (*customEvent)(VirtualQVideoFrameInput* self, QEvent* event);
	void (*connectNotify)(VirtualQVideoFrameInput* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQVideoFrameInput* self, QMetaMethod* signal);
}QVideoFrameInput_VTable;

void* QVideoFrameInput_vdata(VirtualQVideoFrameInput* self);
VirtualQVideoFrameInput* vdata_QVideoFrameInput(void* vdata);

VirtualQVideoFrameInput* QVideoFrameInput_new(const QVideoFrameInput_VTable* vtbl, size_t vdata);
VirtualQVideoFrameInput* QVideoFrameInput_new_format(const QVideoFrameInput_VTable* vtbl, size_t vdata, QVideoFrameFormat* format);
VirtualQVideoFrameInput* QVideoFrameInput_new_parent(const QVideoFrameInput_VTable* vtbl, size_t vdata, QObject* parent);
VirtualQVideoFrameInput* QVideoFrameInput_new_format_parent(const QVideoFrameInput_VTable* vtbl, size_t vdata, QVideoFrameFormat* format, QObject* parent);

void QVideoFrameInput_virtbase(QVideoFrameInput* src, QObject** outptr_QObject);
QMetaObject* QVideoFrameInput_metaObject(const QVideoFrameInput* self);
void* QVideoFrameInput_metacast(QVideoFrameInput* self, const char* param1);
int QVideoFrameInput_metacall(QVideoFrameInput* self, int param1, int param2, void** param3);
struct seaqt_string QVideoFrameInput_tr_s(const char* s);
bool QVideoFrameInput_sendVideoFrame(QVideoFrameInput* self, QVideoFrame* frame);
QVideoFrameFormat* QVideoFrameInput_format(const QVideoFrameInput* self);
QMediaCaptureSession* QVideoFrameInput_captureSession(const QVideoFrameInput* self);
void QVideoFrameInput_readyToSendVideoFrame(QVideoFrameInput* self);
void QVideoFrameInput_connect_readyToSendVideoFrame(QVideoFrameInput* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
struct seaqt_string QVideoFrameInput_tr_s_c(const char* s, const char* c);
struct seaqt_string QVideoFrameInput_tr_s_c_n(const char* s, const char* c, int n);

QMetaObject* QVideoFrameInput_virtualbase_metaObject(const VirtualQVideoFrameInput* self);
void* QVideoFrameInput_virtualbase_metacast(VirtualQVideoFrameInput* self, const char* param1);
int QVideoFrameInput_virtualbase_metacall(VirtualQVideoFrameInput* self, int param1, int param2, void** param3);
bool QVideoFrameInput_virtualbase_event(VirtualQVideoFrameInput* self, QEvent* event);
bool QVideoFrameInput_virtualbase_eventFilter(VirtualQVideoFrameInput* self, QObject* watched, QEvent* event);
void QVideoFrameInput_virtualbase_timerEvent(VirtualQVideoFrameInput* self, QTimerEvent* event);
void QVideoFrameInput_virtualbase_childEvent(VirtualQVideoFrameInput* self, QChildEvent* event);
void QVideoFrameInput_virtualbase_customEvent(VirtualQVideoFrameInput* self, QEvent* event);
void QVideoFrameInput_virtualbase_connectNotify(VirtualQVideoFrameInput* self, QMetaMethod* signal);
void QVideoFrameInput_virtualbase_disconnectNotify(VirtualQVideoFrameInput* self, QMetaMethod* signal);

QObject* QVideoFrameInput_protectedbase_sender(const VirtualQVideoFrameInput* self);
int QVideoFrameInput_protectedbase_senderSignalIndex(const VirtualQVideoFrameInput* self);
int QVideoFrameInput_protectedbase_receivers(const VirtualQVideoFrameInput* self, const char* signal);
bool QVideoFrameInput_protectedbase_isSignalConnected(const VirtualQVideoFrameInput* self, QMetaMethod* signal);

const QMetaObject* QVideoFrameInput_staticMetaObject();
void QVideoFrameInput_delete(QVideoFrameInput* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
