class MessagePanel extends HTMLElement
	initialize: (message) ->
		@textContent = message
		btn = document.createElement 'button'
		btn.textContent = 'Close'
		btn.classList.add 'btn', 'btn-sm', 'pull-right'
		btn.addEventListener 'click', => @destroy()
		@appendChild btn

	attach: ->
		@panel = atom.workspace.addBottomPanel item: this

	destroy: ->
		@panel.destroy()

module.exports = document.registerElement 'themed-settings-message-panel', prototype: MessagePanel.prototype
