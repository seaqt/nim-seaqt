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
class QOperatingSystemVersionBase;
class QVersionNumber;
#else
typedef struct QOperatingSystemVersion QOperatingSystemVersion;
typedef struct QOperatingSystemVersionBase QOperatingSystemVersionBase;
typedef struct QVersionNumber QVersionNumber;
#endif

QOperatingSystemVersionBase* QOperatingSystemVersionBase_new_osType_vmajor(int osType, int vmajor);
QOperatingSystemVersionBase* QOperatingSystemVersionBase_new_from(QOperatingSystemVersionBase* from);
QOperatingSystemVersionBase* QOperatingSystemVersionBase_new_osType_vmajor_vminor(int osType, int vmajor, int vminor);
QOperatingSystemVersionBase* QOperatingSystemVersionBase_new_osType_vmajor_vminor_vmicro(int osType, int vmajor, int vminor, int vmicro);

QOperatingSystemVersionBase* QOperatingSystemVersionBase_current();
struct seaqt_string QOperatingSystemVersionBase_name_osversion(QOperatingSystemVersionBase* osversion);
int QOperatingSystemVersionBase_currentType();
QVersionNumber* QOperatingSystemVersionBase_version(const QOperatingSystemVersionBase* self);
int QOperatingSystemVersionBase_majorVersion(const QOperatingSystemVersionBase* self);
int QOperatingSystemVersionBase_minorVersion(const QOperatingSystemVersionBase* self);
int QOperatingSystemVersionBase_microVersion(const QOperatingSystemVersionBase* self);
int QOperatingSystemVersionBase_segmentCount(const QOperatingSystemVersionBase* self);
int QOperatingSystemVersionBase_type(const QOperatingSystemVersionBase* self);
struct seaqt_string QOperatingSystemVersionBase_name(const QOperatingSystemVersionBase* self);

void QOperatingSystemVersionBase_delete(QOperatingSystemVersionBase* self);

QOperatingSystemVersion* QOperatingSystemVersion_new_osversion(QOperatingSystemVersionBase* osversion);
QOperatingSystemVersion* QOperatingSystemVersion_new_osType_vmajor(int osType, int vmajor);
QOperatingSystemVersion* QOperatingSystemVersion_new_from(QOperatingSystemVersion* from);
QOperatingSystemVersion* QOperatingSystemVersion_new_osType_vmajor_vminor(int osType, int vmajor, int vminor);
QOperatingSystemVersion* QOperatingSystemVersion_new_osType_vmajor_vminor_vmicro(int osType, int vmajor, int vminor, int vmicro);

void QOperatingSystemVersion_virtbase(QOperatingSystemVersion* src, QOperatingSystemVersionBase** outptr_QOperatingSystemVersionBase);
QOperatingSystemVersion* QOperatingSystemVersion_current();
int QOperatingSystemVersion_currentType();
QVersionNumber* QOperatingSystemVersion_version(const QOperatingSystemVersion* self);
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
