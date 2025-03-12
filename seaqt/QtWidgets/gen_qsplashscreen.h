#pragma once
#ifndef SEAQT_QTWIDGETS_GEN_QSPLASHSCREEN_H
#define SEAQT_QTWIDGETS_GEN_QSPLASHSCREEN_H

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
class QColor;
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
class QPixmap;
class QPoint;
class QResizeEvent;
class QScreen;
class QShowEvent;
class QSize;
class QSplashScreen;
class QTabletEvent;
class QTimerEvent;
class QVariant;
class QWheelEvent;
class QWidget;
#else
typedef struct QActionEvent QActionEvent;
typedef struct QChildEvent QChildEvent;
typedef struct QCloseEvent QCloseEvent;
typedef struct QColor QColor;
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
typedef struct QPixmap QPixmap;
typedef struct QPoint QPoint;
typedef struct QResizeEvent QResizeEvent;
typedef struct QScreen QScreen;
typedef struct QShowEvent QShowEvent;
typedef struct QSize QSize;
typedef struct QSplashScreen QSplashScreen;
typedef struct QTabletEvent QTabletEvent;
typedef struct QTimerEvent QTimerEvent;
typedef struct QVariant QVariant;
typedef struct QWheelEvent QWheelEvent;
typedef struct QWidget QWidget;
#endif

typedef struct VirtualQSplashScreen VirtualQSplashScreen;
typedef struct QSplashScreen_VTable{
	void (*destructor)(VirtualQSplashScreen* self);
	QMetaObject* (*metaObject)(const VirtualQSplashScreen* self);
	void* (*metacast)(VirtualQSplashScreen* self, const char* param1);
	int (*metacall)(VirtualQSplashScreen* self, int param1, int param2, void** param3);
	bool (*event)(VirtualQSplashScreen* self, QEvent* e);
	void (*drawContents)(VirtualQSplashScreen* self, QPainter* painter);
	void (*mousePressEvent)(VirtualQSplashScreen* self, QMouseEvent* param1);
	int (*devType)(const VirtualQSplashScreen* self);
	void (*setVisible)(VirtualQSplashScreen* self, bool visible);
	QSize* (*sizeHint)(const VirtualQSplashScreen* self);
	QSize* (*minimumSizeHint)(const VirtualQSplashScreen* self);
	int (*heightForWidth)(const VirtualQSplashScreen* self, int param1);
	bool (*hasHeightForWidth)(const VirtualQSplashScreen* self);
	QPaintEngine* (*paintEngine)(const VirtualQSplashScreen* self);
	void (*mouseReleaseEvent)(VirtualQSplashScreen* self, QMouseEvent* event);
	void (*mouseDoubleClickEvent)(VirtualQSplashScreen* self, QMouseEvent* event);
	void (*mouseMoveEvent)(VirtualQSplashScreen* self, QMouseEvent* event);
	void (*wheelEvent)(VirtualQSplashScreen* self, QWheelEvent* event);
	void (*keyPressEvent)(VirtualQSplashScreen* self, QKeyEvent* event);
	void (*keyReleaseEvent)(VirtualQSplashScreen* self, QKeyEvent* event);
	void (*focusInEvent)(VirtualQSplashScreen* self, QFocusEvent* event);
	void (*focusOutEvent)(VirtualQSplashScreen* self, QFocusEvent* event);
	void (*enterEvent)(VirtualQSplashScreen* self, QEnterEvent* event);
	void (*leaveEvent)(VirtualQSplashScreen* self, QEvent* event);
	void (*paintEvent)(VirtualQSplashScreen* self, QPaintEvent* event);
	void (*moveEvent)(VirtualQSplashScreen* self, QMoveEvent* event);
	void (*resizeEvent)(VirtualQSplashScreen* self, QResizeEvent* event);
	void (*closeEvent)(VirtualQSplashScreen* self, QCloseEvent* event);
	void (*contextMenuEvent)(VirtualQSplashScreen* self, QContextMenuEvent* event);
	void (*tabletEvent)(VirtualQSplashScreen* self, QTabletEvent* event);
	void (*actionEvent)(VirtualQSplashScreen* self, QActionEvent* event);
	void (*dragEnterEvent)(VirtualQSplashScreen* self, QDragEnterEvent* event);
	void (*dragMoveEvent)(VirtualQSplashScreen* self, QDragMoveEvent* event);
	void (*dragLeaveEvent)(VirtualQSplashScreen* self, QDragLeaveEvent* event);
	void (*dropEvent)(VirtualQSplashScreen* self, QDropEvent* event);
	void (*showEvent)(VirtualQSplashScreen* self, QShowEvent* event);
	void (*hideEvent)(VirtualQSplashScreen* self, QHideEvent* event);
	bool (*nativeEvent)(VirtualQSplashScreen* self, struct miqt_string eventType, void* message, intptr_t* result);
	void (*changeEvent)(VirtualQSplashScreen* self, QEvent* param1);
	int (*metric)(const VirtualQSplashScreen* self, int param1);
	void (*initPainter)(const VirtualQSplashScreen* self, QPainter* painter);
	QPaintDevice* (*redirected)(const VirtualQSplashScreen* self, QPoint* offset);
	QPainter* (*sharedPainter)(const VirtualQSplashScreen* self);
	void (*inputMethodEvent)(VirtualQSplashScreen* self, QInputMethodEvent* param1);
	QVariant* (*inputMethodQuery)(const VirtualQSplashScreen* self, int param1);
	bool (*focusNextPrevChild)(VirtualQSplashScreen* self, bool next);
	bool (*eventFilter)(VirtualQSplashScreen* self, QObject* watched, QEvent* event);
	void (*timerEvent)(VirtualQSplashScreen* self, QTimerEvent* event);
	void (*childEvent)(VirtualQSplashScreen* self, QChildEvent* event);
	void (*customEvent)(VirtualQSplashScreen* self, QEvent* event);
	void (*connectNotify)(VirtualQSplashScreen* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQSplashScreen* self, QMetaMethod* signal);
}QSplashScreen_VTable;

const QSplashScreen_VTable* QSplashScreen_vtbl(const VirtualQSplashScreen* self);
void* QSplashScreen_vdata(const VirtualQSplashScreen* self);
void QSplashScreen_setVdata(VirtualQSplashScreen* self, void* vdata);

VirtualQSplashScreen* QSplashScreen_new(const QSplashScreen_VTable* vtbl, void* vdata);
VirtualQSplashScreen* QSplashScreen_new2(const QSplashScreen_VTable* vtbl, void* vdata, QScreen* screen);
VirtualQSplashScreen* QSplashScreen_new3(const QSplashScreen_VTable* vtbl, void* vdata, QPixmap* pixmap);
VirtualQSplashScreen* QSplashScreen_new4(const QSplashScreen_VTable* vtbl, void* vdata, QPixmap* pixmap, int f);
VirtualQSplashScreen* QSplashScreen_new5(const QSplashScreen_VTable* vtbl, void* vdata, QScreen* screen, QPixmap* pixmap);
VirtualQSplashScreen* QSplashScreen_new6(const QSplashScreen_VTable* vtbl, void* vdata, QScreen* screen, QPixmap* pixmap, int f);

void QSplashScreen_virtbase(QSplashScreen* src, QWidget** outptr_QWidget);
QMetaObject* QSplashScreen_metaObject(const QSplashScreen* self);
void* QSplashScreen_metacast(QSplashScreen* self, const char* param1);
int QSplashScreen_metacall(QSplashScreen* self, int param1, int param2, void** param3);
struct miqt_string QSplashScreen_tr(const char* s);
void QSplashScreen_setPixmap(QSplashScreen* self, QPixmap* pixmap);
QPixmap* QSplashScreen_pixmap(const QSplashScreen* self);
void QSplashScreen_finish(QSplashScreen* self, QWidget* w);
void QSplashScreen_repaint(QSplashScreen* self);
struct miqt_string QSplashScreen_message(const QSplashScreen* self);
void QSplashScreen_showMessage(QSplashScreen* self, struct miqt_string message);
void QSplashScreen_clearMessage(QSplashScreen* self);
void QSplashScreen_messageChanged(QSplashScreen* self, struct miqt_string message);
void QSplashScreen_connect_messageChanged(VirtualQSplashScreen* self, intptr_t slot, void (*callback)(intptr_t, struct miqt_string), void (*release)(intptr_t));
bool QSplashScreen_event(QSplashScreen* self, QEvent* e);
void QSplashScreen_drawContents(QSplashScreen* self, QPainter* painter);
void QSplashScreen_mousePressEvent(QSplashScreen* self, QMouseEvent* param1);
struct miqt_string QSplashScreen_tr2(const char* s, const char* c);
struct miqt_string QSplashScreen_tr3(const char* s, const char* c, int n);
void QSplashScreen_showMessage2(QSplashScreen* self, struct miqt_string message, int alignment);
void QSplashScreen_showMessage3(QSplashScreen* self, struct miqt_string message, int alignment, QColor* color);

QMetaObject* QSplashScreen_virtualbase_metaObject(const VirtualQSplashScreen* self);
void* QSplashScreen_virtualbase_metacast(VirtualQSplashScreen* self, const char* param1);
int QSplashScreen_virtualbase_metacall(VirtualQSplashScreen* self, int param1, int param2, void** param3);
bool QSplashScreen_virtualbase_event(VirtualQSplashScreen* self, QEvent* e);
void QSplashScreen_virtualbase_drawContents(VirtualQSplashScreen* self, QPainter* painter);
void QSplashScreen_virtualbase_mousePressEvent(VirtualQSplashScreen* self, QMouseEvent* param1);
int QSplashScreen_virtualbase_devType(const VirtualQSplashScreen* self);
void QSplashScreen_virtualbase_setVisible(VirtualQSplashScreen* self, bool visible);
QSize* QSplashScreen_virtualbase_sizeHint(const VirtualQSplashScreen* self);
QSize* QSplashScreen_virtualbase_minimumSizeHint(const VirtualQSplashScreen* self);
int QSplashScreen_virtualbase_heightForWidth(const VirtualQSplashScreen* self, int param1);
bool QSplashScreen_virtualbase_hasHeightForWidth(const VirtualQSplashScreen* self);
QPaintEngine* QSplashScreen_virtualbase_paintEngine(const VirtualQSplashScreen* self);
void QSplashScreen_virtualbase_mouseReleaseEvent(VirtualQSplashScreen* self, QMouseEvent* event);
void QSplashScreen_virtualbase_mouseDoubleClickEvent(VirtualQSplashScreen* self, QMouseEvent* event);
void QSplashScreen_virtualbase_mouseMoveEvent(VirtualQSplashScreen* self, QMouseEvent* event);
void QSplashScreen_virtualbase_wheelEvent(VirtualQSplashScreen* self, QWheelEvent* event);
void QSplashScreen_virtualbase_keyPressEvent(VirtualQSplashScreen* self, QKeyEvent* event);
void QSplashScreen_virtualbase_keyReleaseEvent(VirtualQSplashScreen* self, QKeyEvent* event);
void QSplashScreen_virtualbase_focusInEvent(VirtualQSplashScreen* self, QFocusEvent* event);
void QSplashScreen_virtualbase_focusOutEvent(VirtualQSplashScreen* self, QFocusEvent* event);
void QSplashScreen_virtualbase_enterEvent(VirtualQSplashScreen* self, QEnterEvent* event);
void QSplashScreen_virtualbase_leaveEvent(VirtualQSplashScreen* self, QEvent* event);
void QSplashScreen_virtualbase_paintEvent(VirtualQSplashScreen* self, QPaintEvent* event);
void QSplashScreen_virtualbase_moveEvent(VirtualQSplashScreen* self, QMoveEvent* event);
void QSplashScreen_virtualbase_resizeEvent(VirtualQSplashScreen* self, QResizeEvent* event);
void QSplashScreen_virtualbase_closeEvent(VirtualQSplashScreen* self, QCloseEvent* event);
void QSplashScreen_virtualbase_contextMenuEvent(VirtualQSplashScreen* self, QContextMenuEvent* event);
void QSplashScreen_virtualbase_tabletEvent(VirtualQSplashScreen* self, QTabletEvent* event);
void QSplashScreen_virtualbase_actionEvent(VirtualQSplashScreen* self, QActionEvent* event);
void QSplashScreen_virtualbase_dragEnterEvent(VirtualQSplashScreen* self, QDragEnterEvent* event);
void QSplashScreen_virtualbase_dragMoveEvent(VirtualQSplashScreen* self, QDragMoveEvent* event);
void QSplashScreen_virtualbase_dragLeaveEvent(VirtualQSplashScreen* self, QDragLeaveEvent* event);
void QSplashScreen_virtualbase_dropEvent(VirtualQSplashScreen* self, QDropEvent* event);
void QSplashScreen_virtualbase_showEvent(VirtualQSplashScreen* self, QShowEvent* event);
void QSplashScreen_virtualbase_hideEvent(VirtualQSplashScreen* self, QHideEvent* event);
bool QSplashScreen_virtualbase_nativeEvent(VirtualQSplashScreen* self, struct miqt_string eventType, void* message, intptr_t* result);
void QSplashScreen_virtualbase_changeEvent(VirtualQSplashScreen* self, QEvent* param1);
int QSplashScreen_virtualbase_metric(const VirtualQSplashScreen* self, int param1);
void QSplashScreen_virtualbase_initPainter(const VirtualQSplashScreen* self, QPainter* painter);
QPaintDevice* QSplashScreen_virtualbase_redirected(const VirtualQSplashScreen* self, QPoint* offset);
QPainter* QSplashScreen_virtualbase_sharedPainter(const VirtualQSplashScreen* self);
void QSplashScreen_virtualbase_inputMethodEvent(VirtualQSplashScreen* self, QInputMethodEvent* param1);
QVariant* QSplashScreen_virtualbase_inputMethodQuery(const VirtualQSplashScreen* self, int param1);
bool QSplashScreen_virtualbase_focusNextPrevChild(VirtualQSplashScreen* self, bool next);
bool QSplashScreen_virtualbase_eventFilter(VirtualQSplashScreen* self, QObject* watched, QEvent* event);
void QSplashScreen_virtualbase_timerEvent(VirtualQSplashScreen* self, QTimerEvent* event);
void QSplashScreen_virtualbase_childEvent(VirtualQSplashScreen* self, QChildEvent* event);
void QSplashScreen_virtualbase_customEvent(VirtualQSplashScreen* self, QEvent* event);
void QSplashScreen_virtualbase_connectNotify(VirtualQSplashScreen* self, QMetaMethod* signal);
void QSplashScreen_virtualbase_disconnectNotify(VirtualQSplashScreen* self, QMetaMethod* signal);

void QSplashScreen_protectedbase_updateMicroFocus(VirtualQSplashScreen* self);
void QSplashScreen_protectedbase_create(VirtualQSplashScreen* self);
void QSplashScreen_protectedbase_destroy(VirtualQSplashScreen* self);
bool QSplashScreen_protectedbase_focusNextChild(VirtualQSplashScreen* self);
bool QSplashScreen_protectedbase_focusPreviousChild(VirtualQSplashScreen* self);
QObject* QSplashScreen_protectedbase_sender(const VirtualQSplashScreen* self);
int QSplashScreen_protectedbase_senderSignalIndex(const VirtualQSplashScreen* self);
int QSplashScreen_protectedbase_receivers(const VirtualQSplashScreen* self, const char* signal);
bool QSplashScreen_protectedbase_isSignalConnected(const VirtualQSplashScreen* self, QMetaMethod* signal);

const QMetaObject* QSplashScreen_staticMetaObject();
void QSplashScreen_delete(QSplashScreen* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
