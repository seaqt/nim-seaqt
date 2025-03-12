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
class QPageLayout;
class QPagedPaintDevice;
#if defined(WORKAROUND_INNER_CLASS_DEFINITION_QPagedPaintDevice__Margins)
typedef QPagedPaintDevice::Margins QPagedPaintDevice__Margins;
#else
class QPagedPaintDevice__Margins;
#endif
class QPaintDevice;
class QPaintEngine;
class QPainter;
class QPoint;
class QPrintEngine;
class QPrinter;
class QPrinterInfo;
class QRect;
class QRectF;
class QSizeF;
#else
typedef struct QPageLayout QPageLayout;
typedef struct QPagedPaintDevice QPagedPaintDevice;
typedef struct QPagedPaintDevice__Margins QPagedPaintDevice__Margins;
typedef struct QPaintDevice QPaintDevice;
typedef struct QPaintEngine QPaintEngine;
typedef struct QPainter QPainter;
typedef struct QPoint QPoint;
typedef struct QPrintEngine QPrintEngine;
typedef struct QPrinter QPrinter;
typedef struct QPrinterInfo QPrinterInfo;
typedef struct QRect QRect;
typedef struct QRectF QRectF;
typedef struct QSizeF QSizeF;
#endif

typedef struct VirtualQPrinter VirtualQPrinter;
typedef struct QPrinter_VTable{
	void (*destructor)(VirtualQPrinter* self);
	int (*devType)(const VirtualQPrinter* self);
	void (*setPageSize)(VirtualQPrinter* self, int pageSize);
	void (*setPageSizeMM)(VirtualQPrinter* self, QSizeF* size);
	bool (*newPage)(VirtualQPrinter* self);
	QPaintEngine* (*paintEngine)(const VirtualQPrinter* self);
	void (*setMargins)(VirtualQPrinter* self, QPagedPaintDevice__Margins* m);
	int (*metric)(const VirtualQPrinter* self, int param1);
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
void QPrinter_setOrientation(QPrinter* self, int orientation);
int QPrinter_orientation(const QPrinter* self);
void QPrinter_setPageSize(QPrinter* self, int pageSize);
int QPrinter_pageSize(const QPrinter* self);
void QPrinter_setPageSizeMM(QPrinter* self, QSizeF* size);
void QPrinter_setPaperSize(QPrinter* self, int paperSize);
int QPrinter_paperSize(const QPrinter* self);
void QPrinter_setPaperSize2(QPrinter* self, QSizeF* paperSize, int unit);
QSizeF* QPrinter_paperSizeWithUnit(const QPrinter* self, int unit);
void QPrinter_setPaperName(QPrinter* self, struct miqt_string paperName);
struct miqt_string QPrinter_paperName(const QPrinter* self);
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
void QPrinter_setNumCopies(QPrinter* self, int numCopies);
int QPrinter_numCopies(const QPrinter* self);
int QPrinter_actualNumCopies(const QPrinter* self);
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
void QPrinter_setDoubleSidedPrinting(QPrinter* self, bool enable);
bool QPrinter_doubleSidedPrinting(const QPrinter* self);
void QPrinter_setWinPageSize(QPrinter* self, int winPageSize);
int QPrinter_winPageSize(const QPrinter* self);
QRect* QPrinter_paperRect(const QPrinter* self);
QRect* QPrinter_pageRect(const QPrinter* self);
QRectF* QPrinter_paperRectWithQPrinterUnit(const QPrinter* self, int param1);
QRectF* QPrinter_pageRectWithQPrinterUnit(const QPrinter* self, int param1);
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
void QPrinter_setMargins(QPrinter* self, QPagedPaintDevice__Margins* m);
void QPrinter_setPageMargins(QPrinter* self, double left, double top, double right, double bottom, int unit);
void QPrinter_getPageMargins(const QPrinter* self, double* left, double* top, double* right, double* bottom, int unit);
int QPrinter_metric(const QPrinter* self, int param1);

int QPrinter_virtualbase_devType(const VirtualQPrinter* self);
void QPrinter_virtualbase_setPageSize(VirtualQPrinter* self, int pageSize);
void QPrinter_virtualbase_setPageSizeMM(VirtualQPrinter* self, QSizeF* size);
bool QPrinter_virtualbase_newPage(VirtualQPrinter* self);
QPaintEngine* QPrinter_virtualbase_paintEngine(const VirtualQPrinter* self);
void QPrinter_virtualbase_setMargins(VirtualQPrinter* self, QPagedPaintDevice__Margins* m);
int QPrinter_virtualbase_metric(const VirtualQPrinter* self, int param1);
void QPrinter_virtualbase_initPainter(const VirtualQPrinter* self, QPainter* painter);
QPaintDevice* QPrinter_virtualbase_redirected(const VirtualQPrinter* self, QPoint* offset);
QPainter* QPrinter_virtualbase_sharedPainter(const VirtualQPrinter* self);

void QPrinter_protectedbase_setEngines(VirtualQPrinter* self, QPrintEngine* printEngine, QPaintEngine* paintEngine);
QPageLayout* QPrinter_protectedbase_devicePageLayout(const VirtualQPrinter* self);

void QPrinter_delete(QPrinter* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
