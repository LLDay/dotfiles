local settings = {
    ["rust-analyzer"] = {
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

return settings
