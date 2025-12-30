{
  plugins = {

    bufferline = {
      enable = true;
      settings = {
        options = {
          offsets = [
            {
              filetype = "NvimTree";
              text = "File Explorer";
              highlight = "Directory";
              separator = true;
            } 
          ];
          separator_style = "thin";
          show_buffer_icon = true;
          color_icons = true;
        };
      };
    };

    nvim-tree = {
      enable = true;
      settings = {
        view = {
          side = "left";
          width = 30;
        };
      };
    };

  };

  /* 
  extraConfigLua = ''
    vim.api.nvim_create_autocmd("BufEnter", {
      nested = true,
      callback = function()
        if #vim.api.nvim_list_bufs() == 1 and vim.bo.filetype == "NvimTree" then
          vim.cmd("quit")
        end
      end,
    })
  ''; */
}
