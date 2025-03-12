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

typedef struct VirtualQAudioInput VirtualQAudioInput;
typedef struct QAudioInput_VTable{
	void (*destructor)(VirtualQAudioInput* self);
	QMetaObject* (*metaObject)(const VirtualQAudioInput* self);
	void* (*metacast)(VirtualQAudioInput* self, const char* param1);
	int (*metacall)(VirtualQAudioInput* self, int param1, int param2, void** param3);
	bool (*event)(VirtualQAudioInput* self, QEvent* event);
	bool (*eventFilter)(VirtualQAudioInput* self, QObject* watched, QEvent* event);
	void (*timerEvent)(VirtualQAudioInput* self, QTimerEvent* event);
	void (*childEvent)(VirtualQAudioInput* self, QChildEvent* event);
	void (*customEvent)(VirtualQAudioInput* self, QEvent* event);
	void (*connectNotify)(VirtualQAudioInput* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQAudioInput* self, QMetaMethod* signal);
}QAudioInput_VTable;

const QAudioInput_VTable* QAudioInput_vtbl(const VirtualQAudioInput* self);
void* QAudioInput_vdata(const VirtualQAudioInput* self);
void QAudioInput_setVdata(VirtualQAudioInput* self, void* vdata);

VirtualQAudioInput* QAudioInput_new(const QAudioInput_VTable* vtbl, void* vdata);
VirtualQAudioInput* QAudioInput_new2(const QAudioInput_VTable* vtbl, void* vdata, QAudioDeviceInfo* audioDeviceInfo);
VirtualQAudioInput* QAudioInput_new3(const QAudioInput_VTable* vtbl, void* vdata, QAudioFormat* format);
VirtualQAudioInput* QAudioInput_new4(const QAudioInput_VTable* vtbl, void* vdata, QAudioFormat* format, QObject* parent);
VirtualQAudioInput* QAudioInput_new5(const QAudioInput_VTable* vtbl, void* vdata, QAudioDeviceInfo* audioDeviceInfo, QAudioFormat* format);
VirtualQAudioInput* QAudioInput_new6(const QAudioInput_VTable* vtbl, void* vdata, QAudioDeviceInfo* audioDeviceInfo, QAudioFormat* format, QObject* parent);

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
void QAudioInput_connect_stateChanged(VirtualQAudioInput* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t));
void QAudioInput_notify(QAudioInput* self);
void QAudioInput_connect_notify(VirtualQAudioInput* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
struct miqt_string QAudioInput_tr2(const char* s, const char* c);
struct miqt_string QAudioInput_tr3(const char* s, const char* c, int n);
struct miqt_string QAudioInput_trUtf82(const char* s, const char* c);
struct miqt_string QAudioInput_trUtf83(const char* s, const char* c, int n);

QMetaObject* QAudioInput_virtualbase_metaObject(const VirtualQAudioInput* self);
void* QAudioInput_virtualbase_metacast(VirtualQAudioInput* self, const char* param1);
int QAudioInput_virtualbase_metacall(VirtualQAudioInput* self, int param1, int param2, void** param3);
bool QAudioInput_virtualbase_event(VirtualQAudioInput* self, QEvent* event);
bool QAudioInput_virtualbase_eventFilter(VirtualQAudioInput* self, QObject* watched, QEvent* event);
void QAudioInput_virtualbase_timerEvent(VirtualQAudioInput* self, QTimerEvent* event);
void QAudioInput_virtualbase_childEvent(VirtualQAudioInput* self, QChildEvent* event);
void QAudioInput_virtualbase_customEvent(VirtualQAudioInput* self, QEvent* event);
void QAudioInput_virtualbase_connectNotify(VirtualQAudioInput* self, QMetaMethod* signal);
void QAudioInput_virtualbase_disconnectNotify(VirtualQAudioInput* self, QMetaMethod* signal);

QObject* QAudioInput_protectedbase_sender(const VirtualQAudioInput* self);
int QAudioInput_protectedbase_senderSignalIndex(const VirtualQAudioInput* self);
int QAudioInput_protectedbase_receivers(const VirtualQAudioInput* self, const char* signal);
bool QAudioInput_protectedbase_isSignalConnected(const VirtualQAudioInput* self, QMetaMethod* signal);

const QMetaObject* QAudioInput_staticMetaObject();
void QAudioInput_delete(QAudioInput* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
