#pragma once
#ifndef SEAQT_QTWIDGETS_GEN_QCALENDARWIDGET_H
#define SEAQT_QTWIDGETS_GEN_QCALENDARWIDGET_H

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
class QCalendar;
class QCalendarWidget;
class QChildEvent;
class QCloseEvent;
class QContextMenuEvent;
class QDate;
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
class QRect;
class QResizeEvent;
class QShowEvent;
class QSize;
class QTabletEvent;
class QTextCharFormat;
class QTimerEvent;
class QVariant;
class QWheelEvent;
class QWidget;
#else
typedef struct QActionEvent QActionEvent;
typedef struct QCalendar QCalendar;
typedef struct QCalendarWidget QCalendarWidget;
typedef struct QChildEvent QChildEvent;
typedef struct QCloseEvent QCloseEvent;
typedef struct QContextMenuEvent QContextMenuEvent;
typedef struct QDate QDate;
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
typedef struct QRect QRect;
typedef struct QResizeEvent QResizeEvent;
typedef struct QShowEvent QShowEvent;
typedef struct QSize QSize;
typedef struct QTabletEvent QTabletEvent;
typedef struct QTextCharFormat QTextCharFormat;
typedef struct QTimerEvent QTimerEvent;
typedef struct QVariant QVariant;
typedef struct QWheelEvent QWheelEvent;
typedef struct QWidget QWidget;
#endif

typedef struct VirtualQCalendarWidget VirtualQCalendarWidget;
typedef struct QCalendarWidget_VTable{
	void (*destructor)(VirtualQCalendarWidget* self);
	QMetaObject* (*metaObject)(const VirtualQCalendarWidget* self);
	void* (*metacast)(VirtualQCalendarWidget* self, const char* param1);
	int (*metacall)(VirtualQCalendarWidget* self, int param1, int param2, void** param3);
	QSize* (*sizeHint)(const VirtualQCalendarWidget* self);
	QSize* (*minimumSizeHint)(const VirtualQCalendarWidget* self);
	bool (*event)(VirtualQCalendarWidget* self, QEvent* event);
	bool (*eventFilter)(VirtualQCalendarWidget* self, QObject* watched, QEvent* event);
	void (*mousePressEvent)(VirtualQCalendarWidget* self, QMouseEvent* event);
	void (*resizeEvent)(VirtualQCalendarWidget* self, QResizeEvent* event);
	void (*keyPressEvent)(VirtualQCalendarWidget* self, QKeyEvent* event);
	void (*paintCell)(const VirtualQCalendarWidget* self, QPainter* painter, QRect* rect, QDate* date);
	int (*devType)(const VirtualQCalendarWidget* self);
	void (*setVisible)(VirtualQCalendarWidget* self, bool visible);
	int (*heightForWidth)(const VirtualQCalendarWidget* self, int param1);
	bool (*hasHeightForWidth)(const VirtualQCalendarWidget* self);
	QPaintEngine* (*paintEngine)(const VirtualQCalendarWidget* self);
	void (*mouseReleaseEvent)(VirtualQCalendarWidget* self, QMouseEvent* event);
	void (*mouseDoubleClickEvent)(VirtualQCalendarWidget* self, QMouseEvent* event);
	void (*mouseMoveEvent)(VirtualQCalendarWidget* self, QMouseEvent* event);
	void (*wheelEvent)(VirtualQCalendarWidget* self, QWheelEvent* event);
	void (*keyReleaseEvent)(VirtualQCalendarWidget* self, QKeyEvent* event);
	void (*focusInEvent)(VirtualQCalendarWidget* self, QFocusEvent* event);
	void (*focusOutEvent)(VirtualQCalendarWidget* self, QFocusEvent* event);
	void (*enterEvent)(VirtualQCalendarWidget* self, QEnterEvent* event);
	void (*leaveEvent)(VirtualQCalendarWidget* self, QEvent* event);
	void (*paintEvent)(VirtualQCalendarWidget* self, QPaintEvent* event);
	void (*moveEvent)(VirtualQCalendarWidget* self, QMoveEvent* event);
	void (*closeEvent)(VirtualQCalendarWidget* self, QCloseEvent* event);
	void (*contextMenuEvent)(VirtualQCalendarWidget* self, QContextMenuEvent* event);
	void (*tabletEvent)(VirtualQCalendarWidget* self, QTabletEvent* event);
	void (*actionEvent)(VirtualQCalendarWidget* self, QActionEvent* event);
	void (*dragEnterEvent)(VirtualQCalendarWidget* self, QDragEnterEvent* event);
	void (*dragMoveEvent)(VirtualQCalendarWidget* self, QDragMoveEvent* event);
	void (*dragLeaveEvent)(VirtualQCalendarWidget* self, QDragLeaveEvent* event);
	void (*dropEvent)(VirtualQCalendarWidget* self, QDropEvent* event);
	void (*showEvent)(VirtualQCalendarWidget* self, QShowEvent* event);
	void (*hideEvent)(VirtualQCalendarWidget* self, QHideEvent* event);
	bool (*nativeEvent)(VirtualQCalendarWidget* self, struct miqt_string eventType, void* message, intptr_t* result);
	void (*changeEvent)(VirtualQCalendarWidget* self, QEvent* param1);
	int (*metric)(const VirtualQCalendarWidget* self, int param1);
	void (*initPainter)(const VirtualQCalendarWidget* self, QPainter* painter);
	QPaintDevice* (*redirected)(const VirtualQCalendarWidget* self, QPoint* offset);
	QPainter* (*sharedPainter)(const VirtualQCalendarWidget* self);
	void (*inputMethodEvent)(VirtualQCalendarWidget* self, QInputMethodEvent* param1);
	QVariant* (*inputMethodQuery)(const VirtualQCalendarWidget* self, int param1);
	bool (*focusNextPrevChild)(VirtualQCalendarWidget* self, bool next);
	void (*timerEvent)(VirtualQCalendarWidget* self, QTimerEvent* event);
	void (*childEvent)(VirtualQCalendarWidget* self, QChildEvent* event);
	void (*customEvent)(VirtualQCalendarWidget* self, QEvent* event);
	void (*connectNotify)(VirtualQCalendarWidget* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQCalendarWidget* self, QMetaMethod* signal);
}QCalendarWidget_VTable;

const QCalendarWidget_VTable* QCalendarWidget_vtbl(const VirtualQCalendarWidget* self);
void* QCalendarWidget_vdata(const VirtualQCalendarWidget* self);
void QCalendarWidget_setVdata(VirtualQCalendarWidget* self, void* vdata);

VirtualQCalendarWidget* QCalendarWidget_new(const QCalendarWidget_VTable* vtbl, void* vdata, QWidget* parent);
VirtualQCalendarWidget* QCalendarWidget_new2(const QCalendarWidget_VTable* vtbl, void* vdata);

void QCalendarWidget_virtbase(QCalendarWidget* src, QWidget** outptr_QWidget);
QMetaObject* QCalendarWidget_metaObject(const QCalendarWidget* self);
void* QCalendarWidget_metacast(QCalendarWidget* self, const char* param1);
int QCalendarWidget_metacall(QCalendarWidget* self, int param1, int param2, void** param3);
struct miqt_string QCalendarWidget_tr(const char* s);
QSize* QCalendarWidget_sizeHint(const QCalendarWidget* self);
QSize* QCalendarWidget_minimumSizeHint(const QCalendarWidget* self);
QDate* QCalendarWidget_selectedDate(const QCalendarWidget* self);
int QCalendarWidget_yearShown(const QCalendarWidget* self);
int QCalendarWidget_monthShown(const QCalendarWidget* self);
QDate* QCalendarWidget_minimumDate(const QCalendarWidget* self);
void QCalendarWidget_setMinimumDate(QCalendarWidget* self, QDate* date);
QDate* QCalendarWidget_maximumDate(const QCalendarWidget* self);
void QCalendarWidget_setMaximumDate(QCalendarWidget* self, QDate* date);
int QCalendarWidget_firstDayOfWeek(const QCalendarWidget* self);
void QCalendarWidget_setFirstDayOfWeek(QCalendarWidget* self, int dayOfWeek);
bool QCalendarWidget_isNavigationBarVisible(const QCalendarWidget* self);
bool QCalendarWidget_isGridVisible(const QCalendarWidget* self);
QCalendar* QCalendarWidget_calendar(const QCalendarWidget* self);
void QCalendarWidget_setCalendar(QCalendarWidget* self, QCalendar* calendar);
int QCalendarWidget_selectionMode(const QCalendarWidget* self);
void QCalendarWidget_setSelectionMode(QCalendarWidget* self, int mode);
int QCalendarWidget_horizontalHeaderFormat(const QCalendarWidget* self);
void QCalendarWidget_setHorizontalHeaderFormat(QCalendarWidget* self, int format);
int QCalendarWidget_verticalHeaderFormat(const QCalendarWidget* self);
void QCalendarWidget_setVerticalHeaderFormat(QCalendarWidget* self, int format);
QTextCharFormat* QCalendarWidget_headerTextFormat(const QCalendarWidget* self);
void QCalendarWidget_setHeaderTextFormat(QCalendarWidget* self, QTextCharFormat* format);
QTextCharFormat* QCalendarWidget_weekdayTextFormat(const QCalendarWidget* self, int dayOfWeek);
void QCalendarWidget_setWeekdayTextFormat(QCalendarWidget* self, int dayOfWeek, QTextCharFormat* format);
struct miqt_map /* of QDate* to QTextCharFormat* */  QCalendarWidget_dateTextFormat(const QCalendarWidget* self);
QTextCharFormat* QCalendarWidget_dateTextFormatWithDate(const QCalendarWidget* self, QDate* date);
void QCalendarWidget_setDateTextFormat(QCalendarWidget* self, QDate* date, QTextCharFormat* format);
bool QCalendarWidget_isDateEditEnabled(const QCalendarWidget* self);
void QCalendarWidget_setDateEditEnabled(QCalendarWidget* self, bool enable);
int QCalendarWidget_dateEditAcceptDelay(const QCalendarWidget* self);
void QCalendarWidget_setDateEditAcceptDelay(QCalendarWidget* self, int delay);
bool QCalendarWidget_event(QCalendarWidget* self, QEvent* event);
bool QCalendarWidget_eventFilter(QCalendarWidget* self, QObject* watched, QEvent* event);
void QCalendarWidget_mousePressEvent(QCalendarWidget* self, QMouseEvent* event);
void QCalendarWidget_resizeEvent(QCalendarWidget* self, QResizeEvent* event);
void QCalendarWidget_keyPressEvent(QCalendarWidget* self, QKeyEvent* event);
void QCalendarWidget_paintCell(const QCalendarWidget* self, QPainter* painter, QRect* rect, QDate* date);
void QCalendarWidget_setSelectedDate(QCalendarWidget* self, QDate* date);
void QCalendarWidget_setDateRange(QCalendarWidget* self, QDate* min, QDate* max);
void QCalendarWidget_setCurrentPage(QCalendarWidget* self, int year, int month);
void QCalendarWidget_setGridVisible(QCalendarWidget* self, bool show);
void QCalendarWidget_setNavigationBarVisible(QCalendarWidget* self, bool visible);
void QCalendarWidget_showNextMonth(QCalendarWidget* self);
void QCalendarWidget_showPreviousMonth(QCalendarWidget* self);
void QCalendarWidget_showNextYear(QCalendarWidget* self);
void QCalendarWidget_showPreviousYear(QCalendarWidget* self);
void QCalendarWidget_showSelectedDate(QCalendarWidget* self);
void QCalendarWidget_showToday(QCalendarWidget* self);
void QCalendarWidget_selectionChanged(QCalendarWidget* self);
void QCalendarWidget_connect_selectionChanged(VirtualQCalendarWidget* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QCalendarWidget_clicked(QCalendarWidget* self, QDate* date);
void QCalendarWidget_connect_clicked(VirtualQCalendarWidget* self, intptr_t slot, void (*callback)(intptr_t, QDate*), void (*release)(intptr_t));
void QCalendarWidget_activated(QCalendarWidget* self, QDate* date);
void QCalendarWidget_connect_activated(VirtualQCalendarWidget* self, intptr_t slot, void (*callback)(intptr_t, QDate*), void (*release)(intptr_t));
void QCalendarWidget_currentPageChanged(QCalendarWidget* self, int year, int month);
void QCalendarWidget_connect_currentPageChanged(VirtualQCalendarWidget* self, intptr_t slot, void (*callback)(intptr_t, int, int), void (*release)(intptr_t));
struct miqt_string QCalendarWidget_tr2(const char* s, const char* c);
struct miqt_string QCalendarWidget_tr3(const char* s, const char* c, int n);

QMetaObject* QCalendarWidget_virtualbase_metaObject(const VirtualQCalendarWidget* self);
void* QCalendarWidget_virtualbase_metacast(VirtualQCalendarWidget* self, const char* param1);
int QCalendarWidget_virtualbase_metacall(VirtualQCalendarWidget* self, int param1, int param2, void** param3);
QSize* QCalendarWidget_virtualbase_sizeHint(const VirtualQCalendarWidget* self);
QSize* QCalendarWidget_virtualbase_minimumSizeHint(const VirtualQCalendarWidget* self);
bool QCalendarWidget_virtualbase_event(VirtualQCalendarWidget* self, QEvent* event);
bool QCalendarWidget_virtualbase_eventFilter(VirtualQCalendarWidget* self, QObject* watched, QEvent* event);
void QCalendarWidget_virtualbase_mousePressEvent(VirtualQCalendarWidget* self, QMouseEvent* event);
void QCalendarWidget_virtualbase_resizeEvent(VirtualQCalendarWidget* self, QResizeEvent* event);
void QCalendarWidget_virtualbase_keyPressEvent(VirtualQCalendarWidget* self, QKeyEvent* event);
void QCalendarWidget_virtualbase_paintCell(const VirtualQCalendarWidget* self, QPainter* painter, QRect* rect, QDate* date);
int QCalendarWidget_virtualbase_devType(const VirtualQCalendarWidget* self);
void QCalendarWidget_virtualbase_setVisible(VirtualQCalendarWidget* self, bool visible);
int QCalendarWidget_virtualbase_heightForWidth(const VirtualQCalendarWidget* self, int param1);
bool QCalendarWidget_virtualbase_hasHeightForWidth(const VirtualQCalendarWidget* self);
QPaintEngine* QCalendarWidget_virtualbase_paintEngine(const VirtualQCalendarWidget* self);
void QCalendarWidget_virtualbase_mouseReleaseEvent(VirtualQCalendarWidget* self, QMouseEvent* event);
void QCalendarWidget_virtualbase_mouseDoubleClickEvent(VirtualQCalendarWidget* self, QMouseEvent* event);
void QCalendarWidget_virtualbase_mouseMoveEvent(VirtualQCalendarWidget* self, QMouseEvent* event);
void QCalendarWidget_virtualbase_wheelEvent(VirtualQCalendarWidget* self, QWheelEvent* event);
void QCalendarWidget_virtualbase_keyReleaseEvent(VirtualQCalendarWidget* self, QKeyEvent* event);
void QCalendarWidget_virtualbase_focusInEvent(VirtualQCalendarWidget* self, QFocusEvent* event);
void QCalendarWidget_virtualbase_focusOutEvent(VirtualQCalendarWidget* self, QFocusEvent* event);
void QCalendarWidget_virtualbase_enterEvent(VirtualQCalendarWidget* self, QEnterEvent* event);
void QCalendarWidget_virtualbase_leaveEvent(VirtualQCalendarWidget* self, QEvent* event);
void QCalendarWidget_virtualbase_paintEvent(VirtualQCalendarWidget* self, QPaintEvent* event);
void QCalendarWidget_virtualbase_moveEvent(VirtualQCalendarWidget* self, QMoveEvent* event);
void QCalendarWidget_virtualbase_closeEvent(VirtualQCalendarWidget* self, QCloseEvent* event);
void QCalendarWidget_virtualbase_contextMenuEvent(VirtualQCalendarWidget* self, QContextMenuEvent* event);
void QCalendarWidget_virtualbase_tabletEvent(VirtualQCalendarWidget* self, QTabletEvent* event);
void QCalendarWidget_virtualbase_actionEvent(VirtualQCalendarWidget* self, QActionEvent* event);
void QCalendarWidget_virtualbase_dragEnterEvent(VirtualQCalendarWidget* self, QDragEnterEvent* event);
void QCalendarWidget_virtualbase_dragMoveEvent(VirtualQCalendarWidget* self, QDragMoveEvent* event);
void QCalendarWidget_virtualbase_dragLeaveEvent(VirtualQCalendarWidget* self, QDragLeaveEvent* event);
void QCalendarWidget_virtualbase_dropEvent(VirtualQCalendarWidget* self, QDropEvent* event);
void QCalendarWidget_virtualbase_showEvent(VirtualQCalendarWidget* self, QShowEvent* event);
void QCalendarWidget_virtualbase_hideEvent(VirtualQCalendarWidget* self, QHideEvent* event);
bool QCalendarWidget_virtualbase_nativeEvent(VirtualQCalendarWidget* self, struct miqt_string eventType, void* message, intptr_t* result);
void QCalendarWidget_virtualbase_changeEvent(VirtualQCalendarWidget* self, QEvent* param1);
int QCalendarWidget_virtualbase_metric(const VirtualQCalendarWidget* self, int param1);
void QCalendarWidget_virtualbase_initPainter(const VirtualQCalendarWidget* self, QPainter* painter);
QPaintDevice* QCalendarWidget_virtualbase_redirected(const VirtualQCalendarWidget* self, QPoint* offset);
QPainter* QCalendarWidget_virtualbase_sharedPainter(const VirtualQCalendarWidget* self);
void QCalendarWidget_virtualbase_inputMethodEvent(VirtualQCalendarWidget* self, QInputMethodEvent* param1);
QVariant* QCalendarWidget_virtualbase_inputMethodQuery(const VirtualQCalendarWidget* self, int param1);
bool QCalendarWidget_virtualbase_focusNextPrevChild(VirtualQCalendarWidget* self, bool next);
void QCalendarWidget_virtualbase_timerEvent(VirtualQCalendarWidget* self, QTimerEvent* event);
void QCalendarWidget_virtualbase_childEvent(VirtualQCalendarWidget* self, QChildEvent* event);
void QCalendarWidget_virtualbase_customEvent(VirtualQCalendarWidget* self, QEvent* event);
void QCalendarWidget_virtualbase_connectNotify(VirtualQCalendarWidget* self, QMetaMethod* signal);
void QCalendarWidget_virtualbase_disconnectNotify(VirtualQCalendarWidget* self, QMetaMethod* signal);

void QCalendarWidget_protectedbase_updateCell(VirtualQCalendarWidget* self, QDate* date);
void QCalendarWidget_protectedbase_updateCells(VirtualQCalendarWidget* self);
void QCalendarWidget_protectedbase_updateMicroFocus(VirtualQCalendarWidget* self);
void QCalendarWidget_protectedbase_create(VirtualQCalendarWidget* self);
void QCalendarWidget_protectedbase_destroy(VirtualQCalendarWidget* self);
bool QCalendarWidget_protectedbase_focusNextChild(VirtualQCalendarWidget* self);
bool QCalendarWidget_protectedbase_focusPreviousChild(VirtualQCalendarWidget* self);
QObject* QCalendarWidget_protectedbase_sender(const VirtualQCalendarWidget* self);
int QCalendarWidget_protectedbase_senderSignalIndex(const VirtualQCalendarWidget* self);
int QCalendarWidget_protectedbase_receivers(const VirtualQCalendarWidget* self, const char* signal);
bool QCalendarWidget_protectedbase_isSignalConnected(const VirtualQCalendarWidget* self, QMetaMethod* signal);

const QMetaObject* QCalendarWidget_staticMetaObject();
void QCalendarWidget_delete(QCalendarWidget* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
