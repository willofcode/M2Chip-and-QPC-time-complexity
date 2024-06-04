_cxx_global_var_init:                  # @__cxx_global_var_init
        push    rbp
        mov     rbp, rsp
        movabs  rdi, offset std::__ioinit
        movabs  rdi, offset std::ios_base::Init::~Init() [complete object destructor]
        movabs  rsi, offset std::__ioinit
        movabs  rdx, offset __dso_handle
        call    __cxa_atexit
        pop     rbp
        ret
factorial(int):                          # @factorial(int)
        push    rbp
        mov     rbp, rsp
        sub     rsp, 16
        mov     dword ptr [rbp - 8], edi
        cmp     dword ptr [rbp - 8], 1
        jge     .LBB1_2
        mov     dword ptr [rbp - 4], 1
        jmp     .LBB1_3
.LBB1_2:
        mov     eax, dword ptr [rbp - 8]
        mov     dword ptr [rbp - 12], eax       # 4-byte Spill
        mov     edi, dword ptr [rbp - 8]
        sub     edi, 1
        call    factorial(int)
        mov     ecx, eax
        mov     eax, dword ptr [rbp - 12]       # 4-byte Reload
        imul    eax, ecx
        mov     dword ptr [rbp - 4], eax
.LBB1_3:
        mov     eax, dword ptr [rbp - 4]
        add     rsp, 16
        pop     rbp
        ret
main:                                   # @main
        push    rbp
        mov     rbp, rsp
        sub     rsp, 96
        mov     dword ptr [rbp - 4], 0
        movabs  rdi, offset .L.str
        mov     al, 0
        call    printf
        movabs  rdi, offset std::cout
        movabs  rsi, offset std::fixed(std::ios_base&)
        call    std::basic_ostream<char, std::char_traits<char> >::operator<<(std::ios_base& (*)(std::ios_base&))
        mov     qword ptr [rbp - 80], rax       # 8-byte Spill
        mov     edi, 9
        call    std::setprecision(int)
        mov     rdi, qword ptr [rbp - 80]       # 8-byte Reload
        mov     dword ptr [rbp - 8], eax
        mov     esi, dword ptr [rbp - 8]
        call    std::basic_ostream<char, std::char_traits<char> >& std::operator<< <char, std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, std::_Setprecision)
        mov     rdi, rax
        movabs  rsi, offset std::left(std::ios_base&)
        call    std::basic_ostream<char, std::char_traits<char> >::operator<<(std::ios_base& (*)(std::ios_base&))
        mov     qword ptr [rbp - 16], 1
.LBB2_1:                                # =>This Inner Loop Header: Depth=1
        cmp     qword ptr [rbp - 16], 1000000000
        jae     .LBB2_4
        call    std::chrono::_V2::system_clock::now()
        mov     qword ptr [rbp - 24], rax
        mov     rax, qword ptr [rbp - 16]
        mov     edi, eax
        call    factorial(int)
        call    std::chrono::_V2::system_clock::now()
        mov     qword ptr [rbp - 32], rax
        lea     rdi, [rbp - 32]
        lea     rsi, [rbp - 24]
        call    std::common_type<std::chrono::duration<long, std::ratio<1l, 1000000000l> >, std::chrono::duration<long, std::ratio<1l, 1000000000l> > >::type std::chrono::operator-<std::chrono::_V2::system_clock, std::chrono::duration<long, std::ratio<1l, 1000000000l> >, std::chrono::duration<long, std::ratio<1l, 1000000000l> > >(std::chrono::time_point<std::chrono::_V2::system_clock, std::chrono::duration<long, std::ratio<1l, 1000000000l> > > const&, std::chrono::time_point<std::chrono::_V2::system_clock, std::chrono::duration<long, std::ratio<1l, 1000000000l> > > const&)
        mov     qword ptr [rbp - 48], rax
        lea     rdi, [rbp - 48]
        call    std::enable_if<__is_duration<std::chrono::duration<long, std::ratio<1l, 1000000000l> > >::value, std::chrono::duration<long, std::ratio<1l, 1000000000l> > >::type std::chrono::duration_cast<std::chrono::duration<long, std::ratio<1l, 1000000000l> >, long, std::ratio<1l, 1000000000l> >(std::chrono::duration<long, std::ratio<1l, 1000000000l> > const&)
        mov     qword ptr [rbp - 40], rax
        lea     rdi, [rbp - 32]
        lea     rsi, [rbp - 24]
        call    std::common_type<std::chrono::duration<long, std::ratio<1l, 1000000000l> >, std::chrono::duration<long, std::ratio<1l, 1000000000l> > >::type std::chrono::operator-<std::chrono::_V2::system_clock, std::chrono::duration<long, std::ratio<1l, 1000000000l> >, std::chrono::duration<long, std::ratio<1l, 1000000000l> > >(std::chrono::time_point<std::chrono::_V2::system_clock, std::chrono::duration<long, std::ratio<1l, 1000000000l> > > const&, std::chrono::time_point<std::chrono::_V2::system_clock, std::chrono::duration<long, std::ratio<1l, 1000000000l> > > const&)
        mov     qword ptr [rbp - 64], rax
        lea     rdi, [rbp - 56]
        lea     rsi, [rbp - 64]
        call    std::chrono::duration<double, std::ratio<1l, 1l> >::duration<long, std::ratio<1l, 1000000000l>, void>(std::chrono::duration<long, std::ratio<1l, 1000000000l> > const&)
        movabs  rdi, offset std::cout
        movabs  rsi, offset .L.str.1
        call    std::basic_ostream<char, std::char_traits<char> >& std::operator<< <std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char const*)
        mov     qword ptr [rbp - 96], rax       # 8-byte Spill
        mov     edi, 9
        call    std::setw(int)
        mov     rdi, qword ptr [rbp - 96]       # 8-byte Reload
        mov     dword ptr [rbp - 72], eax
        mov     esi, dword ptr [rbp - 72]
        call    std::basic_ostream<char, std::char_traits<char> >& std::operator<< <char, std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, std::_Setw)
        mov     rdi, rax
        mov     rsi, qword ptr [rbp - 16]
        call    std::basic_ostream<char, std::char_traits<char> >::operator<<(unsigned long)
        mov     rdi, rax
        movabs  rsi, offset .L.str.2
        call    std::basic_ostream<char, std::char_traits<char> >& std::operator<< <std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char const*)
        mov     qword ptr [rbp - 88], rax       # 8-byte Spill
        lea     rdi, [rbp - 56]
        call    std::chrono::duration<double, std::ratio<1l, 1l> >::count() const
        mov     rdi, qword ptr [rbp - 88]       # 8-byte Reload
        call    std::basic_ostream<char, std::char_traits<char> >::operator<<(double)
        mov     rdi, rax
        movabs  rsi, offset .L.str.3
        call    std::basic_ostream<char, std::char_traits<char> >& std::operator<< <std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char const*)
        imul    rax, qword ptr [rbp - 16], 10
        mov     qword ptr [rbp - 16], rax
        jmp     .LBB2_1
.LBB2_4:
        xor     eax, eax
        add     rsp, 96
        pop     rbp
        ret
.LCPI23_0:
        .quad   0x41cdcd6500000000              # double 1.0E+9
_GLOBAL__sub_I_example.cpp:             # @_GLOBAL__sub_I_example.cpp
        push    rbp
        mov     rbp, rsp
        call    __cxx_global_var_init
        pop     rbp
        ret
.L.str:
        .asciz  "The factorial operation of (n!) listed below: \n"

.L.str.1:
        .asciz  "Time to compute factorial of "

.L.str.2:
        .asciz  ": "

.L.str.3:
        .asciz  " Seconds\n"