local editor = require('join.editor')
local strings = require('join.strings')

local M = {}

function M.join_lines(buffer, start_line, end_line)
    local lines_in = editor.get_lines(buffer, start_line, end_line)
    local lines_out = strings.join_lines(lines_in)
    editor.set_lines(buffer, start_line, end_line, lines_out)
end

function M.join()
    local buffer = 0
    local start_line, end_line = editor.get_selected_lines()
    M.join_lines(buffer, start_line, end_line)
end

function M.join_user_cmd(ctx)
    local buffer = 0
    local start_line, end_line = ctx.line1, ctx.line2
    M.join_lines(buffer, start_line, end_line)
end

function M.setup(...)
    vim.api.nvim_create_user_command('Join', M.join_user_cmd, { range = true, nargs = 0 })
end

return M
