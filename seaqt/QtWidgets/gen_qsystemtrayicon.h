#pragma once
#ifndef SEAQT_QTWIDGETS_GEN_QSYSTEMTRAYICON_H
#define SEAQT_QTWIDGETS_GEN_QSYSTEMTRAYICON_H

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
class QIcon;
class QMenu;
class QMetaMethod;
class QMetaObject;
class QObject;
class QRect;
class QSystemTrayIcon;
class QTimerEvent;
#else
typedef struct QChildEvent QChildEvent;
typedef struct QEvent QEvent;
typedef struct QIcon QIcon;
typedef struct QMenu QMenu;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QObject QObject;
typedef struct QRect QRect;
typedef struct QSystemTrayIcon QSystemTrayIcon;
typedef struct QTimerEvent QTimerEvent;
#endif

struct QSystemTrayIcon_VTable {
	void (*destructor)(struct QSystemTrayIcon_VTable* vtbl, QSystemTrayIcon* self);
	QMetaObject* (*metaObject)(struct QSystemTrayIcon_VTable* vtbl, const QSystemTrayIcon* self);
	void* (*metacast)(struct QSystemTrayIcon_VTable* vtbl, QSystemTrayIcon* self, const char* param1);
	int (*metacall)(struct QSystemTrayIcon_VTable* vtbl, QSystemTrayIcon* self, int param1, int param2, void** param3);
	bool (*event)(struct QSystemTrayIcon_VTable* vtbl, QSystemTrayIcon* self, QEvent* event);
	bool (*eventFilter)(struct QSystemTrayIcon_VTable* vtbl, QSystemTrayIcon* self, QObject* watched, QEvent* event);
	void (*timerEvent)(struct QSystemTrayIcon_VTable* vtbl, QSystemTrayIcon* self, QTimerEvent* event);
	void (*childEvent)(struct QSystemTrayIcon_VTable* vtbl, QSystemTrayIcon* self, QChildEvent* event);
	void (*customEvent)(struct QSystemTrayIcon_VTable* vtbl, QSystemTrayIcon* self, QEvent* event);
	void (*connectNotify)(struct QSystemTrayIcon_VTable* vtbl, QSystemTrayIcon* self, QMetaMethod* signal);
	void (*disconnectNotify)(struct QSystemTrayIcon_VTable* vtbl, QSystemTrayIcon* self, QMetaMethod* signal);
};
QSystemTrayIcon* QSystemTrayIcon_new(struct QSystemTrayIcon_VTable* vtbl);
QSystemTrayIcon* QSystemTrayIcon_new2(struct QSystemTrayIcon_VTable* vtbl, QIcon* icon);
QSystemTrayIcon* QSystemTrayIcon_new3(struct QSystemTrayIcon_VTable* vtbl, QObject* parent);
QSystemTrayIcon* QSystemTrayIcon_new4(struct QSystemTrayIcon_VTable* vtbl, QIcon* icon, QObject* parent);
void QSystemTrayIcon_virtbase(QSystemTrayIcon* src, QObject** outptr_QObject);
QMetaObject* QSystemTrayIcon_metaObject(const QSystemTrayIcon* self);
void* QSystemTrayIcon_metacast(QSystemTrayIcon* self, const char* param1);
int QSystemTrayIcon_metacall(QSystemTrayIcon* self, int param1, int param2, void** param3);
struct miqt_string QSystemTrayIcon_tr(const char* s);
void QSystemTrayIcon_setContextMenu(QSystemTrayIcon* self, QMenu* menu);
QMenu* QSystemTrayIcon_contextMenu(const QSystemTrayIcon* self);
QIcon* QSystemTrayIcon_icon(const QSystemTrayIcon* self);
void QSystemTrayIcon_setIcon(QSystemTrayIcon* self, QIcon* icon);
struct miqt_string QSystemTrayIcon_toolTip(const QSystemTrayIcon* self);
void QSystemTrayIcon_setToolTip(QSystemTrayIcon* self, struct miqt_string tip);
bool QSystemTrayIcon_isSystemTrayAvailable();
bool QSystemTrayIcon_supportsMessages();
QRect* QSystemTrayIcon_geometry(const QSystemTrayIcon* self);
bool QSystemTrayIcon_isVisible(const QSystemTrayIcon* self);
void QSystemTrayIcon_setVisible(QSystemTrayIcon* self, bool visible);
void QSystemTrayIcon_show(QSystemTrayIcon* self);
void QSystemTrayIcon_hide(QSystemTrayIcon* self);
void QSystemTrayIcon_showMessage(QSystemTrayIcon* self, struct miqt_string title, struct miqt_string msg, QIcon* icon);
void QSystemTrayIcon_showMessage2(QSystemTrayIcon* self, struct miqt_string title, struct miqt_string msg);
void QSystemTrayIcon_activated(QSystemTrayIcon* self, int reason);
void QSystemTrayIcon_connect_activated(QSystemTrayIcon* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t));
void QSystemTrayIcon_messageClicked(QSystemTrayIcon* self);
void QSystemTrayIcon_connect_messageClicked(QSystemTrayIcon* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
bool QSystemTrayIcon_event(QSystemTrayIcon* self, QEvent* event);
struct miqt_string QSystemTrayIcon_tr2(const char* s, const char* c);
struct miqt_string QSystemTrayIcon_tr3(const char* s, const char* c, int n);
void QSystemTrayIcon_showMessage4(QSystemTrayIcon* self, struct miqt_string title, struct miqt_string msg, QIcon* icon, int msecs);
void QSystemTrayIcon_showMessage3(QSystemTrayIcon* self, struct miqt_string title, struct miqt_string msg, int icon);
void QSystemTrayIcon_showMessage42(QSystemTrayIcon* self, struct miqt_string title, struct miqt_string msg, int icon, int msecs);
QMetaObject* QSystemTrayIcon_virtualbase_metaObject(const void* self);
void* QSystemTrayIcon_virtualbase_metacast(void* self, const char* param1);
int QSystemTrayIcon_virtualbase_metacall(void* self, int param1, int param2, void** param3);
bool QSystemTrayIcon_virtualbase_event(void* self, QEvent* event);
bool QSystemTrayIcon_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);
void QSystemTrayIcon_virtualbase_timerEvent(void* self, QTimerEvent* event);
void QSystemTrayIcon_virtualbase_childEvent(void* self, QChildEvent* event);
void QSystemTrayIcon_virtualbase_customEvent(void* self, QEvent* event);
void QSystemTrayIcon_virtualbase_connectNotify(void* self, QMetaMethod* signal);
void QSystemTrayIcon_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
QObject* QSystemTrayIcon_protectedbase_sender(const void* self);
int QSystemTrayIcon_protectedbase_senderSignalIndex(const void* self);
int QSystemTrayIcon_protectedbase_receivers(const void* self, const char* signal);
bool QSystemTrayIcon_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal);
const QMetaObject* QSystemTrayIcon_staticMetaObject();
void QSystemTrayIcon_delete(QSystemTrayIcon* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
