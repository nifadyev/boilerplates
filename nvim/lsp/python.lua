return {
    cmd = { 'basedpyright-langserver', '--stdio' },
    root_markers = {
        "pyproject.toml",
        "requirements.txt",
        "pyrightconfig.json",
    },
    capabilities = {
        general = { positionEncodings = { 'utf-8' } },
    },
    on_init = function(client)
        client.offset_encoding = 'utf-8'
    end,
    settings = {
        plugins = {
            basedpyright = {
                typeCheckingMode = 'recommended',
                -- Using Ruff's import organizer
                disableOrganizeImports = true,
                analysis = {
                    autoSearchPaths = true,
                    useLibraryCodeForTypes = true,
                    diagnosticMode = 'openFilesOnly',
                    autoImportCompletions = true,
                },
            },
            python = {
                venvPath = '~/.cache/pypoetry/virtualenvs/',
                analysis = {
                    -- Ignore all files for analysis to exclusively use Ruff for linting
                    ignore = { '*' },
                },
            },
            ruff = { enabled = true }
        }
    },
    filetypes = { 'python' },
}
