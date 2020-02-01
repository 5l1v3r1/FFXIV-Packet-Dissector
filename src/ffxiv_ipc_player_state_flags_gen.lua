-- This file is generated by tools/json2lua.js

local ffxiv_ipc_player_state_flags = Proto("ffxiv_ipc_player_state_flags", "FFXIV-IPC Player State Flags")

local player_state_flags_fields = {
  flags0  = ProtoField.uint8("ffxiv_ipc_player_state_flags.flags0", "flags0", base.DEC),
  flags1  = ProtoField.uint8("ffxiv_ipc_player_state_flags.flags1", "flags1", base.DEC),
  flags2  = ProtoField.uint8("ffxiv_ipc_player_state_flags.flags2", "flags2", base.DEC),
  flags3  = ProtoField.uint8("ffxiv_ipc_player_state_flags.flags3", "flags3", base.DEC),
  flags4  = ProtoField.uint8("ffxiv_ipc_player_state_flags.flags4", "flags4", base.DEC),
  flags5  = ProtoField.uint8("ffxiv_ipc_player_state_flags.flags5", "flags5", base.DEC),
  flags6  = ProtoField.uint8("ffxiv_ipc_player_state_flags.flags6", "flags6", base.DEC),
  flags7  = ProtoField.uint8("ffxiv_ipc_player_state_flags.flags7", "flags7", base.DEC),
  flags8  = ProtoField.uint8("ffxiv_ipc_player_state_flags.flags8", "flags8", base.DEC),
  flags9  = ProtoField.uint8("ffxiv_ipc_player_state_flags.flags9", "flags9", base.DEC),
  flags10 = ProtoField.uint8("ffxiv_ipc_player_state_flags.flags10", "flags10", base.DEC),
  flags11 = ProtoField.uint8("ffxiv_ipc_player_state_flags.flags11", "flags11", base.DEC),
  padding = ProtoField.uint32("ffxiv_ipc_player_state_flags.padding", "padding", base.DEC),
}

ffxiv_ipc_player_state_flags.fields = player_state_flags_fields

function ffxiv_ipc_player_state_flags.dissector(tvbuf, pktinfo, root)
  local tree = root:add(ffxiv_ipc_player_state_flags, tvbuf)
  pktinfo.cols.info:set("Player State Flags")

  local len = tvbuf:len()

  -- dissect the flags0 field
  local flags0_tvbr = tvbuf:range(0, 1)
  local flags0_val  = flags0_tvbr:le_uint()
  tree:add_le(player_state_flags_fields.flags0, flags0_tvbr, flags0_val)

  -- dissect the flags1 field
  local flags1_tvbr = tvbuf:range(1, 1)
  local flags1_val  = flags1_tvbr:le_uint()
  tree:add_le(player_state_flags_fields.flags1, flags1_tvbr, flags1_val)

  -- dissect the flags2 field
  local flags2_tvbr = tvbuf:range(2, 1)
  local flags2_val  = flags2_tvbr:le_uint()
  tree:add_le(player_state_flags_fields.flags2, flags2_tvbr, flags2_val)

  -- dissect the flags3 field
  local flags3_tvbr = tvbuf:range(3, 1)
  local flags3_val  = flags3_tvbr:le_uint()
  tree:add_le(player_state_flags_fields.flags3, flags3_tvbr, flags3_val)

  -- dissect the flags4 field
  local flags4_tvbr = tvbuf:range(4, 1)
  local flags4_val  = flags4_tvbr:le_uint()
  tree:add_le(player_state_flags_fields.flags4, flags4_tvbr, flags4_val)

  -- dissect the flags5 field
  local flags5_tvbr = tvbuf:range(5, 1)
  local flags5_val  = flags5_tvbr:le_uint()
  tree:add_le(player_state_flags_fields.flags5, flags5_tvbr, flags5_val)

  -- dissect the flags6 field
  local flags6_tvbr = tvbuf:range(6, 1)
  local flags6_val  = flags6_tvbr:le_uint()
  tree:add_le(player_state_flags_fields.flags6, flags6_tvbr, flags6_val)

  -- dissect the flags7 field
  local flags7_tvbr = tvbuf:range(7, 1)
  local flags7_val  = flags7_tvbr:le_uint()
  tree:add_le(player_state_flags_fields.flags7, flags7_tvbr, flags7_val)

  -- dissect the flags8 field
  local flags8_tvbr = tvbuf:range(8, 1)
  local flags8_val  = flags8_tvbr:le_uint()
  tree:add_le(player_state_flags_fields.flags8, flags8_tvbr, flags8_val)

  -- dissect the flags9 field
  local flags9_tvbr = tvbuf:range(9, 1)
  local flags9_val  = flags9_tvbr:le_uint()
  tree:add_le(player_state_flags_fields.flags9, flags9_tvbr, flags9_val)

  -- dissect the flags10 field
  local flags10_tvbr = tvbuf:range(10, 1)
  local flags10_val  = flags10_tvbr:le_uint()
  tree:add_le(player_state_flags_fields.flags10, flags10_tvbr, flags10_val)

  -- dissect the flags11 field
  local flags11_tvbr = tvbuf:range(11, 1)
  local flags11_val  = flags11_tvbr:le_uint()
  tree:add_le(player_state_flags_fields.flags11, flags11_tvbr, flags11_val)

  -- dissect the padding field
  local padding_tvbr = tvbuf:range(12, 4)
  local padding_val  = padding_tvbr:le_uint()
  tree:add_le(player_state_flags_fields.padding, padding_tvbr, padding_val)

  return len
end