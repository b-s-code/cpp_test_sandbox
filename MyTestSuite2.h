#include <cxxtest/TestSuite.h>

class MyTestSuite2 : public CxxTest::TestSuite
{
public:
    void testAddition()
    {
        TS_ASSERT(1 + 2 > 2);
        TS_ASSERT_EQUALS(1 + 2, 3);
    }
};