#pragma once
#ifndef SEAQT_QTMULTIMEDIA_GEN_QMEDIAPLAYER_H
#define SEAQT_QTMULTIMEDIA_GEN_QMEDIAPLAYER_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt/libseaqt.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QAbstractVideoSurface;
class QChildEvent;
class QEvent;
class QIODevice;
class QMediaContent;
class QMediaObject;
class QMediaPlayer;
class QMediaPlaylist;
class QMediaService;
class QMetaMethod;
class QMetaObject;
class QNetworkConfiguration;
class QObject;
class QTimerEvent;
#else
typedef struct QAbstractVideoSurface QAbstractVideoSurface;
typedef struct QChildEvent QChildEvent;
typedef struct QEvent QEvent;
typedef struct QIODevice QIODevice;
typedef struct QMediaContent QMediaContent;
typedef struct QMediaObject QMediaObject;
typedef struct QMediaPlayer QMediaPlayer;
typedef struct QMediaPlaylist QMediaPlaylist;
typedef struct QMediaService QMediaService;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QNetworkConfiguration QNetworkConfiguration;
typedef struct QObject QObject;
typedef struct QTimerEvent QTimerEvent;
#endif

typedef struct VirtualQMediaPlayer VirtualQMediaPlayer;
typedef struct QMediaPlayer_VTable{
	void (*destructor)(VirtualQMediaPlayer* self);
	QMetaObject* (*metaObject)(const VirtualQMediaPlayer* self);
	void* (*metacast)(VirtualQMediaPlayer* self, const char* param1);
	int (*metacall)(VirtualQMediaPlayer* self, int param1, int param2, void** param3);
	int (*availability)(const VirtualQMediaPlayer* self);
	bool (*bind)(VirtualQMediaPlayer* self, QObject* param1);
	void (*unbind)(VirtualQMediaPlayer* self, QObject* param1);
	bool (*isAvailable)(const VirtualQMediaPlayer* self);
	QMediaService* (*service)(const VirtualQMediaPlayer* self);
	bool (*event)(VirtualQMediaPlayer* self, QEvent* event);
	bool (*eventFilter)(VirtualQMediaPlayer* self, QObject* watched, QEvent* event);
	void (*timerEvent)(VirtualQMediaPlayer* self, QTimerEvent* event);
	void (*childEvent)(VirtualQMediaPlayer* self, QChildEvent* event);
	void (*customEvent)(VirtualQMediaPlayer* self, QEvent* event);
	void (*connectNotify)(VirtualQMediaPlayer* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQMediaPlayer* self, QMetaMethod* signal);
}QMediaPlayer_VTable;

const QMediaPlayer_VTable* QMediaPlayer_vtbl(const VirtualQMediaPlayer* self);
void* QMediaPlayer_vdata(const VirtualQMediaPlayer* self);
void QMediaPlayer_setVdata(VirtualQMediaPlayer* self, void* vdata);

VirtualQMediaPlayer* QMediaPlayer_new(const QMediaPlayer_VTable* vtbl, void* vdata);
VirtualQMediaPlayer* QMediaPlayer_new2(const QMediaPlayer_VTable* vtbl, void* vdata, QObject* parent);
VirtualQMediaPlayer* QMediaPlayer_new3(const QMediaPlayer_VTable* vtbl, void* vdata, QObject* parent, int flags);

void QMediaPlayer_virtbase(QMediaPlayer* src, QMediaObject** outptr_QMediaObject);
QMetaObject* QMediaPlayer_metaObject(const QMediaPlayer* self);
void* QMediaPlayer_metacast(QMediaPlayer* self, const char* param1);
int QMediaPlayer_metacall(QMediaPlayer* self, int param1, int param2, void** param3);
struct miqt_string QMediaPlayer_tr(const char* s);
struct miqt_string QMediaPlayer_trUtf8(const char* s);
int QMediaPlayer_hasSupport(struct miqt_string mimeType);
struct miqt_array /* of struct miqt_string */  QMediaPlayer_supportedMimeTypes();
void QMediaPlayer_setVideoOutput(QMediaPlayer* self, QAbstractVideoSurface* surface);
void QMediaPlayer_setVideoOutputWithSurfaces(QMediaPlayer* self, struct miqt_array /* of QAbstractVideoSurface* */  surfaces);
QMediaContent* QMediaPlayer_media(const QMediaPlayer* self);
QIODevice* QMediaPlayer_mediaStream(const QMediaPlayer* self);
QMediaPlaylist* QMediaPlayer_playlist(const QMediaPlayer* self);
QMediaContent* QMediaPlayer_currentMedia(const QMediaPlayer* self);
int QMediaPlayer_state(const QMediaPlayer* self);
int QMediaPlayer_mediaStatus(const QMediaPlayer* self);
long long QMediaPlayer_duration(const QMediaPlayer* self);
long long QMediaPlayer_position(const QMediaPlayer* self);
int QMediaPlayer_volume(const QMediaPlayer* self);
bool QMediaPlayer_isMuted(const QMediaPlayer* self);
bool QMediaPlayer_isAudioAvailable(const QMediaPlayer* self);
bool QMediaPlayer_isVideoAvailable(const QMediaPlayer* self);
int QMediaPlayer_bufferStatus(const QMediaPlayer* self);
bool QMediaPlayer_isSeekable(const QMediaPlayer* self);
double QMediaPlayer_playbackRate(const QMediaPlayer* self);
int QMediaPlayer_error(const QMediaPlayer* self);
struct miqt_string QMediaPlayer_errorString(const QMediaPlayer* self);
QNetworkConfiguration* QMediaPlayer_currentNetworkConfiguration(const QMediaPlayer* self);
int QMediaPlayer_availability(const QMediaPlayer* self);
int QMediaPlayer_audioRole(const QMediaPlayer* self);
void QMediaPlayer_setAudioRole(QMediaPlayer* self, int audioRole);
struct miqt_array /* of int */  QMediaPlayer_supportedAudioRoles(const QMediaPlayer* self);
struct miqt_string QMediaPlayer_customAudioRole(const QMediaPlayer* self);
void QMediaPlayer_setCustomAudioRole(QMediaPlayer* self, struct miqt_string audioRole);
struct miqt_array /* of struct miqt_string */  QMediaPlayer_supportedCustomAudioRoles(const QMediaPlayer* self);
void QMediaPlayer_play(QMediaPlayer* self);
void QMediaPlayer_pause(QMediaPlayer* self);
void QMediaPlayer_stop(QMediaPlayer* self);
void QMediaPlayer_setPosition(QMediaPlayer* self, long long position);
void QMediaPlayer_setVolume(QMediaPlayer* self, int volume);
void QMediaPlayer_setMuted(QMediaPlayer* self, bool muted);
void QMediaPlayer_setPlaybackRate(QMediaPlayer* self, double rate);
void QMediaPlayer_setMedia(QMediaPlayer* self, QMediaContent* media);
void QMediaPlayer_setPlaylist(QMediaPlayer* self, QMediaPlaylist* playlist);
void QMediaPlayer_setNetworkConfigurations(QMediaPlayer* self, struct miqt_array /* of QNetworkConfiguration* */  configurations);
void QMediaPlayer_mediaChanged(QMediaPlayer* self, QMediaContent* media);
void QMediaPlayer_connect_mediaChanged(VirtualQMediaPlayer* self, intptr_t slot, void (*callback)(intptr_t, QMediaContent*), void (*release)(intptr_t));
void QMediaPlayer_currentMediaChanged(QMediaPlayer* self, QMediaContent* media);
void QMediaPlayer_connect_currentMediaChanged(VirtualQMediaPlayer* self, intptr_t slot, void (*callback)(intptr_t, QMediaContent*), void (*release)(intptr_t));
void QMediaPlayer_stateChanged(QMediaPlayer* self, int newState);
void QMediaPlayer_connect_stateChanged(VirtualQMediaPlayer* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t));
void QMediaPlayer_mediaStatusChanged(QMediaPlayer* self, int status);
void QMediaPlayer_connect_mediaStatusChanged(VirtualQMediaPlayer* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t));
void QMediaPlayer_durationChanged(QMediaPlayer* self, long long duration);
void QMediaPlayer_connect_durationChanged(VirtualQMediaPlayer* self, intptr_t slot, void (*callback)(intptr_t, long long), void (*release)(intptr_t));
void QMediaPlayer_positionChanged(QMediaPlayer* self, long long position);
void QMediaPlayer_connect_positionChanged(VirtualQMediaPlayer* self, intptr_t slot, void (*callback)(intptr_t, long long), void (*release)(intptr_t));
void QMediaPlayer_volumeChanged(QMediaPlayer* self, int volume);
void QMediaPlayer_connect_volumeChanged(VirtualQMediaPlayer* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t));
void QMediaPlayer_mutedChanged(QMediaPlayer* self, bool muted);
void QMediaPlayer_connect_mutedChanged(VirtualQMediaPlayer* self, intptr_t slot, void (*callback)(intptr_t, bool), void (*release)(intptr_t));
void QMediaPlayer_audioAvailableChanged(QMediaPlayer* self, bool available);
void QMediaPlayer_connect_audioAvailableChanged(VirtualQMediaPlayer* self, intptr_t slot, void (*callback)(intptr_t, bool), void (*release)(intptr_t));
void QMediaPlayer_videoAvailableChanged(QMediaPlayer* self, bool videoAvailable);
void QMediaPlayer_connect_videoAvailableChanged(VirtualQMediaPlayer* self, intptr_t slot, void (*callback)(intptr_t, bool), void (*release)(intptr_t));
void QMediaPlayer_bufferStatusChanged(QMediaPlayer* self, int percentFilled);
void QMediaPlayer_connect_bufferStatusChanged(VirtualQMediaPlayer* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t));
void QMediaPlayer_seekableChanged(QMediaPlayer* self, bool seekable);
void QMediaPlayer_connect_seekableChanged(VirtualQMediaPlayer* self, intptr_t slot, void (*callback)(intptr_t, bool), void (*release)(intptr_t));
void QMediaPlayer_playbackRateChanged(QMediaPlayer* self, double rate);
void QMediaPlayer_connect_playbackRateChanged(VirtualQMediaPlayer* self, intptr_t slot, void (*callback)(intptr_t, double), void (*release)(intptr_t));
void QMediaPlayer_audioRoleChanged(QMediaPlayer* self, int role);
void QMediaPlayer_connect_audioRoleChanged(VirtualQMediaPlayer* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t));
void QMediaPlayer_customAudioRoleChanged(QMediaPlayer* self, struct miqt_string role);
void QMediaPlayer_connect_customAudioRoleChanged(VirtualQMediaPlayer* self, intptr_t slot, void (*callback)(intptr_t, struct miqt_string), void (*release)(intptr_t));
void QMediaPlayer_errorWithError(QMediaPlayer* self, int error);
void QMediaPlayer_connect_errorWithError(VirtualQMediaPlayer* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t));
void QMediaPlayer_networkConfigurationChanged(QMediaPlayer* self, QNetworkConfiguration* configuration);
void QMediaPlayer_connect_networkConfigurationChanged(VirtualQMediaPlayer* self, intptr_t slot, void (*callback)(intptr_t, QNetworkConfiguration*), void (*release)(intptr_t));
bool QMediaPlayer_bind(QMediaPlayer* self, QObject* param1);
void QMediaPlayer_unbind(QMediaPlayer* self, QObject* param1);
struct miqt_string QMediaPlayer_tr2(const char* s, const char* c);
struct miqt_string QMediaPlayer_tr3(const char* s, const char* c, int n);
struct miqt_string QMediaPlayer_trUtf82(const char* s, const char* c);
struct miqt_string QMediaPlayer_trUtf83(const char* s, const char* c, int n);
int QMediaPlayer_hasSupport2(struct miqt_string mimeType, struct miqt_array /* of struct miqt_string */  codecs);
int QMediaPlayer_hasSupport3(struct miqt_string mimeType, struct miqt_array /* of struct miqt_string */  codecs, int flags);
struct miqt_array /* of struct miqt_string */  QMediaPlayer_supportedMimeTypes1(int flags);
void QMediaPlayer_setMedia2(QMediaPlayer* self, QMediaContent* media, QIODevice* stream);

QMetaObject* QMediaPlayer_virtualbase_metaObject(const VirtualQMediaPlayer* self);
void* QMediaPlayer_virtualbase_metacast(VirtualQMediaPlayer* self, const char* param1);
int QMediaPlayer_virtualbase_metacall(VirtualQMediaPlayer* self, int param1, int param2, void** param3);
int QMediaPlayer_virtualbase_availability(const VirtualQMediaPlayer* self);
bool QMediaPlayer_virtualbase_bind(VirtualQMediaPlayer* self, QObject* param1);
void QMediaPlayer_virtualbase_unbind(VirtualQMediaPlayer* self, QObject* param1);
bool QMediaPlayer_virtualbase_isAvailable(const VirtualQMediaPlayer* self);
QMediaService* QMediaPlayer_virtualbase_service(const VirtualQMediaPlayer* self);
bool QMediaPlayer_virtualbase_event(VirtualQMediaPlayer* self, QEvent* event);
bool QMediaPlayer_virtualbase_eventFilter(VirtualQMediaPlayer* self, QObject* watched, QEvent* event);
void QMediaPlayer_virtualbase_timerEvent(VirtualQMediaPlayer* self, QTimerEvent* event);
void QMediaPlayer_virtualbase_childEvent(VirtualQMediaPlayer* self, QChildEvent* event);
void QMediaPlayer_virtualbase_customEvent(VirtualQMediaPlayer* self, QEvent* event);
void QMediaPlayer_virtualbase_connectNotify(VirtualQMediaPlayer* self, QMetaMethod* signal);
void QMediaPlayer_virtualbase_disconnectNotify(VirtualQMediaPlayer* self, QMetaMethod* signal);

void QMediaPlayer_protectedbase_addPropertyWatch(VirtualQMediaPlayer* self, struct miqt_string name);
void QMediaPlayer_protectedbase_removePropertyWatch(VirtualQMediaPlayer* self, struct miqt_string name);
QObject* QMediaPlayer_protectedbase_sender(const VirtualQMediaPlayer* self);
int QMediaPlayer_protectedbase_senderSignalIndex(const VirtualQMediaPlayer* self);
int QMediaPlayer_protectedbase_receivers(const VirtualQMediaPlayer* self, const char* signal);
bool QMediaPlayer_protectedbase_isSignalConnected(const VirtualQMediaPlayer* self, QMetaMethod* signal);

const QMetaObject* QMediaPlayer_staticMetaObject();
void QMediaPlayer_delete(QMediaPlayer* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
