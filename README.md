# C++ Example Project Structure
------------------

Build Status: ![Build Status](https://travis-ci.org/erayaydin/cpp-boilerplate.svg?branch=master)

## Project Folder Tree

* **bin:** The output executables go here, both for app and for any tests and spikes.
* **build:** This folder contains all object files, and is removed on a `clean`
* **doc:** Any notes, documentation lins
* **include:** All project header files. All necessary third-party header files that do not exists under `/usr/local/include` are also placed here.
* **lib:** Any libs that get compiled by project, third party or any need in development.
* **spike:** Smaller classes or files to test technologies or ideas, and keep them around for future reference.
* **src:** Application's source files
* **test:** All test code files

## Makefile

* **Header:** Application name, author, readme, website, todo and fix notes.
* **Variables:** Main compiler, directory names, test application name
* **Options:** Extension, flags, lib linking
* **Clean:** Build directory and application executable clean.
* **Tester:** Test file compiling
* **Example:** Example for a spike
