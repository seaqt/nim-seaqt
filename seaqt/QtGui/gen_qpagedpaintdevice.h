#pragma once
#ifndef SEAQT_QTGUI_GEN_QPAGEDPAINTDEVICE_H
#define SEAQT_QTGUI_GEN_QPAGEDPAINTDEVICE_H

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
class QPageSize;
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
class QSizeF;
#else
typedef struct QMarginsF QMarginsF;
typedef struct QPageLayout QPageLayout;
typedef struct QPageSize QPageSize;
typedef struct QPagedPaintDevice QPagedPaintDevice;
typedef struct QPagedPaintDevice__Margins QPagedPaintDevice__Margins;
typedef struct QPaintDevice QPaintDevice;
typedef struct QPaintEngine QPaintEngine;
typedef struct QPainter QPainter;
typedef struct QPoint QPoint;
typedef struct QSizeF QSizeF;
#endif

struct QPagedPaintDevice_VTable {
	void (*destructor)(struct QPagedPaintDevice_VTable* vtbl, QPagedPaintDevice* self);
	bool (*newPage)(struct QPagedPaintDevice_VTable* vtbl, QPagedPaintDevice* self);
	void (*setPageSizeWithSize)(struct QPagedPaintDevice_VTable* vtbl, QPagedPaintDevice* self, int size);
	void (*setPageSizeMM)(struct QPagedPaintDevice_VTable* vtbl, QPagedPaintDevice* self, QSizeF* size);
	void (*setMargins)(struct QPagedPaintDevice_VTable* vtbl, QPagedPaintDevice* self, QPagedPaintDevice__Margins* margins);
	int (*devType)(struct QPagedPaintDevice_VTable* vtbl, const QPagedPaintDevice* self);
	QPaintEngine* (*paintEngine)(struct QPagedPaintDevice_VTable* vtbl, const QPagedPaintDevice* self);
	int (*metric)(struct QPagedPaintDevice_VTable* vtbl, const QPagedPaintDevice* self, int metric);
	void (*initPainter)(struct QPagedPaintDevice_VTable* vtbl, const QPagedPaintDevice* self, QPainter* painter);
	QPaintDevice* (*redirected)(struct QPagedPaintDevice_VTable* vtbl, const QPagedPaintDevice* self, QPoint* offset);
	QPainter* (*sharedPainter)(struct QPagedPaintDevice_VTable* vtbl, const QPagedPaintDevice* self);
};
QPagedPaintDevice* QPagedPaintDevice_new(struct QPagedPaintDevice_VTable* vtbl);
void QPagedPaintDevice_virtbase(QPagedPaintDevice* src, QPaintDevice** outptr_QPaintDevice);
bool QPagedPaintDevice_newPage(QPagedPaintDevice* self);
bool QPagedPaintDevice_setPageLayout(QPagedPaintDevice* self, QPageLayout* pageLayout);
bool QPagedPaintDevice_setPageSize(QPagedPaintDevice* self, QPageSize* pageSize);
bool QPagedPaintDevice_setPageOrientation(QPagedPaintDevice* self, int orientation);
bool QPagedPaintDevice_setPageMargins(QPagedPaintDevice* self, QMarginsF* margins);
bool QPagedPaintDevice_setPageMargins2(QPagedPaintDevice* self, QMarginsF* margins, int units);
QPageLayout* QPagedPaintDevice_pageLayout(const QPagedPaintDevice* self);
void QPagedPaintDevice_setPageSizeWithSize(QPagedPaintDevice* self, int size);
int QPagedPaintDevice_pageSize(const QPagedPaintDevice* self);
void QPagedPaintDevice_setPageSizeMM(QPagedPaintDevice* self, QSizeF* size);
QSizeF* QPagedPaintDevice_pageSizeMM(const QPagedPaintDevice* self);
void QPagedPaintDevice_setMargins(QPagedPaintDevice* self, QPagedPaintDevice__Margins* margins);
QPagedPaintDevice__Margins* QPagedPaintDevice_margins(const QPagedPaintDevice* self);
bool QPagedPaintDevice_virtualbase_newPage(void* self);
void QPagedPaintDevice_virtualbase_setPageSizeWithSize(void* self, int size);
void QPagedPaintDevice_virtualbase_setPageSizeMM(void* self, QSizeF* size);
void QPagedPaintDevice_virtualbase_setMargins(void* self, QPagedPaintDevice__Margins* margins);
int QPagedPaintDevice_virtualbase_devType(const void* self);
QPaintEngine* QPagedPaintDevice_virtualbase_paintEngine(const void* self);
int QPagedPaintDevice_virtualbase_metric(const void* self, int metric);
void QPagedPaintDevice_virtualbase_initPainter(const void* self, QPainter* painter);
QPaintDevice* QPagedPaintDevice_virtualbase_redirected(const void* self, QPoint* offset);
QPainter* QPagedPaintDevice_virtualbase_sharedPainter(const void* self);
QPageLayout* QPagedPaintDevice_protectedbase_devicePageLayout(const void* self);
QPageLayout* QPagedPaintDevice_protectedbase_devicePageLayout2(void* self);
void QPagedPaintDevice_delete(QPagedPaintDevice* self);

void QPagedPaintDevice__Margins_delete(QPagedPaintDevice__Margins* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
