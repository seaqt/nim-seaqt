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

struct QLCDNumber_VTable {
	void (*destructor)(struct QLCDNumber_VTable* vtbl, QLCDNumber* self);
	QMetaObject* (*metaObject)(struct QLCDNumber_VTable* vtbl, const QLCDNumber* self);
	void* (*metacast)(struct QLCDNumber_VTable* vtbl, QLCDNumber* self, const char* param1);
	int (*metacall)(struct QLCDNumber_VTable* vtbl, QLCDNumber* self, int param1, int param2, void** param3);
	QSize* (*sizeHint)(struct QLCDNumber_VTable* vtbl, const QLCDNumber* self);
	bool (*event)(struct QLCDNumber_VTable* vtbl, QLCDNumber* self, QEvent* e);
	void (*paintEvent)(struct QLCDNumber_VTable* vtbl, QLCDNumber* self, QPaintEvent* param1);
	void (*changeEvent)(struct QLCDNumber_VTable* vtbl, QLCDNumber* self, QEvent* param1);
	int (*devType)(struct QLCDNumber_VTable* vtbl, const QLCDNumber* self);
	void (*setVisible)(struct QLCDNumber_VTable* vtbl, QLCDNumber* self, bool visible);
	QSize* (*minimumSizeHint)(struct QLCDNumber_VTable* vtbl, const QLCDNumber* self);
	int (*heightForWidth)(struct QLCDNumber_VTable* vtbl, const QLCDNumber* self, int param1);
	bool (*hasHeightForWidth)(struct QLCDNumber_VTable* vtbl, const QLCDNumber* self);
	QPaintEngine* (*paintEngine)(struct QLCDNumber_VTable* vtbl, const QLCDNumber* self);
	void (*mousePressEvent)(struct QLCDNumber_VTable* vtbl, QLCDNumber* self, QMouseEvent* event);
	void (*mouseReleaseEvent)(struct QLCDNumber_VTable* vtbl, QLCDNumber* self, QMouseEvent* event);
	void (*mouseDoubleClickEvent)(struct QLCDNumber_VTable* vtbl, QLCDNumber* self, QMouseEvent* event);
	void (*mouseMoveEvent)(struct QLCDNumber_VTable* vtbl, QLCDNumber* self, QMouseEvent* event);
	void (*wheelEvent)(struct QLCDNumber_VTable* vtbl, QLCDNumber* self, QWheelEvent* event);
	void (*keyPressEvent)(struct QLCDNumber_VTable* vtbl, QLCDNumber* self, QKeyEvent* event);
	void (*keyReleaseEvent)(struct QLCDNumber_VTable* vtbl, QLCDNumber* self, QKeyEvent* event);
	void (*focusInEvent)(struct QLCDNumber_VTable* vtbl, QLCDNumber* self, QFocusEvent* event);
	void (*focusOutEvent)(struct QLCDNumber_VTable* vtbl, QLCDNumber* self, QFocusEvent* event);
	void (*enterEvent)(struct QLCDNumber_VTable* vtbl, QLCDNumber* self, QEvent* event);
	void (*leaveEvent)(struct QLCDNumber_VTable* vtbl, QLCDNumber* self, QEvent* event);
	void (*moveEvent)(struct QLCDNumber_VTable* vtbl, QLCDNumber* self, QMoveEvent* event);
	void (*resizeEvent)(struct QLCDNumber_VTable* vtbl, QLCDNumber* self, QResizeEvent* event);
	void (*closeEvent)(struct QLCDNumber_VTable* vtbl, QLCDNumber* self, QCloseEvent* event);
	void (*contextMenuEvent)(struct QLCDNumber_VTable* vtbl, QLCDNumber* self, QContextMenuEvent* event);
	void (*tabletEvent)(struct QLCDNumber_VTable* vtbl, QLCDNumber* self, QTabletEvent* event);
	void (*actionEvent)(struct QLCDNumber_VTable* vtbl, QLCDNumber* self, QActionEvent* event);
	void (*dragEnterEvent)(struct QLCDNumber_VTable* vtbl, QLCDNumber* self, QDragEnterEvent* event);
	void (*dragMoveEvent)(struct QLCDNumber_VTable* vtbl, QLCDNumber* self, QDragMoveEvent* event);
	void (*dragLeaveEvent)(struct QLCDNumber_VTable* vtbl, QLCDNumber* self, QDragLeaveEvent* event);
	void (*dropEvent)(struct QLCDNumber_VTable* vtbl, QLCDNumber* self, QDropEvent* event);
	void (*showEvent)(struct QLCDNumber_VTable* vtbl, QLCDNumber* self, QShowEvent* event);
	void (*hideEvent)(struct QLCDNumber_VTable* vtbl, QLCDNumber* self, QHideEvent* event);
	bool (*nativeEvent)(struct QLCDNumber_VTable* vtbl, QLCDNumber* self, struct miqt_string eventType, void* message, long* result);
	int (*metric)(struct QLCDNumber_VTable* vtbl, const QLCDNumber* self, int param1);
	void (*initPainter)(struct QLCDNumber_VTable* vtbl, const QLCDNumber* self, QPainter* painter);
	QPaintDevice* (*redirected)(struct QLCDNumber_VTable* vtbl, const QLCDNumber* self, QPoint* offset);
	QPainter* (*sharedPainter)(struct QLCDNumber_VTable* vtbl, const QLCDNumber* self);
	void (*inputMethodEvent)(struct QLCDNumber_VTable* vtbl, QLCDNumber* self, QInputMethodEvent* param1);
	QVariant* (*inputMethodQuery)(struct QLCDNumber_VTable* vtbl, const QLCDNumber* self, int param1);
	bool (*focusNextPrevChild)(struct QLCDNumber_VTable* vtbl, QLCDNumber* self, bool next);
	bool (*eventFilter)(struct QLCDNumber_VTable* vtbl, QLCDNumber* self, QObject* watched, QEvent* event);
	void (*timerEvent)(struct QLCDNumber_VTable* vtbl, QLCDNumber* self, QTimerEvent* event);
	void (*childEvent)(struct QLCDNumber_VTable* vtbl, QLCDNumber* self, QChildEvent* event);
	void (*customEvent)(struct QLCDNumber_VTable* vtbl, QLCDNumber* self, QEvent* event);
	void (*connectNotify)(struct QLCDNumber_VTable* vtbl, QLCDNumber* self, QMetaMethod* signal);
	void (*disconnectNotify)(struct QLCDNumber_VTable* vtbl, QLCDNumber* self, QMetaMethod* signal);
};
QLCDNumber* QLCDNumber_new(struct QLCDNumber_VTable* vtbl, QWidget* parent);
QLCDNumber* QLCDNumber_new2(struct QLCDNumber_VTable* vtbl);
QLCDNumber* QLCDNumber_new3(struct QLCDNumber_VTable* vtbl, unsigned int numDigits);
QLCDNumber* QLCDNumber_new4(struct QLCDNumber_VTable* vtbl, unsigned int numDigits, QWidget* parent);
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
void QLCDNumber_connect_overflow(QLCDNumber* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
bool QLCDNumber_event(QLCDNumber* self, QEvent* e);
void QLCDNumber_paintEvent(QLCDNumber* self, QPaintEvent* param1);
struct miqt_string QLCDNumber_tr2(const char* s, const char* c);
struct miqt_string QLCDNumber_tr3(const char* s, const char* c, int n);
struct miqt_string QLCDNumber_trUtf82(const char* s, const char* c);
struct miqt_string QLCDNumber_trUtf83(const char* s, const char* c, int n);
QMetaObject* QLCDNumber_virtualbase_metaObject(const void* self);
void* QLCDNumber_virtualbase_metacast(void* self, const char* param1);
int QLCDNumber_virtualbase_metacall(void* self, int param1, int param2, void** param3);
QSize* QLCDNumber_virtualbase_sizeHint(const void* self);
bool QLCDNumber_virtualbase_event(void* self, QEvent* e);
void QLCDNumber_virtualbase_paintEvent(void* self, QPaintEvent* param1);
void QLCDNumber_virtualbase_changeEvent(void* self, QEvent* param1);
int QLCDNumber_virtualbase_devType(const void* self);
void QLCDNumber_virtualbase_setVisible(void* self, bool visible);
QSize* QLCDNumber_virtualbase_minimumSizeHint(const void* self);
int QLCDNumber_virtualbase_heightForWidth(const void* self, int param1);
bool QLCDNumber_virtualbase_hasHeightForWidth(const void* self);
QPaintEngine* QLCDNumber_virtualbase_paintEngine(const void* self);
void QLCDNumber_virtualbase_mousePressEvent(void* self, QMouseEvent* event);
void QLCDNumber_virtualbase_mouseReleaseEvent(void* self, QMouseEvent* event);
void QLCDNumber_virtualbase_mouseDoubleClickEvent(void* self, QMouseEvent* event);
void QLCDNumber_virtualbase_mouseMoveEvent(void* self, QMouseEvent* event);
void QLCDNumber_virtualbase_wheelEvent(void* self, QWheelEvent* event);
void QLCDNumber_virtualbase_keyPressEvent(void* self, QKeyEvent* event);
void QLCDNumber_virtualbase_keyReleaseEvent(void* self, QKeyEvent* event);
void QLCDNumber_virtualbase_focusInEvent(void* self, QFocusEvent* event);
void QLCDNumber_virtualbase_focusOutEvent(void* self, QFocusEvent* event);
void QLCDNumber_virtualbase_enterEvent(void* self, QEvent* event);
void QLCDNumber_virtualbase_leaveEvent(void* self, QEvent* event);
void QLCDNumber_virtualbase_moveEvent(void* self, QMoveEvent* event);
void QLCDNumber_virtualbase_resizeEvent(void* self, QResizeEvent* event);
void QLCDNumber_virtualbase_closeEvent(void* self, QCloseEvent* event);
void QLCDNumber_virtualbase_contextMenuEvent(void* self, QContextMenuEvent* event);
void QLCDNumber_virtualbase_tabletEvent(void* self, QTabletEvent* event);
void QLCDNumber_virtualbase_actionEvent(void* self, QActionEvent* event);
void QLCDNumber_virtualbase_dragEnterEvent(void* self, QDragEnterEvent* event);
void QLCDNumber_virtualbase_dragMoveEvent(void* self, QDragMoveEvent* event);
void QLCDNumber_virtualbase_dragLeaveEvent(void* self, QDragLeaveEvent* event);
void QLCDNumber_virtualbase_dropEvent(void* self, QDropEvent* event);
void QLCDNumber_virtualbase_showEvent(void* self, QShowEvent* event);
void QLCDNumber_virtualbase_hideEvent(void* self, QHideEvent* event);
bool QLCDNumber_virtualbase_nativeEvent(void* self, struct miqt_string eventType, void* message, long* result);
int QLCDNumber_virtualbase_metric(const void* self, int param1);
void QLCDNumber_virtualbase_initPainter(const void* self, QPainter* painter);
QPaintDevice* QLCDNumber_virtualbase_redirected(const void* self, QPoint* offset);
QPainter* QLCDNumber_virtualbase_sharedPainter(const void* self);
void QLCDNumber_virtualbase_inputMethodEvent(void* self, QInputMethodEvent* param1);
QVariant* QLCDNumber_virtualbase_inputMethodQuery(const void* self, int param1);
bool QLCDNumber_virtualbase_focusNextPrevChild(void* self, bool next);
bool QLCDNumber_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);
void QLCDNumber_virtualbase_timerEvent(void* self, QTimerEvent* event);
void QLCDNumber_virtualbase_childEvent(void* self, QChildEvent* event);
void QLCDNumber_virtualbase_customEvent(void* self, QEvent* event);
void QLCDNumber_virtualbase_connectNotify(void* self, QMetaMethod* signal);
void QLCDNumber_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
void QLCDNumber_protectedbase_drawFrame(bool* _dynamic_cast_ok, void* self, QPainter* param1);
void QLCDNumber_protectedbase_initStyleOption(bool* _dynamic_cast_ok, const void* self, QStyleOptionFrame* option);
void QLCDNumber_protectedbase_updateMicroFocus(bool* _dynamic_cast_ok, void* self);
void QLCDNumber_protectedbase_create(bool* _dynamic_cast_ok, void* self);
void QLCDNumber_protectedbase_destroy(bool* _dynamic_cast_ok, void* self);
bool QLCDNumber_protectedbase_focusNextChild(bool* _dynamic_cast_ok, void* self);
bool QLCDNumber_protectedbase_focusPreviousChild(bool* _dynamic_cast_ok, void* self);
QObject* QLCDNumber_protectedbase_sender(bool* _dynamic_cast_ok, const void* self);
int QLCDNumber_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self);
int QLCDNumber_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal);
bool QLCDNumber_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal);
const QMetaObject* QLCDNumber_staticMetaObject();
void QLCDNumber_delete(QLCDNumber* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
