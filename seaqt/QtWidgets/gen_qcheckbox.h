#pragma once
#ifndef SEAQT_QTWIDGETS_GEN_QCHECKBOX_H
#define SEAQT_QTWIDGETS_GEN_QCHECKBOX_H

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
class QCheckBox;
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
class QStyleOptionButton;
class QTabletEvent;
class QTimerEvent;
class QVariant;
class QWheelEvent;
class QWidget;
#else
typedef struct QAbstractButton QAbstractButton;
typedef struct QActionEvent QActionEvent;
typedef struct QCheckBox QCheckBox;
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
typedef struct QStyleOptionButton QStyleOptionButton;
typedef struct QTabletEvent QTabletEvent;
typedef struct QTimerEvent QTimerEvent;
typedef struct QVariant QVariant;
typedef struct QWheelEvent QWheelEvent;
typedef struct QWidget QWidget;
#endif

typedef struct VirtualQCheckBox VirtualQCheckBox;
typedef struct QCheckBox_VTable{
	void (*destructor)(VirtualQCheckBox* self);
	QMetaObject* (*metaObject)(const VirtualQCheckBox* self);
	void* (*metacast)(VirtualQCheckBox* self, const char* param1);
	int (*metacall)(VirtualQCheckBox* self, int param1, int param2, void** param3);
	QSize* (*sizeHint)(const VirtualQCheckBox* self);
	QSize* (*minimumSizeHint)(const VirtualQCheckBox* self);
	bool (*event)(VirtualQCheckBox* self, QEvent* e);
	bool (*hitButton)(const VirtualQCheckBox* self, QPoint* pos);
	void (*checkStateSet)(VirtualQCheckBox* self);
	void (*nextCheckState)(VirtualQCheckBox* self);
	void (*paintEvent)(VirtualQCheckBox* self, QPaintEvent* param1);
	void (*mouseMoveEvent)(VirtualQCheckBox* self, QMouseEvent* param1);
	void (*keyPressEvent)(VirtualQCheckBox* self, QKeyEvent* e);
	void (*keyReleaseEvent)(VirtualQCheckBox* self, QKeyEvent* e);
	void (*mousePressEvent)(VirtualQCheckBox* self, QMouseEvent* e);
	void (*mouseReleaseEvent)(VirtualQCheckBox* self, QMouseEvent* e);
	void (*focusInEvent)(VirtualQCheckBox* self, QFocusEvent* e);
	void (*focusOutEvent)(VirtualQCheckBox* self, QFocusEvent* e);
	void (*changeEvent)(VirtualQCheckBox* self, QEvent* e);
	void (*timerEvent)(VirtualQCheckBox* self, QTimerEvent* e);
	int (*devType)(const VirtualQCheckBox* self);
	void (*setVisible)(VirtualQCheckBox* self, bool visible);
	int (*heightForWidth)(const VirtualQCheckBox* self, int param1);
	bool (*hasHeightForWidth)(const VirtualQCheckBox* self);
	QPaintEngine* (*paintEngine)(const VirtualQCheckBox* self);
	void (*mouseDoubleClickEvent)(VirtualQCheckBox* self, QMouseEvent* event);
	void (*wheelEvent)(VirtualQCheckBox* self, QWheelEvent* event);
	void (*enterEvent)(VirtualQCheckBox* self, QEvent* event);
	void (*leaveEvent)(VirtualQCheckBox* self, QEvent* event);
	void (*moveEvent)(VirtualQCheckBox* self, QMoveEvent* event);
	void (*resizeEvent)(VirtualQCheckBox* self, QResizeEvent* event);
	void (*closeEvent)(VirtualQCheckBox* self, QCloseEvent* event);
	void (*contextMenuEvent)(VirtualQCheckBox* self, QContextMenuEvent* event);
	void (*tabletEvent)(VirtualQCheckBox* self, QTabletEvent* event);
	void (*actionEvent)(VirtualQCheckBox* self, QActionEvent* event);
	void (*dragEnterEvent)(VirtualQCheckBox* self, QDragEnterEvent* event);
	void (*dragMoveEvent)(VirtualQCheckBox* self, QDragMoveEvent* event);
	void (*dragLeaveEvent)(VirtualQCheckBox* self, QDragLeaveEvent* event);
	void (*dropEvent)(VirtualQCheckBox* self, QDropEvent* event);
	void (*showEvent)(VirtualQCheckBox* self, QShowEvent* event);
	void (*hideEvent)(VirtualQCheckBox* self, QHideEvent* event);
	bool (*nativeEvent)(VirtualQCheckBox* self, struct miqt_string eventType, void* message, long* result);
	int (*metric)(const VirtualQCheckBox* self, int param1);
	void (*initPainter)(const VirtualQCheckBox* self, QPainter* painter);
	QPaintDevice* (*redirected)(const VirtualQCheckBox* self, QPoint* offset);
	QPainter* (*sharedPainter)(const VirtualQCheckBox* self);
	void (*inputMethodEvent)(VirtualQCheckBox* self, QInputMethodEvent* param1);
	QVariant* (*inputMethodQuery)(const VirtualQCheckBox* self, int param1);
	bool (*focusNextPrevChild)(VirtualQCheckBox* self, bool next);
	bool (*eventFilter)(VirtualQCheckBox* self, QObject* watched, QEvent* event);
	void (*childEvent)(VirtualQCheckBox* self, QChildEvent* event);
	void (*customEvent)(VirtualQCheckBox* self, QEvent* event);
	void (*connectNotify)(VirtualQCheckBox* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQCheckBox* self, QMetaMethod* signal);
}QCheckBox_VTable;

const QCheckBox_VTable* QCheckBox_vtbl(const VirtualQCheckBox* self);
void* QCheckBox_vdata(const VirtualQCheckBox* self);
void QCheckBox_setVdata(VirtualQCheckBox* self, void* vdata);

VirtualQCheckBox* QCheckBox_new(const QCheckBox_VTable* vtbl, void* vdata, QWidget* parent);
VirtualQCheckBox* QCheckBox_new2(const QCheckBox_VTable* vtbl, void* vdata);
VirtualQCheckBox* QCheckBox_new3(const QCheckBox_VTable* vtbl, void* vdata, struct miqt_string text);
VirtualQCheckBox* QCheckBox_new4(const QCheckBox_VTable* vtbl, void* vdata, struct miqt_string text, QWidget* parent);

void QCheckBox_virtbase(QCheckBox* src, QAbstractButton** outptr_QAbstractButton);
QMetaObject* QCheckBox_metaObject(const QCheckBox* self);
void* QCheckBox_metacast(QCheckBox* self, const char* param1);
int QCheckBox_metacall(QCheckBox* self, int param1, int param2, void** param3);
struct miqt_string QCheckBox_tr(const char* s);
struct miqt_string QCheckBox_trUtf8(const char* s);
QSize* QCheckBox_sizeHint(const QCheckBox* self);
QSize* QCheckBox_minimumSizeHint(const QCheckBox* self);
void QCheckBox_setTristate(QCheckBox* self);
bool QCheckBox_isTristate(const QCheckBox* self);
int QCheckBox_checkState(const QCheckBox* self);
void QCheckBox_setCheckState(QCheckBox* self, int state);
void QCheckBox_stateChanged(QCheckBox* self, int param1);
void QCheckBox_connect_stateChanged(VirtualQCheckBox* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t));
bool QCheckBox_event(QCheckBox* self, QEvent* e);
bool QCheckBox_hitButton(const QCheckBox* self, QPoint* pos);
void QCheckBox_checkStateSet(QCheckBox* self);
void QCheckBox_nextCheckState(QCheckBox* self);
void QCheckBox_paintEvent(QCheckBox* self, QPaintEvent* param1);
void QCheckBox_mouseMoveEvent(QCheckBox* self, QMouseEvent* param1);
struct miqt_string QCheckBox_tr2(const char* s, const char* c);
struct miqt_string QCheckBox_tr3(const char* s, const char* c, int n);
struct miqt_string QCheckBox_trUtf82(const char* s, const char* c);
struct miqt_string QCheckBox_trUtf83(const char* s, const char* c, int n);
void QCheckBox_setTristate1(QCheckBox* self, bool y);

QMetaObject* QCheckBox_virtualbase_metaObject(const VirtualQCheckBox* self);
void* QCheckBox_virtualbase_metacast(VirtualQCheckBox* self, const char* param1);
int QCheckBox_virtualbase_metacall(VirtualQCheckBox* self, int param1, int param2, void** param3);
QSize* QCheckBox_virtualbase_sizeHint(const VirtualQCheckBox* self);
QSize* QCheckBox_virtualbase_minimumSizeHint(const VirtualQCheckBox* self);
bool QCheckBox_virtualbase_event(VirtualQCheckBox* self, QEvent* e);
bool QCheckBox_virtualbase_hitButton(const VirtualQCheckBox* self, QPoint* pos);
void QCheckBox_virtualbase_checkStateSet(VirtualQCheckBox* self);
void QCheckBox_virtualbase_nextCheckState(VirtualQCheckBox* self);
void QCheckBox_virtualbase_paintEvent(VirtualQCheckBox* self, QPaintEvent* param1);
void QCheckBox_virtualbase_mouseMoveEvent(VirtualQCheckBox* self, QMouseEvent* param1);
void QCheckBox_virtualbase_keyPressEvent(VirtualQCheckBox* self, QKeyEvent* e);
void QCheckBox_virtualbase_keyReleaseEvent(VirtualQCheckBox* self, QKeyEvent* e);
void QCheckBox_virtualbase_mousePressEvent(VirtualQCheckBox* self, QMouseEvent* e);
void QCheckBox_virtualbase_mouseReleaseEvent(VirtualQCheckBox* self, QMouseEvent* e);
void QCheckBox_virtualbase_focusInEvent(VirtualQCheckBox* self, QFocusEvent* e);
void QCheckBox_virtualbase_focusOutEvent(VirtualQCheckBox* self, QFocusEvent* e);
void QCheckBox_virtualbase_changeEvent(VirtualQCheckBox* self, QEvent* e);
void QCheckBox_virtualbase_timerEvent(VirtualQCheckBox* self, QTimerEvent* e);
int QCheckBox_virtualbase_devType(const VirtualQCheckBox* self);
void QCheckBox_virtualbase_setVisible(VirtualQCheckBox* self, bool visible);
int QCheckBox_virtualbase_heightForWidth(const VirtualQCheckBox* self, int param1);
bool QCheckBox_virtualbase_hasHeightForWidth(const VirtualQCheckBox* self);
QPaintEngine* QCheckBox_virtualbase_paintEngine(const VirtualQCheckBox* self);
void QCheckBox_virtualbase_mouseDoubleClickEvent(VirtualQCheckBox* self, QMouseEvent* event);
void QCheckBox_virtualbase_wheelEvent(VirtualQCheckBox* self, QWheelEvent* event);
void QCheckBox_virtualbase_enterEvent(VirtualQCheckBox* self, QEvent* event);
void QCheckBox_virtualbase_leaveEvent(VirtualQCheckBox* self, QEvent* event);
void QCheckBox_virtualbase_moveEvent(VirtualQCheckBox* self, QMoveEvent* event);
void QCheckBox_virtualbase_resizeEvent(VirtualQCheckBox* self, QResizeEvent* event);
void QCheckBox_virtualbase_closeEvent(VirtualQCheckBox* self, QCloseEvent* event);
void QCheckBox_virtualbase_contextMenuEvent(VirtualQCheckBox* self, QContextMenuEvent* event);
void QCheckBox_virtualbase_tabletEvent(VirtualQCheckBox* self, QTabletEvent* event);
void QCheckBox_virtualbase_actionEvent(VirtualQCheckBox* self, QActionEvent* event);
void QCheckBox_virtualbase_dragEnterEvent(VirtualQCheckBox* self, QDragEnterEvent* event);
void QCheckBox_virtualbase_dragMoveEvent(VirtualQCheckBox* self, QDragMoveEvent* event);
void QCheckBox_virtualbase_dragLeaveEvent(VirtualQCheckBox* self, QDragLeaveEvent* event);
void QCheckBox_virtualbase_dropEvent(VirtualQCheckBox* self, QDropEvent* event);
void QCheckBox_virtualbase_showEvent(VirtualQCheckBox* self, QShowEvent* event);
void QCheckBox_virtualbase_hideEvent(VirtualQCheckBox* self, QHideEvent* event);
bool QCheckBox_virtualbase_nativeEvent(VirtualQCheckBox* self, struct miqt_string eventType, void* message, long* result);
int QCheckBox_virtualbase_metric(const VirtualQCheckBox* self, int param1);
void QCheckBox_virtualbase_initPainter(const VirtualQCheckBox* self, QPainter* painter);
QPaintDevice* QCheckBox_virtualbase_redirected(const VirtualQCheckBox* self, QPoint* offset);
QPainter* QCheckBox_virtualbase_sharedPainter(const VirtualQCheckBox* self);
void QCheckBox_virtualbase_inputMethodEvent(VirtualQCheckBox* self, QInputMethodEvent* param1);
QVariant* QCheckBox_virtualbase_inputMethodQuery(const VirtualQCheckBox* self, int param1);
bool QCheckBox_virtualbase_focusNextPrevChild(VirtualQCheckBox* self, bool next);
bool QCheckBox_virtualbase_eventFilter(VirtualQCheckBox* self, QObject* watched, QEvent* event);
void QCheckBox_virtualbase_childEvent(VirtualQCheckBox* self, QChildEvent* event);
void QCheckBox_virtualbase_customEvent(VirtualQCheckBox* self, QEvent* event);
void QCheckBox_virtualbase_connectNotify(VirtualQCheckBox* self, QMetaMethod* signal);
void QCheckBox_virtualbase_disconnectNotify(VirtualQCheckBox* self, QMetaMethod* signal);

void QCheckBox_protectedbase_initStyleOption(const VirtualQCheckBox* self, QStyleOptionButton* option);
void QCheckBox_protectedbase_updateMicroFocus(VirtualQCheckBox* self);
void QCheckBox_protectedbase_create(VirtualQCheckBox* self);
void QCheckBox_protectedbase_destroy(VirtualQCheckBox* self);
bool QCheckBox_protectedbase_focusNextChild(VirtualQCheckBox* self);
bool QCheckBox_protectedbase_focusPreviousChild(VirtualQCheckBox* self);
QObject* QCheckBox_protectedbase_sender(const VirtualQCheckBox* self);
int QCheckBox_protectedbase_senderSignalIndex(const VirtualQCheckBox* self);
int QCheckBox_protectedbase_receivers(const VirtualQCheckBox* self, const char* signal);
bool QCheckBox_protectedbase_isSignalConnected(const VirtualQCheckBox* self, QMetaMethod* signal);

const QMetaObject* QCheckBox_staticMetaObject();
void QCheckBox_delete(QCheckBox* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
