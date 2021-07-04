# Repo/Module Name Here

This is the template for Rust Repository.

Copyright (C) 2021 Bitwyre Technologies Holdings Incorporated

## Rust pre-requisites

### Rust & Cargo

```bash
curl https://sh.rustup.rs -sSf | sh
```

or update if it's already installed:

```bash
rustup update
```

### Rust components (formatting and code-styling)

```bash
rustup component add rls
rustup component add rustfmt
rustup component add clippy
```

## Running with script

### Apply recommended code formatting

```bash
./run.sh apply-style
```

### Build binaries for debugging

```bash
./run.sh build
```

### Build binaries for performance

```bash
./run.sh build-optimize
```

### Code-style check and preliminary bug finding

```bash
./run.sh check-style
```

### Development/Debugging run

```bash
./run.sh dev
```

### Unit tests

```bash
./run.sh test
```

### Performance run

```bash
./run.sh
```

## Contributors

- TBA
- TBA
