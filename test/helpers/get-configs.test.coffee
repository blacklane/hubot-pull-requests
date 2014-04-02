expect     = require 'expect.js'
path       = require 'path'
support    = require path.resolve(__dirname, '..', 'support')
getConfigs = require path.resolve(__dirname, '..', '..', 'src', 'helpers', 'get-configs')

describe 'helpers', ->
  describe 'getConfigs', ->
    beforeEach ->
      support.cleanUpEnvironment()

    it 'returns an empty object if no environment variables are set', ->
      expect(getConfigs()).to.eql({})

    it 'returns an empty object if only unrelated environment variables are set', ->
      process.env.OMNOMNOM = 'foo'
      expect(getConfigs()).to.eql({})

    it 'scopes the variables', ->
      process.env.HUBOT_PULL_REQUEST_OM_NOM1 = 1
      process.env.HUBOT_PULL_REQUEST_OM_NOM2 = 2
      process.env.HUBOT_PULL_REQUEST_OM_NOM3 = 3

      expect(getConfigs()).to.eql(
        om:
          nom1: 1,
          nom2: 2,
          nom3: 3
      )
