#pragma once
#ifndef SEAQT_QTGUI_GEN_QACTION_H
#define SEAQT_QTGUI_GEN_QACTION_H

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
class QFont;
class QIcon;
class QKeySequence;
class QMetaMethod;
class QMetaObject;
class QObject;
class QTimerEvent;
class QVariant;
#else
typedef struct QAction QAction;
typedef struct QActionGroup QActionGroup;
typedef struct QChildEvent QChildEvent;
typedef struct QEvent QEvent;
typedef struct QFont QFont;
typedef struct QIcon QIcon;
typedef struct QKeySequence QKeySequence;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QObject QObject;
typedef struct QTimerEvent QTimerEvent;
typedef struct QVariant QVariant;
#endif

typedef struct VirtualQAction VirtualQAction;
typedef struct QAction_VTable{
	void (*destructor)(VirtualQAction* self);
	QMetaObject* (*metaObject)(const VirtualQAction* self);
	void* (*metacast)(VirtualQAction* self, const char* param1);
	int (*metacall)(VirtualQAction* self, int param1, int param2, void** param3);
	bool (*event)(VirtualQAction* self, QEvent* param1);
	bool (*eventFilter)(VirtualQAction* self, QObject* watched, QEvent* event);
	void (*timerEvent)(VirtualQAction* self, QTimerEvent* event);
	void (*childEvent)(VirtualQAction* self, QChildEvent* event);
	void (*customEvent)(VirtualQAction* self, QEvent* event);
	void (*connectNotify)(VirtualQAction* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQAction* self, QMetaMethod* signal);
}QAction_VTable;

const QAction_VTable* QAction_vtbl(const VirtualQAction* self);
void* QAction_vdata(const VirtualQAction* self);
void QAction_setVdata(VirtualQAction* self, void* vdata);

VirtualQAction* QAction_new(const QAction_VTable* vtbl, void* vdata);
VirtualQAction* QAction_new2(const QAction_VTable* vtbl, void* vdata, struct miqt_string text);
VirtualQAction* QAction_new3(const QAction_VTable* vtbl, void* vdata, QIcon* icon, struct miqt_string text);
VirtualQAction* QAction_new4(const QAction_VTable* vtbl, void* vdata, QObject* parent);
VirtualQAction* QAction_new5(const QAction_VTable* vtbl, void* vdata, struct miqt_string text, QObject* parent);
VirtualQAction* QAction_new6(const QAction_VTable* vtbl, void* vdata, QIcon* icon, struct miqt_string text, QObject* parent);

void QAction_virtbase(QAction* src, QObject** outptr_QObject);
QMetaObject* QAction_metaObject(const QAction* self);
void* QAction_metacast(QAction* self, const char* param1);
int QAction_metacall(QAction* self, int param1, int param2, void** param3);
struct miqt_string QAction_tr(const char* s);
struct miqt_array /* of QObject* */  QAction_associatedObjects(const QAction* self);
void QAction_setActionGroup(QAction* self, QActionGroup* group);
QActionGroup* QAction_actionGroup(const QAction* self);
void QAction_setIcon(QAction* self, QIcon* icon);
QIcon* QAction_icon(const QAction* self);
void QAction_setText(QAction* self, struct miqt_string text);
struct miqt_string QAction_text(const QAction* self);
void QAction_setIconText(QAction* self, struct miqt_string text);
struct miqt_string QAction_iconText(const QAction* self);
void QAction_setToolTip(QAction* self, struct miqt_string tip);
struct miqt_string QAction_toolTip(const QAction* self);
void QAction_setStatusTip(QAction* self, struct miqt_string statusTip);
struct miqt_string QAction_statusTip(const QAction* self);
void QAction_setWhatsThis(QAction* self, struct miqt_string what);
struct miqt_string QAction_whatsThis(const QAction* self);
void QAction_setPriority(QAction* self, int priority);
int QAction_priority(const QAction* self);
void QAction_setSeparator(QAction* self, bool b);
bool QAction_isSeparator(const QAction* self);
void QAction_setShortcut(QAction* self, QKeySequence* shortcut);
QKeySequence* QAction_shortcut(const QAction* self);
void QAction_setShortcuts(QAction* self, struct miqt_array /* of QKeySequence* */  shortcuts);
void QAction_setShortcutsWithShortcuts(QAction* self, int shortcuts);
struct miqt_array /* of QKeySequence* */  QAction_shortcuts(const QAction* self);
void QAction_setShortcutContext(QAction* self, int context);
int QAction_shortcutContext(const QAction* self);
void QAction_setAutoRepeat(QAction* self, bool autoRepeat);
bool QAction_autoRepeat(const QAction* self);
void QAction_setFont(QAction* self, QFont* font);
QFont* QAction_font(const QAction* self);
void QAction_setCheckable(QAction* self, bool checkable);
bool QAction_isCheckable(const QAction* self);
QVariant* QAction_data(const QAction* self);
void QAction_setData(QAction* self, QVariant* var);
bool QAction_isChecked(const QAction* self);
bool QAction_isEnabled(const QAction* self);
bool QAction_isVisible(const QAction* self);
void QAction_activate(QAction* self, int event);
void QAction_setMenuRole(QAction* self, int menuRole);
int QAction_menuRole(const QAction* self);
void QAction_setIconVisibleInMenu(QAction* self, bool visible);
bool QAction_isIconVisibleInMenu(const QAction* self);
void QAction_setShortcutVisibleInContextMenu(QAction* self, bool show);
bool QAction_isShortcutVisibleInContextMenu(const QAction* self);
bool QAction_showStatusText(QAction* self);
bool QAction_event(QAction* self, QEvent* param1);
void QAction_trigger(QAction* self);
void QAction_hover(QAction* self);
void QAction_setChecked(QAction* self, bool checked);
void QAction_toggle(QAction* self);
void QAction_setEnabled(QAction* self, bool enabled);
void QAction_resetEnabled(QAction* self);
void QAction_setDisabled(QAction* self, bool b);
void QAction_setVisible(QAction* self, bool visible);
void QAction_changed(QAction* self);
void QAction_connect_changed(VirtualQAction* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QAction_enabledChanged(QAction* self, bool enabled);
void QAction_connect_enabledChanged(VirtualQAction* self, intptr_t slot, void (*callback)(intptr_t, bool), void (*release)(intptr_t));
void QAction_checkableChanged(QAction* self, bool checkable);
void QAction_connect_checkableChanged(VirtualQAction* self, intptr_t slot, void (*callback)(intptr_t, bool), void (*release)(intptr_t));
void QAction_visibleChanged(QAction* self);
void QAction_connect_visibleChanged(VirtualQAction* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QAction_triggered(QAction* self);
void QAction_connect_triggered(VirtualQAction* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QAction_hovered(QAction* self);
void QAction_connect_hovered(VirtualQAction* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QAction_toggled(QAction* self, bool param1);
void QAction_connect_toggled(VirtualQAction* self, intptr_t slot, void (*callback)(intptr_t, bool), void (*release)(intptr_t));
struct miqt_string QAction_tr2(const char* s, const char* c);
struct miqt_string QAction_tr3(const char* s, const char* c, int n);
bool QAction_showStatusText1(QAction* self, QObject* object);
void QAction_triggered1(QAction* self, bool checked);
void QAction_connect_triggered1(VirtualQAction* self, intptr_t slot, void (*callback)(intptr_t, bool), void (*release)(intptr_t));

QMetaObject* QAction_virtualbase_metaObject(const VirtualQAction* self);
void* QAction_virtualbase_metacast(VirtualQAction* self, const char* param1);
int QAction_virtualbase_metacall(VirtualQAction* self, int param1, int param2, void** param3);
bool QAction_virtualbase_event(VirtualQAction* self, QEvent* param1);
bool QAction_virtualbase_eventFilter(VirtualQAction* self, QObject* watched, QEvent* event);
void QAction_virtualbase_timerEvent(VirtualQAction* self, QTimerEvent* event);
void QAction_virtualbase_childEvent(VirtualQAction* self, QChildEvent* event);
void QAction_virtualbase_customEvent(VirtualQAction* self, QEvent* event);
void QAction_virtualbase_connectNotify(VirtualQAction* self, QMetaMethod* signal);
void QAction_virtualbase_disconnectNotify(VirtualQAction* self, QMetaMethod* signal);

QObject* QAction_protectedbase_sender(const VirtualQAction* self);
int QAction_protectedbase_senderSignalIndex(const VirtualQAction* self);
int QAction_protectedbase_receivers(const VirtualQAction* self, const char* signal);
bool QAction_protectedbase_isSignalConnected(const VirtualQAction* self, QMetaMethod* signal);

const QMetaObject* QAction_staticMetaObject();
void QAction_delete(QAction* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
