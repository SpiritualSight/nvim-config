return {
  "mfussenegger/nvim-jdtls",
  ft = { "java" },
  config = function()
    local jdtls = require("jdtls")
    local home = os.getenv("HOME")
    local file = vim.fn.expand("%:p")
    local tmpname = vim.fn.fnamemodify(file, ":t")
    local workspace_dir = home .. "/.cache/jdtls-standalone/" .. tmpname

    local launcher_jar = vim.fn.glob(home .. "/jdtls/plugins/org.eclipse.equinox.launcher_*.jar")

    local config = {
      cmd = {
        "/opt/java/jdk-21.0.7+6/bin/java",
        "-Declipse.application=org.eclipse.jdt.ls.core.id1",
        "-Dosgi.bundles.defaultStartLevel=4",
        "-Declipse.product=org.eclipse.jdt.ls.core.product",
        "-Dlog.level=ALL",
        "-Xmx1G",
        "-jar", launcher_jar,
        "-configuration", home .. "/jdtls/config_linux",
        "-data", workspace_dir
      },
      root_dir = vim.loop.cwd(), -- just use current directory
      settings = {
        java = {
          signatureHelp = { enabled = true },
        }
      },
    }

    jdtls.start_or_attach(config)
  end,
}
