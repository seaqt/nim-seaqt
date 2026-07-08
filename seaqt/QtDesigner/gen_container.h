#pragma once
#ifndef SEAQT_QTDESIGNER_GEN_CONTAINER_H
#define SEAQT_QTDESIGNER_GEN_CONTAINER_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt-runtime.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QDesignerContainerExtension;
class QWidget;
#else
typedef struct QDesignerContainerExtension QDesignerContainerExtension;
typedef struct QWidget QWidget;
#endif

typedef struct VirtualQDesignerContainerExtension VirtualQDesignerContainerExtension;
typedef struct QDesignerContainerExtension_VTable{
	void (*destructor)(VirtualQDesignerContainerExtension* self);
	int (*count)(const VirtualQDesignerContainerExtension* self);
	QWidget* (*widget)(const VirtualQDesignerContainerExtension* self, int index);
	int (*currentIndex)(const VirtualQDesignerContainerExtension* self);
	void (*setCurrentIndex)(VirtualQDesignerContainerExtension* self, int index);
	bool (*canAddWidget)(const VirtualQDesignerContainerExtension* self);
	void (*addWidget)(VirtualQDesignerContainerExtension* self, QWidget* widget);
	void (*insertWidget)(VirtualQDesignerContainerExtension* self, int index, QWidget* widget);
	bool (*canRemove)(const VirtualQDesignerContainerExtension* self, int index);
	void (*remove)(VirtualQDesignerContainerExtension* self, int index);
}QDesignerContainerExtension_VTable;

void* QDesignerContainerExtension_vdata(VirtualQDesignerContainerExtension* self);
VirtualQDesignerContainerExtension* vdata_QDesignerContainerExtension(void* vdata);

VirtualQDesignerContainerExtension* QDesignerContainerExtension_new(const QDesignerContainerExtension_VTable* vtbl, size_t vdata);

int QDesignerContainerExtension_count(const QDesignerContainerExtension* self);
QWidget* QDesignerContainerExtension_widget(const QDesignerContainerExtension* self, int index);
int QDesignerContainerExtension_currentIndex(const QDesignerContainerExtension* self);
void QDesignerContainerExtension_setCurrentIndex(QDesignerContainerExtension* self, int index);
bool QDesignerContainerExtension_canAddWidget(const QDesignerContainerExtension* self);
void QDesignerContainerExtension_addWidget(QDesignerContainerExtension* self, QWidget* widget);
void QDesignerContainerExtension_insertWidget(QDesignerContainerExtension* self, int index, QWidget* widget);
bool QDesignerContainerExtension_canRemove(const QDesignerContainerExtension* self, int index);
void QDesignerContainerExtension_remove(QDesignerContainerExtension* self, int index);

int QDesignerContainerExtension_virtualbase_count(const VirtualQDesignerContainerExtension* self);
QWidget* QDesignerContainerExtension_virtualbase_widget(const VirtualQDesignerContainerExtension* self, int index);
int QDesignerContainerExtension_virtualbase_currentIndex(const VirtualQDesignerContainerExtension* self);
void QDesignerContainerExtension_virtualbase_setCurrentIndex(VirtualQDesignerContainerExtension* self, int index);
bool QDesignerContainerExtension_virtualbase_canAddWidget(const VirtualQDesignerContainerExtension* self);
void QDesignerContainerExtension_virtualbase_addWidget(VirtualQDesignerContainerExtension* self, QWidget* widget);
void QDesignerContainerExtension_virtualbase_insertWidget(VirtualQDesignerContainerExtension* self, int index, QWidget* widget);
bool QDesignerContainerExtension_virtualbase_canRemove(const VirtualQDesignerContainerExtension* self, int index);
void QDesignerContainerExtension_virtualbase_remove(VirtualQDesignerContainerExtension* self, int index);

void QDesignerContainerExtension_delete(QDesignerContainerExtension* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
