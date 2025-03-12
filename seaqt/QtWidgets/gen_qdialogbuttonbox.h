#pragma once
#ifndef SEAQT_QTWIDGETS_GEN_QDIALOGBUTTONBOX_H
#define SEAQT_QTWIDGETS_GEN_QDIALOGBUTTONBOX_H

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
class QChildEvent;
class QCloseEvent;
class QContextMenuEvent;
class QDialogButtonBox;
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
typedef struct QAbstractButton QAbstractButton;
typedef struct QActionEvent QActionEvent;
typedef struct QChildEvent QChildEvent;
typedef struct QCloseEvent QCloseEvent;
typedef struct QContextMenuEvent QContextMenuEvent;
typedef struct QDialogButtonBox QDialogButtonBox;
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

typedef struct VirtualQDialogButtonBox VirtualQDialogButtonBox;
typedef struct QDialogButtonBox_VTable{
	void (*destructor)(VirtualQDialogButtonBox* self);
	QMetaObject* (*metaObject)(const VirtualQDialogButtonBox* self);
	void* (*metacast)(VirtualQDialogButtonBox* self, const char* param1);
	int (*metacall)(VirtualQDialogButtonBox* self, int param1, int param2, void** param3);
	void (*changeEvent)(VirtualQDialogButtonBox* self, QEvent* event);
	bool (*event)(VirtualQDialogButtonBox* self, QEvent* event);
	int (*devType)(const VirtualQDialogButtonBox* self);
	void (*setVisible)(VirtualQDialogButtonBox* self, bool visible);
	QSize* (*sizeHint)(const VirtualQDialogButtonBox* self);
	QSize* (*minimumSizeHint)(const VirtualQDialogButtonBox* self);
	int (*heightForWidth)(const VirtualQDialogButtonBox* self, int param1);
	bool (*hasHeightForWidth)(const VirtualQDialogButtonBox* self);
	QPaintEngine* (*paintEngine)(const VirtualQDialogButtonBox* self);
	void (*mousePressEvent)(VirtualQDialogButtonBox* self, QMouseEvent* event);
	void (*mouseReleaseEvent)(VirtualQDialogButtonBox* self, QMouseEvent* event);
	void (*mouseDoubleClickEvent)(VirtualQDialogButtonBox* self, QMouseEvent* event);
	void (*mouseMoveEvent)(VirtualQDialogButtonBox* self, QMouseEvent* event);
	void (*wheelEvent)(VirtualQDialogButtonBox* self, QWheelEvent* event);
	void (*keyPressEvent)(VirtualQDialogButtonBox* self, QKeyEvent* event);
	void (*keyReleaseEvent)(VirtualQDialogButtonBox* self, QKeyEvent* event);
	void (*focusInEvent)(VirtualQDialogButtonBox* self, QFocusEvent* event);
	void (*focusOutEvent)(VirtualQDialogButtonBox* self, QFocusEvent* event);
	void (*enterEvent)(VirtualQDialogButtonBox* self, QEvent* event);
	void (*leaveEvent)(VirtualQDialogButtonBox* self, QEvent* event);
	void (*paintEvent)(VirtualQDialogButtonBox* self, QPaintEvent* event);
	void (*moveEvent)(VirtualQDialogButtonBox* self, QMoveEvent* event);
	void (*resizeEvent)(VirtualQDialogButtonBox* self, QResizeEvent* event);
	void (*closeEvent)(VirtualQDialogButtonBox* self, QCloseEvent* event);
	void (*contextMenuEvent)(VirtualQDialogButtonBox* self, QContextMenuEvent* event);
	void (*tabletEvent)(VirtualQDialogButtonBox* self, QTabletEvent* event);
	void (*actionEvent)(VirtualQDialogButtonBox* self, QActionEvent* event);
	void (*dragEnterEvent)(VirtualQDialogButtonBox* self, QDragEnterEvent* event);
	void (*dragMoveEvent)(VirtualQDialogButtonBox* self, QDragMoveEvent* event);
	void (*dragLeaveEvent)(VirtualQDialogButtonBox* self, QDragLeaveEvent* event);
	void (*dropEvent)(VirtualQDialogButtonBox* self, QDropEvent* event);
	void (*showEvent)(VirtualQDialogButtonBox* self, QShowEvent* event);
	void (*hideEvent)(VirtualQDialogButtonBox* self, QHideEvent* event);
	bool (*nativeEvent)(VirtualQDialogButtonBox* self, struct miqt_string eventType, void* message, long* result);
	int (*metric)(const VirtualQDialogButtonBox* self, int param1);
	void (*initPainter)(const VirtualQDialogButtonBox* self, QPainter* painter);
	QPaintDevice* (*redirected)(const VirtualQDialogButtonBox* self, QPoint* offset);
	QPainter* (*sharedPainter)(const VirtualQDialogButtonBox* self);
	void (*inputMethodEvent)(VirtualQDialogButtonBox* self, QInputMethodEvent* param1);
	QVariant* (*inputMethodQuery)(const VirtualQDialogButtonBox* self, int param1);
	bool (*focusNextPrevChild)(VirtualQDialogButtonBox* self, bool next);
	bool (*eventFilter)(VirtualQDialogButtonBox* self, QObject* watched, QEvent* event);
	void (*timerEvent)(VirtualQDialogButtonBox* self, QTimerEvent* event);
	void (*childEvent)(VirtualQDialogButtonBox* self, QChildEvent* event);
	void (*customEvent)(VirtualQDialogButtonBox* self, QEvent* event);
	void (*connectNotify)(VirtualQDialogButtonBox* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQDialogButtonBox* self, QMetaMethod* signal);
}QDialogButtonBox_VTable;

const QDialogButtonBox_VTable* QDialogButtonBox_vtbl(const VirtualQDialogButtonBox* self);
void* QDialogButtonBox_vdata(const VirtualQDialogButtonBox* self);
void QDialogButtonBox_setVdata(VirtualQDialogButtonBox* self, void* vdata);

VirtualQDialogButtonBox* QDialogButtonBox_new(const QDialogButtonBox_VTable* vtbl, void* vdata, QWidget* parent);
VirtualQDialogButtonBox* QDialogButtonBox_new2(const QDialogButtonBox_VTable* vtbl, void* vdata);
VirtualQDialogButtonBox* QDialogButtonBox_new3(const QDialogButtonBox_VTable* vtbl, void* vdata, int orientation);
VirtualQDialogButtonBox* QDialogButtonBox_new4(const QDialogButtonBox_VTable* vtbl, void* vdata, int buttons);
VirtualQDialogButtonBox* QDialogButtonBox_new5(const QDialogButtonBox_VTable* vtbl, void* vdata, int buttons, int orientation);
VirtualQDialogButtonBox* QDialogButtonBox_new6(const QDialogButtonBox_VTable* vtbl, void* vdata, int orientation, QWidget* parent);
VirtualQDialogButtonBox* QDialogButtonBox_new7(const QDialogButtonBox_VTable* vtbl, void* vdata, int buttons, QWidget* parent);
VirtualQDialogButtonBox* QDialogButtonBox_new8(const QDialogButtonBox_VTable* vtbl, void* vdata, int buttons, int orientation, QWidget* parent);

void QDialogButtonBox_virtbase(QDialogButtonBox* src, QWidget** outptr_QWidget);
QMetaObject* QDialogButtonBox_metaObject(const QDialogButtonBox* self);
void* QDialogButtonBox_metacast(QDialogButtonBox* self, const char* param1);
int QDialogButtonBox_metacall(QDialogButtonBox* self, int param1, int param2, void** param3);
struct miqt_string QDialogButtonBox_tr(const char* s);
struct miqt_string QDialogButtonBox_trUtf8(const char* s);
void QDialogButtonBox_setOrientation(QDialogButtonBox* self, int orientation);
int QDialogButtonBox_orientation(const QDialogButtonBox* self);
void QDialogButtonBox_addButton(QDialogButtonBox* self, QAbstractButton* button, int role);
QPushButton* QDialogButtonBox_addButton2(QDialogButtonBox* self, struct miqt_string text, int role);
QPushButton* QDialogButtonBox_addButtonWithButton(QDialogButtonBox* self, int button);
void QDialogButtonBox_removeButton(QDialogButtonBox* self, QAbstractButton* button);
void QDialogButtonBox_clear(QDialogButtonBox* self);
struct miqt_array /* of QAbstractButton* */  QDialogButtonBox_buttons(const QDialogButtonBox* self);
int QDialogButtonBox_buttonRole(const QDialogButtonBox* self, QAbstractButton* button);
void QDialogButtonBox_setStandardButtons(QDialogButtonBox* self, int buttons);
int QDialogButtonBox_standardButtons(const QDialogButtonBox* self);
int QDialogButtonBox_standardButton(const QDialogButtonBox* self, QAbstractButton* button);
QPushButton* QDialogButtonBox_button(const QDialogButtonBox* self, int which);
void QDialogButtonBox_setCenterButtons(QDialogButtonBox* self, bool center);
bool QDialogButtonBox_centerButtons(const QDialogButtonBox* self);
void QDialogButtonBox_clicked(QDialogButtonBox* self, QAbstractButton* button);
void QDialogButtonBox_connect_clicked(VirtualQDialogButtonBox* self, intptr_t slot, void (*callback)(intptr_t, QAbstractButton*), void (*release)(intptr_t));
void QDialogButtonBox_accepted(QDialogButtonBox* self);
void QDialogButtonBox_connect_accepted(VirtualQDialogButtonBox* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QDialogButtonBox_helpRequested(QDialogButtonBox* self);
void QDialogButtonBox_connect_helpRequested(VirtualQDialogButtonBox* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QDialogButtonBox_rejected(QDialogButtonBox* self);
void QDialogButtonBox_connect_rejected(VirtualQDialogButtonBox* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QDialogButtonBox_changeEvent(QDialogButtonBox* self, QEvent* event);
bool QDialogButtonBox_event(QDialogButtonBox* self, QEvent* event);
struct miqt_string QDialogButtonBox_tr2(const char* s, const char* c);
struct miqt_string QDialogButtonBox_tr3(const char* s, const char* c, int n);
struct miqt_string QDialogButtonBox_trUtf82(const char* s, const char* c);
struct miqt_string QDialogButtonBox_trUtf83(const char* s, const char* c, int n);

QMetaObject* QDialogButtonBox_virtualbase_metaObject(const VirtualQDialogButtonBox* self);
void* QDialogButtonBox_virtualbase_metacast(VirtualQDialogButtonBox* self, const char* param1);
int QDialogButtonBox_virtualbase_metacall(VirtualQDialogButtonBox* self, int param1, int param2, void** param3);
void QDialogButtonBox_virtualbase_changeEvent(VirtualQDialogButtonBox* self, QEvent* event);
bool QDialogButtonBox_virtualbase_event(VirtualQDialogButtonBox* self, QEvent* event);
int QDialogButtonBox_virtualbase_devType(const VirtualQDialogButtonBox* self);
void QDialogButtonBox_virtualbase_setVisible(VirtualQDialogButtonBox* self, bool visible);
QSize* QDialogButtonBox_virtualbase_sizeHint(const VirtualQDialogButtonBox* self);
QSize* QDialogButtonBox_virtualbase_minimumSizeHint(const VirtualQDialogButtonBox* self);
int QDialogButtonBox_virtualbase_heightForWidth(const VirtualQDialogButtonBox* self, int param1);
bool QDialogButtonBox_virtualbase_hasHeightForWidth(const VirtualQDialogButtonBox* self);
QPaintEngine* QDialogButtonBox_virtualbase_paintEngine(const VirtualQDialogButtonBox* self);
void QDialogButtonBox_virtualbase_mousePressEvent(VirtualQDialogButtonBox* self, QMouseEvent* event);
void QDialogButtonBox_virtualbase_mouseReleaseEvent(VirtualQDialogButtonBox* self, QMouseEvent* event);
void QDialogButtonBox_virtualbase_mouseDoubleClickEvent(VirtualQDialogButtonBox* self, QMouseEvent* event);
void QDialogButtonBox_virtualbase_mouseMoveEvent(VirtualQDialogButtonBox* self, QMouseEvent* event);
void QDialogButtonBox_virtualbase_wheelEvent(VirtualQDialogButtonBox* self, QWheelEvent* event);
void QDialogButtonBox_virtualbase_keyPressEvent(VirtualQDialogButtonBox* self, QKeyEvent* event);
void QDialogButtonBox_virtualbase_keyReleaseEvent(VirtualQDialogButtonBox* self, QKeyEvent* event);
void QDialogButtonBox_virtualbase_focusInEvent(VirtualQDialogButtonBox* self, QFocusEvent* event);
void QDialogButtonBox_virtualbase_focusOutEvent(VirtualQDialogButtonBox* self, QFocusEvent* event);
void QDialogButtonBox_virtualbase_enterEvent(VirtualQDialogButtonBox* self, QEvent* event);
void QDialogButtonBox_virtualbase_leaveEvent(VirtualQDialogButtonBox* self, QEvent* event);
void QDialogButtonBox_virtualbase_paintEvent(VirtualQDialogButtonBox* self, QPaintEvent* event);
void QDialogButtonBox_virtualbase_moveEvent(VirtualQDialogButtonBox* self, QMoveEvent* event);
void QDialogButtonBox_virtualbase_resizeEvent(VirtualQDialogButtonBox* self, QResizeEvent* event);
void QDialogButtonBox_virtualbase_closeEvent(VirtualQDialogButtonBox* self, QCloseEvent* event);
void QDialogButtonBox_virtualbase_contextMenuEvent(VirtualQDialogButtonBox* self, QContextMenuEvent* event);
void QDialogButtonBox_virtualbase_tabletEvent(VirtualQDialogButtonBox* self, QTabletEvent* event);
void QDialogButtonBox_virtualbase_actionEvent(VirtualQDialogButtonBox* self, QActionEvent* event);
void QDialogButtonBox_virtualbase_dragEnterEvent(VirtualQDialogButtonBox* self, QDragEnterEvent* event);
void QDialogButtonBox_virtualbase_dragMoveEvent(VirtualQDialogButtonBox* self, QDragMoveEvent* event);
void QDialogButtonBox_virtualbase_dragLeaveEvent(VirtualQDialogButtonBox* self, QDragLeaveEvent* event);
void QDialogButtonBox_virtualbase_dropEvent(VirtualQDialogButtonBox* self, QDropEvent* event);
void QDialogButtonBox_virtualbase_showEvent(VirtualQDialogButtonBox* self, QShowEvent* event);
void QDialogButtonBox_virtualbase_hideEvent(VirtualQDialogButtonBox* self, QHideEvent* event);
bool QDialogButtonBox_virtualbase_nativeEvent(VirtualQDialogButtonBox* self, struct miqt_string eventType, void* message, long* result);
int QDialogButtonBox_virtualbase_metric(const VirtualQDialogButtonBox* self, int param1);
void QDialogButtonBox_virtualbase_initPainter(const VirtualQDialogButtonBox* self, QPainter* painter);
QPaintDevice* QDialogButtonBox_virtualbase_redirected(const VirtualQDialogButtonBox* self, QPoint* offset);
QPainter* QDialogButtonBox_virtualbase_sharedPainter(const VirtualQDialogButtonBox* self);
void QDialogButtonBox_virtualbase_inputMethodEvent(VirtualQDialogButtonBox* self, QInputMethodEvent* param1);
QVariant* QDialogButtonBox_virtualbase_inputMethodQuery(const VirtualQDialogButtonBox* self, int param1);
bool QDialogButtonBox_virtualbase_focusNextPrevChild(VirtualQDialogButtonBox* self, bool next);
bool QDialogButtonBox_virtualbase_eventFilter(VirtualQDialogButtonBox* self, QObject* watched, QEvent* event);
void QDialogButtonBox_virtualbase_timerEvent(VirtualQDialogButtonBox* self, QTimerEvent* event);
void QDialogButtonBox_virtualbase_childEvent(VirtualQDialogButtonBox* self, QChildEvent* event);
void QDialogButtonBox_virtualbase_customEvent(VirtualQDialogButtonBox* self, QEvent* event);
void QDialogButtonBox_virtualbase_connectNotify(VirtualQDialogButtonBox* self, QMetaMethod* signal);
void QDialogButtonBox_virtualbase_disconnectNotify(VirtualQDialogButtonBox* self, QMetaMethod* signal);

void QDialogButtonBox_protectedbase_updateMicroFocus(VirtualQDialogButtonBox* self);
void QDialogButtonBox_protectedbase_create(VirtualQDialogButtonBox* self);
void QDialogButtonBox_protectedbase_destroy(VirtualQDialogButtonBox* self);
bool QDialogButtonBox_protectedbase_focusNextChild(VirtualQDialogButtonBox* self);
bool QDialogButtonBox_protectedbase_focusPreviousChild(VirtualQDialogButtonBox* self);
QObject* QDialogButtonBox_protectedbase_sender(const VirtualQDialogButtonBox* self);
int QDialogButtonBox_protectedbase_senderSignalIndex(const VirtualQDialogButtonBox* self);
int QDialogButtonBox_protectedbase_receivers(const VirtualQDialogButtonBox* self, const char* signal);
bool QDialogButtonBox_protectedbase_isSignalConnected(const VirtualQDialogButtonBox* self, QMetaMethod* signal);

const QMetaObject* QDialogButtonBox_staticMetaObject();
void QDialogButtonBox_delete(QDialogButtonBox* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
