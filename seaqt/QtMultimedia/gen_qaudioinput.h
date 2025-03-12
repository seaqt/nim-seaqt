#pragma once
#ifndef SEAQT_QTMULTIMEDIA_GEN_QAUDIOINPUT_H
#define SEAQT_QTMULTIMEDIA_GEN_QAUDIOINPUT_H

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
class QAudioInput;
class QChildEvent;
class QEvent;
class QMetaMethod;
class QMetaObject;
class QObject;
class QTimerEvent;
#else
typedef struct QAudioDevice QAudioDevice;
typedef struct QAudioInput QAudioInput;
typedef struct QChildEvent QChildEvent;
typedef struct QEvent QEvent;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QObject QObject;
typedef struct QTimerEvent QTimerEvent;
#endif

typedef struct VirtualQAudioInput VirtualQAudioInput;
typedef struct QAudioInput_VTable{
	void (*destructor)(VirtualQAudioInput* self);
	QMetaObject* (*metaObject)(const VirtualQAudioInput* self);
	void* (*metacast)(VirtualQAudioInput* self, const char* param1);
	int (*metacall)(VirtualQAudioInput* self, int param1, int param2, void** param3);
	bool (*event)(VirtualQAudioInput* self, QEvent* event);
	bool (*eventFilter)(VirtualQAudioInput* self, QObject* watched, QEvent* event);
	void (*timerEvent)(VirtualQAudioInput* self, QTimerEvent* event);
	void (*childEvent)(VirtualQAudioInput* self, QChildEvent* event);
	void (*customEvent)(VirtualQAudioInput* self, QEvent* event);
	void (*connectNotify)(VirtualQAudioInput* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQAudioInput* self, QMetaMethod* signal);
}QAudioInput_VTable;

const QAudioInput_VTable* QAudioInput_vtbl(const VirtualQAudioInput* self);
void* QAudioInput_vdata(const VirtualQAudioInput* self);
void QAudioInput_setVdata(VirtualQAudioInput* self, void* vdata);

VirtualQAudioInput* QAudioInput_new(const QAudioInput_VTable* vtbl, void* vdata);
VirtualQAudioInput* QAudioInput_new2(const QAudioInput_VTable* vtbl, void* vdata, QAudioDevice* deviceInfo);
VirtualQAudioInput* QAudioInput_new3(const QAudioInput_VTable* vtbl, void* vdata, QObject* parent);
VirtualQAudioInput* QAudioInput_new4(const QAudioInput_VTable* vtbl, void* vdata, QAudioDevice* deviceInfo, QObject* parent);

void QAudioInput_virtbase(QAudioInput* src, QObject** outptr_QObject);
QMetaObject* QAudioInput_metaObject(const QAudioInput* self);
void* QAudioInput_metacast(QAudioInput* self, const char* param1);
int QAudioInput_metacall(QAudioInput* self, int param1, int param2, void** param3);
struct miqt_string QAudioInput_tr(const char* s);
QAudioDevice* QAudioInput_device(const QAudioInput* self);
float QAudioInput_volume(const QAudioInput* self);
bool QAudioInput_isMuted(const QAudioInput* self);
void QAudioInput_setDevice(QAudioInput* self, QAudioDevice* device);
void QAudioInput_setVolume(QAudioInput* self, float volume);
void QAudioInput_setMuted(QAudioInput* self, bool muted);
void QAudioInput_deviceChanged(QAudioInput* self);
void QAudioInput_connect_deviceChanged(VirtualQAudioInput* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QAudioInput_volumeChanged(QAudioInput* self, float volume);
void QAudioInput_connect_volumeChanged(VirtualQAudioInput* self, intptr_t slot, void (*callback)(intptr_t, float), void (*release)(intptr_t));
void QAudioInput_mutedChanged(QAudioInput* self, bool muted);
void QAudioInput_connect_mutedChanged(VirtualQAudioInput* self, intptr_t slot, void (*callback)(intptr_t, bool), void (*release)(intptr_t));
struct miqt_string QAudioInput_tr2(const char* s, const char* c);
struct miqt_string QAudioInput_tr3(const char* s, const char* c, int n);

QMetaObject* QAudioInput_virtualbase_metaObject(const VirtualQAudioInput* self);
void* QAudioInput_virtualbase_metacast(VirtualQAudioInput* self, const char* param1);
int QAudioInput_virtualbase_metacall(VirtualQAudioInput* self, int param1, int param2, void** param3);
bool QAudioInput_virtualbase_event(VirtualQAudioInput* self, QEvent* event);
bool QAudioInput_virtualbase_eventFilter(VirtualQAudioInput* self, QObject* watched, QEvent* event);
void QAudioInput_virtualbase_timerEvent(VirtualQAudioInput* self, QTimerEvent* event);
void QAudioInput_virtualbase_childEvent(VirtualQAudioInput* self, QChildEvent* event);
void QAudioInput_virtualbase_customEvent(VirtualQAudioInput* self, QEvent* event);
void QAudioInput_virtualbase_connectNotify(VirtualQAudioInput* self, QMetaMethod* signal);
void QAudioInput_virtualbase_disconnectNotify(VirtualQAudioInput* self, QMetaMethod* signal);

QObject* QAudioInput_protectedbase_sender(const VirtualQAudioInput* self);
int QAudioInput_protectedbase_senderSignalIndex(const VirtualQAudioInput* self);
int QAudioInput_protectedbase_receivers(const VirtualQAudioInput* self, const char* signal);
bool QAudioInput_protectedbase_isSignalConnected(const VirtualQAudioInput* self, QMetaMethod* signal);

const QMetaObject* QAudioInput_staticMetaObject();
void QAudioInput_delete(QAudioInput* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
