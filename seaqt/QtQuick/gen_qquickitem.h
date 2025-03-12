#pragma once
#ifndef SEAQT_QTQUICK_GEN_QQUICKITEM_H
#define SEAQT_QTQUICK_GEN_QQUICKITEM_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt/libseaqt.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QChildEvent;
class QCursor;
class QDragEnterEvent;
class QDragLeaveEvent;
class QDragMoveEvent;
class QDropEvent;
class QEvent;
class QFocusEvent;
class QHoverEvent;
class QInputMethodEvent;
class QJSValue;
class QKeyEvent;
class QMatrix4x4;
class QMetaMethod;
class QMetaObject;
class QMouseEvent;
class QObject;
class QPointF;
class QQmlParserStatus;
class QQuickItem;
#if defined(WORKAROUND_INNER_CLASS_DEFINITION_QQuickItem__ItemChangeData)
typedef QQuickItem::ItemChangeData QQuickItem__ItemChangeData;
#else
class QQuickItem__ItemChangeData;
#endif
#if defined(WORKAROUND_INNER_CLASS_DEFINITION_QQuickItem__UpdatePaintNodeData)
typedef QQuickItem::UpdatePaintNodeData QQuickItem__UpdatePaintNodeData;
#else
class QQuickItem__UpdatePaintNodeData;
#endif
class QQuickTransform;
class QQuickWindow;
class QRectF;
class QSGNode;
class QSGTextureProvider;
class QSize;
class QSizeF;
class QTimerEvent;
class QTouchEvent;
class QTransform;
class QVariant;
class QWheelEvent;
#else
typedef struct QChildEvent QChildEvent;
typedef struct QCursor QCursor;
typedef struct QDragEnterEvent QDragEnterEvent;
typedef struct QDragLeaveEvent QDragLeaveEvent;
typedef struct QDragMoveEvent QDragMoveEvent;
typedef struct QDropEvent QDropEvent;
typedef struct QEvent QEvent;
typedef struct QFocusEvent QFocusEvent;
typedef struct QHoverEvent QHoverEvent;
typedef struct QInputMethodEvent QInputMethodEvent;
typedef struct QJSValue QJSValue;
typedef struct QKeyEvent QKeyEvent;
typedef struct QMatrix4x4 QMatrix4x4;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QMouseEvent QMouseEvent;
typedef struct QObject QObject;
typedef struct QPointF QPointF;
typedef struct QQmlParserStatus QQmlParserStatus;
typedef struct QQuickItem QQuickItem;
typedef struct QQuickItem__ItemChangeData QQuickItem__ItemChangeData;
typedef struct QQuickItem__UpdatePaintNodeData QQuickItem__UpdatePaintNodeData;
typedef struct QQuickTransform QQuickTransform;
typedef struct QQuickWindow QQuickWindow;
typedef struct QRectF QRectF;
typedef struct QSGNode QSGNode;
typedef struct QSGTextureProvider QSGTextureProvider;
typedef struct QSize QSize;
typedef struct QSizeF QSizeF;
typedef struct QTimerEvent QTimerEvent;
typedef struct QTouchEvent QTouchEvent;
typedef struct QTransform QTransform;
typedef struct QVariant QVariant;
typedef struct QWheelEvent QWheelEvent;
#endif

typedef struct VirtualQQuickTransform VirtualQQuickTransform;
typedef struct QQuickTransform_VTable{
	void (*destructor)(VirtualQQuickTransform* self);
	QMetaObject* (*metaObject)(const VirtualQQuickTransform* self);
	void* (*metacast)(VirtualQQuickTransform* self, const char* param1);
	int (*metacall)(VirtualQQuickTransform* self, int param1, int param2, void** param3);
	void (*applyTo)(const VirtualQQuickTransform* self, QMatrix4x4* matrix);
	bool (*event)(VirtualQQuickTransform* self, QEvent* event);
	bool (*eventFilter)(VirtualQQuickTransform* self, QObject* watched, QEvent* event);
	void (*timerEvent)(VirtualQQuickTransform* self, QTimerEvent* event);
	void (*childEvent)(VirtualQQuickTransform* self, QChildEvent* event);
	void (*customEvent)(VirtualQQuickTransform* self, QEvent* event);
	void (*connectNotify)(VirtualQQuickTransform* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQQuickTransform* self, QMetaMethod* signal);
}QQuickTransform_VTable;

const QQuickTransform_VTable* QQuickTransform_vtbl(const VirtualQQuickTransform* self);
void* QQuickTransform_vdata(const VirtualQQuickTransform* self);
void QQuickTransform_setVdata(VirtualQQuickTransform* self, void* vdata);

VirtualQQuickTransform* QQuickTransform_new(const QQuickTransform_VTable* vtbl, void* vdata);
VirtualQQuickTransform* QQuickTransform_new2(const QQuickTransform_VTable* vtbl, void* vdata, QObject* parent);

void QQuickTransform_virtbase(QQuickTransform* src, QObject** outptr_QObject);
QMetaObject* QQuickTransform_metaObject(const QQuickTransform* self);
void* QQuickTransform_metacast(QQuickTransform* self, const char* param1);
int QQuickTransform_metacall(QQuickTransform* self, int param1, int param2, void** param3);
struct miqt_string QQuickTransform_tr(const char* s);
void QQuickTransform_appendToItem(QQuickTransform* self, QQuickItem* param1);
void QQuickTransform_prependToItem(QQuickTransform* self, QQuickItem* param1);
void QQuickTransform_applyTo(const QQuickTransform* self, QMatrix4x4* matrix);
struct miqt_string QQuickTransform_tr2(const char* s, const char* c);
struct miqt_string QQuickTransform_tr3(const char* s, const char* c, int n);

QMetaObject* QQuickTransform_virtualbase_metaObject(const VirtualQQuickTransform* self);
void* QQuickTransform_virtualbase_metacast(VirtualQQuickTransform* self, const char* param1);
int QQuickTransform_virtualbase_metacall(VirtualQQuickTransform* self, int param1, int param2, void** param3);
void QQuickTransform_virtualbase_applyTo(const VirtualQQuickTransform* self, QMatrix4x4* matrix);
bool QQuickTransform_virtualbase_event(VirtualQQuickTransform* self, QEvent* event);
bool QQuickTransform_virtualbase_eventFilter(VirtualQQuickTransform* self, QObject* watched, QEvent* event);
void QQuickTransform_virtualbase_timerEvent(VirtualQQuickTransform* self, QTimerEvent* event);
void QQuickTransform_virtualbase_childEvent(VirtualQQuickTransform* self, QChildEvent* event);
void QQuickTransform_virtualbase_customEvent(VirtualQQuickTransform* self, QEvent* event);
void QQuickTransform_virtualbase_connectNotify(VirtualQQuickTransform* self, QMetaMethod* signal);
void QQuickTransform_virtualbase_disconnectNotify(VirtualQQuickTransform* self, QMetaMethod* signal);

void QQuickTransform_protectedbase_update(VirtualQQuickTransform* self);
QObject* QQuickTransform_protectedbase_sender(const VirtualQQuickTransform* self);
int QQuickTransform_protectedbase_senderSignalIndex(const VirtualQQuickTransform* self);
int QQuickTransform_protectedbase_receivers(const VirtualQQuickTransform* self, const char* signal);
bool QQuickTransform_protectedbase_isSignalConnected(const VirtualQQuickTransform* self, QMetaMethod* signal);

const QMetaObject* QQuickTransform_staticMetaObject();
void QQuickTransform_delete(QQuickTransform* self);

typedef struct VirtualQQuickItem VirtualQQuickItem;
typedef struct QQuickItem_VTable{
	void (*destructor)(VirtualQQuickItem* self);
	QMetaObject* (*metaObject)(const VirtualQQuickItem* self);
	void* (*metacast)(VirtualQQuickItem* self, const char* param1);
	int (*metacall)(VirtualQQuickItem* self, int param1, int param2, void** param3);
	QRectF* (*boundingRect)(const VirtualQQuickItem* self);
	QRectF* (*clipRect)(const VirtualQQuickItem* self);
	bool (*contains)(const VirtualQQuickItem* self, QPointF* point);
	QVariant* (*inputMethodQuery)(const VirtualQQuickItem* self, int query);
	bool (*isTextureProvider)(const VirtualQQuickItem* self);
	QSGTextureProvider* (*textureProvider)(const VirtualQQuickItem* self);
	bool (*event)(VirtualQQuickItem* self, QEvent* param1);
	void (*itemChange)(VirtualQQuickItem* self, int param1, QQuickItem__ItemChangeData* param2);
	void (*geometryChange)(VirtualQQuickItem* self, QRectF* newGeometry, QRectF* oldGeometry);
	void (*classBegin)(VirtualQQuickItem* self);
	void (*componentComplete)(VirtualQQuickItem* self);
	void (*keyPressEvent)(VirtualQQuickItem* self, QKeyEvent* event);
	void (*keyReleaseEvent)(VirtualQQuickItem* self, QKeyEvent* event);
	void (*inputMethodEvent)(VirtualQQuickItem* self, QInputMethodEvent* param1);
	void (*focusInEvent)(VirtualQQuickItem* self, QFocusEvent* param1);
	void (*focusOutEvent)(VirtualQQuickItem* self, QFocusEvent* param1);
	void (*mousePressEvent)(VirtualQQuickItem* self, QMouseEvent* event);
	void (*mouseMoveEvent)(VirtualQQuickItem* self, QMouseEvent* event);
	void (*mouseReleaseEvent)(VirtualQQuickItem* self, QMouseEvent* event);
	void (*mouseDoubleClickEvent)(VirtualQQuickItem* self, QMouseEvent* event);
	void (*mouseUngrabEvent)(VirtualQQuickItem* self);
	void (*touchUngrabEvent)(VirtualQQuickItem* self);
	void (*wheelEvent)(VirtualQQuickItem* self, QWheelEvent* event);
	void (*touchEvent)(VirtualQQuickItem* self, QTouchEvent* event);
	void (*hoverEnterEvent)(VirtualQQuickItem* self, QHoverEvent* event);
	void (*hoverMoveEvent)(VirtualQQuickItem* self, QHoverEvent* event);
	void (*hoverLeaveEvent)(VirtualQQuickItem* self, QHoverEvent* event);
	void (*dragEnterEvent)(VirtualQQuickItem* self, QDragEnterEvent* param1);
	void (*dragMoveEvent)(VirtualQQuickItem* self, QDragMoveEvent* param1);
	void (*dragLeaveEvent)(VirtualQQuickItem* self, QDragLeaveEvent* param1);
	void (*dropEvent)(VirtualQQuickItem* self, QDropEvent* param1);
	bool (*childMouseEventFilter)(VirtualQQuickItem* self, QQuickItem* param1, QEvent* param2);
	QSGNode* (*updatePaintNode)(VirtualQQuickItem* self, QSGNode* param1, QQuickItem__UpdatePaintNodeData* param2);
	void (*releaseResources)(VirtualQQuickItem* self);
	void (*updatePolish)(VirtualQQuickItem* self);
	bool (*eventFilter)(VirtualQQuickItem* self, QObject* watched, QEvent* event);
	void (*timerEvent)(VirtualQQuickItem* self, QTimerEvent* event);
	void (*childEvent)(VirtualQQuickItem* self, QChildEvent* event);
	void (*customEvent)(VirtualQQuickItem* self, QEvent* event);
	void (*connectNotify)(VirtualQQuickItem* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQQuickItem* self, QMetaMethod* signal);
}QQuickItem_VTable;

const QQuickItem_VTable* QQuickItem_vtbl(const VirtualQQuickItem* self);
void* QQuickItem_vdata(const VirtualQQuickItem* self);
void QQuickItem_setVdata(VirtualQQuickItem* self, void* vdata);

VirtualQQuickItem* QQuickItem_new(const QQuickItem_VTable* vtbl, void* vdata);
VirtualQQuickItem* QQuickItem_new2(const QQuickItem_VTable* vtbl, void* vdata, QQuickItem* parent);

void QQuickItem_virtbase(QQuickItem* src, QObject** outptr_QObject, QQmlParserStatus** outptr_QQmlParserStatus);
QMetaObject* QQuickItem_metaObject(const QQuickItem* self);
void* QQuickItem_metacast(QQuickItem* self, const char* param1);
int QQuickItem_metacall(QQuickItem* self, int param1, int param2, void** param3);
struct miqt_string QQuickItem_tr(const char* s);
QQuickWindow* QQuickItem_window(const QQuickItem* self);
QQuickItem* QQuickItem_parentItem(const QQuickItem* self);
void QQuickItem_setParentItem(QQuickItem* self, QQuickItem* parent);
void QQuickItem_stackBefore(QQuickItem* self, QQuickItem* param1);
void QQuickItem_stackAfter(QQuickItem* self, QQuickItem* param1);
QRectF* QQuickItem_childrenRect(QQuickItem* self);
struct miqt_array /* of QQuickItem* */  QQuickItem_childItems(const QQuickItem* self);
bool QQuickItem_clip(const QQuickItem* self);
void QQuickItem_setClip(QQuickItem* self, bool clip);
struct miqt_string QQuickItem_state(const QQuickItem* self);
void QQuickItem_setState(QQuickItem* self, struct miqt_string state);
double QQuickItem_baselineOffset(const QQuickItem* self);
void QQuickItem_setBaselineOffset(QQuickItem* self, double baselineOffset);
double QQuickItem_x(const QQuickItem* self);
double QQuickItem_y(const QQuickItem* self);
QPointF* QQuickItem_position(const QQuickItem* self);
void QQuickItem_setX(QQuickItem* self, double x);
void QQuickItem_setY(QQuickItem* self, double y);
void QQuickItem_setPosition(QQuickItem* self, QPointF* position);
double QQuickItem_width(const QQuickItem* self);
void QQuickItem_setWidth(QQuickItem* self, double width);
void QQuickItem_resetWidth(QQuickItem* self);
void QQuickItem_setImplicitWidth(QQuickItem* self, double implicitWidth);
double QQuickItem_implicitWidth(const QQuickItem* self);
double QQuickItem_height(const QQuickItem* self);
void QQuickItem_setHeight(QQuickItem* self, double height);
void QQuickItem_resetHeight(QQuickItem* self);
void QQuickItem_setImplicitHeight(QQuickItem* self, double implicitHeight);
double QQuickItem_implicitHeight(const QQuickItem* self);
QSizeF* QQuickItem_size(const QQuickItem* self);
void QQuickItem_setSize(QQuickItem* self, QSizeF* size);
int QQuickItem_transformOrigin(const QQuickItem* self);
void QQuickItem_setTransformOrigin(QQuickItem* self, int transformOrigin);
QPointF* QQuickItem_transformOriginPoint(const QQuickItem* self);
void QQuickItem_setTransformOriginPoint(QQuickItem* self, QPointF* transformOriginPoint);
double QQuickItem_z(const QQuickItem* self);
void QQuickItem_setZ(QQuickItem* self, double z);
double QQuickItem_rotation(const QQuickItem* self);
void QQuickItem_setRotation(QQuickItem* self, double rotation);
double QQuickItem_scale(const QQuickItem* self);
void QQuickItem_setScale(QQuickItem* self, double scale);
double QQuickItem_opacity(const QQuickItem* self);
void QQuickItem_setOpacity(QQuickItem* self, double opacity);
bool QQuickItem_isVisible(const QQuickItem* self);
void QQuickItem_setVisible(QQuickItem* self, bool visible);
bool QQuickItem_isEnabled(const QQuickItem* self);
void QQuickItem_setEnabled(QQuickItem* self, bool enabled);
bool QQuickItem_smooth(const QQuickItem* self);
void QQuickItem_setSmooth(QQuickItem* self, bool smooth);
bool QQuickItem_activeFocusOnTab(const QQuickItem* self);
void QQuickItem_setActiveFocusOnTab(QQuickItem* self, bool activeFocusOnTab);
bool QQuickItem_antialiasing(const QQuickItem* self);
void QQuickItem_setAntialiasing(QQuickItem* self, bool antialiasing);
void QQuickItem_resetAntialiasing(QQuickItem* self);
int QQuickItem_flags(const QQuickItem* self);
void QQuickItem_setFlag(QQuickItem* self, int flag);
void QQuickItem_setFlags(QQuickItem* self, int flags);
QRectF* QQuickItem_boundingRect(const QQuickItem* self);
QRectF* QQuickItem_clipRect(const QQuickItem* self);
QQuickItem* QQuickItem_viewportItem(const QQuickItem* self);
bool QQuickItem_hasActiveFocus(const QQuickItem* self);
bool QQuickItem_hasFocus(const QQuickItem* self);
void QQuickItem_setFocus(QQuickItem* self, bool focus);
void QQuickItem_setFocus2(QQuickItem* self, bool focus, int reason);
bool QQuickItem_isFocusScope(const QQuickItem* self);
QQuickItem* QQuickItem_scopedFocusItem(const QQuickItem* self);
bool QQuickItem_isAncestorOf(const QQuickItem* self, QQuickItem* child);
int QQuickItem_acceptedMouseButtons(const QQuickItem* self);
void QQuickItem_setAcceptedMouseButtons(QQuickItem* self, int buttons);
bool QQuickItem_acceptHoverEvents(const QQuickItem* self);
void QQuickItem_setAcceptHoverEvents(QQuickItem* self, bool enabled);
bool QQuickItem_acceptTouchEvents(const QQuickItem* self);
void QQuickItem_setAcceptTouchEvents(QQuickItem* self, bool accept);
QCursor* QQuickItem_cursor(const QQuickItem* self);
void QQuickItem_setCursor(QQuickItem* self, QCursor* cursor);
void QQuickItem_unsetCursor(QQuickItem* self);
bool QQuickItem_isUnderMouse(const QQuickItem* self);
void QQuickItem_grabMouse(QQuickItem* self);
void QQuickItem_ungrabMouse(QQuickItem* self);
bool QQuickItem_keepMouseGrab(const QQuickItem* self);
void QQuickItem_setKeepMouseGrab(QQuickItem* self, bool keepMouseGrab);
bool QQuickItem_filtersChildMouseEvents(const QQuickItem* self);
void QQuickItem_setFiltersChildMouseEvents(QQuickItem* self, bool filter);
void QQuickItem_grabTouchPoints(QQuickItem* self, struct miqt_array /* of int */  ids);
void QQuickItem_ungrabTouchPoints(QQuickItem* self);
bool QQuickItem_keepTouchGrab(const QQuickItem* self);
void QQuickItem_setKeepTouchGrab(QQuickItem* self, bool keepTouchGrab);
bool QQuickItem_grabToImage(QQuickItem* self, QJSValue* callback);
bool QQuickItem_contains(const QQuickItem* self, QPointF* point);
QObject* QQuickItem_containmentMask(const QQuickItem* self);
void QQuickItem_setContainmentMask(QQuickItem* self, QObject* mask);
QTransform* QQuickItem_itemTransform(const QQuickItem* self, QQuickItem* param1, bool* param2);
QPointF* QQuickItem_mapToItem(const QQuickItem* self, QQuickItem* item, QPointF* point);
QPointF* QQuickItem_mapToScene(const QQuickItem* self, QPointF* point);
QPointF* QQuickItem_mapToGlobal(const QQuickItem* self, QPointF* point);
QRectF* QQuickItem_mapRectToItem(const QQuickItem* self, QQuickItem* item, QRectF* rect);
QRectF* QQuickItem_mapRectToScene(const QQuickItem* self, QRectF* rect);
QPointF* QQuickItem_mapFromItem(const QQuickItem* self, QQuickItem* item, QPointF* point);
QPointF* QQuickItem_mapFromScene(const QQuickItem* self, QPointF* point);
QPointF* QQuickItem_mapFromGlobal(const QQuickItem* self, QPointF* point);
QRectF* QQuickItem_mapRectFromItem(const QQuickItem* self, QQuickItem* item, QRectF* rect);
QRectF* QQuickItem_mapRectFromScene(const QQuickItem* self, QRectF* rect);
void QQuickItem_polish(QQuickItem* self);
void QQuickItem_forceActiveFocus(QQuickItem* self);
void QQuickItem_forceActiveFocusWithReason(QQuickItem* self, int reason);
QQuickItem* QQuickItem_nextItemInFocusChain(QQuickItem* self);
QQuickItem* QQuickItem_childAt(const QQuickItem* self, double x, double y);
void QQuickItem_ensurePolished(QQuickItem* self);
void QQuickItem_dumpItemTree(const QQuickItem* self);
QVariant* QQuickItem_inputMethodQuery(const QQuickItem* self, int query);
bool QQuickItem_isTextureProvider(const QQuickItem* self);
QSGTextureProvider* QQuickItem_textureProvider(const QQuickItem* self);
void QQuickItem_update(QQuickItem* self);
void QQuickItem_childrenRectChanged(QQuickItem* self, QRectF* param1);
void QQuickItem_connect_childrenRectChanged(VirtualQQuickItem* self, intptr_t slot, void (*callback)(intptr_t, QRectF*), void (*release)(intptr_t));
void QQuickItem_baselineOffsetChanged(QQuickItem* self, double param1);
void QQuickItem_connect_baselineOffsetChanged(VirtualQQuickItem* self, intptr_t slot, void (*callback)(intptr_t, double), void (*release)(intptr_t));
void QQuickItem_stateChanged(QQuickItem* self, struct miqt_string param1);
void QQuickItem_connect_stateChanged(VirtualQQuickItem* self, intptr_t slot, void (*callback)(intptr_t, struct miqt_string), void (*release)(intptr_t));
void QQuickItem_focusChanged(QQuickItem* self, bool param1);
void QQuickItem_connect_focusChanged(VirtualQQuickItem* self, intptr_t slot, void (*callback)(intptr_t, bool), void (*release)(intptr_t));
void QQuickItem_activeFocusChanged(QQuickItem* self, bool param1);
void QQuickItem_connect_activeFocusChanged(VirtualQQuickItem* self, intptr_t slot, void (*callback)(intptr_t, bool), void (*release)(intptr_t));
void QQuickItem_activeFocusOnTabChanged(QQuickItem* self, bool param1);
void QQuickItem_connect_activeFocusOnTabChanged(VirtualQQuickItem* self, intptr_t slot, void (*callback)(intptr_t, bool), void (*release)(intptr_t));
void QQuickItem_parentChanged(QQuickItem* self, QQuickItem* param1);
void QQuickItem_connect_parentChanged(VirtualQQuickItem* self, intptr_t slot, void (*callback)(intptr_t, QQuickItem*), void (*release)(intptr_t));
void QQuickItem_transformOriginChanged(QQuickItem* self, int param1);
void QQuickItem_connect_transformOriginChanged(VirtualQQuickItem* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t));
void QQuickItem_smoothChanged(QQuickItem* self, bool param1);
void QQuickItem_connect_smoothChanged(VirtualQQuickItem* self, intptr_t slot, void (*callback)(intptr_t, bool), void (*release)(intptr_t));
void QQuickItem_antialiasingChanged(QQuickItem* self, bool param1);
void QQuickItem_connect_antialiasingChanged(VirtualQQuickItem* self, intptr_t slot, void (*callback)(intptr_t, bool), void (*release)(intptr_t));
void QQuickItem_clipChanged(QQuickItem* self, bool param1);
void QQuickItem_connect_clipChanged(VirtualQQuickItem* self, intptr_t slot, void (*callback)(intptr_t, bool), void (*release)(intptr_t));
void QQuickItem_windowChanged(QQuickItem* self, QQuickWindow* window);
void QQuickItem_connect_windowChanged(VirtualQQuickItem* self, intptr_t slot, void (*callback)(intptr_t, QQuickWindow*), void (*release)(intptr_t));
void QQuickItem_childrenChanged(QQuickItem* self);
void QQuickItem_connect_childrenChanged(VirtualQQuickItem* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QQuickItem_opacityChanged(QQuickItem* self);
void QQuickItem_connect_opacityChanged(VirtualQQuickItem* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QQuickItem_enabledChanged(QQuickItem* self);
void QQuickItem_connect_enabledChanged(VirtualQQuickItem* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QQuickItem_visibleChanged(QQuickItem* self);
void QQuickItem_connect_visibleChanged(VirtualQQuickItem* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QQuickItem_visibleChildrenChanged(QQuickItem* self);
void QQuickItem_connect_visibleChildrenChanged(VirtualQQuickItem* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QQuickItem_rotationChanged(QQuickItem* self);
void QQuickItem_connect_rotationChanged(VirtualQQuickItem* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QQuickItem_scaleChanged(QQuickItem* self);
void QQuickItem_connect_scaleChanged(VirtualQQuickItem* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QQuickItem_xChanged(QQuickItem* self);
void QQuickItem_connect_xChanged(VirtualQQuickItem* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QQuickItem_yChanged(QQuickItem* self);
void QQuickItem_connect_yChanged(VirtualQQuickItem* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QQuickItem_widthChanged(QQuickItem* self);
void QQuickItem_connect_widthChanged(VirtualQQuickItem* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QQuickItem_heightChanged(QQuickItem* self);
void QQuickItem_connect_heightChanged(VirtualQQuickItem* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QQuickItem_zChanged(QQuickItem* self);
void QQuickItem_connect_zChanged(VirtualQQuickItem* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QQuickItem_implicitWidthChanged(QQuickItem* self);
void QQuickItem_connect_implicitWidthChanged(VirtualQQuickItem* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QQuickItem_implicitHeightChanged(QQuickItem* self);
void QQuickItem_connect_implicitHeightChanged(VirtualQQuickItem* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QQuickItem_containmentMaskChanged(QQuickItem* self);
void QQuickItem_connect_containmentMaskChanged(VirtualQQuickItem* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QQuickItem_paletteChanged(QQuickItem* self);
void QQuickItem_connect_paletteChanged(VirtualQQuickItem* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QQuickItem_paletteCreated(QQuickItem* self);
void QQuickItem_connect_paletteCreated(VirtualQQuickItem* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
bool QQuickItem_event(QQuickItem* self, QEvent* param1);
void QQuickItem_itemChange(QQuickItem* self, int param1, QQuickItem__ItemChangeData* param2);
void QQuickItem_geometryChange(QQuickItem* self, QRectF* newGeometry, QRectF* oldGeometry);
void QQuickItem_classBegin(QQuickItem* self);
void QQuickItem_componentComplete(QQuickItem* self);
void QQuickItem_keyPressEvent(QQuickItem* self, QKeyEvent* event);
void QQuickItem_keyReleaseEvent(QQuickItem* self, QKeyEvent* event);
void QQuickItem_inputMethodEvent(QQuickItem* self, QInputMethodEvent* param1);
void QQuickItem_focusInEvent(QQuickItem* self, QFocusEvent* param1);
void QQuickItem_focusOutEvent(QQuickItem* self, QFocusEvent* param1);
void QQuickItem_mousePressEvent(QQuickItem* self, QMouseEvent* event);
void QQuickItem_mouseMoveEvent(QQuickItem* self, QMouseEvent* event);
void QQuickItem_mouseReleaseEvent(QQuickItem* self, QMouseEvent* event);
void QQuickItem_mouseDoubleClickEvent(QQuickItem* self, QMouseEvent* event);
void QQuickItem_mouseUngrabEvent(QQuickItem* self);
void QQuickItem_touchUngrabEvent(QQuickItem* self);
void QQuickItem_wheelEvent(QQuickItem* self, QWheelEvent* event);
void QQuickItem_touchEvent(QQuickItem* self, QTouchEvent* event);
void QQuickItem_hoverEnterEvent(QQuickItem* self, QHoverEvent* event);
void QQuickItem_hoverMoveEvent(QQuickItem* self, QHoverEvent* event);
void QQuickItem_hoverLeaveEvent(QQuickItem* self, QHoverEvent* event);
void QQuickItem_dragEnterEvent(QQuickItem* self, QDragEnterEvent* param1);
void QQuickItem_dragMoveEvent(QQuickItem* self, QDragMoveEvent* param1);
void QQuickItem_dragLeaveEvent(QQuickItem* self, QDragLeaveEvent* param1);
void QQuickItem_dropEvent(QQuickItem* self, QDropEvent* param1);
bool QQuickItem_childMouseEventFilter(QQuickItem* self, QQuickItem* param1, QEvent* param2);
QSGNode* QQuickItem_updatePaintNode(QQuickItem* self, QSGNode* param1, QQuickItem__UpdatePaintNodeData* param2);
void QQuickItem_releaseResources(QQuickItem* self);
void QQuickItem_updatePolish(QQuickItem* self);
struct miqt_string QQuickItem_tr2(const char* s, const char* c);
struct miqt_string QQuickItem_tr3(const char* s, const char* c, int n);
void QQuickItem_setFlag2(QQuickItem* self, int flag, bool enabled);
bool QQuickItem_grabToImage22(QQuickItem* self, QJSValue* callback, QSize* targetSize);
QQuickItem* QQuickItem_nextItemInFocusChain1(QQuickItem* self, bool forward);

QMetaObject* QQuickItem_virtualbase_metaObject(const VirtualQQuickItem* self);
void* QQuickItem_virtualbase_metacast(VirtualQQuickItem* self, const char* param1);
int QQuickItem_virtualbase_metacall(VirtualQQuickItem* self, int param1, int param2, void** param3);
QRectF* QQuickItem_virtualbase_boundingRect(const VirtualQQuickItem* self);
QRectF* QQuickItem_virtualbase_clipRect(const VirtualQQuickItem* self);
bool QQuickItem_virtualbase_contains(const VirtualQQuickItem* self, QPointF* point);
QVariant* QQuickItem_virtualbase_inputMethodQuery(const VirtualQQuickItem* self, int query);
bool QQuickItem_virtualbase_isTextureProvider(const VirtualQQuickItem* self);
QSGTextureProvider* QQuickItem_virtualbase_textureProvider(const VirtualQQuickItem* self);
bool QQuickItem_virtualbase_event(VirtualQQuickItem* self, QEvent* param1);
void QQuickItem_virtualbase_itemChange(VirtualQQuickItem* self, int param1, QQuickItem__ItemChangeData* param2);
void QQuickItem_virtualbase_geometryChange(VirtualQQuickItem* self, QRectF* newGeometry, QRectF* oldGeometry);
void QQuickItem_virtualbase_classBegin(VirtualQQuickItem* self);
void QQuickItem_virtualbase_componentComplete(VirtualQQuickItem* self);
void QQuickItem_virtualbase_keyPressEvent(VirtualQQuickItem* self, QKeyEvent* event);
void QQuickItem_virtualbase_keyReleaseEvent(VirtualQQuickItem* self, QKeyEvent* event);
void QQuickItem_virtualbase_inputMethodEvent(VirtualQQuickItem* self, QInputMethodEvent* param1);
void QQuickItem_virtualbase_focusInEvent(VirtualQQuickItem* self, QFocusEvent* param1);
void QQuickItem_virtualbase_focusOutEvent(VirtualQQuickItem* self, QFocusEvent* param1);
void QQuickItem_virtualbase_mousePressEvent(VirtualQQuickItem* self, QMouseEvent* event);
void QQuickItem_virtualbase_mouseMoveEvent(VirtualQQuickItem* self, QMouseEvent* event);
void QQuickItem_virtualbase_mouseReleaseEvent(VirtualQQuickItem* self, QMouseEvent* event);
void QQuickItem_virtualbase_mouseDoubleClickEvent(VirtualQQuickItem* self, QMouseEvent* event);
void QQuickItem_virtualbase_mouseUngrabEvent(VirtualQQuickItem* self);
void QQuickItem_virtualbase_touchUngrabEvent(VirtualQQuickItem* self);
void QQuickItem_virtualbase_wheelEvent(VirtualQQuickItem* self, QWheelEvent* event);
void QQuickItem_virtualbase_touchEvent(VirtualQQuickItem* self, QTouchEvent* event);
void QQuickItem_virtualbase_hoverEnterEvent(VirtualQQuickItem* self, QHoverEvent* event);
void QQuickItem_virtualbase_hoverMoveEvent(VirtualQQuickItem* self, QHoverEvent* event);
void QQuickItem_virtualbase_hoverLeaveEvent(VirtualQQuickItem* self, QHoverEvent* event);
void QQuickItem_virtualbase_dragEnterEvent(VirtualQQuickItem* self, QDragEnterEvent* param1);
void QQuickItem_virtualbase_dragMoveEvent(VirtualQQuickItem* self, QDragMoveEvent* param1);
void QQuickItem_virtualbase_dragLeaveEvent(VirtualQQuickItem* self, QDragLeaveEvent* param1);
void QQuickItem_virtualbase_dropEvent(VirtualQQuickItem* self, QDropEvent* param1);
bool QQuickItem_virtualbase_childMouseEventFilter(VirtualQQuickItem* self, QQuickItem* param1, QEvent* param2);
QSGNode* QQuickItem_virtualbase_updatePaintNode(VirtualQQuickItem* self, QSGNode* param1, QQuickItem__UpdatePaintNodeData* param2);
void QQuickItem_virtualbase_releaseResources(VirtualQQuickItem* self);
void QQuickItem_virtualbase_updatePolish(VirtualQQuickItem* self);
bool QQuickItem_virtualbase_eventFilter(VirtualQQuickItem* self, QObject* watched, QEvent* event);
void QQuickItem_virtualbase_timerEvent(VirtualQQuickItem* self, QTimerEvent* event);
void QQuickItem_virtualbase_childEvent(VirtualQQuickItem* self, QChildEvent* event);
void QQuickItem_virtualbase_customEvent(VirtualQQuickItem* self, QEvent* event);
void QQuickItem_virtualbase_connectNotify(VirtualQQuickItem* self, QMetaMethod* signal);
void QQuickItem_virtualbase_disconnectNotify(VirtualQQuickItem* self, QMetaMethod* signal);

bool QQuickItem_protectedbase_isComponentComplete(const VirtualQQuickItem* self);
void QQuickItem_protectedbase_updateInputMethod(VirtualQQuickItem* self);
bool QQuickItem_protectedbase_widthValid(const VirtualQQuickItem* self);
bool QQuickItem_protectedbase_heightValid(const VirtualQQuickItem* self);
void QQuickItem_protectedbase_setImplicitSize(VirtualQQuickItem* self, double param1, double param2);
void QQuickItem_protectedbase_updateInputMethod1(VirtualQQuickItem* self, int queries);
QObject* QQuickItem_protectedbase_sender(const VirtualQQuickItem* self);
int QQuickItem_protectedbase_senderSignalIndex(const VirtualQQuickItem* self);
int QQuickItem_protectedbase_receivers(const VirtualQQuickItem* self, const char* signal);
bool QQuickItem_protectedbase_isSignalConnected(const VirtualQQuickItem* self, QMetaMethod* signal);

const QMetaObject* QQuickItem_staticMetaObject();
void QQuickItem_delete(QQuickItem* self);

QQuickItem__ItemChangeData* QQuickItem__ItemChangeData_new(QQuickItem* v);
QQuickItem__ItemChangeData* QQuickItem__ItemChangeData_new2(QQuickWindow* v);
QQuickItem__ItemChangeData* QQuickItem__ItemChangeData_new3(double v);
QQuickItem__ItemChangeData* QQuickItem__ItemChangeData_new4(bool v);

void QQuickItem__ItemChangeData_delete(QQuickItem__ItemChangeData* self);

void QQuickItem__UpdatePaintNodeData_delete(QQuickItem__UpdatePaintNodeData* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
