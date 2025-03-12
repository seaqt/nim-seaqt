#pragma once
#ifndef SEAQT_QTWIDGETS_GEN_QMDIAREA_H
#define SEAQT_QTWIDGETS_GEN_QMDIAREA_H

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
class QBrush;
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
class QMdiArea;
class QMdiSubWindow;
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
class QStyleOptionFrame;
class QTabletEvent;
class QTimerEvent;
class QVariant;
class QWheelEvent;
class QWidget;
#else
typedef struct QAbstractScrollArea QAbstractScrollArea;
typedef struct QActionEvent QActionEvent;
typedef struct QBrush QBrush;
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
typedef struct QMdiArea QMdiArea;
typedef struct QMdiSubWindow QMdiSubWindow;
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
typedef struct QStyleOptionFrame QStyleOptionFrame;
typedef struct QTabletEvent QTabletEvent;
typedef struct QTimerEvent QTimerEvent;
typedef struct QVariant QVariant;
typedef struct QWheelEvent QWheelEvent;
typedef struct QWidget QWidget;
#endif

typedef struct VirtualQMdiArea VirtualQMdiArea;
typedef struct QMdiArea_VTable{
	void (*destructor)(VirtualQMdiArea* self);
	QMetaObject* (*metaObject)(const VirtualQMdiArea* self);
	void* (*metacast)(VirtualQMdiArea* self, const char* param1);
	int (*metacall)(VirtualQMdiArea* self, int param1, int param2, void** param3);
	QSize* (*sizeHint)(const VirtualQMdiArea* self);
	QSize* (*minimumSizeHint)(const VirtualQMdiArea* self);
	void (*setupViewport)(VirtualQMdiArea* self, QWidget* viewport);
	bool (*event)(VirtualQMdiArea* self, QEvent* event);
	bool (*eventFilter)(VirtualQMdiArea* self, QObject* object, QEvent* event);
	void (*paintEvent)(VirtualQMdiArea* self, QPaintEvent* paintEvent);
	void (*childEvent)(VirtualQMdiArea* self, QChildEvent* childEvent);
	void (*resizeEvent)(VirtualQMdiArea* self, QResizeEvent* resizeEvent);
	void (*timerEvent)(VirtualQMdiArea* self, QTimerEvent* timerEvent);
	void (*showEvent)(VirtualQMdiArea* self, QShowEvent* showEvent);
	bool (*viewportEvent)(VirtualQMdiArea* self, QEvent* event);
	void (*scrollContentsBy)(VirtualQMdiArea* self, int dx, int dy);
	void (*mousePressEvent)(VirtualQMdiArea* self, QMouseEvent* param1);
	void (*mouseReleaseEvent)(VirtualQMdiArea* self, QMouseEvent* param1);
	void (*mouseDoubleClickEvent)(VirtualQMdiArea* self, QMouseEvent* param1);
	void (*mouseMoveEvent)(VirtualQMdiArea* self, QMouseEvent* param1);
	void (*wheelEvent)(VirtualQMdiArea* self, QWheelEvent* param1);
	void (*contextMenuEvent)(VirtualQMdiArea* self, QContextMenuEvent* param1);
	void (*dragEnterEvent)(VirtualQMdiArea* self, QDragEnterEvent* param1);
	void (*dragMoveEvent)(VirtualQMdiArea* self, QDragMoveEvent* param1);
	void (*dragLeaveEvent)(VirtualQMdiArea* self, QDragLeaveEvent* param1);
	void (*dropEvent)(VirtualQMdiArea* self, QDropEvent* param1);
	void (*keyPressEvent)(VirtualQMdiArea* self, QKeyEvent* param1);
	QSize* (*viewportSizeHint)(const VirtualQMdiArea* self);
	void (*changeEvent)(VirtualQMdiArea* self, QEvent* param1);
	void (*initStyleOption)(const VirtualQMdiArea* self, QStyleOptionFrame* option);
	int (*devType)(const VirtualQMdiArea* self);
	void (*setVisible)(VirtualQMdiArea* self, bool visible);
	int (*heightForWidth)(const VirtualQMdiArea* self, int param1);
	bool (*hasHeightForWidth)(const VirtualQMdiArea* self);
	QPaintEngine* (*paintEngine)(const VirtualQMdiArea* self);
	void (*keyReleaseEvent)(VirtualQMdiArea* self, QKeyEvent* event);
	void (*focusInEvent)(VirtualQMdiArea* self, QFocusEvent* event);
	void (*focusOutEvent)(VirtualQMdiArea* self, QFocusEvent* event);
	void (*enterEvent)(VirtualQMdiArea* self, QEnterEvent* event);
	void (*leaveEvent)(VirtualQMdiArea* self, QEvent* event);
	void (*moveEvent)(VirtualQMdiArea* self, QMoveEvent* event);
	void (*closeEvent)(VirtualQMdiArea* self, QCloseEvent* event);
	void (*tabletEvent)(VirtualQMdiArea* self, QTabletEvent* event);
	void (*actionEvent)(VirtualQMdiArea* self, QActionEvent* event);
	void (*hideEvent)(VirtualQMdiArea* self, QHideEvent* event);
	bool (*nativeEvent)(VirtualQMdiArea* self, struct miqt_string eventType, void* message, intptr_t* result);
	int (*metric)(const VirtualQMdiArea* self, int param1);
	void (*initPainter)(const VirtualQMdiArea* self, QPainter* painter);
	QPaintDevice* (*redirected)(const VirtualQMdiArea* self, QPoint* offset);
	QPainter* (*sharedPainter)(const VirtualQMdiArea* self);
	void (*inputMethodEvent)(VirtualQMdiArea* self, QInputMethodEvent* param1);
	QVariant* (*inputMethodQuery)(const VirtualQMdiArea* self, int param1);
	bool (*focusNextPrevChild)(VirtualQMdiArea* self, bool next);
	void (*customEvent)(VirtualQMdiArea* self, QEvent* event);
	void (*connectNotify)(VirtualQMdiArea* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQMdiArea* self, QMetaMethod* signal);
}QMdiArea_VTable;

const QMdiArea_VTable* QMdiArea_vtbl(const VirtualQMdiArea* self);
void* QMdiArea_vdata(const VirtualQMdiArea* self);
void QMdiArea_setVdata(VirtualQMdiArea* self, void* vdata);

VirtualQMdiArea* QMdiArea_new(const QMdiArea_VTable* vtbl, void* vdata, QWidget* parent);
VirtualQMdiArea* QMdiArea_new2(const QMdiArea_VTable* vtbl, void* vdata);

void QMdiArea_virtbase(QMdiArea* src, QAbstractScrollArea** outptr_QAbstractScrollArea);
QMetaObject* QMdiArea_metaObject(const QMdiArea* self);
void* QMdiArea_metacast(QMdiArea* self, const char* param1);
int QMdiArea_metacall(QMdiArea* self, int param1, int param2, void** param3);
struct miqt_string QMdiArea_tr(const char* s);
QSize* QMdiArea_sizeHint(const QMdiArea* self);
QSize* QMdiArea_minimumSizeHint(const QMdiArea* self);
QMdiSubWindow* QMdiArea_currentSubWindow(const QMdiArea* self);
QMdiSubWindow* QMdiArea_activeSubWindow(const QMdiArea* self);
struct miqt_array /* of QMdiSubWindow* */  QMdiArea_subWindowList(const QMdiArea* self);
QMdiSubWindow* QMdiArea_addSubWindow(QMdiArea* self, QWidget* widget);
void QMdiArea_removeSubWindow(QMdiArea* self, QWidget* widget);
QBrush* QMdiArea_background(const QMdiArea* self);
void QMdiArea_setBackground(QMdiArea* self, QBrush* background);
int QMdiArea_activationOrder(const QMdiArea* self);
void QMdiArea_setActivationOrder(QMdiArea* self, int order);
void QMdiArea_setOption(QMdiArea* self, int option);
bool QMdiArea_testOption(const QMdiArea* self, int opton);
void QMdiArea_setViewMode(QMdiArea* self, int mode);
int QMdiArea_viewMode(const QMdiArea* self);
bool QMdiArea_documentMode(const QMdiArea* self);
void QMdiArea_setDocumentMode(QMdiArea* self, bool enabled);
void QMdiArea_setTabsClosable(QMdiArea* self, bool closable);
bool QMdiArea_tabsClosable(const QMdiArea* self);
void QMdiArea_setTabsMovable(QMdiArea* self, bool movable);
bool QMdiArea_tabsMovable(const QMdiArea* self);
void QMdiArea_setTabShape(QMdiArea* self, int shape);
int QMdiArea_tabShape(const QMdiArea* self);
void QMdiArea_setTabPosition(QMdiArea* self, int position);
int QMdiArea_tabPosition(const QMdiArea* self);
void QMdiArea_subWindowActivated(QMdiArea* self, QMdiSubWindow* param1);
void QMdiArea_connect_subWindowActivated(VirtualQMdiArea* self, intptr_t slot, void (*callback)(intptr_t, QMdiSubWindow*), void (*release)(intptr_t));
void QMdiArea_setActiveSubWindow(QMdiArea* self, QMdiSubWindow* window);
void QMdiArea_tileSubWindows(QMdiArea* self);
void QMdiArea_cascadeSubWindows(QMdiArea* self);
void QMdiArea_closeActiveSubWindow(QMdiArea* self);
void QMdiArea_closeAllSubWindows(QMdiArea* self);
void QMdiArea_activateNextSubWindow(QMdiArea* self);
void QMdiArea_activatePreviousSubWindow(QMdiArea* self);
void QMdiArea_setupViewport(QMdiArea* self, QWidget* viewport);
bool QMdiArea_event(QMdiArea* self, QEvent* event);
bool QMdiArea_eventFilter(QMdiArea* self, QObject* object, QEvent* event);
void QMdiArea_paintEvent(QMdiArea* self, QPaintEvent* paintEvent);
void QMdiArea_childEvent(QMdiArea* self, QChildEvent* childEvent);
void QMdiArea_resizeEvent(QMdiArea* self, QResizeEvent* resizeEvent);
void QMdiArea_timerEvent(QMdiArea* self, QTimerEvent* timerEvent);
void QMdiArea_showEvent(QMdiArea* self, QShowEvent* showEvent);
bool QMdiArea_viewportEvent(QMdiArea* self, QEvent* event);
void QMdiArea_scrollContentsBy(QMdiArea* self, int dx, int dy);
struct miqt_string QMdiArea_tr2(const char* s, const char* c);
struct miqt_string QMdiArea_tr3(const char* s, const char* c, int n);
struct miqt_array /* of QMdiSubWindow* */  QMdiArea_subWindowList1(const QMdiArea* self, int order);
QMdiSubWindow* QMdiArea_addSubWindow2(QMdiArea* self, QWidget* widget, int flags);
void QMdiArea_setOption2(QMdiArea* self, int option, bool on);

QMetaObject* QMdiArea_virtualbase_metaObject(const VirtualQMdiArea* self);
void* QMdiArea_virtualbase_metacast(VirtualQMdiArea* self, const char* param1);
int QMdiArea_virtualbase_metacall(VirtualQMdiArea* self, int param1, int param2, void** param3);
QSize* QMdiArea_virtualbase_sizeHint(const VirtualQMdiArea* self);
QSize* QMdiArea_virtualbase_minimumSizeHint(const VirtualQMdiArea* self);
void QMdiArea_virtualbase_setupViewport(VirtualQMdiArea* self, QWidget* viewport);
bool QMdiArea_virtualbase_event(VirtualQMdiArea* self, QEvent* event);
bool QMdiArea_virtualbase_eventFilter(VirtualQMdiArea* self, QObject* object, QEvent* event);
void QMdiArea_virtualbase_paintEvent(VirtualQMdiArea* self, QPaintEvent* paintEvent);
void QMdiArea_virtualbase_childEvent(VirtualQMdiArea* self, QChildEvent* childEvent);
void QMdiArea_virtualbase_resizeEvent(VirtualQMdiArea* self, QResizeEvent* resizeEvent);
void QMdiArea_virtualbase_timerEvent(VirtualQMdiArea* self, QTimerEvent* timerEvent);
void QMdiArea_virtualbase_showEvent(VirtualQMdiArea* self, QShowEvent* showEvent);
bool QMdiArea_virtualbase_viewportEvent(VirtualQMdiArea* self, QEvent* event);
void QMdiArea_virtualbase_scrollContentsBy(VirtualQMdiArea* self, int dx, int dy);
void QMdiArea_virtualbase_mousePressEvent(VirtualQMdiArea* self, QMouseEvent* param1);
void QMdiArea_virtualbase_mouseReleaseEvent(VirtualQMdiArea* self, QMouseEvent* param1);
void QMdiArea_virtualbase_mouseDoubleClickEvent(VirtualQMdiArea* self, QMouseEvent* param1);
void QMdiArea_virtualbase_mouseMoveEvent(VirtualQMdiArea* self, QMouseEvent* param1);
void QMdiArea_virtualbase_wheelEvent(VirtualQMdiArea* self, QWheelEvent* param1);
void QMdiArea_virtualbase_contextMenuEvent(VirtualQMdiArea* self, QContextMenuEvent* param1);
void QMdiArea_virtualbase_dragEnterEvent(VirtualQMdiArea* self, QDragEnterEvent* param1);
void QMdiArea_virtualbase_dragMoveEvent(VirtualQMdiArea* self, QDragMoveEvent* param1);
void QMdiArea_virtualbase_dragLeaveEvent(VirtualQMdiArea* self, QDragLeaveEvent* param1);
void QMdiArea_virtualbase_dropEvent(VirtualQMdiArea* self, QDropEvent* param1);
void QMdiArea_virtualbase_keyPressEvent(VirtualQMdiArea* self, QKeyEvent* param1);
QSize* QMdiArea_virtualbase_viewportSizeHint(const VirtualQMdiArea* self);
void QMdiArea_virtualbase_changeEvent(VirtualQMdiArea* self, QEvent* param1);
void QMdiArea_virtualbase_initStyleOption(const VirtualQMdiArea* self, QStyleOptionFrame* option);
int QMdiArea_virtualbase_devType(const VirtualQMdiArea* self);
void QMdiArea_virtualbase_setVisible(VirtualQMdiArea* self, bool visible);
int QMdiArea_virtualbase_heightForWidth(const VirtualQMdiArea* self, int param1);
bool QMdiArea_virtualbase_hasHeightForWidth(const VirtualQMdiArea* self);
QPaintEngine* QMdiArea_virtualbase_paintEngine(const VirtualQMdiArea* self);
void QMdiArea_virtualbase_keyReleaseEvent(VirtualQMdiArea* self, QKeyEvent* event);
void QMdiArea_virtualbase_focusInEvent(VirtualQMdiArea* self, QFocusEvent* event);
void QMdiArea_virtualbase_focusOutEvent(VirtualQMdiArea* self, QFocusEvent* event);
void QMdiArea_virtualbase_enterEvent(VirtualQMdiArea* self, QEnterEvent* event);
void QMdiArea_virtualbase_leaveEvent(VirtualQMdiArea* self, QEvent* event);
void QMdiArea_virtualbase_moveEvent(VirtualQMdiArea* self, QMoveEvent* event);
void QMdiArea_virtualbase_closeEvent(VirtualQMdiArea* self, QCloseEvent* event);
void QMdiArea_virtualbase_tabletEvent(VirtualQMdiArea* self, QTabletEvent* event);
void QMdiArea_virtualbase_actionEvent(VirtualQMdiArea* self, QActionEvent* event);
void QMdiArea_virtualbase_hideEvent(VirtualQMdiArea* self, QHideEvent* event);
bool QMdiArea_virtualbase_nativeEvent(VirtualQMdiArea* self, struct miqt_string eventType, void* message, intptr_t* result);
int QMdiArea_virtualbase_metric(const VirtualQMdiArea* self, int param1);
void QMdiArea_virtualbase_initPainter(const VirtualQMdiArea* self, QPainter* painter);
QPaintDevice* QMdiArea_virtualbase_redirected(const VirtualQMdiArea* self, QPoint* offset);
QPainter* QMdiArea_virtualbase_sharedPainter(const VirtualQMdiArea* self);
void QMdiArea_virtualbase_inputMethodEvent(VirtualQMdiArea* self, QInputMethodEvent* param1);
QVariant* QMdiArea_virtualbase_inputMethodQuery(const VirtualQMdiArea* self, int param1);
bool QMdiArea_virtualbase_focusNextPrevChild(VirtualQMdiArea* self, bool next);
void QMdiArea_virtualbase_customEvent(VirtualQMdiArea* self, QEvent* event);
void QMdiArea_virtualbase_connectNotify(VirtualQMdiArea* self, QMetaMethod* signal);
void QMdiArea_virtualbase_disconnectNotify(VirtualQMdiArea* self, QMetaMethod* signal);

void QMdiArea_protectedbase_setViewportMargins(VirtualQMdiArea* self, int left, int top, int right, int bottom);
QMargins* QMdiArea_protectedbase_viewportMargins(const VirtualQMdiArea* self);
void QMdiArea_protectedbase_drawFrame(VirtualQMdiArea* self, QPainter* param1);
void QMdiArea_protectedbase_updateMicroFocus(VirtualQMdiArea* self);
void QMdiArea_protectedbase_create(VirtualQMdiArea* self);
void QMdiArea_protectedbase_destroy(VirtualQMdiArea* self);
bool QMdiArea_protectedbase_focusNextChild(VirtualQMdiArea* self);
bool QMdiArea_protectedbase_focusPreviousChild(VirtualQMdiArea* self);
QObject* QMdiArea_protectedbase_sender(const VirtualQMdiArea* self);
int QMdiArea_protectedbase_senderSignalIndex(const VirtualQMdiArea* self);
int QMdiArea_protectedbase_receivers(const VirtualQMdiArea* self, const char* signal);
bool QMdiArea_protectedbase_isSignalConnected(const VirtualQMdiArea* self, QMetaMethod* signal);

const QMetaObject* QMdiArea_staticMetaObject();
void QMdiArea_delete(QMdiArea* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
