#pragma once
#ifndef SEAQT_QTPDF_GEN_QPDFPAGERENDERER_H
#define SEAQT_QTPDF_GEN_QPDFPAGERENDERER_H

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
class QImage;
class QMetaMethod;
class QMetaObject;
class QObject;
class QPdfDocument;
class QPdfDocumentRenderOptions;
class QPdfPageRenderer;
class QSize;
class QTimerEvent;
#else
typedef struct QChildEvent QChildEvent;
typedef struct QEvent QEvent;
typedef struct QImage QImage;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QObject QObject;
typedef struct QPdfDocument QPdfDocument;
typedef struct QPdfDocumentRenderOptions QPdfDocumentRenderOptions;
typedef struct QPdfPageRenderer QPdfPageRenderer;
typedef struct QSize QSize;
typedef struct QTimerEvent QTimerEvent;
#endif

typedef struct VirtualQPdfPageRenderer VirtualQPdfPageRenderer;
typedef struct QPdfPageRenderer_VTable{
	void (*destructor)(VirtualQPdfPageRenderer* self);
	QMetaObject* (*metaObject)(const VirtualQPdfPageRenderer* self);
	void* (*metacast)(VirtualQPdfPageRenderer* self, const char* param1);
	int (*metacall)(VirtualQPdfPageRenderer* self, int param1, int param2, void** param3);
	bool (*event)(VirtualQPdfPageRenderer* self, QEvent* event);
	bool (*eventFilter)(VirtualQPdfPageRenderer* self, QObject* watched, QEvent* event);
	void (*timerEvent)(VirtualQPdfPageRenderer* self, QTimerEvent* event);
	void (*childEvent)(VirtualQPdfPageRenderer* self, QChildEvent* event);
	void (*customEvent)(VirtualQPdfPageRenderer* self, QEvent* event);
	void (*connectNotify)(VirtualQPdfPageRenderer* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQPdfPageRenderer* self, QMetaMethod* signal);
}QPdfPageRenderer_VTable;

void* QPdfPageRenderer_vdata(VirtualQPdfPageRenderer* self);
VirtualQPdfPageRenderer* vdata_QPdfPageRenderer(void* vdata);

VirtualQPdfPageRenderer* QPdfPageRenderer_new(const QPdfPageRenderer_VTable* vtbl, size_t vdata);
VirtualQPdfPageRenderer* QPdfPageRenderer_new_parent(const QPdfPageRenderer_VTable* vtbl, size_t vdata, QObject* parent);

void QPdfPageRenderer_virtbase(QPdfPageRenderer* src, QObject** outptr_QObject);
QMetaObject* QPdfPageRenderer_metaObject(const QPdfPageRenderer* self);
void* QPdfPageRenderer_metacast(QPdfPageRenderer* self, const char* param1);
int QPdfPageRenderer_metacall(QPdfPageRenderer* self, int param1, int param2, void** param3);
struct seaqt_string QPdfPageRenderer_tr_s(const char* s);
struct seaqt_string QPdfPageRenderer_trUtf8_s(const char* s);
int QPdfPageRenderer_renderMode(const QPdfPageRenderer* self);
void QPdfPageRenderer_setRenderMode(QPdfPageRenderer* self, int mode);
QPdfDocument* QPdfPageRenderer_document(const QPdfPageRenderer* self);
void QPdfPageRenderer_setDocument(QPdfPageRenderer* self, QPdfDocument* document);
unsigned long long QPdfPageRenderer_requestPage_pageNumber_imageSize(QPdfPageRenderer* self, int pageNumber, QSize* imageSize);
void QPdfPageRenderer_documentChanged(QPdfPageRenderer* self, QPdfDocument* document);
void QPdfPageRenderer_connect_documentChanged(QPdfPageRenderer* self, intptr_t slot, void (*callback)(intptr_t, QPdfDocument*), void (*release)(intptr_t));
void QPdfPageRenderer_renderModeChanged(QPdfPageRenderer* self, int renderMode);
void QPdfPageRenderer_connect_renderModeChanged(QPdfPageRenderer* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t));
void QPdfPageRenderer_pageRendered(QPdfPageRenderer* self, int pageNumber, QSize* imageSize, QImage* image, QPdfDocumentRenderOptions* options, unsigned long long requestId);
void QPdfPageRenderer_connect_pageRendered(QPdfPageRenderer* self, intptr_t slot, void (*callback)(intptr_t, int, QSize*, QImage*, QPdfDocumentRenderOptions*, unsigned long long), void (*release)(intptr_t));
struct seaqt_string QPdfPageRenderer_tr_s_c(const char* s, const char* c);
struct seaqt_string QPdfPageRenderer_tr_s_c_n(const char* s, const char* c, int n);
struct seaqt_string QPdfPageRenderer_trUtf8_s_c(const char* s, const char* c);
struct seaqt_string QPdfPageRenderer_trUtf8_s_c_n(const char* s, const char* c, int n);
unsigned long long QPdfPageRenderer_requestPage_pageNumber_imageSize_options(QPdfPageRenderer* self, int pageNumber, QSize* imageSize, QPdfDocumentRenderOptions* options);

QMetaObject* QPdfPageRenderer_virtualbase_metaObject(const VirtualQPdfPageRenderer* self);
void* QPdfPageRenderer_virtualbase_metacast(VirtualQPdfPageRenderer* self, const char* param1);
int QPdfPageRenderer_virtualbase_metacall(VirtualQPdfPageRenderer* self, int param1, int param2, void** param3);
bool QPdfPageRenderer_virtualbase_event(VirtualQPdfPageRenderer* self, QEvent* event);
bool QPdfPageRenderer_virtualbase_eventFilter(VirtualQPdfPageRenderer* self, QObject* watched, QEvent* event);
void QPdfPageRenderer_virtualbase_timerEvent(VirtualQPdfPageRenderer* self, QTimerEvent* event);
void QPdfPageRenderer_virtualbase_childEvent(VirtualQPdfPageRenderer* self, QChildEvent* event);
void QPdfPageRenderer_virtualbase_customEvent(VirtualQPdfPageRenderer* self, QEvent* event);
void QPdfPageRenderer_virtualbase_connectNotify(VirtualQPdfPageRenderer* self, QMetaMethod* signal);
void QPdfPageRenderer_virtualbase_disconnectNotify(VirtualQPdfPageRenderer* self, QMetaMethod* signal);

QObject* QPdfPageRenderer_protectedbase_sender(const VirtualQPdfPageRenderer* self);
int QPdfPageRenderer_protectedbase_senderSignalIndex(const VirtualQPdfPageRenderer* self);
int QPdfPageRenderer_protectedbase_receivers(const VirtualQPdfPageRenderer* self, const char* signal);
bool QPdfPageRenderer_protectedbase_isSignalConnected(const VirtualQPdfPageRenderer* self, QMetaMethod* signal);

void QPdfPageRenderer_delete(QPdfPageRenderer* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
