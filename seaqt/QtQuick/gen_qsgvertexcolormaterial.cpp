#include <QSGMaterial>
#include <QSGMaterialShader>
#include <QSGVertexColorMaterial>
#include <qsgvertexcolormaterial.h>
#include "gen_qsgvertexcolormaterial.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

QSGVertexColorMaterial* QSGVertexColorMaterial_new() {
	return new (std::nothrow) QSGVertexColorMaterial();
}

void QSGVertexColorMaterial_virtbase(QSGVertexColorMaterial* src, QSGMaterial** outptr_QSGMaterial) {
	*outptr_QSGMaterial = static_cast<QSGMaterial*>(src);
}

void QSGVertexColorMaterial_delete(QSGVertexColorMaterial* self) {
	delete self;
}

