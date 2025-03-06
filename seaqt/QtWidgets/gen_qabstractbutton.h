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

struct QAbstractButton_VTable {
	void (*destructor)(struct QAbstractButton_VTable* vtbl, QAbstractButton* self);
	QMetaObject* (*metaObject)(struct QAbstractButton_VTable* vtbl, const QAbstractButton* self);
	void* (*metacast)(struct QAbstractButton_VTable* vtbl, QAbstractButton* self, const char* param1);
	int (*metacall)(struct QAbstractButton_VTable* vtbl, QAbstractButton* self, int param1, int param2, void** param3);
	void (*paintEvent)(struct QAbstractButton_VTable* vtbl, QAbstractButton* self, QPaintEvent* e);
	bool (*hitButton)(struct QAbstractButton_VTable* vtbl, const QAbstractButton* self, QPoint* pos);
	void (*checkStateSet)(struct QAbstractButton_VTable* vtbl, QAbstractButton* self);
	void (*nextCheckState)(struct QAbstractButton_VTable* vtbl, QAbstractButton* self);
	bool (*event)(struct QAbstractButton_VTable* vtbl, QAbstractButton* self, QEvent* e);
	void (*keyPressEvent)(struct QAbstractButton_VTable* vtbl, QAbstractButton* self, QKeyEvent* e);
	void (*keyReleaseEvent)(struct QAbstractButton_VTable* vtbl, QAbstractButton* self, QKeyEvent* e);
	void (*mousePressEvent)(struct QAbstractButton_VTable* vtbl, QAbstractButton* self, QMouseEvent* e);
	void (*mouseReleaseEvent)(struct QAbstractButton_VTable* vtbl, QAbstractButton* self, QMouseEvent* e);
	void (*mouseMoveEvent)(struct QAbstractButton_VTable* vtbl, QAbstractButton* self, QMouseEvent* e);
	void (*focusInEvent)(struct QAbstractButton_VTable* vtbl, QAbstractButton* self, QFocusEvent* e);
	void (*focusOutEvent)(struct QAbstractButton_VTable* vtbl, QAbstractButton* self, QFocusEvent* e);
	void (*changeEvent)(struct QAbstractButton_VTable* vtbl, QAbstractButton* self, QEvent* e);
	void (*timerEvent)(struct QAbstractButton_VTable* vtbl, QAbstractButton* self, QTimerEvent* e);
	int (*devType)(struct QAbstractButton_VTable* vtbl, const QAbstractButton* self);
	void (*setVisible)(struct QAbstractButton_VTable* vtbl, QAbstractButton* self, bool visible);
	QSize* (*sizeHint)(struct QAbstractButton_VTable* vtbl, const QAbstractButton* self);
	QSize* (*minimumSizeHint)(struct QAbstractButton_VTable* vtbl, const QAbstractButton* self);
	int (*heightForWidth)(struct QAbstractButton_VTable* vtbl, const QAbstractButton* self, int param1);
	bool (*hasHeightForWidth)(struct QAbstractButton_VTable* vtbl, const QAbstractButton* self);
	QPaintEngine* (*paintEngine)(struct QAbstractButton_VTable* vtbl, const QAbstractButton* self);
	void (*mouseDoubleClickEvent)(struct QAbstractButton_VTable* vtbl, QAbstractButton* self, QMouseEvent* event);
	void (*wheelEvent)(struct QAbstractButton_VTable* vtbl, QAbstractButton* self, QWheelEvent* event);
	void (*enterEvent)(struct QAbstractButton_VTable* vtbl, QAbstractButton* self, QEvent* event);
	void (*leaveEvent)(struct QAbstractButton_VTable* vtbl, QAbstractButton* self, QEvent* event);
	void (*moveEvent)(struct QAbstractButton_VTable* vtbl, QAbstractButton* self, QMoveEvent* event);
	void (*resizeEvent)(struct QAbstractButton_VTable* vtbl, QAbstractButton* self, QResizeEvent* event);
	void (*closeEvent)(struct QAbstractButton_VTable* vtbl, QAbstractButton* self, QCloseEvent* event);
	void (*contextMenuEvent)(struct QAbstractButton_VTable* vtbl, QAbstractButton* self, QContextMenuEvent* event);
	void (*tabletEvent)(struct QAbstractButton_VTable* vtbl, QAbstractButton* self, QTabletEvent* event);
	void (*actionEvent)(struct QAbstractButton_VTable* vtbl, QAbstractButton* self, QActionEvent* event);
	void (*dragEnterEvent)(struct QAbstractButton_VTable* vtbl, QAbstractButton* self, QDragEnterEvent* event);
	void (*dragMoveEvent)(struct QAbstractButton_VTable* vtbl, QAbstractButton* self, QDragMoveEvent* event);
	void (*dragLeaveEvent)(struct QAbstractButton_VTable* vtbl, QAbstractButton* self, QDragLeaveEvent* event);
	void (*dropEvent)(struct QAbstractButton_VTable* vtbl, QAbstractButton* self, QDropEvent* event);
	void (*showEvent)(struct QAbstractButton_VTable* vtbl, QAbstractButton* self, QShowEvent* event);
	void (*hideEvent)(struct QAbstractButton_VTable* vtbl, QAbstractButton* self, QHideEvent* event);
	bool (*nativeEvent)(struct QAbstractButton_VTable* vtbl, QAbstractButton* self, struct miqt_string eventType, void* message, long* result);
	int (*metric)(struct QAbstractButton_VTable* vtbl, const QAbstractButton* self, int param1);
	void (*initPainter)(struct QAbstractButton_VTable* vtbl, const QAbstractButton* self, QPainter* painter);
	QPaintDevice* (*redirected)(struct QAbstractButton_VTable* vtbl, const QAbstractButton* self, QPoint* offset);
	QPainter* (*sharedPainter)(struct QAbstractButton_VTable* vtbl, const QAbstractButton* self);
	void (*inputMethodEvent)(struct QAbstractButton_VTable* vtbl, QAbstractButton* self, QInputMethodEvent* param1);
	QVariant* (*inputMethodQuery)(struct QAbstractButton_VTable* vtbl, const QAbstractButton* self, int param1);
	bool (*focusNextPrevChild)(struct QAbstractButton_VTable* vtbl, QAbstractButton* self, bool next);
	bool (*eventFilter)(struct QAbstractButton_VTable* vtbl, QAbstractButton* self, QObject* watched, QEvent* event);
	void (*childEvent)(struct QAbstractButton_VTable* vtbl, QAbstractButton* self, QChildEvent* event);
	void (*customEvent)(struct QAbstractButton_VTable* vtbl, QAbstractButton* self, QEvent* event);
	void (*connectNotify)(struct QAbstractButton_VTable* vtbl, QAbstractButton* self, QMetaMethod* signal);
	void (*disconnectNotify)(struct QAbstractButton_VTable* vtbl, QAbstractButton* self, QMetaMethod* signal);
};
QAbstractButton* QAbstractButton_new(struct QAbstractButton_VTable* vtbl, QWidget* parent);
QAbstractButton* QAbstractButton_new2(struct QAbstractButton_VTable* vtbl);
void QAbstractButton_virtbase(QAbstractButton* src, QWidget** outptr_QWidget);
QMetaObject* QAbstractButton_metaObject(const QAbstractButton* self);
void* QAbstractButton_metacast(QAbstractButton* self, const char* param1);
int QAbstractButton_metacall(QAbstractButton* self, int param1, int param2, void** param3);
struct miqt_string QAbstractButton_tr(const char* s);
struct miqt_string QAbstractButton_trUtf8(const char* s);
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
void QAbstractButton_connect_pressed(QAbstractButton* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QAbstractButton_released(QAbstractButton* self);
void QAbstractButton_connect_released(QAbstractButton* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QAbstractButton_clicked(QAbstractButton* self);
void QAbstractButton_connect_clicked(QAbstractButton* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QAbstractButton_toggled(QAbstractButton* self, bool checked);
void QAbstractButton_connect_toggled(QAbstractButton* self, intptr_t slot, void (*callback)(intptr_t, bool), void (*release)(intptr_t));
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
struct miqt_string QAbstractButton_trUtf82(const char* s, const char* c);
struct miqt_string QAbstractButton_trUtf83(const char* s, const char* c, int n);
void QAbstractButton_animateClick1(QAbstractButton* self, int msec);
void QAbstractButton_clicked1(QAbstractButton* self, bool checked);
void QAbstractButton_connect_clicked1(QAbstractButton* self, intptr_t slot, void (*callback)(intptr_t, bool), void (*release)(intptr_t));
QMetaObject* QAbstractButton_virtualbase_metaObject(const void* self);
void* QAbstractButton_virtualbase_metacast(void* self, const char* param1);
int QAbstractButton_virtualbase_metacall(void* self, int param1, int param2, void** param3);
void QAbstractButton_virtualbase_paintEvent(void* self, QPaintEvent* e);
bool QAbstractButton_virtualbase_hitButton(const void* self, QPoint* pos);
void QAbstractButton_virtualbase_checkStateSet(void* self);
void QAbstractButton_virtualbase_nextCheckState(void* self);
bool QAbstractButton_virtualbase_event(void* self, QEvent* e);
void QAbstractButton_virtualbase_keyPressEvent(void* self, QKeyEvent* e);
void QAbstractButton_virtualbase_keyReleaseEvent(void* self, QKeyEvent* e);
void QAbstractButton_virtualbase_mousePressEvent(void* self, QMouseEvent* e);
void QAbstractButton_virtualbase_mouseReleaseEvent(void* self, QMouseEvent* e);
void QAbstractButton_virtualbase_mouseMoveEvent(void* self, QMouseEvent* e);
void QAbstractButton_virtualbase_focusInEvent(void* self, QFocusEvent* e);
void QAbstractButton_virtualbase_focusOutEvent(void* self, QFocusEvent* e);
void QAbstractButton_virtualbase_changeEvent(void* self, QEvent* e);
void QAbstractButton_virtualbase_timerEvent(void* self, QTimerEvent* e);
int QAbstractButton_virtualbase_devType(const void* self);
void QAbstractButton_virtualbase_setVisible(void* self, bool visible);
QSize* QAbstractButton_virtualbase_sizeHint(const void* self);
QSize* QAbstractButton_virtualbase_minimumSizeHint(const void* self);
int QAbstractButton_virtualbase_heightForWidth(const void* self, int param1);
bool QAbstractButton_virtualbase_hasHeightForWidth(const void* self);
QPaintEngine* QAbstractButton_virtualbase_paintEngine(const void* self);
void QAbstractButton_virtualbase_mouseDoubleClickEvent(void* self, QMouseEvent* event);
void QAbstractButton_virtualbase_wheelEvent(void* self, QWheelEvent* event);
void QAbstractButton_virtualbase_enterEvent(void* self, QEvent* event);
void QAbstractButton_virtualbase_leaveEvent(void* self, QEvent* event);
void QAbstractButton_virtualbase_moveEvent(void* self, QMoveEvent* event);
void QAbstractButton_virtualbase_resizeEvent(void* self, QResizeEvent* event);
void QAbstractButton_virtualbase_closeEvent(void* self, QCloseEvent* event);
void QAbstractButton_virtualbase_contextMenuEvent(void* self, QContextMenuEvent* event);
void QAbstractButton_virtualbase_tabletEvent(void* self, QTabletEvent* event);
void QAbstractButton_virtualbase_actionEvent(void* self, QActionEvent* event);
void QAbstractButton_virtualbase_dragEnterEvent(void* self, QDragEnterEvent* event);
void QAbstractButton_virtualbase_dragMoveEvent(void* self, QDragMoveEvent* event);
void QAbstractButton_virtualbase_dragLeaveEvent(void* self, QDragLeaveEvent* event);
void QAbstractButton_virtualbase_dropEvent(void* self, QDropEvent* event);
void QAbstractButton_virtualbase_showEvent(void* self, QShowEvent* event);
void QAbstractButton_virtualbase_hideEvent(void* self, QHideEvent* event);
bool QAbstractButton_virtualbase_nativeEvent(void* self, struct miqt_string eventType, void* message, long* result);
int QAbstractButton_virtualbase_metric(const void* self, int param1);
void QAbstractButton_virtualbase_initPainter(const void* self, QPainter* painter);
QPaintDevice* QAbstractButton_virtualbase_redirected(const void* self, QPoint* offset);
QPainter* QAbstractButton_virtualbase_sharedPainter(const void* self);
void QAbstractButton_virtualbase_inputMethodEvent(void* self, QInputMethodEvent* param1);
QVariant* QAbstractButton_virtualbase_inputMethodQuery(const void* self, int param1);
bool QAbstractButton_virtualbase_focusNextPrevChild(void* self, bool next);
bool QAbstractButton_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);
void QAbstractButton_virtualbase_childEvent(void* self, QChildEvent* event);
void QAbstractButton_virtualbase_customEvent(void* self, QEvent* event);
void QAbstractButton_virtualbase_connectNotify(void* self, QMetaMethod* signal);
void QAbstractButton_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
void QAbstractButton_protectedbase_updateMicroFocus(void* self);
void QAbstractButton_protectedbase_create(void* self);
void QAbstractButton_protectedbase_destroy(void* self);
bool QAbstractButton_protectedbase_focusNextChild(void* self);
bool QAbstractButton_protectedbase_focusPreviousChild(void* self);
QObject* QAbstractButton_protectedbase_sender(const void* self);
int QAbstractButton_protectedbase_senderSignalIndex(const void* self);
int QAbstractButton_protectedbase_receivers(const void* self, const char* signal);
bool QAbstractButton_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal);
const QMetaObject* QAbstractButton_staticMetaObject();
void QAbstractButton_delete(QAbstractButton* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
