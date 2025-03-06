#pragma once
#ifndef SEAQT_QTWIDGETS_GEN_QWIDGETACTION_H
#define SEAQT_QTWIDGETS_GEN_QWIDGETACTION_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt/libseaqt.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QAction;
class QChildEvent;
class QEvent;
class QMetaMethod;
class QMetaObject;
class QObject;
class QTimerEvent;
class QWidget;
class QWidgetAction;
#else
typedef struct QAction QAction;
typedef struct QChildEvent QChildEvent;
typedef struct QEvent QEvent;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QObject QObject;
typedef struct QTimerEvent QTimerEvent;
typedef struct QWidget QWidget;
typedef struct QWidgetAction QWidgetAction;
#endif

struct QWidgetAction_VTable {
	void (*destructor)(struct QWidgetAction_VTable* vtbl, QWidgetAction* self);
	QMetaObject* (*metaObject)(struct QWidgetAction_VTable* vtbl, const QWidgetAction* self);
	void* (*metacast)(struct QWidgetAction_VTable* vtbl, QWidgetAction* self, const char* param1);
	int (*metacall)(struct QWidgetAction_VTable* vtbl, QWidgetAction* self, int param1, int param2, void** param3);
	bool (*event)(struct QWidgetAction_VTable* vtbl, QWidgetAction* self, QEvent* param1);
	bool (*eventFilter)(struct QWidgetAction_VTable* vtbl, QWidgetAction* self, QObject* param1, QEvent* param2);
	QWidget* (*createWidget)(struct QWidgetAction_VTable* vtbl, QWidgetAction* self, QWidget* parent);
	void (*deleteWidget)(struct QWidgetAction_VTable* vtbl, QWidgetAction* self, QWidget* widget);
	void (*timerEvent)(struct QWidgetAction_VTable* vtbl, QWidgetAction* self, QTimerEvent* event);
	void (*childEvent)(struct QWidgetAction_VTable* vtbl, QWidgetAction* self, QChildEvent* event);
	void (*customEvent)(struct QWidgetAction_VTable* vtbl, QWidgetAction* self, QEvent* event);
	void (*connectNotify)(struct QWidgetAction_VTable* vtbl, QWidgetAction* self, QMetaMethod* signal);
	void (*disconnectNotify)(struct QWidgetAction_VTable* vtbl, QWidgetAction* self, QMetaMethod* signal);
};
QWidgetAction* QWidgetAction_new(struct QWidgetAction_VTable* vtbl, QObject* parent);
void QWidgetAction_virtbase(QWidgetAction* src, QAction** outptr_QAction);
QMetaObject* QWidgetAction_metaObject(const QWidgetAction* self);
void* QWidgetAction_metacast(QWidgetAction* self, const char* param1);
int QWidgetAction_metacall(QWidgetAction* self, int param1, int param2, void** param3);
struct miqt_string QWidgetAction_tr(const char* s);
struct miqt_string QWidgetAction_trUtf8(const char* s);
void QWidgetAction_setDefaultWidget(QWidgetAction* self, QWidget* w);
QWidget* QWidgetAction_defaultWidget(const QWidgetAction* self);
QWidget* QWidgetAction_requestWidget(QWidgetAction* self, QWidget* parent);
void QWidgetAction_releaseWidget(QWidgetAction* self, QWidget* widget);
bool QWidgetAction_event(QWidgetAction* self, QEvent* param1);
bool QWidgetAction_eventFilter(QWidgetAction* self, QObject* param1, QEvent* param2);
QWidget* QWidgetAction_createWidget(QWidgetAction* self, QWidget* parent);
void QWidgetAction_deleteWidget(QWidgetAction* self, QWidget* widget);
struct miqt_string QWidgetAction_tr2(const char* s, const char* c);
struct miqt_string QWidgetAction_tr3(const char* s, const char* c, int n);
struct miqt_string QWidgetAction_trUtf82(const char* s, const char* c);
struct miqt_string QWidgetAction_trUtf83(const char* s, const char* c, int n);
QMetaObject* QWidgetAction_virtualbase_metaObject(const void* self);
void* QWidgetAction_virtualbase_metacast(void* self, const char* param1);
int QWidgetAction_virtualbase_metacall(void* self, int param1, int param2, void** param3);
bool QWidgetAction_virtualbase_event(void* self, QEvent* param1);
bool QWidgetAction_virtualbase_eventFilter(void* self, QObject* param1, QEvent* param2);
QWidget* QWidgetAction_virtualbase_createWidget(void* self, QWidget* parent);
void QWidgetAction_virtualbase_deleteWidget(void* self, QWidget* widget);
void QWidgetAction_virtualbase_timerEvent(void* self, QTimerEvent* event);
void QWidgetAction_virtualbase_childEvent(void* self, QChildEvent* event);
void QWidgetAction_virtualbase_customEvent(void* self, QEvent* event);
void QWidgetAction_virtualbase_connectNotify(void* self, QMetaMethod* signal);
void QWidgetAction_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
struct miqt_array /* of QWidget* */  QWidgetAction_protectedbase_createdWidgets(const void* self);
QObject* QWidgetAction_protectedbase_sender(const void* self);
int QWidgetAction_protectedbase_senderSignalIndex(const void* self);
int QWidgetAction_protectedbase_receivers(const void* self, const char* signal);
bool QWidgetAction_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal);
const QMetaObject* QWidgetAction_staticMetaObject();
void QWidgetAction_delete(QWidgetAction* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
