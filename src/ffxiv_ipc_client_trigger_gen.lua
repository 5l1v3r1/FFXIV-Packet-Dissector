-- This file is generated by tools/json2lua.js

local db = require('ffxiv_db')
local enum = require('ffxiv_enum')
local label_param11_command_id = {
  [701] = "Type",
}
local label_param12_command_id = {
  [701] = "Bait",
  [104] = "Action",
}
local ffxiv_ipc_client_trigger = Proto("ffxiv_ipc_client_trigger", "FFXIV-IPC Client Trigger")

local client_trigger_fields = {
  command_id = ProtoField.uint16("ffxiv_ipc_client_trigger.command_id", "commandId", base.HEX, enum.reverse.client_trigger_command_id),
  unk_20     = ProtoField.uint8("ffxiv_ipc_client_trigger.unk_20", "unk_20", base.DEC),
  unk_21     = ProtoField.uint8("ffxiv_ipc_client_trigger.unk_21", "unk_21", base.DEC),
  param11    = ProtoField.uint32("ffxiv_ipc_client_trigger.param11", "param11", base.DEC),
  param12    = ProtoField.uint32("ffxiv_ipc_client_trigger.param12", "param12", base.DEC),
  param2     = ProtoField.uint32("ffxiv_ipc_client_trigger.param2", "param2", base.DEC),
  param4     = ProtoField.uint32("ffxiv_ipc_client_trigger.param4", "param4", base.DEC),
  param5     = ProtoField.uint32("ffxiv_ipc_client_trigger.param5", "param5", base.DEC),
  param3     = ProtoField.uint64("ffxiv_ipc_client_trigger.param3", "param3", base.DEC),
}

ffxiv_ipc_client_trigger.fields = client_trigger_fields

function ffxiv_ipc_client_trigger.dissector(tvbuf, pktinfo, root)
  local tree = root:add(ffxiv_ipc_client_trigger, tvbuf)
  pktinfo.cols.info:set("Client Trigger")

  local len = tvbuf:len()

  -- dissect the command_id field
  local command_id_tvbr = tvbuf:range(0, 2)
  local command_id_val  = command_id_tvbr:le_uint()
  tree:add_le(client_trigger_fields.command_id, command_id_tvbr, command_id_val)

  local command_id_display = ", commandId: " .. (enum.reverse.client_trigger_command_id[command_id_val] or "(unknown)")
  pktinfo.cols.info:append(command_id_display)
  tree:append_text(command_id_display)

  -- dissect the unk_20 field
  local unk_20_tvbr = tvbuf:range(2, 1)
  local unk_20_val  = unk_20_tvbr:le_uint()
  tree:add_le(client_trigger_fields.unk_20, unk_20_tvbr, unk_20_val)

  -- dissect the unk_21 field
  local unk_21_tvbr = tvbuf:range(3, 1)
  local unk_21_val  = unk_21_tvbr:le_uint()
  tree:add_le(client_trigger_fields.unk_21, unk_21_tvbr, unk_21_val)

  -- dissect the param11 field
  local param11_tvbr = tvbuf:range(4, 4)
  local param11_val  = param11_tvbr:le_uint()
  local param11_label_key = "param11"
  local param11_label_val = param11_val
  if command_id_val == 701 then
    param11_label_key = "Type"
    param11_label_val = (enum.reverse.client_trigger_fish_bait_type[param11_val] or "Unknown") .. " (" .. param11_val .. ")"
  end
  tree:add_le(client_trigger_fields.param11, param11_tvbr, param11_val, param11_label_key .. ": " .. param11_label_val)

  -- dissect the param12 field
  local param12_tvbr = tvbuf:range(8, 4)
  local param12_val  = param12_tvbr:le_uint()
  local param12_label_key = "param12"
  local param12_label_val = param12_val
  if command_id_val == 701 then
    param12_label_key = "Bait"
    param12_label_val = (db.Item[param12_val] or "Unknown") .. " (" .. param12_val .. ")"
  elseif command_id_val == 104 then
    param12_label_key = "Action"
    param12_label_val = (db.Action[param12_val] or "Unknown") .. " (" .. param12_val .. ")"
  end
  tree:add_le(client_trigger_fields.param12, param12_tvbr, param12_val, param12_label_key .. ": " .. param12_label_val)

  -- dissect the param2 field
  local param2_tvbr = tvbuf:range(12, 4)
  local param2_val  = param2_tvbr:le_uint()
  tree:add_le(client_trigger_fields.param2, param2_tvbr, param2_val)

  -- dissect the param4 field
  local param4_tvbr = tvbuf:range(16, 4)
  local param4_val  = param4_tvbr:le_uint()
  tree:add_le(client_trigger_fields.param4, param4_tvbr, param4_val)

  -- dissect the param5 field
  local param5_tvbr = tvbuf:range(20, 4)
  local param5_val  = param5_tvbr:le_uint()
  tree:add_le(client_trigger_fields.param5, param5_tvbr, param5_val)

  -- dissect the param3 field
  local param3_tvbr = tvbuf:range(24, 8)
  local param3_val  = param3_tvbr:le_uint64()
  tree:add_le(client_trigger_fields.param3, param3_tvbr, param3_val)

  return len
end