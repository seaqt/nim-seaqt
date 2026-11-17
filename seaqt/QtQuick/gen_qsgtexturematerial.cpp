#include <QSGMaterial>
#include <QSGMaterialShader>
#include <QSGOpaqueTextureMaterial>
#include <QSGTexture>
#include <QSGTextureMaterial>
#include <qsgtexturematerial.h>
#include "gen_qsgtexturematerial.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

QSGOpaqueTextureMaterial* QSGOpaqueTextureMaterial_new() {
	return new (std::nothrow) QSGOpaqueTextureMaterial();
}

void QSGOpaqueTextureMaterial_virtbase(QSGOpaqueTextureMaterial* src, QSGMaterial** outptr_QSGMaterial) {
	*outptr_QSGMaterial = static_cast<QSGMaterial*>(src);
}

QSGMaterialShader* QSGOpaqueTextureMaterial_createShader(const QSGOpaqueTextureMaterial* self) {
	return self->createShader();
}

void QSGOpaqueTextureMaterial_setTexture(QSGOpaqueTextureMaterial* self, QSGTexture* texture) {
	self->setTexture(texture);
}

QSGTexture* QSGOpaqueTextureMaterial_texture(const QSGOpaqueTextureMaterial* self) {
	return self->texture();
}

void QSGOpaqueTextureMaterial_setMipmapFiltering(QSGOpaqueTextureMaterial* self, int filteringType) {
	self->setMipmapFiltering(static_cast<QSGTexture::Filtering>(filteringType));
}

int QSGOpaqueTextureMaterial_mipmapFiltering(const QSGOpaqueTextureMaterial* self) {
	QSGTexture::Filtering _ret = self->mipmapFiltering();
	return static_cast<int>(_ret);
}

void QSGOpaqueTextureMaterial_setFiltering(QSGOpaqueTextureMaterial* self, int filteringType) {
	self->setFiltering(static_cast<QSGTexture::Filtering>(filteringType));
}

int QSGOpaqueTextureMaterial_filtering(const QSGOpaqueTextureMaterial* self) {
	QSGTexture::Filtering _ret = self->filtering();
	return static_cast<int>(_ret);
}

void QSGOpaqueTextureMaterial_setHorizontalWrapMode(QSGOpaqueTextureMaterial* self, int mode) {
	self->setHorizontalWrapMode(static_cast<QSGTexture::WrapMode>(mode));
}

int QSGOpaqueTextureMaterial_horizontalWrapMode(const QSGOpaqueTextureMaterial* self) {
	QSGTexture::WrapMode _ret = self->horizontalWrapMode();
	return static_cast<int>(_ret);
}

void QSGOpaqueTextureMaterial_setVerticalWrapMode(QSGOpaqueTextureMaterial* self, int mode) {
	self->setVerticalWrapMode(static_cast<QSGTexture::WrapMode>(mode));
}

int QSGOpaqueTextureMaterial_verticalWrapMode(const QSGOpaqueTextureMaterial* self) {
	QSGTexture::WrapMode _ret = self->verticalWrapMode();
	return static_cast<int>(_ret);
}

void QSGOpaqueTextureMaterial_setAnisotropyLevel(QSGOpaqueTextureMaterial* self, int level) {
	self->setAnisotropyLevel(static_cast<QSGTexture::AnisotropyLevel>(level));
}

int QSGOpaqueTextureMaterial_anisotropyLevel(const QSGOpaqueTextureMaterial* self) {
	QSGTexture::AnisotropyLevel _ret = self->anisotropyLevel();
	return static_cast<int>(_ret);
}

void QSGOpaqueTextureMaterial_delete(QSGOpaqueTextureMaterial* self) {
	delete self;
}

void QSGTextureMaterial_virtbase(QSGTextureMaterial* src, QSGOpaqueTextureMaterial** outptr_QSGOpaqueTextureMaterial) {
	*outptr_QSGOpaqueTextureMaterial = static_cast<QSGOpaqueTextureMaterial*>(src);
}

QSGMaterialShader* QSGTextureMaterial_createShader(const QSGTextureMaterial* self) {
	return self->createShader();
}

void QSGTextureMaterial_delete(QSGTextureMaterial* self) {
	delete self;
}

