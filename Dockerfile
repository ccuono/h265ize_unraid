FROM siwatinc/nodejsubuntu_base_image
RUN apt-get -y install ffmpeg
RUN npm install -g h265ize
CMD script --return -c "h265ize -v $extraarg -m '$preset' -d $output -q $qp -f '$format' $input -g $output --as-preset $aspreset --bitdepth 10" /dev/null
