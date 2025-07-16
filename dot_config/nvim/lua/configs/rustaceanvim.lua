local mason_registry = require "mason-registry"
local package_path = mason_registry.get_package("codelldb"):get_install_path()

local extension_path = package_path .. "/extension/"
local codelldb_path = extension_path .. "adapter/codelldb"
local liblldb_path = extension_path .. "lldb/lib/liblldb"

local this_os = vim.uv.os_uname().sysname

-- The liblldb extension is .so for Linux and .dylib for MacOS
liblldb_path = liblldb_path .. (this_os == "Linux" and ".so" or ".dylib")

local cfg = require "rustaceanvim.config"

vim.g.rustaceanvim = {
  dap = {
    adapter = cfg.get_codelldb_adapter(codelldb_path, liblldb_path),
  },
}
