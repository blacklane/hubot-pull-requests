# hubot-pull-request [![Build Status](https://travis-ci.org/blacklane/hubot-pull-request.svg?branch=master)](https://travis-ci.org/blacklane/hubot-pull-request)

A hubot script that handles merge requests (Gitlab) and pull requests (Github).

## Tiny note

- Github is not yet supported.

## Installation

Add `hubot-pull-request` to your `package.json` file:

```
...
  "dependencies": {
    "hubot": ">= 2.5.1",
    "hubot-scripts": ">= 2.4.2",
    "hubot-fliptable": ">= 0.0.0"
  }
```

Add `hubot-pull-request` to your `external-scripts.json`:

```
["hubot-pull-request"]
```

Run `npm install`.

## Configuration

The plugin depends on environment variables beginning with `HUBOT_PULL_REQUEST_`.
The following configurations are available:

* `HUBOT_PULL_REQUEST_PAGINATION_BORDER`          - The maximum amount of pages. Default: 100
* `HUBOT_PULL_REQUEST_PAGINATION_PER_PAGE`        - The number of items per page. Default: 100
* `HUBOT_PULL_REQUEST_GITLAB_HOST`                - The hostname of the gitlab server.
* `HUBOT_PULL_REQUEST_GITLAB_BASIC_AUTH_USERNAME` - The username of the basic auth.
* `HUBOT_PULL_REQUEST_GITLAB_BASIC_AUTH_PASSWORD` - The password of the basic auth.
* `HUBOT_PULL_REQUEST_GITLAB_API_TOKEN`           - The api token of a gitlab user.
* `HUBOT_PULL_REQUEST_GITHUB_AUTH_USERNAME`       - The username of a github user.
* `HUBOT_PULL_REQUEST_GITHUB_AUTH_PASSWORD`       - The password of a github user.

## Running the tests

```
npm install
npm test
```

## Development notes

In order to improve the plugin, it is quite handy to `npm link`
the plugin into your hubot instance. It's as easy as this:

```
# In the plugin directory:
npm link

# In the hubot directory:
npm link hubot-pull-request
```
