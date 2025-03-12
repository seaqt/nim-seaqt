#pragma once
#ifndef SEAQT_QTWEBKITWIDGETS_GEN_QWEBINSPECTOR_H
#define SEAQT_QTWEBKITWIDGETS_GEN_QWEBINSPECTOR_H

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
class QResizeEvent;
class QShowEvent;
class QSize;
class QTabletEvent;
class QTimerEvent;
class QVariant;
class QWebInspector;
class QWebPage;
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
typedef struct QResizeEvent QResizeEvent;
typedef struct QShowEvent QShowEvent;
typedef struct QSize QSize;
typedef struct QTabletEvent QTabletEvent;
typedef struct QTimerEvent QTimerEvent;
typedef struct QVariant QVariant;
typedef struct QWebInspector QWebInspector;
typedef struct QWebPage QWebPage;
typedef struct QWheelEvent QWheelEvent;
typedef struct QWidget QWidget;
#endif

typedef struct VirtualQWebInspector VirtualQWebInspector;
typedef struct QWebInspector_VTable{
	void (*destructor)(VirtualQWebInspector* self);
	QMetaObject* (*metaObject)(const VirtualQWebInspector* self);
	void* (*metacast)(VirtualQWebInspector* self, const char* param1);
	int (*metacall)(VirtualQWebInspector* self, int param1, int param2, void** param3);
	QSize* (*sizeHint)(const VirtualQWebInspector* self);
	bool (*event)(VirtualQWebInspector* self, QEvent* param1);
	void (*resizeEvent)(VirtualQWebInspector* self, QResizeEvent* event);
	void (*showEvent)(VirtualQWebInspector* self, QShowEvent* event);
	void (*hideEvent)(VirtualQWebInspector* self, QHideEvent* event);
	void (*closeEvent)(VirtualQWebInspector* self, QCloseEvent* event);
	int (*devType)(const VirtualQWebInspector* self);
	void (*setVisible)(VirtualQWebInspector* self, bool visible);
	QSize* (*minimumSizeHint)(const VirtualQWebInspector* self);
	int (*heightForWidth)(const VirtualQWebInspector* self, int param1);
	bool (*hasHeightForWidth)(const VirtualQWebInspector* self);
	QPaintEngine* (*paintEngine)(const VirtualQWebInspector* self);
	void (*mousePressEvent)(VirtualQWebInspector* self, QMouseEvent* event);
	void (*mouseReleaseEvent)(VirtualQWebInspector* self, QMouseEvent* event);
	void (*mouseDoubleClickEvent)(VirtualQWebInspector* self, QMouseEvent* event);
	void (*mouseMoveEvent)(VirtualQWebInspector* self, QMouseEvent* event);
	void (*wheelEvent)(VirtualQWebInspector* self, QWheelEvent* event);
	void (*keyPressEvent)(VirtualQWebInspector* self, QKeyEvent* event);
	void (*keyReleaseEvent)(VirtualQWebInspector* self, QKeyEvent* event);
	void (*focusInEvent)(VirtualQWebInspector* self, QFocusEvent* event);
	void (*focusOutEvent)(VirtualQWebInspector* self, QFocusEvent* event);
	void (*enterEvent)(VirtualQWebInspector* self, QEvent* event);
	void (*leaveEvent)(VirtualQWebInspector* self, QEvent* event);
	void (*paintEvent)(VirtualQWebInspector* self, QPaintEvent* event);
	void (*moveEvent)(VirtualQWebInspector* self, QMoveEvent* event);
	void (*contextMenuEvent)(VirtualQWebInspector* self, QContextMenuEvent* event);
	void (*tabletEvent)(VirtualQWebInspector* self, QTabletEvent* event);
	void (*actionEvent)(VirtualQWebInspector* self, QActionEvent* event);
	void (*dragEnterEvent)(VirtualQWebInspector* self, QDragEnterEvent* event);
	void (*dragMoveEvent)(VirtualQWebInspector* self, QDragMoveEvent* event);
	void (*dragLeaveEvent)(VirtualQWebInspector* self, QDragLeaveEvent* event);
	void (*dropEvent)(VirtualQWebInspector* self, QDropEvent* event);
	bool (*nativeEvent)(VirtualQWebInspector* self, struct miqt_string eventType, void* message, long* result);
	void (*changeEvent)(VirtualQWebInspector* self, QEvent* param1);
	int (*metric)(const VirtualQWebInspector* self, int param1);
	void (*initPainter)(const VirtualQWebInspector* self, QPainter* painter);
	QPaintDevice* (*redirected)(const VirtualQWebInspector* self, QPoint* offset);
	QPainter* (*sharedPainter)(const VirtualQWebInspector* self);
	void (*inputMethodEvent)(VirtualQWebInspector* self, QInputMethodEvent* param1);
	QVariant* (*inputMethodQuery)(const VirtualQWebInspector* self, int param1);
	bool (*focusNextPrevChild)(VirtualQWebInspector* self, bool next);
	bool (*eventFilter)(VirtualQWebInspector* self, QObject* watched, QEvent* event);
	void (*timerEvent)(VirtualQWebInspector* self, QTimerEvent* event);
	void (*childEvent)(VirtualQWebInspector* self, QChildEvent* event);
	void (*customEvent)(VirtualQWebInspector* self, QEvent* event);
	void (*connectNotify)(VirtualQWebInspector* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQWebInspector* self, QMetaMethod* signal);
}QWebInspector_VTable;

const QWebInspector_VTable* QWebInspector_vtbl(const VirtualQWebInspector* self);
void* QWebInspector_vdata(const VirtualQWebInspector* self);
void QWebInspector_setVdata(VirtualQWebInspector* self, void* vdata);

VirtualQWebInspector* QWebInspector_new(const QWebInspector_VTable* vtbl, void* vdata, QWidget* parent);
VirtualQWebInspector* QWebInspector_new2(const QWebInspector_VTable* vtbl, void* vdata);

void QWebInspector_virtbase(QWebInspector* src, QWidget** outptr_QWidget);
QMetaObject* QWebInspector_metaObject(const QWebInspector* self);
void* QWebInspector_metacast(QWebInspector* self, const char* param1);
int QWebInspector_metacall(QWebInspector* self, int param1, int param2, void** param3);
struct miqt_string QWebInspector_tr(const char* s);
struct miqt_string QWebInspector_trUtf8(const char* s);
void QWebInspector_setPage(QWebInspector* self, QWebPage* page);
QWebPage* QWebInspector_page(const QWebInspector* self);
QSize* QWebInspector_sizeHint(const QWebInspector* self);
bool QWebInspector_event(QWebInspector* self, QEvent* param1);
void QWebInspector_resizeEvent(QWebInspector* self, QResizeEvent* event);
void QWebInspector_showEvent(QWebInspector* self, QShowEvent* event);
void QWebInspector_hideEvent(QWebInspector* self, QHideEvent* event);
void QWebInspector_closeEvent(QWebInspector* self, QCloseEvent* event);
struct miqt_string QWebInspector_tr2(const char* s, const char* c);
struct miqt_string QWebInspector_tr3(const char* s, const char* c, int n);
struct miqt_string QWebInspector_trUtf82(const char* s, const char* c);
struct miqt_string QWebInspector_trUtf83(const char* s, const char* c, int n);

QMetaObject* QWebInspector_virtualbase_metaObject(const VirtualQWebInspector* self);
void* QWebInspector_virtualbase_metacast(VirtualQWebInspector* self, const char* param1);
int QWebInspector_virtualbase_metacall(VirtualQWebInspector* self, int param1, int param2, void** param3);
QSize* QWebInspector_virtualbase_sizeHint(const VirtualQWebInspector* self);
bool QWebInspector_virtualbase_event(VirtualQWebInspector* self, QEvent* param1);
void QWebInspector_virtualbase_resizeEvent(VirtualQWebInspector* self, QResizeEvent* event);
void QWebInspector_virtualbase_showEvent(VirtualQWebInspector* self, QShowEvent* event);
void QWebInspector_virtualbase_hideEvent(VirtualQWebInspector* self, QHideEvent* event);
void QWebInspector_virtualbase_closeEvent(VirtualQWebInspector* self, QCloseEvent* event);
int QWebInspector_virtualbase_devType(const VirtualQWebInspector* self);
void QWebInspector_virtualbase_setVisible(VirtualQWebInspector* self, bool visible);
QSize* QWebInspector_virtualbase_minimumSizeHint(const VirtualQWebInspector* self);
int QWebInspector_virtualbase_heightForWidth(const VirtualQWebInspector* self, int param1);
bool QWebInspector_virtualbase_hasHeightForWidth(const VirtualQWebInspector* self);
QPaintEngine* QWebInspector_virtualbase_paintEngine(const VirtualQWebInspector* self);
void QWebInspector_virtualbase_mousePressEvent(VirtualQWebInspector* self, QMouseEvent* event);
void QWebInspector_virtualbase_mouseReleaseEvent(VirtualQWebInspector* self, QMouseEvent* event);
void QWebInspector_virtualbase_mouseDoubleClickEvent(VirtualQWebInspector* self, QMouseEvent* event);
void QWebInspector_virtualbase_mouseMoveEvent(VirtualQWebInspector* self, QMouseEvent* event);
void QWebInspector_virtualbase_wheelEvent(VirtualQWebInspector* self, QWheelEvent* event);
void QWebInspector_virtualbase_keyPressEvent(VirtualQWebInspector* self, QKeyEvent* event);
void QWebInspector_virtualbase_keyReleaseEvent(VirtualQWebInspector* self, QKeyEvent* event);
void QWebInspector_virtualbase_focusInEvent(VirtualQWebInspector* self, QFocusEvent* event);
void QWebInspector_virtualbase_focusOutEvent(VirtualQWebInspector* self, QFocusEvent* event);
void QWebInspector_virtualbase_enterEvent(VirtualQWebInspector* self, QEvent* event);
void QWebInspector_virtualbase_leaveEvent(VirtualQWebInspector* self, QEvent* event);
void QWebInspector_virtualbase_paintEvent(VirtualQWebInspector* self, QPaintEvent* event);
void QWebInspector_virtualbase_moveEvent(VirtualQWebInspector* self, QMoveEvent* event);
void QWebInspector_virtualbase_contextMenuEvent(VirtualQWebInspector* self, QContextMenuEvent* event);
void QWebInspector_virtualbase_tabletEvent(VirtualQWebInspector* self, QTabletEvent* event);
void QWebInspector_virtualbase_actionEvent(VirtualQWebInspector* self, QActionEvent* event);
void QWebInspector_virtualbase_dragEnterEvent(VirtualQWebInspector* self, QDragEnterEvent* event);
void QWebInspector_virtualbase_dragMoveEvent(VirtualQWebInspector* self, QDragMoveEvent* event);
void QWebInspector_virtualbase_dragLeaveEvent(VirtualQWebInspector* self, QDragLeaveEvent* event);
void QWebInspector_virtualbase_dropEvent(VirtualQWebInspector* self, QDropEvent* event);
bool QWebInspector_virtualbase_nativeEvent(VirtualQWebInspector* self, struct miqt_string eventType, void* message, long* result);
void QWebInspector_virtualbase_changeEvent(VirtualQWebInspector* self, QEvent* param1);
int QWebInspector_virtualbase_metric(const VirtualQWebInspector* self, int param1);
void QWebInspector_virtualbase_initPainter(const VirtualQWebInspector* self, QPainter* painter);
QPaintDevice* QWebInspector_virtualbase_redirected(const VirtualQWebInspector* self, QPoint* offset);
QPainter* QWebInspector_virtualbase_sharedPainter(const VirtualQWebInspector* self);
void QWebInspector_virtualbase_inputMethodEvent(VirtualQWebInspector* self, QInputMethodEvent* param1);
QVariant* QWebInspector_virtualbase_inputMethodQuery(const VirtualQWebInspector* self, int param1);
bool QWebInspector_virtualbase_focusNextPrevChild(VirtualQWebInspector* self, bool next);
bool QWebInspector_virtualbase_eventFilter(VirtualQWebInspector* self, QObject* watched, QEvent* event);
void QWebInspector_virtualbase_timerEvent(VirtualQWebInspector* self, QTimerEvent* event);
void QWebInspector_virtualbase_childEvent(VirtualQWebInspector* self, QChildEvent* event);
void QWebInspector_virtualbase_customEvent(VirtualQWebInspector* self, QEvent* event);
void QWebInspector_virtualbase_connectNotify(VirtualQWebInspector* self, QMetaMethod* signal);
void QWebInspector_virtualbase_disconnectNotify(VirtualQWebInspector* self, QMetaMethod* signal);

void QWebInspector_protectedbase_updateMicroFocus(VirtualQWebInspector* self);
void QWebInspector_protectedbase_create(VirtualQWebInspector* self);
void QWebInspector_protectedbase_destroy(VirtualQWebInspector* self);
bool QWebInspector_protectedbase_focusNextChild(VirtualQWebInspector* self);
bool QWebInspector_protectedbase_focusPreviousChild(VirtualQWebInspector* self);
QObject* QWebInspector_protectedbase_sender(const VirtualQWebInspector* self);
int QWebInspector_protectedbase_senderSignalIndex(const VirtualQWebInspector* self);
int QWebInspector_protectedbase_receivers(const VirtualQWebInspector* self, const char* signal);
bool QWebInspector_protectedbase_isSignalConnected(const VirtualQWebInspector* self, QMetaMethod* signal);

const QMetaObject* QWebInspector_staticMetaObject();
void QWebInspector_delete(QWebInspector* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
