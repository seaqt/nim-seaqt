#pragma once
#ifndef SEAQT_QTCORE_GEN_QFILESELECTOR_H
#define SEAQT_QTCORE_GEN_QFILESELECTOR_H

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
class QFileSelector;
class QMetaMethod;
class QMetaObject;
class QObject;
class QTimerEvent;
class QUrl;
#else
typedef struct QChildEvent QChildEvent;
typedef struct QEvent QEvent;
typedef struct QFileSelector QFileSelector;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QObject QObject;
typedef struct QTimerEvent QTimerEvent;
typedef struct QUrl QUrl;
#endif

typedef struct VirtualQFileSelector VirtualQFileSelector;
typedef struct QFileSelector_VTable{
	void (*destructor)(VirtualQFileSelector* self);
	QMetaObject* (*metaObject)(const VirtualQFileSelector* self);
	void* (*metacast)(VirtualQFileSelector* self, const char* param1);
	int (*metacall)(VirtualQFileSelector* self, int param1, int param2, void** param3);
	bool (*event)(VirtualQFileSelector* self, QEvent* event);
	bool (*eventFilter)(VirtualQFileSelector* self, QObject* watched, QEvent* event);
	void (*timerEvent)(VirtualQFileSelector* self, QTimerEvent* event);
	void (*childEvent)(VirtualQFileSelector* self, QChildEvent* event);
	void (*customEvent)(VirtualQFileSelector* self, QEvent* event);
	void (*connectNotify)(VirtualQFileSelector* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQFileSelector* self, QMetaMethod* signal);
}QFileSelector_VTable;

const QFileSelector_VTable* QFileSelector_vtbl(const VirtualQFileSelector* self);
void* QFileSelector_vdata(const VirtualQFileSelector* self);
void QFileSelector_setVdata(VirtualQFileSelector* self, void* vdata);

VirtualQFileSelector* QFileSelector_new(const QFileSelector_VTable* vtbl, void* vdata);
VirtualQFileSelector* QFileSelector_new2(const QFileSelector_VTable* vtbl, void* vdata, QObject* parent);

void QFileSelector_virtbase(QFileSelector* src, QObject** outptr_QObject);
QMetaObject* QFileSelector_metaObject(const QFileSelector* self);
void* QFileSelector_metacast(QFileSelector* self, const char* param1);
int QFileSelector_metacall(QFileSelector* self, int param1, int param2, void** param3);
struct miqt_string QFileSelector_tr(const char* s);
struct miqt_string QFileSelector_trUtf8(const char* s);
struct miqt_string QFileSelector_select(const QFileSelector* self, struct miqt_string filePath);
QUrl* QFileSelector_selectWithFilePath(const QFileSelector* self, QUrl* filePath);
struct miqt_array /* of struct miqt_string */  QFileSelector_extraSelectors(const QFileSelector* self);
void QFileSelector_setExtraSelectors(QFileSelector* self, struct miqt_array /* of struct miqt_string */  list);
struct miqt_array /* of struct miqt_string */  QFileSelector_allSelectors(const QFileSelector* self);
struct miqt_string QFileSelector_tr2(const char* s, const char* c);
struct miqt_string QFileSelector_tr3(const char* s, const char* c, int n);
struct miqt_string QFileSelector_trUtf82(const char* s, const char* c);
struct miqt_string QFileSelector_trUtf83(const char* s, const char* c, int n);

QMetaObject* QFileSelector_virtualbase_metaObject(const VirtualQFileSelector* self);
void* QFileSelector_virtualbase_metacast(VirtualQFileSelector* self, const char* param1);
int QFileSelector_virtualbase_metacall(VirtualQFileSelector* self, int param1, int param2, void** param3);
bool QFileSelector_virtualbase_event(VirtualQFileSelector* self, QEvent* event);
bool QFileSelector_virtualbase_eventFilter(VirtualQFileSelector* self, QObject* watched, QEvent* event);
void QFileSelector_virtualbase_timerEvent(VirtualQFileSelector* self, QTimerEvent* event);
void QFileSelector_virtualbase_childEvent(VirtualQFileSelector* self, QChildEvent* event);
void QFileSelector_virtualbase_customEvent(VirtualQFileSelector* self, QEvent* event);
void QFileSelector_virtualbase_connectNotify(VirtualQFileSelector* self, QMetaMethod* signal);
void QFileSelector_virtualbase_disconnectNotify(VirtualQFileSelector* self, QMetaMethod* signal);

QObject* QFileSelector_protectedbase_sender(const VirtualQFileSelector* self);
int QFileSelector_protectedbase_senderSignalIndex(const VirtualQFileSelector* self);
int QFileSelector_protectedbase_receivers(const VirtualQFileSelector* self, const char* signal);
bool QFileSelector_protectedbase_isSignalConnected(const VirtualQFileSelector* self, QMetaMethod* signal);

const QMetaObject* QFileSelector_staticMetaObject();
void QFileSelector_delete(QFileSelector* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
