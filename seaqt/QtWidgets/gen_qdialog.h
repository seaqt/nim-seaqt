#pragma once
#ifndef SEAQT_QTWIDGETS_GEN_QDIALOG_H
#define SEAQT_QTWIDGETS_GEN_QDIALOG_H

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
typedef struct QTabletEvent QTabletEvent;
typedef struct QTimerEvent QTimerEvent;
typedef struct QVariant QVariant;
typedef struct QWheelEvent QWheelEvent;
typedef struct QWidget QWidget;
#endif

typedef struct VirtualQDialog VirtualQDialog;
typedef struct QDialog_VTable{
	void (*destructor)(VirtualQDialog* self);
	QMetaObject* (*metaObject)(const VirtualQDialog* self);
	void* (*metacast)(VirtualQDialog* self, const char* param1);
	int (*metacall)(VirtualQDialog* self, int param1, int param2, void** param3);
	void (*setVisible)(VirtualQDialog* self, bool visible);
	QSize* (*sizeHint)(const VirtualQDialog* self);
	QSize* (*minimumSizeHint)(const VirtualQDialog* self);
	void (*open)(VirtualQDialog* self);
	int (*exec)(VirtualQDialog* self);
	void (*done)(VirtualQDialog* self, int param1);
	void (*accept)(VirtualQDialog* self);
	void (*reject)(VirtualQDialog* self);
	void (*keyPressEvent)(VirtualQDialog* self, QKeyEvent* param1);
	void (*closeEvent)(VirtualQDialog* self, QCloseEvent* param1);
	void (*showEvent)(VirtualQDialog* self, QShowEvent* param1);
	void (*resizeEvent)(VirtualQDialog* self, QResizeEvent* param1);
	void (*contextMenuEvent)(VirtualQDialog* self, QContextMenuEvent* param1);
	bool (*eventFilter)(VirtualQDialog* self, QObject* param1, QEvent* param2);
	int (*devType)(const VirtualQDialog* self);
	int (*heightForWidth)(const VirtualQDialog* self, int param1);
	bool (*hasHeightForWidth)(const VirtualQDialog* self);
	QPaintEngine* (*paintEngine)(const VirtualQDialog* self);
	bool (*event)(VirtualQDialog* self, QEvent* event);
	void (*mousePressEvent)(VirtualQDialog* self, QMouseEvent* event);
	void (*mouseReleaseEvent)(VirtualQDialog* self, QMouseEvent* event);
	void (*mouseDoubleClickEvent)(VirtualQDialog* self, QMouseEvent* event);
	void (*mouseMoveEvent)(VirtualQDialog* self, QMouseEvent* event);
	void (*wheelEvent)(VirtualQDialog* self, QWheelEvent* event);
	void (*keyReleaseEvent)(VirtualQDialog* self, QKeyEvent* event);
	void (*focusInEvent)(VirtualQDialog* self, QFocusEvent* event);
	void (*focusOutEvent)(VirtualQDialog* self, QFocusEvent* event);
	void (*enterEvent)(VirtualQDialog* self, QEvent* event);
	void (*leaveEvent)(VirtualQDialog* self, QEvent* event);
	void (*paintEvent)(VirtualQDialog* self, QPaintEvent* event);
	void (*moveEvent)(VirtualQDialog* self, QMoveEvent* event);
	void (*tabletEvent)(VirtualQDialog* self, QTabletEvent* event);
	void (*actionEvent)(VirtualQDialog* self, QActionEvent* event);
	void (*dragEnterEvent)(VirtualQDialog* self, QDragEnterEvent* event);
	void (*dragMoveEvent)(VirtualQDialog* self, QDragMoveEvent* event);
	void (*dragLeaveEvent)(VirtualQDialog* self, QDragLeaveEvent* event);
	void (*dropEvent)(VirtualQDialog* self, QDropEvent* event);
	void (*hideEvent)(VirtualQDialog* self, QHideEvent* event);
	bool (*nativeEvent)(VirtualQDialog* self, struct miqt_string eventType, void* message, long* result);
	void (*changeEvent)(VirtualQDialog* self, QEvent* param1);
	int (*metric)(const VirtualQDialog* self, int param1);
	void (*initPainter)(const VirtualQDialog* self, QPainter* painter);
	QPaintDevice* (*redirected)(const VirtualQDialog* self, QPoint* offset);
	QPainter* (*sharedPainter)(const VirtualQDialog* self);
	void (*inputMethodEvent)(VirtualQDialog* self, QInputMethodEvent* param1);
	QVariant* (*inputMethodQuery)(const VirtualQDialog* self, int param1);
	bool (*focusNextPrevChild)(VirtualQDialog* self, bool next);
	void (*timerEvent)(VirtualQDialog* self, QTimerEvent* event);
	void (*childEvent)(VirtualQDialog* self, QChildEvent* event);
	void (*customEvent)(VirtualQDialog* self, QEvent* event);
	void (*connectNotify)(VirtualQDialog* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQDialog* self, QMetaMethod* signal);
}QDialog_VTable;

const QDialog_VTable* QDialog_vtbl(const VirtualQDialog* self);
void* QDialog_vdata(const VirtualQDialog* self);
void QDialog_setVdata(VirtualQDialog* self, void* vdata);

VirtualQDialog* QDialog_new(const QDialog_VTable* vtbl, void* vdata, QWidget* parent);
VirtualQDialog* QDialog_new2(const QDialog_VTable* vtbl, void* vdata);
VirtualQDialog* QDialog_new3(const QDialog_VTable* vtbl, void* vdata, QWidget* parent, int f);

void QDialog_virtbase(QDialog* src, QWidget** outptr_QWidget);
QMetaObject* QDialog_metaObject(const QDialog* self);
void* QDialog_metacast(QDialog* self, const char* param1);
int QDialog_metacall(QDialog* self, int param1, int param2, void** param3);
struct miqt_string QDialog_tr(const char* s);
struct miqt_string QDialog_trUtf8(const char* s);
int QDialog_result(const QDialog* self);
void QDialog_setVisible(QDialog* self, bool visible);
void QDialog_setOrientation(QDialog* self, int orientation);
int QDialog_orientation(const QDialog* self);
void QDialog_setExtension(QDialog* self, QWidget* extension);
QWidget* QDialog_extension(const QDialog* self);
QSize* QDialog_sizeHint(const QDialog* self);
QSize* QDialog_minimumSizeHint(const QDialog* self);
void QDialog_setSizeGripEnabled(QDialog* self, bool sizeGripEnabled);
bool QDialog_isSizeGripEnabled(const QDialog* self);
void QDialog_setModal(QDialog* self, bool modal);
void QDialog_setResult(QDialog* self, int r);
void QDialog_finished(QDialog* self, int result);
void QDialog_connect_finished(VirtualQDialog* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t));
void QDialog_accepted(QDialog* self);
void QDialog_connect_accepted(VirtualQDialog* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QDialog_rejected(QDialog* self);
void QDialog_connect_rejected(VirtualQDialog* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QDialog_open(QDialog* self);
int QDialog_exec(QDialog* self);
void QDialog_done(QDialog* self, int param1);
void QDialog_accept(QDialog* self);
void QDialog_reject(QDialog* self);
void QDialog_showExtension(QDialog* self, bool param1);
void QDialog_keyPressEvent(QDialog* self, QKeyEvent* param1);
void QDialog_closeEvent(QDialog* self, QCloseEvent* param1);
void QDialog_showEvent(QDialog* self, QShowEvent* param1);
void QDialog_resizeEvent(QDialog* self, QResizeEvent* param1);
void QDialog_contextMenuEvent(QDialog* self, QContextMenuEvent* param1);
bool QDialog_eventFilter(QDialog* self, QObject* param1, QEvent* param2);
struct miqt_string QDialog_tr2(const char* s, const char* c);
struct miqt_string QDialog_tr3(const char* s, const char* c, int n);
struct miqt_string QDialog_trUtf82(const char* s, const char* c);
struct miqt_string QDialog_trUtf83(const char* s, const char* c, int n);

QMetaObject* QDialog_virtualbase_metaObject(const VirtualQDialog* self);
void* QDialog_virtualbase_metacast(VirtualQDialog* self, const char* param1);
int QDialog_virtualbase_metacall(VirtualQDialog* self, int param1, int param2, void** param3);
void QDialog_virtualbase_setVisible(VirtualQDialog* self, bool visible);
QSize* QDialog_virtualbase_sizeHint(const VirtualQDialog* self);
QSize* QDialog_virtualbase_minimumSizeHint(const VirtualQDialog* self);
void QDialog_virtualbase_open(VirtualQDialog* self);
int QDialog_virtualbase_exec(VirtualQDialog* self);
void QDialog_virtualbase_done(VirtualQDialog* self, int param1);
void QDialog_virtualbase_accept(VirtualQDialog* self);
void QDialog_virtualbase_reject(VirtualQDialog* self);
void QDialog_virtualbase_keyPressEvent(VirtualQDialog* self, QKeyEvent* param1);
void QDialog_virtualbase_closeEvent(VirtualQDialog* self, QCloseEvent* param1);
void QDialog_virtualbase_showEvent(VirtualQDialog* self, QShowEvent* param1);
void QDialog_virtualbase_resizeEvent(VirtualQDialog* self, QResizeEvent* param1);
void QDialog_virtualbase_contextMenuEvent(VirtualQDialog* self, QContextMenuEvent* param1);
bool QDialog_virtualbase_eventFilter(VirtualQDialog* self, QObject* param1, QEvent* param2);
int QDialog_virtualbase_devType(const VirtualQDialog* self);
int QDialog_virtualbase_heightForWidth(const VirtualQDialog* self, int param1);
bool QDialog_virtualbase_hasHeightForWidth(const VirtualQDialog* self);
QPaintEngine* QDialog_virtualbase_paintEngine(const VirtualQDialog* self);
bool QDialog_virtualbase_event(VirtualQDialog* self, QEvent* event);
void QDialog_virtualbase_mousePressEvent(VirtualQDialog* self, QMouseEvent* event);
void QDialog_virtualbase_mouseReleaseEvent(VirtualQDialog* self, QMouseEvent* event);
void QDialog_virtualbase_mouseDoubleClickEvent(VirtualQDialog* self, QMouseEvent* event);
void QDialog_virtualbase_mouseMoveEvent(VirtualQDialog* self, QMouseEvent* event);
void QDialog_virtualbase_wheelEvent(VirtualQDialog* self, QWheelEvent* event);
void QDialog_virtualbase_keyReleaseEvent(VirtualQDialog* self, QKeyEvent* event);
void QDialog_virtualbase_focusInEvent(VirtualQDialog* self, QFocusEvent* event);
void QDialog_virtualbase_focusOutEvent(VirtualQDialog* self, QFocusEvent* event);
void QDialog_virtualbase_enterEvent(VirtualQDialog* self, QEvent* event);
void QDialog_virtualbase_leaveEvent(VirtualQDialog* self, QEvent* event);
void QDialog_virtualbase_paintEvent(VirtualQDialog* self, QPaintEvent* event);
void QDialog_virtualbase_moveEvent(VirtualQDialog* self, QMoveEvent* event);
void QDialog_virtualbase_tabletEvent(VirtualQDialog* self, QTabletEvent* event);
void QDialog_virtualbase_actionEvent(VirtualQDialog* self, QActionEvent* event);
void QDialog_virtualbase_dragEnterEvent(VirtualQDialog* self, QDragEnterEvent* event);
void QDialog_virtualbase_dragMoveEvent(VirtualQDialog* self, QDragMoveEvent* event);
void QDialog_virtualbase_dragLeaveEvent(VirtualQDialog* self, QDragLeaveEvent* event);
void QDialog_virtualbase_dropEvent(VirtualQDialog* self, QDropEvent* event);
void QDialog_virtualbase_hideEvent(VirtualQDialog* self, QHideEvent* event);
bool QDialog_virtualbase_nativeEvent(VirtualQDialog* self, struct miqt_string eventType, void* message, long* result);
void QDialog_virtualbase_changeEvent(VirtualQDialog* self, QEvent* param1);
int QDialog_virtualbase_metric(const VirtualQDialog* self, int param1);
void QDialog_virtualbase_initPainter(const VirtualQDialog* self, QPainter* painter);
QPaintDevice* QDialog_virtualbase_redirected(const VirtualQDialog* self, QPoint* offset);
QPainter* QDialog_virtualbase_sharedPainter(const VirtualQDialog* self);
void QDialog_virtualbase_inputMethodEvent(VirtualQDialog* self, QInputMethodEvent* param1);
QVariant* QDialog_virtualbase_inputMethodQuery(const VirtualQDialog* self, int param1);
bool QDialog_virtualbase_focusNextPrevChild(VirtualQDialog* self, bool next);
void QDialog_virtualbase_timerEvent(VirtualQDialog* self, QTimerEvent* event);
void QDialog_virtualbase_childEvent(VirtualQDialog* self, QChildEvent* event);
void QDialog_virtualbase_customEvent(VirtualQDialog* self, QEvent* event);
void QDialog_virtualbase_connectNotify(VirtualQDialog* self, QMetaMethod* signal);
void QDialog_virtualbase_disconnectNotify(VirtualQDialog* self, QMetaMethod* signal);

void QDialog_protectedbase_adjustPosition(VirtualQDialog* self, QWidget* param1);
void QDialog_protectedbase_updateMicroFocus(VirtualQDialog* self);
void QDialog_protectedbase_create(VirtualQDialog* self);
void QDialog_protectedbase_destroy(VirtualQDialog* self);
bool QDialog_protectedbase_focusNextChild(VirtualQDialog* self);
bool QDialog_protectedbase_focusPreviousChild(VirtualQDialog* self);
QObject* QDialog_protectedbase_sender(const VirtualQDialog* self);
int QDialog_protectedbase_senderSignalIndex(const VirtualQDialog* self);
int QDialog_protectedbase_receivers(const VirtualQDialog* self, const char* signal);
bool QDialog_protectedbase_isSignalConnected(const VirtualQDialog* self, QMetaMethod* signal);

const QMetaObject* QDialog_staticMetaObject();
void QDialog_delete(QDialog* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
