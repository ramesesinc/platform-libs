#!/bin/bash
echo "-----------------------"
echo " Updating client libs   "
echo "-----------------------"
if [ -f ../incubation/osiris2-client-themes/dist/osiris2-client-themes.jar ]; then 
	cp -vf ../incubation/osiris2-client-themes/dist/osiris2-client-themes.jar client/
fi
if [ -f ../incubation/osiris2-client-ui/dist/osiris2-client-ui.jar ]; then 
	cp -vf ../incubation/osiris2-client-ui/dist/osiris2-client-ui.jar client/
fi
if [ -f ../incubation/osiris2-draw/dist/osiris2-draw.jar ]; then 
	cp -vf ../incubation/osiris2-draw/dist/osiris2-draw.jar client/
fi
if [ -f ../incubation/osiris2-framework/dist/osiris2-framework.jar ]; then 
	cp -vf ../incubation/osiris2-framework/dist/osiris2-framework.jar client/
fi
if [ -f ../incubation/osiris2-report/dist/osiris2-report.jar ]; then 
	cp -vf ../incubation/osiris2-report/dist/osiris2-report.jar client/
fi
if [ -f ../incubation/rameses-client-ui/dist/rameses-client-ui.jar ]; then 
	cp -vf ../incubation/rameses-client-ui/dist/rameses-client-ui.jar client/
fi
if [ -f ../incubation/rameses-client-ui-bio/dist/rameses-client-ui-bio.jar ]; then 
	cp -vf ../incubation/rameses-client-ui-bio/dist/rameses-client-ui-bio.jar client/
fi
if [ -f ../incubation/rameses-client-ui-support/dist/rameses-client-ui-support.jar ]; then 
	cp -vf ../incubation/rameses-client-ui-support/dist/rameses-client-ui-support.jar client/
fi
if [ -f ../incubation/rameses-common2/dist/rameses-common2.jar ]; then 
	cp -vf ../incubation/rameses-common2/dist/rameses-common2.jar client/
fi
if [ -f ../incubation/rameses-custom-impl/dist/rameses-custom-impl.jar ]; then 
	cp -vf ../incubation/rameses-custom-impl/dist/rameses-custom-impl.jar client/
fi
if [ -f ../incubation/rameses-jdbc16/dist/rameses-jdbc16.jar ]; then 
	cp -vf ../incubation/rameses-jdbc16/dist/rameses-jdbc16.jar client/
fi
if [ -f ../incubation/rameses-seti/dist/rameses-seti.jar ]; then 
	cp -vf ../incubation/rameses-seti/dist/rameses-seti.jar client/
fi
if [ -f ../incubation/rameses-seti-support/dist/rameses-seti-support.jar ]; then 
	cp -vf ../incubation/rameses-seti-support/dist/rameses-seti-support.jar client/
fi
if [ -f ../incubation/client-system/dist/client-system.jar ]; then 
	cp -vf ../incubation/client-system/dist/client-system.jar client/
fi
if [ -f ../incubation/client-ui-extended/dist/client-ui-extended.jar ]; then 
	cp -vf ../incubation/client-ui-extended/dist/client-ui-extended.jar client/
fi
if [ -f ../incubation/rameses-client-menu/dist/rameses-client-menu.jar ]; then 
	cp -vf ../incubation/rameses-client-menu/dist/rameses-client-menu.jar client/
fi
if [ -f ../incubation/rameses-client-report/dist/rameses-client-report.jar ]; then 
	cp -vf ../incubation/rameses-client-report/dist/rameses-client-report.jar client/
fi
if [ -f ../incubation/rameses-rules-mgmt/dist/rameses-rules-mgmt.jar ]; then 
	cp -vf ../incubation/rameses-rules-mgmt/dist/rameses-rules-mgmt.jar client/
fi
if [ -f ../incubation/rameses-workflow-mgmt/dist/rameses-workflow-mgmt.jar ]; then 
	cp -vf ../incubation/rameses-workflow-mgmt/dist/rameses-workflow-mgmt.jar client/
fi
if [ -f ../incubation/rameses-client-notification2/dist/rameses-client-notification2.jar ]; then 
	cp -vf ../incubation/rameses-client-notification2/dist/rameses-client-notification2.jar client/
fi
if [ -f ../incubation/osiris2-test-platform/dist/osiris2-test-platform.jar ]; then 
	cp -vf ../incubation/osiris2-test-platform/dist/osiris2-test-platform.jar client/
fi
echo " "
echo "-----------------------"
echo " Updating server libs  "
echo "-----------------------"
if [ -f ../incubation/anubis-cms2/dist/anubis-cms2.jar ]; then 
	cp -vf ../incubation/anubis-cms2/dist/anubis-cms2.jar server/
fi
if [ -f ../incubation/db-dialect/dist/db-dialect.jar ]; then 
	cp -vf ../incubation/db-dialect/dist/db-dialect.jar server/
fi
if [ -f ../incubation/osiris3-memcache/dist/osiris3-memcache.jar ]; then 
	cp -vf ../incubation/osiris3-memcache/dist/osiris3-memcache.jar server/
fi
if [ -f ../incubation/rameses-common2/dist/rameses-common2.jar ]; then 
	cp -vf ../incubation/rameses-common2/dist/rameses-common2.jar server/
fi
if [ -f ../incubation/rameses-custom-impl/dist/rameses-custom-impl.jar ]; then 
	cp -vf ../incubation/rameses-custom-impl/dist/rameses-custom-impl.jar server/
fi
if [ -f ../incubation/rameses-main-bootloader/dist/rameses-main-bootloader.jar ]; then 
	cp -vf ../incubation/rameses-main-bootloader/dist/rameses-main-bootloader.jar server/
fi
if [ -f ../incubation/rameses-osiris3-core2/dist/rameses-osiris3-core2.jar ]; then 
	cp -vf ../incubation/rameses-osiris3-core2/dist/rameses-osiris3-core2.jar server/
fi
if [ -f ../incubation/rameses-osiris3-mail/dist/rameses-osiris3-mail.jar ]; then 
	cp -vf ../incubation/rameses-osiris3-mail/dist/rameses-osiris3-mail.jar server/
fi
if [ -f ../incubation/rameses-osiris3-rules/dist/rameses-osiris3-rules.jar ]; then 
	cp -vf ../incubation/rameses-osiris3-rules/dist/rameses-osiris3-rules.jar server/
fi
if [ -f ../incubation/rameses-osiris3-server/dist/rameses-osiris3-server.jar ]; then 
	cp -vf ../incubation/rameses-osiris3-server/dist/rameses-osiris3-server.jar server/
fi
if [ -f ../incubation/rameses-rabbitmq-connection/dist/rameses-rabbitmq-connection.jar ]; then 
	cp -vf ../incubation/rameses-rabbitmq-connection/dist/rameses-rabbitmq-connection.jar server/
fi
if [ -f ../incubation/rameses-redis-cache/dist/rameses-redis-cache.jar ]; then 
	cp -vf ../incubation/rameses-redis-cache/dist/rameses-redis-cache.jar server/
fi
if [ -f ../incubation/rameses-services-extended/dist/rameses-services-extended.jar ]; then 
	cp -vf ../incubation/rameses-services-extended/dist/rameses-services-extended.jar server/
fi
if [ -f ../incubation/rameses-seti-services/dist/rameses-seti-services.jar ]; then 
	cp -vf ../incubation/rameses-seti-services/dist/rameses-seti-services.jar server/
fi
if [ -f ../incubation/rameses-system-services/dist/rameses-system-services.jar ]; then 
	cp -vf ../incubation/rameses-system-services/dist/rameses-system-services.jar server/
fi
if [ -f ../incubation/rameses-tomcat-cp/dist/rameses-tomcat-cp.jar ]; then 
	cp -vf ../incubation/rameses-tomcat-cp/dist/rameses-tomcat-cp.jar server/
fi
if [ -f ../incubation/rameses-webapi-common/dist/rameses-webapi-common.jar ]; then 
	cp -vf ../incubation/rameses-webapi-common/dist/rameses-webapi-common.jar server/
fi
if [ -f ../incubation/rameses-websocket2/dist/rameses-websocket2.jar ]; then 
	cp -vf ../incubation/rameses-websocket2/dist/rameses-websocket2.jar server/
fi
echo "-----------------------"
echo " DONE "
echo "-----------------------"
