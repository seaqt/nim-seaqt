#pragma once
#ifndef SEAQT_QTMULTIMEDIA_GEN_QAUDIOPROBE_H
#define SEAQT_QTMULTIMEDIA_GEN_QAUDIOPROBE_H

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
class QAudioProbe;
class QChildEvent;
class QEvent;
class QMediaObject;
class QMediaRecorder;
class QMetaMethod;
class QMetaObject;
class QObject;
class QTimerEvent;
#else
typedef struct QAudioBuffer QAudioBuffer;
typedef struct QAudioProbe QAudioProbe;
typedef struct QChildEvent QChildEvent;
typedef struct QEvent QEvent;
typedef struct QMediaObject QMediaObject;
typedef struct QMediaRecorder QMediaRecorder;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QObject QObject;
typedef struct QTimerEvent QTimerEvent;
#endif

typedef struct VirtualQAudioProbe VirtualQAudioProbe;
typedef struct QAudioProbe_VTable{
	void (*destructor)(VirtualQAudioProbe* self);
	QMetaObject* (*metaObject)(const VirtualQAudioProbe* self);
	void* (*metacast)(VirtualQAudioProbe* self, const char* param1);
	int (*metacall)(VirtualQAudioProbe* self, int param1, int param2, void** param3);
	bool (*event)(VirtualQAudioProbe* self, QEvent* event);
	bool (*eventFilter)(VirtualQAudioProbe* self, QObject* watched, QEvent* event);
	void (*timerEvent)(VirtualQAudioProbe* self, QTimerEvent* event);
	void (*childEvent)(VirtualQAudioProbe* self, QChildEvent* event);
	void (*customEvent)(VirtualQAudioProbe* self, QEvent* event);
	void (*connectNotify)(VirtualQAudioProbe* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQAudioProbe* self, QMetaMethod* signal);
}QAudioProbe_VTable;

void* QAudioProbe_vdata(VirtualQAudioProbe* self);
VirtualQAudioProbe* vdata_QAudioProbe(void* vdata);

VirtualQAudioProbe* QAudioProbe_new(const QAudioProbe_VTable* vtbl, size_t vdata);
VirtualQAudioProbe* QAudioProbe_new_parent(const QAudioProbe_VTable* vtbl, size_t vdata, QObject* parent);

void QAudioProbe_virtbase(QAudioProbe* src, QObject** outptr_QObject);
QMetaObject* QAudioProbe_metaObject(const QAudioProbe* self);
void* QAudioProbe_metacast(QAudioProbe* self, const char* param1);
int QAudioProbe_metacall(QAudioProbe* self, int param1, int param2, void** param3);
struct seaqt_string QAudioProbe_tr_s(const char* s);
struct seaqt_string QAudioProbe_trUtf8_s(const char* s);
bool QAudioProbe_setSource_QMediaObject(QAudioProbe* self, QMediaObject* source);
bool QAudioProbe_setSource_QMediaRecorder(QAudioProbe* self, QMediaRecorder* source);
bool QAudioProbe_isActive(const QAudioProbe* self);
void QAudioProbe_audioBufferProbed(QAudioProbe* self, QAudioBuffer* buffer);
void QAudioProbe_connect_audioBufferProbed(QAudioProbe* self, intptr_t slot, void (*callback)(intptr_t, QAudioBuffer*), void (*release)(intptr_t));
void QAudioProbe_flush(QAudioProbe* self);
void QAudioProbe_connect_flush(QAudioProbe* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
struct seaqt_string QAudioProbe_tr_s_c(const char* s, const char* c);
struct seaqt_string QAudioProbe_tr_s_c_n(const char* s, const char* c, int n);
struct seaqt_string QAudioProbe_trUtf8_s_c(const char* s, const char* c);
struct seaqt_string QAudioProbe_trUtf8_s_c_n(const char* s, const char* c, int n);

QMetaObject* QAudioProbe_virtualbase_metaObject(const VirtualQAudioProbe* self);
void* QAudioProbe_virtualbase_metacast(VirtualQAudioProbe* self, const char* param1);
int QAudioProbe_virtualbase_metacall(VirtualQAudioProbe* self, int param1, int param2, void** param3);
bool QAudioProbe_virtualbase_event(VirtualQAudioProbe* self, QEvent* event);
bool QAudioProbe_virtualbase_eventFilter(VirtualQAudioProbe* self, QObject* watched, QEvent* event);
void QAudioProbe_virtualbase_timerEvent(VirtualQAudioProbe* self, QTimerEvent* event);
void QAudioProbe_virtualbase_childEvent(VirtualQAudioProbe* self, QChildEvent* event);
void QAudioProbe_virtualbase_customEvent(VirtualQAudioProbe* self, QEvent* event);
void QAudioProbe_virtualbase_connectNotify(VirtualQAudioProbe* self, QMetaMethod* signal);
void QAudioProbe_virtualbase_disconnectNotify(VirtualQAudioProbe* self, QMetaMethod* signal);

QObject* QAudioProbe_protectedbase_sender(const VirtualQAudioProbe* self);
int QAudioProbe_protectedbase_senderSignalIndex(const VirtualQAudioProbe* self);
int QAudioProbe_protectedbase_receivers(const VirtualQAudioProbe* self, const char* signal);
bool QAudioProbe_protectedbase_isSignalConnected(const VirtualQAudioProbe* self, QMetaMethod* signal);

void QAudioProbe_delete(QAudioProbe* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
