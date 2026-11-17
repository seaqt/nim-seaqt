#include <QAbstractItemModel>
#include <QByteArray>
#include <QList>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <qremoteobjectsource.h>
#include "gen_qremoteobjectsource.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

ModelInfo* ModelInfo_new(ModelInfo* from) {
	return new (std::nothrow) ModelInfo(*from);
}

QAbstractItemModel* ModelInfo_ptr(const ModelInfo* self) {
	return self->ptr;
}

void ModelInfo_setPtr(ModelInfo* self, QAbstractItemModel* ptr) {
	self->ptr = ptr;
}

struct seaqt_string ModelInfo_name(const ModelInfo* self) {
	QString name_ret = self->name;
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray name_b = name_ret.toUtf8();
	struct seaqt_string name_ms;
	name_ms.len = name_b.length();
	name_ms.data = static_cast<char*>(malloc(name_ms.len));
	memcpy(name_ms.data, name_b.data(), name_ms.len);
	return name_ms;
}

void ModelInfo_setName(ModelInfo* self, struct seaqt_string name) {
	QString name_QString = QString::fromUtf8(name.data, name.len);
	self->name = name_QString;
}

struct seaqt_string ModelInfo_roles(const ModelInfo* self) {
	QByteArray roles_qb = self->roles;
	struct seaqt_string roles_ms;
	roles_ms.len = roles_qb.length();
	roles_ms.data = static_cast<char*>(malloc(roles_ms.len));
	memcpy(roles_ms.data, roles_qb.data(), roles_ms.len);
	return roles_ms;
}

void ModelInfo_setRoles(ModelInfo* self, struct seaqt_string roles) {
	QByteArray roles_QByteArray(roles.data, roles.len);
	self->roles = roles_QByteArray;
}

void ModelInfo_operatorAssign(ModelInfo* self, ModelInfo* from) {
	self->operator=(*from);
}

void ModelInfo_delete(ModelInfo* self) {
	delete self;
}

struct seaqt_string SourceApiMap_name(const SourceApiMap* self) {
	QString _ret = self->name();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string SourceApiMap_typeName(const SourceApiMap* self) {
	QString _ret = self->typeName();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string SourceApiMap_className(const SourceApiMap* self) {
	QByteArray _qb = self->className();
	struct seaqt_string _ms;
	_ms.len = _qb.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _qb.data(), _ms.len);
	return _ms;
}

int SourceApiMap_enumCount(const SourceApiMap* self) {
	return self->enumCount();
}

int SourceApiMap_propertyCount(const SourceApiMap* self) {
	return self->propertyCount();
}

int SourceApiMap_signalCount(const SourceApiMap* self) {
	return self->signalCount();
}

int SourceApiMap_methodCount(const SourceApiMap* self) {
	return self->methodCount();
}

int SourceApiMap_sourceEnumIndex(const SourceApiMap* self, int index) {
	return self->sourceEnumIndex(static_cast<int>(index));
}

int SourceApiMap_sourcePropertyIndex(const SourceApiMap* self, int index) {
	return self->sourcePropertyIndex(static_cast<int>(index));
}

int SourceApiMap_sourceSignalIndex(const SourceApiMap* self, int index) {
	return self->sourceSignalIndex(static_cast<int>(index));
}

int SourceApiMap_sourceMethodIndex(const SourceApiMap* self, int index) {
	return self->sourceMethodIndex(static_cast<int>(index));
}

int SourceApiMap_signalParameterCount(const SourceApiMap* self, int index) {
	return self->signalParameterCount(static_cast<int>(index));
}

int SourceApiMap_signalParameterType(const SourceApiMap* self, int sigIndex, int paramIndex) {
	return self->signalParameterType(static_cast<int>(sigIndex), static_cast<int>(paramIndex));
}

struct seaqt_string SourceApiMap_signalSignature(const SourceApiMap* self, int index) {
	const QByteArray _qb = self->signalSignature(static_cast<int>(index));
	struct seaqt_string _ms;
	_ms.len = _qb.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _qb.data(), _ms.len);
	return _ms;
}

struct seaqt_array /* of struct seaqt_string */  SourceApiMap_signalParameterNames(const SourceApiMap* self, int index) {
	QByteArrayList _ret = self->signalParameterNames(static_cast<int>(index));
	// Convert QList<> from C++ memory to manually-managed C memory
	struct seaqt_string* _arr = static_cast<struct seaqt_string*>(malloc(sizeof(struct seaqt_string) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		QByteArray _lv_qb = _ret[i];
		struct seaqt_string _lv_ms;
		_lv_ms.len = _lv_qb.length();
		_lv_ms.data = static_cast<char*>(malloc(_lv_ms.len));
		memcpy(_lv_ms.data, _lv_qb.data(), _lv_ms.len);
		_arr[i] = _lv_ms;
	}
	struct seaqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

int SourceApiMap_methodParameterCount(const SourceApiMap* self, int index) {
	return self->methodParameterCount(static_cast<int>(index));
}

int SourceApiMap_methodParameterType(const SourceApiMap* self, int methodIndex, int paramIndex) {
	return self->methodParameterType(static_cast<int>(methodIndex), static_cast<int>(paramIndex));
}

struct seaqt_string SourceApiMap_methodSignature(const SourceApiMap* self, int index) {
	const QByteArray _qb = self->methodSignature(static_cast<int>(index));
	struct seaqt_string _ms;
	_ms.len = _qb.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _qb.data(), _ms.len);
	return _ms;
}

int SourceApiMap_methodType(const SourceApiMap* self, int index) {
	QMetaMethod::MethodType _ret = self->methodType(static_cast<int>(index));
	return static_cast<int>(_ret);
}

struct seaqt_string SourceApiMap_typeName_index(const SourceApiMap* self, int index) {
	const QByteArray _qb = self->typeName(static_cast<int>(index));
	struct seaqt_string _ms;
	_ms.len = _qb.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _qb.data(), _ms.len);
	return _ms;
}

struct seaqt_array /* of struct seaqt_string */  SourceApiMap_methodParameterNames(const SourceApiMap* self, int index) {
	QByteArrayList _ret = self->methodParameterNames(static_cast<int>(index));
	// Convert QList<> from C++ memory to manually-managed C memory
	struct seaqt_string* _arr = static_cast<struct seaqt_string*>(malloc(sizeof(struct seaqt_string) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		QByteArray _lv_qb = _ret[i];
		struct seaqt_string _lv_ms;
		_lv_ms.len = _lv_qb.length();
		_lv_ms.data = static_cast<char*>(malloc(_lv_ms.len));
		memcpy(_lv_ms.data, _lv_qb.data(), _lv_ms.len);
		_arr[i] = _lv_ms;
	}
	struct seaqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

int SourceApiMap_propertyIndexFromSignal(const SourceApiMap* self, int index) {
	return self->propertyIndexFromSignal(static_cast<int>(index));
}

int SourceApiMap_propertyRawIndexFromSignal(const SourceApiMap* self, int index) {
	return self->propertyRawIndexFromSignal(static_cast<int>(index));
}

struct seaqt_string SourceApiMap_objectSignature(const SourceApiMap* self) {
	QByteArray _qb = self->objectSignature();
	struct seaqt_string _ms;
	_ms.len = _qb.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _qb.data(), _ms.len);
	return _ms;
}

bool SourceApiMap_isDynamic(const SourceApiMap* self) {
	return self->isDynamic();
}

bool SourceApiMap_isAdapterSignal(const SourceApiMap* self, int param1) {
	return self->isAdapterSignal(static_cast<int>(param1));
}

bool SourceApiMap_isAdapterMethod(const SourceApiMap* self, int param1) {
	return self->isAdapterMethod(static_cast<int>(param1));
}

bool SourceApiMap_isAdapterProperty(const SourceApiMap* self, int param1) {
	return self->isAdapterProperty(static_cast<int>(param1));
}

struct seaqt_array /* of ModelInfo* */  SourceApiMap_m_models(const SourceApiMap* self) {
	QList<ModelInfo> m_models_ret = self->m_models;
	// Convert QList<> from C++ memory to manually-managed C memory
	ModelInfo** m_models_arr = static_cast<ModelInfo**>(malloc(sizeof(ModelInfo*) * m_models_ret.length()));
	for (size_t i = 0, e = m_models_ret.length(); i < e; ++i) {
		m_models_arr[i] = new ModelInfo(m_models_ret[i]);
	}
	struct seaqt_array m_models_out;
	m_models_out.len = m_models_ret.length();
	m_models_out.data = static_cast<void*>(m_models_arr);
	return m_models_out;
}

void SourceApiMap_setM_models(SourceApiMap* self, struct seaqt_array /* of ModelInfo* */  m_models) {
	QList<ModelInfo> m_models_QList;
	m_models_QList.reserve(m_models.len);
	ModelInfo** m_models_arr = static_cast<ModelInfo**>(m_models.data);
	for(size_t i = 0; i < m_models.len; ++i) {
		m_models_QList.push_back(*(m_models_arr[i]));
	}
	self->m_models = m_models_QList;
}

struct seaqt_array /* of SourceApiMap* */  SourceApiMap_m_subclasses(const SourceApiMap* self) {
	QList<SourceApiMap *> m_subclasses_ret = self->m_subclasses;
	// Convert QList<> from C++ memory to manually-managed C memory
	SourceApiMap** m_subclasses_arr = static_cast<SourceApiMap**>(malloc(sizeof(SourceApiMap*) * m_subclasses_ret.length()));
	for (size_t i = 0, e = m_subclasses_ret.length(); i < e; ++i) {
		m_subclasses_arr[i] = m_subclasses_ret[i];
	}
	struct seaqt_array m_subclasses_out;
	m_subclasses_out.len = m_subclasses_ret.length();
	m_subclasses_out.data = static_cast<void*>(m_subclasses_arr);
	return m_subclasses_out;
}

void SourceApiMap_setM_subclasses(SourceApiMap* self, struct seaqt_array /* of SourceApiMap* */  m_subclasses) {
	QList<SourceApiMap *> m_subclasses_QList;
	m_subclasses_QList.reserve(m_subclasses.len);
	SourceApiMap** m_subclasses_arr = static_cast<SourceApiMap**>(m_subclasses.data);
	for(size_t i = 0; i < m_subclasses.len; ++i) {
		m_subclasses_QList.push_back(m_subclasses_arr[i]);
	}
	self->m_subclasses = m_subclasses_QList;
}

void SourceApiMap_operatorAssign(SourceApiMap* self, SourceApiMap* from) {
	self->operator=(*from);
}

void SourceApiMap_delete(SourceApiMap* self) {
	delete self;
}

