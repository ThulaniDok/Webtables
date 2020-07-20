SeleniumLibrary
===============

.. contents::

Introduction
------------

SeleniumLibrary_ is a web testing library for `Robot Framework`_ that
utilizes the Selenium_ tool internally. The project is hosted on GitHub_
and downloads can be found from PyPI_.

SeleniumLibrary works with Selenium 3 and 4. It supports Python 2.7 as well as
Python 3.6 or newer. In addition to the normal Python_ interpreter, it
works also with PyPy_ and Jython_. Unfortunately Selenium_ is not
currently supported by IronPython_ and thus this library does not work with
IronPython either.

SeleniumLibrary is based on the `old SeleniumLibrary`_ that was forked to
Selenium2Library_ and then later renamed back to SeleniumLibrary.
See the Versions_ and History_ sections below for more information about
different versions and the overall project history.

.. image:: https://img.shields.io/pypi/v/robotframework-seleniumlibrary.svg?label=version
   :target: https://pypi.python.org/pypi/robotframework-seleniumlibrary

.. image:: https://img.shields.io/pypi/dm/robotframework-seleniumlibrary.svg
   :target: https://pypi.python.org/pypi/robotframework-seleniumlibrary

.. image:: https://img.shields.io/pypi/l/robotframework-seleniumlibrary.svg
   :target: https://www.apache.org/licenses/LICENSE-2.0

.. image:: https://github.com/robotframework/SeleniumLibrary/workflows/SeleniumLibrary%20CI/badge.svg
    :target: https://github.com/robotframework/SeleniumLibrary/actions?query=workflow%3A%22SeleniumLibrary+CI%22

Keyword documentation
---------------------
See `keyword documentation`_ for available keywords and more information
about the library in general.

Installation
------------

The recommended installation method is using pip_::

    pip install --upgrade robotframework-seleniumlibrary

Running this command installs also the latest Selenium and Robot Framework
versions, but you still need to install `browser drivers`_ separately.
The ``--upgrade`` option can be omitted when installing the library for the
first time.

Those migrating from Selenium2Library_ can install SeleniumLibrary so that
it is exposed also as Selenium2Library::

    pip install --upgrade robotframework-selenium2library

The above command installs the normal SeleniumLibrary as well as a new
Selenium2Library version that is just a thin wrapper to SeleniumLibrary.
That allows importing Selenium2Library in tests while migrating to
SeleniumLibrary.

To install the last legacy Selenium2Library_ version, use this command instead::

    pip install robotframework-selenium2library==1.8.0

With resent versions of ``pip`` it is possible to install directly from the
GitHub_ repository. To install latest source from the master branch, use
this command::

    pip install git+https://github.com/robotframework/SeleniumLibrary.git

Please note that installation will take some time, because ``pip`` will
clone the SeleniumLibrary_ project to a temporary directory and then
perform the installation.

See `Robot Framework installation instructions`_ for detailed information
about installing Python and Robot Framework itself. For more details about
using ``pip`` see `its own documentation <pip_>`__.

Browser drivers
---------------

After installing the library, you still need to install browser and
operating system specific browser drivers for all those browsers you
want to use in tests. These are the exact same drivers you need to use with
Selenium also when not using SeleniumLibrary. More information about
drivers can be found from `Selenium documentation`__.

The general approach to install a browser driver is downloading a right
driver, such as ``chromedriver`` for Chrome, and placing it into
a directory that is in PATH__. Drivers for different browsers
can be found via Selenium documentation or by using your favorite
search engine with a search term like ``selenium chrome browser driver``.
New browser driver versions are released to support features in
new browsers, fix bug, or otherwise, and you need to keep an eye on them
to know when to update drivers you use.

Alternatively, you can use a tool called WebdriverManager__ which can
find the latest version or when required, any version of appropriate
webdrivers for you and then download and link/copy it into right
location. Tool can run on all major operating systems and supports
downloading of Chrome, Firefox, Opera & Edge webdrivers.

Here's an example:

.. code:: bash

      pip install webdrivermanager
      webdrivermanager firefox chrome --linkpath /usr/local/bin



__ https://seleniumhq.github.io/selenium/docs/api/py/index.html#drivers
__ https://en.wikipedia.org/wiki/PATH_(variable)
__ https://github.com/omenia/webdrivermanager

Usage
-----

To use SeleniumLibrary in Robot Framework tests, the library needs to
first be imported using the ``Library`` setting as any other library.
The library accepts some import time arguments, which are documented
in the `keyword documentation`_ along with all the keywords provided
by the library.

When using Robot Framework, it is generally recommended to write as
easy-to-understand tests as possible. The keywords provided by
SeleniumLibrary are pretty low level, though, and often require
implementation specific arguments like element locators to be passed
as arguments. It is thus typically a good idea to write tests using
Robot Framework's higher level keywords that utilize SeleniumLibrary
keywords internally. This is illustrated by the following example
where SeleniumLibrary keywords like ``Input Text`` are primarily
used by higher level keywords like ``Input Username``.
