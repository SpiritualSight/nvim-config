local jdtls = require("jdtls")

local home = os.getenv("HOME")
local workspace = home .. "/.local/share/nvim/java-workspace/" .. vim.fn.fnamemodify(vim.fn.getcwd(), ":p:h:t")

local config = {
  cmd = {
    "jdtls",
    "-data", workspace
  },
  root_dir = require("jdtls.setup").find_root({ "gradle.build", "pom.xml", ".git" }),
}
jdtls.start_or_attach(config)
