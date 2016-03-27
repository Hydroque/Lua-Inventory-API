
local ItemUtil = {}

ItemUtil.Clone = function(item)
	local out = {}
	for i, v in pairs(item)do
		out[i] = type(v) == "table" and {} or v
	end
	return out
end

ItemUtil.Invoke = function(item, ...)
	return item.Callable(item, ...)
end

ItemUtil.Set = function(item, index, val)
	item.Data[index] = val
	return item
end

ItemUtil.Get = function(item, index)
	return item.Data[index]
end

ItemUtil.Remove = function(item, index)
	local value = item.Data[index]
	item.Data[index] = nil
	return value
end

return ItemUtil