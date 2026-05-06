#!/usr/bin/env bash

set -euo pipefail

# Install pre-commit hooks
uvx pre-commit install

# Install terraform-docs
TERRAFORM_DOCS_LATEST_RELEASE=$(curl --silent "https://api.github.com/repos/terraform-docs/terraform-docs/releases/latest" | jq -r .tag_name)

if [[ "$(uname --machine)" == "aarch64" ]]; then
  TERRAFORM_DOCS_ARCH="arm64"
else
  TERRAFORM_DOCS_ARCH="amd64"
fi

curl --location "https://github.com/terraform-docs/terraform-docs/releases/download/${TERRAFORM_DOCS_LATEST_RELEASE}/terraform-docs-${TERRAFORM_DOCS_LATEST_RELEASE}-linux-${TERRAFORM_DOCS_ARCH}.tar.gz" \
  --output /tmp/terraform-docs.tar.gz

tar --extract --gzip --file /tmp/terraform-docs.tar.gz --directory /tmp/ terraform-docs

sudo install --owner=vscode --group=vscode --mode=775 "/tmp/terraform-docs" "/usr/local/bin/terraform-docs"

rm --recursive --force /tmp/terraform-docs /tmp/terraform-docs.tar.gz
