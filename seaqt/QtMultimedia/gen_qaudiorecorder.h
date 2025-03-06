#pragma once
#ifndef SEAQT_QTMULTIMEDIA_GEN_QAUDIORECORDER_H
#define SEAQT_QTMULTIMEDIA_GEN_QAUDIORECORDER_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt/libseaqt.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QAudioRecorder;
class QChildEvent;
class QEvent;
class QMediaBindableInterface;
class QMediaObject;
class QMediaRecorder;
class QMetaMethod;
class QMetaObject;
class QObject;
class QTimerEvent;
#else
typedef struct QAudioRecorder QAudioRecorder;
typedef struct QChildEvent QChildEvent;
typedef struct QEvent QEvent;
typedef struct QMediaBindableInterface QMediaBindableInterface;
typedef struct QMediaObject QMediaObject;
typedef struct QMediaRecorder QMediaRecorder;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QObject QObject;
typedef struct QTimerEvent QTimerEvent;
#endif

struct QAudioRecorder_VTable {
	void (*destructor)(struct QAudioRecorder_VTable* vtbl, QAudioRecorder* self);
	QMetaObject* (*metaObject)(struct QAudioRecorder_VTable* vtbl, const QAudioRecorder* self);
	void* (*metacast)(struct QAudioRecorder_VTable* vtbl, QAudioRecorder* self, const char* param1);
	int (*metacall)(struct QAudioRecorder_VTable* vtbl, QAudioRecorder* self, int param1, int param2, void** param3);
	QMediaObject* (*mediaObject)(struct QAudioRecorder_VTable* vtbl, const QAudioRecorder* self);
	bool (*setMediaObject)(struct QAudioRecorder_VTable* vtbl, QAudioRecorder* self, QMediaObject* object);
	bool (*event)(struct QAudioRecorder_VTable* vtbl, QAudioRecorder* self, QEvent* event);
	bool (*eventFilter)(struct QAudioRecorder_VTable* vtbl, QAudioRecorder* self, QObject* watched, QEvent* event);
	void (*timerEvent)(struct QAudioRecorder_VTable* vtbl, QAudioRecorder* self, QTimerEvent* event);
	void (*childEvent)(struct QAudioRecorder_VTable* vtbl, QAudioRecorder* self, QChildEvent* event);
	void (*customEvent)(struct QAudioRecorder_VTable* vtbl, QAudioRecorder* self, QEvent* event);
	void (*connectNotify)(struct QAudioRecorder_VTable* vtbl, QAudioRecorder* self, QMetaMethod* signal);
	void (*disconnectNotify)(struct QAudioRecorder_VTable* vtbl, QAudioRecorder* self, QMetaMethod* signal);
};
QAudioRecorder* QAudioRecorder_new(struct QAudioRecorder_VTable* vtbl);
QAudioRecorder* QAudioRecorder_new2(struct QAudioRecorder_VTable* vtbl, QObject* parent);
void QAudioRecorder_virtbase(QAudioRecorder* src, QMediaRecorder** outptr_QMediaRecorder);
QMetaObject* QAudioRecorder_metaObject(const QAudioRecorder* self);
void* QAudioRecorder_metacast(QAudioRecorder* self, const char* param1);
int QAudioRecorder_metacall(QAudioRecorder* self, int param1, int param2, void** param3);
struct miqt_string QAudioRecorder_tr(const char* s);
struct miqt_string QAudioRecorder_trUtf8(const char* s);
struct miqt_array /* of struct miqt_string */  QAudioRecorder_audioInputs(const QAudioRecorder* self);
struct miqt_string QAudioRecorder_defaultAudioInput(const QAudioRecorder* self);
struct miqt_string QAudioRecorder_audioInputDescription(const QAudioRecorder* self, struct miqt_string name);
struct miqt_string QAudioRecorder_audioInput(const QAudioRecorder* self);
void QAudioRecorder_setAudioInput(QAudioRecorder* self, struct miqt_string name);
void QAudioRecorder_audioInputChanged(QAudioRecorder* self, struct miqt_string name);
void QAudioRecorder_connect_audioInputChanged(QAudioRecorder* self, intptr_t slot, void (*callback)(intptr_t, struct miqt_string), void (*release)(intptr_t));
void QAudioRecorder_availableAudioInputsChanged(QAudioRecorder* self);
void QAudioRecorder_connect_availableAudioInputsChanged(QAudioRecorder* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
struct miqt_string QAudioRecorder_tr2(const char* s, const char* c);
struct miqt_string QAudioRecorder_tr3(const char* s, const char* c, int n);
struct miqt_string QAudioRecorder_trUtf82(const char* s, const char* c);
struct miqt_string QAudioRecorder_trUtf83(const char* s, const char* c, int n);
QMetaObject* QAudioRecorder_virtualbase_metaObject(const void* self);
void* QAudioRecorder_virtualbase_metacast(void* self, const char* param1);
int QAudioRecorder_virtualbase_metacall(void* self, int param1, int param2, void** param3);
QMediaObject* QAudioRecorder_virtualbase_mediaObject(const void* self);
bool QAudioRecorder_virtualbase_setMediaObject(void* self, QMediaObject* object);
bool QAudioRecorder_virtualbase_event(void* self, QEvent* event);
bool QAudioRecorder_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);
void QAudioRecorder_virtualbase_timerEvent(void* self, QTimerEvent* event);
void QAudioRecorder_virtualbase_childEvent(void* self, QChildEvent* event);
void QAudioRecorder_virtualbase_customEvent(void* self, QEvent* event);
void QAudioRecorder_virtualbase_connectNotify(void* self, QMetaMethod* signal);
void QAudioRecorder_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
QObject* QAudioRecorder_protectedbase_sender(bool* _dynamic_cast_ok, const void* self);
int QAudioRecorder_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self);
int QAudioRecorder_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal);
bool QAudioRecorder_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal);
const QMetaObject* QAudioRecorder_staticMetaObject();
void QAudioRecorder_delete(QAudioRecorder* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
