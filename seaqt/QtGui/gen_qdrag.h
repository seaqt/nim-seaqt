#pragma once
#ifndef SEAQT_QTGUI_GEN_QDRAG_H
#define SEAQT_QTGUI_GEN_QDRAG_H

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
class QDrag;
class QEvent;
class QMetaMethod;
class QMetaObject;
class QMimeData;
class QObject;
class QPixmap;
class QPoint;
class QTimerEvent;
#else
typedef struct QChildEvent QChildEvent;
typedef struct QDrag QDrag;
typedef struct QEvent QEvent;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QMimeData QMimeData;
typedef struct QObject QObject;
typedef struct QPixmap QPixmap;
typedef struct QPoint QPoint;
typedef struct QTimerEvent QTimerEvent;
#endif

struct QDrag_VTable {
	void (*destructor)(struct QDrag_VTable* vtbl, QDrag* self);
	QMetaObject* (*metaObject)(struct QDrag_VTable* vtbl, const QDrag* self);
	void* (*metacast)(struct QDrag_VTable* vtbl, QDrag* self, const char* param1);
	int (*metacall)(struct QDrag_VTable* vtbl, QDrag* self, int param1, int param2, void** param3);
	bool (*event)(struct QDrag_VTable* vtbl, QDrag* self, QEvent* event);
	bool (*eventFilter)(struct QDrag_VTable* vtbl, QDrag* self, QObject* watched, QEvent* event);
	void (*timerEvent)(struct QDrag_VTable* vtbl, QDrag* self, QTimerEvent* event);
	void (*childEvent)(struct QDrag_VTable* vtbl, QDrag* self, QChildEvent* event);
	void (*customEvent)(struct QDrag_VTable* vtbl, QDrag* self, QEvent* event);
	void (*connectNotify)(struct QDrag_VTable* vtbl, QDrag* self, QMetaMethod* signal);
	void (*disconnectNotify)(struct QDrag_VTable* vtbl, QDrag* self, QMetaMethod* signal);
};
QDrag* QDrag_new(struct QDrag_VTable* vtbl, QObject* dragSource);
void QDrag_virtbase(QDrag* src, QObject** outptr_QObject);
QMetaObject* QDrag_metaObject(const QDrag* self);
void* QDrag_metacast(QDrag* self, const char* param1);
int QDrag_metacall(QDrag* self, int param1, int param2, void** param3);
struct miqt_string QDrag_tr(const char* s);
void QDrag_setMimeData(QDrag* self, QMimeData* data);
QMimeData* QDrag_mimeData(const QDrag* self);
void QDrag_setPixmap(QDrag* self, QPixmap* pixmap);
QPixmap* QDrag_pixmap(const QDrag* self);
void QDrag_setHotSpot(QDrag* self, QPoint* hotspot);
QPoint* QDrag_hotSpot(const QDrag* self);
QObject* QDrag_source(const QDrag* self);
QObject* QDrag_target(const QDrag* self);
int QDrag_exec(QDrag* self);
int QDrag_exec2(QDrag* self, int supportedActions, int defaultAction);
void QDrag_setDragCursor(QDrag* self, QPixmap* cursor, int action);
QPixmap* QDrag_dragCursor(const QDrag* self, int action);
int QDrag_supportedActions(const QDrag* self);
int QDrag_defaultAction(const QDrag* self);
void QDrag_cancel();
void QDrag_actionChanged(QDrag* self, int action);
void QDrag_connect_actionChanged(QDrag* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t));
void QDrag_targetChanged(QDrag* self, QObject* newTarget);
void QDrag_connect_targetChanged(QDrag* self, intptr_t slot, void (*callback)(intptr_t, QObject*), void (*release)(intptr_t));
struct miqt_string QDrag_tr2(const char* s, const char* c);
struct miqt_string QDrag_tr3(const char* s, const char* c, int n);
int QDrag_exec1(QDrag* self, int supportedActions);
QMetaObject* QDrag_virtualbase_metaObject(const void* self);
void* QDrag_virtualbase_metacast(void* self, const char* param1);
int QDrag_virtualbase_metacall(void* self, int param1, int param2, void** param3);
bool QDrag_virtualbase_event(void* self, QEvent* event);
bool QDrag_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);
void QDrag_virtualbase_timerEvent(void* self, QTimerEvent* event);
void QDrag_virtualbase_childEvent(void* self, QChildEvent* event);
void QDrag_virtualbase_customEvent(void* self, QEvent* event);
void QDrag_virtualbase_connectNotify(void* self, QMetaMethod* signal);
void QDrag_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
QObject* QDrag_protectedbase_sender(bool* _dynamic_cast_ok, const void* self);
int QDrag_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self);
int QDrag_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal);
bool QDrag_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal);
const QMetaObject* QDrag_staticMetaObject();
void QDrag_delete(QDrag* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
