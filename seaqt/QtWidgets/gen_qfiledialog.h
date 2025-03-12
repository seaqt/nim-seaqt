#pragma once
#ifndef SEAQT_QTWIDGETS_GEN_QFILEDIALOG_H
#define SEAQT_QTWIDGETS_GEN_QFILEDIALOG_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt/libseaqt.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QAbstractItemDelegate;
class QAbstractProxyModel;
class QActionEvent;
class QChildEvent;
class QCloseEvent;
class QContextMenuEvent;
class QDialog;
class QDir;
class QDragEnterEvent;
class QDragLeaveEvent;
class QDragMoveEvent;
class QDropEvent;
class QEvent;
class QFileDialog;
class QFileIconProvider;
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
class QUrl;
class QVariant;
class QWheelEvent;
class QWidget;
#else
typedef struct QAbstractItemDelegate QAbstractItemDelegate;
typedef struct QAbstractProxyModel QAbstractProxyModel;
typedef struct QActionEvent QActionEvent;
typedef struct QChildEvent QChildEvent;
typedef struct QCloseEvent QCloseEvent;
typedef struct QContextMenuEvent QContextMenuEvent;
typedef struct QDialog QDialog;
typedef struct QDir QDir;
typedef struct QDragEnterEvent QDragEnterEvent;
typedef struct QDragLeaveEvent QDragLeaveEvent;
typedef struct QDragMoveEvent QDragMoveEvent;
typedef struct QDropEvent QDropEvent;
typedef struct QEvent QEvent;
typedef struct QFileDialog QFileDialog;
typedef struct QFileIconProvider QFileIconProvider;
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
typedef struct QUrl QUrl;
typedef struct QVariant QVariant;
typedef struct QWheelEvent QWheelEvent;
typedef struct QWidget QWidget;
#endif

typedef struct VirtualQFileDialog VirtualQFileDialog;
typedef struct QFileDialog_VTable{
	void (*destructor)(VirtualQFileDialog* self);
	QMetaObject* (*metaObject)(const VirtualQFileDialog* self);
	void* (*metacast)(VirtualQFileDialog* self, const char* param1);
	int (*metacall)(VirtualQFileDialog* self, int param1, int param2, void** param3);
	void (*setVisible)(VirtualQFileDialog* self, bool visible);
	void (*done)(VirtualQFileDialog* self, int result);
	void (*accept)(VirtualQFileDialog* self);
	void (*changeEvent)(VirtualQFileDialog* self, QEvent* e);
	QSize* (*sizeHint)(const VirtualQFileDialog* self);
	QSize* (*minimumSizeHint)(const VirtualQFileDialog* self);
	void (*open)(VirtualQFileDialog* self);
	int (*exec)(VirtualQFileDialog* self);
	void (*reject)(VirtualQFileDialog* self);
	void (*keyPressEvent)(VirtualQFileDialog* self, QKeyEvent* param1);
	void (*closeEvent)(VirtualQFileDialog* self, QCloseEvent* param1);
	void (*showEvent)(VirtualQFileDialog* self, QShowEvent* param1);
	void (*resizeEvent)(VirtualQFileDialog* self, QResizeEvent* param1);
	void (*contextMenuEvent)(VirtualQFileDialog* self, QContextMenuEvent* param1);
	bool (*eventFilter)(VirtualQFileDialog* self, QObject* param1, QEvent* param2);
	int (*devType)(const VirtualQFileDialog* self);
	int (*heightForWidth)(const VirtualQFileDialog* self, int param1);
	bool (*hasHeightForWidth)(const VirtualQFileDialog* self);
	QPaintEngine* (*paintEngine)(const VirtualQFileDialog* self);
	bool (*event)(VirtualQFileDialog* self, QEvent* event);
	void (*mousePressEvent)(VirtualQFileDialog* self, QMouseEvent* event);
	void (*mouseReleaseEvent)(VirtualQFileDialog* self, QMouseEvent* event);
	void (*mouseDoubleClickEvent)(VirtualQFileDialog* self, QMouseEvent* event);
	void (*mouseMoveEvent)(VirtualQFileDialog* self, QMouseEvent* event);
	void (*wheelEvent)(VirtualQFileDialog* self, QWheelEvent* event);
	void (*keyReleaseEvent)(VirtualQFileDialog* self, QKeyEvent* event);
	void (*focusInEvent)(VirtualQFileDialog* self, QFocusEvent* event);
	void (*focusOutEvent)(VirtualQFileDialog* self, QFocusEvent* event);
	void (*enterEvent)(VirtualQFileDialog* self, QEvent* event);
	void (*leaveEvent)(VirtualQFileDialog* self, QEvent* event);
	void (*paintEvent)(VirtualQFileDialog* self, QPaintEvent* event);
	void (*moveEvent)(VirtualQFileDialog* self, QMoveEvent* event);
	void (*tabletEvent)(VirtualQFileDialog* self, QTabletEvent* event);
	void (*actionEvent)(VirtualQFileDialog* self, QActionEvent* event);
	void (*dragEnterEvent)(VirtualQFileDialog* self, QDragEnterEvent* event);
	void (*dragMoveEvent)(VirtualQFileDialog* self, QDragMoveEvent* event);
	void (*dragLeaveEvent)(VirtualQFileDialog* self, QDragLeaveEvent* event);
	void (*dropEvent)(VirtualQFileDialog* self, QDropEvent* event);
	void (*hideEvent)(VirtualQFileDialog* self, QHideEvent* event);
	bool (*nativeEvent)(VirtualQFileDialog* self, struct miqt_string eventType, void* message, long* result);
	int (*metric)(const VirtualQFileDialog* self, int param1);
	void (*initPainter)(const VirtualQFileDialog* self, QPainter* painter);
	QPaintDevice* (*redirected)(const VirtualQFileDialog* self, QPoint* offset);
	QPainter* (*sharedPainter)(const VirtualQFileDialog* self);
	void (*inputMethodEvent)(VirtualQFileDialog* self, QInputMethodEvent* param1);
	QVariant* (*inputMethodQuery)(const VirtualQFileDialog* self, int param1);
	bool (*focusNextPrevChild)(VirtualQFileDialog* self, bool next);
	void (*timerEvent)(VirtualQFileDialog* self, QTimerEvent* event);
	void (*childEvent)(VirtualQFileDialog* self, QChildEvent* event);
	void (*customEvent)(VirtualQFileDialog* self, QEvent* event);
	void (*connectNotify)(VirtualQFileDialog* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQFileDialog* self, QMetaMethod* signal);
}QFileDialog_VTable;

const QFileDialog_VTable* QFileDialog_vtbl(const VirtualQFileDialog* self);
void* QFileDialog_vdata(const VirtualQFileDialog* self);
void QFileDialog_setVdata(VirtualQFileDialog* self, void* vdata);

VirtualQFileDialog* QFileDialog_new(const QFileDialog_VTable* vtbl, void* vdata, QWidget* parent);
VirtualQFileDialog* QFileDialog_new2(const QFileDialog_VTable* vtbl, void* vdata, QWidget* parent, int f);
VirtualQFileDialog* QFileDialog_new3(const QFileDialog_VTable* vtbl, void* vdata);
VirtualQFileDialog* QFileDialog_new4(const QFileDialog_VTable* vtbl, void* vdata, QWidget* parent, struct miqt_string caption);
VirtualQFileDialog* QFileDialog_new5(const QFileDialog_VTable* vtbl, void* vdata, QWidget* parent, struct miqt_string caption, struct miqt_string directory);
VirtualQFileDialog* QFileDialog_new6(const QFileDialog_VTable* vtbl, void* vdata, QWidget* parent, struct miqt_string caption, struct miqt_string directory, struct miqt_string filter);

void QFileDialog_virtbase(QFileDialog* src, QDialog** outptr_QDialog);
QMetaObject* QFileDialog_metaObject(const QFileDialog* self);
void* QFileDialog_metacast(QFileDialog* self, const char* param1);
int QFileDialog_metacall(QFileDialog* self, int param1, int param2, void** param3);
struct miqt_string QFileDialog_tr(const char* s);
struct miqt_string QFileDialog_trUtf8(const char* s);
void QFileDialog_setDirectory(QFileDialog* self, struct miqt_string directory);
void QFileDialog_setDirectoryWithDirectory(QFileDialog* self, QDir* directory);
QDir* QFileDialog_directory(const QFileDialog* self);
void QFileDialog_setDirectoryUrl(QFileDialog* self, QUrl* directory);
QUrl* QFileDialog_directoryUrl(const QFileDialog* self);
void QFileDialog_selectFile(QFileDialog* self, struct miqt_string filename);
struct miqt_array /* of struct miqt_string */  QFileDialog_selectedFiles(const QFileDialog* self);
void QFileDialog_selectUrl(QFileDialog* self, QUrl* url);
struct miqt_array /* of QUrl* */  QFileDialog_selectedUrls(const QFileDialog* self);
void QFileDialog_setNameFilterDetailsVisible(QFileDialog* self, bool enabled);
bool QFileDialog_isNameFilterDetailsVisible(const QFileDialog* self);
void QFileDialog_setNameFilter(QFileDialog* self, struct miqt_string filter);
void QFileDialog_setNameFilters(QFileDialog* self, struct miqt_array /* of struct miqt_string */  filters);
struct miqt_array /* of struct miqt_string */  QFileDialog_nameFilters(const QFileDialog* self);
void QFileDialog_selectNameFilter(QFileDialog* self, struct miqt_string filter);
struct miqt_string QFileDialog_selectedMimeTypeFilter(const QFileDialog* self);
struct miqt_string QFileDialog_selectedNameFilter(const QFileDialog* self);
void QFileDialog_setMimeTypeFilters(QFileDialog* self, struct miqt_array /* of struct miqt_string */  filters);
struct miqt_array /* of struct miqt_string */  QFileDialog_mimeTypeFilters(const QFileDialog* self);
void QFileDialog_selectMimeTypeFilter(QFileDialog* self, struct miqt_string filter);
int QFileDialog_filter(const QFileDialog* self);
void QFileDialog_setFilter(QFileDialog* self, int filters);
void QFileDialog_setViewMode(QFileDialog* self, int mode);
int QFileDialog_viewMode(const QFileDialog* self);
void QFileDialog_setFileMode(QFileDialog* self, int mode);
int QFileDialog_fileMode(const QFileDialog* self);
void QFileDialog_setAcceptMode(QFileDialog* self, int mode);
int QFileDialog_acceptMode(const QFileDialog* self);
void QFileDialog_setReadOnly(QFileDialog* self, bool enabled);
bool QFileDialog_isReadOnly(const QFileDialog* self);
void QFileDialog_setResolveSymlinks(QFileDialog* self, bool enabled);
bool QFileDialog_resolveSymlinks(const QFileDialog* self);
void QFileDialog_setSidebarUrls(QFileDialog* self, struct miqt_array /* of QUrl* */  urls);
struct miqt_array /* of QUrl* */  QFileDialog_sidebarUrls(const QFileDialog* self);
struct miqt_string QFileDialog_saveState(const QFileDialog* self);
bool QFileDialog_restoreState(QFileDialog* self, struct miqt_string state);
void QFileDialog_setConfirmOverwrite(QFileDialog* self, bool enabled);
bool QFileDialog_confirmOverwrite(const QFileDialog* self);
void QFileDialog_setDefaultSuffix(QFileDialog* self, struct miqt_string suffix);
struct miqt_string QFileDialog_defaultSuffix(const QFileDialog* self);
void QFileDialog_setHistory(QFileDialog* self, struct miqt_array /* of struct miqt_string */  paths);
struct miqt_array /* of struct miqt_string */  QFileDialog_history(const QFileDialog* self);
void QFileDialog_setItemDelegate(QFileDialog* self, QAbstractItemDelegate* delegate);
QAbstractItemDelegate* QFileDialog_itemDelegate(const QFileDialog* self);
void QFileDialog_setIconProvider(QFileDialog* self, QFileIconProvider* provider);
QFileIconProvider* QFileDialog_iconProvider(const QFileDialog* self);
void QFileDialog_setLabelText(QFileDialog* self, int label, struct miqt_string text);
struct miqt_string QFileDialog_labelText(const QFileDialog* self, int label);
void QFileDialog_setSupportedSchemes(QFileDialog* self, struct miqt_array /* of struct miqt_string */  schemes);
struct miqt_array /* of struct miqt_string */  QFileDialog_supportedSchemes(const QFileDialog* self);
void QFileDialog_setProxyModel(QFileDialog* self, QAbstractProxyModel* model);
QAbstractProxyModel* QFileDialog_proxyModel(const QFileDialog* self);
void QFileDialog_setOption(QFileDialog* self, int option);
bool QFileDialog_testOption(const QFileDialog* self, int option);
void QFileDialog_setOptions(QFileDialog* self, int options);
int QFileDialog_options(const QFileDialog* self);
void QFileDialog_setVisible(QFileDialog* self, bool visible);
void QFileDialog_fileSelected(QFileDialog* self, struct miqt_string file);
void QFileDialog_connect_fileSelected(VirtualQFileDialog* self, intptr_t slot, void (*callback)(intptr_t, struct miqt_string), void (*release)(intptr_t));
void QFileDialog_filesSelected(QFileDialog* self, struct miqt_array /* of struct miqt_string */  files);
void QFileDialog_connect_filesSelected(VirtualQFileDialog* self, intptr_t slot, void (*callback)(intptr_t, struct miqt_array /* of struct miqt_string */ ), void (*release)(intptr_t));
void QFileDialog_currentChanged(QFileDialog* self, struct miqt_string path);
void QFileDialog_connect_currentChanged(VirtualQFileDialog* self, intptr_t slot, void (*callback)(intptr_t, struct miqt_string), void (*release)(intptr_t));
void QFileDialog_directoryEntered(QFileDialog* self, struct miqt_string directory);
void QFileDialog_connect_directoryEntered(VirtualQFileDialog* self, intptr_t slot, void (*callback)(intptr_t, struct miqt_string), void (*release)(intptr_t));
void QFileDialog_urlSelected(QFileDialog* self, QUrl* url);
void QFileDialog_connect_urlSelected(VirtualQFileDialog* self, intptr_t slot, void (*callback)(intptr_t, QUrl*), void (*release)(intptr_t));
void QFileDialog_urlsSelected(QFileDialog* self, struct miqt_array /* of QUrl* */  urls);
void QFileDialog_connect_urlsSelected(VirtualQFileDialog* self, intptr_t slot, void (*callback)(intptr_t, struct miqt_array /* of QUrl* */ ), void (*release)(intptr_t));
void QFileDialog_currentUrlChanged(QFileDialog* self, QUrl* url);
void QFileDialog_connect_currentUrlChanged(VirtualQFileDialog* self, intptr_t slot, void (*callback)(intptr_t, QUrl*), void (*release)(intptr_t));
void QFileDialog_directoryUrlEntered(QFileDialog* self, QUrl* directory);
void QFileDialog_connect_directoryUrlEntered(VirtualQFileDialog* self, intptr_t slot, void (*callback)(intptr_t, QUrl*), void (*release)(intptr_t));
void QFileDialog_filterSelected(QFileDialog* self, struct miqt_string filter);
void QFileDialog_connect_filterSelected(VirtualQFileDialog* self, intptr_t slot, void (*callback)(intptr_t, struct miqt_string), void (*release)(intptr_t));
struct miqt_string QFileDialog_getOpenFileName();
QUrl* QFileDialog_getOpenFileUrl();
struct miqt_string QFileDialog_getSaveFileName();
QUrl* QFileDialog_getSaveFileUrl();
struct miqt_string QFileDialog_getExistingDirectory();
QUrl* QFileDialog_getExistingDirectoryUrl();
struct miqt_array /* of struct miqt_string */  QFileDialog_getOpenFileNames();
struct miqt_array /* of QUrl* */  QFileDialog_getOpenFileUrls();
void QFileDialog_saveFileContent(struct miqt_string fileContent, struct miqt_string fileNameHint);
void QFileDialog_done(QFileDialog* self, int result);
void QFileDialog_accept(QFileDialog* self);
void QFileDialog_changeEvent(QFileDialog* self, QEvent* e);
struct miqt_string QFileDialog_tr2(const char* s, const char* c);
struct miqt_string QFileDialog_tr3(const char* s, const char* c, int n);
struct miqt_string QFileDialog_trUtf82(const char* s, const char* c);
struct miqt_string QFileDialog_trUtf83(const char* s, const char* c, int n);
void QFileDialog_setOption2(QFileDialog* self, int option, bool on);
struct miqt_string QFileDialog_getOpenFileName1(QWidget* parent);
struct miqt_string QFileDialog_getOpenFileName2(QWidget* parent, struct miqt_string caption);
struct miqt_string QFileDialog_getOpenFileName3(QWidget* parent, struct miqt_string caption, struct miqt_string dir);
struct miqt_string QFileDialog_getOpenFileName4(QWidget* parent, struct miqt_string caption, struct miqt_string dir, struct miqt_string filter);
QUrl* QFileDialog_getOpenFileUrl1(QWidget* parent);
QUrl* QFileDialog_getOpenFileUrl2(QWidget* parent, struct miqt_string caption);
QUrl* QFileDialog_getOpenFileUrl3(QWidget* parent, struct miqt_string caption, QUrl* dir);
QUrl* QFileDialog_getOpenFileUrl4(QWidget* parent, struct miqt_string caption, QUrl* dir, struct miqt_string filter);
struct miqt_string QFileDialog_getSaveFileName1(QWidget* parent);
struct miqt_string QFileDialog_getSaveFileName2(QWidget* parent, struct miqt_string caption);
struct miqt_string QFileDialog_getSaveFileName3(QWidget* parent, struct miqt_string caption, struct miqt_string dir);
struct miqt_string QFileDialog_getSaveFileName4(QWidget* parent, struct miqt_string caption, struct miqt_string dir, struct miqt_string filter);
QUrl* QFileDialog_getSaveFileUrl1(QWidget* parent);
QUrl* QFileDialog_getSaveFileUrl2(QWidget* parent, struct miqt_string caption);
QUrl* QFileDialog_getSaveFileUrl3(QWidget* parent, struct miqt_string caption, QUrl* dir);
QUrl* QFileDialog_getSaveFileUrl4(QWidget* parent, struct miqt_string caption, QUrl* dir, struct miqt_string filter);
struct miqt_string QFileDialog_getExistingDirectory1(QWidget* parent);
struct miqt_string QFileDialog_getExistingDirectory2(QWidget* parent, struct miqt_string caption);
struct miqt_string QFileDialog_getExistingDirectory3(QWidget* parent, struct miqt_string caption, struct miqt_string dir);
struct miqt_string QFileDialog_getExistingDirectory4(QWidget* parent, struct miqt_string caption, struct miqt_string dir, int options);
QUrl* QFileDialog_getExistingDirectoryUrl1(QWidget* parent);
QUrl* QFileDialog_getExistingDirectoryUrl2(QWidget* parent, struct miqt_string caption);
QUrl* QFileDialog_getExistingDirectoryUrl3(QWidget* parent, struct miqt_string caption, QUrl* dir);
QUrl* QFileDialog_getExistingDirectoryUrl4(QWidget* parent, struct miqt_string caption, QUrl* dir, int options);
QUrl* QFileDialog_getExistingDirectoryUrl5(QWidget* parent, struct miqt_string caption, QUrl* dir, int options, struct miqt_array /* of struct miqt_string */  supportedSchemes);
struct miqt_array /* of struct miqt_string */  QFileDialog_getOpenFileNames1(QWidget* parent);
struct miqt_array /* of struct miqt_string */  QFileDialog_getOpenFileNames2(QWidget* parent, struct miqt_string caption);
struct miqt_array /* of struct miqt_string */  QFileDialog_getOpenFileNames3(QWidget* parent, struct miqt_string caption, struct miqt_string dir);
struct miqt_array /* of struct miqt_string */  QFileDialog_getOpenFileNames4(QWidget* parent, struct miqt_string caption, struct miqt_string dir, struct miqt_string filter);
struct miqt_array /* of QUrl* */  QFileDialog_getOpenFileUrls1(QWidget* parent);
struct miqt_array /* of QUrl* */  QFileDialog_getOpenFileUrls2(QWidget* parent, struct miqt_string caption);
struct miqt_array /* of QUrl* */  QFileDialog_getOpenFileUrls3(QWidget* parent, struct miqt_string caption, QUrl* dir);
struct miqt_array /* of QUrl* */  QFileDialog_getOpenFileUrls4(QWidget* parent, struct miqt_string caption, QUrl* dir, struct miqt_string filter);

QMetaObject* QFileDialog_virtualbase_metaObject(const VirtualQFileDialog* self);
void* QFileDialog_virtualbase_metacast(VirtualQFileDialog* self, const char* param1);
int QFileDialog_virtualbase_metacall(VirtualQFileDialog* self, int param1, int param2, void** param3);
void QFileDialog_virtualbase_setVisible(VirtualQFileDialog* self, bool visible);
void QFileDialog_virtualbase_done(VirtualQFileDialog* self, int result);
void QFileDialog_virtualbase_accept(VirtualQFileDialog* self);
void QFileDialog_virtualbase_changeEvent(VirtualQFileDialog* self, QEvent* e);
QSize* QFileDialog_virtualbase_sizeHint(const VirtualQFileDialog* self);
QSize* QFileDialog_virtualbase_minimumSizeHint(const VirtualQFileDialog* self);
void QFileDialog_virtualbase_open(VirtualQFileDialog* self);
int QFileDialog_virtualbase_exec(VirtualQFileDialog* self);
void QFileDialog_virtualbase_reject(VirtualQFileDialog* self);
void QFileDialog_virtualbase_keyPressEvent(VirtualQFileDialog* self, QKeyEvent* param1);
void QFileDialog_virtualbase_closeEvent(VirtualQFileDialog* self, QCloseEvent* param1);
void QFileDialog_virtualbase_showEvent(VirtualQFileDialog* self, QShowEvent* param1);
void QFileDialog_virtualbase_resizeEvent(VirtualQFileDialog* self, QResizeEvent* param1);
void QFileDialog_virtualbase_contextMenuEvent(VirtualQFileDialog* self, QContextMenuEvent* param1);
bool QFileDialog_virtualbase_eventFilter(VirtualQFileDialog* self, QObject* param1, QEvent* param2);
int QFileDialog_virtualbase_devType(const VirtualQFileDialog* self);
int QFileDialog_virtualbase_heightForWidth(const VirtualQFileDialog* self, int param1);
bool QFileDialog_virtualbase_hasHeightForWidth(const VirtualQFileDialog* self);
QPaintEngine* QFileDialog_virtualbase_paintEngine(const VirtualQFileDialog* self);
bool QFileDialog_virtualbase_event(VirtualQFileDialog* self, QEvent* event);
void QFileDialog_virtualbase_mousePressEvent(VirtualQFileDialog* self, QMouseEvent* event);
void QFileDialog_virtualbase_mouseReleaseEvent(VirtualQFileDialog* self, QMouseEvent* event);
void QFileDialog_virtualbase_mouseDoubleClickEvent(VirtualQFileDialog* self, QMouseEvent* event);
void QFileDialog_virtualbase_mouseMoveEvent(VirtualQFileDialog* self, QMouseEvent* event);
void QFileDialog_virtualbase_wheelEvent(VirtualQFileDialog* self, QWheelEvent* event);
void QFileDialog_virtualbase_keyReleaseEvent(VirtualQFileDialog* self, QKeyEvent* event);
void QFileDialog_virtualbase_focusInEvent(VirtualQFileDialog* self, QFocusEvent* event);
void QFileDialog_virtualbase_focusOutEvent(VirtualQFileDialog* self, QFocusEvent* event);
void QFileDialog_virtualbase_enterEvent(VirtualQFileDialog* self, QEvent* event);
void QFileDialog_virtualbase_leaveEvent(VirtualQFileDialog* self, QEvent* event);
void QFileDialog_virtualbase_paintEvent(VirtualQFileDialog* self, QPaintEvent* event);
void QFileDialog_virtualbase_moveEvent(VirtualQFileDialog* self, QMoveEvent* event);
void QFileDialog_virtualbase_tabletEvent(VirtualQFileDialog* self, QTabletEvent* event);
void QFileDialog_virtualbase_actionEvent(VirtualQFileDialog* self, QActionEvent* event);
void QFileDialog_virtualbase_dragEnterEvent(VirtualQFileDialog* self, QDragEnterEvent* event);
void QFileDialog_virtualbase_dragMoveEvent(VirtualQFileDialog* self, QDragMoveEvent* event);
void QFileDialog_virtualbase_dragLeaveEvent(VirtualQFileDialog* self, QDragLeaveEvent* event);
void QFileDialog_virtualbase_dropEvent(VirtualQFileDialog* self, QDropEvent* event);
void QFileDialog_virtualbase_hideEvent(VirtualQFileDialog* self, QHideEvent* event);
bool QFileDialog_virtualbase_nativeEvent(VirtualQFileDialog* self, struct miqt_string eventType, void* message, long* result);
int QFileDialog_virtualbase_metric(const VirtualQFileDialog* self, int param1);
void QFileDialog_virtualbase_initPainter(const VirtualQFileDialog* self, QPainter* painter);
QPaintDevice* QFileDialog_virtualbase_redirected(const VirtualQFileDialog* self, QPoint* offset);
QPainter* QFileDialog_virtualbase_sharedPainter(const VirtualQFileDialog* self);
void QFileDialog_virtualbase_inputMethodEvent(VirtualQFileDialog* self, QInputMethodEvent* param1);
QVariant* QFileDialog_virtualbase_inputMethodQuery(const VirtualQFileDialog* self, int param1);
bool QFileDialog_virtualbase_focusNextPrevChild(VirtualQFileDialog* self, bool next);
void QFileDialog_virtualbase_timerEvent(VirtualQFileDialog* self, QTimerEvent* event);
void QFileDialog_virtualbase_childEvent(VirtualQFileDialog* self, QChildEvent* event);
void QFileDialog_virtualbase_customEvent(VirtualQFileDialog* self, QEvent* event);
void QFileDialog_virtualbase_connectNotify(VirtualQFileDialog* self, QMetaMethod* signal);
void QFileDialog_virtualbase_disconnectNotify(VirtualQFileDialog* self, QMetaMethod* signal);

void QFileDialog_protectedbase_adjustPosition(VirtualQFileDialog* self, QWidget* param1);
void QFileDialog_protectedbase_updateMicroFocus(VirtualQFileDialog* self);
void QFileDialog_protectedbase_create(VirtualQFileDialog* self);
void QFileDialog_protectedbase_destroy(VirtualQFileDialog* self);
bool QFileDialog_protectedbase_focusNextChild(VirtualQFileDialog* self);
bool QFileDialog_protectedbase_focusPreviousChild(VirtualQFileDialog* self);
QObject* QFileDialog_protectedbase_sender(const VirtualQFileDialog* self);
int QFileDialog_protectedbase_senderSignalIndex(const VirtualQFileDialog* self);
int QFileDialog_protectedbase_receivers(const VirtualQFileDialog* self, const char* signal);
bool QFileDialog_protectedbase_isSignalConnected(const VirtualQFileDialog* self, QMetaMethod* signal);

const QMetaObject* QFileDialog_staticMetaObject();
void QFileDialog_delete(QFileDialog* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
