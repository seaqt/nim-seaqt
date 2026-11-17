#pragma once
#ifndef SEAQT_QTPDF_GEN_QPDFPAGENAVIGATION_H
#define SEAQT_QTPDF_GEN_QPDFPAGENAVIGATION_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt-runtime.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QChildEvent;
class QEvent;
class QMetaMethod;
class QMetaObject;
class QObject;
class QPdfDocument;
class QPdfPageNavigation;
class QTimerEvent;
#else
typedef struct QChildEvent QChildEvent;
typedef struct QEvent QEvent;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QObject QObject;
typedef struct QPdfDocument QPdfDocument;
typedef struct QPdfPageNavigation QPdfPageNavigation;
typedef struct QTimerEvent QTimerEvent;
#endif

typedef struct VirtualQPdfPageNavigation VirtualQPdfPageNavigation;
typedef struct QPdfPageNavigation_VTable{
	void (*destructor)(VirtualQPdfPageNavigation* self);
	QMetaObject* (*metaObject)(const VirtualQPdfPageNavigation* self);
	void* (*metacast)(VirtualQPdfPageNavigation* self, const char* param1);
	int (*metacall)(VirtualQPdfPageNavigation* self, int param1, int param2, void** param3);
	bool (*event)(VirtualQPdfPageNavigation* self, QEvent* event);
	bool (*eventFilter)(VirtualQPdfPageNavigation* self, QObject* watched, QEvent* event);
	void (*timerEvent)(VirtualQPdfPageNavigation* self, QTimerEvent* event);
	void (*childEvent)(VirtualQPdfPageNavigation* self, QChildEvent* event);
	void (*customEvent)(VirtualQPdfPageNavigation* self, QEvent* event);
	void (*connectNotify)(VirtualQPdfPageNavigation* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQPdfPageNavigation* self, QMetaMethod* signal);
}QPdfPageNavigation_VTable;

void* QPdfPageNavigation_vdata(VirtualQPdfPageNavigation* self);
VirtualQPdfPageNavigation* vdata_QPdfPageNavigation(void* vdata);

VirtualQPdfPageNavigation* QPdfPageNavigation_new(const QPdfPageNavigation_VTable* vtbl, size_t vdata);
VirtualQPdfPageNavigation* QPdfPageNavigation_new2(const QPdfPageNavigation_VTable* vtbl, size_t vdata, QObject* parent);

void QPdfPageNavigation_virtbase(QPdfPageNavigation* src, QObject** outptr_QObject);
QMetaObject* QPdfPageNavigation_metaObject(const QPdfPageNavigation* self);
void* QPdfPageNavigation_metacast(QPdfPageNavigation* self, const char* param1);
int QPdfPageNavigation_metacall(QPdfPageNavigation* self, int param1, int param2, void** param3);
struct seaqt_string QPdfPageNavigation_tr(const char* s);
struct seaqt_string QPdfPageNavigation_trUtf8(const char* s);
QPdfDocument* QPdfPageNavigation_document(const QPdfPageNavigation* self);
void QPdfPageNavigation_setDocument(QPdfPageNavigation* self, QPdfDocument* document);
int QPdfPageNavigation_currentPage(const QPdfPageNavigation* self);
void QPdfPageNavigation_setCurrentPage(QPdfPageNavigation* self, int currentPage);
int QPdfPageNavigation_pageCount(const QPdfPageNavigation* self);
bool QPdfPageNavigation_canGoToPreviousPage(const QPdfPageNavigation* self);
bool QPdfPageNavigation_canGoToNextPage(const QPdfPageNavigation* self);
void QPdfPageNavigation_goToPreviousPage(QPdfPageNavigation* self);
void QPdfPageNavigation_goToNextPage(QPdfPageNavigation* self);
void QPdfPageNavigation_documentChanged(QPdfPageNavigation* self, QPdfDocument* document);
void QPdfPageNavigation_connect_documentChanged(QPdfPageNavigation* self, intptr_t slot, void (*callback)(intptr_t, QPdfDocument*), void (*release)(intptr_t));
void QPdfPageNavigation_currentPageChanged(QPdfPageNavigation* self, int currentPage);
void QPdfPageNavigation_connect_currentPageChanged(QPdfPageNavigation* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t));
void QPdfPageNavigation_pageCountChanged(QPdfPageNavigation* self, int pageCount);
void QPdfPageNavigation_connect_pageCountChanged(QPdfPageNavigation* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t));
void QPdfPageNavigation_canGoToPreviousPageChanged(QPdfPageNavigation* self, bool canGo);
void QPdfPageNavigation_connect_canGoToPreviousPageChanged(QPdfPageNavigation* self, intptr_t slot, void (*callback)(intptr_t, bool), void (*release)(intptr_t));
void QPdfPageNavigation_canGoToNextPageChanged(QPdfPageNavigation* self, bool canGo);
void QPdfPageNavigation_connect_canGoToNextPageChanged(QPdfPageNavigation* self, intptr_t slot, void (*callback)(intptr_t, bool), void (*release)(intptr_t));
struct seaqt_string QPdfPageNavigation_tr2(const char* s, const char* c);
struct seaqt_string QPdfPageNavigation_tr3(const char* s, const char* c, int n);
struct seaqt_string QPdfPageNavigation_trUtf82(const char* s, const char* c);
struct seaqt_string QPdfPageNavigation_trUtf83(const char* s, const char* c, int n);

QMetaObject* QPdfPageNavigation_virtualbase_metaObject(const VirtualQPdfPageNavigation* self);
void* QPdfPageNavigation_virtualbase_metacast(VirtualQPdfPageNavigation* self, const char* param1);
int QPdfPageNavigation_virtualbase_metacall(VirtualQPdfPageNavigation* self, int param1, int param2, void** param3);
bool QPdfPageNavigation_virtualbase_event(VirtualQPdfPageNavigation* self, QEvent* event);
bool QPdfPageNavigation_virtualbase_eventFilter(VirtualQPdfPageNavigation* self, QObject* watched, QEvent* event);
void QPdfPageNavigation_virtualbase_timerEvent(VirtualQPdfPageNavigation* self, QTimerEvent* event);
void QPdfPageNavigation_virtualbase_childEvent(VirtualQPdfPageNavigation* self, QChildEvent* event);
void QPdfPageNavigation_virtualbase_customEvent(VirtualQPdfPageNavigation* self, QEvent* event);
void QPdfPageNavigation_virtualbase_connectNotify(VirtualQPdfPageNavigation* self, QMetaMethod* signal);
void QPdfPageNavigation_virtualbase_disconnectNotify(VirtualQPdfPageNavigation* self, QMetaMethod* signal);

QObject* QPdfPageNavigation_protectedbase_sender(const VirtualQPdfPageNavigation* self);
int QPdfPageNavigation_protectedbase_senderSignalIndex(const VirtualQPdfPageNavigation* self);
int QPdfPageNavigation_protectedbase_receivers(const VirtualQPdfPageNavigation* self, const char* signal);
bool QPdfPageNavigation_protectedbase_isSignalConnected(const VirtualQPdfPageNavigation* self, QMetaMethod* signal);

const QMetaObject* QPdfPageNavigation_staticMetaObject();
void QPdfPageNavigation_delete(QPdfPageNavigation* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
