/home/pi/.config/lxsession/LXDE-pi:
  file.directory:
    - user: pi
    - group: pi
    - mode: 755
    - makedirs: True
deploy the puredata autostart file:
  file.managed:
    - name: /home/pi/.config/lxsession/LXDE-pi/autostart
    - source: salt://auto_start_puredata/autostart
    - user: pi
    - group: pi
    - mode: 644
