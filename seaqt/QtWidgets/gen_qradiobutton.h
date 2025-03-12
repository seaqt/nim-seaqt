#pragma once
#ifndef SEAQT_QTWIDGETS_GEN_QRADIOBUTTON_H
#define SEAQT_QTWIDGETS_GEN_QRADIOBUTTON_H

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
class QRadioButton;
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
typedef struct QRadioButton QRadioButton;
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

typedef struct VirtualQRadioButton VirtualQRadioButton;
typedef struct QRadioButton_VTable{
	void (*destructor)(VirtualQRadioButton* self);
	QMetaObject* (*metaObject)(const VirtualQRadioButton* self);
	void* (*metacast)(VirtualQRadioButton* self, const char* param1);
	int (*metacall)(VirtualQRadioButton* self, int param1, int param2, void** param3);
	QSize* (*sizeHint)(const VirtualQRadioButton* self);
	QSize* (*minimumSizeHint)(const VirtualQRadioButton* self);
	bool (*event)(VirtualQRadioButton* self, QEvent* e);
	bool (*hitButton)(const VirtualQRadioButton* self, QPoint* param1);
	void (*paintEvent)(VirtualQRadioButton* self, QPaintEvent* param1);
	void (*mouseMoveEvent)(VirtualQRadioButton* self, QMouseEvent* param1);
	void (*initStyleOption)(const VirtualQRadioButton* self, QStyleOptionButton* button);
	void (*checkStateSet)(VirtualQRadioButton* self);
	void (*nextCheckState)(VirtualQRadioButton* self);
	void (*keyPressEvent)(VirtualQRadioButton* self, QKeyEvent* e);
	void (*keyReleaseEvent)(VirtualQRadioButton* self, QKeyEvent* e);
	void (*mousePressEvent)(VirtualQRadioButton* self, QMouseEvent* e);
	void (*mouseReleaseEvent)(VirtualQRadioButton* self, QMouseEvent* e);
	void (*focusInEvent)(VirtualQRadioButton* self, QFocusEvent* e);
	void (*focusOutEvent)(VirtualQRadioButton* self, QFocusEvent* e);
	void (*changeEvent)(VirtualQRadioButton* self, QEvent* e);
	void (*timerEvent)(VirtualQRadioButton* self, QTimerEvent* e);
	int (*devType)(const VirtualQRadioButton* self);
	void (*setVisible)(VirtualQRadioButton* self, bool visible);
	int (*heightForWidth)(const VirtualQRadioButton* self, int param1);
	bool (*hasHeightForWidth)(const VirtualQRadioButton* self);
	QPaintEngine* (*paintEngine)(const VirtualQRadioButton* self);
	void (*mouseDoubleClickEvent)(VirtualQRadioButton* self, QMouseEvent* event);
	void (*wheelEvent)(VirtualQRadioButton* self, QWheelEvent* event);
	void (*enterEvent)(VirtualQRadioButton* self, QEnterEvent* event);
	void (*leaveEvent)(VirtualQRadioButton* self, QEvent* event);
	void (*moveEvent)(VirtualQRadioButton* self, QMoveEvent* event);
	void (*resizeEvent)(VirtualQRadioButton* self, QResizeEvent* event);
	void (*closeEvent)(VirtualQRadioButton* self, QCloseEvent* event);
	void (*contextMenuEvent)(VirtualQRadioButton* self, QContextMenuEvent* event);
	void (*tabletEvent)(VirtualQRadioButton* self, QTabletEvent* event);
	void (*actionEvent)(VirtualQRadioButton* self, QActionEvent* event);
	void (*dragEnterEvent)(VirtualQRadioButton* self, QDragEnterEvent* event);
	void (*dragMoveEvent)(VirtualQRadioButton* self, QDragMoveEvent* event);
	void (*dragLeaveEvent)(VirtualQRadioButton* self, QDragLeaveEvent* event);
	void (*dropEvent)(VirtualQRadioButton* self, QDropEvent* event);
	void (*showEvent)(VirtualQRadioButton* self, QShowEvent* event);
	void (*hideEvent)(VirtualQRadioButton* self, QHideEvent* event);
	bool (*nativeEvent)(VirtualQRadioButton* self, struct miqt_string eventType, void* message, intptr_t* result);
	int (*metric)(const VirtualQRadioButton* self, int param1);
	void (*initPainter)(const VirtualQRadioButton* self, QPainter* painter);
	QPaintDevice* (*redirected)(const VirtualQRadioButton* self, QPoint* offset);
	QPainter* (*sharedPainter)(const VirtualQRadioButton* self);
	void (*inputMethodEvent)(VirtualQRadioButton* self, QInputMethodEvent* param1);
	QVariant* (*inputMethodQuery)(const VirtualQRadioButton* self, int param1);
	bool (*focusNextPrevChild)(VirtualQRadioButton* self, bool next);
	bool (*eventFilter)(VirtualQRadioButton* self, QObject* watched, QEvent* event);
	void (*childEvent)(VirtualQRadioButton* self, QChildEvent* event);
	void (*customEvent)(VirtualQRadioButton* self, QEvent* event);
	void (*connectNotify)(VirtualQRadioButton* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQRadioButton* self, QMetaMethod* signal);
}QRadioButton_VTable;

const QRadioButton_VTable* QRadioButton_vtbl(const VirtualQRadioButton* self);
void* QRadioButton_vdata(const VirtualQRadioButton* self);
void QRadioButton_setVdata(VirtualQRadioButton* self, void* vdata);

VirtualQRadioButton* QRadioButton_new(const QRadioButton_VTable* vtbl, void* vdata, QWidget* parent);
VirtualQRadioButton* QRadioButton_new2(const QRadioButton_VTable* vtbl, void* vdata);
VirtualQRadioButton* QRadioButton_new3(const QRadioButton_VTable* vtbl, void* vdata, struct miqt_string text);
VirtualQRadioButton* QRadioButton_new4(const QRadioButton_VTable* vtbl, void* vdata, struct miqt_string text, QWidget* parent);

void QRadioButton_virtbase(QRadioButton* src, QAbstractButton** outptr_QAbstractButton);
QMetaObject* QRadioButton_metaObject(const QRadioButton* self);
void* QRadioButton_metacast(QRadioButton* self, const char* param1);
int QRadioButton_metacall(QRadioButton* self, int param1, int param2, void** param3);
struct miqt_string QRadioButton_tr(const char* s);
QSize* QRadioButton_sizeHint(const QRadioButton* self);
QSize* QRadioButton_minimumSizeHint(const QRadioButton* self);
bool QRadioButton_event(QRadioButton* self, QEvent* e);
bool QRadioButton_hitButton(const QRadioButton* self, QPoint* param1);
void QRadioButton_paintEvent(QRadioButton* self, QPaintEvent* param1);
void QRadioButton_mouseMoveEvent(QRadioButton* self, QMouseEvent* param1);
void QRadioButton_initStyleOption(const QRadioButton* self, QStyleOptionButton* button);
struct miqt_string QRadioButton_tr2(const char* s, const char* c);
struct miqt_string QRadioButton_tr3(const char* s, const char* c, int n);

QMetaObject* QRadioButton_virtualbase_metaObject(const VirtualQRadioButton* self);
void* QRadioButton_virtualbase_metacast(VirtualQRadioButton* self, const char* param1);
int QRadioButton_virtualbase_metacall(VirtualQRadioButton* self, int param1, int param2, void** param3);
QSize* QRadioButton_virtualbase_sizeHint(const VirtualQRadioButton* self);
QSize* QRadioButton_virtualbase_minimumSizeHint(const VirtualQRadioButton* self);
bool QRadioButton_virtualbase_event(VirtualQRadioButton* self, QEvent* e);
bool QRadioButton_virtualbase_hitButton(const VirtualQRadioButton* self, QPoint* param1);
void QRadioButton_virtualbase_paintEvent(VirtualQRadioButton* self, QPaintEvent* param1);
void QRadioButton_virtualbase_mouseMoveEvent(VirtualQRadioButton* self, QMouseEvent* param1);
void QRadioButton_virtualbase_initStyleOption(const VirtualQRadioButton* self, QStyleOptionButton* button);
void QRadioButton_virtualbase_checkStateSet(VirtualQRadioButton* self);
void QRadioButton_virtualbase_nextCheckState(VirtualQRadioButton* self);
void QRadioButton_virtualbase_keyPressEvent(VirtualQRadioButton* self, QKeyEvent* e);
void QRadioButton_virtualbase_keyReleaseEvent(VirtualQRadioButton* self, QKeyEvent* e);
void QRadioButton_virtualbase_mousePressEvent(VirtualQRadioButton* self, QMouseEvent* e);
void QRadioButton_virtualbase_mouseReleaseEvent(VirtualQRadioButton* self, QMouseEvent* e);
void QRadioButton_virtualbase_focusInEvent(VirtualQRadioButton* self, QFocusEvent* e);
void QRadioButton_virtualbase_focusOutEvent(VirtualQRadioButton* self, QFocusEvent* e);
void QRadioButton_virtualbase_changeEvent(VirtualQRadioButton* self, QEvent* e);
void QRadioButton_virtualbase_timerEvent(VirtualQRadioButton* self, QTimerEvent* e);
int QRadioButton_virtualbase_devType(const VirtualQRadioButton* self);
void QRadioButton_virtualbase_setVisible(VirtualQRadioButton* self, bool visible);
int QRadioButton_virtualbase_heightForWidth(const VirtualQRadioButton* self, int param1);
bool QRadioButton_virtualbase_hasHeightForWidth(const VirtualQRadioButton* self);
QPaintEngine* QRadioButton_virtualbase_paintEngine(const VirtualQRadioButton* self);
void QRadioButton_virtualbase_mouseDoubleClickEvent(VirtualQRadioButton* self, QMouseEvent* event);
void QRadioButton_virtualbase_wheelEvent(VirtualQRadioButton* self, QWheelEvent* event);
void QRadioButton_virtualbase_enterEvent(VirtualQRadioButton* self, QEnterEvent* event);
void QRadioButton_virtualbase_leaveEvent(VirtualQRadioButton* self, QEvent* event);
void QRadioButton_virtualbase_moveEvent(VirtualQRadioButton* self, QMoveEvent* event);
void QRadioButton_virtualbase_resizeEvent(VirtualQRadioButton* self, QResizeEvent* event);
void QRadioButton_virtualbase_closeEvent(VirtualQRadioButton* self, QCloseEvent* event);
void QRadioButton_virtualbase_contextMenuEvent(VirtualQRadioButton* self, QContextMenuEvent* event);
void QRadioButton_virtualbase_tabletEvent(VirtualQRadioButton* self, QTabletEvent* event);
void QRadioButton_virtualbase_actionEvent(VirtualQRadioButton* self, QActionEvent* event);
void QRadioButton_virtualbase_dragEnterEvent(VirtualQRadioButton* self, QDragEnterEvent* event);
void QRadioButton_virtualbase_dragMoveEvent(VirtualQRadioButton* self, QDragMoveEvent* event);
void QRadioButton_virtualbase_dragLeaveEvent(VirtualQRadioButton* self, QDragLeaveEvent* event);
void QRadioButton_virtualbase_dropEvent(VirtualQRadioButton* self, QDropEvent* event);
void QRadioButton_virtualbase_showEvent(VirtualQRadioButton* self, QShowEvent* event);
void QRadioButton_virtualbase_hideEvent(VirtualQRadioButton* self, QHideEvent* event);
bool QRadioButton_virtualbase_nativeEvent(VirtualQRadioButton* self, struct miqt_string eventType, void* message, intptr_t* result);
int QRadioButton_virtualbase_metric(const VirtualQRadioButton* self, int param1);
void QRadioButton_virtualbase_initPainter(const VirtualQRadioButton* self, QPainter* painter);
QPaintDevice* QRadioButton_virtualbase_redirected(const VirtualQRadioButton* self, QPoint* offset);
QPainter* QRadioButton_virtualbase_sharedPainter(const VirtualQRadioButton* self);
void QRadioButton_virtualbase_inputMethodEvent(VirtualQRadioButton* self, QInputMethodEvent* param1);
QVariant* QRadioButton_virtualbase_inputMethodQuery(const VirtualQRadioButton* self, int param1);
bool QRadioButton_virtualbase_focusNextPrevChild(VirtualQRadioButton* self, bool next);
bool QRadioButton_virtualbase_eventFilter(VirtualQRadioButton* self, QObject* watched, QEvent* event);
void QRadioButton_virtualbase_childEvent(VirtualQRadioButton* self, QChildEvent* event);
void QRadioButton_virtualbase_customEvent(VirtualQRadioButton* self, QEvent* event);
void QRadioButton_virtualbase_connectNotify(VirtualQRadioButton* self, QMetaMethod* signal);
void QRadioButton_virtualbase_disconnectNotify(VirtualQRadioButton* self, QMetaMethod* signal);

void QRadioButton_protectedbase_updateMicroFocus(VirtualQRadioButton* self);
void QRadioButton_protectedbase_create(VirtualQRadioButton* self);
void QRadioButton_protectedbase_destroy(VirtualQRadioButton* self);
bool QRadioButton_protectedbase_focusNextChild(VirtualQRadioButton* self);
bool QRadioButton_protectedbase_focusPreviousChild(VirtualQRadioButton* self);
QObject* QRadioButton_protectedbase_sender(const VirtualQRadioButton* self);
int QRadioButton_protectedbase_senderSignalIndex(const VirtualQRadioButton* self);
int QRadioButton_protectedbase_receivers(const VirtualQRadioButton* self, const char* signal);
bool QRadioButton_protectedbase_isSignalConnected(const VirtualQRadioButton* self, QMetaMethod* signal);

const QMetaObject* QRadioButton_staticMetaObject();
void QRadioButton_delete(QRadioButton* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
