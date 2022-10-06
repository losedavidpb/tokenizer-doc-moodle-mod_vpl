Introduction
============

The Virtual Programming Lab for Moodle (VPL) Tokenizer (VPLT) is a tool of VPL
to generate lexical analyzers for programming languages in an easy way.
VPLT is licensed under `GNU GPL3`_.

.. _GNU GPL3: https://www.gnu.org/licenses/gpl-3.0-standalone.html

Its main features are:

* Compatibility with the similarity search feature of VPL
* Interface to include lexical analyzers
* Support for old VPL tokenizers
* Easy and quick customization

This program is based on the tokenizer of the `Ace editor <https://ace.c9.io/>`_.
If you are interested, here there is a `link`_ to the repository of Ace with
the implementation of the tokenizer.

.. _link: https://github.com/ajaxorg/ace

Objectives
----------

Before VPL Tokenizer, the lexical analyzers used at VPL for similarity search
were based on specific automata for each programming language. This was a big
handicap, since developers have to spend a lot of time and effort to just include
support for a single language.

The main objective of VPLT is to provide teachers and developers with a simpler
and more reliable way to create lexical analyzers with just the creation of
a JSON file that contains a set of rules and states for the automata.

Requirements
------------

To use VPL Tokenizer with the expected functionality, you must install
VPL fulfilling the following requirements:

* Moodle 4.0 or higher
* PHP 7.4.3 or higher
* Modern browsers

For more information about VPL installation, go to the official `VPL manual`_.

.. _VPL manual: https://vpl.dis.ulpgc.es/documentation/vpl-3.4.3+/installation.html#requirements

Limitations
-----------

Before using VPL Tokenizer, you must consider the following limitations:

* It is not possible to define anonymous rules or states
* Tokenizers' names must follow the format ``<namelang>-tokenizer``
* There is no way to ignore states or rules during inheritance
* It could happen that a badly defined tokenizer provokes an infinite loop

Other uses
----------

Although VPL Tokenizer is mainly intended for similarity search, it could have
other uses. Here is a list of some of those uses.

* To generate the lexer of a compiler
* Syntax highlighting for code editors
* Evaluation of the quality of the code of a source file
* Classification of words, analysis, clustering
* Spelling or Grammar Checking
