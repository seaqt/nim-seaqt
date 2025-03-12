#pragma once
#ifndef SEAQT_QTWIDGETS_GEN_QLCDNUMBER_H
#define SEAQT_QTWIDGETS_GEN_QLCDNUMBER_H

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
class QFrame;
class QHideEvent;
class QInputMethodEvent;
class QKeyEvent;
class QLCDNumber;
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
class QStyleOptionFrame;
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
typedef struct QFrame QFrame;
typedef struct QHideEvent QHideEvent;
typedef struct QInputMethodEvent QInputMethodEvent;
typedef struct QKeyEvent QKeyEvent;
typedef struct QLCDNumber QLCDNumber;
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
typedef struct QStyleOptionFrame QStyleOptionFrame;
typedef struct QTabletEvent QTabletEvent;
typedef struct QTimerEvent QTimerEvent;
typedef struct QVariant QVariant;
typedef struct QWheelEvent QWheelEvent;
typedef struct QWidget QWidget;
#endif

typedef struct VirtualQLCDNumber VirtualQLCDNumber;
typedef struct QLCDNumber_VTable{
	void (*destructor)(VirtualQLCDNumber* self);
	QMetaObject* (*metaObject)(const VirtualQLCDNumber* self);
	void* (*metacast)(VirtualQLCDNumber* self, const char* param1);
	int (*metacall)(VirtualQLCDNumber* self, int param1, int param2, void** param3);
	QSize* (*sizeHint)(const VirtualQLCDNumber* self);
	bool (*event)(VirtualQLCDNumber* self, QEvent* e);
	void (*paintEvent)(VirtualQLCDNumber* self, QPaintEvent* param1);
	void (*changeEvent)(VirtualQLCDNumber* self, QEvent* param1);
	int (*devType)(const VirtualQLCDNumber* self);
	void (*setVisible)(VirtualQLCDNumber* self, bool visible);
	QSize* (*minimumSizeHint)(const VirtualQLCDNumber* self);
	int (*heightForWidth)(const VirtualQLCDNumber* self, int param1);
	bool (*hasHeightForWidth)(const VirtualQLCDNumber* self);
	QPaintEngine* (*paintEngine)(const VirtualQLCDNumber* self);
	void (*mousePressEvent)(VirtualQLCDNumber* self, QMouseEvent* event);
	void (*mouseReleaseEvent)(VirtualQLCDNumber* self, QMouseEvent* event);
	void (*mouseDoubleClickEvent)(VirtualQLCDNumber* self, QMouseEvent* event);
	void (*mouseMoveEvent)(VirtualQLCDNumber* self, QMouseEvent* event);
	void (*wheelEvent)(VirtualQLCDNumber* self, QWheelEvent* event);
	void (*keyPressEvent)(VirtualQLCDNumber* self, QKeyEvent* event);
	void (*keyReleaseEvent)(VirtualQLCDNumber* self, QKeyEvent* event);
	void (*focusInEvent)(VirtualQLCDNumber* self, QFocusEvent* event);
	void (*focusOutEvent)(VirtualQLCDNumber* self, QFocusEvent* event);
	void (*enterEvent)(VirtualQLCDNumber* self, QEvent* event);
	void (*leaveEvent)(VirtualQLCDNumber* self, QEvent* event);
	void (*moveEvent)(VirtualQLCDNumber* self, QMoveEvent* event);
	void (*resizeEvent)(VirtualQLCDNumber* self, QResizeEvent* event);
	void (*closeEvent)(VirtualQLCDNumber* self, QCloseEvent* event);
	void (*contextMenuEvent)(VirtualQLCDNumber* self, QContextMenuEvent* event);
	void (*tabletEvent)(VirtualQLCDNumber* self, QTabletEvent* event);
	void (*actionEvent)(VirtualQLCDNumber* self, QActionEvent* event);
	void (*dragEnterEvent)(VirtualQLCDNumber* self, QDragEnterEvent* event);
	void (*dragMoveEvent)(VirtualQLCDNumber* self, QDragMoveEvent* event);
	void (*dragLeaveEvent)(VirtualQLCDNumber* self, QDragLeaveEvent* event);
	void (*dropEvent)(VirtualQLCDNumber* self, QDropEvent* event);
	void (*showEvent)(VirtualQLCDNumber* self, QShowEvent* event);
	void (*hideEvent)(VirtualQLCDNumber* self, QHideEvent* event);
	bool (*nativeEvent)(VirtualQLCDNumber* self, struct miqt_string eventType, void* message, long* result);
	int (*metric)(const VirtualQLCDNumber* self, int param1);
	void (*initPainter)(const VirtualQLCDNumber* self, QPainter* painter);
	QPaintDevice* (*redirected)(const VirtualQLCDNumber* self, QPoint* offset);
	QPainter* (*sharedPainter)(const VirtualQLCDNumber* self);
	void (*inputMethodEvent)(VirtualQLCDNumber* self, QInputMethodEvent* param1);
	QVariant* (*inputMethodQuery)(const VirtualQLCDNumber* self, int param1);
	bool (*focusNextPrevChild)(VirtualQLCDNumber* self, bool next);
	bool (*eventFilter)(VirtualQLCDNumber* self, QObject* watched, QEvent* event);
	void (*timerEvent)(VirtualQLCDNumber* self, QTimerEvent* event);
	void (*childEvent)(VirtualQLCDNumber* self, QChildEvent* event);
	void (*customEvent)(VirtualQLCDNumber* self, QEvent* event);
	void (*connectNotify)(VirtualQLCDNumber* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQLCDNumber* self, QMetaMethod* signal);
}QLCDNumber_VTable;

const QLCDNumber_VTable* QLCDNumber_vtbl(const VirtualQLCDNumber* self);
void* QLCDNumber_vdata(const VirtualQLCDNumber* self);
void QLCDNumber_setVdata(VirtualQLCDNumber* self, void* vdata);

VirtualQLCDNumber* QLCDNumber_new(const QLCDNumber_VTable* vtbl, void* vdata, QWidget* parent);
VirtualQLCDNumber* QLCDNumber_new2(const QLCDNumber_VTable* vtbl, void* vdata);
VirtualQLCDNumber* QLCDNumber_new3(const QLCDNumber_VTable* vtbl, void* vdata, unsigned int numDigits);
VirtualQLCDNumber* QLCDNumber_new4(const QLCDNumber_VTable* vtbl, void* vdata, unsigned int numDigits, QWidget* parent);

void QLCDNumber_virtbase(QLCDNumber* src, QFrame** outptr_QFrame);
QMetaObject* QLCDNumber_metaObject(const QLCDNumber* self);
void* QLCDNumber_metacast(QLCDNumber* self, const char* param1);
int QLCDNumber_metacall(QLCDNumber* self, int param1, int param2, void** param3);
struct miqt_string QLCDNumber_tr(const char* s);
struct miqt_string QLCDNumber_trUtf8(const char* s);
bool QLCDNumber_smallDecimalPoint(const QLCDNumber* self);
int QLCDNumber_digitCount(const QLCDNumber* self);
void QLCDNumber_setDigitCount(QLCDNumber* self, int nDigits);
bool QLCDNumber_checkOverflow(const QLCDNumber* self, double num);
bool QLCDNumber_checkOverflowWithNum(const QLCDNumber* self, int num);
int QLCDNumber_mode(const QLCDNumber* self);
void QLCDNumber_setMode(QLCDNumber* self, int mode);
int QLCDNumber_segmentStyle(const QLCDNumber* self);
void QLCDNumber_setSegmentStyle(QLCDNumber* self, int segmentStyle);
double QLCDNumber_value(const QLCDNumber* self);
int QLCDNumber_intValue(const QLCDNumber* self);
QSize* QLCDNumber_sizeHint(const QLCDNumber* self);
void QLCDNumber_display(QLCDNumber* self, struct miqt_string str);
void QLCDNumber_displayWithNum(QLCDNumber* self, int num);
void QLCDNumber_display2(QLCDNumber* self, double num);
void QLCDNumber_setHexMode(QLCDNumber* self);
void QLCDNumber_setDecMode(QLCDNumber* self);
void QLCDNumber_setOctMode(QLCDNumber* self);
void QLCDNumber_setBinMode(QLCDNumber* self);
void QLCDNumber_setSmallDecimalPoint(QLCDNumber* self, bool smallDecimalPoint);
void QLCDNumber_overflow(QLCDNumber* self);
void QLCDNumber_connect_overflow(VirtualQLCDNumber* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
bool QLCDNumber_event(QLCDNumber* self, QEvent* e);
void QLCDNumber_paintEvent(QLCDNumber* self, QPaintEvent* param1);
struct miqt_string QLCDNumber_tr2(const char* s, const char* c);
struct miqt_string QLCDNumber_tr3(const char* s, const char* c, int n);
struct miqt_string QLCDNumber_trUtf82(const char* s, const char* c);
struct miqt_string QLCDNumber_trUtf83(const char* s, const char* c, int n);

QMetaObject* QLCDNumber_virtualbase_metaObject(const VirtualQLCDNumber* self);
void* QLCDNumber_virtualbase_metacast(VirtualQLCDNumber* self, const char* param1);
int QLCDNumber_virtualbase_metacall(VirtualQLCDNumber* self, int param1, int param2, void** param3);
QSize* QLCDNumber_virtualbase_sizeHint(const VirtualQLCDNumber* self);
bool QLCDNumber_virtualbase_event(VirtualQLCDNumber* self, QEvent* e);
void QLCDNumber_virtualbase_paintEvent(VirtualQLCDNumber* self, QPaintEvent* param1);
void QLCDNumber_virtualbase_changeEvent(VirtualQLCDNumber* self, QEvent* param1);
int QLCDNumber_virtualbase_devType(const VirtualQLCDNumber* self);
void QLCDNumber_virtualbase_setVisible(VirtualQLCDNumber* self, bool visible);
QSize* QLCDNumber_virtualbase_minimumSizeHint(const VirtualQLCDNumber* self);
int QLCDNumber_virtualbase_heightForWidth(const VirtualQLCDNumber* self, int param1);
bool QLCDNumber_virtualbase_hasHeightForWidth(const VirtualQLCDNumber* self);
QPaintEngine* QLCDNumber_virtualbase_paintEngine(const VirtualQLCDNumber* self);
void QLCDNumber_virtualbase_mousePressEvent(VirtualQLCDNumber* self, QMouseEvent* event);
void QLCDNumber_virtualbase_mouseReleaseEvent(VirtualQLCDNumber* self, QMouseEvent* event);
void QLCDNumber_virtualbase_mouseDoubleClickEvent(VirtualQLCDNumber* self, QMouseEvent* event);
void QLCDNumber_virtualbase_mouseMoveEvent(VirtualQLCDNumber* self, QMouseEvent* event);
void QLCDNumber_virtualbase_wheelEvent(VirtualQLCDNumber* self, QWheelEvent* event);
void QLCDNumber_virtualbase_keyPressEvent(VirtualQLCDNumber* self, QKeyEvent* event);
void QLCDNumber_virtualbase_keyReleaseEvent(VirtualQLCDNumber* self, QKeyEvent* event);
void QLCDNumber_virtualbase_focusInEvent(VirtualQLCDNumber* self, QFocusEvent* event);
void QLCDNumber_virtualbase_focusOutEvent(VirtualQLCDNumber* self, QFocusEvent* event);
void QLCDNumber_virtualbase_enterEvent(VirtualQLCDNumber* self, QEvent* event);
void QLCDNumber_virtualbase_leaveEvent(VirtualQLCDNumber* self, QEvent* event);
void QLCDNumber_virtualbase_moveEvent(VirtualQLCDNumber* self, QMoveEvent* event);
void QLCDNumber_virtualbase_resizeEvent(VirtualQLCDNumber* self, QResizeEvent* event);
void QLCDNumber_virtualbase_closeEvent(VirtualQLCDNumber* self, QCloseEvent* event);
void QLCDNumber_virtualbase_contextMenuEvent(VirtualQLCDNumber* self, QContextMenuEvent* event);
void QLCDNumber_virtualbase_tabletEvent(VirtualQLCDNumber* self, QTabletEvent* event);
void QLCDNumber_virtualbase_actionEvent(VirtualQLCDNumber* self, QActionEvent* event);
void QLCDNumber_virtualbase_dragEnterEvent(VirtualQLCDNumber* self, QDragEnterEvent* event);
void QLCDNumber_virtualbase_dragMoveEvent(VirtualQLCDNumber* self, QDragMoveEvent* event);
void QLCDNumber_virtualbase_dragLeaveEvent(VirtualQLCDNumber* self, QDragLeaveEvent* event);
void QLCDNumber_virtualbase_dropEvent(VirtualQLCDNumber* self, QDropEvent* event);
void QLCDNumber_virtualbase_showEvent(VirtualQLCDNumber* self, QShowEvent* event);
void QLCDNumber_virtualbase_hideEvent(VirtualQLCDNumber* self, QHideEvent* event);
bool QLCDNumber_virtualbase_nativeEvent(VirtualQLCDNumber* self, struct miqt_string eventType, void* message, long* result);
int QLCDNumber_virtualbase_metric(const VirtualQLCDNumber* self, int param1);
void QLCDNumber_virtualbase_initPainter(const VirtualQLCDNumber* self, QPainter* painter);
QPaintDevice* QLCDNumber_virtualbase_redirected(const VirtualQLCDNumber* self, QPoint* offset);
QPainter* QLCDNumber_virtualbase_sharedPainter(const VirtualQLCDNumber* self);
void QLCDNumber_virtualbase_inputMethodEvent(VirtualQLCDNumber* self, QInputMethodEvent* param1);
QVariant* QLCDNumber_virtualbase_inputMethodQuery(const VirtualQLCDNumber* self, int param1);
bool QLCDNumber_virtualbase_focusNextPrevChild(VirtualQLCDNumber* self, bool next);
bool QLCDNumber_virtualbase_eventFilter(VirtualQLCDNumber* self, QObject* watched, QEvent* event);
void QLCDNumber_virtualbase_timerEvent(VirtualQLCDNumber* self, QTimerEvent* event);
void QLCDNumber_virtualbase_childEvent(VirtualQLCDNumber* self, QChildEvent* event);
void QLCDNumber_virtualbase_customEvent(VirtualQLCDNumber* self, QEvent* event);
void QLCDNumber_virtualbase_connectNotify(VirtualQLCDNumber* self, QMetaMethod* signal);
void QLCDNumber_virtualbase_disconnectNotify(VirtualQLCDNumber* self, QMetaMethod* signal);

void QLCDNumber_protectedbase_drawFrame(VirtualQLCDNumber* self, QPainter* param1);
void QLCDNumber_protectedbase_initStyleOption(const VirtualQLCDNumber* self, QStyleOptionFrame* option);
void QLCDNumber_protectedbase_updateMicroFocus(VirtualQLCDNumber* self);
void QLCDNumber_protectedbase_create(VirtualQLCDNumber* self);
void QLCDNumber_protectedbase_destroy(VirtualQLCDNumber* self);
bool QLCDNumber_protectedbase_focusNextChild(VirtualQLCDNumber* self);
bool QLCDNumber_protectedbase_focusPreviousChild(VirtualQLCDNumber* self);
QObject* QLCDNumber_protectedbase_sender(const VirtualQLCDNumber* self);
int QLCDNumber_protectedbase_senderSignalIndex(const VirtualQLCDNumber* self);
int QLCDNumber_protectedbase_receivers(const VirtualQLCDNumber* self, const char* signal);
bool QLCDNumber_protectedbase_isSignalConnected(const VirtualQLCDNumber* self, QMetaMethod* signal);

const QMetaObject* QLCDNumber_staticMetaObject();
void QLCDNumber_delete(QLCDNumber* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
