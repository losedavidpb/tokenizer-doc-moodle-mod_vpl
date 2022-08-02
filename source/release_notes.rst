4. Release notes
================

This chapter includes a completed documentation of all notable
changes that has been maded during the development of VPL Tokenizer.

The format is based on `Keep a Changelog <https://keepachangelog.com/en/1.0.0/>`_,
and this project adheres to `Semantic Versioning <https://semver.org/spec/v2.0.0.html>`_.

VPLT 4.0.1
----------

This is a small release with some fixes for similarity and tokenizer factory classes.
PHPUnit tests for mentioned classes have also be refactored to reduce complexity.

VPLT 4.0.0
----------

Added
~~~~~

* Include a class factory for similarity search that considers old and new tokenizers
* Include a generic similarity class to include new tokenizers without a specific similarity class
* Define the option ``max_token_count`` to update maximum number of tokens
* Add one scenario for some programming languages at Behat tests

Changed
~~~~~~~

* Replace the prefix ``_highlight_rules`` used at JSON files with rules to ``_tokenizer_rules``
* Now all rules are stored at ``tokenizer_rules`` directory instead of ``highlight_rules``
* Refactor C++ tokenizer rules file to inherit C rules

Fixed
~~~~~

* Improve performance at Behat tests when VPL activity is initializing
* Fix inheritance operation to also consider overrided tokens
* Fix some errors at all tokenizer rules files

VPLT 3.3.1
----------

This is a bug fix release of VPLT 3.3.0 that includes some internal
changes used by developers to facilitate the detection of errors at
JSON files with rules.

VPLT 3.3.0
----------

Added
~~~~~

* Include NULL value ``vpl_null`` as a raw VPL type for tokens' names
* Include C++ and Scheme JSON files with rules
* Include Behat tests for similarity for some tokenizers

Fixed
~~~~~

* Fix and improve Java, Ada, and Fortran tokenizer rules
* Fix ``override_tokens`` to avoid the redefinition of raw VPL types
* Fix ``check_rules`` to consider extension, name, and override_tokens
* Fix initialization for ``override_tokens`` option
* Fix general errors to improve coverage value

VPLT 3.2.1
----------

This is a small release with some bug fixes and support for C.
The changes are docummented at the following list.

* Include a JSON file with rules for C programming language
* Provide support for Moodle 3.4.0 with PHP 7.3.0
* Set compatibility between old and new tokenizers
* Fix tokenizer factory class to consider old tokenizers

VPLT 3.2.0
----------

Added
~~~~~

* Include a factory class to create tokenizers
* Add ``override_tokens`` option to add/update tokens' names

Fixed
~~~~~

* Fix verbosity for error messages for tokenizer
* Fix parse operation to be compatible with similarity search

VPLT 3.1.1
----------

Added
~~~~~

* Include an internal method to update maximum number of tokens
* Internal option to disable verbosity for error messages

Fixed
~~~~~

* Improve test cases to have a great code coverage
* Fix parse operation for cases with overflow tokens
* Fix tokenizer to truly consider capturing groups
* Fix parse operation to ignore empty or unexisted tokens
* Fix errors related to pattern regerence at token's regex

VPLT 3.1.0
----------

Added
~~~~~

* Include JSON file with rules for Fortran
* Include coberture compatibility for VPL plugin

Changed
~~~~~~~

* Now ``next`` could only be defined with a string

Fixed
~~~~~

* Fix rules file of Java programming language
* Fix initialization to truly use rule's regex

VPLT 3.0.1
----------

This is a bug fix release of VPLT 3.0.0 with lots of new test cases
considered and some changes based on Moodle codestyle.

VPLT 3.0.0
----------

This is an important release which includes some bug fixes and
important changes related to the structure of a JSON file with rules.

New Structure
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

* Fix codestyle for PHPUnit tests
* Small fixes at tokenizer's initialization

VPLT 2.1.2
----------

Changed
~~~~~~~

* Now ``token`` must be one of the available predefined tokens
* All JSON files with rules must always contain ``start`` state
* Set default value for ``extension`` to ``no-ext``

Fixed
~~~~~

* Fix syntax checker for ``extension`` option
* Fix inheritance operation to consider repeated states

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

* Improve performance deleting unused data when if possible
* Refactor initialization to improve performance

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
* Include verbosity for errors and exceptions
* Specify data type at variables for security reasons
* Upgrade VPL to version 3.5.0+ to use Moodle 4.0
