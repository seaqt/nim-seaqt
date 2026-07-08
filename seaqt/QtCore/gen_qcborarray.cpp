#include <QCborArray>
#define WORKAROUND_INNER_CLASS_DEFINITION_QCborArray__ConstIterator
#define WORKAROUND_INNER_CLASS_DEFINITION_QCborArray__Iterator
#include <QCborValue>
#include <QCborValueConstRef>
#include <QCborValueRef>
#include <QJsonArray>
#include <QList>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QVariant>
#include <qcborarray.h>
#include "gen_qcborarray.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

QCborArray* QCborArray_new() {
	return new (std::nothrow) QCborArray();
}

QCborArray* QCborArray_new_from(QCborArray* from) {
	return new (std::nothrow) QCborArray(*from);
}

void QCborArray_operatorAssign(QCborArray* self, QCborArray* from) {
	self->operator=(*from);
}

void QCborArray_swap(QCborArray* self, QCborArray* other) {
	self->swap(*other);
}

QCborValue* QCborArray_toCborValue(const QCborArray* self) {
	return new QCborValue(self->toCborValue());
}

ptrdiff_t QCborArray_size(const QCborArray* self) {
	qsizetype _ret = self->size();
	return static_cast<ptrdiff_t>(_ret);
}

bool QCborArray_isEmpty(const QCborArray* self) {
	return self->isEmpty();
}

void QCborArray_clear(QCborArray* self) {
	self->clear();
}

QCborValue* QCborArray_at(const QCborArray* self, ptrdiff_t i) {
	return new QCborValue(self->at((qsizetype)(i)));
}

QCborValue* QCborArray_first_const(const QCborArray* self) {
	return new QCborValue(self->first());
}

QCborValue* QCborArray_last_const(const QCborArray* self) {
	return new QCborValue(self->last());
}

QCborValue* QCborArray_operatorSubscript_const_qsizetype(const QCborArray* self, ptrdiff_t i) {
	return new QCborValue(self->operator[]((qsizetype)(i)));
}

QCborValueRef* QCborArray_first(QCborArray* self) {
	return new QCborValueRef(self->first());
}

QCborValueRef* QCborArray_last(QCborArray* self) {
	return new QCborValueRef(self->last());
}

QCborValueRef* QCborArray_operatorSubscript_qsizetype(QCborArray* self, ptrdiff_t i) {
	return new QCborValueRef(self->operator[]((qsizetype)(i)));
}

void QCborArray_insert_qsizetype_QCborValue(QCborArray* self, ptrdiff_t i, QCborValue* value) {
	self->insert((qsizetype)(i), *value);
}

void QCborArray_prepend(QCborArray* self, QCborValue* value) {
	self->prepend(*value);
}

void QCborArray_append(QCborArray* self, QCborValue* value) {
	self->append(*value);
}

QCborValue* QCborArray_extract_QCborArray_ConstIterator(QCborArray* self, QCborArray__ConstIterator* it) {
	return new QCborValue(self->extract(*it));
}

QCborValue* QCborArray_extract_QCborArray_Iterator(QCborArray* self, QCborArray__Iterator* it) {
	return new QCborValue(self->extract(*it));
}

void QCborArray_removeAt(QCborArray* self, ptrdiff_t i) {
	self->removeAt((qsizetype)(i));
}

QCborValue* QCborArray_takeAt(QCborArray* self, ptrdiff_t i) {
	return new QCborValue(self->takeAt((qsizetype)(i)));
}

void QCborArray_removeFirst(QCborArray* self) {
	self->removeFirst();
}

void QCborArray_removeLast(QCborArray* self) {
	self->removeLast();
}

QCborValue* QCborArray_takeFirst(QCborArray* self) {
	return new QCborValue(self->takeFirst());
}

QCborValue* QCborArray_takeLast(QCborArray* self) {
	return new QCborValue(self->takeLast());
}

bool QCborArray_contains(const QCborArray* self, QCborValue* value) {
	return self->contains(*value);
}

int QCborArray_compare(const QCborArray* self, QCborArray* other) {
	return self->compare(*other);
}

QCborArray__Iterator* QCborArray_begin(QCborArray* self) {
	return new QCborArray::Iterator(self->begin());
}

QCborArray__ConstIterator* QCborArray_constBegin(const QCborArray* self) {
	return new QCborArray::ConstIterator(self->constBegin());
}

QCborArray__ConstIterator* QCborArray_begin_const(const QCborArray* self) {
	return new QCborArray::ConstIterator(self->begin());
}

QCborArray__ConstIterator* QCborArray_cbegin(const QCborArray* self) {
	return new QCborArray::ConstIterator(self->cbegin());
}

QCborArray__Iterator* QCborArray_end(QCborArray* self) {
	return new QCborArray::Iterator(self->end());
}

QCborArray__ConstIterator* QCborArray_constEnd(const QCborArray* self) {
	return new QCborArray::ConstIterator(self->constEnd());
}

QCborArray__ConstIterator* QCborArray_end_const(const QCborArray* self) {
	return new QCborArray::ConstIterator(self->end());
}

QCborArray__ConstIterator* QCborArray_cend(const QCborArray* self) {
	return new QCborArray::ConstIterator(self->cend());
}

QCborArray__Iterator* QCborArray_insert_QCborArray_iterator_QCborValue(QCborArray* self, QCborArray__Iterator* before, QCborValue* value) {
	return new QCborArray::Iterator(self->insert(*before, *value));
}

QCborArray__Iterator* QCborArray_insert_QCborArray_const_iterator_QCborValue(QCborArray* self, QCborArray__ConstIterator* before, QCborValue* value) {
	return new QCborArray::Iterator(self->insert(*before, *value));
}

QCborArray__Iterator* QCborArray_erase_QCborArray_iterator(QCborArray* self, QCborArray__Iterator* it) {
	return new QCborArray::Iterator(self->erase(*it));
}

QCborArray__Iterator* QCborArray_erase_QCborArray_const_iterator(QCborArray* self, QCborArray__ConstIterator* it) {
	return new QCborArray::Iterator(self->erase(*it));
}

void QCborArray_push_back(QCborArray* self, QCborValue* t) {
	self->push_back(*t);
}

void QCborArray_push_front(QCborArray* self, QCborValue* t) {
	self->push_front(*t);
}

void QCborArray_pop_front(QCborArray* self) {
	self->pop_front();
}

void QCborArray_pop_back(QCborArray* self) {
	self->pop_back();
}

bool QCborArray_empty(const QCborArray* self) {
	return self->empty();
}

QCborArray* QCborArray_operatorPlus(const QCborArray* self, QCborValue* v) {
	return new QCborArray(self->operator+(*v));
}

QCborArray* QCborArray_operatorPlusAssign(QCborArray* self, QCborValue* v) {
	QCborArray& _ret = self->operator+=(*v);
	// Cast returned reference into pointer
	return &_ret;
}

QCborArray* QCborArray_operatorShiftLeft(QCborArray* self, QCborValue* v) {
	QCborArray& _ret = self->operator<<(*v);
	// Cast returned reference into pointer
	return &_ret;
}

QCborArray* QCborArray_fromStringList(struct seaqt_array /* of struct seaqt_string */  list) {
	QStringList list_QList;
	list_QList.reserve(list.len);
	struct seaqt_string* list_arr = static_cast<struct seaqt_string*>(list.data);
	for(size_t i = 0; i < list.len; ++i) {
		QString list_arr_i_QString = QString::fromUtf8(list_arr[i].data, list_arr[i].len);
		list_QList.push_back(list_arr_i_QString);
	}
	return new QCborArray(QCborArray::fromStringList(list_QList));
}

QCborArray* QCborArray_fromVariantList(struct seaqt_array /* of QVariant* */  list) {
	QVariantList list_QList;
	list_QList.reserve(list.len);
	QVariant** list_arr = static_cast<QVariant**>(list.data);
	for(size_t i = 0; i < list.len; ++i) {
		list_QList.push_back(*(list_arr[i]));
	}
	return new QCborArray(QCborArray::fromVariantList(list_QList));
}

QCborArray* QCborArray_fromJsonArray(QJsonArray* array) {
	return new QCborArray(QCborArray::fromJsonArray(*array));
}

struct seaqt_array /* of QVariant* */  QCborArray_toVariantList(const QCborArray* self) {
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

QJsonArray* QCborArray_toJsonArray(const QCborArray* self) {
	return new QJsonArray(self->toJsonArray());
}

void QCborArray_delete(QCborArray* self) {
	delete self;
}

QCborArray__Iterator* QCborArray__Iterator_new() {
	return new (std::nothrow) QCborArray__Iterator();
}

QCborArray__Iterator* QCborArray__Iterator_new_from(QCborArray__Iterator* from) {
	return new (std::nothrow) QCborArray__Iterator(*from);
}

void QCborArray__Iterator_operatorAssign(QCborArray__Iterator* self, QCborArray__Iterator* from) {
	self->operator=(*from);
}

QCborValueRef* QCborArray__Iterator_operatorMultiply(const QCborArray__Iterator* self) {
	return new QCborValueRef(self->operator*());
}

QCborValueRef* QCborArray__Iterator_operatorMinusGreater(QCborArray__Iterator* self) {
	return self->operator->();
}

QCborValueConstRef* QCborArray__Iterator_operatorMinusGreater_const(const QCborArray__Iterator* self) {
	return (QCborValueConstRef*) self->operator->();
}

QCborValueRef* QCborArray__Iterator_operatorSubscript(const QCborArray__Iterator* self, ptrdiff_t j) {
	return new QCborValueRef(self->operator[]((qsizetype)(j)));
}

QCborArray__Iterator* QCborArray__Iterator_operatorPlusPlus(QCborArray__Iterator* self) {
	QCborArray::Iterator& _ret = self->operator++();
	// Cast returned reference into pointer
	return &_ret;
}

QCborArray__Iterator* QCborArray__Iterator_operatorPlusPlus_int(QCborArray__Iterator* self, int param1) {
	return new QCborArray::Iterator(self->operator++(static_cast<int>(param1)));
}

QCborArray__Iterator* QCborArray__Iterator_operatorMinusMinus(QCborArray__Iterator* self) {
	QCborArray::Iterator& _ret = self->operator--();
	// Cast returned reference into pointer
	return &_ret;
}

QCborArray__Iterator* QCborArray__Iterator_operatorMinusMinus_int(QCborArray__Iterator* self, int param1) {
	return new QCborArray::Iterator(self->operator--(static_cast<int>(param1)));
}

QCborArray__Iterator* QCborArray__Iterator_operatorPlusAssign(QCborArray__Iterator* self, ptrdiff_t j) {
	QCborArray::Iterator& _ret = self->operator+=((qsizetype)(j));
	// Cast returned reference into pointer
	return &_ret;
}

QCborArray__Iterator* QCborArray__Iterator_operatorMinusAssign(QCborArray__Iterator* self, ptrdiff_t j) {
	QCborArray::Iterator& _ret = self->operator-=((qsizetype)(j));
	// Cast returned reference into pointer
	return &_ret;
}

QCborArray__Iterator* QCborArray__Iterator_operatorPlus(const QCborArray__Iterator* self, ptrdiff_t j) {
	return new QCborArray::Iterator(self->operator+((qsizetype)(j)));
}

QCborArray__Iterator* QCborArray__Iterator_operatorMinus_qsizetype(const QCborArray__Iterator* self, ptrdiff_t j) {
	return new QCborArray::Iterator(self->operator-((qsizetype)(j)));
}

ptrdiff_t QCborArray__Iterator_operatorMinus_QCborArray_Iterator(const QCborArray__Iterator* self, QCborArray__Iterator* j) {
	qsizetype _ret = self->operator-(*j);
	return static_cast<ptrdiff_t>(_ret);
}

void QCborArray__Iterator_delete(QCborArray__Iterator* self) {
	delete self;
}

QCborArray__ConstIterator* QCborArray__ConstIterator_new() {
	return new (std::nothrow) QCborArray__ConstIterator();
}

QCborArray__ConstIterator* QCborArray__ConstIterator_new_from(QCborArray__ConstIterator* from) {
	return new (std::nothrow) QCborArray__ConstIterator(*from);
}

void QCborArray__ConstIterator_operatorAssign(QCborArray__ConstIterator* self, QCborArray__ConstIterator* from) {
	self->operator=(*from);
}

QCborValueConstRef* QCborArray__ConstIterator_operatorMultiply(const QCborArray__ConstIterator* self) {
	return new QCborValueConstRef(self->operator*());
}

QCborValueConstRef* QCborArray__ConstIterator_operatorMinusGreater(const QCborArray__ConstIterator* self) {
	return (QCborValueConstRef*) self->operator->();
}

QCborValueConstRef* QCborArray__ConstIterator_operatorSubscript(const QCborArray__ConstIterator* self, ptrdiff_t j) {
	return new QCborValueConstRef(self->operator[]((qsizetype)(j)));
}

QCborArray__ConstIterator* QCborArray__ConstIterator_operatorPlusPlus(QCborArray__ConstIterator* self) {
	QCborArray::ConstIterator& _ret = self->operator++();
	// Cast returned reference into pointer
	return &_ret;
}

QCborArray__ConstIterator* QCborArray__ConstIterator_operatorPlusPlus_int(QCborArray__ConstIterator* self, int param1) {
	return new QCborArray::ConstIterator(self->operator++(static_cast<int>(param1)));
}

QCborArray__ConstIterator* QCborArray__ConstIterator_operatorMinusMinus(QCborArray__ConstIterator* self) {
	QCborArray::ConstIterator& _ret = self->operator--();
	// Cast returned reference into pointer
	return &_ret;
}

QCborArray__ConstIterator* QCborArray__ConstIterator_operatorMinusMinus_int(QCborArray__ConstIterator* self, int param1) {
	return new QCborArray::ConstIterator(self->operator--(static_cast<int>(param1)));
}

QCborArray__ConstIterator* QCborArray__ConstIterator_operatorPlusAssign(QCborArray__ConstIterator* self, ptrdiff_t j) {
	QCborArray::ConstIterator& _ret = self->operator+=((qsizetype)(j));
	// Cast returned reference into pointer
	return &_ret;
}

QCborArray__ConstIterator* QCborArray__ConstIterator_operatorMinusAssign(QCborArray__ConstIterator* self, ptrdiff_t j) {
	QCborArray::ConstIterator& _ret = self->operator-=((qsizetype)(j));
	// Cast returned reference into pointer
	return &_ret;
}

QCborArray__ConstIterator* QCborArray__ConstIterator_operatorPlus(const QCborArray__ConstIterator* self, ptrdiff_t j) {
	return new QCborArray::ConstIterator(self->operator+((qsizetype)(j)));
}

QCborArray__ConstIterator* QCborArray__ConstIterator_operatorMinus_qsizetype(const QCborArray__ConstIterator* self, ptrdiff_t j) {
	return new QCborArray::ConstIterator(self->operator-((qsizetype)(j)));
}

ptrdiff_t QCborArray__ConstIterator_operatorMinus_QCborArray_ConstIterator(const QCborArray__ConstIterator* self, QCborArray__ConstIterator* j) {
	qsizetype _ret = self->operator-(*j);
	return static_cast<ptrdiff_t>(_ret);
}

void QCborArray__ConstIterator_delete(QCborArray__ConstIterator* self) {
	delete self;
}

