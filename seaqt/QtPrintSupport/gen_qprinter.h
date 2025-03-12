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

typedef struct VirtualQPrinter VirtualQPrinter;
typedef struct QPrinter_VTable{
	void (*destructor)(VirtualQPrinter* self);
	int (*devType)(const VirtualQPrinter* self);
	bool (*newPage)(VirtualQPrinter* self);
	QPaintEngine* (*paintEngine)(const VirtualQPrinter* self);
	int (*metric)(const VirtualQPrinter* self, int param1);
	bool (*setPageLayout)(VirtualQPrinter* self, QPageLayout* pageLayout);
	bool (*setPageSize)(VirtualQPrinter* self, QPageSize* pageSize);
	bool (*setPageOrientation)(VirtualQPrinter* self, int orientation);
	bool (*setPageMargins)(VirtualQPrinter* self, QMarginsF* margins, int units);
	void (*setPageRanges)(VirtualQPrinter* self, QPageRanges* ranges);
	void (*initPainter)(const VirtualQPrinter* self, QPainter* painter);
	QPaintDevice* (*redirected)(const VirtualQPrinter* self, QPoint* offset);
	QPainter* (*sharedPainter)(const VirtualQPrinter* self);
}QPrinter_VTable;

const QPrinter_VTable* QPrinter_vtbl(const VirtualQPrinter* self);
void* QPrinter_vdata(const VirtualQPrinter* self);
void QPrinter_setVdata(VirtualQPrinter* self, void* vdata);

VirtualQPrinter* QPrinter_new(const QPrinter_VTable* vtbl, void* vdata);
VirtualQPrinter* QPrinter_new2(const QPrinter_VTable* vtbl, void* vdata, QPrinterInfo* printer);
VirtualQPrinter* QPrinter_new3(const QPrinter_VTable* vtbl, void* vdata, int mode);
VirtualQPrinter* QPrinter_new4(const QPrinter_VTable* vtbl, void* vdata, QPrinterInfo* printer, int mode);

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

int QPrinter_virtualbase_devType(const VirtualQPrinter* self);
bool QPrinter_virtualbase_newPage(VirtualQPrinter* self);
QPaintEngine* QPrinter_virtualbase_paintEngine(const VirtualQPrinter* self);
int QPrinter_virtualbase_metric(const VirtualQPrinter* self, int param1);
bool QPrinter_virtualbase_setPageLayout(VirtualQPrinter* self, QPageLayout* pageLayout);
bool QPrinter_virtualbase_setPageSize(VirtualQPrinter* self, QPageSize* pageSize);
bool QPrinter_virtualbase_setPageOrientation(VirtualQPrinter* self, int orientation);
bool QPrinter_virtualbase_setPageMargins(VirtualQPrinter* self, QMarginsF* margins, int units);
void QPrinter_virtualbase_setPageRanges(VirtualQPrinter* self, QPageRanges* ranges);
void QPrinter_virtualbase_initPainter(const VirtualQPrinter* self, QPainter* painter);
QPaintDevice* QPrinter_virtualbase_redirected(const VirtualQPrinter* self, QPoint* offset);
QPainter* QPrinter_virtualbase_sharedPainter(const VirtualQPrinter* self);

void QPrinter_protectedbase_setEngines(VirtualQPrinter* self, QPrintEngine* printEngine, QPaintEngine* paintEngine);

void QPrinter_delete(QPrinter* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
