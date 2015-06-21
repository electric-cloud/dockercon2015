README.md

To populate the memory / cpu for the widgets run these commands

    /opt/electriccloud/electriccommander/bin/ec-perl healthCheck.pl http://services-uswest.skytap.com:29610 mysql cpu
    
    /opt/electriccloud/electriccommander/bin/ec-perl healthCheck.pl http://services-uswest.skytap.com:29610 mysql mem
    
    /opt/electriccloud/electriccommander/bin/ec-perl healthCheck.pl http://services-uswest.skytap.com:29610 wildfly cpu
    
    /opt/electriccloud/electriccommander/bin/ec-perl healthCheck.pl http://services-uswest.skytap.com:29610 wildfly mem
    