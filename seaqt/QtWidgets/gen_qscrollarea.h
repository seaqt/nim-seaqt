#pragma once
#ifndef SEAQT_QTWIDGETS_GEN_QSCROLLAREA_H
#define SEAQT_QTWIDGETS_GEN_QSCROLLAREA_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt/libseaqt.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QAbstractScrollArea;
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
class QFrame;
class QHideEvent;
class QInputMethodEvent;
class QKeyEvent;
class QMargins;
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
class QScrollArea;
class QShowEvent;
class QSize;
class QStyleOptionFrame;
class QTabletEvent;
class QTimerEvent;
class QVariant;
class QWheelEvent;
class QWidget;
#else
typedef struct QAbstractScrollArea QAbstractScrollArea;
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
typedef struct QFrame QFrame;
typedef struct QHideEvent QHideEvent;
typedef struct QInputMethodEvent QInputMethodEvent;
typedef struct QKeyEvent QKeyEvent;
typedef struct QMargins QMargins;
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
typedef struct QScrollArea QScrollArea;
typedef struct QShowEvent QShowEvent;
typedef struct QSize QSize;
typedef struct QStyleOptionFrame QStyleOptionFrame;
typedef struct QTabletEvent QTabletEvent;
typedef struct QTimerEvent QTimerEvent;
typedef struct QVariant QVariant;
typedef struct QWheelEvent QWheelEvent;
typedef struct QWidget QWidget;
#endif

typedef struct VirtualQScrollArea VirtualQScrollArea;
typedef struct QScrollArea_VTable{
	void (*destructor)(VirtualQScrollArea* self);
	QMetaObject* (*metaObject)(const VirtualQScrollArea* self);
	void* (*metacast)(VirtualQScrollArea* self, const char* param1);
	int (*metacall)(VirtualQScrollArea* self, int param1, int param2, void** param3);
	QSize* (*sizeHint)(const VirtualQScrollArea* self);
	bool (*focusNextPrevChild)(VirtualQScrollArea* self, bool next);
	bool (*event)(VirtualQScrollArea* self, QEvent* param1);
	bool (*eventFilter)(VirtualQScrollArea* self, QObject* param1, QEvent* param2);
	void (*resizeEvent)(VirtualQScrollArea* self, QResizeEvent* param1);
	void (*scrollContentsBy)(VirtualQScrollArea* self, int dx, int dy);
	QSize* (*viewportSizeHint)(const VirtualQScrollArea* self);
	QSize* (*minimumSizeHint)(const VirtualQScrollArea* self);
	void (*setupViewport)(VirtualQScrollArea* self, QWidget* viewport);
	bool (*viewportEvent)(VirtualQScrollArea* self, QEvent* param1);
	void (*paintEvent)(VirtualQScrollArea* self, QPaintEvent* param1);
	void (*mousePressEvent)(VirtualQScrollArea* self, QMouseEvent* param1);
	void (*mouseReleaseEvent)(VirtualQScrollArea* self, QMouseEvent* param1);
	void (*mouseDoubleClickEvent)(VirtualQScrollArea* self, QMouseEvent* param1);
	void (*mouseMoveEvent)(VirtualQScrollArea* self, QMouseEvent* param1);
	void (*wheelEvent)(VirtualQScrollArea* self, QWheelEvent* param1);
	void (*contextMenuEvent)(VirtualQScrollArea* self, QContextMenuEvent* param1);
	void (*dragEnterEvent)(VirtualQScrollArea* self, QDragEnterEvent* param1);
	void (*dragMoveEvent)(VirtualQScrollArea* self, QDragMoveEvent* param1);
	void (*dragLeaveEvent)(VirtualQScrollArea* self, QDragLeaveEvent* param1);
	void (*dropEvent)(VirtualQScrollArea* self, QDropEvent* param1);
	void (*keyPressEvent)(VirtualQScrollArea* self, QKeyEvent* param1);
	void (*changeEvent)(VirtualQScrollArea* self, QEvent* param1);
	void (*initStyleOption)(const VirtualQScrollArea* self, QStyleOptionFrame* option);
	int (*devType)(const VirtualQScrollArea* self);
	void (*setVisible)(VirtualQScrollArea* self, bool visible);
	int (*heightForWidth)(const VirtualQScrollArea* self, int param1);
	bool (*hasHeightForWidth)(const VirtualQScrollArea* self);
	QPaintEngine* (*paintEngine)(const VirtualQScrollArea* self);
	void (*keyReleaseEvent)(VirtualQScrollArea* self, QKeyEvent* event);
	void (*focusInEvent)(VirtualQScrollArea* self, QFocusEvent* event);
	void (*focusOutEvent)(VirtualQScrollArea* self, QFocusEvent* event);
	void (*enterEvent)(VirtualQScrollArea* self, QEnterEvent* event);
	void (*leaveEvent)(VirtualQScrollArea* self, QEvent* event);
	void (*moveEvent)(VirtualQScrollArea* self, QMoveEvent* event);
	void (*closeEvent)(VirtualQScrollArea* self, QCloseEvent* event);
	void (*tabletEvent)(VirtualQScrollArea* self, QTabletEvent* event);
	void (*actionEvent)(VirtualQScrollArea* self, QActionEvent* event);
	void (*showEvent)(VirtualQScrollArea* self, QShowEvent* event);
	void (*hideEvent)(VirtualQScrollArea* self, QHideEvent* event);
	bool (*nativeEvent)(VirtualQScrollArea* self, struct miqt_string eventType, void* message, intptr_t* result);
	int (*metric)(const VirtualQScrollArea* self, int param1);
	void (*initPainter)(const VirtualQScrollArea* self, QPainter* painter);
	QPaintDevice* (*redirected)(const VirtualQScrollArea* self, QPoint* offset);
	QPainter* (*sharedPainter)(const VirtualQScrollArea* self);
	void (*inputMethodEvent)(VirtualQScrollArea* self, QInputMethodEvent* param1);
	QVariant* (*inputMethodQuery)(const VirtualQScrollArea* self, int param1);
	void (*timerEvent)(VirtualQScrollArea* self, QTimerEvent* event);
	void (*childEvent)(VirtualQScrollArea* self, QChildEvent* event);
	void (*customEvent)(VirtualQScrollArea* self, QEvent* event);
	void (*connectNotify)(VirtualQScrollArea* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQScrollArea* self, QMetaMethod* signal);
}QScrollArea_VTable;

const QScrollArea_VTable* QScrollArea_vtbl(const VirtualQScrollArea* self);
void* QScrollArea_vdata(const VirtualQScrollArea* self);
void QScrollArea_setVdata(VirtualQScrollArea* self, void* vdata);

VirtualQScrollArea* QScrollArea_new(const QScrollArea_VTable* vtbl, void* vdata, QWidget* parent);
VirtualQScrollArea* QScrollArea_new2(const QScrollArea_VTable* vtbl, void* vdata);

void QScrollArea_virtbase(QScrollArea* src, QAbstractScrollArea** outptr_QAbstractScrollArea);
QMetaObject* QScrollArea_metaObject(const QScrollArea* self);
void* QScrollArea_metacast(QScrollArea* self, const char* param1);
int QScrollArea_metacall(QScrollArea* self, int param1, int param2, void** param3);
struct miqt_string QScrollArea_tr(const char* s);
QWidget* QScrollArea_widget(const QScrollArea* self);
void QScrollArea_setWidget(QScrollArea* self, QWidget* widget);
QWidget* QScrollArea_takeWidget(QScrollArea* self);
bool QScrollArea_widgetResizable(const QScrollArea* self);
void QScrollArea_setWidgetResizable(QScrollArea* self, bool resizable);
QSize* QScrollArea_sizeHint(const QScrollArea* self);
bool QScrollArea_focusNextPrevChild(QScrollArea* self, bool next);
int QScrollArea_alignment(const QScrollArea* self);
void QScrollArea_setAlignment(QScrollArea* self, int alignment);
void QScrollArea_ensureVisible(QScrollArea* self, int x, int y);
void QScrollArea_ensureWidgetVisible(QScrollArea* self, QWidget* childWidget);
bool QScrollArea_event(QScrollArea* self, QEvent* param1);
bool QScrollArea_eventFilter(QScrollArea* self, QObject* param1, QEvent* param2);
void QScrollArea_resizeEvent(QScrollArea* self, QResizeEvent* param1);
void QScrollArea_scrollContentsBy(QScrollArea* self, int dx, int dy);
QSize* QScrollArea_viewportSizeHint(const QScrollArea* self);
struct miqt_string QScrollArea_tr2(const char* s, const char* c);
struct miqt_string QScrollArea_tr3(const char* s, const char* c, int n);
void QScrollArea_ensureVisible3(QScrollArea* self, int x, int y, int xmargin);
void QScrollArea_ensureVisible4(QScrollArea* self, int x, int y, int xmargin, int ymargin);
void QScrollArea_ensureWidgetVisible2(QScrollArea* self, QWidget* childWidget, int xmargin);
void QScrollArea_ensureWidgetVisible3(QScrollArea* self, QWidget* childWidget, int xmargin, int ymargin);

QMetaObject* QScrollArea_virtualbase_metaObject(const VirtualQScrollArea* self);
void* QScrollArea_virtualbase_metacast(VirtualQScrollArea* self, const char* param1);
int QScrollArea_virtualbase_metacall(VirtualQScrollArea* self, int param1, int param2, void** param3);
QSize* QScrollArea_virtualbase_sizeHint(const VirtualQScrollArea* self);
bool QScrollArea_virtualbase_focusNextPrevChild(VirtualQScrollArea* self, bool next);
bool QScrollArea_virtualbase_event(VirtualQScrollArea* self, QEvent* param1);
bool QScrollArea_virtualbase_eventFilter(VirtualQScrollArea* self, QObject* param1, QEvent* param2);
void QScrollArea_virtualbase_resizeEvent(VirtualQScrollArea* self, QResizeEvent* param1);
void QScrollArea_virtualbase_scrollContentsBy(VirtualQScrollArea* self, int dx, int dy);
QSize* QScrollArea_virtualbase_viewportSizeHint(const VirtualQScrollArea* self);
QSize* QScrollArea_virtualbase_minimumSizeHint(const VirtualQScrollArea* self);
void QScrollArea_virtualbase_setupViewport(VirtualQScrollArea* self, QWidget* viewport);
bool QScrollArea_virtualbase_viewportEvent(VirtualQScrollArea* self, QEvent* param1);
void QScrollArea_virtualbase_paintEvent(VirtualQScrollArea* self, QPaintEvent* param1);
void QScrollArea_virtualbase_mousePressEvent(VirtualQScrollArea* self, QMouseEvent* param1);
void QScrollArea_virtualbase_mouseReleaseEvent(VirtualQScrollArea* self, QMouseEvent* param1);
void QScrollArea_virtualbase_mouseDoubleClickEvent(VirtualQScrollArea* self, QMouseEvent* param1);
void QScrollArea_virtualbase_mouseMoveEvent(VirtualQScrollArea* self, QMouseEvent* param1);
void QScrollArea_virtualbase_wheelEvent(VirtualQScrollArea* self, QWheelEvent* param1);
void QScrollArea_virtualbase_contextMenuEvent(VirtualQScrollArea* self, QContextMenuEvent* param1);
void QScrollArea_virtualbase_dragEnterEvent(VirtualQScrollArea* self, QDragEnterEvent* param1);
void QScrollArea_virtualbase_dragMoveEvent(VirtualQScrollArea* self, QDragMoveEvent* param1);
void QScrollArea_virtualbase_dragLeaveEvent(VirtualQScrollArea* self, QDragLeaveEvent* param1);
void QScrollArea_virtualbase_dropEvent(VirtualQScrollArea* self, QDropEvent* param1);
void QScrollArea_virtualbase_keyPressEvent(VirtualQScrollArea* self, QKeyEvent* param1);
void QScrollArea_virtualbase_changeEvent(VirtualQScrollArea* self, QEvent* param1);
void QScrollArea_virtualbase_initStyleOption(const VirtualQScrollArea* self, QStyleOptionFrame* option);
int QScrollArea_virtualbase_devType(const VirtualQScrollArea* self);
void QScrollArea_virtualbase_setVisible(VirtualQScrollArea* self, bool visible);
int QScrollArea_virtualbase_heightForWidth(const VirtualQScrollArea* self, int param1);
bool QScrollArea_virtualbase_hasHeightForWidth(const VirtualQScrollArea* self);
QPaintEngine* QScrollArea_virtualbase_paintEngine(const VirtualQScrollArea* self);
void QScrollArea_virtualbase_keyReleaseEvent(VirtualQScrollArea* self, QKeyEvent* event);
void QScrollArea_virtualbase_focusInEvent(VirtualQScrollArea* self, QFocusEvent* event);
void QScrollArea_virtualbase_focusOutEvent(VirtualQScrollArea* self, QFocusEvent* event);
void QScrollArea_virtualbase_enterEvent(VirtualQScrollArea* self, QEnterEvent* event);
void QScrollArea_virtualbase_leaveEvent(VirtualQScrollArea* self, QEvent* event);
void QScrollArea_virtualbase_moveEvent(VirtualQScrollArea* self, QMoveEvent* event);
void QScrollArea_virtualbase_closeEvent(VirtualQScrollArea* self, QCloseEvent* event);
void QScrollArea_virtualbase_tabletEvent(VirtualQScrollArea* self, QTabletEvent* event);
void QScrollArea_virtualbase_actionEvent(VirtualQScrollArea* self, QActionEvent* event);
void QScrollArea_virtualbase_showEvent(VirtualQScrollArea* self, QShowEvent* event);
void QScrollArea_virtualbase_hideEvent(VirtualQScrollArea* self, QHideEvent* event);
bool QScrollArea_virtualbase_nativeEvent(VirtualQScrollArea* self, struct miqt_string eventType, void* message, intptr_t* result);
int QScrollArea_virtualbase_metric(const VirtualQScrollArea* self, int param1);
void QScrollArea_virtualbase_initPainter(const VirtualQScrollArea* self, QPainter* painter);
QPaintDevice* QScrollArea_virtualbase_redirected(const VirtualQScrollArea* self, QPoint* offset);
QPainter* QScrollArea_virtualbase_sharedPainter(const VirtualQScrollArea* self);
void QScrollArea_virtualbase_inputMethodEvent(VirtualQScrollArea* self, QInputMethodEvent* param1);
QVariant* QScrollArea_virtualbase_inputMethodQuery(const VirtualQScrollArea* self, int param1);
void QScrollArea_virtualbase_timerEvent(VirtualQScrollArea* self, QTimerEvent* event);
void QScrollArea_virtualbase_childEvent(VirtualQScrollArea* self, QChildEvent* event);
void QScrollArea_virtualbase_customEvent(VirtualQScrollArea* self, QEvent* event);
void QScrollArea_virtualbase_connectNotify(VirtualQScrollArea* self, QMetaMethod* signal);
void QScrollArea_virtualbase_disconnectNotify(VirtualQScrollArea* self, QMetaMethod* signal);

void QScrollArea_protectedbase_setViewportMargins(VirtualQScrollArea* self, int left, int top, int right, int bottom);
QMargins* QScrollArea_protectedbase_viewportMargins(const VirtualQScrollArea* self);
void QScrollArea_protectedbase_drawFrame(VirtualQScrollArea* self, QPainter* param1);
void QScrollArea_protectedbase_updateMicroFocus(VirtualQScrollArea* self);
void QScrollArea_protectedbase_create(VirtualQScrollArea* self);
void QScrollArea_protectedbase_destroy(VirtualQScrollArea* self);
bool QScrollArea_protectedbase_focusNextChild(VirtualQScrollArea* self);
bool QScrollArea_protectedbase_focusPreviousChild(VirtualQScrollArea* self);
QObject* QScrollArea_protectedbase_sender(const VirtualQScrollArea* self);
int QScrollArea_protectedbase_senderSignalIndex(const VirtualQScrollArea* self);
int QScrollArea_protectedbase_receivers(const VirtualQScrollArea* self, const char* signal);
bool QScrollArea_protectedbase_isSignalConnected(const VirtualQScrollArea* self, QMetaMethod* signal);

const QMetaObject* QScrollArea_staticMetaObject();
void QScrollArea_delete(QScrollArea* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
