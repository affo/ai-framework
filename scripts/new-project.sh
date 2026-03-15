#!/usr/bin/env bash
set -euo pipefail

usage() {
  cat <<'EOF'
Usage:
  scripts/new-project.sh [--force] <destination-path>

Examples:
  scripts/new-project.sh ../my-new-project
  scripts/new-project.sh --force ../my-new-project

Behavior:
  - Copies the AI framework scaffold into <destination-path>.
  - Refuses to overwrite an existing destination unless --force is provided.
EOF
}

FORCE=0
if [[ "${1:-}" == "--help" || "${1:-}" == "-h" ]]; then
  usage
  exit 0
fi

if [[ "${1:-}" == "--force" ]]; then
  FORCE=1
  shift
fi

if [[ $# -ne 1 ]]; then
  usage
  exit 1
fi

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
REPO_ROOT="$(cd "${SCRIPT_DIR}/.." && pwd)"
SCAFFOLD_ROOT="${REPO_ROOT}/_framework"
DEST="$1"

if [[ -e "${DEST}" && ${FORCE} -ne 1 ]]; then
  echo "Error: destination already exists: ${DEST}"
  echo "Use --force to replace it."
  exit 1
fi

if [[ -e "${DEST}" && ${FORCE} -eq 1 ]]; then
  rm -rf "${DEST}"
fi

mkdir -p "${DEST}"

if [[ ! -d "${SCAFFOLD_ROOT}" ]]; then
  echo "Error: scaffold directory not found: ${SCAFFOLD_ROOT}"
  exit 1
fi

# Copy scaffold content, excluding local VCS and OS metadata.
rsync -a \
  --exclude '.git/' \
  --exclude '.DS_Store' \
  "${SCAFFOLD_ROOT}/" "${DEST}/"

echo "Scaffold created at: ${DEST}"
