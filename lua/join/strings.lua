local M = {}

function M.join_lines(lines)
    local res = {}
    local cur_line = nil
    for _, line in ipairs(lines) do
        if line:len() == 0 then
            if cur_line then
                table.insert(res, cur_line)
                cur_line = nil
            end
        else
            if cur_line then
                cur_line = cur_line .. " " .. line
            else
                cur_line = line
            end
        end
    end
    if cur_line then
        table.insert(res, cur_line)
    end
    return res
end

return M
