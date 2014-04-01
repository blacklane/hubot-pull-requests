path    = require 'path'
_s      = require 'underscore.string'
helpers = require path.resolve(__dirname, '..', 'helpers')

module.exports =
  render: (scope, callback) ->
    helpers.gitlab.readMergeRequests (err, result) ->
      if err
        callback err, null
      else
        answer = ""

        result.forEach (hash) ->
          requests = hash.requests

          if scope == '*'
            scope = ''
          else
            scope ||= 'open'

          if scope != ''
            requests = requests.filter (request) ->
              _s.startsWith(request.state.toLowerCase(), scope.toLowerCase())

          if requests.length > 0
            answer += "\n\n#{hash.project.displayName}"
            answer += "\n#{[1..hash.project.displayName.length].map(-> '-').join('')}"

            requests.forEach (request) ->
              answer += "\n#{request.condensed}"

        callback null, "/quote #{answer.trim()}"