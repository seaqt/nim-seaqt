#pragma once
#ifndef SEAQT_QTMULTIMEDIA_GEN_QSOUNDEFFECT_H
#define SEAQT_QTMULTIMEDIA_GEN_QSOUNDEFFECT_H

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
class QChildEvent;
class QEvent;
class QMetaMethod;
class QMetaObject;
class QObject;
class QSoundEffect;
class QTimerEvent;
class QUrl;
#else
typedef struct QAudioDevice QAudioDevice;
typedef struct QChildEvent QChildEvent;
typedef struct QEvent QEvent;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QObject QObject;
typedef struct QSoundEffect QSoundEffect;
typedef struct QTimerEvent QTimerEvent;
typedef struct QUrl QUrl;
#endif

typedef struct VirtualQSoundEffect VirtualQSoundEffect;
typedef struct QSoundEffect_VTable{
	void (*destructor)(VirtualQSoundEffect* self);
	QMetaObject* (*metaObject)(const VirtualQSoundEffect* self);
	void* (*metacast)(VirtualQSoundEffect* self, const char* param1);
	int (*metacall)(VirtualQSoundEffect* self, int param1, int param2, void** param3);
	bool (*event)(VirtualQSoundEffect* self, QEvent* event);
	bool (*eventFilter)(VirtualQSoundEffect* self, QObject* watched, QEvent* event);
	void (*timerEvent)(VirtualQSoundEffect* self, QTimerEvent* event);
	void (*childEvent)(VirtualQSoundEffect* self, QChildEvent* event);
	void (*customEvent)(VirtualQSoundEffect* self, QEvent* event);
	void (*connectNotify)(VirtualQSoundEffect* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQSoundEffect* self, QMetaMethod* signal);
}QSoundEffect_VTable;

const QSoundEffect_VTable* QSoundEffect_vtbl(const VirtualQSoundEffect* self);
void* QSoundEffect_vdata(const VirtualQSoundEffect* self);
void QSoundEffect_setVdata(VirtualQSoundEffect* self, void* vdata);

VirtualQSoundEffect* QSoundEffect_new(const QSoundEffect_VTable* vtbl, void* vdata);
VirtualQSoundEffect* QSoundEffect_new2(const QSoundEffect_VTable* vtbl, void* vdata, QAudioDevice* audioDevice);
VirtualQSoundEffect* QSoundEffect_new3(const QSoundEffect_VTable* vtbl, void* vdata, QObject* parent);
VirtualQSoundEffect* QSoundEffect_new4(const QSoundEffect_VTable* vtbl, void* vdata, QAudioDevice* audioDevice, QObject* parent);

void QSoundEffect_virtbase(QSoundEffect* src, QObject** outptr_QObject);
QMetaObject* QSoundEffect_metaObject(const QSoundEffect* self);
void* QSoundEffect_metacast(QSoundEffect* self, const char* param1);
int QSoundEffect_metacall(QSoundEffect* self, int param1, int param2, void** param3);
struct miqt_string QSoundEffect_tr(const char* s);
struct miqt_array /* of struct miqt_string */  QSoundEffect_supportedMimeTypes();
QUrl* QSoundEffect_source(const QSoundEffect* self);
void QSoundEffect_setSource(QSoundEffect* self, QUrl* url);
int QSoundEffect_loopCount(const QSoundEffect* self);
int QSoundEffect_loopsRemaining(const QSoundEffect* self);
void QSoundEffect_setLoopCount(QSoundEffect* self, int loopCount);
QAudioDevice* QSoundEffect_audioDevice(QSoundEffect* self);
void QSoundEffect_setAudioDevice(QSoundEffect* self, QAudioDevice* device);
float QSoundEffect_volume(const QSoundEffect* self);
void QSoundEffect_setVolume(QSoundEffect* self, float volume);
bool QSoundEffect_isMuted(const QSoundEffect* self);
void QSoundEffect_setMuted(QSoundEffect* self, bool muted);
bool QSoundEffect_isLoaded(const QSoundEffect* self);
bool QSoundEffect_isPlaying(const QSoundEffect* self);
int QSoundEffect_status(const QSoundEffect* self);
void QSoundEffect_sourceChanged(QSoundEffect* self);
void QSoundEffect_connect_sourceChanged(VirtualQSoundEffect* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QSoundEffect_loopCountChanged(QSoundEffect* self);
void QSoundEffect_connect_loopCountChanged(VirtualQSoundEffect* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QSoundEffect_loopsRemainingChanged(QSoundEffect* self);
void QSoundEffect_connect_loopsRemainingChanged(VirtualQSoundEffect* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QSoundEffect_volumeChanged(QSoundEffect* self);
void QSoundEffect_connect_volumeChanged(VirtualQSoundEffect* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QSoundEffect_mutedChanged(QSoundEffect* self);
void QSoundEffect_connect_mutedChanged(VirtualQSoundEffect* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QSoundEffect_loadedChanged(QSoundEffect* self);
void QSoundEffect_connect_loadedChanged(VirtualQSoundEffect* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QSoundEffect_playingChanged(QSoundEffect* self);
void QSoundEffect_connect_playingChanged(VirtualQSoundEffect* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QSoundEffect_statusChanged(QSoundEffect* self);
void QSoundEffect_connect_statusChanged(VirtualQSoundEffect* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QSoundEffect_audioDeviceChanged(QSoundEffect* self);
void QSoundEffect_connect_audioDeviceChanged(VirtualQSoundEffect* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QSoundEffect_play(QSoundEffect* self);
void QSoundEffect_stop(QSoundEffect* self);
struct miqt_string QSoundEffect_tr2(const char* s, const char* c);
struct miqt_string QSoundEffect_tr3(const char* s, const char* c, int n);

QMetaObject* QSoundEffect_virtualbase_metaObject(const VirtualQSoundEffect* self);
void* QSoundEffect_virtualbase_metacast(VirtualQSoundEffect* self, const char* param1);
int QSoundEffect_virtualbase_metacall(VirtualQSoundEffect* self, int param1, int param2, void** param3);
bool QSoundEffect_virtualbase_event(VirtualQSoundEffect* self, QEvent* event);
bool QSoundEffect_virtualbase_eventFilter(VirtualQSoundEffect* self, QObject* watched, QEvent* event);
void QSoundEffect_virtualbase_timerEvent(VirtualQSoundEffect* self, QTimerEvent* event);
void QSoundEffect_virtualbase_childEvent(VirtualQSoundEffect* self, QChildEvent* event);
void QSoundEffect_virtualbase_customEvent(VirtualQSoundEffect* self, QEvent* event);
void QSoundEffect_virtualbase_connectNotify(VirtualQSoundEffect* self, QMetaMethod* signal);
void QSoundEffect_virtualbase_disconnectNotify(VirtualQSoundEffect* self, QMetaMethod* signal);

QObject* QSoundEffect_protectedbase_sender(const VirtualQSoundEffect* self);
int QSoundEffect_protectedbase_senderSignalIndex(const VirtualQSoundEffect* self);
int QSoundEffect_protectedbase_receivers(const VirtualQSoundEffect* self, const char* signal);
bool QSoundEffect_protectedbase_isSignalConnected(const VirtualQSoundEffect* self, QMetaMethod* signal);

const QMetaObject* QSoundEffect_staticMetaObject();
void QSoundEffect_delete(QSoundEffect* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
