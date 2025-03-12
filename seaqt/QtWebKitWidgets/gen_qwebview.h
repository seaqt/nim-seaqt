#pragma once
#ifndef SEAQT_QTWEBKITWIDGETS_GEN_QWEBVIEW_H
#define SEAQT_QTWEBKITWIDGETS_GEN_QWEBVIEW_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt/libseaqt.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QAction;
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
class QHideEvent;
class QIcon;
class QInputMethodEvent;
class QKeyEvent;
class QMetaMethod;
class QMetaObject;
class QMouseEvent;
class QMoveEvent;
class QNetworkRequest;
class QObject;
class QPaintDevice;
class QPaintEngine;
class QPaintEvent;
class QPainter;
class QPoint;
class QPrinter;
class QResizeEvent;
class QShowEvent;
class QSize;
class QTabletEvent;
class QTimerEvent;
class QUrl;
class QVariant;
class QWebHistory;
class QWebPage;
class QWebSettings;
class QWebView;
class QWheelEvent;
class QWidget;
#else
typedef struct QAction QAction;
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
typedef struct QHideEvent QHideEvent;
typedef struct QIcon QIcon;
typedef struct QInputMethodEvent QInputMethodEvent;
typedef struct QKeyEvent QKeyEvent;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QMouseEvent QMouseEvent;
typedef struct QMoveEvent QMoveEvent;
typedef struct QNetworkRequest QNetworkRequest;
typedef struct QObject QObject;
typedef struct QPaintDevice QPaintDevice;
typedef struct QPaintEngine QPaintEngine;
typedef struct QPaintEvent QPaintEvent;
typedef struct QPainter QPainter;
typedef struct QPoint QPoint;
typedef struct QPrinter QPrinter;
typedef struct QResizeEvent QResizeEvent;
typedef struct QShowEvent QShowEvent;
typedef struct QSize QSize;
typedef struct QTabletEvent QTabletEvent;
typedef struct QTimerEvent QTimerEvent;
typedef struct QUrl QUrl;
typedef struct QVariant QVariant;
typedef struct QWebHistory QWebHistory;
typedef struct QWebPage QWebPage;
typedef struct QWebSettings QWebSettings;
typedef struct QWebView QWebView;
typedef struct QWheelEvent QWheelEvent;
typedef struct QWidget QWidget;
#endif

typedef struct VirtualQWebView VirtualQWebView;
typedef struct QWebView_VTable{
	void (*destructor)(VirtualQWebView* self);
	QMetaObject* (*metaObject)(const VirtualQWebView* self);
	void* (*metacast)(VirtualQWebView* self, const char* param1);
	int (*metacall)(VirtualQWebView* self, int param1, int param2, void** param3);
	QVariant* (*inputMethodQuery)(const VirtualQWebView* self, int property);
	QSize* (*sizeHint)(const VirtualQWebView* self);
	bool (*event)(VirtualQWebView* self, QEvent* param1);
	void (*resizeEvent)(VirtualQWebView* self, QResizeEvent* param1);
	void (*paintEvent)(VirtualQWebView* self, QPaintEvent* param1);
	QWebView* (*createWindow)(VirtualQWebView* self, int type);
	void (*changeEvent)(VirtualQWebView* self, QEvent* param1);
	void (*mouseMoveEvent)(VirtualQWebView* self, QMouseEvent* param1);
	void (*mousePressEvent)(VirtualQWebView* self, QMouseEvent* param1);
	void (*mouseDoubleClickEvent)(VirtualQWebView* self, QMouseEvent* param1);
	void (*mouseReleaseEvent)(VirtualQWebView* self, QMouseEvent* param1);
	void (*contextMenuEvent)(VirtualQWebView* self, QContextMenuEvent* param1);
	void (*wheelEvent)(VirtualQWebView* self, QWheelEvent* param1);
	void (*keyPressEvent)(VirtualQWebView* self, QKeyEvent* param1);
	void (*keyReleaseEvent)(VirtualQWebView* self, QKeyEvent* param1);
	void (*dragEnterEvent)(VirtualQWebView* self, QDragEnterEvent* param1);
	void (*dragLeaveEvent)(VirtualQWebView* self, QDragLeaveEvent* param1);
	void (*dragMoveEvent)(VirtualQWebView* self, QDragMoveEvent* param1);
	void (*dropEvent)(VirtualQWebView* self, QDropEvent* param1);
	void (*focusInEvent)(VirtualQWebView* self, QFocusEvent* param1);
	void (*focusOutEvent)(VirtualQWebView* self, QFocusEvent* param1);
	void (*inputMethodEvent)(VirtualQWebView* self, QInputMethodEvent* param1);
	bool (*focusNextPrevChild)(VirtualQWebView* self, bool next);
	int (*devType)(const VirtualQWebView* self);
	void (*setVisible)(VirtualQWebView* self, bool visible);
	QSize* (*minimumSizeHint)(const VirtualQWebView* self);
	int (*heightForWidth)(const VirtualQWebView* self, int param1);
	bool (*hasHeightForWidth)(const VirtualQWebView* self);
	QPaintEngine* (*paintEngine)(const VirtualQWebView* self);
	void (*enterEvent)(VirtualQWebView* self, QEvent* event);
	void (*leaveEvent)(VirtualQWebView* self, QEvent* event);
	void (*moveEvent)(VirtualQWebView* self, QMoveEvent* event);
	void (*closeEvent)(VirtualQWebView* self, QCloseEvent* event);
	void (*tabletEvent)(VirtualQWebView* self, QTabletEvent* event);
	void (*actionEvent)(VirtualQWebView* self, QActionEvent* event);
	void (*showEvent)(VirtualQWebView* self, QShowEvent* event);
	void (*hideEvent)(VirtualQWebView* self, QHideEvent* event);
	bool (*nativeEvent)(VirtualQWebView* self, struct miqt_string eventType, void* message, long* result);
	int (*metric)(const VirtualQWebView* self, int param1);
	void (*initPainter)(const VirtualQWebView* self, QPainter* painter);
	QPaintDevice* (*redirected)(const VirtualQWebView* self, QPoint* offset);
	QPainter* (*sharedPainter)(const VirtualQWebView* self);
	bool (*eventFilter)(VirtualQWebView* self, QObject* watched, QEvent* event);
	void (*timerEvent)(VirtualQWebView* self, QTimerEvent* event);
	void (*childEvent)(VirtualQWebView* self, QChildEvent* event);
	void (*customEvent)(VirtualQWebView* self, QEvent* event);
	void (*connectNotify)(VirtualQWebView* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQWebView* self, QMetaMethod* signal);
}QWebView_VTable;

const QWebView_VTable* QWebView_vtbl(const VirtualQWebView* self);
void* QWebView_vdata(const VirtualQWebView* self);
void QWebView_setVdata(VirtualQWebView* self, void* vdata);

VirtualQWebView* QWebView_new(const QWebView_VTable* vtbl, void* vdata, QWidget* parent);
VirtualQWebView* QWebView_new2(const QWebView_VTable* vtbl, void* vdata);

void QWebView_virtbase(QWebView* src, QWidget** outptr_QWidget);
QMetaObject* QWebView_metaObject(const QWebView* self);
void* QWebView_metacast(QWebView* self, const char* param1);
int QWebView_metacall(QWebView* self, int param1, int param2, void** param3);
struct miqt_string QWebView_tr(const char* s);
struct miqt_string QWebView_trUtf8(const char* s);
QWebPage* QWebView_page(const QWebView* self);
void QWebView_setPage(QWebView* self, QWebPage* page);
void QWebView_load(QWebView* self, QUrl* url);
void QWebView_loadWithRequest(QWebView* self, QNetworkRequest* request);
void QWebView_setHtml(QWebView* self, struct miqt_string html);
void QWebView_setContent(QWebView* self, struct miqt_string data);
QWebHistory* QWebView_history(const QWebView* self);
QWebSettings* QWebView_settings(const QWebView* self);
struct miqt_string QWebView_title(const QWebView* self);
void QWebView_setUrl(QWebView* self, QUrl* url);
QUrl* QWebView_url(const QWebView* self);
QIcon* QWebView_icon(const QWebView* self);
bool QWebView_hasSelection(const QWebView* self);
struct miqt_string QWebView_selectedText(const QWebView* self);
struct miqt_string QWebView_selectedHtml(const QWebView* self);
QAction* QWebView_pageAction(const QWebView* self, int action);
void QWebView_triggerPageAction(QWebView* self, int action);
bool QWebView_isModified(const QWebView* self);
QVariant* QWebView_inputMethodQuery(const QWebView* self, int property);
QSize* QWebView_sizeHint(const QWebView* self);
double QWebView_zoomFactor(const QWebView* self);
void QWebView_setZoomFactor(QWebView* self, double factor);
void QWebView_setTextSizeMultiplier(QWebView* self, double factor);
double QWebView_textSizeMultiplier(const QWebView* self);
int QWebView_renderHints(const QWebView* self);
void QWebView_setRenderHints(QWebView* self, int hints);
void QWebView_setRenderHint(QWebView* self, int hint);
bool QWebView_findText(QWebView* self, struct miqt_string subString);
bool QWebView_event(QWebView* self, QEvent* param1);
void QWebView_stop(QWebView* self);
void QWebView_back(QWebView* self);
void QWebView_forward(QWebView* self);
void QWebView_reload(QWebView* self);
void QWebView_print(const QWebView* self, QPrinter* param1);
void QWebView_loadStarted(QWebView* self);
void QWebView_connect_loadStarted(VirtualQWebView* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QWebView_loadProgress(QWebView* self, int progress);
void QWebView_connect_loadProgress(VirtualQWebView* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t));
void QWebView_loadFinished(QWebView* self, bool param1);
void QWebView_connect_loadFinished(VirtualQWebView* self, intptr_t slot, void (*callback)(intptr_t, bool), void (*release)(intptr_t));
void QWebView_titleChanged(QWebView* self, struct miqt_string title);
void QWebView_connect_titleChanged(VirtualQWebView* self, intptr_t slot, void (*callback)(intptr_t, struct miqt_string), void (*release)(intptr_t));
void QWebView_statusBarMessage(QWebView* self, struct miqt_string text);
void QWebView_connect_statusBarMessage(VirtualQWebView* self, intptr_t slot, void (*callback)(intptr_t, struct miqt_string), void (*release)(intptr_t));
void QWebView_linkClicked(QWebView* self, QUrl* param1);
void QWebView_connect_linkClicked(VirtualQWebView* self, intptr_t slot, void (*callback)(intptr_t, QUrl*), void (*release)(intptr_t));
void QWebView_selectionChanged(QWebView* self);
void QWebView_connect_selectionChanged(VirtualQWebView* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QWebView_iconChanged(QWebView* self);
void QWebView_connect_iconChanged(VirtualQWebView* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QWebView_urlChanged(QWebView* self, QUrl* param1);
void QWebView_connect_urlChanged(VirtualQWebView* self, intptr_t slot, void (*callback)(intptr_t, QUrl*), void (*release)(intptr_t));
void QWebView_resizeEvent(QWebView* self, QResizeEvent* param1);
void QWebView_paintEvent(QWebView* self, QPaintEvent* param1);
QWebView* QWebView_createWindow(QWebView* self, int type);
void QWebView_changeEvent(QWebView* self, QEvent* param1);
void QWebView_mouseMoveEvent(QWebView* self, QMouseEvent* param1);
void QWebView_mousePressEvent(QWebView* self, QMouseEvent* param1);
void QWebView_mouseDoubleClickEvent(QWebView* self, QMouseEvent* param1);
void QWebView_mouseReleaseEvent(QWebView* self, QMouseEvent* param1);
void QWebView_contextMenuEvent(QWebView* self, QContextMenuEvent* param1);
void QWebView_wheelEvent(QWebView* self, QWheelEvent* param1);
void QWebView_keyPressEvent(QWebView* self, QKeyEvent* param1);
void QWebView_keyReleaseEvent(QWebView* self, QKeyEvent* param1);
void QWebView_dragEnterEvent(QWebView* self, QDragEnterEvent* param1);
void QWebView_dragLeaveEvent(QWebView* self, QDragLeaveEvent* param1);
void QWebView_dragMoveEvent(QWebView* self, QDragMoveEvent* param1);
void QWebView_dropEvent(QWebView* self, QDropEvent* param1);
void QWebView_focusInEvent(QWebView* self, QFocusEvent* param1);
void QWebView_focusOutEvent(QWebView* self, QFocusEvent* param1);
void QWebView_inputMethodEvent(QWebView* self, QInputMethodEvent* param1);
bool QWebView_focusNextPrevChild(QWebView* self, bool next);
struct miqt_string QWebView_tr2(const char* s, const char* c);
struct miqt_string QWebView_tr3(const char* s, const char* c, int n);
struct miqt_string QWebView_trUtf82(const char* s, const char* c);
struct miqt_string QWebView_trUtf83(const char* s, const char* c, int n);
void QWebView_load2(QWebView* self, QNetworkRequest* request, int operation);
void QWebView_load3(QWebView* self, QNetworkRequest* request, int operation, struct miqt_string body);
void QWebView_setHtml2(QWebView* self, struct miqt_string html, QUrl* baseUrl);
void QWebView_setContent2(QWebView* self, struct miqt_string data, struct miqt_string mimeType);
void QWebView_setContent3(QWebView* self, struct miqt_string data, struct miqt_string mimeType, QUrl* baseUrl);
void QWebView_triggerPageAction2(QWebView* self, int action, bool checked);
void QWebView_setRenderHint2(QWebView* self, int hint, bool enabled);
bool QWebView_findText2(QWebView* self, struct miqt_string subString, int options);

QMetaObject* QWebView_virtualbase_metaObject(const VirtualQWebView* self);
void* QWebView_virtualbase_metacast(VirtualQWebView* self, const char* param1);
int QWebView_virtualbase_metacall(VirtualQWebView* self, int param1, int param2, void** param3);
QVariant* QWebView_virtualbase_inputMethodQuery(const VirtualQWebView* self, int property);
QSize* QWebView_virtualbase_sizeHint(const VirtualQWebView* self);
bool QWebView_virtualbase_event(VirtualQWebView* self, QEvent* param1);
void QWebView_virtualbase_resizeEvent(VirtualQWebView* self, QResizeEvent* param1);
void QWebView_virtualbase_paintEvent(VirtualQWebView* self, QPaintEvent* param1);
QWebView* QWebView_virtualbase_createWindow(VirtualQWebView* self, int type);
void QWebView_virtualbase_changeEvent(VirtualQWebView* self, QEvent* param1);
void QWebView_virtualbase_mouseMoveEvent(VirtualQWebView* self, QMouseEvent* param1);
void QWebView_virtualbase_mousePressEvent(VirtualQWebView* self, QMouseEvent* param1);
void QWebView_virtualbase_mouseDoubleClickEvent(VirtualQWebView* self, QMouseEvent* param1);
void QWebView_virtualbase_mouseReleaseEvent(VirtualQWebView* self, QMouseEvent* param1);
void QWebView_virtualbase_contextMenuEvent(VirtualQWebView* self, QContextMenuEvent* param1);
void QWebView_virtualbase_wheelEvent(VirtualQWebView* self, QWheelEvent* param1);
void QWebView_virtualbase_keyPressEvent(VirtualQWebView* self, QKeyEvent* param1);
void QWebView_virtualbase_keyReleaseEvent(VirtualQWebView* self, QKeyEvent* param1);
void QWebView_virtualbase_dragEnterEvent(VirtualQWebView* self, QDragEnterEvent* param1);
void QWebView_virtualbase_dragLeaveEvent(VirtualQWebView* self, QDragLeaveEvent* param1);
void QWebView_virtualbase_dragMoveEvent(VirtualQWebView* self, QDragMoveEvent* param1);
void QWebView_virtualbase_dropEvent(VirtualQWebView* self, QDropEvent* param1);
void QWebView_virtualbase_focusInEvent(VirtualQWebView* self, QFocusEvent* param1);
void QWebView_virtualbase_focusOutEvent(VirtualQWebView* self, QFocusEvent* param1);
void QWebView_virtualbase_inputMethodEvent(VirtualQWebView* self, QInputMethodEvent* param1);
bool QWebView_virtualbase_focusNextPrevChild(VirtualQWebView* self, bool next);
int QWebView_virtualbase_devType(const VirtualQWebView* self);
void QWebView_virtualbase_setVisible(VirtualQWebView* self, bool visible);
QSize* QWebView_virtualbase_minimumSizeHint(const VirtualQWebView* self);
int QWebView_virtualbase_heightForWidth(const VirtualQWebView* self, int param1);
bool QWebView_virtualbase_hasHeightForWidth(const VirtualQWebView* self);
QPaintEngine* QWebView_virtualbase_paintEngine(const VirtualQWebView* self);
void QWebView_virtualbase_enterEvent(VirtualQWebView* self, QEvent* event);
void QWebView_virtualbase_leaveEvent(VirtualQWebView* self, QEvent* event);
void QWebView_virtualbase_moveEvent(VirtualQWebView* self, QMoveEvent* event);
void QWebView_virtualbase_closeEvent(VirtualQWebView* self, QCloseEvent* event);
void QWebView_virtualbase_tabletEvent(VirtualQWebView* self, QTabletEvent* event);
void QWebView_virtualbase_actionEvent(VirtualQWebView* self, QActionEvent* event);
void QWebView_virtualbase_showEvent(VirtualQWebView* self, QShowEvent* event);
void QWebView_virtualbase_hideEvent(VirtualQWebView* self, QHideEvent* event);
bool QWebView_virtualbase_nativeEvent(VirtualQWebView* self, struct miqt_string eventType, void* message, long* result);
int QWebView_virtualbase_metric(const VirtualQWebView* self, int param1);
void QWebView_virtualbase_initPainter(const VirtualQWebView* self, QPainter* painter);
QPaintDevice* QWebView_virtualbase_redirected(const VirtualQWebView* self, QPoint* offset);
QPainter* QWebView_virtualbase_sharedPainter(const VirtualQWebView* self);
bool QWebView_virtualbase_eventFilter(VirtualQWebView* self, QObject* watched, QEvent* event);
void QWebView_virtualbase_timerEvent(VirtualQWebView* self, QTimerEvent* event);
void QWebView_virtualbase_childEvent(VirtualQWebView* self, QChildEvent* event);
void QWebView_virtualbase_customEvent(VirtualQWebView* self, QEvent* event);
void QWebView_virtualbase_connectNotify(VirtualQWebView* self, QMetaMethod* signal);
void QWebView_virtualbase_disconnectNotify(VirtualQWebView* self, QMetaMethod* signal);

void QWebView_protectedbase_updateMicroFocus(VirtualQWebView* self);
void QWebView_protectedbase_create(VirtualQWebView* self);
void QWebView_protectedbase_destroy(VirtualQWebView* self);
bool QWebView_protectedbase_focusNextChild(VirtualQWebView* self);
bool QWebView_protectedbase_focusPreviousChild(VirtualQWebView* self);
QObject* QWebView_protectedbase_sender(const VirtualQWebView* self);
int QWebView_protectedbase_senderSignalIndex(const VirtualQWebView* self);
int QWebView_protectedbase_receivers(const VirtualQWebView* self, const char* signal);
bool QWebView_protectedbase_isSignalConnected(const VirtualQWebView* self, QMetaMethod* signal);

const QMetaObject* QWebView_staticMetaObject();
void QWebView_delete(QWebView* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
