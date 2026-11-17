#pragma once
#ifndef SEAQT_QTCORE_GEN_QSTANDARDPATHS_H
#define SEAQT_QTCORE_GEN_QSTANDARDPATHS_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt-runtime.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QMetaObject;
class QStandardPaths;
#else
typedef struct QMetaObject QMetaObject;
typedef struct QStandardPaths QStandardPaths;
#endif

struct seaqt_string QStandardPaths_writableLocation(int type);
struct seaqt_array /* of struct seaqt_string */  QStandardPaths_standardLocations(int type);
struct seaqt_string QStandardPaths_locate_type_fileName(int type, struct seaqt_string fileName);
struct seaqt_array /* of struct seaqt_string */  QStandardPaths_locateAll_type_fileName(int type, struct seaqt_string fileName);
struct seaqt_string QStandardPaths_displayName(int type);
struct seaqt_string QStandardPaths_findExecutable_executableName(struct seaqt_string executableName);
void QStandardPaths_enableTestMode(bool testMode);
void QStandardPaths_setTestModeEnabled(bool testMode);
bool QStandardPaths_isTestModeEnabled();
struct seaqt_string QStandardPaths_locate_type_fileName_options(int type, struct seaqt_string fileName, int options);
struct seaqt_array /* of struct seaqt_string */  QStandardPaths_locateAll_type_fileName_options(int type, struct seaqt_string fileName, int options);
struct seaqt_string QStandardPaths_findExecutable_executableName_paths(struct seaqt_string executableName, struct seaqt_array /* of struct seaqt_string */  paths);


#ifdef __cplusplus
} /* extern C */
#endif

#endif
