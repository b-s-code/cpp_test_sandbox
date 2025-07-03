#include <cxxtest/TestSuite.h>

class MyTestSuite1 : public CxxTest::TestSuite
{
public:
    void testAddition()
    {
        TS_ASSERT(1 + 1 > 1);
    }
};
