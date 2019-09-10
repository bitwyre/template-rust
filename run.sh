#!/usr/bin/env bash

function set_default_env() {
    if [ -z "${!1}" ]; then
        echo "INFO! Setting '$1' value to '$2'"
        export $1=$2
    fi
}

function exit_on_undefined_env() {
    if [ -z "${!1}" ]; then
        echo "ERROR! '$1' is undefined, exiting." 1>&2
        exit 1
    fi
}

function exit_on_any_error() {
    if [ -n "$?" ] && [ "$?" -ne 0 ]; then
        echo "An error occurred, exiting..." 1>&2
        exit 1
    fi
}

# Set these environment variables to its default value if undefined
set_default_env         PRODUCTION              0

# Cargo run switch
case "$1" in
    apply-style)
        cargo fmt --all
        ;;
    build)
        cargo build
        ;;
    build-optimize)
        RUSTFLAGS='-C link-arg=-s' cargo build --release
        ;;
    check-style)
        cargo clippy
        ;;
    dev)
        cargo run
        ;;
    test)
        cargo test
        ;;
    '')
        cargo run --release
        ;;
    *)
        echo "Invalid parameter $1!" 1>&2
        echo "Usage: $0 [apply-style|build|build-optimize|check-style|dev|test]"
        exit 1
esac
