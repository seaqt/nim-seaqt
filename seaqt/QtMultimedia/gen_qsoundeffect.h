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

struct QSoundEffect_VTable {
	void (*destructor)(struct QSoundEffect_VTable* vtbl, QSoundEffect* self);
	QMetaObject* (*metaObject)(struct QSoundEffect_VTable* vtbl, const QSoundEffect* self);
	void* (*metacast)(struct QSoundEffect_VTable* vtbl, QSoundEffect* self, const char* param1);
	int (*metacall)(struct QSoundEffect_VTable* vtbl, QSoundEffect* self, int param1, int param2, void** param3);
	bool (*event)(struct QSoundEffect_VTable* vtbl, QSoundEffect* self, QEvent* event);
	bool (*eventFilter)(struct QSoundEffect_VTable* vtbl, QSoundEffect* self, QObject* watched, QEvent* event);
	void (*timerEvent)(struct QSoundEffect_VTable* vtbl, QSoundEffect* self, QTimerEvent* event);
	void (*childEvent)(struct QSoundEffect_VTable* vtbl, QSoundEffect* self, QChildEvent* event);
	void (*customEvent)(struct QSoundEffect_VTable* vtbl, QSoundEffect* self, QEvent* event);
	void (*connectNotify)(struct QSoundEffect_VTable* vtbl, QSoundEffect* self, QMetaMethod* signal);
	void (*disconnectNotify)(struct QSoundEffect_VTable* vtbl, QSoundEffect* self, QMetaMethod* signal);
};
QSoundEffect* QSoundEffect_new(struct QSoundEffect_VTable* vtbl);
QSoundEffect* QSoundEffect_new2(struct QSoundEffect_VTable* vtbl, QAudioDevice* audioDevice);
QSoundEffect* QSoundEffect_new3(struct QSoundEffect_VTable* vtbl, QObject* parent);
QSoundEffect* QSoundEffect_new4(struct QSoundEffect_VTable* vtbl, QAudioDevice* audioDevice, QObject* parent);
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
void QSoundEffect_connect_sourceChanged(QSoundEffect* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QSoundEffect_loopCountChanged(QSoundEffect* self);
void QSoundEffect_connect_loopCountChanged(QSoundEffect* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QSoundEffect_loopsRemainingChanged(QSoundEffect* self);
void QSoundEffect_connect_loopsRemainingChanged(QSoundEffect* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QSoundEffect_volumeChanged(QSoundEffect* self);
void QSoundEffect_connect_volumeChanged(QSoundEffect* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QSoundEffect_mutedChanged(QSoundEffect* self);
void QSoundEffect_connect_mutedChanged(QSoundEffect* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QSoundEffect_loadedChanged(QSoundEffect* self);
void QSoundEffect_connect_loadedChanged(QSoundEffect* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QSoundEffect_playingChanged(QSoundEffect* self);
void QSoundEffect_connect_playingChanged(QSoundEffect* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QSoundEffect_statusChanged(QSoundEffect* self);
void QSoundEffect_connect_statusChanged(QSoundEffect* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QSoundEffect_audioDeviceChanged(QSoundEffect* self);
void QSoundEffect_connect_audioDeviceChanged(QSoundEffect* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QSoundEffect_play(QSoundEffect* self);
void QSoundEffect_stop(QSoundEffect* self);
struct miqt_string QSoundEffect_tr2(const char* s, const char* c);
struct miqt_string QSoundEffect_tr3(const char* s, const char* c, int n);
QMetaObject* QSoundEffect_virtualbase_metaObject(const void* self);
void* QSoundEffect_virtualbase_metacast(void* self, const char* param1);
int QSoundEffect_virtualbase_metacall(void* self, int param1, int param2, void** param3);
bool QSoundEffect_virtualbase_event(void* self, QEvent* event);
bool QSoundEffect_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);
void QSoundEffect_virtualbase_timerEvent(void* self, QTimerEvent* event);
void QSoundEffect_virtualbase_childEvent(void* self, QChildEvent* event);
void QSoundEffect_virtualbase_customEvent(void* self, QEvent* event);
void QSoundEffect_virtualbase_connectNotify(void* self, QMetaMethod* signal);
void QSoundEffect_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
QObject* QSoundEffect_protectedbase_sender(const void* self);
int QSoundEffect_protectedbase_senderSignalIndex(const void* self);
int QSoundEffect_protectedbase_receivers(const void* self, const char* signal);
bool QSoundEffect_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal);
const QMetaObject* QSoundEffect_staticMetaObject();
void QSoundEffect_delete(QSoundEffect* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
