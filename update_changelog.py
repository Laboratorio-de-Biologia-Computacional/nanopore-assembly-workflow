#!/usr/bin/env python3
import datetime, os, sys

def main():
    version = os.getenv("VERSION")
    if not version:
        print("❌ ERROR: Debes definir VERSION (ejemplo: VERSION=1.0.1).")
        sys.exit(1)

    date = datetime.date.today().isoformat()
    added = os.getenv("ADDED", "")
    changed = os.getenv("CHANGED", "")
    fixed = os.getenv("FIXED", "")

    entry = f"\n## [{version}] - {date}\n"
    if added:
        entry += f"### Added\n- {added}\n"
    if changed:
        entry += f"### Changed\n- {changed}\n"
    if fixed:
        entry += f"### Fixed\n- {fixed}\n"

    with open("CHANGELOG.md", "r+") as f:
        lines = f.readlines()
        f.seek(0)
        f.write(lines[0] + lines[1] + entry + "".join(lines[2:]))

    print(f"✅ CHANGELOG.md actualizado para versión {version}")

if __name__ == "__main__":
    main()
