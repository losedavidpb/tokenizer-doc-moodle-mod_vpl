# This file is part of VPL for Moodle - http://vpl.dis.ulpgc.es/
#
# VPL for Moodle is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# VPL for Moodle is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with VPL for Moodle.  If not, see <http://www.gnu.org/licenses/>.

###################################################
# Makefile for VPL Tokenizer Documentation        #
#                                                 #
#	@author 	- David Parreño Barbuzano         #
#	@contact	- david.parreno101@alu.ulpgc.es   #
#	@source  	- Sphinx Documentation            #
###################################################

### Configuration

# The command to use instead of sphinx-build.
SPHINXBUILD = sphinx-build

# The build directory to use instead of the one
# chosen in sphinx-quickstart.
BUILDDIR = build

# When set (regardless of value), sphinx-build will not use color in terminal output.
# NO_COLOR takes precedence over FORCE_COLOR. See no-color.org for other libraries supporting this community standard.
#NO_COLOR = true

# When set (regardless of value), sphinx-build will use color in terminal output.
# NO_COLOR takes precedence over FORCE_COLOR.
FORCE_COLOR = true

# The source directory to use instead of the one
# chosen in sphinx-quickstart.
SOURCEDIR = source

# Additional options for sphinx-build. These options can also
# be set via the shortcut variable O (capital ‘o’).
SPHINXOPTS ?=

# Help command ----
# Put it first so that "make" without argument is like "make help".
help:
	@$(SPHINXBUILD) -M help "$(SOURCEDIR)" "$(BUILDDIR)" $(SPHINXOPTS) $(O)

# Avoid confusion for special targets such as help
.PHONY: help Makefile

# Build command ----
# Catch-all target: route all unknown targets to Sphinx using the new
# "make mode" option.  $(O) is meant as a shortcut for $(SPHINXOPTS).
%: Makefile
	@$(SPHINXBUILD) -M $@ "$(SOURCEDIR)" "$(BUILDDIR)" $(SPHINXOPTS) $(O)
