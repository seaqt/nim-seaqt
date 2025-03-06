#pragma once
#ifndef SEAQT_QTCORE_GEN_QSIGNALMAPPER_H
#define SEAQT_QTCORE_GEN_QSIGNALMAPPER_H

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
class QSignalMapper;
class QTimerEvent;
#else
typedef struct QChildEvent QChildEvent;
typedef struct QEvent QEvent;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QObject QObject;
typedef struct QSignalMapper QSignalMapper;
typedef struct QTimerEvent QTimerEvent;
#endif

struct QSignalMapper_VTable {
	void (*destructor)(struct QSignalMapper_VTable* vtbl, QSignalMapper* self);
	QMetaObject* (*metaObject)(struct QSignalMapper_VTable* vtbl, const QSignalMapper* self);
	void* (*metacast)(struct QSignalMapper_VTable* vtbl, QSignalMapper* self, const char* param1);
	int (*metacall)(struct QSignalMapper_VTable* vtbl, QSignalMapper* self, int param1, int param2, void** param3);
	bool (*event)(struct QSignalMapper_VTable* vtbl, QSignalMapper* self, QEvent* event);
	bool (*eventFilter)(struct QSignalMapper_VTable* vtbl, QSignalMapper* self, QObject* watched, QEvent* event);
	void (*timerEvent)(struct QSignalMapper_VTable* vtbl, QSignalMapper* self, QTimerEvent* event);
	void (*childEvent)(struct QSignalMapper_VTable* vtbl, QSignalMapper* self, QChildEvent* event);
	void (*customEvent)(struct QSignalMapper_VTable* vtbl, QSignalMapper* self, QEvent* event);
	void (*connectNotify)(struct QSignalMapper_VTable* vtbl, QSignalMapper* self, QMetaMethod* signal);
	void (*disconnectNotify)(struct QSignalMapper_VTable* vtbl, QSignalMapper* self, QMetaMethod* signal);
};
QSignalMapper* QSignalMapper_new(struct QSignalMapper_VTable* vtbl);
QSignalMapper* QSignalMapper_new2(struct QSignalMapper_VTable* vtbl, QObject* parent);
void QSignalMapper_virtbase(QSignalMapper* src, QObject** outptr_QObject);
QMetaObject* QSignalMapper_metaObject(const QSignalMapper* self);
void* QSignalMapper_metacast(QSignalMapper* self, const char* param1);
int QSignalMapper_metacall(QSignalMapper* self, int param1, int param2, void** param3);
struct miqt_string QSignalMapper_tr(const char* s);
struct miqt_string QSignalMapper_trUtf8(const char* s);
void QSignalMapper_setMapping(QSignalMapper* self, QObject* sender, int id);
void QSignalMapper_setMapping2(QSignalMapper* self, QObject* sender, struct miqt_string text);
void QSignalMapper_setMapping3(QSignalMapper* self, QObject* sender, QObject* object);
void QSignalMapper_removeMappings(QSignalMapper* self, QObject* sender);
QObject* QSignalMapper_mapping(const QSignalMapper* self, int id);
QObject* QSignalMapper_mappingWithText(const QSignalMapper* self, struct miqt_string text);
QObject* QSignalMapper_mappingWithObject(const QSignalMapper* self, QObject* object);
void QSignalMapper_mapped(QSignalMapper* self, int param1);
void QSignalMapper_connect_mapped(QSignalMapper* self, intptr_t slot);
void QSignalMapper_mappedWithQString(QSignalMapper* self, struct miqt_string param1);
void QSignalMapper_connect_mappedWithQString(QSignalMapper* self, intptr_t slot);
void QSignalMapper_mappedWithQObject(QSignalMapper* self, QObject* param1);
void QSignalMapper_connect_mappedWithQObject(QSignalMapper* self, intptr_t slot);
void QSignalMapper_mappedInt(QSignalMapper* self, int param1);
void QSignalMapper_connect_mappedInt(QSignalMapper* self, intptr_t slot);
void QSignalMapper_mappedString(QSignalMapper* self, struct miqt_string param1);
void QSignalMapper_connect_mappedString(QSignalMapper* self, intptr_t slot);
void QSignalMapper_mappedObject(QSignalMapper* self, QObject* param1);
void QSignalMapper_connect_mappedObject(QSignalMapper* self, intptr_t slot);
void QSignalMapper_map(QSignalMapper* self);
void QSignalMapper_mapWithSender(QSignalMapper* self, QObject* sender);
struct miqt_string QSignalMapper_tr2(const char* s, const char* c);
struct miqt_string QSignalMapper_tr3(const char* s, const char* c, int n);
struct miqt_string QSignalMapper_trUtf82(const char* s, const char* c);
struct miqt_string QSignalMapper_trUtf83(const char* s, const char* c, int n);
QMetaObject* QSignalMapper_virtualbase_metaObject(const void* self);
void* QSignalMapper_virtualbase_metacast(void* self, const char* param1);
int QSignalMapper_virtualbase_metacall(void* self, int param1, int param2, void** param3);
bool QSignalMapper_virtualbase_event(void* self, QEvent* event);
bool QSignalMapper_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);
void QSignalMapper_virtualbase_timerEvent(void* self, QTimerEvent* event);
void QSignalMapper_virtualbase_childEvent(void* self, QChildEvent* event);
void QSignalMapper_virtualbase_customEvent(void* self, QEvent* event);
void QSignalMapper_virtualbase_connectNotify(void* self, QMetaMethod* signal);
void QSignalMapper_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
QObject* QSignalMapper_protectedbase_sender(bool* _dynamic_cast_ok, const void* self);
int QSignalMapper_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self);
int QSignalMapper_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal);
bool QSignalMapper_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal);
const QMetaObject* QSignalMapper_staticMetaObject();
void QSignalMapper_delete(QSignalMapper* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
