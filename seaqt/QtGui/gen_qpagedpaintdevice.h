#pragma once
#ifndef SEAQT_QTGUI_GEN_QPAGEDPAINTDEVICE_H
#define SEAQT_QTGUI_GEN_QPAGEDPAINTDEVICE_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt-runtime.h"

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

typedef struct VirtualQPagedPaintDevice VirtualQPagedPaintDevice;
typedef struct QPagedPaintDevice_VTable{
	void (*destructor)(VirtualQPagedPaintDevice* self);
	bool (*newPage)(VirtualQPagedPaintDevice* self);
	void (*setPageSize_size)(VirtualQPagedPaintDevice* self, int size);
	void (*setPageSizeMM)(VirtualQPagedPaintDevice* self, QSizeF* size);
	void (*setMargins)(VirtualQPagedPaintDevice* self, QPagedPaintDevice__Margins* margins);
	int (*devType)(const VirtualQPagedPaintDevice* self);
	QPaintEngine* (*paintEngine)(const VirtualQPagedPaintDevice* self);
	int (*metric)(const VirtualQPagedPaintDevice* self, int metric);
	void (*initPainter)(const VirtualQPagedPaintDevice* self, QPainter* painter);
	QPaintDevice* (*redirected)(const VirtualQPagedPaintDevice* self, QPoint* offset);
	QPainter* (*sharedPainter)(const VirtualQPagedPaintDevice* self);
}QPagedPaintDevice_VTable;

void* QPagedPaintDevice_vdata(VirtualQPagedPaintDevice* self);
VirtualQPagedPaintDevice* vdata_QPagedPaintDevice(void* vdata);

VirtualQPagedPaintDevice* QPagedPaintDevice_new(const QPagedPaintDevice_VTable* vtbl, size_t vdata);

void QPagedPaintDevice_virtbase(QPagedPaintDevice* src, QPaintDevice** outptr_QPaintDevice);
bool QPagedPaintDevice_newPage(QPagedPaintDevice* self);
bool QPagedPaintDevice_setPageLayout(QPagedPaintDevice* self, QPageLayout* pageLayout);
bool QPagedPaintDevice_setPageSize_pageSize(QPagedPaintDevice* self, QPageSize* pageSize);
bool QPagedPaintDevice_setPageOrientation(QPagedPaintDevice* self, int orientation);
bool QPagedPaintDevice_setPageMargins_margins(QPagedPaintDevice* self, QMarginsF* margins);
bool QPagedPaintDevice_setPageMargins_margins_units(QPagedPaintDevice* self, QMarginsF* margins, int units);
QPageLayout* QPagedPaintDevice_pageLayout(const QPagedPaintDevice* self);
void QPagedPaintDevice_setPageSize_size(QPagedPaintDevice* self, int size);
int QPagedPaintDevice_pageSize(const QPagedPaintDevice* self);
void QPagedPaintDevice_setPageSizeMM(QPagedPaintDevice* self, QSizeF* size);
QSizeF* QPagedPaintDevice_pageSizeMM(const QPagedPaintDevice* self);
void QPagedPaintDevice_setMargins(QPagedPaintDevice* self, QPagedPaintDevice__Margins* margins);
QPagedPaintDevice__Margins* QPagedPaintDevice_margins(const QPagedPaintDevice* self);

bool QPagedPaintDevice_virtualbase_newPage(VirtualQPagedPaintDevice* self);
void QPagedPaintDevice_virtualbase_setPageSize_size(VirtualQPagedPaintDevice* self, int size);
void QPagedPaintDevice_virtualbase_setPageSizeMM(VirtualQPagedPaintDevice* self, QSizeF* size);
void QPagedPaintDevice_virtualbase_setMargins(VirtualQPagedPaintDevice* self, QPagedPaintDevice__Margins* margins);
int QPagedPaintDevice_virtualbase_devType(const VirtualQPagedPaintDevice* self);
QPaintEngine* QPagedPaintDevice_virtualbase_paintEngine(const VirtualQPagedPaintDevice* self);
int QPagedPaintDevice_virtualbase_metric(const VirtualQPagedPaintDevice* self, int metric);
void QPagedPaintDevice_virtualbase_initPainter(const VirtualQPagedPaintDevice* self, QPainter* painter);
QPaintDevice* QPagedPaintDevice_virtualbase_redirected(const VirtualQPagedPaintDevice* self, QPoint* offset);
QPainter* QPagedPaintDevice_virtualbase_sharedPainter(const VirtualQPagedPaintDevice* self);

QPageLayout* QPagedPaintDevice_protectedbase_devicePageLayout_const(const VirtualQPagedPaintDevice* self);
QPageLayout* QPagedPaintDevice_protectedbase_devicePageLayout(VirtualQPagedPaintDevice* self);

void QPagedPaintDevice_delete(QPagedPaintDevice* self);

double QPagedPaintDevice__Margins_left(const QPagedPaintDevice__Margins* self);
void QPagedPaintDevice__Margins_setLeft(QPagedPaintDevice__Margins* self, double left);
double QPagedPaintDevice__Margins_right(const QPagedPaintDevice__Margins* self);
void QPagedPaintDevice__Margins_setRight(QPagedPaintDevice__Margins* self, double right);
double QPagedPaintDevice__Margins_top(const QPagedPaintDevice__Margins* self);
void QPagedPaintDevice__Margins_setTop(QPagedPaintDevice__Margins* self, double top);
double QPagedPaintDevice__Margins_bottom(const QPagedPaintDevice__Margins* self);
void QPagedPaintDevice__Margins_setBottom(QPagedPaintDevice__Margins* self, double bottom);

void QPagedPaintDevice__Margins_delete(QPagedPaintDevice__Margins* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
