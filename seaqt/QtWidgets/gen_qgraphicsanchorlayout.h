#pragma once
#ifndef SEAQT_QTWIDGETS_GEN_QGRAPHICSANCHORLAYOUT_H
#define SEAQT_QTWIDGETS_GEN_QGRAPHICSANCHORLAYOUT_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt/libseaqt.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QEvent;
class QGraphicsAnchor;
class QGraphicsAnchorLayout;
class QGraphicsItem;
class QGraphicsLayout;
class QGraphicsLayoutItem;
class QMetaMethod;
class QMetaObject;
class QObject;
class QRectF;
class QSizeF;
#else
typedef struct QEvent QEvent;
typedef struct QGraphicsAnchor QGraphicsAnchor;
typedef struct QGraphicsAnchorLayout QGraphicsAnchorLayout;
typedef struct QGraphicsItem QGraphicsItem;
typedef struct QGraphicsLayout QGraphicsLayout;
typedef struct QGraphicsLayoutItem QGraphicsLayoutItem;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QObject QObject;
typedef struct QRectF QRectF;
typedef struct QSizeF QSizeF;
#endif

void QGraphicsAnchor_virtbase(QGraphicsAnchor* src, QObject** outptr_QObject);
QMetaObject* QGraphicsAnchor_metaObject(const QGraphicsAnchor* self);
void* QGraphicsAnchor_metacast(QGraphicsAnchor* self, const char* param1);
int QGraphicsAnchor_metacall(QGraphicsAnchor* self, int param1, int param2, void** param3);
struct miqt_string QGraphicsAnchor_tr(const char* s);
struct miqt_string QGraphicsAnchor_trUtf8(const char* s);
void QGraphicsAnchor_setSpacing(QGraphicsAnchor* self, double spacing);
void QGraphicsAnchor_unsetSpacing(QGraphicsAnchor* self);
double QGraphicsAnchor_spacing(const QGraphicsAnchor* self);
void QGraphicsAnchor_setSizePolicy(QGraphicsAnchor* self, int policy);
int QGraphicsAnchor_sizePolicy(const QGraphicsAnchor* self);
struct miqt_string QGraphicsAnchor_tr2(const char* s, const char* c);
struct miqt_string QGraphicsAnchor_tr3(const char* s, const char* c, int n);
struct miqt_string QGraphicsAnchor_trUtf82(const char* s, const char* c);
struct miqt_string QGraphicsAnchor_trUtf83(const char* s, const char* c, int n);

const QMetaObject* QGraphicsAnchor_staticMetaObject();
void QGraphicsAnchor_delete(QGraphicsAnchor* self);

typedef struct VirtualQGraphicsAnchorLayout VirtualQGraphicsAnchorLayout;
typedef struct QGraphicsAnchorLayout_VTable{
	void (*destructor)(VirtualQGraphicsAnchorLayout* self);
	void (*removeAt)(VirtualQGraphicsAnchorLayout* self, int index);
	void (*setGeometry)(VirtualQGraphicsAnchorLayout* self, QRectF* rect);
	int (*count)(const VirtualQGraphicsAnchorLayout* self);
	QGraphicsLayoutItem* (*itemAt)(const VirtualQGraphicsAnchorLayout* self, int index);
	void (*invalidate)(VirtualQGraphicsAnchorLayout* self);
	QSizeF* (*sizeHint)(const VirtualQGraphicsAnchorLayout* self, int which, QSizeF* constraint);
	void (*getContentsMargins)(const VirtualQGraphicsAnchorLayout* self, double* left, double* top, double* right, double* bottom);
	void (*updateGeometry)(VirtualQGraphicsAnchorLayout* self);
	void (*widgetEvent)(VirtualQGraphicsAnchorLayout* self, QEvent* e);
}QGraphicsAnchorLayout_VTable;

const QGraphicsAnchorLayout_VTable* QGraphicsAnchorLayout_vtbl(const VirtualQGraphicsAnchorLayout* self);
void* QGraphicsAnchorLayout_vdata(const VirtualQGraphicsAnchorLayout* self);
void QGraphicsAnchorLayout_setVdata(VirtualQGraphicsAnchorLayout* self, void* vdata);

VirtualQGraphicsAnchorLayout* QGraphicsAnchorLayout_new(const QGraphicsAnchorLayout_VTable* vtbl, void* vdata);
VirtualQGraphicsAnchorLayout* QGraphicsAnchorLayout_new2(const QGraphicsAnchorLayout_VTable* vtbl, void* vdata, QGraphicsLayoutItem* parent);

void QGraphicsAnchorLayout_virtbase(QGraphicsAnchorLayout* src, QGraphicsLayout** outptr_QGraphicsLayout);
QGraphicsAnchor* QGraphicsAnchorLayout_addAnchor(QGraphicsAnchorLayout* self, QGraphicsLayoutItem* firstItem, int firstEdge, QGraphicsLayoutItem* secondItem, int secondEdge);
QGraphicsAnchor* QGraphicsAnchorLayout_anchor(QGraphicsAnchorLayout* self, QGraphicsLayoutItem* firstItem, int firstEdge, QGraphicsLayoutItem* secondItem, int secondEdge);
void QGraphicsAnchorLayout_addCornerAnchors(QGraphicsAnchorLayout* self, QGraphicsLayoutItem* firstItem, int firstCorner, QGraphicsLayoutItem* secondItem, int secondCorner);
void QGraphicsAnchorLayout_addAnchors(QGraphicsAnchorLayout* self, QGraphicsLayoutItem* firstItem, QGraphicsLayoutItem* secondItem);
void QGraphicsAnchorLayout_setHorizontalSpacing(QGraphicsAnchorLayout* self, double spacing);
void QGraphicsAnchorLayout_setVerticalSpacing(QGraphicsAnchorLayout* self, double spacing);
void QGraphicsAnchorLayout_setSpacing(QGraphicsAnchorLayout* self, double spacing);
double QGraphicsAnchorLayout_horizontalSpacing(const QGraphicsAnchorLayout* self);
double QGraphicsAnchorLayout_verticalSpacing(const QGraphicsAnchorLayout* self);
void QGraphicsAnchorLayout_removeAt(QGraphicsAnchorLayout* self, int index);
void QGraphicsAnchorLayout_setGeometry(QGraphicsAnchorLayout* self, QRectF* rect);
int QGraphicsAnchorLayout_count(const QGraphicsAnchorLayout* self);
QGraphicsLayoutItem* QGraphicsAnchorLayout_itemAt(const QGraphicsAnchorLayout* self, int index);
void QGraphicsAnchorLayout_invalidate(QGraphicsAnchorLayout* self);
QSizeF* QGraphicsAnchorLayout_sizeHint(const QGraphicsAnchorLayout* self, int which, QSizeF* constraint);
void QGraphicsAnchorLayout_addAnchors3(QGraphicsAnchorLayout* self, QGraphicsLayoutItem* firstItem, QGraphicsLayoutItem* secondItem, int orientations);

void QGraphicsAnchorLayout_virtualbase_removeAt(VirtualQGraphicsAnchorLayout* self, int index);
void QGraphicsAnchorLayout_virtualbase_setGeometry(VirtualQGraphicsAnchorLayout* self, QRectF* rect);
int QGraphicsAnchorLayout_virtualbase_count(const VirtualQGraphicsAnchorLayout* self);
QGraphicsLayoutItem* QGraphicsAnchorLayout_virtualbase_itemAt(const VirtualQGraphicsAnchorLayout* self, int index);
void QGraphicsAnchorLayout_virtualbase_invalidate(VirtualQGraphicsAnchorLayout* self);
QSizeF* QGraphicsAnchorLayout_virtualbase_sizeHint(const VirtualQGraphicsAnchorLayout* self, int which, QSizeF* constraint);
void QGraphicsAnchorLayout_virtualbase_getContentsMargins(const VirtualQGraphicsAnchorLayout* self, double* left, double* top, double* right, double* bottom);
void QGraphicsAnchorLayout_virtualbase_updateGeometry(VirtualQGraphicsAnchorLayout* self);
void QGraphicsAnchorLayout_virtualbase_widgetEvent(VirtualQGraphicsAnchorLayout* self, QEvent* e);

void QGraphicsAnchorLayout_protectedbase_addChildLayoutItem(VirtualQGraphicsAnchorLayout* self, QGraphicsLayoutItem* layoutItem);
void QGraphicsAnchorLayout_protectedbase_setGraphicsItem(VirtualQGraphicsAnchorLayout* self, QGraphicsItem* item);
void QGraphicsAnchorLayout_protectedbase_setOwnedByLayout(VirtualQGraphicsAnchorLayout* self, bool ownedByLayout);

void QGraphicsAnchorLayout_delete(QGraphicsAnchorLayout* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
