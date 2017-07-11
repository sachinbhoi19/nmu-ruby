#!/usr/bin/env ruby
gem 'tk'

require 'rubygems'
require 'tk'
#load 'tk'
 root = TkRoot.new do
   title "Ruby/Tk Test"
 end

 Tk.mainloop
