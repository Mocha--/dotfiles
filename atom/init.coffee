# Your init script
#
# Atom will evaluate this file each time a new window is opened. It is run
# after packages are loaded/activated and after the previous editor state
# has been restored.
#
# An example hack to log to the console when each text editor is saved.
#
# atom.workspace.observeTextEditors (editor) ->
#   editor.onDidSave ->
#     console.log "Saved! #{editor.getPath()}"

# add customized commands
atom.commands.add 'atom-text-editor.vim-mode-plus:not(.insert-mode)', 'Mooocha:move-10-lines-up', ->
    atom.workspace.getActiveTextEditor().moveUp(10)

atom.commands.add 'atom-text-editor.vim-mode-plus:not(.insert-mode)', 'Mooocha:move-10-lines-down', ->
    atom.workspace.getActiveTextEditor().moveDown(10)

atom.commands.add 'atom-text-editor.vim-mode-plus:not(.insert-mode)', 'Mooocha:move-to-beginning-of-next-3-words', ->
    editor = atom.workspace.getActiveTextEditor()
    for i in [0..2]
        editor.moveToBeginningOfNextWord()

atom.commands.add 'atom-text-editor.vim-mode-plus:not(.insert-mode)', 'Mooocha:move-to-beginning-of-previous-3-words', ->
    editor = atom.workspace.getActiveTextEditor()
    for i in [0..2]
        editor.moveToPreviousWordBoundary()
