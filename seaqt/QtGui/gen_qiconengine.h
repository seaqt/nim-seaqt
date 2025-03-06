#pragma once
#ifndef SEAQT_QTGUI_GEN_QICONENGINE_H
#define SEAQT_QTGUI_GEN_QICONENGINE_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt/libseaqt.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QDataStream;
class QIconEngine;
#if defined(WORKAROUND_INNER_CLASS_DEFINITION_QIconEngine__AvailableSizesArgument)
typedef QIconEngine::AvailableSizesArgument QIconEngine__AvailableSizesArgument;
#else
class QIconEngine__AvailableSizesArgument;
#endif
#if defined(WORKAROUND_INNER_CLASS_DEFINITION_QIconEngine__ScaledPixmapArgument)
typedef QIconEngine::ScaledPixmapArgument QIconEngine__ScaledPixmapArgument;
#else
class QIconEngine__ScaledPixmapArgument;
#endif
class QPainter;
class QPixmap;
class QRect;
class QSize;
#else
typedef struct QDataStream QDataStream;
typedef struct QIconEngine QIconEngine;
typedef struct QIconEngine__AvailableSizesArgument QIconEngine__AvailableSizesArgument;
typedef struct QIconEngine__ScaledPixmapArgument QIconEngine__ScaledPixmapArgument;
typedef struct QPainter QPainter;
typedef struct QPixmap QPixmap;
typedef struct QRect QRect;
typedef struct QSize QSize;
#endif

struct QIconEngine_VTable {
	void (*destructor)(struct QIconEngine_VTable* vtbl, QIconEngine* self);
	void (*paint)(struct QIconEngine_VTable* vtbl, QIconEngine* self, QPainter* painter, QRect* rect, int mode, int state);
	QSize* (*actualSize)(struct QIconEngine_VTable* vtbl, QIconEngine* self, QSize* size, int mode, int state);
	QPixmap* (*pixmap)(struct QIconEngine_VTable* vtbl, QIconEngine* self, QSize* size, int mode, int state);
	void (*addPixmap)(struct QIconEngine_VTable* vtbl, QIconEngine* self, QPixmap* pixmap, int mode, int state);
	void (*addFile)(struct QIconEngine_VTable* vtbl, QIconEngine* self, struct miqt_string fileName, QSize* size, int mode, int state);
	struct miqt_string (*key)(struct QIconEngine_VTable* vtbl, const QIconEngine* self);
	QIconEngine* (*clone)(struct QIconEngine_VTable* vtbl, const QIconEngine* self);
	bool (*read)(struct QIconEngine_VTable* vtbl, QIconEngine* self, QDataStream* in);
	bool (*write)(struct QIconEngine_VTable* vtbl, const QIconEngine* self, QDataStream* out);
	struct miqt_array /* of QSize* */  (*availableSizes)(struct QIconEngine_VTable* vtbl, const QIconEngine* self, int mode, int state);
	struct miqt_string (*iconName)(struct QIconEngine_VTable* vtbl, const QIconEngine* self);
	void (*virtualHook)(struct QIconEngine_VTable* vtbl, QIconEngine* self, int id, void* data);
};
QIconEngine* QIconEngine_new(struct QIconEngine_VTable* vtbl);
QIconEngine* QIconEngine_new2(struct QIconEngine_VTable* vtbl, QIconEngine* other);
void QIconEngine_paint(QIconEngine* self, QPainter* painter, QRect* rect, int mode, int state);
QSize* QIconEngine_actualSize(QIconEngine* self, QSize* size, int mode, int state);
QPixmap* QIconEngine_pixmap(QIconEngine* self, QSize* size, int mode, int state);
void QIconEngine_addPixmap(QIconEngine* self, QPixmap* pixmap, int mode, int state);
void QIconEngine_addFile(QIconEngine* self, struct miqt_string fileName, QSize* size, int mode, int state);
struct miqt_string QIconEngine_key(const QIconEngine* self);
QIconEngine* QIconEngine_clone(const QIconEngine* self);
bool QIconEngine_read(QIconEngine* self, QDataStream* in);
bool QIconEngine_write(const QIconEngine* self, QDataStream* out);
struct miqt_array /* of QSize* */  QIconEngine_availableSizes(const QIconEngine* self, int mode, int state);
struct miqt_string QIconEngine_iconName(const QIconEngine* self);
bool QIconEngine_isNull(const QIconEngine* self);
QPixmap* QIconEngine_scaledPixmap(QIconEngine* self, QSize* size, int mode, int state, double scale);
void QIconEngine_virtualHook(QIconEngine* self, int id, void* data);
void QIconEngine_virtualbase_paint(void* self, QPainter* painter, QRect* rect, int mode, int state);
QSize* QIconEngine_virtualbase_actualSize(void* self, QSize* size, int mode, int state);
QPixmap* QIconEngine_virtualbase_pixmap(void* self, QSize* size, int mode, int state);
void QIconEngine_virtualbase_addPixmap(void* self, QPixmap* pixmap, int mode, int state);
void QIconEngine_virtualbase_addFile(void* self, struct miqt_string fileName, QSize* size, int mode, int state);
struct miqt_string QIconEngine_virtualbase_key(const void* self);
QIconEngine* QIconEngine_virtualbase_clone(const void* self);
bool QIconEngine_virtualbase_read(void* self, QDataStream* in);
bool QIconEngine_virtualbase_write(const void* self, QDataStream* out);
struct miqt_array /* of QSize* */  QIconEngine_virtualbase_availableSizes(const void* self, int mode, int state);
struct miqt_string QIconEngine_virtualbase_iconName(const void* self);
void QIconEngine_virtualbase_virtualHook(void* self, int id, void* data);
void QIconEngine_delete(QIconEngine* self);

QIconEngine__AvailableSizesArgument* QIconEngine__AvailableSizesArgument_new(QIconEngine__AvailableSizesArgument* param1);
void QIconEngine__AvailableSizesArgument_operatorAssign(QIconEngine__AvailableSizesArgument* self, QIconEngine__AvailableSizesArgument* param1);
void QIconEngine__AvailableSizesArgument_delete(QIconEngine__AvailableSizesArgument* self);

QIconEngine__ScaledPixmapArgument* QIconEngine__ScaledPixmapArgument_new(QIconEngine__ScaledPixmapArgument* param1);
void QIconEngine__ScaledPixmapArgument_operatorAssign(QIconEngine__ScaledPixmapArgument* self, QIconEngine__ScaledPixmapArgument* param1);
void QIconEngine__ScaledPixmapArgument_delete(QIconEngine__ScaledPixmapArgument* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
