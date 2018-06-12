#!/usr/bin/ruby

require 'json'
require 'pp'

s='[{"factory_code":"601902","area_code":"035008"}]'


#json = File.read('input.json')
json = File.read('json.txt')
obj = JSON.parse(json)  #转为hash  这里的json是字符串不是json对象

pp obj


obj = JSON.parse(s)  #转为hash  这里的json是字符串不是json对象
pp obj
