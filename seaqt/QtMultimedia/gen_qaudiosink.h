#pragma once
#ifndef SEAQT_QTMULTIMEDIA_GEN_QAUDIOSINK_H
#define SEAQT_QTMULTIMEDIA_GEN_QAUDIOSINK_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt/libseaqt.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QAudioDevice;
class QAudioFormat;
class QAudioSink;
class QChildEvent;
class QEvent;
class QIODevice;
class QMetaMethod;
class QMetaObject;
class QObject;
class QTimerEvent;
#else
typedef struct QAudioDevice QAudioDevice;
typedef struct QAudioFormat QAudioFormat;
typedef struct QAudioSink QAudioSink;
typedef struct QChildEvent QChildEvent;
typedef struct QEvent QEvent;
typedef struct QIODevice QIODevice;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QObject QObject;
typedef struct QTimerEvent QTimerEvent;
#endif

struct QAudioSink_VTable {
	void (*destructor)(struct QAudioSink_VTable* vtbl, QAudioSink* self);
	QMetaObject* (*metaObject)(struct QAudioSink_VTable* vtbl, const QAudioSink* self);
	void* (*metacast)(struct QAudioSink_VTable* vtbl, QAudioSink* self, const char* param1);
	int (*metacall)(struct QAudioSink_VTable* vtbl, QAudioSink* self, int param1, int param2, void** param3);
	bool (*event)(struct QAudioSink_VTable* vtbl, QAudioSink* self, QEvent* event);
	bool (*eventFilter)(struct QAudioSink_VTable* vtbl, QAudioSink* self, QObject* watched, QEvent* event);
	void (*timerEvent)(struct QAudioSink_VTable* vtbl, QAudioSink* self, QTimerEvent* event);
	void (*childEvent)(struct QAudioSink_VTable* vtbl, QAudioSink* self, QChildEvent* event);
	void (*customEvent)(struct QAudioSink_VTable* vtbl, QAudioSink* self, QEvent* event);
	void (*connectNotify)(struct QAudioSink_VTable* vtbl, QAudioSink* self, QMetaMethod* signal);
	void (*disconnectNotify)(struct QAudioSink_VTable* vtbl, QAudioSink* self, QMetaMethod* signal);
};
QAudioSink* QAudioSink_new(struct QAudioSink_VTable* vtbl);
QAudioSink* QAudioSink_new2(struct QAudioSink_VTable* vtbl, QAudioDevice* audioDeviceInfo);
QAudioSink* QAudioSink_new3(struct QAudioSink_VTable* vtbl, QAudioFormat* format);
QAudioSink* QAudioSink_new4(struct QAudioSink_VTable* vtbl, QAudioFormat* format, QObject* parent);
QAudioSink* QAudioSink_new5(struct QAudioSink_VTable* vtbl, QAudioDevice* audioDeviceInfo, QAudioFormat* format);
QAudioSink* QAudioSink_new6(struct QAudioSink_VTable* vtbl, QAudioDevice* audioDeviceInfo, QAudioFormat* format, QObject* parent);
void QAudioSink_virtbase(QAudioSink* src, QObject** outptr_QObject);
QMetaObject* QAudioSink_metaObject(const QAudioSink* self);
void* QAudioSink_metacast(QAudioSink* self, const char* param1);
int QAudioSink_metacall(QAudioSink* self, int param1, int param2, void** param3);
struct miqt_string QAudioSink_tr(const char* s);
bool QAudioSink_isNull(const QAudioSink* self);
QAudioFormat* QAudioSink_format(const QAudioSink* self);
void QAudioSink_start(QAudioSink* self, QIODevice* device);
QIODevice* QAudioSink_start2(QAudioSink* self);
void QAudioSink_stop(QAudioSink* self);
void QAudioSink_reset(QAudioSink* self);
void QAudioSink_suspend(QAudioSink* self);
void QAudioSink_resume(QAudioSink* self);
void QAudioSink_setBufferSize(QAudioSink* self, ptrdiff_t bytes);
ptrdiff_t QAudioSink_bufferSize(const QAudioSink* self);
ptrdiff_t QAudioSink_bytesFree(const QAudioSink* self);
long long QAudioSink_processedUSecs(const QAudioSink* self);
long long QAudioSink_elapsedUSecs(const QAudioSink* self);
int QAudioSink_error(const QAudioSink* self);
int QAudioSink_state(const QAudioSink* self);
void QAudioSink_setVolume(QAudioSink* self, double volume);
double QAudioSink_volume(const QAudioSink* self);
void QAudioSink_stateChanged(QAudioSink* self, int state);
void QAudioSink_connect_stateChanged(QAudioSink* self, intptr_t slot);
struct miqt_string QAudioSink_tr2(const char* s, const char* c);
struct miqt_string QAudioSink_tr3(const char* s, const char* c, int n);
QMetaObject* QAudioSink_virtualbase_metaObject(const void* self);
void* QAudioSink_virtualbase_metacast(void* self, const char* param1);
int QAudioSink_virtualbase_metacall(void* self, int param1, int param2, void** param3);
bool QAudioSink_virtualbase_event(void* self, QEvent* event);
bool QAudioSink_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);
void QAudioSink_virtualbase_timerEvent(void* self, QTimerEvent* event);
void QAudioSink_virtualbase_childEvent(void* self, QChildEvent* event);
void QAudioSink_virtualbase_customEvent(void* self, QEvent* event);
void QAudioSink_virtualbase_connectNotify(void* self, QMetaMethod* signal);
void QAudioSink_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
QObject* QAudioSink_protectedbase_sender(bool* _dynamic_cast_ok, const void* self);
int QAudioSink_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self);
int QAudioSink_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal);
bool QAudioSink_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal);
const QMetaObject* QAudioSink_staticMetaObject();
void QAudioSink_delete(QAudioSink* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
