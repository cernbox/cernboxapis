[![License](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](https://opensource.org/licenses/Apache-2.0) [![Gitter chat](https://badges.gitter.im/cs3org/cs3apis.svg)](https://gitter.im/cs3org/cs3apis) [![Build Status](https://cloud.drone.io/api/badges/cs3org/cs3apis/status.svg?ref=refs/heads/gateway+metadata)](https://cloud.drone.io/cs3org/cs3apis)
================

<img width="100px" src="https://raw.githubusercontent.com/cs3org/logos/master/cs3org/cs3org.png"/>

The CS3APIS connect Storage and Applications Providers.

## API Documentation
https://cs3org.github.io/cs3apis/

## Officialy compiled libraries
* Go: https://github.com/cs3org/go-cs3apis
* Python: https://github.com/cs3org/python-cs3apis
* Javascript: https://github.com/cs3org/js-cs3apis

## Local compilation

You need to have Docker installed. The artifacts will be available under the build directory.

```
$ git clone https://github.com/cs3org/cs3apis
$ make build 
$ make go # generate go code
```

See the Makefile to find all the available build options.

## Overview

This repository contains the interface definitions of public
CS3APIS that support the gRPC protocol.
You can also use these definitions with open source tools to generate client
libraries, documentation, and other artifacts.

CS3 APIs follows Google and Uber API design guidelines, specially on error handling and naming convention.
You can read more about these guidelines at https://cloud.google.com/apis/design/.

This repository structure is very similar to https://github.com/googleapis/googleapis.

CS3 APIs use [Protocol Buffers](https://github.com/google/protobuf)
version 3 (proto3) as their Interface Definition Language (IDL) to
define the API interface and the structure of the payload messages.

## Repository Structure

This repository uses a directory hierarchy that reflects the CS3
feature set. In general, every API has its own root
directory, and each major version of the API has its own subdirectory.
The proto package names exactly match the directory: this makes it
easy to locate the proto definitions and ensures that the generated
client libraries have idiomatic namespaces in most programming
languages. 

**NOTE:** The major version of an API is used to indicate breaking
change to the API.
