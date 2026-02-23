#pragma once
#ifndef SEAQT_QTWIDGETS_GEN_QACTION_H
#define SEAQT_QTWIDGETS_GEN_QACTION_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt-runtime.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QAction;
class QActionGroup;
class QChildEvent;
class QEvent;
class QFont;
class QGraphicsWidget;
class QIcon;
class QKeySequence;
class QMenu;
class QMetaMethod;
class QMetaObject;
class QObject;
class QTimerEvent;
class QVariant;
class QWidget;
#else
typedef struct QAction QAction;
typedef struct QActionGroup QActionGroup;
typedef struct QChildEvent QChildEvent;
typedef struct QEvent QEvent;
typedef struct QFont QFont;
typedef struct QGraphicsWidget QGraphicsWidget;
typedef struct QIcon QIcon;
typedef struct QKeySequence QKeySequence;
typedef struct QMenu QMenu;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QObject QObject;
typedef struct QTimerEvent QTimerEvent;
typedef struct QVariant QVariant;
typedef struct QWidget QWidget;
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

void* QAction_vdata(VirtualQAction* self);
VirtualQAction* vdata_QAction(void* vdata);

VirtualQAction* QAction_new(const QAction_VTable* vtbl, size_t vdata);
VirtualQAction* QAction_new_text(const QAction_VTable* vtbl, size_t vdata, struct seaqt_string text);
VirtualQAction* QAction_new_icon_text(const QAction_VTable* vtbl, size_t vdata, QIcon* icon, struct seaqt_string text);
VirtualQAction* QAction_new_parent(const QAction_VTable* vtbl, size_t vdata, QObject* parent);
VirtualQAction* QAction_new_text_parent(const QAction_VTable* vtbl, size_t vdata, struct seaqt_string text, QObject* parent);
VirtualQAction* QAction_new_icon_text_parent(const QAction_VTable* vtbl, size_t vdata, QIcon* icon, struct seaqt_string text, QObject* parent);

void QAction_virtbase(QAction* src, QObject** outptr_QObject);
QMetaObject* QAction_metaObject(const QAction* self);
void* QAction_metacast(QAction* self, const char* param1);
int QAction_metacall(QAction* self, int param1, int param2, void** param3);
struct seaqt_string QAction_tr_s(const char* s);
struct seaqt_string QAction_trUtf8_s(const char* s);
void QAction_setActionGroup(QAction* self, QActionGroup* group);
QActionGroup* QAction_actionGroup(const QAction* self);
void QAction_setIcon(QAction* self, QIcon* icon);
QIcon* QAction_icon(const QAction* self);
void QAction_setText(QAction* self, struct seaqt_string text);
struct seaqt_string QAction_text(const QAction* self);
void QAction_setIconText(QAction* self, struct seaqt_string text);
struct seaqt_string QAction_iconText(const QAction* self);
void QAction_setToolTip(QAction* self, struct seaqt_string tip);
struct seaqt_string QAction_toolTip(const QAction* self);
void QAction_setStatusTip(QAction* self, struct seaqt_string statusTip);
struct seaqt_string QAction_statusTip(const QAction* self);
void QAction_setWhatsThis(QAction* self, struct seaqt_string what);
struct seaqt_string QAction_whatsThis(const QAction* self);
void QAction_setPriority(QAction* self, int priority);
int QAction_priority(const QAction* self);
QMenu* QAction_menu(const QAction* self);
void QAction_setMenu(QAction* self, QMenu* menu);
void QAction_setSeparator(QAction* self, bool b);
bool QAction_isSeparator(const QAction* self);
void QAction_setShortcut(QAction* self, QKeySequence* shortcut);
QKeySequence* QAction_shortcut(const QAction* self);
void QAction_setShortcuts_QListOfQKeySequence(QAction* self, struct seaqt_array /* of QKeySequence* */  shortcuts);
void QAction_setShortcuts_QKeySequence_StandardKey(QAction* self, int shortcuts);
struct seaqt_array /* of QKeySequence* */  QAction_shortcuts(const QAction* self);
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
bool QAction_showStatusText(QAction* self);
void QAction_setMenuRole(QAction* self, int menuRole);
int QAction_menuRole(const QAction* self);
void QAction_setIconVisibleInMenu(QAction* self, bool visible);
bool QAction_isIconVisibleInMenu(const QAction* self);
void QAction_setShortcutVisibleInContextMenu(QAction* self, bool show);
bool QAction_isShortcutVisibleInContextMenu(const QAction* self);
QWidget* QAction_parentWidget(const QAction* self);
struct seaqt_array /* of QWidget* */  QAction_associatedWidgets(const QAction* self);
struct seaqt_array /* of QGraphicsWidget* */  QAction_associatedGraphicsWidgets(const QAction* self);
bool QAction_event(QAction* self, QEvent* param1);
void QAction_trigger(QAction* self);
void QAction_hover(QAction* self);
void QAction_setChecked(QAction* self, bool checked);
void QAction_toggle(QAction* self);
void QAction_setEnabled(QAction* self, bool enabled);
void QAction_setDisabled(QAction* self, bool b);
void QAction_setVisible(QAction* self, bool visible);
void QAction_changed(QAction* self);
void QAction_connect_changed(QAction* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QAction_triggered(QAction* self);
void QAction_connect_triggered(QAction* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QAction_hovered(QAction* self);
void QAction_connect_hovered(QAction* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QAction_toggled(QAction* self, bool param1);
void QAction_connect_toggled(QAction* self, intptr_t slot, void (*callback)(intptr_t, bool), void (*release)(intptr_t));
struct seaqt_string QAction_tr_s_c(const char* s, const char* c);
struct seaqt_string QAction_tr_s_c_n(const char* s, const char* c, int n);
struct seaqt_string QAction_trUtf8_s_c(const char* s, const char* c);
struct seaqt_string QAction_trUtf8_s_c_n(const char* s, const char* c, int n);
bool QAction_showStatusText_widget(QAction* self, QWidget* widget);
void QAction_triggered_checked(QAction* self, bool checked);
void QAction_connect_triggered_checked(QAction* self, intptr_t slot, void (*callback)(intptr_t, bool), void (*release)(intptr_t));

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

void QAction_delete(QAction* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
