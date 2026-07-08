#pragma once
#ifndef SEAQT_QTDESIGNER_GEN_ABSTRACTOPTIONSPAGE_H
#define SEAQT_QTDESIGNER_GEN_ABSTRACTOPTIONSPAGE_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt-runtime.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QDesignerOptionsPageInterface;
class QWidget;
#else
typedef struct QDesignerOptionsPageInterface QDesignerOptionsPageInterface;
typedef struct QWidget QWidget;
#endif

typedef struct VirtualQDesignerOptionsPageInterface VirtualQDesignerOptionsPageInterface;
typedef struct QDesignerOptionsPageInterface_VTable{
	void (*destructor)(VirtualQDesignerOptionsPageInterface* self);
	struct seaqt_string (*name)(const VirtualQDesignerOptionsPageInterface* self);
	QWidget* (*createPage)(VirtualQDesignerOptionsPageInterface* self, QWidget* parent);
	void (*apply)(VirtualQDesignerOptionsPageInterface* self);
	void (*finish)(VirtualQDesignerOptionsPageInterface* self);
}QDesignerOptionsPageInterface_VTable;

void* QDesignerOptionsPageInterface_vdata(VirtualQDesignerOptionsPageInterface* self);
VirtualQDesignerOptionsPageInterface* vdata_QDesignerOptionsPageInterface(void* vdata);

VirtualQDesignerOptionsPageInterface* QDesignerOptionsPageInterface_new(const QDesignerOptionsPageInterface_VTable* vtbl, size_t vdata);

struct seaqt_string QDesignerOptionsPageInterface_name(const QDesignerOptionsPageInterface* self);
QWidget* QDesignerOptionsPageInterface_createPage(QDesignerOptionsPageInterface* self, QWidget* parent);
void QDesignerOptionsPageInterface_apply(QDesignerOptionsPageInterface* self);
void QDesignerOptionsPageInterface_finish(QDesignerOptionsPageInterface* self);

struct seaqt_string QDesignerOptionsPageInterface_virtualbase_name(const VirtualQDesignerOptionsPageInterface* self);
QWidget* QDesignerOptionsPageInterface_virtualbase_createPage(VirtualQDesignerOptionsPageInterface* self, QWidget* parent);
void QDesignerOptionsPageInterface_virtualbase_apply(VirtualQDesignerOptionsPageInterface* self);
void QDesignerOptionsPageInterface_virtualbase_finish(VirtualQDesignerOptionsPageInterface* self);

void QDesignerOptionsPageInterface_delete(QDesignerOptionsPageInterface* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
