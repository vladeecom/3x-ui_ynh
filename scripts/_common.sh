#!/bin/bash

app=$YNH_APP_INSTANCE_NAME

get_paths_and_settings() {
    install_dir=$(ynh_app_setting_get --app=$app --key=install_dir)
    data_dir=$(ynh_app_setting_get --app=$app --key=data_dir)
    domain=$(ynh_app_setting_get --app=$app --key=domain)
    path_url=$(ynh_app_setting_get --app=$app --key=path)
}
