#pragma once
#ifndef SEAQT_QTWIDGETS_GEN_QABSTRACTSCROLLAREA_H
#define SEAQT_QTWIDGETS_GEN_QABSTRACTSCROLLAREA_H

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
class QScrollBar;
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
typedef struct QScrollBar QScrollBar;
typedef struct QShowEvent QShowEvent;
typedef struct QSize QSize;
typedef struct QStyleOptionFrame QStyleOptionFrame;
typedef struct QTabletEvent QTabletEvent;
typedef struct QTimerEvent QTimerEvent;
typedef struct QVariant QVariant;
typedef struct QWheelEvent QWheelEvent;
typedef struct QWidget QWidget;
#endif

typedef struct VirtualQAbstractScrollArea VirtualQAbstractScrollArea;
typedef struct QAbstractScrollArea_VTable{
	void (*destructor)(VirtualQAbstractScrollArea* self);
	QMetaObject* (*metaObject)(const VirtualQAbstractScrollArea* self);
	void* (*metacast)(VirtualQAbstractScrollArea* self, const char* param1);
	int (*metacall)(VirtualQAbstractScrollArea* self, int param1, int param2, void** param3);
	QSize* (*minimumSizeHint)(const VirtualQAbstractScrollArea* self);
	QSize* (*sizeHint)(const VirtualQAbstractScrollArea* self);
	void (*setupViewport)(VirtualQAbstractScrollArea* self, QWidget* viewport);
	bool (*eventFilter)(VirtualQAbstractScrollArea* self, QObject* param1, QEvent* param2);
	bool (*event)(VirtualQAbstractScrollArea* self, QEvent* param1);
	bool (*viewportEvent)(VirtualQAbstractScrollArea* self, QEvent* param1);
	void (*resizeEvent)(VirtualQAbstractScrollArea* self, QResizeEvent* param1);
	void (*paintEvent)(VirtualQAbstractScrollArea* self, QPaintEvent* param1);
	void (*mousePressEvent)(VirtualQAbstractScrollArea* self, QMouseEvent* param1);
	void (*mouseReleaseEvent)(VirtualQAbstractScrollArea* self, QMouseEvent* param1);
	void (*mouseDoubleClickEvent)(VirtualQAbstractScrollArea* self, QMouseEvent* param1);
	void (*mouseMoveEvent)(VirtualQAbstractScrollArea* self, QMouseEvent* param1);
	void (*wheelEvent)(VirtualQAbstractScrollArea* self, QWheelEvent* param1);
	void (*contextMenuEvent)(VirtualQAbstractScrollArea* self, QContextMenuEvent* param1);
	void (*dragEnterEvent)(VirtualQAbstractScrollArea* self, QDragEnterEvent* param1);
	void (*dragMoveEvent)(VirtualQAbstractScrollArea* self, QDragMoveEvent* param1);
	void (*dragLeaveEvent)(VirtualQAbstractScrollArea* self, QDragLeaveEvent* param1);
	void (*dropEvent)(VirtualQAbstractScrollArea* self, QDropEvent* param1);
	void (*keyPressEvent)(VirtualQAbstractScrollArea* self, QKeyEvent* param1);
	void (*scrollContentsBy)(VirtualQAbstractScrollArea* self, int dx, int dy);
	QSize* (*viewportSizeHint)(const VirtualQAbstractScrollArea* self);
	void (*changeEvent)(VirtualQAbstractScrollArea* self, QEvent* param1);
	int (*devType)(const VirtualQAbstractScrollArea* self);
	void (*setVisible)(VirtualQAbstractScrollArea* self, bool visible);
	int (*heightForWidth)(const VirtualQAbstractScrollArea* self, int param1);
	bool (*hasHeightForWidth)(const VirtualQAbstractScrollArea* self);
	QPaintEngine* (*paintEngine)(const VirtualQAbstractScrollArea* self);
	void (*keyReleaseEvent)(VirtualQAbstractScrollArea* self, QKeyEvent* event);
	void (*focusInEvent)(VirtualQAbstractScrollArea* self, QFocusEvent* event);
	void (*focusOutEvent)(VirtualQAbstractScrollArea* self, QFocusEvent* event);
	void (*enterEvent)(VirtualQAbstractScrollArea* self, QEvent* event);
	void (*leaveEvent)(VirtualQAbstractScrollArea* self, QEvent* event);
	void (*moveEvent)(VirtualQAbstractScrollArea* self, QMoveEvent* event);
	void (*closeEvent)(VirtualQAbstractScrollArea* self, QCloseEvent* event);
	void (*tabletEvent)(VirtualQAbstractScrollArea* self, QTabletEvent* event);
	void (*actionEvent)(VirtualQAbstractScrollArea* self, QActionEvent* event);
	void (*showEvent)(VirtualQAbstractScrollArea* self, QShowEvent* event);
	void (*hideEvent)(VirtualQAbstractScrollArea* self, QHideEvent* event);
	bool (*nativeEvent)(VirtualQAbstractScrollArea* self, struct miqt_string eventType, void* message, long* result);
	int (*metric)(const VirtualQAbstractScrollArea* self, int param1);
	void (*initPainter)(const VirtualQAbstractScrollArea* self, QPainter* painter);
	QPaintDevice* (*redirected)(const VirtualQAbstractScrollArea* self, QPoint* offset);
	QPainter* (*sharedPainter)(const VirtualQAbstractScrollArea* self);
	void (*inputMethodEvent)(VirtualQAbstractScrollArea* self, QInputMethodEvent* param1);
	QVariant* (*inputMethodQuery)(const VirtualQAbstractScrollArea* self, int param1);
	bool (*focusNextPrevChild)(VirtualQAbstractScrollArea* self, bool next);
	void (*timerEvent)(VirtualQAbstractScrollArea* self, QTimerEvent* event);
	void (*childEvent)(VirtualQAbstractScrollArea* self, QChildEvent* event);
	void (*customEvent)(VirtualQAbstractScrollArea* self, QEvent* event);
	void (*connectNotify)(VirtualQAbstractScrollArea* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQAbstractScrollArea* self, QMetaMethod* signal);
}QAbstractScrollArea_VTable;

const QAbstractScrollArea_VTable* QAbstractScrollArea_vtbl(const VirtualQAbstractScrollArea* self);
void* QAbstractScrollArea_vdata(const VirtualQAbstractScrollArea* self);
void QAbstractScrollArea_setVdata(VirtualQAbstractScrollArea* self, void* vdata);

VirtualQAbstractScrollArea* QAbstractScrollArea_new(const QAbstractScrollArea_VTable* vtbl, void* vdata, QWidget* parent);
VirtualQAbstractScrollArea* QAbstractScrollArea_new2(const QAbstractScrollArea_VTable* vtbl, void* vdata);

void QAbstractScrollArea_virtbase(QAbstractScrollArea* src, QFrame** outptr_QFrame);
QMetaObject* QAbstractScrollArea_metaObject(const QAbstractScrollArea* self);
void* QAbstractScrollArea_metacast(QAbstractScrollArea* self, const char* param1);
int QAbstractScrollArea_metacall(QAbstractScrollArea* self, int param1, int param2, void** param3);
struct miqt_string QAbstractScrollArea_tr(const char* s);
struct miqt_string QAbstractScrollArea_trUtf8(const char* s);
int QAbstractScrollArea_verticalScrollBarPolicy(const QAbstractScrollArea* self);
void QAbstractScrollArea_setVerticalScrollBarPolicy(QAbstractScrollArea* self, int verticalScrollBarPolicy);
QScrollBar* QAbstractScrollArea_verticalScrollBar(const QAbstractScrollArea* self);
void QAbstractScrollArea_setVerticalScrollBar(QAbstractScrollArea* self, QScrollBar* scrollbar);
int QAbstractScrollArea_horizontalScrollBarPolicy(const QAbstractScrollArea* self);
void QAbstractScrollArea_setHorizontalScrollBarPolicy(QAbstractScrollArea* self, int horizontalScrollBarPolicy);
QScrollBar* QAbstractScrollArea_horizontalScrollBar(const QAbstractScrollArea* self);
void QAbstractScrollArea_setHorizontalScrollBar(QAbstractScrollArea* self, QScrollBar* scrollbar);
QWidget* QAbstractScrollArea_cornerWidget(const QAbstractScrollArea* self);
void QAbstractScrollArea_setCornerWidget(QAbstractScrollArea* self, QWidget* widget);
void QAbstractScrollArea_addScrollBarWidget(QAbstractScrollArea* self, QWidget* widget, int alignment);
struct miqt_array /* of QWidget* */  QAbstractScrollArea_scrollBarWidgets(QAbstractScrollArea* self, int alignment);
QWidget* QAbstractScrollArea_viewport(const QAbstractScrollArea* self);
void QAbstractScrollArea_setViewport(QAbstractScrollArea* self, QWidget* widget);
QSize* QAbstractScrollArea_maximumViewportSize(const QAbstractScrollArea* self);
QSize* QAbstractScrollArea_minimumSizeHint(const QAbstractScrollArea* self);
QSize* QAbstractScrollArea_sizeHint(const QAbstractScrollArea* self);
void QAbstractScrollArea_setupViewport(QAbstractScrollArea* self, QWidget* viewport);
int QAbstractScrollArea_sizeAdjustPolicy(const QAbstractScrollArea* self);
void QAbstractScrollArea_setSizeAdjustPolicy(QAbstractScrollArea* self, int policy);
bool QAbstractScrollArea_eventFilter(QAbstractScrollArea* self, QObject* param1, QEvent* param2);
bool QAbstractScrollArea_event(QAbstractScrollArea* self, QEvent* param1);
bool QAbstractScrollArea_viewportEvent(QAbstractScrollArea* self, QEvent* param1);
void QAbstractScrollArea_resizeEvent(QAbstractScrollArea* self, QResizeEvent* param1);
void QAbstractScrollArea_paintEvent(QAbstractScrollArea* self, QPaintEvent* param1);
void QAbstractScrollArea_mousePressEvent(QAbstractScrollArea* self, QMouseEvent* param1);
void QAbstractScrollArea_mouseReleaseEvent(QAbstractScrollArea* self, QMouseEvent* param1);
void QAbstractScrollArea_mouseDoubleClickEvent(QAbstractScrollArea* self, QMouseEvent* param1);
void QAbstractScrollArea_mouseMoveEvent(QAbstractScrollArea* self, QMouseEvent* param1);
void QAbstractScrollArea_wheelEvent(QAbstractScrollArea* self, QWheelEvent* param1);
void QAbstractScrollArea_contextMenuEvent(QAbstractScrollArea* self, QContextMenuEvent* param1);
void QAbstractScrollArea_dragEnterEvent(QAbstractScrollArea* self, QDragEnterEvent* param1);
void QAbstractScrollArea_dragMoveEvent(QAbstractScrollArea* self, QDragMoveEvent* param1);
void QAbstractScrollArea_dragLeaveEvent(QAbstractScrollArea* self, QDragLeaveEvent* param1);
void QAbstractScrollArea_dropEvent(QAbstractScrollArea* self, QDropEvent* param1);
void QAbstractScrollArea_keyPressEvent(QAbstractScrollArea* self, QKeyEvent* param1);
void QAbstractScrollArea_scrollContentsBy(QAbstractScrollArea* self, int dx, int dy);
QSize* QAbstractScrollArea_viewportSizeHint(const QAbstractScrollArea* self);
struct miqt_string QAbstractScrollArea_tr2(const char* s, const char* c);
struct miqt_string QAbstractScrollArea_tr3(const char* s, const char* c, int n);
struct miqt_string QAbstractScrollArea_trUtf82(const char* s, const char* c);
struct miqt_string QAbstractScrollArea_trUtf83(const char* s, const char* c, int n);

QMetaObject* QAbstractScrollArea_virtualbase_metaObject(const VirtualQAbstractScrollArea* self);
void* QAbstractScrollArea_virtualbase_metacast(VirtualQAbstractScrollArea* self, const char* param1);
int QAbstractScrollArea_virtualbase_metacall(VirtualQAbstractScrollArea* self, int param1, int param2, void** param3);
QSize* QAbstractScrollArea_virtualbase_minimumSizeHint(const VirtualQAbstractScrollArea* self);
QSize* QAbstractScrollArea_virtualbase_sizeHint(const VirtualQAbstractScrollArea* self);
void QAbstractScrollArea_virtualbase_setupViewport(VirtualQAbstractScrollArea* self, QWidget* viewport);
bool QAbstractScrollArea_virtualbase_eventFilter(VirtualQAbstractScrollArea* self, QObject* param1, QEvent* param2);
bool QAbstractScrollArea_virtualbase_event(VirtualQAbstractScrollArea* self, QEvent* param1);
bool QAbstractScrollArea_virtualbase_viewportEvent(VirtualQAbstractScrollArea* self, QEvent* param1);
void QAbstractScrollArea_virtualbase_resizeEvent(VirtualQAbstractScrollArea* self, QResizeEvent* param1);
void QAbstractScrollArea_virtualbase_paintEvent(VirtualQAbstractScrollArea* self, QPaintEvent* param1);
void QAbstractScrollArea_virtualbase_mousePressEvent(VirtualQAbstractScrollArea* self, QMouseEvent* param1);
void QAbstractScrollArea_virtualbase_mouseReleaseEvent(VirtualQAbstractScrollArea* self, QMouseEvent* param1);
void QAbstractScrollArea_virtualbase_mouseDoubleClickEvent(VirtualQAbstractScrollArea* self, QMouseEvent* param1);
void QAbstractScrollArea_virtualbase_mouseMoveEvent(VirtualQAbstractScrollArea* self, QMouseEvent* param1);
void QAbstractScrollArea_virtualbase_wheelEvent(VirtualQAbstractScrollArea* self, QWheelEvent* param1);
void QAbstractScrollArea_virtualbase_contextMenuEvent(VirtualQAbstractScrollArea* self, QContextMenuEvent* param1);
void QAbstractScrollArea_virtualbase_dragEnterEvent(VirtualQAbstractScrollArea* self, QDragEnterEvent* param1);
void QAbstractScrollArea_virtualbase_dragMoveEvent(VirtualQAbstractScrollArea* self, QDragMoveEvent* param1);
void QAbstractScrollArea_virtualbase_dragLeaveEvent(VirtualQAbstractScrollArea* self, QDragLeaveEvent* param1);
void QAbstractScrollArea_virtualbase_dropEvent(VirtualQAbstractScrollArea* self, QDropEvent* param1);
void QAbstractScrollArea_virtualbase_keyPressEvent(VirtualQAbstractScrollArea* self, QKeyEvent* param1);
void QAbstractScrollArea_virtualbase_scrollContentsBy(VirtualQAbstractScrollArea* self, int dx, int dy);
QSize* QAbstractScrollArea_virtualbase_viewportSizeHint(const VirtualQAbstractScrollArea* self);
void QAbstractScrollArea_virtualbase_changeEvent(VirtualQAbstractScrollArea* self, QEvent* param1);
int QAbstractScrollArea_virtualbase_devType(const VirtualQAbstractScrollArea* self);
void QAbstractScrollArea_virtualbase_setVisible(VirtualQAbstractScrollArea* self, bool visible);
int QAbstractScrollArea_virtualbase_heightForWidth(const VirtualQAbstractScrollArea* self, int param1);
bool QAbstractScrollArea_virtualbase_hasHeightForWidth(const VirtualQAbstractScrollArea* self);
QPaintEngine* QAbstractScrollArea_virtualbase_paintEngine(const VirtualQAbstractScrollArea* self);
void QAbstractScrollArea_virtualbase_keyReleaseEvent(VirtualQAbstractScrollArea* self, QKeyEvent* event);
void QAbstractScrollArea_virtualbase_focusInEvent(VirtualQAbstractScrollArea* self, QFocusEvent* event);
void QAbstractScrollArea_virtualbase_focusOutEvent(VirtualQAbstractScrollArea* self, QFocusEvent* event);
void QAbstractScrollArea_virtualbase_enterEvent(VirtualQAbstractScrollArea* self, QEvent* event);
void QAbstractScrollArea_virtualbase_leaveEvent(VirtualQAbstractScrollArea* self, QEvent* event);
void QAbstractScrollArea_virtualbase_moveEvent(VirtualQAbstractScrollArea* self, QMoveEvent* event);
void QAbstractScrollArea_virtualbase_closeEvent(VirtualQAbstractScrollArea* self, QCloseEvent* event);
void QAbstractScrollArea_virtualbase_tabletEvent(VirtualQAbstractScrollArea* self, QTabletEvent* event);
void QAbstractScrollArea_virtualbase_actionEvent(VirtualQAbstractScrollArea* self, QActionEvent* event);
void QAbstractScrollArea_virtualbase_showEvent(VirtualQAbstractScrollArea* self, QShowEvent* event);
void QAbstractScrollArea_virtualbase_hideEvent(VirtualQAbstractScrollArea* self, QHideEvent* event);
bool QAbstractScrollArea_virtualbase_nativeEvent(VirtualQAbstractScrollArea* self, struct miqt_string eventType, void* message, long* result);
int QAbstractScrollArea_virtualbase_metric(const VirtualQAbstractScrollArea* self, int param1);
void QAbstractScrollArea_virtualbase_initPainter(const VirtualQAbstractScrollArea* self, QPainter* painter);
QPaintDevice* QAbstractScrollArea_virtualbase_redirected(const VirtualQAbstractScrollArea* self, QPoint* offset);
QPainter* QAbstractScrollArea_virtualbase_sharedPainter(const VirtualQAbstractScrollArea* self);
void QAbstractScrollArea_virtualbase_inputMethodEvent(VirtualQAbstractScrollArea* self, QInputMethodEvent* param1);
QVariant* QAbstractScrollArea_virtualbase_inputMethodQuery(const VirtualQAbstractScrollArea* self, int param1);
bool QAbstractScrollArea_virtualbase_focusNextPrevChild(VirtualQAbstractScrollArea* self, bool next);
void QAbstractScrollArea_virtualbase_timerEvent(VirtualQAbstractScrollArea* self, QTimerEvent* event);
void QAbstractScrollArea_virtualbase_childEvent(VirtualQAbstractScrollArea* self, QChildEvent* event);
void QAbstractScrollArea_virtualbase_customEvent(VirtualQAbstractScrollArea* self, QEvent* event);
void QAbstractScrollArea_virtualbase_connectNotify(VirtualQAbstractScrollArea* self, QMetaMethod* signal);
void QAbstractScrollArea_virtualbase_disconnectNotify(VirtualQAbstractScrollArea* self, QMetaMethod* signal);

void QAbstractScrollArea_protectedbase_setViewportMargins(VirtualQAbstractScrollArea* self, int left, int top, int right, int bottom);
void QAbstractScrollArea_protectedbase_setViewportMarginsWithMargins(VirtualQAbstractScrollArea* self, QMargins* margins);
QMargins* QAbstractScrollArea_protectedbase_viewportMargins(const VirtualQAbstractScrollArea* self);
void QAbstractScrollArea_protectedbase_drawFrame(VirtualQAbstractScrollArea* self, QPainter* param1);
void QAbstractScrollArea_protectedbase_initStyleOption(const VirtualQAbstractScrollArea* self, QStyleOptionFrame* option);
void QAbstractScrollArea_protectedbase_updateMicroFocus(VirtualQAbstractScrollArea* self);
void QAbstractScrollArea_protectedbase_create(VirtualQAbstractScrollArea* self);
void QAbstractScrollArea_protectedbase_destroy(VirtualQAbstractScrollArea* self);
bool QAbstractScrollArea_protectedbase_focusNextChild(VirtualQAbstractScrollArea* self);
bool QAbstractScrollArea_protectedbase_focusPreviousChild(VirtualQAbstractScrollArea* self);
QObject* QAbstractScrollArea_protectedbase_sender(const VirtualQAbstractScrollArea* self);
int QAbstractScrollArea_protectedbase_senderSignalIndex(const VirtualQAbstractScrollArea* self);
int QAbstractScrollArea_protectedbase_receivers(const VirtualQAbstractScrollArea* self, const char* signal);
bool QAbstractScrollArea_protectedbase_isSignalConnected(const VirtualQAbstractScrollArea* self, QMetaMethod* signal);

const QMetaObject* QAbstractScrollArea_staticMetaObject();
void QAbstractScrollArea_delete(QAbstractScrollArea* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
