#!/usr/bin/ruby

require 'json'
require 'pp'

s='[{"factory_code":"601902","area_code":"035008"},{"factory_code":"601905","area_code":"035009"}]'


#json = File.read('input.json')
json = File.read('json.txt')
obj = JSON.parse(json)  #转为hash  这里的json是字符串不是json对象
pp obj

obj = JSON.parse(s)  #转为hash  这里的json是字符串不是json对象
pp obj

#bj.each{|f,a|puts f,a }
obj.each{|f|puts f["factory_code"],f["area_code"]}
obj.each{|f|p f["factory_code"],f["area_code"]}
