#!/usr/bin/env python
#-*- coding:utf-8 -*-

from HTMLParser import HTMLParser
import urllib
import re

class MyHTMLParser(HTMLParser):
	"""get links from html"""
	def __init__(self,url):
		HTMLParser.__init__(self)
		self.links=[]

	def handle_starttag(self,tag,attrs):
		if tag=='a':
			if len(attrs)==0:
				pass
			else:
				for (variable,value) in attrs:
					if variable =="href":
						self.links.append(value)
	def getLinks(self):
		html=urllib.urlopen(url).read()
		self.feed(html)
		return self.links

if __name__=="__main__":
	url="http://www.freebuf.com/wenku"
#	html=urllib.urlopen(url).read()
	myhp=MyHTMLParser(url)
#	myhp.feed(html)
	myhp.close()
	print(myhp.getLinks())