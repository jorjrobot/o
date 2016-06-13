if matches[1] == "setusername" and is_admin1(msg) then
      local function ok_username_cb (extra, success, result)
        local receiver = extra.receiver
        if success == 1 then
          send_large_msg(receiver, "SuperGroup username Set.\n\nSelect the chat again to see the changes.")
        elseif success == 0 then
          send_large_msg(receiver, "Failed to set SuperGroup username.\nUsername may already be taken.\n\nNote: Username can use a-z, 0-9 and underscores.\nMinimum length is 5 characters.")
        end
      end
      local username = string.gsub(matches[2], '@', '')
      channel_set_username(receiver, username, ok_username_cb, {receiver=receiver})
    end