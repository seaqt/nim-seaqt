#pragma once
#ifndef SEAQT_QTDESIGNER_GEN_ABSTRACTRESOURCEBROWSER_H
#define SEAQT_QTDESIGNER_GEN_ABSTRACTRESOURCEBROWSER_H

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
class QDesignerResourceBrowserInterface;
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
typedef struct QDesignerResourceBrowserInterface QDesignerResourceBrowserInterface;
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
typedef struct QResizeEvent QResizeEvent;
typedef struct QShowEvent QShowEvent;
typedef struct QSize QSize;
typedef struct QTabletEvent QTabletEvent;
typedef struct QTimerEvent QTimerEvent;
typedef struct QVariant QVariant;
typedef struct QWheelEvent QWheelEvent;
typedef struct QWidget QWidget;
#endif

typedef struct VirtualQDesignerResourceBrowserInterface VirtualQDesignerResourceBrowserInterface;
typedef struct QDesignerResourceBrowserInterface_VTable{
	void (*destructor)(VirtualQDesignerResourceBrowserInterface* self);
	QMetaObject* (*metaObject)(const VirtualQDesignerResourceBrowserInterface* self);
	void* (*metacast)(VirtualQDesignerResourceBrowserInterface* self, const char* param1);
	int (*metacall)(VirtualQDesignerResourceBrowserInterface* self, int param1, int param2, void** param3);
	void (*setCurrentPath)(VirtualQDesignerResourceBrowserInterface* self, struct seaqt_string filePath);
	struct seaqt_string (*currentPath)(const VirtualQDesignerResourceBrowserInterface* self);
	int (*devType)(const VirtualQDesignerResourceBrowserInterface* self);
	void (*setVisible)(VirtualQDesignerResourceBrowserInterface* self, bool visible);
	QSize* (*sizeHint)(const VirtualQDesignerResourceBrowserInterface* self);
	QSize* (*minimumSizeHint)(const VirtualQDesignerResourceBrowserInterface* self);
	int (*heightForWidth)(const VirtualQDesignerResourceBrowserInterface* self, int param1);
	bool (*hasHeightForWidth)(const VirtualQDesignerResourceBrowserInterface* self);
	QPaintEngine* (*paintEngine)(const VirtualQDesignerResourceBrowserInterface* self);
	bool (*event)(VirtualQDesignerResourceBrowserInterface* self, QEvent* event);
	void (*mousePressEvent)(VirtualQDesignerResourceBrowserInterface* self, QMouseEvent* event);
	void (*mouseReleaseEvent)(VirtualQDesignerResourceBrowserInterface* self, QMouseEvent* event);
	void (*mouseDoubleClickEvent)(VirtualQDesignerResourceBrowserInterface* self, QMouseEvent* event);
	void (*mouseMoveEvent)(VirtualQDesignerResourceBrowserInterface* self, QMouseEvent* event);
	void (*wheelEvent)(VirtualQDesignerResourceBrowserInterface* self, QWheelEvent* event);
	void (*keyPressEvent)(VirtualQDesignerResourceBrowserInterface* self, QKeyEvent* event);
	void (*keyReleaseEvent)(VirtualQDesignerResourceBrowserInterface* self, QKeyEvent* event);
	void (*focusInEvent)(VirtualQDesignerResourceBrowserInterface* self, QFocusEvent* event);
	void (*focusOutEvent)(VirtualQDesignerResourceBrowserInterface* self, QFocusEvent* event);
	void (*enterEvent)(VirtualQDesignerResourceBrowserInterface* self, QEnterEvent* event);
	void (*leaveEvent)(VirtualQDesignerResourceBrowserInterface* self, QEvent* event);
	void (*paintEvent)(VirtualQDesignerResourceBrowserInterface* self, QPaintEvent* event);
	void (*moveEvent)(VirtualQDesignerResourceBrowserInterface* self, QMoveEvent* event);
	void (*resizeEvent)(VirtualQDesignerResourceBrowserInterface* self, QResizeEvent* event);
	void (*closeEvent)(VirtualQDesignerResourceBrowserInterface* self, QCloseEvent* event);
	void (*contextMenuEvent)(VirtualQDesignerResourceBrowserInterface* self, QContextMenuEvent* event);
	void (*tabletEvent)(VirtualQDesignerResourceBrowserInterface* self, QTabletEvent* event);
	void (*actionEvent)(VirtualQDesignerResourceBrowserInterface* self, QActionEvent* event);
	void (*dragEnterEvent)(VirtualQDesignerResourceBrowserInterface* self, QDragEnterEvent* event);
	void (*dragMoveEvent)(VirtualQDesignerResourceBrowserInterface* self, QDragMoveEvent* event);
	void (*dragLeaveEvent)(VirtualQDesignerResourceBrowserInterface* self, QDragLeaveEvent* event);
	void (*dropEvent)(VirtualQDesignerResourceBrowserInterface* self, QDropEvent* event);
	void (*showEvent)(VirtualQDesignerResourceBrowserInterface* self, QShowEvent* event);
	void (*hideEvent)(VirtualQDesignerResourceBrowserInterface* self, QHideEvent* event);
	bool (*nativeEvent)(VirtualQDesignerResourceBrowserInterface* self, struct seaqt_string eventType, void* message, intptr_t* result);
	void (*changeEvent)(VirtualQDesignerResourceBrowserInterface* self, QEvent* param1);
	int (*metric)(const VirtualQDesignerResourceBrowserInterface* self, int param1);
	void (*initPainter)(const VirtualQDesignerResourceBrowserInterface* self, QPainter* painter);
	QPaintDevice* (*redirected)(const VirtualQDesignerResourceBrowserInterface* self, QPoint* offset);
	QPainter* (*sharedPainter)(const VirtualQDesignerResourceBrowserInterface* self);
	void (*inputMethodEvent)(VirtualQDesignerResourceBrowserInterface* self, QInputMethodEvent* param1);
	QVariant* (*inputMethodQuery)(const VirtualQDesignerResourceBrowserInterface* self, int param1);
	bool (*focusNextPrevChild)(VirtualQDesignerResourceBrowserInterface* self, bool next);
	bool (*eventFilter)(VirtualQDesignerResourceBrowserInterface* self, QObject* watched, QEvent* event);
	void (*timerEvent)(VirtualQDesignerResourceBrowserInterface* self, QTimerEvent* event);
	void (*childEvent)(VirtualQDesignerResourceBrowserInterface* self, QChildEvent* event);
	void (*customEvent)(VirtualQDesignerResourceBrowserInterface* self, QEvent* event);
	void (*connectNotify)(VirtualQDesignerResourceBrowserInterface* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQDesignerResourceBrowserInterface* self, QMetaMethod* signal);
}QDesignerResourceBrowserInterface_VTable;

void* QDesignerResourceBrowserInterface_vdata(VirtualQDesignerResourceBrowserInterface* self);
VirtualQDesignerResourceBrowserInterface* vdata_QDesignerResourceBrowserInterface(void* vdata);

VirtualQDesignerResourceBrowserInterface* QDesignerResourceBrowserInterface_new(const QDesignerResourceBrowserInterface_VTable* vtbl, size_t vdata);
VirtualQDesignerResourceBrowserInterface* QDesignerResourceBrowserInterface_new2(const QDesignerResourceBrowserInterface_VTable* vtbl, size_t vdata, QWidget* parent);

void QDesignerResourceBrowserInterface_virtbase(QDesignerResourceBrowserInterface* src, QWidget** outptr_QWidget);
QMetaObject* QDesignerResourceBrowserInterface_metaObject(const QDesignerResourceBrowserInterface* self);
void* QDesignerResourceBrowserInterface_metacast(QDesignerResourceBrowserInterface* self, const char* param1);
int QDesignerResourceBrowserInterface_metacall(QDesignerResourceBrowserInterface* self, int param1, int param2, void** param3);
struct seaqt_string QDesignerResourceBrowserInterface_tr(const char* s);
void QDesignerResourceBrowserInterface_setCurrentPath(QDesignerResourceBrowserInterface* self, struct seaqt_string filePath);
struct seaqt_string QDesignerResourceBrowserInterface_currentPath(const QDesignerResourceBrowserInterface* self);
void QDesignerResourceBrowserInterface_currentPathChanged(QDesignerResourceBrowserInterface* self, struct seaqt_string filePath);
void QDesignerResourceBrowserInterface_connect_currentPathChanged(QDesignerResourceBrowserInterface* self, intptr_t slot, void (*callback)(intptr_t, struct seaqt_string), void (*release)(intptr_t));
void QDesignerResourceBrowserInterface_pathActivated(QDesignerResourceBrowserInterface* self, struct seaqt_string filePath);
void QDesignerResourceBrowserInterface_connect_pathActivated(QDesignerResourceBrowserInterface* self, intptr_t slot, void (*callback)(intptr_t, struct seaqt_string), void (*release)(intptr_t));
struct seaqt_string QDesignerResourceBrowserInterface_tr2(const char* s, const char* c);
struct seaqt_string QDesignerResourceBrowserInterface_tr3(const char* s, const char* c, int n);

QMetaObject* QDesignerResourceBrowserInterface_virtualbase_metaObject(const VirtualQDesignerResourceBrowserInterface* self);
void* QDesignerResourceBrowserInterface_virtualbase_metacast(VirtualQDesignerResourceBrowserInterface* self, const char* param1);
int QDesignerResourceBrowserInterface_virtualbase_metacall(VirtualQDesignerResourceBrowserInterface* self, int param1, int param2, void** param3);
void QDesignerResourceBrowserInterface_virtualbase_setCurrentPath(VirtualQDesignerResourceBrowserInterface* self, struct seaqt_string filePath);
struct seaqt_string QDesignerResourceBrowserInterface_virtualbase_currentPath(const VirtualQDesignerResourceBrowserInterface* self);
int QDesignerResourceBrowserInterface_virtualbase_devType(const VirtualQDesignerResourceBrowserInterface* self);
void QDesignerResourceBrowserInterface_virtualbase_setVisible(VirtualQDesignerResourceBrowserInterface* self, bool visible);
QSize* QDesignerResourceBrowserInterface_virtualbase_sizeHint(const VirtualQDesignerResourceBrowserInterface* self);
QSize* QDesignerResourceBrowserInterface_virtualbase_minimumSizeHint(const VirtualQDesignerResourceBrowserInterface* self);
int QDesignerResourceBrowserInterface_virtualbase_heightForWidth(const VirtualQDesignerResourceBrowserInterface* self, int param1);
bool QDesignerResourceBrowserInterface_virtualbase_hasHeightForWidth(const VirtualQDesignerResourceBrowserInterface* self);
QPaintEngine* QDesignerResourceBrowserInterface_virtualbase_paintEngine(const VirtualQDesignerResourceBrowserInterface* self);
bool QDesignerResourceBrowserInterface_virtualbase_event(VirtualQDesignerResourceBrowserInterface* self, QEvent* event);
void QDesignerResourceBrowserInterface_virtualbase_mousePressEvent(VirtualQDesignerResourceBrowserInterface* self, QMouseEvent* event);
void QDesignerResourceBrowserInterface_virtualbase_mouseReleaseEvent(VirtualQDesignerResourceBrowserInterface* self, QMouseEvent* event);
void QDesignerResourceBrowserInterface_virtualbase_mouseDoubleClickEvent(VirtualQDesignerResourceBrowserInterface* self, QMouseEvent* event);
void QDesignerResourceBrowserInterface_virtualbase_mouseMoveEvent(VirtualQDesignerResourceBrowserInterface* self, QMouseEvent* event);
void QDesignerResourceBrowserInterface_virtualbase_wheelEvent(VirtualQDesignerResourceBrowserInterface* self, QWheelEvent* event);
void QDesignerResourceBrowserInterface_virtualbase_keyPressEvent(VirtualQDesignerResourceBrowserInterface* self, QKeyEvent* event);
void QDesignerResourceBrowserInterface_virtualbase_keyReleaseEvent(VirtualQDesignerResourceBrowserInterface* self, QKeyEvent* event);
void QDesignerResourceBrowserInterface_virtualbase_focusInEvent(VirtualQDesignerResourceBrowserInterface* self, QFocusEvent* event);
void QDesignerResourceBrowserInterface_virtualbase_focusOutEvent(VirtualQDesignerResourceBrowserInterface* self, QFocusEvent* event);
void QDesignerResourceBrowserInterface_virtualbase_enterEvent(VirtualQDesignerResourceBrowserInterface* self, QEnterEvent* event);
void QDesignerResourceBrowserInterface_virtualbase_leaveEvent(VirtualQDesignerResourceBrowserInterface* self, QEvent* event);
void QDesignerResourceBrowserInterface_virtualbase_paintEvent(VirtualQDesignerResourceBrowserInterface* self, QPaintEvent* event);
void QDesignerResourceBrowserInterface_virtualbase_moveEvent(VirtualQDesignerResourceBrowserInterface* self, QMoveEvent* event);
void QDesignerResourceBrowserInterface_virtualbase_resizeEvent(VirtualQDesignerResourceBrowserInterface* self, QResizeEvent* event);
void QDesignerResourceBrowserInterface_virtualbase_closeEvent(VirtualQDesignerResourceBrowserInterface* self, QCloseEvent* event);
void QDesignerResourceBrowserInterface_virtualbase_contextMenuEvent(VirtualQDesignerResourceBrowserInterface* self, QContextMenuEvent* event);
void QDesignerResourceBrowserInterface_virtualbase_tabletEvent(VirtualQDesignerResourceBrowserInterface* self, QTabletEvent* event);
void QDesignerResourceBrowserInterface_virtualbase_actionEvent(VirtualQDesignerResourceBrowserInterface* self, QActionEvent* event);
void QDesignerResourceBrowserInterface_virtualbase_dragEnterEvent(VirtualQDesignerResourceBrowserInterface* self, QDragEnterEvent* event);
void QDesignerResourceBrowserInterface_virtualbase_dragMoveEvent(VirtualQDesignerResourceBrowserInterface* self, QDragMoveEvent* event);
void QDesignerResourceBrowserInterface_virtualbase_dragLeaveEvent(VirtualQDesignerResourceBrowserInterface* self, QDragLeaveEvent* event);
void QDesignerResourceBrowserInterface_virtualbase_dropEvent(VirtualQDesignerResourceBrowserInterface* self, QDropEvent* event);
void QDesignerResourceBrowserInterface_virtualbase_showEvent(VirtualQDesignerResourceBrowserInterface* self, QShowEvent* event);
void QDesignerResourceBrowserInterface_virtualbase_hideEvent(VirtualQDesignerResourceBrowserInterface* self, QHideEvent* event);
bool QDesignerResourceBrowserInterface_virtualbase_nativeEvent(VirtualQDesignerResourceBrowserInterface* self, struct seaqt_string eventType, void* message, intptr_t* result);
void QDesignerResourceBrowserInterface_virtualbase_changeEvent(VirtualQDesignerResourceBrowserInterface* self, QEvent* param1);
int QDesignerResourceBrowserInterface_virtualbase_metric(const VirtualQDesignerResourceBrowserInterface* self, int param1);
void QDesignerResourceBrowserInterface_virtualbase_initPainter(const VirtualQDesignerResourceBrowserInterface* self, QPainter* painter);
QPaintDevice* QDesignerResourceBrowserInterface_virtualbase_redirected(const VirtualQDesignerResourceBrowserInterface* self, QPoint* offset);
QPainter* QDesignerResourceBrowserInterface_virtualbase_sharedPainter(const VirtualQDesignerResourceBrowserInterface* self);
void QDesignerResourceBrowserInterface_virtualbase_inputMethodEvent(VirtualQDesignerResourceBrowserInterface* self, QInputMethodEvent* param1);
QVariant* QDesignerResourceBrowserInterface_virtualbase_inputMethodQuery(const VirtualQDesignerResourceBrowserInterface* self, int param1);
bool QDesignerResourceBrowserInterface_virtualbase_focusNextPrevChild(VirtualQDesignerResourceBrowserInterface* self, bool next);
bool QDesignerResourceBrowserInterface_virtualbase_eventFilter(VirtualQDesignerResourceBrowserInterface* self, QObject* watched, QEvent* event);
void QDesignerResourceBrowserInterface_virtualbase_timerEvent(VirtualQDesignerResourceBrowserInterface* self, QTimerEvent* event);
void QDesignerResourceBrowserInterface_virtualbase_childEvent(VirtualQDesignerResourceBrowserInterface* self, QChildEvent* event);
void QDesignerResourceBrowserInterface_virtualbase_customEvent(VirtualQDesignerResourceBrowserInterface* self, QEvent* event);
void QDesignerResourceBrowserInterface_virtualbase_connectNotify(VirtualQDesignerResourceBrowserInterface* self, QMetaMethod* signal);
void QDesignerResourceBrowserInterface_virtualbase_disconnectNotify(VirtualQDesignerResourceBrowserInterface* self, QMetaMethod* signal);

void QDesignerResourceBrowserInterface_protectedbase_updateMicroFocus(VirtualQDesignerResourceBrowserInterface* self);
void QDesignerResourceBrowserInterface_protectedbase_create(VirtualQDesignerResourceBrowserInterface* self);
void QDesignerResourceBrowserInterface_protectedbase_destroy(VirtualQDesignerResourceBrowserInterface* self);
bool QDesignerResourceBrowserInterface_protectedbase_focusNextChild(VirtualQDesignerResourceBrowserInterface* self);
bool QDesignerResourceBrowserInterface_protectedbase_focusPreviousChild(VirtualQDesignerResourceBrowserInterface* self);
QObject* QDesignerResourceBrowserInterface_protectedbase_sender(const VirtualQDesignerResourceBrowserInterface* self);
int QDesignerResourceBrowserInterface_protectedbase_senderSignalIndex(const VirtualQDesignerResourceBrowserInterface* self);
int QDesignerResourceBrowserInterface_protectedbase_receivers(const VirtualQDesignerResourceBrowserInterface* self, const char* signal);
bool QDesignerResourceBrowserInterface_protectedbase_isSignalConnected(const VirtualQDesignerResourceBrowserInterface* self, QMetaMethod* signal);

const QMetaObject* QDesignerResourceBrowserInterface_staticMetaObject();
void QDesignerResourceBrowserInterface_delete(QDesignerResourceBrowserInterface* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
