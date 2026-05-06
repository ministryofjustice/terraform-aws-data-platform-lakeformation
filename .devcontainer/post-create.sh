#!/usr/bin/env bash

set -euo pipefail

# Install pre-commit hooks
uvx pre-commit install

# Install terraform-docs
curl --location "https://github.com/terraform-docs/terraform-docs/releases/download/v0.23.0/terraform-docs-v0.23.0-linux-arm64.tar.gz" \
  --output /tmp/terraform-docs.tar.gz

tar --extract --gzip --file /tmp/terraform-docs.tar.gz --directory /tmp/ terraform-docs

sudo install --owner=vscode --group=vscode --mode=775 "/tmp/terraform-docs" "/usr/local/bin/terraform-docs"

rm --recursive --force /tmp/terraform-docs /tmp/terraform-docs.tar.gz
