#pragma once
#ifndef SEAQT_QTWIDGETS_GEN_QSTATUSBAR_H
#define SEAQT_QTWIDGETS_GEN_QSTATUSBAR_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt/libseaqt.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QActionEvent;
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
class QInputMethodEvent;
class QKeyEvent;
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
class QStatusBar;
class QTabletEvent;
class QTimerEvent;
class QVariant;
class QWheelEvent;
class QWidget;
#else
typedef struct QActionEvent QActionEvent;
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
typedef struct QInputMethodEvent QInputMethodEvent;
typedef struct QKeyEvent QKeyEvent;
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
typedef struct QStatusBar QStatusBar;
typedef struct QTabletEvent QTabletEvent;
typedef struct QTimerEvent QTimerEvent;
typedef struct QVariant QVariant;
typedef struct QWheelEvent QWheelEvent;
typedef struct QWidget QWidget;
#endif

struct QStatusBar_VTable {
	void (*destructor)(struct QStatusBar_VTable* vtbl, QStatusBar* self);
	QMetaObject* (*metaObject)(struct QStatusBar_VTable* vtbl, const QStatusBar* self);
	void* (*metacast)(struct QStatusBar_VTable* vtbl, QStatusBar* self, const char* param1);
	int (*metacall)(struct QStatusBar_VTable* vtbl, QStatusBar* self, int param1, int param2, void** param3);
	void (*showEvent)(struct QStatusBar_VTable* vtbl, QStatusBar* self, QShowEvent* param1);
	void (*paintEvent)(struct QStatusBar_VTable* vtbl, QStatusBar* self, QPaintEvent* param1);
	void (*resizeEvent)(struct QStatusBar_VTable* vtbl, QStatusBar* self, QResizeEvent* param1);
	bool (*event)(struct QStatusBar_VTable* vtbl, QStatusBar* self, QEvent* param1);
	int (*devType)(struct QStatusBar_VTable* vtbl, const QStatusBar* self);
	void (*setVisible)(struct QStatusBar_VTable* vtbl, QStatusBar* self, bool visible);
	QSize* (*sizeHint)(struct QStatusBar_VTable* vtbl, const QStatusBar* self);
	QSize* (*minimumSizeHint)(struct QStatusBar_VTable* vtbl, const QStatusBar* self);
	int (*heightForWidth)(struct QStatusBar_VTable* vtbl, const QStatusBar* self, int param1);
	bool (*hasHeightForWidth)(struct QStatusBar_VTable* vtbl, const QStatusBar* self);
	QPaintEngine* (*paintEngine)(struct QStatusBar_VTable* vtbl, const QStatusBar* self);
	void (*mousePressEvent)(struct QStatusBar_VTable* vtbl, QStatusBar* self, QMouseEvent* event);
	void (*mouseReleaseEvent)(struct QStatusBar_VTable* vtbl, QStatusBar* self, QMouseEvent* event);
	void (*mouseDoubleClickEvent)(struct QStatusBar_VTable* vtbl, QStatusBar* self, QMouseEvent* event);
	void (*mouseMoveEvent)(struct QStatusBar_VTable* vtbl, QStatusBar* self, QMouseEvent* event);
	void (*wheelEvent)(struct QStatusBar_VTable* vtbl, QStatusBar* self, QWheelEvent* event);
	void (*keyPressEvent)(struct QStatusBar_VTable* vtbl, QStatusBar* self, QKeyEvent* event);
	void (*keyReleaseEvent)(struct QStatusBar_VTable* vtbl, QStatusBar* self, QKeyEvent* event);
	void (*focusInEvent)(struct QStatusBar_VTable* vtbl, QStatusBar* self, QFocusEvent* event);
	void (*focusOutEvent)(struct QStatusBar_VTable* vtbl, QStatusBar* self, QFocusEvent* event);
	void (*enterEvent)(struct QStatusBar_VTable* vtbl, QStatusBar* self, QEnterEvent* event);
	void (*leaveEvent)(struct QStatusBar_VTable* vtbl, QStatusBar* self, QEvent* event);
	void (*moveEvent)(struct QStatusBar_VTable* vtbl, QStatusBar* self, QMoveEvent* event);
	void (*closeEvent)(struct QStatusBar_VTable* vtbl, QStatusBar* self, QCloseEvent* event);
	void (*contextMenuEvent)(struct QStatusBar_VTable* vtbl, QStatusBar* self, QContextMenuEvent* event);
	void (*tabletEvent)(struct QStatusBar_VTable* vtbl, QStatusBar* self, QTabletEvent* event);
	void (*actionEvent)(struct QStatusBar_VTable* vtbl, QStatusBar* self, QActionEvent* event);
	void (*dragEnterEvent)(struct QStatusBar_VTable* vtbl, QStatusBar* self, QDragEnterEvent* event);
	void (*dragMoveEvent)(struct QStatusBar_VTable* vtbl, QStatusBar* self, QDragMoveEvent* event);
	void (*dragLeaveEvent)(struct QStatusBar_VTable* vtbl, QStatusBar* self, QDragLeaveEvent* event);
	void (*dropEvent)(struct QStatusBar_VTable* vtbl, QStatusBar* self, QDropEvent* event);
	void (*hideEvent)(struct QStatusBar_VTable* vtbl, QStatusBar* self, QHideEvent* event);
	bool (*nativeEvent)(struct QStatusBar_VTable* vtbl, QStatusBar* self, struct miqt_string eventType, void* message, intptr_t* result);
	void (*changeEvent)(struct QStatusBar_VTable* vtbl, QStatusBar* self, QEvent* param1);
	int (*metric)(struct QStatusBar_VTable* vtbl, const QStatusBar* self, int param1);
	void (*initPainter)(struct QStatusBar_VTable* vtbl, const QStatusBar* self, QPainter* painter);
	QPaintDevice* (*redirected)(struct QStatusBar_VTable* vtbl, const QStatusBar* self, QPoint* offset);
	QPainter* (*sharedPainter)(struct QStatusBar_VTable* vtbl, const QStatusBar* self);
	void (*inputMethodEvent)(struct QStatusBar_VTable* vtbl, QStatusBar* self, QInputMethodEvent* param1);
	QVariant* (*inputMethodQuery)(struct QStatusBar_VTable* vtbl, const QStatusBar* self, int param1);
	bool (*focusNextPrevChild)(struct QStatusBar_VTable* vtbl, QStatusBar* self, bool next);
	bool (*eventFilter)(struct QStatusBar_VTable* vtbl, QStatusBar* self, QObject* watched, QEvent* event);
	void (*timerEvent)(struct QStatusBar_VTable* vtbl, QStatusBar* self, QTimerEvent* event);
	void (*childEvent)(struct QStatusBar_VTable* vtbl, QStatusBar* self, QChildEvent* event);
	void (*customEvent)(struct QStatusBar_VTable* vtbl, QStatusBar* self, QEvent* event);
	void (*connectNotify)(struct QStatusBar_VTable* vtbl, QStatusBar* self, QMetaMethod* signal);
	void (*disconnectNotify)(struct QStatusBar_VTable* vtbl, QStatusBar* self, QMetaMethod* signal);
};
QStatusBar* QStatusBar_new(struct QStatusBar_VTable* vtbl, QWidget* parent);
QStatusBar* QStatusBar_new2(struct QStatusBar_VTable* vtbl);
void QStatusBar_virtbase(QStatusBar* src, QWidget** outptr_QWidget);
QMetaObject* QStatusBar_metaObject(const QStatusBar* self);
void* QStatusBar_metacast(QStatusBar* self, const char* param1);
int QStatusBar_metacall(QStatusBar* self, int param1, int param2, void** param3);
struct miqt_string QStatusBar_tr(const char* s);
void QStatusBar_addWidget(QStatusBar* self, QWidget* widget);
int QStatusBar_insertWidget(QStatusBar* self, int index, QWidget* widget);
void QStatusBar_addPermanentWidget(QStatusBar* self, QWidget* widget);
int QStatusBar_insertPermanentWidget(QStatusBar* self, int index, QWidget* widget);
void QStatusBar_removeWidget(QStatusBar* self, QWidget* widget);
void QStatusBar_setSizeGripEnabled(QStatusBar* self, bool sizeGripEnabled);
bool QStatusBar_isSizeGripEnabled(const QStatusBar* self);
struct miqt_string QStatusBar_currentMessage(const QStatusBar* self);
void QStatusBar_showMessage(QStatusBar* self, struct miqt_string text);
void QStatusBar_clearMessage(QStatusBar* self);
void QStatusBar_messageChanged(QStatusBar* self, struct miqt_string text);
void QStatusBar_connect_messageChanged(QStatusBar* self, intptr_t slot, void (*callback)(intptr_t, struct miqt_string), void (*release)(intptr_t));
void QStatusBar_showEvent(QStatusBar* self, QShowEvent* param1);
void QStatusBar_paintEvent(QStatusBar* self, QPaintEvent* param1);
void QStatusBar_resizeEvent(QStatusBar* self, QResizeEvent* param1);
bool QStatusBar_event(QStatusBar* self, QEvent* param1);
struct miqt_string QStatusBar_tr2(const char* s, const char* c);
struct miqt_string QStatusBar_tr3(const char* s, const char* c, int n);
void QStatusBar_addWidget2(QStatusBar* self, QWidget* widget, int stretch);
int QStatusBar_insertWidget3(QStatusBar* self, int index, QWidget* widget, int stretch);
void QStatusBar_addPermanentWidget2(QStatusBar* self, QWidget* widget, int stretch);
int QStatusBar_insertPermanentWidget3(QStatusBar* self, int index, QWidget* widget, int stretch);
void QStatusBar_showMessage2(QStatusBar* self, struct miqt_string text, int timeout);
QMetaObject* QStatusBar_virtualbase_metaObject(const void* self);
void* QStatusBar_virtualbase_metacast(void* self, const char* param1);
int QStatusBar_virtualbase_metacall(void* self, int param1, int param2, void** param3);
void QStatusBar_virtualbase_showEvent(void* self, QShowEvent* param1);
void QStatusBar_virtualbase_paintEvent(void* self, QPaintEvent* param1);
void QStatusBar_virtualbase_resizeEvent(void* self, QResizeEvent* param1);
bool QStatusBar_virtualbase_event(void* self, QEvent* param1);
int QStatusBar_virtualbase_devType(const void* self);
void QStatusBar_virtualbase_setVisible(void* self, bool visible);
QSize* QStatusBar_virtualbase_sizeHint(const void* self);
QSize* QStatusBar_virtualbase_minimumSizeHint(const void* self);
int QStatusBar_virtualbase_heightForWidth(const void* self, int param1);
bool QStatusBar_virtualbase_hasHeightForWidth(const void* self);
QPaintEngine* QStatusBar_virtualbase_paintEngine(const void* self);
void QStatusBar_virtualbase_mousePressEvent(void* self, QMouseEvent* event);
void QStatusBar_virtualbase_mouseReleaseEvent(void* self, QMouseEvent* event);
void QStatusBar_virtualbase_mouseDoubleClickEvent(void* self, QMouseEvent* event);
void QStatusBar_virtualbase_mouseMoveEvent(void* self, QMouseEvent* event);
void QStatusBar_virtualbase_wheelEvent(void* self, QWheelEvent* event);
void QStatusBar_virtualbase_keyPressEvent(void* self, QKeyEvent* event);
void QStatusBar_virtualbase_keyReleaseEvent(void* self, QKeyEvent* event);
void QStatusBar_virtualbase_focusInEvent(void* self, QFocusEvent* event);
void QStatusBar_virtualbase_focusOutEvent(void* self, QFocusEvent* event);
void QStatusBar_virtualbase_enterEvent(void* self, QEnterEvent* event);
void QStatusBar_virtualbase_leaveEvent(void* self, QEvent* event);
void QStatusBar_virtualbase_moveEvent(void* self, QMoveEvent* event);
void QStatusBar_virtualbase_closeEvent(void* self, QCloseEvent* event);
void QStatusBar_virtualbase_contextMenuEvent(void* self, QContextMenuEvent* event);
void QStatusBar_virtualbase_tabletEvent(void* self, QTabletEvent* event);
void QStatusBar_virtualbase_actionEvent(void* self, QActionEvent* event);
void QStatusBar_virtualbase_dragEnterEvent(void* self, QDragEnterEvent* event);
void QStatusBar_virtualbase_dragMoveEvent(void* self, QDragMoveEvent* event);
void QStatusBar_virtualbase_dragLeaveEvent(void* self, QDragLeaveEvent* event);
void QStatusBar_virtualbase_dropEvent(void* self, QDropEvent* event);
void QStatusBar_virtualbase_hideEvent(void* self, QHideEvent* event);
bool QStatusBar_virtualbase_nativeEvent(void* self, struct miqt_string eventType, void* message, intptr_t* result);
void QStatusBar_virtualbase_changeEvent(void* self, QEvent* param1);
int QStatusBar_virtualbase_metric(const void* self, int param1);
void QStatusBar_virtualbase_initPainter(const void* self, QPainter* painter);
QPaintDevice* QStatusBar_virtualbase_redirected(const void* self, QPoint* offset);
QPainter* QStatusBar_virtualbase_sharedPainter(const void* self);
void QStatusBar_virtualbase_inputMethodEvent(void* self, QInputMethodEvent* param1);
QVariant* QStatusBar_virtualbase_inputMethodQuery(const void* self, int param1);
bool QStatusBar_virtualbase_focusNextPrevChild(void* self, bool next);
bool QStatusBar_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);
void QStatusBar_virtualbase_timerEvent(void* self, QTimerEvent* event);
void QStatusBar_virtualbase_childEvent(void* self, QChildEvent* event);
void QStatusBar_virtualbase_customEvent(void* self, QEvent* event);
void QStatusBar_virtualbase_connectNotify(void* self, QMetaMethod* signal);
void QStatusBar_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
void QStatusBar_protectedbase_reformat(void* self);
void QStatusBar_protectedbase_hideOrShow(void* self);
void QStatusBar_protectedbase_updateMicroFocus(void* self);
void QStatusBar_protectedbase_create(void* self);
void QStatusBar_protectedbase_destroy(void* self);
bool QStatusBar_protectedbase_focusNextChild(void* self);
bool QStatusBar_protectedbase_focusPreviousChild(void* self);
QObject* QStatusBar_protectedbase_sender(const void* self);
int QStatusBar_protectedbase_senderSignalIndex(const void* self);
int QStatusBar_protectedbase_receivers(const void* self, const char* signal);
bool QStatusBar_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal);
const QMetaObject* QStatusBar_staticMetaObject();
void QStatusBar_delete(QStatusBar* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
