#pragma once
#define WIN32_LEAN_AND_MEAN
#define NOMINMAX
//Here we define some macros that stop `Windows.h` from doing some things we don't want. The former stops it from including some stuff we don't need (explained here), the latter stops it from defining the `min` and `max` macros, as we already have these in the STL and the macros can mess with your code, so we just get rid of them.
#include <windows.h> //Here we include the Win32 API headers.
#undef WIN32_LEAN_AND_MEAN
#undef NOMINMAX

#include <vector> //for ThreadContext.h
#include <memory> //for ThreadContext.h

namespace Threading
{
	class Thread
	{

	private:
		HANDLE m_hThread;
		DWORD m_threadId;
		bool m_isSuspended;

	public:
		explicit Thread(DWORD threadId)
			: m_isSuspended(false)
		{
			m_hThread = OpenThread(THREAD_ALL_ACCESS, FALSE, threadId);
			m_threadId = threadId;
		}
		~Thread() { CloseHandle(m_hThread); }
		DWORD GetThreadId() const { return m_threadId; }
		HANDLE GetThreadHandle() const { return m_hThread; }
		bool SuspendThread()
		{
			m_isSuspended = ::SuspendThread(m_hThread) != (DWORD)-1;
			return m_isSuspended;
		}
		bool ResumeThread()
		{
			m_isSuspended = ::ResumeThread(m_hThread) == (DWORD)-1;
			return !m_isSuspended;
		}

	};

	class ThreadContext
	{

	public:
		static ThreadContext& GetInstance();

	public:
		explicit ThreadContext();
		~ThreadContext();
		std::vector<std::shared_ptr<Thread>> GetThreads() const;
		std::vector<std::shared_ptr<Thread>> SuspendAllThreads() const;
	};
}