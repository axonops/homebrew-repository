# AxonOps Homebrew Repository

This Homebrew tap provides formulae and casks for AxonOps tools, including the AxonOps Workbench application, CQLSH (Cassandra Query Language Shell), and CQLAI (AI-enhanced CQL terminal).

## Available Packages

### Casks (GUI Applications)
- **axonopsworkbench** - AxonOps Workbench desktop application for Cassandra database management
- **axonopsworkbench-beta** - Beta version of AxonOps Workbench
- **axonopsworkbench-internal** - Internal version of AxonOps Workbench

### Formulae (CLI Tools)
- **cqlsh** - Lightweight repackaging of the official Cassandra CQL Shell
- **cqlai** - Fast, portable, AI-enhanced interactive terminal for Cassandra (CQL), built in Go

## Installation

### Quick Install

Install a specific formula or cask directly:
```bash
# Install AxonOps Workbench (GUI)
brew install --cask axonops/homebrew-repository/axonopsworkbench

# Install CQLSH (CLI)
brew install axonops/homebrew-repository/cqlsh

# Install CQLAI (CLI)
brew install axonops/homebrew-repository/cqlai
```

### Using Tap

First add the tap, then install packages:
```bash
# Add the tap
brew tap axonops/homebrew-repository

# Install packages
brew install --cask axonopsworkbench
brew install cqlsh
brew install cqlai
```

### Using Brewfile

Add to your [`Brewfile`](https://github.com/Homebrew/homebrew-bundle):
```ruby
# Add the tap
tap "axonops/homebrew-repository"

# Install casks
cask "axonopsworkbench"

# Install formulae
brew "cqlsh"
brew "cqlai"
```

Then run:
```bash
brew bundle
```

## Package Details

### AxonOps Workbench
A comprehensive desktop application for managing and monitoring Apache Cassandra databases.
- **Platform**: macOS (Big Sur or later)
- **Architecture**: Universal (Intel and Apple Silicon)
- **Homepage**: https://github.com/axonops/axonops-workbench/

### CQLSH
A lightweight version of the Cassandra Query Language Shell, repackaged for easier installation.
- **Dependencies**: Python 3.11, libev
- **Homepage**: https://github.com/axonops/cqlsh
- **Usage**: Run `axonos-cqlsh` after installation

### CQLAI
An AI-enhanced interactive terminal for Cassandra that provides intelligent query assistance and autocompletion.
- **Language**: Go
- **Homepage**: https://github.com/axonops/cqlai
- **Usage**: Run `cqlai` after installation

## Updating Packages

```bash
# Update all taps
brew update

# Upgrade specific package
brew upgrade cqlsh
brew upgrade --cask axonopsworkbench

# Upgrade all packages from this tap
brew upgrade --cask axonops/homebrew-repository/axonopsworkbench
brew upgrade axonops/homebrew-repository/cqlsh
```

## Uninstalling

```bash
# Uninstall packages
brew uninstall cqlsh
brew uninstall --cask axonopsworkbench

# Remove the tap (after uninstalling all packages)
brew untap axonops/homebrew-repository
```

## Troubleshooting

### Common Issues

1. **Permission errors**: Try running with `sudo` or fix Homebrew permissions:
   ```bash
   sudo chown -R $(whoami) $(brew --prefix)/*
   ```

2. **Tap not found**: Ensure you're using the correct tap name:
   ```bash
   brew tap axonops/homebrew-repository
   ```

3. **Package conflicts**: If you have conflicts with existing packages:
   ```bash
   brew unlink <conflicting-package>
   brew install axonops/homebrew-repository/<formula>
   ```

## Support

For issues with:
- **Homebrew tap**: Open an issue in this repository
- **AxonOps Workbench**: Visit https://github.com/axonops/axonops-workbench/issues
- **CQLSH**: Visit https://github.com/axonops/cqlsh/issues
- **CQLAI**: Visit https://github.com/axonops/cqlai/issues

## Documentation

- [Homebrew Documentation](https://docs.brew.sh)
- [AxonOps Documentation](https://docs.axonops.com)
- Run `brew help` or `man brew` for Homebrew commands
