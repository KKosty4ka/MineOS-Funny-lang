local handle, code, result, reason = component.proxy(component.list("internet")()).request("https://raw.githubusercontent.com/KKosty4ka/MineOS-Funny-lang/master/EFI/Minifed.lua"), ""
if handle then
	while true do
		result, reason = handle.read(math.huge)
		if result then
			code = code .. result
		else
			if reason then
				error(reason,0)
			end
			break
		end
	end
	result, reason = load(code)
	if result then
		result, reason = xpcall(result, debug.traceback)
		if not result then
			error(reason,0)
		end
	end
	error(reason,0)
else
	error("Invalid address",0)
end