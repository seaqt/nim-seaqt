#pragma once
#ifndef SEAQT_QTWIDGETS_GEN_QWIZARD_H
#define SEAQT_QTWIDGETS_GEN_QWIZARD_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt/libseaqt.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QAbstractButton;
class QActionEvent;
class QChildEvent;
class QCloseEvent;
class QContextMenuEvent;
class QDialog;
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
class QPixmap;
class QPoint;
class QResizeEvent;
class QShowEvent;
class QSize;
class QTabletEvent;
class QTimerEvent;
class QVariant;
class QWheelEvent;
class QWidget;
class QWizard;
class QWizardPage;
#else
typedef struct QAbstractButton QAbstractButton;
typedef struct QActionEvent QActionEvent;
typedef struct QChildEvent QChildEvent;
typedef struct QCloseEvent QCloseEvent;
typedef struct QContextMenuEvent QContextMenuEvent;
typedef struct QDialog QDialog;
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
typedef struct QPixmap QPixmap;
typedef struct QPoint QPoint;
typedef struct QResizeEvent QResizeEvent;
typedef struct QShowEvent QShowEvent;
typedef struct QSize QSize;
typedef struct QTabletEvent QTabletEvent;
typedef struct QTimerEvent QTimerEvent;
typedef struct QVariant QVariant;
typedef struct QWheelEvent QWheelEvent;
typedef struct QWidget QWidget;
typedef struct QWizard QWizard;
typedef struct QWizardPage QWizardPage;
#endif

typedef struct VirtualQWizard VirtualQWizard;
typedef struct QWizard_VTable{
	void (*destructor)(VirtualQWizard* self);
	QMetaObject* (*metaObject)(const VirtualQWizard* self);
	void* (*metacast)(VirtualQWizard* self, const char* param1);
	int (*metacall)(VirtualQWizard* self, int param1, int param2, void** param3);
	bool (*validateCurrentPage)(VirtualQWizard* self);
	int (*nextId)(const VirtualQWizard* self);
	void (*setVisible)(VirtualQWizard* self, bool visible);
	QSize* (*sizeHint)(const VirtualQWizard* self);
	bool (*event)(VirtualQWizard* self, QEvent* event);
	void (*resizeEvent)(VirtualQWizard* self, QResizeEvent* event);
	void (*paintEvent)(VirtualQWizard* self, QPaintEvent* event);
	void (*done)(VirtualQWizard* self, int result);
	void (*initializePage)(VirtualQWizard* self, int id);
	void (*cleanupPage)(VirtualQWizard* self, int id);
	QSize* (*minimumSizeHint)(const VirtualQWizard* self);
	void (*open)(VirtualQWizard* self);
	int (*exec)(VirtualQWizard* self);
	void (*accept)(VirtualQWizard* self);
	void (*reject)(VirtualQWizard* self);
	void (*keyPressEvent)(VirtualQWizard* self, QKeyEvent* param1);
	void (*closeEvent)(VirtualQWizard* self, QCloseEvent* param1);
	void (*showEvent)(VirtualQWizard* self, QShowEvent* param1);
	void (*contextMenuEvent)(VirtualQWizard* self, QContextMenuEvent* param1);
	bool (*eventFilter)(VirtualQWizard* self, QObject* param1, QEvent* param2);
	int (*devType)(const VirtualQWizard* self);
	int (*heightForWidth)(const VirtualQWizard* self, int param1);
	bool (*hasHeightForWidth)(const VirtualQWizard* self);
	QPaintEngine* (*paintEngine)(const VirtualQWizard* self);
	void (*mousePressEvent)(VirtualQWizard* self, QMouseEvent* event);
	void (*mouseReleaseEvent)(VirtualQWizard* self, QMouseEvent* event);
	void (*mouseDoubleClickEvent)(VirtualQWizard* self, QMouseEvent* event);
	void (*mouseMoveEvent)(VirtualQWizard* self, QMouseEvent* event);
	void (*wheelEvent)(VirtualQWizard* self, QWheelEvent* event);
	void (*keyReleaseEvent)(VirtualQWizard* self, QKeyEvent* event);
	void (*focusInEvent)(VirtualQWizard* self, QFocusEvent* event);
	void (*focusOutEvent)(VirtualQWizard* self, QFocusEvent* event);
	void (*enterEvent)(VirtualQWizard* self, QEnterEvent* event);
	void (*leaveEvent)(VirtualQWizard* self, QEvent* event);
	void (*moveEvent)(VirtualQWizard* self, QMoveEvent* event);
	void (*tabletEvent)(VirtualQWizard* self, QTabletEvent* event);
	void (*actionEvent)(VirtualQWizard* self, QActionEvent* event);
	void (*dragEnterEvent)(VirtualQWizard* self, QDragEnterEvent* event);
	void (*dragMoveEvent)(VirtualQWizard* self, QDragMoveEvent* event);
	void (*dragLeaveEvent)(VirtualQWizard* self, QDragLeaveEvent* event);
	void (*dropEvent)(VirtualQWizard* self, QDropEvent* event);
	void (*hideEvent)(VirtualQWizard* self, QHideEvent* event);
	bool (*nativeEvent)(VirtualQWizard* self, struct miqt_string eventType, void* message, intptr_t* result);
	void (*changeEvent)(VirtualQWizard* self, QEvent* param1);
	int (*metric)(const VirtualQWizard* self, int param1);
	void (*initPainter)(const VirtualQWizard* self, QPainter* painter);
	QPaintDevice* (*redirected)(const VirtualQWizard* self, QPoint* offset);
	QPainter* (*sharedPainter)(const VirtualQWizard* self);
	void (*inputMethodEvent)(VirtualQWizard* self, QInputMethodEvent* param1);
	QVariant* (*inputMethodQuery)(const VirtualQWizard* self, int param1);
	bool (*focusNextPrevChild)(VirtualQWizard* self, bool next);
	void (*timerEvent)(VirtualQWizard* self, QTimerEvent* event);
	void (*childEvent)(VirtualQWizard* self, QChildEvent* event);
	void (*customEvent)(VirtualQWizard* self, QEvent* event);
	void (*connectNotify)(VirtualQWizard* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQWizard* self, QMetaMethod* signal);
}QWizard_VTable;

const QWizard_VTable* QWizard_vtbl(const VirtualQWizard* self);
void* QWizard_vdata(const VirtualQWizard* self);
void QWizard_setVdata(VirtualQWizard* self, void* vdata);

VirtualQWizard* QWizard_new(const QWizard_VTable* vtbl, void* vdata, QWidget* parent);
VirtualQWizard* QWizard_new2(const QWizard_VTable* vtbl, void* vdata);
VirtualQWizard* QWizard_new3(const QWizard_VTable* vtbl, void* vdata, QWidget* parent, int flags);

void QWizard_virtbase(QWizard* src, QDialog** outptr_QDialog);
QMetaObject* QWizard_metaObject(const QWizard* self);
void* QWizard_metacast(QWizard* self, const char* param1);
int QWizard_metacall(QWizard* self, int param1, int param2, void** param3);
struct miqt_string QWizard_tr(const char* s);
int QWizard_addPage(QWizard* self, QWizardPage* page);
void QWizard_setPage(QWizard* self, int id, QWizardPage* page);
void QWizard_removePage(QWizard* self, int id);
QWizardPage* QWizard_page(const QWizard* self, int id);
bool QWizard_hasVisitedPage(const QWizard* self, int id);
struct miqt_array /* of int */  QWizard_visitedIds(const QWizard* self);
struct miqt_array /* of int */  QWizard_pageIds(const QWizard* self);
void QWizard_setStartId(QWizard* self, int id);
int QWizard_startId(const QWizard* self);
QWizardPage* QWizard_currentPage(const QWizard* self);
int QWizard_currentId(const QWizard* self);
bool QWizard_validateCurrentPage(QWizard* self);
int QWizard_nextId(const QWizard* self);
void QWizard_setField(QWizard* self, struct miqt_string name, QVariant* value);
QVariant* QWizard_field(const QWizard* self, struct miqt_string name);
void QWizard_setWizardStyle(QWizard* self, int style);
int QWizard_wizardStyle(const QWizard* self);
void QWizard_setOption(QWizard* self, int option);
bool QWizard_testOption(const QWizard* self, int option);
void QWizard_setOptions(QWizard* self, int options);
int QWizard_options(const QWizard* self);
void QWizard_setButtonText(QWizard* self, int which, struct miqt_string text);
struct miqt_string QWizard_buttonText(const QWizard* self, int which);
void QWizard_setButtonLayout(QWizard* self, struct miqt_array /* of int */  layout);
void QWizard_setButton(QWizard* self, int which, QAbstractButton* button);
QAbstractButton* QWizard_button(const QWizard* self, int which);
void QWizard_setTitleFormat(QWizard* self, int format);
int QWizard_titleFormat(const QWizard* self);
void QWizard_setSubTitleFormat(QWizard* self, int format);
int QWizard_subTitleFormat(const QWizard* self);
void QWizard_setPixmap(QWizard* self, int which, QPixmap* pixmap);
QPixmap* QWizard_pixmap(const QWizard* self, int which);
void QWizard_setSideWidget(QWizard* self, QWidget* widget);
QWidget* QWizard_sideWidget(const QWizard* self);
void QWizard_setDefaultProperty(QWizard* self, const char* className, const char* property, const char* changedSignal);
void QWizard_setVisible(QWizard* self, bool visible);
QSize* QWizard_sizeHint(const QWizard* self);
void QWizard_currentIdChanged(QWizard* self, int id);
void QWizard_connect_currentIdChanged(VirtualQWizard* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t));
void QWizard_helpRequested(QWizard* self);
void QWizard_connect_helpRequested(VirtualQWizard* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QWizard_customButtonClicked(QWizard* self, int which);
void QWizard_connect_customButtonClicked(VirtualQWizard* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t));
void QWizard_pageAdded(QWizard* self, int id);
void QWizard_connect_pageAdded(VirtualQWizard* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t));
void QWizard_pageRemoved(QWizard* self, int id);
void QWizard_connect_pageRemoved(VirtualQWizard* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t));
void QWizard_back(QWizard* self);
void QWizard_next(QWizard* self);
void QWizard_setCurrentId(QWizard* self, int id);
void QWizard_restart(QWizard* self);
bool QWizard_event(QWizard* self, QEvent* event);
void QWizard_resizeEvent(QWizard* self, QResizeEvent* event);
void QWizard_paintEvent(QWizard* self, QPaintEvent* event);
void QWizard_done(QWizard* self, int result);
void QWizard_initializePage(QWizard* self, int id);
void QWizard_cleanupPage(QWizard* self, int id);
struct miqt_string QWizard_tr2(const char* s, const char* c);
struct miqt_string QWizard_tr3(const char* s, const char* c, int n);
void QWizard_setOption2(QWizard* self, int option, bool on);

QMetaObject* QWizard_virtualbase_metaObject(const VirtualQWizard* self);
void* QWizard_virtualbase_metacast(VirtualQWizard* self, const char* param1);
int QWizard_virtualbase_metacall(VirtualQWizard* self, int param1, int param2, void** param3);
bool QWizard_virtualbase_validateCurrentPage(VirtualQWizard* self);
int QWizard_virtualbase_nextId(const VirtualQWizard* self);
void QWizard_virtualbase_setVisible(VirtualQWizard* self, bool visible);
QSize* QWizard_virtualbase_sizeHint(const VirtualQWizard* self);
bool QWizard_virtualbase_event(VirtualQWizard* self, QEvent* event);
void QWizard_virtualbase_resizeEvent(VirtualQWizard* self, QResizeEvent* event);
void QWizard_virtualbase_paintEvent(VirtualQWizard* self, QPaintEvent* event);
void QWizard_virtualbase_done(VirtualQWizard* self, int result);
void QWizard_virtualbase_initializePage(VirtualQWizard* self, int id);
void QWizard_virtualbase_cleanupPage(VirtualQWizard* self, int id);
QSize* QWizard_virtualbase_minimumSizeHint(const VirtualQWizard* self);
void QWizard_virtualbase_open(VirtualQWizard* self);
int QWizard_virtualbase_exec(VirtualQWizard* self);
void QWizard_virtualbase_accept(VirtualQWizard* self);
void QWizard_virtualbase_reject(VirtualQWizard* self);
void QWizard_virtualbase_keyPressEvent(VirtualQWizard* self, QKeyEvent* param1);
void QWizard_virtualbase_closeEvent(VirtualQWizard* self, QCloseEvent* param1);
void QWizard_virtualbase_showEvent(VirtualQWizard* self, QShowEvent* param1);
void QWizard_virtualbase_contextMenuEvent(VirtualQWizard* self, QContextMenuEvent* param1);
bool QWizard_virtualbase_eventFilter(VirtualQWizard* self, QObject* param1, QEvent* param2);
int QWizard_virtualbase_devType(const VirtualQWizard* self);
int QWizard_virtualbase_heightForWidth(const VirtualQWizard* self, int param1);
bool QWizard_virtualbase_hasHeightForWidth(const VirtualQWizard* self);
QPaintEngine* QWizard_virtualbase_paintEngine(const VirtualQWizard* self);
void QWizard_virtualbase_mousePressEvent(VirtualQWizard* self, QMouseEvent* event);
void QWizard_virtualbase_mouseReleaseEvent(VirtualQWizard* self, QMouseEvent* event);
void QWizard_virtualbase_mouseDoubleClickEvent(VirtualQWizard* self, QMouseEvent* event);
void QWizard_virtualbase_mouseMoveEvent(VirtualQWizard* self, QMouseEvent* event);
void QWizard_virtualbase_wheelEvent(VirtualQWizard* self, QWheelEvent* event);
void QWizard_virtualbase_keyReleaseEvent(VirtualQWizard* self, QKeyEvent* event);
void QWizard_virtualbase_focusInEvent(VirtualQWizard* self, QFocusEvent* event);
void QWizard_virtualbase_focusOutEvent(VirtualQWizard* self, QFocusEvent* event);
void QWizard_virtualbase_enterEvent(VirtualQWizard* self, QEnterEvent* event);
void QWizard_virtualbase_leaveEvent(VirtualQWizard* self, QEvent* event);
void QWizard_virtualbase_moveEvent(VirtualQWizard* self, QMoveEvent* event);
void QWizard_virtualbase_tabletEvent(VirtualQWizard* self, QTabletEvent* event);
void QWizard_virtualbase_actionEvent(VirtualQWizard* self, QActionEvent* event);
void QWizard_virtualbase_dragEnterEvent(VirtualQWizard* self, QDragEnterEvent* event);
void QWizard_virtualbase_dragMoveEvent(VirtualQWizard* self, QDragMoveEvent* event);
void QWizard_virtualbase_dragLeaveEvent(VirtualQWizard* self, QDragLeaveEvent* event);
void QWizard_virtualbase_dropEvent(VirtualQWizard* self, QDropEvent* event);
void QWizard_virtualbase_hideEvent(VirtualQWizard* self, QHideEvent* event);
bool QWizard_virtualbase_nativeEvent(VirtualQWizard* self, struct miqt_string eventType, void* message, intptr_t* result);
void QWizard_virtualbase_changeEvent(VirtualQWizard* self, QEvent* param1);
int QWizard_virtualbase_metric(const VirtualQWizard* self, int param1);
void QWizard_virtualbase_initPainter(const VirtualQWizard* self, QPainter* painter);
QPaintDevice* QWizard_virtualbase_redirected(const VirtualQWizard* self, QPoint* offset);
QPainter* QWizard_virtualbase_sharedPainter(const VirtualQWizard* self);
void QWizard_virtualbase_inputMethodEvent(VirtualQWizard* self, QInputMethodEvent* param1);
QVariant* QWizard_virtualbase_inputMethodQuery(const VirtualQWizard* self, int param1);
bool QWizard_virtualbase_focusNextPrevChild(VirtualQWizard* self, bool next);
void QWizard_virtualbase_timerEvent(VirtualQWizard* self, QTimerEvent* event);
void QWizard_virtualbase_childEvent(VirtualQWizard* self, QChildEvent* event);
void QWizard_virtualbase_customEvent(VirtualQWizard* self, QEvent* event);
void QWizard_virtualbase_connectNotify(VirtualQWizard* self, QMetaMethod* signal);
void QWizard_virtualbase_disconnectNotify(VirtualQWizard* self, QMetaMethod* signal);

void QWizard_protectedbase_adjustPosition(VirtualQWizard* self, QWidget* param1);
void QWizard_protectedbase_updateMicroFocus(VirtualQWizard* self);
void QWizard_protectedbase_create(VirtualQWizard* self);
void QWizard_protectedbase_destroy(VirtualQWizard* self);
bool QWizard_protectedbase_focusNextChild(VirtualQWizard* self);
bool QWizard_protectedbase_focusPreviousChild(VirtualQWizard* self);
QObject* QWizard_protectedbase_sender(const VirtualQWizard* self);
int QWizard_protectedbase_senderSignalIndex(const VirtualQWizard* self);
int QWizard_protectedbase_receivers(const VirtualQWizard* self, const char* signal);
bool QWizard_protectedbase_isSignalConnected(const VirtualQWizard* self, QMetaMethod* signal);

const QMetaObject* QWizard_staticMetaObject();
void QWizard_delete(QWizard* self);

typedef struct VirtualQWizardPage VirtualQWizardPage;
typedef struct QWizardPage_VTable{
	void (*destructor)(VirtualQWizardPage* self);
	QMetaObject* (*metaObject)(const VirtualQWizardPage* self);
	void* (*metacast)(VirtualQWizardPage* self, const char* param1);
	int (*metacall)(VirtualQWizardPage* self, int param1, int param2, void** param3);
	void (*initializePage)(VirtualQWizardPage* self);
	void (*cleanupPage)(VirtualQWizardPage* self);
	bool (*validatePage)(VirtualQWizardPage* self);
	bool (*isComplete)(const VirtualQWizardPage* self);
	int (*nextId)(const VirtualQWizardPage* self);
	int (*devType)(const VirtualQWizardPage* self);
	void (*setVisible)(VirtualQWizardPage* self, bool visible);
	QSize* (*sizeHint)(const VirtualQWizardPage* self);
	QSize* (*minimumSizeHint)(const VirtualQWizardPage* self);
	int (*heightForWidth)(const VirtualQWizardPage* self, int param1);
	bool (*hasHeightForWidth)(const VirtualQWizardPage* self);
	QPaintEngine* (*paintEngine)(const VirtualQWizardPage* self);
	bool (*event)(VirtualQWizardPage* self, QEvent* event);
	void (*mousePressEvent)(VirtualQWizardPage* self, QMouseEvent* event);
	void (*mouseReleaseEvent)(VirtualQWizardPage* self, QMouseEvent* event);
	void (*mouseDoubleClickEvent)(VirtualQWizardPage* self, QMouseEvent* event);
	void (*mouseMoveEvent)(VirtualQWizardPage* self, QMouseEvent* event);
	void (*wheelEvent)(VirtualQWizardPage* self, QWheelEvent* event);
	void (*keyPressEvent)(VirtualQWizardPage* self, QKeyEvent* event);
	void (*keyReleaseEvent)(VirtualQWizardPage* self, QKeyEvent* event);
	void (*focusInEvent)(VirtualQWizardPage* self, QFocusEvent* event);
	void (*focusOutEvent)(VirtualQWizardPage* self, QFocusEvent* event);
	void (*enterEvent)(VirtualQWizardPage* self, QEnterEvent* event);
	void (*leaveEvent)(VirtualQWizardPage* self, QEvent* event);
	void (*paintEvent)(VirtualQWizardPage* self, QPaintEvent* event);
	void (*moveEvent)(VirtualQWizardPage* self, QMoveEvent* event);
	void (*resizeEvent)(VirtualQWizardPage* self, QResizeEvent* event);
	void (*closeEvent)(VirtualQWizardPage* self, QCloseEvent* event);
	void (*contextMenuEvent)(VirtualQWizardPage* self, QContextMenuEvent* event);
	void (*tabletEvent)(VirtualQWizardPage* self, QTabletEvent* event);
	void (*actionEvent)(VirtualQWizardPage* self, QActionEvent* event);
	void (*dragEnterEvent)(VirtualQWizardPage* self, QDragEnterEvent* event);
	void (*dragMoveEvent)(VirtualQWizardPage* self, QDragMoveEvent* event);
	void (*dragLeaveEvent)(VirtualQWizardPage* self, QDragLeaveEvent* event);
	void (*dropEvent)(VirtualQWizardPage* self, QDropEvent* event);
	void (*showEvent)(VirtualQWizardPage* self, QShowEvent* event);
	void (*hideEvent)(VirtualQWizardPage* self, QHideEvent* event);
	bool (*nativeEvent)(VirtualQWizardPage* self, struct miqt_string eventType, void* message, intptr_t* result);
	void (*changeEvent)(VirtualQWizardPage* self, QEvent* param1);
	int (*metric)(const VirtualQWizardPage* self, int param1);
	void (*initPainter)(const VirtualQWizardPage* self, QPainter* painter);
	QPaintDevice* (*redirected)(const VirtualQWizardPage* self, QPoint* offset);
	QPainter* (*sharedPainter)(const VirtualQWizardPage* self);
	void (*inputMethodEvent)(VirtualQWizardPage* self, QInputMethodEvent* param1);
	QVariant* (*inputMethodQuery)(const VirtualQWizardPage* self, int param1);
	bool (*focusNextPrevChild)(VirtualQWizardPage* self, bool next);
	bool (*eventFilter)(VirtualQWizardPage* self, QObject* watched, QEvent* event);
	void (*timerEvent)(VirtualQWizardPage* self, QTimerEvent* event);
	void (*childEvent)(VirtualQWizardPage* self, QChildEvent* event);
	void (*customEvent)(VirtualQWizardPage* self, QEvent* event);
	void (*connectNotify)(VirtualQWizardPage* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQWizardPage* self, QMetaMethod* signal);
}QWizardPage_VTable;

const QWizardPage_VTable* QWizardPage_vtbl(const VirtualQWizardPage* self);
void* QWizardPage_vdata(const VirtualQWizardPage* self);
void QWizardPage_setVdata(VirtualQWizardPage* self, void* vdata);

VirtualQWizardPage* QWizardPage_new(const QWizardPage_VTable* vtbl, void* vdata, QWidget* parent);
VirtualQWizardPage* QWizardPage_new2(const QWizardPage_VTable* vtbl, void* vdata);

void QWizardPage_virtbase(QWizardPage* src, QWidget** outptr_QWidget);
QMetaObject* QWizardPage_metaObject(const QWizardPage* self);
void* QWizardPage_metacast(QWizardPage* self, const char* param1);
int QWizardPage_metacall(QWizardPage* self, int param1, int param2, void** param3);
struct miqt_string QWizardPage_tr(const char* s);
void QWizardPage_setTitle(QWizardPage* self, struct miqt_string title);
struct miqt_string QWizardPage_title(const QWizardPage* self);
void QWizardPage_setSubTitle(QWizardPage* self, struct miqt_string subTitle);
struct miqt_string QWizardPage_subTitle(const QWizardPage* self);
void QWizardPage_setPixmap(QWizardPage* self, int which, QPixmap* pixmap);
QPixmap* QWizardPage_pixmap(const QWizardPage* self, int which);
void QWizardPage_setFinalPage(QWizardPage* self, bool finalPage);
bool QWizardPage_isFinalPage(const QWizardPage* self);
void QWizardPage_setCommitPage(QWizardPage* self, bool commitPage);
bool QWizardPage_isCommitPage(const QWizardPage* self);
void QWizardPage_setButtonText(QWizardPage* self, int which, struct miqt_string text);
struct miqt_string QWizardPage_buttonText(const QWizardPage* self, int which);
void QWizardPage_initializePage(QWizardPage* self);
void QWizardPage_cleanupPage(QWizardPage* self);
bool QWizardPage_validatePage(QWizardPage* self);
bool QWizardPage_isComplete(const QWizardPage* self);
int QWizardPage_nextId(const QWizardPage* self);
void QWizardPage_completeChanged(QWizardPage* self);
void QWizardPage_connect_completeChanged(VirtualQWizardPage* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
struct miqt_string QWizardPage_tr2(const char* s, const char* c);
struct miqt_string QWizardPage_tr3(const char* s, const char* c, int n);

QMetaObject* QWizardPage_virtualbase_metaObject(const VirtualQWizardPage* self);
void* QWizardPage_virtualbase_metacast(VirtualQWizardPage* self, const char* param1);
int QWizardPage_virtualbase_metacall(VirtualQWizardPage* self, int param1, int param2, void** param3);
void QWizardPage_virtualbase_initializePage(VirtualQWizardPage* self);
void QWizardPage_virtualbase_cleanupPage(VirtualQWizardPage* self);
bool QWizardPage_virtualbase_validatePage(VirtualQWizardPage* self);
bool QWizardPage_virtualbase_isComplete(const VirtualQWizardPage* self);
int QWizardPage_virtualbase_nextId(const VirtualQWizardPage* self);
int QWizardPage_virtualbase_devType(const VirtualQWizardPage* self);
void QWizardPage_virtualbase_setVisible(VirtualQWizardPage* self, bool visible);
QSize* QWizardPage_virtualbase_sizeHint(const VirtualQWizardPage* self);
QSize* QWizardPage_virtualbase_minimumSizeHint(const VirtualQWizardPage* self);
int QWizardPage_virtualbase_heightForWidth(const VirtualQWizardPage* self, int param1);
bool QWizardPage_virtualbase_hasHeightForWidth(const VirtualQWizardPage* self);
QPaintEngine* QWizardPage_virtualbase_paintEngine(const VirtualQWizardPage* self);
bool QWizardPage_virtualbase_event(VirtualQWizardPage* self, QEvent* event);
void QWizardPage_virtualbase_mousePressEvent(VirtualQWizardPage* self, QMouseEvent* event);
void QWizardPage_virtualbase_mouseReleaseEvent(VirtualQWizardPage* self, QMouseEvent* event);
void QWizardPage_virtualbase_mouseDoubleClickEvent(VirtualQWizardPage* self, QMouseEvent* event);
void QWizardPage_virtualbase_mouseMoveEvent(VirtualQWizardPage* self, QMouseEvent* event);
void QWizardPage_virtualbase_wheelEvent(VirtualQWizardPage* self, QWheelEvent* event);
void QWizardPage_virtualbase_keyPressEvent(VirtualQWizardPage* self, QKeyEvent* event);
void QWizardPage_virtualbase_keyReleaseEvent(VirtualQWizardPage* self, QKeyEvent* event);
void QWizardPage_virtualbase_focusInEvent(VirtualQWizardPage* self, QFocusEvent* event);
void QWizardPage_virtualbase_focusOutEvent(VirtualQWizardPage* self, QFocusEvent* event);
void QWizardPage_virtualbase_enterEvent(VirtualQWizardPage* self, QEnterEvent* event);
void QWizardPage_virtualbase_leaveEvent(VirtualQWizardPage* self, QEvent* event);
void QWizardPage_virtualbase_paintEvent(VirtualQWizardPage* self, QPaintEvent* event);
void QWizardPage_virtualbase_moveEvent(VirtualQWizardPage* self, QMoveEvent* event);
void QWizardPage_virtualbase_resizeEvent(VirtualQWizardPage* self, QResizeEvent* event);
void QWizardPage_virtualbase_closeEvent(VirtualQWizardPage* self, QCloseEvent* event);
void QWizardPage_virtualbase_contextMenuEvent(VirtualQWizardPage* self, QContextMenuEvent* event);
void QWizardPage_virtualbase_tabletEvent(VirtualQWizardPage* self, QTabletEvent* event);
void QWizardPage_virtualbase_actionEvent(VirtualQWizardPage* self, QActionEvent* event);
void QWizardPage_virtualbase_dragEnterEvent(VirtualQWizardPage* self, QDragEnterEvent* event);
void QWizardPage_virtualbase_dragMoveEvent(VirtualQWizardPage* self, QDragMoveEvent* event);
void QWizardPage_virtualbase_dragLeaveEvent(VirtualQWizardPage* self, QDragLeaveEvent* event);
void QWizardPage_virtualbase_dropEvent(VirtualQWizardPage* self, QDropEvent* event);
void QWizardPage_virtualbase_showEvent(VirtualQWizardPage* self, QShowEvent* event);
void QWizardPage_virtualbase_hideEvent(VirtualQWizardPage* self, QHideEvent* event);
bool QWizardPage_virtualbase_nativeEvent(VirtualQWizardPage* self, struct miqt_string eventType, void* message, intptr_t* result);
void QWizardPage_virtualbase_changeEvent(VirtualQWizardPage* self, QEvent* param1);
int QWizardPage_virtualbase_metric(const VirtualQWizardPage* self, int param1);
void QWizardPage_virtualbase_initPainter(const VirtualQWizardPage* self, QPainter* painter);
QPaintDevice* QWizardPage_virtualbase_redirected(const VirtualQWizardPage* self, QPoint* offset);
QPainter* QWizardPage_virtualbase_sharedPainter(const VirtualQWizardPage* self);
void QWizardPage_virtualbase_inputMethodEvent(VirtualQWizardPage* self, QInputMethodEvent* param1);
QVariant* QWizardPage_virtualbase_inputMethodQuery(const VirtualQWizardPage* self, int param1);
bool QWizardPage_virtualbase_focusNextPrevChild(VirtualQWizardPage* self, bool next);
bool QWizardPage_virtualbase_eventFilter(VirtualQWizardPage* self, QObject* watched, QEvent* event);
void QWizardPage_virtualbase_timerEvent(VirtualQWizardPage* self, QTimerEvent* event);
void QWizardPage_virtualbase_childEvent(VirtualQWizardPage* self, QChildEvent* event);
void QWizardPage_virtualbase_customEvent(VirtualQWizardPage* self, QEvent* event);
void QWizardPage_virtualbase_connectNotify(VirtualQWizardPage* self, QMetaMethod* signal);
void QWizardPage_virtualbase_disconnectNotify(VirtualQWizardPage* self, QMetaMethod* signal);

void QWizardPage_protectedbase_setField(VirtualQWizardPage* self, struct miqt_string name, QVariant* value);
QVariant* QWizardPage_protectedbase_field(const VirtualQWizardPage* self, struct miqt_string name);
void QWizardPage_protectedbase_registerField(VirtualQWizardPage* self, struct miqt_string name, QWidget* widget);
QWizard* QWizardPage_protectedbase_wizard(const VirtualQWizardPage* self);
void QWizardPage_protectedbase_registerField3(VirtualQWizardPage* self, struct miqt_string name, QWidget* widget, const char* property);
void QWizardPage_protectedbase_registerField4(VirtualQWizardPage* self, struct miqt_string name, QWidget* widget, const char* property, const char* changedSignal);
void QWizardPage_protectedbase_updateMicroFocus(VirtualQWizardPage* self);
void QWizardPage_protectedbase_create(VirtualQWizardPage* self);
void QWizardPage_protectedbase_destroy(VirtualQWizardPage* self);
bool QWizardPage_protectedbase_focusNextChild(VirtualQWizardPage* self);
bool QWizardPage_protectedbase_focusPreviousChild(VirtualQWizardPage* self);
QObject* QWizardPage_protectedbase_sender(const VirtualQWizardPage* self);
int QWizardPage_protectedbase_senderSignalIndex(const VirtualQWizardPage* self);
int QWizardPage_protectedbase_receivers(const VirtualQWizardPage* self, const char* signal);
bool QWizardPage_protectedbase_isSignalConnected(const VirtualQWizardPage* self, QMetaMethod* signal);

const QMetaObject* QWizardPage_staticMetaObject();
void QWizardPage_delete(QWizardPage* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
