local tools = require("tools")

local others = {}

function others.yin_piao()
	tools.zhen_bao_ge()
	-- body
	mSleep(1000)
	tap( 1164,  349)
	mSleep(1000)
	tap( 401,  142)
	mSleep(1000)
	tap( 620,  284)
	mSleep(1000)
	tap( 908,  562)
	mSleep(1000)
	tap(1017,  468)
	mSleep(400)
	tap(1017,  468)
	mSleep(1000)
	tap(916,  630)
	mSleep(400)
	tap(916,  630)
--内容已复制到剪贴板!
	local tab = {
		"c001d8003bfffe7fffcffff98c63318cc63198ffffffffff000ce003b7c00eff83dffee303f8601f0c1f71bf873f8077800e0000c0001@0$取$229$19$23",
		"00e0007c003e001fffffffff80008c00199fe333fec666f8ccce199bcffff9fff18ccc3199863330c67e1ccfc3@1$使$189$19$19"
	}
	local index = addTSOcrDictEx(tab)

	while(true) do
		x, y = tsFindText(index, "取", 391, 473, 465, 507, "38312D , 37312D", 80)
		shi_yongX, shi_yongY = tsFindText(index, "使", 879, 372, 964, 406, "464A49 , 464A49", 80)
		if x > 0 then
			mSleep(1000)
			tap( 431,  485)
			mSleep(1000)
			tap(1166,   60)
			toast("银两不够",1)
			return
		elseif shi_yongX > 0 then
			mSleep(1000)
			tap( 913,  398)
			mSleep(1000)
			tap(1171,   60)
			toast("银票礼盒购买成功",1)
			return
		end		
	end
end


function others.ji_dan()
	-- body
	tools.zhen_bao_ge()
	mSleep(1000)
	tap(1166,  587)
	mSleep(1000)
	tap(205,  501)
	local touch = touch(1)
	touch:on( 526,  589):move(  523,  157):off()
	mSleep(1-00)
	touch:on( 526,  589):move(  523,  157):off()
	mSleep(1000)
	touch:on( 526,  589):move(  523,  157):off()
	mSleep(1000)
	touch:on( 526,  589):move(  523,  157):off()
	mSleep(1000)
	touch:on( 526,  589):move(  523,  157):off()
	mSleep(1000)
	touch:on( 526,  589):move(  523,  157):off()
	mSleep(1000)
	touch:on( 526,  589):move(  523,  157):off()
	mSleep(1000)
	tap(  547,  325)
	mSleep(1000)
	tap(  860,  554)
	mSleep(1000)
	tap( 997,  471)
	mSleep(400)
	tap( 997,  471)
	mSleep(1000)
	tap( 907,  627)
	mSleep(400)
	tap( 907,  627)
	mSleep(1000)
	tap(992,  259)
	mSleep(1000)
	tap( 1166,   58)
	toast("完成鸡蛋购买",1)
	return
end


return others