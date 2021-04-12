---
title: xml_parser
abbrlink: '67918593'
date: 2021-01-22 08:55:38
categories:
tags:
---
tree = ET.parse('aaa.xml')
root = tree.getroot()
root.findall('.//{urn:3gpp:tsg:sa5:nrm:ngran}vendorName')