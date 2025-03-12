#pragma once
#ifndef SEAQT_QTMULTIMEDIA_GEN_QMEDIAPLAYLIST_H
#define SEAQT_QTMULTIMEDIA_GEN_QMEDIAPLAYLIST_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt/libseaqt.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QChildEvent;
class QEvent;
class QIODevice;
class QMediaBindableInterface;
class QMediaContent;
class QMediaObject;
class QMediaPlaylist;
class QMetaMethod;
class QMetaObject;
class QNetworkRequest;
class QObject;
class QTimerEvent;
class QUrl;
#else
typedef struct QChildEvent QChildEvent;
typedef struct QEvent QEvent;
typedef struct QIODevice QIODevice;
typedef struct QMediaBindableInterface QMediaBindableInterface;
typedef struct QMediaContent QMediaContent;
typedef struct QMediaObject QMediaObject;
typedef struct QMediaPlaylist QMediaPlaylist;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QNetworkRequest QNetworkRequest;
typedef struct QObject QObject;
typedef struct QTimerEvent QTimerEvent;
typedef struct QUrl QUrl;
#endif

typedef struct VirtualQMediaPlaylist VirtualQMediaPlaylist;
typedef struct QMediaPlaylist_VTable{
	void (*destructor)(VirtualQMediaPlaylist* self);
	QMetaObject* (*metaObject)(const VirtualQMediaPlaylist* self);
	void* (*metacast)(VirtualQMediaPlaylist* self, const char* param1);
	int (*metacall)(VirtualQMediaPlaylist* self, int param1, int param2, void** param3);
	QMediaObject* (*mediaObject)(const VirtualQMediaPlaylist* self);
	bool (*setMediaObject)(VirtualQMediaPlaylist* self, QMediaObject* object);
	bool (*event)(VirtualQMediaPlaylist* self, QEvent* event);
	bool (*eventFilter)(VirtualQMediaPlaylist* self, QObject* watched, QEvent* event);
	void (*timerEvent)(VirtualQMediaPlaylist* self, QTimerEvent* event);
	void (*childEvent)(VirtualQMediaPlaylist* self, QChildEvent* event);
	void (*customEvent)(VirtualQMediaPlaylist* self, QEvent* event);
	void (*connectNotify)(VirtualQMediaPlaylist* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQMediaPlaylist* self, QMetaMethod* signal);
}QMediaPlaylist_VTable;

const QMediaPlaylist_VTable* QMediaPlaylist_vtbl(const VirtualQMediaPlaylist* self);
void* QMediaPlaylist_vdata(const VirtualQMediaPlaylist* self);
void QMediaPlaylist_setVdata(VirtualQMediaPlaylist* self, void* vdata);

VirtualQMediaPlaylist* QMediaPlaylist_new(const QMediaPlaylist_VTable* vtbl, void* vdata);
VirtualQMediaPlaylist* QMediaPlaylist_new2(const QMediaPlaylist_VTable* vtbl, void* vdata, QObject* parent);

void QMediaPlaylist_virtbase(QMediaPlaylist* src, QObject** outptr_QObject, QMediaBindableInterface** outptr_QMediaBindableInterface);
QMetaObject* QMediaPlaylist_metaObject(const QMediaPlaylist* self);
void* QMediaPlaylist_metacast(QMediaPlaylist* self, const char* param1);
int QMediaPlaylist_metacall(QMediaPlaylist* self, int param1, int param2, void** param3);
struct miqt_string QMediaPlaylist_tr(const char* s);
struct miqt_string QMediaPlaylist_trUtf8(const char* s);
QMediaObject* QMediaPlaylist_mediaObject(const QMediaPlaylist* self);
int QMediaPlaylist_playbackMode(const QMediaPlaylist* self);
void QMediaPlaylist_setPlaybackMode(QMediaPlaylist* self, int mode);
int QMediaPlaylist_currentIndex(const QMediaPlaylist* self);
QMediaContent* QMediaPlaylist_currentMedia(const QMediaPlaylist* self);
int QMediaPlaylist_nextIndex(const QMediaPlaylist* self);
int QMediaPlaylist_previousIndex(const QMediaPlaylist* self);
QMediaContent* QMediaPlaylist_media(const QMediaPlaylist* self, int index);
int QMediaPlaylist_mediaCount(const QMediaPlaylist* self);
bool QMediaPlaylist_isEmpty(const QMediaPlaylist* self);
bool QMediaPlaylist_isReadOnly(const QMediaPlaylist* self);
bool QMediaPlaylist_addMedia(QMediaPlaylist* self, QMediaContent* content);
bool QMediaPlaylist_addMediaWithItems(QMediaPlaylist* self, struct miqt_array /* of QMediaContent* */  items);
bool QMediaPlaylist_insertMedia(QMediaPlaylist* self, int index, QMediaContent* content);
bool QMediaPlaylist_insertMedia2(QMediaPlaylist* self, int index, struct miqt_array /* of QMediaContent* */  items);
bool QMediaPlaylist_moveMedia(QMediaPlaylist* self, int from, int to);
bool QMediaPlaylist_removeMedia(QMediaPlaylist* self, int pos);
bool QMediaPlaylist_removeMedia2(QMediaPlaylist* self, int start, int end);
bool QMediaPlaylist_clear(QMediaPlaylist* self);
void QMediaPlaylist_load(QMediaPlaylist* self, QNetworkRequest* request);
void QMediaPlaylist_loadWithLocation(QMediaPlaylist* self, QUrl* location);
void QMediaPlaylist_loadWithDevice(QMediaPlaylist* self, QIODevice* device);
bool QMediaPlaylist_save(QMediaPlaylist* self, QUrl* location);
bool QMediaPlaylist_save2(QMediaPlaylist* self, QIODevice* device, const char* format);
int QMediaPlaylist_error(const QMediaPlaylist* self);
struct miqt_string QMediaPlaylist_errorString(const QMediaPlaylist* self);
void QMediaPlaylist_shuffle(QMediaPlaylist* self);
void QMediaPlaylist_next(QMediaPlaylist* self);
void QMediaPlaylist_previous(QMediaPlaylist* self);
void QMediaPlaylist_setCurrentIndex(QMediaPlaylist* self, int index);
void QMediaPlaylist_currentIndexChanged(QMediaPlaylist* self, int index);
void QMediaPlaylist_connect_currentIndexChanged(VirtualQMediaPlaylist* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t));
void QMediaPlaylist_playbackModeChanged(QMediaPlaylist* self, int mode);
void QMediaPlaylist_connect_playbackModeChanged(VirtualQMediaPlaylist* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t));
void QMediaPlaylist_currentMediaChanged(QMediaPlaylist* self, QMediaContent* param1);
void QMediaPlaylist_connect_currentMediaChanged(VirtualQMediaPlaylist* self, intptr_t slot, void (*callback)(intptr_t, QMediaContent*), void (*release)(intptr_t));
void QMediaPlaylist_mediaAboutToBeInserted(QMediaPlaylist* self, int start, int end);
void QMediaPlaylist_connect_mediaAboutToBeInserted(VirtualQMediaPlaylist* self, intptr_t slot, void (*callback)(intptr_t, int, int), void (*release)(intptr_t));
void QMediaPlaylist_mediaInserted(QMediaPlaylist* self, int start, int end);
void QMediaPlaylist_connect_mediaInserted(VirtualQMediaPlaylist* self, intptr_t slot, void (*callback)(intptr_t, int, int), void (*release)(intptr_t));
void QMediaPlaylist_mediaAboutToBeRemoved(QMediaPlaylist* self, int start, int end);
void QMediaPlaylist_connect_mediaAboutToBeRemoved(VirtualQMediaPlaylist* self, intptr_t slot, void (*callback)(intptr_t, int, int), void (*release)(intptr_t));
void QMediaPlaylist_mediaRemoved(QMediaPlaylist* self, int start, int end);
void QMediaPlaylist_connect_mediaRemoved(VirtualQMediaPlaylist* self, intptr_t slot, void (*callback)(intptr_t, int, int), void (*release)(intptr_t));
void QMediaPlaylist_mediaChanged(QMediaPlaylist* self, int start, int end);
void QMediaPlaylist_connect_mediaChanged(VirtualQMediaPlaylist* self, intptr_t slot, void (*callback)(intptr_t, int, int), void (*release)(intptr_t));
void QMediaPlaylist_loaded(QMediaPlaylist* self);
void QMediaPlaylist_connect_loaded(VirtualQMediaPlaylist* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QMediaPlaylist_loadFailed(QMediaPlaylist* self);
void QMediaPlaylist_connect_loadFailed(VirtualQMediaPlaylist* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
bool QMediaPlaylist_setMediaObject(QMediaPlaylist* self, QMediaObject* object);
struct miqt_string QMediaPlaylist_tr2(const char* s, const char* c);
struct miqt_string QMediaPlaylist_tr3(const char* s, const char* c, int n);
struct miqt_string QMediaPlaylist_trUtf82(const char* s, const char* c);
struct miqt_string QMediaPlaylist_trUtf83(const char* s, const char* c, int n);
int QMediaPlaylist_nextIndex1(const QMediaPlaylist* self, int steps);
int QMediaPlaylist_previousIndex1(const QMediaPlaylist* self, int steps);
void QMediaPlaylist_load2(QMediaPlaylist* self, QNetworkRequest* request, const char* format);
void QMediaPlaylist_load22(QMediaPlaylist* self, QUrl* location, const char* format);
void QMediaPlaylist_load23(QMediaPlaylist* self, QIODevice* device, const char* format);
bool QMediaPlaylist_save22(QMediaPlaylist* self, QUrl* location, const char* format);

QMetaObject* QMediaPlaylist_virtualbase_metaObject(const VirtualQMediaPlaylist* self);
void* QMediaPlaylist_virtualbase_metacast(VirtualQMediaPlaylist* self, const char* param1);
int QMediaPlaylist_virtualbase_metacall(VirtualQMediaPlaylist* self, int param1, int param2, void** param3);
QMediaObject* QMediaPlaylist_virtualbase_mediaObject(const VirtualQMediaPlaylist* self);
bool QMediaPlaylist_virtualbase_setMediaObject(VirtualQMediaPlaylist* self, QMediaObject* object);
bool QMediaPlaylist_virtualbase_event(VirtualQMediaPlaylist* self, QEvent* event);
bool QMediaPlaylist_virtualbase_eventFilter(VirtualQMediaPlaylist* self, QObject* watched, QEvent* event);
void QMediaPlaylist_virtualbase_timerEvent(VirtualQMediaPlaylist* self, QTimerEvent* event);
void QMediaPlaylist_virtualbase_childEvent(VirtualQMediaPlaylist* self, QChildEvent* event);
void QMediaPlaylist_virtualbase_customEvent(VirtualQMediaPlaylist* self, QEvent* event);
void QMediaPlaylist_virtualbase_connectNotify(VirtualQMediaPlaylist* self, QMetaMethod* signal);
void QMediaPlaylist_virtualbase_disconnectNotify(VirtualQMediaPlaylist* self, QMetaMethod* signal);

QObject* QMediaPlaylist_protectedbase_sender(const VirtualQMediaPlaylist* self);
int QMediaPlaylist_protectedbase_senderSignalIndex(const VirtualQMediaPlaylist* self);
int QMediaPlaylist_protectedbase_receivers(const VirtualQMediaPlaylist* self, const char* signal);
bool QMediaPlaylist_protectedbase_isSignalConnected(const VirtualQMediaPlaylist* self, QMetaMethod* signal);

const QMetaObject* QMediaPlaylist_staticMetaObject();
void QMediaPlaylist_delete(QMediaPlaylist* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
