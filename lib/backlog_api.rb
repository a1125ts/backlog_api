# -*- coding: utf-8 -*-
require "thor"
require 'xmlrpc/client'
require "active_support/core_ext"
require "awesome_print"
require "net/netrc"
require "yaml"
require "sinatra"
require "haml"
require 'sinatra'
require 'sinatra/reloader'

require "backlog_api/version"
require "backlog_api/const"
require "backlog_api/client"
require "backlog_api/command"
require "application"
require "formatador"


# TODO: ここじゃまずい気が...どこに書けばいいの？
require "pry-debugger"
require "tapp"
