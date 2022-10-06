Ace's rules to VPLT's files
===========================

This appendix explains how to create a VPLT tokenizer rules file based on the rules
declared on Ace editor. It is important to notice that not all the files could be
easily converted, and some features provided by Ace could not be included.

The steps that must be covered for this conversion are:

1. Creating the tokenizer rules file on VPLT
2. Declaring some general options
3. Defining inheritance
4. Including all rules from Ace

.. note::

   Each of the steps that are explained here follows an example for the
   Ada programming language. The file from Ace used here was extracted
   from `this link`_.

.. _this link: https://github.com/ajaxorg/ace

Step 1. Creating the VPLT file
------------------------------

First, it is necessary to create the tokenizer rules file. This file must be located at
the ``similarity/tokenizer_rules``` folder of VPL module, and its name needs to follow
the format ``<lang>_tokenizer_rules.json``, where ``lang`` is the name of the language.

| On this case, we will include the tokenizer rules file for Ada programming language.
| On VPLT, this JSON file would be declared as it is shown below:

.. code::

   similarity/
      tokenizer_rules/
         ada_tokenizer_rules.json

Step 2. Declaring general options
---------------------------------

The next step to do consists of the definition of some general options. This configuration
is optional, since it provides additional information to the engine for the creation of the
lexical analyzer. It is important to notice that this options are not defined on Ace.

For example, the tokenizer rules file for Ada would be as the following:

.. code:: JSON

   {
      "name": "ada-tokenizer",
      "extension": [ ".adb", ".ads", ".ada" ],
      "check_rules": false
   }

Step 3. Defining inheritance
----------------------------

At this point, the developer must include the inheritance of the tokenizer rules file.
To do that, it is necessary to declare the ``inherit_rules`` option with the path of
the inherited JSON file. That path is defined based on the name specification of the
tokenizer rules files, as well as the language indicated on the parameter of the
function ``inherits``.

On this case, the tokenizer rules file for Ada would look as the following:

.. code:: JSON

   {
      "name": "ada-tokenizer",
      "extension": [ ".adb", ".ads", ".ada" ],
      "check_rules": false,
      "inherit_rules": "text_tokenizer_rules"
   }

Step 4. Including all rules from Ace
------------------------------------

After defining the general options, it is time to include all the lexical rules of the
programming language. The content specified here needs to fit the VPLT format.

.. note::

   The next section covers includes a list of the requirements that must be considered
   to follow the VPLT tokenizer rules file format.

On this example, the tokenizer rules file for Ada would have the following rules:

.. code:: JSON

   {
      "name": "ada-tokenizer",
      "extension": [ ".adb", ".ads", ".ada" ],
      "check_rules": false,
      "inherit_rules": "text_tokenizer_rules",
      "states": {
         "start": [
            {
               "token": "comment",
               "regex": "--.*$"
            },
            {
               "token": "string.double",
               "regex": "\".*?\""
            },
            {
               "token": "string.single",
               "regex": "'.'"
            },
            {
               "token": "constant.numeric",
               "regex": "[+-]?[0-9]+((\\.[0-9]*)?([eE][+-]?[0-9]+)?)?\\b"
            },
            {
               "token": "support.function",
               "regex": "count|min|max|avg|sum|rank|now|coalesce|main"
            },
            {
               "token": "keyword",
               "regex": "abort|else|new|return|abs|elsif|not|reverse|abstract|end|null|accept|entry|select|access"
            },
            {
               "token": "keyword",
               "regex": "exception|of|separate|aliased|exit|or|some|all|others|subtype|and|for|out|synchronized|array|function"
            },
            {
               "token": "keyword",
               "regex": "overriding|at|tagged|generic|package|task|begin|goto|pragma|terminate|body|private|then|if|procedure|type"
            },
            {
               "token": "keyword",
               "regex": "case|in|protected|constant|interface|until|is|raise|use|declare|range|delay|limited|record|when|delta|loop"
            },
            {
               "token": "keyword",
               "regex": "rem|while|digits|renames|with|do|mod|requeue|xor"
            },
            {
               "token": "constant.language",
               "regex": "true|false|null"
            },
            {
               "token": "identifier",
               "regex": "[a-zA-Z_$][a-zA-Z0-9_$]*"
            },
            {
               "token": "keyword.operator",
               "regex": "\\+|\\-|\\/|\\/\\/|%|<@>|@>|<@|&|\\^|~|<|>|<=|=>|==|!=|<>|="
            },
            {
               "token": "paren.lparen",
               "regex": "[\\(]"
            },
            {
               "token": "paren.rparen",
               "regex": "[\\)]"
            },
            {
               "token": "text",
               "regex": "\\s+"
            }
         ]
      }
   }

Final considerations
--------------------

This section shows a completed list of all the considerations that must be taken
into account before defining the rules of a programming language on VPLT engine.

1. It is possible to include C style comments
2. Each attribute must be defined as a string literal
3. Regular expressions are always indicated with double quotes
4. Variable references must be replaced with its literal value
5. Function declarations must be declared with new rules and states
6. The character ``/`` must be escapped on regular expressions
7. Options that are not admitted on VPLT needs to be discarded
8. Invalid tokens can be included using the option ``override_tokens``
9. Expressions defined as arrays could be replaced with new states and rules
