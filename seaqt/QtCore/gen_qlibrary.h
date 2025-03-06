#pragma once
#ifndef SEAQT_QTCORE_GEN_QLIBRARY_H
#define SEAQT_QTCORE_GEN_QLIBRARY_H

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
class QLibrary;
class QMetaMethod;
class QMetaObject;
class QObject;
class QTimerEvent;
#else
typedef struct QChildEvent QChildEvent;
typedef struct QEvent QEvent;
typedef struct QLibrary QLibrary;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QObject QObject;
typedef struct QTimerEvent QTimerEvent;
#endif

struct QLibrary_VTable {
	void (*destructor)(struct QLibrary_VTable* vtbl, QLibrary* self);
	QMetaObject* (*metaObject)(struct QLibrary_VTable* vtbl, const QLibrary* self);
	void* (*metacast)(struct QLibrary_VTable* vtbl, QLibrary* self, const char* param1);
	int (*metacall)(struct QLibrary_VTable* vtbl, QLibrary* self, int param1, int param2, void** param3);
	bool (*event)(struct QLibrary_VTable* vtbl, QLibrary* self, QEvent* event);
	bool (*eventFilter)(struct QLibrary_VTable* vtbl, QLibrary* self, QObject* watched, QEvent* event);
	void (*timerEvent)(struct QLibrary_VTable* vtbl, QLibrary* self, QTimerEvent* event);
	void (*childEvent)(struct QLibrary_VTable* vtbl, QLibrary* self, QChildEvent* event);
	void (*customEvent)(struct QLibrary_VTable* vtbl, QLibrary* self, QEvent* event);
	void (*connectNotify)(struct QLibrary_VTable* vtbl, QLibrary* self, QMetaMethod* signal);
	void (*disconnectNotify)(struct QLibrary_VTable* vtbl, QLibrary* self, QMetaMethod* signal);
};
QLibrary* QLibrary_new(struct QLibrary_VTable* vtbl);
QLibrary* QLibrary_new2(struct QLibrary_VTable* vtbl, struct miqt_string fileName);
QLibrary* QLibrary_new3(struct QLibrary_VTable* vtbl, struct miqt_string fileName, int verNum);
QLibrary* QLibrary_new4(struct QLibrary_VTable* vtbl, struct miqt_string fileName, struct miqt_string version);
QLibrary* QLibrary_new5(struct QLibrary_VTable* vtbl, QObject* parent);
QLibrary* QLibrary_new6(struct QLibrary_VTable* vtbl, struct miqt_string fileName, QObject* parent);
QLibrary* QLibrary_new7(struct QLibrary_VTable* vtbl, struct miqt_string fileName, int verNum, QObject* parent);
QLibrary* QLibrary_new8(struct QLibrary_VTable* vtbl, struct miqt_string fileName, struct miqt_string version, QObject* parent);
void QLibrary_virtbase(QLibrary* src, QObject** outptr_QObject);
QMetaObject* QLibrary_metaObject(const QLibrary* self);
void* QLibrary_metacast(QLibrary* self, const char* param1);
int QLibrary_metacall(QLibrary* self, int param1, int param2, void** param3);
struct miqt_string QLibrary_tr(const char* s);
bool QLibrary_load(QLibrary* self);
bool QLibrary_unload(QLibrary* self);
bool QLibrary_isLoaded(const QLibrary* self);
bool QLibrary_isLibrary(struct miqt_string fileName);
void QLibrary_setFileName(QLibrary* self, struct miqt_string fileName);
struct miqt_string QLibrary_fileName(const QLibrary* self);
void QLibrary_setFileNameAndVersion(QLibrary* self, struct miqt_string fileName, int verNum);
void QLibrary_setFileNameAndVersion2(QLibrary* self, struct miqt_string fileName, struct miqt_string version);
struct miqt_string QLibrary_errorString(const QLibrary* self);
void QLibrary_setLoadHints(QLibrary* self, int hints);
int QLibrary_loadHints(const QLibrary* self);
struct miqt_string QLibrary_tr2(const char* s, const char* c);
struct miqt_string QLibrary_tr3(const char* s, const char* c, int n);
QMetaObject* QLibrary_virtualbase_metaObject(const void* self);
void* QLibrary_virtualbase_metacast(void* self, const char* param1);
int QLibrary_virtualbase_metacall(void* self, int param1, int param2, void** param3);
bool QLibrary_virtualbase_event(void* self, QEvent* event);
bool QLibrary_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);
void QLibrary_virtualbase_timerEvent(void* self, QTimerEvent* event);
void QLibrary_virtualbase_childEvent(void* self, QChildEvent* event);
void QLibrary_virtualbase_customEvent(void* self, QEvent* event);
void QLibrary_virtualbase_connectNotify(void* self, QMetaMethod* signal);
void QLibrary_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
QObject* QLibrary_protectedbase_sender(bool* _dynamic_cast_ok, const void* self);
int QLibrary_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self);
int QLibrary_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal);
bool QLibrary_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal);
const QMetaObject* QLibrary_staticMetaObject();
void QLibrary_delete(QLibrary* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
