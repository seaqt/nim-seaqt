#pragma once
#ifndef SEAQT_QTCORE_GEN_QSOCKETNOTIFIER_H
#define SEAQT_QTCORE_GEN_QSOCKETNOTIFIER_H

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
class QSocketDescriptor;
class QSocketNotifier;
class QTimerEvent;
#else
typedef struct QChildEvent QChildEvent;
typedef struct QEvent QEvent;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QObject QObject;
typedef struct QSocketDescriptor QSocketDescriptor;
typedef struct QSocketNotifier QSocketNotifier;
typedef struct QTimerEvent QTimerEvent;
#endif

struct QSocketNotifier_VTable {
	void (*destructor)(struct QSocketNotifier_VTable* vtbl, QSocketNotifier* self);
	QMetaObject* (*metaObject)(struct QSocketNotifier_VTable* vtbl, const QSocketNotifier* self);
	void* (*metacast)(struct QSocketNotifier_VTable* vtbl, QSocketNotifier* self, const char* param1);
	int (*metacall)(struct QSocketNotifier_VTable* vtbl, QSocketNotifier* self, int param1, int param2, void** param3);
	bool (*event)(struct QSocketNotifier_VTable* vtbl, QSocketNotifier* self, QEvent* param1);
	bool (*eventFilter)(struct QSocketNotifier_VTable* vtbl, QSocketNotifier* self, QObject* watched, QEvent* event);
	void (*timerEvent)(struct QSocketNotifier_VTable* vtbl, QSocketNotifier* self, QTimerEvent* event);
	void (*childEvent)(struct QSocketNotifier_VTable* vtbl, QSocketNotifier* self, QChildEvent* event);
	void (*customEvent)(struct QSocketNotifier_VTable* vtbl, QSocketNotifier* self, QEvent* event);
	void (*connectNotify)(struct QSocketNotifier_VTable* vtbl, QSocketNotifier* self, QMetaMethod* signal);
	void (*disconnectNotify)(struct QSocketNotifier_VTable* vtbl, QSocketNotifier* self, QMetaMethod* signal);
};
QSocketNotifier* QSocketNotifier_new(struct QSocketNotifier_VTable* vtbl, intptr_t socket, int param2);
QSocketNotifier* QSocketNotifier_new2(struct QSocketNotifier_VTable* vtbl, intptr_t socket, int param2, QObject* parent);
void QSocketNotifier_virtbase(QSocketNotifier* src, QObject** outptr_QObject);
QMetaObject* QSocketNotifier_metaObject(const QSocketNotifier* self);
void* QSocketNotifier_metacast(QSocketNotifier* self, const char* param1);
int QSocketNotifier_metacall(QSocketNotifier* self, int param1, int param2, void** param3);
struct miqt_string QSocketNotifier_tr(const char* s);
struct miqt_string QSocketNotifier_trUtf8(const char* s);
intptr_t QSocketNotifier_socket(const QSocketNotifier* self);
int QSocketNotifier_type(const QSocketNotifier* self);
bool QSocketNotifier_isEnabled(const QSocketNotifier* self);
void QSocketNotifier_setEnabled(QSocketNotifier* self, bool enabled);
bool QSocketNotifier_event(QSocketNotifier* self, QEvent* param1);
struct miqt_string QSocketNotifier_tr2(const char* s, const char* c);
struct miqt_string QSocketNotifier_tr3(const char* s, const char* c, int n);
struct miqt_string QSocketNotifier_trUtf82(const char* s, const char* c);
struct miqt_string QSocketNotifier_trUtf83(const char* s, const char* c, int n);
QMetaObject* QSocketNotifier_virtualbase_metaObject(const void* self);
void* QSocketNotifier_virtualbase_metacast(void* self, const char* param1);
int QSocketNotifier_virtualbase_metacall(void* self, int param1, int param2, void** param3);
bool QSocketNotifier_virtualbase_event(void* self, QEvent* param1);
bool QSocketNotifier_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);
void QSocketNotifier_virtualbase_timerEvent(void* self, QTimerEvent* event);
void QSocketNotifier_virtualbase_childEvent(void* self, QChildEvent* event);
void QSocketNotifier_virtualbase_customEvent(void* self, QEvent* event);
void QSocketNotifier_virtualbase_connectNotify(void* self, QMetaMethod* signal);
void QSocketNotifier_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
QObject* QSocketNotifier_protectedbase_sender(const void* self);
int QSocketNotifier_protectedbase_senderSignalIndex(const void* self);
int QSocketNotifier_protectedbase_receivers(const void* self, const char* signal);
bool QSocketNotifier_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal);
const QMetaObject* QSocketNotifier_staticMetaObject();
void QSocketNotifier_delete(QSocketNotifier* self);

QSocketDescriptor* QSocketDescriptor_new();
QSocketDescriptor* QSocketDescriptor_new2(QSocketDescriptor* param1);
QSocketDescriptor* QSocketDescriptor_new3(int descriptor);
int QSocketDescriptor_ToInt(const QSocketDescriptor* self);
bool QSocketDescriptor_isValid(const QSocketDescriptor* self);
void QSocketDescriptor_delete(QSocketDescriptor* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
