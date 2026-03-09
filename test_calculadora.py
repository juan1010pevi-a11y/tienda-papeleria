import unittest
from calculadora import calcular_total

class TestCalculadora(unittest.TestCase):

    def test_precio_1000_cantidad_3(self):
        self.assertEqual(calcular_total(1000, 3), 3000)

if __name__ == "__main__":
    unittest.main()