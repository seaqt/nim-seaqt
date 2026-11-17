#pragma once
#ifndef SEAQT_QTUIPLUGIN_GEN_CUSTOMWIDGET_H
#define SEAQT_QTUIPLUGIN_GEN_CUSTOMWIDGET_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt-runtime.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QDesignerCustomWidgetCollectionInterface;
class QDesignerCustomWidgetInterface;
class QIcon;
class QWidget;
#else
typedef struct QDesignerCustomWidgetCollectionInterface QDesignerCustomWidgetCollectionInterface;
typedef struct QDesignerCustomWidgetInterface QDesignerCustomWidgetInterface;
typedef struct QIcon QIcon;
typedef struct QWidget QWidget;
#endif

struct seaqt_string QDesignerCustomWidgetInterface_name(const QDesignerCustomWidgetInterface* self);
struct seaqt_string QDesignerCustomWidgetInterface_group(const QDesignerCustomWidgetInterface* self);
struct seaqt_string QDesignerCustomWidgetInterface_toolTip(const QDesignerCustomWidgetInterface* self);
struct seaqt_string QDesignerCustomWidgetInterface_whatsThis(const QDesignerCustomWidgetInterface* self);
struct seaqt_string QDesignerCustomWidgetInterface_includeFile(const QDesignerCustomWidgetInterface* self);
QIcon* QDesignerCustomWidgetInterface_icon(const QDesignerCustomWidgetInterface* self);
bool QDesignerCustomWidgetInterface_isContainer(const QDesignerCustomWidgetInterface* self);
QWidget* QDesignerCustomWidgetInterface_createWidget(QDesignerCustomWidgetInterface* self, QWidget* parent);
bool QDesignerCustomWidgetInterface_isInitialized(const QDesignerCustomWidgetInterface* self);
struct seaqt_string QDesignerCustomWidgetInterface_domXml(const QDesignerCustomWidgetInterface* self);
struct seaqt_string QDesignerCustomWidgetInterface_codeTemplate(const QDesignerCustomWidgetInterface* self);

void QDesignerCustomWidgetInterface_delete(QDesignerCustomWidgetInterface* self);

void QDesignerCustomWidgetCollectionInterface_operatorAssign(QDesignerCustomWidgetCollectionInterface* self, QDesignerCustomWidgetCollectionInterface* param1);

void QDesignerCustomWidgetCollectionInterface_delete(QDesignerCustomWidgetCollectionInterface* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
