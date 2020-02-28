-- This file is generated by tools/json2lua.js

local ffxiv_ipc_company_level = Proto("ffxiv_ipc_company_level", "FFXIV-IPC Company Level")

local company_level_fields = {
  captain            = ProtoField.string("ffxiv_ipc_company_level.captain", "Captain", base.UNICODE),
}

ffxiv_ipc_company_level.fields = company_level_fields

function ffxiv_ipc_company_level.dissector(tvbuf, pktinfo, root)
  local tree = root:add(ffxiv_ipc_company_level, tvbuf)
  pktinfo.cols.info:set("Company Level")

  local len = tvbuf:len()

  -- dissect the captain field
  local captain_tvbr = tvbuf:range(0, 32)
  local captain_val  = captain_tvbr:string(ENC_UTF_8)
  tree:add(company_level_fields.captain, captain_tvbr, captain_val)

  -- dissect company_level_item
  local company_level_item_dissector = Dissector.get('ffxiv_ipc_company_level_item')
  local company_level_item_pos = 32
  local company_level_item_len = 88
  local company_level_item_count = 15

  while company_level_item_pos + company_level_item_len <= len do
    local company_level_item_tvbr = tvbuf:range(company_level_item_pos, 88)
    company_level_item_dissector:call(company_level_item_tvbr:tvb(), pktinfo, root)
    company_level_item_pos = company_level_item_pos + company_level_item_len
    company_level_item_count = company_level_item_count - 1
    if company_level_item_count <= 0 then
      break
    end
  end

  return len
end