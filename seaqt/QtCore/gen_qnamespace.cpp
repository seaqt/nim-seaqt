#include <QInternal>
#include <QKeyCombination>
#define WORKAROUND_INNER_CLASS_DEFINITION_Disambiguated_t
#include <qnamespace.h>
#include "gen_qnamespace.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

Disambiguated_t* Disambiguated_t_new() {
	return new (std::nothrow) Disambiguated_t();
}

Disambiguated_t* Disambiguated_t_new_from(Disambiguated_t* from) {
	return new (std::nothrow) Disambiguated_t(*from);
}

void Disambiguated_t_delete(Disambiguated_t* self) {
	delete self;
}

bool QInternal_activateCallbacks(int param1, void** param2) {
	return QInternal::activateCallbacks(static_cast<QInternal::Callback>(param1), param2);
}

void QInternal_delete(QInternal* self) {
	delete self;
}

QKeyCombination* QKeyCombination_new() {
	return new (std::nothrow) QKeyCombination();
}

QKeyCombination* QKeyCombination_new_Qt_Modifiers(int modifiers) {
	return new (std::nothrow) QKeyCombination(static_cast<Qt::Modifiers>(modifiers));
}

QKeyCombination* QKeyCombination_new_Qt_KeyboardModifiers(int modifiers) {
	return new (std::nothrow) QKeyCombination(static_cast<Qt::KeyboardModifiers>(modifiers));
}

QKeyCombination* QKeyCombination_new_QKeyCombination(QKeyCombination* from) {
	return new (std::nothrow) QKeyCombination(*from);
}

QKeyCombination* QKeyCombination_new_Qt_Key(int key) {
	return new (std::nothrow) QKeyCombination(static_cast<Qt::Key>(key));
}

QKeyCombination* QKeyCombination_new_Qt_Modifiers_Qt_Key(int modifiers, int key) {
	return new (std::nothrow) QKeyCombination(static_cast<Qt::Modifiers>(modifiers), static_cast<Qt::Key>(key));
}

QKeyCombination* QKeyCombination_new_Qt_KeyboardModifiers_Qt_Key(int modifiers, int key) {
	return new (std::nothrow) QKeyCombination(static_cast<Qt::KeyboardModifiers>(modifiers), static_cast<Qt::Key>(key));
}

int QKeyCombination_keyboardModifiers(const QKeyCombination* self) {
	Qt::KeyboardModifiers _ret = self->keyboardModifiers();
	return static_cast<int>(_ret);
}

int QKeyCombination_key(const QKeyCombination* self) {
	Qt::Key _ret = self->key();
	return static_cast<int>(_ret);
}

QKeyCombination* QKeyCombination_fromCombined(int combined) {
	return new QKeyCombination(QKeyCombination::fromCombined(static_cast<int>(combined)));
}

int QKeyCombination_toCombined(const QKeyCombination* self) {
	return self->toCombined();
}

int QKeyCombination_ToInt(const QKeyCombination* self) {
	return self->operator int();
}

void QKeyCombination_delete(QKeyCombination* self) {
	delete self;
}

