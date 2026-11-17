#pragma once
#ifndef SEAQT_QTPDFWIDGETS_GEN_QPDFPAGESELECTOR_H
#define SEAQT_QTPDFWIDGETS_GEN_QPDFPAGESELECTOR_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt-runtime.h"

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
class QPdfDocument;
class QPdfPageSelector;
class QPoint;
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
typedef struct QPdfDocument QPdfDocument;
typedef struct QPdfPageSelector QPdfPageSelector;
typedef struct QPoint QPoint;
typedef struct QResizeEvent QResizeEvent;
typedef struct QShowEvent QShowEvent;
typedef struct QSize QSize;
typedef struct QTabletEvent QTabletEvent;
typedef struct QTimerEvent QTimerEvent;
typedef struct QVariant QVariant;
typedef struct QWheelEvent QWheelEvent;
typedef struct QWidget QWidget;
#endif

typedef struct VirtualQPdfPageSelector VirtualQPdfPageSelector;
typedef struct QPdfPageSelector_VTable{
	void (*destructor)(VirtualQPdfPageSelector* self);
	QMetaObject* (*metaObject)(const VirtualQPdfPageSelector* self);
	void* (*metacast)(VirtualQPdfPageSelector* self, const char* param1);
	int (*metacall)(VirtualQPdfPageSelector* self, int param1, int param2, void** param3);
	int (*devType)(const VirtualQPdfPageSelector* self);
	void (*setVisible)(VirtualQPdfPageSelector* self, bool visible);
	QSize* (*sizeHint)(const VirtualQPdfPageSelector* self);
	QSize* (*minimumSizeHint)(const VirtualQPdfPageSelector* self);
	int (*heightForWidth)(const VirtualQPdfPageSelector* self, int param1);
	bool (*hasHeightForWidth)(const VirtualQPdfPageSelector* self);
	QPaintEngine* (*paintEngine)(const VirtualQPdfPageSelector* self);
	bool (*event)(VirtualQPdfPageSelector* self, QEvent* event);
	void (*mousePressEvent)(VirtualQPdfPageSelector* self, QMouseEvent* event);
	void (*mouseReleaseEvent)(VirtualQPdfPageSelector* self, QMouseEvent* event);
	void (*mouseDoubleClickEvent)(VirtualQPdfPageSelector* self, QMouseEvent* event);
	void (*mouseMoveEvent)(VirtualQPdfPageSelector* self, QMouseEvent* event);
	void (*wheelEvent)(VirtualQPdfPageSelector* self, QWheelEvent* event);
	void (*keyPressEvent)(VirtualQPdfPageSelector* self, QKeyEvent* event);
	void (*keyReleaseEvent)(VirtualQPdfPageSelector* self, QKeyEvent* event);
	void (*focusInEvent)(VirtualQPdfPageSelector* self, QFocusEvent* event);
	void (*focusOutEvent)(VirtualQPdfPageSelector* self, QFocusEvent* event);
	void (*enterEvent)(VirtualQPdfPageSelector* self, QEnterEvent* event);
	void (*leaveEvent)(VirtualQPdfPageSelector* self, QEvent* event);
	void (*paintEvent)(VirtualQPdfPageSelector* self, QPaintEvent* event);
	void (*moveEvent)(VirtualQPdfPageSelector* self, QMoveEvent* event);
	void (*resizeEvent)(VirtualQPdfPageSelector* self, QResizeEvent* event);
	void (*closeEvent)(VirtualQPdfPageSelector* self, QCloseEvent* event);
	void (*contextMenuEvent)(VirtualQPdfPageSelector* self, QContextMenuEvent* event);
	void (*tabletEvent)(VirtualQPdfPageSelector* self, QTabletEvent* event);
	void (*actionEvent)(VirtualQPdfPageSelector* self, QActionEvent* event);
	void (*dragEnterEvent)(VirtualQPdfPageSelector* self, QDragEnterEvent* event);
	void (*dragMoveEvent)(VirtualQPdfPageSelector* self, QDragMoveEvent* event);
	void (*dragLeaveEvent)(VirtualQPdfPageSelector* self, QDragLeaveEvent* event);
	void (*dropEvent)(VirtualQPdfPageSelector* self, QDropEvent* event);
	void (*showEvent)(VirtualQPdfPageSelector* self, QShowEvent* event);
	void (*hideEvent)(VirtualQPdfPageSelector* self, QHideEvent* event);
	bool (*nativeEvent)(VirtualQPdfPageSelector* self, struct seaqt_string eventType, void* message, intptr_t* result);
	void (*changeEvent)(VirtualQPdfPageSelector* self, QEvent* param1);
	int (*metric)(const VirtualQPdfPageSelector* self, int param1);
	void (*initPainter)(const VirtualQPdfPageSelector* self, QPainter* painter);
	QPaintDevice* (*redirected)(const VirtualQPdfPageSelector* self, QPoint* offset);
	QPainter* (*sharedPainter)(const VirtualQPdfPageSelector* self);
	void (*inputMethodEvent)(VirtualQPdfPageSelector* self, QInputMethodEvent* param1);
	QVariant* (*inputMethodQuery)(const VirtualQPdfPageSelector* self, int param1);
	bool (*focusNextPrevChild)(VirtualQPdfPageSelector* self, bool next);
	bool (*eventFilter)(VirtualQPdfPageSelector* self, QObject* watched, QEvent* event);
	void (*timerEvent)(VirtualQPdfPageSelector* self, QTimerEvent* event);
	void (*childEvent)(VirtualQPdfPageSelector* self, QChildEvent* event);
	void (*customEvent)(VirtualQPdfPageSelector* self, QEvent* event);
	void (*connectNotify)(VirtualQPdfPageSelector* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQPdfPageSelector* self, QMetaMethod* signal);
}QPdfPageSelector_VTable;

void* QPdfPageSelector_vdata(VirtualQPdfPageSelector* self);
VirtualQPdfPageSelector* vdata_QPdfPageSelector(void* vdata);

VirtualQPdfPageSelector* QPdfPageSelector_new(const QPdfPageSelector_VTable* vtbl, size_t vdata);
VirtualQPdfPageSelector* QPdfPageSelector_new_parent(const QPdfPageSelector_VTable* vtbl, size_t vdata, QWidget* parent);

void QPdfPageSelector_virtbase(QPdfPageSelector* src, QWidget** outptr_QWidget);
QMetaObject* QPdfPageSelector_metaObject(const QPdfPageSelector* self);
void* QPdfPageSelector_metacast(QPdfPageSelector* self, const char* param1);
int QPdfPageSelector_metacall(QPdfPageSelector* self, int param1, int param2, void** param3);
struct seaqt_string QPdfPageSelector_tr_s(const char* s);
void QPdfPageSelector_setDocument(QPdfPageSelector* self, QPdfDocument* document);
QPdfDocument* QPdfPageSelector_document(const QPdfPageSelector* self);
int QPdfPageSelector_currentPage(const QPdfPageSelector* self);
struct seaqt_string QPdfPageSelector_currentPageLabel(const QPdfPageSelector* self);
void QPdfPageSelector_setCurrentPage(QPdfPageSelector* self, int index);
void QPdfPageSelector_documentChanged(QPdfPageSelector* self, QPdfDocument* document);
void QPdfPageSelector_connect_documentChanged(QPdfPageSelector* self, intptr_t slot, void (*callback)(intptr_t, QPdfDocument*), void (*release)(intptr_t));
void QPdfPageSelector_currentPageChanged(QPdfPageSelector* self, int index);
void QPdfPageSelector_connect_currentPageChanged(QPdfPageSelector* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t));
void QPdfPageSelector_currentPageLabelChanged(QPdfPageSelector* self, struct seaqt_string label);
void QPdfPageSelector_connect_currentPageLabelChanged(QPdfPageSelector* self, intptr_t slot, void (*callback)(intptr_t, struct seaqt_string), void (*release)(intptr_t));
struct seaqt_string QPdfPageSelector_tr_s_c(const char* s, const char* c);
struct seaqt_string QPdfPageSelector_tr_s_c_n(const char* s, const char* c, int n);

QMetaObject* QPdfPageSelector_virtualbase_metaObject(const VirtualQPdfPageSelector* self);
void* QPdfPageSelector_virtualbase_metacast(VirtualQPdfPageSelector* self, const char* param1);
int QPdfPageSelector_virtualbase_metacall(VirtualQPdfPageSelector* self, int param1, int param2, void** param3);
int QPdfPageSelector_virtualbase_devType(const VirtualQPdfPageSelector* self);
void QPdfPageSelector_virtualbase_setVisible(VirtualQPdfPageSelector* self, bool visible);
QSize* QPdfPageSelector_virtualbase_sizeHint(const VirtualQPdfPageSelector* self);
QSize* QPdfPageSelector_virtualbase_minimumSizeHint(const VirtualQPdfPageSelector* self);
int QPdfPageSelector_virtualbase_heightForWidth(const VirtualQPdfPageSelector* self, int param1);
bool QPdfPageSelector_virtualbase_hasHeightForWidth(const VirtualQPdfPageSelector* self);
QPaintEngine* QPdfPageSelector_virtualbase_paintEngine(const VirtualQPdfPageSelector* self);
bool QPdfPageSelector_virtualbase_event(VirtualQPdfPageSelector* self, QEvent* event);
void QPdfPageSelector_virtualbase_mousePressEvent(VirtualQPdfPageSelector* self, QMouseEvent* event);
void QPdfPageSelector_virtualbase_mouseReleaseEvent(VirtualQPdfPageSelector* self, QMouseEvent* event);
void QPdfPageSelector_virtualbase_mouseDoubleClickEvent(VirtualQPdfPageSelector* self, QMouseEvent* event);
void QPdfPageSelector_virtualbase_mouseMoveEvent(VirtualQPdfPageSelector* self, QMouseEvent* event);
void QPdfPageSelector_virtualbase_wheelEvent(VirtualQPdfPageSelector* self, QWheelEvent* event);
void QPdfPageSelector_virtualbase_keyPressEvent(VirtualQPdfPageSelector* self, QKeyEvent* event);
void QPdfPageSelector_virtualbase_keyReleaseEvent(VirtualQPdfPageSelector* self, QKeyEvent* event);
void QPdfPageSelector_virtualbase_focusInEvent(VirtualQPdfPageSelector* self, QFocusEvent* event);
void QPdfPageSelector_virtualbase_focusOutEvent(VirtualQPdfPageSelector* self, QFocusEvent* event);
void QPdfPageSelector_virtualbase_enterEvent(VirtualQPdfPageSelector* self, QEnterEvent* event);
void QPdfPageSelector_virtualbase_leaveEvent(VirtualQPdfPageSelector* self, QEvent* event);
void QPdfPageSelector_virtualbase_paintEvent(VirtualQPdfPageSelector* self, QPaintEvent* event);
void QPdfPageSelector_virtualbase_moveEvent(VirtualQPdfPageSelector* self, QMoveEvent* event);
void QPdfPageSelector_virtualbase_resizeEvent(VirtualQPdfPageSelector* self, QResizeEvent* event);
void QPdfPageSelector_virtualbase_closeEvent(VirtualQPdfPageSelector* self, QCloseEvent* event);
void QPdfPageSelector_virtualbase_contextMenuEvent(VirtualQPdfPageSelector* self, QContextMenuEvent* event);
void QPdfPageSelector_virtualbase_tabletEvent(VirtualQPdfPageSelector* self, QTabletEvent* event);
void QPdfPageSelector_virtualbase_actionEvent(VirtualQPdfPageSelector* self, QActionEvent* event);
void QPdfPageSelector_virtualbase_dragEnterEvent(VirtualQPdfPageSelector* self, QDragEnterEvent* event);
void QPdfPageSelector_virtualbase_dragMoveEvent(VirtualQPdfPageSelector* self, QDragMoveEvent* event);
void QPdfPageSelector_virtualbase_dragLeaveEvent(VirtualQPdfPageSelector* self, QDragLeaveEvent* event);
void QPdfPageSelector_virtualbase_dropEvent(VirtualQPdfPageSelector* self, QDropEvent* event);
void QPdfPageSelector_virtualbase_showEvent(VirtualQPdfPageSelector* self, QShowEvent* event);
void QPdfPageSelector_virtualbase_hideEvent(VirtualQPdfPageSelector* self, QHideEvent* event);
bool QPdfPageSelector_virtualbase_nativeEvent(VirtualQPdfPageSelector* self, struct seaqt_string eventType, void* message, intptr_t* result);
void QPdfPageSelector_virtualbase_changeEvent(VirtualQPdfPageSelector* self, QEvent* param1);
int QPdfPageSelector_virtualbase_metric(const VirtualQPdfPageSelector* self, int param1);
void QPdfPageSelector_virtualbase_initPainter(const VirtualQPdfPageSelector* self, QPainter* painter);
QPaintDevice* QPdfPageSelector_virtualbase_redirected(const VirtualQPdfPageSelector* self, QPoint* offset);
QPainter* QPdfPageSelector_virtualbase_sharedPainter(const VirtualQPdfPageSelector* self);
void QPdfPageSelector_virtualbase_inputMethodEvent(VirtualQPdfPageSelector* self, QInputMethodEvent* param1);
QVariant* QPdfPageSelector_virtualbase_inputMethodQuery(const VirtualQPdfPageSelector* self, int param1);
bool QPdfPageSelector_virtualbase_focusNextPrevChild(VirtualQPdfPageSelector* self, bool next);
bool QPdfPageSelector_virtualbase_eventFilter(VirtualQPdfPageSelector* self, QObject* watched, QEvent* event);
void QPdfPageSelector_virtualbase_timerEvent(VirtualQPdfPageSelector* self, QTimerEvent* event);
void QPdfPageSelector_virtualbase_childEvent(VirtualQPdfPageSelector* self, QChildEvent* event);
void QPdfPageSelector_virtualbase_customEvent(VirtualQPdfPageSelector* self, QEvent* event);
void QPdfPageSelector_virtualbase_connectNotify(VirtualQPdfPageSelector* self, QMetaMethod* signal);
void QPdfPageSelector_virtualbase_disconnectNotify(VirtualQPdfPageSelector* self, QMetaMethod* signal);

void QPdfPageSelector_protectedbase_updateMicroFocus(VirtualQPdfPageSelector* self);
void QPdfPageSelector_protectedbase_create(VirtualQPdfPageSelector* self);
void QPdfPageSelector_protectedbase_destroy(VirtualQPdfPageSelector* self);
bool QPdfPageSelector_protectedbase_focusNextChild(VirtualQPdfPageSelector* self);
bool QPdfPageSelector_protectedbase_focusPreviousChild(VirtualQPdfPageSelector* self);
QObject* QPdfPageSelector_protectedbase_sender(const VirtualQPdfPageSelector* self);
int QPdfPageSelector_protectedbase_senderSignalIndex(const VirtualQPdfPageSelector* self);
int QPdfPageSelector_protectedbase_receivers(const VirtualQPdfPageSelector* self, const char* signal);
bool QPdfPageSelector_protectedbase_isSignalConnected(const VirtualQPdfPageSelector* self, QMetaMethod* signal);
double QPdfPageSelector_protectedbase_getDecodedMetricF(const VirtualQPdfPageSelector* self, int metricA, int metricB);

const QMetaObject* QPdfPageSelector_staticMetaObject();
void QPdfPageSelector_delete(QPdfPageSelector* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
