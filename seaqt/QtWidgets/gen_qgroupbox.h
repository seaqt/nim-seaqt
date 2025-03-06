#pragma once
#ifndef SEAQT_QTWIDGETS_GEN_QGROUPBOX_H
#define SEAQT_QTWIDGETS_GEN_QGROUPBOX_H

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
class QGroupBox;
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
class QStyleOptionGroupBox;
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
typedef struct QGroupBox QGroupBox;
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
typedef struct QStyleOptionGroupBox QStyleOptionGroupBox;
typedef struct QTabletEvent QTabletEvent;
typedef struct QTimerEvent QTimerEvent;
typedef struct QVariant QVariant;
typedef struct QWheelEvent QWheelEvent;
typedef struct QWidget QWidget;
#endif

struct QGroupBox_VTable {
	void (*destructor)(struct QGroupBox_VTable* vtbl, QGroupBox* self);
	QMetaObject* (*metaObject)(struct QGroupBox_VTable* vtbl, const QGroupBox* self);
	void* (*metacast)(struct QGroupBox_VTable* vtbl, QGroupBox* self, const char* param1);
	int (*metacall)(struct QGroupBox_VTable* vtbl, QGroupBox* self, int param1, int param2, void** param3);
	QSize* (*minimumSizeHint)(struct QGroupBox_VTable* vtbl, const QGroupBox* self);
	bool (*event)(struct QGroupBox_VTable* vtbl, QGroupBox* self, QEvent* event);
	void (*childEvent)(struct QGroupBox_VTable* vtbl, QGroupBox* self, QChildEvent* event);
	void (*resizeEvent)(struct QGroupBox_VTable* vtbl, QGroupBox* self, QResizeEvent* event);
	void (*paintEvent)(struct QGroupBox_VTable* vtbl, QGroupBox* self, QPaintEvent* event);
	void (*focusInEvent)(struct QGroupBox_VTable* vtbl, QGroupBox* self, QFocusEvent* event);
	void (*changeEvent)(struct QGroupBox_VTable* vtbl, QGroupBox* self, QEvent* event);
	void (*mousePressEvent)(struct QGroupBox_VTable* vtbl, QGroupBox* self, QMouseEvent* event);
	void (*mouseMoveEvent)(struct QGroupBox_VTable* vtbl, QGroupBox* self, QMouseEvent* event);
	void (*mouseReleaseEvent)(struct QGroupBox_VTable* vtbl, QGroupBox* self, QMouseEvent* event);
	int (*devType)(struct QGroupBox_VTable* vtbl, const QGroupBox* self);
	void (*setVisible)(struct QGroupBox_VTable* vtbl, QGroupBox* self, bool visible);
	QSize* (*sizeHint)(struct QGroupBox_VTable* vtbl, const QGroupBox* self);
	int (*heightForWidth)(struct QGroupBox_VTable* vtbl, const QGroupBox* self, int param1);
	bool (*hasHeightForWidth)(struct QGroupBox_VTable* vtbl, const QGroupBox* self);
	QPaintEngine* (*paintEngine)(struct QGroupBox_VTable* vtbl, const QGroupBox* self);
	void (*mouseDoubleClickEvent)(struct QGroupBox_VTable* vtbl, QGroupBox* self, QMouseEvent* event);
	void (*wheelEvent)(struct QGroupBox_VTable* vtbl, QGroupBox* self, QWheelEvent* event);
	void (*keyPressEvent)(struct QGroupBox_VTable* vtbl, QGroupBox* self, QKeyEvent* event);
	void (*keyReleaseEvent)(struct QGroupBox_VTable* vtbl, QGroupBox* self, QKeyEvent* event);
	void (*focusOutEvent)(struct QGroupBox_VTable* vtbl, QGroupBox* self, QFocusEvent* event);
	void (*enterEvent)(struct QGroupBox_VTable* vtbl, QGroupBox* self, QEvent* event);
	void (*leaveEvent)(struct QGroupBox_VTable* vtbl, QGroupBox* self, QEvent* event);
	void (*moveEvent)(struct QGroupBox_VTable* vtbl, QGroupBox* self, QMoveEvent* event);
	void (*closeEvent)(struct QGroupBox_VTable* vtbl, QGroupBox* self, QCloseEvent* event);
	void (*contextMenuEvent)(struct QGroupBox_VTable* vtbl, QGroupBox* self, QContextMenuEvent* event);
	void (*tabletEvent)(struct QGroupBox_VTable* vtbl, QGroupBox* self, QTabletEvent* event);
	void (*actionEvent)(struct QGroupBox_VTable* vtbl, QGroupBox* self, QActionEvent* event);
	void (*dragEnterEvent)(struct QGroupBox_VTable* vtbl, QGroupBox* self, QDragEnterEvent* event);
	void (*dragMoveEvent)(struct QGroupBox_VTable* vtbl, QGroupBox* self, QDragMoveEvent* event);
	void (*dragLeaveEvent)(struct QGroupBox_VTable* vtbl, QGroupBox* self, QDragLeaveEvent* event);
	void (*dropEvent)(struct QGroupBox_VTable* vtbl, QGroupBox* self, QDropEvent* event);
	void (*showEvent)(struct QGroupBox_VTable* vtbl, QGroupBox* self, QShowEvent* event);
	void (*hideEvent)(struct QGroupBox_VTable* vtbl, QGroupBox* self, QHideEvent* event);
	bool (*nativeEvent)(struct QGroupBox_VTable* vtbl, QGroupBox* self, struct miqt_string eventType, void* message, long* result);
	int (*metric)(struct QGroupBox_VTable* vtbl, const QGroupBox* self, int param1);
	void (*initPainter)(struct QGroupBox_VTable* vtbl, const QGroupBox* self, QPainter* painter);
	QPaintDevice* (*redirected)(struct QGroupBox_VTable* vtbl, const QGroupBox* self, QPoint* offset);
	QPainter* (*sharedPainter)(struct QGroupBox_VTable* vtbl, const QGroupBox* self);
	void (*inputMethodEvent)(struct QGroupBox_VTable* vtbl, QGroupBox* self, QInputMethodEvent* param1);
	QVariant* (*inputMethodQuery)(struct QGroupBox_VTable* vtbl, const QGroupBox* self, int param1);
	bool (*focusNextPrevChild)(struct QGroupBox_VTable* vtbl, QGroupBox* self, bool next);
	bool (*eventFilter)(struct QGroupBox_VTable* vtbl, QGroupBox* self, QObject* watched, QEvent* event);
	void (*timerEvent)(struct QGroupBox_VTable* vtbl, QGroupBox* self, QTimerEvent* event);
	void (*customEvent)(struct QGroupBox_VTable* vtbl, QGroupBox* self, QEvent* event);
	void (*connectNotify)(struct QGroupBox_VTable* vtbl, QGroupBox* self, QMetaMethod* signal);
	void (*disconnectNotify)(struct QGroupBox_VTable* vtbl, QGroupBox* self, QMetaMethod* signal);
};
QGroupBox* QGroupBox_new(struct QGroupBox_VTable* vtbl, QWidget* parent);
QGroupBox* QGroupBox_new2(struct QGroupBox_VTable* vtbl);
QGroupBox* QGroupBox_new3(struct QGroupBox_VTable* vtbl, struct miqt_string title);
QGroupBox* QGroupBox_new4(struct QGroupBox_VTable* vtbl, struct miqt_string title, QWidget* parent);
void QGroupBox_virtbase(QGroupBox* src, QWidget** outptr_QWidget);
QMetaObject* QGroupBox_metaObject(const QGroupBox* self);
void* QGroupBox_metacast(QGroupBox* self, const char* param1);
int QGroupBox_metacall(QGroupBox* self, int param1, int param2, void** param3);
struct miqt_string QGroupBox_tr(const char* s);
struct miqt_string QGroupBox_trUtf8(const char* s);
struct miqt_string QGroupBox_title(const QGroupBox* self);
void QGroupBox_setTitle(QGroupBox* self, struct miqt_string title);
int QGroupBox_alignment(const QGroupBox* self);
void QGroupBox_setAlignment(QGroupBox* self, int alignment);
QSize* QGroupBox_minimumSizeHint(const QGroupBox* self);
bool QGroupBox_isFlat(const QGroupBox* self);
void QGroupBox_setFlat(QGroupBox* self, bool flat);
bool QGroupBox_isCheckable(const QGroupBox* self);
void QGroupBox_setCheckable(QGroupBox* self, bool checkable);
bool QGroupBox_isChecked(const QGroupBox* self);
void QGroupBox_setChecked(QGroupBox* self, bool checked);
void QGroupBox_clicked(QGroupBox* self);
void QGroupBox_connect_clicked(QGroupBox* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QGroupBox_toggled(QGroupBox* self, bool param1);
void QGroupBox_connect_toggled(QGroupBox* self, intptr_t slot, void (*callback)(intptr_t, bool), void (*release)(intptr_t));
bool QGroupBox_event(QGroupBox* self, QEvent* event);
void QGroupBox_childEvent(QGroupBox* self, QChildEvent* event);
void QGroupBox_resizeEvent(QGroupBox* self, QResizeEvent* event);
void QGroupBox_paintEvent(QGroupBox* self, QPaintEvent* event);
void QGroupBox_focusInEvent(QGroupBox* self, QFocusEvent* event);
void QGroupBox_changeEvent(QGroupBox* self, QEvent* event);
void QGroupBox_mousePressEvent(QGroupBox* self, QMouseEvent* event);
void QGroupBox_mouseMoveEvent(QGroupBox* self, QMouseEvent* event);
void QGroupBox_mouseReleaseEvent(QGroupBox* self, QMouseEvent* event);
struct miqt_string QGroupBox_tr2(const char* s, const char* c);
struct miqt_string QGroupBox_tr3(const char* s, const char* c, int n);
struct miqt_string QGroupBox_trUtf82(const char* s, const char* c);
struct miqt_string QGroupBox_trUtf83(const char* s, const char* c, int n);
void QGroupBox_clicked1(QGroupBox* self, bool checked);
void QGroupBox_connect_clicked1(QGroupBox* self, intptr_t slot, void (*callback)(intptr_t, bool), void (*release)(intptr_t));
QMetaObject* QGroupBox_virtualbase_metaObject(const void* self);
void* QGroupBox_virtualbase_metacast(void* self, const char* param1);
int QGroupBox_virtualbase_metacall(void* self, int param1, int param2, void** param3);
QSize* QGroupBox_virtualbase_minimumSizeHint(const void* self);
bool QGroupBox_virtualbase_event(void* self, QEvent* event);
void QGroupBox_virtualbase_childEvent(void* self, QChildEvent* event);
void QGroupBox_virtualbase_resizeEvent(void* self, QResizeEvent* event);
void QGroupBox_virtualbase_paintEvent(void* self, QPaintEvent* event);
void QGroupBox_virtualbase_focusInEvent(void* self, QFocusEvent* event);
void QGroupBox_virtualbase_changeEvent(void* self, QEvent* event);
void QGroupBox_virtualbase_mousePressEvent(void* self, QMouseEvent* event);
void QGroupBox_virtualbase_mouseMoveEvent(void* self, QMouseEvent* event);
void QGroupBox_virtualbase_mouseReleaseEvent(void* self, QMouseEvent* event);
int QGroupBox_virtualbase_devType(const void* self);
void QGroupBox_virtualbase_setVisible(void* self, bool visible);
QSize* QGroupBox_virtualbase_sizeHint(const void* self);
int QGroupBox_virtualbase_heightForWidth(const void* self, int param1);
bool QGroupBox_virtualbase_hasHeightForWidth(const void* self);
QPaintEngine* QGroupBox_virtualbase_paintEngine(const void* self);
void QGroupBox_virtualbase_mouseDoubleClickEvent(void* self, QMouseEvent* event);
void QGroupBox_virtualbase_wheelEvent(void* self, QWheelEvent* event);
void QGroupBox_virtualbase_keyPressEvent(void* self, QKeyEvent* event);
void QGroupBox_virtualbase_keyReleaseEvent(void* self, QKeyEvent* event);
void QGroupBox_virtualbase_focusOutEvent(void* self, QFocusEvent* event);
void QGroupBox_virtualbase_enterEvent(void* self, QEvent* event);
void QGroupBox_virtualbase_leaveEvent(void* self, QEvent* event);
void QGroupBox_virtualbase_moveEvent(void* self, QMoveEvent* event);
void QGroupBox_virtualbase_closeEvent(void* self, QCloseEvent* event);
void QGroupBox_virtualbase_contextMenuEvent(void* self, QContextMenuEvent* event);
void QGroupBox_virtualbase_tabletEvent(void* self, QTabletEvent* event);
void QGroupBox_virtualbase_actionEvent(void* self, QActionEvent* event);
void QGroupBox_virtualbase_dragEnterEvent(void* self, QDragEnterEvent* event);
void QGroupBox_virtualbase_dragMoveEvent(void* self, QDragMoveEvent* event);
void QGroupBox_virtualbase_dragLeaveEvent(void* self, QDragLeaveEvent* event);
void QGroupBox_virtualbase_dropEvent(void* self, QDropEvent* event);
void QGroupBox_virtualbase_showEvent(void* self, QShowEvent* event);
void QGroupBox_virtualbase_hideEvent(void* self, QHideEvent* event);
bool QGroupBox_virtualbase_nativeEvent(void* self, struct miqt_string eventType, void* message, long* result);
int QGroupBox_virtualbase_metric(const void* self, int param1);
void QGroupBox_virtualbase_initPainter(const void* self, QPainter* painter);
QPaintDevice* QGroupBox_virtualbase_redirected(const void* self, QPoint* offset);
QPainter* QGroupBox_virtualbase_sharedPainter(const void* self);
void QGroupBox_virtualbase_inputMethodEvent(void* self, QInputMethodEvent* param1);
QVariant* QGroupBox_virtualbase_inputMethodQuery(const void* self, int param1);
bool QGroupBox_virtualbase_focusNextPrevChild(void* self, bool next);
bool QGroupBox_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);
void QGroupBox_virtualbase_timerEvent(void* self, QTimerEvent* event);
void QGroupBox_virtualbase_customEvent(void* self, QEvent* event);
void QGroupBox_virtualbase_connectNotify(void* self, QMetaMethod* signal);
void QGroupBox_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
void QGroupBox_protectedbase_initStyleOption(const void* self, QStyleOptionGroupBox* option);
void QGroupBox_protectedbase_updateMicroFocus(void* self);
void QGroupBox_protectedbase_create(void* self);
void QGroupBox_protectedbase_destroy(void* self);
bool QGroupBox_protectedbase_focusNextChild(void* self);
bool QGroupBox_protectedbase_focusPreviousChild(void* self);
QObject* QGroupBox_protectedbase_sender(const void* self);
int QGroupBox_protectedbase_senderSignalIndex(const void* self);
int QGroupBox_protectedbase_receivers(const void* self, const char* signal);
bool QGroupBox_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal);
const QMetaObject* QGroupBox_staticMetaObject();
void QGroupBox_delete(QGroupBox* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
