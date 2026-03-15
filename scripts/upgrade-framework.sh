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
  - Refreshes framework-owned files in <target-path> from the scaffold in _framework/.
  - Replaces only managed files:
    - AGENTS.md
    - CLAUDE.md
    - docs/ai/framework.md
    - docs/ai/*/*-template.md
    - docs/ai/*/*/template.md
  - Removes obsolete managed files in the target if they no longer exist in _framework/.
  - Does not modify live project artifacts such as plans, doubts, specs, impl logs, answers, or rules.
EOF
}

is_managed_path() {
  local rel="$1"

  case "${rel}" in
    AGENTS.md|CLAUDE.md|docs/ai/framework.md|docs/ai/*/*-template.md|docs/ai/*/*/template.md)
      return 0
      ;;
    *)
      return 1
      ;;
  esac
}

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

declare -a source_managed=()
while IFS= read -r path; do
  rel="${path#${SCAFFOLD_ROOT}/}"
  if is_managed_path "${rel}"; then
    source_managed+=("${rel}")
  fi
done < <(find "${SCAFFOLD_ROOT}" -type f | sort)

declare -a target_managed=()
while IFS= read -r path; do
  rel="${path#${TARGET_ROOT}/}"
  if is_managed_path "${rel}"; then
    target_managed+=("${rel}")
  fi
done < <(find "${TARGET_ROOT}" -type f | sort)

for rel in "${source_managed[@]}"; do
  src="${SCAFFOLD_ROOT}/${rel}"
  dst="${TARGET_ROOT}/${rel}"
  echo "update ${rel}"
  if [[ ${DRY_RUN} -eq 0 ]]; then
    mkdir -p "$(dirname "${dst}")"
    cp "${src}" "${dst}"
  fi
done

for rel in "${target_managed[@]}"; do
  if printf '%s\n' "${source_managed[@]}" | grep -Fxq "${rel}"; then
    continue
  fi
  echo "remove ${rel}"
  if [[ ${DRY_RUN} -eq 0 ]]; then
    rm -f "${TARGET_ROOT}/${rel}"
  fi
done

if [[ ${DRY_RUN} -eq 1 ]]; then
  echo "Dry run only: no files were modified."
else
  echo "Framework upgrade applied to: ${TARGET_ROOT}"
fi
