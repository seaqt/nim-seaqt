#pragma once
#ifndef SEAQT_QTQUICK_GEN_QSGFLATCOLORMATERIAL_H
#define SEAQT_QTQUICK_GEN_QSGFLATCOLORMATERIAL_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt/libseaqt.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QColor;
class QSGFlatColorMaterial;
class QSGMaterial;
class QSGMaterialShader;
class QSGMaterialType;
#else
typedef struct QColor QColor;
typedef struct QSGFlatColorMaterial QSGFlatColorMaterial;
typedef struct QSGMaterial QSGMaterial;
typedef struct QSGMaterialShader QSGMaterialShader;
typedef struct QSGMaterialType QSGMaterialType;
#endif

typedef struct VirtualQSGFlatColorMaterial VirtualQSGFlatColorMaterial;
typedef struct QSGFlatColorMaterial_VTable{
	void (*destructor)(VirtualQSGFlatColorMaterial* self);
	QSGMaterialType* (*type)(const VirtualQSGFlatColorMaterial* self);
	QSGMaterialShader* (*createShader)(const VirtualQSGFlatColorMaterial* self, int renderMode);
	int (*compare)(const VirtualQSGFlatColorMaterial* self, QSGMaterial* other);
}QSGFlatColorMaterial_VTable;

const QSGFlatColorMaterial_VTable* QSGFlatColorMaterial_vtbl(const VirtualQSGFlatColorMaterial* self);
void* QSGFlatColorMaterial_vdata(const VirtualQSGFlatColorMaterial* self);
void QSGFlatColorMaterial_setVdata(VirtualQSGFlatColorMaterial* self, void* vdata);

VirtualQSGFlatColorMaterial* QSGFlatColorMaterial_new(const QSGFlatColorMaterial_VTable* vtbl, void* vdata);

void QSGFlatColorMaterial_virtbase(QSGFlatColorMaterial* src, QSGMaterial** outptr_QSGMaterial);
QSGMaterialType* QSGFlatColorMaterial_type(const QSGFlatColorMaterial* self);
QSGMaterialShader* QSGFlatColorMaterial_createShader(const QSGFlatColorMaterial* self, int renderMode);
void QSGFlatColorMaterial_setColor(QSGFlatColorMaterial* self, QColor* color);
QColor* QSGFlatColorMaterial_color(const QSGFlatColorMaterial* self);
int QSGFlatColorMaterial_compare(const QSGFlatColorMaterial* self, QSGMaterial* other);

QSGMaterialType* QSGFlatColorMaterial_virtualbase_type(const VirtualQSGFlatColorMaterial* self);
QSGMaterialShader* QSGFlatColorMaterial_virtualbase_createShader(const VirtualQSGFlatColorMaterial* self, int renderMode);
int QSGFlatColorMaterial_virtualbase_compare(const VirtualQSGFlatColorMaterial* self, QSGMaterial* other);

void QSGFlatColorMaterial_delete(QSGFlatColorMaterial* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
