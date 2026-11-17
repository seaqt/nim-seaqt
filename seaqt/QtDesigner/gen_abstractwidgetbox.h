#pragma once
#ifndef SEAQT_QTDESIGNER_GEN_ABSTRACTWIDGETBOX_H
#define SEAQT_QTDESIGNER_GEN_ABSTRACTWIDGETBOX_H

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
class QDesignerDnDItemInterface;
class QDesignerWidgetBoxInterface;
#if defined(WORKAROUND_INNER_CLASS_DEFINITION_QDesignerWidgetBoxInterface__Category)
typedef QDesignerWidgetBoxInterface::Category QDesignerWidgetBoxInterface__Category;
#else
class QDesignerWidgetBoxInterface__Category;
#endif
#if defined(WORKAROUND_INNER_CLASS_DEFINITION_QDesignerWidgetBoxInterface__Widget)
typedef QDesignerWidgetBoxInterface::Widget QDesignerWidgetBoxInterface__Widget;
#else
class QDesignerWidgetBoxInterface__Widget;
#endif
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
typedef struct QDesignerDnDItemInterface QDesignerDnDItemInterface;
typedef struct QDesignerWidgetBoxInterface QDesignerWidgetBoxInterface;
typedef struct QDesignerWidgetBoxInterface__Category QDesignerWidgetBoxInterface__Category;
typedef struct QDesignerWidgetBoxInterface__Widget QDesignerWidgetBoxInterface__Widget;
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

typedef struct VirtualQDesignerWidgetBoxInterface VirtualQDesignerWidgetBoxInterface;
typedef struct QDesignerWidgetBoxInterface_VTable{
	void (*destructor)(VirtualQDesignerWidgetBoxInterface* self);
	QMetaObject* (*metaObject)(const VirtualQDesignerWidgetBoxInterface* self);
	void* (*metacast)(VirtualQDesignerWidgetBoxInterface* self, const char* param1);
	int (*metacall)(VirtualQDesignerWidgetBoxInterface* self, int param1, int param2, void** param3);
	int (*categoryCount)(const VirtualQDesignerWidgetBoxInterface* self);
	QDesignerWidgetBoxInterface__Category* (*category)(const VirtualQDesignerWidgetBoxInterface* self, int cat_idx);
	void (*addCategory)(VirtualQDesignerWidgetBoxInterface* self, QDesignerWidgetBoxInterface__Category* cat);
	void (*removeCategory)(VirtualQDesignerWidgetBoxInterface* self, int cat_idx);
	int (*widgetCount)(const VirtualQDesignerWidgetBoxInterface* self, int cat_idx);
	QDesignerWidgetBoxInterface__Widget* (*widget)(const VirtualQDesignerWidgetBoxInterface* self, int cat_idx, int wgt_idx);
	void (*addWidget)(VirtualQDesignerWidgetBoxInterface* self, int cat_idx, QDesignerWidgetBoxInterface__Widget* wgt);
	void (*removeWidget)(VirtualQDesignerWidgetBoxInterface* self, int cat_idx, int wgt_idx);
	void (*dropWidgets)(VirtualQDesignerWidgetBoxInterface* self, struct seaqt_array /* of QDesignerDnDItemInterface* */  item_list, QPoint* global_mouse_pos);
	void (*setFileName)(VirtualQDesignerWidgetBoxInterface* self, struct seaqt_string file_name);
	struct seaqt_string (*fileName)(const VirtualQDesignerWidgetBoxInterface* self);
	bool (*load)(VirtualQDesignerWidgetBoxInterface* self);
	bool (*save)(VirtualQDesignerWidgetBoxInterface* self);
	int (*devType)(const VirtualQDesignerWidgetBoxInterface* self);
	void (*setVisible)(VirtualQDesignerWidgetBoxInterface* self, bool visible);
	QSize* (*sizeHint)(const VirtualQDesignerWidgetBoxInterface* self);
	QSize* (*minimumSizeHint)(const VirtualQDesignerWidgetBoxInterface* self);
	int (*heightForWidth)(const VirtualQDesignerWidgetBoxInterface* self, int param1);
	bool (*hasHeightForWidth)(const VirtualQDesignerWidgetBoxInterface* self);
	QPaintEngine* (*paintEngine)(const VirtualQDesignerWidgetBoxInterface* self);
	bool (*event)(VirtualQDesignerWidgetBoxInterface* self, QEvent* event);
	void (*mousePressEvent)(VirtualQDesignerWidgetBoxInterface* self, QMouseEvent* event);
	void (*mouseReleaseEvent)(VirtualQDesignerWidgetBoxInterface* self, QMouseEvent* event);
	void (*mouseDoubleClickEvent)(VirtualQDesignerWidgetBoxInterface* self, QMouseEvent* event);
	void (*mouseMoveEvent)(VirtualQDesignerWidgetBoxInterface* self, QMouseEvent* event);
	void (*wheelEvent)(VirtualQDesignerWidgetBoxInterface* self, QWheelEvent* event);
	void (*keyPressEvent)(VirtualQDesignerWidgetBoxInterface* self, QKeyEvent* event);
	void (*keyReleaseEvent)(VirtualQDesignerWidgetBoxInterface* self, QKeyEvent* event);
	void (*focusInEvent)(VirtualQDesignerWidgetBoxInterface* self, QFocusEvent* event);
	void (*focusOutEvent)(VirtualQDesignerWidgetBoxInterface* self, QFocusEvent* event);
	void (*enterEvent)(VirtualQDesignerWidgetBoxInterface* self, QEnterEvent* event);
	void (*leaveEvent)(VirtualQDesignerWidgetBoxInterface* self, QEvent* event);
	void (*paintEvent)(VirtualQDesignerWidgetBoxInterface* self, QPaintEvent* event);
	void (*moveEvent)(VirtualQDesignerWidgetBoxInterface* self, QMoveEvent* event);
	void (*resizeEvent)(VirtualQDesignerWidgetBoxInterface* self, QResizeEvent* event);
	void (*closeEvent)(VirtualQDesignerWidgetBoxInterface* self, QCloseEvent* event);
	void (*contextMenuEvent)(VirtualQDesignerWidgetBoxInterface* self, QContextMenuEvent* event);
	void (*tabletEvent)(VirtualQDesignerWidgetBoxInterface* self, QTabletEvent* event);
	void (*actionEvent)(VirtualQDesignerWidgetBoxInterface* self, QActionEvent* event);
	void (*dragEnterEvent)(VirtualQDesignerWidgetBoxInterface* self, QDragEnterEvent* event);
	void (*dragMoveEvent)(VirtualQDesignerWidgetBoxInterface* self, QDragMoveEvent* event);
	void (*dragLeaveEvent)(VirtualQDesignerWidgetBoxInterface* self, QDragLeaveEvent* event);
	void (*dropEvent)(VirtualQDesignerWidgetBoxInterface* self, QDropEvent* event);
	void (*showEvent)(VirtualQDesignerWidgetBoxInterface* self, QShowEvent* event);
	void (*hideEvent)(VirtualQDesignerWidgetBoxInterface* self, QHideEvent* event);
	bool (*nativeEvent)(VirtualQDesignerWidgetBoxInterface* self, struct seaqt_string eventType, void* message, intptr_t* result);
	void (*changeEvent)(VirtualQDesignerWidgetBoxInterface* self, QEvent* param1);
	int (*metric)(const VirtualQDesignerWidgetBoxInterface* self, int param1);
	void (*initPainter)(const VirtualQDesignerWidgetBoxInterface* self, QPainter* painter);
	QPaintDevice* (*redirected)(const VirtualQDesignerWidgetBoxInterface* self, QPoint* offset);
	QPainter* (*sharedPainter)(const VirtualQDesignerWidgetBoxInterface* self);
	void (*inputMethodEvent)(VirtualQDesignerWidgetBoxInterface* self, QInputMethodEvent* param1);
	QVariant* (*inputMethodQuery)(const VirtualQDesignerWidgetBoxInterface* self, int param1);
	bool (*focusNextPrevChild)(VirtualQDesignerWidgetBoxInterface* self, bool next);
	bool (*eventFilter)(VirtualQDesignerWidgetBoxInterface* self, QObject* watched, QEvent* event);
	void (*timerEvent)(VirtualQDesignerWidgetBoxInterface* self, QTimerEvent* event);
	void (*childEvent)(VirtualQDesignerWidgetBoxInterface* self, QChildEvent* event);
	void (*customEvent)(VirtualQDesignerWidgetBoxInterface* self, QEvent* event);
	void (*connectNotify)(VirtualQDesignerWidgetBoxInterface* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQDesignerWidgetBoxInterface* self, QMetaMethod* signal);
}QDesignerWidgetBoxInterface_VTable;

void* QDesignerWidgetBoxInterface_vdata(VirtualQDesignerWidgetBoxInterface* self);
VirtualQDesignerWidgetBoxInterface* vdata_QDesignerWidgetBoxInterface(void* vdata);

VirtualQDesignerWidgetBoxInterface* QDesignerWidgetBoxInterface_new(const QDesignerWidgetBoxInterface_VTable* vtbl, size_t vdata);
VirtualQDesignerWidgetBoxInterface* QDesignerWidgetBoxInterface_new_parent(const QDesignerWidgetBoxInterface_VTable* vtbl, size_t vdata, QWidget* parent);
VirtualQDesignerWidgetBoxInterface* QDesignerWidgetBoxInterface_new_parent_flags(const QDesignerWidgetBoxInterface_VTable* vtbl, size_t vdata, QWidget* parent, int flags);

void QDesignerWidgetBoxInterface_virtbase(QDesignerWidgetBoxInterface* src, QWidget** outptr_QWidget);
QMetaObject* QDesignerWidgetBoxInterface_metaObject(const QDesignerWidgetBoxInterface* self);
void* QDesignerWidgetBoxInterface_metacast(QDesignerWidgetBoxInterface* self, const char* param1);
int QDesignerWidgetBoxInterface_metacall(QDesignerWidgetBoxInterface* self, int param1, int param2, void** param3);
struct seaqt_string QDesignerWidgetBoxInterface_tr_s(const char* s);
int QDesignerWidgetBoxInterface_categoryCount(const QDesignerWidgetBoxInterface* self);
QDesignerWidgetBoxInterface__Category* QDesignerWidgetBoxInterface_category(const QDesignerWidgetBoxInterface* self, int cat_idx);
void QDesignerWidgetBoxInterface_addCategory(QDesignerWidgetBoxInterface* self, QDesignerWidgetBoxInterface__Category* cat);
void QDesignerWidgetBoxInterface_removeCategory(QDesignerWidgetBoxInterface* self, int cat_idx);
int QDesignerWidgetBoxInterface_widgetCount(const QDesignerWidgetBoxInterface* self, int cat_idx);
QDesignerWidgetBoxInterface__Widget* QDesignerWidgetBoxInterface_widget(const QDesignerWidgetBoxInterface* self, int cat_idx, int wgt_idx);
void QDesignerWidgetBoxInterface_addWidget(QDesignerWidgetBoxInterface* self, int cat_idx, QDesignerWidgetBoxInterface__Widget* wgt);
void QDesignerWidgetBoxInterface_removeWidget(QDesignerWidgetBoxInterface* self, int cat_idx, int wgt_idx);
int QDesignerWidgetBoxInterface_findOrInsertCategory(QDesignerWidgetBoxInterface* self, struct seaqt_string categoryName);
void QDesignerWidgetBoxInterface_dropWidgets(QDesignerWidgetBoxInterface* self, struct seaqt_array /* of QDesignerDnDItemInterface* */  item_list, QPoint* global_mouse_pos);
void QDesignerWidgetBoxInterface_setFileName(QDesignerWidgetBoxInterface* self, struct seaqt_string file_name);
struct seaqt_string QDesignerWidgetBoxInterface_fileName(const QDesignerWidgetBoxInterface* self);
bool QDesignerWidgetBoxInterface_load(QDesignerWidgetBoxInterface* self);
bool QDesignerWidgetBoxInterface_save(QDesignerWidgetBoxInterface* self);
struct seaqt_string QDesignerWidgetBoxInterface_tr_s_c(const char* s, const char* c);
struct seaqt_string QDesignerWidgetBoxInterface_tr_s_c_n(const char* s, const char* c, int n);

QMetaObject* QDesignerWidgetBoxInterface_virtualbase_metaObject(const VirtualQDesignerWidgetBoxInterface* self);
void* QDesignerWidgetBoxInterface_virtualbase_metacast(VirtualQDesignerWidgetBoxInterface* self, const char* param1);
int QDesignerWidgetBoxInterface_virtualbase_metacall(VirtualQDesignerWidgetBoxInterface* self, int param1, int param2, void** param3);
int QDesignerWidgetBoxInterface_virtualbase_categoryCount(const VirtualQDesignerWidgetBoxInterface* self);
QDesignerWidgetBoxInterface__Category* QDesignerWidgetBoxInterface_virtualbase_category(const VirtualQDesignerWidgetBoxInterface* self, int cat_idx);
void QDesignerWidgetBoxInterface_virtualbase_addCategory(VirtualQDesignerWidgetBoxInterface* self, QDesignerWidgetBoxInterface__Category* cat);
void QDesignerWidgetBoxInterface_virtualbase_removeCategory(VirtualQDesignerWidgetBoxInterface* self, int cat_idx);
int QDesignerWidgetBoxInterface_virtualbase_widgetCount(const VirtualQDesignerWidgetBoxInterface* self, int cat_idx);
QDesignerWidgetBoxInterface__Widget* QDesignerWidgetBoxInterface_virtualbase_widget(const VirtualQDesignerWidgetBoxInterface* self, int cat_idx, int wgt_idx);
void QDesignerWidgetBoxInterface_virtualbase_addWidget(VirtualQDesignerWidgetBoxInterface* self, int cat_idx, QDesignerWidgetBoxInterface__Widget* wgt);
void QDesignerWidgetBoxInterface_virtualbase_removeWidget(VirtualQDesignerWidgetBoxInterface* self, int cat_idx, int wgt_idx);
void QDesignerWidgetBoxInterface_virtualbase_dropWidgets(VirtualQDesignerWidgetBoxInterface* self, struct seaqt_array /* of QDesignerDnDItemInterface* */  item_list, QPoint* global_mouse_pos);
void QDesignerWidgetBoxInterface_virtualbase_setFileName(VirtualQDesignerWidgetBoxInterface* self, struct seaqt_string file_name);
struct seaqt_string QDesignerWidgetBoxInterface_virtualbase_fileName(const VirtualQDesignerWidgetBoxInterface* self);
bool QDesignerWidgetBoxInterface_virtualbase_load(VirtualQDesignerWidgetBoxInterface* self);
bool QDesignerWidgetBoxInterface_virtualbase_save(VirtualQDesignerWidgetBoxInterface* self);
int QDesignerWidgetBoxInterface_virtualbase_devType(const VirtualQDesignerWidgetBoxInterface* self);
void QDesignerWidgetBoxInterface_virtualbase_setVisible(VirtualQDesignerWidgetBoxInterface* self, bool visible);
QSize* QDesignerWidgetBoxInterface_virtualbase_sizeHint(const VirtualQDesignerWidgetBoxInterface* self);
QSize* QDesignerWidgetBoxInterface_virtualbase_minimumSizeHint(const VirtualQDesignerWidgetBoxInterface* self);
int QDesignerWidgetBoxInterface_virtualbase_heightForWidth(const VirtualQDesignerWidgetBoxInterface* self, int param1);
bool QDesignerWidgetBoxInterface_virtualbase_hasHeightForWidth(const VirtualQDesignerWidgetBoxInterface* self);
QPaintEngine* QDesignerWidgetBoxInterface_virtualbase_paintEngine(const VirtualQDesignerWidgetBoxInterface* self);
bool QDesignerWidgetBoxInterface_virtualbase_event(VirtualQDesignerWidgetBoxInterface* self, QEvent* event);
void QDesignerWidgetBoxInterface_virtualbase_mousePressEvent(VirtualQDesignerWidgetBoxInterface* self, QMouseEvent* event);
void QDesignerWidgetBoxInterface_virtualbase_mouseReleaseEvent(VirtualQDesignerWidgetBoxInterface* self, QMouseEvent* event);
void QDesignerWidgetBoxInterface_virtualbase_mouseDoubleClickEvent(VirtualQDesignerWidgetBoxInterface* self, QMouseEvent* event);
void QDesignerWidgetBoxInterface_virtualbase_mouseMoveEvent(VirtualQDesignerWidgetBoxInterface* self, QMouseEvent* event);
void QDesignerWidgetBoxInterface_virtualbase_wheelEvent(VirtualQDesignerWidgetBoxInterface* self, QWheelEvent* event);
void QDesignerWidgetBoxInterface_virtualbase_keyPressEvent(VirtualQDesignerWidgetBoxInterface* self, QKeyEvent* event);
void QDesignerWidgetBoxInterface_virtualbase_keyReleaseEvent(VirtualQDesignerWidgetBoxInterface* self, QKeyEvent* event);
void QDesignerWidgetBoxInterface_virtualbase_focusInEvent(VirtualQDesignerWidgetBoxInterface* self, QFocusEvent* event);
void QDesignerWidgetBoxInterface_virtualbase_focusOutEvent(VirtualQDesignerWidgetBoxInterface* self, QFocusEvent* event);
void QDesignerWidgetBoxInterface_virtualbase_enterEvent(VirtualQDesignerWidgetBoxInterface* self, QEnterEvent* event);
void QDesignerWidgetBoxInterface_virtualbase_leaveEvent(VirtualQDesignerWidgetBoxInterface* self, QEvent* event);
void QDesignerWidgetBoxInterface_virtualbase_paintEvent(VirtualQDesignerWidgetBoxInterface* self, QPaintEvent* event);
void QDesignerWidgetBoxInterface_virtualbase_moveEvent(VirtualQDesignerWidgetBoxInterface* self, QMoveEvent* event);
void QDesignerWidgetBoxInterface_virtualbase_resizeEvent(VirtualQDesignerWidgetBoxInterface* self, QResizeEvent* event);
void QDesignerWidgetBoxInterface_virtualbase_closeEvent(VirtualQDesignerWidgetBoxInterface* self, QCloseEvent* event);
void QDesignerWidgetBoxInterface_virtualbase_contextMenuEvent(VirtualQDesignerWidgetBoxInterface* self, QContextMenuEvent* event);
void QDesignerWidgetBoxInterface_virtualbase_tabletEvent(VirtualQDesignerWidgetBoxInterface* self, QTabletEvent* event);
void QDesignerWidgetBoxInterface_virtualbase_actionEvent(VirtualQDesignerWidgetBoxInterface* self, QActionEvent* event);
void QDesignerWidgetBoxInterface_virtualbase_dragEnterEvent(VirtualQDesignerWidgetBoxInterface* self, QDragEnterEvent* event);
void QDesignerWidgetBoxInterface_virtualbase_dragMoveEvent(VirtualQDesignerWidgetBoxInterface* self, QDragMoveEvent* event);
void QDesignerWidgetBoxInterface_virtualbase_dragLeaveEvent(VirtualQDesignerWidgetBoxInterface* self, QDragLeaveEvent* event);
void QDesignerWidgetBoxInterface_virtualbase_dropEvent(VirtualQDesignerWidgetBoxInterface* self, QDropEvent* event);
void QDesignerWidgetBoxInterface_virtualbase_showEvent(VirtualQDesignerWidgetBoxInterface* self, QShowEvent* event);
void QDesignerWidgetBoxInterface_virtualbase_hideEvent(VirtualQDesignerWidgetBoxInterface* self, QHideEvent* event);
bool QDesignerWidgetBoxInterface_virtualbase_nativeEvent(VirtualQDesignerWidgetBoxInterface* self, struct seaqt_string eventType, void* message, intptr_t* result);
void QDesignerWidgetBoxInterface_virtualbase_changeEvent(VirtualQDesignerWidgetBoxInterface* self, QEvent* param1);
int QDesignerWidgetBoxInterface_virtualbase_metric(const VirtualQDesignerWidgetBoxInterface* self, int param1);
void QDesignerWidgetBoxInterface_virtualbase_initPainter(const VirtualQDesignerWidgetBoxInterface* self, QPainter* painter);
QPaintDevice* QDesignerWidgetBoxInterface_virtualbase_redirected(const VirtualQDesignerWidgetBoxInterface* self, QPoint* offset);
QPainter* QDesignerWidgetBoxInterface_virtualbase_sharedPainter(const VirtualQDesignerWidgetBoxInterface* self);
void QDesignerWidgetBoxInterface_virtualbase_inputMethodEvent(VirtualQDesignerWidgetBoxInterface* self, QInputMethodEvent* param1);
QVariant* QDesignerWidgetBoxInterface_virtualbase_inputMethodQuery(const VirtualQDesignerWidgetBoxInterface* self, int param1);
bool QDesignerWidgetBoxInterface_virtualbase_focusNextPrevChild(VirtualQDesignerWidgetBoxInterface* self, bool next);
bool QDesignerWidgetBoxInterface_virtualbase_eventFilter(VirtualQDesignerWidgetBoxInterface* self, QObject* watched, QEvent* event);
void QDesignerWidgetBoxInterface_virtualbase_timerEvent(VirtualQDesignerWidgetBoxInterface* self, QTimerEvent* event);
void QDesignerWidgetBoxInterface_virtualbase_childEvent(VirtualQDesignerWidgetBoxInterface* self, QChildEvent* event);
void QDesignerWidgetBoxInterface_virtualbase_customEvent(VirtualQDesignerWidgetBoxInterface* self, QEvent* event);
void QDesignerWidgetBoxInterface_virtualbase_connectNotify(VirtualQDesignerWidgetBoxInterface* self, QMetaMethod* signal);
void QDesignerWidgetBoxInterface_virtualbase_disconnectNotify(VirtualQDesignerWidgetBoxInterface* self, QMetaMethod* signal);

void QDesignerWidgetBoxInterface_protectedbase_updateMicroFocus(VirtualQDesignerWidgetBoxInterface* self);
void QDesignerWidgetBoxInterface_protectedbase_create(VirtualQDesignerWidgetBoxInterface* self);
void QDesignerWidgetBoxInterface_protectedbase_destroy(VirtualQDesignerWidgetBoxInterface* self);
bool QDesignerWidgetBoxInterface_protectedbase_focusNextChild(VirtualQDesignerWidgetBoxInterface* self);
bool QDesignerWidgetBoxInterface_protectedbase_focusPreviousChild(VirtualQDesignerWidgetBoxInterface* self);
QObject* QDesignerWidgetBoxInterface_protectedbase_sender(const VirtualQDesignerWidgetBoxInterface* self);
int QDesignerWidgetBoxInterface_protectedbase_senderSignalIndex(const VirtualQDesignerWidgetBoxInterface* self);
int QDesignerWidgetBoxInterface_protectedbase_receivers(const VirtualQDesignerWidgetBoxInterface* self, const char* signal);
bool QDesignerWidgetBoxInterface_protectedbase_isSignalConnected(const VirtualQDesignerWidgetBoxInterface* self, QMetaMethod* signal);

void QDesignerWidgetBoxInterface_delete(QDesignerWidgetBoxInterface* self);

QDesignerWidgetBoxInterface__Widget* QDesignerWidgetBoxInterface__Widget_new();
QDesignerWidgetBoxInterface__Widget* QDesignerWidgetBoxInterface__Widget_new_from(QDesignerWidgetBoxInterface__Widget* from);
QDesignerWidgetBoxInterface__Widget* QDesignerWidgetBoxInterface__Widget_new_aname(struct seaqt_string aname);
QDesignerWidgetBoxInterface__Widget* QDesignerWidgetBoxInterface__Widget_new_aname_xml(struct seaqt_string aname, struct seaqt_string xml);
QDesignerWidgetBoxInterface__Widget* QDesignerWidgetBoxInterface__Widget_new_aname_xml_icon_name(struct seaqt_string aname, struct seaqt_string xml, struct seaqt_string icon_name);
QDesignerWidgetBoxInterface__Widget* QDesignerWidgetBoxInterface__Widget_new_aname_xml_icon_name_atype(struct seaqt_string aname, struct seaqt_string xml, struct seaqt_string icon_name, int atype);

void QDesignerWidgetBoxInterface__Widget_operatorAssign(QDesignerWidgetBoxInterface__Widget* self, QDesignerWidgetBoxInterface__Widget* from);
struct seaqt_string QDesignerWidgetBoxInterface__Widget_name(const QDesignerWidgetBoxInterface__Widget* self);
void QDesignerWidgetBoxInterface__Widget_setName(QDesignerWidgetBoxInterface__Widget* self, struct seaqt_string aname);
struct seaqt_string QDesignerWidgetBoxInterface__Widget_domXml(const QDesignerWidgetBoxInterface__Widget* self);
void QDesignerWidgetBoxInterface__Widget_setDomXml(QDesignerWidgetBoxInterface__Widget* self, struct seaqt_string xml);
struct seaqt_string QDesignerWidgetBoxInterface__Widget_iconName(const QDesignerWidgetBoxInterface__Widget* self);
void QDesignerWidgetBoxInterface__Widget_setIconName(QDesignerWidgetBoxInterface__Widget* self, struct seaqt_string icon_name);
int QDesignerWidgetBoxInterface__Widget_type(const QDesignerWidgetBoxInterface__Widget* self);
void QDesignerWidgetBoxInterface__Widget_setType(QDesignerWidgetBoxInterface__Widget* self, int atype);
bool QDesignerWidgetBoxInterface__Widget_isNull(const QDesignerWidgetBoxInterface__Widget* self);

void QDesignerWidgetBoxInterface__Widget_delete(QDesignerWidgetBoxInterface__Widget* self);

QDesignerWidgetBoxInterface__Category* QDesignerWidgetBoxInterface__Category_new();
QDesignerWidgetBoxInterface__Category* QDesignerWidgetBoxInterface__Category_new_from(QDesignerWidgetBoxInterface__Category* from);
QDesignerWidgetBoxInterface__Category* QDesignerWidgetBoxInterface__Category_new_aname(struct seaqt_string aname);
QDesignerWidgetBoxInterface__Category* QDesignerWidgetBoxInterface__Category_new_aname_atype(struct seaqt_string aname, int atype);

struct seaqt_string QDesignerWidgetBoxInterface__Category_name(const QDesignerWidgetBoxInterface__Category* self);
void QDesignerWidgetBoxInterface__Category_setName(QDesignerWidgetBoxInterface__Category* self, struct seaqt_string aname);
int QDesignerWidgetBoxInterface__Category_widgetCount(const QDesignerWidgetBoxInterface__Category* self);
QDesignerWidgetBoxInterface__Widget* QDesignerWidgetBoxInterface__Category_widget(const QDesignerWidgetBoxInterface__Category* self, int idx);
void QDesignerWidgetBoxInterface__Category_removeWidget(QDesignerWidgetBoxInterface__Category* self, int idx);
void QDesignerWidgetBoxInterface__Category_addWidget(QDesignerWidgetBoxInterface__Category* self, QDesignerWidgetBoxInterface__Widget* awidget);
int QDesignerWidgetBoxInterface__Category_type(const QDesignerWidgetBoxInterface__Category* self);
void QDesignerWidgetBoxInterface__Category_setType(QDesignerWidgetBoxInterface__Category* self, int atype);
bool QDesignerWidgetBoxInterface__Category_isNull(const QDesignerWidgetBoxInterface__Category* self);
void QDesignerWidgetBoxInterface__Category_operatorAssign(QDesignerWidgetBoxInterface__Category* self, QDesignerWidgetBoxInterface__Category* from);

void QDesignerWidgetBoxInterface__Category_delete(QDesignerWidgetBoxInterface__Category* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
