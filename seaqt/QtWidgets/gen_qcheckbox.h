#pragma once
#ifndef SEAQT_QTWIDGETS_GEN_QCHECKBOX_H
#define SEAQT_QTWIDGETS_GEN_QCHECKBOX_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt/libseaqt.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QAbstractButton;
class QActionEvent;
class QCheckBox;
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
class QStyleOptionButton;
class QTabletEvent;
class QTimerEvent;
class QVariant;
class QWheelEvent;
class QWidget;
#else
typedef struct QAbstractButton QAbstractButton;
typedef struct QActionEvent QActionEvent;
typedef struct QCheckBox QCheckBox;
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
typedef struct QStyleOptionButton QStyleOptionButton;
typedef struct QTabletEvent QTabletEvent;
typedef struct QTimerEvent QTimerEvent;
typedef struct QVariant QVariant;
typedef struct QWheelEvent QWheelEvent;
typedef struct QWidget QWidget;
#endif

struct QCheckBox_VTable {
	void (*destructor)(struct QCheckBox_VTable* vtbl, QCheckBox* self);
	QMetaObject* (*metaObject)(struct QCheckBox_VTable* vtbl, const QCheckBox* self);
	void* (*metacast)(struct QCheckBox_VTable* vtbl, QCheckBox* self, const char* param1);
	int (*metacall)(struct QCheckBox_VTable* vtbl, QCheckBox* self, int param1, int param2, void** param3);
	QSize* (*sizeHint)(struct QCheckBox_VTable* vtbl, const QCheckBox* self);
	QSize* (*minimumSizeHint)(struct QCheckBox_VTable* vtbl, const QCheckBox* self);
	bool (*event)(struct QCheckBox_VTable* vtbl, QCheckBox* self, QEvent* e);
	bool (*hitButton)(struct QCheckBox_VTable* vtbl, const QCheckBox* self, QPoint* pos);
	void (*checkStateSet)(struct QCheckBox_VTable* vtbl, QCheckBox* self);
	void (*nextCheckState)(struct QCheckBox_VTable* vtbl, QCheckBox* self);
	void (*paintEvent)(struct QCheckBox_VTable* vtbl, QCheckBox* self, QPaintEvent* param1);
	void (*mouseMoveEvent)(struct QCheckBox_VTable* vtbl, QCheckBox* self, QMouseEvent* param1);
	void (*keyPressEvent)(struct QCheckBox_VTable* vtbl, QCheckBox* self, QKeyEvent* e);
	void (*keyReleaseEvent)(struct QCheckBox_VTable* vtbl, QCheckBox* self, QKeyEvent* e);
	void (*mousePressEvent)(struct QCheckBox_VTable* vtbl, QCheckBox* self, QMouseEvent* e);
	void (*mouseReleaseEvent)(struct QCheckBox_VTable* vtbl, QCheckBox* self, QMouseEvent* e);
	void (*focusInEvent)(struct QCheckBox_VTable* vtbl, QCheckBox* self, QFocusEvent* e);
	void (*focusOutEvent)(struct QCheckBox_VTable* vtbl, QCheckBox* self, QFocusEvent* e);
	void (*changeEvent)(struct QCheckBox_VTable* vtbl, QCheckBox* self, QEvent* e);
	void (*timerEvent)(struct QCheckBox_VTable* vtbl, QCheckBox* self, QTimerEvent* e);
	int (*devType)(struct QCheckBox_VTable* vtbl, const QCheckBox* self);
	void (*setVisible)(struct QCheckBox_VTable* vtbl, QCheckBox* self, bool visible);
	int (*heightForWidth)(struct QCheckBox_VTable* vtbl, const QCheckBox* self, int param1);
	bool (*hasHeightForWidth)(struct QCheckBox_VTable* vtbl, const QCheckBox* self);
	QPaintEngine* (*paintEngine)(struct QCheckBox_VTable* vtbl, const QCheckBox* self);
	void (*mouseDoubleClickEvent)(struct QCheckBox_VTable* vtbl, QCheckBox* self, QMouseEvent* event);
	void (*wheelEvent)(struct QCheckBox_VTable* vtbl, QCheckBox* self, QWheelEvent* event);
	void (*enterEvent)(struct QCheckBox_VTable* vtbl, QCheckBox* self, QEvent* event);
	void (*leaveEvent)(struct QCheckBox_VTable* vtbl, QCheckBox* self, QEvent* event);
	void (*moveEvent)(struct QCheckBox_VTable* vtbl, QCheckBox* self, QMoveEvent* event);
	void (*resizeEvent)(struct QCheckBox_VTable* vtbl, QCheckBox* self, QResizeEvent* event);
	void (*closeEvent)(struct QCheckBox_VTable* vtbl, QCheckBox* self, QCloseEvent* event);
	void (*contextMenuEvent)(struct QCheckBox_VTable* vtbl, QCheckBox* self, QContextMenuEvent* event);
	void (*tabletEvent)(struct QCheckBox_VTable* vtbl, QCheckBox* self, QTabletEvent* event);
	void (*actionEvent)(struct QCheckBox_VTable* vtbl, QCheckBox* self, QActionEvent* event);
	void (*dragEnterEvent)(struct QCheckBox_VTable* vtbl, QCheckBox* self, QDragEnterEvent* event);
	void (*dragMoveEvent)(struct QCheckBox_VTable* vtbl, QCheckBox* self, QDragMoveEvent* event);
	void (*dragLeaveEvent)(struct QCheckBox_VTable* vtbl, QCheckBox* self, QDragLeaveEvent* event);
	void (*dropEvent)(struct QCheckBox_VTable* vtbl, QCheckBox* self, QDropEvent* event);
	void (*showEvent)(struct QCheckBox_VTable* vtbl, QCheckBox* self, QShowEvent* event);
	void (*hideEvent)(struct QCheckBox_VTable* vtbl, QCheckBox* self, QHideEvent* event);
	bool (*nativeEvent)(struct QCheckBox_VTable* vtbl, QCheckBox* self, struct miqt_string eventType, void* message, long* result);
	int (*metric)(struct QCheckBox_VTable* vtbl, const QCheckBox* self, int param1);
	void (*initPainter)(struct QCheckBox_VTable* vtbl, const QCheckBox* self, QPainter* painter);
	QPaintDevice* (*redirected)(struct QCheckBox_VTable* vtbl, const QCheckBox* self, QPoint* offset);
	QPainter* (*sharedPainter)(struct QCheckBox_VTable* vtbl, const QCheckBox* self);
	void (*inputMethodEvent)(struct QCheckBox_VTable* vtbl, QCheckBox* self, QInputMethodEvent* param1);
	QVariant* (*inputMethodQuery)(struct QCheckBox_VTable* vtbl, const QCheckBox* self, int param1);
	bool (*focusNextPrevChild)(struct QCheckBox_VTable* vtbl, QCheckBox* self, bool next);
	bool (*eventFilter)(struct QCheckBox_VTable* vtbl, QCheckBox* self, QObject* watched, QEvent* event);
	void (*childEvent)(struct QCheckBox_VTable* vtbl, QCheckBox* self, QChildEvent* event);
	void (*customEvent)(struct QCheckBox_VTable* vtbl, QCheckBox* self, QEvent* event);
	void (*connectNotify)(struct QCheckBox_VTable* vtbl, QCheckBox* self, QMetaMethod* signal);
	void (*disconnectNotify)(struct QCheckBox_VTable* vtbl, QCheckBox* self, QMetaMethod* signal);
};
QCheckBox* QCheckBox_new(struct QCheckBox_VTable* vtbl, QWidget* parent);
QCheckBox* QCheckBox_new2(struct QCheckBox_VTable* vtbl);
QCheckBox* QCheckBox_new3(struct QCheckBox_VTable* vtbl, struct miqt_string text);
QCheckBox* QCheckBox_new4(struct QCheckBox_VTable* vtbl, struct miqt_string text, QWidget* parent);
void QCheckBox_virtbase(QCheckBox* src, QAbstractButton** outptr_QAbstractButton);
QMetaObject* QCheckBox_metaObject(const QCheckBox* self);
void* QCheckBox_metacast(QCheckBox* self, const char* param1);
int QCheckBox_metacall(QCheckBox* self, int param1, int param2, void** param3);
struct miqt_string QCheckBox_tr(const char* s);
struct miqt_string QCheckBox_trUtf8(const char* s);
QSize* QCheckBox_sizeHint(const QCheckBox* self);
QSize* QCheckBox_minimumSizeHint(const QCheckBox* self);
void QCheckBox_setTristate(QCheckBox* self);
bool QCheckBox_isTristate(const QCheckBox* self);
int QCheckBox_checkState(const QCheckBox* self);
void QCheckBox_setCheckState(QCheckBox* self, int state);
void QCheckBox_stateChanged(QCheckBox* self, int param1);
void QCheckBox_connect_stateChanged(QCheckBox* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t));
bool QCheckBox_event(QCheckBox* self, QEvent* e);
bool QCheckBox_hitButton(const QCheckBox* self, QPoint* pos);
void QCheckBox_checkStateSet(QCheckBox* self);
void QCheckBox_nextCheckState(QCheckBox* self);
void QCheckBox_paintEvent(QCheckBox* self, QPaintEvent* param1);
void QCheckBox_mouseMoveEvent(QCheckBox* self, QMouseEvent* param1);
struct miqt_string QCheckBox_tr2(const char* s, const char* c);
struct miqt_string QCheckBox_tr3(const char* s, const char* c, int n);
struct miqt_string QCheckBox_trUtf82(const char* s, const char* c);
struct miqt_string QCheckBox_trUtf83(const char* s, const char* c, int n);
void QCheckBox_setTristate1(QCheckBox* self, bool y);
QMetaObject* QCheckBox_virtualbase_metaObject(const void* self);
void* QCheckBox_virtualbase_metacast(void* self, const char* param1);
int QCheckBox_virtualbase_metacall(void* self, int param1, int param2, void** param3);
QSize* QCheckBox_virtualbase_sizeHint(const void* self);
QSize* QCheckBox_virtualbase_minimumSizeHint(const void* self);
bool QCheckBox_virtualbase_event(void* self, QEvent* e);
bool QCheckBox_virtualbase_hitButton(const void* self, QPoint* pos);
void QCheckBox_virtualbase_checkStateSet(void* self);
void QCheckBox_virtualbase_nextCheckState(void* self);
void QCheckBox_virtualbase_paintEvent(void* self, QPaintEvent* param1);
void QCheckBox_virtualbase_mouseMoveEvent(void* self, QMouseEvent* param1);
void QCheckBox_virtualbase_keyPressEvent(void* self, QKeyEvent* e);
void QCheckBox_virtualbase_keyReleaseEvent(void* self, QKeyEvent* e);
void QCheckBox_virtualbase_mousePressEvent(void* self, QMouseEvent* e);
void QCheckBox_virtualbase_mouseReleaseEvent(void* self, QMouseEvent* e);
void QCheckBox_virtualbase_focusInEvent(void* self, QFocusEvent* e);
void QCheckBox_virtualbase_focusOutEvent(void* self, QFocusEvent* e);
void QCheckBox_virtualbase_changeEvent(void* self, QEvent* e);
void QCheckBox_virtualbase_timerEvent(void* self, QTimerEvent* e);
int QCheckBox_virtualbase_devType(const void* self);
void QCheckBox_virtualbase_setVisible(void* self, bool visible);
int QCheckBox_virtualbase_heightForWidth(const void* self, int param1);
bool QCheckBox_virtualbase_hasHeightForWidth(const void* self);
QPaintEngine* QCheckBox_virtualbase_paintEngine(const void* self);
void QCheckBox_virtualbase_mouseDoubleClickEvent(void* self, QMouseEvent* event);
void QCheckBox_virtualbase_wheelEvent(void* self, QWheelEvent* event);
void QCheckBox_virtualbase_enterEvent(void* self, QEvent* event);
void QCheckBox_virtualbase_leaveEvent(void* self, QEvent* event);
void QCheckBox_virtualbase_moveEvent(void* self, QMoveEvent* event);
void QCheckBox_virtualbase_resizeEvent(void* self, QResizeEvent* event);
void QCheckBox_virtualbase_closeEvent(void* self, QCloseEvent* event);
void QCheckBox_virtualbase_contextMenuEvent(void* self, QContextMenuEvent* event);
void QCheckBox_virtualbase_tabletEvent(void* self, QTabletEvent* event);
void QCheckBox_virtualbase_actionEvent(void* self, QActionEvent* event);
void QCheckBox_virtualbase_dragEnterEvent(void* self, QDragEnterEvent* event);
void QCheckBox_virtualbase_dragMoveEvent(void* self, QDragMoveEvent* event);
void QCheckBox_virtualbase_dragLeaveEvent(void* self, QDragLeaveEvent* event);
void QCheckBox_virtualbase_dropEvent(void* self, QDropEvent* event);
void QCheckBox_virtualbase_showEvent(void* self, QShowEvent* event);
void QCheckBox_virtualbase_hideEvent(void* self, QHideEvent* event);
bool QCheckBox_virtualbase_nativeEvent(void* self, struct miqt_string eventType, void* message, long* result);
int QCheckBox_virtualbase_metric(const void* self, int param1);
void QCheckBox_virtualbase_initPainter(const void* self, QPainter* painter);
QPaintDevice* QCheckBox_virtualbase_redirected(const void* self, QPoint* offset);
QPainter* QCheckBox_virtualbase_sharedPainter(const void* self);
void QCheckBox_virtualbase_inputMethodEvent(void* self, QInputMethodEvent* param1);
QVariant* QCheckBox_virtualbase_inputMethodQuery(const void* self, int param1);
bool QCheckBox_virtualbase_focusNextPrevChild(void* self, bool next);
bool QCheckBox_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);
void QCheckBox_virtualbase_childEvent(void* self, QChildEvent* event);
void QCheckBox_virtualbase_customEvent(void* self, QEvent* event);
void QCheckBox_virtualbase_connectNotify(void* self, QMetaMethod* signal);
void QCheckBox_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
void QCheckBox_protectedbase_initStyleOption(const void* self, QStyleOptionButton* option);
void QCheckBox_protectedbase_updateMicroFocus(void* self);
void QCheckBox_protectedbase_create(void* self);
void QCheckBox_protectedbase_destroy(void* self);
bool QCheckBox_protectedbase_focusNextChild(void* self);
bool QCheckBox_protectedbase_focusPreviousChild(void* self);
QObject* QCheckBox_protectedbase_sender(const void* self);
int QCheckBox_protectedbase_senderSignalIndex(const void* self);
int QCheckBox_protectedbase_receivers(const void* self, const char* signal);
bool QCheckBox_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal);
const QMetaObject* QCheckBox_staticMetaObject();
void QCheckBox_delete(QCheckBox* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
