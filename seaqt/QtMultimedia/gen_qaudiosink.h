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

typedef struct VirtualQAudioSink VirtualQAudioSink;
typedef struct QAudioSink_VTable{
	void (*destructor)(VirtualQAudioSink* self);
	QMetaObject* (*metaObject)(const VirtualQAudioSink* self);
	void* (*metacast)(VirtualQAudioSink* self, const char* param1);
	int (*metacall)(VirtualQAudioSink* self, int param1, int param2, void** param3);
	bool (*event)(VirtualQAudioSink* self, QEvent* event);
	bool (*eventFilter)(VirtualQAudioSink* self, QObject* watched, QEvent* event);
	void (*timerEvent)(VirtualQAudioSink* self, QTimerEvent* event);
	void (*childEvent)(VirtualQAudioSink* self, QChildEvent* event);
	void (*customEvent)(VirtualQAudioSink* self, QEvent* event);
	void (*connectNotify)(VirtualQAudioSink* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQAudioSink* self, QMetaMethod* signal);
}QAudioSink_VTable;

const QAudioSink_VTable* QAudioSink_vtbl(const VirtualQAudioSink* self);
void* QAudioSink_vdata(const VirtualQAudioSink* self);
void QAudioSink_setVdata(VirtualQAudioSink* self, void* vdata);

VirtualQAudioSink* QAudioSink_new(const QAudioSink_VTable* vtbl, void* vdata);
VirtualQAudioSink* QAudioSink_new2(const QAudioSink_VTable* vtbl, void* vdata, QAudioDevice* audioDeviceInfo);
VirtualQAudioSink* QAudioSink_new3(const QAudioSink_VTable* vtbl, void* vdata, QAudioFormat* format);
VirtualQAudioSink* QAudioSink_new4(const QAudioSink_VTable* vtbl, void* vdata, QAudioFormat* format, QObject* parent);
VirtualQAudioSink* QAudioSink_new5(const QAudioSink_VTable* vtbl, void* vdata, QAudioDevice* audioDeviceInfo, QAudioFormat* format);
VirtualQAudioSink* QAudioSink_new6(const QAudioSink_VTable* vtbl, void* vdata, QAudioDevice* audioDeviceInfo, QAudioFormat* format, QObject* parent);

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
void QAudioSink_connect_stateChanged(VirtualQAudioSink* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t));
struct miqt_string QAudioSink_tr2(const char* s, const char* c);
struct miqt_string QAudioSink_tr3(const char* s, const char* c, int n);

QMetaObject* QAudioSink_virtualbase_metaObject(const VirtualQAudioSink* self);
void* QAudioSink_virtualbase_metacast(VirtualQAudioSink* self, const char* param1);
int QAudioSink_virtualbase_metacall(VirtualQAudioSink* self, int param1, int param2, void** param3);
bool QAudioSink_virtualbase_event(VirtualQAudioSink* self, QEvent* event);
bool QAudioSink_virtualbase_eventFilter(VirtualQAudioSink* self, QObject* watched, QEvent* event);
void QAudioSink_virtualbase_timerEvent(VirtualQAudioSink* self, QTimerEvent* event);
void QAudioSink_virtualbase_childEvent(VirtualQAudioSink* self, QChildEvent* event);
void QAudioSink_virtualbase_customEvent(VirtualQAudioSink* self, QEvent* event);
void QAudioSink_virtualbase_connectNotify(VirtualQAudioSink* self, QMetaMethod* signal);
void QAudioSink_virtualbase_disconnectNotify(VirtualQAudioSink* self, QMetaMethod* signal);

QObject* QAudioSink_protectedbase_sender(const VirtualQAudioSink* self);
int QAudioSink_protectedbase_senderSignalIndex(const VirtualQAudioSink* self);
int QAudioSink_protectedbase_receivers(const VirtualQAudioSink* self, const char* signal);
bool QAudioSink_protectedbase_isSignalConnected(const VirtualQAudioSink* self, QMetaMethod* signal);

const QMetaObject* QAudioSink_staticMetaObject();
void QAudioSink_delete(QAudioSink* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
