require('gitsigns').setup {
    signs = {
        add = {hl = 'green', text = '│', numhl = 'green', linehl = 'green'},
        change = {hl = 'blue', text = '│', numhl = 'blue', linehl = 'blue'},
        delete = {
            hl = 'orange',
            text = '│',
            numhl = 'orange',
            linehl = 'orange'
        },
        topdelete = {
            hl = 'orange',
            text = '│',
            numhl = 'orange',
            linehl = 'orange'
        },
        changedelete = {
            hl = 'blue',
            text = '│',
            numhl = 'blue',
            linehl = 'blue'
        }
    }
}
