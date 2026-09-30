# wcto-fhir-ig

FHIR Implementation Guide for Well Child Tamariki Ora services.

## Build locally

Run the build from the repository root. On Windows, use PowerShell:

```powershell
.\_build.bat
```

On macOS/Linux, or from Git Bash/WSL on Windows:

```bash
./_build.sh build
```

The launcher uses `input-cache/publisher.jar` when present and also checks the
parent directory and the standard user-level FHIR Publisher installation. To
download or update the Publisher, run `./_build.sh update` (or
`_updatePublisher.bat` on Windows).

Build output and generated SUSHI resources are excluded from source control.
The `input/pagecontent` files currently provide a buildable navigation shell;
the WCTO-specific content and FHIR artifacts are still being developed.
