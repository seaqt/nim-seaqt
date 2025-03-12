#pragma once
#ifndef SEAQT_QTWIDGETS_GEN_QKEYSEQUENCEEDIT_H
#define SEAQT_QTWIDGETS_GEN_QKEYSEQUENCEEDIT_H

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
class QKeySequence;
class QKeySequenceEdit;
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
typedef struct QKeySequence QKeySequence;
typedef struct QKeySequenceEdit QKeySequenceEdit;
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
typedef struct QWheelEvent QWheelEvent;
typedef struct QWidget QWidget;
#endif

typedef struct VirtualQKeySequenceEdit VirtualQKeySequenceEdit;
typedef struct QKeySequenceEdit_VTable{
	void (*destructor)(VirtualQKeySequenceEdit* self);
	QMetaObject* (*metaObject)(const VirtualQKeySequenceEdit* self);
	void* (*metacast)(VirtualQKeySequenceEdit* self, const char* param1);
	int (*metacall)(VirtualQKeySequenceEdit* self, int param1, int param2, void** param3);
	bool (*event)(VirtualQKeySequenceEdit* self, QEvent* param1);
	void (*keyPressEvent)(VirtualQKeySequenceEdit* self, QKeyEvent* param1);
	void (*keyReleaseEvent)(VirtualQKeySequenceEdit* self, QKeyEvent* param1);
	void (*timerEvent)(VirtualQKeySequenceEdit* self, QTimerEvent* param1);
	int (*devType)(const VirtualQKeySequenceEdit* self);
	void (*setVisible)(VirtualQKeySequenceEdit* self, bool visible);
	QSize* (*sizeHint)(const VirtualQKeySequenceEdit* self);
	QSize* (*minimumSizeHint)(const VirtualQKeySequenceEdit* self);
	int (*heightForWidth)(const VirtualQKeySequenceEdit* self, int param1);
	bool (*hasHeightForWidth)(const VirtualQKeySequenceEdit* self);
	QPaintEngine* (*paintEngine)(const VirtualQKeySequenceEdit* self);
	void (*mousePressEvent)(VirtualQKeySequenceEdit* self, QMouseEvent* event);
	void (*mouseReleaseEvent)(VirtualQKeySequenceEdit* self, QMouseEvent* event);
	void (*mouseDoubleClickEvent)(VirtualQKeySequenceEdit* self, QMouseEvent* event);
	void (*mouseMoveEvent)(VirtualQKeySequenceEdit* self, QMouseEvent* event);
	void (*wheelEvent)(VirtualQKeySequenceEdit* self, QWheelEvent* event);
	void (*focusInEvent)(VirtualQKeySequenceEdit* self, QFocusEvent* event);
	void (*focusOutEvent)(VirtualQKeySequenceEdit* self, QFocusEvent* event);
	void (*enterEvent)(VirtualQKeySequenceEdit* self, QEvent* event);
	void (*leaveEvent)(VirtualQKeySequenceEdit* self, QEvent* event);
	void (*paintEvent)(VirtualQKeySequenceEdit* self, QPaintEvent* event);
	void (*moveEvent)(VirtualQKeySequenceEdit* self, QMoveEvent* event);
	void (*resizeEvent)(VirtualQKeySequenceEdit* self, QResizeEvent* event);
	void (*closeEvent)(VirtualQKeySequenceEdit* self, QCloseEvent* event);
	void (*contextMenuEvent)(VirtualQKeySequenceEdit* self, QContextMenuEvent* event);
	void (*tabletEvent)(VirtualQKeySequenceEdit* self, QTabletEvent* event);
	void (*actionEvent)(VirtualQKeySequenceEdit* self, QActionEvent* event);
	void (*dragEnterEvent)(VirtualQKeySequenceEdit* self, QDragEnterEvent* event);
	void (*dragMoveEvent)(VirtualQKeySequenceEdit* self, QDragMoveEvent* event);
	void (*dragLeaveEvent)(VirtualQKeySequenceEdit* self, QDragLeaveEvent* event);
	void (*dropEvent)(VirtualQKeySequenceEdit* self, QDropEvent* event);
	void (*showEvent)(VirtualQKeySequenceEdit* self, QShowEvent* event);
	void (*hideEvent)(VirtualQKeySequenceEdit* self, QHideEvent* event);
	bool (*nativeEvent)(VirtualQKeySequenceEdit* self, struct miqt_string eventType, void* message, long* result);
	void (*changeEvent)(VirtualQKeySequenceEdit* self, QEvent* param1);
	int (*metric)(const VirtualQKeySequenceEdit* self, int param1);
	void (*initPainter)(const VirtualQKeySequenceEdit* self, QPainter* painter);
	QPaintDevice* (*redirected)(const VirtualQKeySequenceEdit* self, QPoint* offset);
	QPainter* (*sharedPainter)(const VirtualQKeySequenceEdit* self);
	void (*inputMethodEvent)(VirtualQKeySequenceEdit* self, QInputMethodEvent* param1);
	QVariant* (*inputMethodQuery)(const VirtualQKeySequenceEdit* self, int param1);
	bool (*focusNextPrevChild)(VirtualQKeySequenceEdit* self, bool next);
	bool (*eventFilter)(VirtualQKeySequenceEdit* self, QObject* watched, QEvent* event);
	void (*childEvent)(VirtualQKeySequenceEdit* self, QChildEvent* event);
	void (*customEvent)(VirtualQKeySequenceEdit* self, QEvent* event);
	void (*connectNotify)(VirtualQKeySequenceEdit* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQKeySequenceEdit* self, QMetaMethod* signal);
}QKeySequenceEdit_VTable;

const QKeySequenceEdit_VTable* QKeySequenceEdit_vtbl(const VirtualQKeySequenceEdit* self);
void* QKeySequenceEdit_vdata(const VirtualQKeySequenceEdit* self);
void QKeySequenceEdit_setVdata(VirtualQKeySequenceEdit* self, void* vdata);

VirtualQKeySequenceEdit* QKeySequenceEdit_new(const QKeySequenceEdit_VTable* vtbl, void* vdata, QWidget* parent);
VirtualQKeySequenceEdit* QKeySequenceEdit_new2(const QKeySequenceEdit_VTable* vtbl, void* vdata);
VirtualQKeySequenceEdit* QKeySequenceEdit_new3(const QKeySequenceEdit_VTable* vtbl, void* vdata, QKeySequence* keySequence);
VirtualQKeySequenceEdit* QKeySequenceEdit_new4(const QKeySequenceEdit_VTable* vtbl, void* vdata, QKeySequence* keySequence, QWidget* parent);

void QKeySequenceEdit_virtbase(QKeySequenceEdit* src, QWidget** outptr_QWidget);
QMetaObject* QKeySequenceEdit_metaObject(const QKeySequenceEdit* self);
void* QKeySequenceEdit_metacast(QKeySequenceEdit* self, const char* param1);
int QKeySequenceEdit_metacall(QKeySequenceEdit* self, int param1, int param2, void** param3);
struct miqt_string QKeySequenceEdit_tr(const char* s);
struct miqt_string QKeySequenceEdit_trUtf8(const char* s);
QKeySequence* QKeySequenceEdit_keySequence(const QKeySequenceEdit* self);
void QKeySequenceEdit_setKeySequence(QKeySequenceEdit* self, QKeySequence* keySequence);
void QKeySequenceEdit_clear(QKeySequenceEdit* self);
void QKeySequenceEdit_editingFinished(QKeySequenceEdit* self);
void QKeySequenceEdit_connect_editingFinished(VirtualQKeySequenceEdit* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QKeySequenceEdit_keySequenceChanged(QKeySequenceEdit* self, QKeySequence* keySequence);
void QKeySequenceEdit_connect_keySequenceChanged(VirtualQKeySequenceEdit* self, intptr_t slot, void (*callback)(intptr_t, QKeySequence*), void (*release)(intptr_t));
bool QKeySequenceEdit_event(QKeySequenceEdit* self, QEvent* param1);
void QKeySequenceEdit_keyPressEvent(QKeySequenceEdit* self, QKeyEvent* param1);
void QKeySequenceEdit_keyReleaseEvent(QKeySequenceEdit* self, QKeyEvent* param1);
void QKeySequenceEdit_timerEvent(QKeySequenceEdit* self, QTimerEvent* param1);
struct miqt_string QKeySequenceEdit_tr2(const char* s, const char* c);
struct miqt_string QKeySequenceEdit_tr3(const char* s, const char* c, int n);
struct miqt_string QKeySequenceEdit_trUtf82(const char* s, const char* c);
struct miqt_string QKeySequenceEdit_trUtf83(const char* s, const char* c, int n);

QMetaObject* QKeySequenceEdit_virtualbase_metaObject(const VirtualQKeySequenceEdit* self);
void* QKeySequenceEdit_virtualbase_metacast(VirtualQKeySequenceEdit* self, const char* param1);
int QKeySequenceEdit_virtualbase_metacall(VirtualQKeySequenceEdit* self, int param1, int param2, void** param3);
bool QKeySequenceEdit_virtualbase_event(VirtualQKeySequenceEdit* self, QEvent* param1);
void QKeySequenceEdit_virtualbase_keyPressEvent(VirtualQKeySequenceEdit* self, QKeyEvent* param1);
void QKeySequenceEdit_virtualbase_keyReleaseEvent(VirtualQKeySequenceEdit* self, QKeyEvent* param1);
void QKeySequenceEdit_virtualbase_timerEvent(VirtualQKeySequenceEdit* self, QTimerEvent* param1);
int QKeySequenceEdit_virtualbase_devType(const VirtualQKeySequenceEdit* self);
void QKeySequenceEdit_virtualbase_setVisible(VirtualQKeySequenceEdit* self, bool visible);
QSize* QKeySequenceEdit_virtualbase_sizeHint(const VirtualQKeySequenceEdit* self);
QSize* QKeySequenceEdit_virtualbase_minimumSizeHint(const VirtualQKeySequenceEdit* self);
int QKeySequenceEdit_virtualbase_heightForWidth(const VirtualQKeySequenceEdit* self, int param1);
bool QKeySequenceEdit_virtualbase_hasHeightForWidth(const VirtualQKeySequenceEdit* self);
QPaintEngine* QKeySequenceEdit_virtualbase_paintEngine(const VirtualQKeySequenceEdit* self);
void QKeySequenceEdit_virtualbase_mousePressEvent(VirtualQKeySequenceEdit* self, QMouseEvent* event);
void QKeySequenceEdit_virtualbase_mouseReleaseEvent(VirtualQKeySequenceEdit* self, QMouseEvent* event);
void QKeySequenceEdit_virtualbase_mouseDoubleClickEvent(VirtualQKeySequenceEdit* self, QMouseEvent* event);
void QKeySequenceEdit_virtualbase_mouseMoveEvent(VirtualQKeySequenceEdit* self, QMouseEvent* event);
void QKeySequenceEdit_virtualbase_wheelEvent(VirtualQKeySequenceEdit* self, QWheelEvent* event);
void QKeySequenceEdit_virtualbase_focusInEvent(VirtualQKeySequenceEdit* self, QFocusEvent* event);
void QKeySequenceEdit_virtualbase_focusOutEvent(VirtualQKeySequenceEdit* self, QFocusEvent* event);
void QKeySequenceEdit_virtualbase_enterEvent(VirtualQKeySequenceEdit* self, QEvent* event);
void QKeySequenceEdit_virtualbase_leaveEvent(VirtualQKeySequenceEdit* self, QEvent* event);
void QKeySequenceEdit_virtualbase_paintEvent(VirtualQKeySequenceEdit* self, QPaintEvent* event);
void QKeySequenceEdit_virtualbase_moveEvent(VirtualQKeySequenceEdit* self, QMoveEvent* event);
void QKeySequenceEdit_virtualbase_resizeEvent(VirtualQKeySequenceEdit* self, QResizeEvent* event);
void QKeySequenceEdit_virtualbase_closeEvent(VirtualQKeySequenceEdit* self, QCloseEvent* event);
void QKeySequenceEdit_virtualbase_contextMenuEvent(VirtualQKeySequenceEdit* self, QContextMenuEvent* event);
void QKeySequenceEdit_virtualbase_tabletEvent(VirtualQKeySequenceEdit* self, QTabletEvent* event);
void QKeySequenceEdit_virtualbase_actionEvent(VirtualQKeySequenceEdit* self, QActionEvent* event);
void QKeySequenceEdit_virtualbase_dragEnterEvent(VirtualQKeySequenceEdit* self, QDragEnterEvent* event);
void QKeySequenceEdit_virtualbase_dragMoveEvent(VirtualQKeySequenceEdit* self, QDragMoveEvent* event);
void QKeySequenceEdit_virtualbase_dragLeaveEvent(VirtualQKeySequenceEdit* self, QDragLeaveEvent* event);
void QKeySequenceEdit_virtualbase_dropEvent(VirtualQKeySequenceEdit* self, QDropEvent* event);
void QKeySequenceEdit_virtualbase_showEvent(VirtualQKeySequenceEdit* self, QShowEvent* event);
void QKeySequenceEdit_virtualbase_hideEvent(VirtualQKeySequenceEdit* self, QHideEvent* event);
bool QKeySequenceEdit_virtualbase_nativeEvent(VirtualQKeySequenceEdit* self, struct miqt_string eventType, void* message, long* result);
void QKeySequenceEdit_virtualbase_changeEvent(VirtualQKeySequenceEdit* self, QEvent* param1);
int QKeySequenceEdit_virtualbase_metric(const VirtualQKeySequenceEdit* self, int param1);
void QKeySequenceEdit_virtualbase_initPainter(const VirtualQKeySequenceEdit* self, QPainter* painter);
QPaintDevice* QKeySequenceEdit_virtualbase_redirected(const VirtualQKeySequenceEdit* self, QPoint* offset);
QPainter* QKeySequenceEdit_virtualbase_sharedPainter(const VirtualQKeySequenceEdit* self);
void QKeySequenceEdit_virtualbase_inputMethodEvent(VirtualQKeySequenceEdit* self, QInputMethodEvent* param1);
QVariant* QKeySequenceEdit_virtualbase_inputMethodQuery(const VirtualQKeySequenceEdit* self, int param1);
bool QKeySequenceEdit_virtualbase_focusNextPrevChild(VirtualQKeySequenceEdit* self, bool next);
bool QKeySequenceEdit_virtualbase_eventFilter(VirtualQKeySequenceEdit* self, QObject* watched, QEvent* event);
void QKeySequenceEdit_virtualbase_childEvent(VirtualQKeySequenceEdit* self, QChildEvent* event);
void QKeySequenceEdit_virtualbase_customEvent(VirtualQKeySequenceEdit* self, QEvent* event);
void QKeySequenceEdit_virtualbase_connectNotify(VirtualQKeySequenceEdit* self, QMetaMethod* signal);
void QKeySequenceEdit_virtualbase_disconnectNotify(VirtualQKeySequenceEdit* self, QMetaMethod* signal);

void QKeySequenceEdit_protectedbase_updateMicroFocus(VirtualQKeySequenceEdit* self);
void QKeySequenceEdit_protectedbase_create(VirtualQKeySequenceEdit* self);
void QKeySequenceEdit_protectedbase_destroy(VirtualQKeySequenceEdit* self);
bool QKeySequenceEdit_protectedbase_focusNextChild(VirtualQKeySequenceEdit* self);
bool QKeySequenceEdit_protectedbase_focusPreviousChild(VirtualQKeySequenceEdit* self);
QObject* QKeySequenceEdit_protectedbase_sender(const VirtualQKeySequenceEdit* self);
int QKeySequenceEdit_protectedbase_senderSignalIndex(const VirtualQKeySequenceEdit* self);
int QKeySequenceEdit_protectedbase_receivers(const VirtualQKeySequenceEdit* self, const char* signal);
bool QKeySequenceEdit_protectedbase_isSignalConnected(const VirtualQKeySequenceEdit* self, QMetaMethod* signal);

const QMetaObject* QKeySequenceEdit_staticMetaObject();
void QKeySequenceEdit_delete(QKeySequenceEdit* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
