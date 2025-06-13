#!/usr/bin/bash
cd $(pwd)
name="abdo00"
email="abdo@mail.ru"
name="${1:-$name}"
email="${2:-$email}"
echo "Setting Git config:"
echo "Name : $name"
echo "Email: $email"
git config user.name "$name"
git config user.email "$email"
