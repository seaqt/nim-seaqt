#pragma once
#ifndef SEAQT_QTGUI_GEN_QPDFWRITER_H
#define SEAQT_QTGUI_GEN_QPDFWRITER_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt/libseaqt.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QChildEvent;
class QEvent;
class QIODevice;
class QMarginsF;
class QMetaMethod;
class QMetaObject;
class QObject;
class QPageLayout;
class QPageRanges;
class QPageSize;
class QPagedPaintDevice;
class QPaintDevice;
class QPaintEngine;
class QPainter;
class QPdfWriter;
class QPoint;
class QTimerEvent;
#else
typedef struct QChildEvent QChildEvent;
typedef struct QEvent QEvent;
typedef struct QIODevice QIODevice;
typedef struct QMarginsF QMarginsF;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QObject QObject;
typedef struct QPageLayout QPageLayout;
typedef struct QPageRanges QPageRanges;
typedef struct QPageSize QPageSize;
typedef struct QPagedPaintDevice QPagedPaintDevice;
typedef struct QPaintDevice QPaintDevice;
typedef struct QPaintEngine QPaintEngine;
typedef struct QPainter QPainter;
typedef struct QPdfWriter QPdfWriter;
typedef struct QPoint QPoint;
typedef struct QTimerEvent QTimerEvent;
#endif

struct QPdfWriter_VTable {
	void (*destructor)(struct QPdfWriter_VTable* vtbl, QPdfWriter* self);
	QMetaObject* (*metaObject)(struct QPdfWriter_VTable* vtbl, const QPdfWriter* self);
	void* (*metacast)(struct QPdfWriter_VTable* vtbl, QPdfWriter* self, const char* param1);
	int (*metacall)(struct QPdfWriter_VTable* vtbl, QPdfWriter* self, int param1, int param2, void** param3);
	bool (*newPage)(struct QPdfWriter_VTable* vtbl, QPdfWriter* self);
	QPaintEngine* (*paintEngine)(struct QPdfWriter_VTable* vtbl, const QPdfWriter* self);
	int (*metric)(struct QPdfWriter_VTable* vtbl, const QPdfWriter* self, int id);
	bool (*event)(struct QPdfWriter_VTable* vtbl, QPdfWriter* self, QEvent* event);
	bool (*eventFilter)(struct QPdfWriter_VTable* vtbl, QPdfWriter* self, QObject* watched, QEvent* event);
	void (*timerEvent)(struct QPdfWriter_VTable* vtbl, QPdfWriter* self, QTimerEvent* event);
	void (*childEvent)(struct QPdfWriter_VTable* vtbl, QPdfWriter* self, QChildEvent* event);
	void (*customEvent)(struct QPdfWriter_VTable* vtbl, QPdfWriter* self, QEvent* event);
	void (*connectNotify)(struct QPdfWriter_VTable* vtbl, QPdfWriter* self, QMetaMethod* signal);
	void (*disconnectNotify)(struct QPdfWriter_VTable* vtbl, QPdfWriter* self, QMetaMethod* signal);
	bool (*setPageLayout)(struct QPdfWriter_VTable* vtbl, QPdfWriter* self, QPageLayout* pageLayout);
	bool (*setPageSize)(struct QPdfWriter_VTable* vtbl, QPdfWriter* self, QPageSize* pageSize);
	bool (*setPageOrientation)(struct QPdfWriter_VTable* vtbl, QPdfWriter* self, int orientation);
	bool (*setPageMargins)(struct QPdfWriter_VTable* vtbl, QPdfWriter* self, QMarginsF* margins, int units);
	void (*setPageRanges)(struct QPdfWriter_VTable* vtbl, QPdfWriter* self, QPageRanges* ranges);
	int (*devType)(struct QPdfWriter_VTable* vtbl, const QPdfWriter* self);
	void (*initPainter)(struct QPdfWriter_VTable* vtbl, const QPdfWriter* self, QPainter* painter);
	QPaintDevice* (*redirected)(struct QPdfWriter_VTable* vtbl, const QPdfWriter* self, QPoint* offset);
	QPainter* (*sharedPainter)(struct QPdfWriter_VTable* vtbl, const QPdfWriter* self);
};
QPdfWriter* QPdfWriter_new(struct QPdfWriter_VTable* vtbl, struct miqt_string filename);
QPdfWriter* QPdfWriter_new2(struct QPdfWriter_VTable* vtbl, QIODevice* device);
void QPdfWriter_virtbase(QPdfWriter* src, QObject** outptr_QObject, QPagedPaintDevice** outptr_QPagedPaintDevice);
QMetaObject* QPdfWriter_metaObject(const QPdfWriter* self);
void* QPdfWriter_metacast(QPdfWriter* self, const char* param1);
int QPdfWriter_metacall(QPdfWriter* self, int param1, int param2, void** param3);
struct miqt_string QPdfWriter_tr(const char* s);
void QPdfWriter_setPdfVersion(QPdfWriter* self, int version);
int QPdfWriter_pdfVersion(const QPdfWriter* self);
struct miqt_string QPdfWriter_title(const QPdfWriter* self);
void QPdfWriter_setTitle(QPdfWriter* self, struct miqt_string title);
struct miqt_string QPdfWriter_creator(const QPdfWriter* self);
void QPdfWriter_setCreator(QPdfWriter* self, struct miqt_string creator);
bool QPdfWriter_newPage(QPdfWriter* self);
void QPdfWriter_setResolution(QPdfWriter* self, int resolution);
int QPdfWriter_resolution(const QPdfWriter* self);
void QPdfWriter_setDocumentXmpMetadata(QPdfWriter* self, struct miqt_string xmpMetadata);
struct miqt_string QPdfWriter_documentXmpMetadata(const QPdfWriter* self);
void QPdfWriter_addFileAttachment(QPdfWriter* self, struct miqt_string fileName, struct miqt_string data);
QPaintEngine* QPdfWriter_paintEngine(const QPdfWriter* self);
int QPdfWriter_metric(const QPdfWriter* self, int id);
struct miqt_string QPdfWriter_tr2(const char* s, const char* c);
struct miqt_string QPdfWriter_tr3(const char* s, const char* c, int n);
void QPdfWriter_addFileAttachment3(QPdfWriter* self, struct miqt_string fileName, struct miqt_string data, struct miqt_string mimeType);
QMetaObject* QPdfWriter_virtualbase_metaObject(const void* self);
void* QPdfWriter_virtualbase_metacast(void* self, const char* param1);
int QPdfWriter_virtualbase_metacall(void* self, int param1, int param2, void** param3);
bool QPdfWriter_virtualbase_newPage(void* self);
QPaintEngine* QPdfWriter_virtualbase_paintEngine(const void* self);
int QPdfWriter_virtualbase_metric(const void* self, int id);
bool QPdfWriter_virtualbase_event(void* self, QEvent* event);
bool QPdfWriter_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);
void QPdfWriter_virtualbase_timerEvent(void* self, QTimerEvent* event);
void QPdfWriter_virtualbase_childEvent(void* self, QChildEvent* event);
void QPdfWriter_virtualbase_customEvent(void* self, QEvent* event);
void QPdfWriter_virtualbase_connectNotify(void* self, QMetaMethod* signal);
void QPdfWriter_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
bool QPdfWriter_virtualbase_setPageLayout(void* self, QPageLayout* pageLayout);
bool QPdfWriter_virtualbase_setPageSize(void* self, QPageSize* pageSize);
bool QPdfWriter_virtualbase_setPageOrientation(void* self, int orientation);
bool QPdfWriter_virtualbase_setPageMargins(void* self, QMarginsF* margins, int units);
void QPdfWriter_virtualbase_setPageRanges(void* self, QPageRanges* ranges);
int QPdfWriter_virtualbase_devType(const void* self);
void QPdfWriter_virtualbase_initPainter(const void* self, QPainter* painter);
QPaintDevice* QPdfWriter_virtualbase_redirected(const void* self, QPoint* offset);
QPainter* QPdfWriter_virtualbase_sharedPainter(const void* self);
QObject* QPdfWriter_protectedbase_sender(bool* _dynamic_cast_ok, const void* self);
int QPdfWriter_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self);
int QPdfWriter_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal);
bool QPdfWriter_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal);
const QMetaObject* QPdfWriter_staticMetaObject();
void QPdfWriter_delete(QPdfWriter* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
