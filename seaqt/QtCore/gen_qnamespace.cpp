#include <QKeyCombination>
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

