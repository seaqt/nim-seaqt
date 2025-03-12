#pragma once
#ifndef SEAQT_QTSVG_GEN_QSVGGENERATOR_H
#define SEAQT_QTSVG_GEN_QSVGGENERATOR_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt/libseaqt.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QIODevice;
class QPaintDevice;
class QPaintEngine;
class QPainter;
class QPoint;
class QRect;
class QRectF;
class QSize;
class QSvgGenerator;
#else
typedef struct QIODevice QIODevice;
typedef struct QPaintDevice QPaintDevice;
typedef struct QPaintEngine QPaintEngine;
typedef struct QPainter QPainter;
typedef struct QPoint QPoint;
typedef struct QRect QRect;
typedef struct QRectF QRectF;
typedef struct QSize QSize;
typedef struct QSvgGenerator QSvgGenerator;
#endif

typedef struct VirtualQSvgGenerator VirtualQSvgGenerator;
typedef struct QSvgGenerator_VTable{
	void (*destructor)(VirtualQSvgGenerator* self);
	QPaintEngine* (*paintEngine)(const VirtualQSvgGenerator* self);
	int (*metric)(const VirtualQSvgGenerator* self, int metric);
	int (*devType)(const VirtualQSvgGenerator* self);
	void (*initPainter)(const VirtualQSvgGenerator* self, QPainter* painter);
	QPaintDevice* (*redirected)(const VirtualQSvgGenerator* self, QPoint* offset);
	QPainter* (*sharedPainter)(const VirtualQSvgGenerator* self);
}QSvgGenerator_VTable;

const QSvgGenerator_VTable* QSvgGenerator_vtbl(const VirtualQSvgGenerator* self);
void* QSvgGenerator_vdata(const VirtualQSvgGenerator* self);
void QSvgGenerator_setVdata(VirtualQSvgGenerator* self, void* vdata);

VirtualQSvgGenerator* QSvgGenerator_new(const QSvgGenerator_VTable* vtbl, void* vdata);

void QSvgGenerator_virtbase(QSvgGenerator* src, QPaintDevice** outptr_QPaintDevice);
struct miqt_string QSvgGenerator_title(const QSvgGenerator* self);
void QSvgGenerator_setTitle(QSvgGenerator* self, struct miqt_string title);
struct miqt_string QSvgGenerator_description(const QSvgGenerator* self);
void QSvgGenerator_setDescription(QSvgGenerator* self, struct miqt_string description);
QSize* QSvgGenerator_size(const QSvgGenerator* self);
void QSvgGenerator_setSize(QSvgGenerator* self, QSize* size);
QRect* QSvgGenerator_viewBox(const QSvgGenerator* self);
QRectF* QSvgGenerator_viewBoxF(const QSvgGenerator* self);
void QSvgGenerator_setViewBox(QSvgGenerator* self, QRect* viewBox);
void QSvgGenerator_setViewBoxWithViewBox(QSvgGenerator* self, QRectF* viewBox);
struct miqt_string QSvgGenerator_fileName(const QSvgGenerator* self);
void QSvgGenerator_setFileName(QSvgGenerator* self, struct miqt_string fileName);
QIODevice* QSvgGenerator_outputDevice(const QSvgGenerator* self);
void QSvgGenerator_setOutputDevice(QSvgGenerator* self, QIODevice* outputDevice);
void QSvgGenerator_setResolution(QSvgGenerator* self, int dpi);
int QSvgGenerator_resolution(const QSvgGenerator* self);
QPaintEngine* QSvgGenerator_paintEngine(const QSvgGenerator* self);
int QSvgGenerator_metric(const QSvgGenerator* self, int metric);

QPaintEngine* QSvgGenerator_virtualbase_paintEngine(const VirtualQSvgGenerator* self);
int QSvgGenerator_virtualbase_metric(const VirtualQSvgGenerator* self, int metric);
int QSvgGenerator_virtualbase_devType(const VirtualQSvgGenerator* self);
void QSvgGenerator_virtualbase_initPainter(const VirtualQSvgGenerator* self, QPainter* painter);
QPaintDevice* QSvgGenerator_virtualbase_redirected(const VirtualQSvgGenerator* self, QPoint* offset);
QPainter* QSvgGenerator_virtualbase_sharedPainter(const VirtualQSvgGenerator* self);

void QSvgGenerator_delete(QSvgGenerator* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
