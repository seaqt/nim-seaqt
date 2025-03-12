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
class VirtualQPdfWriter final : public QPdfWriter {
	const QPdfWriter_VTable* vtbl;
	void* vdata;
public:
	friend const QPdfWriter_VTable* QPdfWriter_vtbl(const VirtualQPdfWriter* self);
	friend void* QPdfWriter_vdata(const VirtualQPdfWriter* self);
	friend void QPdfWriter_setVdata(VirtualQPdfWriter* self, void* vdata);

	VirtualQPdfWriter(const QPdfWriter_VTable* vtbl, void* vdata, const QString& filename): QPdfWriter(filename), vtbl(vtbl), vdata(vdata) {}
	VirtualQPdfWriter(const QPdfWriter_VTable* vtbl, void* vdata, QIODevice* device): QPdfWriter(device), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQPdfWriter() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QPdfWriter::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(this);

		return callback_return_value;
	}

	friend QMetaObject* QPdfWriter_virtualbase_metaObject(const VirtualQPdfWriter* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QPdfWriter::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(this, sigval1);

		return callback_return_value;
	}

	friend void* QPdfWriter_virtualbase_metacast(VirtualQPdfWriter* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QPdfWriter::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QPdfWriter_virtualbase_metacall(VirtualQPdfWriter* self, int param1, int param2, void** param3);

	virtual bool newPage() override {
		if (vtbl->newPage == 0) {
			return QPdfWriter::newPage();
		}


		bool callback_return_value = vtbl->newPage(this);

		return callback_return_value;
	}

	friend bool QPdfWriter_virtualbase_newPage(VirtualQPdfWriter* self);

	virtual QPaintEngine* paintEngine() const override {
		if (vtbl->paintEngine == 0) {
			return QPdfWriter::paintEngine();
		}


		QPaintEngine* callback_return_value = vtbl->paintEngine(this);

		return callback_return_value;
	}

	friend QPaintEngine* QPdfWriter_virtualbase_paintEngine(const VirtualQPdfWriter* self);

	virtual int metric(QPaintDevice::PaintDeviceMetric id) const override {
		if (vtbl->metric == 0) {
			return QPdfWriter::metric(id);
		}

		QPaintDevice::PaintDeviceMetric id_ret = id;
		int sigval1 = static_cast<int>(id_ret);

		int callback_return_value = vtbl->metric(this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QPdfWriter_virtualbase_metric(const VirtualQPdfWriter* self, int id);

	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QPdfWriter::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(this, sigval1);

		return callback_return_value;
	}

	friend bool QPdfWriter_virtualbase_event(VirtualQPdfWriter* self, QEvent* event);

	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QPdfWriter::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QPdfWriter_virtualbase_eventFilter(VirtualQPdfWriter* self, QObject* watched, QEvent* event);

	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QPdfWriter::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(this, sigval1);

	}

	friend void QPdfWriter_virtualbase_timerEvent(VirtualQPdfWriter* self, QTimerEvent* event);

	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QPdfWriter::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(this, sigval1);

	}

	friend void QPdfWriter_virtualbase_childEvent(VirtualQPdfWriter* self, QChildEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QPdfWriter::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(this, sigval1);

	}

	friend void QPdfWriter_virtualbase_customEvent(VirtualQPdfWriter* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QPdfWriter::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(this, sigval1);

	}

	friend void QPdfWriter_virtualbase_connectNotify(VirtualQPdfWriter* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QPdfWriter::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(this, sigval1);

	}

	friend void QPdfWriter_virtualbase_disconnectNotify(VirtualQPdfWriter* self, QMetaMethod* signal);

	virtual bool setPageLayout(const QPageLayout& pageLayout) override {
		if (vtbl->setPageLayout == 0) {
			return QPdfWriter::setPageLayout(pageLayout);
		}

		const QPageLayout& pageLayout_ret = pageLayout;
		// Cast returned reference into pointer
		QPageLayout* sigval1 = const_cast<QPageLayout*>(&pageLayout_ret);

		bool callback_return_value = vtbl->setPageLayout(this, sigval1);

		return callback_return_value;
	}

	friend bool QPdfWriter_virtualbase_setPageLayout(VirtualQPdfWriter* self, QPageLayout* pageLayout);

	virtual bool setPageSize(const QPageSize& pageSize) override {
		if (vtbl->setPageSize == 0) {
			return QPdfWriter::setPageSize(pageSize);
		}

		const QPageSize& pageSize_ret = pageSize;
		// Cast returned reference into pointer
		QPageSize* sigval1 = const_cast<QPageSize*>(&pageSize_ret);

		bool callback_return_value = vtbl->setPageSize(this, sigval1);

		return callback_return_value;
	}

	friend bool QPdfWriter_virtualbase_setPageSize(VirtualQPdfWriter* self, QPageSize* pageSize);

	virtual bool setPageOrientation(QPageLayout::Orientation orientation) override {
		if (vtbl->setPageOrientation == 0) {
			return QPdfWriter::setPageOrientation(orientation);
		}

		QPageLayout::Orientation orientation_ret = orientation;
		int sigval1 = static_cast<int>(orientation_ret);

		bool callback_return_value = vtbl->setPageOrientation(this, sigval1);

		return callback_return_value;
	}

	friend bool QPdfWriter_virtualbase_setPageOrientation(VirtualQPdfWriter* self, int orientation);

	virtual bool setPageMargins(const QMarginsF& margins, QPageLayout::Unit units) override {
		if (vtbl->setPageMargins == 0) {
			return QPdfWriter::setPageMargins(margins, units);
		}

		const QMarginsF& margins_ret = margins;
		// Cast returned reference into pointer
		QMarginsF* sigval1 = const_cast<QMarginsF*>(&margins_ret);
		QPageLayout::Unit units_ret = units;
		int sigval2 = static_cast<int>(units_ret);

		bool callback_return_value = vtbl->setPageMargins(this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QPdfWriter_virtualbase_setPageMargins(VirtualQPdfWriter* self, QMarginsF* margins, int units);

	virtual void setPageRanges(const QPageRanges& ranges) override {
		if (vtbl->setPageRanges == 0) {
			QPdfWriter::setPageRanges(ranges);
			return;
		}

		const QPageRanges& ranges_ret = ranges;
		// Cast returned reference into pointer
		QPageRanges* sigval1 = const_cast<QPageRanges*>(&ranges_ret);

		vtbl->setPageRanges(this, sigval1);

	}

	friend void QPdfWriter_virtualbase_setPageRanges(VirtualQPdfWriter* self, QPageRanges* ranges);

	virtual int devType() const override {
		if (vtbl->devType == 0) {
			return QPdfWriter::devType();
		}


		int callback_return_value = vtbl->devType(this);

		return static_cast<int>(callback_return_value);
	}

	friend int QPdfWriter_virtualbase_devType(const VirtualQPdfWriter* self);

	virtual void initPainter(QPainter* painter) const override {
		if (vtbl->initPainter == 0) {
			QPdfWriter::initPainter(painter);
			return;
		}

		QPainter* sigval1 = painter;

		vtbl->initPainter(this, sigval1);

	}

	friend void QPdfWriter_virtualbase_initPainter(const VirtualQPdfWriter* self, QPainter* painter);

	virtual QPaintDevice* redirected(QPoint* offset) const override {
		if (vtbl->redirected == 0) {
			return QPdfWriter::redirected(offset);
		}

		QPoint* sigval1 = offset;

		QPaintDevice* callback_return_value = vtbl->redirected(this, sigval1);

		return callback_return_value;
	}

	friend QPaintDevice* QPdfWriter_virtualbase_redirected(const VirtualQPdfWriter* self, QPoint* offset);

	virtual QPainter* sharedPainter() const override {
		if (vtbl->sharedPainter == 0) {
			return QPdfWriter::sharedPainter();
		}


		QPainter* callback_return_value = vtbl->sharedPainter(this);

		return callback_return_value;
	}

	friend QPainter* QPdfWriter_virtualbase_sharedPainter(const VirtualQPdfWriter* self);

	// Wrappers to allow calling protected methods:
	friend QObject* QPdfWriter_protectedbase_sender(const VirtualQPdfWriter* self);
	friend int QPdfWriter_protectedbase_senderSignalIndex(const VirtualQPdfWriter* self);
	friend int QPdfWriter_protectedbase_receivers(const VirtualQPdfWriter* self, const char* signal);
	friend bool QPdfWriter_protectedbase_isSignalConnected(const VirtualQPdfWriter* self, QMetaMethod* signal);
};

VirtualQPdfWriter* QPdfWriter_new(const QPdfWriter_VTable* vtbl, void* vdata, struct miqt_string filename) {
	QString filename_QString = QString::fromUtf8(filename.data, filename.len);
	return new VirtualQPdfWriter(vtbl, vdata, filename_QString);
}

VirtualQPdfWriter* QPdfWriter_new2(const QPdfWriter_VTable* vtbl, void* vdata, QIODevice* device) {
	return new VirtualQPdfWriter(vtbl, vdata, device);
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

QMetaObject* QPdfWriter_virtualbase_metaObject(const VirtualQPdfWriter* self) {

	return (QMetaObject*) self->QPdfWriter::metaObject();
}

void* QPdfWriter_virtualbase_metacast(VirtualQPdfWriter* self, const char* param1) {

	return self->QPdfWriter::qt_metacast(param1);
}

int QPdfWriter_virtualbase_metacall(VirtualQPdfWriter* self, int param1, int param2, void** param3) {

	return self->QPdfWriter::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

bool QPdfWriter_virtualbase_newPage(VirtualQPdfWriter* self) {

	return self->QPdfWriter::newPage();
}

QPaintEngine* QPdfWriter_virtualbase_paintEngine(const VirtualQPdfWriter* self) {

	return self->QPdfWriter::paintEngine();
}

int QPdfWriter_virtualbase_metric(const VirtualQPdfWriter* self, int id) {

	return self->QPdfWriter::metric(static_cast<VirtualQPdfWriter::PaintDeviceMetric>(id));
}

bool QPdfWriter_virtualbase_event(VirtualQPdfWriter* self, QEvent* event) {

	return self->QPdfWriter::event(event);
}

bool QPdfWriter_virtualbase_eventFilter(VirtualQPdfWriter* self, QObject* watched, QEvent* event) {

	return self->QPdfWriter::eventFilter(watched, event);
}

void QPdfWriter_virtualbase_timerEvent(VirtualQPdfWriter* self, QTimerEvent* event) {

	self->QPdfWriter::timerEvent(event);
}

void QPdfWriter_virtualbase_childEvent(VirtualQPdfWriter* self, QChildEvent* event) {

	self->QPdfWriter::childEvent(event);
}

void QPdfWriter_virtualbase_customEvent(VirtualQPdfWriter* self, QEvent* event) {

	self->QPdfWriter::customEvent(event);
}

void QPdfWriter_virtualbase_connectNotify(VirtualQPdfWriter* self, QMetaMethod* signal) {

	self->QPdfWriter::connectNotify(*signal);
}

void QPdfWriter_virtualbase_disconnectNotify(VirtualQPdfWriter* self, QMetaMethod* signal) {

	self->QPdfWriter::disconnectNotify(*signal);
}

bool QPdfWriter_virtualbase_setPageLayout(VirtualQPdfWriter* self, QPageLayout* pageLayout) {

	return self->QPdfWriter::setPageLayout(*pageLayout);
}

bool QPdfWriter_virtualbase_setPageSize(VirtualQPdfWriter* self, QPageSize* pageSize) {

	return self->QPdfWriter::setPageSize(*pageSize);
}

bool QPdfWriter_virtualbase_setPageOrientation(VirtualQPdfWriter* self, int orientation) {

	return self->QPdfWriter::setPageOrientation(static_cast<QPageLayout::Orientation>(orientation));
}

bool QPdfWriter_virtualbase_setPageMargins(VirtualQPdfWriter* self, QMarginsF* margins, int units) {

	return self->QPdfWriter::setPageMargins(*margins, static_cast<QPageLayout::Unit>(units));
}

void QPdfWriter_virtualbase_setPageRanges(VirtualQPdfWriter* self, QPageRanges* ranges) {

	self->QPdfWriter::setPageRanges(*ranges);
}

int QPdfWriter_virtualbase_devType(const VirtualQPdfWriter* self) {

	return self->QPdfWriter::devType();
}

void QPdfWriter_virtualbase_initPainter(const VirtualQPdfWriter* self, QPainter* painter) {

	self->QPdfWriter::initPainter(painter);
}

QPaintDevice* QPdfWriter_virtualbase_redirected(const VirtualQPdfWriter* self, QPoint* offset) {

	return self->QPdfWriter::redirected(offset);
}

QPainter* QPdfWriter_virtualbase_sharedPainter(const VirtualQPdfWriter* self) {

	return self->QPdfWriter::sharedPainter();
}

const QMetaObject* QPdfWriter_staticMetaObject() { return &QPdfWriter::staticMetaObject; }

const QPdfWriter_VTable* QPdfWriter_vtbl(const VirtualQPdfWriter* self) { return self->vtbl; }
void* QPdfWriter_vdata(const VirtualQPdfWriter* self) { return self->vdata; }
void QPdfWriter_setVdata(VirtualQPdfWriter* self, void* vdata) { self->vdata = vdata; }

QObject* QPdfWriter_protectedbase_sender(const VirtualQPdfWriter* self) {
	return self->sender();
}

int QPdfWriter_protectedbase_senderSignalIndex(const VirtualQPdfWriter* self) {
	return self->senderSignalIndex();
}

int QPdfWriter_protectedbase_receivers(const VirtualQPdfWriter* self, const char* signal) {
	return self->receivers(signal);
}

bool QPdfWriter_protectedbase_isSignalConnected(const VirtualQPdfWriter* self, QMetaMethod* signal) {
	return self->isSignalConnected(*signal);
}

void QPdfWriter_delete(QPdfWriter* self) {
	delete self;
}

