#!/usr/bin/env bash
set -euo pipefail

usage() {
  cat <<'EOF'
Usage:
  scripts/upgrade-framework.sh [--dry-run] <target-path>

Examples:
  scripts/upgrade-framework.sh ../my-project
  scripts/upgrade-framework.sh --dry-run ../my-project

Behavior:
  - Refreshes framework-owned files in <target-path>:
    - .claude/commands/plan.md
    - .claude/commands/impl.md
    - scripts/new-spec.sh
  - Does not touch CLAUDE.md, README.md, or anything under docs/ai/specs/.
EOF
}

MANAGED_FILES=(
  ".claude/commands/plan.md"
  ".claude/commands/impl.md"
  "scripts/new-spec.sh"
)

DRY_RUN=0
if [[ "${1:-}" == "--help" || "${1:-}" == "-h" ]]; then
  usage
  exit 0
fi

if [[ "${1:-}" == "--dry-run" ]]; then
  DRY_RUN=1
  shift
fi

if [[ $# -ne 1 ]]; then
  usage
  exit 1
fi

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
REPO_ROOT="$(cd "${SCRIPT_DIR}/.." && pwd)"
SCAFFOLD_ROOT="${REPO_ROOT}/_framework"
TARGET_ROOT="$1"

if [[ ! -d "${SCAFFOLD_ROOT}" ]]; then
  echo "Error: scaffold directory not found: ${SCAFFOLD_ROOT}"
  exit 1
fi

if [[ ! -d "${TARGET_ROOT}" ]]; then
  echo "Error: target directory not found: ${TARGET_ROOT}"
  exit 1
fi

for rel in "${MANAGED_FILES[@]}"; do
  src="${SCAFFOLD_ROOT}/${rel}"
  dst="${TARGET_ROOT}/${rel}"
  echo "update ${rel}"
  if [[ ${DRY_RUN} -eq 0 ]]; then
    mkdir -p "$(dirname "${dst}")"
    cp "${src}" "${dst}"
  fi
done

if [[ ${DRY_RUN} -eq 1 ]]; then
  echo "Dry run only: no files were modified."
else
  echo "Framework upgrade applied to: ${TARGET_ROOT}"
fi
