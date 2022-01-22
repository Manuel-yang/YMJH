--local common = require("common")
--common.cha_guan()
require("TSLib")
local common = require("common")
local tools = require("tools")
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
    ["titles"] = "基本,日常,设置",                            
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
                ["list"] = "每日一卦,茶馆说书,课业,帮派任务,势力任务(测试中，无选),每日论剑,江湖英雄榜,生死剑冢",         
                ["scale"] = "0.4",  
                --选填，1，仅引擎版本支持 iOS v3.00-157 及 Android v2.3.6 及其以上版本
                ["countperline"]= "2",  
            },


		},
		--第二页
		{
			{

				--["type"] = "RadioGroup",            
				--["id"] = "sui",                      
				--["list"] = "1岁,30岁,50岁,70岁",     
				--["select"] = "1",                   
			},

		}
	}
}
local MyJsonString = cjson.encode(MyTable)
UIret,values = showUI(MyJsonString)
--遍历上面的多选框并执行相应功能
if UIret == 1 then
    local daliy_mission =  values.daliy_mission 
    new  = daliy_mission:split("@")
    for i=1,#new,1 do
        if new[i] == "0" then
			--每日一卦
			mSleep(1000)
            common.suan_gua()
        elseif  new[i] == "1" then
			--茶馆
			mSleep(1000)
            common.cha_guan()
        elseif  new[i] == "2" then
            --课业
			mSleep(1000)
			common.ke_ye()
        elseif  new[i] == "3" then
			--帮派任务
			mSleep(1000)
            common.bang_pai()
        elseif  new[i] == "4" then
			--势力任务
			mSleep(1000)
            common.shi_li()
		elseif  new[i] == "5" then
			--每日论剑
			mSleep(1000)
            common.lun_jian()
		elseif  new[i] == "6" then
			--势力任务
			mSleep(1000)
            common.ying_xiong_bang()
		elseif  new[i] == "7" then
			--势力任务
			mSleep(1000)
            common.jian_zhong()
        end
    end
	--common.fu_li()
	--common.jiang_li()
end