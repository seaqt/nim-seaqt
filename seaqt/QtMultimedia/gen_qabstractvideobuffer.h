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

typedef struct VirtualQAbstractVideoBuffer VirtualQAbstractVideoBuffer;
typedef struct QAbstractVideoBuffer_VTable{
	void (*destructor)(VirtualQAbstractVideoBuffer* self);
	void (*release)(VirtualQAbstractVideoBuffer* self);
	int (*mapMode)(const VirtualQAbstractVideoBuffer* self);
	unsigned char* (*map)(VirtualQAbstractVideoBuffer* self, int mode, int* numBytes, int* bytesPerLine);
	void (*unmap)(VirtualQAbstractVideoBuffer* self);
	QVariant* (*handle)(const VirtualQAbstractVideoBuffer* self);
}QAbstractVideoBuffer_VTable;

const QAbstractVideoBuffer_VTable* QAbstractVideoBuffer_vtbl(const VirtualQAbstractVideoBuffer* self);
void* QAbstractVideoBuffer_vdata(const VirtualQAbstractVideoBuffer* self);
void QAbstractVideoBuffer_setVdata(VirtualQAbstractVideoBuffer* self, void* vdata);

VirtualQAbstractVideoBuffer* QAbstractVideoBuffer_new(const QAbstractVideoBuffer_VTable* vtbl, void* vdata, int type);

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

typedef struct VirtualQAbstractPlanarVideoBuffer VirtualQAbstractPlanarVideoBuffer;
typedef struct QAbstractPlanarVideoBuffer_VTable{
	void (*destructor)(VirtualQAbstractPlanarVideoBuffer* self);
	unsigned char* (*map)(VirtualQAbstractPlanarVideoBuffer* self, int mode, int* numBytes, int* bytesPerLine);
	void (*release)(VirtualQAbstractPlanarVideoBuffer* self);
	int (*mapMode)(const VirtualQAbstractPlanarVideoBuffer* self);
	void (*unmap)(VirtualQAbstractPlanarVideoBuffer* self);
	QVariant* (*handle)(const VirtualQAbstractPlanarVideoBuffer* self);
}QAbstractPlanarVideoBuffer_VTable;

const QAbstractPlanarVideoBuffer_VTable* QAbstractPlanarVideoBuffer_vtbl(const VirtualQAbstractPlanarVideoBuffer* self);
void* QAbstractPlanarVideoBuffer_vdata(const VirtualQAbstractPlanarVideoBuffer* self);
void QAbstractPlanarVideoBuffer_setVdata(VirtualQAbstractPlanarVideoBuffer* self, void* vdata);

VirtualQAbstractPlanarVideoBuffer* QAbstractPlanarVideoBuffer_new(const QAbstractPlanarVideoBuffer_VTable* vtbl, void* vdata, int type);

void QAbstractPlanarVideoBuffer_virtbase(QAbstractPlanarVideoBuffer* src, QAbstractVideoBuffer** outptr_QAbstractVideoBuffer);
unsigned char* QAbstractPlanarVideoBuffer_map(QAbstractPlanarVideoBuffer* self, int mode, int* numBytes, int* bytesPerLine);

unsigned char* QAbstractPlanarVideoBuffer_virtualbase_map(VirtualQAbstractPlanarVideoBuffer* self, int mode, int* numBytes, int* bytesPerLine);
void QAbstractPlanarVideoBuffer_virtualbase_release(VirtualQAbstractPlanarVideoBuffer* self);
int QAbstractPlanarVideoBuffer_virtualbase_mapMode(const VirtualQAbstractPlanarVideoBuffer* self);
void QAbstractPlanarVideoBuffer_virtualbase_unmap(VirtualQAbstractPlanarVideoBuffer* self);
QVariant* QAbstractPlanarVideoBuffer_virtualbase_handle(const VirtualQAbstractPlanarVideoBuffer* self);

void QAbstractPlanarVideoBuffer_delete(QAbstractPlanarVideoBuffer* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
