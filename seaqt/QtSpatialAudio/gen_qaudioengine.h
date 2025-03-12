#pragma once
#ifndef SEAQT_QTSPATIALAUDIO_GEN_QAUDIOENGINE_H
#define SEAQT_QTSPATIALAUDIO_GEN_QAUDIOENGINE_H

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
class QAudioEngine;
class QChildEvent;
class QEvent;
class QMetaMethod;
class QMetaObject;
class QObject;
class QTimerEvent;
#else
typedef struct QAudioDevice QAudioDevice;
typedef struct QAudioEngine QAudioEngine;
typedef struct QChildEvent QChildEvent;
typedef struct QEvent QEvent;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QObject QObject;
typedef struct QTimerEvent QTimerEvent;
#endif

typedef struct VirtualQAudioEngine VirtualQAudioEngine;
typedef struct QAudioEngine_VTable{
	void (*destructor)(VirtualQAudioEngine* self);
	QMetaObject* (*metaObject)(const VirtualQAudioEngine* self);
	void* (*metacast)(VirtualQAudioEngine* self, const char* param1);
	int (*metacall)(VirtualQAudioEngine* self, int param1, int param2, void** param3);
	bool (*event)(VirtualQAudioEngine* self, QEvent* event);
	bool (*eventFilter)(VirtualQAudioEngine* self, QObject* watched, QEvent* event);
	void (*timerEvent)(VirtualQAudioEngine* self, QTimerEvent* event);
	void (*childEvent)(VirtualQAudioEngine* self, QChildEvent* event);
	void (*customEvent)(VirtualQAudioEngine* self, QEvent* event);
	void (*connectNotify)(VirtualQAudioEngine* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQAudioEngine* self, QMetaMethod* signal);
}QAudioEngine_VTable;

const QAudioEngine_VTable* QAudioEngine_vtbl(const VirtualQAudioEngine* self);
void* QAudioEngine_vdata(const VirtualQAudioEngine* self);
void QAudioEngine_setVdata(VirtualQAudioEngine* self, void* vdata);

VirtualQAudioEngine* QAudioEngine_new(const QAudioEngine_VTable* vtbl, void* vdata);
VirtualQAudioEngine* QAudioEngine_new2(const QAudioEngine_VTable* vtbl, void* vdata, QObject* parent);
VirtualQAudioEngine* QAudioEngine_new3(const QAudioEngine_VTable* vtbl, void* vdata, int sampleRate);
VirtualQAudioEngine* QAudioEngine_new4(const QAudioEngine_VTable* vtbl, void* vdata, int sampleRate, QObject* parent);

void QAudioEngine_virtbase(QAudioEngine* src, QObject** outptr_QObject);
QMetaObject* QAudioEngine_metaObject(const QAudioEngine* self);
void* QAudioEngine_metacast(QAudioEngine* self, const char* param1);
int QAudioEngine_metacall(QAudioEngine* self, int param1, int param2, void** param3);
struct miqt_string QAudioEngine_tr(const char* s);
void QAudioEngine_setOutputMode(QAudioEngine* self, int mode);
int QAudioEngine_outputMode(const QAudioEngine* self);
int QAudioEngine_sampleRate(const QAudioEngine* self);
void QAudioEngine_setOutputDevice(QAudioEngine* self, QAudioDevice* device);
QAudioDevice* QAudioEngine_outputDevice(const QAudioEngine* self);
void QAudioEngine_setMasterVolume(QAudioEngine* self, float volume);
float QAudioEngine_masterVolume(const QAudioEngine* self);
void QAudioEngine_setPaused(QAudioEngine* self, bool paused);
bool QAudioEngine_paused(const QAudioEngine* self);
void QAudioEngine_setRoomEffectsEnabled(QAudioEngine* self, bool enabled);
bool QAudioEngine_roomEffectsEnabled(const QAudioEngine* self);
void QAudioEngine_setDistanceScale(QAudioEngine* self, float scale);
float QAudioEngine_distanceScale(const QAudioEngine* self);
void QAudioEngine_outputModeChanged(QAudioEngine* self);
void QAudioEngine_connect_outputModeChanged(VirtualQAudioEngine* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QAudioEngine_outputDeviceChanged(QAudioEngine* self);
void QAudioEngine_connect_outputDeviceChanged(VirtualQAudioEngine* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QAudioEngine_masterVolumeChanged(QAudioEngine* self);
void QAudioEngine_connect_masterVolumeChanged(VirtualQAudioEngine* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QAudioEngine_pausedChanged(QAudioEngine* self);
void QAudioEngine_connect_pausedChanged(VirtualQAudioEngine* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QAudioEngine_distanceScaleChanged(QAudioEngine* self);
void QAudioEngine_connect_distanceScaleChanged(VirtualQAudioEngine* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QAudioEngine_start(QAudioEngine* self);
void QAudioEngine_stop(QAudioEngine* self);
void QAudioEngine_pause(QAudioEngine* self);
void QAudioEngine_resume(QAudioEngine* self);
struct miqt_string QAudioEngine_tr2(const char* s, const char* c);
struct miqt_string QAudioEngine_tr3(const char* s, const char* c, int n);

QMetaObject* QAudioEngine_virtualbase_metaObject(const VirtualQAudioEngine* self);
void* QAudioEngine_virtualbase_metacast(VirtualQAudioEngine* self, const char* param1);
int QAudioEngine_virtualbase_metacall(VirtualQAudioEngine* self, int param1, int param2, void** param3);
bool QAudioEngine_virtualbase_event(VirtualQAudioEngine* self, QEvent* event);
bool QAudioEngine_virtualbase_eventFilter(VirtualQAudioEngine* self, QObject* watched, QEvent* event);
void QAudioEngine_virtualbase_timerEvent(VirtualQAudioEngine* self, QTimerEvent* event);
void QAudioEngine_virtualbase_childEvent(VirtualQAudioEngine* self, QChildEvent* event);
void QAudioEngine_virtualbase_customEvent(VirtualQAudioEngine* self, QEvent* event);
void QAudioEngine_virtualbase_connectNotify(VirtualQAudioEngine* self, QMetaMethod* signal);
void QAudioEngine_virtualbase_disconnectNotify(VirtualQAudioEngine* self, QMetaMethod* signal);

QObject* QAudioEngine_protectedbase_sender(const VirtualQAudioEngine* self);
int QAudioEngine_protectedbase_senderSignalIndex(const VirtualQAudioEngine* self);
int QAudioEngine_protectedbase_receivers(const VirtualQAudioEngine* self, const char* signal);
bool QAudioEngine_protectedbase_isSignalConnected(const VirtualQAudioEngine* self, QMetaMethod* signal);

const QMetaObject* QAudioEngine_staticMetaObject();
void QAudioEngine_delete(QAudioEngine* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
