local tools = require("tools")

local living_skill = {}

function living_skill.open_cao()
	-- body
	if tools.check() then
		tap(1164,  171)
		mSleep(2000)
		tap(1024,  596)
--内容已复制到剪贴板!
		local tab = {
			"0018130183381833b1873bd8e31d9c301b8301f0301e0377ff377ff307f0301f0609b861d9c67d8e6718f6418720183001830018200000000000000010006100061000611fe611fe61136639366ff366fd3661137f1137f1137f19366ff366fd3661136611fe611fe611fe61000610006$采草$369$20$45",
		}
		local index = addTSOcrDictEx(tab)
		mSleep(1000)
		cai_caoX, cai_caoY = tsFindText(index, "采草", 174, 276,250, 321, "CDD3D3 , 312C2C", 90)
		if cai_caoX < 0 then
			toast("打开菜单",1)
			mSleep(1000)
			tap(243,  224)
			mSleep(1000)
			tap(  236,  291)
		else
			mSleep(1000)
			tap(  236,  291)
		end

		
	else
		toast("请返回游戏界面",1)
	end
end

function living_skill.cao_level2()
	-- body
	--living_skill.open_cao()
	--mSleep(1000)
	--tap( 1084,  385)
	--mSleep(1000)
	--tap(737,  270)
	--mSleep(1000)
	--tap(1021,  239)
	--mSleep(1000)
	--tap( 570,  529)
	--mSleep(1000)
	--tap(1177,   41)
	--mSleep(1000)
	--tap(1163,   60)
	--mSleep(3000)
--内容已复制到剪贴板!
	local tab = {
		"004110218910c4c8c204c103c081805fff60602038101608e884c4620218010c008000000000000000c100c088c04dffa5ea56152a0a96054a1bfff77ec0a96054a82a5215290a94c40a@011$采集$189$17$35",
		"000017fff33fff33000f37ffe3fffc37fec7002e7ffff7fff70380307c387f3f8fdfd8fdf18ccdd00c1fd0c0fd0c0190ffff0ffff0fff8000000000000000000e1700e1700e170ce170ee3766e3777e3773e7738e6718ee700fc7fff87fff4740ee700ee700ef700e77e0e37e0e37c0e1600e0$购买$479$20$46",
	}
	local index = addTSOcrDictEx(tab)
	--初始1线
	local line = 1
	mSleep(2000)
	while (true) do
		if line > 8 then
			line = 1
		end
		cai_jiX, cai_jiY = tsFindText(index, "采集",936, 476, 989, 501, "D4D5CE , 2B2931", 90)
		--开始采集
		if cai_jiX > 0 then
			mSleep(1000)
			--没有装备工具
			x,y = findMultiColorInRegionFuzzy( 0x727666, "-7|4|0x5d5d46,-5|10|0x6f7365,6|7|0x707068,-23|3|0x727566,-26|4|0x737666,-27|5|0x727567,-28|7|0x717467,-30|8|0x747567,-37|7|0x161c05", 90, 852, 437, 969, 543)
			if x > 0 then
				mSleep(1000)
				tap(907,  485)
				mSleep(1000)
				jie_shuX, jie_shuY = findMultiColorInRegionFuzzy( 0xffffff, "1|3|0xffffff,4|5|0xffffff,3|6|0xffffff,4|15|0xffffff,16|1|0xffffff,-9|3|0xffffff,-13|2|0xffffff,-15|4|0xffffff,2|-6|0xffffff", 90, 755, 358, 875, 451)
				if jie_shuX > 0 then
					mSleep(1000)
					toast("装备用完，结束任务",1)
					return
				end
				mSleep(1000)
				tap(  821,  404)
				mSleep(2000)
			end

			tap( 907,  495)
			mSleep(5000)
			--jiaX,jiaY = findMultiColorInRegionFuzzy( 0xffffff, "1|0|0xffffff,1|-17|0xffffff,16|-17|0xffffff,2|-29|0xffffff,-7|-3|0x0c0c0d,-6|-4|0x0d0d0e,-8|-3|0x0c0c0d,-9|-2|0x0d0d0e,-10|-1|0x0b0c0c", 90, 743, 346, 872, 467)
			--if jiaX > 0 then
				--tap(818,  402)
				--mSleep(3000)
				--gou_maiX, gou_maiY = tsFindText(index, "购买", 580, 477, 689, 519, "565957 , 555957", 90)
				--if gou_maiX > 0 then
					--tap(649,  503)
					--mSleep(1000)
					--tap(836,  490)
					--tap( 649,  503)
					--return
				--end
			--end
		else
		--关闭学习配方
		local tab = {
			"06300f304e307db07db01db00db3fdfffdff0df01df07cb0fdb0ce300f300e300000000000006018601860186e386e3067306370616060626047700e7ffe7ffc$学习$220$16$32",
		}
		local index = addTSOcrDictEx(tab)
			xue_xiX, xue_xiY = tsFindText(index, "学习", 871, 376, 975, 409, "545856 , 474A49", 60)
			if line == 8 then
				line = 0
			end
			if xue_xiX > 0 then
				mSleep(1000)
				tap(993,  257)
				mSleep(1000)
			end
			line = line + 1
			tools.huan_xian(line)
			mSleep(5000)
		end
	end


end



return living_skill