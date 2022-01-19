require "TSLib"

local common = {}

function common.suan_gua()
	local tab = {
		"020000c060382d0e1e700e1c00000c000230018fc467f31f8dfda3ded8efe77219f9047e031e00c000300004008100@00$活$129$18$21",
	}
	local index = addTSOcrDictEx(tab)
	huo_dongX, huo_dongY = tsFindText(index, "活",873, 15, 928, 72, "D1D2C5 , 191810 # D1D2C2 , 191812 # C0C0AC , 292928", 50)
	if huo_dongX > 0 then
		randomTap(huo_dongX, huo_dongY)
		toast("每日一卦",1)
	else
		return
	end
	mSleep(500)
	tap(  730,  683)
	mSleep(1000)
	--每日一卦前往
	x,y = findMultiColorInRegionFuzzy( 0xb5c1c3, "-3|0|0xb9c5c7,-14|3|0x010101,-12|4|0x494e4f,-21|6|0xbfcbce,-1|7|0xb9c5c9", 90, 735, 523, 875, 556)
	if x > 0 then
		randomTap(x, y)
		mSleep(3000)
		--内容已复制到剪贴板!
		local tab = {
		"007fe00ffc01ff8030c0061800c33ff867ff0c9861830c3061860c30c187fe30ffc71ff8e0001c00@000$占$136$19$17",
		}
		local index = addTSOcrDictEx(tab)
		while (true) do
			suan_mingX, suan_mingY = tsFindText(index, "占", 1013, 470,1121, 504, "1F2020 , 171818 # 525553 , 4D514F # 505351 , 4F5351", 90)
			if suan_mingX > 0 then
				tap(1062,  486)
				mSleep(1000)
				tap( 642,  214)
				mSleep(1000)
				local touch = touch(1)
				touch:on(  629,  286):move( 629,  330):move( 629,  360):move( 629,  400):off()
				mSleep(500)
				tap(917,  562)
				mSleep(500)
				tap(1030,  442)
				mSleep(500)
				tap(798,  492)
				mSleep(500)
				tap(798,  492)
				toast("每日一卦完成",1)
				return
			end
		end
	else
		toast("每日一卦已经完成",1)
		return
	end
end



--茶馆活动
function common.cha_guan()
	--打开活动界面
	local tab = {
		"020000c060382d0e1e700e1c00000c000230018fc467f31f8dfda3ded8efe77219f9047e031e00c000300004008100@00$活$129$18$21",
	}
	local index = addTSOcrDictEx(tab)
	huo_dongX, huo_dongY = tsFindText(index, "活",873, 15, 928, 72, "D1D2C5 , 191810 # D1D2C2 , 191812 # C0C0AC , 292928", 50)
	
	if huo_dongX > 0 then
		tap( 905,   36)
		toast("茶馆说书")
		mSleep(2500)
		tap( 242,  685)
		mSleep(1000)
		cha_guanX,cha_guanY = findMultiColorInRegionFuzzy( 0xc6d2d4, "28|1|0xc9d4d5,58|3|0xbdcacc,84|-9|0x696c74", 90, 239, 472, 323, 503)
		if cha_guanX < 0 then
			toast("茶馆已完成",1)
			mSleep(1000)
			tap(1160,44)
			return
		end
		randomTap(cha_guanX,cha_guanY)
		while(true) do
			--等待跑路直到任务到达茶馆并和npc对话
			x,y = findMultiColorInRegionFuzzy( 0xbac2c0, "10|1|0x010000,81|2|0xc4ccca,62|-13|0xb9c4c5,133|-3|0x0c0c0c", 90, 911, 462, 1191, 513)
			if x > 0 then
				--人物到达时
				randomTap(x,y)
				mSleep(3000)
				
				tap( 779,  432)
				mSleep(5000)
				finishX,finishY = findMultiColorInRegionFuzzy( 0x878d89, "36|8|0xd0d6cf", 90, 872, 376, 977, 405)
				--如果已经完成五次则退出
				if finishX > 0 then
					toast("已完成",1)
					mSleep(1000)
					tap( 1171,19)
					return
				end
				while (true) do
					mSleep(8000)
					toast("选择中",1)
					randomTap(1107,389)
					quitX,quitY = findMultiColorInRegionFuzzy( 0x275a87, "19|3|0x2a5b88,32|9|0x2b5e8a,28|28|0x482b19,25|28|0x4f2f1d,-535|-244|0x4c1a1a,-539|-245|0x351e20,-120|218|0xbec9c7,-107|219|0x747675", 90, 114, 11, 1042, 637)
					if quitX > 0 then
						mSleep(500)
						tap( 810,  488)
						toast("完成茶馆说书",1)
						--点击获取的奖励
						Tx,Ty = findMultiColorInRegionFuzzy( 0x878d89, "36|8|0xd0d6cf", 90, 872, 376, 977, 405)
						randomTap(Tx,Ty)
						randomTap(Tx,Ty)
						return
					end
				end
			end
		end
	else
		toast("请返回主界面重启脚本(茶馆说书)",5)
		return
	end
end


--课业任务
function common.ke_ye()
	--打开活动界面
	local tab = {
		"020000c060382d0e1e700e1c00000c000230018fc467f31f8dfda3ded8efe77219f9047e031e00c000300004008100@00$活$129$18$21",
	}
	local index = addTSOcrDictEx(tab)
	huo_dongX, huo_dongY = tsFindText(index, "活",873, 15, 928, 72, "D1D2C5 , 191810 # D1D2C2 , 191812 # C0C0AC , 292928", 50)
	if huo_dongX > 0 then
		tap( 905,   36)
		mSleep(1000)
		tap( 250,  670)
		mSleep(1000)
		--活动页面课业按钮
		ke_yeX,ke_yeY = findMultiColorInRegionFuzzy( 0x090909, "-4|-2|0xc2d0d1,23|-8|0xbfcccf", 90, 149, 220, 320, 303)
		if ke_yeX > 0 then
			toast("课业任务",1)
			randomTap(ke_yeX, ke_yeY)
			mSleep(1000)
			tap( 304,  482)
		else
			toast("课业已经完成",1)
			return
		end	
		mSleep(1000)
		while (true) do
			--课业确认按钮
			ke_yeX,ke_yeY = findMultiColorInRegionFuzzy( 0xbcc7c7, "61|6|0x080707,62|6|0x020101,79|8|0x020101,80|7|0x383b3a,108|5|0xc4cdcb,120|4|0xc6cfcd", 90, 913, 466, 1189, 512)
			if ke_yeX > 0 then
				randomTap(ke_yeX, ke_yeY)
				mSleep(1000)
				--选择左边第一个课业
				tap(369,  304)
				mSleep(3000)
				--不断循环可以的几种任务
				while (true) do
					--购买物品
					mSleep(1000)
					gou_maiX,gou_maiY = findMultiColorInRegionFuzzy( 0x1d2829, "-101|115|0xd7e0e7,-95|111|0x5b6d7d,-35|176|0xc1cbc7,-1|185|0xafb8b3,1|185|0x2c2e2d,8|185|0x1e1f1e", 90, 343, 169, 909, 576)
					if gou_maiX > 0 then
						toast("购买",1)
						tap( 607,  502)
						mSleep(1000)
						tap(803,  496)
						--银两不足
						changeX,changeY = findMultiColorInRegionFuzzy( 0xbbc6c6, "-20|-56|0x3a4a44,-320|6|0xb29d91,9|19|0x8bab80", 90, 324, 308, 957, 562)
						if changeX > 0 then
							tap( 807,  485)
						end
					end
					--选择对话叉
					mSleep(1000)
					diaX,diaY = findMultiColorInRegionFuzzy( 0xffffff, "2|1|0xffffff,-242|219|0xfefefe,-666|144|0x0e122a", 90, 353, 12, 1221, 545)
					if diaX > 0 then
						--tap(1181,   35)
					end
					--将右侧拖到第一个任务
					local touch = touch(1) 
					touch:on( 238,  209):move(200,260):move(200,290):move(200,350):off()
					tap(229,  180)
					--一键提交坐标
					mSleep(1000)
					
					local tab = {
						"1800118201182011860318c03198021b386180e41803cd801cd801c18074181e61b3821b0021980318c0318e0318403$交$114$20$19",
					}
					local index = addTSOcrDictEx(tab)
					--请自行更改参数
					--1: 0,0,0,0 范围坐标，请自行修改
					--2: "010101 , 010101 # 181918 , 181918" 偏色,多组或单组.请在偏色列表中选择
					--3: 90 匹配精度 【0-100】
					ti_jiaoX, ti_jiaoY = tsFindText(index, "交", 971, 396, 1098, 431, "010101 , 010101 # 181918 , 181918", 90)
					if ti_jiaoX > 0 then
						tap( 1023,  425)
					end
					--结束按钮
					mSleep(1000)
					finishX, finishY = findMultiColorInRegionFuzzy( 0x42544d, "19|-1|0x475850,35|-5|0x56645e,16|26|0xbdc8c6,18|29|0xbfc9c8,24|32|0x130c0b,48|32|0xc0c9c7", 90, 730, 407, 935, 530)
					if finishX > 0 then
						randomTap(finishX, finishY)
						tap( 447,  483)
						toast("课业完成",1)
						return
					end
				end
			end
		end
	end
end


function common.bang_pai()
	--打开活动界面
	local tab = {
		"020000c060382d0e1e700e1c00000c000230018fc467f31f8dfda3ded8efe77219f9047e031e00c000300004008100@00$活$129$18$21",
	}
	local index = addTSOcrDictEx(tab)
	huo_dongX, huo_dongY = tsFindText(index, "活",873, 15, 928, 72, "D1D2C5 , 191810 # D1D2C2 , 191812 # C0C0AC , 292928", 50)
	if huo_dongX > 0 then
		tap( 905,   36)
		mSleep(1000)
		tap( 371,  672)
		mSleep(1000)
		--活动页面课业按钮
		x, y = findMultiColorInRegionFuzzy( 0xbcc6c8, "40|3|0xbcc8cb,27|1|0x010101", 90, 208, 310, 314, 355)
		if x > 0 then
			toast("帮派任务",1)
			randomTap(x, y)
			mSleep(1000)
		else
			toast("帮派任务已经完成",1)
			return
		end	
		mSleep(1000)
		while (true) do
			--帮派确认按钮
			local tab = {
			"219805b300b4e016ffeffefdff101b42016c402dbfe437fc00207ff40ffe818010b23236e67ef7cf18700@00$帮$166$19$18",
			}
			local index = addTSOcrDictEx(tab)
			bang_paiX, bang_paiY = tsFindText(index, "帮", 1015, 471, 1128, 507, "3C3E3E , 3B3E3E", 90)

			if bang_paiX > 0 then
				tap(1045,  484)
				mSleep(1000)
				tap(1045,  484)
				mSleep(3000)
				--不断循环可以的几种任务
				while (true) do
					--购买物品
					mSleep(1000)
					gou_maiX, gou_maiY = findMultiColorInRegionFuzzy( 0xfdf8f8, "3|12|0xc9ad98,50|16|0xc9d0cc,41|-113|0xc4c4c4,55|-114|0x2f4c4d,181|-108|0xffffff,-46|-118|0x202f2c", 90, 642, 325, 1239, 698)
					if gou_maiX > 0 then
						toast("购买",1)
						tap(  888,  625)
						mSleep(1000)
						--银两不足
						changeX,changeY = findMultiColorInRegionFuzzy( 0xbbc6c6, "-20|-56|0x3a4a44,-320|6|0xb29d91,9|19|0x8bab80", 90, 324, 308, 957, 562)
						if changeX > 0 then
							tap( 807,  485)
						end
					end
					--选择对话叉
					mSleep(1000)
					diaX,diaY = findMultiColorInRegionFuzzy( 0xffffff, "2|1|0xffffff,-242|219|0xfefefe,-666|144|0x0e122a", 90, 353, 12, 1221, 545)
					if diaX > 0 then
						--tap(1181,   35)
					end
					--将右侧拖到第一个任务
					local touch = touch(1) 
					touch:on( 238,  209):move(200,250):move(200,280):move(200,310):off()
					tap(229,  180)
					mSleep(1500)
					--一键提交坐标
					local tab = {
						"1800118201182011860318c03198021b386180e41803cd801cd801c18074181e61b3821b0021980318c0318e0318403$交$114$20$19",
					}
					local index = addTSOcrDictEx(tab)
					ti_jiaoX, ti_jiaoY = tsFindText(index, "交", 971, 396, 1098, 431, "010101 , 010101 # 181918 , 181918", 90)
					if ti_jiaoX > 0 then
						tap( 1023,  425)
						--内容已复制到剪贴板!
						while(true) do
							--最后返回厉万邦点一下屏幕
						--内容已复制到剪贴板!
							local tab = {
							"3e3827c704e0e09cdc339b8e7377ce6ff1cdf8b9b81f3703e6ffbcdff39bfe73704e6e09ddc1383827e71cfce38f082$完$212$19$20",
							}
							local index = addTSOcrDictEx(tab)
							x, y = tsFindText(index, "完", 297, 610, 348, 640, "D2DBDA , 010101 # 8C9697 , 464644", 90)
							if x > 0 then
								tap(x, y)
								toast("课业完成",1)
								return									
							end
						end
					end
					--结束按钮
				end
			end
		end
	end
end


function common.shi_li()
	--内容已复制到剪贴板!
	--打开活动界面
	local tab = {
		"020000c060382d0e1e700e1c00000c000230018fc467f31f8dfda3ded8efe77219f9047e031e00c000300004008100@00$活$129$18$21",
	}
	local index = addTSOcrDictEx(tab)
	huo_dongX, huo_dongY = tsFindText(index, "活",873, 15, 928, 72, "D1D2C5 , 191810 # D1D2C2 , 191812 # C0C0AC , 292928", 50)
	if huo_dongX > 0 then
		tap( 905,   36)
		toast("势力任务",1)
	else
		toast("请重启脚本",1)
		return
	end
	mSleep(1000)
	tap( 371,  684)
	--势力任务前往
	x,y = findMultiColorInRegionFuzzy( 0xd2dadc, "28|12|0xbfcccf,27|-5|0xc0cbce,41|-8|0xb7c3c6,48|-1|0x010101", 90, 657, 211, 784, 258)
	if x > 0 then
		randomTap(x, y)
		mSleep(3000)
		
		while (true) do
			local touch = touch(1) 
			touch:on( 238,  209):move(200,250):move(200,280):move(200,310):off()
			tap(229,  180)
			mSleep(1500)
			
			ti_muX, ti_muY = findMultiColorInRegionFuzzy( 0xffffff, "3|2|0xffffff,6|2|0x5c6679,-141|216|0x141b28,-171|228|0x19212f,-171|295|0x141a28,-260|392|0x0d1016,-261|487|0x0d1018,-1|90|0xcbcdd0", 90, 799, 11, 1243, 659)
			if ti_muX > 0 then
				mSleep(1000)
				tap(1022,  258)
			end
		end
		
	else
		toast("势力任务已经完成",1)
		return
	end

	
	
	
end

return common