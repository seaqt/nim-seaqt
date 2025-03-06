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

struct QSGVertexColorMaterial_VTable {
	void (*destructor)(struct QSGVertexColorMaterial_VTable* vtbl, QSGVertexColorMaterial* self);
	int (*compare)(struct QSGVertexColorMaterial_VTable* vtbl, const QSGVertexColorMaterial* self, QSGMaterial* other);
	QSGMaterialType* (*type)(struct QSGVertexColorMaterial_VTable* vtbl, const QSGVertexColorMaterial* self);
	QSGMaterialShader* (*createShader)(struct QSGVertexColorMaterial_VTable* vtbl, const QSGVertexColorMaterial* self);
};
QSGVertexColorMaterial* QSGVertexColorMaterial_new(struct QSGVertexColorMaterial_VTable* vtbl);
void QSGVertexColorMaterial_virtbase(QSGVertexColorMaterial* src, QSGMaterial** outptr_QSGMaterial);
int QSGVertexColorMaterial_compare(const QSGVertexColorMaterial* self, QSGMaterial* other);
QSGMaterialType* QSGVertexColorMaterial_type(const QSGVertexColorMaterial* self);
QSGMaterialShader* QSGVertexColorMaterial_createShader(const QSGVertexColorMaterial* self);
int QSGVertexColorMaterial_virtualbase_compare(const void* self, QSGMaterial* other);
QSGMaterialType* QSGVertexColorMaterial_virtualbase_type(const void* self);
QSGMaterialShader* QSGVertexColorMaterial_virtualbase_createShader(const void* self);
void QSGVertexColorMaterial_delete(QSGVertexColorMaterial* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
