# -*- coding: utf-8 -*-

# Form implementation generated from reading ui file 'mmqgis_geometry_convert_form.ui'
#
# Created: Fri Dec 20 08:54:19 2013
#      by: PyQt4 UI code generator 4.9.1
#
# WARNING! All changes made in this file will be lost!

from PyQt4 import QtCore, QtGui

try:
    _fromUtf8 = QtCore.QString.fromUtf8
except AttributeError:
    _fromUtf8 = lambda s: s

class Ui_mmqgis_geometry_convert_form(object):
    def setupUi(self, mmqgis_geometry_convert_form):
        mmqgis_geometry_convert_form.setObjectName(_fromUtf8("mmqgis_geometry_convert_form"))
        mmqgis_geometry_convert_form.setWindowModality(QtCore.Qt.ApplicationModal)
        mmqgis_geometry_convert_form.setEnabled(True)
        mmqgis_geometry_convert_form.resize(372, 314)
        mmqgis_geometry_convert_form.setMouseTracking(False)
        self.buttonBox = QtGui.QDialogButtonBox(mmqgis_geometry_convert_form)
        self.buttonBox.setGeometry(QtCore.QRect(110, 270, 160, 26))
        self.buttonBox.setOrientation(QtCore.Qt.Horizontal)
        self.buttonBox.setStandardButtons(QtGui.QDialogButtonBox.Cancel|QtGui.QDialogButtonBox.Ok)
        self.buttonBox.setObjectName(_fromUtf8("buttonBox"))
        self.label = QtGui.QLabel(mmqgis_geometry_convert_form)
        self.label.setGeometry(QtCore.QRect(10, 210, 161, 22))
        self.label.setObjectName(_fromUtf8("label"))
        self.label_3 = QtGui.QLabel(mmqgis_geometry_convert_form)
        self.label_3.setGeometry(QtCore.QRect(10, 90, 141, 22))
        self.label_3.setObjectName(_fromUtf8("label_3"))
        self.filename = QtGui.QLineEdit(mmqgis_geometry_convert_form)
        self.filename.setGeometry(QtCore.QRect(10, 230, 261, 21))
        self.filename.setReadOnly(False)
        self.filename.setObjectName(_fromUtf8("filename"))
        self.browse = QtGui.QPushButton(mmqgis_geometry_convert_form)
        self.browse.setGeometry(QtCore.QRect(280, 230, 79, 26))
        self.browse.setObjectName(_fromUtf8("browse"))
        self.newgeometry = QtGui.QComboBox(mmqgis_geometry_convert_form)
        self.newgeometry.setGeometry(QtCore.QRect(10, 110, 351, 27))
        self.newgeometry.setObjectName(_fromUtf8("newgeometry"))
        self.sourcelayer = QtGui.QComboBox(mmqgis_geometry_convert_form)
        self.sourcelayer.setGeometry(QtCore.QRect(10, 30, 351, 27))
        self.sourcelayer.setObjectName(_fromUtf8("sourcelayer"))
        self.label_4 = QtGui.QLabel(mmqgis_geometry_convert_form)
        self.label_4.setGeometry(QtCore.QRect(10, 10, 121, 22))
        self.label_4.setObjectName(_fromUtf8("label_4"))
        self.oldgeometry = QtGui.QLabel(mmqgis_geometry_convert_form)
        self.oldgeometry.setGeometry(QtCore.QRect(10, 60, 241, 22))
        self.oldgeometry.setObjectName(_fromUtf8("oldgeometry"))
        self.mergefield = QtGui.QComboBox(mmqgis_geometry_convert_form)
        self.mergefield.setGeometry(QtCore.QRect(10, 170, 171, 27))
        self.mergefield.setObjectName(_fromUtf8("mergefield"))
        self.mergeattop = QtGui.QComboBox(mmqgis_geometry_convert_form)
        self.mergeattop.setGeometry(QtCore.QRect(190, 170, 171, 27))
        self.mergeattop.setObjectName(_fromUtf8("mergeattop"))
        self.label_2 = QtGui.QLabel(mmqgis_geometry_convert_form)
        self.label_2.setGeometry(QtCore.QRect(10, 150, 161, 22))
        self.label_2.setObjectName(_fromUtf8("label_2"))
        self.label_5 = QtGui.QLabel(mmqgis_geometry_convert_form)
        self.label_5.setGeometry(QtCore.QRect(190, 150, 171, 22))
        self.label_5.setObjectName(_fromUtf8("label_5"))

        self.retranslateUi(mmqgis_geometry_convert_form)
        QtCore.QObject.connect(self.buttonBox, QtCore.SIGNAL(_fromUtf8("accepted()")), mmqgis_geometry_convert_form.accept)
        QtCore.QObject.connect(self.buttonBox, QtCore.SIGNAL(_fromUtf8("rejected()")), mmqgis_geometry_convert_form.reject)
        QtCore.QMetaObject.connectSlotsByName(mmqgis_geometry_convert_form)

    def retranslateUi(self, mmqgis_geometry_convert_form):
        mmqgis_geometry_convert_form.setWindowTitle(QtGui.QApplication.translate("mmqgis_geometry_convert_form", "Geometry Convert", None, QtGui.QApplication.UnicodeUTF8))
        self.label.setText(QtGui.QApplication.translate("mmqgis_geometry_convert_form", "Output Shapefile", None, QtGui.QApplication.UnicodeUTF8))
        self.label_3.setText(QtGui.QApplication.translate("mmqgis_geometry_convert_form", "New Geometry Type", None, QtGui.QApplication.UnicodeUTF8))
        self.filename.setText(QtGui.QApplication.translate("mmqgis_geometry_convert_form", "temp.shp", None, QtGui.QApplication.UnicodeUTF8))
        self.browse.setText(QtGui.QApplication.translate("mmqgis_geometry_convert_form", "Browse...", None, QtGui.QApplication.UnicodeUTF8))
        self.label_4.setText(QtGui.QApplication.translate("mmqgis_geometry_convert_form", "Source Layer", None, QtGui.QApplication.UnicodeUTF8))
        self.oldgeometry.setText(QtGui.QApplication.translate("mmqgis_geometry_convert_form", "Geometry Type", None, QtGui.QApplication.UnicodeUTF8))
        self.label_2.setText(QtGui.QApplication.translate("mmqgis_geometry_convert_form", "Merge Field", None, QtGui.QApplication.UnicodeUTF8))
        self.label_5.setText(QtGui.QApplication.translate("mmqgis_geometry_convert_form", "Merge Attribute Operation", None, QtGui.QApplication.UnicodeUTF8))

