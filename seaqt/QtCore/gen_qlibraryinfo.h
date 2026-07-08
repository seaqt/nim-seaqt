#pragma once
#ifndef SEAQT_QTCORE_GEN_QLIBRARYINFO_H
#define SEAQT_QTCORE_GEN_QLIBRARYINFO_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt-runtime.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QDate;
class QLibraryInfo;
class QVersionNumber;
#else
typedef struct QDate QDate;
typedef struct QLibraryInfo QLibraryInfo;
typedef struct QVersionNumber QVersionNumber;
#endif

struct seaqt_string QLibraryInfo_licensee();
struct seaqt_string QLibraryInfo_licensedProducts();
QDate* QLibraryInfo_buildDate();
const char* QLibraryInfo_build();
bool QLibraryInfo_isDebugBuild();
QVersionNumber* QLibraryInfo_version();
struct seaqt_string QLibraryInfo_location(int param1);
struct seaqt_array /* of struct seaqt_string */  QLibraryInfo_platformPluginArguments(struct seaqt_string platformName);

void QLibraryInfo_delete(QLibraryInfo* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
