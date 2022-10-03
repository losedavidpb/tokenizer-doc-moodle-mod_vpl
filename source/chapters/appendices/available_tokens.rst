Available tokens
================

This appendix shows a docummented list of all types of tokens supported by the VPLT engine.
For each one, a table with the definitions of the tokens as indicated in the next table is shown.

.. csv-table::
   :header: "Name", "Details"
   :align: center

   "Name of the first token", "Explanation of the first token"
   "Name of the second token", "Explanation of the second token"

.. note::

   Some of the token's names have been extracted from the `TextMate Manual`_.

.. _TextMate Manual: https://macromates.com/manual/en/language_grammars

Tokens for comments
-------------------

.. csv-table::
   :header: "Name", "Details"
   :align: center

   "comment", "Any type of comment"
   "comment.line", "One line comments"
   "comment-line.double-slash", "One line comments represented with ``//``"
   "comment-line.double-dash", "One line comments represented with ``--``"
   "comment-line.number-sign", "One line comments represented with ``#``"
   "comment-line.percentage", "One line comments represented with ``%``"
   "comment-line.character", "One line comments with other characters"
   "comment.block", "Multi-line comments"
   "comment.block.documentation", "Multi-line comments for documentation"

Tokens for constants
--------------------

.. csv-table::
   :header: "Name", "Details"
   :align: center

   "constant", "Constant values, literals, etc"
   "constant.numeric", "Numeric constants"
   "constant.character", "Special character constants"
   "constant.character.escape", "Character constants with an escape character"
   "constant.language", "Special constants of the programming language"
   "constant.language.escape", "Special programming language constants with an escape character"
   "constant.other", "Other type of constant or literal"

Tokens for entities
-------------------

.. csv-table::
   :header: "Name", "Details"
   :align: center

   "entity", "Entity words for functions, labels, classes, etc"
   "entity.name", "Entity names"
   "entity.name.function", "Function names"
   "entity.name.type", "Names of declared types or classes"
   "entity.name.tag", "Markup tag names"
   "entity.name.section", "Names of sections or headings"
   "entity.other", "Other type of entity"
   "entity.other.inherited-class", "Declaration of the superclass or the base class"
   "entity.other.attribute-name", "Name of an attribute of a tag"

Tokens for markup languages
---------------------------

.. csv-table::
   :header: "Name", "Details"
   :align: center

   "markup", "Tokens for markup languages"
   "markup.underline", "Underlined text"
   "markup.unerline.link", "Underlined text defined as links"
   "markup.bold", "Bold text"
   "markup.heading", "Headers"
   "markup.italic", "Italic text"
   "markup.list", "Lists"
   "markup.list.numbered", "Numbered lists"
   "markup.list.unnumbered", "Unnumbered lists"
   "markup.quote", "Quoted text"
   "markup.raw", "Raw text, such as source code"
   "markup.other", "Other type of tokens for markup languages"

Tokens for keywords
-------------------

.. csv-table::
   :header: "Name", "Details"
   :align: center

   "keyword", "Words reserved for a specific purpose"
   "keyword.control", "Keywords reserved for code control"
   "keyword.operator", "Keywords reserved for operators"
   "keyhword.other", "Other type of keywords"

Tokens for data storage
-----------------------

.. csv-table::
   :header: "Name", "Details"
   :align: center

   "storage", "Tokens for data storage"
   "storage.type", "Type of the stored data"
   "storage.modifier", "Access modifier of the stored data."

Tokens for strings
------------------

.. csv-table::
   :header: "Name", "Details"
   :align: center

   "string", "Character strings"
   "string.quoted", "Quoted strings"
   "string.quoted.single", "Quoted strings with single quotes"
   "string.quoted.double", "Quoted strings with double quotes"
   "string.quoted.triple", "Quoted strings with triple quotes"
   "string.quoted.other", "Other type of quoted strings"
   "string.unquoted", "Unquoted strings"
   "string.interpolated", "Strings with expressions that are evaluated"
   "string.regexp", "Strings for regular expressions"
   "string.other", "Other type of strings"

Tokens for frameworks or libraries
----------------------------------

.. csv-table::
   :header: "Name", "Details"
   :align: center

   "support", "Provided by frameworks or libraries"
   "suppport.function", "Functions of a library or framework"
   "support.class", "Classes of a library or framework"
   "support.type", "Types of a library or framework"
   "support.constant", "Constants of a library or framework"
   "support.variable", "Variables of a library or framework"
   "support.other", "Other type of support of a library or framework"

General tokens
--------------

.. csv-table::
   :header: "Name", "Details"
   :align: center

   "meta", "To markup larger parts of a document"
   "identifier", "Descriptive name of a token"
   "punctuation", "Punctuation symbol"
   "punctuation.separator", "Punctuation symbol used as a separator"
   "paren", "Parenthesis"
   "paren.lparen", "Beginning parenthesis ``(``"
   "paren.rparen", "Closing parenthesis ``)``"
   "text", "Any piece of text"

Tokens for variables
--------------------

.. csv-table::
   :header: "Name", "Details"
   :align: center

   "variable", "Variables written at the source code"
   "variable.parameter", "Parameter of a function or method"
   "variable.language", "Special variables of the programming language"
   "variable.other", "Other type of variables"

Raw tokens
----------

.. csv-table::
   :header: "Name", "Details"
   :align: center

   "vpl_identifier", "Descriptive name of a variable, function, attribute, etc"
   "vpl_literal", "Associated with constants and literals of any data type"
   "vpl_operator", "Associated with symbols and signs that define operators"
   "vpl_reserved", "Associated with keyword or reserved words"
   "vpl_null", "Types of tokens that are discarded by VPLT"
   "vpl_other", "Other type of raw token"
