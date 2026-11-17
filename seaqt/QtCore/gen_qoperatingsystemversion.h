#pragma once
#ifndef SEAQT_QTCORE_GEN_QOPERATINGSYSTEMVERSION_H
#define SEAQT_QTCORE_GEN_QOPERATINGSYSTEMVERSION_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt-runtime.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QOperatingSystemVersion;
#else
typedef struct QOperatingSystemVersion QOperatingSystemVersion;
#endif

QOperatingSystemVersion* QOperatingSystemVersion_new_osType_vmajor(int osType, int vmajor);
QOperatingSystemVersion* QOperatingSystemVersion_new_osType_vmajor_vminor(int osType, int vmajor, int vminor);
QOperatingSystemVersion* QOperatingSystemVersion_new_osType_vmajor_vminor_vmicro(int osType, int vmajor, int vminor, int vmicro);

QOperatingSystemVersion* QOperatingSystemVersion_current();
int QOperatingSystemVersion_currentType();
int QOperatingSystemVersion_majorVersion(const QOperatingSystemVersion* self);
int QOperatingSystemVersion_minorVersion(const QOperatingSystemVersion* self);
int QOperatingSystemVersion_microVersion(const QOperatingSystemVersion* self);
int QOperatingSystemVersion_segmentCount(const QOperatingSystemVersion* self);
int QOperatingSystemVersion_type(const QOperatingSystemVersion* self);
struct seaqt_string QOperatingSystemVersion_name(const QOperatingSystemVersion* self);

void QOperatingSystemVersion_delete(QOperatingSystemVersion* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
