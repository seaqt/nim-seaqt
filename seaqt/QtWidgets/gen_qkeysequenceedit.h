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

struct QKeySequenceEdit_VTable {
	void (*destructor)(struct QKeySequenceEdit_VTable* vtbl, QKeySequenceEdit* self);
	QMetaObject* (*metaObject)(struct QKeySequenceEdit_VTable* vtbl, const QKeySequenceEdit* self);
	void* (*metacast)(struct QKeySequenceEdit_VTable* vtbl, QKeySequenceEdit* self, const char* param1);
	int (*metacall)(struct QKeySequenceEdit_VTable* vtbl, QKeySequenceEdit* self, int param1, int param2, void** param3);
	bool (*event)(struct QKeySequenceEdit_VTable* vtbl, QKeySequenceEdit* self, QEvent* param1);
	void (*keyPressEvent)(struct QKeySequenceEdit_VTable* vtbl, QKeySequenceEdit* self, QKeyEvent* param1);
	void (*keyReleaseEvent)(struct QKeySequenceEdit_VTable* vtbl, QKeySequenceEdit* self, QKeyEvent* param1);
	void (*timerEvent)(struct QKeySequenceEdit_VTable* vtbl, QKeySequenceEdit* self, QTimerEvent* param1);
	int (*devType)(struct QKeySequenceEdit_VTable* vtbl, const QKeySequenceEdit* self);
	void (*setVisible)(struct QKeySequenceEdit_VTable* vtbl, QKeySequenceEdit* self, bool visible);
	QSize* (*sizeHint)(struct QKeySequenceEdit_VTable* vtbl, const QKeySequenceEdit* self);
	QSize* (*minimumSizeHint)(struct QKeySequenceEdit_VTable* vtbl, const QKeySequenceEdit* self);
	int (*heightForWidth)(struct QKeySequenceEdit_VTable* vtbl, const QKeySequenceEdit* self, int param1);
	bool (*hasHeightForWidth)(struct QKeySequenceEdit_VTable* vtbl, const QKeySequenceEdit* self);
	QPaintEngine* (*paintEngine)(struct QKeySequenceEdit_VTable* vtbl, const QKeySequenceEdit* self);
	void (*mousePressEvent)(struct QKeySequenceEdit_VTable* vtbl, QKeySequenceEdit* self, QMouseEvent* event);
	void (*mouseReleaseEvent)(struct QKeySequenceEdit_VTable* vtbl, QKeySequenceEdit* self, QMouseEvent* event);
	void (*mouseDoubleClickEvent)(struct QKeySequenceEdit_VTable* vtbl, QKeySequenceEdit* self, QMouseEvent* event);
	void (*mouseMoveEvent)(struct QKeySequenceEdit_VTable* vtbl, QKeySequenceEdit* self, QMouseEvent* event);
	void (*wheelEvent)(struct QKeySequenceEdit_VTable* vtbl, QKeySequenceEdit* self, QWheelEvent* event);
	void (*focusInEvent)(struct QKeySequenceEdit_VTable* vtbl, QKeySequenceEdit* self, QFocusEvent* event);
	void (*focusOutEvent)(struct QKeySequenceEdit_VTable* vtbl, QKeySequenceEdit* self, QFocusEvent* event);
	void (*enterEvent)(struct QKeySequenceEdit_VTable* vtbl, QKeySequenceEdit* self, QEvent* event);
	void (*leaveEvent)(struct QKeySequenceEdit_VTable* vtbl, QKeySequenceEdit* self, QEvent* event);
	void (*paintEvent)(struct QKeySequenceEdit_VTable* vtbl, QKeySequenceEdit* self, QPaintEvent* event);
	void (*moveEvent)(struct QKeySequenceEdit_VTable* vtbl, QKeySequenceEdit* self, QMoveEvent* event);
	void (*resizeEvent)(struct QKeySequenceEdit_VTable* vtbl, QKeySequenceEdit* self, QResizeEvent* event);
	void (*closeEvent)(struct QKeySequenceEdit_VTable* vtbl, QKeySequenceEdit* self, QCloseEvent* event);
	void (*contextMenuEvent)(struct QKeySequenceEdit_VTable* vtbl, QKeySequenceEdit* self, QContextMenuEvent* event);
	void (*tabletEvent)(struct QKeySequenceEdit_VTable* vtbl, QKeySequenceEdit* self, QTabletEvent* event);
	void (*actionEvent)(struct QKeySequenceEdit_VTable* vtbl, QKeySequenceEdit* self, QActionEvent* event);
	void (*dragEnterEvent)(struct QKeySequenceEdit_VTable* vtbl, QKeySequenceEdit* self, QDragEnterEvent* event);
	void (*dragMoveEvent)(struct QKeySequenceEdit_VTable* vtbl, QKeySequenceEdit* self, QDragMoveEvent* event);
	void (*dragLeaveEvent)(struct QKeySequenceEdit_VTable* vtbl, QKeySequenceEdit* self, QDragLeaveEvent* event);
	void (*dropEvent)(struct QKeySequenceEdit_VTable* vtbl, QKeySequenceEdit* self, QDropEvent* event);
	void (*showEvent)(struct QKeySequenceEdit_VTable* vtbl, QKeySequenceEdit* self, QShowEvent* event);
	void (*hideEvent)(struct QKeySequenceEdit_VTable* vtbl, QKeySequenceEdit* self, QHideEvent* event);
	bool (*nativeEvent)(struct QKeySequenceEdit_VTable* vtbl, QKeySequenceEdit* self, struct miqt_string eventType, void* message, long* result);
	void (*changeEvent)(struct QKeySequenceEdit_VTable* vtbl, QKeySequenceEdit* self, QEvent* param1);
	int (*metric)(struct QKeySequenceEdit_VTable* vtbl, const QKeySequenceEdit* self, int param1);
	void (*initPainter)(struct QKeySequenceEdit_VTable* vtbl, const QKeySequenceEdit* self, QPainter* painter);
	QPaintDevice* (*redirected)(struct QKeySequenceEdit_VTable* vtbl, const QKeySequenceEdit* self, QPoint* offset);
	QPainter* (*sharedPainter)(struct QKeySequenceEdit_VTable* vtbl, const QKeySequenceEdit* self);
	void (*inputMethodEvent)(struct QKeySequenceEdit_VTable* vtbl, QKeySequenceEdit* self, QInputMethodEvent* param1);
	QVariant* (*inputMethodQuery)(struct QKeySequenceEdit_VTable* vtbl, const QKeySequenceEdit* self, int param1);
	bool (*focusNextPrevChild)(struct QKeySequenceEdit_VTable* vtbl, QKeySequenceEdit* self, bool next);
	bool (*eventFilter)(struct QKeySequenceEdit_VTable* vtbl, QKeySequenceEdit* self, QObject* watched, QEvent* event);
	void (*childEvent)(struct QKeySequenceEdit_VTable* vtbl, QKeySequenceEdit* self, QChildEvent* event);
	void (*customEvent)(struct QKeySequenceEdit_VTable* vtbl, QKeySequenceEdit* self, QEvent* event);
	void (*connectNotify)(struct QKeySequenceEdit_VTable* vtbl, QKeySequenceEdit* self, QMetaMethod* signal);
	void (*disconnectNotify)(struct QKeySequenceEdit_VTable* vtbl, QKeySequenceEdit* self, QMetaMethod* signal);
};
QKeySequenceEdit* QKeySequenceEdit_new(struct QKeySequenceEdit_VTable* vtbl, QWidget* parent);
QKeySequenceEdit* QKeySequenceEdit_new2(struct QKeySequenceEdit_VTable* vtbl);
QKeySequenceEdit* QKeySequenceEdit_new3(struct QKeySequenceEdit_VTable* vtbl, QKeySequence* keySequence);
QKeySequenceEdit* QKeySequenceEdit_new4(struct QKeySequenceEdit_VTable* vtbl, QKeySequence* keySequence, QWidget* parent);
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
void QKeySequenceEdit_connect_editingFinished(QKeySequenceEdit* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QKeySequenceEdit_keySequenceChanged(QKeySequenceEdit* self, QKeySequence* keySequence);
void QKeySequenceEdit_connect_keySequenceChanged(QKeySequenceEdit* self, intptr_t slot, void (*callback)(intptr_t, QKeySequence*), void (*release)(intptr_t));
bool QKeySequenceEdit_event(QKeySequenceEdit* self, QEvent* param1);
void QKeySequenceEdit_keyPressEvent(QKeySequenceEdit* self, QKeyEvent* param1);
void QKeySequenceEdit_keyReleaseEvent(QKeySequenceEdit* self, QKeyEvent* param1);
void QKeySequenceEdit_timerEvent(QKeySequenceEdit* self, QTimerEvent* param1);
struct miqt_string QKeySequenceEdit_tr2(const char* s, const char* c);
struct miqt_string QKeySequenceEdit_tr3(const char* s, const char* c, int n);
struct miqt_string QKeySequenceEdit_trUtf82(const char* s, const char* c);
struct miqt_string QKeySequenceEdit_trUtf83(const char* s, const char* c, int n);
QMetaObject* QKeySequenceEdit_virtualbase_metaObject(const void* self);
void* QKeySequenceEdit_virtualbase_metacast(void* self, const char* param1);
int QKeySequenceEdit_virtualbase_metacall(void* self, int param1, int param2, void** param3);
bool QKeySequenceEdit_virtualbase_event(void* self, QEvent* param1);
void QKeySequenceEdit_virtualbase_keyPressEvent(void* self, QKeyEvent* param1);
void QKeySequenceEdit_virtualbase_keyReleaseEvent(void* self, QKeyEvent* param1);
void QKeySequenceEdit_virtualbase_timerEvent(void* self, QTimerEvent* param1);
int QKeySequenceEdit_virtualbase_devType(const void* self);
void QKeySequenceEdit_virtualbase_setVisible(void* self, bool visible);
QSize* QKeySequenceEdit_virtualbase_sizeHint(const void* self);
QSize* QKeySequenceEdit_virtualbase_minimumSizeHint(const void* self);
int QKeySequenceEdit_virtualbase_heightForWidth(const void* self, int param1);
bool QKeySequenceEdit_virtualbase_hasHeightForWidth(const void* self);
QPaintEngine* QKeySequenceEdit_virtualbase_paintEngine(const void* self);
void QKeySequenceEdit_virtualbase_mousePressEvent(void* self, QMouseEvent* event);
void QKeySequenceEdit_virtualbase_mouseReleaseEvent(void* self, QMouseEvent* event);
void QKeySequenceEdit_virtualbase_mouseDoubleClickEvent(void* self, QMouseEvent* event);
void QKeySequenceEdit_virtualbase_mouseMoveEvent(void* self, QMouseEvent* event);
void QKeySequenceEdit_virtualbase_wheelEvent(void* self, QWheelEvent* event);
void QKeySequenceEdit_virtualbase_focusInEvent(void* self, QFocusEvent* event);
void QKeySequenceEdit_virtualbase_focusOutEvent(void* self, QFocusEvent* event);
void QKeySequenceEdit_virtualbase_enterEvent(void* self, QEvent* event);
void QKeySequenceEdit_virtualbase_leaveEvent(void* self, QEvent* event);
void QKeySequenceEdit_virtualbase_paintEvent(void* self, QPaintEvent* event);
void QKeySequenceEdit_virtualbase_moveEvent(void* self, QMoveEvent* event);
void QKeySequenceEdit_virtualbase_resizeEvent(void* self, QResizeEvent* event);
void QKeySequenceEdit_virtualbase_closeEvent(void* self, QCloseEvent* event);
void QKeySequenceEdit_virtualbase_contextMenuEvent(void* self, QContextMenuEvent* event);
void QKeySequenceEdit_virtualbase_tabletEvent(void* self, QTabletEvent* event);
void QKeySequenceEdit_virtualbase_actionEvent(void* self, QActionEvent* event);
void QKeySequenceEdit_virtualbase_dragEnterEvent(void* self, QDragEnterEvent* event);
void QKeySequenceEdit_virtualbase_dragMoveEvent(void* self, QDragMoveEvent* event);
void QKeySequenceEdit_virtualbase_dragLeaveEvent(void* self, QDragLeaveEvent* event);
void QKeySequenceEdit_virtualbase_dropEvent(void* self, QDropEvent* event);
void QKeySequenceEdit_virtualbase_showEvent(void* self, QShowEvent* event);
void QKeySequenceEdit_virtualbase_hideEvent(void* self, QHideEvent* event);
bool QKeySequenceEdit_virtualbase_nativeEvent(void* self, struct miqt_string eventType, void* message, long* result);
void QKeySequenceEdit_virtualbase_changeEvent(void* self, QEvent* param1);
int QKeySequenceEdit_virtualbase_metric(const void* self, int param1);
void QKeySequenceEdit_virtualbase_initPainter(const void* self, QPainter* painter);
QPaintDevice* QKeySequenceEdit_virtualbase_redirected(const void* self, QPoint* offset);
QPainter* QKeySequenceEdit_virtualbase_sharedPainter(const void* self);
void QKeySequenceEdit_virtualbase_inputMethodEvent(void* self, QInputMethodEvent* param1);
QVariant* QKeySequenceEdit_virtualbase_inputMethodQuery(const void* self, int param1);
bool QKeySequenceEdit_virtualbase_focusNextPrevChild(void* self, bool next);
bool QKeySequenceEdit_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);
void QKeySequenceEdit_virtualbase_childEvent(void* self, QChildEvent* event);
void QKeySequenceEdit_virtualbase_customEvent(void* self, QEvent* event);
void QKeySequenceEdit_virtualbase_connectNotify(void* self, QMetaMethod* signal);
void QKeySequenceEdit_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
void QKeySequenceEdit_protectedbase_updateMicroFocus(void* self);
void QKeySequenceEdit_protectedbase_create(void* self);
void QKeySequenceEdit_protectedbase_destroy(void* self);
bool QKeySequenceEdit_protectedbase_focusNextChild(void* self);
bool QKeySequenceEdit_protectedbase_focusPreviousChild(void* self);
QObject* QKeySequenceEdit_protectedbase_sender(const void* self);
int QKeySequenceEdit_protectedbase_senderSignalIndex(const void* self);
int QKeySequenceEdit_protectedbase_receivers(const void* self, const char* signal);
bool QKeySequenceEdit_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal);
const QMetaObject* QKeySequenceEdit_staticMetaObject();
void QKeySequenceEdit_delete(QKeySequenceEdit* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
