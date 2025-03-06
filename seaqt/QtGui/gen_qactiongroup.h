#pragma once
#ifndef SEAQT_QTGUI_GEN_QACTIONGROUP_H
#define SEAQT_QTGUI_GEN_QACTIONGROUP_H

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
class QActionGroup;
class QChildEvent;
class QEvent;
class QIcon;
class QMetaMethod;
class QMetaObject;
class QObject;
class QTimerEvent;
#else
typedef struct QAction QAction;
typedef struct QActionGroup QActionGroup;
typedef struct QChildEvent QChildEvent;
typedef struct QEvent QEvent;
typedef struct QIcon QIcon;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QObject QObject;
typedef struct QTimerEvent QTimerEvent;
#endif

struct QActionGroup_VTable {
	void (*destructor)(struct QActionGroup_VTable* vtbl, QActionGroup* self);
	QMetaObject* (*metaObject)(struct QActionGroup_VTable* vtbl, const QActionGroup* self);
	void* (*metacast)(struct QActionGroup_VTable* vtbl, QActionGroup* self, const char* param1);
	int (*metacall)(struct QActionGroup_VTable* vtbl, QActionGroup* self, int param1, int param2, void** param3);
	bool (*event)(struct QActionGroup_VTable* vtbl, QActionGroup* self, QEvent* event);
	bool (*eventFilter)(struct QActionGroup_VTable* vtbl, QActionGroup* self, QObject* watched, QEvent* event);
	void (*timerEvent)(struct QActionGroup_VTable* vtbl, QActionGroup* self, QTimerEvent* event);
	void (*childEvent)(struct QActionGroup_VTable* vtbl, QActionGroup* self, QChildEvent* event);
	void (*customEvent)(struct QActionGroup_VTable* vtbl, QActionGroup* self, QEvent* event);
	void (*connectNotify)(struct QActionGroup_VTable* vtbl, QActionGroup* self, QMetaMethod* signal);
	void (*disconnectNotify)(struct QActionGroup_VTable* vtbl, QActionGroup* self, QMetaMethod* signal);
};
QActionGroup* QActionGroup_new(struct QActionGroup_VTable* vtbl, QObject* parent);
void QActionGroup_virtbase(QActionGroup* src, QObject** outptr_QObject);
QMetaObject* QActionGroup_metaObject(const QActionGroup* self);
void* QActionGroup_metacast(QActionGroup* self, const char* param1);
int QActionGroup_metacall(QActionGroup* self, int param1, int param2, void** param3);
struct miqt_string QActionGroup_tr(const char* s);
QAction* QActionGroup_addAction(QActionGroup* self, QAction* a);
QAction* QActionGroup_addActionWithText(QActionGroup* self, struct miqt_string text);
QAction* QActionGroup_addAction2(QActionGroup* self, QIcon* icon, struct miqt_string text);
void QActionGroup_removeAction(QActionGroup* self, QAction* a);
struct miqt_array /* of QAction* */  QActionGroup_actions(const QActionGroup* self);
QAction* QActionGroup_checkedAction(const QActionGroup* self);
bool QActionGroup_isExclusive(const QActionGroup* self);
bool QActionGroup_isEnabled(const QActionGroup* self);
bool QActionGroup_isVisible(const QActionGroup* self);
int QActionGroup_exclusionPolicy(const QActionGroup* self);
void QActionGroup_setEnabled(QActionGroup* self, bool enabled);
void QActionGroup_setDisabled(QActionGroup* self, bool b);
void QActionGroup_setVisible(QActionGroup* self, bool visible);
void QActionGroup_setExclusive(QActionGroup* self, bool exclusive);
void QActionGroup_setExclusionPolicy(QActionGroup* self, int policy);
void QActionGroup_triggered(QActionGroup* self, QAction* param1);
void QActionGroup_connect_triggered(QActionGroup* self, intptr_t slot, void (*callback)(intptr_t, QAction*), void (*release)(intptr_t));
void QActionGroup_hovered(QActionGroup* self, QAction* param1);
void QActionGroup_connect_hovered(QActionGroup* self, intptr_t slot, void (*callback)(intptr_t, QAction*), void (*release)(intptr_t));
struct miqt_string QActionGroup_tr2(const char* s, const char* c);
struct miqt_string QActionGroup_tr3(const char* s, const char* c, int n);
QMetaObject* QActionGroup_virtualbase_metaObject(const void* self);
void* QActionGroup_virtualbase_metacast(void* self, const char* param1);
int QActionGroup_virtualbase_metacall(void* self, int param1, int param2, void** param3);
bool QActionGroup_virtualbase_event(void* self, QEvent* event);
bool QActionGroup_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);
void QActionGroup_virtualbase_timerEvent(void* self, QTimerEvent* event);
void QActionGroup_virtualbase_childEvent(void* self, QChildEvent* event);
void QActionGroup_virtualbase_customEvent(void* self, QEvent* event);
void QActionGroup_virtualbase_connectNotify(void* self, QMetaMethod* signal);
void QActionGroup_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
QObject* QActionGroup_protectedbase_sender(const void* self);
int QActionGroup_protectedbase_senderSignalIndex(const void* self);
int QActionGroup_protectedbase_receivers(const void* self, const char* signal);
bool QActionGroup_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal);
const QMetaObject* QActionGroup_staticMetaObject();
void QActionGroup_delete(QActionGroup* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
