#pragma once
#ifndef SEAQT_QTWIDGETS_GEN_QRUBBERBAND_H
#define SEAQT_QTWIDGETS_GEN_QRUBBERBAND_H

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
class QRect;
class QResizeEvent;
class QRubberBand;
class QShowEvent;
class QSize;
class QStyleOptionRubberBand;
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
typedef struct QRect QRect;
typedef struct QResizeEvent QResizeEvent;
typedef struct QRubberBand QRubberBand;
typedef struct QShowEvent QShowEvent;
typedef struct QSize QSize;
typedef struct QStyleOptionRubberBand QStyleOptionRubberBand;
typedef struct QTabletEvent QTabletEvent;
typedef struct QTimerEvent QTimerEvent;
typedef struct QVariant QVariant;
typedef struct QWheelEvent QWheelEvent;
typedef struct QWidget QWidget;
#endif

struct QRubberBand_VTable {
	void (*destructor)(struct QRubberBand_VTable* vtbl, QRubberBand* self);
	QMetaObject* (*metaObject)(struct QRubberBand_VTable* vtbl, const QRubberBand* self);
	void* (*metacast)(struct QRubberBand_VTable* vtbl, QRubberBand* self, const char* param1);
	int (*metacall)(struct QRubberBand_VTable* vtbl, QRubberBand* self, int param1, int param2, void** param3);
	bool (*event)(struct QRubberBand_VTable* vtbl, QRubberBand* self, QEvent* e);
	void (*paintEvent)(struct QRubberBand_VTable* vtbl, QRubberBand* self, QPaintEvent* param1);
	void (*changeEvent)(struct QRubberBand_VTable* vtbl, QRubberBand* self, QEvent* param1);
	void (*showEvent)(struct QRubberBand_VTable* vtbl, QRubberBand* self, QShowEvent* param1);
	void (*resizeEvent)(struct QRubberBand_VTable* vtbl, QRubberBand* self, QResizeEvent* param1);
	void (*moveEvent)(struct QRubberBand_VTable* vtbl, QRubberBand* self, QMoveEvent* param1);
	void (*initStyleOption)(struct QRubberBand_VTable* vtbl, const QRubberBand* self, QStyleOptionRubberBand* option);
	int (*devType)(struct QRubberBand_VTable* vtbl, const QRubberBand* self);
	void (*setVisible)(struct QRubberBand_VTable* vtbl, QRubberBand* self, bool visible);
	QSize* (*sizeHint)(struct QRubberBand_VTable* vtbl, const QRubberBand* self);
	QSize* (*minimumSizeHint)(struct QRubberBand_VTable* vtbl, const QRubberBand* self);
	int (*heightForWidth)(struct QRubberBand_VTable* vtbl, const QRubberBand* self, int param1);
	bool (*hasHeightForWidth)(struct QRubberBand_VTable* vtbl, const QRubberBand* self);
	QPaintEngine* (*paintEngine)(struct QRubberBand_VTable* vtbl, const QRubberBand* self);
	void (*mousePressEvent)(struct QRubberBand_VTable* vtbl, QRubberBand* self, QMouseEvent* event);
	void (*mouseReleaseEvent)(struct QRubberBand_VTable* vtbl, QRubberBand* self, QMouseEvent* event);
	void (*mouseDoubleClickEvent)(struct QRubberBand_VTable* vtbl, QRubberBand* self, QMouseEvent* event);
	void (*mouseMoveEvent)(struct QRubberBand_VTable* vtbl, QRubberBand* self, QMouseEvent* event);
	void (*wheelEvent)(struct QRubberBand_VTable* vtbl, QRubberBand* self, QWheelEvent* event);
	void (*keyPressEvent)(struct QRubberBand_VTable* vtbl, QRubberBand* self, QKeyEvent* event);
	void (*keyReleaseEvent)(struct QRubberBand_VTable* vtbl, QRubberBand* self, QKeyEvent* event);
	void (*focusInEvent)(struct QRubberBand_VTable* vtbl, QRubberBand* self, QFocusEvent* event);
	void (*focusOutEvent)(struct QRubberBand_VTable* vtbl, QRubberBand* self, QFocusEvent* event);
	void (*enterEvent)(struct QRubberBand_VTable* vtbl, QRubberBand* self, QEnterEvent* event);
	void (*leaveEvent)(struct QRubberBand_VTable* vtbl, QRubberBand* self, QEvent* event);
	void (*closeEvent)(struct QRubberBand_VTable* vtbl, QRubberBand* self, QCloseEvent* event);
	void (*contextMenuEvent)(struct QRubberBand_VTable* vtbl, QRubberBand* self, QContextMenuEvent* event);
	void (*tabletEvent)(struct QRubberBand_VTable* vtbl, QRubberBand* self, QTabletEvent* event);
	void (*actionEvent)(struct QRubberBand_VTable* vtbl, QRubberBand* self, QActionEvent* event);
	void (*dragEnterEvent)(struct QRubberBand_VTable* vtbl, QRubberBand* self, QDragEnterEvent* event);
	void (*dragMoveEvent)(struct QRubberBand_VTable* vtbl, QRubberBand* self, QDragMoveEvent* event);
	void (*dragLeaveEvent)(struct QRubberBand_VTable* vtbl, QRubberBand* self, QDragLeaveEvent* event);
	void (*dropEvent)(struct QRubberBand_VTable* vtbl, QRubberBand* self, QDropEvent* event);
	void (*hideEvent)(struct QRubberBand_VTable* vtbl, QRubberBand* self, QHideEvent* event);
	bool (*nativeEvent)(struct QRubberBand_VTable* vtbl, QRubberBand* self, struct miqt_string eventType, void* message, intptr_t* result);
	int (*metric)(struct QRubberBand_VTable* vtbl, const QRubberBand* self, int param1);
	void (*initPainter)(struct QRubberBand_VTable* vtbl, const QRubberBand* self, QPainter* painter);
	QPaintDevice* (*redirected)(struct QRubberBand_VTable* vtbl, const QRubberBand* self, QPoint* offset);
	QPainter* (*sharedPainter)(struct QRubberBand_VTable* vtbl, const QRubberBand* self);
	void (*inputMethodEvent)(struct QRubberBand_VTable* vtbl, QRubberBand* self, QInputMethodEvent* param1);
	QVariant* (*inputMethodQuery)(struct QRubberBand_VTable* vtbl, const QRubberBand* self, int param1);
	bool (*focusNextPrevChild)(struct QRubberBand_VTable* vtbl, QRubberBand* self, bool next);
	bool (*eventFilter)(struct QRubberBand_VTable* vtbl, QRubberBand* self, QObject* watched, QEvent* event);
	void (*timerEvent)(struct QRubberBand_VTable* vtbl, QRubberBand* self, QTimerEvent* event);
	void (*childEvent)(struct QRubberBand_VTable* vtbl, QRubberBand* self, QChildEvent* event);
	void (*customEvent)(struct QRubberBand_VTable* vtbl, QRubberBand* self, QEvent* event);
	void (*connectNotify)(struct QRubberBand_VTable* vtbl, QRubberBand* self, QMetaMethod* signal);
	void (*disconnectNotify)(struct QRubberBand_VTable* vtbl, QRubberBand* self, QMetaMethod* signal);
};
QRubberBand* QRubberBand_new(struct QRubberBand_VTable* vtbl, int param1);
QRubberBand* QRubberBand_new2(struct QRubberBand_VTable* vtbl, int param1, QWidget* param2);
void QRubberBand_virtbase(QRubberBand* src, QWidget** outptr_QWidget);
QMetaObject* QRubberBand_metaObject(const QRubberBand* self);
void* QRubberBand_metacast(QRubberBand* self, const char* param1);
int QRubberBand_metacall(QRubberBand* self, int param1, int param2, void** param3);
struct miqt_string QRubberBand_tr(const char* s);
int QRubberBand_shape(const QRubberBand* self);
void QRubberBand_setGeometry(QRubberBand* self, QRect* r);
void QRubberBand_setGeometry2(QRubberBand* self, int x, int y, int w, int h);
void QRubberBand_move(QRubberBand* self, int x, int y);
void QRubberBand_moveWithQPoint(QRubberBand* self, QPoint* p);
void QRubberBand_resize(QRubberBand* self, int w, int h);
void QRubberBand_resizeWithQSize(QRubberBand* self, QSize* s);
bool QRubberBand_event(QRubberBand* self, QEvent* e);
void QRubberBand_paintEvent(QRubberBand* self, QPaintEvent* param1);
void QRubberBand_changeEvent(QRubberBand* self, QEvent* param1);
void QRubberBand_showEvent(QRubberBand* self, QShowEvent* param1);
void QRubberBand_resizeEvent(QRubberBand* self, QResizeEvent* param1);
void QRubberBand_moveEvent(QRubberBand* self, QMoveEvent* param1);
void QRubberBand_initStyleOption(const QRubberBand* self, QStyleOptionRubberBand* option);
struct miqt_string QRubberBand_tr2(const char* s, const char* c);
struct miqt_string QRubberBand_tr3(const char* s, const char* c, int n);
QMetaObject* QRubberBand_virtualbase_metaObject(const void* self);
void* QRubberBand_virtualbase_metacast(void* self, const char* param1);
int QRubberBand_virtualbase_metacall(void* self, int param1, int param2, void** param3);
bool QRubberBand_virtualbase_event(void* self, QEvent* e);
void QRubberBand_virtualbase_paintEvent(void* self, QPaintEvent* param1);
void QRubberBand_virtualbase_changeEvent(void* self, QEvent* param1);
void QRubberBand_virtualbase_showEvent(void* self, QShowEvent* param1);
void QRubberBand_virtualbase_resizeEvent(void* self, QResizeEvent* param1);
void QRubberBand_virtualbase_moveEvent(void* self, QMoveEvent* param1);
void QRubberBand_virtualbase_initStyleOption(const void* self, QStyleOptionRubberBand* option);
int QRubberBand_virtualbase_devType(const void* self);
void QRubberBand_virtualbase_setVisible(void* self, bool visible);
QSize* QRubberBand_virtualbase_sizeHint(const void* self);
QSize* QRubberBand_virtualbase_minimumSizeHint(const void* self);
int QRubberBand_virtualbase_heightForWidth(const void* self, int param1);
bool QRubberBand_virtualbase_hasHeightForWidth(const void* self);
QPaintEngine* QRubberBand_virtualbase_paintEngine(const void* self);
void QRubberBand_virtualbase_mousePressEvent(void* self, QMouseEvent* event);
void QRubberBand_virtualbase_mouseReleaseEvent(void* self, QMouseEvent* event);
void QRubberBand_virtualbase_mouseDoubleClickEvent(void* self, QMouseEvent* event);
void QRubberBand_virtualbase_mouseMoveEvent(void* self, QMouseEvent* event);
void QRubberBand_virtualbase_wheelEvent(void* self, QWheelEvent* event);
void QRubberBand_virtualbase_keyPressEvent(void* self, QKeyEvent* event);
void QRubberBand_virtualbase_keyReleaseEvent(void* self, QKeyEvent* event);
void QRubberBand_virtualbase_focusInEvent(void* self, QFocusEvent* event);
void QRubberBand_virtualbase_focusOutEvent(void* self, QFocusEvent* event);
void QRubberBand_virtualbase_enterEvent(void* self, QEnterEvent* event);
void QRubberBand_virtualbase_leaveEvent(void* self, QEvent* event);
void QRubberBand_virtualbase_closeEvent(void* self, QCloseEvent* event);
void QRubberBand_virtualbase_contextMenuEvent(void* self, QContextMenuEvent* event);
void QRubberBand_virtualbase_tabletEvent(void* self, QTabletEvent* event);
void QRubberBand_virtualbase_actionEvent(void* self, QActionEvent* event);
void QRubberBand_virtualbase_dragEnterEvent(void* self, QDragEnterEvent* event);
void QRubberBand_virtualbase_dragMoveEvent(void* self, QDragMoveEvent* event);
void QRubberBand_virtualbase_dragLeaveEvent(void* self, QDragLeaveEvent* event);
void QRubberBand_virtualbase_dropEvent(void* self, QDropEvent* event);
void QRubberBand_virtualbase_hideEvent(void* self, QHideEvent* event);
bool QRubberBand_virtualbase_nativeEvent(void* self, struct miqt_string eventType, void* message, intptr_t* result);
int QRubberBand_virtualbase_metric(const void* self, int param1);
void QRubberBand_virtualbase_initPainter(const void* self, QPainter* painter);
QPaintDevice* QRubberBand_virtualbase_redirected(const void* self, QPoint* offset);
QPainter* QRubberBand_virtualbase_sharedPainter(const void* self);
void QRubberBand_virtualbase_inputMethodEvent(void* self, QInputMethodEvent* param1);
QVariant* QRubberBand_virtualbase_inputMethodQuery(const void* self, int param1);
bool QRubberBand_virtualbase_focusNextPrevChild(void* self, bool next);
bool QRubberBand_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);
void QRubberBand_virtualbase_timerEvent(void* self, QTimerEvent* event);
void QRubberBand_virtualbase_childEvent(void* self, QChildEvent* event);
void QRubberBand_virtualbase_customEvent(void* self, QEvent* event);
void QRubberBand_virtualbase_connectNotify(void* self, QMetaMethod* signal);
void QRubberBand_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
void QRubberBand_protectedbase_updateMicroFocus(void* self);
void QRubberBand_protectedbase_create(void* self);
void QRubberBand_protectedbase_destroy(void* self);
bool QRubberBand_protectedbase_focusNextChild(void* self);
bool QRubberBand_protectedbase_focusPreviousChild(void* self);
QObject* QRubberBand_protectedbase_sender(const void* self);
int QRubberBand_protectedbase_senderSignalIndex(const void* self);
int QRubberBand_protectedbase_receivers(const void* self, const char* signal);
bool QRubberBand_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal);
const QMetaObject* QRubberBand_staticMetaObject();
void QRubberBand_delete(QRubberBand* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
