from patterns import patterns, Mismatch
from contracts import contract
from hypothesis import given, assume, Settings


@contract(n="int", returns="str")
def fizzbuzz(n):
    return match_fizzbuzz((n % 15, n % 5, n % 3, n))


@contract(value="tuple", returns="str")
@patterns
def match_fizzbuzz():
    if (0, x, y, n): return "fizzbuzz"
    if (x, 0, y, n): return "buzz"
    if (x, y, 0, n): return "fizz"
    if (x, y, z, n): return str(n)


@given(int)
def test_fizzing(n):
    assume(n % 5 != 0)
    assume(n > 0)
    assume(n < 10000)
    assert fizzbuzz(n * 3) == "fizz"


@given(int)
def test_buzzing(n):
    assume(n % 3 != 0)
    assume(n > 0)
    assume(n < 10000)
    assert fizzbuzz(n * 5) == "buzz"


@given(int)
def test_fizzbuzzing(n):
    assume(n > 0)
    assume(n < 10000)
    assert fizzbuzz(n * 15) == "fizzbuzz"


@given(int)
def test_ning(n):
    assume(n % 3 != 0)
    assume(n % 5 != 0)
    assume(n > 0)
    assume(n < 10000)
    assert fizzbuzz(n) == str(n)

with Settings(max_examples=500):
    test_fizzing()
    test_buzzing()
    test_fizzbuzzing()
    test_ning()

for n in range(1, 100):
    print fizzbuzz(n)
