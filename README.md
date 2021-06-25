# acme

Dummy repo to demonstrate one approach to use a single shared codebase across several other repos.

## Quickstart

```
$ ./init.sh // Only once the first time you get the project
$ ./run.sh
```

## Development git flow

### Project already in production

1. Always use `master` or `main` as a codebase before checkout (except for the kernel)
2. Exception for the kernel where you've to use the latest not yet released version.

Example:

- If there is only one branch master, `checkout -b release/2.0.0`
- If the last release is 2.8.0, `checkout -b release/2.9.0`

> IMPORTANT: Always keep your feature branches in the remote repo until they are merged with the latest not yet released kernel version.

If you start working on a new kernel release, update the composer of repo that use it as follow (ex. we create a brand new `release/2.1.3`):

```
$ COMPOSER=composer-dev.json composer require lu-bbs/acme_kernel:"dev-release/2.1.3"
```

### Project NOT yet in production

1. Always use `develop` branch as codebase

TODO