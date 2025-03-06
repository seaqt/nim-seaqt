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

struct QAudioEngine_VTable {
	void (*destructor)(struct QAudioEngine_VTable* vtbl, QAudioEngine* self);
	QMetaObject* (*metaObject)(struct QAudioEngine_VTable* vtbl, const QAudioEngine* self);
	void* (*metacast)(struct QAudioEngine_VTable* vtbl, QAudioEngine* self, const char* param1);
	int (*metacall)(struct QAudioEngine_VTable* vtbl, QAudioEngine* self, int param1, int param2, void** param3);
	bool (*event)(struct QAudioEngine_VTable* vtbl, QAudioEngine* self, QEvent* event);
	bool (*eventFilter)(struct QAudioEngine_VTable* vtbl, QAudioEngine* self, QObject* watched, QEvent* event);
	void (*timerEvent)(struct QAudioEngine_VTable* vtbl, QAudioEngine* self, QTimerEvent* event);
	void (*childEvent)(struct QAudioEngine_VTable* vtbl, QAudioEngine* self, QChildEvent* event);
	void (*customEvent)(struct QAudioEngine_VTable* vtbl, QAudioEngine* self, QEvent* event);
	void (*connectNotify)(struct QAudioEngine_VTable* vtbl, QAudioEngine* self, QMetaMethod* signal);
	void (*disconnectNotify)(struct QAudioEngine_VTable* vtbl, QAudioEngine* self, QMetaMethod* signal);
};
QAudioEngine* QAudioEngine_new(struct QAudioEngine_VTable* vtbl);
QAudioEngine* QAudioEngine_new2(struct QAudioEngine_VTable* vtbl, QObject* parent);
QAudioEngine* QAudioEngine_new3(struct QAudioEngine_VTable* vtbl, int sampleRate);
QAudioEngine* QAudioEngine_new4(struct QAudioEngine_VTable* vtbl, int sampleRate, QObject* parent);
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
void QAudioEngine_connect_outputModeChanged(QAudioEngine* self, intptr_t slot);
void QAudioEngine_outputDeviceChanged(QAudioEngine* self);
void QAudioEngine_connect_outputDeviceChanged(QAudioEngine* self, intptr_t slot);
void QAudioEngine_masterVolumeChanged(QAudioEngine* self);
void QAudioEngine_connect_masterVolumeChanged(QAudioEngine* self, intptr_t slot);
void QAudioEngine_pausedChanged(QAudioEngine* self);
void QAudioEngine_connect_pausedChanged(QAudioEngine* self, intptr_t slot);
void QAudioEngine_distanceScaleChanged(QAudioEngine* self);
void QAudioEngine_connect_distanceScaleChanged(QAudioEngine* self, intptr_t slot);
void QAudioEngine_start(QAudioEngine* self);
void QAudioEngine_stop(QAudioEngine* self);
void QAudioEngine_pause(QAudioEngine* self);
void QAudioEngine_resume(QAudioEngine* self);
struct miqt_string QAudioEngine_tr2(const char* s, const char* c);
struct miqt_string QAudioEngine_tr3(const char* s, const char* c, int n);
QMetaObject* QAudioEngine_virtualbase_metaObject(const void* self);
void* QAudioEngine_virtualbase_metacast(void* self, const char* param1);
int QAudioEngine_virtualbase_metacall(void* self, int param1, int param2, void** param3);
bool QAudioEngine_virtualbase_event(void* self, QEvent* event);
bool QAudioEngine_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);
void QAudioEngine_virtualbase_timerEvent(void* self, QTimerEvent* event);
void QAudioEngine_virtualbase_childEvent(void* self, QChildEvent* event);
void QAudioEngine_virtualbase_customEvent(void* self, QEvent* event);
void QAudioEngine_virtualbase_connectNotify(void* self, QMetaMethod* signal);
void QAudioEngine_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
QObject* QAudioEngine_protectedbase_sender(bool* _dynamic_cast_ok, const void* self);
int QAudioEngine_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self);
int QAudioEngine_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal);
bool QAudioEngine_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal);
const QMetaObject* QAudioEngine_staticMetaObject();
void QAudioEngine_delete(QAudioEngine* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
