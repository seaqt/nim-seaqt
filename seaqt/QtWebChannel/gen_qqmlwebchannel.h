#pragma once
#ifndef SEAQT_QTWEBCHANNEL_GEN_QQMLWEBCHANNEL_H
#define SEAQT_QTWEBCHANNEL_GEN_QQMLWEBCHANNEL_H

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
class QQmlWebChannel;
class QTimerEvent;
class QVariant;
class QWebChannel;
#else
typedef struct QChildEvent QChildEvent;
typedef struct QEvent QEvent;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QObject QObject;
typedef struct QQmlWebChannel QQmlWebChannel;
typedef struct QTimerEvent QTimerEvent;
typedef struct QVariant QVariant;
typedef struct QWebChannel QWebChannel;
#endif

struct QQmlWebChannel_VTable {
	void (*destructor)(struct QQmlWebChannel_VTable* vtbl, QQmlWebChannel* self);
	QMetaObject* (*metaObject)(struct QQmlWebChannel_VTable* vtbl, const QQmlWebChannel* self);
	void* (*metacast)(struct QQmlWebChannel_VTable* vtbl, QQmlWebChannel* self, const char* param1);
	int (*metacall)(struct QQmlWebChannel_VTable* vtbl, QQmlWebChannel* self, int param1, int param2, void** param3);
	bool (*event)(struct QQmlWebChannel_VTable* vtbl, QQmlWebChannel* self, QEvent* event);
	bool (*eventFilter)(struct QQmlWebChannel_VTable* vtbl, QQmlWebChannel* self, QObject* watched, QEvent* event);
	void (*timerEvent)(struct QQmlWebChannel_VTable* vtbl, QQmlWebChannel* self, QTimerEvent* event);
	void (*childEvent)(struct QQmlWebChannel_VTable* vtbl, QQmlWebChannel* self, QChildEvent* event);
	void (*customEvent)(struct QQmlWebChannel_VTable* vtbl, QQmlWebChannel* self, QEvent* event);
	void (*connectNotify)(struct QQmlWebChannel_VTable* vtbl, QQmlWebChannel* self, QMetaMethod* signal);
	void (*disconnectNotify)(struct QQmlWebChannel_VTable* vtbl, QQmlWebChannel* self, QMetaMethod* signal);
};
QQmlWebChannel* QQmlWebChannel_new(struct QQmlWebChannel_VTable* vtbl);
QQmlWebChannel* QQmlWebChannel_new2(struct QQmlWebChannel_VTable* vtbl, QObject* parent);
void QQmlWebChannel_virtbase(QQmlWebChannel* src, QWebChannel** outptr_QWebChannel);
QMetaObject* QQmlWebChannel_metaObject(const QQmlWebChannel* self);
void* QQmlWebChannel_metacast(QQmlWebChannel* self, const char* param1);
int QQmlWebChannel_metacall(QQmlWebChannel* self, int param1, int param2, void** param3);
struct miqt_string QQmlWebChannel_tr(const char* s);
struct miqt_string QQmlWebChannel_trUtf8(const char* s);
void QQmlWebChannel_registerObjects(QQmlWebChannel* self, struct miqt_map /* of struct miqt_string to QVariant* */  objects);
void QQmlWebChannel_connectTo(QQmlWebChannel* self, QObject* transport);
void QQmlWebChannel_disconnectFrom(QQmlWebChannel* self, QObject* transport);
struct miqt_string QQmlWebChannel_tr2(const char* s, const char* c);
struct miqt_string QQmlWebChannel_tr3(const char* s, const char* c, int n);
struct miqt_string QQmlWebChannel_trUtf82(const char* s, const char* c);
struct miqt_string QQmlWebChannel_trUtf83(const char* s, const char* c, int n);
QMetaObject* QQmlWebChannel_virtualbase_metaObject(const void* self);
void* QQmlWebChannel_virtualbase_metacast(void* self, const char* param1);
int QQmlWebChannel_virtualbase_metacall(void* self, int param1, int param2, void** param3);
bool QQmlWebChannel_virtualbase_event(void* self, QEvent* event);
bool QQmlWebChannel_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);
void QQmlWebChannel_virtualbase_timerEvent(void* self, QTimerEvent* event);
void QQmlWebChannel_virtualbase_childEvent(void* self, QChildEvent* event);
void QQmlWebChannel_virtualbase_customEvent(void* self, QEvent* event);
void QQmlWebChannel_virtualbase_connectNotify(void* self, QMetaMethod* signal);
void QQmlWebChannel_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
QObject* QQmlWebChannel_protectedbase_sender(bool* _dynamic_cast_ok, const void* self);
int QQmlWebChannel_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self);
int QQmlWebChannel_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal);
bool QQmlWebChannel_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal);
const QMetaObject* QQmlWebChannel_staticMetaObject();
void QQmlWebChannel_delete(QQmlWebChannel* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
