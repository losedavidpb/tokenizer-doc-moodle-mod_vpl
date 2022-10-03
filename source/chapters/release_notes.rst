Release notes
================

This chapter includes the documentation of all notable changes
that have been made during the development of VPL Tokenizer.

The format is based on `Keep a Changelog <https://keepachangelog.com/en/1.0.0/>`_,
and this project adheres to `Semantic Versioning <https://semver.org/spec/v2.0.0.html>`_.

VPLT 4.0.1
----------

This is a small release with some fixes for similarity and tokenizer factory classes.
PHPUnit tests for mentioned classes have also been refactored to reduce complexity.

VPLT 4.0.0
----------

Added
~~~~~

* Includes a class factory for similarity search that considers old and new tokenizers
* Includes a generic similarity class to include new tokenizers without a specific similarity class
* Defines the option ``max_token_count`` to update the maximum number of tokens
* Adds one scenario for some programming languages at Behat tests

Changed
~~~~~~~

* Replace the prefix ``_highlight_rules`` used in JSON files with rules to ``_tokenizer_rules``
* Now all rules are stored in ``tokenizer_rules`` directory instead of ``highlight_rules``
* Refactor C++ tokenizer rules file to inherit C rules

Fixed
~~~~~

* Improves performance at Behat tests when VPL activity is initializing
* Fixes inheritance operation to also consider overridden tokens
* Fixes some errors in all tokenizer rules files

VPLT 3.3.1
----------

This is a bug fix release of VPLT 3.3.0 that includes some internal
changes used by developers to facilitate the detection of errors in
JSON files with rules.

VPLT 3.3.0
----------

Added
~~~~~

* Includes NULL value ``vpl_null`` as a raw VPL type for tokens' names
* Includes C++ and Scheme JSON files with rules
* Includes Behat tests for similarity for some tokenizers

Fixed
~~~~~

* Fixes and improve Java, Ada, and Fortran tokenizer rules
* Fixes ``override_tokens`` to avoid the redefinition of raw VPL types
* Fixes ``check_rules`` to consider the extension, name, and override_tokens
* Fixes initialization for ``override_tokens`` option
* Fixes general errors to improve coverage value

VPLT 3.2.1
----------

This is a small release with some bug fixes and support for C.
The changes are documented at the following list.

* Includes a JSON file with rules for the C programming language
* Provides support for Moodle 3.4.0 with PHP 7.3.0
* Sets compatibility between old and new tokenizers
* Fixes tokenizer factory class to consider old tokenizers

VPLT 3.2.0
----------

Added
~~~~~

* Includes a factory class to create tokenizers
* Adds ``override_tokens`` option to add/update tokens' names

Fixed
~~~~~

* Fixes verbosity for error messages for tokenizer
* Fixse parse operation to be compatible with similarity search

VPLT 3.1.1
----------

Added
~~~~~

* Includes an internal method to update the maximum number of tokens
* Internal option to disable verbosity for error messages

Fixed
~~~~~

* Improves test cases to have a great code coverage
* Fixes parse operation for cases with overflow tokens
* Fixes tokenizer to truly consider capturing groups
* Fixes parse operation to ignore empty or unexisted tokens
* Fixes errors related to pattern regerence at token's regex

VPLT 3.1.0
----------

Added
~~~~~

* Includes JSON file with rules for Fortran
* Includes coberture compatibility for VPL plugin

Changed
~~~~~~~

* Now ``next`` could only be defined with a string

Fixed
~~~~~

* Fixes rules file of Java programming language
* Fixes initialization to truly use rule's regex

VPLT 3.0.1
----------

This is a bug fix release of VPLT 3.0.0 with lots of new test cases
considered and some changes based on Moodle codestyle.

VPLT 3.0.0
----------

This is an important release which includes some bug fixes and
important changes related to the structure of a JSON file with rules.

New structure
~~~~~~~~~~~~~

The main structure of a JSON file with rules has been updated to be
as similar as the files defined at `Ace Editor <https://ace.c9.io/>`_.
This change has also allow to improve the initialization of the
tokenizer, since there are less options to check.

.. code-block:: JSON

   {
      "inherit_rules": "text_highlight_rules",
      "check_rules": true,
      "states": {
         "start": [
            {
               "token": "comment",
               "regex": "\\/\\/"
            }
         ]
      }
   }

Fixed
~~~~~

* Fixes codestyle for PHPUnit tests
* Small fixes at tokenizer's initialization

VPLT 2.1.2
----------

Changed
~~~~~~~

* Now ``token`` must be one of the available predefined tokens
* All JSON files with rules must always contain ``start`` state
* Sets default value for ``extension`` to ``no-ext``

Fixed
~~~~~

* Fixes syntax checker for ``extension`` option
* Fixes inheritance operation to consider repeated states

VPLT 2.1.1
----------

This release includes changes that fix codestyle, which is now
based on Moodle specifications.

VPLT 2.1.0
----------

Added
~~~~~

* ``name`` option has been added to be able to set the tokenizer's name
* You can set the extensions of a file of a programming language with ``extension``

Fixed
~~~~~

* Improves performance deleting unused data when if possible
* Refactors initialization to improve performance

VPLT 2.0.0
----------

This release includes lots of important changes with new features
and some bug fixes. Please take into account that at this moment
tokenizer is just a syntax checker.

Features
~~~~~~~~

Tokenizer rules
^^^^^^^^^^^^^^^

Now VPL Tokenizer generates lexical analyzers using a JSON file with a set of
rules. This file includes options with settings and an array of indexable states
which in turn contain a list of rules.

.. code-block:: JSON

   {
      "inherit_rules": "text_highlight_rules",
      "check_rules": true,
      "states": [
         {
            "name": "start",
            "data": [
               {
                  "token": "comment",
                  "regex": "\\/\\/"
               }
            ]
         }
      ]
   }

.. note::

   You can include C-style comments at JSON files with rules,
   but for performance reasons it is better to avoid them.

New options
^^^^^^^^^^^

At this release it is possible to customize the behaviour and rules of
the VPL tokenizer. See more information at `Option section <tokenizer_rules.html#options>`_.

* You can enable/disable syntax checker of the JSON file using ``check_rules``
* It is possible to inherit rules of another file with ``inherit_rules`` option
* ``token`` has been added to set the token's name
* ``regex`` option allows to define the regular expression of the rule
* You can define the next state to go with ``next`` option
* ``default_token`` is a special option to specify the token's name to use if any rule matches

Testing
~~~~~~~

VPL Tokenizer now uses PHPUnit framework to assure software has a proper functionality.
On this case, we have included tests for syntax checker, discard operation for comments,
and inheritance feature.

Changed
~~~~~~~

* Tokenization could be done for an entire file or for a line of it
* Ada and Java now include compatibility with new tokenizer
* Includes verbosity for errors and exceptions
* Specifies data type at variables for security reasons
* Upgrades VPL to version 3.5.0+ to use Moodle 4.0
