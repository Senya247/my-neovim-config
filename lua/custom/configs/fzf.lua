vim.g.fzf_buffers_jump = 1

-- [[B]Commits] Customize the options used by 'git log':
vim.g.fzf_commits_log_options = '--graph --color=always --format="%C(auto)%h%d %s %C(black)%C(bold)%cr"'

-- [Tags] Command to generate tags file
vim.g.fzf_tags_command = 'ctags -R'

-- [Commands] --expect expression for directly executing the command
vim.g.fzf_commands_expect = 'alt-enter,ctrl-x'
