#pragma once
#ifndef SEAQT_QTMULTIMEDIA_GEN_QAUDIOOUTPUT_H
#define SEAQT_QTMULTIMEDIA_GEN_QAUDIOOUTPUT_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt/libseaqt.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QAudioDeviceInfo;
class QAudioFormat;
class QAudioOutput;
class QChildEvent;
class QEvent;
class QIODevice;
class QMetaMethod;
class QMetaObject;
class QObject;
class QTimerEvent;
#else
typedef struct QAudioDeviceInfo QAudioDeviceInfo;
typedef struct QAudioFormat QAudioFormat;
typedef struct QAudioOutput QAudioOutput;
typedef struct QChildEvent QChildEvent;
typedef struct QEvent QEvent;
typedef struct QIODevice QIODevice;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QObject QObject;
typedef struct QTimerEvent QTimerEvent;
#endif

struct QAudioOutput_VTable {
	void (*destructor)(struct QAudioOutput_VTable* vtbl, QAudioOutput* self);
	QMetaObject* (*metaObject)(struct QAudioOutput_VTable* vtbl, const QAudioOutput* self);
	void* (*metacast)(struct QAudioOutput_VTable* vtbl, QAudioOutput* self, const char* param1);
	int (*metacall)(struct QAudioOutput_VTable* vtbl, QAudioOutput* self, int param1, int param2, void** param3);
	bool (*event)(struct QAudioOutput_VTable* vtbl, QAudioOutput* self, QEvent* event);
	bool (*eventFilter)(struct QAudioOutput_VTable* vtbl, QAudioOutput* self, QObject* watched, QEvent* event);
	void (*timerEvent)(struct QAudioOutput_VTable* vtbl, QAudioOutput* self, QTimerEvent* event);
	void (*childEvent)(struct QAudioOutput_VTable* vtbl, QAudioOutput* self, QChildEvent* event);
	void (*customEvent)(struct QAudioOutput_VTable* vtbl, QAudioOutput* self, QEvent* event);
	void (*connectNotify)(struct QAudioOutput_VTable* vtbl, QAudioOutput* self, QMetaMethod* signal);
	void (*disconnectNotify)(struct QAudioOutput_VTable* vtbl, QAudioOutput* self, QMetaMethod* signal);
};
QAudioOutput* QAudioOutput_new(struct QAudioOutput_VTable* vtbl);
QAudioOutput* QAudioOutput_new2(struct QAudioOutput_VTable* vtbl, QAudioDeviceInfo* audioDeviceInfo);
QAudioOutput* QAudioOutput_new3(struct QAudioOutput_VTable* vtbl, QAudioFormat* format);
QAudioOutput* QAudioOutput_new4(struct QAudioOutput_VTable* vtbl, QAudioFormat* format, QObject* parent);
QAudioOutput* QAudioOutput_new5(struct QAudioOutput_VTable* vtbl, QAudioDeviceInfo* audioDeviceInfo, QAudioFormat* format);
QAudioOutput* QAudioOutput_new6(struct QAudioOutput_VTable* vtbl, QAudioDeviceInfo* audioDeviceInfo, QAudioFormat* format, QObject* parent);
void QAudioOutput_virtbase(QAudioOutput* src, QObject** outptr_QObject);
QMetaObject* QAudioOutput_metaObject(const QAudioOutput* self);
void* QAudioOutput_metacast(QAudioOutput* self, const char* param1);
int QAudioOutput_metacall(QAudioOutput* self, int param1, int param2, void** param3);
struct miqt_string QAudioOutput_tr(const char* s);
struct miqt_string QAudioOutput_trUtf8(const char* s);
QAudioFormat* QAudioOutput_format(const QAudioOutput* self);
void QAudioOutput_start(QAudioOutput* self, QIODevice* device);
QIODevice* QAudioOutput_start2(QAudioOutput* self);
void QAudioOutput_stop(QAudioOutput* self);
void QAudioOutput_reset(QAudioOutput* self);
void QAudioOutput_suspend(QAudioOutput* self);
void QAudioOutput_resume(QAudioOutput* self);
void QAudioOutput_setBufferSize(QAudioOutput* self, int bytes);
int QAudioOutput_bufferSize(const QAudioOutput* self);
int QAudioOutput_bytesFree(const QAudioOutput* self);
int QAudioOutput_periodSize(const QAudioOutput* self);
void QAudioOutput_setNotifyInterval(QAudioOutput* self, int milliSeconds);
int QAudioOutput_notifyInterval(const QAudioOutput* self);
long long QAudioOutput_processedUSecs(const QAudioOutput* self);
long long QAudioOutput_elapsedUSecs(const QAudioOutput* self);
int QAudioOutput_error(const QAudioOutput* self);
int QAudioOutput_state(const QAudioOutput* self);
void QAudioOutput_setVolume(QAudioOutput* self, double volume);
double QAudioOutput_volume(const QAudioOutput* self);
struct miqt_string QAudioOutput_category(const QAudioOutput* self);
void QAudioOutput_setCategory(QAudioOutput* self, struct miqt_string category);
void QAudioOutput_stateChanged(QAudioOutput* self, int state);
void QAudioOutput_connect_stateChanged(QAudioOutput* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t));
void QAudioOutput_notify(QAudioOutput* self);
void QAudioOutput_connect_notify(QAudioOutput* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
struct miqt_string QAudioOutput_tr2(const char* s, const char* c);
struct miqt_string QAudioOutput_tr3(const char* s, const char* c, int n);
struct miqt_string QAudioOutput_trUtf82(const char* s, const char* c);
struct miqt_string QAudioOutput_trUtf83(const char* s, const char* c, int n);
QMetaObject* QAudioOutput_virtualbase_metaObject(const void* self);
void* QAudioOutput_virtualbase_metacast(void* self, const char* param1);
int QAudioOutput_virtualbase_metacall(void* self, int param1, int param2, void** param3);
bool QAudioOutput_virtualbase_event(void* self, QEvent* event);
bool QAudioOutput_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);
void QAudioOutput_virtualbase_timerEvent(void* self, QTimerEvent* event);
void QAudioOutput_virtualbase_childEvent(void* self, QChildEvent* event);
void QAudioOutput_virtualbase_customEvent(void* self, QEvent* event);
void QAudioOutput_virtualbase_connectNotify(void* self, QMetaMethod* signal);
void QAudioOutput_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
QObject* QAudioOutput_protectedbase_sender(bool* _dynamic_cast_ok, const void* self);
int QAudioOutput_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self);
int QAudioOutput_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal);
bool QAudioOutput_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal);
const QMetaObject* QAudioOutput_staticMetaObject();
void QAudioOutput_delete(QAudioOutput* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
