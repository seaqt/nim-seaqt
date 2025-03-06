#include <QByteArray>
#include <QChildEvent>
#include <QEvent>
#include <QIODevice>
#include <QMarginsF>
#include <QMetaMethod>
#include <QMetaObject>
#include <QObject>
#include <QPageLayout>
#include <QPageRanges>
#include <QPageSize>
#include <QPagedPaintDevice>
#include <QPaintDevice>
#include <QPaintEngine>
#include <QPainter>
#include <QPdfWriter>
#include <QPoint>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QTimerEvent>
#include <qpdfwriter.h>
#include "gen_qpdfwriter.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
} /* extern C */
#endif

class VirtualQPdfWriter final : public QPdfWriter {
	struct QPdfWriter_VTable* vtbl;
public:

	VirtualQPdfWriter(struct QPdfWriter_VTable* vtbl, const QString& filename): QPdfWriter(filename), vtbl(vtbl) {};
	VirtualQPdfWriter(struct QPdfWriter_VTable* vtbl, QIODevice* device): QPdfWriter(device), vtbl(vtbl) {};

	virtual ~VirtualQPdfWriter() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QPdfWriter::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	friend QMetaObject* QPdfWriter_virtualbase_metaObject(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QPdfWriter::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend void* QPdfWriter_virtualbase_metacast(void* self, const char* param1);

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QPdfWriter::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(vtbl, this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QPdfWriter_virtualbase_metacall(void* self, int param1, int param2, void** param3);

	// Subclass to allow providing a Go implementation
	virtual bool newPage() override {
		if (vtbl->newPage == 0) {
			return QPdfWriter::newPage();
		}


		bool callback_return_value = vtbl->newPage(vtbl, this);

		return callback_return_value;
	}

	friend bool QPdfWriter_virtualbase_newPage(void* self);

	// Subclass to allow providing a Go implementation
	virtual QPaintEngine* paintEngine() const override {
		if (vtbl->paintEngine == 0) {
			return QPdfWriter::paintEngine();
		}


		QPaintEngine* callback_return_value = vtbl->paintEngine(vtbl, this);

		return callback_return_value;
	}

	friend QPaintEngine* QPdfWriter_virtualbase_paintEngine(const void* self);

	// Subclass to allow providing a Go implementation
	virtual int metric(QPaintDevice::PaintDeviceMetric id) const override {
		if (vtbl->metric == 0) {
			return QPdfWriter::metric(id);
		}

		QPaintDevice::PaintDeviceMetric id_ret = id;
		int sigval1 = static_cast<int>(id_ret);

		int callback_return_value = vtbl->metric(vtbl, this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QPdfWriter_virtualbase_metric(const void* self, int id);

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QPdfWriter::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QPdfWriter_virtualbase_event(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QPdfWriter::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QPdfWriter_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QPdfWriter::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	friend void QPdfWriter_virtualbase_timerEvent(void* self, QTimerEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QPdfWriter::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	friend void QPdfWriter_virtualbase_childEvent(void* self, QChildEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QPdfWriter::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	friend void QPdfWriter_virtualbase_customEvent(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QPdfWriter::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	friend void QPdfWriter_virtualbase_connectNotify(void* self, QMetaMethod* signal);

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QPdfWriter::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

	}

	friend void QPdfWriter_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);

	// Subclass to allow providing a Go implementation
	virtual bool setPageLayout(const QPageLayout& pageLayout) override {
		if (vtbl->setPageLayout == 0) {
			return QPdfWriter::setPageLayout(pageLayout);
		}

		const QPageLayout& pageLayout_ret = pageLayout;
		// Cast returned reference into pointer
		QPageLayout* sigval1 = const_cast<QPageLayout*>(&pageLayout_ret);

		bool callback_return_value = vtbl->setPageLayout(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QPdfWriter_virtualbase_setPageLayout(void* self, QPageLayout* pageLayout);

	// Subclass to allow providing a Go implementation
	virtual bool setPageSize(const QPageSize& pageSize) override {
		if (vtbl->setPageSize == 0) {
			return QPdfWriter::setPageSize(pageSize);
		}

		const QPageSize& pageSize_ret = pageSize;
		// Cast returned reference into pointer
		QPageSize* sigval1 = const_cast<QPageSize*>(&pageSize_ret);

		bool callback_return_value = vtbl->setPageSize(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QPdfWriter_virtualbase_setPageSize(void* self, QPageSize* pageSize);

	// Subclass to allow providing a Go implementation
	virtual bool setPageOrientation(QPageLayout::Orientation orientation) override {
		if (vtbl->setPageOrientation == 0) {
			return QPdfWriter::setPageOrientation(orientation);
		}

		QPageLayout::Orientation orientation_ret = orientation;
		int sigval1 = static_cast<int>(orientation_ret);

		bool callback_return_value = vtbl->setPageOrientation(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QPdfWriter_virtualbase_setPageOrientation(void* self, int orientation);

	// Subclass to allow providing a Go implementation
	virtual bool setPageMargins(const QMarginsF& margins, QPageLayout::Unit units) override {
		if (vtbl->setPageMargins == 0) {
			return QPdfWriter::setPageMargins(margins, units);
		}

		const QMarginsF& margins_ret = margins;
		// Cast returned reference into pointer
		QMarginsF* sigval1 = const_cast<QMarginsF*>(&margins_ret);
		QPageLayout::Unit units_ret = units;
		int sigval2 = static_cast<int>(units_ret);

		bool callback_return_value = vtbl->setPageMargins(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QPdfWriter_virtualbase_setPageMargins(void* self, QMarginsF* margins, int units);

	// Subclass to allow providing a Go implementation
	virtual void setPageRanges(const QPageRanges& ranges) override {
		if (vtbl->setPageRanges == 0) {
			QPdfWriter::setPageRanges(ranges);
			return;
		}

		const QPageRanges& ranges_ret = ranges;
		// Cast returned reference into pointer
		QPageRanges* sigval1 = const_cast<QPageRanges*>(&ranges_ret);

		vtbl->setPageRanges(vtbl, this, sigval1);

	}

	friend void QPdfWriter_virtualbase_setPageRanges(void* self, QPageRanges* ranges);

	// Subclass to allow providing a Go implementation
	virtual int devType() const override {
		if (vtbl->devType == 0) {
			return QPdfWriter::devType();
		}


		int callback_return_value = vtbl->devType(vtbl, this);

		return static_cast<int>(callback_return_value);
	}

	friend int QPdfWriter_virtualbase_devType(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void initPainter(QPainter* painter) const override {
		if (vtbl->initPainter == 0) {
			QPdfWriter::initPainter(painter);
			return;
		}

		QPainter* sigval1 = painter;

		vtbl->initPainter(vtbl, this, sigval1);

	}

	friend void QPdfWriter_virtualbase_initPainter(const void* self, QPainter* painter);

	// Subclass to allow providing a Go implementation
	virtual QPaintDevice* redirected(QPoint* offset) const override {
		if (vtbl->redirected == 0) {
			return QPdfWriter::redirected(offset);
		}

		QPoint* sigval1 = offset;

		QPaintDevice* callback_return_value = vtbl->redirected(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend QPaintDevice* QPdfWriter_virtualbase_redirected(const void* self, QPoint* offset);

	// Subclass to allow providing a Go implementation
	virtual QPainter* sharedPainter() const override {
		if (vtbl->sharedPainter == 0) {
			return QPdfWriter::sharedPainter();
		}


		QPainter* callback_return_value = vtbl->sharedPainter(vtbl, this);

		return callback_return_value;
	}

	friend QPainter* QPdfWriter_virtualbase_sharedPainter(const void* self);

	// Wrappers to allow calling protected methods:
	friend QObject* QPdfWriter_protectedbase_sender(const void* self);
	friend int QPdfWriter_protectedbase_senderSignalIndex(const void* self);
	friend int QPdfWriter_protectedbase_receivers(const void* self, const char* signal);
	friend bool QPdfWriter_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal);
};

QPdfWriter* QPdfWriter_new(struct QPdfWriter_VTable* vtbl, struct miqt_string filename) {
	QString filename_QString = QString::fromUtf8(filename.data, filename.len);
	return new VirtualQPdfWriter(vtbl, filename_QString);
}

QPdfWriter* QPdfWriter_new2(struct QPdfWriter_VTable* vtbl, QIODevice* device) {
	return new VirtualQPdfWriter(vtbl, device);
}

void QPdfWriter_virtbase(QPdfWriter* src, QObject** outptr_QObject, QPagedPaintDevice** outptr_QPagedPaintDevice) {
	*outptr_QObject = static_cast<QObject*>(src);
	*outptr_QPagedPaintDevice = static_cast<QPagedPaintDevice*>(src);
}

QMetaObject* QPdfWriter_metaObject(const QPdfWriter* self) {
	return (QMetaObject*) self->metaObject();
}

void* QPdfWriter_metacast(QPdfWriter* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QPdfWriter_metacall(QPdfWriter* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QPdfWriter_tr(const char* s) {
	QString _ret = QPdfWriter::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QPdfWriter_setPdfVersion(QPdfWriter* self, int version) {
	self->setPdfVersion(static_cast<QPagedPaintDevice::PdfVersion>(version));
}

int QPdfWriter_pdfVersion(const QPdfWriter* self) {
	QPagedPaintDevice::PdfVersion _ret = self->pdfVersion();
	return static_cast<int>(_ret);
}

struct miqt_string QPdfWriter_title(const QPdfWriter* self) {
	QString _ret = self->title();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QPdfWriter_setTitle(QPdfWriter* self, struct miqt_string title) {
	QString title_QString = QString::fromUtf8(title.data, title.len);
	self->setTitle(title_QString);
}

struct miqt_string QPdfWriter_creator(const QPdfWriter* self) {
	QString _ret = self->creator();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QPdfWriter_setCreator(QPdfWriter* self, struct miqt_string creator) {
	QString creator_QString = QString::fromUtf8(creator.data, creator.len);
	self->setCreator(creator_QString);
}

bool QPdfWriter_newPage(QPdfWriter* self) {
	return self->newPage();
}

void QPdfWriter_setResolution(QPdfWriter* self, int resolution) {
	self->setResolution(static_cast<int>(resolution));
}

int QPdfWriter_resolution(const QPdfWriter* self) {
	return self->resolution();
}

void QPdfWriter_setDocumentXmpMetadata(QPdfWriter* self, struct miqt_string xmpMetadata) {
	QByteArray xmpMetadata_QByteArray(xmpMetadata.data, xmpMetadata.len);
	self->setDocumentXmpMetadata(xmpMetadata_QByteArray);
}

struct miqt_string QPdfWriter_documentXmpMetadata(const QPdfWriter* self) {
	QByteArray _qb = self->documentXmpMetadata();
	struct miqt_string _ms;
	_ms.len = _qb.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _qb.data(), _ms.len);
	return _ms;
}

void QPdfWriter_addFileAttachment(QPdfWriter* self, struct miqt_string fileName, struct miqt_string data) {
	QString fileName_QString = QString::fromUtf8(fileName.data, fileName.len);
	QByteArray data_QByteArray(data.data, data.len);
	self->addFileAttachment(fileName_QString, data_QByteArray);
}

struct miqt_string QPdfWriter_tr2(const char* s, const char* c) {
	QString _ret = QPdfWriter::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QPdfWriter_tr3(const char* s, const char* c, int n) {
	QString _ret = QPdfWriter::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QPdfWriter_addFileAttachment3(QPdfWriter* self, struct miqt_string fileName, struct miqt_string data, struct miqt_string mimeType) {
	QString fileName_QString = QString::fromUtf8(fileName.data, fileName.len);
	QByteArray data_QByteArray(data.data, data.len);
	QString mimeType_QString = QString::fromUtf8(mimeType.data, mimeType.len);
	self->addFileAttachment(fileName_QString, data_QByteArray, mimeType_QString);
}

QMetaObject* QPdfWriter_virtualbase_metaObject(const void* self) {

	return (QMetaObject*) ( (const VirtualQPdfWriter*)(self) )->QPdfWriter::metaObject();

}

void* QPdfWriter_virtualbase_metacast(void* self, const char* param1) {

	return ( (VirtualQPdfWriter*)(self) )->QPdfWriter::qt_metacast(param1);

}

int QPdfWriter_virtualbase_metacall(void* self, int param1, int param2, void** param3) {

	return ( (VirtualQPdfWriter*)(self) )->QPdfWriter::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

}

bool QPdfWriter_virtualbase_newPage(void* self) {

	return ( (VirtualQPdfWriter*)(self) )->QPdfWriter::newPage();

}

QPaintEngine* QPdfWriter_virtualbase_paintEngine(const void* self) {

	return ( (const VirtualQPdfWriter*)(self) )->QPdfWriter::paintEngine();

}

int QPdfWriter_virtualbase_metric(const void* self, int id) {

	return ( (const VirtualQPdfWriter*)(self) )->QPdfWriter::metric(static_cast<VirtualQPdfWriter::PaintDeviceMetric>(id));

}

bool QPdfWriter_virtualbase_event(void* self, QEvent* event) {

	return ( (VirtualQPdfWriter*)(self) )->QPdfWriter::event(event);

}

bool QPdfWriter_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event) {

	return ( (VirtualQPdfWriter*)(self) )->QPdfWriter::eventFilter(watched, event);

}

void QPdfWriter_virtualbase_timerEvent(void* self, QTimerEvent* event) {

	( (VirtualQPdfWriter*)(self) )->QPdfWriter::timerEvent(event);

}

void QPdfWriter_virtualbase_childEvent(void* self, QChildEvent* event) {

	( (VirtualQPdfWriter*)(self) )->QPdfWriter::childEvent(event);

}

void QPdfWriter_virtualbase_customEvent(void* self, QEvent* event) {

	( (VirtualQPdfWriter*)(self) )->QPdfWriter::customEvent(event);

}

void QPdfWriter_virtualbase_connectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQPdfWriter*)(self) )->QPdfWriter::connectNotify(*signal);

}

void QPdfWriter_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQPdfWriter*)(self) )->QPdfWriter::disconnectNotify(*signal);

}

bool QPdfWriter_virtualbase_setPageLayout(void* self, QPageLayout* pageLayout) {

	return ( (VirtualQPdfWriter*)(self) )->QPdfWriter::setPageLayout(*pageLayout);

}

bool QPdfWriter_virtualbase_setPageSize(void* self, QPageSize* pageSize) {

	return ( (VirtualQPdfWriter*)(self) )->QPdfWriter::setPageSize(*pageSize);

}

bool QPdfWriter_virtualbase_setPageOrientation(void* self, int orientation) {

	return ( (VirtualQPdfWriter*)(self) )->QPdfWriter::setPageOrientation(static_cast<QPageLayout::Orientation>(orientation));

}

bool QPdfWriter_virtualbase_setPageMargins(void* self, QMarginsF* margins, int units) {

	return ( (VirtualQPdfWriter*)(self) )->QPdfWriter::setPageMargins(*margins, static_cast<QPageLayout::Unit>(units));

}

void QPdfWriter_virtualbase_setPageRanges(void* self, QPageRanges* ranges) {

	( (VirtualQPdfWriter*)(self) )->QPdfWriter::setPageRanges(*ranges);

}

int QPdfWriter_virtualbase_devType(const void* self) {

	return ( (const VirtualQPdfWriter*)(self) )->QPdfWriter::devType();

}

void QPdfWriter_virtualbase_initPainter(const void* self, QPainter* painter) {

	( (const VirtualQPdfWriter*)(self) )->QPdfWriter::initPainter(painter);

}

QPaintDevice* QPdfWriter_virtualbase_redirected(const void* self, QPoint* offset) {

	return ( (const VirtualQPdfWriter*)(self) )->QPdfWriter::redirected(offset);

}

QPainter* QPdfWriter_virtualbase_sharedPainter(const void* self) {

	return ( (const VirtualQPdfWriter*)(self) )->QPdfWriter::sharedPainter();

}

const QMetaObject* QPdfWriter_staticMetaObject() { return &QPdfWriter::staticMetaObject; }
QObject* QPdfWriter_protectedbase_sender(const void* self) {
	VirtualQPdfWriter* self_cast = static_cast<VirtualQPdfWriter*>( (QPdfWriter*)(self) );
	
	return self_cast->sender();

}

int QPdfWriter_protectedbase_senderSignalIndex(const void* self) {
	VirtualQPdfWriter* self_cast = static_cast<VirtualQPdfWriter*>( (QPdfWriter*)(self) );
	
	return self_cast->senderSignalIndex();

}

int QPdfWriter_protectedbase_receivers(const void* self, const char* signal) {
	VirtualQPdfWriter* self_cast = static_cast<VirtualQPdfWriter*>( (QPdfWriter*)(self) );
	
	return self_cast->receivers(signal);

}

bool QPdfWriter_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal) {
	VirtualQPdfWriter* self_cast = static_cast<VirtualQPdfWriter*>( (QPdfWriter*)(self) );
	
	return self_cast->isSignalConnected(*signal);

}

void QPdfWriter_delete(QPdfWriter* self) {
	delete self;
}

