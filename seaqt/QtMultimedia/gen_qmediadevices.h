#pragma once
#ifndef SEAQT_QTMULTIMEDIA_GEN_QMEDIADEVICES_H
#define SEAQT_QTMULTIMEDIA_GEN_QMEDIADEVICES_H

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
class QCameraDevice;
class QChildEvent;
class QEvent;
class QMediaDevices;
class QMetaMethod;
class QMetaObject;
class QObject;
class QTimerEvent;
#else
typedef struct QAudioDevice QAudioDevice;
typedef struct QCameraDevice QCameraDevice;
typedef struct QChildEvent QChildEvent;
typedef struct QEvent QEvent;
typedef struct QMediaDevices QMediaDevices;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QObject QObject;
typedef struct QTimerEvent QTimerEvent;
#endif

typedef struct VirtualQMediaDevices VirtualQMediaDevices;
typedef struct QMediaDevices_VTable{
	void (*destructor)(VirtualQMediaDevices* self);
	QMetaObject* (*metaObject)(const VirtualQMediaDevices* self);
	void* (*metacast)(VirtualQMediaDevices* self, const char* param1);
	int (*metacall)(VirtualQMediaDevices* self, int param1, int param2, void** param3);
	bool (*event)(VirtualQMediaDevices* self, QEvent* event);
	bool (*eventFilter)(VirtualQMediaDevices* self, QObject* watched, QEvent* event);
	void (*timerEvent)(VirtualQMediaDevices* self, QTimerEvent* event);
	void (*childEvent)(VirtualQMediaDevices* self, QChildEvent* event);
	void (*customEvent)(VirtualQMediaDevices* self, QEvent* event);
	void (*connectNotify)(VirtualQMediaDevices* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQMediaDevices* self, QMetaMethod* signal);
}QMediaDevices_VTable;

const QMediaDevices_VTable* QMediaDevices_vtbl(const VirtualQMediaDevices* self);
void* QMediaDevices_vdata(const VirtualQMediaDevices* self);
void QMediaDevices_setVdata(VirtualQMediaDevices* self, void* vdata);

VirtualQMediaDevices* QMediaDevices_new(const QMediaDevices_VTable* vtbl, void* vdata);
VirtualQMediaDevices* QMediaDevices_new2(const QMediaDevices_VTable* vtbl, void* vdata, QObject* parent);

void QMediaDevices_virtbase(QMediaDevices* src, QObject** outptr_QObject);
QMetaObject* QMediaDevices_metaObject(const QMediaDevices* self);
void* QMediaDevices_metacast(QMediaDevices* self, const char* param1);
int QMediaDevices_metacall(QMediaDevices* self, int param1, int param2, void** param3);
struct miqt_string QMediaDevices_tr(const char* s);
struct miqt_array /* of QAudioDevice* */  QMediaDevices_audioInputs();
struct miqt_array /* of QAudioDevice* */  QMediaDevices_audioOutputs();
struct miqt_array /* of QCameraDevice* */  QMediaDevices_videoInputs();
QAudioDevice* QMediaDevices_defaultAudioInput();
QAudioDevice* QMediaDevices_defaultAudioOutput();
QCameraDevice* QMediaDevices_defaultVideoInput();
void QMediaDevices_audioInputsChanged(QMediaDevices* self);
void QMediaDevices_connect_audioInputsChanged(VirtualQMediaDevices* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QMediaDevices_audioOutputsChanged(QMediaDevices* self);
void QMediaDevices_connect_audioOutputsChanged(VirtualQMediaDevices* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QMediaDevices_videoInputsChanged(QMediaDevices* self);
void QMediaDevices_connect_videoInputsChanged(VirtualQMediaDevices* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
struct miqt_string QMediaDevices_tr2(const char* s, const char* c);
struct miqt_string QMediaDevices_tr3(const char* s, const char* c, int n);

QMetaObject* QMediaDevices_virtualbase_metaObject(const VirtualQMediaDevices* self);
void* QMediaDevices_virtualbase_metacast(VirtualQMediaDevices* self, const char* param1);
int QMediaDevices_virtualbase_metacall(VirtualQMediaDevices* self, int param1, int param2, void** param3);
bool QMediaDevices_virtualbase_event(VirtualQMediaDevices* self, QEvent* event);
bool QMediaDevices_virtualbase_eventFilter(VirtualQMediaDevices* self, QObject* watched, QEvent* event);
void QMediaDevices_virtualbase_timerEvent(VirtualQMediaDevices* self, QTimerEvent* event);
void QMediaDevices_virtualbase_childEvent(VirtualQMediaDevices* self, QChildEvent* event);
void QMediaDevices_virtualbase_customEvent(VirtualQMediaDevices* self, QEvent* event);
void QMediaDevices_virtualbase_connectNotify(VirtualQMediaDevices* self, QMetaMethod* signal);
void QMediaDevices_virtualbase_disconnectNotify(VirtualQMediaDevices* self, QMetaMethod* signal);

QObject* QMediaDevices_protectedbase_sender(const VirtualQMediaDevices* self);
int QMediaDevices_protectedbase_senderSignalIndex(const VirtualQMediaDevices* self);
int QMediaDevices_protectedbase_receivers(const VirtualQMediaDevices* self, const char* signal);
bool QMediaDevices_protectedbase_isSignalConnected(const VirtualQMediaDevices* self, QMetaMethod* signal);

const QMetaObject* QMediaDevices_staticMetaObject();
void QMediaDevices_delete(QMediaDevices* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
