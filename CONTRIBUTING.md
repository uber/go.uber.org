# Contribution Guidelines

## Description

The `go.uber.org` domain is meant to host stable, high-quality, well-maintained
Go libraries developed by Uber Technologies, Inc.

Adding a new project to the domain can be done by inserting an entry in `sally.yaml`.

Before a project can be included here it must meet several criteria:

* High quality. Test coverage for the project should be at least 90% with a
  badge included in `README.md`. We recommend [codecov.io](http://codecov.io/).

* Stable. The project should be tagged according to a *strict* interpretation
  of [SemVer 2.0](http://semver.org). The project should have at least a
  "v1.0.0" tag, with a commitment to a minimum of one year between major
  version bumps (i.e., no backwards-incompatible changes).

* Maintained. The project should at all times have well-defined owners who are
  committed to addressing issues on the project.

Projects already listed on `go.uber.org` but not meeting these criteria may be
removed.

## Process

To update [go.uber.org](https://go.uber.org/):

1. Make a change to `sally.yaml`
2. Create a Pull Request

When the PR lands, the site will automatically be deployed via [![Deploy to Google App Engine](https://github.com/uber/go.uber.org/actions/workflows/deploy.yml/badge.svg)](https://github.com/uber/go.uber.org/actions/workflows/deploy.yml).

