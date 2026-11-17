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
class QOperatingSystemVersionUnexported;
class QVersionNumber;
#else
typedef struct QOperatingSystemVersion QOperatingSystemVersion;
typedef struct QOperatingSystemVersionBase QOperatingSystemVersionBase;
typedef struct QOperatingSystemVersionUnexported QOperatingSystemVersionUnexported;
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

QOperatingSystemVersionUnexported* QOperatingSystemVersionUnexported_new_QOperatingSystemVersionBase(QOperatingSystemVersionBase* other);
QOperatingSystemVersionUnexported* QOperatingSystemVersionUnexported_new();
QOperatingSystemVersionUnexported* QOperatingSystemVersionUnexported_new_QOperatingSystemVersionUnexported(QOperatingSystemVersionUnexported* from);
QOperatingSystemVersionUnexported* QOperatingSystemVersionUnexported_new_QOperatingSystemVersionBase_OSType_int_int_int(int param1, int param2, int param3, int param4);

void QOperatingSystemVersionUnexported_virtbase(QOperatingSystemVersionUnexported* src, QOperatingSystemVersionBase** outptr_QOperatingSystemVersionBase);
void QOperatingSystemVersionUnexported_delete(QOperatingSystemVersionUnexported* self);

QOperatingSystemVersion* QOperatingSystemVersion_new_osversion(QOperatingSystemVersionBase* osversion);
QOperatingSystemVersion* QOperatingSystemVersion_new_osType_vmajor(int osType, int vmajor);
QOperatingSystemVersion* QOperatingSystemVersion_new_from(QOperatingSystemVersion* from);
QOperatingSystemVersion* QOperatingSystemVersion_new_osType_vmajor_vminor(int osType, int vmajor, int vminor);
QOperatingSystemVersion* QOperatingSystemVersion_new_osType_vmajor_vminor_vmicro(int osType, int vmajor, int vminor, int vmicro);

void QOperatingSystemVersion_virtbase(QOperatingSystemVersion* src, QOperatingSystemVersionUnexported** outptr_QOperatingSystemVersionUnexported);
QOperatingSystemVersion* QOperatingSystemVersion_current();
int QOperatingSystemVersion_currentType();
int QOperatingSystemVersion_type(const QOperatingSystemVersion* self);

void QOperatingSystemVersion_delete(QOperatingSystemVersion* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
