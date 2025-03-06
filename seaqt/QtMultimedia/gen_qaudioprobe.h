#pragma once
#ifndef SEAQT_QTMULTIMEDIA_GEN_QAUDIOPROBE_H
#define SEAQT_QTMULTIMEDIA_GEN_QAUDIOPROBE_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt/libseaqt.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QAudioBuffer;
class QAudioProbe;
class QChildEvent;
class QEvent;
class QMediaObject;
class QMediaRecorder;
class QMetaMethod;
class QMetaObject;
class QObject;
class QTimerEvent;
#else
typedef struct QAudioBuffer QAudioBuffer;
typedef struct QAudioProbe QAudioProbe;
typedef struct QChildEvent QChildEvent;
typedef struct QEvent QEvent;
typedef struct QMediaObject QMediaObject;
typedef struct QMediaRecorder QMediaRecorder;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QObject QObject;
typedef struct QTimerEvent QTimerEvent;
#endif

struct QAudioProbe_VTable {
	void (*destructor)(struct QAudioProbe_VTable* vtbl, QAudioProbe* self);
	QMetaObject* (*metaObject)(struct QAudioProbe_VTable* vtbl, const QAudioProbe* self);
	void* (*metacast)(struct QAudioProbe_VTable* vtbl, QAudioProbe* self, const char* param1);
	int (*metacall)(struct QAudioProbe_VTable* vtbl, QAudioProbe* self, int param1, int param2, void** param3);
	bool (*event)(struct QAudioProbe_VTable* vtbl, QAudioProbe* self, QEvent* event);
	bool (*eventFilter)(struct QAudioProbe_VTable* vtbl, QAudioProbe* self, QObject* watched, QEvent* event);
	void (*timerEvent)(struct QAudioProbe_VTable* vtbl, QAudioProbe* self, QTimerEvent* event);
	void (*childEvent)(struct QAudioProbe_VTable* vtbl, QAudioProbe* self, QChildEvent* event);
	void (*customEvent)(struct QAudioProbe_VTable* vtbl, QAudioProbe* self, QEvent* event);
	void (*connectNotify)(struct QAudioProbe_VTable* vtbl, QAudioProbe* self, QMetaMethod* signal);
	void (*disconnectNotify)(struct QAudioProbe_VTable* vtbl, QAudioProbe* self, QMetaMethod* signal);
};
QAudioProbe* QAudioProbe_new(struct QAudioProbe_VTable* vtbl);
QAudioProbe* QAudioProbe_new2(struct QAudioProbe_VTable* vtbl, QObject* parent);
void QAudioProbe_virtbase(QAudioProbe* src, QObject** outptr_QObject);
QMetaObject* QAudioProbe_metaObject(const QAudioProbe* self);
void* QAudioProbe_metacast(QAudioProbe* self, const char* param1);
int QAudioProbe_metacall(QAudioProbe* self, int param1, int param2, void** param3);
struct miqt_string QAudioProbe_tr(const char* s);
struct miqt_string QAudioProbe_trUtf8(const char* s);
bool QAudioProbe_setSource(QAudioProbe* self, QMediaObject* source);
bool QAudioProbe_setSourceWithSource(QAudioProbe* self, QMediaRecorder* source);
bool QAudioProbe_isActive(const QAudioProbe* self);
void QAudioProbe_audioBufferProbed(QAudioProbe* self, QAudioBuffer* buffer);
void QAudioProbe_connect_audioBufferProbed(QAudioProbe* self, intptr_t slot);
void QAudioProbe_flush(QAudioProbe* self);
void QAudioProbe_connect_flush(QAudioProbe* self, intptr_t slot);
struct miqt_string QAudioProbe_tr2(const char* s, const char* c);
struct miqt_string QAudioProbe_tr3(const char* s, const char* c, int n);
struct miqt_string QAudioProbe_trUtf82(const char* s, const char* c);
struct miqt_string QAudioProbe_trUtf83(const char* s, const char* c, int n);
QMetaObject* QAudioProbe_virtualbase_metaObject(const void* self);
void* QAudioProbe_virtualbase_metacast(void* self, const char* param1);
int QAudioProbe_virtualbase_metacall(void* self, int param1, int param2, void** param3);
bool QAudioProbe_virtualbase_event(void* self, QEvent* event);
bool QAudioProbe_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);
void QAudioProbe_virtualbase_timerEvent(void* self, QTimerEvent* event);
void QAudioProbe_virtualbase_childEvent(void* self, QChildEvent* event);
void QAudioProbe_virtualbase_customEvent(void* self, QEvent* event);
void QAudioProbe_virtualbase_connectNotify(void* self, QMetaMethod* signal);
void QAudioProbe_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
QObject* QAudioProbe_protectedbase_sender(bool* _dynamic_cast_ok, const void* self);
int QAudioProbe_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self);
int QAudioProbe_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal);
bool QAudioProbe_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal);
const QMetaObject* QAudioProbe_staticMetaObject();
void QAudioProbe_delete(QAudioProbe* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
