#pragma once
#ifndef SEAQT_QTCORE_GEN_QMIMEDATABASE_H
#define SEAQT_QTCORE_GEN_QMIMEDATABASE_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt-runtime.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QFileInfo;
class QIODevice;
class QMimeDatabase;
class QMimeType;
class QUrl;
#else
typedef struct QFileInfo QFileInfo;
typedef struct QIODevice QIODevice;
typedef struct QMimeDatabase QMimeDatabase;
typedef struct QMimeType QMimeType;
typedef struct QUrl QUrl;
#endif

QMimeDatabase* QMimeDatabase_new();

QMimeType* QMimeDatabase_mimeTypeForName(const QMimeDatabase* self, struct seaqt_string nameOrAlias);
QMimeType* QMimeDatabase_mimeTypeForFile_fileName(const QMimeDatabase* self, struct seaqt_string fileName);
QMimeType* QMimeDatabase_mimeTypeForFile_fileInfo(const QMimeDatabase* self, QFileInfo* fileInfo);
struct seaqt_array /* of QMimeType* */  QMimeDatabase_mimeTypesForFileName(const QMimeDatabase* self, struct seaqt_string fileName);
QMimeType* QMimeDatabase_mimeTypeForData_data(const QMimeDatabase* self, struct seaqt_string data);
QMimeType* QMimeDatabase_mimeTypeForData_device(const QMimeDatabase* self, QIODevice* device);
QMimeType* QMimeDatabase_mimeTypeForUrl(const QMimeDatabase* self, QUrl* url);
QMimeType* QMimeDatabase_mimeTypeForFileNameAndData_fileName_device(const QMimeDatabase* self, struct seaqt_string fileName, QIODevice* device);
QMimeType* QMimeDatabase_mimeTypeForFileNameAndData_fileName_data(const QMimeDatabase* self, struct seaqt_string fileName, struct seaqt_string data);
struct seaqt_string QMimeDatabase_suffixForFileName(const QMimeDatabase* self, struct seaqt_string fileName);
struct seaqt_array /* of QMimeType* */  QMimeDatabase_allMimeTypes(const QMimeDatabase* self);
QMimeType* QMimeDatabase_mimeTypeForFile_fileName_mode(const QMimeDatabase* self, struct seaqt_string fileName, int mode);
QMimeType* QMimeDatabase_mimeTypeForFile_fileInfo_mode(const QMimeDatabase* self, QFileInfo* fileInfo, int mode);

void QMimeDatabase_delete(QMimeDatabase* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
