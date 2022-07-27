# Configuration file for the Sphinx documentation builder.
#
# For the full list of built-in configuration values, see the documentation:
# https://www.sphinx-doc.org/en/master/usage/configuration.html

# -- Project information -----------------------------------------------------
# https://www.sphinx-doc.org/en/master/usage/configuration.html#project-information

# The documented project’s name.
project = 'tokenizer-doc_vpl'

# The author name(s) of the document. The default value is 'unknown'.
author = 'David Parreño Barbuzano'

# A copyright statement in the style '2008, Author Name'.
copyright = '2022, ' + author

# An alias of copyright.
project_copyright = copyright

# The major project version, used as the replacement for |version|.
# Please note that release version may differ from version value.
version = '0.1'

# The full project version, used as the replacement for |release|.
# If you don’t need the separation provided between version and release,
# just set them both to the same value.
release = '0.1'

# -- General configuration ---------------------------------------------------
# https://www.sphinx-doc.org/en/master/usage/configuration.html#general-configuration

# A list of strings that are module names of extensions.
# These can be extensions coming with Sphinx (named sphinx.ext.*) or custom ones.
extensions = []

# The file extensions of source files. Sphinx considers the files with this suffix as sources.
# The value can be a dictionary mapping file extensions to file types.
source_suffix = {
    '.rst': 'restructuredtext',
    '.txt': 'restructuredtext',
    '.md': 'markdown',
}

# The encoding of all reST source files. The recommended encoding,
# and the default value, is 'utf-8-sig'.
source_encoding = 'utf-8-sig'

# The document name of the “root” document, that is, the document
# that contains the root toctree directive. Default is 'index'.
root_doc = 'tokenizer-doc_vpl'

# Same as root_doc.
master_doc = root_doc

# A list of glob-style patterns [1] that should be excluded when looking for source files.
# They are matched against the source file names relative to the source directory, using
# slashes as directory separators on all platforms.
exclude_patterns = []

# A list of glob-style patterns [1] that are used to find source files.
# They are matched against the source file names relative to the source directory,
# using slashes as directory separators on all platforms. The default is **, meaning
# that all files are recursively included from the source directory.
include_patterns = []

# A list of paths that contain extra templates (or templates that overwrite
# builtin/theme-specific templates). Relative paths are taken as relative to
# the configuration directory.
templates_path = ['_templates']

# A string of reStructuredText that will be included at the end of every source file that is read.
rst_epilog = ''

# A string of reStructuredText that will be included at the beginning of every source file that is read.
rst_prolog = ''

# A list of warning types to suppress arbitrary warning messages.
supress_warnings = []

# -- Options for HTML output -------------------------------------------------
# https://www.sphinx-doc.org/en/master/usage/configuration.html#options-for-html-output

# The theme to use for HTML and HTML Help pages.  See the documentation for
# a list of builtin themes.
html_theme = 'alabaster'

# Add any paths that contain custom static files (such as style sheets) here,
# relative to this directory. They are copied after the builtin static files,
# so a file named "default.css" will overwrite the builtin "default.css".
html_static_path = ['_static']
