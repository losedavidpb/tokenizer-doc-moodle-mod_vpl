Languages supported
===================

This chapter shows a list of the currently supported programming languages. For each
one, a table with information about support as indicated in the next table is shown.

.. csv-table::
   :header: "Feature", "Supported", "Details"
   :align: center

   "Name", "Name of the Tokenizer", "The name to detect the tokenizer."
   "File extensions", "List of extensions", "The system uses it to detect what programming language to use."
   "Compiler/Interpreter", "Tool used", "External links"
   "Old Similarity", "Yes/No", "If the search by similarity using the old tokenizer is supported"
   "Version", "", "Version supported features"
   "Bugs", "", "Errors on the definitions of tokenizer rule files"

.. note::

   If you don't find the programming language that you are searching for, contact us
   by the mail jc.rodriguezdelpino@ulpgc.es or losedavidpb@gmail.com.

Ada
---

.. image:: ../images/languages_supported/ada.png
   :width: 100
   :height: 100
   :align: left

Ada is a structured, statically typed, imperative, and object-oriented programming language.
Home page https://www.adaic.org

.. csv-table::
   :header: "Feature", "Supported", "Details"
   :align: center

   "Name", "ada-tokenizer", ""
   "File extensions", "ada, adb, ads", ""
   "Compiler/Interpreter", "Gnat", "GNAT (GNU Ada) http://www.gnu.org/software/gnat/"
   "Old Similarity", "Yes", ""
   "Version", "", "Available versions for Ada 2005 and Ada 2012. Ada 2005 is the default compiler."
   "Bugs", "", "No support for SPARK dialect or Ravenscar profile"

C
-

.. image:: ../images/languages_supported/c.png
   :width: 100
   :height: 100
   :align: left

C is a general-purpose, imperative programming language that supports structured programming.

.. csv-table::
   :header: "Feature", "Supported", "Details"
   :align: center

   "Name", "c-tokenizer", ""
   "File extensions", "c, h", ""
   "Compiler/Interpreter", "gcc", "GNU GCC https://gcc.gnu.org/"
   "Old Similarity", "Yes", ""
   "Version", "", "Available ANSI-C, C99 and C11. Default version is the compiler default version."
   "Bugs", "", "Bugs with complex macros that are declared on multiple lines"

C++
---

.. image:: ../images/languages_supported/cpp.png
   :width: 100
   :height: 100
   :align: left

C++ is a moderm general-purpose programming language derived from C.

.. csv-table::
   :header: "Feature", "Supported", "Details"
   :align: center

   "Name", "cpp-tokenizer", ""
   "File extensions", "cc, cpp, C, c++, hxx, H", ""
   "Compiler/Interpreter", "g++", "GNU C++ https://gcc.gnu.org/projects/cxx-status.html"
   "Old Similarity", "Yes", ""
   "Version", "", "Versions available C++98, C++11, C++14, C++17. Default version is the compiler default version."
   "Bugs", "", "Same problems as C programming language"

Fortran
-------

.. image:: ../images/languages_supported/fortran.png
   :width: 100
   :height: 100
   :align: left

Fortran (formerly FORTRAN) is a general-purpose, compiled imperative programming language.

.. csv-table::
   :header: "Feature", "Supported", "Details"
   :align: center

   "Name", "fortran-tokenizer", ""
   "File extensions", "f, F", ""
   "Compiler/Interpreter", "gfortran", "GNU GCC Fortran https://gcc.gnu.org/fortran/"
   "Old Similarity", "Yes", ""
   "Version", "", ""
   "Bugs", "", "Rule definitions are not fully tested"

Java
----

.. image:: ../images/languages_supported/java.png
   :width: 100
   :height: 150
   :align: left

Java is a moderm object-oriented programming language.
Home page https://www.oracle.com/java/.

.. csv-table::
   :header: "Feature", "Supported", "Details"
   :align: center

   "Name", "java-tokenizer", ""
   "File extensions", "java", ""
   "Compiler/Interpreter", "javac and java", "https://www.oracle.com/java/ and https://openjdk.java.net/"
   "Old Similarity", "Yes", ""
   "Version", "", ""
   "Bugs", "", "No errors, but tokenizer rule file is not complete"

Scheme
------

.. image:: ../images/languages_supported/scheme.png
   :width: 100
   :height: 100
   :align: left

Scheme is a functional programming language derived from Lisp.

.. csv-table::
   :header: "Feature", "Supported", "Details"
   :align: center

   "Name", "scheme-tokenizer", ""
   "File extensions", "scm, ss", ""
   "Compiler/Interpreter", "mzscheme", "https://racket-lang.org/"
   "Old Similarity", "Yes", ""
   "Version", "", ""
   "Bugs", "", "No errors or unknown bugs"
