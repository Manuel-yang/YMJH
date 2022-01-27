local tools = {}


function tools.huo_dong(name)
	mSleep(3000)
	local tab = {
		"020000c060382d0e1e700e1c00000c000230018fc467f31f8dfda3ded8efe77219f9047e031e00c000300004008100@00$活$129$18$21",
	}
	local index = addTSOcrDictEx(tab)
	while (true) do
		huo_dongX, huo_dongY = tsFindText(index, "活",873, 15, 928, 72, "D1D2C5 , 191810 # D1D2C2 , 191812 # C0C0AC , 292928", 68)
		if huo_dongX > 0 then
			mSleep(1500)
			tap( 905,   36)
			toast(name,1)
			return
		else
			mSleep(2000)
		end
	end
end


function tools.zhen_bao_ge()
--内容已复制到剪贴板!
	local tab = {
	"1ffc8e40600062600e7c0da827a82ef824f8204020427fff3ffe$阁$93$16$13",
	}
	local index = addTSOcrDictEx(tab)

	while(true) do
		x, y = tsFindText(index, "阁", 938, 21, 995, 67, "D7DAC5 , 1D1E1A", 68)
		if x > 0 then
			mSleep(1000)
			tap( 965,   38)
			return
		else
			mSleep(2000)
		end
	end
end

function tools.check()
	-- body
	mSleep(3000)
	local tab = {
		"020000c060382d0e1e700e1c00000c000230018fc467f31f8dfda3ded8efe77219f9047e031e00c000300004008100@00$活$129$18$21",
	}
	local index = addTSOcrDictEx(tab)
	while (true) do
		huo_dongX, huo_dongY = tsFindText(index, "活",873, 15, 928, 72, "D1D2C5 , 191810 # D1D2C2 , 191812 # C0C0AC , 292928", 68)
		if huo_dongX > 0 then
			return true
		else
			return false
		end
	end
end

return tools