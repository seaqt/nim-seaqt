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

struct QSplashScreen_VTable {
	void (*destructor)(struct QSplashScreen_VTable* vtbl, QSplashScreen* self);
	QMetaObject* (*metaObject)(struct QSplashScreen_VTable* vtbl, const QSplashScreen* self);
	void* (*metacast)(struct QSplashScreen_VTable* vtbl, QSplashScreen* self, const char* param1);
	int (*metacall)(struct QSplashScreen_VTable* vtbl, QSplashScreen* self, int param1, int param2, void** param3);
	bool (*event)(struct QSplashScreen_VTable* vtbl, QSplashScreen* self, QEvent* e);
	void (*drawContents)(struct QSplashScreen_VTable* vtbl, QSplashScreen* self, QPainter* painter);
	void (*mousePressEvent)(struct QSplashScreen_VTable* vtbl, QSplashScreen* self, QMouseEvent* param1);
	int (*devType)(struct QSplashScreen_VTable* vtbl, const QSplashScreen* self);
	void (*setVisible)(struct QSplashScreen_VTable* vtbl, QSplashScreen* self, bool visible);
	QSize* (*sizeHint)(struct QSplashScreen_VTable* vtbl, const QSplashScreen* self);
	QSize* (*minimumSizeHint)(struct QSplashScreen_VTable* vtbl, const QSplashScreen* self);
	int (*heightForWidth)(struct QSplashScreen_VTable* vtbl, const QSplashScreen* self, int param1);
	bool (*hasHeightForWidth)(struct QSplashScreen_VTable* vtbl, const QSplashScreen* self);
	QPaintEngine* (*paintEngine)(struct QSplashScreen_VTable* vtbl, const QSplashScreen* self);
	void (*mouseReleaseEvent)(struct QSplashScreen_VTable* vtbl, QSplashScreen* self, QMouseEvent* event);
	void (*mouseDoubleClickEvent)(struct QSplashScreen_VTable* vtbl, QSplashScreen* self, QMouseEvent* event);
	void (*mouseMoveEvent)(struct QSplashScreen_VTable* vtbl, QSplashScreen* self, QMouseEvent* event);
	void (*wheelEvent)(struct QSplashScreen_VTable* vtbl, QSplashScreen* self, QWheelEvent* event);
	void (*keyPressEvent)(struct QSplashScreen_VTable* vtbl, QSplashScreen* self, QKeyEvent* event);
	void (*keyReleaseEvent)(struct QSplashScreen_VTable* vtbl, QSplashScreen* self, QKeyEvent* event);
	void (*focusInEvent)(struct QSplashScreen_VTable* vtbl, QSplashScreen* self, QFocusEvent* event);
	void (*focusOutEvent)(struct QSplashScreen_VTable* vtbl, QSplashScreen* self, QFocusEvent* event);
	void (*enterEvent)(struct QSplashScreen_VTable* vtbl, QSplashScreen* self, QEnterEvent* event);
	void (*leaveEvent)(struct QSplashScreen_VTable* vtbl, QSplashScreen* self, QEvent* event);
	void (*paintEvent)(struct QSplashScreen_VTable* vtbl, QSplashScreen* self, QPaintEvent* event);
	void (*moveEvent)(struct QSplashScreen_VTable* vtbl, QSplashScreen* self, QMoveEvent* event);
	void (*resizeEvent)(struct QSplashScreen_VTable* vtbl, QSplashScreen* self, QResizeEvent* event);
	void (*closeEvent)(struct QSplashScreen_VTable* vtbl, QSplashScreen* self, QCloseEvent* event);
	void (*contextMenuEvent)(struct QSplashScreen_VTable* vtbl, QSplashScreen* self, QContextMenuEvent* event);
	void (*tabletEvent)(struct QSplashScreen_VTable* vtbl, QSplashScreen* self, QTabletEvent* event);
	void (*actionEvent)(struct QSplashScreen_VTable* vtbl, QSplashScreen* self, QActionEvent* event);
	void (*dragEnterEvent)(struct QSplashScreen_VTable* vtbl, QSplashScreen* self, QDragEnterEvent* event);
	void (*dragMoveEvent)(struct QSplashScreen_VTable* vtbl, QSplashScreen* self, QDragMoveEvent* event);
	void (*dragLeaveEvent)(struct QSplashScreen_VTable* vtbl, QSplashScreen* self, QDragLeaveEvent* event);
	void (*dropEvent)(struct QSplashScreen_VTable* vtbl, QSplashScreen* self, QDropEvent* event);
	void (*showEvent)(struct QSplashScreen_VTable* vtbl, QSplashScreen* self, QShowEvent* event);
	void (*hideEvent)(struct QSplashScreen_VTable* vtbl, QSplashScreen* self, QHideEvent* event);
	bool (*nativeEvent)(struct QSplashScreen_VTable* vtbl, QSplashScreen* self, struct miqt_string eventType, void* message, intptr_t* result);
	void (*changeEvent)(struct QSplashScreen_VTable* vtbl, QSplashScreen* self, QEvent* param1);
	int (*metric)(struct QSplashScreen_VTable* vtbl, const QSplashScreen* self, int param1);
	void (*initPainter)(struct QSplashScreen_VTable* vtbl, const QSplashScreen* self, QPainter* painter);
	QPaintDevice* (*redirected)(struct QSplashScreen_VTable* vtbl, const QSplashScreen* self, QPoint* offset);
	QPainter* (*sharedPainter)(struct QSplashScreen_VTable* vtbl, const QSplashScreen* self);
	void (*inputMethodEvent)(struct QSplashScreen_VTable* vtbl, QSplashScreen* self, QInputMethodEvent* param1);
	QVariant* (*inputMethodQuery)(struct QSplashScreen_VTable* vtbl, const QSplashScreen* self, int param1);
	bool (*focusNextPrevChild)(struct QSplashScreen_VTable* vtbl, QSplashScreen* self, bool next);
	bool (*eventFilter)(struct QSplashScreen_VTable* vtbl, QSplashScreen* self, QObject* watched, QEvent* event);
	void (*timerEvent)(struct QSplashScreen_VTable* vtbl, QSplashScreen* self, QTimerEvent* event);
	void (*childEvent)(struct QSplashScreen_VTable* vtbl, QSplashScreen* self, QChildEvent* event);
	void (*customEvent)(struct QSplashScreen_VTable* vtbl, QSplashScreen* self, QEvent* event);
	void (*connectNotify)(struct QSplashScreen_VTable* vtbl, QSplashScreen* self, QMetaMethod* signal);
	void (*disconnectNotify)(struct QSplashScreen_VTable* vtbl, QSplashScreen* self, QMetaMethod* signal);
};
QSplashScreen* QSplashScreen_new(struct QSplashScreen_VTable* vtbl);
QSplashScreen* QSplashScreen_new2(struct QSplashScreen_VTable* vtbl, QScreen* screen);
QSplashScreen* QSplashScreen_new3(struct QSplashScreen_VTable* vtbl, QPixmap* pixmap);
QSplashScreen* QSplashScreen_new4(struct QSplashScreen_VTable* vtbl, QPixmap* pixmap, int f);
QSplashScreen* QSplashScreen_new5(struct QSplashScreen_VTable* vtbl, QScreen* screen, QPixmap* pixmap);
QSplashScreen* QSplashScreen_new6(struct QSplashScreen_VTable* vtbl, QScreen* screen, QPixmap* pixmap, int f);
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
void QSplashScreen_connect_messageChanged(QSplashScreen* self, intptr_t slot, void (*callback)(intptr_t, struct miqt_string), void (*release)(intptr_t));
bool QSplashScreen_event(QSplashScreen* self, QEvent* e);
void QSplashScreen_drawContents(QSplashScreen* self, QPainter* painter);
void QSplashScreen_mousePressEvent(QSplashScreen* self, QMouseEvent* param1);
struct miqt_string QSplashScreen_tr2(const char* s, const char* c);
struct miqt_string QSplashScreen_tr3(const char* s, const char* c, int n);
void QSplashScreen_showMessage2(QSplashScreen* self, struct miqt_string message, int alignment);
void QSplashScreen_showMessage3(QSplashScreen* self, struct miqt_string message, int alignment, QColor* color);
QMetaObject* QSplashScreen_virtualbase_metaObject(const void* self);
void* QSplashScreen_virtualbase_metacast(void* self, const char* param1);
int QSplashScreen_virtualbase_metacall(void* self, int param1, int param2, void** param3);
bool QSplashScreen_virtualbase_event(void* self, QEvent* e);
void QSplashScreen_virtualbase_drawContents(void* self, QPainter* painter);
void QSplashScreen_virtualbase_mousePressEvent(void* self, QMouseEvent* param1);
int QSplashScreen_virtualbase_devType(const void* self);
void QSplashScreen_virtualbase_setVisible(void* self, bool visible);
QSize* QSplashScreen_virtualbase_sizeHint(const void* self);
QSize* QSplashScreen_virtualbase_minimumSizeHint(const void* self);
int QSplashScreen_virtualbase_heightForWidth(const void* self, int param1);
bool QSplashScreen_virtualbase_hasHeightForWidth(const void* self);
QPaintEngine* QSplashScreen_virtualbase_paintEngine(const void* self);
void QSplashScreen_virtualbase_mouseReleaseEvent(void* self, QMouseEvent* event);
void QSplashScreen_virtualbase_mouseDoubleClickEvent(void* self, QMouseEvent* event);
void QSplashScreen_virtualbase_mouseMoveEvent(void* self, QMouseEvent* event);
void QSplashScreen_virtualbase_wheelEvent(void* self, QWheelEvent* event);
void QSplashScreen_virtualbase_keyPressEvent(void* self, QKeyEvent* event);
void QSplashScreen_virtualbase_keyReleaseEvent(void* self, QKeyEvent* event);
void QSplashScreen_virtualbase_focusInEvent(void* self, QFocusEvent* event);
void QSplashScreen_virtualbase_focusOutEvent(void* self, QFocusEvent* event);
void QSplashScreen_virtualbase_enterEvent(void* self, QEnterEvent* event);
void QSplashScreen_virtualbase_leaveEvent(void* self, QEvent* event);
void QSplashScreen_virtualbase_paintEvent(void* self, QPaintEvent* event);
void QSplashScreen_virtualbase_moveEvent(void* self, QMoveEvent* event);
void QSplashScreen_virtualbase_resizeEvent(void* self, QResizeEvent* event);
void QSplashScreen_virtualbase_closeEvent(void* self, QCloseEvent* event);
void QSplashScreen_virtualbase_contextMenuEvent(void* self, QContextMenuEvent* event);
void QSplashScreen_virtualbase_tabletEvent(void* self, QTabletEvent* event);
void QSplashScreen_virtualbase_actionEvent(void* self, QActionEvent* event);
void QSplashScreen_virtualbase_dragEnterEvent(void* self, QDragEnterEvent* event);
void QSplashScreen_virtualbase_dragMoveEvent(void* self, QDragMoveEvent* event);
void QSplashScreen_virtualbase_dragLeaveEvent(void* self, QDragLeaveEvent* event);
void QSplashScreen_virtualbase_dropEvent(void* self, QDropEvent* event);
void QSplashScreen_virtualbase_showEvent(void* self, QShowEvent* event);
void QSplashScreen_virtualbase_hideEvent(void* self, QHideEvent* event);
bool QSplashScreen_virtualbase_nativeEvent(void* self, struct miqt_string eventType, void* message, intptr_t* result);
void QSplashScreen_virtualbase_changeEvent(void* self, QEvent* param1);
int QSplashScreen_virtualbase_metric(const void* self, int param1);
void QSplashScreen_virtualbase_initPainter(const void* self, QPainter* painter);
QPaintDevice* QSplashScreen_virtualbase_redirected(const void* self, QPoint* offset);
QPainter* QSplashScreen_virtualbase_sharedPainter(const void* self);
void QSplashScreen_virtualbase_inputMethodEvent(void* self, QInputMethodEvent* param1);
QVariant* QSplashScreen_virtualbase_inputMethodQuery(const void* self, int param1);
bool QSplashScreen_virtualbase_focusNextPrevChild(void* self, bool next);
bool QSplashScreen_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);
void QSplashScreen_virtualbase_timerEvent(void* self, QTimerEvent* event);
void QSplashScreen_virtualbase_childEvent(void* self, QChildEvent* event);
void QSplashScreen_virtualbase_customEvent(void* self, QEvent* event);
void QSplashScreen_virtualbase_connectNotify(void* self, QMetaMethod* signal);
void QSplashScreen_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
void QSplashScreen_protectedbase_updateMicroFocus(bool* _dynamic_cast_ok, void* self);
void QSplashScreen_protectedbase_create(bool* _dynamic_cast_ok, void* self);
void QSplashScreen_protectedbase_destroy(bool* _dynamic_cast_ok, void* self);
bool QSplashScreen_protectedbase_focusNextChild(bool* _dynamic_cast_ok, void* self);
bool QSplashScreen_protectedbase_focusPreviousChild(bool* _dynamic_cast_ok, void* self);
QObject* QSplashScreen_protectedbase_sender(bool* _dynamic_cast_ok, const void* self);
int QSplashScreen_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self);
int QSplashScreen_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal);
bool QSplashScreen_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal);
const QMetaObject* QSplashScreen_staticMetaObject();
void QSplashScreen_delete(QSplashScreen* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
