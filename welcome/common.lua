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
					
					--答题
					local tab = {
					"040000c3001e3803c300f87e6f0efffceff7dece77ece7f6ce7e6ce3f6ce7becef1ecef0ecefceff7e6ff74700707007070070600$答$227$20$21",
					}
					local index = addTSOcrDictEx(tab)
					x, y = tsFindText(index, "答",1089, 97,1152, 140, "989D9E , 524D4B # 908A8B , 636767 # 959191 , 696E6D", 65)
					if x > 0 then
						mSleep(400)
						tap( 1175,   38)
					end
					
					--将右侧拖到第一个任务
					local touch = touch(1) 
					touch:on( 238,  209):move(200,260):move(200,290):move(200,350):off()
					mSleep(300)
					tap(  208,  148)
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
		mSleep(1000)
	else
		toast("请重启脚本",1)
		return
	end
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

function common.lun_jian()
	--内容已复制到剪贴板!
	--打开活动界面
	local tab = {
		"020000c060382d0e1e700e1c00000c000230018fc467f31f8dfda3ded8efe77219f9047e031e00c000300004008100@00$活$129$18$21",
	}
	local index = addTSOcrDictEx(tab)
	huo_dongX, huo_dongY = tsFindText(index, "活",873, 15, 928, 72, "D1D2C5 , 191810 # D1D2C2 , 191812 # C0C0AC , 292928", 50)
	if huo_dongX > 0 then
		mSleep(500)
		tap( 905,   36)
		toast("论剑",1)
	else
		toast("请重启脚本",1)
		return
	end
	mSleep(1000)
	tap(495,  681)
	mSleep(500)
	tap( 283,  332)
	--内容已复制到剪贴板!
	local tab = {
		"000e0183c018fff1ffff1fffd1cc1818ffe18ffe1afff1f0070ffff1fffc7b330fb3305b3301bfff1ffff1f3301b33113fff03fff01ffe$确$265$20$22",
	}
	local index = addTSOcrDictEx(tab)
	while true do
--内容已复制到剪贴板!
		que_renX, que_renY = tsFindText(index, "确", 0, 0, 0, 0, "4D4C4A , 3B4140", 65)
		if que_renX > 0 then
			mSleep(400)
			tap(823,  485)
		end
		local tab = {
		"0006180f0e1f831e00180038007ffefffff9930cc98664dfffedfb31cc98664c33660803@0$准$136$17$17",
		}
		local index = addTSOcrDictEx(tab)
		--判定进入论剑时的坐标
		zhun_beiX, zhun_beiY = tsFindText(index, "准", 568, 1, 633, 32, "CCD3D8 , 322C26", 65)
		if zhun_beiX > 0 then
			mSleep(1500)
			tap(632,   82)
			mSleep(4000)
			--内容已复制到剪贴板!
			--离开按钮检测
			local touch = touch(1)
			touch:on( 190,  537):move( 190,  507)
			mSleep(3000)
			touch = touch:on( 190,  537)
			touch:off()
			local tab = {
				"300003007f33f7f33e603066030a6634e6e37e7e37a76f33e6f33e67326637a7c3de7c34e6e3026233e6037e7f3207f3007230000$离$206$20$21",
			}
			local index = addTSOcrDictEx(tab)
			while (true) do
				li_kaiX, li_kaiY = tsFindText(index, "离",583, 627,645, 658, "B1B2B3 , 4D4C4B", 65)
				if li_kaiX > 0 then
					mSleep(1000)
					tap(623,  636)
					while (true) do
						--内容已复制到剪贴板!
						local tab = {
							"ffffffffff8008e0011c0073801e703f0fffc1ffe03800070000e0001fffe3fffe7fc1ce0039c007380067003ce01f1e03c@001$匹$189$19$21",
						}
						local index = addTSOcrDictEx(tab)
						jie_shuX, jie_shuY = tsFindText(index, "匹", 838, 539,1002, 611, "3E4141 , 3D4141", 65)
						if jie_shuX > 0 then
							mSleep(1500)
							tap(932,  484)
							mSleep(1000)
							tap(1073,  100)
							mSleep(1000)
							tap(1164,   40)
							toast("论剑结束",1)
							return
						end
					end
				else
					tap(1082,  529)
					mSleep(500)
					tap(1082,  529)
					mSleep(500)
					tap(1082,  529)
					mSleep(500)
					tap(969,  570)
					mSleep(500)
					tap(1009,  657)
					mSleep(500)
					tap( 982,  483)
					mSleep(500)
					tap( 1070,  418)
					mSleep(500)
				end
				
			end
		end
	end
end

function common.jiang_li()
	local tab = {
		"020000c060382d0e1e700e1c00000c000230018fc467f31f8dfda3ded8efe77219f9047e031e00c000300004008100@00$活$129$18$21",
	}
	local index = addTSOcrDictEx(tab)
	huo_dongX, huo_dongY = tsFindText(index, "活",873, 15, 928, 72, "D1D2C5 , 191810 # D1D2C2 , 191812 # C0C0AC , 292928", 50)
	if huo_dongX > 0 then
		mSleep(500)
		tap( 905,   36)
		toast("每日奖励",1)
	else
		toast("请重启脚本",1)
		return
	end
	tap(1143,  668)
	mSleep(500)
	tap(1143,  668)
	mSleep(500)
	tap(1143,  668)
	mSleep(500)
	tap(1143,  668)
	mSleep(500)
	tap(1143,  668)
	mSleep(500)
	tap(1143,  668)
	mSleep(2000)
	tap(994,  254)
	mSleep(400)
	tap(994,  254)
	mSleep(400)
	tap(994,  254)
	mSleep(400)
	tap(994,  254)
	mSleep(400)
	tap(994,  254)
	mSleep(400)
	tap(994,  254)
	mSleep(400)
	tap(994,  254)
	mSleep(400)
	tap( 1162,   45)
	toast("完成每日奖励",1)
	return
end


function common.fu_li()
	toast("每日福利领取",1)
	mSleep(1000)
	tap( 902,  105)
	mSleep(1300)
	tap(324,  587)
	mSleep(400)
	tap(420,  588)
	mSleep(400)
	tap( 502,  581)
	mSleep(400)
	tap( 608,  578)
	mSleep(400)
	tap( 695,  576)
	mSleep(500)
	tap(994,  254)
	mSleep(400)
	tap(994,  254)
	mSleep(400)
	tap(994,  254)
	mSleep(400)
	tap(994,  254)
	mSleep(400)
	tap(994,  254)
	mSleep(400)
	tap(994,  254)
	mSleep(400)
	tap(994,  254)
	mSleep(400)
	tap( 1162,   45)
	mSleep(400)
	tap( 477,  459)
	mSleep(400)
	tap( 202,  477)
	mSleep(500)
	tap(1167,   32)
	mSleep(500)
	tap(1167,   32)
	toast("完成每日福利",1)
end

function common.ying_xiong_bang()
	local tab = {
		"020000c060382d0e1e700e1c00000c000230018fc467f31f8dfda3ded8efe77219f9047e031e00c000300004008100@00$活$129$18$21",
		"0006180f0e1f831e00180038007ffefffff9930cc98664dfffedfb31cc98664c33660803@0$准$136$17$17",
	}
	local index = addTSOcrDictEx(tab)
	huo_dongX, huo_dongY = tsFindText(index, "活",873, 15, 928, 72, "D1D2C5 , 191810 # D1D2C2 , 191812 # C0C0AC , 292928", 50)
	if huo_dongX > 0 then
		mSleep(500)
		tap( 905,   36)
		toast("江湖英雄榜",1)
	else
		toast("请重启脚本",1)
		return
	end
	mSleep(1000)
	tap(490,  675)
	mSleep(400)
	--打开坐标
	da_kaiX, da_kaiY = findMultiColorInRegionFuzzy( 0xc8d3d4, "20|3|0x646b6c,35|9|0x666d6e,61|13|0xb2bcc2", 90, 731, 538, 853, 599)
	if da_kaiX > 0 then
		tap( 800,  569)
		mSleep(2000)
		--匹配坐标
			mSleep(400)
			tap(1035,  550)
			mSleep(2000)
				--判定进入准备时的坐标
			while true do
				zhun_beiX, zhun_beiY = tsFindText(index, "准", 568, 1, 633, 32, "CCD3D8 , 322C26", 65)
				if zhun_beiX > 0 then
					mSleep(1500)
					tap(632,   82)
					mSleep(4000)
					--内容已复制到剪贴板!
					--离开按钮检测
					local touch = touch(1)
					touch:on( 190,  537):move( 190,  507)
					mSleep(3000)
					touch = touch:on( 190,  537)
					touch:off()
					local tab = {
						"300003007f33f7f33e603066030a6634e6e37e7e37a76f33e6f33e67326637a7c3de7c34e6e3026233e6037e7f3207f3007230000$离$206$20$21",
					}
					local index = addTSOcrDictEx(tab)
					while (true) do
						li_kaiX, li_kaiY = tsFindText(index, "离",583, 627,645, 658, "B1B2B3 , 4D4C4B", 65)
						if li_kaiX > 0 then
							mSleep(1000)
							tap(623,  636)
							--内容已复制到剪贴板!
							local tab = {
								"ffffffffff8008e0011c0073801e703f0fffc1ffe03800070000e0001fffe3fffe7fc1ce0039c007380067003ce01f1e03c@001$匹$189$19$21",
							}
							local index = addTSOcrDictEx(tab)
							while true do
								pi_peiX, pi_peiY = tsFindText(index, "匹", 967, 536, 1090, 582, "3E4141 , 3D4141", 65)
								if pi_peiX > 0 then
									mSleep(3000)
									tap(466,  564)
									mSleep(500)
									tap( 1072,  102)
									toast("结束",1)
									return
								end
							end
							
						else
							tap(1082,  529)
							mSleep(500)
							tap(1082,  529)
							mSleep(500)
							tap(1082,  529)
							mSleep(500)
							tap(969,  570)
							mSleep(500)
							tap(1009,  657)
							mSleep(500)
							tap( 982,  483)
							mSleep(500)
							tap( 1070,  418)
							mSleep(500)
						end
					end
				end
			end			
	else
		toast("江湖英雄榜已经完成",1)
		return
	end
end

function common.jian_zhong()
	-- body
	local tab = {
		"020000c060382d0e1e700e1c00000c000230018fc467f31f8dfda3ded8efe77219f9047e031e00c000300004008100@00$活$129$18$21",
	}
	local index = addTSOcrDictEx(tab)
	huo_dongX, huo_dongY = tsFindText(index, "活",873, 15, 928, 72, "D1D2C5 , 191810 # D1D2C2 , 191812 # C0C0AC , 292928", 50)
	if huo_dongX > 0 then
		mSleep(500)
		tap( 905,   36)
		toast("生死剑冢",1)
	else
		toast("请重启脚本",1)
		return
	end
	mSleep(1000)
	tap(473,  693)
	mSleep(1000)
	tap(902,  288)
	mSleep(1000)
	tap(1019,  555)
--内容已复制到剪贴板!
	local tab = {
	"c00198003b00067fffcc67398c433188c63118ffffffffff000c8003b78006ff83dbfee303f8601f0c1f71bf873f8077800e0000@11$取$199$19$22",
	}
	local index = addTSOcrDictEx(tab)

	while (true) do
		--进入游戏中
		qu_xiaoX, qu_xiaoY = tsFindText(index, "取", 782, 479, 883, 520, "4D4C4A , 3B4140 # 383A39 , 373A39", 65)
		if qu_xiaoX > 0 then
			mSleep(2000)
			tap( 809,  484)
			mSleep(4000)
			tap(788,  476)
			mSleep(35000)
			local touch = touch(1)
			local tab = {
				"300003007f37f7f33f603276030e6636e7e37e7e37ef6f3fe6f37e6f77e637e7e3de7e35e6e3066737f6037f7f3227f3007f30000$离$237$20$21",
			}
			local index = addTSOcrDictEx(tab)
			while (true) do
				--攻击循环
				touch:on( 190,  537):move( 190,  507)
				mSleep(3000)
				touch = touch:on( 190,  537)
				touch:off()
				tap(1082,  529)
				mSleep(500)
				tap(1082,  529)
				mSleep(500)
				tap(1082,  529)
				mSleep(500)
				tap(969,  570)
				mSleep(500)
				tap(1009,  657)
				mSleep(500)
				tap( 982,  483)
				mSleep(500)
				tap( 1070,  418)
				mSleep(500)
				--结束后的离开坐标
				x, y = tsFindText(index, "离", 577, 624, 650, 660, "A3A4A4 , 5C5A5A", 65)
				if x > 0 then
					mSleep(400)
					tap( 618,  635)
					mSleep(400)
					toast("生死剑冢结束",1)
					return
				end
			end
		end
	end

	
	
	
end
	

return common