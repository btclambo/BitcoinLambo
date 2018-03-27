BitcoinLambo Core
=============

Setup
---------------------
BitcoinLambo Core is the original BitcoinLambo client and it builds the backbone of the network. It downloads and, by default, stores the entire history of BitcoinLambo transactions (which is currently more than 100 GBs); depending on the speed of your computer and network connection, the synchronization process can take anywhere from a few hours to a day or more.

To download BitcoinLambo Core, visit [bitcoinlambocore.org](https://bitcoinlambocore.org/en/releases/).

Running
---------------------
The following are some helpful notes on how to run BitcoinLambo on your native platform.

### Unix

Unpack the files into a directory and run:

- `bin/bitcoinlambo-qt` (GUI) or
- `bin/bitcoinlambod` (headless)

### Windows

Unpack the files into a directory, and then run bitcoinlambo-qt.exe.

### OS X

Drag BitcoinLambo-Core to your applications folder, and then run BitcoinLambo-Core.

### Need Help?

* See the documentation at the [BitcoinLambo Wiki](https://en.bitcoinlambo.it/wiki/Main_Page)
for help and more information.
* Ask for help on [#bitcoinlambo](http://webchat.freenode.net?channels=bitcoinlambo) on Freenode. If you don't have an IRC client use [webchat here](http://webchat.freenode.net?channels=bitcoinlambo).
* Ask for help on the [BitcoinLamboTalk](https://bitcoinlambotalk.org/) forums, in the [Technical Support board](https://bitcoinlambotalk.org/index.php?board=4.0).

Building
---------------------
The following are developer notes on how to build BitcoinLambo on your native platform. They are not complete guides, but include notes on the necessary libraries, compile flags, etc.

- [OS X Build Notes](build-osx.md)
- [Unix Build Notes](build-unix.md)
- [Windows Build Notes](build-windows.md)
- [OpenBSD Build Notes](build-openbsd.md)
- [Gitian Building Guide](gitian-building.md)

Development
---------------------
The BitcoinLambo repo's [root README](/README.md) contains relevant information on the development process and automated testing.

- [Developer Notes](developer-notes.md)
- [Release Notes](release-notes.md)
- [Release Process](release-process.md)
- [Source Code Documentation (External Link)](https://dev.visucore.com/bitcoinlambo/doxygen/)
- [Translation Process](translation_process.md)
- [Translation Strings Policy](translation_strings_policy.md)
- [Travis CI](travis-ci.md)
- [Unauthenticated REST Interface](REST-interface.md)
- [Shared Libraries](shared-libraries.md)
- [BIPS](bips.md)
- [Dnsseed Policy](dnsseed-policy.md)
- [Benchmarking](benchmarking.md)

### Resources
* Discuss on the [BitcoinLamboTalk](https://bitcoinlambotalk.org/) forums, in the [Development & Technical Discussion board](https://bitcoinlambotalk.org/index.php?board=6.0).
* Discuss project-specific development on #bitcoinlambo-core-dev on Freenode. If you don't have an IRC client use [webchat here](http://webchat.freenode.net/?channels=bitcoinlambo-core-dev).
* Discuss general BitcoinLambo development on #bitcoinlambo-dev on Freenode. If you don't have an IRC client use [webchat here](http://webchat.freenode.net/?channels=bitcoinlambo-dev).

### Miscellaneous
- [Assets Attribution](assets-attribution.md)
- [Files](files.md)
- [Fuzz-testing](fuzzing.md)
- [Reduce Traffic](reduce-traffic.md)
- [Tor Support](tor.md)
- [Init Scripts (systemd/upstart/openrc)](init.md)
- [ZMQ](zmq.md)

License
---------------------
Distributed under the [MIT software license](/COPYING).
This product includes software developed by the OpenSSL Project for use in the [OpenSSL Toolkit](https://www.openssl.org/). This product includes
cryptographic software written by Eric Young ([eay@cryptsoft.com](mailto:eay@cryptsoft.com)), and UPnP software written by Thomas Bernard.
