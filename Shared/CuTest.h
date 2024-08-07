/* CuTest C Unit Testing Framework */
/* Altered version with modifications by Nigel Perks, clearly commented below. */

#ifndef CU_TEST_H
#define CU_TEST_H

#include <setjmp.h>
#include <stdarg.h>

#define CUTEST_VERSION  "CuTest 1.5"

/* CuString */

char* CuStrAlloc(size_t size); // NRP: use size_t for 64-bit builds
char* CuStrCopy(const char* old);

#define CU_ALLOC(TYPE)		((TYPE*) malloc(sizeof(TYPE)))

#define HUGE_STRING_LEN	8192
#define STRING_MAX		256
#define STRING_INC		256

// NRP: use size_t for 64-bit builds
typedef struct
{
	size_t length;
	size_t size;
	char* buffer;
} CuString;

void CuStringInit(CuString* str);
CuString* CuStringNew(void);
void CuStringRead(CuString* str, const char* path);
void CuStringAppend(CuString* str, const char* text);
void CuStringAppendChar(CuString* str, char ch);
void CuStringAppendFormat(CuString* str, const char* format, ...);
void CuStringInsert(CuString* str, const char* text, size_t pos); // NRP: use size_t for 64-bit builds
void CuStringResize(CuString* str, size_t newSize); // NRP: use size_t for 64-bit builds
void CuStringDelete(CuString* str);

/* CuTest */

typedef struct CuTest CuTest;

typedef void (*TestFunction)(CuTest *);

struct CuTest
{
	char* name;
	TestFunction function;
	int failed;
	int ran;
	const char* message;
	jmp_buf *jumpBuf;
};

void CuTestInit(CuTest* t, const char* name, TestFunction function);
CuTest* CuTestNew(const char* name, TestFunction function);
void CuTestRun(CuTest* tc);
void CuTestDelete(CuTest *t);

/* Internal versions of assert functions -- use the public versions */
void CuFail_Line(CuTest* tc, const char* file, int line, const char* message2, const char* message);
void CuAssert_Line(CuTest* tc, const char* file, int line, const char* message, int condition);
void CuAssertStrEquals_LineMsg(CuTest* tc,
	const char* file, int line, const char* message,
	const char* expected, const char* actual);
void CuAssertIntEquals_LineMsg(CuTest* tc,
	const char* file, int line, const char* message,
	int expected, int actual);
void CuAssertDblEquals_LineMsg(CuTest* tc,
	const char* file, int line, const char* message,
	double expected, double actual, double delta);
void CuAssertPtrEquals_LineMsg(CuTest* tc,
	const char* file, int line, const char* message,
	void* expected, void* actual);

/* NIGEL PERKS MODIFICATION BEGINS */
void CuAssertLongLongEquals_LineMsg(CuTest* tc,
    const char* file, int line, const char* message,
	long long expected, long long actual);
void CuAssertSizeEquals_LineMsg(CuTest* tc,
    const char* file, int line, const char* message,
	size_t expected, size_t actual);
/* NIGEL PERKS MODIFICATION ENDS */

/* public assert functions */

#define CuFail(tc, ms)                        CuFail_Line(  (tc), __FILE__, __LINE__, NULL, (ms))
#define CuAssert(tc, ms, cond)                CuAssert_Line((tc), __FILE__, __LINE__, (ms), (cond))
#define CuAssertTrue(tc, cond)                CuAssert_Line((tc), __FILE__, __LINE__, "assert failed", (cond))

#define CuAssertStrEquals(tc,ex,ac)           CuAssertStrEquals_LineMsg((tc),__FILE__,__LINE__,NULL,(ex),(ac))
#define CuAssertStrEquals_Msg(tc,ms,ex,ac)    CuAssertStrEquals_LineMsg((tc),__FILE__,__LINE__,(ms),(ex),(ac))
#define CuAssertIntEquals(tc,ex,ac)           CuAssertIntEquals_LineMsg((tc),__FILE__,__LINE__,NULL,(ex),(ac))
#define CuAssertIntEquals_Msg(tc,ms,ex,ac)    CuAssertIntEquals_LineMsg((tc),__FILE__,__LINE__,(ms),(ex),(ac))
#define CuAssertDblEquals(tc,ex,ac,dl)        CuAssertDblEquals_LineMsg((tc),__FILE__,__LINE__,NULL,(ex),(ac),(dl))
#define CuAssertDblEquals_Msg(tc,ms,ex,ac,dl) CuAssertDblEquals_LineMsg((tc),__FILE__,__LINE__,(ms),(ex),(ac),(dl))
#define CuAssertPtrEquals(tc,ex,ac)           CuAssertPtrEquals_LineMsg((tc),__FILE__,__LINE__,NULL,(ex),(ac))
#define CuAssertPtrEquals_Msg(tc,ms,ex,ac)    CuAssertPtrEquals_LineMsg((tc),__FILE__,__LINE__,(ms),(ex),(ac))

/* NIGEL PERKS MODIFICATION BEGINS */
#define CuAssertLongLongEquals(tc,ex,ac)           CuAssertLongLongEquals_LineMsg((tc),__FILE__,__LINE__,NULL,(ex),(ac))
#define CuAssertLongLongEquals_Msg(tc,ms,ex,ac)    CuAssertLongLongEquals_LineMsg((tc),__FILE__,__LINE__,(ms),(ex),(ac))
#define CuAssertSizeEquals(tc,ex,ac)               CuAssertSizeEquals_LineMsg((tc),__FILE__,__LINE__,NULL,(ex),(ac))
#define CuAssertSizeEquals_Msg(tc,ms,ex,ac)        CuAssertSizeEquals_LineMsg((tc),__FILE__,__LINE__,(ms),(ex),(ac))
/* NIGEL PERKS MODIFICATION ENDS */

#define CuAssertPtrNotNull(tc,p)        CuAssert_Line((tc),__FILE__,__LINE__,"null pointer unexpected",(p != NULL))
#define CuAssertPtrNotNullMsg(tc,msg,p) CuAssert_Line((tc),__FILE__,__LINE__,(msg),(p != NULL))

/* CuSuite */

#define MAX_TEST_CASES	1024

#define SUITE_ADD_TEST(SUITE,TEST)	CuSuiteAdd(SUITE, CuTestNew(#TEST, TEST))

typedef struct
{
	int count;
	CuTest* list[MAX_TEST_CASES];
	int failCount;

} CuSuite;


void CuSuiteInit(CuSuite* testSuite);
CuSuite* CuSuiteNew(void);
void CuSuiteDelete(CuSuite *testSuite);
void CuSuiteAdd(CuSuite* testSuite, CuTest *testCase);
void CuSuiteAddSuite(CuSuite* testSuite, CuSuite* testSuite2);
void CuSuiteRun(CuSuite* testSuite);
void CuSuiteSummary(CuSuite* testSuite, CuString* summary);
void CuSuiteDetails(CuSuite* testSuite, CuString* details);

#endif /* CU_TEST_H */
