#pragma once
#ifndef SEAQT_QTGUI_GEN_QBITMAP_H
#define SEAQT_QTGUI_GEN_QBITMAP_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt/libseaqt.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QBitmap;
class QImage;
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
typedef struct QPaintDevice QPaintDevice;
typedef struct QPaintEngine QPaintEngine;
typedef struct QPainter QPainter;
typedef struct QPixmap QPixmap;
typedef struct QPoint QPoint;
typedef struct QSize QSize;
typedef struct QTransform QTransform;
typedef struct QVariant QVariant;
#endif

struct QBitmap_VTable {
	void (*destructor)(struct QBitmap_VTable* vtbl, QBitmap* self);
	int (*devType)(struct QBitmap_VTable* vtbl, const QBitmap* self);
	QPaintEngine* (*paintEngine)(struct QBitmap_VTable* vtbl, const QBitmap* self);
	int (*metric)(struct QBitmap_VTable* vtbl, const QBitmap* self, int param1);
	void (*initPainter)(struct QBitmap_VTable* vtbl, const QBitmap* self, QPainter* painter);
	QPaintDevice* (*redirected)(struct QBitmap_VTable* vtbl, const QBitmap* self, QPoint* offset);
	QPainter* (*sharedPainter)(struct QBitmap_VTable* vtbl, const QBitmap* self);
};
QBitmap* QBitmap_new(struct QBitmap_VTable* vtbl);
QBitmap* QBitmap_new2(struct QBitmap_VTable* vtbl, QPixmap* param1);
QBitmap* QBitmap_new3(struct QBitmap_VTable* vtbl, int w, int h);
QBitmap* QBitmap_new4(struct QBitmap_VTable* vtbl, QSize* param1);
QBitmap* QBitmap_new5(struct QBitmap_VTable* vtbl, struct miqt_string fileName);
QBitmap* QBitmap_new6(struct QBitmap_VTable* vtbl, QBitmap* param1);
QBitmap* QBitmap_new7(struct QBitmap_VTable* vtbl, struct miqt_string fileName, const char* format);
void QBitmap_virtbase(QBitmap* src, QPixmap** outptr_QPixmap);
void QBitmap_operatorAssign(QBitmap* self, QPixmap* param1);
void QBitmap_swap(QBitmap* self, QBitmap* other);
QVariant* QBitmap_ToQVariant(const QBitmap* self);
void QBitmap_clear(QBitmap* self);
QBitmap* QBitmap_fromImage(QImage* image);
QBitmap* QBitmap_fromData(QSize* size, const unsigned char* bits);
QBitmap* QBitmap_fromPixmap(QPixmap* pixmap);
QBitmap* QBitmap_transformed(const QBitmap* self, QTransform* matrix);
void QBitmap_operatorAssignWithQBitmap(QBitmap* self, QBitmap* param1);
QBitmap* QBitmap_fromImage2(QImage* image, int flags);
QBitmap* QBitmap_fromData3(QSize* size, const unsigned char* bits, int monoFormat);
int QBitmap_virtualbase_devType(const void* self);
QPaintEngine* QBitmap_virtualbase_paintEngine(const void* self);
int QBitmap_virtualbase_metric(const void* self, int param1);
void QBitmap_virtualbase_initPainter(const void* self, QPainter* painter);
QPaintDevice* QBitmap_virtualbase_redirected(const void* self, QPoint* offset);
QPainter* QBitmap_virtualbase_sharedPainter(const void* self);
void QBitmap_delete(QBitmap* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
