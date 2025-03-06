#pragma once
#ifndef SEAQT_QTMULTIMEDIA_GEN_QAUDIOOUTPUT_H
#define SEAQT_QTMULTIMEDIA_GEN_QAUDIOOUTPUT_H

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
class QAudioOutput;
class QChildEvent;
class QEvent;
class QMetaMethod;
class QMetaObject;
class QObject;
class QTimerEvent;
#else
typedef struct QAudioDevice QAudioDevice;
typedef struct QAudioOutput QAudioOutput;
typedef struct QChildEvent QChildEvent;
typedef struct QEvent QEvent;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QObject QObject;
typedef struct QTimerEvent QTimerEvent;
#endif

struct QAudioOutput_VTable {
	void (*destructor)(struct QAudioOutput_VTable* vtbl, QAudioOutput* self);
	QMetaObject* (*metaObject)(struct QAudioOutput_VTable* vtbl, const QAudioOutput* self);
	void* (*metacast)(struct QAudioOutput_VTable* vtbl, QAudioOutput* self, const char* param1);
	int (*metacall)(struct QAudioOutput_VTable* vtbl, QAudioOutput* self, int param1, int param2, void** param3);
	bool (*event)(struct QAudioOutput_VTable* vtbl, QAudioOutput* self, QEvent* event);
	bool (*eventFilter)(struct QAudioOutput_VTable* vtbl, QAudioOutput* self, QObject* watched, QEvent* event);
	void (*timerEvent)(struct QAudioOutput_VTable* vtbl, QAudioOutput* self, QTimerEvent* event);
	void (*childEvent)(struct QAudioOutput_VTable* vtbl, QAudioOutput* self, QChildEvent* event);
	void (*customEvent)(struct QAudioOutput_VTable* vtbl, QAudioOutput* self, QEvent* event);
	void (*connectNotify)(struct QAudioOutput_VTable* vtbl, QAudioOutput* self, QMetaMethod* signal);
	void (*disconnectNotify)(struct QAudioOutput_VTable* vtbl, QAudioOutput* self, QMetaMethod* signal);
};
QAudioOutput* QAudioOutput_new(struct QAudioOutput_VTable* vtbl);
QAudioOutput* QAudioOutput_new2(struct QAudioOutput_VTable* vtbl, QAudioDevice* device);
QAudioOutput* QAudioOutput_new3(struct QAudioOutput_VTable* vtbl, QObject* parent);
QAudioOutput* QAudioOutput_new4(struct QAudioOutput_VTable* vtbl, QAudioDevice* device, QObject* parent);
void QAudioOutput_virtbase(QAudioOutput* src, QObject** outptr_QObject);
QMetaObject* QAudioOutput_metaObject(const QAudioOutput* self);
void* QAudioOutput_metacast(QAudioOutput* self, const char* param1);
int QAudioOutput_metacall(QAudioOutput* self, int param1, int param2, void** param3);
struct miqt_string QAudioOutput_tr(const char* s);
QAudioDevice* QAudioOutput_device(const QAudioOutput* self);
float QAudioOutput_volume(const QAudioOutput* self);
bool QAudioOutput_isMuted(const QAudioOutput* self);
void QAudioOutput_setDevice(QAudioOutput* self, QAudioDevice* device);
void QAudioOutput_setVolume(QAudioOutput* self, float volume);
void QAudioOutput_setMuted(QAudioOutput* self, bool muted);
void QAudioOutput_deviceChanged(QAudioOutput* self);
void QAudioOutput_connect_deviceChanged(QAudioOutput* self, intptr_t slot);
void QAudioOutput_volumeChanged(QAudioOutput* self, float volume);
void QAudioOutput_connect_volumeChanged(QAudioOutput* self, intptr_t slot);
void QAudioOutput_mutedChanged(QAudioOutput* self, bool muted);
void QAudioOutput_connect_mutedChanged(QAudioOutput* self, intptr_t slot);
struct miqt_string QAudioOutput_tr2(const char* s, const char* c);
struct miqt_string QAudioOutput_tr3(const char* s, const char* c, int n);
QMetaObject* QAudioOutput_virtualbase_metaObject(const void* self);
void* QAudioOutput_virtualbase_metacast(void* self, const char* param1);
int QAudioOutput_virtualbase_metacall(void* self, int param1, int param2, void** param3);
bool QAudioOutput_virtualbase_event(void* self, QEvent* event);
bool QAudioOutput_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);
void QAudioOutput_virtualbase_timerEvent(void* self, QTimerEvent* event);
void QAudioOutput_virtualbase_childEvent(void* self, QChildEvent* event);
void QAudioOutput_virtualbase_customEvent(void* self, QEvent* event);
void QAudioOutput_virtualbase_connectNotify(void* self, QMetaMethod* signal);
void QAudioOutput_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
QObject* QAudioOutput_protectedbase_sender(bool* _dynamic_cast_ok, const void* self);
int QAudioOutput_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self);
int QAudioOutput_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal);
bool QAudioOutput_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal);
const QMetaObject* QAudioOutput_staticMetaObject();
void QAudioOutput_delete(QAudioOutput* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
