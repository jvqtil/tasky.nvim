local M = {}

local function run(cmd) 
    vim.api.nvim_out_write(vim.fn.system(cmd)) 
end

function M.tasky(opts)
  local sub = opts.fargs[1]
  if sub == "add" or sub == "Add" then
    local name = table.concat({unpack(opts.fargs, 2)}, " ")
    if name == "" then vim.api.nvim_err_writeln("Usage: :Tasky add <name>") return end
    run("tasky add " .. vim.fn.shellescape(name))
  elseif sub == "done" or sub == "Done" then
    local name = table.concat({unpack(opts.fargs, 2)}, " ")
    if name == "" then vim.api.nvim_err_writeln("Usage: :Tasky done <name>") return end
    run("tasky done " .. vim.fn.shellescape(name))
  else
    run("tasky")
  end
end

function M.setup()
  vim.api.nvim_create_user_command("Tasky", M.tasky, { nargs = "*" })
end

return M
