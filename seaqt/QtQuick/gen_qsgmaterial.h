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

struct QSGMaterial_VTable {
	void (*destructor)(struct QSGMaterial_VTable* vtbl, QSGMaterial* self);
	QSGMaterialType* (*type)(struct QSGMaterial_VTable* vtbl, const QSGMaterial* self);
	QSGMaterialShader* (*createShader)(struct QSGMaterial_VTable* vtbl, const QSGMaterial* self);
	int (*compare)(struct QSGMaterial_VTable* vtbl, const QSGMaterial* self, QSGMaterial* other);
};
QSGMaterial* QSGMaterial_new(struct QSGMaterial_VTable* vtbl);
QSGMaterialType* QSGMaterial_type(const QSGMaterial* self);
QSGMaterialShader* QSGMaterial_createShader(const QSGMaterial* self);
int QSGMaterial_compare(const QSGMaterial* self, QSGMaterial* other);
int QSGMaterial_flags(const QSGMaterial* self);
void QSGMaterial_setFlag(QSGMaterial* self, int flags);
void QSGMaterial_setFlag2(QSGMaterial* self, int flags, bool on);
QSGMaterialType* QSGMaterial_virtualbase_type(const void* self);
QSGMaterialShader* QSGMaterial_virtualbase_createShader(const void* self);
int QSGMaterial_virtualbase_compare(const void* self, QSGMaterial* other);
void QSGMaterial_delete(QSGMaterial* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
