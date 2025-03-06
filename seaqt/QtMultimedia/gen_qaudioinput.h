#pragma once
#ifndef SEAQT_QTMULTIMEDIA_GEN_QAUDIOINPUT_H
#define SEAQT_QTMULTIMEDIA_GEN_QAUDIOINPUT_H

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
class QAudioInput;
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
typedef struct QAudioInput QAudioInput;
typedef struct QChildEvent QChildEvent;
typedef struct QEvent QEvent;
typedef struct QIODevice QIODevice;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QObject QObject;
typedef struct QTimerEvent QTimerEvent;
#endif

struct QAudioInput_VTable {
	void (*destructor)(struct QAudioInput_VTable* vtbl, QAudioInput* self);
	QMetaObject* (*metaObject)(struct QAudioInput_VTable* vtbl, const QAudioInput* self);
	void* (*metacast)(struct QAudioInput_VTable* vtbl, QAudioInput* self, const char* param1);
	int (*metacall)(struct QAudioInput_VTable* vtbl, QAudioInput* self, int param1, int param2, void** param3);
	bool (*event)(struct QAudioInput_VTable* vtbl, QAudioInput* self, QEvent* event);
	bool (*eventFilter)(struct QAudioInput_VTable* vtbl, QAudioInput* self, QObject* watched, QEvent* event);
	void (*timerEvent)(struct QAudioInput_VTable* vtbl, QAudioInput* self, QTimerEvent* event);
	void (*childEvent)(struct QAudioInput_VTable* vtbl, QAudioInput* self, QChildEvent* event);
	void (*customEvent)(struct QAudioInput_VTable* vtbl, QAudioInput* self, QEvent* event);
	void (*connectNotify)(struct QAudioInput_VTable* vtbl, QAudioInput* self, QMetaMethod* signal);
	void (*disconnectNotify)(struct QAudioInput_VTable* vtbl, QAudioInput* self, QMetaMethod* signal);
};
QAudioInput* QAudioInput_new(struct QAudioInput_VTable* vtbl);
QAudioInput* QAudioInput_new2(struct QAudioInput_VTable* vtbl, QAudioDeviceInfo* audioDeviceInfo);
QAudioInput* QAudioInput_new3(struct QAudioInput_VTable* vtbl, QAudioFormat* format);
QAudioInput* QAudioInput_new4(struct QAudioInput_VTable* vtbl, QAudioFormat* format, QObject* parent);
QAudioInput* QAudioInput_new5(struct QAudioInput_VTable* vtbl, QAudioDeviceInfo* audioDeviceInfo, QAudioFormat* format);
QAudioInput* QAudioInput_new6(struct QAudioInput_VTable* vtbl, QAudioDeviceInfo* audioDeviceInfo, QAudioFormat* format, QObject* parent);
void QAudioInput_virtbase(QAudioInput* src, QObject** outptr_QObject);
QMetaObject* QAudioInput_metaObject(const QAudioInput* self);
void* QAudioInput_metacast(QAudioInput* self, const char* param1);
int QAudioInput_metacall(QAudioInput* self, int param1, int param2, void** param3);
struct miqt_string QAudioInput_tr(const char* s);
struct miqt_string QAudioInput_trUtf8(const char* s);
QAudioFormat* QAudioInput_format(const QAudioInput* self);
void QAudioInput_start(QAudioInput* self, QIODevice* device);
QIODevice* QAudioInput_start2(QAudioInput* self);
void QAudioInput_stop(QAudioInput* self);
void QAudioInput_reset(QAudioInput* self);
void QAudioInput_suspend(QAudioInput* self);
void QAudioInput_resume(QAudioInput* self);
void QAudioInput_setBufferSize(QAudioInput* self, int bytes);
int QAudioInput_bufferSize(const QAudioInput* self);
int QAudioInput_bytesReady(const QAudioInput* self);
int QAudioInput_periodSize(const QAudioInput* self);
void QAudioInput_setNotifyInterval(QAudioInput* self, int milliSeconds);
int QAudioInput_notifyInterval(const QAudioInput* self);
void QAudioInput_setVolume(QAudioInput* self, double volume);
double QAudioInput_volume(const QAudioInput* self);
long long QAudioInput_processedUSecs(const QAudioInput* self);
long long QAudioInput_elapsedUSecs(const QAudioInput* self);
int QAudioInput_error(const QAudioInput* self);
int QAudioInput_state(const QAudioInput* self);
void QAudioInput_stateChanged(QAudioInput* self, int state);
void QAudioInput_connect_stateChanged(QAudioInput* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t));
void QAudioInput_notify(QAudioInput* self);
void QAudioInput_connect_notify(QAudioInput* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
struct miqt_string QAudioInput_tr2(const char* s, const char* c);
struct miqt_string QAudioInput_tr3(const char* s, const char* c, int n);
struct miqt_string QAudioInput_trUtf82(const char* s, const char* c);
struct miqt_string QAudioInput_trUtf83(const char* s, const char* c, int n);
QMetaObject* QAudioInput_virtualbase_metaObject(const void* self);
void* QAudioInput_virtualbase_metacast(void* self, const char* param1);
int QAudioInput_virtualbase_metacall(void* self, int param1, int param2, void** param3);
bool QAudioInput_virtualbase_event(void* self, QEvent* event);
bool QAudioInput_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);
void QAudioInput_virtualbase_timerEvent(void* self, QTimerEvent* event);
void QAudioInput_virtualbase_childEvent(void* self, QChildEvent* event);
void QAudioInput_virtualbase_customEvent(void* self, QEvent* event);
void QAudioInput_virtualbase_connectNotify(void* self, QMetaMethod* signal);
void QAudioInput_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
QObject* QAudioInput_protectedbase_sender(const void* self);
int QAudioInput_protectedbase_senderSignalIndex(const void* self);
int QAudioInput_protectedbase_receivers(const void* self, const char* signal);
bool QAudioInput_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal);
const QMetaObject* QAudioInput_staticMetaObject();
void QAudioInput_delete(QAudioInput* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
