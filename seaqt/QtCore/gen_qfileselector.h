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

struct QFileSelector_VTable {
	void (*destructor)(struct QFileSelector_VTable* vtbl, QFileSelector* self);
	QMetaObject* (*metaObject)(struct QFileSelector_VTable* vtbl, const QFileSelector* self);
	void* (*metacast)(struct QFileSelector_VTable* vtbl, QFileSelector* self, const char* param1);
	int (*metacall)(struct QFileSelector_VTable* vtbl, QFileSelector* self, int param1, int param2, void** param3);
	bool (*event)(struct QFileSelector_VTable* vtbl, QFileSelector* self, QEvent* event);
	bool (*eventFilter)(struct QFileSelector_VTable* vtbl, QFileSelector* self, QObject* watched, QEvent* event);
	void (*timerEvent)(struct QFileSelector_VTable* vtbl, QFileSelector* self, QTimerEvent* event);
	void (*childEvent)(struct QFileSelector_VTable* vtbl, QFileSelector* self, QChildEvent* event);
	void (*customEvent)(struct QFileSelector_VTable* vtbl, QFileSelector* self, QEvent* event);
	void (*connectNotify)(struct QFileSelector_VTable* vtbl, QFileSelector* self, QMetaMethod* signal);
	void (*disconnectNotify)(struct QFileSelector_VTable* vtbl, QFileSelector* self, QMetaMethod* signal);
};
QFileSelector* QFileSelector_new(struct QFileSelector_VTable* vtbl);
QFileSelector* QFileSelector_new2(struct QFileSelector_VTable* vtbl, QObject* parent);
void QFileSelector_virtbase(QFileSelector* src, QObject** outptr_QObject);
QMetaObject* QFileSelector_metaObject(const QFileSelector* self);
void* QFileSelector_metacast(QFileSelector* self, const char* param1);
int QFileSelector_metacall(QFileSelector* self, int param1, int param2, void** param3);
struct miqt_string QFileSelector_tr(const char* s);
struct miqt_string QFileSelector_select(const QFileSelector* self, struct miqt_string filePath);
QUrl* QFileSelector_selectWithFilePath(const QFileSelector* self, QUrl* filePath);
struct miqt_array /* of struct miqt_string */  QFileSelector_extraSelectors(const QFileSelector* self);
void QFileSelector_setExtraSelectors(QFileSelector* self, struct miqt_array /* of struct miqt_string */  list);
struct miqt_array /* of struct miqt_string */  QFileSelector_allSelectors(const QFileSelector* self);
struct miqt_string QFileSelector_tr2(const char* s, const char* c);
struct miqt_string QFileSelector_tr3(const char* s, const char* c, int n);
QMetaObject* QFileSelector_virtualbase_metaObject(const void* self);
void* QFileSelector_virtualbase_metacast(void* self, const char* param1);
int QFileSelector_virtualbase_metacall(void* self, int param1, int param2, void** param3);
bool QFileSelector_virtualbase_event(void* self, QEvent* event);
bool QFileSelector_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);
void QFileSelector_virtualbase_timerEvent(void* self, QTimerEvent* event);
void QFileSelector_virtualbase_childEvent(void* self, QChildEvent* event);
void QFileSelector_virtualbase_customEvent(void* self, QEvent* event);
void QFileSelector_virtualbase_connectNotify(void* self, QMetaMethod* signal);
void QFileSelector_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
QObject* QFileSelector_protectedbase_sender(bool* _dynamic_cast_ok, const void* self);
int QFileSelector_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self);
int QFileSelector_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal);
bool QFileSelector_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal);
const QMetaObject* QFileSelector_staticMetaObject();
void QFileSelector_delete(QFileSelector* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
