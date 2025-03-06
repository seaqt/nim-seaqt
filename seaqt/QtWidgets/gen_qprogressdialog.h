#pragma once
#ifndef SEAQT_QTWIDGETS_GEN_QPROGRESSDIALOG_H
#define SEAQT_QTWIDGETS_GEN_QPROGRESSDIALOG_H

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
class QDialog;
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
class QLabel;
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
class QProgressBar;
class QProgressDialog;
class QPushButton;
class QResizeEvent;
class QShowEvent;
class QSize;
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
typedef struct QDialog QDialog;
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
typedef struct QLabel QLabel;
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
typedef struct QProgressBar QProgressBar;
typedef struct QProgressDialog QProgressDialog;
typedef struct QPushButton QPushButton;
typedef struct QResizeEvent QResizeEvent;
typedef struct QShowEvent QShowEvent;
typedef struct QSize QSize;
typedef struct QTabletEvent QTabletEvent;
typedef struct QTimerEvent QTimerEvent;
typedef struct QVariant QVariant;
typedef struct QWheelEvent QWheelEvent;
typedef struct QWidget QWidget;
#endif

struct QProgressDialog_VTable {
	void (*destructor)(struct QProgressDialog_VTable* vtbl, QProgressDialog* self);
	QMetaObject* (*metaObject)(struct QProgressDialog_VTable* vtbl, const QProgressDialog* self);
	void* (*metacast)(struct QProgressDialog_VTable* vtbl, QProgressDialog* self, const char* param1);
	int (*metacall)(struct QProgressDialog_VTable* vtbl, QProgressDialog* self, int param1, int param2, void** param3);
	QSize* (*sizeHint)(struct QProgressDialog_VTable* vtbl, const QProgressDialog* self);
	void (*resizeEvent)(struct QProgressDialog_VTable* vtbl, QProgressDialog* self, QResizeEvent* event);
	void (*closeEvent)(struct QProgressDialog_VTable* vtbl, QProgressDialog* self, QCloseEvent* event);
	void (*changeEvent)(struct QProgressDialog_VTable* vtbl, QProgressDialog* self, QEvent* event);
	void (*showEvent)(struct QProgressDialog_VTable* vtbl, QProgressDialog* self, QShowEvent* event);
	void (*setVisible)(struct QProgressDialog_VTable* vtbl, QProgressDialog* self, bool visible);
	QSize* (*minimumSizeHint)(struct QProgressDialog_VTable* vtbl, const QProgressDialog* self);
	void (*open)(struct QProgressDialog_VTable* vtbl, QProgressDialog* self);
	int (*exec)(struct QProgressDialog_VTable* vtbl, QProgressDialog* self);
	void (*done)(struct QProgressDialog_VTable* vtbl, QProgressDialog* self, int param1);
	void (*accept)(struct QProgressDialog_VTable* vtbl, QProgressDialog* self);
	void (*reject)(struct QProgressDialog_VTable* vtbl, QProgressDialog* self);
	void (*keyPressEvent)(struct QProgressDialog_VTable* vtbl, QProgressDialog* self, QKeyEvent* param1);
	void (*contextMenuEvent)(struct QProgressDialog_VTable* vtbl, QProgressDialog* self, QContextMenuEvent* param1);
	bool (*eventFilter)(struct QProgressDialog_VTable* vtbl, QProgressDialog* self, QObject* param1, QEvent* param2);
	int (*devType)(struct QProgressDialog_VTable* vtbl, const QProgressDialog* self);
	int (*heightForWidth)(struct QProgressDialog_VTable* vtbl, const QProgressDialog* self, int param1);
	bool (*hasHeightForWidth)(struct QProgressDialog_VTable* vtbl, const QProgressDialog* self);
	QPaintEngine* (*paintEngine)(struct QProgressDialog_VTable* vtbl, const QProgressDialog* self);
	bool (*event)(struct QProgressDialog_VTable* vtbl, QProgressDialog* self, QEvent* event);
	void (*mousePressEvent)(struct QProgressDialog_VTable* vtbl, QProgressDialog* self, QMouseEvent* event);
	void (*mouseReleaseEvent)(struct QProgressDialog_VTable* vtbl, QProgressDialog* self, QMouseEvent* event);
	void (*mouseDoubleClickEvent)(struct QProgressDialog_VTable* vtbl, QProgressDialog* self, QMouseEvent* event);
	void (*mouseMoveEvent)(struct QProgressDialog_VTable* vtbl, QProgressDialog* self, QMouseEvent* event);
	void (*wheelEvent)(struct QProgressDialog_VTable* vtbl, QProgressDialog* self, QWheelEvent* event);
	void (*keyReleaseEvent)(struct QProgressDialog_VTable* vtbl, QProgressDialog* self, QKeyEvent* event);
	void (*focusInEvent)(struct QProgressDialog_VTable* vtbl, QProgressDialog* self, QFocusEvent* event);
	void (*focusOutEvent)(struct QProgressDialog_VTable* vtbl, QProgressDialog* self, QFocusEvent* event);
	void (*enterEvent)(struct QProgressDialog_VTable* vtbl, QProgressDialog* self, QEnterEvent* event);
	void (*leaveEvent)(struct QProgressDialog_VTable* vtbl, QProgressDialog* self, QEvent* event);
	void (*paintEvent)(struct QProgressDialog_VTable* vtbl, QProgressDialog* self, QPaintEvent* event);
	void (*moveEvent)(struct QProgressDialog_VTable* vtbl, QProgressDialog* self, QMoveEvent* event);
	void (*tabletEvent)(struct QProgressDialog_VTable* vtbl, QProgressDialog* self, QTabletEvent* event);
	void (*actionEvent)(struct QProgressDialog_VTable* vtbl, QProgressDialog* self, QActionEvent* event);
	void (*dragEnterEvent)(struct QProgressDialog_VTable* vtbl, QProgressDialog* self, QDragEnterEvent* event);
	void (*dragMoveEvent)(struct QProgressDialog_VTable* vtbl, QProgressDialog* self, QDragMoveEvent* event);
	void (*dragLeaveEvent)(struct QProgressDialog_VTable* vtbl, QProgressDialog* self, QDragLeaveEvent* event);
	void (*dropEvent)(struct QProgressDialog_VTable* vtbl, QProgressDialog* self, QDropEvent* event);
	void (*hideEvent)(struct QProgressDialog_VTable* vtbl, QProgressDialog* self, QHideEvent* event);
	bool (*nativeEvent)(struct QProgressDialog_VTable* vtbl, QProgressDialog* self, struct miqt_string eventType, void* message, intptr_t* result);
	int (*metric)(struct QProgressDialog_VTable* vtbl, const QProgressDialog* self, int param1);
	void (*initPainter)(struct QProgressDialog_VTable* vtbl, const QProgressDialog* self, QPainter* painter);
	QPaintDevice* (*redirected)(struct QProgressDialog_VTable* vtbl, const QProgressDialog* self, QPoint* offset);
	QPainter* (*sharedPainter)(struct QProgressDialog_VTable* vtbl, const QProgressDialog* self);
	void (*inputMethodEvent)(struct QProgressDialog_VTable* vtbl, QProgressDialog* self, QInputMethodEvent* param1);
	QVariant* (*inputMethodQuery)(struct QProgressDialog_VTable* vtbl, const QProgressDialog* self, int param1);
	bool (*focusNextPrevChild)(struct QProgressDialog_VTable* vtbl, QProgressDialog* self, bool next);
	void (*timerEvent)(struct QProgressDialog_VTable* vtbl, QProgressDialog* self, QTimerEvent* event);
	void (*childEvent)(struct QProgressDialog_VTable* vtbl, QProgressDialog* self, QChildEvent* event);
	void (*customEvent)(struct QProgressDialog_VTable* vtbl, QProgressDialog* self, QEvent* event);
	void (*connectNotify)(struct QProgressDialog_VTable* vtbl, QProgressDialog* self, QMetaMethod* signal);
	void (*disconnectNotify)(struct QProgressDialog_VTable* vtbl, QProgressDialog* self, QMetaMethod* signal);
};
QProgressDialog* QProgressDialog_new(struct QProgressDialog_VTable* vtbl, QWidget* parent);
QProgressDialog* QProgressDialog_new2(struct QProgressDialog_VTable* vtbl);
QProgressDialog* QProgressDialog_new3(struct QProgressDialog_VTable* vtbl, struct miqt_string labelText, struct miqt_string cancelButtonText, int minimum, int maximum);
QProgressDialog* QProgressDialog_new4(struct QProgressDialog_VTable* vtbl, QWidget* parent, int flags);
QProgressDialog* QProgressDialog_new5(struct QProgressDialog_VTable* vtbl, struct miqt_string labelText, struct miqt_string cancelButtonText, int minimum, int maximum, QWidget* parent);
QProgressDialog* QProgressDialog_new6(struct QProgressDialog_VTable* vtbl, struct miqt_string labelText, struct miqt_string cancelButtonText, int minimum, int maximum, QWidget* parent, int flags);
void QProgressDialog_virtbase(QProgressDialog* src, QDialog** outptr_QDialog);
QMetaObject* QProgressDialog_metaObject(const QProgressDialog* self);
void* QProgressDialog_metacast(QProgressDialog* self, const char* param1);
int QProgressDialog_metacall(QProgressDialog* self, int param1, int param2, void** param3);
struct miqt_string QProgressDialog_tr(const char* s);
void QProgressDialog_setLabel(QProgressDialog* self, QLabel* label);
void QProgressDialog_setCancelButton(QProgressDialog* self, QPushButton* button);
void QProgressDialog_setBar(QProgressDialog* self, QProgressBar* bar);
bool QProgressDialog_wasCanceled(const QProgressDialog* self);
int QProgressDialog_minimum(const QProgressDialog* self);
int QProgressDialog_maximum(const QProgressDialog* self);
int QProgressDialog_value(const QProgressDialog* self);
QSize* QProgressDialog_sizeHint(const QProgressDialog* self);
struct miqt_string QProgressDialog_labelText(const QProgressDialog* self);
int QProgressDialog_minimumDuration(const QProgressDialog* self);
void QProgressDialog_setAutoReset(QProgressDialog* self, bool reset);
bool QProgressDialog_autoReset(const QProgressDialog* self);
void QProgressDialog_setAutoClose(QProgressDialog* self, bool close);
bool QProgressDialog_autoClose(const QProgressDialog* self);
void QProgressDialog_cancel(QProgressDialog* self);
void QProgressDialog_reset(QProgressDialog* self);
void QProgressDialog_setMaximum(QProgressDialog* self, int maximum);
void QProgressDialog_setMinimum(QProgressDialog* self, int minimum);
void QProgressDialog_setRange(QProgressDialog* self, int minimum, int maximum);
void QProgressDialog_setValue(QProgressDialog* self, int progress);
void QProgressDialog_setLabelText(QProgressDialog* self, struct miqt_string text);
void QProgressDialog_setCancelButtonText(QProgressDialog* self, struct miqt_string text);
void QProgressDialog_setMinimumDuration(QProgressDialog* self, int ms);
void QProgressDialog_canceled(QProgressDialog* self);
void QProgressDialog_connect_canceled(QProgressDialog* self, intptr_t slot);
void QProgressDialog_resizeEvent(QProgressDialog* self, QResizeEvent* event);
void QProgressDialog_closeEvent(QProgressDialog* self, QCloseEvent* event);
void QProgressDialog_changeEvent(QProgressDialog* self, QEvent* event);
void QProgressDialog_showEvent(QProgressDialog* self, QShowEvent* event);
struct miqt_string QProgressDialog_tr2(const char* s, const char* c);
struct miqt_string QProgressDialog_tr3(const char* s, const char* c, int n);
QMetaObject* QProgressDialog_virtualbase_metaObject(const void* self);
void* QProgressDialog_virtualbase_metacast(void* self, const char* param1);
int QProgressDialog_virtualbase_metacall(void* self, int param1, int param2, void** param3);
QSize* QProgressDialog_virtualbase_sizeHint(const void* self);
void QProgressDialog_virtualbase_resizeEvent(void* self, QResizeEvent* event);
void QProgressDialog_virtualbase_closeEvent(void* self, QCloseEvent* event);
void QProgressDialog_virtualbase_changeEvent(void* self, QEvent* event);
void QProgressDialog_virtualbase_showEvent(void* self, QShowEvent* event);
void QProgressDialog_virtualbase_setVisible(void* self, bool visible);
QSize* QProgressDialog_virtualbase_minimumSizeHint(const void* self);
void QProgressDialog_virtualbase_open(void* self);
int QProgressDialog_virtualbase_exec(void* self);
void QProgressDialog_virtualbase_done(void* self, int param1);
void QProgressDialog_virtualbase_accept(void* self);
void QProgressDialog_virtualbase_reject(void* self);
void QProgressDialog_virtualbase_keyPressEvent(void* self, QKeyEvent* param1);
void QProgressDialog_virtualbase_contextMenuEvent(void* self, QContextMenuEvent* param1);
bool QProgressDialog_virtualbase_eventFilter(void* self, QObject* param1, QEvent* param2);
int QProgressDialog_virtualbase_devType(const void* self);
int QProgressDialog_virtualbase_heightForWidth(const void* self, int param1);
bool QProgressDialog_virtualbase_hasHeightForWidth(const void* self);
QPaintEngine* QProgressDialog_virtualbase_paintEngine(const void* self);
bool QProgressDialog_virtualbase_event(void* self, QEvent* event);
void QProgressDialog_virtualbase_mousePressEvent(void* self, QMouseEvent* event);
void QProgressDialog_virtualbase_mouseReleaseEvent(void* self, QMouseEvent* event);
void QProgressDialog_virtualbase_mouseDoubleClickEvent(void* self, QMouseEvent* event);
void QProgressDialog_virtualbase_mouseMoveEvent(void* self, QMouseEvent* event);
void QProgressDialog_virtualbase_wheelEvent(void* self, QWheelEvent* event);
void QProgressDialog_virtualbase_keyReleaseEvent(void* self, QKeyEvent* event);
void QProgressDialog_virtualbase_focusInEvent(void* self, QFocusEvent* event);
void QProgressDialog_virtualbase_focusOutEvent(void* self, QFocusEvent* event);
void QProgressDialog_virtualbase_enterEvent(void* self, QEnterEvent* event);
void QProgressDialog_virtualbase_leaveEvent(void* self, QEvent* event);
void QProgressDialog_virtualbase_paintEvent(void* self, QPaintEvent* event);
void QProgressDialog_virtualbase_moveEvent(void* self, QMoveEvent* event);
void QProgressDialog_virtualbase_tabletEvent(void* self, QTabletEvent* event);
void QProgressDialog_virtualbase_actionEvent(void* self, QActionEvent* event);
void QProgressDialog_virtualbase_dragEnterEvent(void* self, QDragEnterEvent* event);
void QProgressDialog_virtualbase_dragMoveEvent(void* self, QDragMoveEvent* event);
void QProgressDialog_virtualbase_dragLeaveEvent(void* self, QDragLeaveEvent* event);
void QProgressDialog_virtualbase_dropEvent(void* self, QDropEvent* event);
void QProgressDialog_virtualbase_hideEvent(void* self, QHideEvent* event);
bool QProgressDialog_virtualbase_nativeEvent(void* self, struct miqt_string eventType, void* message, intptr_t* result);
int QProgressDialog_virtualbase_metric(const void* self, int param1);
void QProgressDialog_virtualbase_initPainter(const void* self, QPainter* painter);
QPaintDevice* QProgressDialog_virtualbase_redirected(const void* self, QPoint* offset);
QPainter* QProgressDialog_virtualbase_sharedPainter(const void* self);
void QProgressDialog_virtualbase_inputMethodEvent(void* self, QInputMethodEvent* param1);
QVariant* QProgressDialog_virtualbase_inputMethodQuery(const void* self, int param1);
bool QProgressDialog_virtualbase_focusNextPrevChild(void* self, bool next);
void QProgressDialog_virtualbase_timerEvent(void* self, QTimerEvent* event);
void QProgressDialog_virtualbase_childEvent(void* self, QChildEvent* event);
void QProgressDialog_virtualbase_customEvent(void* self, QEvent* event);
void QProgressDialog_virtualbase_connectNotify(void* self, QMetaMethod* signal);
void QProgressDialog_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
void QProgressDialog_protectedbase_forceShow(bool* _dynamic_cast_ok, void* self);
void QProgressDialog_protectedbase_adjustPosition(bool* _dynamic_cast_ok, void* self, QWidget* param1);
void QProgressDialog_protectedbase_updateMicroFocus(bool* _dynamic_cast_ok, void* self);
void QProgressDialog_protectedbase_create(bool* _dynamic_cast_ok, void* self);
void QProgressDialog_protectedbase_destroy(bool* _dynamic_cast_ok, void* self);
bool QProgressDialog_protectedbase_focusNextChild(bool* _dynamic_cast_ok, void* self);
bool QProgressDialog_protectedbase_focusPreviousChild(bool* _dynamic_cast_ok, void* self);
QObject* QProgressDialog_protectedbase_sender(bool* _dynamic_cast_ok, const void* self);
int QProgressDialog_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self);
int QProgressDialog_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal);
bool QProgressDialog_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal);
const QMetaObject* QProgressDialog_staticMetaObject();
void QProgressDialog_delete(QProgressDialog* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
