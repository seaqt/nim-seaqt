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

typedef struct VirtualQPrintPreviewWidget VirtualQPrintPreviewWidget;
typedef struct QPrintPreviewWidget_VTable{
	void (*destructor)(VirtualQPrintPreviewWidget* self);
	QMetaObject* (*metaObject)(const VirtualQPrintPreviewWidget* self);
	void* (*metacast)(VirtualQPrintPreviewWidget* self, const char* param1);
	int (*metacall)(VirtualQPrintPreviewWidget* self, int param1, int param2, void** param3);
	void (*setVisible)(VirtualQPrintPreviewWidget* self, bool visible);
	int (*devType)(const VirtualQPrintPreviewWidget* self);
	QSize* (*sizeHint)(const VirtualQPrintPreviewWidget* self);
	QSize* (*minimumSizeHint)(const VirtualQPrintPreviewWidget* self);
	int (*heightForWidth)(const VirtualQPrintPreviewWidget* self, int param1);
	bool (*hasHeightForWidth)(const VirtualQPrintPreviewWidget* self);
	QPaintEngine* (*paintEngine)(const VirtualQPrintPreviewWidget* self);
	bool (*event)(VirtualQPrintPreviewWidget* self, QEvent* event);
	void (*mousePressEvent)(VirtualQPrintPreviewWidget* self, QMouseEvent* event);
	void (*mouseReleaseEvent)(VirtualQPrintPreviewWidget* self, QMouseEvent* event);
	void (*mouseDoubleClickEvent)(VirtualQPrintPreviewWidget* self, QMouseEvent* event);
	void (*mouseMoveEvent)(VirtualQPrintPreviewWidget* self, QMouseEvent* event);
	void (*wheelEvent)(VirtualQPrintPreviewWidget* self, QWheelEvent* event);
	void (*keyPressEvent)(VirtualQPrintPreviewWidget* self, QKeyEvent* event);
	void (*keyReleaseEvent)(VirtualQPrintPreviewWidget* self, QKeyEvent* event);
	void (*focusInEvent)(VirtualQPrintPreviewWidget* self, QFocusEvent* event);
	void (*focusOutEvent)(VirtualQPrintPreviewWidget* self, QFocusEvent* event);
	void (*enterEvent)(VirtualQPrintPreviewWidget* self, QEvent* event);
	void (*leaveEvent)(VirtualQPrintPreviewWidget* self, QEvent* event);
	void (*paintEvent)(VirtualQPrintPreviewWidget* self, QPaintEvent* event);
	void (*moveEvent)(VirtualQPrintPreviewWidget* self, QMoveEvent* event);
	void (*resizeEvent)(VirtualQPrintPreviewWidget* self, QResizeEvent* event);
	void (*closeEvent)(VirtualQPrintPreviewWidget* self, QCloseEvent* event);
	void (*contextMenuEvent)(VirtualQPrintPreviewWidget* self, QContextMenuEvent* event);
	void (*tabletEvent)(VirtualQPrintPreviewWidget* self, QTabletEvent* event);
	void (*actionEvent)(VirtualQPrintPreviewWidget* self, QActionEvent* event);
	void (*dragEnterEvent)(VirtualQPrintPreviewWidget* self, QDragEnterEvent* event);
	void (*dragMoveEvent)(VirtualQPrintPreviewWidget* self, QDragMoveEvent* event);
	void (*dragLeaveEvent)(VirtualQPrintPreviewWidget* self, QDragLeaveEvent* event);
	void (*dropEvent)(VirtualQPrintPreviewWidget* self, QDropEvent* event);
	void (*showEvent)(VirtualQPrintPreviewWidget* self, QShowEvent* event);
	void (*hideEvent)(VirtualQPrintPreviewWidget* self, QHideEvent* event);
	bool (*nativeEvent)(VirtualQPrintPreviewWidget* self, struct miqt_string eventType, void* message, long* result);
	void (*changeEvent)(VirtualQPrintPreviewWidget* self, QEvent* param1);
	int (*metric)(const VirtualQPrintPreviewWidget* self, int param1);
	void (*initPainter)(const VirtualQPrintPreviewWidget* self, QPainter* painter);
	QPaintDevice* (*redirected)(const VirtualQPrintPreviewWidget* self, QPoint* offset);
	QPainter* (*sharedPainter)(const VirtualQPrintPreviewWidget* self);
	void (*inputMethodEvent)(VirtualQPrintPreviewWidget* self, QInputMethodEvent* param1);
	QVariant* (*inputMethodQuery)(const VirtualQPrintPreviewWidget* self, int param1);
	bool (*focusNextPrevChild)(VirtualQPrintPreviewWidget* self, bool next);
	bool (*eventFilter)(VirtualQPrintPreviewWidget* self, QObject* watched, QEvent* event);
	void (*timerEvent)(VirtualQPrintPreviewWidget* self, QTimerEvent* event);
	void (*childEvent)(VirtualQPrintPreviewWidget* self, QChildEvent* event);
	void (*customEvent)(VirtualQPrintPreviewWidget* self, QEvent* event);
	void (*connectNotify)(VirtualQPrintPreviewWidget* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQPrintPreviewWidget* self, QMetaMethod* signal);
}QPrintPreviewWidget_VTable;

const QPrintPreviewWidget_VTable* QPrintPreviewWidget_vtbl(const VirtualQPrintPreviewWidget* self);
void* QPrintPreviewWidget_vdata(const VirtualQPrintPreviewWidget* self);
void QPrintPreviewWidget_setVdata(VirtualQPrintPreviewWidget* self, void* vdata);

VirtualQPrintPreviewWidget* QPrintPreviewWidget_new(const QPrintPreviewWidget_VTable* vtbl, void* vdata, QWidget* parent);
VirtualQPrintPreviewWidget* QPrintPreviewWidget_new2(const QPrintPreviewWidget_VTable* vtbl, void* vdata, QPrinter* printer);
VirtualQPrintPreviewWidget* QPrintPreviewWidget_new3(const QPrintPreviewWidget_VTable* vtbl, void* vdata);
VirtualQPrintPreviewWidget* QPrintPreviewWidget_new4(const QPrintPreviewWidget_VTable* vtbl, void* vdata, QPrinter* printer, QWidget* parent);
VirtualQPrintPreviewWidget* QPrintPreviewWidget_new5(const QPrintPreviewWidget_VTable* vtbl, void* vdata, QPrinter* printer, QWidget* parent, int flags);
VirtualQPrintPreviewWidget* QPrintPreviewWidget_new6(const QPrintPreviewWidget_VTable* vtbl, void* vdata, QWidget* parent, int flags);

void QPrintPreviewWidget_virtbase(QPrintPreviewWidget* src, QWidget** outptr_QWidget);
QMetaObject* QPrintPreviewWidget_metaObject(const QPrintPreviewWidget* self);
void* QPrintPreviewWidget_metacast(QPrintPreviewWidget* self, const char* param1);
int QPrintPreviewWidget_metacall(QPrintPreviewWidget* self, int param1, int param2, void** param3);
struct miqt_string QPrintPreviewWidget_tr(const char* s);
struct miqt_string QPrintPreviewWidget_trUtf8(const char* s);
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
void QPrintPreviewWidget_connect_paintRequested(VirtualQPrintPreviewWidget* self, intptr_t slot, void (*callback)(intptr_t, QPrinter*), void (*release)(intptr_t));
void QPrintPreviewWidget_previewChanged(QPrintPreviewWidget* self);
void QPrintPreviewWidget_connect_previewChanged(VirtualQPrintPreviewWidget* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
struct miqt_string QPrintPreviewWidget_tr2(const char* s, const char* c);
struct miqt_string QPrintPreviewWidget_tr3(const char* s, const char* c, int n);
struct miqt_string QPrintPreviewWidget_trUtf82(const char* s, const char* c);
struct miqt_string QPrintPreviewWidget_trUtf83(const char* s, const char* c, int n);
void QPrintPreviewWidget_zoomIn1(QPrintPreviewWidget* self, double zoom);
void QPrintPreviewWidget_zoomOut1(QPrintPreviewWidget* self, double zoom);

QMetaObject* QPrintPreviewWidget_virtualbase_metaObject(const VirtualQPrintPreviewWidget* self);
void* QPrintPreviewWidget_virtualbase_metacast(VirtualQPrintPreviewWidget* self, const char* param1);
int QPrintPreviewWidget_virtualbase_metacall(VirtualQPrintPreviewWidget* self, int param1, int param2, void** param3);
void QPrintPreviewWidget_virtualbase_setVisible(VirtualQPrintPreviewWidget* self, bool visible);
int QPrintPreviewWidget_virtualbase_devType(const VirtualQPrintPreviewWidget* self);
QSize* QPrintPreviewWidget_virtualbase_sizeHint(const VirtualQPrintPreviewWidget* self);
QSize* QPrintPreviewWidget_virtualbase_minimumSizeHint(const VirtualQPrintPreviewWidget* self);
int QPrintPreviewWidget_virtualbase_heightForWidth(const VirtualQPrintPreviewWidget* self, int param1);
bool QPrintPreviewWidget_virtualbase_hasHeightForWidth(const VirtualQPrintPreviewWidget* self);
QPaintEngine* QPrintPreviewWidget_virtualbase_paintEngine(const VirtualQPrintPreviewWidget* self);
bool QPrintPreviewWidget_virtualbase_event(VirtualQPrintPreviewWidget* self, QEvent* event);
void QPrintPreviewWidget_virtualbase_mousePressEvent(VirtualQPrintPreviewWidget* self, QMouseEvent* event);
void QPrintPreviewWidget_virtualbase_mouseReleaseEvent(VirtualQPrintPreviewWidget* self, QMouseEvent* event);
void QPrintPreviewWidget_virtualbase_mouseDoubleClickEvent(VirtualQPrintPreviewWidget* self, QMouseEvent* event);
void QPrintPreviewWidget_virtualbase_mouseMoveEvent(VirtualQPrintPreviewWidget* self, QMouseEvent* event);
void QPrintPreviewWidget_virtualbase_wheelEvent(VirtualQPrintPreviewWidget* self, QWheelEvent* event);
void QPrintPreviewWidget_virtualbase_keyPressEvent(VirtualQPrintPreviewWidget* self, QKeyEvent* event);
void QPrintPreviewWidget_virtualbase_keyReleaseEvent(VirtualQPrintPreviewWidget* self, QKeyEvent* event);
void QPrintPreviewWidget_virtualbase_focusInEvent(VirtualQPrintPreviewWidget* self, QFocusEvent* event);
void QPrintPreviewWidget_virtualbase_focusOutEvent(VirtualQPrintPreviewWidget* self, QFocusEvent* event);
void QPrintPreviewWidget_virtualbase_enterEvent(VirtualQPrintPreviewWidget* self, QEvent* event);
void QPrintPreviewWidget_virtualbase_leaveEvent(VirtualQPrintPreviewWidget* self, QEvent* event);
void QPrintPreviewWidget_virtualbase_paintEvent(VirtualQPrintPreviewWidget* self, QPaintEvent* event);
void QPrintPreviewWidget_virtualbase_moveEvent(VirtualQPrintPreviewWidget* self, QMoveEvent* event);
void QPrintPreviewWidget_virtualbase_resizeEvent(VirtualQPrintPreviewWidget* self, QResizeEvent* event);
void QPrintPreviewWidget_virtualbase_closeEvent(VirtualQPrintPreviewWidget* self, QCloseEvent* event);
void QPrintPreviewWidget_virtualbase_contextMenuEvent(VirtualQPrintPreviewWidget* self, QContextMenuEvent* event);
void QPrintPreviewWidget_virtualbase_tabletEvent(VirtualQPrintPreviewWidget* self, QTabletEvent* event);
void QPrintPreviewWidget_virtualbase_actionEvent(VirtualQPrintPreviewWidget* self, QActionEvent* event);
void QPrintPreviewWidget_virtualbase_dragEnterEvent(VirtualQPrintPreviewWidget* self, QDragEnterEvent* event);
void QPrintPreviewWidget_virtualbase_dragMoveEvent(VirtualQPrintPreviewWidget* self, QDragMoveEvent* event);
void QPrintPreviewWidget_virtualbase_dragLeaveEvent(VirtualQPrintPreviewWidget* self, QDragLeaveEvent* event);
void QPrintPreviewWidget_virtualbase_dropEvent(VirtualQPrintPreviewWidget* self, QDropEvent* event);
void QPrintPreviewWidget_virtualbase_showEvent(VirtualQPrintPreviewWidget* self, QShowEvent* event);
void QPrintPreviewWidget_virtualbase_hideEvent(VirtualQPrintPreviewWidget* self, QHideEvent* event);
bool QPrintPreviewWidget_virtualbase_nativeEvent(VirtualQPrintPreviewWidget* self, struct miqt_string eventType, void* message, long* result);
void QPrintPreviewWidget_virtualbase_changeEvent(VirtualQPrintPreviewWidget* self, QEvent* param1);
int QPrintPreviewWidget_virtualbase_metric(const VirtualQPrintPreviewWidget* self, int param1);
void QPrintPreviewWidget_virtualbase_initPainter(const VirtualQPrintPreviewWidget* self, QPainter* painter);
QPaintDevice* QPrintPreviewWidget_virtualbase_redirected(const VirtualQPrintPreviewWidget* self, QPoint* offset);
QPainter* QPrintPreviewWidget_virtualbase_sharedPainter(const VirtualQPrintPreviewWidget* self);
void QPrintPreviewWidget_virtualbase_inputMethodEvent(VirtualQPrintPreviewWidget* self, QInputMethodEvent* param1);
QVariant* QPrintPreviewWidget_virtualbase_inputMethodQuery(const VirtualQPrintPreviewWidget* self, int param1);
bool QPrintPreviewWidget_virtualbase_focusNextPrevChild(VirtualQPrintPreviewWidget* self, bool next);
bool QPrintPreviewWidget_virtualbase_eventFilter(VirtualQPrintPreviewWidget* self, QObject* watched, QEvent* event);
void QPrintPreviewWidget_virtualbase_timerEvent(VirtualQPrintPreviewWidget* self, QTimerEvent* event);
void QPrintPreviewWidget_virtualbase_childEvent(VirtualQPrintPreviewWidget* self, QChildEvent* event);
void QPrintPreviewWidget_virtualbase_customEvent(VirtualQPrintPreviewWidget* self, QEvent* event);
void QPrintPreviewWidget_virtualbase_connectNotify(VirtualQPrintPreviewWidget* self, QMetaMethod* signal);
void QPrintPreviewWidget_virtualbase_disconnectNotify(VirtualQPrintPreviewWidget* self, QMetaMethod* signal);

void QPrintPreviewWidget_protectedbase_updateMicroFocus(VirtualQPrintPreviewWidget* self);
void QPrintPreviewWidget_protectedbase_create(VirtualQPrintPreviewWidget* self);
void QPrintPreviewWidget_protectedbase_destroy(VirtualQPrintPreviewWidget* self);
bool QPrintPreviewWidget_protectedbase_focusNextChild(VirtualQPrintPreviewWidget* self);
bool QPrintPreviewWidget_protectedbase_focusPreviousChild(VirtualQPrintPreviewWidget* self);
QObject* QPrintPreviewWidget_protectedbase_sender(const VirtualQPrintPreviewWidget* self);
int QPrintPreviewWidget_protectedbase_senderSignalIndex(const VirtualQPrintPreviewWidget* self);
int QPrintPreviewWidget_protectedbase_receivers(const VirtualQPrintPreviewWidget* self, const char* signal);
bool QPrintPreviewWidget_protectedbase_isSignalConnected(const VirtualQPrintPreviewWidget* self, QMetaMethod* signal);

const QMetaObject* QPrintPreviewWidget_staticMetaObject();
void QPrintPreviewWidget_delete(QPrintPreviewWidget* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
