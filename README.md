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
        └── test.yaml
```

## Testing

The repository includes GitHub Actions workflows that automatically test the feature installation across multiple base images (Debian, Ubuntu).

## Documentation

- [Dev Container Features specification](https://containers.dev/implementors/features/)
- [Claude Code documentation](https://github.com/anthropics/claude-code)

## License

See [LICENSE](LICENSE) file.
