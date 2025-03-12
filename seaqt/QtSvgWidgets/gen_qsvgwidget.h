#pragma once
#ifndef SEAQT_QTSVGWIDGETS_GEN_QSVGWIDGET_H
#define SEAQT_QTSVGWIDGETS_GEN_QSVGWIDGET_H

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
class QResizeEvent;
class QShowEvent;
class QSize;
class QSvgRenderer;
class QSvgWidget;
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
typedef struct QResizeEvent QResizeEvent;
typedef struct QShowEvent QShowEvent;
typedef struct QSize QSize;
typedef struct QSvgRenderer QSvgRenderer;
typedef struct QSvgWidget QSvgWidget;
typedef struct QTabletEvent QTabletEvent;
typedef struct QTimerEvent QTimerEvent;
typedef struct QVariant QVariant;
typedef struct QWheelEvent QWheelEvent;
typedef struct QWidget QWidget;
#endif

typedef struct VirtualQSvgWidget VirtualQSvgWidget;
typedef struct QSvgWidget_VTable{
	void (*destructor)(VirtualQSvgWidget* self);
	QMetaObject* (*metaObject)(const VirtualQSvgWidget* self);
	void* (*metacast)(VirtualQSvgWidget* self, const char* param1);
	int (*metacall)(VirtualQSvgWidget* self, int param1, int param2, void** param3);
	QSize* (*sizeHint)(const VirtualQSvgWidget* self);
	void (*paintEvent)(VirtualQSvgWidget* self, QPaintEvent* event);
	int (*devType)(const VirtualQSvgWidget* self);
	void (*setVisible)(VirtualQSvgWidget* self, bool visible);
	QSize* (*minimumSizeHint)(const VirtualQSvgWidget* self);
	int (*heightForWidth)(const VirtualQSvgWidget* self, int param1);
	bool (*hasHeightForWidth)(const VirtualQSvgWidget* self);
	QPaintEngine* (*paintEngine)(const VirtualQSvgWidget* self);
	bool (*event)(VirtualQSvgWidget* self, QEvent* event);
	void (*mousePressEvent)(VirtualQSvgWidget* self, QMouseEvent* event);
	void (*mouseReleaseEvent)(VirtualQSvgWidget* self, QMouseEvent* event);
	void (*mouseDoubleClickEvent)(VirtualQSvgWidget* self, QMouseEvent* event);
	void (*mouseMoveEvent)(VirtualQSvgWidget* self, QMouseEvent* event);
	void (*wheelEvent)(VirtualQSvgWidget* self, QWheelEvent* event);
	void (*keyPressEvent)(VirtualQSvgWidget* self, QKeyEvent* event);
	void (*keyReleaseEvent)(VirtualQSvgWidget* self, QKeyEvent* event);
	void (*focusInEvent)(VirtualQSvgWidget* self, QFocusEvent* event);
	void (*focusOutEvent)(VirtualQSvgWidget* self, QFocusEvent* event);
	void (*enterEvent)(VirtualQSvgWidget* self, QEnterEvent* event);
	void (*leaveEvent)(VirtualQSvgWidget* self, QEvent* event);
	void (*moveEvent)(VirtualQSvgWidget* self, QMoveEvent* event);
	void (*resizeEvent)(VirtualQSvgWidget* self, QResizeEvent* event);
	void (*closeEvent)(VirtualQSvgWidget* self, QCloseEvent* event);
	void (*contextMenuEvent)(VirtualQSvgWidget* self, QContextMenuEvent* event);
	void (*tabletEvent)(VirtualQSvgWidget* self, QTabletEvent* event);
	void (*actionEvent)(VirtualQSvgWidget* self, QActionEvent* event);
	void (*dragEnterEvent)(VirtualQSvgWidget* self, QDragEnterEvent* event);
	void (*dragMoveEvent)(VirtualQSvgWidget* self, QDragMoveEvent* event);
	void (*dragLeaveEvent)(VirtualQSvgWidget* self, QDragLeaveEvent* event);
	void (*dropEvent)(VirtualQSvgWidget* self, QDropEvent* event);
	void (*showEvent)(VirtualQSvgWidget* self, QShowEvent* event);
	void (*hideEvent)(VirtualQSvgWidget* self, QHideEvent* event);
	bool (*nativeEvent)(VirtualQSvgWidget* self, struct miqt_string eventType, void* message, intptr_t* result);
	void (*changeEvent)(VirtualQSvgWidget* self, QEvent* param1);
	int (*metric)(const VirtualQSvgWidget* self, int param1);
	void (*initPainter)(const VirtualQSvgWidget* self, QPainter* painter);
	QPaintDevice* (*redirected)(const VirtualQSvgWidget* self, QPoint* offset);
	QPainter* (*sharedPainter)(const VirtualQSvgWidget* self);
	void (*inputMethodEvent)(VirtualQSvgWidget* self, QInputMethodEvent* param1);
	QVariant* (*inputMethodQuery)(const VirtualQSvgWidget* self, int param1);
	bool (*focusNextPrevChild)(VirtualQSvgWidget* self, bool next);
	bool (*eventFilter)(VirtualQSvgWidget* self, QObject* watched, QEvent* event);
	void (*timerEvent)(VirtualQSvgWidget* self, QTimerEvent* event);
	void (*childEvent)(VirtualQSvgWidget* self, QChildEvent* event);
	void (*customEvent)(VirtualQSvgWidget* self, QEvent* event);
	void (*connectNotify)(VirtualQSvgWidget* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQSvgWidget* self, QMetaMethod* signal);
}QSvgWidget_VTable;

const QSvgWidget_VTable* QSvgWidget_vtbl(const VirtualQSvgWidget* self);
void* QSvgWidget_vdata(const VirtualQSvgWidget* self);
void QSvgWidget_setVdata(VirtualQSvgWidget* self, void* vdata);

VirtualQSvgWidget* QSvgWidget_new(const QSvgWidget_VTable* vtbl, void* vdata, QWidget* parent);
VirtualQSvgWidget* QSvgWidget_new2(const QSvgWidget_VTable* vtbl, void* vdata);
VirtualQSvgWidget* QSvgWidget_new3(const QSvgWidget_VTable* vtbl, void* vdata, struct miqt_string file);
VirtualQSvgWidget* QSvgWidget_new4(const QSvgWidget_VTable* vtbl, void* vdata, struct miqt_string file, QWidget* parent);

void QSvgWidget_virtbase(QSvgWidget* src, QWidget** outptr_QWidget);
QMetaObject* QSvgWidget_metaObject(const QSvgWidget* self);
void* QSvgWidget_metacast(QSvgWidget* self, const char* param1);
int QSvgWidget_metacall(QSvgWidget* self, int param1, int param2, void** param3);
struct miqt_string QSvgWidget_tr(const char* s);
QSvgRenderer* QSvgWidget_renderer(const QSvgWidget* self);
QSize* QSvgWidget_sizeHint(const QSvgWidget* self);
void QSvgWidget_load(QSvgWidget* self, struct miqt_string file);
void QSvgWidget_loadWithContents(QSvgWidget* self, struct miqt_string contents);
void QSvgWidget_paintEvent(QSvgWidget* self, QPaintEvent* event);
struct miqt_string QSvgWidget_tr2(const char* s, const char* c);
struct miqt_string QSvgWidget_tr3(const char* s, const char* c, int n);

QMetaObject* QSvgWidget_virtualbase_metaObject(const VirtualQSvgWidget* self);
void* QSvgWidget_virtualbase_metacast(VirtualQSvgWidget* self, const char* param1);
int QSvgWidget_virtualbase_metacall(VirtualQSvgWidget* self, int param1, int param2, void** param3);
QSize* QSvgWidget_virtualbase_sizeHint(const VirtualQSvgWidget* self);
void QSvgWidget_virtualbase_paintEvent(VirtualQSvgWidget* self, QPaintEvent* event);
int QSvgWidget_virtualbase_devType(const VirtualQSvgWidget* self);
void QSvgWidget_virtualbase_setVisible(VirtualQSvgWidget* self, bool visible);
QSize* QSvgWidget_virtualbase_minimumSizeHint(const VirtualQSvgWidget* self);
int QSvgWidget_virtualbase_heightForWidth(const VirtualQSvgWidget* self, int param1);
bool QSvgWidget_virtualbase_hasHeightForWidth(const VirtualQSvgWidget* self);
QPaintEngine* QSvgWidget_virtualbase_paintEngine(const VirtualQSvgWidget* self);
bool QSvgWidget_virtualbase_event(VirtualQSvgWidget* self, QEvent* event);
void QSvgWidget_virtualbase_mousePressEvent(VirtualQSvgWidget* self, QMouseEvent* event);
void QSvgWidget_virtualbase_mouseReleaseEvent(VirtualQSvgWidget* self, QMouseEvent* event);
void QSvgWidget_virtualbase_mouseDoubleClickEvent(VirtualQSvgWidget* self, QMouseEvent* event);
void QSvgWidget_virtualbase_mouseMoveEvent(VirtualQSvgWidget* self, QMouseEvent* event);
void QSvgWidget_virtualbase_wheelEvent(VirtualQSvgWidget* self, QWheelEvent* event);
void QSvgWidget_virtualbase_keyPressEvent(VirtualQSvgWidget* self, QKeyEvent* event);
void QSvgWidget_virtualbase_keyReleaseEvent(VirtualQSvgWidget* self, QKeyEvent* event);
void QSvgWidget_virtualbase_focusInEvent(VirtualQSvgWidget* self, QFocusEvent* event);
void QSvgWidget_virtualbase_focusOutEvent(VirtualQSvgWidget* self, QFocusEvent* event);
void QSvgWidget_virtualbase_enterEvent(VirtualQSvgWidget* self, QEnterEvent* event);
void QSvgWidget_virtualbase_leaveEvent(VirtualQSvgWidget* self, QEvent* event);
void QSvgWidget_virtualbase_moveEvent(VirtualQSvgWidget* self, QMoveEvent* event);
void QSvgWidget_virtualbase_resizeEvent(VirtualQSvgWidget* self, QResizeEvent* event);
void QSvgWidget_virtualbase_closeEvent(VirtualQSvgWidget* self, QCloseEvent* event);
void QSvgWidget_virtualbase_contextMenuEvent(VirtualQSvgWidget* self, QContextMenuEvent* event);
void QSvgWidget_virtualbase_tabletEvent(VirtualQSvgWidget* self, QTabletEvent* event);
void QSvgWidget_virtualbase_actionEvent(VirtualQSvgWidget* self, QActionEvent* event);
void QSvgWidget_virtualbase_dragEnterEvent(VirtualQSvgWidget* self, QDragEnterEvent* event);
void QSvgWidget_virtualbase_dragMoveEvent(VirtualQSvgWidget* self, QDragMoveEvent* event);
void QSvgWidget_virtualbase_dragLeaveEvent(VirtualQSvgWidget* self, QDragLeaveEvent* event);
void QSvgWidget_virtualbase_dropEvent(VirtualQSvgWidget* self, QDropEvent* event);
void QSvgWidget_virtualbase_showEvent(VirtualQSvgWidget* self, QShowEvent* event);
void QSvgWidget_virtualbase_hideEvent(VirtualQSvgWidget* self, QHideEvent* event);
bool QSvgWidget_virtualbase_nativeEvent(VirtualQSvgWidget* self, struct miqt_string eventType, void* message, intptr_t* result);
void QSvgWidget_virtualbase_changeEvent(VirtualQSvgWidget* self, QEvent* param1);
int QSvgWidget_virtualbase_metric(const VirtualQSvgWidget* self, int param1);
void QSvgWidget_virtualbase_initPainter(const VirtualQSvgWidget* self, QPainter* painter);
QPaintDevice* QSvgWidget_virtualbase_redirected(const VirtualQSvgWidget* self, QPoint* offset);
QPainter* QSvgWidget_virtualbase_sharedPainter(const VirtualQSvgWidget* self);
void QSvgWidget_virtualbase_inputMethodEvent(VirtualQSvgWidget* self, QInputMethodEvent* param1);
QVariant* QSvgWidget_virtualbase_inputMethodQuery(const VirtualQSvgWidget* self, int param1);
bool QSvgWidget_virtualbase_focusNextPrevChild(VirtualQSvgWidget* self, bool next);
bool QSvgWidget_virtualbase_eventFilter(VirtualQSvgWidget* self, QObject* watched, QEvent* event);
void QSvgWidget_virtualbase_timerEvent(VirtualQSvgWidget* self, QTimerEvent* event);
void QSvgWidget_virtualbase_childEvent(VirtualQSvgWidget* self, QChildEvent* event);
void QSvgWidget_virtualbase_customEvent(VirtualQSvgWidget* self, QEvent* event);
void QSvgWidget_virtualbase_connectNotify(VirtualQSvgWidget* self, QMetaMethod* signal);
void QSvgWidget_virtualbase_disconnectNotify(VirtualQSvgWidget* self, QMetaMethod* signal);

void QSvgWidget_protectedbase_updateMicroFocus(VirtualQSvgWidget* self);
void QSvgWidget_protectedbase_create(VirtualQSvgWidget* self);
void QSvgWidget_protectedbase_destroy(VirtualQSvgWidget* self);
bool QSvgWidget_protectedbase_focusNextChild(VirtualQSvgWidget* self);
bool QSvgWidget_protectedbase_focusPreviousChild(VirtualQSvgWidget* self);
QObject* QSvgWidget_protectedbase_sender(const VirtualQSvgWidget* self);
int QSvgWidget_protectedbase_senderSignalIndex(const VirtualQSvgWidget* self);
int QSvgWidget_protectedbase_receivers(const VirtualQSvgWidget* self, const char* signal);
bool QSvgWidget_protectedbase_isSignalConnected(const VirtualQSvgWidget* self, QMetaMethod* signal);

const QMetaObject* QSvgWidget_staticMetaObject();
void QSvgWidget_delete(QSvgWidget* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
