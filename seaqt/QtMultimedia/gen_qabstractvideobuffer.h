#pragma once
#ifndef SEAQT_QTMULTIMEDIA_GEN_QABSTRACTVIDEOBUFFER_H
#define SEAQT_QTMULTIMEDIA_GEN_QABSTRACTVIDEOBUFFER_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt-runtime.h"

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

typedef struct VirtualQAbstractVideoBuffer VirtualQAbstractVideoBuffer;
typedef struct QAbstractVideoBuffer_VTable{
	void (*destructor)(VirtualQAbstractVideoBuffer* self);
	void (*release)(VirtualQAbstractVideoBuffer* self);
	int (*mapMode)(const VirtualQAbstractVideoBuffer* self);
	unsigned char* (*map)(VirtualQAbstractVideoBuffer* self, int mode, int* numBytes, int* bytesPerLine);
	void (*unmap)(VirtualQAbstractVideoBuffer* self);
	QVariant* (*handle)(const VirtualQAbstractVideoBuffer* self);
}QAbstractVideoBuffer_VTable;

void* QAbstractVideoBuffer_vdata(VirtualQAbstractVideoBuffer* self);
VirtualQAbstractVideoBuffer* vdata_QAbstractVideoBuffer(void* vdata);

VirtualQAbstractVideoBuffer* QAbstractVideoBuffer_new(const QAbstractVideoBuffer_VTable* vtbl, size_t vdata, int type);

void QAbstractVideoBuffer_release(QAbstractVideoBuffer* self);
int QAbstractVideoBuffer_handleType(const QAbstractVideoBuffer* self);
int QAbstractVideoBuffer_mapMode(const QAbstractVideoBuffer* self);
unsigned char* QAbstractVideoBuffer_map(QAbstractVideoBuffer* self, int mode, int* numBytes, int* bytesPerLine);
void QAbstractVideoBuffer_unmap(QAbstractVideoBuffer* self);
QVariant* QAbstractVideoBuffer_handle(const QAbstractVideoBuffer* self);

void QAbstractVideoBuffer_virtualbase_release(VirtualQAbstractVideoBuffer* self);
int QAbstractVideoBuffer_virtualbase_mapMode(const VirtualQAbstractVideoBuffer* self);
unsigned char* QAbstractVideoBuffer_virtualbase_map(VirtualQAbstractVideoBuffer* self, int mode, int* numBytes, int* bytesPerLine);
void QAbstractVideoBuffer_virtualbase_unmap(VirtualQAbstractVideoBuffer* self);
QVariant* QAbstractVideoBuffer_virtualbase_handle(const VirtualQAbstractVideoBuffer* self);

void QAbstractVideoBuffer_delete(QAbstractVideoBuffer* self);

void QAbstractPlanarVideoBuffer_virtbase(QAbstractPlanarVideoBuffer* src, QAbstractVideoBuffer** outptr_QAbstractVideoBuffer);
unsigned char* QAbstractPlanarVideoBuffer_map_mode_numBytes_bytesPerLine(QAbstractPlanarVideoBuffer* self, int mode, int* numBytes, int* bytesPerLine);

void QAbstractPlanarVideoBuffer_delete(QAbstractPlanarVideoBuffer* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
