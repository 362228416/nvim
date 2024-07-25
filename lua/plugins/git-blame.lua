return {
  {
    "f-person/git-blame.nvim",
    lazy = false,
    opts = {
      enabled = true,
      date_format = "%r",
      message_template = "  <author> 󰔠 <date> 󰈚 <summary>  <sha>",
      message_when_not_committed = "  Not Committed Yet",
    },
  },
}
