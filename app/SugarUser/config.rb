require 'rho'
require File.join(__rhoGetCurrentDir(), 'apps','app','config/environment')

Rho::RhoConfig::add_source("SugarUser", {"url"=>"#{SYNC_SERVER}19", "source_id"=>19})