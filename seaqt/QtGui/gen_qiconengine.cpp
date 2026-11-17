#include <QDataStream>
#include <QIconEngine>
#define WORKAROUND_INNER_CLASS_DEFINITION_QIconEngine__AvailableSizesArgument
#define WORKAROUND_INNER_CLASS_DEFINITION_QIconEngine__ScaledPixmapArgument
#include <QList>
#include <QPainter>
#include <QPixmap>
#include <QRect>
#include <QSize>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <qiconengine.h>
#include "gen_qiconengine.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

class VirtualQIconEngine final : public QIconEngine {
	const QIconEngine_VTable* vtbl;
public:
	friend void* QIconEngine_vdata(VirtualQIconEngine* self);
	friend VirtualQIconEngine* vdata_QIconEngine(void* vdata);

	VirtualQIconEngine(const QIconEngine_VTable* vtbl): QIconEngine(), vtbl(vtbl) {}
	VirtualQIconEngine(const QIconEngine_VTable* vtbl, const QIconEngine& from): QIconEngine(from), vtbl(vtbl) {}

	virtual ~VirtualQIconEngine() override { if(vtbl->destructor) vtbl->destructor(this); }

	void operator delete(void* p) { ::operator delete(p); }
	virtual void paint(QPainter* painter, const QRect& rect, QIcon::Mode mode, QIcon::State state) override {
		if (vtbl->paint == 0) {
			return; // Pure virtual, there is no base we can call
		}

		QPainter* sigval1 = painter;
		const QRect& rect_ret = rect;
		// Cast returned reference into pointer
		QRect* sigval2 = const_cast<QRect*>(&rect_ret);
		QIcon::Mode mode_ret = mode;
		int sigval3 = static_cast<int>(mode_ret);
		QIcon::State state_ret = state;
		int sigval4 = static_cast<int>(state_ret);
		vtbl->paint(this, sigval1, sigval2, sigval3, sigval4);
	}

	virtual QSize actualSize(const QSize& size, QIcon::Mode mode, QIcon::State state) override {
		if (vtbl->actualSize == 0) {
			return QIconEngine::actualSize(size, mode, state);
		}

		const QSize& size_ret = size;
		// Cast returned reference into pointer
		QSize* sigval1 = const_cast<QSize*>(&size_ret);
		QIcon::Mode mode_ret = mode;
		int sigval2 = static_cast<int>(mode_ret);
		QIcon::State state_ret = state;
		int sigval3 = static_cast<int>(state_ret);
		QSize* callback_return_value = vtbl->actualSize(this, sigval1, sigval2, sigval3);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;
		return callback_return_value_Value;
	}

	friend QSize* QIconEngine_virtualbase_actualSize(VirtualQIconEngine* self, QSize* size, int mode, int state);

	virtual QPixmap pixmap(const QSize& size, QIcon::Mode mode, QIcon::State state) override {
		if (vtbl->pixmap == 0) {
			return QIconEngine::pixmap(size, mode, state);
		}

		const QSize& size_ret = size;
		// Cast returned reference into pointer
		QSize* sigval1 = const_cast<QSize*>(&size_ret);
		QIcon::Mode mode_ret = mode;
		int sigval2 = static_cast<int>(mode_ret);
		QIcon::State state_ret = state;
		int sigval3 = static_cast<int>(state_ret);
		QPixmap* callback_return_value = vtbl->pixmap(this, sigval1, sigval2, sigval3);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;
		return callback_return_value_Value;
	}

	friend QPixmap* QIconEngine_virtualbase_pixmap(VirtualQIconEngine* self, QSize* size, int mode, int state);

	virtual void addPixmap(const QPixmap& pixmap, QIcon::Mode mode, QIcon::State state) override {
		if (vtbl->addPixmap == 0) {
			QIconEngine::addPixmap(pixmap, mode, state);
			return;
		}

		const QPixmap& pixmap_ret = pixmap;
		// Cast returned reference into pointer
		QPixmap* sigval1 = const_cast<QPixmap*>(&pixmap_ret);
		QIcon::Mode mode_ret = mode;
		int sigval2 = static_cast<int>(mode_ret);
		QIcon::State state_ret = state;
		int sigval3 = static_cast<int>(state_ret);
		vtbl->addPixmap(this, sigval1, sigval2, sigval3);
	}

	friend void QIconEngine_virtualbase_addPixmap(VirtualQIconEngine* self, QPixmap* pixmap, int mode, int state);

	virtual void addFile(const QString& fileName, const QSize& size, QIcon::Mode mode, QIcon::State state) override {
		if (vtbl->addFile == 0) {
			QIconEngine::addFile(fileName, size, mode, state);
			return;
		}

		const QString fileName_ret = fileName;
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray fileName_b = fileName_ret.toUtf8();
		struct seaqt_string fileName_ms;
		fileName_ms.len = fileName_b.length();
		fileName_ms.data = static_cast<char*>(malloc(fileName_ms.len));
		memcpy(fileName_ms.data, fileName_b.data(), fileName_ms.len);
		struct seaqt_string sigval1 = fileName_ms;
		const QSize& size_ret = size;
		// Cast returned reference into pointer
		QSize* sigval2 = const_cast<QSize*>(&size_ret);
		QIcon::Mode mode_ret = mode;
		int sigval3 = static_cast<int>(mode_ret);
		QIcon::State state_ret = state;
		int sigval4 = static_cast<int>(state_ret);
		vtbl->addFile(this, sigval1, sigval2, sigval3, sigval4);
	}

	friend void QIconEngine_virtualbase_addFile(VirtualQIconEngine* self, struct seaqt_string fileName, QSize* size, int mode, int state);

	virtual QString key() const override {
		if (vtbl->key == 0) {
			return QIconEngine::key();
		}

		struct seaqt_string callback_return_value = vtbl->key(this);
		QString callback_return_value_QString = QString::fromUtf8(callback_return_value.data, callback_return_value.len);
		free(callback_return_value.data);
		return callback_return_value_QString;
	}

	friend struct seaqt_string QIconEngine_virtualbase_key(const VirtualQIconEngine* self);

	virtual QIconEngine* clone() const override {
		if (vtbl->clone == 0) {
			return nullptr; // Pure virtual, there is no base we can call
		}

		QIconEngine* callback_return_value = vtbl->clone(this);
		return callback_return_value;
	}

	virtual bool read(QDataStream& in) override {
		if (vtbl->read == 0) {
			return QIconEngine::read(in);
		}

		QDataStream& in_ret = in;
		// Cast returned reference into pointer
		QDataStream* sigval1 = &in_ret;
		bool callback_return_value = vtbl->read(this, sigval1);
		return callback_return_value;
	}

	friend bool QIconEngine_virtualbase_read(VirtualQIconEngine* self, QDataStream* in);

	virtual bool write(QDataStream& out) const override {
		if (vtbl->write == 0) {
			return QIconEngine::write(out);
		}

		QDataStream& out_ret = out;
		// Cast returned reference into pointer
		QDataStream* sigval1 = &out_ret;
		bool callback_return_value = vtbl->write(this, sigval1);
		return callback_return_value;
	}

	friend bool QIconEngine_virtualbase_write(const VirtualQIconEngine* self, QDataStream* out);

	virtual QList<QSize> availableSizes(QIcon::Mode mode, QIcon::State state) const override {
		if (vtbl->availableSizes == 0) {
			return QIconEngine::availableSizes(mode, state);
		}

		QIcon::Mode mode_ret = mode;
		int sigval1 = static_cast<int>(mode_ret);
		QIcon::State state_ret = state;
		int sigval2 = static_cast<int>(state_ret);
		struct seaqt_array /* of QSize* */  callback_return_value = vtbl->availableSizes(this, sigval1, sigval2);
		QList<QSize> callback_return_value_QList;
		callback_return_value_QList.reserve(callback_return_value.len);
		QSize** callback_return_value_arr = static_cast<QSize**>(callback_return_value.data);
		for(size_t i = 0; i < callback_return_value.len; ++i) {
			callback_return_value_QList.push_back(*(callback_return_value_arr[i]));
		}
		free(callback_return_value.data);
		return callback_return_value_QList;
	}

	friend struct seaqt_array /* of QSize* */  QIconEngine_virtualbase_availableSizes(const VirtualQIconEngine* self, int mode, int state);

	virtual QString iconName() const override {
		if (vtbl->iconName == 0) {
			return QIconEngine::iconName();
		}

		struct seaqt_string callback_return_value = vtbl->iconName(this);
		QString callback_return_value_QString = QString::fromUtf8(callback_return_value.data, callback_return_value.len);
		free(callback_return_value.data);
		return callback_return_value_QString;
	}

	friend struct seaqt_string QIconEngine_virtualbase_iconName(const VirtualQIconEngine* self);

	virtual void virtual_hook(int id, void* data) override {
		if (vtbl->virtual_hook == 0) {
			QIconEngine::virtual_hook(id, data);
			return;
		}

		int sigval1 = id;
		void* sigval2 = data;
		vtbl->virtual_hook(this, sigval1, sigval2);
	}

	friend void QIconEngine_virtualbase_virtual_hook(VirtualQIconEngine* self, int id, void* data);

};

VirtualQIconEngine* QIconEngine_new(const QIconEngine_VTable* vtbl, size_t vdata) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQIconEngine>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQIconEngine(vtbl) : nullptr;
}

VirtualQIconEngine* QIconEngine_new_from(const QIconEngine_VTable* vtbl, size_t vdata, QIconEngine* from) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQIconEngine>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQIconEngine(vtbl, *from) : nullptr;
}

void QIconEngine_paint(QIconEngine* self, QPainter* painter, QRect* rect, int mode, int state) {
	self->paint(painter, *rect, static_cast<QIcon::Mode>(mode), static_cast<QIcon::State>(state));
}

QSize* QIconEngine_actualSize(QIconEngine* self, QSize* size, int mode, int state) {
	return new QSize(self->actualSize(*size, static_cast<QIcon::Mode>(mode), static_cast<QIcon::State>(state)));
}

QPixmap* QIconEngine_pixmap(QIconEngine* self, QSize* size, int mode, int state) {
	return new QPixmap(self->pixmap(*size, static_cast<QIcon::Mode>(mode), static_cast<QIcon::State>(state)));
}

void QIconEngine_addPixmap(QIconEngine* self, QPixmap* pixmap, int mode, int state) {
	self->addPixmap(*pixmap, static_cast<QIcon::Mode>(mode), static_cast<QIcon::State>(state));
}

void QIconEngine_addFile(QIconEngine* self, struct seaqt_string fileName, QSize* size, int mode, int state) {
	QString fileName_QString = QString::fromUtf8(fileName.data, fileName.len);
	self->addFile(fileName_QString, *size, static_cast<QIcon::Mode>(mode), static_cast<QIcon::State>(state));
}

struct seaqt_string QIconEngine_key(const QIconEngine* self) {
	QString _ret = self->key();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QIconEngine* QIconEngine_clone(const QIconEngine* self) {
	return self->clone();
}

bool QIconEngine_read(QIconEngine* self, QDataStream* in) {
	return self->read(*in);
}

bool QIconEngine_write(const QIconEngine* self, QDataStream* out) {
	return self->write(*out);
}

struct seaqt_array /* of QSize* */  QIconEngine_availableSizes(const QIconEngine* self, int mode, int state) {
	QList<QSize> _ret = self->availableSizes(static_cast<QIcon::Mode>(mode), static_cast<QIcon::State>(state));
	// Convert QList<> from C++ memory to manually-managed C memory
	QSize** _arr = static_cast<QSize**>(malloc(sizeof(QSize*) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		_arr[i] = new QSize(_ret[i]);
	}
	struct seaqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

struct seaqt_string QIconEngine_iconName(const QIconEngine* self) {
	QString _ret = self->iconName();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

bool QIconEngine_isNull(const QIconEngine* self) {
	return self->isNull();
}

QPixmap* QIconEngine_scaledPixmap(QIconEngine* self, QSize* size, int mode, int state, double scale) {
	return new QPixmap(self->scaledPixmap(*size, static_cast<QIcon::Mode>(mode), static_cast<QIcon::State>(state), static_cast<qreal>(scale)));
}

void QIconEngine_virtual_hook(QIconEngine* self, int id, void* data) {
	self->virtual_hook(static_cast<int>(id), data);
}

void* QIconEngine_vdata(VirtualQIconEngine* self) { return reinterpret_cast<void*>(reinterpret_cast<char*>(self) + seaqt_aligned_sizeof<VirtualQIconEngine>()); }
VirtualQIconEngine* vdata_QIconEngine(void* vdata) { return reinterpret_cast<VirtualQIconEngine*>(reinterpret_cast<char*>(vdata) - seaqt_aligned_sizeof<VirtualQIconEngine>()); }

QSize* QIconEngine_virtualbase_actualSize(VirtualQIconEngine* self, QSize* size, int mode, int state) {

	return new QSize(self->QIconEngine::actualSize(*size, static_cast<QIcon::Mode>(mode), static_cast<QIcon::State>(state)));
}

QPixmap* QIconEngine_virtualbase_pixmap(VirtualQIconEngine* self, QSize* size, int mode, int state) {

	return new QPixmap(self->QIconEngine::pixmap(*size, static_cast<QIcon::Mode>(mode), static_cast<QIcon::State>(state)));
}

void QIconEngine_virtualbase_addPixmap(VirtualQIconEngine* self, QPixmap* pixmap, int mode, int state) {

	self->QIconEngine::addPixmap(*pixmap, static_cast<QIcon::Mode>(mode), static_cast<QIcon::State>(state));
}

void QIconEngine_virtualbase_addFile(VirtualQIconEngine* self, struct seaqt_string fileName, QSize* size, int mode, int state) {
	QString fileName_QString = QString::fromUtf8(fileName.data, fileName.len);

	self->QIconEngine::addFile(fileName_QString, *size, static_cast<QIcon::Mode>(mode), static_cast<QIcon::State>(state));
}

struct seaqt_string QIconEngine_virtualbase_key(const VirtualQIconEngine* self) {

	QString _ret = self->QIconEngine::key();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

bool QIconEngine_virtualbase_read(VirtualQIconEngine* self, QDataStream* in) {

	return self->QIconEngine::read(*in);
}

bool QIconEngine_virtualbase_write(const VirtualQIconEngine* self, QDataStream* out) {

	return self->QIconEngine::write(*out);
}

struct seaqt_array /* of QSize* */  QIconEngine_virtualbase_availableSizes(const VirtualQIconEngine* self, int mode, int state) {

	QList<QSize> _ret = self->QIconEngine::availableSizes(static_cast<QIcon::Mode>(mode), static_cast<QIcon::State>(state));
	// Convert QList<> from C++ memory to manually-managed C memory
	QSize** _arr = static_cast<QSize**>(malloc(sizeof(QSize*) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		_arr[i] = new QSize(_ret[i]);
	}
	struct seaqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

struct seaqt_string QIconEngine_virtualbase_iconName(const VirtualQIconEngine* self) {

	QString _ret = self->QIconEngine::iconName();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QIconEngine_virtualbase_virtual_hook(VirtualQIconEngine* self, int id, void* data) {

	self->QIconEngine::virtual_hook(static_cast<int>(id), data);
}

void QIconEngine_delete(QIconEngine* self) {
	delete self;
}

QIconEngine__AvailableSizesArgument* QIconEngine__AvailableSizesArgument_new(QIconEngine__AvailableSizesArgument* from) {
	return new (std::nothrow) QIconEngine__AvailableSizesArgument(*from);
}

int QIconEngine__AvailableSizesArgument_mode(const QIconEngine__AvailableSizesArgument* self) {
	QIcon::Mode mode_ret = self->mode;
	return static_cast<int>(mode_ret);
}

void QIconEngine__AvailableSizesArgument_setMode(QIconEngine__AvailableSizesArgument* self, int mode) {
	self->mode = static_cast<QIcon::Mode>(mode);
}

int QIconEngine__AvailableSizesArgument_state(const QIconEngine__AvailableSizesArgument* self) {
	QIcon::State state_ret = self->state;
	return static_cast<int>(state_ret);
}

void QIconEngine__AvailableSizesArgument_setState(QIconEngine__AvailableSizesArgument* self, int state) {
	self->state = static_cast<QIcon::State>(state);
}

struct seaqt_array /* of QSize* */  QIconEngine__AvailableSizesArgument_sizes(const QIconEngine__AvailableSizesArgument* self) {
	QList<QSize> sizes_ret = self->sizes;
	// Convert QList<> from C++ memory to manually-managed C memory
	QSize** sizes_arr = static_cast<QSize**>(malloc(sizeof(QSize*) * sizes_ret.length()));
	for (size_t i = 0, e = sizes_ret.length(); i < e; ++i) {
		sizes_arr[i] = new QSize(sizes_ret[i]);
	}
	struct seaqt_array sizes_out;
	sizes_out.len = sizes_ret.length();
	sizes_out.data = static_cast<void*>(sizes_arr);
	return sizes_out;
}

void QIconEngine__AvailableSizesArgument_setSizes(QIconEngine__AvailableSizesArgument* self, struct seaqt_array /* of QSize* */  sizes) {
	QList<QSize> sizes_QList;
	sizes_QList.reserve(sizes.len);
	QSize** sizes_arr = static_cast<QSize**>(sizes.data);
	for(size_t i = 0; i < sizes.len; ++i) {
		sizes_QList.push_back(*(sizes_arr[i]));
	}
	self->sizes = sizes_QList;
}

void QIconEngine__AvailableSizesArgument_operatorAssign(QIconEngine__AvailableSizesArgument* self, QIconEngine__AvailableSizesArgument* from) {
	self->operator=(*from);
}

void QIconEngine__AvailableSizesArgument_delete(QIconEngine__AvailableSizesArgument* self) {
	delete self;
}

QIconEngine__ScaledPixmapArgument* QIconEngine__ScaledPixmapArgument_new(QIconEngine__ScaledPixmapArgument* from) {
	return new (std::nothrow) QIconEngine__ScaledPixmapArgument(*from);
}

QSize* QIconEngine__ScaledPixmapArgument_size(const QIconEngine__ScaledPixmapArgument* self) {
	return new QSize(self->size);
}

void QIconEngine__ScaledPixmapArgument_setSize(QIconEngine__ScaledPixmapArgument* self, QSize* size) {
	self->size = *size;
}

int QIconEngine__ScaledPixmapArgument_mode(const QIconEngine__ScaledPixmapArgument* self) {
	QIcon::Mode mode_ret = self->mode;
	return static_cast<int>(mode_ret);
}

void QIconEngine__ScaledPixmapArgument_setMode(QIconEngine__ScaledPixmapArgument* self, int mode) {
	self->mode = static_cast<QIcon::Mode>(mode);
}

int QIconEngine__ScaledPixmapArgument_state(const QIconEngine__ScaledPixmapArgument* self) {
	QIcon::State state_ret = self->state;
	return static_cast<int>(state_ret);
}

void QIconEngine__ScaledPixmapArgument_setState(QIconEngine__ScaledPixmapArgument* self, int state) {
	self->state = static_cast<QIcon::State>(state);
}

double QIconEngine__ScaledPixmapArgument_scale(const QIconEngine__ScaledPixmapArgument* self) {
	qreal scale_ret = self->scale;
	return static_cast<double>(scale_ret);
}

void QIconEngine__ScaledPixmapArgument_setScale(QIconEngine__ScaledPixmapArgument* self, double scale) {
	self->scale = static_cast<qreal>(scale);
}

QPixmap* QIconEngine__ScaledPixmapArgument_pixmap(const QIconEngine__ScaledPixmapArgument* self) {
	return new QPixmap(self->pixmap);
}

void QIconEngine__ScaledPixmapArgument_setPixmap(QIconEngine__ScaledPixmapArgument* self, QPixmap* pixmap) {
	self->pixmap = *pixmap;
}

void QIconEngine__ScaledPixmapArgument_operatorAssign(QIconEngine__ScaledPixmapArgument* self, QIconEngine__ScaledPixmapArgument* from) {
	self->operator=(*from);
}

void QIconEngine__ScaledPixmapArgument_delete(QIconEngine__ScaledPixmapArgument* self) {
	delete self;
}

