#pragma once
#ifndef SEAQT_QTGUI_GEN_QIMAGE_H
#define SEAQT_QTGUI_GEN_QIMAGE_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt-runtime.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QColor;
class QColorSpace;
class QColorTransform;
class QIODevice;
class QImage;
class QMatrix;
class QMetaObject;
class QPaintDevice;
class QPaintEngine;
class QPainter;
class QPixelFormat;
class QPoint;
class QRect;
class QSize;
class QTransform;
class QVariant;
#else
typedef struct QColor QColor;
typedef struct QColorSpace QColorSpace;
typedef struct QColorTransform QColorTransform;
typedef struct QIODevice QIODevice;
typedef struct QImage QImage;
typedef struct QMatrix QMatrix;
typedef struct QMetaObject QMetaObject;
typedef struct QPaintDevice QPaintDevice;
typedef struct QPaintEngine QPaintEngine;
typedef struct QPainter QPainter;
typedef struct QPixelFormat QPixelFormat;
typedef struct QPoint QPoint;
typedef struct QRect QRect;
typedef struct QSize QSize;
typedef struct QTransform QTransform;
typedef struct QVariant QVariant;
#endif

typedef struct VirtualQImage VirtualQImage;
typedef struct QImage_VTable{
	void (*destructor)(VirtualQImage* self);
	int (*devType)(const VirtualQImage* self);
	QPaintEngine* (*paintEngine)(const VirtualQImage* self);
	int (*metric)(const VirtualQImage* self, int metric);
	void (*initPainter)(const VirtualQImage* self, QPainter* painter);
	QPaintDevice* (*redirected)(const VirtualQImage* self, QPoint* offset);
	QPainter* (*sharedPainter)(const VirtualQImage* self);
}QImage_VTable;

void* QImage_vdata(VirtualQImage* self);
VirtualQImage* vdata_QImage(void* vdata);

VirtualQImage* QImage_new(const QImage_VTable* vtbl, size_t vdata);
VirtualQImage* QImage_new_cQSize_QImage_Format(const QImage_VTable* vtbl, size_t vdata, QSize* size, int format);
VirtualQImage* QImage_new_int_int_QImage_Format(const QImage_VTable* vtbl, size_t vdata, int width, int height, int format);
VirtualQImage* QImage_new_puchar_int_int_QImage_Format(const QImage_VTable* vtbl, size_t vdata, unsigned char* data, int width, int height, int format);
VirtualQImage* QImage_new_pcuchar_int_int_QImage_Format(const QImage_VTable* vtbl, size_t vdata, const unsigned char* data, int width, int height, int format);
VirtualQImage* QImage_new_puchar_int_int_int_QImage_Format(const QImage_VTable* vtbl, size_t vdata, unsigned char* data, int width, int height, int bytesPerLine, int format);
VirtualQImage* QImage_new_pcuchar_int_int_int_QImage_Format(const QImage_VTable* vtbl, size_t vdata, const unsigned char* data, int width, int height, int bytesPerLine, int format);
VirtualQImage* QImage_new_cQString(const QImage_VTable* vtbl, size_t vdata, struct seaqt_string fileName);
VirtualQImage* QImage_new_cQImage(const QImage_VTable* vtbl, size_t vdata, QImage* from);
VirtualQImage* QImage_new_cQString_pcchar(const QImage_VTable* vtbl, size_t vdata, struct seaqt_string fileName, const char* format);

void QImage_virtbase(QImage* src, QPaintDevice** outptr_QPaintDevice);
void QImage_operatorAssign(QImage* self, QImage* from);
void QImage_swap(QImage* self, QImage* other);
bool QImage_isNull(const QImage* self);
int QImage_devType(const QImage* self);
bool QImage_operatorEqual(const QImage* self, QImage* param1);
bool QImage_operatorNotEqual(const QImage* self, QImage* param1);
QVariant* QImage_ToQVariant(const QImage* self);
void QImage_detach(QImage* self);
bool QImage_isDetached(const QImage* self);
QImage* QImage_copy(const QImage* self);
QImage* QImage_copy_x_y_w_h(const QImage* self, int x, int y, int w, int h);
int QImage_format(const QImage* self);
QImage* QImage_convertToFormat_f(const QImage* self, int f);
QImage* QImage_convertToFormat_f_colorTable(const QImage* self, int f, struct seaqt_array /* of unsigned int */  colorTable);
bool QImage_reinterpretAsFormat(QImage* self, int f);
void QImage_convertTo_f(QImage* self, int f);
int QImage_width(const QImage* self);
int QImage_height(const QImage* self);
QSize* QImage_size(const QImage* self);
QRect* QImage_rect(const QImage* self);
int QImage_depth(const QImage* self);
int QImage_colorCount(const QImage* self);
int QImage_bitPlaneCount(const QImage* self);
unsigned int QImage_color(const QImage* self, int i);
void QImage_setColor(QImage* self, int i, unsigned int c);
void QImage_setColorCount(QImage* self, int colorCount);
bool QImage_allGray(const QImage* self);
bool QImage_isGrayscale(const QImage* self);
unsigned char* QImage_bits(QImage* self);
const unsigned char* QImage_bits_const(const QImage* self);
const unsigned char* QImage_constBits(const QImage* self);
int QImage_byteCount(const QImage* self);
ptrdiff_t QImage_sizeInBytes(const QImage* self);
unsigned char* QImage_scanLine_int(QImage* self, int param1);
const unsigned char* QImage_scanLine_const_int(const QImage* self, int param1);
const unsigned char* QImage_constScanLine(const QImage* self, int param1);
int QImage_bytesPerLine(const QImage* self);
bool QImage_valid_x_y(const QImage* self, int x, int y);
bool QImage_valid_pt(const QImage* self, QPoint* pt);
int QImage_pixelIndex_x_y(const QImage* self, int x, int y);
int QImage_pixelIndex_pt(const QImage* self, QPoint* pt);
unsigned int QImage_pixel_x_y(const QImage* self, int x, int y);
unsigned int QImage_pixel_pt(const QImage* self, QPoint* pt);
void QImage_setPixel_x_y_index_or_rgb(QImage* self, int x, int y, unsigned int index_or_rgb);
void QImage_setPixel_pt_index_or_rgb(QImage* self, QPoint* pt, unsigned int index_or_rgb);
QColor* QImage_pixelColor_x_y(const QImage* self, int x, int y);
QColor* QImage_pixelColor_pt(const QImage* self, QPoint* pt);
void QImage_setPixelColor_x_y_c(QImage* self, int x, int y, QColor* c);
void QImage_setPixelColor_pt_c(QImage* self, QPoint* pt, QColor* c);
struct seaqt_array /* of unsigned int */  QImage_colorTable(const QImage* self);
void QImage_setColorTable(QImage* self, struct seaqt_array /* of unsigned int */  colors);
double QImage_devicePixelRatio(const QImage* self);
void QImage_setDevicePixelRatio(QImage* self, double scaleFactor);
void QImage_fill_uint(QImage* self, unsigned int pixel);
void QImage_fill_QColor(QImage* self, QColor* color);
void QImage_fill_Qt_GlobalColor(QImage* self, int color);
bool QImage_hasAlphaChannel(const QImage* self);
void QImage_setAlphaChannel(QImage* self, QImage* alphaChannel);
QImage* QImage_alphaChannel(const QImage* self);
QImage* QImage_createAlphaMask(const QImage* self);
QImage* QImage_createHeuristicMask(const QImage* self);
QImage* QImage_createMaskFromColor_color(const QImage* self, unsigned int color);
QImage* QImage_scaled_w_h(const QImage* self, int w, int h);
QImage* QImage_scaled_s(const QImage* self, QSize* s);
QImage* QImage_scaledToWidth_w(const QImage* self, int w);
QImage* QImage_scaledToHeight_h(const QImage* self, int h);
QImage* QImage_transformed_QMatrix(const QImage* self, QMatrix* matrix);
QMatrix* QImage_trueMatrix_QMatrix_int_int(QMatrix* param1, int w, int h);
QImage* QImage_transformed_QTransform(const QImage* self, QTransform* matrix);
QTransform* QImage_trueMatrix_QTransform_int_int(QTransform* param1, int w, int h);
QImage* QImage_mirrored(const QImage* self);
QImage* QImage_rgbSwapped(const QImage* self);
void QImage_invertPixels(QImage* self);
QColorSpace* QImage_colorSpace(const QImage* self);
QImage* QImage_convertedToColorSpace(const QImage* self, QColorSpace* param1);
void QImage_convertToColorSpace(QImage* self, QColorSpace* param1);
void QImage_setColorSpace(QImage* self, QColorSpace* colorSpace);
void QImage_applyColorTransform(QImage* self, QColorTransform* transform);
bool QImage_load_device_format(QImage* self, QIODevice* device, const char* format);
bool QImage_load_fileName(QImage* self, struct seaqt_string fileName);
bool QImage_loadFromData_buf_len(QImage* self, const unsigned char* buf, int len);
bool QImage_loadFromData_data(QImage* self, struct seaqt_string data);
bool QImage_save_fileName(const QImage* self, struct seaqt_string fileName);
bool QImage_save_device(const QImage* self, QIODevice* device);
QImage* QImage_fromData_data_size(const unsigned char* data, int size);
QImage* QImage_fromData_data(struct seaqt_string data);
long long QImage_cacheKey(const QImage* self);
QPaintEngine* QImage_paintEngine(const QImage* self);
int QImage_dotsPerMeterX(const QImage* self);
int QImage_dotsPerMeterY(const QImage* self);
void QImage_setDotsPerMeterX(QImage* self, int dotsPerMeterX);
void QImage_setDotsPerMeterY(QImage* self, int dotsPerMeterY);
QPoint* QImage_offset(const QImage* self);
void QImage_setOffset(QImage* self, QPoint* offset);
struct seaqt_array /* of struct seaqt_string */  QImage_textKeys(const QImage* self);
struct seaqt_string QImage_text(const QImage* self);
void QImage_setText(QImage* self, struct seaqt_string key, struct seaqt_string value);
QPixelFormat* QImage_pixelFormat(const QImage* self);
QPixelFormat* QImage_toPixelFormat(int format);
int QImage_toImageFormat(QPixelFormat* format);
int QImage_metric(const QImage* self, int metric);
QImage* QImage_copy_rect(const QImage* self, QRect* rect);
QImage* QImage_convertToFormat_f_flags(const QImage* self, int f, int flags);
QImage* QImage_convertToFormat_f_colorTable_flags(const QImage* self, int f, struct seaqt_array /* of unsigned int */  colorTable, int flags);
void QImage_convertTo_f_flags(QImage* self, int f, int flags);
QImage* QImage_createAlphaMask_flags(const QImage* self, int flags);
QImage* QImage_createHeuristicMask_clipTight(const QImage* self, bool clipTight);
QImage* QImage_createMaskFromColor_color_mode(const QImage* self, unsigned int color, int mode);
QImage* QImage_scaled_w_h_aspectMode(const QImage* self, int w, int h, int aspectMode);
QImage* QImage_scaled_w_h_aspectMode_mode(const QImage* self, int w, int h, int aspectMode, int mode);
QImage* QImage_scaled_s_aspectMode(const QImage* self, QSize* s, int aspectMode);
QImage* QImage_scaled_s_aspectMode_mode(const QImage* self, QSize* s, int aspectMode, int mode);
QImage* QImage_scaledToWidth_w_mode(const QImage* self, int w, int mode);
QImage* QImage_scaledToHeight_h_mode(const QImage* self, int h, int mode);
QImage* QImage_transformed_QMatrix_Qt_TransformationMode(const QImage* self, QMatrix* matrix, int mode);
QImage* QImage_transformed_QTransform_Qt_TransformationMode(const QImage* self, QTransform* matrix, int mode);
QImage* QImage_mirrored_horizontally(const QImage* self, bool horizontally);
QImage* QImage_mirrored_horizontally_vertically(const QImage* self, bool horizontally, bool vertically);
void QImage_invertPixels_QImage_InvertMode(QImage* self, int param1);
bool QImage_load_fileName_format(QImage* self, struct seaqt_string fileName, const char* format);
bool QImage_loadFromData_buf_len_format(QImage* self, const unsigned char* buf, int len, const char* format);
bool QImage_loadFromData_data_aformat(QImage* self, struct seaqt_string data, const char* aformat);
bool QImage_save_fileName_format(const QImage* self, struct seaqt_string fileName, const char* format);
bool QImage_save_fileName_format_quality(const QImage* self, struct seaqt_string fileName, const char* format, int quality);
bool QImage_save_device_format(const QImage* self, QIODevice* device, const char* format);
bool QImage_save_device_format_quality(const QImage* self, QIODevice* device, const char* format, int quality);
QImage* QImage_fromData_data_size_format(const unsigned char* data, int size, const char* format);
QImage* QImage_fromData_data_format(struct seaqt_string data, const char* format);
struct seaqt_string QImage_text_key(const QImage* self, struct seaqt_string key);

int QImage_virtualbase_devType(const VirtualQImage* self);
QPaintEngine* QImage_virtualbase_paintEngine(const VirtualQImage* self);
int QImage_virtualbase_metric(const VirtualQImage* self, int metric);
void QImage_virtualbase_initPainter(const VirtualQImage* self, QPainter* painter);
QPaintDevice* QImage_virtualbase_redirected(const VirtualQImage* self, QPoint* offset);
QPainter* QImage_virtualbase_sharedPainter(const VirtualQImage* self);

QImage* QImage_protectedbase_mirrored_helper(const VirtualQImage* self, bool horizontal, bool vertical);
QImage* QImage_protectedbase_rgbSwapped_helper(const VirtualQImage* self);
void QImage_protectedbase_mirrored_inplace(VirtualQImage* self, bool horizontal, bool vertical);
void QImage_protectedbase_rgbSwapped_inplace(VirtualQImage* self);
QImage* QImage_protectedbase_convertToFormat_helper(const VirtualQImage* self, int format, int flags);
bool QImage_protectedbase_convertToFormat_inplace(VirtualQImage* self, int format, int flags);
QImage* QImage_protectedbase_smoothScaled(const VirtualQImage* self, int w, int h);

void QImage_delete(QImage* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
