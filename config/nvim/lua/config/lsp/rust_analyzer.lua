return function(server, opts)
    opts.settings = {
        ["rust-analyzer"] = {
            assist = {
                importGroup = true,
                importMergeBehaviour = "full",
                importPrefix = "by_crate",
            },
            callInfo = { full = true },
            cargo = {
                allFeatures = true,
                autoreload = true,
                loadOutDirsFromCheck = true,
            },
            checkOnSave = {
                command = "clippy",
                allFeatures = true,
                extraArgs = { "--tests" },
            },
            completion = {
                addCallArgumentSnippets = true,
                addCallParenthesis = true,
                postfix = { enable = true },
                autoimport = { enable = true },
            },
            diagnostics = { enable = true, enableExperimental = true },
            hoverActions = {
                enable = true,
                debug = true,
                gotoTypeDef = true,
                implementations = true,
                run = true,
                linksInHover = true,
            },
            inlayHints = {
                chainingHints = true,
                parameterHints = true,
                typeHints = true,
            },
            lens = {
                enable = true,
                debug = true,
                implementations = true,
                run = true,
                methodReferences = true,
                references = true,
            },
            notifications = { cargoTomlNotFound = true },
            procMacro = { enable = true },
        },
    }

    require("rust-tools").setup({
        tools = {
            autoSetHints = true,
            hover_with_actions = false,
            inlay_hints = {
                show_parameter_hints = true,
                parameter_hints_prefix = "> ",
                other_hints_prefix = "",
            },
        },
        server = vim.tbl_deep_extend("force", server:get_default_options(), opts),
    })

    server:on_ready(function()
        server:attach_buffers()
    end)
end
