#pragma once
#ifndef SEAQT_QTPRINTSUPPORT_GEN_QPRINTPREVIEWWIDGET_H
#define SEAQT_QTPRINTSUPPORT_GEN_QPRINTPREVIEWWIDGET_H

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
class QPrintPreviewWidget;
class QPrinter;
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
typedef struct QPrintPreviewWidget QPrintPreviewWidget;
typedef struct QPrinter QPrinter;
typedef struct QResizeEvent QResizeEvent;
typedef struct QShowEvent QShowEvent;
typedef struct QSize QSize;
typedef struct QTabletEvent QTabletEvent;
typedef struct QTimerEvent QTimerEvent;
typedef struct QVariant QVariant;
typedef struct QWheelEvent QWheelEvent;
typedef struct QWidget QWidget;
#endif

struct QPrintPreviewWidget_VTable {
	void (*destructor)(struct QPrintPreviewWidget_VTable* vtbl, QPrintPreviewWidget* self);
	QMetaObject* (*metaObject)(struct QPrintPreviewWidget_VTable* vtbl, const QPrintPreviewWidget* self);
	void* (*metacast)(struct QPrintPreviewWidget_VTable* vtbl, QPrintPreviewWidget* self, const char* param1);
	int (*metacall)(struct QPrintPreviewWidget_VTable* vtbl, QPrintPreviewWidget* self, int param1, int param2, void** param3);
	void (*setVisible)(struct QPrintPreviewWidget_VTable* vtbl, QPrintPreviewWidget* self, bool visible);
	int (*devType)(struct QPrintPreviewWidget_VTable* vtbl, const QPrintPreviewWidget* self);
	QSize* (*sizeHint)(struct QPrintPreviewWidget_VTable* vtbl, const QPrintPreviewWidget* self);
	QSize* (*minimumSizeHint)(struct QPrintPreviewWidget_VTable* vtbl, const QPrintPreviewWidget* self);
	int (*heightForWidth)(struct QPrintPreviewWidget_VTable* vtbl, const QPrintPreviewWidget* self, int param1);
	bool (*hasHeightForWidth)(struct QPrintPreviewWidget_VTable* vtbl, const QPrintPreviewWidget* self);
	QPaintEngine* (*paintEngine)(struct QPrintPreviewWidget_VTable* vtbl, const QPrintPreviewWidget* self);
	bool (*event)(struct QPrintPreviewWidget_VTable* vtbl, QPrintPreviewWidget* self, QEvent* event);
	void (*mousePressEvent)(struct QPrintPreviewWidget_VTable* vtbl, QPrintPreviewWidget* self, QMouseEvent* event);
	void (*mouseReleaseEvent)(struct QPrintPreviewWidget_VTable* vtbl, QPrintPreviewWidget* self, QMouseEvent* event);
	void (*mouseDoubleClickEvent)(struct QPrintPreviewWidget_VTable* vtbl, QPrintPreviewWidget* self, QMouseEvent* event);
	void (*mouseMoveEvent)(struct QPrintPreviewWidget_VTable* vtbl, QPrintPreviewWidget* self, QMouseEvent* event);
	void (*wheelEvent)(struct QPrintPreviewWidget_VTable* vtbl, QPrintPreviewWidget* self, QWheelEvent* event);
	void (*keyPressEvent)(struct QPrintPreviewWidget_VTable* vtbl, QPrintPreviewWidget* self, QKeyEvent* event);
	void (*keyReleaseEvent)(struct QPrintPreviewWidget_VTable* vtbl, QPrintPreviewWidget* self, QKeyEvent* event);
	void (*focusInEvent)(struct QPrintPreviewWidget_VTable* vtbl, QPrintPreviewWidget* self, QFocusEvent* event);
	void (*focusOutEvent)(struct QPrintPreviewWidget_VTable* vtbl, QPrintPreviewWidget* self, QFocusEvent* event);
	void (*enterEvent)(struct QPrintPreviewWidget_VTable* vtbl, QPrintPreviewWidget* self, QEnterEvent* event);
	void (*leaveEvent)(struct QPrintPreviewWidget_VTable* vtbl, QPrintPreviewWidget* self, QEvent* event);
	void (*paintEvent)(struct QPrintPreviewWidget_VTable* vtbl, QPrintPreviewWidget* self, QPaintEvent* event);
	void (*moveEvent)(struct QPrintPreviewWidget_VTable* vtbl, QPrintPreviewWidget* self, QMoveEvent* event);
	void (*resizeEvent)(struct QPrintPreviewWidget_VTable* vtbl, QPrintPreviewWidget* self, QResizeEvent* event);
	void (*closeEvent)(struct QPrintPreviewWidget_VTable* vtbl, QPrintPreviewWidget* self, QCloseEvent* event);
	void (*contextMenuEvent)(struct QPrintPreviewWidget_VTable* vtbl, QPrintPreviewWidget* self, QContextMenuEvent* event);
	void (*tabletEvent)(struct QPrintPreviewWidget_VTable* vtbl, QPrintPreviewWidget* self, QTabletEvent* event);
	void (*actionEvent)(struct QPrintPreviewWidget_VTable* vtbl, QPrintPreviewWidget* self, QActionEvent* event);
	void (*dragEnterEvent)(struct QPrintPreviewWidget_VTable* vtbl, QPrintPreviewWidget* self, QDragEnterEvent* event);
	void (*dragMoveEvent)(struct QPrintPreviewWidget_VTable* vtbl, QPrintPreviewWidget* self, QDragMoveEvent* event);
	void (*dragLeaveEvent)(struct QPrintPreviewWidget_VTable* vtbl, QPrintPreviewWidget* self, QDragLeaveEvent* event);
	void (*dropEvent)(struct QPrintPreviewWidget_VTable* vtbl, QPrintPreviewWidget* self, QDropEvent* event);
	void (*showEvent)(struct QPrintPreviewWidget_VTable* vtbl, QPrintPreviewWidget* self, QShowEvent* event);
	void (*hideEvent)(struct QPrintPreviewWidget_VTable* vtbl, QPrintPreviewWidget* self, QHideEvent* event);
	bool (*nativeEvent)(struct QPrintPreviewWidget_VTable* vtbl, QPrintPreviewWidget* self, struct miqt_string eventType, void* message, intptr_t* result);
	void (*changeEvent)(struct QPrintPreviewWidget_VTable* vtbl, QPrintPreviewWidget* self, QEvent* param1);
	int (*metric)(struct QPrintPreviewWidget_VTable* vtbl, const QPrintPreviewWidget* self, int param1);
	void (*initPainter)(struct QPrintPreviewWidget_VTable* vtbl, const QPrintPreviewWidget* self, QPainter* painter);
	QPaintDevice* (*redirected)(struct QPrintPreviewWidget_VTable* vtbl, const QPrintPreviewWidget* self, QPoint* offset);
	QPainter* (*sharedPainter)(struct QPrintPreviewWidget_VTable* vtbl, const QPrintPreviewWidget* self);
	void (*inputMethodEvent)(struct QPrintPreviewWidget_VTable* vtbl, QPrintPreviewWidget* self, QInputMethodEvent* param1);
	QVariant* (*inputMethodQuery)(struct QPrintPreviewWidget_VTable* vtbl, const QPrintPreviewWidget* self, int param1);
	bool (*focusNextPrevChild)(struct QPrintPreviewWidget_VTable* vtbl, QPrintPreviewWidget* self, bool next);
	bool (*eventFilter)(struct QPrintPreviewWidget_VTable* vtbl, QPrintPreviewWidget* self, QObject* watched, QEvent* event);
	void (*timerEvent)(struct QPrintPreviewWidget_VTable* vtbl, QPrintPreviewWidget* self, QTimerEvent* event);
	void (*childEvent)(struct QPrintPreviewWidget_VTable* vtbl, QPrintPreviewWidget* self, QChildEvent* event);
	void (*customEvent)(struct QPrintPreviewWidget_VTable* vtbl, QPrintPreviewWidget* self, QEvent* event);
	void (*connectNotify)(struct QPrintPreviewWidget_VTable* vtbl, QPrintPreviewWidget* self, QMetaMethod* signal);
	void (*disconnectNotify)(struct QPrintPreviewWidget_VTable* vtbl, QPrintPreviewWidget* self, QMetaMethod* signal);
};
QPrintPreviewWidget* QPrintPreviewWidget_new(struct QPrintPreviewWidget_VTable* vtbl, QWidget* parent);
QPrintPreviewWidget* QPrintPreviewWidget_new2(struct QPrintPreviewWidget_VTable* vtbl, QPrinter* printer);
QPrintPreviewWidget* QPrintPreviewWidget_new3(struct QPrintPreviewWidget_VTable* vtbl);
QPrintPreviewWidget* QPrintPreviewWidget_new4(struct QPrintPreviewWidget_VTable* vtbl, QPrinter* printer, QWidget* parent);
QPrintPreviewWidget* QPrintPreviewWidget_new5(struct QPrintPreviewWidget_VTable* vtbl, QPrinter* printer, QWidget* parent, int flags);
QPrintPreviewWidget* QPrintPreviewWidget_new6(struct QPrintPreviewWidget_VTable* vtbl, QWidget* parent, int flags);
void QPrintPreviewWidget_virtbase(QPrintPreviewWidget* src, QWidget** outptr_QWidget);
QMetaObject* QPrintPreviewWidget_metaObject(const QPrintPreviewWidget* self);
void* QPrintPreviewWidget_metacast(QPrintPreviewWidget* self, const char* param1);
int QPrintPreviewWidget_metacall(QPrintPreviewWidget* self, int param1, int param2, void** param3);
struct miqt_string QPrintPreviewWidget_tr(const char* s);
double QPrintPreviewWidget_zoomFactor(const QPrintPreviewWidget* self);
int QPrintPreviewWidget_orientation(const QPrintPreviewWidget* self);
int QPrintPreviewWidget_viewMode(const QPrintPreviewWidget* self);
int QPrintPreviewWidget_zoomMode(const QPrintPreviewWidget* self);
int QPrintPreviewWidget_currentPage(const QPrintPreviewWidget* self);
int QPrintPreviewWidget_pageCount(const QPrintPreviewWidget* self);
void QPrintPreviewWidget_setVisible(QPrintPreviewWidget* self, bool visible);
void QPrintPreviewWidget_print(QPrintPreviewWidget* self);
void QPrintPreviewWidget_zoomIn(QPrintPreviewWidget* self);
void QPrintPreviewWidget_zoomOut(QPrintPreviewWidget* self);
void QPrintPreviewWidget_setZoomFactor(QPrintPreviewWidget* self, double zoomFactor);
void QPrintPreviewWidget_setOrientation(QPrintPreviewWidget* self, int orientation);
void QPrintPreviewWidget_setViewMode(QPrintPreviewWidget* self, int viewMode);
void QPrintPreviewWidget_setZoomMode(QPrintPreviewWidget* self, int zoomMode);
void QPrintPreviewWidget_setCurrentPage(QPrintPreviewWidget* self, int pageNumber);
void QPrintPreviewWidget_fitToWidth(QPrintPreviewWidget* self);
void QPrintPreviewWidget_fitInView(QPrintPreviewWidget* self);
void QPrintPreviewWidget_setLandscapeOrientation(QPrintPreviewWidget* self);
void QPrintPreviewWidget_setPortraitOrientation(QPrintPreviewWidget* self);
void QPrintPreviewWidget_setSinglePageViewMode(QPrintPreviewWidget* self);
void QPrintPreviewWidget_setFacingPagesViewMode(QPrintPreviewWidget* self);
void QPrintPreviewWidget_setAllPagesViewMode(QPrintPreviewWidget* self);
void QPrintPreviewWidget_updatePreview(QPrintPreviewWidget* self);
void QPrintPreviewWidget_paintRequested(QPrintPreviewWidget* self, QPrinter* printer);
void QPrintPreviewWidget_connect_paintRequested(QPrintPreviewWidget* self, intptr_t slot, void (*callback)(intptr_t, QPrinter*), void (*release)(intptr_t));
void QPrintPreviewWidget_previewChanged(QPrintPreviewWidget* self);
void QPrintPreviewWidget_connect_previewChanged(QPrintPreviewWidget* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
struct miqt_string QPrintPreviewWidget_tr2(const char* s, const char* c);
struct miqt_string QPrintPreviewWidget_tr3(const char* s, const char* c, int n);
void QPrintPreviewWidget_zoomIn1(QPrintPreviewWidget* self, double zoom);
void QPrintPreviewWidget_zoomOut1(QPrintPreviewWidget* self, double zoom);
QMetaObject* QPrintPreviewWidget_virtualbase_metaObject(const void* self);
void* QPrintPreviewWidget_virtualbase_metacast(void* self, const char* param1);
int QPrintPreviewWidget_virtualbase_metacall(void* self, int param1, int param2, void** param3);
void QPrintPreviewWidget_virtualbase_setVisible(void* self, bool visible);
int QPrintPreviewWidget_virtualbase_devType(const void* self);
QSize* QPrintPreviewWidget_virtualbase_sizeHint(const void* self);
QSize* QPrintPreviewWidget_virtualbase_minimumSizeHint(const void* self);
int QPrintPreviewWidget_virtualbase_heightForWidth(const void* self, int param1);
bool QPrintPreviewWidget_virtualbase_hasHeightForWidth(const void* self);
QPaintEngine* QPrintPreviewWidget_virtualbase_paintEngine(const void* self);
bool QPrintPreviewWidget_virtualbase_event(void* self, QEvent* event);
void QPrintPreviewWidget_virtualbase_mousePressEvent(void* self, QMouseEvent* event);
void QPrintPreviewWidget_virtualbase_mouseReleaseEvent(void* self, QMouseEvent* event);
void QPrintPreviewWidget_virtualbase_mouseDoubleClickEvent(void* self, QMouseEvent* event);
void QPrintPreviewWidget_virtualbase_mouseMoveEvent(void* self, QMouseEvent* event);
void QPrintPreviewWidget_virtualbase_wheelEvent(void* self, QWheelEvent* event);
void QPrintPreviewWidget_virtualbase_keyPressEvent(void* self, QKeyEvent* event);
void QPrintPreviewWidget_virtualbase_keyReleaseEvent(void* self, QKeyEvent* event);
void QPrintPreviewWidget_virtualbase_focusInEvent(void* self, QFocusEvent* event);
void QPrintPreviewWidget_virtualbase_focusOutEvent(void* self, QFocusEvent* event);
void QPrintPreviewWidget_virtualbase_enterEvent(void* self, QEnterEvent* event);
void QPrintPreviewWidget_virtualbase_leaveEvent(void* self, QEvent* event);
void QPrintPreviewWidget_virtualbase_paintEvent(void* self, QPaintEvent* event);
void QPrintPreviewWidget_virtualbase_moveEvent(void* self, QMoveEvent* event);
void QPrintPreviewWidget_virtualbase_resizeEvent(void* self, QResizeEvent* event);
void QPrintPreviewWidget_virtualbase_closeEvent(void* self, QCloseEvent* event);
void QPrintPreviewWidget_virtualbase_contextMenuEvent(void* self, QContextMenuEvent* event);
void QPrintPreviewWidget_virtualbase_tabletEvent(void* self, QTabletEvent* event);
void QPrintPreviewWidget_virtualbase_actionEvent(void* self, QActionEvent* event);
void QPrintPreviewWidget_virtualbase_dragEnterEvent(void* self, QDragEnterEvent* event);
void QPrintPreviewWidget_virtualbase_dragMoveEvent(void* self, QDragMoveEvent* event);
void QPrintPreviewWidget_virtualbase_dragLeaveEvent(void* self, QDragLeaveEvent* event);
void QPrintPreviewWidget_virtualbase_dropEvent(void* self, QDropEvent* event);
void QPrintPreviewWidget_virtualbase_showEvent(void* self, QShowEvent* event);
void QPrintPreviewWidget_virtualbase_hideEvent(void* self, QHideEvent* event);
bool QPrintPreviewWidget_virtualbase_nativeEvent(void* self, struct miqt_string eventType, void* message, intptr_t* result);
void QPrintPreviewWidget_virtualbase_changeEvent(void* self, QEvent* param1);
int QPrintPreviewWidget_virtualbase_metric(const void* self, int param1);
void QPrintPreviewWidget_virtualbase_initPainter(const void* self, QPainter* painter);
QPaintDevice* QPrintPreviewWidget_virtualbase_redirected(const void* self, QPoint* offset);
QPainter* QPrintPreviewWidget_virtualbase_sharedPainter(const void* self);
void QPrintPreviewWidget_virtualbase_inputMethodEvent(void* self, QInputMethodEvent* param1);
QVariant* QPrintPreviewWidget_virtualbase_inputMethodQuery(const void* self, int param1);
bool QPrintPreviewWidget_virtualbase_focusNextPrevChild(void* self, bool next);
bool QPrintPreviewWidget_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);
void QPrintPreviewWidget_virtualbase_timerEvent(void* self, QTimerEvent* event);
void QPrintPreviewWidget_virtualbase_childEvent(void* self, QChildEvent* event);
void QPrintPreviewWidget_virtualbase_customEvent(void* self, QEvent* event);
void QPrintPreviewWidget_virtualbase_connectNotify(void* self, QMetaMethod* signal);
void QPrintPreviewWidget_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
void QPrintPreviewWidget_protectedbase_updateMicroFocus(void* self);
void QPrintPreviewWidget_protectedbase_create(void* self);
void QPrintPreviewWidget_protectedbase_destroy(void* self);
bool QPrintPreviewWidget_protectedbase_focusNextChild(void* self);
bool QPrintPreviewWidget_protectedbase_focusPreviousChild(void* self);
QObject* QPrintPreviewWidget_protectedbase_sender(const void* self);
int QPrintPreviewWidget_protectedbase_senderSignalIndex(const void* self);
int QPrintPreviewWidget_protectedbase_receivers(const void* self, const char* signal);
bool QPrintPreviewWidget_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal);
const QMetaObject* QPrintPreviewWidget_staticMetaObject();
void QPrintPreviewWidget_delete(QPrintPreviewWidget* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
