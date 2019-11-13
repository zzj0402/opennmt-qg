FROM sld3/opennmt:780979ab_distro20e52377
COPY . .
WORKDIR /root/opennmt
EXPOSE 5556
CMD [ "th","tools/translation_server.lua -host 0.0.0.0 -port 5556 -model /root/model.t7 -beam_size 12" ]