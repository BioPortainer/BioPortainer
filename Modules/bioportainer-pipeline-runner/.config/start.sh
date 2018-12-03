#!/bin/bash

supervisord --configuration /.config/supervisord.conf
chown -R $UID:$UID $HOME/workdir/data
chown -R $UID:$UID $HOME/.nextflow/assets
