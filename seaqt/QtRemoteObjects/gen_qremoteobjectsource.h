#pragma once
#ifndef SEAQT_QTREMOTEOBJECTS_GEN_QREMOTEOBJECTSOURCE_H
#define SEAQT_QTREMOTEOBJECTS_GEN_QREMOTEOBJECTSOURCE_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt-runtime.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class ModelInfo;
class QAbstractItemModel;
class SourceApiMap;
#else
typedef struct ModelInfo ModelInfo;
typedef struct QAbstractItemModel QAbstractItemModel;
typedef struct SourceApiMap SourceApiMap;
#endif

ModelInfo* ModelInfo_new(ModelInfo* from);

QAbstractItemModel* ModelInfo_ptr(const ModelInfo* self);
void ModelInfo_setPtr(ModelInfo* self, QAbstractItemModel* ptr);
struct seaqt_string ModelInfo_name(const ModelInfo* self);
void ModelInfo_setName(ModelInfo* self, struct seaqt_string name);
struct seaqt_string ModelInfo_roles(const ModelInfo* self);
void ModelInfo_setRoles(ModelInfo* self, struct seaqt_string roles);
void ModelInfo_operatorAssign(ModelInfo* self, ModelInfo* from);

void ModelInfo_delete(ModelInfo* self);

struct seaqt_string SourceApiMap_name(const SourceApiMap* self);
struct seaqt_string SourceApiMap_typeName(const SourceApiMap* self);
struct seaqt_string SourceApiMap_className(const SourceApiMap* self);
int SourceApiMap_enumCount(const SourceApiMap* self);
int SourceApiMap_propertyCount(const SourceApiMap* self);
int SourceApiMap_signalCount(const SourceApiMap* self);
int SourceApiMap_methodCount(const SourceApiMap* self);
int SourceApiMap_sourceEnumIndex(const SourceApiMap* self, int index);
int SourceApiMap_sourcePropertyIndex(const SourceApiMap* self, int index);
int SourceApiMap_sourceSignalIndex(const SourceApiMap* self, int index);
int SourceApiMap_sourceMethodIndex(const SourceApiMap* self, int index);
int SourceApiMap_signalParameterCount(const SourceApiMap* self, int index);
int SourceApiMap_signalParameterType(const SourceApiMap* self, int sigIndex, int paramIndex);
struct seaqt_string SourceApiMap_signalSignature(const SourceApiMap* self, int index);
struct seaqt_array /* of struct seaqt_string */  SourceApiMap_signalParameterNames(const SourceApiMap* self, int index);
int SourceApiMap_methodParameterCount(const SourceApiMap* self, int index);
int SourceApiMap_methodParameterType(const SourceApiMap* self, int methodIndex, int paramIndex);
struct seaqt_string SourceApiMap_methodSignature(const SourceApiMap* self, int index);
int SourceApiMap_methodType(const SourceApiMap* self, int index);
struct seaqt_string SourceApiMap_typeName_index(const SourceApiMap* self, int index);
struct seaqt_array /* of struct seaqt_string */  SourceApiMap_methodParameterNames(const SourceApiMap* self, int index);
int SourceApiMap_propertyIndexFromSignal(const SourceApiMap* self, int index);
int SourceApiMap_propertyRawIndexFromSignal(const SourceApiMap* self, int index);
struct seaqt_string SourceApiMap_objectSignature(const SourceApiMap* self);
bool SourceApiMap_isDynamic(const SourceApiMap* self);
bool SourceApiMap_isAdapterSignal(const SourceApiMap* self, int param1);
bool SourceApiMap_isAdapterMethod(const SourceApiMap* self, int param1);
bool SourceApiMap_isAdapterProperty(const SourceApiMap* self, int param1);
struct seaqt_array /* of ModelInfo* */  SourceApiMap_m_models(const SourceApiMap* self);
void SourceApiMap_setM_models(SourceApiMap* self, struct seaqt_array /* of ModelInfo* */  m_models);
struct seaqt_array /* of SourceApiMap* */  SourceApiMap_m_subclasses(const SourceApiMap* self);
void SourceApiMap_setM_subclasses(SourceApiMap* self, struct seaqt_array /* of SourceApiMap* */  m_subclasses);
void SourceApiMap_operatorAssign(SourceApiMap* self, SourceApiMap* from);

void SourceApiMap_delete(SourceApiMap* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
