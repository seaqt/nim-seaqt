#pragma once
#ifndef SEAQT_QTWIDGETS_GEN_QDOCKWIDGET_H
#define SEAQT_QTWIDGETS_GEN_QDOCKWIDGET_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt/libseaqt.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QAction;
class QActionEvent;
class QChildEvent;
class QCloseEvent;
class QContextMenuEvent;
class QDockWidget;
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
class QStyleOptionDockWidget;
class QTabletEvent;
class QTimerEvent;
class QVariant;
class QWheelEvent;
class QWidget;
#else
typedef struct QAction QAction;
typedef struct QActionEvent QActionEvent;
typedef struct QChildEvent QChildEvent;
typedef struct QCloseEvent QCloseEvent;
typedef struct QContextMenuEvent QContextMenuEvent;
typedef struct QDockWidget QDockWidget;
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
typedef struct QStyleOptionDockWidget QStyleOptionDockWidget;
typedef struct QTabletEvent QTabletEvent;
typedef struct QTimerEvent QTimerEvent;
typedef struct QVariant QVariant;
typedef struct QWheelEvent QWheelEvent;
typedef struct QWidget QWidget;
#endif

typedef struct VirtualQDockWidget VirtualQDockWidget;
typedef struct QDockWidget_VTable{
	void (*destructor)(VirtualQDockWidget* self);
	QMetaObject* (*metaObject)(const VirtualQDockWidget* self);
	void* (*metacast)(VirtualQDockWidget* self, const char* param1);
	int (*metacall)(VirtualQDockWidget* self, int param1, int param2, void** param3);
	void (*changeEvent)(VirtualQDockWidget* self, QEvent* event);
	void (*closeEvent)(VirtualQDockWidget* self, QCloseEvent* event);
	void (*paintEvent)(VirtualQDockWidget* self, QPaintEvent* event);
	bool (*event)(VirtualQDockWidget* self, QEvent* event);
	void (*initStyleOption)(const VirtualQDockWidget* self, QStyleOptionDockWidget* option);
	int (*devType)(const VirtualQDockWidget* self);
	void (*setVisible)(VirtualQDockWidget* self, bool visible);
	QSize* (*sizeHint)(const VirtualQDockWidget* self);
	QSize* (*minimumSizeHint)(const VirtualQDockWidget* self);
	int (*heightForWidth)(const VirtualQDockWidget* self, int param1);
	bool (*hasHeightForWidth)(const VirtualQDockWidget* self);
	QPaintEngine* (*paintEngine)(const VirtualQDockWidget* self);
	void (*mousePressEvent)(VirtualQDockWidget* self, QMouseEvent* event);
	void (*mouseReleaseEvent)(VirtualQDockWidget* self, QMouseEvent* event);
	void (*mouseDoubleClickEvent)(VirtualQDockWidget* self, QMouseEvent* event);
	void (*mouseMoveEvent)(VirtualQDockWidget* self, QMouseEvent* event);
	void (*wheelEvent)(VirtualQDockWidget* self, QWheelEvent* event);
	void (*keyPressEvent)(VirtualQDockWidget* self, QKeyEvent* event);
	void (*keyReleaseEvent)(VirtualQDockWidget* self, QKeyEvent* event);
	void (*focusInEvent)(VirtualQDockWidget* self, QFocusEvent* event);
	void (*focusOutEvent)(VirtualQDockWidget* self, QFocusEvent* event);
	void (*enterEvent)(VirtualQDockWidget* self, QEnterEvent* event);
	void (*leaveEvent)(VirtualQDockWidget* self, QEvent* event);
	void (*moveEvent)(VirtualQDockWidget* self, QMoveEvent* event);
	void (*resizeEvent)(VirtualQDockWidget* self, QResizeEvent* event);
	void (*contextMenuEvent)(VirtualQDockWidget* self, QContextMenuEvent* event);
	void (*tabletEvent)(VirtualQDockWidget* self, QTabletEvent* event);
	void (*actionEvent)(VirtualQDockWidget* self, QActionEvent* event);
	void (*dragEnterEvent)(VirtualQDockWidget* self, QDragEnterEvent* event);
	void (*dragMoveEvent)(VirtualQDockWidget* self, QDragMoveEvent* event);
	void (*dragLeaveEvent)(VirtualQDockWidget* self, QDragLeaveEvent* event);
	void (*dropEvent)(VirtualQDockWidget* self, QDropEvent* event);
	void (*showEvent)(VirtualQDockWidget* self, QShowEvent* event);
	void (*hideEvent)(VirtualQDockWidget* self, QHideEvent* event);
	bool (*nativeEvent)(VirtualQDockWidget* self, struct miqt_string eventType, void* message, intptr_t* result);
	int (*metric)(const VirtualQDockWidget* self, int param1);
	void (*initPainter)(const VirtualQDockWidget* self, QPainter* painter);
	QPaintDevice* (*redirected)(const VirtualQDockWidget* self, QPoint* offset);
	QPainter* (*sharedPainter)(const VirtualQDockWidget* self);
	void (*inputMethodEvent)(VirtualQDockWidget* self, QInputMethodEvent* param1);
	QVariant* (*inputMethodQuery)(const VirtualQDockWidget* self, int param1);
	bool (*focusNextPrevChild)(VirtualQDockWidget* self, bool next);
	bool (*eventFilter)(VirtualQDockWidget* self, QObject* watched, QEvent* event);
	void (*timerEvent)(VirtualQDockWidget* self, QTimerEvent* event);
	void (*childEvent)(VirtualQDockWidget* self, QChildEvent* event);
	void (*customEvent)(VirtualQDockWidget* self, QEvent* event);
	void (*connectNotify)(VirtualQDockWidget* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQDockWidget* self, QMetaMethod* signal);
}QDockWidget_VTable;

const QDockWidget_VTable* QDockWidget_vtbl(const VirtualQDockWidget* self);
void* QDockWidget_vdata(const VirtualQDockWidget* self);
void QDockWidget_setVdata(VirtualQDockWidget* self, void* vdata);

VirtualQDockWidget* QDockWidget_new(const QDockWidget_VTable* vtbl, void* vdata, QWidget* parent);
VirtualQDockWidget* QDockWidget_new2(const QDockWidget_VTable* vtbl, void* vdata, struct miqt_string title);
VirtualQDockWidget* QDockWidget_new3(const QDockWidget_VTable* vtbl, void* vdata);
VirtualQDockWidget* QDockWidget_new4(const QDockWidget_VTable* vtbl, void* vdata, struct miqt_string title, QWidget* parent);
VirtualQDockWidget* QDockWidget_new5(const QDockWidget_VTable* vtbl, void* vdata, struct miqt_string title, QWidget* parent, int flags);
VirtualQDockWidget* QDockWidget_new6(const QDockWidget_VTable* vtbl, void* vdata, QWidget* parent, int flags);

void QDockWidget_virtbase(QDockWidget* src, QWidget** outptr_QWidget);
QMetaObject* QDockWidget_metaObject(const QDockWidget* self);
void* QDockWidget_metacast(QDockWidget* self, const char* param1);
int QDockWidget_metacall(QDockWidget* self, int param1, int param2, void** param3);
struct miqt_string QDockWidget_tr(const char* s);
QWidget* QDockWidget_widget(const QDockWidget* self);
void QDockWidget_setWidget(QDockWidget* self, QWidget* widget);
void QDockWidget_setFeatures(QDockWidget* self, int features);
int QDockWidget_features(const QDockWidget* self);
void QDockWidget_setFloating(QDockWidget* self, bool floating);
bool QDockWidget_isFloating(const QDockWidget* self);
void QDockWidget_setAllowedAreas(QDockWidget* self, int areas);
int QDockWidget_allowedAreas(const QDockWidget* self);
void QDockWidget_setTitleBarWidget(QDockWidget* self, QWidget* widget);
QWidget* QDockWidget_titleBarWidget(const QDockWidget* self);
bool QDockWidget_isAreaAllowed(const QDockWidget* self, int area);
QAction* QDockWidget_toggleViewAction(const QDockWidget* self);
void QDockWidget_featuresChanged(QDockWidget* self, int features);
void QDockWidget_connect_featuresChanged(VirtualQDockWidget* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t));
void QDockWidget_topLevelChanged(QDockWidget* self, bool topLevel);
void QDockWidget_connect_topLevelChanged(VirtualQDockWidget* self, intptr_t slot, void (*callback)(intptr_t, bool), void (*release)(intptr_t));
void QDockWidget_allowedAreasChanged(QDockWidget* self, int allowedAreas);
void QDockWidget_connect_allowedAreasChanged(VirtualQDockWidget* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t));
void QDockWidget_visibilityChanged(QDockWidget* self, bool visible);
void QDockWidget_connect_visibilityChanged(VirtualQDockWidget* self, intptr_t slot, void (*callback)(intptr_t, bool), void (*release)(intptr_t));
void QDockWidget_dockLocationChanged(QDockWidget* self, int area);
void QDockWidget_connect_dockLocationChanged(VirtualQDockWidget* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t));
void QDockWidget_changeEvent(QDockWidget* self, QEvent* event);
void QDockWidget_closeEvent(QDockWidget* self, QCloseEvent* event);
void QDockWidget_paintEvent(QDockWidget* self, QPaintEvent* event);
bool QDockWidget_event(QDockWidget* self, QEvent* event);
void QDockWidget_initStyleOption(const QDockWidget* self, QStyleOptionDockWidget* option);
struct miqt_string QDockWidget_tr2(const char* s, const char* c);
struct miqt_string QDockWidget_tr3(const char* s, const char* c, int n);

QMetaObject* QDockWidget_virtualbase_metaObject(const VirtualQDockWidget* self);
void* QDockWidget_virtualbase_metacast(VirtualQDockWidget* self, const char* param1);
int QDockWidget_virtualbase_metacall(VirtualQDockWidget* self, int param1, int param2, void** param3);
void QDockWidget_virtualbase_changeEvent(VirtualQDockWidget* self, QEvent* event);
void QDockWidget_virtualbase_closeEvent(VirtualQDockWidget* self, QCloseEvent* event);
void QDockWidget_virtualbase_paintEvent(VirtualQDockWidget* self, QPaintEvent* event);
bool QDockWidget_virtualbase_event(VirtualQDockWidget* self, QEvent* event);
void QDockWidget_virtualbase_initStyleOption(const VirtualQDockWidget* self, QStyleOptionDockWidget* option);
int QDockWidget_virtualbase_devType(const VirtualQDockWidget* self);
void QDockWidget_virtualbase_setVisible(VirtualQDockWidget* self, bool visible);
QSize* QDockWidget_virtualbase_sizeHint(const VirtualQDockWidget* self);
QSize* QDockWidget_virtualbase_minimumSizeHint(const VirtualQDockWidget* self);
int QDockWidget_virtualbase_heightForWidth(const VirtualQDockWidget* self, int param1);
bool QDockWidget_virtualbase_hasHeightForWidth(const VirtualQDockWidget* self);
QPaintEngine* QDockWidget_virtualbase_paintEngine(const VirtualQDockWidget* self);
void QDockWidget_virtualbase_mousePressEvent(VirtualQDockWidget* self, QMouseEvent* event);
void QDockWidget_virtualbase_mouseReleaseEvent(VirtualQDockWidget* self, QMouseEvent* event);
void QDockWidget_virtualbase_mouseDoubleClickEvent(VirtualQDockWidget* self, QMouseEvent* event);
void QDockWidget_virtualbase_mouseMoveEvent(VirtualQDockWidget* self, QMouseEvent* event);
void QDockWidget_virtualbase_wheelEvent(VirtualQDockWidget* self, QWheelEvent* event);
void QDockWidget_virtualbase_keyPressEvent(VirtualQDockWidget* self, QKeyEvent* event);
void QDockWidget_virtualbase_keyReleaseEvent(VirtualQDockWidget* self, QKeyEvent* event);
void QDockWidget_virtualbase_focusInEvent(VirtualQDockWidget* self, QFocusEvent* event);
void QDockWidget_virtualbase_focusOutEvent(VirtualQDockWidget* self, QFocusEvent* event);
void QDockWidget_virtualbase_enterEvent(VirtualQDockWidget* self, QEnterEvent* event);
void QDockWidget_virtualbase_leaveEvent(VirtualQDockWidget* self, QEvent* event);
void QDockWidget_virtualbase_moveEvent(VirtualQDockWidget* self, QMoveEvent* event);
void QDockWidget_virtualbase_resizeEvent(VirtualQDockWidget* self, QResizeEvent* event);
void QDockWidget_virtualbase_contextMenuEvent(VirtualQDockWidget* self, QContextMenuEvent* event);
void QDockWidget_virtualbase_tabletEvent(VirtualQDockWidget* self, QTabletEvent* event);
void QDockWidget_virtualbase_actionEvent(VirtualQDockWidget* self, QActionEvent* event);
void QDockWidget_virtualbase_dragEnterEvent(VirtualQDockWidget* self, QDragEnterEvent* event);
void QDockWidget_virtualbase_dragMoveEvent(VirtualQDockWidget* self, QDragMoveEvent* event);
void QDockWidget_virtualbase_dragLeaveEvent(VirtualQDockWidget* self, QDragLeaveEvent* event);
void QDockWidget_virtualbase_dropEvent(VirtualQDockWidget* self, QDropEvent* event);
void QDockWidget_virtualbase_showEvent(VirtualQDockWidget* self, QShowEvent* event);
void QDockWidget_virtualbase_hideEvent(VirtualQDockWidget* self, QHideEvent* event);
bool QDockWidget_virtualbase_nativeEvent(VirtualQDockWidget* self, struct miqt_string eventType, void* message, intptr_t* result);
int QDockWidget_virtualbase_metric(const VirtualQDockWidget* self, int param1);
void QDockWidget_virtualbase_initPainter(const VirtualQDockWidget* self, QPainter* painter);
QPaintDevice* QDockWidget_virtualbase_redirected(const VirtualQDockWidget* self, QPoint* offset);
QPainter* QDockWidget_virtualbase_sharedPainter(const VirtualQDockWidget* self);
void QDockWidget_virtualbase_inputMethodEvent(VirtualQDockWidget* self, QInputMethodEvent* param1);
QVariant* QDockWidget_virtualbase_inputMethodQuery(const VirtualQDockWidget* self, int param1);
bool QDockWidget_virtualbase_focusNextPrevChild(VirtualQDockWidget* self, bool next);
bool QDockWidget_virtualbase_eventFilter(VirtualQDockWidget* self, QObject* watched, QEvent* event);
void QDockWidget_virtualbase_timerEvent(VirtualQDockWidget* self, QTimerEvent* event);
void QDockWidget_virtualbase_childEvent(VirtualQDockWidget* self, QChildEvent* event);
void QDockWidget_virtualbase_customEvent(VirtualQDockWidget* self, QEvent* event);
void QDockWidget_virtualbase_connectNotify(VirtualQDockWidget* self, QMetaMethod* signal);
void QDockWidget_virtualbase_disconnectNotify(VirtualQDockWidget* self, QMetaMethod* signal);

void QDockWidget_protectedbase_updateMicroFocus(VirtualQDockWidget* self);
void QDockWidget_protectedbase_create(VirtualQDockWidget* self);
void QDockWidget_protectedbase_destroy(VirtualQDockWidget* self);
bool QDockWidget_protectedbase_focusNextChild(VirtualQDockWidget* self);
bool QDockWidget_protectedbase_focusPreviousChild(VirtualQDockWidget* self);
QObject* QDockWidget_protectedbase_sender(const VirtualQDockWidget* self);
int QDockWidget_protectedbase_senderSignalIndex(const VirtualQDockWidget* self);
int QDockWidget_protectedbase_receivers(const VirtualQDockWidget* self, const char* signal);
bool QDockWidget_protectedbase_isSignalConnected(const VirtualQDockWidget* self, QMetaMethod* signal);

const QMetaObject* QDockWidget_staticMetaObject();
void QDockWidget_delete(QDockWidget* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
