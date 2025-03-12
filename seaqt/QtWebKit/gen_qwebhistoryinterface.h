#pragma once
#ifndef SEAQT_QTWEBKIT_GEN_QWEBHISTORYINTERFACE_H
#define SEAQT_QTWEBKIT_GEN_QWEBHISTORYINTERFACE_H

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
class QMetaMethod;
class QMetaObject;
class QObject;
class QTimerEvent;
class QWebHistoryInterface;
#else
typedef struct QChildEvent QChildEvent;
typedef struct QEvent QEvent;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QObject QObject;
typedef struct QTimerEvent QTimerEvent;
typedef struct QWebHistoryInterface QWebHistoryInterface;
#endif

typedef struct VirtualQWebHistoryInterface VirtualQWebHistoryInterface;
typedef struct QWebHistoryInterface_VTable{
	void (*destructor)(VirtualQWebHistoryInterface* self);
	QMetaObject* (*metaObject)(const VirtualQWebHistoryInterface* self);
	void* (*metacast)(VirtualQWebHistoryInterface* self, const char* param1);
	int (*metacall)(VirtualQWebHistoryInterface* self, int param1, int param2, void** param3);
	bool (*historyContains)(const VirtualQWebHistoryInterface* self, struct miqt_string url);
	void (*addHistoryEntry)(VirtualQWebHistoryInterface* self, struct miqt_string url);
	bool (*event)(VirtualQWebHistoryInterface* self, QEvent* event);
	bool (*eventFilter)(VirtualQWebHistoryInterface* self, QObject* watched, QEvent* event);
	void (*timerEvent)(VirtualQWebHistoryInterface* self, QTimerEvent* event);
	void (*childEvent)(VirtualQWebHistoryInterface* self, QChildEvent* event);
	void (*customEvent)(VirtualQWebHistoryInterface* self, QEvent* event);
	void (*connectNotify)(VirtualQWebHistoryInterface* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQWebHistoryInterface* self, QMetaMethod* signal);
}QWebHistoryInterface_VTable;

const QWebHistoryInterface_VTable* QWebHistoryInterface_vtbl(const VirtualQWebHistoryInterface* self);
void* QWebHistoryInterface_vdata(const VirtualQWebHistoryInterface* self);
void QWebHistoryInterface_setVdata(VirtualQWebHistoryInterface* self, void* vdata);

VirtualQWebHistoryInterface* QWebHistoryInterface_new(const QWebHistoryInterface_VTable* vtbl, void* vdata);
VirtualQWebHistoryInterface* QWebHistoryInterface_new2(const QWebHistoryInterface_VTable* vtbl, void* vdata, QObject* parent);

void QWebHistoryInterface_virtbase(QWebHistoryInterface* src, QObject** outptr_QObject);
QMetaObject* QWebHistoryInterface_metaObject(const QWebHistoryInterface* self);
void* QWebHistoryInterface_metacast(QWebHistoryInterface* self, const char* param1);
int QWebHistoryInterface_metacall(QWebHistoryInterface* self, int param1, int param2, void** param3);
struct miqt_string QWebHistoryInterface_tr(const char* s);
struct miqt_string QWebHistoryInterface_trUtf8(const char* s);
void QWebHistoryInterface_setDefaultInterface(QWebHistoryInterface* defaultInterface);
QWebHistoryInterface* QWebHistoryInterface_defaultInterface();
bool QWebHistoryInterface_historyContains(const QWebHistoryInterface* self, struct miqt_string url);
void QWebHistoryInterface_addHistoryEntry(QWebHistoryInterface* self, struct miqt_string url);
struct miqt_string QWebHistoryInterface_tr2(const char* s, const char* c);
struct miqt_string QWebHistoryInterface_tr3(const char* s, const char* c, int n);
struct miqt_string QWebHistoryInterface_trUtf82(const char* s, const char* c);
struct miqt_string QWebHistoryInterface_trUtf83(const char* s, const char* c, int n);

QMetaObject* QWebHistoryInterface_virtualbase_metaObject(const VirtualQWebHistoryInterface* self);
void* QWebHistoryInterface_virtualbase_metacast(VirtualQWebHistoryInterface* self, const char* param1);
int QWebHistoryInterface_virtualbase_metacall(VirtualQWebHistoryInterface* self, int param1, int param2, void** param3);
bool QWebHistoryInterface_virtualbase_historyContains(const VirtualQWebHistoryInterface* self, struct miqt_string url);
void QWebHistoryInterface_virtualbase_addHistoryEntry(VirtualQWebHistoryInterface* self, struct miqt_string url);
bool QWebHistoryInterface_virtualbase_event(VirtualQWebHistoryInterface* self, QEvent* event);
bool QWebHistoryInterface_virtualbase_eventFilter(VirtualQWebHistoryInterface* self, QObject* watched, QEvent* event);
void QWebHistoryInterface_virtualbase_timerEvent(VirtualQWebHistoryInterface* self, QTimerEvent* event);
void QWebHistoryInterface_virtualbase_childEvent(VirtualQWebHistoryInterface* self, QChildEvent* event);
void QWebHistoryInterface_virtualbase_customEvent(VirtualQWebHistoryInterface* self, QEvent* event);
void QWebHistoryInterface_virtualbase_connectNotify(VirtualQWebHistoryInterface* self, QMetaMethod* signal);
void QWebHistoryInterface_virtualbase_disconnectNotify(VirtualQWebHistoryInterface* self, QMetaMethod* signal);

QObject* QWebHistoryInterface_protectedbase_sender(const VirtualQWebHistoryInterface* self);
int QWebHistoryInterface_protectedbase_senderSignalIndex(const VirtualQWebHistoryInterface* self);
int QWebHistoryInterface_protectedbase_receivers(const VirtualQWebHistoryInterface* self, const char* signal);
bool QWebHistoryInterface_protectedbase_isSignalConnected(const VirtualQWebHistoryInterface* self, QMetaMethod* signal);

const QMetaObject* QWebHistoryInterface_staticMetaObject();
void QWebHistoryInterface_delete(QWebHistoryInterface* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
