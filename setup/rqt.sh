#!/bin/bash
env -i \
  HOME=$HOME \
  TERM=$TERM \
  DISPLAY=$DISPLAY \
  PATH=/usr/bin:/bin:/usr/sbin:/sbin:/opt/ros/humble/bin \
  QT_QPA_PLATFORM=xcb \
  bash --noprofile --norc -c "source /opt/ros/humble/setup.bash && rqt"
