return {
  {
    'folke/tokyonight.nvim',
    opts = {
      transparent = true,
      style = 'storm',
      styles = {
        sidebars = 'transparent',
        floats = 'transparent',
      },
      on_highlights = function(hl)
        hl.comment = { fg = '#6A9955' }
        hl.Comment = { fg = '#6A9955' }
        hl.DiagnosticUnnecessary = { fg = '#717171' }
        hl.LspDiagnosticsUnnecessary = { fg = '#717171' }
      end,
    },
  },
  {
    'iagorrr/noctishc.nvim',
  },
}
