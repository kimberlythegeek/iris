# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this file,
# You can obtain one at http://mozilla.org/MPL/2.0/.


import logging
import unittest

mylogger = logging.getLogger(__name__)


class BaseTest(unittest.TestCase):

    def setup(self):
        "setup method for each test instance"
        self.meta = ''
        self.exclude = []

    @classmethod
    def setUpClass(cls):
        return

    def tearDown(self):
        return

    @classmethod
    def tearDownClass(cls):
        return

    # Open issue: Do we support TestRail for Iris, or just Firefox?
    def get_testrail_results(self):
        return