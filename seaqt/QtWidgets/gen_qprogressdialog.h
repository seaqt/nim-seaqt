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

typedef struct VirtualQProgressDialog VirtualQProgressDialog;
typedef struct QProgressDialog_VTable{
	void (*destructor)(VirtualQProgressDialog* self);
	QMetaObject* (*metaObject)(const VirtualQProgressDialog* self);
	void* (*metacast)(VirtualQProgressDialog* self, const char* param1);
	int (*metacall)(VirtualQProgressDialog* self, int param1, int param2, void** param3);
	QSize* (*sizeHint)(const VirtualQProgressDialog* self);
	void (*resizeEvent)(VirtualQProgressDialog* self, QResizeEvent* event);
	void (*closeEvent)(VirtualQProgressDialog* self, QCloseEvent* event);
	void (*changeEvent)(VirtualQProgressDialog* self, QEvent* event);
	void (*showEvent)(VirtualQProgressDialog* self, QShowEvent* event);
	void (*setVisible)(VirtualQProgressDialog* self, bool visible);
	QSize* (*minimumSizeHint)(const VirtualQProgressDialog* self);
	void (*open)(VirtualQProgressDialog* self);
	int (*exec)(VirtualQProgressDialog* self);
	void (*done)(VirtualQProgressDialog* self, int param1);
	void (*accept)(VirtualQProgressDialog* self);
	void (*reject)(VirtualQProgressDialog* self);
	void (*keyPressEvent)(VirtualQProgressDialog* self, QKeyEvent* param1);
	void (*contextMenuEvent)(VirtualQProgressDialog* self, QContextMenuEvent* param1);
	bool (*eventFilter)(VirtualQProgressDialog* self, QObject* param1, QEvent* param2);
	int (*devType)(const VirtualQProgressDialog* self);
	int (*heightForWidth)(const VirtualQProgressDialog* self, int param1);
	bool (*hasHeightForWidth)(const VirtualQProgressDialog* self);
	QPaintEngine* (*paintEngine)(const VirtualQProgressDialog* self);
	bool (*event)(VirtualQProgressDialog* self, QEvent* event);
	void (*mousePressEvent)(VirtualQProgressDialog* self, QMouseEvent* event);
	void (*mouseReleaseEvent)(VirtualQProgressDialog* self, QMouseEvent* event);
	void (*mouseDoubleClickEvent)(VirtualQProgressDialog* self, QMouseEvent* event);
	void (*mouseMoveEvent)(VirtualQProgressDialog* self, QMouseEvent* event);
	void (*wheelEvent)(VirtualQProgressDialog* self, QWheelEvent* event);
	void (*keyReleaseEvent)(VirtualQProgressDialog* self, QKeyEvent* event);
	void (*focusInEvent)(VirtualQProgressDialog* self, QFocusEvent* event);
	void (*focusOutEvent)(VirtualQProgressDialog* self, QFocusEvent* event);
	void (*enterEvent)(VirtualQProgressDialog* self, QEnterEvent* event);
	void (*leaveEvent)(VirtualQProgressDialog* self, QEvent* event);
	void (*paintEvent)(VirtualQProgressDialog* self, QPaintEvent* event);
	void (*moveEvent)(VirtualQProgressDialog* self, QMoveEvent* event);
	void (*tabletEvent)(VirtualQProgressDialog* self, QTabletEvent* event);
	void (*actionEvent)(VirtualQProgressDialog* self, QActionEvent* event);
	void (*dragEnterEvent)(VirtualQProgressDialog* self, QDragEnterEvent* event);
	void (*dragMoveEvent)(VirtualQProgressDialog* self, QDragMoveEvent* event);
	void (*dragLeaveEvent)(VirtualQProgressDialog* self, QDragLeaveEvent* event);
	void (*dropEvent)(VirtualQProgressDialog* self, QDropEvent* event);
	void (*hideEvent)(VirtualQProgressDialog* self, QHideEvent* event);
	bool (*nativeEvent)(VirtualQProgressDialog* self, struct miqt_string eventType, void* message, intptr_t* result);
	int (*metric)(const VirtualQProgressDialog* self, int param1);
	void (*initPainter)(const VirtualQProgressDialog* self, QPainter* painter);
	QPaintDevice* (*redirected)(const VirtualQProgressDialog* self, QPoint* offset);
	QPainter* (*sharedPainter)(const VirtualQProgressDialog* self);
	void (*inputMethodEvent)(VirtualQProgressDialog* self, QInputMethodEvent* param1);
	QVariant* (*inputMethodQuery)(const VirtualQProgressDialog* self, int param1);
	bool (*focusNextPrevChild)(VirtualQProgressDialog* self, bool next);
	void (*timerEvent)(VirtualQProgressDialog* self, QTimerEvent* event);
	void (*childEvent)(VirtualQProgressDialog* self, QChildEvent* event);
	void (*customEvent)(VirtualQProgressDialog* self, QEvent* event);
	void (*connectNotify)(VirtualQProgressDialog* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQProgressDialog* self, QMetaMethod* signal);
}QProgressDialog_VTable;

const QProgressDialog_VTable* QProgressDialog_vtbl(const VirtualQProgressDialog* self);
void* QProgressDialog_vdata(const VirtualQProgressDialog* self);
void QProgressDialog_setVdata(VirtualQProgressDialog* self, void* vdata);

VirtualQProgressDialog* QProgressDialog_new(const QProgressDialog_VTable* vtbl, void* vdata, QWidget* parent);
VirtualQProgressDialog* QProgressDialog_new2(const QProgressDialog_VTable* vtbl, void* vdata);
VirtualQProgressDialog* QProgressDialog_new3(const QProgressDialog_VTable* vtbl, void* vdata, struct miqt_string labelText, struct miqt_string cancelButtonText, int minimum, int maximum);
VirtualQProgressDialog* QProgressDialog_new4(const QProgressDialog_VTable* vtbl, void* vdata, QWidget* parent, int flags);
VirtualQProgressDialog* QProgressDialog_new5(const QProgressDialog_VTable* vtbl, void* vdata, struct miqt_string labelText, struct miqt_string cancelButtonText, int minimum, int maximum, QWidget* parent);
VirtualQProgressDialog* QProgressDialog_new6(const QProgressDialog_VTable* vtbl, void* vdata, struct miqt_string labelText, struct miqt_string cancelButtonText, int minimum, int maximum, QWidget* parent, int flags);

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
void QProgressDialog_connect_canceled(VirtualQProgressDialog* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QProgressDialog_resizeEvent(QProgressDialog* self, QResizeEvent* event);
void QProgressDialog_closeEvent(QProgressDialog* self, QCloseEvent* event);
void QProgressDialog_changeEvent(QProgressDialog* self, QEvent* event);
void QProgressDialog_showEvent(QProgressDialog* self, QShowEvent* event);
struct miqt_string QProgressDialog_tr2(const char* s, const char* c);
struct miqt_string QProgressDialog_tr3(const char* s, const char* c, int n);

QMetaObject* QProgressDialog_virtualbase_metaObject(const VirtualQProgressDialog* self);
void* QProgressDialog_virtualbase_metacast(VirtualQProgressDialog* self, const char* param1);
int QProgressDialog_virtualbase_metacall(VirtualQProgressDialog* self, int param1, int param2, void** param3);
QSize* QProgressDialog_virtualbase_sizeHint(const VirtualQProgressDialog* self);
void QProgressDialog_virtualbase_resizeEvent(VirtualQProgressDialog* self, QResizeEvent* event);
void QProgressDialog_virtualbase_closeEvent(VirtualQProgressDialog* self, QCloseEvent* event);
void QProgressDialog_virtualbase_changeEvent(VirtualQProgressDialog* self, QEvent* event);
void QProgressDialog_virtualbase_showEvent(VirtualQProgressDialog* self, QShowEvent* event);
void QProgressDialog_virtualbase_setVisible(VirtualQProgressDialog* self, bool visible);
QSize* QProgressDialog_virtualbase_minimumSizeHint(const VirtualQProgressDialog* self);
void QProgressDialog_virtualbase_open(VirtualQProgressDialog* self);
int QProgressDialog_virtualbase_exec(VirtualQProgressDialog* self);
void QProgressDialog_virtualbase_done(VirtualQProgressDialog* self, int param1);
void QProgressDialog_virtualbase_accept(VirtualQProgressDialog* self);
void QProgressDialog_virtualbase_reject(VirtualQProgressDialog* self);
void QProgressDialog_virtualbase_keyPressEvent(VirtualQProgressDialog* self, QKeyEvent* param1);
void QProgressDialog_virtualbase_contextMenuEvent(VirtualQProgressDialog* self, QContextMenuEvent* param1);
bool QProgressDialog_virtualbase_eventFilter(VirtualQProgressDialog* self, QObject* param1, QEvent* param2);
int QProgressDialog_virtualbase_devType(const VirtualQProgressDialog* self);
int QProgressDialog_virtualbase_heightForWidth(const VirtualQProgressDialog* self, int param1);
bool QProgressDialog_virtualbase_hasHeightForWidth(const VirtualQProgressDialog* self);
QPaintEngine* QProgressDialog_virtualbase_paintEngine(const VirtualQProgressDialog* self);
bool QProgressDialog_virtualbase_event(VirtualQProgressDialog* self, QEvent* event);
void QProgressDialog_virtualbase_mousePressEvent(VirtualQProgressDialog* self, QMouseEvent* event);
void QProgressDialog_virtualbase_mouseReleaseEvent(VirtualQProgressDialog* self, QMouseEvent* event);
void QProgressDialog_virtualbase_mouseDoubleClickEvent(VirtualQProgressDialog* self, QMouseEvent* event);
void QProgressDialog_virtualbase_mouseMoveEvent(VirtualQProgressDialog* self, QMouseEvent* event);
void QProgressDialog_virtualbase_wheelEvent(VirtualQProgressDialog* self, QWheelEvent* event);
void QProgressDialog_virtualbase_keyReleaseEvent(VirtualQProgressDialog* self, QKeyEvent* event);
void QProgressDialog_virtualbase_focusInEvent(VirtualQProgressDialog* self, QFocusEvent* event);
void QProgressDialog_virtualbase_focusOutEvent(VirtualQProgressDialog* self, QFocusEvent* event);
void QProgressDialog_virtualbase_enterEvent(VirtualQProgressDialog* self, QEnterEvent* event);
void QProgressDialog_virtualbase_leaveEvent(VirtualQProgressDialog* self, QEvent* event);
void QProgressDialog_virtualbase_paintEvent(VirtualQProgressDialog* self, QPaintEvent* event);
void QProgressDialog_virtualbase_moveEvent(VirtualQProgressDialog* self, QMoveEvent* event);
void QProgressDialog_virtualbase_tabletEvent(VirtualQProgressDialog* self, QTabletEvent* event);
void QProgressDialog_virtualbase_actionEvent(VirtualQProgressDialog* self, QActionEvent* event);
void QProgressDialog_virtualbase_dragEnterEvent(VirtualQProgressDialog* self, QDragEnterEvent* event);
void QProgressDialog_virtualbase_dragMoveEvent(VirtualQProgressDialog* self, QDragMoveEvent* event);
void QProgressDialog_virtualbase_dragLeaveEvent(VirtualQProgressDialog* self, QDragLeaveEvent* event);
void QProgressDialog_virtualbase_dropEvent(VirtualQProgressDialog* self, QDropEvent* event);
void QProgressDialog_virtualbase_hideEvent(VirtualQProgressDialog* self, QHideEvent* event);
bool QProgressDialog_virtualbase_nativeEvent(VirtualQProgressDialog* self, struct miqt_string eventType, void* message, intptr_t* result);
int QProgressDialog_virtualbase_metric(const VirtualQProgressDialog* self, int param1);
void QProgressDialog_virtualbase_initPainter(const VirtualQProgressDialog* self, QPainter* painter);
QPaintDevice* QProgressDialog_virtualbase_redirected(const VirtualQProgressDialog* self, QPoint* offset);
QPainter* QProgressDialog_virtualbase_sharedPainter(const VirtualQProgressDialog* self);
void QProgressDialog_virtualbase_inputMethodEvent(VirtualQProgressDialog* self, QInputMethodEvent* param1);
QVariant* QProgressDialog_virtualbase_inputMethodQuery(const VirtualQProgressDialog* self, int param1);
bool QProgressDialog_virtualbase_focusNextPrevChild(VirtualQProgressDialog* self, bool next);
void QProgressDialog_virtualbase_timerEvent(VirtualQProgressDialog* self, QTimerEvent* event);
void QProgressDialog_virtualbase_childEvent(VirtualQProgressDialog* self, QChildEvent* event);
void QProgressDialog_virtualbase_customEvent(VirtualQProgressDialog* self, QEvent* event);
void QProgressDialog_virtualbase_connectNotify(VirtualQProgressDialog* self, QMetaMethod* signal);
void QProgressDialog_virtualbase_disconnectNotify(VirtualQProgressDialog* self, QMetaMethod* signal);

void QProgressDialog_protectedbase_forceShow(VirtualQProgressDialog* self);
void QProgressDialog_protectedbase_adjustPosition(VirtualQProgressDialog* self, QWidget* param1);
void QProgressDialog_protectedbase_updateMicroFocus(VirtualQProgressDialog* self);
void QProgressDialog_protectedbase_create(VirtualQProgressDialog* self);
void QProgressDialog_protectedbase_destroy(VirtualQProgressDialog* self);
bool QProgressDialog_protectedbase_focusNextChild(VirtualQProgressDialog* self);
bool QProgressDialog_protectedbase_focusPreviousChild(VirtualQProgressDialog* self);
QObject* QProgressDialog_protectedbase_sender(const VirtualQProgressDialog* self);
int QProgressDialog_protectedbase_senderSignalIndex(const VirtualQProgressDialog* self);
int QProgressDialog_protectedbase_receivers(const VirtualQProgressDialog* self, const char* signal);
bool QProgressDialog_protectedbase_isSignalConnected(const VirtualQProgressDialog* self, QMetaMethod* signal);

const QMetaObject* QProgressDialog_staticMetaObject();
void QProgressDialog_delete(QProgressDialog* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
