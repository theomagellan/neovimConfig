local options = {
    clipboard = "unnamedplus",
    cmdheight = 1,
    completeopt = { "menuone", "noselect" },
    conceallevel = 2,
    fileencoding = "utf-8",
    encoding = "utf-8",
    hlsearch = false,
    ignorecase = true,
    mouse = "a",
    pumheight = 10,
    showmode = false,
    showtabline = 2,
    smartcase = true,
    smartindent = true,
    autoindent = true,
    splitbelow = true,
    splitright = true,
    swapfile = false,
    termguicolors = true,
    timeoutlen = 300,
    updatetime = 300,
    expandtab = true,
    shiftwidth = 2,
    tabstop = 2,
    softtabstop = 2,
    number = true,
    relativenumber = false,
    wrapmargin = 120,
    textwidth = 120,
    scrolloff = 8,
    smarttab = true,
    backspace = { "eol", "start", "indent" },
    belloff = "all",
    list = true,
    listchars = {tab = "»·", trail = "·"},
    signcolumn = "yes",
    -- dvorak
    langmap="'q,\\,w,.e,pr,yt,fy,gu,ci,ro,lp,/[,=],aa,os,ed,uf,ig,dh,hj,tk,nl,s\\;,-',\\;z,qx,jc,kv,xb,bn,mm,w\\,,v.,z/,[-,]=,\"Q,<W,>E,PR,YT,FY,GU,CI,RO,LP,?{,+},AA,OS,ED,UF,IG,DH,HJ,TK,NL,S:,_\",:Z,QX,JC,KV,XB,BN,MM,W<,V>,Z?"
}

for k, v in pairs(options) do
    vim.opt[k] = v
end
