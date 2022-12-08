# Clamify UI

## Introduction

The Clamify UI is a personal project of @cdconn00. This project serves as the front-end for a personal finance application used primarily for budgeting and cost insights.

## Roadmap

The UI will progress in 2-week sprints to deliver incremental functionality.

## Setup

- Clone the repository.
- Verify running a version of Node v16.
- Verify `npm` is installed.
- Verify you can run a React TypeScript project.
- Run `npm i` to install dependencies.
- Run `npm start` to start the development server.

## General Code Structure

- TBD

## Testing

To run all the automated tests together run: `npm run test`. This script will run both the component and E2E tests.

_Testing must be performed with Node 16, as the `start-server-and-test package` does not yet support newer versions._

### End-to-End (E2E) Tests

E2E tests are performed with Cypress. To run only the E2E tests run `npm run test:e2e`.

### Component Testing

Component tests are performed with react-scripts. To run only the component tests run `npm run test:components`.

### Other Testing Scripts

- Cypress can be opened for debugging by running `npm run cy:open`.
- The `cy:run` script is utilized by other testing scripts and will not function without running the UI development server.

## Deployments

Deployments are handled automatically with GitHub Actions.

- For development deployments, a push/merge into the `develop` branch will trigger a deployment to `dev.clamify.org`.
- For production deployments, a new release will trigger a deployment to `clamify.org`.

## Code Standards

### Documentation

- TBD

### Linting

- Linting is performed with `eslint` in addition to formatting with `prettier`, see the NPM scripts for commands. Both linting and formatting are enforced on PRs.
