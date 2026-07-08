#pragma once
#ifndef SEAQT_QTGUI_GEN_QIMAGEWRITER_H
#define SEAQT_QTGUI_GEN_QIMAGEWRITER_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt-runtime.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QIODevice;
class QImage;
class QImageWriter;
#else
typedef struct QIODevice QIODevice;
typedef struct QImage QImage;
typedef struct QImageWriter QImageWriter;
#endif

QImageWriter* QImageWriter_new();
QImageWriter* QImageWriter_new2(QIODevice* device, struct seaqt_string format);
QImageWriter* QImageWriter_new3(struct seaqt_string fileName);
QImageWriter* QImageWriter_new4(struct seaqt_string fileName, struct seaqt_string format);

struct seaqt_string QImageWriter_tr(const char* sourceText);
void QImageWriter_setFormat(QImageWriter* self, struct seaqt_string format);
struct seaqt_string QImageWriter_format(const QImageWriter* self);
void QImageWriter_setDevice(QImageWriter* self, QIODevice* device);
QIODevice* QImageWriter_device(const QImageWriter* self);
void QImageWriter_setFileName(QImageWriter* self, struct seaqt_string fileName);
struct seaqt_string QImageWriter_fileName(const QImageWriter* self);
void QImageWriter_setQuality(QImageWriter* self, int quality);
int QImageWriter_quality(const QImageWriter* self);
void QImageWriter_setCompression(QImageWriter* self, int compression);
int QImageWriter_compression(const QImageWriter* self);
void QImageWriter_setSubType(QImageWriter* self, struct seaqt_string type);
struct seaqt_string QImageWriter_subType(const QImageWriter* self);
struct seaqt_array /* of struct seaqt_string */  QImageWriter_supportedSubTypes(const QImageWriter* self);
void QImageWriter_setOptimizedWrite(QImageWriter* self, bool optimize);
bool QImageWriter_optimizedWrite(const QImageWriter* self);
void QImageWriter_setProgressiveScanWrite(QImageWriter* self, bool progressive);
bool QImageWriter_progressiveScanWrite(const QImageWriter* self);
int QImageWriter_transformation(const QImageWriter* self);
void QImageWriter_setTransformation(QImageWriter* self, int orientation);
void QImageWriter_setText(QImageWriter* self, struct seaqt_string key, struct seaqt_string text);
bool QImageWriter_canWrite(const QImageWriter* self);
bool QImageWriter_write(QImageWriter* self, QImage* image);
int QImageWriter_error(const QImageWriter* self);
struct seaqt_string QImageWriter_errorString(const QImageWriter* self);
bool QImageWriter_supportsOption(const QImageWriter* self, int option);
struct seaqt_array /* of struct seaqt_string */  QImageWriter_supportedImageFormats();
struct seaqt_array /* of struct seaqt_string */  QImageWriter_supportedMimeTypes();
struct seaqt_array /* of struct seaqt_string */  QImageWriter_imageFormatsForMimeType(struct seaqt_string mimeType);
struct seaqt_string QImageWriter_tr2(const char* sourceText, const char* disambiguation);
struct seaqt_string QImageWriter_tr3(const char* sourceText, const char* disambiguation, int n);

void QImageWriter_delete(QImageWriter* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
