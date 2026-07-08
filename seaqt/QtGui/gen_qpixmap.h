#pragma once
#ifndef SEAQT_QTGUI_GEN_QPIXMAP_H
#define SEAQT_QTGUI_GEN_QPIXMAP_H

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
class QColor;
class QIODevice;
class QImage;
class QImageReader;
class QPaintDevice;
class QPaintEngine;
class QPainter;
class QPixmap;
class QPoint;
class QRect;
class QRegion;
class QSize;
class QSizeF;
class QTransform;
class QVariant;
#else
typedef struct QBitmap QBitmap;
typedef struct QColor QColor;
typedef struct QIODevice QIODevice;
typedef struct QImage QImage;
typedef struct QImageReader QImageReader;
typedef struct QPaintDevice QPaintDevice;
typedef struct QPaintEngine QPaintEngine;
typedef struct QPainter QPainter;
typedef struct QPixmap QPixmap;
typedef struct QPoint QPoint;
typedef struct QRect QRect;
typedef struct QRegion QRegion;
typedef struct QSize QSize;
typedef struct QSizeF QSizeF;
typedef struct QTransform QTransform;
typedef struct QVariant QVariant;
#endif

typedef struct VirtualQPixmap VirtualQPixmap;
typedef struct QPixmap_VTable{
	void (*destructor)(VirtualQPixmap* self);
	int (*devType)(const VirtualQPixmap* self);
	QPaintEngine* (*paintEngine)(const VirtualQPixmap* self);
	int (*metric)(const VirtualQPixmap* self, int param1);
	void (*initPainter)(const VirtualQPixmap* self, QPainter* painter);
	QPaintDevice* (*redirected)(const VirtualQPixmap* self, QPoint* offset);
	QPainter* (*sharedPainter)(const VirtualQPixmap* self);
}QPixmap_VTable;

void* QPixmap_vdata(VirtualQPixmap* self);
VirtualQPixmap* vdata_QPixmap(void* vdata);

VirtualQPixmap* QPixmap_new(const QPixmap_VTable* vtbl, size_t vdata);
VirtualQPixmap* QPixmap_new_int_int(const QPixmap_VTable* vtbl, size_t vdata, int w, int h);
VirtualQPixmap* QPixmap_new_QSize(const QPixmap_VTable* vtbl, size_t vdata, QSize* param1);
VirtualQPixmap* QPixmap_new_QString(const QPixmap_VTable* vtbl, size_t vdata, struct seaqt_string fileName);
VirtualQPixmap* QPixmap_new_QPixmap(const QPixmap_VTable* vtbl, size_t vdata, QPixmap* from);
VirtualQPixmap* QPixmap_new_QString_char(const QPixmap_VTable* vtbl, size_t vdata, struct seaqt_string fileName, const char* format);
VirtualQPixmap* QPixmap_new_QString_char_Qt_ImageConversionFlags(const QPixmap_VTable* vtbl, size_t vdata, struct seaqt_string fileName, const char* format, int flags);

void QPixmap_virtbase(QPixmap* src, QPaintDevice** outptr_QPaintDevice);
void QPixmap_operatorAssign(QPixmap* self, QPixmap* from);
void QPixmap_swap(QPixmap* self, QPixmap* other);
QVariant* QPixmap_ToQVariant(const QPixmap* self);
bool QPixmap_isNull(const QPixmap* self);
int QPixmap_devType(const QPixmap* self);
int QPixmap_width(const QPixmap* self);
int QPixmap_height(const QPixmap* self);
QSize* QPixmap_size(const QPixmap* self);
QRect* QPixmap_rect(const QPixmap* self);
int QPixmap_depth(const QPixmap* self);
int QPixmap_defaultDepth();
void QPixmap_fill(QPixmap* self);
QBitmap* QPixmap_mask(const QPixmap* self);
void QPixmap_setMask(QPixmap* self, QBitmap* mask);
double QPixmap_devicePixelRatio(const QPixmap* self);
void QPixmap_setDevicePixelRatio(QPixmap* self, double scaleFactor);
QSizeF* QPixmap_deviceIndependentSize(const QPixmap* self);
bool QPixmap_hasAlpha(const QPixmap* self);
bool QPixmap_hasAlphaChannel(const QPixmap* self);
QBitmap* QPixmap_createHeuristicMask(const QPixmap* self);
QBitmap* QPixmap_createMaskFromColor_maskColor(const QPixmap* self, QColor* maskColor);
QPixmap* QPixmap_scaled_w_h(const QPixmap* self, int w, int h);
QPixmap* QPixmap_scaled_s(const QPixmap* self, QSize* s);
QPixmap* QPixmap_scaledToWidth_w(const QPixmap* self, int w);
QPixmap* QPixmap_scaledToHeight_h(const QPixmap* self, int h);
QPixmap* QPixmap_transformed_QTransform(const QPixmap* self, QTransform* param1);
QTransform* QPixmap_trueMatrix(QTransform* m, int w, int h);
QImage* QPixmap_toImage(const QPixmap* self);
QPixmap* QPixmap_fromImage_image(QImage* image);
QPixmap* QPixmap_fromImageReader_imageReader(QImageReader* imageReader);
bool QPixmap_load_fileName(QPixmap* self, struct seaqt_string fileName);
bool QPixmap_loadFromData_buf_len(QPixmap* self, const unsigned char* buf, unsigned int len);
bool QPixmap_loadFromData_data(QPixmap* self, struct seaqt_string data);
bool QPixmap_save_fileName(const QPixmap* self, struct seaqt_string fileName);
bool QPixmap_save_device(const QPixmap* self, QIODevice* device);
bool QPixmap_convertFromImage_img(QPixmap* self, QImage* img);
QPixmap* QPixmap_copy_x_y_width_height(const QPixmap* self, int x, int y, int width, int height);
QPixmap* QPixmap_copy(const QPixmap* self);
void QPixmap_scroll_dx_dy_x_y_width_height(QPixmap* self, int dx, int dy, int x, int y, int width, int height);
void QPixmap_scroll_dx_dy_rect(QPixmap* self, int dx, int dy, QRect* rect);
long long QPixmap_cacheKey(const QPixmap* self);
bool QPixmap_isDetached(const QPixmap* self);
void QPixmap_detach(QPixmap* self);
bool QPixmap_isQBitmap(const QPixmap* self);
QPaintEngine* QPixmap_paintEngine(const QPixmap* self);
bool QPixmap_operatorNot(const QPixmap* self);
int QPixmap_metric(const QPixmap* self, int param1);
void QPixmap_fill_fillColor(QPixmap* self, QColor* fillColor);
QBitmap* QPixmap_createHeuristicMask_clipTight(const QPixmap* self, bool clipTight);
QBitmap* QPixmap_createMaskFromColor_maskColor_mode(const QPixmap* self, QColor* maskColor, int mode);
QPixmap* QPixmap_scaled_w_h_aspectMode(const QPixmap* self, int w, int h, int aspectMode);
QPixmap* QPixmap_scaled_w_h_aspectMode_mode(const QPixmap* self, int w, int h, int aspectMode, int mode);
QPixmap* QPixmap_scaled_s_aspectMode(const QPixmap* self, QSize* s, int aspectMode);
QPixmap* QPixmap_scaled_s_aspectMode_mode(const QPixmap* self, QSize* s, int aspectMode, int mode);
QPixmap* QPixmap_scaledToWidth_w_mode(const QPixmap* self, int w, int mode);
QPixmap* QPixmap_scaledToHeight_h_mode(const QPixmap* self, int h, int mode);
QPixmap* QPixmap_transformed_QTransform_Qt_TransformationMode(const QPixmap* self, QTransform* param1, int mode);
QPixmap* QPixmap_fromImage_image_flags(QImage* image, int flags);
QPixmap* QPixmap_fromImageReader_imageReader_flags(QImageReader* imageReader, int flags);
bool QPixmap_load_fileName_format(QPixmap* self, struct seaqt_string fileName, const char* format);
bool QPixmap_load_fileName_format_flags(QPixmap* self, struct seaqt_string fileName, const char* format, int flags);
bool QPixmap_loadFromData_buf_len_format(QPixmap* self, const unsigned char* buf, unsigned int len, const char* format);
bool QPixmap_loadFromData_buf_len_format_flags(QPixmap* self, const unsigned char* buf, unsigned int len, const char* format, int flags);
bool QPixmap_loadFromData_data_format(QPixmap* self, struct seaqt_string data, const char* format);
bool QPixmap_loadFromData_data_format_flags(QPixmap* self, struct seaqt_string data, const char* format, int flags);
bool QPixmap_save_fileName_format(const QPixmap* self, struct seaqt_string fileName, const char* format);
bool QPixmap_save_fileName_format_quality(const QPixmap* self, struct seaqt_string fileName, const char* format, int quality);
bool QPixmap_save_device_format(const QPixmap* self, QIODevice* device, const char* format);
bool QPixmap_save_device_format_quality(const QPixmap* self, QIODevice* device, const char* format, int quality);
bool QPixmap_convertFromImage_img_flags(QPixmap* self, QImage* img, int flags);
QPixmap* QPixmap_copy_rect(const QPixmap* self, QRect* rect);
void QPixmap_scroll_dx_dy_x_y_width_height_exposed(QPixmap* self, int dx, int dy, int x, int y, int width, int height, QRegion* exposed);
void QPixmap_scroll_dx_dy_rect_exposed(QPixmap* self, int dx, int dy, QRect* rect, QRegion* exposed);

int QPixmap_virtualbase_devType(const VirtualQPixmap* self);
QPaintEngine* QPixmap_virtualbase_paintEngine(const VirtualQPixmap* self);
int QPixmap_virtualbase_metric(const VirtualQPixmap* self, int param1);
void QPixmap_virtualbase_initPainter(const VirtualQPixmap* self, QPainter* painter);
QPaintDevice* QPixmap_virtualbase_redirected(const VirtualQPixmap* self, QPoint* offset);
QPainter* QPixmap_virtualbase_sharedPainter(const VirtualQPixmap* self);

void QPixmap_delete(QPixmap* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
