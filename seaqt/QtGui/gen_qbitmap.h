#pragma once
#ifndef SEAQT_QTGUI_GEN_QBITMAP_H
#define SEAQT_QTGUI_GEN_QBITMAP_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt-runtime.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QBitmap;
class QImage;
class QMatrix;
class QPaintDevice;
class QPaintEngine;
class QPainter;
class QPixmap;
class QPoint;
class QSize;
class QTransform;
class QVariant;
#else
typedef struct QBitmap QBitmap;
typedef struct QImage QImage;
typedef struct QMatrix QMatrix;
typedef struct QPaintDevice QPaintDevice;
typedef struct QPaintEngine QPaintEngine;
typedef struct QPainter QPainter;
typedef struct QPixmap QPixmap;
typedef struct QPoint QPoint;
typedef struct QSize QSize;
typedef struct QTransform QTransform;
typedef struct QVariant QVariant;
#endif

typedef struct VirtualQBitmap VirtualQBitmap;
typedef struct QBitmap_VTable{
	void (*destructor)(VirtualQBitmap* self);
	int (*devType)(const VirtualQBitmap* self);
	QPaintEngine* (*paintEngine)(const VirtualQBitmap* self);
	int (*metric)(const VirtualQBitmap* self, int param1);
	void (*initPainter)(const VirtualQBitmap* self, QPainter* painter);
	QPaintDevice* (*redirected)(const VirtualQBitmap* self, QPoint* offset);
	QPainter* (*sharedPainter)(const VirtualQBitmap* self);
}QBitmap_VTable;

void* QBitmap_vdata(VirtualQBitmap* self);
VirtualQBitmap* vdata_QBitmap(void* vdata);

VirtualQBitmap* QBitmap_new(const QBitmap_VTable* vtbl, size_t vdata);
VirtualQBitmap* QBitmap_new_QPixmap(const QBitmap_VTable* vtbl, size_t vdata, QPixmap* param1);
VirtualQBitmap* QBitmap_new_int_int(const QBitmap_VTable* vtbl, size_t vdata, int w, int h);
VirtualQBitmap* QBitmap_new_QSize(const QBitmap_VTable* vtbl, size_t vdata, QSize* param1);
VirtualQBitmap* QBitmap_new_QString(const QBitmap_VTable* vtbl, size_t vdata, struct seaqt_string fileName);
VirtualQBitmap* QBitmap_new_QBitmap(const QBitmap_VTable* vtbl, size_t vdata, QBitmap* from);
VirtualQBitmap* QBitmap_new_QString_char(const QBitmap_VTable* vtbl, size_t vdata, struct seaqt_string fileName, const char* format);

void QBitmap_virtbase(QBitmap* src, QPixmap** outptr_QPixmap);
void QBitmap_operatorAssign_QBitmap(QBitmap* self, QBitmap* from);
void QBitmap_operatorAssign_QPixmap(QBitmap* self, QPixmap* param1);
void QBitmap_swap(QBitmap* self, QBitmap* other);
QVariant* QBitmap_ToQVariant(const QBitmap* self);
void QBitmap_clear(QBitmap* self);
QBitmap* QBitmap_fromImage_image(QImage* image);
QBitmap* QBitmap_fromData_size_bits(QSize* size, const unsigned char* bits);
QBitmap* QBitmap_transformed_QMatrix(const QBitmap* self, QMatrix* param1);
QBitmap* QBitmap_transformed_QTransform(const QBitmap* self, QTransform* matrix);
QBitmap* QBitmap_fromImage_image_flags(QImage* image, int flags);
QBitmap* QBitmap_fromData_size_bits_monoFormat(QSize* size, const unsigned char* bits, int monoFormat);

int QBitmap_virtualbase_devType(const VirtualQBitmap* self);
QPaintEngine* QBitmap_virtualbase_paintEngine(const VirtualQBitmap* self);
int QBitmap_virtualbase_metric(const VirtualQBitmap* self, int param1);
void QBitmap_virtualbase_initPainter(const VirtualQBitmap* self, QPainter* painter);
QPaintDevice* QBitmap_virtualbase_redirected(const VirtualQBitmap* self, QPoint* offset);
QPainter* QBitmap_virtualbase_sharedPainter(const VirtualQBitmap* self);

void QBitmap_delete(QBitmap* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
