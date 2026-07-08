#pragma once
#ifndef SEAQT_QTMULTIMEDIA_GEN_QAUDIOBUFFEROUTPUT_H
#define SEAQT_QTMULTIMEDIA_GEN_QAUDIOBUFFEROUTPUT_H

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
class QAudioBufferOutput;
class QAudioFormat;
class QChildEvent;
class QEvent;
class QMetaMethod;
class QMetaObject;
class QObject;
class QTimerEvent;
#else
typedef struct QAudioBuffer QAudioBuffer;
typedef struct QAudioBufferOutput QAudioBufferOutput;
typedef struct QAudioFormat QAudioFormat;
typedef struct QChildEvent QChildEvent;
typedef struct QEvent QEvent;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QObject QObject;
typedef struct QTimerEvent QTimerEvent;
#endif

typedef struct VirtualQAudioBufferOutput VirtualQAudioBufferOutput;
typedef struct QAudioBufferOutput_VTable{
	void (*destructor)(VirtualQAudioBufferOutput* self);
	QMetaObject* (*metaObject)(const VirtualQAudioBufferOutput* self);
	void* (*metacast)(VirtualQAudioBufferOutput* self, const char* param1);
	int (*metacall)(VirtualQAudioBufferOutput* self, int param1, int param2, void** param3);
	bool (*event)(VirtualQAudioBufferOutput* self, QEvent* event);
	bool (*eventFilter)(VirtualQAudioBufferOutput* self, QObject* watched, QEvent* event);
	void (*timerEvent)(VirtualQAudioBufferOutput* self, QTimerEvent* event);
	void (*childEvent)(VirtualQAudioBufferOutput* self, QChildEvent* event);
	void (*customEvent)(VirtualQAudioBufferOutput* self, QEvent* event);
	void (*connectNotify)(VirtualQAudioBufferOutput* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQAudioBufferOutput* self, QMetaMethod* signal);
}QAudioBufferOutput_VTable;

void* QAudioBufferOutput_vdata(VirtualQAudioBufferOutput* self);
VirtualQAudioBufferOutput* vdata_QAudioBufferOutput(void* vdata);

VirtualQAudioBufferOutput* QAudioBufferOutput_new(const QAudioBufferOutput_VTable* vtbl, size_t vdata);
VirtualQAudioBufferOutput* QAudioBufferOutput_new_format(const QAudioBufferOutput_VTable* vtbl, size_t vdata, QAudioFormat* format);
VirtualQAudioBufferOutput* QAudioBufferOutput_new_parent(const QAudioBufferOutput_VTable* vtbl, size_t vdata, QObject* parent);
VirtualQAudioBufferOutput* QAudioBufferOutput_new_format_parent(const QAudioBufferOutput_VTable* vtbl, size_t vdata, QAudioFormat* format, QObject* parent);

void QAudioBufferOutput_virtbase(QAudioBufferOutput* src, QObject** outptr_QObject);
QMetaObject* QAudioBufferOutput_metaObject(const QAudioBufferOutput* self);
void* QAudioBufferOutput_metacast(QAudioBufferOutput* self, const char* param1);
int QAudioBufferOutput_metacall(QAudioBufferOutput* self, int param1, int param2, void** param3);
struct seaqt_string QAudioBufferOutput_tr_s(const char* s);
QAudioFormat* QAudioBufferOutput_format(const QAudioBufferOutput* self);
void QAudioBufferOutput_audioBufferReceived(QAudioBufferOutput* self, QAudioBuffer* buffer);
void QAudioBufferOutput_connect_audioBufferReceived(QAudioBufferOutput* self, intptr_t slot, void (*callback)(intptr_t, QAudioBuffer*), void (*release)(intptr_t));
struct seaqt_string QAudioBufferOutput_tr_s_c(const char* s, const char* c);
struct seaqt_string QAudioBufferOutput_tr_s_c_n(const char* s, const char* c, int n);

QMetaObject* QAudioBufferOutput_virtualbase_metaObject(const VirtualQAudioBufferOutput* self);
void* QAudioBufferOutput_virtualbase_metacast(VirtualQAudioBufferOutput* self, const char* param1);
int QAudioBufferOutput_virtualbase_metacall(VirtualQAudioBufferOutput* self, int param1, int param2, void** param3);
bool QAudioBufferOutput_virtualbase_event(VirtualQAudioBufferOutput* self, QEvent* event);
bool QAudioBufferOutput_virtualbase_eventFilter(VirtualQAudioBufferOutput* self, QObject* watched, QEvent* event);
void QAudioBufferOutput_virtualbase_timerEvent(VirtualQAudioBufferOutput* self, QTimerEvent* event);
void QAudioBufferOutput_virtualbase_childEvent(VirtualQAudioBufferOutput* self, QChildEvent* event);
void QAudioBufferOutput_virtualbase_customEvent(VirtualQAudioBufferOutput* self, QEvent* event);
void QAudioBufferOutput_virtualbase_connectNotify(VirtualQAudioBufferOutput* self, QMetaMethod* signal);
void QAudioBufferOutput_virtualbase_disconnectNotify(VirtualQAudioBufferOutput* self, QMetaMethod* signal);

QObject* QAudioBufferOutput_protectedbase_sender(const VirtualQAudioBufferOutput* self);
int QAudioBufferOutput_protectedbase_senderSignalIndex(const VirtualQAudioBufferOutput* self);
int QAudioBufferOutput_protectedbase_receivers(const VirtualQAudioBufferOutput* self, const char* signal);
bool QAudioBufferOutput_protectedbase_isSignalConnected(const VirtualQAudioBufferOutput* self, QMetaMethod* signal);

const QMetaObject* QAudioBufferOutput_staticMetaObject();
void QAudioBufferOutput_delete(QAudioBufferOutput* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
