#pragma once
#ifndef SEAQT_QTWIDGETS_GEN_QABSTRACTBUTTON_H
#define SEAQT_QTWIDGETS_GEN_QABSTRACTBUTTON_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt/libseaqt.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QAbstractButton;
class QActionEvent;
class QButtonGroup;
class QChildEvent;
class QCloseEvent;
class QContextMenuEvent;
class QDragEnterEvent;
class QDragLeaveEvent;
class QDragMoveEvent;
class QDropEvent;
class QEnterEvent;
class QEvent;
class QFocusEvent;
class QHideEvent;
class QIcon;
class QInputMethodEvent;
class QKeyEvent;
class QKeySequence;
class QMetaMethod;
class QMetaObject;
class QMouseEvent;
class QMoveEvent;
class QObject;
class QPaintDevice;
class QPaintEngine;
class QPaintEvent;
class QPainter;
class QPoint;
class QResizeEvent;
class QShowEvent;
class QSize;
class QTabletEvent;
class QTimerEvent;
class QVariant;
class QWheelEvent;
class QWidget;
#else
typedef struct QAbstractButton QAbstractButton;
typedef struct QActionEvent QActionEvent;
typedef struct QButtonGroup QButtonGroup;
typedef struct QChildEvent QChildEvent;
typedef struct QCloseEvent QCloseEvent;
typedef struct QContextMenuEvent QContextMenuEvent;
typedef struct QDragEnterEvent QDragEnterEvent;
typedef struct QDragLeaveEvent QDragLeaveEvent;
typedef struct QDragMoveEvent QDragMoveEvent;
typedef struct QDropEvent QDropEvent;
typedef struct QEnterEvent QEnterEvent;
typedef struct QEvent QEvent;
typedef struct QFocusEvent QFocusEvent;
typedef struct QHideEvent QHideEvent;
typedef struct QIcon QIcon;
typedef struct QInputMethodEvent QInputMethodEvent;
typedef struct QKeyEvent QKeyEvent;
typedef struct QKeySequence QKeySequence;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QMouseEvent QMouseEvent;
typedef struct QMoveEvent QMoveEvent;
typedef struct QObject QObject;
typedef struct QPaintDevice QPaintDevice;
typedef struct QPaintEngine QPaintEngine;
typedef struct QPaintEvent QPaintEvent;
typedef struct QPainter QPainter;
typedef struct QPoint QPoint;
typedef struct QResizeEvent QResizeEvent;
typedef struct QShowEvent QShowEvent;
typedef struct QSize QSize;
typedef struct QTabletEvent QTabletEvent;
typedef struct QTimerEvent QTimerEvent;
typedef struct QVariant QVariant;
typedef struct QWheelEvent QWheelEvent;
typedef struct QWidget QWidget;
#endif

typedef struct VirtualQAbstractButton VirtualQAbstractButton;
typedef struct QAbstractButton_VTable{
	void (*destructor)(VirtualQAbstractButton* self);
	QMetaObject* (*metaObject)(const VirtualQAbstractButton* self);
	void* (*metacast)(VirtualQAbstractButton* self, const char* param1);
	int (*metacall)(VirtualQAbstractButton* self, int param1, int param2, void** param3);
	void (*paintEvent)(VirtualQAbstractButton* self, QPaintEvent* e);
	bool (*hitButton)(const VirtualQAbstractButton* self, QPoint* pos);
	void (*checkStateSet)(VirtualQAbstractButton* self);
	void (*nextCheckState)(VirtualQAbstractButton* self);
	bool (*event)(VirtualQAbstractButton* self, QEvent* e);
	void (*keyPressEvent)(VirtualQAbstractButton* self, QKeyEvent* e);
	void (*keyReleaseEvent)(VirtualQAbstractButton* self, QKeyEvent* e);
	void (*mousePressEvent)(VirtualQAbstractButton* self, QMouseEvent* e);
	void (*mouseReleaseEvent)(VirtualQAbstractButton* self, QMouseEvent* e);
	void (*mouseMoveEvent)(VirtualQAbstractButton* self, QMouseEvent* e);
	void (*focusInEvent)(VirtualQAbstractButton* self, QFocusEvent* e);
	void (*focusOutEvent)(VirtualQAbstractButton* self, QFocusEvent* e);
	void (*changeEvent)(VirtualQAbstractButton* self, QEvent* e);
	void (*timerEvent)(VirtualQAbstractButton* self, QTimerEvent* e);
	int (*devType)(const VirtualQAbstractButton* self);
	void (*setVisible)(VirtualQAbstractButton* self, bool visible);
	QSize* (*sizeHint)(const VirtualQAbstractButton* self);
	QSize* (*minimumSizeHint)(const VirtualQAbstractButton* self);
	int (*heightForWidth)(const VirtualQAbstractButton* self, int param1);
	bool (*hasHeightForWidth)(const VirtualQAbstractButton* self);
	QPaintEngine* (*paintEngine)(const VirtualQAbstractButton* self);
	void (*mouseDoubleClickEvent)(VirtualQAbstractButton* self, QMouseEvent* event);
	void (*wheelEvent)(VirtualQAbstractButton* self, QWheelEvent* event);
	void (*enterEvent)(VirtualQAbstractButton* self, QEnterEvent* event);
	void (*leaveEvent)(VirtualQAbstractButton* self, QEvent* event);
	void (*moveEvent)(VirtualQAbstractButton* self, QMoveEvent* event);
	void (*resizeEvent)(VirtualQAbstractButton* self, QResizeEvent* event);
	void (*closeEvent)(VirtualQAbstractButton* self, QCloseEvent* event);
	void (*contextMenuEvent)(VirtualQAbstractButton* self, QContextMenuEvent* event);
	void (*tabletEvent)(VirtualQAbstractButton* self, QTabletEvent* event);
	void (*actionEvent)(VirtualQAbstractButton* self, QActionEvent* event);
	void (*dragEnterEvent)(VirtualQAbstractButton* self, QDragEnterEvent* event);
	void (*dragMoveEvent)(VirtualQAbstractButton* self, QDragMoveEvent* event);
	void (*dragLeaveEvent)(VirtualQAbstractButton* self, QDragLeaveEvent* event);
	void (*dropEvent)(VirtualQAbstractButton* self, QDropEvent* event);
	void (*showEvent)(VirtualQAbstractButton* self, QShowEvent* event);
	void (*hideEvent)(VirtualQAbstractButton* self, QHideEvent* event);
	bool (*nativeEvent)(VirtualQAbstractButton* self, struct miqt_string eventType, void* message, intptr_t* result);
	int (*metric)(const VirtualQAbstractButton* self, int param1);
	void (*initPainter)(const VirtualQAbstractButton* self, QPainter* painter);
	QPaintDevice* (*redirected)(const VirtualQAbstractButton* self, QPoint* offset);
	QPainter* (*sharedPainter)(const VirtualQAbstractButton* self);
	void (*inputMethodEvent)(VirtualQAbstractButton* self, QInputMethodEvent* param1);
	QVariant* (*inputMethodQuery)(const VirtualQAbstractButton* self, int param1);
	bool (*focusNextPrevChild)(VirtualQAbstractButton* self, bool next);
	bool (*eventFilter)(VirtualQAbstractButton* self, QObject* watched, QEvent* event);
	void (*childEvent)(VirtualQAbstractButton* self, QChildEvent* event);
	void (*customEvent)(VirtualQAbstractButton* self, QEvent* event);
	void (*connectNotify)(VirtualQAbstractButton* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQAbstractButton* self, QMetaMethod* signal);
}QAbstractButton_VTable;

const QAbstractButton_VTable* QAbstractButton_vtbl(const VirtualQAbstractButton* self);
void* QAbstractButton_vdata(const VirtualQAbstractButton* self);
void QAbstractButton_setVdata(VirtualQAbstractButton* self, void* vdata);

VirtualQAbstractButton* QAbstractButton_new(const QAbstractButton_VTable* vtbl, void* vdata, QWidget* parent);
VirtualQAbstractButton* QAbstractButton_new2(const QAbstractButton_VTable* vtbl, void* vdata);

void QAbstractButton_virtbase(QAbstractButton* src, QWidget** outptr_QWidget);
QMetaObject* QAbstractButton_metaObject(const QAbstractButton* self);
void* QAbstractButton_metacast(QAbstractButton* self, const char* param1);
int QAbstractButton_metacall(QAbstractButton* self, int param1, int param2, void** param3);
struct miqt_string QAbstractButton_tr(const char* s);
void QAbstractButton_setText(QAbstractButton* self, struct miqt_string text);
struct miqt_string QAbstractButton_text(const QAbstractButton* self);
void QAbstractButton_setIcon(QAbstractButton* self, QIcon* icon);
QIcon* QAbstractButton_icon(const QAbstractButton* self);
QSize* QAbstractButton_iconSize(const QAbstractButton* self);
void QAbstractButton_setShortcut(QAbstractButton* self, QKeySequence* key);
QKeySequence* QAbstractButton_shortcut(const QAbstractButton* self);
void QAbstractButton_setCheckable(QAbstractButton* self, bool checkable);
bool QAbstractButton_isCheckable(const QAbstractButton* self);
bool QAbstractButton_isChecked(const QAbstractButton* self);
void QAbstractButton_setDown(QAbstractButton* self, bool down);
bool QAbstractButton_isDown(const QAbstractButton* self);
void QAbstractButton_setAutoRepeat(QAbstractButton* self, bool autoRepeat);
bool QAbstractButton_autoRepeat(const QAbstractButton* self);
void QAbstractButton_setAutoRepeatDelay(QAbstractButton* self, int autoRepeatDelay);
int QAbstractButton_autoRepeatDelay(const QAbstractButton* self);
void QAbstractButton_setAutoRepeatInterval(QAbstractButton* self, int autoRepeatInterval);
int QAbstractButton_autoRepeatInterval(const QAbstractButton* self);
void QAbstractButton_setAutoExclusive(QAbstractButton* self, bool autoExclusive);
bool QAbstractButton_autoExclusive(const QAbstractButton* self);
QButtonGroup* QAbstractButton_group(const QAbstractButton* self);
void QAbstractButton_setIconSize(QAbstractButton* self, QSize* size);
void QAbstractButton_animateClick(QAbstractButton* self);
void QAbstractButton_click(QAbstractButton* self);
void QAbstractButton_toggle(QAbstractButton* self);
void QAbstractButton_setChecked(QAbstractButton* self, bool checked);
void QAbstractButton_pressed(QAbstractButton* self);
void QAbstractButton_connect_pressed(VirtualQAbstractButton* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QAbstractButton_released(QAbstractButton* self);
void QAbstractButton_connect_released(VirtualQAbstractButton* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QAbstractButton_clicked(QAbstractButton* self);
void QAbstractButton_connect_clicked(VirtualQAbstractButton* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QAbstractButton_toggled(QAbstractButton* self, bool checked);
void QAbstractButton_connect_toggled(VirtualQAbstractButton* self, intptr_t slot, void (*callback)(intptr_t, bool), void (*release)(intptr_t));
void QAbstractButton_paintEvent(QAbstractButton* self, QPaintEvent* e);
bool QAbstractButton_hitButton(const QAbstractButton* self, QPoint* pos);
void QAbstractButton_checkStateSet(QAbstractButton* self);
void QAbstractButton_nextCheckState(QAbstractButton* self);
bool QAbstractButton_event(QAbstractButton* self, QEvent* e);
void QAbstractButton_keyPressEvent(QAbstractButton* self, QKeyEvent* e);
void QAbstractButton_keyReleaseEvent(QAbstractButton* self, QKeyEvent* e);
void QAbstractButton_mousePressEvent(QAbstractButton* self, QMouseEvent* e);
void QAbstractButton_mouseReleaseEvent(QAbstractButton* self, QMouseEvent* e);
void QAbstractButton_mouseMoveEvent(QAbstractButton* self, QMouseEvent* e);
void QAbstractButton_focusInEvent(QAbstractButton* self, QFocusEvent* e);
void QAbstractButton_focusOutEvent(QAbstractButton* self, QFocusEvent* e);
void QAbstractButton_changeEvent(QAbstractButton* self, QEvent* e);
void QAbstractButton_timerEvent(QAbstractButton* self, QTimerEvent* e);
struct miqt_string QAbstractButton_tr2(const char* s, const char* c);
struct miqt_string QAbstractButton_tr3(const char* s, const char* c, int n);
void QAbstractButton_clicked1(QAbstractButton* self, bool checked);
void QAbstractButton_connect_clicked1(VirtualQAbstractButton* self, intptr_t slot, void (*callback)(intptr_t, bool), void (*release)(intptr_t));

QMetaObject* QAbstractButton_virtualbase_metaObject(const VirtualQAbstractButton* self);
void* QAbstractButton_virtualbase_metacast(VirtualQAbstractButton* self, const char* param1);
int QAbstractButton_virtualbase_metacall(VirtualQAbstractButton* self, int param1, int param2, void** param3);
void QAbstractButton_virtualbase_paintEvent(VirtualQAbstractButton* self, QPaintEvent* e);
bool QAbstractButton_virtualbase_hitButton(const VirtualQAbstractButton* self, QPoint* pos);
void QAbstractButton_virtualbase_checkStateSet(VirtualQAbstractButton* self);
void QAbstractButton_virtualbase_nextCheckState(VirtualQAbstractButton* self);
bool QAbstractButton_virtualbase_event(VirtualQAbstractButton* self, QEvent* e);
void QAbstractButton_virtualbase_keyPressEvent(VirtualQAbstractButton* self, QKeyEvent* e);
void QAbstractButton_virtualbase_keyReleaseEvent(VirtualQAbstractButton* self, QKeyEvent* e);
void QAbstractButton_virtualbase_mousePressEvent(VirtualQAbstractButton* self, QMouseEvent* e);
void QAbstractButton_virtualbase_mouseReleaseEvent(VirtualQAbstractButton* self, QMouseEvent* e);
void QAbstractButton_virtualbase_mouseMoveEvent(VirtualQAbstractButton* self, QMouseEvent* e);
void QAbstractButton_virtualbase_focusInEvent(VirtualQAbstractButton* self, QFocusEvent* e);
void QAbstractButton_virtualbase_focusOutEvent(VirtualQAbstractButton* self, QFocusEvent* e);
void QAbstractButton_virtualbase_changeEvent(VirtualQAbstractButton* self, QEvent* e);
void QAbstractButton_virtualbase_timerEvent(VirtualQAbstractButton* self, QTimerEvent* e);
int QAbstractButton_virtualbase_devType(const VirtualQAbstractButton* self);
void QAbstractButton_virtualbase_setVisible(VirtualQAbstractButton* self, bool visible);
QSize* QAbstractButton_virtualbase_sizeHint(const VirtualQAbstractButton* self);
QSize* QAbstractButton_virtualbase_minimumSizeHint(const VirtualQAbstractButton* self);
int QAbstractButton_virtualbase_heightForWidth(const VirtualQAbstractButton* self, int param1);
bool QAbstractButton_virtualbase_hasHeightForWidth(const VirtualQAbstractButton* self);
QPaintEngine* QAbstractButton_virtualbase_paintEngine(const VirtualQAbstractButton* self);
void QAbstractButton_virtualbase_mouseDoubleClickEvent(VirtualQAbstractButton* self, QMouseEvent* event);
void QAbstractButton_virtualbase_wheelEvent(VirtualQAbstractButton* self, QWheelEvent* event);
void QAbstractButton_virtualbase_enterEvent(VirtualQAbstractButton* self, QEnterEvent* event);
void QAbstractButton_virtualbase_leaveEvent(VirtualQAbstractButton* self, QEvent* event);
void QAbstractButton_virtualbase_moveEvent(VirtualQAbstractButton* self, QMoveEvent* event);
void QAbstractButton_virtualbase_resizeEvent(VirtualQAbstractButton* self, QResizeEvent* event);
void QAbstractButton_virtualbase_closeEvent(VirtualQAbstractButton* self, QCloseEvent* event);
void QAbstractButton_virtualbase_contextMenuEvent(VirtualQAbstractButton* self, QContextMenuEvent* event);
void QAbstractButton_virtualbase_tabletEvent(VirtualQAbstractButton* self, QTabletEvent* event);
void QAbstractButton_virtualbase_actionEvent(VirtualQAbstractButton* self, QActionEvent* event);
void QAbstractButton_virtualbase_dragEnterEvent(VirtualQAbstractButton* self, QDragEnterEvent* event);
void QAbstractButton_virtualbase_dragMoveEvent(VirtualQAbstractButton* self, QDragMoveEvent* event);
void QAbstractButton_virtualbase_dragLeaveEvent(VirtualQAbstractButton* self, QDragLeaveEvent* event);
void QAbstractButton_virtualbase_dropEvent(VirtualQAbstractButton* self, QDropEvent* event);
void QAbstractButton_virtualbase_showEvent(VirtualQAbstractButton* self, QShowEvent* event);
void QAbstractButton_virtualbase_hideEvent(VirtualQAbstractButton* self, QHideEvent* event);
bool QAbstractButton_virtualbase_nativeEvent(VirtualQAbstractButton* self, struct miqt_string eventType, void* message, intptr_t* result);
int QAbstractButton_virtualbase_metric(const VirtualQAbstractButton* self, int param1);
void QAbstractButton_virtualbase_initPainter(const VirtualQAbstractButton* self, QPainter* painter);
QPaintDevice* QAbstractButton_virtualbase_redirected(const VirtualQAbstractButton* self, QPoint* offset);
QPainter* QAbstractButton_virtualbase_sharedPainter(const VirtualQAbstractButton* self);
void QAbstractButton_virtualbase_inputMethodEvent(VirtualQAbstractButton* self, QInputMethodEvent* param1);
QVariant* QAbstractButton_virtualbase_inputMethodQuery(const VirtualQAbstractButton* self, int param1);
bool QAbstractButton_virtualbase_focusNextPrevChild(VirtualQAbstractButton* self, bool next);
bool QAbstractButton_virtualbase_eventFilter(VirtualQAbstractButton* self, QObject* watched, QEvent* event);
void QAbstractButton_virtualbase_childEvent(VirtualQAbstractButton* self, QChildEvent* event);
void QAbstractButton_virtualbase_customEvent(VirtualQAbstractButton* self, QEvent* event);
void QAbstractButton_virtualbase_connectNotify(VirtualQAbstractButton* self, QMetaMethod* signal);
void QAbstractButton_virtualbase_disconnectNotify(VirtualQAbstractButton* self, QMetaMethod* signal);

void QAbstractButton_protectedbase_updateMicroFocus(VirtualQAbstractButton* self);
void QAbstractButton_protectedbase_create(VirtualQAbstractButton* self);
void QAbstractButton_protectedbase_destroy(VirtualQAbstractButton* self);
bool QAbstractButton_protectedbase_focusNextChild(VirtualQAbstractButton* self);
bool QAbstractButton_protectedbase_focusPreviousChild(VirtualQAbstractButton* self);
QObject* QAbstractButton_protectedbase_sender(const VirtualQAbstractButton* self);
int QAbstractButton_protectedbase_senderSignalIndex(const VirtualQAbstractButton* self);
int QAbstractButton_protectedbase_receivers(const VirtualQAbstractButton* self, const char* signal);
bool QAbstractButton_protectedbase_isSignalConnected(const VirtualQAbstractButton* self, QMetaMethod* signal);

const QMetaObject* QAbstractButton_staticMetaObject();
void QAbstractButton_delete(QAbstractButton* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
