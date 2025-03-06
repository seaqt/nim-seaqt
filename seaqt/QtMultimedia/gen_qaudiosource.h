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

struct QAudioSource_VTable {
	void (*destructor)(struct QAudioSource_VTable* vtbl, QAudioSource* self);
	QMetaObject* (*metaObject)(struct QAudioSource_VTable* vtbl, const QAudioSource* self);
	void* (*metacast)(struct QAudioSource_VTable* vtbl, QAudioSource* self, const char* param1);
	int (*metacall)(struct QAudioSource_VTable* vtbl, QAudioSource* self, int param1, int param2, void** param3);
	bool (*event)(struct QAudioSource_VTable* vtbl, QAudioSource* self, QEvent* event);
	bool (*eventFilter)(struct QAudioSource_VTable* vtbl, QAudioSource* self, QObject* watched, QEvent* event);
	void (*timerEvent)(struct QAudioSource_VTable* vtbl, QAudioSource* self, QTimerEvent* event);
	void (*childEvent)(struct QAudioSource_VTable* vtbl, QAudioSource* self, QChildEvent* event);
	void (*customEvent)(struct QAudioSource_VTable* vtbl, QAudioSource* self, QEvent* event);
	void (*connectNotify)(struct QAudioSource_VTable* vtbl, QAudioSource* self, QMetaMethod* signal);
	void (*disconnectNotify)(struct QAudioSource_VTable* vtbl, QAudioSource* self, QMetaMethod* signal);
};
QAudioSource* QAudioSource_new(struct QAudioSource_VTable* vtbl);
QAudioSource* QAudioSource_new2(struct QAudioSource_VTable* vtbl, QAudioDevice* audioDeviceInfo);
QAudioSource* QAudioSource_new3(struct QAudioSource_VTable* vtbl, QAudioFormat* format);
QAudioSource* QAudioSource_new4(struct QAudioSource_VTable* vtbl, QAudioFormat* format, QObject* parent);
QAudioSource* QAudioSource_new5(struct QAudioSource_VTable* vtbl, QAudioDevice* audioDeviceInfo, QAudioFormat* format);
QAudioSource* QAudioSource_new6(struct QAudioSource_VTable* vtbl, QAudioDevice* audioDeviceInfo, QAudioFormat* format, QObject* parent);
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
void QAudioSource_connect_stateChanged(QAudioSource* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t));
struct miqt_string QAudioSource_tr2(const char* s, const char* c);
struct miqt_string QAudioSource_tr3(const char* s, const char* c, int n);
QMetaObject* QAudioSource_virtualbase_metaObject(const void* self);
void* QAudioSource_virtualbase_metacast(void* self, const char* param1);
int QAudioSource_virtualbase_metacall(void* self, int param1, int param2, void** param3);
bool QAudioSource_virtualbase_event(void* self, QEvent* event);
bool QAudioSource_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);
void QAudioSource_virtualbase_timerEvent(void* self, QTimerEvent* event);
void QAudioSource_virtualbase_childEvent(void* self, QChildEvent* event);
void QAudioSource_virtualbase_customEvent(void* self, QEvent* event);
void QAudioSource_virtualbase_connectNotify(void* self, QMetaMethod* signal);
void QAudioSource_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
QObject* QAudioSource_protectedbase_sender(bool* _dynamic_cast_ok, const void* self);
int QAudioSource_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self);
int QAudioSource_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal);
bool QAudioSource_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal);
const QMetaObject* QAudioSource_staticMetaObject();
void QAudioSource_delete(QAudioSource* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
