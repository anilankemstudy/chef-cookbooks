#
# Cookbook:: webserver
# Recipe:: default
#
# Copyright:: 2020, The Authors, All Rights Reserved.
include_recipe 'webserver::server'
include_recipe 'webserver::setup'
