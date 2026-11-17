#pragma once
#ifndef SEAQT_QTQUICK_GEN_QSGMATERIAL_H
#define SEAQT_QTQUICK_GEN_QSGMATERIAL_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt-runtime.h"

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
	QSGMaterialShader* (*createShader)(const VirtualQSGMaterial* self, int renderMode);
	int (*compare)(const VirtualQSGMaterial* self, QSGMaterial* other);
}QSGMaterial_VTable;

void* QSGMaterial_vdata(VirtualQSGMaterial* self);
VirtualQSGMaterial* vdata_QSGMaterial(void* vdata);

VirtualQSGMaterial* QSGMaterial_new(const QSGMaterial_VTable* vtbl, size_t vdata);

QSGMaterialType* QSGMaterial_type(const QSGMaterial* self);
QSGMaterialShader* QSGMaterial_createShader(const QSGMaterial* self, int renderMode);
int QSGMaterial_compare(const QSGMaterial* self, QSGMaterial* other);
int QSGMaterial_flags(const QSGMaterial* self);
void QSGMaterial_setFlag_flags(QSGMaterial* self, int flags);
void QSGMaterial_setFlag_flags_on(QSGMaterial* self, int flags, bool on);

QSGMaterialType* QSGMaterial_virtualbase_type(const VirtualQSGMaterial* self);
QSGMaterialShader* QSGMaterial_virtualbase_createShader(const VirtualQSGMaterial* self, int renderMode);
int QSGMaterial_virtualbase_compare(const VirtualQSGMaterial* self, QSGMaterial* other);

void QSGMaterial_delete(QSGMaterial* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
