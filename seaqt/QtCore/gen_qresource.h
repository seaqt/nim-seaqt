#pragma once
#ifndef SEAQT_QTCORE_GEN_QRESOURCE_H
#define SEAQT_QTCORE_GEN_QRESOURCE_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt-runtime.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QDateTime;
class QLocale;
class QResource;
#else
typedef struct QDateTime QDateTime;
typedef struct QLocale QLocale;
typedef struct QResource QResource;
#endif

QResource* QResource_new();
QResource* QResource_new2(struct seaqt_string file);
QResource* QResource_new3(struct seaqt_string file, QLocale* locale);

void QResource_setFileName(QResource* self, struct seaqt_string file);
struct seaqt_string QResource_fileName(const QResource* self);
struct seaqt_string QResource_absoluteFilePath(const QResource* self);
void QResource_setLocale(QResource* self, QLocale* locale);
QLocale* QResource_locale(const QResource* self);
bool QResource_isValid(const QResource* self);
int QResource_compressionAlgorithm(const QResource* self);
long long QResource_size(const QResource* self);
const unsigned char* QResource_data(const QResource* self);
long long QResource_uncompressedSize(const QResource* self);
struct seaqt_string QResource_uncompressedData(const QResource* self);
QDateTime* QResource_lastModified(const QResource* self);
bool QResource_registerResource(struct seaqt_string rccFilename);
bool QResource_unregisterResource(struct seaqt_string rccFilename);
bool QResource_registerResourceWithRccData(const unsigned char* rccData);
bool QResource_unregisterResourceWithRccData(const unsigned char* rccData);
bool QResource_registerResource2(struct seaqt_string rccFilename, struct seaqt_string resourceRoot);
bool QResource_unregisterResource2(struct seaqt_string rccFilename, struct seaqt_string resourceRoot);
bool QResource_registerResource3(const unsigned char* rccData, struct seaqt_string resourceRoot);
bool QResource_unregisterResource3(const unsigned char* rccData, struct seaqt_string resourceRoot);

void QResource_delete(QResource* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
