#pragma once
#ifndef SEAQT_QTQUICK_GEN_QSGVERTEXCOLORMATERIAL_H
#define SEAQT_QTQUICK_GEN_QSGVERTEXCOLORMATERIAL_H

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
class QSGVertexColorMaterial;
#else
typedef struct QSGMaterial QSGMaterial;
typedef struct QSGMaterialShader QSGMaterialShader;
typedef struct QSGMaterialType QSGMaterialType;
typedef struct QSGVertexColorMaterial QSGVertexColorMaterial;
#endif

typedef struct VirtualQSGVertexColorMaterial VirtualQSGVertexColorMaterial;
typedef struct QSGVertexColorMaterial_VTable{
	void (*destructor)(VirtualQSGVertexColorMaterial* self);
	int (*compare)(const VirtualQSGVertexColorMaterial* self, QSGMaterial* other);
	QSGMaterialType* (*type)(const VirtualQSGVertexColorMaterial* self);
	QSGMaterialShader* (*createShader)(const VirtualQSGVertexColorMaterial* self);
}QSGVertexColorMaterial_VTable;

const QSGVertexColorMaterial_VTable* QSGVertexColorMaterial_vtbl(const VirtualQSGVertexColorMaterial* self);
void* QSGVertexColorMaterial_vdata(const VirtualQSGVertexColorMaterial* self);
void QSGVertexColorMaterial_setVdata(VirtualQSGVertexColorMaterial* self, void* vdata);

VirtualQSGVertexColorMaterial* QSGVertexColorMaterial_new(const QSGVertexColorMaterial_VTable* vtbl, void* vdata);

void QSGVertexColorMaterial_virtbase(QSGVertexColorMaterial* src, QSGMaterial** outptr_QSGMaterial);
int QSGVertexColorMaterial_compare(const QSGVertexColorMaterial* self, QSGMaterial* other);
QSGMaterialType* QSGVertexColorMaterial_type(const QSGVertexColorMaterial* self);
QSGMaterialShader* QSGVertexColorMaterial_createShader(const QSGVertexColorMaterial* self);

int QSGVertexColorMaterial_virtualbase_compare(const VirtualQSGVertexColorMaterial* self, QSGMaterial* other);
QSGMaterialType* QSGVertexColorMaterial_virtualbase_type(const VirtualQSGVertexColorMaterial* self);
QSGMaterialShader* QSGVertexColorMaterial_virtualbase_createShader(const VirtualQSGVertexColorMaterial* self);

void QSGVertexColorMaterial_delete(QSGVertexColorMaterial* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
