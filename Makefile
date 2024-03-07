
INSTLL_PATH=/opt/fix_wechat/bin
DESKTOP_INSTALL_PATH="$${HOME}/.local/share/applications"

fix_wechat:main.c
	gcc main.c -lxcb -lxcb-util -lxcb-icccm -o fix_wechat

install:
	 install -d $(INSTLL_PATH)
	 install -m 0755 fix_wechat  $(INSTLL_PATH)

create_desktop:
	install -d $(DESKTOP_INSTALL_PATH)
	install -m 0755 WeChatFixBorder.desktop  $(DESKTOP_INSTALL_PATH)

clean:
	 rm fix_wechat
uninstall:
	 rm $(INSTLL_PATH)/fix_wechat
