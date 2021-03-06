# -*- coding: utf-8 -*-
"""
/***************************************************************************
 LayerCombinations
                                 A QGIS plugin
 Store and restore layer visibilities
                             -------------------
        begin                : 2012-12-26
        copyright            : (C) 2012 by Olivier Dalang
        email                : olivier.dalang@gmail.com
 ***************************************************************************/

/***************************************************************************
 *                                                                         *
 *   This program is free software; you can redistribute it and/or modify  *
 *   it under the terms of the GNU General Public License as published by  *
 *   the Free Software Foundation; either version 2 of the License, or     *
 *   (at your option) any later version.                                   *
 *                                                                         *
 ***************************************************************************/
 This script initializes the plugin, making it known to QGIS.
"""


def name():
    return "Layer Combinations"


def description():
    return "Store and restore layer visibilities in 'combinations' which can then be applied to composer maps."


def version():
    return "Version 1.01"


def icon():
    return "icon.png"


def qgisMinimumVersion():
    return "2.0"

def author():
    return "Olivier Dalang"

def email():
    return "olivier.dalang@gmail.com"

def classFactory(iface):
    # load LayerCombinations class from file LayerCombinations
    from LcMain import LcMain
    return LcMain(iface)
