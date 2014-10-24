#!/usr/bin/python3

'''
this script will install all the required packages that you need on
ubuntu to compile and work with this package.
'''

import subprocess # for check_call

packs=[
	# perl
	'libnet-github-perl',
	'libconfig-inifiles-perl',
	'libfile-homedir-perl',

	# my own
	'templar',
]

args=['sudo','apt-get','install','--assume-yes']
args.extend(packs)
subprocess.check_call(args)
