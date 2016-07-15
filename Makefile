# Makefile for Calc.

# This file is part of XEmacs.

# XEmacs is free software; you can redistribute it and/or modify it
# under the terms of the GNU General Public License as published by the
# Free Software Foundation; either version 2, or (at your option) any
# later version.

# XEmacs is distributed in the hope that it will be useful, but WITHOUT
# ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
# FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License
# for more details.

# You should have received a copy of the GNU General Public License
# along with XEmacs; see the file COPYING.  If not, write to
# the Free Software Foundation, Inc., 59 Temple Place - Suite 330,
# Boston, MA 02111-1307, USA.

VERSION = 1.5
AUTHOR_VERSION = 2.2
MAINTAINER = XEmacs Development Team <xemacs-beta@xemacs.org>
PACKAGE = calc
PKG_TYPE = regular
REQUIRES = xemacs-base
CATEGORY = standard

ELCS = calc-macs.elc calc.elc calc-aent.elc calcalg2.elc calcalg3.elc \
	calc-alg.elc calc-arith.elc calc-bin.elc calc-comb.elc calccomp.elc \
	calc-cplx.elc calc-embed.elc calc-ext.elc calc-fin.elc \
	calc-forms.elc calc-frac.elc calc-funcs.elc calc-graph.elc \
	calc-help.elc calc-incom.elc calc-keypd.elc calc-lang.elc \
	calc-map.elc calc-math.elc calc-menu.elc calc-misc.elc \
	calc-mode.elc calc-mtx.elc calc-nlfit.elc calc-poly.elc calc-prog.elc calc-rewr.elc \
	calc-rules.elc calcsel2.elc calc-sel.elc calc-stat.elc \
	calc-store.elc calc-stuff.elc calc-trail.elc calc-undo.elc \
	calc-units.elc calc-vec.elc calc-yank.elc

DOCS_TEXINFO_EXTENSION = t
STANDARD_DOCS = t

DATA_FILES = calccard.tex
DATA_DEST = .

PRELOADS = -l calc-macs.el -l calc.el

include ../../XEmacs.rules
