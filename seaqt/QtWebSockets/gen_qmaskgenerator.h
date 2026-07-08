#pragma once
#ifndef SEAQT_QTWEBSOCKETS_GEN_QMASKGENERATOR_H
#define SEAQT_QTWEBSOCKETS_GEN_QMASKGENERATOR_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt-runtime.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QChildEvent;
class QEvent;
class QMaskGenerator;
class QMetaMethod;
class QMetaObject;
class QObject;
class QTimerEvent;
#else
typedef struct QChildEvent QChildEvent;
typedef struct QEvent QEvent;
typedef struct QMaskGenerator QMaskGenerator;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QObject QObject;
typedef struct QTimerEvent QTimerEvent;
#endif

typedef struct VirtualQMaskGenerator VirtualQMaskGenerator;
typedef struct QMaskGenerator_VTable{
	void (*destructor)(VirtualQMaskGenerator* self);
	bool (*seed)(VirtualQMaskGenerator* self);
	unsigned int (*nextMask)(VirtualQMaskGenerator* self);
	QMetaObject* (*metaObject)(const VirtualQMaskGenerator* self);
	void* (*metacast)(VirtualQMaskGenerator* self, const char* param1);
	int (*metacall)(VirtualQMaskGenerator* self, int param1, int param2, void** param3);
	bool (*event)(VirtualQMaskGenerator* self, QEvent* event);
	bool (*eventFilter)(VirtualQMaskGenerator* self, QObject* watched, QEvent* event);
	void (*timerEvent)(VirtualQMaskGenerator* self, QTimerEvent* event);
	void (*childEvent)(VirtualQMaskGenerator* self, QChildEvent* event);
	void (*customEvent)(VirtualQMaskGenerator* self, QEvent* event);
	void (*connectNotify)(VirtualQMaskGenerator* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQMaskGenerator* self, QMetaMethod* signal);
}QMaskGenerator_VTable;

void* QMaskGenerator_vdata(VirtualQMaskGenerator* self);
VirtualQMaskGenerator* vdata_QMaskGenerator(void* vdata);

VirtualQMaskGenerator* QMaskGenerator_new(const QMaskGenerator_VTable* vtbl, size_t vdata);
VirtualQMaskGenerator* QMaskGenerator_new_parent(const QMaskGenerator_VTable* vtbl, size_t vdata, QObject* parent);

void QMaskGenerator_virtbase(QMaskGenerator* src, QObject** outptr_QObject);
bool QMaskGenerator_seed(QMaskGenerator* self);
unsigned int QMaskGenerator_nextMask(QMaskGenerator* self);

bool QMaskGenerator_virtualbase_seed(VirtualQMaskGenerator* self);
unsigned int QMaskGenerator_virtualbase_nextMask(VirtualQMaskGenerator* self);
QMetaObject* QMaskGenerator_virtualbase_metaObject(const VirtualQMaskGenerator* self);
void* QMaskGenerator_virtualbase_metacast(VirtualQMaskGenerator* self, const char* param1);
int QMaskGenerator_virtualbase_metacall(VirtualQMaskGenerator* self, int param1, int param2, void** param3);
bool QMaskGenerator_virtualbase_event(VirtualQMaskGenerator* self, QEvent* event);
bool QMaskGenerator_virtualbase_eventFilter(VirtualQMaskGenerator* self, QObject* watched, QEvent* event);
void QMaskGenerator_virtualbase_timerEvent(VirtualQMaskGenerator* self, QTimerEvent* event);
void QMaskGenerator_virtualbase_childEvent(VirtualQMaskGenerator* self, QChildEvent* event);
void QMaskGenerator_virtualbase_customEvent(VirtualQMaskGenerator* self, QEvent* event);
void QMaskGenerator_virtualbase_connectNotify(VirtualQMaskGenerator* self, QMetaMethod* signal);
void QMaskGenerator_virtualbase_disconnectNotify(VirtualQMaskGenerator* self, QMetaMethod* signal);

QObject* QMaskGenerator_protectedbase_sender(const VirtualQMaskGenerator* self);
int QMaskGenerator_protectedbase_senderSignalIndex(const VirtualQMaskGenerator* self);
int QMaskGenerator_protectedbase_receivers(const VirtualQMaskGenerator* self, const char* signal);
bool QMaskGenerator_protectedbase_isSignalConnected(const VirtualQMaskGenerator* self, QMetaMethod* signal);

void QMaskGenerator_delete(QMaskGenerator* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
