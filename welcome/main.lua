--local common = require("common")
--common.cha_guan()
require("TSLib")
local common = require("common")
local tools = require("tools")
local others = require("others")
local ts = require("ts")
local cjson = ts.json
init(1)
w,h = getScreenSize();
MyTable = {
    ["style"]  = "default",           
    ["rettype"] = "table", -- table 模式    
    --["rettype"] = "array", -- 数组模式 
    ["config"] = "showuiTest.txt", 
	pagenumtype = "dot",
	width = w * 0.9,
	height = h * 0.6,
    ["pagetype"]= "multi",                  
    ["title"] = "一梦江湖辅助",
    ["titles"] = "日常任务,还没想好叫啥,其他",                            
    pages            =
    {
		--第一页
        {
			--第一行
            {
                ["type"] = "Label",
                ["align"] = "center",
                ["text"] = "1.当前为测试开发版本",
                ["size"] = 12,
				["align"] = "center",
                ["width"] = -1,
                ["valign"] = "top",
				["nowrap"] = 0,
            },
			--第二行
            {
                ["type"] = "Label",
                ["text"] = "2.Bug请进QQ群873015657",
                ["size"] = 12,
                ["nowrap"] = 0,
            },
			--第三行分割线
            { 
                ["type"] = "Line",                    
                ["color"] = "99,199,99",                      
                ["valign"] = "center",
				["align"] = "center",
                ["height"] = 6, 
                ["width"] = 25, 
				["nowrap"] = 1,
            },
			{
				["type"] = "Label",
				["align"] = "center",
				["text"] = "",
				["size"] = 4,
				["width"] = 1,
				["nowrap"] = 1,
				["valign"] = "center",
			},
            { 
                ["type"] = "Line",                    
                ["color"] = "99,199,99",                      
                ["valign"] = "center",
				["align"] = "center",
                ["height"] = 6, 
                ["width"] = 25, 
				["nowrap"] = 1,
            },
			{
				["type"] = "Label",
				["align"] = "center",
				["text"] = "",
				["size"] = 4,
				["width"] = 1,
				["nowrap"] = 1,
				["valign"] = "center",
			},
            { 
                ["type"] = "Line",                    
                ["color"] = "99,199,99",                      
                ["valign"] = "center",
				["align"] = "center",
                ["height"] = 6, 
                ["width"] = 25, 
				["nowrap"] = 1,
            },
			{
				["type"] = "Label",
				["align"] = "center",
				["text"] = "",
				["size"] = 4,
				["width"] = 1,
				["nowrap"] = 1,
				["valign"] = "center",
			},
            { 
                ["type"] = "Line",                    
                ["color"] = "99,199,99",                      
                ["valign"] = "center",
				["align"] = "center",
                ["height"] = 6, 
                ["width"] = 25, 
				["nowrap"] = 1,
            },
			{
				["type"] = "Label",
				["align"] = "center",
				["text"] = "",
				["size"] = 4,
				["width"] = 1,
				["nowrap"] = 1,
				["valign"] = "center",
			},
            { 
                ["type"] = "Line",                    
                ["color"] = "99,199,99",                      
                ["valign"] = "center",
				["align"] = "center",
                ["height"] = 6, 
                ["width"] = 25, 
				["nowrap"] = 1,
            },
			{
				["type"] = "Label",
				["align"] = "center",
				["text"] = "",
				["size"] = 4,
				["width"] = 1,
				["nowrap"] = 1,
				["valign"] = "center",
			},
            { 
                ["type"] = "Line",                    
                ["color"] = "99,199,99",                      
                ["valign"] = "center",
				["align"] = "center",
                ["height"] = 6, 
                ["width"] = 25, 
				["nowrap"] = 1,
            },
			{
				["type"] = "Label",
				["align"] = "center",
				["text"] = "",
				["size"] = 4,
				["width"] = 1,
				["nowrap"] = 1,
				["valign"] = "center",
			},
            { 
                ["type"] = "Line",                    
                ["color"] = "99,199,99",                      
                ["valign"] = "center",
				["align"] = "center",
                ["height"] = 6, 
                ["width"] = 25, 
				["nowrap"] = 1,
            },
			{
				["type"] = "Label",
				["align"] = "center",
				["text"] = "",
				["size"] = 4,
				["width"] = 1,
				["nowrap"] = 1,
				["valign"] = "center",
			},
            { 
                ["type"] = "Line",                    
                ["color"] = "99,199,99",                      
                ["valign"] = "center",
				["align"] = "center",
                ["height"] = 6, 
                ["width"] = 25, 
				["nowrap"] = 1,
            },
			{
				["type"] = "Label",
				["align"] = "center",
				["text"] = "",
				["size"] = 4,
				["width"] = 1,
				["nowrap"] = 1,
				["valign"] = "center",
			},
            { 
                ["type"] = "Line",                    
                ["color"] = "99,199,99",                      
                ["valign"] = "center",
				["align"] = "center",
                ["height"] = 6, 
                ["width"] = 25, 
				["nowrap"] = 1,
            },
			{
				["type"] = "Label",
				["align"] = "center",
				["text"] = "",
				["size"] = 4,
				["width"] = 1,
				["nowrap"] = 1,
				["valign"] = "center",
			},
            { 
                ["type"] = "Line",                    
                ["color"] = "99,199,99",                      
                ["valign"] = "center",
				["align"] = "center",
                ["height"] = 6, 
                ["width"] = 25, 
				["nowrap"] = 1,
            },
			{
				["type"] = "Label",
				["align"] = "center",
				["text"] = "",
				["size"] = 4,
				["width"] = 1,
				["nowrap"] = 1,
				["valign"] = "center",
			},
            { 
                ["type"] = "Line",                    
                ["color"] = "99,199,99",                      
                ["valign"] = "center",
				["align"] = "center",
                ["height"] = 6, 
                ["width"] = 25, 
				["nowrap"] = 1,
            },
			{
				["type"] = "Label",
				["align"] = "center",
				["text"] = "",
				["size"] = 4,
				["width"] = 1,
				["nowrap"] = 1,
				["valign"] = "center",
			},
            { 
                ["type"] = "Line",                    
                ["color"] = "99,199,99",                      
                ["valign"] = "center",
				["align"] = "center",
                ["height"] = 6, 
                ["width"] = 25, 
				["nowrap"] = 1,
            },
			{
				["type"] = "Label",
				["align"] = "center",
				["text"] = "",
				["size"] = 4,
				["width"] = 1,
				["nowrap"] = 1,
				["valign"] = "center",
			},
            { 
                ["type"] = "Line",                    
                ["color"] = "99,199,99",                      
                ["valign"] = "center",
				["align"] = "center",
                ["height"] = 6, 
                ["width"] = 25, 
				["nowrap"] = 1,
            },
			{
				["type"] = "Label",
				["align"] = "center",
				["text"] = "",
				["size"] = 4,
				["width"] = 1,
				["nowrap"] = 1,
				["valign"] = "center",
				["nowrap"] = 0,
			},
			--↑第一条分割线结束=============================================
			---每日任务多选框
			{   --必填，控件类型，多选组合
                ["type"] = "CheckBoxGroup",     
                -- 选填，无，控件 ID  以 table 格式返回返回值时必填，否则无法获取返回值
                ["id"] = "daliy_mission",                             
                -- 必填，无 ，单选框内容
                ["list"] = "每日一卦,帮派任务,课业,茶馆说书,势力任务(测试中，无选),每日论剑,江湖英雄榜,生死剑冢,雁门烽火关,平起雁门关",         
                ["scale"] = "0.4",  
                --选填，1，仅引擎版本支持 iOS v3.00-157 及 Android v2.3.6 及其以上版本
                ["countperline"]= "2",  
            },


		},
		--第二页

		{
			

			{   --必填，控件类型，多选组合
                ["type"] = "CheckBoxGroup",     
                -- 选填，无，控件 ID  以 table 格式返回返回值时必填，否则无法获取返回值
                ["id"] = "mission2",                             
                -- 必填，无 ，单选框内容
                ["list"] = "天机牌",         
                ["scale"] = "0.4",  
                --选填，1，仅引擎版本支持 iOS v3.00-157 及 Android v2.3.6 及其以上版本
                ["countperline"]= "2",  
            },                   
			

		},

		--第三页
		{
			

			{   --必填，控件类型，多选组合
                ["type"] = "CheckBoxGroup",     
                -- 选填，无，控件 ID  以 table 格式返回返回值时必填，否则无法获取返回值
                ["id"] = "others_mission",                             
                -- 必填，无 ，单选框内容
                ["list"] = "银票礼包, 生活鸡蛋,天山碎玉",         
                ["scale"] = "0.4",  
                --选填，1，仅引擎版本支持 iOS v3.00-157 及 Android v2.3.6 及其以上版本
                ["countperline"]= "2",  
            },                   
			

		}
	}
}
local MyJsonString = cjson.encode(MyTable)
UIret,values = showUI(MyJsonString)
--遍历上面的多选框并执行相应功能
if UIret == 1 then
    local daliy_mission =  values.daliy_mission 
	local others_mission = values.others_mission
	local mission2 = values.mission2
	--其他页面的循环
	new2 = others_mission:split("@")
	for i=1,#new2,1 do
        if new2[i] == "0" then
			--银票礼盒
			mSleep(2000)
            others.yin_piao()
        elseif new2[i] == "1" then
			--购买鸡蛋
			mSleep(2000)
            others.ji_dan()
        elseif new2[i] == "2" then
			--天山碎玉
			mSleep(2000)
            others.sui_yu()
		end
	end
	

	
    new  = daliy_mission:split("@")
    for i=1,#new,1 do
        if new[i] == "0" then
			--每日一卦
			mSleep(2000)
            common.suan_gua()
        elseif  new[i] == "1" then
			--帮派
			mSleep(2000)
            common.bang_pai()
        elseif  new[i] == "2" then
            --课业
			mSleep(2000)
			common.ke_ye()
        elseif  new[i] == "3" then
			--茶馆
			mSleep(2000)
            common.cha_guan()
        elseif  new[i] == "4" then
			--势力任务
			mSleep(2000)
            common.shi_li()
		elseif  new[i] == "5" then
			--每日论剑
			mSleep(2000)
            common.lun_jian()
		elseif  new[i] == "6" then
			--江湖英雄榜
			mSleep(2000)
            common.ying_xiong_bang()
		elseif  new[i] == "7" then
			--生死剑冢
			mSleep(2000)
            common.jian_zhong()
		elseif  new[i] == "8" then
			--烽火雁门关
			mSleep(2000)
            common.yan_men()
		elseif  new[i] == "9" then
			--烽火雁门关
			mSleep(2000)
            common.pin_qi()
        end
    end
	
	
	
	new3 = mission2:split("@")
	for i=1,#new3,1 do
        if new3[i] == "0" then
			--天机牌
			mSleep(2000)
            common.tian_ji_pai()
		end
	end
	--common.fu_li()
	--common.jiang_li()
end