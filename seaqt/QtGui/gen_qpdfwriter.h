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

typedef struct VirtualQPdfWriter VirtualQPdfWriter;
typedef struct QPdfWriter_VTable{
	void (*destructor)(VirtualQPdfWriter* self);
	QMetaObject* (*metaObject)(const VirtualQPdfWriter* self);
	void* (*metacast)(VirtualQPdfWriter* self, const char* param1);
	int (*metacall)(VirtualQPdfWriter* self, int param1, int param2, void** param3);
	bool (*newPage)(VirtualQPdfWriter* self);
	QPaintEngine* (*paintEngine)(const VirtualQPdfWriter* self);
	int (*metric)(const VirtualQPdfWriter* self, int id);
	bool (*event)(VirtualQPdfWriter* self, QEvent* event);
	bool (*eventFilter)(VirtualQPdfWriter* self, QObject* watched, QEvent* event);
	void (*timerEvent)(VirtualQPdfWriter* self, QTimerEvent* event);
	void (*childEvent)(VirtualQPdfWriter* self, QChildEvent* event);
	void (*customEvent)(VirtualQPdfWriter* self, QEvent* event);
	void (*connectNotify)(VirtualQPdfWriter* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQPdfWriter* self, QMetaMethod* signal);
	bool (*setPageLayout)(VirtualQPdfWriter* self, QPageLayout* pageLayout);
	bool (*setPageSize)(VirtualQPdfWriter* self, QPageSize* pageSize);
	bool (*setPageOrientation)(VirtualQPdfWriter* self, int orientation);
	bool (*setPageMargins)(VirtualQPdfWriter* self, QMarginsF* margins, int units);
	void (*setPageRanges)(VirtualQPdfWriter* self, QPageRanges* ranges);
	int (*devType)(const VirtualQPdfWriter* self);
	void (*initPainter)(const VirtualQPdfWriter* self, QPainter* painter);
	QPaintDevice* (*redirected)(const VirtualQPdfWriter* self, QPoint* offset);
	QPainter* (*sharedPainter)(const VirtualQPdfWriter* self);
}QPdfWriter_VTable;

const QPdfWriter_VTable* QPdfWriter_vtbl(const VirtualQPdfWriter* self);
void* QPdfWriter_vdata(const VirtualQPdfWriter* self);
void QPdfWriter_setVdata(VirtualQPdfWriter* self, void* vdata);

VirtualQPdfWriter* QPdfWriter_new(const QPdfWriter_VTable* vtbl, void* vdata, struct miqt_string filename);
VirtualQPdfWriter* QPdfWriter_new2(const QPdfWriter_VTable* vtbl, void* vdata, QIODevice* device);

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

QMetaObject* QPdfWriter_virtualbase_metaObject(const VirtualQPdfWriter* self);
void* QPdfWriter_virtualbase_metacast(VirtualQPdfWriter* self, const char* param1);
int QPdfWriter_virtualbase_metacall(VirtualQPdfWriter* self, int param1, int param2, void** param3);
bool QPdfWriter_virtualbase_newPage(VirtualQPdfWriter* self);
QPaintEngine* QPdfWriter_virtualbase_paintEngine(const VirtualQPdfWriter* self);
int QPdfWriter_virtualbase_metric(const VirtualQPdfWriter* self, int id);
bool QPdfWriter_virtualbase_event(VirtualQPdfWriter* self, QEvent* event);
bool QPdfWriter_virtualbase_eventFilter(VirtualQPdfWriter* self, QObject* watched, QEvent* event);
void QPdfWriter_virtualbase_timerEvent(VirtualQPdfWriter* self, QTimerEvent* event);
void QPdfWriter_virtualbase_childEvent(VirtualQPdfWriter* self, QChildEvent* event);
void QPdfWriter_virtualbase_customEvent(VirtualQPdfWriter* self, QEvent* event);
void QPdfWriter_virtualbase_connectNotify(VirtualQPdfWriter* self, QMetaMethod* signal);
void QPdfWriter_virtualbase_disconnectNotify(VirtualQPdfWriter* self, QMetaMethod* signal);
bool QPdfWriter_virtualbase_setPageLayout(VirtualQPdfWriter* self, QPageLayout* pageLayout);
bool QPdfWriter_virtualbase_setPageSize(VirtualQPdfWriter* self, QPageSize* pageSize);
bool QPdfWriter_virtualbase_setPageOrientation(VirtualQPdfWriter* self, int orientation);
bool QPdfWriter_virtualbase_setPageMargins(VirtualQPdfWriter* self, QMarginsF* margins, int units);
void QPdfWriter_virtualbase_setPageRanges(VirtualQPdfWriter* self, QPageRanges* ranges);
int QPdfWriter_virtualbase_devType(const VirtualQPdfWriter* self);
void QPdfWriter_virtualbase_initPainter(const VirtualQPdfWriter* self, QPainter* painter);
QPaintDevice* QPdfWriter_virtualbase_redirected(const VirtualQPdfWriter* self, QPoint* offset);
QPainter* QPdfWriter_virtualbase_sharedPainter(const VirtualQPdfWriter* self);

QObject* QPdfWriter_protectedbase_sender(const VirtualQPdfWriter* self);
int QPdfWriter_protectedbase_senderSignalIndex(const VirtualQPdfWriter* self);
int QPdfWriter_protectedbase_receivers(const VirtualQPdfWriter* self, const char* signal);
bool QPdfWriter_protectedbase_isSignalConnected(const VirtualQPdfWriter* self, QMetaMethod* signal);

const QMetaObject* QPdfWriter_staticMetaObject();
void QPdfWriter_delete(QPdfWriter* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
