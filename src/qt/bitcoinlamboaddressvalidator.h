// Copyright (c) 2011-2014 The Bitcoin Core developers
// Distributed under the MIT software license, see the accompanying
// file COPYING or http://www.opensource.org/licenses/mit-license.php.

#ifndef BITCOINLAMBO_QT_BITCOINLAMBOADDRESSVALIDATOR_H
#define BITCOINLAMBO_QT_BITCOINLAMBOADDRESSVALIDATOR_H

#include <QValidator>

/** Base58 entry widget validator, checks for valid characters and
 * removes some whitespace.
 */
class BitcoinLamboAddressEntryValidator : public QValidator
{
    Q_OBJECT

public:
    explicit BitcoinLamboAddressEntryValidator(QObject* parent);

    State validate(QString& input, int& pos) const;
};

/** BitcoinLambo address widget validator, checks for a valid bitcoinlambo address.
 */
class BitcoinLamboAddressCheckValidator : public QValidator
{
    Q_OBJECT

public:
    explicit BitcoinLamboAddressCheckValidator(QObject* parent);

    State validate(QString& input, int& pos) const;
};

#endif // BITCOINLAMBO_QT_BITCOINLAMBOADDRESSVALIDATOR_H
