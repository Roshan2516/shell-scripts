#!/bin/bash
gpg --output encrypted_file.txt.gpg --encrypt --recipient recipient@example.com plaintext_file.txt
gpg --output decrypted_file.txt --decrypt encrypted_file.txt.gpg

#script to encrypt and decrypt files using GPG or OpenSSL.
