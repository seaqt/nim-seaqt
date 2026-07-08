#pragma once
#ifndef SEAQT_QTCORE_GEN_QDIRLISTING_H
#define SEAQT_QTCORE_GEN_QDIRLISTING_H

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
class QDirListing;
#if defined(WORKAROUND_INNER_CLASS_DEFINITION_QDirListing__DirEntry)
typedef QDirListing::DirEntry QDirListing__DirEntry;
#else
class QDirListing__DirEntry;
#endif
#if defined(WORKAROUND_INNER_CLASS_DEFINITION_QDirListing__const_iterator)
typedef QDirListing::const_iterator QDirListing__const_iterator;
#else
class QDirListing__const_iterator;
#endif
#if defined(WORKAROUND_INNER_CLASS_DEFINITION_QDirListing__sentinel)
typedef QDirListing::sentinel QDirListing__sentinel;
#else
class QDirListing__sentinel;
#endif
class QFileInfo;
class QMetaObject;
class QTimeZone;
#else
typedef struct QDateTime QDateTime;
typedef struct QDirListing QDirListing;
typedef struct QDirListing__DirEntry QDirListing__DirEntry;
typedef struct QDirListing__const_iterator QDirListing__const_iterator;
typedef struct QDirListing__sentinel QDirListing__sentinel;
typedef struct QFileInfo QFileInfo;
typedef struct QMetaObject QMetaObject;
typedef struct QTimeZone QTimeZone;
#endif

QDirListing* QDirListing_new_path(struct seaqt_string path);
QDirListing* QDirListing_new_path_nameFilters(struct seaqt_string path, struct seaqt_array /* of struct seaqt_string */  nameFilters);
QDirListing* QDirListing_new_path_flags(struct seaqt_string path, int flags);
QDirListing* QDirListing_new_path_nameFilters_flags(struct seaqt_string path, struct seaqt_array /* of struct seaqt_string */  nameFilters, int flags);

void QDirListing_swap(QDirListing* self, QDirListing* other);
struct seaqt_string QDirListing_iteratorPath(const QDirListing* self);
int QDirListing_iteratorFlags(const QDirListing* self);
struct seaqt_array /* of struct seaqt_string */  QDirListing_nameFilters(const QDirListing* self);
QDirListing__const_iterator* QDirListing_begin(const QDirListing* self);
QDirListing__const_iterator* QDirListing_cbegin(const QDirListing* self);
QDirListing__sentinel* QDirListing_end(const QDirListing* self);
QDirListing__sentinel* QDirListing_cend(const QDirListing* self);
QDirListing__const_iterator* QDirListing_constBegin(const QDirListing* self);
QDirListing__sentinel* QDirListing_constEnd(const QDirListing* self);

const QMetaObject* QDirListing_staticMetaObject();
void QDirListing_delete(QDirListing* self);

QDirListing__DirEntry* QDirListing__DirEntry_new_from(QDirListing__DirEntry* from);
QDirListing__DirEntry* QDirListing__DirEntry_new();

struct seaqt_string QDirListing__DirEntry_fileName(const QDirListing__DirEntry* self);
struct seaqt_string QDirListing__DirEntry_baseName(const QDirListing__DirEntry* self);
struct seaqt_string QDirListing__DirEntry_completeBaseName(const QDirListing__DirEntry* self);
struct seaqt_string QDirListing__DirEntry_suffix(const QDirListing__DirEntry* self);
struct seaqt_string QDirListing__DirEntry_bundleName(const QDirListing__DirEntry* self);
struct seaqt_string QDirListing__DirEntry_completeSuffix(const QDirListing__DirEntry* self);
struct seaqt_string QDirListing__DirEntry_filePath(const QDirListing__DirEntry* self);
bool QDirListing__DirEntry_isDir(const QDirListing__DirEntry* self);
bool QDirListing__DirEntry_isFile(const QDirListing__DirEntry* self);
bool QDirListing__DirEntry_isSymLink(const QDirListing__DirEntry* self);
bool QDirListing__DirEntry_exists(const QDirListing__DirEntry* self);
bool QDirListing__DirEntry_isHidden(const QDirListing__DirEntry* self);
bool QDirListing__DirEntry_isReadable(const QDirListing__DirEntry* self);
bool QDirListing__DirEntry_isWritable(const QDirListing__DirEntry* self);
bool QDirListing__DirEntry_isExecutable(const QDirListing__DirEntry* self);
QFileInfo* QDirListing__DirEntry_fileInfo(const QDirListing__DirEntry* self);
struct seaqt_string QDirListing__DirEntry_canonicalFilePath(const QDirListing__DirEntry* self);
struct seaqt_string QDirListing__DirEntry_absoluteFilePath(const QDirListing__DirEntry* self);
struct seaqt_string QDirListing__DirEntry_absolutePath(const QDirListing__DirEntry* self);
long long QDirListing__DirEntry_size(const QDirListing__DirEntry* self);
QDateTime* QDirListing__DirEntry_birthTime(const QDirListing__DirEntry* self, QTimeZone* tz);
QDateTime* QDirListing__DirEntry_metadataChangeTime(const QDirListing__DirEntry* self, QTimeZone* tz);
QDateTime* QDirListing__DirEntry_lastModified(const QDirListing__DirEntry* self, QTimeZone* tz);
QDateTime* QDirListing__DirEntry_lastRead(const QDirListing__DirEntry* self, QTimeZone* tz);
QDateTime* QDirListing__DirEntry_fileTime(const QDirListing__DirEntry* self, int type, QTimeZone* tz);
void QDirListing__DirEntry_operatorAssign(QDirListing__DirEntry* self, QDirListing__DirEntry* from);

void QDirListing__DirEntry_delete(QDirListing__DirEntry* self);

QDirListing__sentinel* QDirListing__sentinel_new();
QDirListing__sentinel* QDirListing__sentinel_new_from(QDirListing__sentinel* from);

void QDirListing__sentinel_delete(QDirListing__sentinel* self);

QDirListing__const_iterator* QDirListing__const_iterator_new();

QDirListing__DirEntry* QDirListing__const_iterator_operatorMinusGreater(const QDirListing__const_iterator* self);
QDirListing__const_iterator* QDirListing__const_iterator_operatorPlusPlus(QDirListing__const_iterator* self);
void QDirListing__const_iterator_operatorPlusPlus_int(QDirListing__const_iterator* self, int param1);

void QDirListing__const_iterator_delete(QDirListing__const_iterator* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
