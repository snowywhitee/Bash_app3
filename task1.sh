#!/bin/bash

#without if: mkdir test -> ~/report
mkdir -p ~/test &&
{
	echo "catalog test was created successfully" >> ~/report
	touch ~/test/"$(date +%F_%T)"
}

#ping net_nikogo.ru, !-> ~/report "date_time msg" error msg
ping -c net_nikogo.ru || echo "$(date +%F_%T) ping failed" >> ~/report
