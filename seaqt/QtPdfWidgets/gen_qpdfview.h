#pragma once
#ifndef SEAQT_QTPDFWIDGETS_GEN_QPDFVIEW_H
#define SEAQT_QTPDFWIDGETS_GEN_QPDFVIEW_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt-runtime.h"

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
class QPdfDocument;
class QPdfPageNavigation;
class QPdfView;
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
typedef struct QPdfDocument QPdfDocument;
typedef struct QPdfPageNavigation QPdfPageNavigation;
typedef struct QPdfView QPdfView;
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

typedef struct VirtualQPdfView VirtualQPdfView;
typedef struct QPdfView_VTable{
	void (*destructor)(VirtualQPdfView* self);
	QMetaObject* (*metaObject)(const VirtualQPdfView* self);
	void* (*metacast)(VirtualQPdfView* self, const char* param1);
	int (*metacall)(VirtualQPdfView* self, int param1, int param2, void** param3);
	void (*paintEvent)(VirtualQPdfView* self, QPaintEvent* event);
	void (*resizeEvent)(VirtualQPdfView* self, QResizeEvent* event);
	void (*scrollContentsBy)(VirtualQPdfView* self, int dx, int dy);
	QSize* (*minimumSizeHint)(const VirtualQPdfView* self);
	QSize* (*sizeHint)(const VirtualQPdfView* self);
	void (*setupViewport)(VirtualQPdfView* self, QWidget* viewport);
	bool (*eventFilter)(VirtualQPdfView* self, QObject* param1, QEvent* param2);
	bool (*event)(VirtualQPdfView* self, QEvent* param1);
	bool (*viewportEvent)(VirtualQPdfView* self, QEvent* param1);
	void (*mousePressEvent)(VirtualQPdfView* self, QMouseEvent* param1);
	void (*mouseReleaseEvent)(VirtualQPdfView* self, QMouseEvent* param1);
	void (*mouseDoubleClickEvent)(VirtualQPdfView* self, QMouseEvent* param1);
	void (*mouseMoveEvent)(VirtualQPdfView* self, QMouseEvent* param1);
	void (*wheelEvent)(VirtualQPdfView* self, QWheelEvent* param1);
	void (*contextMenuEvent)(VirtualQPdfView* self, QContextMenuEvent* param1);
	void (*dragEnterEvent)(VirtualQPdfView* self, QDragEnterEvent* param1);
	void (*dragMoveEvent)(VirtualQPdfView* self, QDragMoveEvent* param1);
	void (*dragLeaveEvent)(VirtualQPdfView* self, QDragLeaveEvent* param1);
	void (*dropEvent)(VirtualQPdfView* self, QDropEvent* param1);
	void (*keyPressEvent)(VirtualQPdfView* self, QKeyEvent* param1);
	QSize* (*viewportSizeHint)(const VirtualQPdfView* self);
	void (*changeEvent)(VirtualQPdfView* self, QEvent* param1);
	int (*devType)(const VirtualQPdfView* self);
	void (*setVisible)(VirtualQPdfView* self, bool visible);
	int (*heightForWidth)(const VirtualQPdfView* self, int param1);
	bool (*hasHeightForWidth)(const VirtualQPdfView* self);
	QPaintEngine* (*paintEngine)(const VirtualQPdfView* self);
	void (*keyReleaseEvent)(VirtualQPdfView* self, QKeyEvent* event);
	void (*focusInEvent)(VirtualQPdfView* self, QFocusEvent* event);
	void (*focusOutEvent)(VirtualQPdfView* self, QFocusEvent* event);
	void (*enterEvent)(VirtualQPdfView* self, QEvent* event);
	void (*leaveEvent)(VirtualQPdfView* self, QEvent* event);
	void (*moveEvent)(VirtualQPdfView* self, QMoveEvent* event);
	void (*closeEvent)(VirtualQPdfView* self, QCloseEvent* event);
	void (*tabletEvent)(VirtualQPdfView* self, QTabletEvent* event);
	void (*actionEvent)(VirtualQPdfView* self, QActionEvent* event);
	void (*showEvent)(VirtualQPdfView* self, QShowEvent* event);
	void (*hideEvent)(VirtualQPdfView* self, QHideEvent* event);
	bool (*nativeEvent)(VirtualQPdfView* self, struct seaqt_string eventType, void* message, long* result);
	int (*metric)(const VirtualQPdfView* self, int param1);
	void (*initPainter)(const VirtualQPdfView* self, QPainter* painter);
	QPaintDevice* (*redirected)(const VirtualQPdfView* self, QPoint* offset);
	QPainter* (*sharedPainter)(const VirtualQPdfView* self);
	void (*inputMethodEvent)(VirtualQPdfView* self, QInputMethodEvent* param1);
	QVariant* (*inputMethodQuery)(const VirtualQPdfView* self, int param1);
	bool (*focusNextPrevChild)(VirtualQPdfView* self, bool next);
	void (*timerEvent)(VirtualQPdfView* self, QTimerEvent* event);
	void (*childEvent)(VirtualQPdfView* self, QChildEvent* event);
	void (*customEvent)(VirtualQPdfView* self, QEvent* event);
	void (*connectNotify)(VirtualQPdfView* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQPdfView* self, QMetaMethod* signal);
}QPdfView_VTable;

void* QPdfView_vdata(VirtualQPdfView* self);
VirtualQPdfView* vdata_QPdfView(void* vdata);

VirtualQPdfView* QPdfView_new(const QPdfView_VTable* vtbl, size_t vdata);
VirtualQPdfView* QPdfView_new_parent(const QPdfView_VTable* vtbl, size_t vdata, QWidget* parent);

void QPdfView_virtbase(QPdfView* src, QAbstractScrollArea** outptr_QAbstractScrollArea);
QMetaObject* QPdfView_metaObject(const QPdfView* self);
void* QPdfView_metacast(QPdfView* self, const char* param1);
int QPdfView_metacall(QPdfView* self, int param1, int param2, void** param3);
struct seaqt_string QPdfView_tr_s(const char* s);
struct seaqt_string QPdfView_trUtf8_s(const char* s);
void QPdfView_setDocument(QPdfView* self, QPdfDocument* document);
QPdfDocument* QPdfView_document(const QPdfView* self);
QPdfPageNavigation* QPdfView_pageNavigation(const QPdfView* self);
int QPdfView_pageMode(const QPdfView* self);
int QPdfView_zoomMode(const QPdfView* self);
double QPdfView_zoomFactor(const QPdfView* self);
int QPdfView_pageSpacing(const QPdfView* self);
void QPdfView_setPageSpacing(QPdfView* self, int spacing);
QMargins* QPdfView_documentMargins(const QPdfView* self);
void QPdfView_setDocumentMargins(QPdfView* self, QMargins* margins);
void QPdfView_setPageMode(QPdfView* self, int mode);
void QPdfView_setZoomMode(QPdfView* self, int mode);
void QPdfView_setZoomFactor(QPdfView* self, double factor);
void QPdfView_documentChanged(QPdfView* self, QPdfDocument* document);
void QPdfView_connect_documentChanged(QPdfView* self, intptr_t slot, void (*callback)(intptr_t, QPdfDocument*), void (*release)(intptr_t));
void QPdfView_pageModeChanged(QPdfView* self, int pageMode);
void QPdfView_connect_pageModeChanged(QPdfView* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t));
void QPdfView_zoomModeChanged(QPdfView* self, int zoomMode);
void QPdfView_connect_zoomModeChanged(QPdfView* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t));
void QPdfView_zoomFactorChanged(QPdfView* self, double zoomFactor);
void QPdfView_connect_zoomFactorChanged(QPdfView* self, intptr_t slot, void (*callback)(intptr_t, double), void (*release)(intptr_t));
void QPdfView_pageSpacingChanged(QPdfView* self, int pageSpacing);
void QPdfView_connect_pageSpacingChanged(QPdfView* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t));
void QPdfView_documentMarginsChanged(QPdfView* self, QMargins* documentMargins);
void QPdfView_connect_documentMarginsChanged(QPdfView* self, intptr_t slot, void (*callback)(intptr_t, QMargins*), void (*release)(intptr_t));
void QPdfView_paintEvent(QPdfView* self, QPaintEvent* event);
void QPdfView_resizeEvent(QPdfView* self, QResizeEvent* event);
void QPdfView_scrollContentsBy(QPdfView* self, int dx, int dy);
struct seaqt_string QPdfView_tr_s_c(const char* s, const char* c);
struct seaqt_string QPdfView_tr_s_c_n(const char* s, const char* c, int n);
struct seaqt_string QPdfView_trUtf8_s_c(const char* s, const char* c);
struct seaqt_string QPdfView_trUtf8_s_c_n(const char* s, const char* c, int n);

QMetaObject* QPdfView_virtualbase_metaObject(const VirtualQPdfView* self);
void* QPdfView_virtualbase_metacast(VirtualQPdfView* self, const char* param1);
int QPdfView_virtualbase_metacall(VirtualQPdfView* self, int param1, int param2, void** param3);
void QPdfView_virtualbase_paintEvent(VirtualQPdfView* self, QPaintEvent* event);
void QPdfView_virtualbase_resizeEvent(VirtualQPdfView* self, QResizeEvent* event);
void QPdfView_virtualbase_scrollContentsBy(VirtualQPdfView* self, int dx, int dy);
QSize* QPdfView_virtualbase_minimumSizeHint(const VirtualQPdfView* self);
QSize* QPdfView_virtualbase_sizeHint(const VirtualQPdfView* self);
void QPdfView_virtualbase_setupViewport(VirtualQPdfView* self, QWidget* viewport);
bool QPdfView_virtualbase_eventFilter(VirtualQPdfView* self, QObject* param1, QEvent* param2);
bool QPdfView_virtualbase_event(VirtualQPdfView* self, QEvent* param1);
bool QPdfView_virtualbase_viewportEvent(VirtualQPdfView* self, QEvent* param1);
void QPdfView_virtualbase_mousePressEvent(VirtualQPdfView* self, QMouseEvent* param1);
void QPdfView_virtualbase_mouseReleaseEvent(VirtualQPdfView* self, QMouseEvent* param1);
void QPdfView_virtualbase_mouseDoubleClickEvent(VirtualQPdfView* self, QMouseEvent* param1);
void QPdfView_virtualbase_mouseMoveEvent(VirtualQPdfView* self, QMouseEvent* param1);
void QPdfView_virtualbase_wheelEvent(VirtualQPdfView* self, QWheelEvent* param1);
void QPdfView_virtualbase_contextMenuEvent(VirtualQPdfView* self, QContextMenuEvent* param1);
void QPdfView_virtualbase_dragEnterEvent(VirtualQPdfView* self, QDragEnterEvent* param1);
void QPdfView_virtualbase_dragMoveEvent(VirtualQPdfView* self, QDragMoveEvent* param1);
void QPdfView_virtualbase_dragLeaveEvent(VirtualQPdfView* self, QDragLeaveEvent* param1);
void QPdfView_virtualbase_dropEvent(VirtualQPdfView* self, QDropEvent* param1);
void QPdfView_virtualbase_keyPressEvent(VirtualQPdfView* self, QKeyEvent* param1);
QSize* QPdfView_virtualbase_viewportSizeHint(const VirtualQPdfView* self);
void QPdfView_virtualbase_changeEvent(VirtualQPdfView* self, QEvent* param1);
int QPdfView_virtualbase_devType(const VirtualQPdfView* self);
void QPdfView_virtualbase_setVisible(VirtualQPdfView* self, bool visible);
int QPdfView_virtualbase_heightForWidth(const VirtualQPdfView* self, int param1);
bool QPdfView_virtualbase_hasHeightForWidth(const VirtualQPdfView* self);
QPaintEngine* QPdfView_virtualbase_paintEngine(const VirtualQPdfView* self);
void QPdfView_virtualbase_keyReleaseEvent(VirtualQPdfView* self, QKeyEvent* event);
void QPdfView_virtualbase_focusInEvent(VirtualQPdfView* self, QFocusEvent* event);
void QPdfView_virtualbase_focusOutEvent(VirtualQPdfView* self, QFocusEvent* event);
void QPdfView_virtualbase_enterEvent(VirtualQPdfView* self, QEvent* event);
void QPdfView_virtualbase_leaveEvent(VirtualQPdfView* self, QEvent* event);
void QPdfView_virtualbase_moveEvent(VirtualQPdfView* self, QMoveEvent* event);
void QPdfView_virtualbase_closeEvent(VirtualQPdfView* self, QCloseEvent* event);
void QPdfView_virtualbase_tabletEvent(VirtualQPdfView* self, QTabletEvent* event);
void QPdfView_virtualbase_actionEvent(VirtualQPdfView* self, QActionEvent* event);
void QPdfView_virtualbase_showEvent(VirtualQPdfView* self, QShowEvent* event);
void QPdfView_virtualbase_hideEvent(VirtualQPdfView* self, QHideEvent* event);
bool QPdfView_virtualbase_nativeEvent(VirtualQPdfView* self, struct seaqt_string eventType, void* message, long* result);
int QPdfView_virtualbase_metric(const VirtualQPdfView* self, int param1);
void QPdfView_virtualbase_initPainter(const VirtualQPdfView* self, QPainter* painter);
QPaintDevice* QPdfView_virtualbase_redirected(const VirtualQPdfView* self, QPoint* offset);
QPainter* QPdfView_virtualbase_sharedPainter(const VirtualQPdfView* self);
void QPdfView_virtualbase_inputMethodEvent(VirtualQPdfView* self, QInputMethodEvent* param1);
QVariant* QPdfView_virtualbase_inputMethodQuery(const VirtualQPdfView* self, int param1);
bool QPdfView_virtualbase_focusNextPrevChild(VirtualQPdfView* self, bool next);
void QPdfView_virtualbase_timerEvent(VirtualQPdfView* self, QTimerEvent* event);
void QPdfView_virtualbase_childEvent(VirtualQPdfView* self, QChildEvent* event);
void QPdfView_virtualbase_customEvent(VirtualQPdfView* self, QEvent* event);
void QPdfView_virtualbase_connectNotify(VirtualQPdfView* self, QMetaMethod* signal);
void QPdfView_virtualbase_disconnectNotify(VirtualQPdfView* self, QMetaMethod* signal);

void QPdfView_protectedbase_setViewportMargins_left_top_right_bottom(VirtualQPdfView* self, int left, int top, int right, int bottom);
QMargins* QPdfView_protectedbase_viewportMargins(const VirtualQPdfView* self);
void QPdfView_protectedbase_drawFrame(VirtualQPdfView* self, QPainter* param1);
void QPdfView_protectedbase_initStyleOption(const VirtualQPdfView* self, QStyleOptionFrame* option);
void QPdfView_protectedbase_updateMicroFocus(VirtualQPdfView* self);
void QPdfView_protectedbase_create(VirtualQPdfView* self);
void QPdfView_protectedbase_destroy(VirtualQPdfView* self);
bool QPdfView_protectedbase_focusNextChild(VirtualQPdfView* self);
bool QPdfView_protectedbase_focusPreviousChild(VirtualQPdfView* self);
QObject* QPdfView_protectedbase_sender(const VirtualQPdfView* self);
int QPdfView_protectedbase_senderSignalIndex(const VirtualQPdfView* self);
int QPdfView_protectedbase_receivers(const VirtualQPdfView* self, const char* signal);
bool QPdfView_protectedbase_isSignalConnected(const VirtualQPdfView* self, QMetaMethod* signal);

void QPdfView_delete(QPdfView* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
