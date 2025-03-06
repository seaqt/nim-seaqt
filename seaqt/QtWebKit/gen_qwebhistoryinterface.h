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

struct QWebHistoryInterface_VTable {
	void (*destructor)(struct QWebHistoryInterface_VTable* vtbl, QWebHistoryInterface* self);
	QMetaObject* (*metaObject)(struct QWebHistoryInterface_VTable* vtbl, const QWebHistoryInterface* self);
	void* (*metacast)(struct QWebHistoryInterface_VTable* vtbl, QWebHistoryInterface* self, const char* param1);
	int (*metacall)(struct QWebHistoryInterface_VTable* vtbl, QWebHistoryInterface* self, int param1, int param2, void** param3);
	bool (*historyContains)(struct QWebHistoryInterface_VTable* vtbl, const QWebHistoryInterface* self, struct miqt_string url);
	void (*addHistoryEntry)(struct QWebHistoryInterface_VTable* vtbl, QWebHistoryInterface* self, struct miqt_string url);
	bool (*event)(struct QWebHistoryInterface_VTable* vtbl, QWebHistoryInterface* self, QEvent* event);
	bool (*eventFilter)(struct QWebHistoryInterface_VTable* vtbl, QWebHistoryInterface* self, QObject* watched, QEvent* event);
	void (*timerEvent)(struct QWebHistoryInterface_VTable* vtbl, QWebHistoryInterface* self, QTimerEvent* event);
	void (*childEvent)(struct QWebHistoryInterface_VTable* vtbl, QWebHistoryInterface* self, QChildEvent* event);
	void (*customEvent)(struct QWebHistoryInterface_VTable* vtbl, QWebHistoryInterface* self, QEvent* event);
	void (*connectNotify)(struct QWebHistoryInterface_VTable* vtbl, QWebHistoryInterface* self, QMetaMethod* signal);
	void (*disconnectNotify)(struct QWebHistoryInterface_VTable* vtbl, QWebHistoryInterface* self, QMetaMethod* signal);
};
QWebHistoryInterface* QWebHistoryInterface_new(struct QWebHistoryInterface_VTable* vtbl);
QWebHistoryInterface* QWebHistoryInterface_new2(struct QWebHistoryInterface_VTable* vtbl, QObject* parent);
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
QMetaObject* QWebHistoryInterface_virtualbase_metaObject(const void* self);
void* QWebHistoryInterface_virtualbase_metacast(void* self, const char* param1);
int QWebHistoryInterface_virtualbase_metacall(void* self, int param1, int param2, void** param3);
bool QWebHistoryInterface_virtualbase_historyContains(const void* self, struct miqt_string url);
void QWebHistoryInterface_virtualbase_addHistoryEntry(void* self, struct miqt_string url);
bool QWebHistoryInterface_virtualbase_event(void* self, QEvent* event);
bool QWebHistoryInterface_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);
void QWebHistoryInterface_virtualbase_timerEvent(void* self, QTimerEvent* event);
void QWebHistoryInterface_virtualbase_childEvent(void* self, QChildEvent* event);
void QWebHistoryInterface_virtualbase_customEvent(void* self, QEvent* event);
void QWebHistoryInterface_virtualbase_connectNotify(void* self, QMetaMethod* signal);
void QWebHistoryInterface_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
QObject* QWebHistoryInterface_protectedbase_sender(bool* _dynamic_cast_ok, const void* self);
int QWebHistoryInterface_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self);
int QWebHistoryInterface_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal);
bool QWebHistoryInterface_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal);
const QMetaObject* QWebHistoryInterface_staticMetaObject();
void QWebHistoryInterface_delete(QWebHistoryInterface* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
