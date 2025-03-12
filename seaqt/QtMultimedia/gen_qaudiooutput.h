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

typedef struct VirtualQAudioOutput VirtualQAudioOutput;
typedef struct QAudioOutput_VTable{
	void (*destructor)(VirtualQAudioOutput* self);
	QMetaObject* (*metaObject)(const VirtualQAudioOutput* self);
	void* (*metacast)(VirtualQAudioOutput* self, const char* param1);
	int (*metacall)(VirtualQAudioOutput* self, int param1, int param2, void** param3);
	bool (*event)(VirtualQAudioOutput* self, QEvent* event);
	bool (*eventFilter)(VirtualQAudioOutput* self, QObject* watched, QEvent* event);
	void (*timerEvent)(VirtualQAudioOutput* self, QTimerEvent* event);
	void (*childEvent)(VirtualQAudioOutput* self, QChildEvent* event);
	void (*customEvent)(VirtualQAudioOutput* self, QEvent* event);
	void (*connectNotify)(VirtualQAudioOutput* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQAudioOutput* self, QMetaMethod* signal);
}QAudioOutput_VTable;

const QAudioOutput_VTable* QAudioOutput_vtbl(const VirtualQAudioOutput* self);
void* QAudioOutput_vdata(const VirtualQAudioOutput* self);
void QAudioOutput_setVdata(VirtualQAudioOutput* self, void* vdata);

VirtualQAudioOutput* QAudioOutput_new(const QAudioOutput_VTable* vtbl, void* vdata);
VirtualQAudioOutput* QAudioOutput_new2(const QAudioOutput_VTable* vtbl, void* vdata, QAudioDevice* device);
VirtualQAudioOutput* QAudioOutput_new3(const QAudioOutput_VTable* vtbl, void* vdata, QObject* parent);
VirtualQAudioOutput* QAudioOutput_new4(const QAudioOutput_VTable* vtbl, void* vdata, QAudioDevice* device, QObject* parent);

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
void QAudioOutput_connect_deviceChanged(VirtualQAudioOutput* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QAudioOutput_volumeChanged(QAudioOutput* self, float volume);
void QAudioOutput_connect_volumeChanged(VirtualQAudioOutput* self, intptr_t slot, void (*callback)(intptr_t, float), void (*release)(intptr_t));
void QAudioOutput_mutedChanged(QAudioOutput* self, bool muted);
void QAudioOutput_connect_mutedChanged(VirtualQAudioOutput* self, intptr_t slot, void (*callback)(intptr_t, bool), void (*release)(intptr_t));
struct miqt_string QAudioOutput_tr2(const char* s, const char* c);
struct miqt_string QAudioOutput_tr3(const char* s, const char* c, int n);

QMetaObject* QAudioOutput_virtualbase_metaObject(const VirtualQAudioOutput* self);
void* QAudioOutput_virtualbase_metacast(VirtualQAudioOutput* self, const char* param1);
int QAudioOutput_virtualbase_metacall(VirtualQAudioOutput* self, int param1, int param2, void** param3);
bool QAudioOutput_virtualbase_event(VirtualQAudioOutput* self, QEvent* event);
bool QAudioOutput_virtualbase_eventFilter(VirtualQAudioOutput* self, QObject* watched, QEvent* event);
void QAudioOutput_virtualbase_timerEvent(VirtualQAudioOutput* self, QTimerEvent* event);
void QAudioOutput_virtualbase_childEvent(VirtualQAudioOutput* self, QChildEvent* event);
void QAudioOutput_virtualbase_customEvent(VirtualQAudioOutput* self, QEvent* event);
void QAudioOutput_virtualbase_connectNotify(VirtualQAudioOutput* self, QMetaMethod* signal);
void QAudioOutput_virtualbase_disconnectNotify(VirtualQAudioOutput* self, QMetaMethod* signal);

QObject* QAudioOutput_protectedbase_sender(const VirtualQAudioOutput* self);
int QAudioOutput_protectedbase_senderSignalIndex(const VirtualQAudioOutput* self);
int QAudioOutput_protectedbase_receivers(const VirtualQAudioOutput* self, const char* signal);
bool QAudioOutput_protectedbase_isSignalConnected(const VirtualQAudioOutput* self, QMetaMethod* signal);

const QMetaObject* QAudioOutput_staticMetaObject();
void QAudioOutput_delete(QAudioOutput* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
