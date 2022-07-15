local settings = {
    evenBetterToml = {
        schema = {
            enabled = true,
            repositoryEnabled = true,
            repositoryUrl = "https://taplo.tamasfe.dev/schema_index.json",
        },
        cachePath = vim.fn.stdpath("cache") .. "/taplo",
        formatter = { indentTables = true },
    },
}

return settings
