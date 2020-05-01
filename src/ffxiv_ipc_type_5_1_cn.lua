-- This file is generated by tools/json2lua.js

local M = {}
M.types = {
  [0x012e] = {
    [0] = {
      name = "ffxiv_ipc_actor_cast",
      length = 32,
    },
  },
  [0x00de] = {
    [0] = {
      name = "ffxiv_ipc_actor_control",
      length = 24,
    },
  },
  [0x01c3] = {
    [0] = {
      name = "ffxiv_ipc_actor_control_self",
      length = 32,
    },
  },
  [0x03ac] = {
    [0] = {
      name = "ffxiv_ipc_actor_control_target",
      length = 32,
    },
  },
  [0x0382] = {
    [0] = {
      name = "ffxiv_ipc_actor_gauge",
      length = 16,
    },
  },
  [0x02a9] = {
    [0] = {
      name = "ffxiv_ipc_actor_move",
      length = 16,
    },
  },
  [0x02f2] = {
    [0] = {
      name = "ffxiv_ipc_actor_set_pos",
      length = 24,
    },
  },
  [0x01e2] = {
    [0] = {
      name = "ffxiv_ipc_add_status_effect",
      length = 30,
    },
  },
  [0x0233] = {
    [0] = {
      name = "ffxiv_ipc_effect16",
      length = 1212,
    },
  },
  [0x03d8] = {
    [0] = {
      name = "ffxiv_ipc_effect24",
      length = 1788,
    },
  },
  [0x03c7] = {
    [0] = {
      name = "ffxiv_ipc_effect32",
      length = 2364,
    },
  },
  [0x009d] = {
    [0] = {
      name = "ffxiv_ipc_effect8",
      length = 636,
    },
  },
  [0x00f7] = {
    [0] = {
      name = "ffxiv_ipc_boss_status_effect_list",
      length = 744,
    },
  },
  [0x0315] = {
    [0] = {
      name = "ffxiv_ipc_client_trigger",
      length = 32,
    },
  },
  [0x03a4] = {
    [0] = {
      name = "ffxiv_ipc_company_info",
      length = 80,
    },
  },
  [0x031b] = {
    [0] = {
      name = "ffxiv_ipc_company_level",
      length = 32,
    },
  },
  [0x00FD] = {
    [0] = {
      name = "ffxiv_ipc_container_info",
      length = 16,
    },
  },
  [0x0121] = {
    [0] = {
      name = "ffxiv_ipc_content_finder_notify",
      length = 12,
    },
  },
  [0x0265] = {
    [0] = {
      name = "ffxiv_ipc_content_finder_notify_pop",
      length = 32,
    },
  },
  [0x0101] = {
    [0] = {
      name = "ffxiv_ipc_content_finder_progress",
      length = 16,
    },
  },
  [0x0259] = {
    [0] = {
      name = "ffxiv_ipc_content_finder_trigger",
      length = 24,
    },
  },
  [0x03db] = {
    [0] = {
      name = "ffxiv_ipc_content_finder_trigger_routtle",
      length = 16,
    },
  },
  [0x0250] = {
    [0] = {
      name = "ffxiv_ipc_effect",
      length = 124,
    },
  },
  [0x0117] = {
    [0] = {
      name = "ffxiv_ipc_ensemble_ready_receive",
      length = 21,
    },
  },
  [0x020b] = {
    [0] = {
      name = "ffxiv_ipc_ensemble_ready_send",
      length = 9,
    },
  },
  [0x02eb] = {
    [0] = {
      name = "ffxiv_ipc_ensemble_start_receive",
      length = 9,
    },
  },
  [0x0348] = {
    [0] = {
      name = "ffxiv_ipc_ensemble_start_send",
      length = 9,
    },
  },
  [0x0065] = {
    [0] = {
      name = "ffxiv_ipc_group_message",
      length = 55,
    },
  },
  [0x015B] = {
    [0] = {
      name = "ffxiv_ipc_init_zone",
      length = 96,
    },
  },
  [0x0293] = {
    [0] = {
      name = "ffxiv_ipc_inventory_transaction",
      length = 36,
    },
  },
  [0x0318] = {
    [0] = {
      name = "ffxiv_ipc_inventory_transaction_finish",
      length = 16,
    },
  },
  [0x007e] = {
    [0] = {
      name = "ffxiv_ipc_npc_spawn",
      length = 640,
    },
  },
  [0x034c] = {
    [0] = {
      name = "ffxiv_ipc_boss_npc_spawn",
      length = 640,
    },
  },
  [0x0287] = {
    [0] = {
      name = "ffxiv_ipc_perform_note",
      length = 1,
    },
  },
  [0x0358] = {
    [0] = {
      name = "ffxiv_ipc_ping",
      length = 8,
    },
  },
  [0x0147] = {
    [0] = {
      name = "ffxiv_ipc_player_spawn",
      length = 632,
    },
  },
  [0x03c0] = {
    [0] = {
      name = "ffxiv_ipc_public_message",
      length = 48,
    },
  },
  [0x013c] = {
    [0] = {
      name = "ffxiv_ipc_server_notice",
      length = 1,
    },
  },
  [0x0260] = {
    [0] = {
      name = "ffxiv_ipc_skill_handler",
      length = 32,
    },
  },
  [0x037c] = {
    [0] = {
      name = "ffxiv_ipc_status_effect_list",
      length = 384,
    },
  },
  [0x03d4] = {
    [0] = {
      name = "ffxiv_ipc_update_hp_mp_tp",
      length = 14,
    },
  },
  [0x01AD] = {
    [0] = {
      name = "ffxiv_ipc_update_inventory_slot",
      length = 64,
    },
  },
  [0x030B] = {
    [0] = {
      name = "ffxiv_ipc_item_info",
      length = 64,
    },
  },
}

function M.getDissector(typeNum, length)
  local types = M.types[typeNum]
  if type(types) ~= "table" then
    return nil
  end

  for k, v in pairs(types) do
    if v.length == length then
      return Dissector.get(v.name)
    end
  end

  for k, v in pairs(types) do
    if v.length < length then
      return Dissector.get(v.name)
    end
  end

  return nil
end

return M
