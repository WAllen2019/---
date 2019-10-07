require"BaseLib"
require"TZ"
requireInit();
init("0",0)
GameName = "com.shiyue.sszg.mi";
_b['运行账号序列'] = 1;
function Main()
	-- body
	GetAccount();	--读取账号密码
	Init();
	while (true) do
	-- body
		T_IsRunApp(GameName);
		mSleep(5000);
		if T_FindUI(tz['账号选择']) then
			T_Click(dz['账号选择']);
		end
		if T_FindUI(tz['账号界面']) then
			T_Click(dz['输入账号'],100);
			inputText("\b");
			mSleep(1000);
			local TempAccount = _b['账号列表'][_b['运行账号序列']];
			inputText(TempAccount[1]);
			mSleep(1000);
			T_Click(dz['输入密码'],100);
			inputText("\b");
			mSleep(1000);
			inputText(TempAccount[2],150);
			mSleep(2000);
			T_Click(dz['登录'],200);
			mSleep(1000);
		end
		if T_FindUI(tz['授权登陆']) then
			T_Click(dz['授权登陆']);
		end
		if T_FindUI(tz['登陆出错']) then
			T_Click(dz['登陆出错']);
			_b['运行账号序列'] = _b['运行账号序列'] + 4
		end
		if T_FindUI(tz['公告']) then
			T_Click(dz['公告']);
		end
		if T_FindUI(tz['实名认证']) then
			T_Click(dz['实名认证']);
		end
		if T_FindUI(tz['开始游戏']) then
			T_Click(dz['开始游戏']);
		end
		if T_FindUI(tz['新手引导-小助手废话']) then
			T_Click(dz['新手引导-小助手废话']);
		end
		if T_FindUI(tz['起名']) then
			T_Click(dz['起名']);
			mSleep(1500);
			T_Click(dz['确定名字'])
		end
		if T_FindUI(tz['第一次召唤']) then
			T_Click(dz['第一次召唤']);
		end
		if T_FindUI(tz['第一次召唤-基础召唤']) then
			T_Click(dz['第一次召唤-基础召唤']);
		end
		if T_FindUI(tz['第一次召唤-英雄界面']) then
			T_Click(dz['第一次召唤-英雄界面']);
		end
		if T_FindUI(tz['第一次召唤-出击']) then
			T_Click(dz['第一次召唤-出击']);
		end
		if T_FindUI(tz['第一次召唤-出击-挑战boss']) then
			T_Click(dz['第一次召唤-出击-挑战boss']);
		end
		if T_FindUI(tz['上阵第一个英雄']) then
			T_Click(dz['上阵第一个英雄']);
		end
		if T_FindUI(tz['上阵第一个英雄-开战']) then
			T_Click(dz['上阵第一个英雄-开战']);
		end
		if T_FindUI(tz['第一关奖励']) then
			T_Click(dz['第一关奖励']);
		end
		if T_FindUI(tz['第一关奖励-领取']) then
			T_Click(dz['第一关奖励-领取']);
			mSleep(1000);
		end
		if T_FindUI(tz['第一关奖励-详情']) then
			T_Click(dz['第一关奖励-详情']);
		end
		if T_FindUI(tz['第一关奖励-背包']) then
			T_Click(dz['第一关奖励-背包']);
		end
		if T_FindUI(tz['碎片格子']) then
			T_Click(dz['碎片格子']);
		end
		if T_FindUI(tz['水元素碎片']) then
			T_Click(dz['水元素碎片']);
		end
		if T_FindUI(tz['水元素碎片']) then
			T_Click(dz['水元素碎片']);
		end
		if T_FindUI(tz['水元素合成']) then
			T_Click(dz['水元素合成']);
			mSleep(2000);
			tap(544, 1321,100)
		end
		if T_FindUI(tz['英雄面板入口']) then
			T_Click(dz['英雄面板入口']);
		end
		if T_FindUI(tz['第一次英雄升级-水元素']) then
			T_Click(dz['第一次英雄升级-水元素']);
		end
		if T_FindUI(tz['第一次英雄升级-水元素-升级']) then
			T_Click(dz['第一次英雄升级-水元素-升级']);
			mSleep(1500);
			T_Click(dz['第一次英雄升级-水元素-升级']);
			mSleep(2500);
			T_Click(dz['第一次英雄升级-水元素-穿戴装备']);
		end
		if T_FindUI(tz['出击入口']) then
			T_Click(dz['出击入口']);
		end
		if T_FindUI(tz['上阵第二个英雄']) then
			T_Click(dz['上阵第二个英雄']);
			mSleep(2500);
			T_Click(dz['上阵第二个英雄-开战']);
		end
		if T_FindUI(tz['回到主城']) then
			T_Click(dz['主页入口']);
		end
		if T_FindUI(tz['进入精灵商店']) then
			T_Click(dz['进入精灵商店']);
		end
		if T_FindUI(tz['精灵商店-购买']) then
			T_Click(dz['精灵商店-购买']);
		end
		if T_FindUI(tz['高级召唤']) then
			T_Click(dz['高级召唤']);
		end
		if T_FindUI(tz['高级召唤-召唤']) then
			T_Click(dz['高级召唤-召唤']);
		end
		if T_FindUI(tz['获得德鲁伊']) then
			T_Click(dz['获得德鲁伊']);
			mSleep(2500);
			T_Click(dz['确定获得德鲁伊']);
		end
		if T_FindUI(tz['快速作战']) then
			T_Click(dz['快速作战']);
			mSleep(2000);
			if T_FindUI(tz['快速作战-确定']) then
				T_Click(dz['快速作战-确定']);
				mSleep(2000);
				tap(537, 1408);
				mSleep(2000);
				tap(1020,  547);
			end
		end
		if T_FindUI(tz['快速作战-挑战boss']) then
			T_Click(dz['快速作战-挑战boss']);
		end
		if T_FindUI(tz['上阵德鲁伊']) then
			T_Click(dz['上阵德鲁伊']);
			mSleep(2500);
			T_Click(dz['上阵德鲁伊-开战']);
		end
		if T_FindUI(tz['前往神器界面']) then
			T_Click(dz['前往神器界面']);
		end
		if T_FindUI(tz['埃里克血斧']) then
			T_Click(dz['埃里克血斧']);
		end
		if T_FindUI(tz['埃里克血斧-奖励一']) then
			T_Click(dz['埃里克血斧-奖励一']);
			mSleep(2000);
			T_Click(dz['埃里克血斧-奖励二']);
			mSleep(2000);
			T_Click(dz['埃里克血斧-奖励三']);
			
		end
		if T_FindUI(tz['神器-挑战boss']) then
			T_Click(dz['神器-挑战boss']);
			mSleep(2000);
			T_Click(dz['神器-挑战boss-开战']);
		end
		if T_FindUI(tz['领取挂机奖励']) then
			T_Click(dz['领取挂机奖励']);
		end
		if T_FindUI(tz['英雄变强']) then
			T_Click(dz['英雄变强']);
		end
		if T_FindUI(tz['英雄变强-选择英雄']) then
			T_Click(dz['英雄变强-选择英雄']);
		end
		if T_FindUI(tz['亚瑟升级']) then
			T_Click(dz['亚瑟升级']);
			T_Click(dz['亚瑟升级']);
			mSleep(1000);
			T_Click(dz['亚瑟升级']);
			mSleep(1000);
			T_Click(dz['亚瑟装备']);
			mSleep(1000);
			T_Click(dz['升级后去打怪']);
		end
		if T_FindUI(tz['七天礼包入口']) then
			T_Click(dz['七天礼包入口']);
		end
		if T_FindUI(tz['领取七天礼包']) then
			T_Click(dz['领取七天礼包']);
			mSleep(1500);
		end
		if T_FindUI(tz['每日礼包入口']) then
			T_Click(dz['每日礼包入口']);
		end
		if T_FindUI(tz['每日礼包领取']) then
			T_Click(dz['每日礼包领取']);
			mSleep(1500);
			T_Click(dz['每日礼包内容']);
			mSleep(1500);
			T_Click(dz['每日礼包-出击']);
			mSleep(1500);
		end
		if T_FindUI(tz['竞技场入口']) then
			T_Click(dz['竞技场入口']);
			mSleep(1500);
		end
		if T_FindUI(tz['第一次挑战']) then
			T_Click(dz['第一次挑战']);
			mSleep(1500);
		end
		if T_FindUI(tz['竞技场挑战结算']) then
			T_Click(dz['竞技场挑战结算']);
			mSleep(1500);
			tap( 540, 1819);
		end
		if T_FindUI(tz['主线剧情失败']) then
			T_Click(dz['主线剧情失败']);
			mSleep(1500);
			T_Click(dz['主线剧情失败-英雄']);
		end
		if T_FindUI(tz['英雄界面']) then
			T_Click(dz['英雄界面']);
		end
		if T_FindUI(tz['英雄详情']) then
			if T_FindUI(tz['英雄详情-升级']) then
				T_Click(dz['英雄详情-升级']);
			elseif T_FindUI(tz['英雄详情-一键装备']) then
				T_Click(dz['英雄详情-一键装备']);
			elseif T_FindUI(tz['下一个英雄']) or T_FindUI(tz['经验不足1']) or T_FindUI(tz['经验不足2']) then
				T_Click(dz['下一个英雄']);
			elseif T_FindUI(tz['升级完毕']) or T_FindUI(tz['经验不足2']) then
				T_Click(dz['升级完毕']);
			elseif T_FondUIMultiClickSleep(tz['经验不足3'],tz['经验不足3-范围'],dz['升级完毕'],100,80) then
				T_Click(dz['升级完毕']);
			else
				T_Click(dz['升级完毕']);
			end
		end
		if T_FindUI(tz['远航入口']) then
			T_Click(dz['远航入口']);
			mSleep(1500);
		end
		if T_FindUI(tz['接取远航任务']) then
			T_Click(dz['接取远航任务']);
			mSleep(1500);
		end
		if T_FindUI(tz['一键派遣英雄']) then
			T_Click(dz['一键派遣英雄']);
			mSleep(1500);
			tap(678, 1505);
			mSleep(1500);
			tap(532, 1798);
		end		
		if T_FindUI(tz['充值弹窗']) then
			T_Click(dz['充值弹窗']);
		end	
--		if T_FindUI(tz['副本中']) then
--			mSleep(1000);
--			return true;
--		end
		if T_FindUI(tz['日常打怪']) then
			if T_FindUI(tz['其他地方去主页']) then
				T_Click(dz['其他地方去主页']);
			else
				T_Click(dz['日常打怪']);
			end
		end
		if T_FindUI(tz['日常打怪2']) then
			if T_FindUI(tz['其他地方去主页']) then
				T_Click(dz['其他地方去主页']);
			else
				T_Click(dz['日常打怪']);
			end
		end
		if T_FindUI(tz['开战界面']) then
			T_Click(dz['开战界面']);
		end
--		if T_FindUI(tz['战斗中']) then
--			mSleep(1000);
--			return true;
--		end
		if T_FindUI(tz['其他地方去主页']) then
				T_Click(dz['其他地方去主页']);
		end
		if T_FindUI(tz['战斗结算']) then
			T_Click(dz['战斗结算']);
		end
		if T_FindUI(tz['领取通关奖励']) then
			if T_FindUI(tz['其他地方去主页']) then
				T_Click(dz['其他地方去主页']);
			else
				T_Click(dz['领取通关奖励']);
			end
		end
		if T_FindUI(tz['通关奖励面板']) then
			T_Click(dz['通关奖励面板']);
			mSleep(1500);
			T_Click(dz['通关奖励结算']);
			mSleep(1500);
			tap(539, 1811,120);
		end
		if T_FindUI(tz['关闭通关奖励']) then
			T_Click(dz['关闭通关奖励']);
		end
		if T_FindUI(tz['错误弹窗']) then
			T_Click(dz['错误弹窗']);
		end
	end	
end

function Init()
	-- body
	local width,height = getScreenSize(); 
	if width == 1080 and height == 1920 then
		ldInit();
	end
end

function GetAccount()
	-- body
	if isFileExist(userPath().."/res/账号.txt") == false then
		dialog("找不到账号文件", 0);
		lua_exit();
	end
	local accoutTemp = readFile(userPath().."/res/账号.txt")
	_b['账号列表'] = {};
	if next(accoutTemp) ~=nil then
		for k,v in ipairs(accoutTemp) do
			_b['账号列表'][k] = v;
			--读取账号
			local accountCol = strSplit(v,"----",0)
			if next(accountCol) ~= nil then
				_b['账号列表'][k] = {accountCol[1],accountCol[2]}
			end
		end
	else
		dialog("无法读取账号文件", 0);
		lua_exit();
	end
end


Main();