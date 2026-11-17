#pragma once
#ifndef SEAQT_QTCORE_GEN_QSYSINFO_H
#define SEAQT_QTCORE_GEN_QSYSINFO_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt-runtime.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QSysInfo;
#else
typedef struct QSysInfo QSysInfo;
#endif

int QSysInfo_windowsVersion();
int QSysInfo_macVersion();
struct seaqt_string QSysInfo_buildCpuArchitecture();
struct seaqt_string QSysInfo_currentCpuArchitecture();
struct seaqt_string QSysInfo_buildAbi();
struct seaqt_string QSysInfo_kernelType();
struct seaqt_string QSysInfo_kernelVersion();
struct seaqt_string QSysInfo_productType();
struct seaqt_string QSysInfo_productVersion();
struct seaqt_string QSysInfo_prettyProductName();
struct seaqt_string QSysInfo_machineHostName();
struct seaqt_string QSysInfo_machineUniqueId();
struct seaqt_string QSysInfo_bootUniqueId();

void QSysInfo_delete(QSysInfo* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
