#pragma once
#ifndef SEAQT_QTCORE_GEN_QDIR_H
#define SEAQT_QTCORE_GEN_QDIR_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt-runtime.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QChar;
class QDir;
class QFileInfo;
#else
typedef struct QChar QChar;
typedef struct QDir QDir;
typedef struct QFileInfo QFileInfo;
#endif

QDir* QDir_new_from(QDir* from);
QDir* QDir_new();
QDir* QDir_new_path_nameFilter(struct seaqt_string path, struct seaqt_string nameFilter);
QDir* QDir_new_path(struct seaqt_string path);
QDir* QDir_new_path_nameFilter_sort(struct seaqt_string path, struct seaqt_string nameFilter, int sort);
QDir* QDir_new_path_nameFilter_sort_filter(struct seaqt_string path, struct seaqt_string nameFilter, int sort, int filter);

void QDir_operatorAssign(QDir* self, QDir* from);
void QDir_swap(QDir* self, QDir* other);
void QDir_setPath(QDir* self, struct seaqt_string path);
struct seaqt_string QDir_path(const QDir* self);
struct seaqt_string QDir_absolutePath(const QDir* self);
struct seaqt_string QDir_canonicalPath(const QDir* self);
void QDir_setSearchPaths(struct seaqt_string prefix, struct seaqt_array /* of struct seaqt_string */  searchPaths);
void QDir_addSearchPath(struct seaqt_string prefix, struct seaqt_string path);
struct seaqt_array /* of struct seaqt_string */  QDir_searchPaths(struct seaqt_string prefix);
struct seaqt_string QDir_dirName(const QDir* self);
struct seaqt_string QDir_filePath(const QDir* self, struct seaqt_string fileName);
struct seaqt_string QDir_absoluteFilePath(const QDir* self, struct seaqt_string fileName);
struct seaqt_string QDir_relativeFilePath(const QDir* self, struct seaqt_string fileName);
struct seaqt_string QDir_toNativeSeparators(struct seaqt_string pathName);
struct seaqt_string QDir_fromNativeSeparators(struct seaqt_string pathName);
bool QDir_cd(QDir* self, struct seaqt_string dirName);
bool QDir_cdUp(QDir* self);
struct seaqt_array /* of struct seaqt_string */  QDir_nameFilters(const QDir* self);
void QDir_setNameFilters(QDir* self, struct seaqt_array /* of struct seaqt_string */  nameFilters);
int QDir_filter(const QDir* self);
void QDir_setFilter(QDir* self, int filter);
int QDir_sorting(const QDir* self);
void QDir_setSorting(QDir* self, int sort);
ptrdiff_t QDir_count(const QDir* self);
bool QDir_isEmpty(const QDir* self);
struct seaqt_string QDir_operatorSubscript(const QDir* self, ptrdiff_t param1);
struct seaqt_array /* of struct seaqt_string */  QDir_nameFiltersFromString(struct seaqt_string nameFilter);
struct seaqt_array /* of struct seaqt_string */  QDir_entryList(const QDir* self);
struct seaqt_array /* of struct seaqt_string */  QDir_entryList_nameFilters(const QDir* self, struct seaqt_array /* of struct seaqt_string */  nameFilters);
struct seaqt_array /* of QFileInfo* */  QDir_entryInfoList(const QDir* self);
struct seaqt_array /* of QFileInfo* */  QDir_entryInfoList_nameFilters(const QDir* self, struct seaqt_array /* of struct seaqt_string */  nameFilters);
bool QDir_mkdir_dirName(const QDir* self, struct seaqt_string dirName);
bool QDir_rmdir(const QDir* self, struct seaqt_string dirName);
bool QDir_mkpath_dirPath(const QDir* self, struct seaqt_string dirPath);
bool QDir_rmpath(const QDir* self, struct seaqt_string dirPath);
bool QDir_removeRecursively(QDir* self);
bool QDir_isReadable(const QDir* self);
bool QDir_exists(const QDir* self);
bool QDir_isRoot(const QDir* self);
bool QDir_isRelativePath(struct seaqt_string path);
bool QDir_isAbsolutePath(struct seaqt_string path);
bool QDir_isRelative(const QDir* self);
bool QDir_isAbsolute(const QDir* self);
bool QDir_makeAbsolute(QDir* self);
bool QDir_remove(QDir* self, struct seaqt_string fileName);
bool QDir_rename(QDir* self, struct seaqt_string oldName, struct seaqt_string newName);
bool QDir_exists_name(const QDir* self, struct seaqt_string name);
struct seaqt_array /* of QFileInfo* */  QDir_drives();
QChar* QDir_listSeparator();
QChar* QDir_separator();
bool QDir_setCurrent(struct seaqt_string path);
QDir* QDir_current();
struct seaqt_string QDir_currentPath();
QDir* QDir_home();
struct seaqt_string QDir_homePath();
QDir* QDir_root();
struct seaqt_string QDir_rootPath();
QDir* QDir_temp();
struct seaqt_string QDir_tempPath();
bool QDir_match_filters_fileName(struct seaqt_array /* of struct seaqt_string */  filters, struct seaqt_string fileName);
bool QDir_match_filter_fileName(struct seaqt_string filter, struct seaqt_string fileName);
struct seaqt_string QDir_cleanPath(struct seaqt_string path);
void QDir_refresh(const QDir* self);
bool QDir_isEmpty_filters(const QDir* self, int filters);
struct seaqt_array /* of struct seaqt_string */  QDir_entryList_filters(const QDir* self, int filters);
struct seaqt_array /* of struct seaqt_string */  QDir_entryList_filters_sort(const QDir* self, int filters, int sort);
struct seaqt_array /* of struct seaqt_string */  QDir_entryList_nameFilters_filters(const QDir* self, struct seaqt_array /* of struct seaqt_string */  nameFilters, int filters);
struct seaqt_array /* of struct seaqt_string */  QDir_entryList_nameFilters_filters_sort(const QDir* self, struct seaqt_array /* of struct seaqt_string */  nameFilters, int filters, int sort);
struct seaqt_array /* of QFileInfo* */  QDir_entryInfoList_filters(const QDir* self, int filters);
struct seaqt_array /* of QFileInfo* */  QDir_entryInfoList_filters_sort(const QDir* self, int filters, int sort);
struct seaqt_array /* of QFileInfo* */  QDir_entryInfoList_nameFilters_filters(const QDir* self, struct seaqt_array /* of struct seaqt_string */  nameFilters, int filters);
struct seaqt_array /* of QFileInfo* */  QDir_entryInfoList_nameFilters_filters_sort(const QDir* self, struct seaqt_array /* of struct seaqt_string */  nameFilters, int filters, int sort);

void QDir_delete(QDir* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
