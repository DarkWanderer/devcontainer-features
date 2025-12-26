# Dev Container Features - Claude Code

This repository provides a [dev container Feature](https://containers.dev/implementors/features/) that installs Claude Code CLI in your development container.

## Claude Code Feature

The `claude-code` feature installs Anthropic's official Claude Code CLI tool.

### Usage

Add the feature to your `devcontainer.json`:

```jsonc
{
    "image": "mcr.microsoft.com/devcontainers/base:ubuntu",
    "features": {
        "ghcr.io/DarkWanderer/devcontainer-features/claude-code:1": {}
    }
}
```

### What it does

This feature executes the official Claude Code installation script:
```bash
curl -fsSL https://claude.ai/install.sh | bash
```

Once installed, the `claude` command will be available in your development container.

## Repository Structure

```
├── src
│   └── claude-code
│       ├── devcontainer-feature.json
│       ├── install.sh
│       └── README.md
├── test
│   └── claude-code
│       ├── scenarios.json
│       └── test.sh
└── .github
    └── workflows
        ├── test.yaml
        └── publish.yml
```

## Workflows

### Testing
The `test.yaml` workflow automatically tests the feature installation across multiple base images (Debian, Ubuntu) on every push and pull request.

### Publishing
The `publish.yml` workflow publishes the feature to GitHub Container Registry (ghcr.io) when:
- Code is pushed to the `main` branch
- Manually triggered via workflow dispatch

The feature is published as: `ghcr.io/DarkWanderer/devcontainer-features/claude-code`

**Note:** After publishing, you may need to make the package public in GitHub's package settings to use it without authentication.

## Documentation

- [Dev Container Features specification](https://containers.dev/implementors/features/)
- [Claude Code documentation](https://github.com/anthropics/claude-code)

## License

See [LICENSE](LICENSE) file.
