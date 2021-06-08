local updateRaw = http.get('https://github.com/NightOnFire/computercraft/raw/master/update.lua')

local savePath = shell.resolve( 'update.lua' )
if fs.exists( savePath ) then
	print( 'File already exists' )
	return
end

if res then
	local file = fs.open( savePath, 'w' )
	file.write(res)
	file.close()
end