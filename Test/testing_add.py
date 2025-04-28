import unittest
from test import add

class Testing_add_function(unittest.TestCase):
    def test_add(self):
        self.assertEqual(add(3,2), 5)  # add assertion here
    def test_add_raise(self):
        self.assertRaises(ValueError,add(3,2))
if __name__ == '__main__':
    unittest.main()
