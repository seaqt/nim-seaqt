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

typedef struct VirtualQGroupBox VirtualQGroupBox;
typedef struct QGroupBox_VTable{
	void (*destructor)(VirtualQGroupBox* self);
	QMetaObject* (*metaObject)(const VirtualQGroupBox* self);
	void* (*metacast)(VirtualQGroupBox* self, const char* param1);
	int (*metacall)(VirtualQGroupBox* self, int param1, int param2, void** param3);
	QSize* (*minimumSizeHint)(const VirtualQGroupBox* self);
	bool (*event)(VirtualQGroupBox* self, QEvent* event);
	void (*childEvent)(VirtualQGroupBox* self, QChildEvent* event);
	void (*resizeEvent)(VirtualQGroupBox* self, QResizeEvent* event);
	void (*paintEvent)(VirtualQGroupBox* self, QPaintEvent* event);
	void (*focusInEvent)(VirtualQGroupBox* self, QFocusEvent* event);
	void (*changeEvent)(VirtualQGroupBox* self, QEvent* event);
	void (*mousePressEvent)(VirtualQGroupBox* self, QMouseEvent* event);
	void (*mouseMoveEvent)(VirtualQGroupBox* self, QMouseEvent* event);
	void (*mouseReleaseEvent)(VirtualQGroupBox* self, QMouseEvent* event);
	int (*devType)(const VirtualQGroupBox* self);
	void (*setVisible)(VirtualQGroupBox* self, bool visible);
	QSize* (*sizeHint)(const VirtualQGroupBox* self);
	int (*heightForWidth)(const VirtualQGroupBox* self, int param1);
	bool (*hasHeightForWidth)(const VirtualQGroupBox* self);
	QPaintEngine* (*paintEngine)(const VirtualQGroupBox* self);
	void (*mouseDoubleClickEvent)(VirtualQGroupBox* self, QMouseEvent* event);
	void (*wheelEvent)(VirtualQGroupBox* self, QWheelEvent* event);
	void (*keyPressEvent)(VirtualQGroupBox* self, QKeyEvent* event);
	void (*keyReleaseEvent)(VirtualQGroupBox* self, QKeyEvent* event);
	void (*focusOutEvent)(VirtualQGroupBox* self, QFocusEvent* event);
	void (*enterEvent)(VirtualQGroupBox* self, QEvent* event);
	void (*leaveEvent)(VirtualQGroupBox* self, QEvent* event);
	void (*moveEvent)(VirtualQGroupBox* self, QMoveEvent* event);
	void (*closeEvent)(VirtualQGroupBox* self, QCloseEvent* event);
	void (*contextMenuEvent)(VirtualQGroupBox* self, QContextMenuEvent* event);
	void (*tabletEvent)(VirtualQGroupBox* self, QTabletEvent* event);
	void (*actionEvent)(VirtualQGroupBox* self, QActionEvent* event);
	void (*dragEnterEvent)(VirtualQGroupBox* self, QDragEnterEvent* event);
	void (*dragMoveEvent)(VirtualQGroupBox* self, QDragMoveEvent* event);
	void (*dragLeaveEvent)(VirtualQGroupBox* self, QDragLeaveEvent* event);
	void (*dropEvent)(VirtualQGroupBox* self, QDropEvent* event);
	void (*showEvent)(VirtualQGroupBox* self, QShowEvent* event);
	void (*hideEvent)(VirtualQGroupBox* self, QHideEvent* event);
	bool (*nativeEvent)(VirtualQGroupBox* self, struct miqt_string eventType, void* message, long* result);
	int (*metric)(const VirtualQGroupBox* self, int param1);
	void (*initPainter)(const VirtualQGroupBox* self, QPainter* painter);
	QPaintDevice* (*redirected)(const VirtualQGroupBox* self, QPoint* offset);
	QPainter* (*sharedPainter)(const VirtualQGroupBox* self);
	void (*inputMethodEvent)(VirtualQGroupBox* self, QInputMethodEvent* param1);
	QVariant* (*inputMethodQuery)(const VirtualQGroupBox* self, int param1);
	bool (*focusNextPrevChild)(VirtualQGroupBox* self, bool next);
	bool (*eventFilter)(VirtualQGroupBox* self, QObject* watched, QEvent* event);
	void (*timerEvent)(VirtualQGroupBox* self, QTimerEvent* event);
	void (*customEvent)(VirtualQGroupBox* self, QEvent* event);
	void (*connectNotify)(VirtualQGroupBox* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQGroupBox* self, QMetaMethod* signal);
}QGroupBox_VTable;

const QGroupBox_VTable* QGroupBox_vtbl(const VirtualQGroupBox* self);
void* QGroupBox_vdata(const VirtualQGroupBox* self);
void QGroupBox_setVdata(VirtualQGroupBox* self, void* vdata);

VirtualQGroupBox* QGroupBox_new(const QGroupBox_VTable* vtbl, void* vdata, QWidget* parent);
VirtualQGroupBox* QGroupBox_new2(const QGroupBox_VTable* vtbl, void* vdata);
VirtualQGroupBox* QGroupBox_new3(const QGroupBox_VTable* vtbl, void* vdata, struct miqt_string title);
VirtualQGroupBox* QGroupBox_new4(const QGroupBox_VTable* vtbl, void* vdata, struct miqt_string title, QWidget* parent);

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
void QGroupBox_connect_clicked(VirtualQGroupBox* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QGroupBox_toggled(QGroupBox* self, bool param1);
void QGroupBox_connect_toggled(VirtualQGroupBox* self, intptr_t slot, void (*callback)(intptr_t, bool), void (*release)(intptr_t));
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
void QGroupBox_connect_clicked1(VirtualQGroupBox* self, intptr_t slot, void (*callback)(intptr_t, bool), void (*release)(intptr_t));

QMetaObject* QGroupBox_virtualbase_metaObject(const VirtualQGroupBox* self);
void* QGroupBox_virtualbase_metacast(VirtualQGroupBox* self, const char* param1);
int QGroupBox_virtualbase_metacall(VirtualQGroupBox* self, int param1, int param2, void** param3);
QSize* QGroupBox_virtualbase_minimumSizeHint(const VirtualQGroupBox* self);
bool QGroupBox_virtualbase_event(VirtualQGroupBox* self, QEvent* event);
void QGroupBox_virtualbase_childEvent(VirtualQGroupBox* self, QChildEvent* event);
void QGroupBox_virtualbase_resizeEvent(VirtualQGroupBox* self, QResizeEvent* event);
void QGroupBox_virtualbase_paintEvent(VirtualQGroupBox* self, QPaintEvent* event);
void QGroupBox_virtualbase_focusInEvent(VirtualQGroupBox* self, QFocusEvent* event);
void QGroupBox_virtualbase_changeEvent(VirtualQGroupBox* self, QEvent* event);
void QGroupBox_virtualbase_mousePressEvent(VirtualQGroupBox* self, QMouseEvent* event);
void QGroupBox_virtualbase_mouseMoveEvent(VirtualQGroupBox* self, QMouseEvent* event);
void QGroupBox_virtualbase_mouseReleaseEvent(VirtualQGroupBox* self, QMouseEvent* event);
int QGroupBox_virtualbase_devType(const VirtualQGroupBox* self);
void QGroupBox_virtualbase_setVisible(VirtualQGroupBox* self, bool visible);
QSize* QGroupBox_virtualbase_sizeHint(const VirtualQGroupBox* self);
int QGroupBox_virtualbase_heightForWidth(const VirtualQGroupBox* self, int param1);
bool QGroupBox_virtualbase_hasHeightForWidth(const VirtualQGroupBox* self);
QPaintEngine* QGroupBox_virtualbase_paintEngine(const VirtualQGroupBox* self);
void QGroupBox_virtualbase_mouseDoubleClickEvent(VirtualQGroupBox* self, QMouseEvent* event);
void QGroupBox_virtualbase_wheelEvent(VirtualQGroupBox* self, QWheelEvent* event);
void QGroupBox_virtualbase_keyPressEvent(VirtualQGroupBox* self, QKeyEvent* event);
void QGroupBox_virtualbase_keyReleaseEvent(VirtualQGroupBox* self, QKeyEvent* event);
void QGroupBox_virtualbase_focusOutEvent(VirtualQGroupBox* self, QFocusEvent* event);
void QGroupBox_virtualbase_enterEvent(VirtualQGroupBox* self, QEvent* event);
void QGroupBox_virtualbase_leaveEvent(VirtualQGroupBox* self, QEvent* event);
void QGroupBox_virtualbase_moveEvent(VirtualQGroupBox* self, QMoveEvent* event);
void QGroupBox_virtualbase_closeEvent(VirtualQGroupBox* self, QCloseEvent* event);
void QGroupBox_virtualbase_contextMenuEvent(VirtualQGroupBox* self, QContextMenuEvent* event);
void QGroupBox_virtualbase_tabletEvent(VirtualQGroupBox* self, QTabletEvent* event);
void QGroupBox_virtualbase_actionEvent(VirtualQGroupBox* self, QActionEvent* event);
void QGroupBox_virtualbase_dragEnterEvent(VirtualQGroupBox* self, QDragEnterEvent* event);
void QGroupBox_virtualbase_dragMoveEvent(VirtualQGroupBox* self, QDragMoveEvent* event);
void QGroupBox_virtualbase_dragLeaveEvent(VirtualQGroupBox* self, QDragLeaveEvent* event);
void QGroupBox_virtualbase_dropEvent(VirtualQGroupBox* self, QDropEvent* event);
void QGroupBox_virtualbase_showEvent(VirtualQGroupBox* self, QShowEvent* event);
void QGroupBox_virtualbase_hideEvent(VirtualQGroupBox* self, QHideEvent* event);
bool QGroupBox_virtualbase_nativeEvent(VirtualQGroupBox* self, struct miqt_string eventType, void* message, long* result);
int QGroupBox_virtualbase_metric(const VirtualQGroupBox* self, int param1);
void QGroupBox_virtualbase_initPainter(const VirtualQGroupBox* self, QPainter* painter);
QPaintDevice* QGroupBox_virtualbase_redirected(const VirtualQGroupBox* self, QPoint* offset);
QPainter* QGroupBox_virtualbase_sharedPainter(const VirtualQGroupBox* self);
void QGroupBox_virtualbase_inputMethodEvent(VirtualQGroupBox* self, QInputMethodEvent* param1);
QVariant* QGroupBox_virtualbase_inputMethodQuery(const VirtualQGroupBox* self, int param1);
bool QGroupBox_virtualbase_focusNextPrevChild(VirtualQGroupBox* self, bool next);
bool QGroupBox_virtualbase_eventFilter(VirtualQGroupBox* self, QObject* watched, QEvent* event);
void QGroupBox_virtualbase_timerEvent(VirtualQGroupBox* self, QTimerEvent* event);
void QGroupBox_virtualbase_customEvent(VirtualQGroupBox* self, QEvent* event);
void QGroupBox_virtualbase_connectNotify(VirtualQGroupBox* self, QMetaMethod* signal);
void QGroupBox_virtualbase_disconnectNotify(VirtualQGroupBox* self, QMetaMethod* signal);

void QGroupBox_protectedbase_initStyleOption(const VirtualQGroupBox* self, QStyleOptionGroupBox* option);
void QGroupBox_protectedbase_updateMicroFocus(VirtualQGroupBox* self);
void QGroupBox_protectedbase_create(VirtualQGroupBox* self);
void QGroupBox_protectedbase_destroy(VirtualQGroupBox* self);
bool QGroupBox_protectedbase_focusNextChild(VirtualQGroupBox* self);
bool QGroupBox_protectedbase_focusPreviousChild(VirtualQGroupBox* self);
QObject* QGroupBox_protectedbase_sender(const VirtualQGroupBox* self);
int QGroupBox_protectedbase_senderSignalIndex(const VirtualQGroupBox* self);
int QGroupBox_protectedbase_receivers(const VirtualQGroupBox* self, const char* signal);
bool QGroupBox_protectedbase_isSignalConnected(const VirtualQGroupBox* self, QMetaMethod* signal);

const QMetaObject* QGroupBox_staticMetaObject();
void QGroupBox_delete(QGroupBox* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
