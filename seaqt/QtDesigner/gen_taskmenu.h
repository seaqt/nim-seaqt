#pragma once
#ifndef SEAQT_QTDESIGNER_GEN_TASKMENU_H
#define SEAQT_QTDESIGNER_GEN_TASKMENU_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt-runtime.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QAction;
class QDesignerTaskMenuExtension;
#else
typedef struct QAction QAction;
typedef struct QDesignerTaskMenuExtension QDesignerTaskMenuExtension;
#endif

typedef struct VirtualQDesignerTaskMenuExtension VirtualQDesignerTaskMenuExtension;
typedef struct QDesignerTaskMenuExtension_VTable{
	void (*destructor)(VirtualQDesignerTaskMenuExtension* self);
	QAction* (*preferredEditAction)(const VirtualQDesignerTaskMenuExtension* self);
	struct seaqt_array /* of QAction* */  (*taskActions)(const VirtualQDesignerTaskMenuExtension* self);
}QDesignerTaskMenuExtension_VTable;

void* QDesignerTaskMenuExtension_vdata(VirtualQDesignerTaskMenuExtension* self);
VirtualQDesignerTaskMenuExtension* vdata_QDesignerTaskMenuExtension(void* vdata);

VirtualQDesignerTaskMenuExtension* QDesignerTaskMenuExtension_new(const QDesignerTaskMenuExtension_VTable* vtbl, size_t vdata);

QAction* QDesignerTaskMenuExtension_preferredEditAction(const QDesignerTaskMenuExtension* self);
struct seaqt_array /* of QAction* */  QDesignerTaskMenuExtension_taskActions(const QDesignerTaskMenuExtension* self);

QAction* QDesignerTaskMenuExtension_virtualbase_preferredEditAction(const VirtualQDesignerTaskMenuExtension* self);
struct seaqt_array /* of QAction* */  QDesignerTaskMenuExtension_virtualbase_taskActions(const VirtualQDesignerTaskMenuExtension* self);

void QDesignerTaskMenuExtension_delete(QDesignerTaskMenuExtension* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
