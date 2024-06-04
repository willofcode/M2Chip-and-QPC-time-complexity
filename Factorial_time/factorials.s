     
	 sub    sp, sp, #0x90
     stp    x29, x30, [sp, #0x80]
     add    x29, sp, #0x80
     stur   wzr, [x29, #-0x4]
     adrp   x0, 1
     add    x0, x0, #0xe74            ; "The factorial operation of (n!) listed below: \n"
     
	 bl     0x100003de8               ; symbol stub for: printf
     adrp   x0, 2
     ldr    x0, [x0, #0x68]
     adrp   x1, 2
     ldr    x1, [x1, #0x80]
     bl     0x100002bf0               ; std::__1::basic_ostream<char, std::__1::char_traits<char> >::operator<<[abi:v15006](std::__1::ios_base& (*)(std::__1::ios_base&))
     str    x0, [sp, #0x30]
     mov    w0, #0x9
     bl     0x100002c60               ; std::__1::setprecision[abi:v15006](int)
     
	 mov    x8, x0
     ldr    x0, [sp, #0x30]
     sub    x1, x29, #0x8
     stur   w8, [x29, #-0x8]
     bl     0x100002bb0               ; std::__1::basic_ostream<char, std::__1::char_traits<char> >& std::__1::operator<<[abi:v15006]<char, std::__1::char_traits<char> >(std::__1::basic_ostream<char, std::__1::char_traits<char> >&, std::__1::__iom_t5 const&)
     adrp   x1, 2
     ldr    x1, [x1, #0x70]
     bl     0x100002bf0               ; std::__1::basic_ostream<char, std::__1::char_traits<char> >::operator<<[abi:v15006](std::__1::ios_base& (*)(std::__1::ios_base&))
     mov    x8, #0x1
     stur   x8, [x29, #-0x10]
     b      0x100002a8c               ; <+104>
     ldur   x8, [x29, #-0x10]
     mov    x9, #0xca00
     movk   x9, #0x3b9a, lsl #16
     subs   x8, x8, x9
     cset   w8, hs
     tbnz   w8, #0x0, 0x100002ba0     ; <+380>
     b      0x100002aa8               ; <+132>
     bl     0x100003d88               ; symbol stub for: std::__1::chrono::steady_clock::now()
     sub    x8, x29, #0x18
     str    x8, [sp, #0x8]
     stur   x0, [x29, #-0x18]
     ldur   x8, [x29, #-0x10]
     mov    x0, x8
     bl     0x1000029c0               ; factorial(int)
     bl     0x100003d88               ; symbol stub for: std::__1::chrono::steady_clock::now()
     ldr    x1, [sp, #0x8]
     mov    x8, x0
     sub    x0, x29, #0x20
     str    x0, [sp, #0x10]
     stur   x8, [x29, #-0x20]
     bl     0x100002cec               ; std::__1::common_type<std::__1::chrono::duration<long long, std::__1::ratio<1l, 1000000000l> >, std::__1::chrono::duration<long long, std::__1::ratio<1l, 1000000000l> > >::type std::__1::chrono::operator-[abi:v15006]<std::__1::chrono::steady_clock, std::__1::chrono::duration<long long, std::__1::ratio<1l, 1000000000l> >, std::__1::chrono::duration<long long, std::__1::ratio<1l, 1000000000l> > >(std::__1::chrono::time_point<std::__1::chrono::steady_clock, std::__1::chrono::duration<long long, std::__1::ratio<1l, 1000000000l> > > const&, std::__1::chrono::time_point<std::__1::chrono::steady_clock, std::__1::chrono::duration<long long, std::__1::ratio<1l, 1000000000l> > > const&)
     mov    x8, x0
     sub    x0, x29, #0x30
     stur   x8, [x29, #-0x30]
     bl     0x100002cbc               ; std::__1::enable_if<__is_duration<std::__1::chrono::duration<long long, std::__1::ratio<1l, 1000000000l> > >::value, std::__1::chrono::duration<long long, std::__1::ratio<1l, 1000000000l> > >::type std::__1::chrono::duration_cast[abi:v15006]<std::__1::chrono::duration<long long, std::__1::ratio<1l, 1000000000l> >, long long, std::__1::ratio<1l, 1000000000l> >(std::__1::chrono::duration<long long, std::__1::ratio<1l, 1000000000l> > const&)
     ldr    x1, [sp, #0x8]
     mov    x8, x0
     ldr    x0, [sp, #0x10]
     stur   x8, [x29, #-0x28]
     bl     0x100002cec               ; std::__1::common_type<std::__1::chrono::duration<long long, std::__1::ratio<1l, 1000000000l> >, std::__1::chrono::duration<long long, std::__1::ratio<1l, 1000000000l> > >::type std::__1::chrono::operator-[abi:v15006]<std::__1::chrono::steady_clock, std::__1::chrono::duration<long long, std::__1::ratio<1l, 1000000000l> >, std::__1::chrono::duration<long long, std::__1::ratio<1l, 1000000000l> > >(std::__1::chrono::time_point<std::__1::chrono::steady_clock, std::__1::chrono::duration<long long, std::__1::ratio<1l, 1000000000l> > > const&, std::__1::chrono::time_point<std::__1::chrono::steady_clock, std::__1::chrono::duration<long long, std::__1::ratio<1l, 1000000000l> > > const&)
     add    x1, sp, #0x40
     str    x0, [sp, #0x40]
     sub    x0, x29, #0x38
     str    x0, [sp, #0x20]
     mov    x2, #0x0
     bl     0x100002d44               ; std::__1::chrono::duration<double, std::__1::ratio<1l, 1l> >::duration[abi:v15006]<long long, std::__1::ratio<1l, 1000000000l> >(std::__1::chrono::duration<long long, std::__1::ratio<1l, 1000000000l> > const&, std::__1::enable_if<__no_overflow<std::__1::ratio<1l, 1000000000l>, std::__1::ratio<1l, 1l> >::value && (std::__1::integral_constant<bool, true>::value || __no_overflow<std::__1::ratio<1l, 1000000000l>, std::__1::ratio<1l, 1l> >::type::den == 1 && !treat_as_floating_point<long long>::value), void>::type*)
     adrp   x0, 2
     ldr    x0, [x0, #0x68]
     adrp   x1, 1
     add    x1, x1, #0xea4            ; "Time to compute factorial of "
     bl     0x100003db8               ; symbol stub for: std::__1::basic_ostream<char, std::__1::char_traits<char> >& std::__1::operator<<<std::__1::char_traits<char> >(std::__1::basic_ostream<char, std::__1::char_traits<char> >&, char const*)
     str    x0, [sp, #0x18]
     mov    w0, #0x9
     bl     0x100002e08               ; std::__1::setw[abi:v15006](int)
     mov    x8, x0
     ldr    x0, [sp, #0x18]
     add    x1, sp, #0x3c
     str    w8, [sp, #0x3c]
     bl     0x100002dc8               ; std::__1::basic_ostream<char, std::__1::char_traits<char> >& std::__1::operator<<[abi:v15006]<char, std::__1::char_traits<char> >(std::__1::basic_ostream<char, std::__1::char_traits<char> >&, std::__1::__iom_t6 const&)
     ldur   x1, [x29, #-0x10]
     bl     0x100003d70               ; symbol stub for: std::__1::basic_ostream<char, std::__1::char_traits<char> >::operator<<(unsigned long)
     adrp   x1, 1
     add    x1, x1, #0xec2            ; ": "
     bl     0x100003db8               ; symbol stub for: std::__1::basic_ostream<char, std::__1::char_traits<char> >& std::__1::operator<<<std::__1::char_traits<char> >(std::__1::basic_ostream<char, std::__1::char_traits<char> >&, char const*)
     mov    x1, x0
     ldr    x0, [sp, #0x20]
     str    x1, [sp, #0x28]
     bl     0x100002e34               ; std::__1::chrono::duration<double, std::__1::ratio<1l, 1l> >::count[abi:v15006]() const
     ldr    x0, [sp, #0x28]
     bl     0x100003d64               ; symbol stub for: std::__1::basic_ostream<char, std::__1::char_traits<char> >::operator<<(double)
     adrp   x1, 1
     add    x1, x1, #0xec5            ; " Seconds\n"
     bl     0x100003db8               ; symbol stub for: std::__1::basic_ostream<char, std::__1::char_traits<char> >& std::__1::operator<<<std::__1::char_traits<char> >(std::__1::basic_ostream<char, std::__1::char_traits<char> >&, char const*)
     b      0x100002b8c               ; <+360>
     ldur   x8, [x29, #-0x10]
     mov    x9, #0xa
     mul    x8, x8, x9
     stur   x8, [x29, #-0x10]
     b      0x100002a8c               ; <+104>
     mov    w0, #0x0
     ldp    x29, x30, [sp, #0x80]
     add    sp, sp, #0x90
     ret   