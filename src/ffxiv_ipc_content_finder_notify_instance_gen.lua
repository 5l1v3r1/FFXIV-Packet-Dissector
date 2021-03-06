-- This file is generated by tools/json2lua.js

local db = require('ffxiv_db')
local ffxiv_ipc_content_finder_notify_instance = Proto("ffxiv_ipc_content_finder_notify_instance", "FFXIV-IPC ContentFinderNotifyInstance")

local content_finder_notify_instance_fields = {
  content = ProtoField.uint16("ffxiv_ipc_content_finder_notify_instance.content", "Content", base.DEC, db.ContentFinderCondition),
  unknown = ProtoField.uint16("ffxiv_ipc_content_finder_notify_instance.unknown", "Unknown", base.DEC),
}

ffxiv_ipc_content_finder_notify_instance.fields = content_finder_notify_instance_fields

function ffxiv_ipc_content_finder_notify_instance.dissector(tvbuf, pktinfo, root)
  local tree = root:add(ffxiv_ipc_content_finder_notify_instance, tvbuf)
  pktinfo.cols.info:set("ContentFinderNotifyInstance")

  local len = tvbuf:len()

  -- dissect the content field
  local content_tvbr = tvbuf:range(0, 2)
  local content_val  = content_tvbr:le_uint()
  tree:add_le(content_finder_notify_instance_fields.content, content_tvbr, content_val)

  local content_display = ", Content: " .. (db.ContentFinderCondition[content_val] or "(unknown)")
  pktinfo.cols.info:append(content_display)
  tree:append_text(content_display)

  -- dissect the unknown field
  local unknown_tvbr = tvbuf:range(2, 2)
  local unknown_val  = unknown_tvbr:le_uint()
  tree:add_le(content_finder_notify_instance_fields.unknown, unknown_tvbr, unknown_val)

  if content_val == 0 then
    tree:set_hidden(true)
  end

  return len
end