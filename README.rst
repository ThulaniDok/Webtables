==========================================================
Webtables testing with Robot Framework and SeleniumLibrary
==========================================================

`Robot Framework`_ is a generic open source test automation framework and
SeleniumLibrary_ is one of the many test libraries that can be used with
it. Webtables is an application that allows for adding of users and their roles
in the Webatables.

.. contents:: **Contents:**
   :depth: 1
   :local:


Test cases
==========

Test case files as well as a resource file used by them are located in
the ``login_test`` directory. Click file names below to see the latest versions
online.

`TC1-AddUSerWithInTestData.robot`_
    A test suite with a single test for adding a user with in script test data.

    This test is data driven. It has a workflow that is created using keywords in
    the imported resource file.

`TC2_AddUserWithCSV.robot`_
    A test suite with a single test for adding a user with csv test data.

    This test is data driven. It test has a workflow that is created using keywords in
    the imported resource file.

`resource.robot`_
    A resource file with reusable keywords and variables.

    The system specific keywords created here form our own
    domain specific language. They utilize keywords provided
    by the imported SeleniumLibrary_.

See `Robot Framework User Guide`_ for more details about the test data syntax.

Generated results
=================

After `running tests`_ you will get report and log in HTML format. Example
files are also visible online in case you are not interested in running
the demo yourself:

- `report.html`_
- `log.html`_

Preconditions
-------------

A precondition for running the tests is having `Robot Framework`_ and
SeleniumLibrary_ installed, and they in turn require
Python_. Robot Framework `installation instructions`__ cover both
Robot and Python installations, and SeleniumLibrary has its own
`installation instructions`__.

Running tests
-------------

The `test cases`_ are located in the ``TestCases`` directory. They can be
executed using the ``robot`` command::

    robot TestCases

.. note:: If you are using Robot Framework 2.9 or earlier, you need to
          use the ``pybot`` command instead.

You can also run an individual test case file and use various command line
options supported by Robot Framework::

    robot TestCases/TC2_AddUserWithCSV.robot

Run ``robot --help`` for more information about the command line usage and see
`Robot Framework User Guide`_ for more details about test execution in general.

Using different browsers
------------------------

The browser that is used is controlled by ``${BROWSER}`` variable defined in
`resource.robot`_ resource file. Chrome browser is used by default, but that
can be easily overridden from the command line::

    robot --variable BROWSER:Firefox TestCases

Consult SeleniumLibrary_ documentation about supported browsers.

.. _Robot Framework: http://robotframework.org
.. _SeleniumLibrary: https://github.com/robotframework/SeleniumLibrary
.. _Python: http://python.org
.. _pip: http://pip-installer.org
.. _Robot Framework User Guide: http://robotframework.org/robotframework/#user-guide
