# -*- coding: utf-8 -*-
##
## This file is part of Invenio.
## Copyright (C) 2006, 2007, 2008, 2009, 2010, 2011, 2012 CERN.
##
## Invenio is free software; you can redistribute it and/or
## modify it under the terms of the GNU General Public License as
## published by the Free Software Foundation; either version 2 of the
## License, or (at your option) any later version.
##
## Invenio is distributed in the hope that it will be useful, but
## WITHOUT ANY WARRANTY; without even the implied warranty of
## MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
## General Public License for more details.
##
## You should have received a copy of the GNU General Public License
## along with Invenio; if not, write to the Free Software Foundation, Inc.,
## 59 Temple Place, Suite 330, Boston, MA 02111-1307, USA.


"""
bibconvert_xquery_engine.py - Wrapper for xquery engine.

Work in progress.

"""

__revision__ = "$Id$"

import sys
import os

from warnings import warn

# By default use xqilla as xquery processor
processor_type = 0
try:
    import simplexquery
    processor_type = 1
except ImportError:
    pass

if processor_type == 0:
    sys.stderr.write("No xquery processor could be found.\n")

print ('Inside xquery_engin')

def convert(xmltext, xquery_file):
    print('inside xquery_convert')


