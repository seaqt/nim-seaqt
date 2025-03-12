#pragma once
#ifndef SEAQT_QTMULTIMEDIA_GEN_QAUDIOSOURCE_H
#define SEAQT_QTMULTIMEDIA_GEN_QAUDIOSOURCE_H

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
class QAudioSource;
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
typedef struct QAudioSource QAudioSource;
typedef struct QChildEvent QChildEvent;
typedef struct QEvent QEvent;
typedef struct QIODevice QIODevice;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QObject QObject;
typedef struct QTimerEvent QTimerEvent;
#endif

typedef struct VirtualQAudioSource VirtualQAudioSource;
typedef struct QAudioSource_VTable{
	void (*destructor)(VirtualQAudioSource* self);
	QMetaObject* (*metaObject)(const VirtualQAudioSource* self);
	void* (*metacast)(VirtualQAudioSource* self, const char* param1);
	int (*metacall)(VirtualQAudioSource* self, int param1, int param2, void** param3);
	bool (*event)(VirtualQAudioSource* self, QEvent* event);
	bool (*eventFilter)(VirtualQAudioSource* self, QObject* watched, QEvent* event);
	void (*timerEvent)(VirtualQAudioSource* self, QTimerEvent* event);
	void (*childEvent)(VirtualQAudioSource* self, QChildEvent* event);
	void (*customEvent)(VirtualQAudioSource* self, QEvent* event);
	void (*connectNotify)(VirtualQAudioSource* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQAudioSource* self, QMetaMethod* signal);
}QAudioSource_VTable;

const QAudioSource_VTable* QAudioSource_vtbl(const VirtualQAudioSource* self);
void* QAudioSource_vdata(const VirtualQAudioSource* self);
void QAudioSource_setVdata(VirtualQAudioSource* self, void* vdata);

VirtualQAudioSource* QAudioSource_new(const QAudioSource_VTable* vtbl, void* vdata);
VirtualQAudioSource* QAudioSource_new2(const QAudioSource_VTable* vtbl, void* vdata, QAudioDevice* audioDeviceInfo);
VirtualQAudioSource* QAudioSource_new3(const QAudioSource_VTable* vtbl, void* vdata, QAudioFormat* format);
VirtualQAudioSource* QAudioSource_new4(const QAudioSource_VTable* vtbl, void* vdata, QAudioFormat* format, QObject* parent);
VirtualQAudioSource* QAudioSource_new5(const QAudioSource_VTable* vtbl, void* vdata, QAudioDevice* audioDeviceInfo, QAudioFormat* format);
VirtualQAudioSource* QAudioSource_new6(const QAudioSource_VTable* vtbl, void* vdata, QAudioDevice* audioDeviceInfo, QAudioFormat* format, QObject* parent);

void QAudioSource_virtbase(QAudioSource* src, QObject** outptr_QObject);
QMetaObject* QAudioSource_metaObject(const QAudioSource* self);
void* QAudioSource_metacast(QAudioSource* self, const char* param1);
int QAudioSource_metacall(QAudioSource* self, int param1, int param2, void** param3);
struct miqt_string QAudioSource_tr(const char* s);
bool QAudioSource_isNull(const QAudioSource* self);
QAudioFormat* QAudioSource_format(const QAudioSource* self);
void QAudioSource_start(QAudioSource* self, QIODevice* device);
QIODevice* QAudioSource_start2(QAudioSource* self);
void QAudioSource_stop(QAudioSource* self);
void QAudioSource_reset(QAudioSource* self);
void QAudioSource_suspend(QAudioSource* self);
void QAudioSource_resume(QAudioSource* self);
void QAudioSource_setBufferSize(QAudioSource* self, ptrdiff_t bytes);
ptrdiff_t QAudioSource_bufferSize(const QAudioSource* self);
ptrdiff_t QAudioSource_bytesAvailable(const QAudioSource* self);
void QAudioSource_setVolume(QAudioSource* self, double volume);
double QAudioSource_volume(const QAudioSource* self);
long long QAudioSource_processedUSecs(const QAudioSource* self);
long long QAudioSource_elapsedUSecs(const QAudioSource* self);
int QAudioSource_error(const QAudioSource* self);
int QAudioSource_state(const QAudioSource* self);
void QAudioSource_stateChanged(QAudioSource* self, int state);
void QAudioSource_connect_stateChanged(VirtualQAudioSource* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t));
struct miqt_string QAudioSource_tr2(const char* s, const char* c);
struct miqt_string QAudioSource_tr3(const char* s, const char* c, int n);

QMetaObject* QAudioSource_virtualbase_metaObject(const VirtualQAudioSource* self);
void* QAudioSource_virtualbase_metacast(VirtualQAudioSource* self, const char* param1);
int QAudioSource_virtualbase_metacall(VirtualQAudioSource* self, int param1, int param2, void** param3);
bool QAudioSource_virtualbase_event(VirtualQAudioSource* self, QEvent* event);
bool QAudioSource_virtualbase_eventFilter(VirtualQAudioSource* self, QObject* watched, QEvent* event);
void QAudioSource_virtualbase_timerEvent(VirtualQAudioSource* self, QTimerEvent* event);
void QAudioSource_virtualbase_childEvent(VirtualQAudioSource* self, QChildEvent* event);
void QAudioSource_virtualbase_customEvent(VirtualQAudioSource* self, QEvent* event);
void QAudioSource_virtualbase_connectNotify(VirtualQAudioSource* self, QMetaMethod* signal);
void QAudioSource_virtualbase_disconnectNotify(VirtualQAudioSource* self, QMetaMethod* signal);

QObject* QAudioSource_protectedbase_sender(const VirtualQAudioSource* self);
int QAudioSource_protectedbase_senderSignalIndex(const VirtualQAudioSource* self);
int QAudioSource_protectedbase_receivers(const VirtualQAudioSource* self, const char* signal);
bool QAudioSource_protectedbase_isSignalConnected(const VirtualQAudioSource* self, QMetaMethod* signal);

const QMetaObject* QAudioSource_staticMetaObject();
void QAudioSource_delete(QAudioSource* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
