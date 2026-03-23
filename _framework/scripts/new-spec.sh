#!/usr/bin/env bash
set -euo pipefail

usage() {
  cat <<'EOF'
Usage:
  scripts/new-spec.sh <slug>

Examples:
  scripts/new-spec.sh user-authentication
  scripts/new-spec.sh fix-login-bug

Behavior:
  - Creates docs/ai/specs/<NNN>-<slug>/spec.md with a blank template to fill in.
  - The NNN prefix is auto-incremented from existing specs.
  - Refuses to overwrite an existing spec.
EOF
}

if [[ "${1:-}" == "--help" || "${1:-}" == "-h" ]]; then
  usage
  exit 0
fi

if [[ $# -ne 1 ]]; then
  usage
  exit 1
fi

SLUG="$1"
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
REPO_ROOT="$(cd "${SCRIPT_DIR}/.." && pwd)"
SPECS_DIR="${REPO_ROOT}/docs/ai/specs"

# Find the highest existing numeric prefix
LAST=$(ls "${SPECS_DIR}" 2>/dev/null | grep -E '^[0-9]+' | sed 's/^\([0-9]*\).*/\1/' | sort -n | tail -1 || true)
NEXT=$(printf "%03d" $(( ${LAST:-0} + 1 )))

FOLDER="${NEXT}-${SLUG}"
SPEC_DIR="${SPECS_DIR}/${FOLDER}"
SPEC_FILE="${SPEC_DIR}/spec.md"

if [[ -e "${SPEC_DIR}" ]]; then
  echo "Error: spec already exists: ${SPEC_DIR}"
  exit 1
fi

mkdir -p "${SPEC_DIR}"

cat > "${SPEC_FILE}" <<EOF
# ${SLUG}

<!-- describe what you want here -->
EOF

echo "Created: ${SPEC_FILE}"
echo "Next: fill in the spec, then run /plan docs/ai/specs/${FOLDER}"
