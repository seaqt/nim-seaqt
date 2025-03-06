#pragma once
#ifndef SEAQT_QTNETWORK_GEN_QHTTPMULTIPART_H
#define SEAQT_QTNETWORK_GEN_QHTTPMULTIPART_H

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
class QHttpMultiPart;
class QHttpPart;
class QIODevice;
class QMetaMethod;
class QMetaObject;
class QObject;
class QTimerEvent;
class QVariant;
#else
typedef struct QChildEvent QChildEvent;
typedef struct QEvent QEvent;
typedef struct QHttpMultiPart QHttpMultiPart;
typedef struct QHttpPart QHttpPart;
typedef struct QIODevice QIODevice;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QObject QObject;
typedef struct QTimerEvent QTimerEvent;
typedef struct QVariant QVariant;
#endif

QHttpPart* QHttpPart_new();
QHttpPart* QHttpPart_new2(QHttpPart* other);
void QHttpPart_operatorAssign(QHttpPart* self, QHttpPart* other);
void QHttpPart_swap(QHttpPart* self, QHttpPart* other);
bool QHttpPart_operatorEqual(const QHttpPart* self, QHttpPart* other);
bool QHttpPart_operatorNotEqual(const QHttpPart* self, QHttpPart* other);
void QHttpPart_setHeader(QHttpPart* self, int header, QVariant* value);
void QHttpPart_setRawHeader(QHttpPart* self, struct miqt_string headerName, struct miqt_string headerValue);
void QHttpPart_setBody(QHttpPart* self, struct miqt_string body);
void QHttpPart_setBodyDevice(QHttpPart* self, QIODevice* device);
void QHttpPart_delete(QHttpPart* self);

struct QHttpMultiPart_VTable {
	void (*destructor)(struct QHttpMultiPart_VTable* vtbl, QHttpMultiPart* self);
	QMetaObject* (*metaObject)(struct QHttpMultiPart_VTable* vtbl, const QHttpMultiPart* self);
	void* (*metacast)(struct QHttpMultiPart_VTable* vtbl, QHttpMultiPart* self, const char* param1);
	int (*metacall)(struct QHttpMultiPart_VTable* vtbl, QHttpMultiPart* self, int param1, int param2, void** param3);
	bool (*event)(struct QHttpMultiPart_VTable* vtbl, QHttpMultiPart* self, QEvent* event);
	bool (*eventFilter)(struct QHttpMultiPart_VTable* vtbl, QHttpMultiPart* self, QObject* watched, QEvent* event);
	void (*timerEvent)(struct QHttpMultiPart_VTable* vtbl, QHttpMultiPart* self, QTimerEvent* event);
	void (*childEvent)(struct QHttpMultiPart_VTable* vtbl, QHttpMultiPart* self, QChildEvent* event);
	void (*customEvent)(struct QHttpMultiPart_VTable* vtbl, QHttpMultiPart* self, QEvent* event);
	void (*connectNotify)(struct QHttpMultiPart_VTable* vtbl, QHttpMultiPart* self, QMetaMethod* signal);
	void (*disconnectNotify)(struct QHttpMultiPart_VTable* vtbl, QHttpMultiPart* self, QMetaMethod* signal);
};
QHttpMultiPart* QHttpMultiPart_new(struct QHttpMultiPart_VTable* vtbl);
QHttpMultiPart* QHttpMultiPart_new2(struct QHttpMultiPart_VTable* vtbl, int contentType);
QHttpMultiPart* QHttpMultiPart_new3(struct QHttpMultiPart_VTable* vtbl, QObject* parent);
QHttpMultiPart* QHttpMultiPart_new4(struct QHttpMultiPart_VTable* vtbl, int contentType, QObject* parent);
void QHttpMultiPart_virtbase(QHttpMultiPart* src, QObject** outptr_QObject);
QMetaObject* QHttpMultiPart_metaObject(const QHttpMultiPart* self);
void* QHttpMultiPart_metacast(QHttpMultiPart* self, const char* param1);
int QHttpMultiPart_metacall(QHttpMultiPart* self, int param1, int param2, void** param3);
struct miqt_string QHttpMultiPart_tr(const char* s);
struct miqt_string QHttpMultiPart_trUtf8(const char* s);
void QHttpMultiPart_append(QHttpMultiPart* self, QHttpPart* httpPart);
void QHttpMultiPart_setContentType(QHttpMultiPart* self, int contentType);
struct miqt_string QHttpMultiPart_boundary(const QHttpMultiPart* self);
void QHttpMultiPart_setBoundary(QHttpMultiPart* self, struct miqt_string boundary);
struct miqt_string QHttpMultiPart_tr2(const char* s, const char* c);
struct miqt_string QHttpMultiPart_tr3(const char* s, const char* c, int n);
struct miqt_string QHttpMultiPart_trUtf82(const char* s, const char* c);
struct miqt_string QHttpMultiPart_trUtf83(const char* s, const char* c, int n);
QMetaObject* QHttpMultiPart_virtualbase_metaObject(const void* self);
void* QHttpMultiPart_virtualbase_metacast(void* self, const char* param1);
int QHttpMultiPart_virtualbase_metacall(void* self, int param1, int param2, void** param3);
bool QHttpMultiPart_virtualbase_event(void* self, QEvent* event);
bool QHttpMultiPart_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);
void QHttpMultiPart_virtualbase_timerEvent(void* self, QTimerEvent* event);
void QHttpMultiPart_virtualbase_childEvent(void* self, QChildEvent* event);
void QHttpMultiPart_virtualbase_customEvent(void* self, QEvent* event);
void QHttpMultiPart_virtualbase_connectNotify(void* self, QMetaMethod* signal);
void QHttpMultiPart_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
QObject* QHttpMultiPart_protectedbase_sender(bool* _dynamic_cast_ok, const void* self);
int QHttpMultiPart_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self);
int QHttpMultiPart_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal);
bool QHttpMultiPart_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal);
const QMetaObject* QHttpMultiPart_staticMetaObject();
void QHttpMultiPart_delete(QHttpMultiPart* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
