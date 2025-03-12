#pragma once
#ifndef SEAQT_QTQUICK_GEN_QSGMATERIAL_H
#define SEAQT_QTQUICK_GEN_QSGMATERIAL_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt/libseaqt.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QSGMaterial;
class QSGMaterialShader;
class QSGMaterialType;
#else
typedef struct QSGMaterial QSGMaterial;
typedef struct QSGMaterialShader QSGMaterialShader;
typedef struct QSGMaterialType QSGMaterialType;
#endif

typedef struct VirtualQSGMaterial VirtualQSGMaterial;
typedef struct QSGMaterial_VTable{
	void (*destructor)(VirtualQSGMaterial* self);
	QSGMaterialType* (*type)(const VirtualQSGMaterial* self);
	QSGMaterialShader* (*createShader)(const VirtualQSGMaterial* self);
	int (*compare)(const VirtualQSGMaterial* self, QSGMaterial* other);
}QSGMaterial_VTable;

const QSGMaterial_VTable* QSGMaterial_vtbl(const VirtualQSGMaterial* self);
void* QSGMaterial_vdata(const VirtualQSGMaterial* self);
void QSGMaterial_setVdata(VirtualQSGMaterial* self, void* vdata);

VirtualQSGMaterial* QSGMaterial_new(const QSGMaterial_VTable* vtbl, void* vdata);

QSGMaterialType* QSGMaterial_type(const QSGMaterial* self);
QSGMaterialShader* QSGMaterial_createShader(const QSGMaterial* self);
int QSGMaterial_compare(const QSGMaterial* self, QSGMaterial* other);
int QSGMaterial_flags(const QSGMaterial* self);
void QSGMaterial_setFlag(QSGMaterial* self, int flags);
void QSGMaterial_setFlag2(QSGMaterial* self, int flags, bool on);

QSGMaterialType* QSGMaterial_virtualbase_type(const VirtualQSGMaterial* self);
QSGMaterialShader* QSGMaterial_virtualbase_createShader(const VirtualQSGMaterial* self);
int QSGMaterial_virtualbase_compare(const VirtualQSGMaterial* self, QSGMaterial* other);

void QSGMaterial_delete(QSGMaterial* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
