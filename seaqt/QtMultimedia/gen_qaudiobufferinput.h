#pragma once
#ifndef SEAQT_QTMULTIMEDIA_GEN_QAUDIOBUFFERINPUT_H
#define SEAQT_QTMULTIMEDIA_GEN_QAUDIOBUFFERINPUT_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt-runtime.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QAudioBuffer;
class QAudioBufferInput;
class QAudioFormat;
class QChildEvent;
class QEvent;
class QMediaCaptureSession;
class QMetaMethod;
class QMetaObject;
class QObject;
class QTimerEvent;
#else
typedef struct QAudioBuffer QAudioBuffer;
typedef struct QAudioBufferInput QAudioBufferInput;
typedef struct QAudioFormat QAudioFormat;
typedef struct QChildEvent QChildEvent;
typedef struct QEvent QEvent;
typedef struct QMediaCaptureSession QMediaCaptureSession;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QObject QObject;
typedef struct QTimerEvent QTimerEvent;
#endif

typedef struct VirtualQAudioBufferInput VirtualQAudioBufferInput;
typedef struct QAudioBufferInput_VTable{
	void (*destructor)(VirtualQAudioBufferInput* self);
	QMetaObject* (*metaObject)(const VirtualQAudioBufferInput* self);
	void* (*metacast)(VirtualQAudioBufferInput* self, const char* param1);
	int (*metacall)(VirtualQAudioBufferInput* self, int param1, int param2, void** param3);
	bool (*event)(VirtualQAudioBufferInput* self, QEvent* event);
	bool (*eventFilter)(VirtualQAudioBufferInput* self, QObject* watched, QEvent* event);
	void (*timerEvent)(VirtualQAudioBufferInput* self, QTimerEvent* event);
	void (*childEvent)(VirtualQAudioBufferInput* self, QChildEvent* event);
	void (*customEvent)(VirtualQAudioBufferInput* self, QEvent* event);
	void (*connectNotify)(VirtualQAudioBufferInput* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQAudioBufferInput* self, QMetaMethod* signal);
}QAudioBufferInput_VTable;

void* QAudioBufferInput_vdata(VirtualQAudioBufferInput* self);
VirtualQAudioBufferInput* vdata_QAudioBufferInput(void* vdata);

VirtualQAudioBufferInput* QAudioBufferInput_new(const QAudioBufferInput_VTable* vtbl, size_t vdata);
VirtualQAudioBufferInput* QAudioBufferInput_new_format(const QAudioBufferInput_VTable* vtbl, size_t vdata, QAudioFormat* format);
VirtualQAudioBufferInput* QAudioBufferInput_new_parent(const QAudioBufferInput_VTable* vtbl, size_t vdata, QObject* parent);
VirtualQAudioBufferInput* QAudioBufferInput_new_format_parent(const QAudioBufferInput_VTable* vtbl, size_t vdata, QAudioFormat* format, QObject* parent);

void QAudioBufferInput_virtbase(QAudioBufferInput* src, QObject** outptr_QObject);
QMetaObject* QAudioBufferInput_metaObject(const QAudioBufferInput* self);
void* QAudioBufferInput_metacast(QAudioBufferInput* self, const char* param1);
int QAudioBufferInput_metacall(QAudioBufferInput* self, int param1, int param2, void** param3);
struct seaqt_string QAudioBufferInput_tr_s(const char* s);
bool QAudioBufferInput_sendAudioBuffer(QAudioBufferInput* self, QAudioBuffer* audioBuffer);
QAudioFormat* QAudioBufferInput_format(const QAudioBufferInput* self);
QMediaCaptureSession* QAudioBufferInput_captureSession(const QAudioBufferInput* self);
void QAudioBufferInput_readyToSendAudioBuffer(QAudioBufferInput* self);
void QAudioBufferInput_connect_readyToSendAudioBuffer(QAudioBufferInput* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
struct seaqt_string QAudioBufferInput_tr_s_c(const char* s, const char* c);
struct seaqt_string QAudioBufferInput_tr_s_c_n(const char* s, const char* c, int n);

QMetaObject* QAudioBufferInput_virtualbase_metaObject(const VirtualQAudioBufferInput* self);
void* QAudioBufferInput_virtualbase_metacast(VirtualQAudioBufferInput* self, const char* param1);
int QAudioBufferInput_virtualbase_metacall(VirtualQAudioBufferInput* self, int param1, int param2, void** param3);
bool QAudioBufferInput_virtualbase_event(VirtualQAudioBufferInput* self, QEvent* event);
bool QAudioBufferInput_virtualbase_eventFilter(VirtualQAudioBufferInput* self, QObject* watched, QEvent* event);
void QAudioBufferInput_virtualbase_timerEvent(VirtualQAudioBufferInput* self, QTimerEvent* event);
void QAudioBufferInput_virtualbase_childEvent(VirtualQAudioBufferInput* self, QChildEvent* event);
void QAudioBufferInput_virtualbase_customEvent(VirtualQAudioBufferInput* self, QEvent* event);
void QAudioBufferInput_virtualbase_connectNotify(VirtualQAudioBufferInput* self, QMetaMethod* signal);
void QAudioBufferInput_virtualbase_disconnectNotify(VirtualQAudioBufferInput* self, QMetaMethod* signal);

QObject* QAudioBufferInput_protectedbase_sender(const VirtualQAudioBufferInput* self);
int QAudioBufferInput_protectedbase_senderSignalIndex(const VirtualQAudioBufferInput* self);
int QAudioBufferInput_protectedbase_receivers(const VirtualQAudioBufferInput* self, const char* signal);
bool QAudioBufferInput_protectedbase_isSignalConnected(const VirtualQAudioBufferInput* self, QMetaMethod* signal);

const QMetaObject* QAudioBufferInput_staticMetaObject();
void QAudioBufferInput_delete(QAudioBufferInput* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
