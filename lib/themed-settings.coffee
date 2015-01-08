semver = require 'semver'
MessagePanel = require './message-panel'

module.exports =
	activate: (state) ->
		if semver.gte(atom.getVersion(), '0.167.0')
			message = new MessagePanel()
			message.initialize 'The themed-settings package is not compatible with Atom >= 0.167.0 and has been disabled.'
			message.attach()
			process.nextTick ->
				atom.packages.disablePackage('themed-settings')
			return
	deactivate: ->
	serialize: ->
