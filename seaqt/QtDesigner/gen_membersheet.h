#pragma once
#ifndef SEAQT_QTDESIGNER_GEN_MEMBERSHEET_H
#define SEAQT_QTDESIGNER_GEN_MEMBERSHEET_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt-runtime.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QDesignerMemberSheetExtension;
#else
typedef struct QDesignerMemberSheetExtension QDesignerMemberSheetExtension;
#endif

typedef struct VirtualQDesignerMemberSheetExtension VirtualQDesignerMemberSheetExtension;
typedef struct QDesignerMemberSheetExtension_VTable{
	void (*destructor)(VirtualQDesignerMemberSheetExtension* self);
	int (*count)(const VirtualQDesignerMemberSheetExtension* self);
	int (*indexOf)(const VirtualQDesignerMemberSheetExtension* self, struct seaqt_string name);
	struct seaqt_string (*memberName)(const VirtualQDesignerMemberSheetExtension* self, int index);
	struct seaqt_string (*memberGroup)(const VirtualQDesignerMemberSheetExtension* self, int index);
	void (*setMemberGroup)(VirtualQDesignerMemberSheetExtension* self, int index, struct seaqt_string group);
	bool (*isVisible)(const VirtualQDesignerMemberSheetExtension* self, int index);
	void (*setVisible)(VirtualQDesignerMemberSheetExtension* self, int index, bool b);
	bool (*isSignal)(const VirtualQDesignerMemberSheetExtension* self, int index);
	bool (*isSlot)(const VirtualQDesignerMemberSheetExtension* self, int index);
	bool (*inheritedFromWidget)(const VirtualQDesignerMemberSheetExtension* self, int index);
	struct seaqt_string (*declaredInClass)(const VirtualQDesignerMemberSheetExtension* self, int index);
	struct seaqt_string (*signature)(const VirtualQDesignerMemberSheetExtension* self, int index);
	struct seaqt_array /* of struct seaqt_string */  (*parameterTypes)(const VirtualQDesignerMemberSheetExtension* self, int index);
	struct seaqt_array /* of struct seaqt_string */  (*parameterNames)(const VirtualQDesignerMemberSheetExtension* self, int index);
}QDesignerMemberSheetExtension_VTable;

void* QDesignerMemberSheetExtension_vdata(VirtualQDesignerMemberSheetExtension* self);
VirtualQDesignerMemberSheetExtension* vdata_QDesignerMemberSheetExtension(void* vdata);

VirtualQDesignerMemberSheetExtension* QDesignerMemberSheetExtension_new(const QDesignerMemberSheetExtension_VTable* vtbl, size_t vdata);

int QDesignerMemberSheetExtension_count(const QDesignerMemberSheetExtension* self);
int QDesignerMemberSheetExtension_indexOf(const QDesignerMemberSheetExtension* self, struct seaqt_string name);
struct seaqt_string QDesignerMemberSheetExtension_memberName(const QDesignerMemberSheetExtension* self, int index);
struct seaqt_string QDesignerMemberSheetExtension_memberGroup(const QDesignerMemberSheetExtension* self, int index);
void QDesignerMemberSheetExtension_setMemberGroup(QDesignerMemberSheetExtension* self, int index, struct seaqt_string group);
bool QDesignerMemberSheetExtension_isVisible(const QDesignerMemberSheetExtension* self, int index);
void QDesignerMemberSheetExtension_setVisible(QDesignerMemberSheetExtension* self, int index, bool b);
bool QDesignerMemberSheetExtension_isSignal(const QDesignerMemberSheetExtension* self, int index);
bool QDesignerMemberSheetExtension_isSlot(const QDesignerMemberSheetExtension* self, int index);
bool QDesignerMemberSheetExtension_inheritedFromWidget(const QDesignerMemberSheetExtension* self, int index);
struct seaqt_string QDesignerMemberSheetExtension_declaredInClass(const QDesignerMemberSheetExtension* self, int index);
struct seaqt_string QDesignerMemberSheetExtension_signature(const QDesignerMemberSheetExtension* self, int index);
struct seaqt_array /* of struct seaqt_string */  QDesignerMemberSheetExtension_parameterTypes(const QDesignerMemberSheetExtension* self, int index);
struct seaqt_array /* of struct seaqt_string */  QDesignerMemberSheetExtension_parameterNames(const QDesignerMemberSheetExtension* self, int index);

int QDesignerMemberSheetExtension_virtualbase_count(const VirtualQDesignerMemberSheetExtension* self);
int QDesignerMemberSheetExtension_virtualbase_indexOf(const VirtualQDesignerMemberSheetExtension* self, struct seaqt_string name);
struct seaqt_string QDesignerMemberSheetExtension_virtualbase_memberName(const VirtualQDesignerMemberSheetExtension* self, int index);
struct seaqt_string QDesignerMemberSheetExtension_virtualbase_memberGroup(const VirtualQDesignerMemberSheetExtension* self, int index);
void QDesignerMemberSheetExtension_virtualbase_setMemberGroup(VirtualQDesignerMemberSheetExtension* self, int index, struct seaqt_string group);
bool QDesignerMemberSheetExtension_virtualbase_isVisible(const VirtualQDesignerMemberSheetExtension* self, int index);
void QDesignerMemberSheetExtension_virtualbase_setVisible(VirtualQDesignerMemberSheetExtension* self, int index, bool b);
bool QDesignerMemberSheetExtension_virtualbase_isSignal(const VirtualQDesignerMemberSheetExtension* self, int index);
bool QDesignerMemberSheetExtension_virtualbase_isSlot(const VirtualQDesignerMemberSheetExtension* self, int index);
bool QDesignerMemberSheetExtension_virtualbase_inheritedFromWidget(const VirtualQDesignerMemberSheetExtension* self, int index);
struct seaqt_string QDesignerMemberSheetExtension_virtualbase_declaredInClass(const VirtualQDesignerMemberSheetExtension* self, int index);
struct seaqt_string QDesignerMemberSheetExtension_virtualbase_signature(const VirtualQDesignerMemberSheetExtension* self, int index);
struct seaqt_array /* of struct seaqt_string */  QDesignerMemberSheetExtension_virtualbase_parameterTypes(const VirtualQDesignerMemberSheetExtension* self, int index);
struct seaqt_array /* of struct seaqt_string */  QDesignerMemberSheetExtension_virtualbase_parameterNames(const VirtualQDesignerMemberSheetExtension* self, int index);

void QDesignerMemberSheetExtension_delete(QDesignerMemberSheetExtension* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
