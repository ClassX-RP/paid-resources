fx_version 'adamant'

game 'gta5'

ui_page 'html/index.html'

files {
	'html/index.html',
	'html/static/css/app.css',
	'html/static/config/config.json',
	'html/static/js/*.js',
	-- Coque
	'html/static/img/coque/*.png',
	
	-- Background
	'html/static/img/background/*.jpg',
	
	'html/static/img/icons_app/*.png',
	'html/static/img/*.png',
	'html/static/img/*.jpg',
	
	'html/static/img/app_bank/*.jpg',
	'html/static/img/app_bank/*.png',

	'html/static/img/app_tchat/splashtchat.png',

	'html/static/img/twitter/bird.png',
	'html/static/img/twitter/default_profile.png',
	'html/static/sound/*.mp3',
	'html/static/sound/*.ogg',

	'html/static/img/courbure.png',
	'html/static/fonts/fontawesome-webfont.ttf',
}

client_script {
	'@es_extended/locale.lua',
	'locales/en.lua',
	'locales/tr.lua',
	"config.lua",
	"client/animation.lua",
	"client/client.lua",
	"client/photo.lua",
	"client/app_tchat.lua",
	"client/bank.lua",
	"client/bourse.lua",
	"client/valet.lua",
	"client/fatura.lua",
	"client/twitter.lua",
	"client/yellowpages.lua",
	"client/news.lua",
	"client/youtube.lua",
	"client/uber.lua"
}

server_script {
	'@es_extended/locale.lua',
	'@mysql-async/lib/MySQL.lua',
	'locales/en.lua',
	'locales/tr.lua',
	"config.lua",
	"server/server.lua",
	"server/app_tchat.lua",
	"server/twitter.lua",
	"server/bank.lua",
	"server/valet.lua",
	"server/bourse.lua",
	"server/fatura.lua",
	"server/yellowpages.lua",
	"server/news.lua",
	"server/uber.lua"
}

client_scripts {
	"@RageUI/RMenu.lua",
	"@RageUI/menu/RageUI.lua",
	"@RageUI/menu/Menu.lua",
	"@RageUI/menu/MenuController.lua",

	"@RageUI/menu/items/UIButton.lua",
	"@RageUI/menu/items/UICheckBox.lua",
	"@RageUI/menu/items/UIList.lua",
	"@RageUI/menu/items/UIProgress.lua",
	"@RageUI/menu/items/UISeparator.lua",
	"@RageUI/menu/items/UISlider.lua",
	"@RageUI/menu/items/UISliderHeritage.lua",
	"@RageUI/menu/items/UISliderProgress.lua",

	"@RageUI/components/Audio.lua",
	"@RageUI/components/Enum.lua",
	"@RageUI/components/Keys.lua",
	"@RageUI/components/Rectangle.lua",
	"@RageUI/components/Sprite.lua",
	"@RageUI/components/Text.lua",
	"@RageUI/components/Visual.lua",

	"@RageUI/menu/elements/ItemsBadge.lua",
	"@RageUI/menu/elements/ItemsColour.lua",
	"@RageUI/menu/elements/PanelColour.lua",

	"@RageUI/menu/panels/UIButtonPanel.lua",
	"@RageUI/menu/panels/UIColourPanel.lua",
	"@RageUI/menu/panels/UIGridPanel.lua",
	"@RageUI/menu/panels/UIGridPanelHorizontal.lua",
	"@RageUI/menu/panels/UIGridPanelVertical.lua",
	"@RageUI/menu/panels/UIPercentagePanel.lua",
	"@RageUI/menu/panels/UIStatisticsPanel.lua",

	"@RageUI/menu/windows/UIHeritage.lua",
}