vim.scriptencoding = "utf-8"

vim.wo.number = true

local options = {
    encoding = "utf-8",
    fileencoding = "utf-8",
    title = true,
    backup = false,
    clipboard = "unnamedplus",
    cmdheight = 2,
    completeopt = {"menuone", "noselect"},
    conceallevel = 0,
    hlsearch = true,
    ignorecase = true,
    mouse = "a",
    pumheight = 10,
    showmode = false,
    showtabline = 2,
    smartcase = true,
    smartindent = true,
    smarttab = true,
    swapfile = false,
    termguicolors = true,
    guifont = "FiraCode Nerd Font Mono",
    timeoutlen = 300,
    undofile = true,
    updatetime = 300,
    writebackup = false,
    expandtab = true,
    shiftwidth = 4,
    tabstop = 4,
    cursorline = true,
    number = true,
    relativenumber = false,
    numberwidth = 4,
    signcolumn = "yes",
    wrap = true,
    winblend = 0,
    wildoptions = "pum",
    pumblend = 5,
    -- background = "dark",
    scrolloff = 8,
    sidescrolloff = 8,
    splitbelow = false, -- オンのとき、ウィンドウを横分割すると新しいウィンドウはカレントウィンドウの下に開かれる
    splitright = false, -- オンのとき、ウィンドウを縦分割すると新しいウィンドウはカレントウィンドウの右に開かれる
    list = true,
    listchars = {tab=">-", trail="_"},
}

vim.opt.shortmess:append("c")

for k, v in pairs(options) do
    vim.opt[k] = v
end

vim.api.nvim_create_autocmd({ "BufReadPost" }, {
    pattern = { "*" },
    callback = function()
        vim.api.nvim_exec('silent! normal! g`"zv', false)
    end,
})

if {vim.cmd "if has('mac')"} then
    vim.api.nvim_create_augroup("MyIMEGroup",{})
    vim.api.nvim_create_autocmd("insertleave",{
        group = "MyIMEGroup",
--         callback = vim.fn.system('osascript -e "tell application \"System Events\" to key code 102"')
        callback = function()
            vim.fn.system({
                "osascript",
                "-e",
                "tell application \"System Events\" to key code 102"
            })
        end
    })

end

