require("TSLib")

function requireInit()
	_b = {};--数据
	tz = {};--UI特征
	dz = {};--UI特征对应动作
end

function T_FindUI(array,s)
	-- body
	local s = s or 90;
	s = math.floor(0xff*(100-s)*0.01);
	keepScreen(true);
	for var = 1, #array do
		local lr,lg,lb = getColorRGB(array[var][1], array[var][2]);
		local r = math.floor(array[var][3]/0x10000);
		local g = math.floor(array[var][3]%0x10000/0x100);
		local b = math.floor(array[var][3]%0x100);
		if math.abs(lr-r) > s or math.abs(lg-g) > s or math.abs(lb-b) > s then
			keepScreen(false);
			return false;
		end
	end
	keepScreen(false);
	return true;
end

function T_FindUIClickSleep(UI,Pos,Sleep)
	if T_FindUI(UI) then
		if Pos ~= nil then
		T_Click(Pos);
		end
		if Sleep ~= nil then
			mSleep(Sleep);
		end
		return true;
	end
	return false;
end

function T_FindUIMulti(UI,pos,S)
	-- body
	local S = S or 90
	local x,y = findMultiColorInRegionFuzzyByTable(UI,S,Pos[1],Pos[2],Pos[3],Pos[4])
	if x ~= -1 and y ~= -1 then
		T_Click(Pos,100);
		return {true,x,y};
	else
		return {false,0,0};
	end
end

function T_FondUIMultiClickSleep(UI,Pos,point,Sleep,S)
	-- body
	local Sleep = Sleep or 200;
	local S = S or 90;
	local x,y = findMultiColorInRegionFuzzyByTable(UI,S,Pos[1],Pos[2],Pos[3],Pos[4])
	if x ~= -1 and y ~= -1 then
		T_Click(point,Sleep);
		return false;
	else
		return true;
	end
end

function T_Click(point,sleep)
	-- body
	local Sleep = sleep or 200;
	tap(point[1],point[2],Sleep)
end

function T_IsRunApp(GameName)
	local flag = appIsRunning(GameName);
	if flag == 0 then
		toast("程序未运行，正在启动程序",1)
		while runApp(GameName) == 1 do
			mSleep(1000);
		end
		return true
	end
	return false;
end