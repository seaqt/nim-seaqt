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

typedef struct VirtualQStatusBar VirtualQStatusBar;
typedef struct QStatusBar_VTable{
	void (*destructor)(VirtualQStatusBar* self);
	QMetaObject* (*metaObject)(const VirtualQStatusBar* self);
	void* (*metacast)(VirtualQStatusBar* self, const char* param1);
	int (*metacall)(VirtualQStatusBar* self, int param1, int param2, void** param3);
	void (*showEvent)(VirtualQStatusBar* self, QShowEvent* param1);
	void (*paintEvent)(VirtualQStatusBar* self, QPaintEvent* param1);
	void (*resizeEvent)(VirtualQStatusBar* self, QResizeEvent* param1);
	bool (*event)(VirtualQStatusBar* self, QEvent* param1);
	int (*devType)(const VirtualQStatusBar* self);
	void (*setVisible)(VirtualQStatusBar* self, bool visible);
	QSize* (*sizeHint)(const VirtualQStatusBar* self);
	QSize* (*minimumSizeHint)(const VirtualQStatusBar* self);
	int (*heightForWidth)(const VirtualQStatusBar* self, int param1);
	bool (*hasHeightForWidth)(const VirtualQStatusBar* self);
	QPaintEngine* (*paintEngine)(const VirtualQStatusBar* self);
	void (*mousePressEvent)(VirtualQStatusBar* self, QMouseEvent* event);
	void (*mouseReleaseEvent)(VirtualQStatusBar* self, QMouseEvent* event);
	void (*mouseDoubleClickEvent)(VirtualQStatusBar* self, QMouseEvent* event);
	void (*mouseMoveEvent)(VirtualQStatusBar* self, QMouseEvent* event);
	void (*wheelEvent)(VirtualQStatusBar* self, QWheelEvent* event);
	void (*keyPressEvent)(VirtualQStatusBar* self, QKeyEvent* event);
	void (*keyReleaseEvent)(VirtualQStatusBar* self, QKeyEvent* event);
	void (*focusInEvent)(VirtualQStatusBar* self, QFocusEvent* event);
	void (*focusOutEvent)(VirtualQStatusBar* self, QFocusEvent* event);
	void (*enterEvent)(VirtualQStatusBar* self, QEvent* event);
	void (*leaveEvent)(VirtualQStatusBar* self, QEvent* event);
	void (*moveEvent)(VirtualQStatusBar* self, QMoveEvent* event);
	void (*closeEvent)(VirtualQStatusBar* self, QCloseEvent* event);
	void (*contextMenuEvent)(VirtualQStatusBar* self, QContextMenuEvent* event);
	void (*tabletEvent)(VirtualQStatusBar* self, QTabletEvent* event);
	void (*actionEvent)(VirtualQStatusBar* self, QActionEvent* event);
	void (*dragEnterEvent)(VirtualQStatusBar* self, QDragEnterEvent* event);
	void (*dragMoveEvent)(VirtualQStatusBar* self, QDragMoveEvent* event);
	void (*dragLeaveEvent)(VirtualQStatusBar* self, QDragLeaveEvent* event);
	void (*dropEvent)(VirtualQStatusBar* self, QDropEvent* event);
	void (*hideEvent)(VirtualQStatusBar* self, QHideEvent* event);
	bool (*nativeEvent)(VirtualQStatusBar* self, struct miqt_string eventType, void* message, long* result);
	void (*changeEvent)(VirtualQStatusBar* self, QEvent* param1);
	int (*metric)(const VirtualQStatusBar* self, int param1);
	void (*initPainter)(const VirtualQStatusBar* self, QPainter* painter);
	QPaintDevice* (*redirected)(const VirtualQStatusBar* self, QPoint* offset);
	QPainter* (*sharedPainter)(const VirtualQStatusBar* self);
	void (*inputMethodEvent)(VirtualQStatusBar* self, QInputMethodEvent* param1);
	QVariant* (*inputMethodQuery)(const VirtualQStatusBar* self, int param1);
	bool (*focusNextPrevChild)(VirtualQStatusBar* self, bool next);
	bool (*eventFilter)(VirtualQStatusBar* self, QObject* watched, QEvent* event);
	void (*timerEvent)(VirtualQStatusBar* self, QTimerEvent* event);
	void (*childEvent)(VirtualQStatusBar* self, QChildEvent* event);
	void (*customEvent)(VirtualQStatusBar* self, QEvent* event);
	void (*connectNotify)(VirtualQStatusBar* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQStatusBar* self, QMetaMethod* signal);
}QStatusBar_VTable;

const QStatusBar_VTable* QStatusBar_vtbl(const VirtualQStatusBar* self);
void* QStatusBar_vdata(const VirtualQStatusBar* self);
void QStatusBar_setVdata(VirtualQStatusBar* self, void* vdata);

VirtualQStatusBar* QStatusBar_new(const QStatusBar_VTable* vtbl, void* vdata, QWidget* parent);
VirtualQStatusBar* QStatusBar_new2(const QStatusBar_VTable* vtbl, void* vdata);

void QStatusBar_virtbase(QStatusBar* src, QWidget** outptr_QWidget);
QMetaObject* QStatusBar_metaObject(const QStatusBar* self);
void* QStatusBar_metacast(QStatusBar* self, const char* param1);
int QStatusBar_metacall(QStatusBar* self, int param1, int param2, void** param3);
struct miqt_string QStatusBar_tr(const char* s);
struct miqt_string QStatusBar_trUtf8(const char* s);
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
void QStatusBar_connect_messageChanged(VirtualQStatusBar* self, intptr_t slot, void (*callback)(intptr_t, struct miqt_string), void (*release)(intptr_t));
void QStatusBar_showEvent(QStatusBar* self, QShowEvent* param1);
void QStatusBar_paintEvent(QStatusBar* self, QPaintEvent* param1);
void QStatusBar_resizeEvent(QStatusBar* self, QResizeEvent* param1);
bool QStatusBar_event(QStatusBar* self, QEvent* param1);
struct miqt_string QStatusBar_tr2(const char* s, const char* c);
struct miqt_string QStatusBar_tr3(const char* s, const char* c, int n);
struct miqt_string QStatusBar_trUtf82(const char* s, const char* c);
struct miqt_string QStatusBar_trUtf83(const char* s, const char* c, int n);
void QStatusBar_addWidget2(QStatusBar* self, QWidget* widget, int stretch);
int QStatusBar_insertWidget3(QStatusBar* self, int index, QWidget* widget, int stretch);
void QStatusBar_addPermanentWidget2(QStatusBar* self, QWidget* widget, int stretch);
int QStatusBar_insertPermanentWidget3(QStatusBar* self, int index, QWidget* widget, int stretch);
void QStatusBar_showMessage2(QStatusBar* self, struct miqt_string text, int timeout);

QMetaObject* QStatusBar_virtualbase_metaObject(const VirtualQStatusBar* self);
void* QStatusBar_virtualbase_metacast(VirtualQStatusBar* self, const char* param1);
int QStatusBar_virtualbase_metacall(VirtualQStatusBar* self, int param1, int param2, void** param3);
void QStatusBar_virtualbase_showEvent(VirtualQStatusBar* self, QShowEvent* param1);
void QStatusBar_virtualbase_paintEvent(VirtualQStatusBar* self, QPaintEvent* param1);
void QStatusBar_virtualbase_resizeEvent(VirtualQStatusBar* self, QResizeEvent* param1);
bool QStatusBar_virtualbase_event(VirtualQStatusBar* self, QEvent* param1);
int QStatusBar_virtualbase_devType(const VirtualQStatusBar* self);
void QStatusBar_virtualbase_setVisible(VirtualQStatusBar* self, bool visible);
QSize* QStatusBar_virtualbase_sizeHint(const VirtualQStatusBar* self);
QSize* QStatusBar_virtualbase_minimumSizeHint(const VirtualQStatusBar* self);
int QStatusBar_virtualbase_heightForWidth(const VirtualQStatusBar* self, int param1);
bool QStatusBar_virtualbase_hasHeightForWidth(const VirtualQStatusBar* self);
QPaintEngine* QStatusBar_virtualbase_paintEngine(const VirtualQStatusBar* self);
void QStatusBar_virtualbase_mousePressEvent(VirtualQStatusBar* self, QMouseEvent* event);
void QStatusBar_virtualbase_mouseReleaseEvent(VirtualQStatusBar* self, QMouseEvent* event);
void QStatusBar_virtualbase_mouseDoubleClickEvent(VirtualQStatusBar* self, QMouseEvent* event);
void QStatusBar_virtualbase_mouseMoveEvent(VirtualQStatusBar* self, QMouseEvent* event);
void QStatusBar_virtualbase_wheelEvent(VirtualQStatusBar* self, QWheelEvent* event);
void QStatusBar_virtualbase_keyPressEvent(VirtualQStatusBar* self, QKeyEvent* event);
void QStatusBar_virtualbase_keyReleaseEvent(VirtualQStatusBar* self, QKeyEvent* event);
void QStatusBar_virtualbase_focusInEvent(VirtualQStatusBar* self, QFocusEvent* event);
void QStatusBar_virtualbase_focusOutEvent(VirtualQStatusBar* self, QFocusEvent* event);
void QStatusBar_virtualbase_enterEvent(VirtualQStatusBar* self, QEvent* event);
void QStatusBar_virtualbase_leaveEvent(VirtualQStatusBar* self, QEvent* event);
void QStatusBar_virtualbase_moveEvent(VirtualQStatusBar* self, QMoveEvent* event);
void QStatusBar_virtualbase_closeEvent(VirtualQStatusBar* self, QCloseEvent* event);
void QStatusBar_virtualbase_contextMenuEvent(VirtualQStatusBar* self, QContextMenuEvent* event);
void QStatusBar_virtualbase_tabletEvent(VirtualQStatusBar* self, QTabletEvent* event);
void QStatusBar_virtualbase_actionEvent(VirtualQStatusBar* self, QActionEvent* event);
void QStatusBar_virtualbase_dragEnterEvent(VirtualQStatusBar* self, QDragEnterEvent* event);
void QStatusBar_virtualbase_dragMoveEvent(VirtualQStatusBar* self, QDragMoveEvent* event);
void QStatusBar_virtualbase_dragLeaveEvent(VirtualQStatusBar* self, QDragLeaveEvent* event);
void QStatusBar_virtualbase_dropEvent(VirtualQStatusBar* self, QDropEvent* event);
void QStatusBar_virtualbase_hideEvent(VirtualQStatusBar* self, QHideEvent* event);
bool QStatusBar_virtualbase_nativeEvent(VirtualQStatusBar* self, struct miqt_string eventType, void* message, long* result);
void QStatusBar_virtualbase_changeEvent(VirtualQStatusBar* self, QEvent* param1);
int QStatusBar_virtualbase_metric(const VirtualQStatusBar* self, int param1);
void QStatusBar_virtualbase_initPainter(const VirtualQStatusBar* self, QPainter* painter);
QPaintDevice* QStatusBar_virtualbase_redirected(const VirtualQStatusBar* self, QPoint* offset);
QPainter* QStatusBar_virtualbase_sharedPainter(const VirtualQStatusBar* self);
void QStatusBar_virtualbase_inputMethodEvent(VirtualQStatusBar* self, QInputMethodEvent* param1);
QVariant* QStatusBar_virtualbase_inputMethodQuery(const VirtualQStatusBar* self, int param1);
bool QStatusBar_virtualbase_focusNextPrevChild(VirtualQStatusBar* self, bool next);
bool QStatusBar_virtualbase_eventFilter(VirtualQStatusBar* self, QObject* watched, QEvent* event);
void QStatusBar_virtualbase_timerEvent(VirtualQStatusBar* self, QTimerEvent* event);
void QStatusBar_virtualbase_childEvent(VirtualQStatusBar* self, QChildEvent* event);
void QStatusBar_virtualbase_customEvent(VirtualQStatusBar* self, QEvent* event);
void QStatusBar_virtualbase_connectNotify(VirtualQStatusBar* self, QMetaMethod* signal);
void QStatusBar_virtualbase_disconnectNotify(VirtualQStatusBar* self, QMetaMethod* signal);

void QStatusBar_protectedbase_reformat(VirtualQStatusBar* self);
void QStatusBar_protectedbase_hideOrShow(VirtualQStatusBar* self);
void QStatusBar_protectedbase_updateMicroFocus(VirtualQStatusBar* self);
void QStatusBar_protectedbase_create(VirtualQStatusBar* self);
void QStatusBar_protectedbase_destroy(VirtualQStatusBar* self);
bool QStatusBar_protectedbase_focusNextChild(VirtualQStatusBar* self);
bool QStatusBar_protectedbase_focusPreviousChild(VirtualQStatusBar* self);
QObject* QStatusBar_protectedbase_sender(const VirtualQStatusBar* self);
int QStatusBar_protectedbase_senderSignalIndex(const VirtualQStatusBar* self);
int QStatusBar_protectedbase_receivers(const VirtualQStatusBar* self, const char* signal);
bool QStatusBar_protectedbase_isSignalConnected(const VirtualQStatusBar* self, QMetaMethod* signal);

const QMetaObject* QStatusBar_staticMetaObject();
void QStatusBar_delete(QStatusBar* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
