#!/usr/bin/env python
# coding: utf-8

import unittest2 as unittest
import xmlrunner

def runner(output='python_tests_xml'):
    return xmlrunner.XMLTestRunner(
        output=output
    )

def find_tests():
    return unittest.TestLoader().discover('pystache')

if __name__ == '__main__':
    runner().run(find_tests())
