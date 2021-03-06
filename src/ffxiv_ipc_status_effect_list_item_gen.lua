-- This file is generated by tools/json2lua.js

local db = require('ffxiv_db')
local ffxiv_ipc_status_effect_list_item = Proto("ffxiv_ipc_status_effect_list_item", "FFXIV-IPC StatusEffectListItem")

local status_effect_list_item_fields = {
  effect_id       = ProtoField.uint16("ffxiv_ipc_status_effect_list_item.effect_id", "effectId", base.DEC, db.Status),
  unknown1        = ProtoField.uint16("ffxiv_ipc_status_effect_list_item.unknown1", "unknown1", base.DEC),
  duration        = ProtoField.float("ffxiv_ipc_status_effect_list_item.duration", "duration", base.DEC),
  source_actor_id = ProtoField.uint32("ffxiv_ipc_status_effect_list_item.source_actor_id", "sourceActorId", base.HEX),
}

ffxiv_ipc_status_effect_list_item.fields = status_effect_list_item_fields

function ffxiv_ipc_status_effect_list_item.dissector(tvbuf, pktinfo, root)
  local tree = root:add(ffxiv_ipc_status_effect_list_item, tvbuf)
  pktinfo.cols.info:set("StatusEffectListItem")

  local len = tvbuf:len()

  -- dissect the effect_id field
  local effect_id_tvbr = tvbuf:range(0, 2)
  local effect_id_val  = effect_id_tvbr:le_uint()
  tree:add_le(status_effect_list_item_fields.effect_id, effect_id_tvbr, effect_id_val)

  local effect_id_display = ", effectId: " .. (db.Status[effect_id_val] or "(unknown)")
  pktinfo.cols.info:append(effect_id_display)
  tree:append_text(effect_id_display)

  -- dissect the unknown1 field
  local unknown1_tvbr = tvbuf:range(2, 2)
  local unknown1_val  = unknown1_tvbr:le_uint()
  tree:add_le(status_effect_list_item_fields.unknown1, unknown1_tvbr, unknown1_val)

  -- dissect the duration field
  local duration_tvbr = tvbuf:range(4, 4)
  local duration_val  = duration_tvbr:le_float()
  tree:add_le(status_effect_list_item_fields.duration, duration_tvbr, duration_val)

  -- dissect the source_actor_id field
  local source_actor_id_tvbr = tvbuf:range(8, 4)
  local source_actor_id_val  = source_actor_id_tvbr:le_uint()
  tree:add_le(status_effect_list_item_fields.source_actor_id, source_actor_id_tvbr, source_actor_id_val)

  if effect_id_val == 0 then
    tree:set_hidden(true)
  end

  return len
end