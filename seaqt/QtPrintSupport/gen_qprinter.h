#pragma once
#ifndef SEAQT_QTPRINTSUPPORT_GEN_QPRINTER_H
#define SEAQT_QTPRINTSUPPORT_GEN_QPRINTER_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt/libseaqt.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QMarginsF;
class QPageLayout;
class QPageRanges;
class QPageSize;
class QPagedPaintDevice;
class QPaintDevice;
class QPaintEngine;
class QPainter;
class QPoint;
class QPrintEngine;
class QPrinter;
class QPrinterInfo;
class QRectF;
#else
typedef struct QMarginsF QMarginsF;
typedef struct QPageLayout QPageLayout;
typedef struct QPageRanges QPageRanges;
typedef struct QPageSize QPageSize;
typedef struct QPagedPaintDevice QPagedPaintDevice;
typedef struct QPaintDevice QPaintDevice;
typedef struct QPaintEngine QPaintEngine;
typedef struct QPainter QPainter;
typedef struct QPoint QPoint;
typedef struct QPrintEngine QPrintEngine;
typedef struct QPrinter QPrinter;
typedef struct QPrinterInfo QPrinterInfo;
typedef struct QRectF QRectF;
#endif

struct QPrinter_VTable {
	void (*destructor)(struct QPrinter_VTable* vtbl, QPrinter* self);
	int (*devType)(struct QPrinter_VTable* vtbl, const QPrinter* self);
	bool (*newPage)(struct QPrinter_VTable* vtbl, QPrinter* self);
	QPaintEngine* (*paintEngine)(struct QPrinter_VTable* vtbl, const QPrinter* self);
	int (*metric)(struct QPrinter_VTable* vtbl, const QPrinter* self, int param1);
	bool (*setPageLayout)(struct QPrinter_VTable* vtbl, QPrinter* self, QPageLayout* pageLayout);
	bool (*setPageSize)(struct QPrinter_VTable* vtbl, QPrinter* self, QPageSize* pageSize);
	bool (*setPageOrientation)(struct QPrinter_VTable* vtbl, QPrinter* self, int orientation);
	bool (*setPageMargins)(struct QPrinter_VTable* vtbl, QPrinter* self, QMarginsF* margins, int units);
	void (*setPageRanges)(struct QPrinter_VTable* vtbl, QPrinter* self, QPageRanges* ranges);
	void (*initPainter)(struct QPrinter_VTable* vtbl, const QPrinter* self, QPainter* painter);
	QPaintDevice* (*redirected)(struct QPrinter_VTable* vtbl, const QPrinter* self, QPoint* offset);
	QPainter* (*sharedPainter)(struct QPrinter_VTable* vtbl, const QPrinter* self);
};
QPrinter* QPrinter_new(struct QPrinter_VTable* vtbl);
QPrinter* QPrinter_new2(struct QPrinter_VTable* vtbl, QPrinterInfo* printer);
QPrinter* QPrinter_new3(struct QPrinter_VTable* vtbl, int mode);
QPrinter* QPrinter_new4(struct QPrinter_VTable* vtbl, QPrinterInfo* printer, int mode);
void QPrinter_virtbase(QPrinter* src, QPagedPaintDevice** outptr_QPagedPaintDevice);
int QPrinter_devType(const QPrinter* self);
void QPrinter_setOutputFormat(QPrinter* self, int format);
int QPrinter_outputFormat(const QPrinter* self);
void QPrinter_setPdfVersion(QPrinter* self, int version);
int QPrinter_pdfVersion(const QPrinter* self);
void QPrinter_setPrinterName(QPrinter* self, struct miqt_string printerName);
struct miqt_string QPrinter_printerName(const QPrinter* self);
bool QPrinter_isValid(const QPrinter* self);
void QPrinter_setOutputFileName(QPrinter* self, struct miqt_string outputFileName);
struct miqt_string QPrinter_outputFileName(const QPrinter* self);
void QPrinter_setPrintProgram(QPrinter* self, struct miqt_string printProgram);
struct miqt_string QPrinter_printProgram(const QPrinter* self);
void QPrinter_setDocName(QPrinter* self, struct miqt_string docName);
struct miqt_string QPrinter_docName(const QPrinter* self);
void QPrinter_setCreator(QPrinter* self, struct miqt_string creator);
struct miqt_string QPrinter_creator(const QPrinter* self);
void QPrinter_setPageOrder(QPrinter* self, int pageOrder);
int QPrinter_pageOrder(const QPrinter* self);
void QPrinter_setResolution(QPrinter* self, int resolution);
int QPrinter_resolution(const QPrinter* self);
void QPrinter_setColorMode(QPrinter* self, int colorMode);
int QPrinter_colorMode(const QPrinter* self);
void QPrinter_setCollateCopies(QPrinter* self, bool collate);
bool QPrinter_collateCopies(const QPrinter* self);
void QPrinter_setFullPage(QPrinter* self, bool fullPage);
bool QPrinter_fullPage(const QPrinter* self);
void QPrinter_setCopyCount(QPrinter* self, int copyCount);
int QPrinter_copyCount(const QPrinter* self);
bool QPrinter_supportsMultipleCopies(const QPrinter* self);
void QPrinter_setPaperSource(QPrinter* self, int paperSource);
int QPrinter_paperSource(const QPrinter* self);
void QPrinter_setDuplex(QPrinter* self, int duplex);
int QPrinter_duplex(const QPrinter* self);
struct miqt_array /* of int */  QPrinter_supportedResolutions(const QPrinter* self);
void QPrinter_setFontEmbeddingEnabled(QPrinter* self, bool enable);
bool QPrinter_fontEmbeddingEnabled(const QPrinter* self);
QRectF* QPrinter_paperRect(const QPrinter* self, int param1);
QRectF* QPrinter_pageRect(const QPrinter* self, int param1);
struct miqt_string QPrinter_printerSelectionOption(const QPrinter* self);
void QPrinter_setPrinterSelectionOption(QPrinter* self, struct miqt_string printerSelectionOption);
bool QPrinter_newPage(QPrinter* self);
bool QPrinter_abort(QPrinter* self);
int QPrinter_printerState(const QPrinter* self);
QPaintEngine* QPrinter_paintEngine(const QPrinter* self);
QPrintEngine* QPrinter_printEngine(const QPrinter* self);
void QPrinter_setFromTo(QPrinter* self, int fromPage, int toPage);
int QPrinter_fromPage(const QPrinter* self);
int QPrinter_toPage(const QPrinter* self);
void QPrinter_setPrintRange(QPrinter* self, int range);
int QPrinter_printRange(const QPrinter* self);
int QPrinter_metric(const QPrinter* self, int param1);
int QPrinter_virtualbase_devType(const void* self);
bool QPrinter_virtualbase_newPage(void* self);
QPaintEngine* QPrinter_virtualbase_paintEngine(const void* self);
int QPrinter_virtualbase_metric(const void* self, int param1);
bool QPrinter_virtualbase_setPageLayout(void* self, QPageLayout* pageLayout);
bool QPrinter_virtualbase_setPageSize(void* self, QPageSize* pageSize);
bool QPrinter_virtualbase_setPageOrientation(void* self, int orientation);
bool QPrinter_virtualbase_setPageMargins(void* self, QMarginsF* margins, int units);
void QPrinter_virtualbase_setPageRanges(void* self, QPageRanges* ranges);
void QPrinter_virtualbase_initPainter(const void* self, QPainter* painter);
QPaintDevice* QPrinter_virtualbase_redirected(const void* self, QPoint* offset);
QPainter* QPrinter_virtualbase_sharedPainter(const void* self);
void QPrinter_protectedbase_setEngines(void* self, QPrintEngine* printEngine, QPaintEngine* paintEngine);
void QPrinter_delete(QPrinter* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
