#pragma once
#ifndef SEAQT_QTGUI_GEN_QPICTURE_H
#define SEAQT_QTGUI_GEN_QPICTURE_H

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
class QPicture;
class QPictureIO;
class QPoint;
class QRect;
#else
typedef struct QIODevice QIODevice;
typedef struct QPaintDevice QPaintDevice;
typedef struct QPaintEngine QPaintEngine;
typedef struct QPainter QPainter;
typedef struct QPicture QPicture;
typedef struct QPictureIO QPictureIO;
typedef struct QPoint QPoint;
typedef struct QRect QRect;
#endif

struct QPicture_VTable {
	void (*destructor)(struct QPicture_VTable* vtbl, QPicture* self);
	int (*devType)(struct QPicture_VTable* vtbl, const QPicture* self);
	void (*setData)(struct QPicture_VTable* vtbl, QPicture* self, const char* data, unsigned int size);
	QPaintEngine* (*paintEngine)(struct QPicture_VTable* vtbl, const QPicture* self);
	int (*metric)(struct QPicture_VTable* vtbl, const QPicture* self, int m);
	void (*initPainter)(struct QPicture_VTable* vtbl, const QPicture* self, QPainter* painter);
	QPaintDevice* (*redirected)(struct QPicture_VTable* vtbl, const QPicture* self, QPoint* offset);
	QPainter* (*sharedPainter)(struct QPicture_VTable* vtbl, const QPicture* self);
};
QPicture* QPicture_new(struct QPicture_VTable* vtbl);
QPicture* QPicture_new2(struct QPicture_VTable* vtbl, QPicture* param1);
QPicture* QPicture_new3(struct QPicture_VTable* vtbl, int formatVersion);
void QPicture_virtbase(QPicture* src, QPaintDevice** outptr_QPaintDevice);
bool QPicture_isNull(const QPicture* self);
int QPicture_devType(const QPicture* self);
unsigned int QPicture_size(const QPicture* self);
const char* QPicture_data(const QPicture* self);
void QPicture_setData(QPicture* self, const char* data, unsigned int size);
bool QPicture_play(QPicture* self, QPainter* p);
bool QPicture_load(QPicture* self, QIODevice* dev);
bool QPicture_loadWithFileName(QPicture* self, struct miqt_string fileName);
bool QPicture_save(QPicture* self, QIODevice* dev);
bool QPicture_saveWithFileName(QPicture* self, struct miqt_string fileName);
QRect* QPicture_boundingRect(const QPicture* self);
void QPicture_setBoundingRect(QPicture* self, QRect* r);
void QPicture_operatorAssign(QPicture* self, QPicture* p);
void QPicture_swap(QPicture* self, QPicture* other);
void QPicture_detach(QPicture* self);
bool QPicture_isDetached(const QPicture* self);
const char* QPicture_pictureFormat(struct miqt_string fileName);
struct miqt_array /* of struct miqt_string */  QPicture_inputFormats();
struct miqt_array /* of struct miqt_string */  QPicture_outputFormats();
struct miqt_array /* of struct miqt_string */  QPicture_inputFormatList();
struct miqt_array /* of struct miqt_string */  QPicture_outputFormatList();
QPaintEngine* QPicture_paintEngine(const QPicture* self);
int QPicture_metric(const QPicture* self, int m);
bool QPicture_load2(QPicture* self, QIODevice* dev, const char* format);
bool QPicture_load22(QPicture* self, struct miqt_string fileName, const char* format);
bool QPicture_save2(QPicture* self, QIODevice* dev, const char* format);
bool QPicture_save22(QPicture* self, struct miqt_string fileName, const char* format);
int QPicture_virtualbase_devType(const void* self);
void QPicture_virtualbase_setData(void* self, const char* data, unsigned int size);
QPaintEngine* QPicture_virtualbase_paintEngine(const void* self);
int QPicture_virtualbase_metric(const void* self, int m);
void QPicture_virtualbase_initPainter(const void* self, QPainter* painter);
QPaintDevice* QPicture_virtualbase_redirected(const void* self, QPoint* offset);
QPainter* QPicture_virtualbase_sharedPainter(const void* self);
void QPicture_delete(QPicture* self);

QPictureIO* QPictureIO_new();
QPictureIO* QPictureIO_new2(QIODevice* ioDevice, const char* format);
QPictureIO* QPictureIO_new3(struct miqt_string fileName, const char* format);
QPicture* QPictureIO_picture(const QPictureIO* self);
int QPictureIO_status(const QPictureIO* self);
const char* QPictureIO_format(const QPictureIO* self);
QIODevice* QPictureIO_ioDevice(const QPictureIO* self);
struct miqt_string QPictureIO_fileName(const QPictureIO* self);
int QPictureIO_quality(const QPictureIO* self);
struct miqt_string QPictureIO_description(const QPictureIO* self);
const char* QPictureIO_parameters(const QPictureIO* self);
float QPictureIO_gamma(const QPictureIO* self);
void QPictureIO_setPicture(QPictureIO* self, QPicture* picture);
void QPictureIO_setStatus(QPictureIO* self, int status);
void QPictureIO_setFormat(QPictureIO* self, const char* format);
void QPictureIO_setIODevice(QPictureIO* self, QIODevice* iODevice);
void QPictureIO_setFileName(QPictureIO* self, struct miqt_string fileName);
void QPictureIO_setQuality(QPictureIO* self, int quality);
void QPictureIO_setDescription(QPictureIO* self, struct miqt_string description);
void QPictureIO_setParameters(QPictureIO* self, const char* parameters);
void QPictureIO_setGamma(QPictureIO* self, float gamma);
bool QPictureIO_read(QPictureIO* self);
bool QPictureIO_write(QPictureIO* self);
struct miqt_string QPictureIO_pictureFormat(struct miqt_string fileName);
struct miqt_string QPictureIO_pictureFormatWithQIODevice(QIODevice* param1);
struct miqt_array /* of struct miqt_string */  QPictureIO_inputFormats();
struct miqt_array /* of struct miqt_string */  QPictureIO_outputFormats();
void QPictureIO_delete(QPictureIO* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
