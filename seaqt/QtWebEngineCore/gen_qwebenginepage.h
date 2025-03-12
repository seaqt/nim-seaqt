#pragma once
#ifndef SEAQT_QTWEBENGINECORE_GEN_QWEBENGINEPAGE_H
#define SEAQT_QTWEBENGINECORE_GEN_QWEBENGINEPAGE_H

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
class QAuthenticator;
class QChildEvent;
class QColor;
class QEvent;
class QIcon;
class QMetaMethod;
class QMetaObject;
class QObject;
class QPageLayout;
class QPageRanges;
class QPointF;
class QRect;
class QSizeF;
class QTimerEvent;
class QUrl;
class QWebChannel;
class QWebEngineCertificateError;
class QWebEngineClientCertificateSelection;
class QWebEngineFileSystemAccessRequest;
class QWebEngineFindTextResult;
class QWebEngineFullScreenRequest;
class QWebEngineHistory;
class QWebEngineHttpRequest;
class QWebEngineLoadingInfo;
class QWebEngineNavigationRequest;
class QWebEngineNewWindowRequest;
class QWebEnginePage;
class QWebEngineProfile;
class QWebEngineQuotaRequest;
class QWebEngineRegisterProtocolHandlerRequest;
class QWebEngineScriptCollection;
class QWebEngineSettings;
class QWebEngineUrlRequestInterceptor;
#else
typedef struct QAction QAction;
typedef struct QAuthenticator QAuthenticator;
typedef struct QChildEvent QChildEvent;
typedef struct QColor QColor;
typedef struct QEvent QEvent;
typedef struct QIcon QIcon;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QObject QObject;
typedef struct QPageLayout QPageLayout;
typedef struct QPageRanges QPageRanges;
typedef struct QPointF QPointF;
typedef struct QRect QRect;
typedef struct QSizeF QSizeF;
typedef struct QTimerEvent QTimerEvent;
typedef struct QUrl QUrl;
typedef struct QWebChannel QWebChannel;
typedef struct QWebEngineCertificateError QWebEngineCertificateError;
typedef struct QWebEngineClientCertificateSelection QWebEngineClientCertificateSelection;
typedef struct QWebEngineFileSystemAccessRequest QWebEngineFileSystemAccessRequest;
typedef struct QWebEngineFindTextResult QWebEngineFindTextResult;
typedef struct QWebEngineFullScreenRequest QWebEngineFullScreenRequest;
typedef struct QWebEngineHistory QWebEngineHistory;
typedef struct QWebEngineHttpRequest QWebEngineHttpRequest;
typedef struct QWebEngineLoadingInfo QWebEngineLoadingInfo;
typedef struct QWebEngineNavigationRequest QWebEngineNavigationRequest;
typedef struct QWebEngineNewWindowRequest QWebEngineNewWindowRequest;
typedef struct QWebEnginePage QWebEnginePage;
typedef struct QWebEngineProfile QWebEngineProfile;
typedef struct QWebEngineQuotaRequest QWebEngineQuotaRequest;
typedef struct QWebEngineRegisterProtocolHandlerRequest QWebEngineRegisterProtocolHandlerRequest;
typedef struct QWebEngineScriptCollection QWebEngineScriptCollection;
typedef struct QWebEngineSettings QWebEngineSettings;
typedef struct QWebEngineUrlRequestInterceptor QWebEngineUrlRequestInterceptor;
#endif

typedef struct VirtualQWebEnginePage VirtualQWebEnginePage;
typedef struct QWebEnginePage_VTable{
	void (*destructor)(VirtualQWebEnginePage* self);
	QMetaObject* (*metaObject)(const VirtualQWebEnginePage* self);
	void* (*metacast)(VirtualQWebEnginePage* self, const char* param1);
	int (*metacall)(VirtualQWebEnginePage* self, int param1, int param2, void** param3);
	void (*triggerAction)(VirtualQWebEnginePage* self, int action, bool checked);
	bool (*event)(VirtualQWebEnginePage* self, QEvent* param1);
	QWebEnginePage* (*createWindow)(VirtualQWebEnginePage* self, int type);
	struct miqt_array /* of struct miqt_string */  (*chooseFiles)(VirtualQWebEnginePage* self, int mode, struct miqt_array /* of struct miqt_string */  oldFiles, struct miqt_array /* of struct miqt_string */  acceptedMimeTypes);
	void (*javaScriptAlert)(VirtualQWebEnginePage* self, QUrl* securityOrigin, struct miqt_string msg);
	bool (*javaScriptConfirm)(VirtualQWebEnginePage* self, QUrl* securityOrigin, struct miqt_string msg);
	void (*javaScriptConsoleMessage)(VirtualQWebEnginePage* self, int level, struct miqt_string message, int lineNumber, struct miqt_string sourceID);
	bool (*acceptNavigationRequest)(VirtualQWebEnginePage* self, QUrl* url, int type, bool isMainFrame);
	bool (*eventFilter)(VirtualQWebEnginePage* self, QObject* watched, QEvent* event);
	void (*timerEvent)(VirtualQWebEnginePage* self, QTimerEvent* event);
	void (*childEvent)(VirtualQWebEnginePage* self, QChildEvent* event);
	void (*customEvent)(VirtualQWebEnginePage* self, QEvent* event);
	void (*connectNotify)(VirtualQWebEnginePage* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQWebEnginePage* self, QMetaMethod* signal);
}QWebEnginePage_VTable;

const QWebEnginePage_VTable* QWebEnginePage_vtbl(const VirtualQWebEnginePage* self);
void* QWebEnginePage_vdata(const VirtualQWebEnginePage* self);
void QWebEnginePage_setVdata(VirtualQWebEnginePage* self, void* vdata);

VirtualQWebEnginePage* QWebEnginePage_new(const QWebEnginePage_VTable* vtbl, void* vdata);
VirtualQWebEnginePage* QWebEnginePage_new2(const QWebEnginePage_VTable* vtbl, void* vdata, QWebEngineProfile* profile);
VirtualQWebEnginePage* QWebEnginePage_new3(const QWebEnginePage_VTable* vtbl, void* vdata, QObject* parent);
VirtualQWebEnginePage* QWebEnginePage_new4(const QWebEnginePage_VTable* vtbl, void* vdata, QWebEngineProfile* profile, QObject* parent);

void QWebEnginePage_virtbase(QWebEnginePage* src, QObject** outptr_QObject);
QMetaObject* QWebEnginePage_metaObject(const QWebEnginePage* self);
void* QWebEnginePage_metacast(QWebEnginePage* self, const char* param1);
int QWebEnginePage_metacall(QWebEnginePage* self, int param1, int param2, void** param3);
struct miqt_string QWebEnginePage_tr(const char* s);
QWebEngineHistory* QWebEnginePage_history(const QWebEnginePage* self);
bool QWebEnginePage_hasSelection(const QWebEnginePage* self);
struct miqt_string QWebEnginePage_selectedText(const QWebEnginePage* self);
QWebEngineProfile* QWebEnginePage_profile(const QWebEnginePage* self);
QAction* QWebEnginePage_action(const QWebEnginePage* self, int action);
void QWebEnginePage_triggerAction(QWebEnginePage* self, int action, bool checked);
void QWebEnginePage_replaceMisspelledWord(QWebEnginePage* self, struct miqt_string replacement);
bool QWebEnginePage_event(QWebEnginePage* self, QEvent* param1);
void QWebEnginePage_setFeaturePermission(QWebEnginePage* self, QUrl* securityOrigin, int feature, int policy);
bool QWebEnginePage_isLoading(const QWebEnginePage* self);
void QWebEnginePage_load(QWebEnginePage* self, QUrl* url);
void QWebEnginePage_loadWithRequest(QWebEnginePage* self, QWebEngineHttpRequest* request);
void QWebEnginePage_download(QWebEnginePage* self, QUrl* url);
void QWebEnginePage_setHtml(QWebEnginePage* self, struct miqt_string html);
void QWebEnginePage_setContent(QWebEnginePage* self, struct miqt_string data);
struct miqt_string QWebEnginePage_title(const QWebEnginePage* self);
void QWebEnginePage_setUrl(QWebEnginePage* self, QUrl* url);
QUrl* QWebEnginePage_url(const QWebEnginePage* self);
QUrl* QWebEnginePage_requestedUrl(const QWebEnginePage* self);
QUrl* QWebEnginePage_iconUrl(const QWebEnginePage* self);
QIcon* QWebEnginePage_icon(const QWebEnginePage* self);
double QWebEnginePage_zoomFactor(const QWebEnginePage* self);
void QWebEnginePage_setZoomFactor(QWebEnginePage* self, double factor);
QPointF* QWebEnginePage_scrollPosition(const QWebEnginePage* self);
QSizeF* QWebEnginePage_contentsSize(const QWebEnginePage* self);
QWebEngineScriptCollection* QWebEnginePage_scripts(QWebEnginePage* self);
QWebEngineSettings* QWebEnginePage_settings(const QWebEnginePage* self);
QWebChannel* QWebEnginePage_webChannel(const QWebEnginePage* self);
void QWebEnginePage_setWebChannel(QWebEnginePage* self, QWebChannel* param1);
QColor* QWebEnginePage_backgroundColor(const QWebEnginePage* self);
void QWebEnginePage_setBackgroundColor(QWebEnginePage* self, QColor* color);
void QWebEnginePage_save(const QWebEnginePage* self, struct miqt_string filePath);
bool QWebEnginePage_isAudioMuted(const QWebEnginePage* self);
void QWebEnginePage_setAudioMuted(QWebEnginePage* self, bool muted);
bool QWebEnginePage_recentlyAudible(const QWebEnginePage* self);
long long QWebEnginePage_renderProcessPid(const QWebEnginePage* self);
void QWebEnginePage_printToPdf(QWebEnginePage* self, struct miqt_string filePath);
void QWebEnginePage_setInspectedPage(QWebEnginePage* self, QWebEnginePage* page);
QWebEnginePage* QWebEnginePage_inspectedPage(const QWebEnginePage* self);
void QWebEnginePage_setDevToolsPage(QWebEnginePage* self, QWebEnginePage* page);
QWebEnginePage* QWebEnginePage_devToolsPage(const QWebEnginePage* self);
void QWebEnginePage_setUrlRequestInterceptor(QWebEnginePage* self, QWebEngineUrlRequestInterceptor* interceptor);
int QWebEnginePage_lifecycleState(const QWebEnginePage* self);
void QWebEnginePage_setLifecycleState(QWebEnginePage* self, int state);
int QWebEnginePage_recommendedState(const QWebEnginePage* self);
bool QWebEnginePage_isVisible(const QWebEnginePage* self);
void QWebEnginePage_setVisible(QWebEnginePage* self, bool visible);
void QWebEnginePage_acceptAsNewWindow(QWebEnginePage* self, QWebEngineNewWindowRequest* request);
void QWebEnginePage_loadStarted(QWebEnginePage* self);
void QWebEnginePage_connect_loadStarted(VirtualQWebEnginePage* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QWebEnginePage_loadProgress(QWebEnginePage* self, int progress);
void QWebEnginePage_connect_loadProgress(VirtualQWebEnginePage* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t));
void QWebEnginePage_loadFinished(QWebEnginePage* self, bool ok);
void QWebEnginePage_connect_loadFinished(VirtualQWebEnginePage* self, intptr_t slot, void (*callback)(intptr_t, bool), void (*release)(intptr_t));
void QWebEnginePage_loadingChanged(QWebEnginePage* self, QWebEngineLoadingInfo* loadingInfo);
void QWebEnginePage_connect_loadingChanged(VirtualQWebEnginePage* self, intptr_t slot, void (*callback)(intptr_t, QWebEngineLoadingInfo*), void (*release)(intptr_t));
void QWebEnginePage_linkHovered(QWebEnginePage* self, struct miqt_string url);
void QWebEnginePage_connect_linkHovered(VirtualQWebEnginePage* self, intptr_t slot, void (*callback)(intptr_t, struct miqt_string), void (*release)(intptr_t));
void QWebEnginePage_selectionChanged(QWebEnginePage* self);
void QWebEnginePage_connect_selectionChanged(VirtualQWebEnginePage* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QWebEnginePage_geometryChangeRequested(QWebEnginePage* self, QRect* geom);
void QWebEnginePage_connect_geometryChangeRequested(VirtualQWebEnginePage* self, intptr_t slot, void (*callback)(intptr_t, QRect*), void (*release)(intptr_t));
void QWebEnginePage_windowCloseRequested(QWebEnginePage* self);
void QWebEnginePage_connect_windowCloseRequested(VirtualQWebEnginePage* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QWebEnginePage_featurePermissionRequested(QWebEnginePage* self, QUrl* securityOrigin, int feature);
void QWebEnginePage_connect_featurePermissionRequested(VirtualQWebEnginePage* self, intptr_t slot, void (*callback)(intptr_t, QUrl*, int), void (*release)(intptr_t));
void QWebEnginePage_featurePermissionRequestCanceled(QWebEnginePage* self, QUrl* securityOrigin, int feature);
void QWebEnginePage_connect_featurePermissionRequestCanceled(VirtualQWebEnginePage* self, intptr_t slot, void (*callback)(intptr_t, QUrl*, int), void (*release)(intptr_t));
void QWebEnginePage_fullScreenRequested(QWebEnginePage* self, QWebEngineFullScreenRequest* fullScreenRequest);
void QWebEnginePage_connect_fullScreenRequested(VirtualQWebEnginePage* self, intptr_t slot, void (*callback)(intptr_t, QWebEngineFullScreenRequest*), void (*release)(intptr_t));
void QWebEnginePage_quotaRequested(QWebEnginePage* self, QWebEngineQuotaRequest* quotaRequest);
void QWebEnginePage_connect_quotaRequested(VirtualQWebEnginePage* self, intptr_t slot, void (*callback)(intptr_t, QWebEngineQuotaRequest*), void (*release)(intptr_t));
void QWebEnginePage_registerProtocolHandlerRequested(QWebEnginePage* self, QWebEngineRegisterProtocolHandlerRequest* request);
void QWebEnginePage_connect_registerProtocolHandlerRequested(VirtualQWebEnginePage* self, intptr_t slot, void (*callback)(intptr_t, QWebEngineRegisterProtocolHandlerRequest*), void (*release)(intptr_t));
void QWebEnginePage_fileSystemAccessRequested(QWebEnginePage* self, QWebEngineFileSystemAccessRequest* request);
void QWebEnginePage_connect_fileSystemAccessRequested(VirtualQWebEnginePage* self, intptr_t slot, void (*callback)(intptr_t, QWebEngineFileSystemAccessRequest*), void (*release)(intptr_t));
void QWebEnginePage_selectClientCertificate(QWebEnginePage* self, QWebEngineClientCertificateSelection* clientCertSelection);
void QWebEnginePage_connect_selectClientCertificate(VirtualQWebEnginePage* self, intptr_t slot, void (*callback)(intptr_t, QWebEngineClientCertificateSelection*), void (*release)(intptr_t));
void QWebEnginePage_authenticationRequired(QWebEnginePage* self, QUrl* requestUrl, QAuthenticator* authenticator);
void QWebEnginePage_connect_authenticationRequired(VirtualQWebEnginePage* self, intptr_t slot, void (*callback)(intptr_t, QUrl*, QAuthenticator*), void (*release)(intptr_t));
void QWebEnginePage_proxyAuthenticationRequired(QWebEnginePage* self, QUrl* requestUrl, QAuthenticator* authenticator, struct miqt_string proxyHost);
void QWebEnginePage_connect_proxyAuthenticationRequired(VirtualQWebEnginePage* self, intptr_t slot, void (*callback)(intptr_t, QUrl*, QAuthenticator*, struct miqt_string), void (*release)(intptr_t));
void QWebEnginePage_renderProcessTerminated(QWebEnginePage* self, int terminationStatus, int exitCode);
void QWebEnginePage_connect_renderProcessTerminated(VirtualQWebEnginePage* self, intptr_t slot, void (*callback)(intptr_t, int, int), void (*release)(intptr_t));
void QWebEnginePage_certificateError(QWebEnginePage* self, QWebEngineCertificateError* certificateError);
void QWebEnginePage_connect_certificateError(VirtualQWebEnginePage* self, intptr_t slot, void (*callback)(intptr_t, QWebEngineCertificateError*), void (*release)(intptr_t));
void QWebEnginePage_navigationRequested(QWebEnginePage* self, QWebEngineNavigationRequest* request);
void QWebEnginePage_connect_navigationRequested(VirtualQWebEnginePage* self, intptr_t slot, void (*callback)(intptr_t, QWebEngineNavigationRequest*), void (*release)(intptr_t));
void QWebEnginePage_newWindowRequested(QWebEnginePage* self, QWebEngineNewWindowRequest* request);
void QWebEnginePage_connect_newWindowRequested(VirtualQWebEnginePage* self, intptr_t slot, void (*callback)(intptr_t, QWebEngineNewWindowRequest*), void (*release)(intptr_t));
void QWebEnginePage_titleChanged(QWebEnginePage* self, struct miqt_string title);
void QWebEnginePage_connect_titleChanged(VirtualQWebEnginePage* self, intptr_t slot, void (*callback)(intptr_t, struct miqt_string), void (*release)(intptr_t));
void QWebEnginePage_urlChanged(QWebEnginePage* self, QUrl* url);
void QWebEnginePage_connect_urlChanged(VirtualQWebEnginePage* self, intptr_t slot, void (*callback)(intptr_t, QUrl*), void (*release)(intptr_t));
void QWebEnginePage_iconUrlChanged(QWebEnginePage* self, QUrl* url);
void QWebEnginePage_connect_iconUrlChanged(VirtualQWebEnginePage* self, intptr_t slot, void (*callback)(intptr_t, QUrl*), void (*release)(intptr_t));
void QWebEnginePage_iconChanged(QWebEnginePage* self, QIcon* icon);
void QWebEnginePage_connect_iconChanged(VirtualQWebEnginePage* self, intptr_t slot, void (*callback)(intptr_t, QIcon*), void (*release)(intptr_t));
void QWebEnginePage_scrollPositionChanged(QWebEnginePage* self, QPointF* position);
void QWebEnginePage_connect_scrollPositionChanged(VirtualQWebEnginePage* self, intptr_t slot, void (*callback)(intptr_t, QPointF*), void (*release)(intptr_t));
void QWebEnginePage_contentsSizeChanged(QWebEnginePage* self, QSizeF* size);
void QWebEnginePage_connect_contentsSizeChanged(VirtualQWebEnginePage* self, intptr_t slot, void (*callback)(intptr_t, QSizeF*), void (*release)(intptr_t));
void QWebEnginePage_audioMutedChanged(QWebEnginePage* self, bool muted);
void QWebEnginePage_connect_audioMutedChanged(VirtualQWebEnginePage* self, intptr_t slot, void (*callback)(intptr_t, bool), void (*release)(intptr_t));
void QWebEnginePage_recentlyAudibleChanged(QWebEnginePage* self, bool recentlyAudible);
void QWebEnginePage_connect_recentlyAudibleChanged(VirtualQWebEnginePage* self, intptr_t slot, void (*callback)(intptr_t, bool), void (*release)(intptr_t));
void QWebEnginePage_renderProcessPidChanged(QWebEnginePage* self, long long pid);
void QWebEnginePage_connect_renderProcessPidChanged(VirtualQWebEnginePage* self, intptr_t slot, void (*callback)(intptr_t, long long), void (*release)(intptr_t));
void QWebEnginePage_pdfPrintingFinished(QWebEnginePage* self, struct miqt_string filePath, bool success);
void QWebEnginePage_connect_pdfPrintingFinished(VirtualQWebEnginePage* self, intptr_t slot, void (*callback)(intptr_t, struct miqt_string, bool), void (*release)(intptr_t));
void QWebEnginePage_printRequested(QWebEnginePage* self);
void QWebEnginePage_connect_printRequested(VirtualQWebEnginePage* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QWebEnginePage_visibleChanged(QWebEnginePage* self, bool visible);
void QWebEnginePage_connect_visibleChanged(VirtualQWebEnginePage* self, intptr_t slot, void (*callback)(intptr_t, bool), void (*release)(intptr_t));
void QWebEnginePage_lifecycleStateChanged(QWebEnginePage* self, int state);
void QWebEnginePage_connect_lifecycleStateChanged(VirtualQWebEnginePage* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t));
void QWebEnginePage_recommendedStateChanged(QWebEnginePage* self, int state);
void QWebEnginePage_connect_recommendedStateChanged(VirtualQWebEnginePage* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t));
void QWebEnginePage_findTextFinished(QWebEnginePage* self, QWebEngineFindTextResult* result);
void QWebEnginePage_connect_findTextFinished(VirtualQWebEnginePage* self, intptr_t slot, void (*callback)(intptr_t, QWebEngineFindTextResult*), void (*release)(intptr_t));
void QWebEnginePage_QAboutToDelete(QWebEnginePage* self);
void QWebEnginePage_connect_QAboutToDelete(VirtualQWebEnginePage* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
QWebEnginePage* QWebEnginePage_createWindow(QWebEnginePage* self, int type);
struct miqt_array /* of struct miqt_string */  QWebEnginePage_chooseFiles(QWebEnginePage* self, int mode, struct miqt_array /* of struct miqt_string */  oldFiles, struct miqt_array /* of struct miqt_string */  acceptedMimeTypes);
void QWebEnginePage_javaScriptAlert(QWebEnginePage* self, QUrl* securityOrigin, struct miqt_string msg);
bool QWebEnginePage_javaScriptConfirm(QWebEnginePage* self, QUrl* securityOrigin, struct miqt_string msg);
void QWebEnginePage_javaScriptConsoleMessage(QWebEnginePage* self, int level, struct miqt_string message, int lineNumber, struct miqt_string sourceID);
bool QWebEnginePage_acceptNavigationRequest(QWebEnginePage* self, QUrl* url, int type, bool isMainFrame);
struct miqt_string QWebEnginePage_tr2(const char* s, const char* c);
struct miqt_string QWebEnginePage_tr3(const char* s, const char* c, int n);
void QWebEnginePage_download2(QWebEnginePage* self, QUrl* url, struct miqt_string filename);
void QWebEnginePage_setHtml2(QWebEnginePage* self, struct miqt_string html, QUrl* baseUrl);
void QWebEnginePage_setContent2(QWebEnginePage* self, struct miqt_string data, struct miqt_string mimeType);
void QWebEnginePage_setContent3(QWebEnginePage* self, struct miqt_string data, struct miqt_string mimeType, QUrl* baseUrl);
void QWebEnginePage_setWebChannel2(QWebEnginePage* self, QWebChannel* param1, unsigned int worldId);
void QWebEnginePage_save2(const QWebEnginePage* self, struct miqt_string filePath, int format);
void QWebEnginePage_printToPdf2(QWebEnginePage* self, struct miqt_string filePath, QPageLayout* layout);
void QWebEnginePage_printToPdf3(QWebEnginePage* self, struct miqt_string filePath, QPageLayout* layout, QPageRanges* ranges);

QMetaObject* QWebEnginePage_virtualbase_metaObject(const VirtualQWebEnginePage* self);
void* QWebEnginePage_virtualbase_metacast(VirtualQWebEnginePage* self, const char* param1);
int QWebEnginePage_virtualbase_metacall(VirtualQWebEnginePage* self, int param1, int param2, void** param3);
void QWebEnginePage_virtualbase_triggerAction(VirtualQWebEnginePage* self, int action, bool checked);
bool QWebEnginePage_virtualbase_event(VirtualQWebEnginePage* self, QEvent* param1);
QWebEnginePage* QWebEnginePage_virtualbase_createWindow(VirtualQWebEnginePage* self, int type);
struct miqt_array /* of struct miqt_string */  QWebEnginePage_virtualbase_chooseFiles(VirtualQWebEnginePage* self, int mode, struct miqt_array /* of struct miqt_string */  oldFiles, struct miqt_array /* of struct miqt_string */  acceptedMimeTypes);
void QWebEnginePage_virtualbase_javaScriptAlert(VirtualQWebEnginePage* self, QUrl* securityOrigin, struct miqt_string msg);
bool QWebEnginePage_virtualbase_javaScriptConfirm(VirtualQWebEnginePage* self, QUrl* securityOrigin, struct miqt_string msg);
void QWebEnginePage_virtualbase_javaScriptConsoleMessage(VirtualQWebEnginePage* self, int level, struct miqt_string message, int lineNumber, struct miqt_string sourceID);
bool QWebEnginePage_virtualbase_acceptNavigationRequest(VirtualQWebEnginePage* self, QUrl* url, int type, bool isMainFrame);
bool QWebEnginePage_virtualbase_eventFilter(VirtualQWebEnginePage* self, QObject* watched, QEvent* event);
void QWebEnginePage_virtualbase_timerEvent(VirtualQWebEnginePage* self, QTimerEvent* event);
void QWebEnginePage_virtualbase_childEvent(VirtualQWebEnginePage* self, QChildEvent* event);
void QWebEnginePage_virtualbase_customEvent(VirtualQWebEnginePage* self, QEvent* event);
void QWebEnginePage_virtualbase_connectNotify(VirtualQWebEnginePage* self, QMetaMethod* signal);
void QWebEnginePage_virtualbase_disconnectNotify(VirtualQWebEnginePage* self, QMetaMethod* signal);

QObject* QWebEnginePage_protectedbase_sender(const VirtualQWebEnginePage* self);
int QWebEnginePage_protectedbase_senderSignalIndex(const VirtualQWebEnginePage* self);
int QWebEnginePage_protectedbase_receivers(const VirtualQWebEnginePage* self, const char* signal);
bool QWebEnginePage_protectedbase_isSignalConnected(const VirtualQWebEnginePage* self, QMetaMethod* signal);

const QMetaObject* QWebEnginePage_staticMetaObject();
void QWebEnginePage_delete(QWebEnginePage* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
