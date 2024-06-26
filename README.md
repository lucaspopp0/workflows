# Simple reusable Github workflows

## [tag-and-release](.github/workflows/tag-and-release.yml)

Straightforward reusable workflow for semantic versioning!

```yaml
name: internal-release

on:
  push:
    branches:
      - main

permissions:
  contents: write

jobs:

  tag-and-release:
    uses: lucaspopp0/workflows/.github/workflows/tag-and-release.yml@v1
    with:
      change-filters: |
        app:
          - 'src/**'
```


## [pr-style](.github/workflows/pr-style.yml)

Reusable workflow for requiring PR bodies

```yaml
name: internal-pr-style

on:
  pull_request:
    types:
      - opened
      - reopened
      - synchronize
      - edited

permissions:
  pull-requests: write

jobs:

  pr-style:
    uses: lucaspopp0/workflows/.github/workflows/pr-style.yml@v1
```
