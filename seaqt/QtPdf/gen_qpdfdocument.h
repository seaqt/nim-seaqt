#pragma once
#ifndef SEAQT_QTPDF_GEN_QPDFDOCUMENT_H
#define SEAQT_QTPDF_GEN_QPDFDOCUMENT_H

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
class QIODevice;
class QImage;
class QMetaMethod;
class QMetaObject;
class QObject;
class QPdfDocument;
class QPdfDocumentRenderOptions;
class QPdfSelection;
class QPointF;
class QSize;
class QSizeF;
class QTimerEvent;
class QVariant;
#else
typedef struct QChildEvent QChildEvent;
typedef struct QEvent QEvent;
typedef struct QIODevice QIODevice;
typedef struct QImage QImage;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QObject QObject;
typedef struct QPdfDocument QPdfDocument;
typedef struct QPdfDocumentRenderOptions QPdfDocumentRenderOptions;
typedef struct QPdfSelection QPdfSelection;
typedef struct QPointF QPointF;
typedef struct QSize QSize;
typedef struct QSizeF QSizeF;
typedef struct QTimerEvent QTimerEvent;
typedef struct QVariant QVariant;
#endif

typedef struct VirtualQPdfDocument VirtualQPdfDocument;
typedef struct QPdfDocument_VTable{
	void (*destructor)(VirtualQPdfDocument* self);
	QMetaObject* (*metaObject)(const VirtualQPdfDocument* self);
	void* (*metacast)(VirtualQPdfDocument* self, const char* param1);
	int (*metacall)(VirtualQPdfDocument* self, int param1, int param2, void** param3);
	bool (*event)(VirtualQPdfDocument* self, QEvent* event);
	bool (*eventFilter)(VirtualQPdfDocument* self, QObject* watched, QEvent* event);
	void (*timerEvent)(VirtualQPdfDocument* self, QTimerEvent* event);
	void (*childEvent)(VirtualQPdfDocument* self, QChildEvent* event);
	void (*customEvent)(VirtualQPdfDocument* self, QEvent* event);
	void (*connectNotify)(VirtualQPdfDocument* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQPdfDocument* self, QMetaMethod* signal);
}QPdfDocument_VTable;

void* QPdfDocument_vdata(VirtualQPdfDocument* self);
VirtualQPdfDocument* vdata_QPdfDocument(void* vdata);

VirtualQPdfDocument* QPdfDocument_new(const QPdfDocument_VTable* vtbl, size_t vdata);
VirtualQPdfDocument* QPdfDocument_new_parent(const QPdfDocument_VTable* vtbl, size_t vdata, QObject* parent);

void QPdfDocument_virtbase(QPdfDocument* src, QObject** outptr_QObject);
QMetaObject* QPdfDocument_metaObject(const QPdfDocument* self);
void* QPdfDocument_metacast(QPdfDocument* self, const char* param1);
int QPdfDocument_metacall(QPdfDocument* self, int param1, int param2, void** param3);
struct seaqt_string QPdfDocument_tr_s(const char* s);
struct seaqt_string QPdfDocument_trUtf8_s(const char* s);
int QPdfDocument_load_fileName(QPdfDocument* self, struct seaqt_string fileName);
int QPdfDocument_status(const QPdfDocument* self);
void QPdfDocument_load_device(QPdfDocument* self, QIODevice* device);
void QPdfDocument_setPassword(QPdfDocument* self, struct seaqt_string password);
struct seaqt_string QPdfDocument_password(const QPdfDocument* self);
QVariant* QPdfDocument_metaData(const QPdfDocument* self, int field);
int QPdfDocument_error(const QPdfDocument* self);
void QPdfDocument_close(QPdfDocument* self);
int QPdfDocument_pageCount(const QPdfDocument* self);
QSizeF* QPdfDocument_pageSize(const QPdfDocument* self, int page);
QImage* QPdfDocument_render_page_imageSize(QPdfDocument* self, int page, QSize* imageSize);
QPdfSelection* QPdfDocument_getSelection(QPdfDocument* self, int page, QPointF* start, QPointF* end);
QPdfSelection* QPdfDocument_getSelectionAtIndex(QPdfDocument* self, int page, int startIndex, int maxLength);
QPdfSelection* QPdfDocument_getAllText(QPdfDocument* self, int page);
void QPdfDocument_passwordChanged(QPdfDocument* self);
void QPdfDocument_connect_passwordChanged(QPdfDocument* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QPdfDocument_passwordRequired(QPdfDocument* self);
void QPdfDocument_connect_passwordRequired(QPdfDocument* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QPdfDocument_statusChanged(QPdfDocument* self, int status);
void QPdfDocument_connect_statusChanged(QPdfDocument* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t));
void QPdfDocument_pageCountChanged(QPdfDocument* self, int pageCount);
void QPdfDocument_connect_pageCountChanged(QPdfDocument* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t));
struct seaqt_string QPdfDocument_tr_s_c(const char* s, const char* c);
struct seaqt_string QPdfDocument_tr_s_c_n(const char* s, const char* c, int n);
struct seaqt_string QPdfDocument_trUtf8_s_c(const char* s, const char* c);
struct seaqt_string QPdfDocument_trUtf8_s_c_n(const char* s, const char* c, int n);
QImage* QPdfDocument_render_page_imageSize_options(QPdfDocument* self, int page, QSize* imageSize, QPdfDocumentRenderOptions* options);

QMetaObject* QPdfDocument_virtualbase_metaObject(const VirtualQPdfDocument* self);
void* QPdfDocument_virtualbase_metacast(VirtualQPdfDocument* self, const char* param1);
int QPdfDocument_virtualbase_metacall(VirtualQPdfDocument* self, int param1, int param2, void** param3);
bool QPdfDocument_virtualbase_event(VirtualQPdfDocument* self, QEvent* event);
bool QPdfDocument_virtualbase_eventFilter(VirtualQPdfDocument* self, QObject* watched, QEvent* event);
void QPdfDocument_virtualbase_timerEvent(VirtualQPdfDocument* self, QTimerEvent* event);
void QPdfDocument_virtualbase_childEvent(VirtualQPdfDocument* self, QChildEvent* event);
void QPdfDocument_virtualbase_customEvent(VirtualQPdfDocument* self, QEvent* event);
void QPdfDocument_virtualbase_connectNotify(VirtualQPdfDocument* self, QMetaMethod* signal);
void QPdfDocument_virtualbase_disconnectNotify(VirtualQPdfDocument* self, QMetaMethod* signal);

QObject* QPdfDocument_protectedbase_sender(const VirtualQPdfDocument* self);
int QPdfDocument_protectedbase_senderSignalIndex(const VirtualQPdfDocument* self);
int QPdfDocument_protectedbase_receivers(const VirtualQPdfDocument* self, const char* signal);
bool QPdfDocument_protectedbase_isSignalConnected(const VirtualQPdfDocument* self, QMetaMethod* signal);

void QPdfDocument_delete(QPdfDocument* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
