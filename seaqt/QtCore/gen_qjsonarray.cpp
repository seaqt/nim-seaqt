#include <QJsonArray>
#define WORKAROUND_INNER_CLASS_DEFINITION_QJsonArray__const_iterator
#define WORKAROUND_INNER_CLASS_DEFINITION_QJsonArray__iterator
#include <QJsonValue>
#include <QJsonValueConstRef>
#include <QJsonValueRef>
#include <QList>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QVariant>
#include <qjsonarray.h>
#include "gen_qjsonarray.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

QJsonArray* QJsonArray_new() {
	return new (std::nothrow) QJsonArray();
}

QJsonArray* QJsonArray_new_from(QJsonArray* from) {
	return new (std::nothrow) QJsonArray(*from);
}

void QJsonArray_operatorAssign(QJsonArray* self, QJsonArray* from) {
	self->operator=(*from);
}

QJsonArray* QJsonArray_fromStringList(struct seaqt_array /* of struct seaqt_string */  list) {
	QStringList list_QList;
	list_QList.reserve(list.len);
	struct seaqt_string* list_arr = static_cast<struct seaqt_string*>(list.data);
	for(size_t i = 0; i < list.len; ++i) {
		QString list_arr_i_QString = QString::fromUtf8(list_arr[i].data, list_arr[i].len);
		list_QList.push_back(list_arr_i_QString);
	}
	return new QJsonArray(QJsonArray::fromStringList(list_QList));
}

QJsonArray* QJsonArray_fromVariantList(struct seaqt_array /* of QVariant* */  list) {
	QVariantList list_QList;
	list_QList.reserve(list.len);
	QVariant** list_arr = static_cast<QVariant**>(list.data);
	for(size_t i = 0; i < list.len; ++i) {
		list_QList.push_back(*(list_arr[i]));
	}
	return new QJsonArray(QJsonArray::fromVariantList(list_QList));
}

struct seaqt_array /* of QVariant* */  QJsonArray_toVariantList(const QJsonArray* self) {
	QVariantList _ret = self->toVariantList();
	// Convert QList<> from C++ memory to manually-managed C memory
	QVariant** _arr = static_cast<QVariant**>(malloc(sizeof(QVariant*) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		_arr[i] = new QVariant(_ret[i]);
	}
	struct seaqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

ptrdiff_t QJsonArray_size(const QJsonArray* self) {
	qsizetype _ret = self->size();
	return static_cast<ptrdiff_t>(_ret);
}

ptrdiff_t QJsonArray_count(const QJsonArray* self) {
	qsizetype _ret = self->count();
	return static_cast<ptrdiff_t>(_ret);
}

bool QJsonArray_isEmpty(const QJsonArray* self) {
	return self->isEmpty();
}

QJsonValue* QJsonArray_at(const QJsonArray* self, ptrdiff_t i) {
	return new QJsonValue(self->at((qsizetype)(i)));
}

QJsonValue* QJsonArray_first(const QJsonArray* self) {
	return new QJsonValue(self->first());
}

QJsonValue* QJsonArray_last(const QJsonArray* self) {
	return new QJsonValue(self->last());
}

void QJsonArray_prepend(QJsonArray* self, QJsonValue* value) {
	self->prepend(*value);
}

void QJsonArray_append(QJsonArray* self, QJsonValue* value) {
	self->append(*value);
}

void QJsonArray_removeAt(QJsonArray* self, ptrdiff_t i) {
	self->removeAt((qsizetype)(i));
}

QJsonValue* QJsonArray_takeAt(QJsonArray* self, ptrdiff_t i) {
	return new QJsonValue(self->takeAt((qsizetype)(i)));
}

void QJsonArray_removeFirst(QJsonArray* self) {
	self->removeFirst();
}

void QJsonArray_removeLast(QJsonArray* self) {
	self->removeLast();
}

void QJsonArray_insert_i_value(QJsonArray* self, ptrdiff_t i, QJsonValue* value) {
	self->insert((qsizetype)(i), *value);
}

void QJsonArray_replace(QJsonArray* self, ptrdiff_t i, QJsonValue* value) {
	self->replace((qsizetype)(i), *value);
}

bool QJsonArray_contains(const QJsonArray* self, QJsonValue* element) {
	return self->contains(*element);
}

QJsonValueRef* QJsonArray_operatorSubscript_qsizetype(QJsonArray* self, ptrdiff_t i) {
	return new QJsonValueRef(self->operator[]((qsizetype)(i)));
}

QJsonValue* QJsonArray_operatorSubscript_const_qsizetype(const QJsonArray* self, ptrdiff_t i) {
	return new QJsonValue(self->operator[]((qsizetype)(i)));
}

void QJsonArray_swap(QJsonArray* self, QJsonArray* other) {
	self->swap(*other);
}

QJsonArray__iterator* QJsonArray_begin(QJsonArray* self) {
	return new QJsonArray::iterator(self->begin());
}

QJsonArray__const_iterator* QJsonArray_begin_const(const QJsonArray* self) {
	return new QJsonArray::const_iterator(self->begin());
}

QJsonArray__const_iterator* QJsonArray_constBegin(const QJsonArray* self) {
	return new QJsonArray::const_iterator(self->constBegin());
}

QJsonArray__const_iterator* QJsonArray_cbegin(const QJsonArray* self) {
	return new QJsonArray::const_iterator(self->cbegin());
}

QJsonArray__iterator* QJsonArray_end(QJsonArray* self) {
	return new QJsonArray::iterator(self->end());
}

QJsonArray__const_iterator* QJsonArray_end_const(const QJsonArray* self) {
	return new QJsonArray::const_iterator(self->end());
}

QJsonArray__const_iterator* QJsonArray_constEnd(const QJsonArray* self) {
	return new QJsonArray::const_iterator(self->constEnd());
}

QJsonArray__const_iterator* QJsonArray_cend(const QJsonArray* self) {
	return new QJsonArray::const_iterator(self->cend());
}

QJsonArray__iterator* QJsonArray_insert_before_value(QJsonArray* self, QJsonArray__iterator* before, QJsonValue* value) {
	return new QJsonArray::iterator(self->insert(*before, *value));
}

QJsonArray__iterator* QJsonArray_erase(QJsonArray* self, QJsonArray__iterator* it) {
	return new QJsonArray::iterator(self->erase(*it));
}

QJsonArray* QJsonArray_operatorPlus(const QJsonArray* self, QJsonValue* v) {
	return new QJsonArray(self->operator+(*v));
}

QJsonArray* QJsonArray_operatorPlusAssign(QJsonArray* self, QJsonValue* v) {
	QJsonArray& _ret = self->operator+=(*v);
	// Cast returned reference into pointer
	return &_ret;
}

QJsonArray* QJsonArray_operatorShiftLeft(QJsonArray* self, QJsonValue* v) {
	QJsonArray& _ret = self->operator<<(*v);
	// Cast returned reference into pointer
	return &_ret;
}

void QJsonArray_push_back(QJsonArray* self, QJsonValue* t) {
	self->push_back(*t);
}

void QJsonArray_push_front(QJsonArray* self, QJsonValue* t) {
	self->push_front(*t);
}

void QJsonArray_pop_front(QJsonArray* self) {
	self->pop_front();
}

void QJsonArray_pop_back(QJsonArray* self) {
	self->pop_back();
}

bool QJsonArray_empty(const QJsonArray* self) {
	return self->empty();
}

void QJsonArray_delete(QJsonArray* self) {
	delete self;
}

QJsonArray__iterator* QJsonArray__iterator_new() {
	return new (std::nothrow) QJsonArray__iterator();
}

QJsonArray__iterator* QJsonArray__iterator_new_array_index(QJsonArray* array, ptrdiff_t index) {
	return new (std::nothrow) QJsonArray__iterator(array, (qsizetype)(index));
}

QJsonArray__iterator* QJsonArray__iterator_new_from(QJsonArray__iterator* from) {
	return new (std::nothrow) QJsonArray__iterator(*from);
}

void QJsonArray__iterator_operatorAssign(QJsonArray__iterator* self, QJsonArray__iterator* from) {
	self->operator=(*from);
}

QJsonValueRef* QJsonArray__iterator_operatorMultiply(const QJsonArray__iterator* self) {
	return new QJsonValueRef(self->operator*());
}

QJsonValueConstRef* QJsonArray__iterator_operatorMinusGreater_const(const QJsonArray__iterator* self) {
	return (QJsonValueConstRef*) self->operator->();
}

QJsonValueRef* QJsonArray__iterator_operatorMinusGreater(QJsonArray__iterator* self) {
	return self->operator->();
}

QJsonValueRef* QJsonArray__iterator_operatorSubscript(const QJsonArray__iterator* self, ptrdiff_t j) {
	return new QJsonValueRef(self->operator[]((qsizetype)(j)));
}

QJsonArray__iterator* QJsonArray__iterator_operatorPlusPlus(QJsonArray__iterator* self) {
	QJsonArray::iterator& _ret = self->operator++();
	// Cast returned reference into pointer
	return &_ret;
}

QJsonArray__iterator* QJsonArray__iterator_operatorPlusPlus_int(QJsonArray__iterator* self, int param1) {
	return new QJsonArray::iterator(self->operator++(static_cast<int>(param1)));
}

QJsonArray__iterator* QJsonArray__iterator_operatorMinusMinus(QJsonArray__iterator* self) {
	QJsonArray::iterator& _ret = self->operator--();
	// Cast returned reference into pointer
	return &_ret;
}

QJsonArray__iterator* QJsonArray__iterator_operatorMinusMinus_int(QJsonArray__iterator* self, int param1) {
	return new QJsonArray::iterator(self->operator--(static_cast<int>(param1)));
}

QJsonArray__iterator* QJsonArray__iterator_operatorPlusAssign(QJsonArray__iterator* self, ptrdiff_t j) {
	QJsonArray::iterator& _ret = self->operator+=((qsizetype)(j));
	// Cast returned reference into pointer
	return &_ret;
}

QJsonArray__iterator* QJsonArray__iterator_operatorMinusAssign(QJsonArray__iterator* self, ptrdiff_t j) {
	QJsonArray::iterator& _ret = self->operator-=((qsizetype)(j));
	// Cast returned reference into pointer
	return &_ret;
}

QJsonArray__iterator* QJsonArray__iterator_operatorPlus(const QJsonArray__iterator* self, ptrdiff_t j) {
	return new QJsonArray::iterator(self->operator+((qsizetype)(j)));
}

QJsonArray__iterator* QJsonArray__iterator_operatorMinus_qsizetype(const QJsonArray__iterator* self, ptrdiff_t j) {
	return new QJsonArray::iterator(self->operator-((qsizetype)(j)));
}

ptrdiff_t QJsonArray__iterator_operatorMinus_QJsonArray_iterator(const QJsonArray__iterator* self, QJsonArray__iterator* j) {
	qsizetype _ret = self->operator-(*j);
	return static_cast<ptrdiff_t>(_ret);
}

void QJsonArray__iterator_delete(QJsonArray__iterator* self) {
	delete self;
}

QJsonArray__const_iterator* QJsonArray__const_iterator_new() {
	return new (std::nothrow) QJsonArray__const_iterator();
}

QJsonArray__const_iterator* QJsonArray__const_iterator_new_array_index(QJsonArray* array, ptrdiff_t index) {
	return new (std::nothrow) QJsonArray__const_iterator(array, (qsizetype)(index));
}

QJsonArray__const_iterator* QJsonArray__const_iterator_new_o(QJsonArray__iterator* o) {
	return new (std::nothrow) QJsonArray__const_iterator(*o);
}

QJsonArray__const_iterator* QJsonArray__const_iterator_new_from(QJsonArray__const_iterator* from) {
	return new (std::nothrow) QJsonArray__const_iterator(*from);
}

void QJsonArray__const_iterator_operatorAssign(QJsonArray__const_iterator* self, QJsonArray__const_iterator* from) {
	self->operator=(*from);
}

QJsonValueConstRef* QJsonArray__const_iterator_operatorMultiply(const QJsonArray__const_iterator* self) {
	return new QJsonValueConstRef(self->operator*());
}

QJsonValueConstRef* QJsonArray__const_iterator_operatorMinusGreater(const QJsonArray__const_iterator* self) {
	return (QJsonValueConstRef*) self->operator->();
}

QJsonValueConstRef* QJsonArray__const_iterator_operatorSubscript(const QJsonArray__const_iterator* self, ptrdiff_t j) {
	return new QJsonValueConstRef(self->operator[]((qsizetype)(j)));
}

QJsonArray__const_iterator* QJsonArray__const_iterator_operatorPlusPlus(QJsonArray__const_iterator* self) {
	QJsonArray::const_iterator& _ret = self->operator++();
	// Cast returned reference into pointer
	return &_ret;
}

QJsonArray__const_iterator* QJsonArray__const_iterator_operatorPlusPlus_int(QJsonArray__const_iterator* self, int param1) {
	return new QJsonArray::const_iterator(self->operator++(static_cast<int>(param1)));
}

QJsonArray__const_iterator* QJsonArray__const_iterator_operatorMinusMinus(QJsonArray__const_iterator* self) {
	QJsonArray::const_iterator& _ret = self->operator--();
	// Cast returned reference into pointer
	return &_ret;
}

QJsonArray__const_iterator* QJsonArray__const_iterator_operatorMinusMinus_int(QJsonArray__const_iterator* self, int param1) {
	return new QJsonArray::const_iterator(self->operator--(static_cast<int>(param1)));
}

QJsonArray__const_iterator* QJsonArray__const_iterator_operatorPlusAssign(QJsonArray__const_iterator* self, ptrdiff_t j) {
	QJsonArray::const_iterator& _ret = self->operator+=((qsizetype)(j));
	// Cast returned reference into pointer
	return &_ret;
}

QJsonArray__const_iterator* QJsonArray__const_iterator_operatorMinusAssign(QJsonArray__const_iterator* self, ptrdiff_t j) {
	QJsonArray::const_iterator& _ret = self->operator-=((qsizetype)(j));
	// Cast returned reference into pointer
	return &_ret;
}

QJsonArray__const_iterator* QJsonArray__const_iterator_operatorPlus(const QJsonArray__const_iterator* self, ptrdiff_t j) {
	return new QJsonArray::const_iterator(self->operator+((qsizetype)(j)));
}

QJsonArray__const_iterator* QJsonArray__const_iterator_operatorMinus_qsizetype(const QJsonArray__const_iterator* self, ptrdiff_t j) {
	return new QJsonArray::const_iterator(self->operator-((qsizetype)(j)));
}

ptrdiff_t QJsonArray__const_iterator_operatorMinus_QJsonArray_const_iterator(const QJsonArray__const_iterator* self, QJsonArray__const_iterator* j) {
	qsizetype _ret = self->operator-(*j);
	return static_cast<ptrdiff_t>(_ret);
}

void QJsonArray__const_iterator_delete(QJsonArray__const_iterator* self) {
	delete self;
}

