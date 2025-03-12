#pragma once
#ifndef SEAQT_QTWIDGETS_GEN_QRUBBERBAND_H
#define SEAQT_QTWIDGETS_GEN_QRUBBERBAND_H

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
class QRect;
class QResizeEvent;
class QRubberBand;
class QShowEvent;
class QSize;
class QStyleOptionRubberBand;
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
typedef struct QRect QRect;
typedef struct QResizeEvent QResizeEvent;
typedef struct QRubberBand QRubberBand;
typedef struct QShowEvent QShowEvent;
typedef struct QSize QSize;
typedef struct QStyleOptionRubberBand QStyleOptionRubberBand;
typedef struct QTabletEvent QTabletEvent;
typedef struct QTimerEvent QTimerEvent;
typedef struct QVariant QVariant;
typedef struct QWheelEvent QWheelEvent;
typedef struct QWidget QWidget;
#endif

typedef struct VirtualQRubberBand VirtualQRubberBand;
typedef struct QRubberBand_VTable{
	void (*destructor)(VirtualQRubberBand* self);
	QMetaObject* (*metaObject)(const VirtualQRubberBand* self);
	void* (*metacast)(VirtualQRubberBand* self, const char* param1);
	int (*metacall)(VirtualQRubberBand* self, int param1, int param2, void** param3);
	bool (*event)(VirtualQRubberBand* self, QEvent* e);
	void (*paintEvent)(VirtualQRubberBand* self, QPaintEvent* param1);
	void (*changeEvent)(VirtualQRubberBand* self, QEvent* param1);
	void (*showEvent)(VirtualQRubberBand* self, QShowEvent* param1);
	void (*resizeEvent)(VirtualQRubberBand* self, QResizeEvent* param1);
	void (*moveEvent)(VirtualQRubberBand* self, QMoveEvent* param1);
	void (*initStyleOption)(const VirtualQRubberBand* self, QStyleOptionRubberBand* option);
	int (*devType)(const VirtualQRubberBand* self);
	void (*setVisible)(VirtualQRubberBand* self, bool visible);
	QSize* (*sizeHint)(const VirtualQRubberBand* self);
	QSize* (*minimumSizeHint)(const VirtualQRubberBand* self);
	int (*heightForWidth)(const VirtualQRubberBand* self, int param1);
	bool (*hasHeightForWidth)(const VirtualQRubberBand* self);
	QPaintEngine* (*paintEngine)(const VirtualQRubberBand* self);
	void (*mousePressEvent)(VirtualQRubberBand* self, QMouseEvent* event);
	void (*mouseReleaseEvent)(VirtualQRubberBand* self, QMouseEvent* event);
	void (*mouseDoubleClickEvent)(VirtualQRubberBand* self, QMouseEvent* event);
	void (*mouseMoveEvent)(VirtualQRubberBand* self, QMouseEvent* event);
	void (*wheelEvent)(VirtualQRubberBand* self, QWheelEvent* event);
	void (*keyPressEvent)(VirtualQRubberBand* self, QKeyEvent* event);
	void (*keyReleaseEvent)(VirtualQRubberBand* self, QKeyEvent* event);
	void (*focusInEvent)(VirtualQRubberBand* self, QFocusEvent* event);
	void (*focusOutEvent)(VirtualQRubberBand* self, QFocusEvent* event);
	void (*enterEvent)(VirtualQRubberBand* self, QEnterEvent* event);
	void (*leaveEvent)(VirtualQRubberBand* self, QEvent* event);
	void (*closeEvent)(VirtualQRubberBand* self, QCloseEvent* event);
	void (*contextMenuEvent)(VirtualQRubberBand* self, QContextMenuEvent* event);
	void (*tabletEvent)(VirtualQRubberBand* self, QTabletEvent* event);
	void (*actionEvent)(VirtualQRubberBand* self, QActionEvent* event);
	void (*dragEnterEvent)(VirtualQRubberBand* self, QDragEnterEvent* event);
	void (*dragMoveEvent)(VirtualQRubberBand* self, QDragMoveEvent* event);
	void (*dragLeaveEvent)(VirtualQRubberBand* self, QDragLeaveEvent* event);
	void (*dropEvent)(VirtualQRubberBand* self, QDropEvent* event);
	void (*hideEvent)(VirtualQRubberBand* self, QHideEvent* event);
	bool (*nativeEvent)(VirtualQRubberBand* self, struct miqt_string eventType, void* message, intptr_t* result);
	int (*metric)(const VirtualQRubberBand* self, int param1);
	void (*initPainter)(const VirtualQRubberBand* self, QPainter* painter);
	QPaintDevice* (*redirected)(const VirtualQRubberBand* self, QPoint* offset);
	QPainter* (*sharedPainter)(const VirtualQRubberBand* self);
	void (*inputMethodEvent)(VirtualQRubberBand* self, QInputMethodEvent* param1);
	QVariant* (*inputMethodQuery)(const VirtualQRubberBand* self, int param1);
	bool (*focusNextPrevChild)(VirtualQRubberBand* self, bool next);
	bool (*eventFilter)(VirtualQRubberBand* self, QObject* watched, QEvent* event);
	void (*timerEvent)(VirtualQRubberBand* self, QTimerEvent* event);
	void (*childEvent)(VirtualQRubberBand* self, QChildEvent* event);
	void (*customEvent)(VirtualQRubberBand* self, QEvent* event);
	void (*connectNotify)(VirtualQRubberBand* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQRubberBand* self, QMetaMethod* signal);
}QRubberBand_VTable;

const QRubberBand_VTable* QRubberBand_vtbl(const VirtualQRubberBand* self);
void* QRubberBand_vdata(const VirtualQRubberBand* self);
void QRubberBand_setVdata(VirtualQRubberBand* self, void* vdata);

VirtualQRubberBand* QRubberBand_new(const QRubberBand_VTable* vtbl, void* vdata, int param1);
VirtualQRubberBand* QRubberBand_new2(const QRubberBand_VTable* vtbl, void* vdata, int param1, QWidget* param2);

void QRubberBand_virtbase(QRubberBand* src, QWidget** outptr_QWidget);
QMetaObject* QRubberBand_metaObject(const QRubberBand* self);
void* QRubberBand_metacast(QRubberBand* self, const char* param1);
int QRubberBand_metacall(QRubberBand* self, int param1, int param2, void** param3);
struct miqt_string QRubberBand_tr(const char* s);
int QRubberBand_shape(const QRubberBand* self);
void QRubberBand_setGeometry(QRubberBand* self, QRect* r);
void QRubberBand_setGeometry2(QRubberBand* self, int x, int y, int w, int h);
void QRubberBand_move(QRubberBand* self, int x, int y);
void QRubberBand_moveWithQPoint(QRubberBand* self, QPoint* p);
void QRubberBand_resize(QRubberBand* self, int w, int h);
void QRubberBand_resizeWithQSize(QRubberBand* self, QSize* s);
bool QRubberBand_event(QRubberBand* self, QEvent* e);
void QRubberBand_paintEvent(QRubberBand* self, QPaintEvent* param1);
void QRubberBand_changeEvent(QRubberBand* self, QEvent* param1);
void QRubberBand_showEvent(QRubberBand* self, QShowEvent* param1);
void QRubberBand_resizeEvent(QRubberBand* self, QResizeEvent* param1);
void QRubberBand_moveEvent(QRubberBand* self, QMoveEvent* param1);
void QRubberBand_initStyleOption(const QRubberBand* self, QStyleOptionRubberBand* option);
struct miqt_string QRubberBand_tr2(const char* s, const char* c);
struct miqt_string QRubberBand_tr3(const char* s, const char* c, int n);

QMetaObject* QRubberBand_virtualbase_metaObject(const VirtualQRubberBand* self);
void* QRubberBand_virtualbase_metacast(VirtualQRubberBand* self, const char* param1);
int QRubberBand_virtualbase_metacall(VirtualQRubberBand* self, int param1, int param2, void** param3);
bool QRubberBand_virtualbase_event(VirtualQRubberBand* self, QEvent* e);
void QRubberBand_virtualbase_paintEvent(VirtualQRubberBand* self, QPaintEvent* param1);
void QRubberBand_virtualbase_changeEvent(VirtualQRubberBand* self, QEvent* param1);
void QRubberBand_virtualbase_showEvent(VirtualQRubberBand* self, QShowEvent* param1);
void QRubberBand_virtualbase_resizeEvent(VirtualQRubberBand* self, QResizeEvent* param1);
void QRubberBand_virtualbase_moveEvent(VirtualQRubberBand* self, QMoveEvent* param1);
void QRubberBand_virtualbase_initStyleOption(const VirtualQRubberBand* self, QStyleOptionRubberBand* option);
int QRubberBand_virtualbase_devType(const VirtualQRubberBand* self);
void QRubberBand_virtualbase_setVisible(VirtualQRubberBand* self, bool visible);
QSize* QRubberBand_virtualbase_sizeHint(const VirtualQRubberBand* self);
QSize* QRubberBand_virtualbase_minimumSizeHint(const VirtualQRubberBand* self);
int QRubberBand_virtualbase_heightForWidth(const VirtualQRubberBand* self, int param1);
bool QRubberBand_virtualbase_hasHeightForWidth(const VirtualQRubberBand* self);
QPaintEngine* QRubberBand_virtualbase_paintEngine(const VirtualQRubberBand* self);
void QRubberBand_virtualbase_mousePressEvent(VirtualQRubberBand* self, QMouseEvent* event);
void QRubberBand_virtualbase_mouseReleaseEvent(VirtualQRubberBand* self, QMouseEvent* event);
void QRubberBand_virtualbase_mouseDoubleClickEvent(VirtualQRubberBand* self, QMouseEvent* event);
void QRubberBand_virtualbase_mouseMoveEvent(VirtualQRubberBand* self, QMouseEvent* event);
void QRubberBand_virtualbase_wheelEvent(VirtualQRubberBand* self, QWheelEvent* event);
void QRubberBand_virtualbase_keyPressEvent(VirtualQRubberBand* self, QKeyEvent* event);
void QRubberBand_virtualbase_keyReleaseEvent(VirtualQRubberBand* self, QKeyEvent* event);
void QRubberBand_virtualbase_focusInEvent(VirtualQRubberBand* self, QFocusEvent* event);
void QRubberBand_virtualbase_focusOutEvent(VirtualQRubberBand* self, QFocusEvent* event);
void QRubberBand_virtualbase_enterEvent(VirtualQRubberBand* self, QEnterEvent* event);
void QRubberBand_virtualbase_leaveEvent(VirtualQRubberBand* self, QEvent* event);
void QRubberBand_virtualbase_closeEvent(VirtualQRubberBand* self, QCloseEvent* event);
void QRubberBand_virtualbase_contextMenuEvent(VirtualQRubberBand* self, QContextMenuEvent* event);
void QRubberBand_virtualbase_tabletEvent(VirtualQRubberBand* self, QTabletEvent* event);
void QRubberBand_virtualbase_actionEvent(VirtualQRubberBand* self, QActionEvent* event);
void QRubberBand_virtualbase_dragEnterEvent(VirtualQRubberBand* self, QDragEnterEvent* event);
void QRubberBand_virtualbase_dragMoveEvent(VirtualQRubberBand* self, QDragMoveEvent* event);
void QRubberBand_virtualbase_dragLeaveEvent(VirtualQRubberBand* self, QDragLeaveEvent* event);
void QRubberBand_virtualbase_dropEvent(VirtualQRubberBand* self, QDropEvent* event);
void QRubberBand_virtualbase_hideEvent(VirtualQRubberBand* self, QHideEvent* event);
bool QRubberBand_virtualbase_nativeEvent(VirtualQRubberBand* self, struct miqt_string eventType, void* message, intptr_t* result);
int QRubberBand_virtualbase_metric(const VirtualQRubberBand* self, int param1);
void QRubberBand_virtualbase_initPainter(const VirtualQRubberBand* self, QPainter* painter);
QPaintDevice* QRubberBand_virtualbase_redirected(const VirtualQRubberBand* self, QPoint* offset);
QPainter* QRubberBand_virtualbase_sharedPainter(const VirtualQRubberBand* self);
void QRubberBand_virtualbase_inputMethodEvent(VirtualQRubberBand* self, QInputMethodEvent* param1);
QVariant* QRubberBand_virtualbase_inputMethodQuery(const VirtualQRubberBand* self, int param1);
bool QRubberBand_virtualbase_focusNextPrevChild(VirtualQRubberBand* self, bool next);
bool QRubberBand_virtualbase_eventFilter(VirtualQRubberBand* self, QObject* watched, QEvent* event);
void QRubberBand_virtualbase_timerEvent(VirtualQRubberBand* self, QTimerEvent* event);
void QRubberBand_virtualbase_childEvent(VirtualQRubberBand* self, QChildEvent* event);
void QRubberBand_virtualbase_customEvent(VirtualQRubberBand* self, QEvent* event);
void QRubberBand_virtualbase_connectNotify(VirtualQRubberBand* self, QMetaMethod* signal);
void QRubberBand_virtualbase_disconnectNotify(VirtualQRubberBand* self, QMetaMethod* signal);

void QRubberBand_protectedbase_updateMicroFocus(VirtualQRubberBand* self);
void QRubberBand_protectedbase_create(VirtualQRubberBand* self);
void QRubberBand_protectedbase_destroy(VirtualQRubberBand* self);
bool QRubberBand_protectedbase_focusNextChild(VirtualQRubberBand* self);
bool QRubberBand_protectedbase_focusPreviousChild(VirtualQRubberBand* self);
QObject* QRubberBand_protectedbase_sender(const VirtualQRubberBand* self);
int QRubberBand_protectedbase_senderSignalIndex(const VirtualQRubberBand* self);
int QRubberBand_protectedbase_receivers(const VirtualQRubberBand* self, const char* signal);
bool QRubberBand_protectedbase_isSignalConnected(const VirtualQRubberBand* self, QMetaMethod* signal);

const QMetaObject* QRubberBand_staticMetaObject();
void QRubberBand_delete(QRubberBand* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
