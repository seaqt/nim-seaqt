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

struct QWebInspector_VTable {
	void (*destructor)(struct QWebInspector_VTable* vtbl, QWebInspector* self);
	QMetaObject* (*metaObject)(struct QWebInspector_VTable* vtbl, const QWebInspector* self);
	void* (*metacast)(struct QWebInspector_VTable* vtbl, QWebInspector* self, const char* param1);
	int (*metacall)(struct QWebInspector_VTable* vtbl, QWebInspector* self, int param1, int param2, void** param3);
	QSize* (*sizeHint)(struct QWebInspector_VTable* vtbl, const QWebInspector* self);
	bool (*event)(struct QWebInspector_VTable* vtbl, QWebInspector* self, QEvent* param1);
	void (*resizeEvent)(struct QWebInspector_VTable* vtbl, QWebInspector* self, QResizeEvent* event);
	void (*showEvent)(struct QWebInspector_VTable* vtbl, QWebInspector* self, QShowEvent* event);
	void (*hideEvent)(struct QWebInspector_VTable* vtbl, QWebInspector* self, QHideEvent* event);
	void (*closeEvent)(struct QWebInspector_VTable* vtbl, QWebInspector* self, QCloseEvent* event);
	int (*devType)(struct QWebInspector_VTable* vtbl, const QWebInspector* self);
	void (*setVisible)(struct QWebInspector_VTable* vtbl, QWebInspector* self, bool visible);
	QSize* (*minimumSizeHint)(struct QWebInspector_VTable* vtbl, const QWebInspector* self);
	int (*heightForWidth)(struct QWebInspector_VTable* vtbl, const QWebInspector* self, int param1);
	bool (*hasHeightForWidth)(struct QWebInspector_VTable* vtbl, const QWebInspector* self);
	QPaintEngine* (*paintEngine)(struct QWebInspector_VTable* vtbl, const QWebInspector* self);
	void (*mousePressEvent)(struct QWebInspector_VTable* vtbl, QWebInspector* self, QMouseEvent* event);
	void (*mouseReleaseEvent)(struct QWebInspector_VTable* vtbl, QWebInspector* self, QMouseEvent* event);
	void (*mouseDoubleClickEvent)(struct QWebInspector_VTable* vtbl, QWebInspector* self, QMouseEvent* event);
	void (*mouseMoveEvent)(struct QWebInspector_VTable* vtbl, QWebInspector* self, QMouseEvent* event);
	void (*wheelEvent)(struct QWebInspector_VTable* vtbl, QWebInspector* self, QWheelEvent* event);
	void (*keyPressEvent)(struct QWebInspector_VTable* vtbl, QWebInspector* self, QKeyEvent* event);
	void (*keyReleaseEvent)(struct QWebInspector_VTable* vtbl, QWebInspector* self, QKeyEvent* event);
	void (*focusInEvent)(struct QWebInspector_VTable* vtbl, QWebInspector* self, QFocusEvent* event);
	void (*focusOutEvent)(struct QWebInspector_VTable* vtbl, QWebInspector* self, QFocusEvent* event);
	void (*enterEvent)(struct QWebInspector_VTable* vtbl, QWebInspector* self, QEvent* event);
	void (*leaveEvent)(struct QWebInspector_VTable* vtbl, QWebInspector* self, QEvent* event);
	void (*paintEvent)(struct QWebInspector_VTable* vtbl, QWebInspector* self, QPaintEvent* event);
	void (*moveEvent)(struct QWebInspector_VTable* vtbl, QWebInspector* self, QMoveEvent* event);
	void (*contextMenuEvent)(struct QWebInspector_VTable* vtbl, QWebInspector* self, QContextMenuEvent* event);
	void (*tabletEvent)(struct QWebInspector_VTable* vtbl, QWebInspector* self, QTabletEvent* event);
	void (*actionEvent)(struct QWebInspector_VTable* vtbl, QWebInspector* self, QActionEvent* event);
	void (*dragEnterEvent)(struct QWebInspector_VTable* vtbl, QWebInspector* self, QDragEnterEvent* event);
	void (*dragMoveEvent)(struct QWebInspector_VTable* vtbl, QWebInspector* self, QDragMoveEvent* event);
	void (*dragLeaveEvent)(struct QWebInspector_VTable* vtbl, QWebInspector* self, QDragLeaveEvent* event);
	void (*dropEvent)(struct QWebInspector_VTable* vtbl, QWebInspector* self, QDropEvent* event);
	bool (*nativeEvent)(struct QWebInspector_VTable* vtbl, QWebInspector* self, struct miqt_string eventType, void* message, long* result);
	void (*changeEvent)(struct QWebInspector_VTable* vtbl, QWebInspector* self, QEvent* param1);
	int (*metric)(struct QWebInspector_VTable* vtbl, const QWebInspector* self, int param1);
	void (*initPainter)(struct QWebInspector_VTable* vtbl, const QWebInspector* self, QPainter* painter);
	QPaintDevice* (*redirected)(struct QWebInspector_VTable* vtbl, const QWebInspector* self, QPoint* offset);
	QPainter* (*sharedPainter)(struct QWebInspector_VTable* vtbl, const QWebInspector* self);
	void (*inputMethodEvent)(struct QWebInspector_VTable* vtbl, QWebInspector* self, QInputMethodEvent* param1);
	QVariant* (*inputMethodQuery)(struct QWebInspector_VTable* vtbl, const QWebInspector* self, int param1);
	bool (*focusNextPrevChild)(struct QWebInspector_VTable* vtbl, QWebInspector* self, bool next);
	bool (*eventFilter)(struct QWebInspector_VTable* vtbl, QWebInspector* self, QObject* watched, QEvent* event);
	void (*timerEvent)(struct QWebInspector_VTable* vtbl, QWebInspector* self, QTimerEvent* event);
	void (*childEvent)(struct QWebInspector_VTable* vtbl, QWebInspector* self, QChildEvent* event);
	void (*customEvent)(struct QWebInspector_VTable* vtbl, QWebInspector* self, QEvent* event);
	void (*connectNotify)(struct QWebInspector_VTable* vtbl, QWebInspector* self, QMetaMethod* signal);
	void (*disconnectNotify)(struct QWebInspector_VTable* vtbl, QWebInspector* self, QMetaMethod* signal);
};
QWebInspector* QWebInspector_new(struct QWebInspector_VTable* vtbl, QWidget* parent);
QWebInspector* QWebInspector_new2(struct QWebInspector_VTable* vtbl);
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
QMetaObject* QWebInspector_virtualbase_metaObject(const void* self);
void* QWebInspector_virtualbase_metacast(void* self, const char* param1);
int QWebInspector_virtualbase_metacall(void* self, int param1, int param2, void** param3);
QSize* QWebInspector_virtualbase_sizeHint(const void* self);
bool QWebInspector_virtualbase_event(void* self, QEvent* param1);
void QWebInspector_virtualbase_resizeEvent(void* self, QResizeEvent* event);
void QWebInspector_virtualbase_showEvent(void* self, QShowEvent* event);
void QWebInspector_virtualbase_hideEvent(void* self, QHideEvent* event);
void QWebInspector_virtualbase_closeEvent(void* self, QCloseEvent* event);
int QWebInspector_virtualbase_devType(const void* self);
void QWebInspector_virtualbase_setVisible(void* self, bool visible);
QSize* QWebInspector_virtualbase_minimumSizeHint(const void* self);
int QWebInspector_virtualbase_heightForWidth(const void* self, int param1);
bool QWebInspector_virtualbase_hasHeightForWidth(const void* self);
QPaintEngine* QWebInspector_virtualbase_paintEngine(const void* self);
void QWebInspector_virtualbase_mousePressEvent(void* self, QMouseEvent* event);
void QWebInspector_virtualbase_mouseReleaseEvent(void* self, QMouseEvent* event);
void QWebInspector_virtualbase_mouseDoubleClickEvent(void* self, QMouseEvent* event);
void QWebInspector_virtualbase_mouseMoveEvent(void* self, QMouseEvent* event);
void QWebInspector_virtualbase_wheelEvent(void* self, QWheelEvent* event);
void QWebInspector_virtualbase_keyPressEvent(void* self, QKeyEvent* event);
void QWebInspector_virtualbase_keyReleaseEvent(void* self, QKeyEvent* event);
void QWebInspector_virtualbase_focusInEvent(void* self, QFocusEvent* event);
void QWebInspector_virtualbase_focusOutEvent(void* self, QFocusEvent* event);
void QWebInspector_virtualbase_enterEvent(void* self, QEvent* event);
void QWebInspector_virtualbase_leaveEvent(void* self, QEvent* event);
void QWebInspector_virtualbase_paintEvent(void* self, QPaintEvent* event);
void QWebInspector_virtualbase_moveEvent(void* self, QMoveEvent* event);
void QWebInspector_virtualbase_contextMenuEvent(void* self, QContextMenuEvent* event);
void QWebInspector_virtualbase_tabletEvent(void* self, QTabletEvent* event);
void QWebInspector_virtualbase_actionEvent(void* self, QActionEvent* event);
void QWebInspector_virtualbase_dragEnterEvent(void* self, QDragEnterEvent* event);
void QWebInspector_virtualbase_dragMoveEvent(void* self, QDragMoveEvent* event);
void QWebInspector_virtualbase_dragLeaveEvent(void* self, QDragLeaveEvent* event);
void QWebInspector_virtualbase_dropEvent(void* self, QDropEvent* event);
bool QWebInspector_virtualbase_nativeEvent(void* self, struct miqt_string eventType, void* message, long* result);
void QWebInspector_virtualbase_changeEvent(void* self, QEvent* param1);
int QWebInspector_virtualbase_metric(const void* self, int param1);
void QWebInspector_virtualbase_initPainter(const void* self, QPainter* painter);
QPaintDevice* QWebInspector_virtualbase_redirected(const void* self, QPoint* offset);
QPainter* QWebInspector_virtualbase_sharedPainter(const void* self);
void QWebInspector_virtualbase_inputMethodEvent(void* self, QInputMethodEvent* param1);
QVariant* QWebInspector_virtualbase_inputMethodQuery(const void* self, int param1);
bool QWebInspector_virtualbase_focusNextPrevChild(void* self, bool next);
bool QWebInspector_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);
void QWebInspector_virtualbase_timerEvent(void* self, QTimerEvent* event);
void QWebInspector_virtualbase_childEvent(void* self, QChildEvent* event);
void QWebInspector_virtualbase_customEvent(void* self, QEvent* event);
void QWebInspector_virtualbase_connectNotify(void* self, QMetaMethod* signal);
void QWebInspector_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
void QWebInspector_protectedbase_updateMicroFocus(bool* _dynamic_cast_ok, void* self);
void QWebInspector_protectedbase_create(bool* _dynamic_cast_ok, void* self);
void QWebInspector_protectedbase_destroy(bool* _dynamic_cast_ok, void* self);
bool QWebInspector_protectedbase_focusNextChild(bool* _dynamic_cast_ok, void* self);
bool QWebInspector_protectedbase_focusPreviousChild(bool* _dynamic_cast_ok, void* self);
QObject* QWebInspector_protectedbase_sender(bool* _dynamic_cast_ok, const void* self);
int QWebInspector_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self);
int QWebInspector_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal);
bool QWebInspector_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal);
const QMetaObject* QWebInspector_staticMetaObject();
void QWebInspector_delete(QWebInspector* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
