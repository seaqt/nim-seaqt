#pragma once
#ifndef SEAQT_QTCORE_GEN_QLIBRARYINFO_H
#define SEAQT_QTCORE_GEN_QLIBRARYINFO_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt/libseaqt.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QLibraryInfo;
class QVersionNumber;
#else
typedef struct QLibraryInfo QLibraryInfo;
typedef struct QVersionNumber QVersionNumber;
#endif

const char* QLibraryInfo_build();
bool QLibraryInfo_isDebugBuild();
QVersionNumber* QLibraryInfo_version();
struct miqt_string QLibraryInfo_path(int p);
struct miqt_string QLibraryInfo_location(int location);
struct miqt_array /* of struct miqt_string */  QLibraryInfo_platformPluginArguments(struct miqt_string platformName);
void QLibraryInfo_delete(QLibraryInfo* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
