#include <QSGMaterial>
#include <QSGMaterialShader>
#include <qsgmaterial.h>
#include "gen_qsgmaterial.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

QSGMaterialShader* QSGMaterial_createShader(const QSGMaterial* self) {
	return self->createShader();
}

int QSGMaterial_flags(const QSGMaterial* self) {
	QSGMaterial::Flags _ret = self->flags();
	return static_cast<int>(_ret);
}

void QSGMaterial_setFlag_flags(QSGMaterial* self, int flags) {
	self->setFlag(static_cast<QSGMaterial::Flags>(flags));
}

void QSGMaterial_setFlag_flags_on(QSGMaterial* self, int flags, bool on) {
	self->setFlag(static_cast<QSGMaterial::Flags>(flags), on);
}

void QSGMaterial_delete(QSGMaterial* self) {
	delete self;
}

