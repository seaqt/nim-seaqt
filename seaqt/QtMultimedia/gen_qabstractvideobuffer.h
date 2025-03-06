#pragma once
#ifndef SEAQT_QTMULTIMEDIA_GEN_QABSTRACTVIDEOBUFFER_H
#define SEAQT_QTMULTIMEDIA_GEN_QABSTRACTVIDEOBUFFER_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt/libseaqt.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QAbstractPlanarVideoBuffer;
class QAbstractVideoBuffer;
class QVariant;
#else
typedef struct QAbstractPlanarVideoBuffer QAbstractPlanarVideoBuffer;
typedef struct QAbstractVideoBuffer QAbstractVideoBuffer;
typedef struct QVariant QVariant;
#endif

struct QAbstractVideoBuffer_VTable {
	void (*destructor)(struct QAbstractVideoBuffer_VTable* vtbl, QAbstractVideoBuffer* self);
	void (*release)(struct QAbstractVideoBuffer_VTable* vtbl, QAbstractVideoBuffer* self);
	int (*mapMode)(struct QAbstractVideoBuffer_VTable* vtbl, const QAbstractVideoBuffer* self);
	unsigned char* (*map)(struct QAbstractVideoBuffer_VTable* vtbl, QAbstractVideoBuffer* self, int mode, int* numBytes, int* bytesPerLine);
	void (*unmap)(struct QAbstractVideoBuffer_VTable* vtbl, QAbstractVideoBuffer* self);
	QVariant* (*handle)(struct QAbstractVideoBuffer_VTable* vtbl, const QAbstractVideoBuffer* self);
};
QAbstractVideoBuffer* QAbstractVideoBuffer_new(struct QAbstractVideoBuffer_VTable* vtbl, int type);
void QAbstractVideoBuffer_release(QAbstractVideoBuffer* self);
int QAbstractVideoBuffer_handleType(const QAbstractVideoBuffer* self);
int QAbstractVideoBuffer_mapMode(const QAbstractVideoBuffer* self);
unsigned char* QAbstractVideoBuffer_map(QAbstractVideoBuffer* self, int mode, int* numBytes, int* bytesPerLine);
void QAbstractVideoBuffer_unmap(QAbstractVideoBuffer* self);
QVariant* QAbstractVideoBuffer_handle(const QAbstractVideoBuffer* self);
void QAbstractVideoBuffer_virtualbase_release(void* self);
int QAbstractVideoBuffer_virtualbase_mapMode(const void* self);
unsigned char* QAbstractVideoBuffer_virtualbase_map(void* self, int mode, int* numBytes, int* bytesPerLine);
void QAbstractVideoBuffer_virtualbase_unmap(void* self);
QVariant* QAbstractVideoBuffer_virtualbase_handle(const void* self);
void QAbstractVideoBuffer_delete(QAbstractVideoBuffer* self);

struct QAbstractPlanarVideoBuffer_VTable {
	void (*destructor)(struct QAbstractPlanarVideoBuffer_VTable* vtbl, QAbstractPlanarVideoBuffer* self);
	unsigned char* (*map)(struct QAbstractPlanarVideoBuffer_VTable* vtbl, QAbstractPlanarVideoBuffer* self, int mode, int* numBytes, int* bytesPerLine);
	void (*release)(struct QAbstractPlanarVideoBuffer_VTable* vtbl, QAbstractPlanarVideoBuffer* self);
	int (*mapMode)(struct QAbstractPlanarVideoBuffer_VTable* vtbl, const QAbstractPlanarVideoBuffer* self);
	void (*unmap)(struct QAbstractPlanarVideoBuffer_VTable* vtbl, QAbstractPlanarVideoBuffer* self);
	QVariant* (*handle)(struct QAbstractPlanarVideoBuffer_VTable* vtbl, const QAbstractPlanarVideoBuffer* self);
};
QAbstractPlanarVideoBuffer* QAbstractPlanarVideoBuffer_new(struct QAbstractPlanarVideoBuffer_VTable* vtbl, int type);
void QAbstractPlanarVideoBuffer_virtbase(QAbstractPlanarVideoBuffer* src, QAbstractVideoBuffer** outptr_QAbstractVideoBuffer);
unsigned char* QAbstractPlanarVideoBuffer_map(QAbstractPlanarVideoBuffer* self, int mode, int* numBytes, int* bytesPerLine);
unsigned char* QAbstractPlanarVideoBuffer_virtualbase_map(void* self, int mode, int* numBytes, int* bytesPerLine);
void QAbstractPlanarVideoBuffer_virtualbase_release(void* self);
int QAbstractPlanarVideoBuffer_virtualbase_mapMode(const void* self);
void QAbstractPlanarVideoBuffer_virtualbase_unmap(void* self);
QVariant* QAbstractPlanarVideoBuffer_virtualbase_handle(const void* self);
void QAbstractPlanarVideoBuffer_delete(QAbstractPlanarVideoBuffer* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
