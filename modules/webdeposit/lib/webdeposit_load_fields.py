# -*- coding: utf-8 -*-
##
## This file is part of Invenio.
## Copyright (C) 2012, 2013 CERN.
##
## Invenio is free software; you can redistribute it and/or
## modify it under the terms of the GNU General Public License as
## published by the Free Software Foundation; either version 2 of the
## License, or (at your option) any later version.
##
## Invenio is distributed in the hope that it will be useful, but
## WITHOUT ANY WARRANTY; without even the implied warranty of
## MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU
## General Public License for more details.
##
## You should have received a copy of the GNU General Public License
## along with Invenio; if not, write to the Free Software Foundation, Inc.,
## 59 Temple Place, Suite 330, Boston, MA 02111-1307, USA.

import os
from wtforms import Field
from invenio.config import CFG_PYLIBDIR
from invenio.pluginutils import PluginContainer

def plugin_builder(plugin_name, plugin_code):
    try:
        all = getattr(plugin_code, '__all__')
        for name in all:
            candidate = getattr(plugin_code, name)
            if issubclass(candidate, Field):
                return candidate
    except AttributeError:
        pass

CFG_FIELDS = PluginContainer(os.path.join(CFG_PYLIBDIR, 'invenio', 'webdeposit_fields', '*.py'), \
                             plugin_builder=plugin_builder)

""" Change the names of the fields
    from the file names to the class names """

class Fields(object):
    pass
fields = Fields()

for field in CFG_FIELDS.itervalues():
    if field is not None:
        fields.__setattr__ (field.__name__, field)