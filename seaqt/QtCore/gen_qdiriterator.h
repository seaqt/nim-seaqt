#pragma once
#ifndef SEAQT_QTCORE_GEN_QDIRITERATOR_H
#define SEAQT_QTCORE_GEN_QDIRITERATOR_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt-runtime.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QDir;
class QDirIterator;
class QFileInfo;
#else
typedef struct QDir QDir;
typedef struct QDirIterator QDirIterator;
typedef struct QFileInfo QFileInfo;
#endif

QDirIterator* QDirIterator_new_dir(QDir* dir);
QDirIterator* QDirIterator_new_path(struct seaqt_string path);
QDirIterator* QDirIterator_new_path_filter(struct seaqt_string path, int filter);
QDirIterator* QDirIterator_new_path_nameFilters(struct seaqt_string path, struct seaqt_array /* of struct seaqt_string */  nameFilters);
QDirIterator* QDirIterator_new_dir_flags(QDir* dir, int flags);
QDirIterator* QDirIterator_new_path_flags(struct seaqt_string path, int flags);
QDirIterator* QDirIterator_new_path_filter_flags(struct seaqt_string path, int filter, int flags);
QDirIterator* QDirIterator_new_path_nameFilters_filters(struct seaqt_string path, struct seaqt_array /* of struct seaqt_string */  nameFilters, int filters);
QDirIterator* QDirIterator_new_path_nameFilters_filters_flags(struct seaqt_string path, struct seaqt_array /* of struct seaqt_string */  nameFilters, int filters, int flags);

struct seaqt_string QDirIterator_next(QDirIterator* self);
bool QDirIterator_hasNext(const QDirIterator* self);
struct seaqt_string QDirIterator_fileName(const QDirIterator* self);
struct seaqt_string QDirIterator_filePath(const QDirIterator* self);
QFileInfo* QDirIterator_fileInfo(const QDirIterator* self);
struct seaqt_string QDirIterator_path(const QDirIterator* self);

void QDirIterator_delete(QDirIterator* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
