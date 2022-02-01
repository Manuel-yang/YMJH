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
	"3b04ec3230c8fb23e9fdeff3b8cc23f08fe2318ec33b080000000180060c3930e4cf93764f9ffe7bddb33e4c7930e4c383$安全$187$14$28",
	}
	local index = addTSOcrDictEx(tab)
	while (true) do
		huo_dongX, huo_dongY = tsFindText(index, "安全", 129, 0,239, 48, "A09C96 , 36383B # A29E98 , 383A3D # ABA7A2 , 414347", 50)
		if huo_dongX > 0 then
			return true
		else
			mSleep(2000)
			toast("请返回主页面",1)
		end
	end
end

--领取右边的东西
function tools.shi_yong()
	-- body
	--内容已复制到剪贴板!
	local tab = {
		"00000040000010000004000001000000400000100000040000010000004000001000000400000100000040000010000004000001000000400000100000040e00010f00005fff801fffe0078018016786005bfd8016ffc005b3f001fffc007fff0017dcc005b630016f86005be180120040040000010000004001801001e007fff001fff0007330001ccc0007330001fffc007fff001ccc0007330001ccc6007fff801fffe005e0000100000040000010000004000001000000400000100000040000010000004000001000000400000100000040000010000004000001000000400000100000040000010000004000001000000@01$使用$356$26$75",
	}
	local index = addTSOcrDictEx(tab)
	x, y = tsFindText(index, "使用", 894, 373, 956, 410, "4E5250 , 4C504E", 90)
	if x > 0 then
		mSleep(1000)
		tap(919,  395)
		mSleep(1000)
	end

end

function tools.huan_xian(line)
	toast("切换到"..line.."线",1)
	if tools.check() then
		mSleep(1000)
		tap( 1079,   31)
		mSleep(1500)
		
		--开始遍历
		if line == 1 then
			tap( 942,   69)
		elseif line == 2 then
			tap(961,  138)
		elseif line == 3 then
			tap( 915,  202)
		elseif line== 4 then
			tap( 947,  285)
		elseif line == 5 then
			tap(936,  354)
		elseif line == 6 then
			tap(  948,  411)
		elseif line == 7 then
			tap( 907,  503)
		elseif line == 8 then
			tap( 913,  566)
		end
	end

end
return tools