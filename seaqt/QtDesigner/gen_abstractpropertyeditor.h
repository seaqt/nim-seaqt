#pragma once
#ifndef SEAQT_QTDESIGNER_GEN_ABSTRACTPROPERTYEDITOR_H
#define SEAQT_QTDESIGNER_GEN_ABSTRACTPROPERTYEDITOR_H

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
class QDesignerPropertyEditorInterface;
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
typedef struct QDesignerPropertyEditorInterface QDesignerPropertyEditorInterface;
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

typedef struct VirtualQDesignerPropertyEditorInterface VirtualQDesignerPropertyEditorInterface;
typedef struct QDesignerPropertyEditorInterface_VTable{
	void (*destructor)(VirtualQDesignerPropertyEditorInterface* self);
	QMetaObject* (*metaObject)(const VirtualQDesignerPropertyEditorInterface* self);
	void* (*metacast)(VirtualQDesignerPropertyEditorInterface* self, const char* param1);
	int (*metacall)(VirtualQDesignerPropertyEditorInterface* self, int param1, int param2, void** param3);
	bool (*isReadOnly)(const VirtualQDesignerPropertyEditorInterface* self);
	QObject* (*object)(const VirtualQDesignerPropertyEditorInterface* self);
	struct seaqt_string (*currentPropertyName)(const VirtualQDesignerPropertyEditorInterface* self);
	void (*setObject)(VirtualQDesignerPropertyEditorInterface* self, QObject* object);
	void (*setPropertyValue)(VirtualQDesignerPropertyEditorInterface* self, struct seaqt_string name, QVariant* value, bool changed);
	void (*setReadOnly)(VirtualQDesignerPropertyEditorInterface* self, bool readOnly);
	int (*devType)(const VirtualQDesignerPropertyEditorInterface* self);
	void (*setVisible)(VirtualQDesignerPropertyEditorInterface* self, bool visible);
	QSize* (*sizeHint)(const VirtualQDesignerPropertyEditorInterface* self);
	QSize* (*minimumSizeHint)(const VirtualQDesignerPropertyEditorInterface* self);
	int (*heightForWidth)(const VirtualQDesignerPropertyEditorInterface* self, int param1);
	bool (*hasHeightForWidth)(const VirtualQDesignerPropertyEditorInterface* self);
	QPaintEngine* (*paintEngine)(const VirtualQDesignerPropertyEditorInterface* self);
	bool (*event)(VirtualQDesignerPropertyEditorInterface* self, QEvent* event);
	void (*mousePressEvent)(VirtualQDesignerPropertyEditorInterface* self, QMouseEvent* event);
	void (*mouseReleaseEvent)(VirtualQDesignerPropertyEditorInterface* self, QMouseEvent* event);
	void (*mouseDoubleClickEvent)(VirtualQDesignerPropertyEditorInterface* self, QMouseEvent* event);
	void (*mouseMoveEvent)(VirtualQDesignerPropertyEditorInterface* self, QMouseEvent* event);
	void (*wheelEvent)(VirtualQDesignerPropertyEditorInterface* self, QWheelEvent* event);
	void (*keyPressEvent)(VirtualQDesignerPropertyEditorInterface* self, QKeyEvent* event);
	void (*keyReleaseEvent)(VirtualQDesignerPropertyEditorInterface* self, QKeyEvent* event);
	void (*focusInEvent)(VirtualQDesignerPropertyEditorInterface* self, QFocusEvent* event);
	void (*focusOutEvent)(VirtualQDesignerPropertyEditorInterface* self, QFocusEvent* event);
	void (*enterEvent)(VirtualQDesignerPropertyEditorInterface* self, QEnterEvent* event);
	void (*leaveEvent)(VirtualQDesignerPropertyEditorInterface* self, QEvent* event);
	void (*paintEvent)(VirtualQDesignerPropertyEditorInterface* self, QPaintEvent* event);
	void (*moveEvent)(VirtualQDesignerPropertyEditorInterface* self, QMoveEvent* event);
	void (*resizeEvent)(VirtualQDesignerPropertyEditorInterface* self, QResizeEvent* event);
	void (*closeEvent)(VirtualQDesignerPropertyEditorInterface* self, QCloseEvent* event);
	void (*contextMenuEvent)(VirtualQDesignerPropertyEditorInterface* self, QContextMenuEvent* event);
	void (*tabletEvent)(VirtualQDesignerPropertyEditorInterface* self, QTabletEvent* event);
	void (*actionEvent)(VirtualQDesignerPropertyEditorInterface* self, QActionEvent* event);
	void (*dragEnterEvent)(VirtualQDesignerPropertyEditorInterface* self, QDragEnterEvent* event);
	void (*dragMoveEvent)(VirtualQDesignerPropertyEditorInterface* self, QDragMoveEvent* event);
	void (*dragLeaveEvent)(VirtualQDesignerPropertyEditorInterface* self, QDragLeaveEvent* event);
	void (*dropEvent)(VirtualQDesignerPropertyEditorInterface* self, QDropEvent* event);
	void (*showEvent)(VirtualQDesignerPropertyEditorInterface* self, QShowEvent* event);
	void (*hideEvent)(VirtualQDesignerPropertyEditorInterface* self, QHideEvent* event);
	bool (*nativeEvent)(VirtualQDesignerPropertyEditorInterface* self, struct seaqt_string eventType, void* message, intptr_t* result);
	void (*changeEvent)(VirtualQDesignerPropertyEditorInterface* self, QEvent* param1);
	int (*metric)(const VirtualQDesignerPropertyEditorInterface* self, int param1);
	void (*initPainter)(const VirtualQDesignerPropertyEditorInterface* self, QPainter* painter);
	QPaintDevice* (*redirected)(const VirtualQDesignerPropertyEditorInterface* self, QPoint* offset);
	QPainter* (*sharedPainter)(const VirtualQDesignerPropertyEditorInterface* self);
	void (*inputMethodEvent)(VirtualQDesignerPropertyEditorInterface* self, QInputMethodEvent* param1);
	QVariant* (*inputMethodQuery)(const VirtualQDesignerPropertyEditorInterface* self, int param1);
	bool (*focusNextPrevChild)(VirtualQDesignerPropertyEditorInterface* self, bool next);
	bool (*eventFilter)(VirtualQDesignerPropertyEditorInterface* self, QObject* watched, QEvent* event);
	void (*timerEvent)(VirtualQDesignerPropertyEditorInterface* self, QTimerEvent* event);
	void (*childEvent)(VirtualQDesignerPropertyEditorInterface* self, QChildEvent* event);
	void (*customEvent)(VirtualQDesignerPropertyEditorInterface* self, QEvent* event);
	void (*connectNotify)(VirtualQDesignerPropertyEditorInterface* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQDesignerPropertyEditorInterface* self, QMetaMethod* signal);
}QDesignerPropertyEditorInterface_VTable;

void* QDesignerPropertyEditorInterface_vdata(VirtualQDesignerPropertyEditorInterface* self);
VirtualQDesignerPropertyEditorInterface* vdata_QDesignerPropertyEditorInterface(void* vdata);

VirtualQDesignerPropertyEditorInterface* QDesignerPropertyEditorInterface_new(const QDesignerPropertyEditorInterface_VTable* vtbl, size_t vdata, QWidget* parent);
VirtualQDesignerPropertyEditorInterface* QDesignerPropertyEditorInterface_new2(const QDesignerPropertyEditorInterface_VTable* vtbl, size_t vdata, QWidget* parent, int flags);

void QDesignerPropertyEditorInterface_virtbase(QDesignerPropertyEditorInterface* src, QWidget** outptr_QWidget);
QMetaObject* QDesignerPropertyEditorInterface_metaObject(const QDesignerPropertyEditorInterface* self);
void* QDesignerPropertyEditorInterface_metacast(QDesignerPropertyEditorInterface* self, const char* param1);
int QDesignerPropertyEditorInterface_metacall(QDesignerPropertyEditorInterface* self, int param1, int param2, void** param3);
struct seaqt_string QDesignerPropertyEditorInterface_tr(const char* s);
bool QDesignerPropertyEditorInterface_isReadOnly(const QDesignerPropertyEditorInterface* self);
QObject* QDesignerPropertyEditorInterface_object(const QDesignerPropertyEditorInterface* self);
struct seaqt_string QDesignerPropertyEditorInterface_currentPropertyName(const QDesignerPropertyEditorInterface* self);
void QDesignerPropertyEditorInterface_propertyChanged(QDesignerPropertyEditorInterface* self, struct seaqt_string name, QVariant* value);
void QDesignerPropertyEditorInterface_connect_propertyChanged(QDesignerPropertyEditorInterface* self, intptr_t slot, void (*callback)(intptr_t, struct seaqt_string, QVariant*), void (*release)(intptr_t));
void QDesignerPropertyEditorInterface_setObject(QDesignerPropertyEditorInterface* self, QObject* object);
void QDesignerPropertyEditorInterface_setPropertyValue(QDesignerPropertyEditorInterface* self, struct seaqt_string name, QVariant* value, bool changed);
void QDesignerPropertyEditorInterface_setReadOnly(QDesignerPropertyEditorInterface* self, bool readOnly);
struct seaqt_string QDesignerPropertyEditorInterface_tr2(const char* s, const char* c);
struct seaqt_string QDesignerPropertyEditorInterface_tr3(const char* s, const char* c, int n);

QMetaObject* QDesignerPropertyEditorInterface_virtualbase_metaObject(const VirtualQDesignerPropertyEditorInterface* self);
void* QDesignerPropertyEditorInterface_virtualbase_metacast(VirtualQDesignerPropertyEditorInterface* self, const char* param1);
int QDesignerPropertyEditorInterface_virtualbase_metacall(VirtualQDesignerPropertyEditorInterface* self, int param1, int param2, void** param3);
bool QDesignerPropertyEditorInterface_virtualbase_isReadOnly(const VirtualQDesignerPropertyEditorInterface* self);
QObject* QDesignerPropertyEditorInterface_virtualbase_object(const VirtualQDesignerPropertyEditorInterface* self);
struct seaqt_string QDesignerPropertyEditorInterface_virtualbase_currentPropertyName(const VirtualQDesignerPropertyEditorInterface* self);
void QDesignerPropertyEditorInterface_virtualbase_setObject(VirtualQDesignerPropertyEditorInterface* self, QObject* object);
void QDesignerPropertyEditorInterface_virtualbase_setPropertyValue(VirtualQDesignerPropertyEditorInterface* self, struct seaqt_string name, QVariant* value, bool changed);
void QDesignerPropertyEditorInterface_virtualbase_setReadOnly(VirtualQDesignerPropertyEditorInterface* self, bool readOnly);
int QDesignerPropertyEditorInterface_virtualbase_devType(const VirtualQDesignerPropertyEditorInterface* self);
void QDesignerPropertyEditorInterface_virtualbase_setVisible(VirtualQDesignerPropertyEditorInterface* self, bool visible);
QSize* QDesignerPropertyEditorInterface_virtualbase_sizeHint(const VirtualQDesignerPropertyEditorInterface* self);
QSize* QDesignerPropertyEditorInterface_virtualbase_minimumSizeHint(const VirtualQDesignerPropertyEditorInterface* self);
int QDesignerPropertyEditorInterface_virtualbase_heightForWidth(const VirtualQDesignerPropertyEditorInterface* self, int param1);
bool QDesignerPropertyEditorInterface_virtualbase_hasHeightForWidth(const VirtualQDesignerPropertyEditorInterface* self);
QPaintEngine* QDesignerPropertyEditorInterface_virtualbase_paintEngine(const VirtualQDesignerPropertyEditorInterface* self);
bool QDesignerPropertyEditorInterface_virtualbase_event(VirtualQDesignerPropertyEditorInterface* self, QEvent* event);
void QDesignerPropertyEditorInterface_virtualbase_mousePressEvent(VirtualQDesignerPropertyEditorInterface* self, QMouseEvent* event);
void QDesignerPropertyEditorInterface_virtualbase_mouseReleaseEvent(VirtualQDesignerPropertyEditorInterface* self, QMouseEvent* event);
void QDesignerPropertyEditorInterface_virtualbase_mouseDoubleClickEvent(VirtualQDesignerPropertyEditorInterface* self, QMouseEvent* event);
void QDesignerPropertyEditorInterface_virtualbase_mouseMoveEvent(VirtualQDesignerPropertyEditorInterface* self, QMouseEvent* event);
void QDesignerPropertyEditorInterface_virtualbase_wheelEvent(VirtualQDesignerPropertyEditorInterface* self, QWheelEvent* event);
void QDesignerPropertyEditorInterface_virtualbase_keyPressEvent(VirtualQDesignerPropertyEditorInterface* self, QKeyEvent* event);
void QDesignerPropertyEditorInterface_virtualbase_keyReleaseEvent(VirtualQDesignerPropertyEditorInterface* self, QKeyEvent* event);
void QDesignerPropertyEditorInterface_virtualbase_focusInEvent(VirtualQDesignerPropertyEditorInterface* self, QFocusEvent* event);
void QDesignerPropertyEditorInterface_virtualbase_focusOutEvent(VirtualQDesignerPropertyEditorInterface* self, QFocusEvent* event);
void QDesignerPropertyEditorInterface_virtualbase_enterEvent(VirtualQDesignerPropertyEditorInterface* self, QEnterEvent* event);
void QDesignerPropertyEditorInterface_virtualbase_leaveEvent(VirtualQDesignerPropertyEditorInterface* self, QEvent* event);
void QDesignerPropertyEditorInterface_virtualbase_paintEvent(VirtualQDesignerPropertyEditorInterface* self, QPaintEvent* event);
void QDesignerPropertyEditorInterface_virtualbase_moveEvent(VirtualQDesignerPropertyEditorInterface* self, QMoveEvent* event);
void QDesignerPropertyEditorInterface_virtualbase_resizeEvent(VirtualQDesignerPropertyEditorInterface* self, QResizeEvent* event);
void QDesignerPropertyEditorInterface_virtualbase_closeEvent(VirtualQDesignerPropertyEditorInterface* self, QCloseEvent* event);
void QDesignerPropertyEditorInterface_virtualbase_contextMenuEvent(VirtualQDesignerPropertyEditorInterface* self, QContextMenuEvent* event);
void QDesignerPropertyEditorInterface_virtualbase_tabletEvent(VirtualQDesignerPropertyEditorInterface* self, QTabletEvent* event);
void QDesignerPropertyEditorInterface_virtualbase_actionEvent(VirtualQDesignerPropertyEditorInterface* self, QActionEvent* event);
void QDesignerPropertyEditorInterface_virtualbase_dragEnterEvent(VirtualQDesignerPropertyEditorInterface* self, QDragEnterEvent* event);
void QDesignerPropertyEditorInterface_virtualbase_dragMoveEvent(VirtualQDesignerPropertyEditorInterface* self, QDragMoveEvent* event);
void QDesignerPropertyEditorInterface_virtualbase_dragLeaveEvent(VirtualQDesignerPropertyEditorInterface* self, QDragLeaveEvent* event);
void QDesignerPropertyEditorInterface_virtualbase_dropEvent(VirtualQDesignerPropertyEditorInterface* self, QDropEvent* event);
void QDesignerPropertyEditorInterface_virtualbase_showEvent(VirtualQDesignerPropertyEditorInterface* self, QShowEvent* event);
void QDesignerPropertyEditorInterface_virtualbase_hideEvent(VirtualQDesignerPropertyEditorInterface* self, QHideEvent* event);
bool QDesignerPropertyEditorInterface_virtualbase_nativeEvent(VirtualQDesignerPropertyEditorInterface* self, struct seaqt_string eventType, void* message, intptr_t* result);
void QDesignerPropertyEditorInterface_virtualbase_changeEvent(VirtualQDesignerPropertyEditorInterface* self, QEvent* param1);
int QDesignerPropertyEditorInterface_virtualbase_metric(const VirtualQDesignerPropertyEditorInterface* self, int param1);
void QDesignerPropertyEditorInterface_virtualbase_initPainter(const VirtualQDesignerPropertyEditorInterface* self, QPainter* painter);
QPaintDevice* QDesignerPropertyEditorInterface_virtualbase_redirected(const VirtualQDesignerPropertyEditorInterface* self, QPoint* offset);
QPainter* QDesignerPropertyEditorInterface_virtualbase_sharedPainter(const VirtualQDesignerPropertyEditorInterface* self);
void QDesignerPropertyEditorInterface_virtualbase_inputMethodEvent(VirtualQDesignerPropertyEditorInterface* self, QInputMethodEvent* param1);
QVariant* QDesignerPropertyEditorInterface_virtualbase_inputMethodQuery(const VirtualQDesignerPropertyEditorInterface* self, int param1);
bool QDesignerPropertyEditorInterface_virtualbase_focusNextPrevChild(VirtualQDesignerPropertyEditorInterface* self, bool next);
bool QDesignerPropertyEditorInterface_virtualbase_eventFilter(VirtualQDesignerPropertyEditorInterface* self, QObject* watched, QEvent* event);
void QDesignerPropertyEditorInterface_virtualbase_timerEvent(VirtualQDesignerPropertyEditorInterface* self, QTimerEvent* event);
void QDesignerPropertyEditorInterface_virtualbase_childEvent(VirtualQDesignerPropertyEditorInterface* self, QChildEvent* event);
void QDesignerPropertyEditorInterface_virtualbase_customEvent(VirtualQDesignerPropertyEditorInterface* self, QEvent* event);
void QDesignerPropertyEditorInterface_virtualbase_connectNotify(VirtualQDesignerPropertyEditorInterface* self, QMetaMethod* signal);
void QDesignerPropertyEditorInterface_virtualbase_disconnectNotify(VirtualQDesignerPropertyEditorInterface* self, QMetaMethod* signal);

void QDesignerPropertyEditorInterface_protectedbase_updateMicroFocus(VirtualQDesignerPropertyEditorInterface* self);
void QDesignerPropertyEditorInterface_protectedbase_create(VirtualQDesignerPropertyEditorInterface* self);
void QDesignerPropertyEditorInterface_protectedbase_destroy(VirtualQDesignerPropertyEditorInterface* self);
bool QDesignerPropertyEditorInterface_protectedbase_focusNextChild(VirtualQDesignerPropertyEditorInterface* self);
bool QDesignerPropertyEditorInterface_protectedbase_focusPreviousChild(VirtualQDesignerPropertyEditorInterface* self);
QObject* QDesignerPropertyEditorInterface_protectedbase_sender(const VirtualQDesignerPropertyEditorInterface* self);
int QDesignerPropertyEditorInterface_protectedbase_senderSignalIndex(const VirtualQDesignerPropertyEditorInterface* self);
int QDesignerPropertyEditorInterface_protectedbase_receivers(const VirtualQDesignerPropertyEditorInterface* self, const char* signal);
bool QDesignerPropertyEditorInterface_protectedbase_isSignalConnected(const VirtualQDesignerPropertyEditorInterface* self, QMetaMethod* signal);

const QMetaObject* QDesignerPropertyEditorInterface_staticMetaObject();
void QDesignerPropertyEditorInterface_delete(QDesignerPropertyEditorInterface* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
