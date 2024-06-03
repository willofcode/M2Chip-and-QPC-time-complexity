	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 13, 3	sdk_version 13, 3
	.globl	__Z9factoriali                  ; -- Begin function _Z9factoriali
	.p2align	2
__Z9factoriali:                         ; @_Z9factoriali
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	w0, [sp, #8]
	ldr	w8, [sp, #8]
	subs	w8, w8, #1
	cset	w8, ge
	tbnz	w8, #0, LBB0_2
	b	LBB0_1
LBB0_1:
	mov	w8, #1
	stur	w8, [x29, #-4]
	b	LBB0_3
LBB0_2:
	ldr	w8, [sp, #8]
	str	w8, [sp, #4]                    ; 4-byte Folded Spill
	ldr	w8, [sp, #8]
	subs	w0, w8, #1
	bl	__Z9factoriali
	ldr	w8, [sp, #4]                    ; 4-byte Folded Reload
	mul	w8, w8, w0
	stur	w8, [x29, #-4]
	b	LBB0_3
LBB0_3:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #144
	.cfi_def_cfa_offset 144
	stp	x29, x30, [sp, #128]            ; 16-byte Folded Spill
	add	x29, sp, #128
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	wzr, [x29, #-4]
	adrp	x0, l_.str@PAGE
	add	x0, x0, l_.str@PAGEOFF
	bl	_printf
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
	adrp	x1, __ZNSt3__15fixedERNS_8ios_baseE@GOTPAGE
	ldr	x1, [x1, __ZNSt3__15fixedERNS_8ios_baseE@GOTPAGEOFF]
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsB6v15006EPFRNS_8ios_baseES5_E
	str	x0, [sp, #48]                   ; 8-byte Folded Spill
	mov	w0, #9
	bl	__ZNSt3__112setprecisionB6v15006Ei
	mov	x8, x0
	ldr	x0, [sp, #48]                   ; 8-byte Folded Reload
	sub	x1, x29, #8
	stur	w8, [x29, #-8]
	bl	__ZNSt3__1lsB6v15006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_RKNS_8__iom_t5E
	adrp	x1, __ZNSt3__14leftERNS_8ios_baseE@GOTPAGE
	ldr	x1, [x1, __ZNSt3__14leftERNS_8ios_baseE@GOTPAGEOFF]
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsB6v15006EPFRNS_8ios_baseES5_E
	mov	x8, #1
	stur	x8, [x29, #-16]
	b	LBB1_1
LBB1_1:                                 ; =>This Inner Loop Header: Depth=1
	ldur	x8, [x29, #-16]
	mov	x9, #51712
	movk	x9, #15258, lsl #16
	subs	x8, x8, x9
	cset	w8, hs
	tbnz	w8, #0, LBB1_4
	b	LBB1_2
LBB1_2:                                 ;   in Loop: Header=BB1_1 Depth=1
	bl	__ZNSt3__16chrono12steady_clock3nowEv
	sub	x8, x29, #24
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	stur	x0, [x29, #-24]
	ldur	x8, [x29, #-16]
	mov	x0, x8
	bl	__Z9factoriali
	bl	__ZNSt3__16chrono12steady_clock3nowEv
	ldr	x1, [sp, #8]                    ; 8-byte Folded Reload
	mov	x8, x0
	sub	x0, x29, #32
	str	x0, [sp, #16]                   ; 8-byte Folded Spill
	stur	x8, [x29, #-32]
	bl	__ZNSt3__16chronomiB6v15006INS0_12steady_clockENS0_8durationIxNS_5ratioILl1ELl1000000000EEEEES6_EENS_11common_typeIJT0_T1_EE4typeERKNS0_10time_pointIT_S8_EERKNSC_ISD_S9_EE
	mov	x8, x0
	sub	x0, x29, #48
	stur	x8, [x29, #-48]
	bl	__ZNSt3__16chrono13duration_castB6v15006INS0_8durationIxNS_5ratioILl1ELl1000000000EEEEExS4_EENS_9enable_ifIXsr13__is_durationIT_EE5valueES7_E4typeERKNS2_IT0_T1_EE
	ldr	x1, [sp, #8]                    ; 8-byte Folded Reload
	mov	x8, x0
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	stur	x8, [x29, #-40]
	bl	__ZNSt3__16chronomiB6v15006INS0_12steady_clockENS0_8durationIxNS_5ratioILl1ELl1000000000EEEEES6_EENS_11common_typeIJT0_T1_EE4typeERKNS0_10time_pointIT_S8_EERKNSC_ISD_S9_EE
	add	x1, sp, #64
	str	x0, [sp, #64]
	sub	x0, x29, #56
	str	x0, [sp, #32]                   ; 8-byte Folded Spill
	mov	x2, #0
	bl	__ZNSt3__16chrono8durationIdNS_5ratioILl1ELl1EEEEC1B6v15006IxNS2_ILl1ELl1000000000EEEEERKNS1_IT_T0_EEPNS_9enable_ifIXaasr13__no_overflowIS8_S3_EE5valueooL_ZNS_17integral_constantIbLb1EE5valueEEaaeqsr13__no_overflowIS8_S3_E4typeE3denLi1Entsr23treat_as_floating_pointIS7_EE5valueEvE4typeE
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
	adrp	x1, l_.str.1@PAGE
	add	x1, x1, l_.str.1@PAGEOFF
	bl	__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	str	x0, [sp, #24]                   ; 8-byte Folded Spill
	mov	w0, #9
	bl	__ZNSt3__14setwB6v15006Ei
	mov	x8, x0
	ldr	x0, [sp, #24]                   ; 8-byte Folded Reload
	add	x1, sp, #60
	str	w8, [sp, #60]
	bl	__ZNSt3__1lsB6v15006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_RKNS_8__iom_t6E
	ldur	x1, [x29, #-16]
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEm
	adrp	x1, l_.str.2@PAGE
	add	x1, x1, l_.str.2@PAGEOFF
	bl	__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	mov	x1, x0
	ldr	x0, [sp, #32]                   ; 8-byte Folded Reload
	str	x1, [sp, #40]                   ; 8-byte Folded Spill
	bl	__ZNKSt3__16chrono8durationIdNS_5ratioILl1ELl1EEEE5countB6v15006Ev
	ldr	x0, [sp, #40]                   ; 8-byte Folded Reload
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEd
	adrp	x1, l_.str.3@PAGE
	add	x1, x1, l_.str.3@PAGEOFF
	bl	__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	b	LBB1_3
LBB1_3:                                 ;   in Loop: Header=BB1_1 Depth=1
	ldur	x8, [x29, #-16]
	mov	x9, #10
	mul	x8, x8, x9
	stur	x8, [x29, #-16]
	b	LBB1_1
LBB1_4:
	mov	w0, #0
	ldp	x29, x30, [sp, #128]            ; 16-byte Folded Reload
	add	sp, sp, #144
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__1lsB6v15006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_RKNS_8__iom_t5E ; -- Begin function _ZNSt3__1lsB6v15006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_RKNS_8__iom_t5E
	.globl	__ZNSt3__1lsB6v15006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_RKNS_8__iom_t5E
	.weak_definition	__ZNSt3__1lsB6v15006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_RKNS_8__iom_t5E
	.p2align	2
__ZNSt3__1lsB6v15006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_RKNS_8__iom_t5E: ; @_ZNSt3__1lsB6v15006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_RKNS_8__iom_t5E
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x8, [sp, #8]
	ldr	x9, [x8]
	ldur	x9, [x9, #-24]
	ldr	x10, [sp]
	ldrsw	x1, [x10]
	add	x0, x8, x9
	bl	__ZNSt3__18ios_base9precisionB6v15006El
	ldr	x0, [sp, #8]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsB6v15006EPFRNS_8ios_baseES5_E ; -- Begin function _ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsB6v15006EPFRNS_8ios_baseES5_E
	.globl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsB6v15006EPFRNS_8ios_baseES5_E
	.weak_definition	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsB6v15006EPFRNS_8ios_baseES5_E
	.p2align	2
__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsB6v15006EPFRNS_8ios_baseES5_E: ; @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsB6v15006EPFRNS_8ios_baseES5_E
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x9, [x29, #-8]
	str	x9, [sp, #8]                    ; 8-byte Folded Spill
	ldr	x8, [sp, #16]
	ldr	x10, [x9]
	ldur	x10, [x10, #-24]
	add	x0, x9, x10
	blr	x8
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__15fixedERNS_8ios_baseE ; -- Begin function _ZNSt3__15fixedERNS_8ios_baseE
	.weak_definition	__ZNSt3__15fixedERNS_8ios_baseE
	.p2align	2
__ZNSt3__15fixedERNS_8ios_baseE:        ; @_ZNSt3__15fixedERNS_8ios_baseE
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	mov	w1, #4
	mov	w2, #260
	bl	__ZNSt3__18ios_base4setfB6v15006Ejj
	ldr	x0, [sp, #8]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__112setprecisionB6v15006Ei ; -- Begin function _ZNSt3__112setprecisionB6v15006Ei
	.globl	__ZNSt3__112setprecisionB6v15006Ei
	.weak_definition	__ZNSt3__112setprecisionB6v15006Ei
	.p2align	2
__ZNSt3__112setprecisionB6v15006Ei:     ; @_ZNSt3__112setprecisionB6v15006Ei
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	w0, [sp, #8]
	ldr	w1, [sp, #8]
	sub	x0, x29, #4
	bl	__ZNSt3__18__iom_t5C1B6v15006Ei
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__14leftERNS_8ios_baseE  ; -- Begin function _ZNSt3__14leftERNS_8ios_baseE
	.weak_definition	__ZNSt3__14leftERNS_8ios_baseE
	.p2align	2
__ZNSt3__14leftERNS_8ios_baseE:         ; @_ZNSt3__14leftERNS_8ios_baseE
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	mov	w1, #32
	mov	w2, #176
	bl	__ZNSt3__18ios_base4setfB6v15006Ejj
	ldr	x0, [sp, #8]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16chrono13duration_castB6v15006INS0_8durationIxNS_5ratioILl1ELl1000000000EEEEExS4_EENS_9enable_ifIXsr13__is_durationIT_EE5valueES7_E4typeERKNS2_IT0_T1_EE ; -- Begin function _ZNSt3__16chrono13duration_castB6v15006INS0_8durationIxNS_5ratioILl1ELl1000000000EEEEExS4_EENS_9enable_ifIXsr13__is_durationIT_EE5valueES7_E4typeERKNS2_IT0_T1_EE
	.globl	__ZNSt3__16chrono13duration_castB6v15006INS0_8durationIxNS_5ratioILl1ELl1000000000EEEEExS4_EENS_9enable_ifIXsr13__is_durationIT_EE5valueES7_E4typeERKNS2_IT0_T1_EE
	.weak_definition	__ZNSt3__16chrono13duration_castB6v15006INS0_8durationIxNS_5ratioILl1ELl1000000000EEEEExS4_EENS_9enable_ifIXsr13__is_durationIT_EE5valueES7_E4typeERKNS2_IT0_T1_EE
	.p2align	2
__ZNSt3__16chrono13duration_castB6v15006INS0_8durationIxNS_5ratioILl1ELl1000000000EEEEExS4_EENS_9enable_ifIXsr13__is_durationIT_EE5valueES7_E4typeERKNS2_IT0_T1_EE: ; @_ZNSt3__16chrono13duration_castB6v15006INS0_8durationIxNS_5ratioILl1ELl1000000000EEEEExS4_EENS_9enable_ifIXsr13__is_durationIT_EE5valueES7_E4typeERKNS2_IT0_T1_EE
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #16]
	ldr	x1, [sp, #16]
	add	x0, sp, #15
	bl	__ZNKSt3__16chrono15__duration_castINS0_8durationIxNS_5ratioILl1ELl1000000000EEEEES5_NS3_ILl1ELl1EEELb1ELb1EEclB6v15006ERKS5_
	stur	x0, [x29, #-8]
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16chronomiB6v15006INS0_12steady_clockENS0_8durationIxNS_5ratioILl1ELl1000000000EEEEES6_EENS_11common_typeIJT0_T1_EE4typeERKNS0_10time_pointIT_S8_EERKNSC_ISD_S9_EE ; -- Begin function _ZNSt3__16chronomiB6v15006INS0_12steady_clockENS0_8durationIxNS_5ratioILl1ELl1000000000EEEEES6_EENS_11common_typeIJT0_T1_EE4typeERKNS0_10time_pointIT_S8_EERKNSC_ISD_S9_EE
	.globl	__ZNSt3__16chronomiB6v15006INS0_12steady_clockENS0_8durationIxNS_5ratioILl1ELl1000000000EEEEES6_EENS_11common_typeIJT0_T1_EE4typeERKNS0_10time_pointIT_S8_EERKNSC_ISD_S9_EE
	.weak_definition	__ZNSt3__16chronomiB6v15006INS0_12steady_clockENS0_8durationIxNS_5ratioILl1ELl1000000000EEEEES6_EENS_11common_typeIJT0_T1_EE4typeERKNS0_10time_pointIT_S8_EERKNSC_ISD_S9_EE
	.p2align	2
__ZNSt3__16chronomiB6v15006INS0_12steady_clockENS0_8durationIxNS_5ratioILl1ELl1000000000EEEEES6_EENS_11common_typeIJT0_T1_EE4typeERKNS0_10time_pointIT_S8_EERKNSC_ISD_S9_EE: ; @_ZNSt3__16chronomiB6v15006INS0_12steady_clockENS0_8durationIxNS_5ratioILl1ELl1000000000EEEEES6_EENS_11common_typeIJT0_T1_EE4typeERKNS0_10time_pointIT_S8_EERKNSC_ISD_S9_EE
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-16]
	str	x1, [sp, #24]
	ldur	x0, [x29, #-16]
	bl	__ZNKSt3__16chrono10time_pointINS0_12steady_clockENS0_8durationIxNS_5ratioILl1ELl1000000000EEEEEE16time_since_epochB6v15006Ev
	add	x8, sp, #16
	str	x8, [sp]                        ; 8-byte Folded Spill
	str	x0, [sp, #16]
	ldr	x0, [sp, #24]
	bl	__ZNKSt3__16chrono10time_pointINS0_12steady_clockENS0_8durationIxNS_5ratioILl1ELl1000000000EEEEEE16time_since_epochB6v15006Ev
	mov	x8, x0
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	add	x1, sp, #8
	str	x8, [sp, #8]
	bl	__ZNSt3__16chronomiB6v15006IxNS_5ratioILl1ELl1000000000EEExS3_EENS_11common_typeIJNS0_8durationIT_T0_EENS5_IT1_T2_EEEE4typeERKS8_RKSB_
	stur	x0, [x29, #-8]
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__16chrono8durationIdNS_5ratioILl1ELl1EEEEC1B6v15006IxNS2_ILl1ELl1000000000EEEEERKNS1_IT_T0_EEPNS_9enable_ifIXaasr13__no_overflowIS8_S3_EE5valueooL_ZNS_17integral_constantIbLb1EE5valueEEaaeqsr13__no_overflowIS8_S3_E4typeE3denLi1Entsr23treat_as_floating_pointIS7_EE5valueEvE4typeE ; -- Begin function _ZNSt3__16chrono8durationIdNS_5ratioILl1ELl1EEEEC1B6v15006IxNS2_ILl1ELl1000000000EEEEERKNS1_IT_T0_EEPNS_9enable_ifIXaasr13__no_overflowIS8_S3_EE5valueooL_ZNS_17integral_constantIbLb1EE5valueEEaaeqsr13__no_overflowIS8_S3_E4typeE3denLi1Entsr23treat_as_floating_pointIS7_EE5valueEvE4typeE
	.weak_def_can_be_hidden	__ZNSt3__16chrono8durationIdNS_5ratioILl1ELl1EEEEC1B6v15006IxNS2_ILl1ELl1000000000EEEEERKNS1_IT_T0_EEPNS_9enable_ifIXaasr13__no_overflowIS8_S3_EE5valueooL_ZNS_17integral_constantIbLb1EE5valueEEaaeqsr13__no_overflowIS8_S3_E4typeE3denLi1Entsr23treat_as_floating_pointIS7_EE5valueEvE4typeE
	.p2align	2
__ZNSt3__16chrono8durationIdNS_5ratioILl1ELl1EEEEC1B6v15006IxNS2_ILl1ELl1000000000EEEEERKNS1_IT_T0_EEPNS_9enable_ifIXaasr13__no_overflowIS8_S3_EE5valueooL_ZNS_17integral_constantIbLb1EE5valueEEaaeqsr13__no_overflowIS8_S3_E4typeE3denLi1Entsr23treat_as_floating_pointIS7_EE5valueEvE4typeE: ; @_ZNSt3__16chrono8durationIdNS_5ratioILl1ELl1EEEEC1B6v15006IxNS2_ILl1ELl1000000000EEEEERKNS1_IT_T0_EEPNS_9enable_ifIXaasr13__no_overflowIS8_S3_EE5valueooL_ZNS_17integral_constantIbLb1EE5valueEEaaeqsr13__no_overflowIS8_S3_E4typeE3denLi1Entsr23treat_as_floating_pointIS7_EE5valueEvE4typeE
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldur	x0, [x29, #-8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	ldr	x1, [sp, #16]
	ldr	x2, [sp, #8]
	bl	__ZNSt3__16chrono8durationIdNS_5ratioILl1ELl1EEEEC2B6v15006IxNS2_ILl1ELl1000000000EEEEERKNS1_IT_T0_EEPNS_9enable_ifIXaasr13__no_overflowIS8_S3_EE5valueooL_ZNS_17integral_constantIbLb1EE5valueEEaaeqsr13__no_overflowIS8_S3_E4typeE3denLi1Entsr23treat_as_floating_pointIS7_EE5valueEvE4typeE
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc ; -- Begin function _ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	.weak_definition	__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	.p2align	2
__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc: ; @_ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x8, [x29, #-8]
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	ldr	x8, [sp, #16]
	str	x8, [sp]                        ; 8-byte Folded Spill
	ldr	x0, [sp, #16]
	bl	__ZNSt3__111char_traitsIcE6lengthEPKc
	ldr	x1, [sp]                        ; 8-byte Folded Reload
	mov	x2, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	bl	__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__1lsB6v15006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_RKNS_8__iom_t6E ; -- Begin function _ZNSt3__1lsB6v15006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_RKNS_8__iom_t6E
	.globl	__ZNSt3__1lsB6v15006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_RKNS_8__iom_t6E
	.weak_definition	__ZNSt3__1lsB6v15006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_RKNS_8__iom_t6E
	.p2align	2
__ZNSt3__1lsB6v15006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_RKNS_8__iom_t6E: ; @_ZNSt3__1lsB6v15006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_RKNS_8__iom_t6E
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x8, [sp, #8]
	ldr	x9, [x8]
	ldur	x9, [x9, #-24]
	ldr	x10, [sp]
	ldrsw	x1, [x10]
	add	x0, x8, x9
	bl	__ZNSt3__18ios_base5widthB6v15006El
	ldr	x0, [sp, #8]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__14setwB6v15006Ei ; -- Begin function _ZNSt3__14setwB6v15006Ei
	.globl	__ZNSt3__14setwB6v15006Ei
	.weak_definition	__ZNSt3__14setwB6v15006Ei
	.p2align	2
__ZNSt3__14setwB6v15006Ei:              ; @_ZNSt3__14setwB6v15006Ei
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	w0, [sp, #8]
	ldr	w1, [sp, #8]
	sub	x0, x29, #4
	bl	__ZNSt3__18__iom_t6C1B6v15006Ei
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__16chrono8durationIdNS_5ratioILl1ELl1EEEE5countB6v15006Ev ; -- Begin function _ZNKSt3__16chrono8durationIdNS_5ratioILl1ELl1EEEE5countB6v15006Ev
	.globl	__ZNKSt3__16chrono8durationIdNS_5ratioILl1ELl1EEEE5countB6v15006Ev
	.weak_definition	__ZNKSt3__16chrono8durationIdNS_5ratioILl1ELl1EEEE5countB6v15006Ev
	.p2align	2
__ZNKSt3__16chrono8durationIdNS_5ratioILl1ELl1EEEE5countB6v15006Ev: ; @_ZNKSt3__16chrono8durationIdNS_5ratioILl1ELl1EEEE5countB6v15006Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	d0, [x8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__18ios_base4setfB6v15006Ejj ; -- Begin function _ZNSt3__18ios_base4setfB6v15006Ejj
	.globl	__ZNSt3__18ios_base4setfB6v15006Ejj
	.weak_definition	__ZNSt3__18ios_base4setfB6v15006Ejj
	.p2align	2
__ZNSt3__18ios_base4setfB6v15006Ejj:    ; @_ZNSt3__18ios_base4setfB6v15006Ejj
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	w1, [x29, #-12]
	str	w2, [sp, #16]
	ldur	x0, [x29, #-8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	ldr	w8, [x0, #8]
	str	w8, [sp, #12]
	ldr	w1, [sp, #16]
	bl	__ZNSt3__18ios_base6unsetfB6v15006Ej
	ldr	x9, [sp]                        ; 8-byte Folded Reload
	ldur	w8, [x29, #-12]
	ldr	w10, [sp, #16]
	and	w10, w8, w10
	ldr	w8, [x9, #8]
	orr	w8, w8, w10
	str	w8, [x9, #8]
	ldr	w0, [sp, #12]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__18ios_base6unsetfB6v15006Ej ; -- Begin function _ZNSt3__18ios_base6unsetfB6v15006Ej
	.globl	__ZNSt3__18ios_base6unsetfB6v15006Ej
	.weak_definition	__ZNSt3__18ios_base6unsetfB6v15006Ej
	.p2align	2
__ZNSt3__18ios_base6unsetfB6v15006Ej:   ; @_ZNSt3__18ios_base6unsetfB6v15006Ej
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	str	w1, [sp, #4]
	ldr	x9, [sp, #8]
	ldr	w10, [sp, #4]
	ldr	w8, [x9, #8]
	bic	w8, w8, w10
	str	w8, [x9, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__18__iom_t5C1B6v15006Ei ; -- Begin function _ZNSt3__18__iom_t5C1B6v15006Ei
	.globl	__ZNSt3__18__iom_t5C1B6v15006Ei
	.weak_def_can_be_hidden	__ZNSt3__18__iom_t5C1B6v15006Ei
	.p2align	2
__ZNSt3__18__iom_t5C1B6v15006Ei:        ; @_ZNSt3__18__iom_t5C1B6v15006Ei
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	w1, [x29, #-12]
	ldur	x0, [x29, #-8]
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	ldur	w1, [x29, #-12]
	bl	__ZNSt3__18__iom_t5C2B6v15006Ei
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__18__iom_t5C2B6v15006Ei ; -- Begin function _ZNSt3__18__iom_t5C2B6v15006Ei
	.globl	__ZNSt3__18__iom_t5C2B6v15006Ei
	.weak_def_can_be_hidden	__ZNSt3__18__iom_t5C2B6v15006Ei
	.p2align	2
__ZNSt3__18__iom_t5C2B6v15006Ei:        ; @_ZNSt3__18__iom_t5C2B6v15006Ei
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	str	w1, [sp, #4]
	ldr	x0, [sp, #8]
	ldr	w8, [sp, #4]
	str	w8, [x0]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__16chrono15__duration_castINS0_8durationIxNS_5ratioILl1ELl1000000000EEEEES5_NS3_ILl1ELl1EEELb1ELb1EEclB6v15006ERKS5_ ; -- Begin function _ZNKSt3__16chrono15__duration_castINS0_8durationIxNS_5ratioILl1ELl1000000000EEEEES5_NS3_ILl1ELl1EEELb1ELb1EEclB6v15006ERKS5_
	.globl	__ZNKSt3__16chrono15__duration_castINS0_8durationIxNS_5ratioILl1ELl1000000000EEEEES5_NS3_ILl1ELl1EEELb1ELb1EEclB6v15006ERKS5_
	.weak_definition	__ZNKSt3__16chrono15__duration_castINS0_8durationIxNS_5ratioILl1ELl1000000000EEEEES5_NS3_ILl1ELl1EEELb1ELb1EEclB6v15006ERKS5_
	.p2align	2
__ZNKSt3__16chrono15__duration_castINS0_8durationIxNS_5ratioILl1ELl1000000000EEEEES5_NS3_ILl1ELl1EEELb1ELb1EEclB6v15006ERKS5_: ; @_ZNKSt3__16chrono15__duration_castINS0_8durationIxNS_5ratioILl1ELl1000000000EEEEES5_NS3_ILl1ELl1EEELb1ELb1EEclB6v15006ERKS5_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #16]
	str	x1, [sp, #8]
	ldr	x0, [sp, #8]
	bl	__ZNKSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEE5countB6v15006Ev
	mov	x1, sp
	str	x0, [sp]
	sub	x0, x29, #8
	mov	x2, #0
	bl	__ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEEC1B6v15006IxEERKT_PNS_9enable_ifIXaasr14is_convertibleIS8_xEE5valueooL_ZNS_17integral_constantIbLb0EE5valueEEntsr23treat_as_floating_pointIS6_EE5valueEvE4typeE
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEE5countB6v15006Ev ; -- Begin function _ZNKSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEE5countB6v15006Ev
	.globl	__ZNKSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEE5countB6v15006Ev
	.weak_definition	__ZNKSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEE5countB6v15006Ev
	.p2align	2
__ZNKSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEE5countB6v15006Ev: ; @_ZNKSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEE5countB6v15006Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	x0, [x8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEEC1B6v15006IxEERKT_PNS_9enable_ifIXaasr14is_convertibleIS8_xEE5valueooL_ZNS_17integral_constantIbLb0EE5valueEEntsr23treat_as_floating_pointIS6_EE5valueEvE4typeE ; -- Begin function _ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEEC1B6v15006IxEERKT_PNS_9enable_ifIXaasr14is_convertibleIS8_xEE5valueooL_ZNS_17integral_constantIbLb0EE5valueEEntsr23treat_as_floating_pointIS6_EE5valueEvE4typeE
	.weak_def_can_be_hidden	__ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEEC1B6v15006IxEERKT_PNS_9enable_ifIXaasr14is_convertibleIS8_xEE5valueooL_ZNS_17integral_constantIbLb0EE5valueEEntsr23treat_as_floating_pointIS6_EE5valueEvE4typeE
	.p2align	2
__ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEEC1B6v15006IxEERKT_PNS_9enable_ifIXaasr14is_convertibleIS8_xEE5valueooL_ZNS_17integral_constantIbLb0EE5valueEEntsr23treat_as_floating_pointIS6_EE5valueEvE4typeE: ; @_ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEEC1B6v15006IxEERKT_PNS_9enable_ifIXaasr14is_convertibleIS8_xEE5valueooL_ZNS_17integral_constantIbLb0EE5valueEEntsr23treat_as_floating_pointIS6_EE5valueEvE4typeE
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldur	x0, [x29, #-8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	ldr	x1, [sp, #16]
	ldr	x2, [sp, #8]
	bl	__ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEEC2B6v15006IxEERKT_PNS_9enable_ifIXaasr14is_convertibleIS8_xEE5valueooL_ZNS_17integral_constantIbLb0EE5valueEEntsr23treat_as_floating_pointIS6_EE5valueEvE4typeE
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEEC2B6v15006IxEERKT_PNS_9enable_ifIXaasr14is_convertibleIS8_xEE5valueooL_ZNS_17integral_constantIbLb0EE5valueEEntsr23treat_as_floating_pointIS6_EE5valueEvE4typeE ; -- Begin function _ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEEC2B6v15006IxEERKT_PNS_9enable_ifIXaasr14is_convertibleIS8_xEE5valueooL_ZNS_17integral_constantIbLb0EE5valueEEntsr23treat_as_floating_pointIS6_EE5valueEvE4typeE
	.weak_def_can_be_hidden	__ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEEC2B6v15006IxEERKT_PNS_9enable_ifIXaasr14is_convertibleIS8_xEE5valueooL_ZNS_17integral_constantIbLb0EE5valueEEntsr23treat_as_floating_pointIS6_EE5valueEvE4typeE
	.p2align	2
__ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEEC2B6v15006IxEERKT_PNS_9enable_ifIXaasr14is_convertibleIS8_xEE5valueooL_ZNS_17integral_constantIbLb0EE5valueEEntsr23treat_as_floating_pointIS6_EE5valueEvE4typeE: ; @_ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEEC2B6v15006IxEERKT_PNS_9enable_ifIXaasr14is_convertibleIS8_xEE5valueooL_ZNS_17integral_constantIbLb0EE5valueEEntsr23treat_as_floating_pointIS6_EE5valueEvE4typeE
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, #24]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldr	x0, [sp, #24]
	ldr	x8, [sp, #16]
	ldr	x8, [x8]
	str	x8, [x0]
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__16chrono8durationIdNS_5ratioILl1ELl1EEEEC2B6v15006IxNS2_ILl1ELl1000000000EEEEERKNS1_IT_T0_EEPNS_9enable_ifIXaasr13__no_overflowIS8_S3_EE5valueooL_ZNS_17integral_constantIbLb1EE5valueEEaaeqsr13__no_overflowIS8_S3_E4typeE3denLi1Entsr23treat_as_floating_pointIS7_EE5valueEvE4typeE ; -- Begin function _ZNSt3__16chrono8durationIdNS_5ratioILl1ELl1EEEEC2B6v15006IxNS2_ILl1ELl1000000000EEEEERKNS1_IT_T0_EEPNS_9enable_ifIXaasr13__no_overflowIS8_S3_EE5valueooL_ZNS_17integral_constantIbLb1EE5valueEEaaeqsr13__no_overflowIS8_S3_E4typeE3denLi1Entsr23treat_as_floating_pointIS7_EE5valueEvE4typeE
	.weak_def_can_be_hidden	__ZNSt3__16chrono8durationIdNS_5ratioILl1ELl1EEEEC2B6v15006IxNS2_ILl1ELl1000000000EEEEERKNS1_IT_T0_EEPNS_9enable_ifIXaasr13__no_overflowIS8_S3_EE5valueooL_ZNS_17integral_constantIbLb1EE5valueEEaaeqsr13__no_overflowIS8_S3_E4typeE3denLi1Entsr23treat_as_floating_pointIS7_EE5valueEvE4typeE
	.p2align	2
__ZNSt3__16chrono8durationIdNS_5ratioILl1ELl1EEEEC2B6v15006IxNS2_ILl1ELl1000000000EEEEERKNS1_IT_T0_EEPNS_9enable_ifIXaasr13__no_overflowIS8_S3_EE5valueooL_ZNS_17integral_constantIbLb1EE5valueEEaaeqsr13__no_overflowIS8_S3_E4typeE3denLi1Entsr23treat_as_floating_pointIS7_EE5valueEvE4typeE: ; @_ZNSt3__16chrono8durationIdNS_5ratioILl1ELl1EEEEC2B6v15006IxNS2_ILl1ELl1000000000EEEEERKNS1_IT_T0_EEPNS_9enable_ifIXaasr13__no_overflowIS8_S3_EE5valueooL_ZNS_17integral_constantIbLb1EE5valueEEaaeqsr13__no_overflowIS8_S3_E4typeE3denLi1Entsr23treat_as_floating_pointIS7_EE5valueEvE4typeE
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	str	x2, [sp, #24]
	ldur	x8, [x29, #-8]
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	ldur	x0, [x29, #-16]
	bl	__ZNSt3__16chrono13duration_castB6v15006INS0_8durationIdNS_5ratioILl1ELl1EEEEExNS3_ILl1ELl1000000000EEEEENS_9enable_ifIXsr13__is_durationIT_EE5valueES8_E4typeERKNS2_IT0_T1_EE
	add	x0, sp, #16
	str	d0, [sp, #16]
	bl	__ZNKSt3__16chrono8durationIdNS_5ratioILl1ELl1EEEE5countB6v15006Ev
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	str	d0, [x0]
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16chrono13duration_castB6v15006INS0_8durationIdNS_5ratioILl1ELl1EEEEExNS3_ILl1ELl1000000000EEEEENS_9enable_ifIXsr13__is_durationIT_EE5valueES8_E4typeERKNS2_IT0_T1_EE ; -- Begin function _ZNSt3__16chrono13duration_castB6v15006INS0_8durationIdNS_5ratioILl1ELl1EEEEExNS3_ILl1ELl1000000000EEEEENS_9enable_ifIXsr13__is_durationIT_EE5valueES8_E4typeERKNS2_IT0_T1_EE
	.globl	__ZNSt3__16chrono13duration_castB6v15006INS0_8durationIdNS_5ratioILl1ELl1EEEEExNS3_ILl1ELl1000000000EEEEENS_9enable_ifIXsr13__is_durationIT_EE5valueES8_E4typeERKNS2_IT0_T1_EE
	.weak_definition	__ZNSt3__16chrono13duration_castB6v15006INS0_8durationIdNS_5ratioILl1ELl1EEEEExNS3_ILl1ELl1000000000EEEEENS_9enable_ifIXsr13__is_durationIT_EE5valueES8_E4typeERKNS2_IT0_T1_EE
	.p2align	2
__ZNSt3__16chrono13duration_castB6v15006INS0_8durationIdNS_5ratioILl1ELl1EEEEExNS3_ILl1ELl1000000000EEEEENS_9enable_ifIXsr13__is_durationIT_EE5valueES8_E4typeERKNS2_IT0_T1_EE: ; @_ZNSt3__16chrono13duration_castB6v15006INS0_8durationIdNS_5ratioILl1ELl1EEEEExNS3_ILl1ELl1000000000EEEEENS_9enable_ifIXsr13__is_durationIT_EE5valueES8_E4typeERKNS2_IT0_T1_EE
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #16]
	ldr	x1, [sp, #16]
	add	x0, sp, #15
	bl	__ZNKSt3__16chrono15__duration_castINS0_8durationIxNS_5ratioILl1ELl1000000000EEEEENS2_IdNS3_ILl1ELl1EEEEES4_Lb1ELb0EEclB6v15006ERKS5_
	stur	d0, [x29, #-8]
	ldur	d0, [x29, #-8]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__literal8,8byte_literals
	.p2align	3                               ; -- Begin function _ZNKSt3__16chrono15__duration_castINS0_8durationIxNS_5ratioILl1ELl1000000000EEEEENS2_IdNS3_ILl1ELl1EEEEES4_Lb1ELb0EEclB6v15006ERKS5_
lCPI24_0:
	.quad	0x41cdcd6500000000              ; double 1.0E+9
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNKSt3__16chrono15__duration_castINS0_8durationIxNS_5ratioILl1ELl1000000000EEEEENS2_IdNS3_ILl1ELl1EEEEES4_Lb1ELb0EEclB6v15006ERKS5_
	.globl	__ZNKSt3__16chrono15__duration_castINS0_8durationIxNS_5ratioILl1ELl1000000000EEEEENS2_IdNS3_ILl1ELl1EEEEES4_Lb1ELb0EEclB6v15006ERKS5_
	.weak_definition	__ZNKSt3__16chrono15__duration_castINS0_8durationIxNS_5ratioILl1ELl1000000000EEEEENS2_IdNS3_ILl1ELl1EEEEES4_Lb1ELb0EEclB6v15006ERKS5_
	.p2align	2
__ZNKSt3__16chrono15__duration_castINS0_8durationIxNS_5ratioILl1ELl1000000000EEEEENS2_IdNS3_ILl1ELl1EEEEES4_Lb1ELb0EEclB6v15006ERKS5_: ; @_ZNKSt3__16chrono15__duration_castINS0_8durationIxNS_5ratioILl1ELl1000000000EEEEENS2_IdNS3_ILl1ELl1EEEEES4_Lb1ELb0EEclB6v15006ERKS5_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #16]
	str	x1, [sp, #8]
	ldr	x0, [sp, #8]
	bl	__ZNKSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEE5countB6v15006Ev
	scvtf	d0, x0
	adrp	x8, lCPI24_0@PAGE
	ldr	d1, [x8, lCPI24_0@PAGEOFF]
	fdiv	d0, d0, d1
	mov	x1, sp
	str	d0, [sp]
	sub	x0, x29, #8
	mov	x2, #0
	bl	__ZNSt3__16chrono8durationIdNS_5ratioILl1ELl1EEEEC1B6v15006IdEERKT_PNS_9enable_ifIXaasr14is_convertibleIS8_dEE5valueooL_ZNS_17integral_constantIbLb1EE5valueEEntsr23treat_as_floating_pointIS6_EE5valueEvE4typeE
	ldur	d0, [x29, #-8]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__16chrono8durationIdNS_5ratioILl1ELl1EEEEC1B6v15006IdEERKT_PNS_9enable_ifIXaasr14is_convertibleIS8_dEE5valueooL_ZNS_17integral_constantIbLb1EE5valueEEntsr23treat_as_floating_pointIS6_EE5valueEvE4typeE ; -- Begin function _ZNSt3__16chrono8durationIdNS_5ratioILl1ELl1EEEEC1B6v15006IdEERKT_PNS_9enable_ifIXaasr14is_convertibleIS8_dEE5valueooL_ZNS_17integral_constantIbLb1EE5valueEEntsr23treat_as_floating_pointIS6_EE5valueEvE4typeE
	.weak_def_can_be_hidden	__ZNSt3__16chrono8durationIdNS_5ratioILl1ELl1EEEEC1B6v15006IdEERKT_PNS_9enable_ifIXaasr14is_convertibleIS8_dEE5valueooL_ZNS_17integral_constantIbLb1EE5valueEEntsr23treat_as_floating_pointIS6_EE5valueEvE4typeE
	.p2align	2
__ZNSt3__16chrono8durationIdNS_5ratioILl1ELl1EEEEC1B6v15006IdEERKT_PNS_9enable_ifIXaasr14is_convertibleIS8_dEE5valueooL_ZNS_17integral_constantIbLb1EE5valueEEntsr23treat_as_floating_pointIS6_EE5valueEvE4typeE: ; @_ZNSt3__16chrono8durationIdNS_5ratioILl1ELl1EEEEC1B6v15006IdEERKT_PNS_9enable_ifIXaasr14is_convertibleIS8_dEE5valueooL_ZNS_17integral_constantIbLb1EE5valueEEntsr23treat_as_floating_pointIS6_EE5valueEvE4typeE
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldur	x0, [x29, #-8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	ldr	x1, [sp, #16]
	ldr	x2, [sp, #8]
	bl	__ZNSt3__16chrono8durationIdNS_5ratioILl1ELl1EEEEC2B6v15006IdEERKT_PNS_9enable_ifIXaasr14is_convertibleIS8_dEE5valueooL_ZNS_17integral_constantIbLb1EE5valueEEntsr23treat_as_floating_pointIS6_EE5valueEvE4typeE
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__16chrono8durationIdNS_5ratioILl1ELl1EEEEC2B6v15006IdEERKT_PNS_9enable_ifIXaasr14is_convertibleIS8_dEE5valueooL_ZNS_17integral_constantIbLb1EE5valueEEntsr23treat_as_floating_pointIS6_EE5valueEvE4typeE ; -- Begin function _ZNSt3__16chrono8durationIdNS_5ratioILl1ELl1EEEEC2B6v15006IdEERKT_PNS_9enable_ifIXaasr14is_convertibleIS8_dEE5valueooL_ZNS_17integral_constantIbLb1EE5valueEEntsr23treat_as_floating_pointIS6_EE5valueEvE4typeE
	.weak_def_can_be_hidden	__ZNSt3__16chrono8durationIdNS_5ratioILl1ELl1EEEEC2B6v15006IdEERKT_PNS_9enable_ifIXaasr14is_convertibleIS8_dEE5valueooL_ZNS_17integral_constantIbLb1EE5valueEEntsr23treat_as_floating_pointIS6_EE5valueEvE4typeE
	.p2align	2
__ZNSt3__16chrono8durationIdNS_5ratioILl1ELl1EEEEC2B6v15006IdEERKT_PNS_9enable_ifIXaasr14is_convertibleIS8_dEE5valueooL_ZNS_17integral_constantIbLb1EE5valueEEntsr23treat_as_floating_pointIS6_EE5valueEvE4typeE: ; @_ZNSt3__16chrono8durationIdNS_5ratioILl1ELl1EEEEC2B6v15006IdEERKT_PNS_9enable_ifIXaasr14is_convertibleIS8_dEE5valueooL_ZNS_17integral_constantIbLb1EE5valueEEntsr23treat_as_floating_pointIS6_EE5valueEvE4typeE
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, #24]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldr	x0, [sp, #24]
	ldr	x8, [sp, #16]
	ldr	d0, [x8]
	str	d0, [x0]
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__18__iom_t6C1B6v15006Ei ; -- Begin function _ZNSt3__18__iom_t6C1B6v15006Ei
	.globl	__ZNSt3__18__iom_t6C1B6v15006Ei
	.weak_def_can_be_hidden	__ZNSt3__18__iom_t6C1B6v15006Ei
	.p2align	2
__ZNSt3__18__iom_t6C1B6v15006Ei:        ; @_ZNSt3__18__iom_t6C1B6v15006Ei
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	w1, [x29, #-12]
	ldur	x0, [x29, #-8]
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	ldur	w1, [x29, #-12]
	bl	__ZNSt3__18__iom_t6C2B6v15006Ei
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__18__iom_t6C2B6v15006Ei ; -- Begin function _ZNSt3__18__iom_t6C2B6v15006Ei
	.globl	__ZNSt3__18__iom_t6C2B6v15006Ei
	.weak_def_can_be_hidden	__ZNSt3__18__iom_t6C2B6v15006Ei
	.p2align	2
__ZNSt3__18__iom_t6C2B6v15006Ei:        ; @_ZNSt3__18__iom_t6C2B6v15006Ei
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	str	w1, [sp, #4]
	ldr	x0, [sp, #8]
	ldr	w8, [sp, #4]
	str	w8, [x0]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__18ios_base9precisionB6v15006El ; -- Begin function _ZNSt3__18ios_base9precisionB6v15006El
	.globl	__ZNSt3__18ios_base9precisionB6v15006El
	.weak_definition	__ZNSt3__18ios_base9precisionB6v15006El
	.p2align	2
__ZNSt3__18ios_base9precisionB6v15006El: ; @_ZNSt3__18ios_base9precisionB6v15006El
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, #24]
	str	x1, [sp, #16]
	ldr	x9, [sp, #24]
	ldr	x8, [x9, #16]
	str	x8, [sp, #8]
	ldr	x8, [sp, #16]
	str	x8, [x9, #16]
	ldr	x0, [sp, #8]
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16chronomiB6v15006IxNS_5ratioILl1ELl1000000000EEExS3_EENS_11common_typeIJNS0_8durationIT_T0_EENS5_IT1_T2_EEEE4typeERKS8_RKSB_ ; -- Begin function _ZNSt3__16chronomiB6v15006IxNS_5ratioILl1ELl1000000000EEExS3_EENS_11common_typeIJNS0_8durationIT_T0_EENS5_IT1_T2_EEEE4typeERKS8_RKSB_
	.globl	__ZNSt3__16chronomiB6v15006IxNS_5ratioILl1ELl1000000000EEExS3_EENS_11common_typeIJNS0_8durationIT_T0_EENS5_IT1_T2_EEEE4typeERKS8_RKSB_
	.weak_definition	__ZNSt3__16chronomiB6v15006IxNS_5ratioILl1ELl1000000000EEExS3_EENS_11common_typeIJNS0_8durationIT_T0_EENS5_IT1_T2_EEEE4typeERKS8_RKSB_
	.p2align	2
__ZNSt3__16chronomiB6v15006IxNS_5ratioILl1ELl1000000000EEExS3_EENS_11common_typeIJNS0_8durationIT_T0_EENS5_IT1_T2_EEEE4typeERKS8_RKSB_: ; @_ZNSt3__16chronomiB6v15006IxNS_5ratioILl1ELl1000000000EEExS3_EENS_11common_typeIJNS0_8durationIT_T0_EENS5_IT1_T2_EEEE4typeERKS8_RKSB_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #80
	.cfi_def_cfa_offset 80
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-24]
	ldur	x8, [x29, #-16]
	ldr	x8, [x8]
	add	x0, sp, #24
	str	x8, [sp, #24]
	bl	__ZNKSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEE5countB6v15006Ev
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	ldur	x8, [x29, #-24]
	ldr	x8, [x8]
	add	x0, sp, #16
	str	x8, [sp, #16]
	bl	__ZNKSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEE5countB6v15006Ev
	mov	x8, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	subs	x8, x0, x8
	add	x1, sp, #32
	str	x8, [sp, #32]
	sub	x0, x29, #8
	mov	x2, #0
	bl	__ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEEC1B6v15006IxEERKT_PNS_9enable_ifIXaasr14is_convertibleIS8_xEE5valueooL_ZNS_17integral_constantIbLb0EE5valueEEntsr23treat_as_floating_pointIS6_EE5valueEvE4typeE
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__16chrono10time_pointINS0_12steady_clockENS0_8durationIxNS_5ratioILl1ELl1000000000EEEEEE16time_since_epochB6v15006Ev ; -- Begin function _ZNKSt3__16chrono10time_pointINS0_12steady_clockENS0_8durationIxNS_5ratioILl1ELl1000000000EEEEEE16time_since_epochB6v15006Ev
	.globl	__ZNKSt3__16chrono10time_pointINS0_12steady_clockENS0_8durationIxNS_5ratioILl1ELl1000000000EEEEEE16time_since_epochB6v15006Ev
	.weak_definition	__ZNKSt3__16chrono10time_pointINS0_12steady_clockENS0_8durationIxNS_5ratioILl1ELl1000000000EEEEEE16time_since_epochB6v15006Ev
	.p2align	2
__ZNKSt3__16chrono10time_pointINS0_12steady_clockENS0_8durationIxNS_5ratioILl1ELl1000000000EEEEEE16time_since_epochB6v15006Ev: ; @_ZNKSt3__16chrono10time_pointINS0_12steady_clockENS0_8durationIxNS_5ratioILl1ELl1000000000EEEEEE16time_since_epochB6v15006Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp]
	ldr	x8, [sp]
	ldr	x8, [x8]
	str	x8, [sp, #8]
	ldr	x0, [sp, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m ; -- Begin function _ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	.weak_definition	__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	.p2align	2
__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m: ; @_ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception0
; %bb.0:
	sub	sp, sp, #160
	.cfi_def_cfa_offset 160
	stp	x29, x30, [sp, #144]            ; 16-byte Folded Spill
	add	x29, sp, #144
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	stur	x2, [x29, #-24]
	ldur	x1, [x29, #-8]
Ltmp9:
	sub	x0, x29, #40
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryC1ERS3_
Ltmp10:
	b	LBB32_1
LBB32_1:
Ltmp12:
	sub	x0, x29, #40
	bl	__ZNKSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentrycvbB6v15006Ev
	str	w0, [sp, #68]                   ; 4-byte Folded Spill
Ltmp13:
	b	LBB32_2
LBB32_2:
	ldr	w8, [sp, #68]                   ; 4-byte Folded Reload
	tbz	w8, #0, LBB32_18
	b	LBB32_3
LBB32_3:
	ldur	x1, [x29, #-8]
	add	x0, sp, #72
	bl	__ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC1B6v15006ERNS_13basic_ostreamIcS2_EE
	ldur	x8, [x29, #-16]
	str	x8, [sp, #56]                   ; 8-byte Folded Spill
	ldur	x8, [x29, #-8]
	ldr	x9, [x8]
	ldur	x9, [x9, #-24]
	add	x0, x8, x9
Ltmp14:
	bl	__ZNKSt3__18ios_base5flagsB6v15006Ev
	str	w0, [sp, #64]                   ; 4-byte Folded Spill
Ltmp15:
	b	LBB32_4
LBB32_4:
	ldr	w8, [sp, #64]                   ; 4-byte Folded Reload
	mov	w9, #176
	and	w8, w8, w9
	subs	w8, w8, #32
	cset	w8, ne
	tbnz	w8, #0, LBB32_6
	b	LBB32_5
LBB32_5:
	ldur	x8, [x29, #-16]
	ldur	x9, [x29, #-24]
	add	x8, x8, x9
	str	x8, [sp, #48]                   ; 8-byte Folded Spill
	b	LBB32_7
LBB32_6:
	ldur	x8, [x29, #-16]
	str	x8, [sp, #48]                   ; 8-byte Folded Spill
	b	LBB32_7
LBB32_7:
	ldr	x8, [sp, #48]                   ; 8-byte Folded Reload
	str	x8, [sp, #16]                   ; 8-byte Folded Spill
	ldur	x8, [x29, #-16]
	ldur	x9, [x29, #-24]
	add	x8, x8, x9
	str	x8, [sp, #24]                   ; 8-byte Folded Spill
	ldur	x8, [x29, #-8]
	ldr	x9, [x8]
	ldur	x9, [x9, #-24]
	add	x8, x8, x9
	str	x8, [sp, #32]                   ; 8-byte Folded Spill
	ldur	x8, [x29, #-8]
	ldr	x9, [x8]
	ldur	x9, [x9, #-24]
	add	x0, x8, x9
Ltmp16:
	bl	__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4fillB6v15006Ev
	str	w0, [sp, #44]                   ; 4-byte Folded Spill
Ltmp17:
	b	LBB32_8
LBB32_8:
	ldr	w8, [sp, #44]                   ; 4-byte Folded Reload
	ldr	x4, [sp, #32]                   ; 8-byte Folded Reload
	ldr	x3, [sp, #24]                   ; 8-byte Folded Reload
	ldr	x2, [sp, #16]                   ; 8-byte Folded Reload
	ldr	x1, [sp, #56]                   ; 8-byte Folded Reload
	ldr	x0, [sp, #72]
Ltmp18:
	sxtb	w5, w8
	bl	__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
Ltmp19:
	b	LBB32_9
LBB32_9:
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	sub	x0, x29, #64
	stur	x8, [x29, #-64]
	bl	__ZNKSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEE6failedB6v15006Ev
	tbz	w0, #0, LBB32_17
	b	LBB32_10
LBB32_10:
	ldur	x8, [x29, #-8]
	ldr	x9, [x8]
	ldur	x9, [x9, #-24]
	add	x0, x8, x9
Ltmp20:
	mov	w1, #5
	bl	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEE8setstateB6v15006Ej
Ltmp21:
	b	LBB32_11
LBB32_11:
	b	LBB32_17
LBB32_12:
Ltmp11:
	mov	x8, x1
	stur	x0, [x29, #-48]
	stur	w8, [x29, #-52]
	b	LBB32_14
LBB32_13:
Ltmp22:
	mov	x8, x1
	stur	x0, [x29, #-48]
	stur	w8, [x29, #-52]
	sub	x0, x29, #40
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev
	b	LBB32_14
LBB32_14:
	ldur	x0, [x29, #-48]
	bl	___cxa_begin_catch
	ldur	x8, [x29, #-8]
	ldr	x9, [x8]
	ldur	x9, [x9, #-24]
	add	x0, x8, x9
Ltmp23:
	bl	__ZNSt3__18ios_base33__set_badbit_and_consider_rethrowEv
Ltmp24:
	b	LBB32_15
LBB32_15:
	bl	___cxa_end_catch
	b	LBB32_16
LBB32_16:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #144]            ; 16-byte Folded Reload
	add	sp, sp, #160
	ret
LBB32_17:
	b	LBB32_18
LBB32_18:
	sub	x0, x29, #40
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev
	b	LBB32_16
LBB32_19:
Ltmp25:
	mov	x8, x1
	stur	x0, [x29, #-48]
	stur	w8, [x29, #-52]
Ltmp26:
	bl	___cxa_end_catch
Ltmp27:
	b	LBB32_20
LBB32_20:
	b	LBB32_21
LBB32_21:
	ldur	x0, [x29, #-48]
	bl	__Unwind_Resume
LBB32_22:
Ltmp28:
	bl	___clang_call_terminate
Lfunc_end0:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table32:
Lexception0:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase0-Lttbaseref0
Lttbaseref0:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end0-Lcst_begin0
Lcst_begin0:
	.uleb128 Ltmp9-Lfunc_begin0             ; >> Call Site 1 <<
	.uleb128 Ltmp10-Ltmp9                   ;   Call between Ltmp9 and Ltmp10
	.uleb128 Ltmp11-Lfunc_begin0            ;     jumps to Ltmp11
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp12-Lfunc_begin0            ; >> Call Site 2 <<
	.uleb128 Ltmp21-Ltmp12                  ;   Call between Ltmp12 and Ltmp21
	.uleb128 Ltmp22-Lfunc_begin0            ;     jumps to Ltmp22
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp21-Lfunc_begin0            ; >> Call Site 3 <<
	.uleb128 Ltmp23-Ltmp21                  ;   Call between Ltmp21 and Ltmp23
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp23-Lfunc_begin0            ; >> Call Site 4 <<
	.uleb128 Ltmp24-Ltmp23                  ;   Call between Ltmp23 and Ltmp24
	.uleb128 Ltmp25-Lfunc_begin0            ;     jumps to Ltmp25
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp24-Lfunc_begin0            ; >> Call Site 5 <<
	.uleb128 Ltmp26-Ltmp24                  ;   Call between Ltmp24 and Ltmp26
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp26-Lfunc_begin0            ; >> Call Site 6 <<
	.uleb128 Ltmp27-Ltmp26                  ;   Call between Ltmp26 and Ltmp27
	.uleb128 Ltmp28-Lfunc_begin0            ;     jumps to Ltmp28
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp27-Lfunc_begin0            ; >> Call Site 7 <<
	.uleb128 Lfunc_end0-Ltmp27              ;   Call between Ltmp27 and Lfunc_end0
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end0:
	.byte	1                               ; >> Action Record 1 <<
                                        ;   Catch TypeInfo 1
	.byte	0                               ;   No further actions
	.p2align	2
                                        ; >> Catch TypeInfos <<
	.long	0                               ; TypeInfo 1
Lttbase0:
	.p2align	2
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZNSt3__111char_traitsIcE6lengthEPKc ; -- Begin function _ZNSt3__111char_traitsIcE6lengthEPKc
	.weak_definition	__ZNSt3__111char_traitsIcE6lengthEPKc
	.p2align	2
__ZNSt3__111char_traitsIcE6lengthEPKc:  ; @_ZNSt3__111char_traitsIcE6lengthEPKc
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	_strlen
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentrycvbB6v15006Ev ; -- Begin function _ZNKSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentrycvbB6v15006Ev
	.globl	__ZNKSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentrycvbB6v15006Ev
	.weak_definition	__ZNKSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentrycvbB6v15006Ev
	.p2align	2
__ZNKSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentrycvbB6v15006Ev: ; @_ZNKSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentrycvbB6v15006Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldrb	w8, [x8]
	and	w0, w8, #0x1
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_ ; -- Begin function _ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
	.globl	__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
	.weak_definition	__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
	.p2align	2
__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_: ; @_ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
Lfunc_begin1:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception1
; %bb.0:
	sub	sp, sp, #160
	.cfi_def_cfa_offset 160
	stp	x29, x30, [sp, #144]            ; 16-byte Folded Spill
	add	x29, sp, #144
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-24]
	stur	x2, [x29, #-32]
	stur	x3, [x29, #-40]
	stur	x4, [x29, #-48]
	sturb	w5, [x29, #-49]
	ldur	x8, [x29, #-16]
	subs	x8, x8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB35_2
	b	LBB35_1
LBB35_1:
	ldur	x8, [x29, #-16]
	stur	x8, [x29, #-8]
	b	LBB35_23
LBB35_2:
	ldur	x8, [x29, #-40]
	ldur	x9, [x29, #-24]
	subs	x8, x8, x9
	stur	x8, [x29, #-64]
	ldur	x0, [x29, #-48]
	bl	__ZNKSt3__18ios_base5widthB6v15006Ev
	str	x0, [sp, #72]
	ldr	x8, [sp, #72]
	ldur	x9, [x29, #-64]
	subs	x8, x8, x9
	cset	w8, le
	tbnz	w8, #0, LBB35_4
	b	LBB35_3
LBB35_3:
	ldur	x9, [x29, #-64]
	ldr	x8, [sp, #72]
	subs	x8, x8, x9
	str	x8, [sp, #72]
	b	LBB35_5
LBB35_4:
	str	xzr, [sp, #72]
	b	LBB35_5
LBB35_5:
	ldur	x8, [x29, #-32]
	ldur	x9, [x29, #-24]
	subs	x8, x8, x9
	str	x8, [sp, #64]
	ldr	x8, [sp, #64]
	subs	x8, x8, #0
	cset	w8, le
	tbnz	w8, #0, LBB35_9
	b	LBB35_6
LBB35_6:
	ldur	x0, [x29, #-16]
	ldur	x1, [x29, #-24]
	ldr	x2, [sp, #64]
	bl	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnB6v15006EPKcl
	ldr	x8, [sp, #64]
	subs	x8, x0, x8
	cset	w8, eq
	tbnz	w8, #0, LBB35_8
	b	LBB35_7
LBB35_7:
                                        ; kill: def $x8 killed $xzr
	stur	xzr, [x29, #-16]
	ldur	x8, [x29, #-16]
	stur	x8, [x29, #-8]
	b	LBB35_23
LBB35_8:
	b	LBB35_9
LBB35_9:
	ldr	x8, [sp, #72]
	subs	x8, x8, #0
	cset	w8, le
	tbnz	w8, #0, LBB35_18
	b	LBB35_10
LBB35_10:
	ldr	x1, [sp, #72]
	ldursb	w2, [x29, #-49]
	add	x0, sp, #40
	str	x0, [sp]                        ; 8-byte Folded Spill
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B6v15006Emc
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldur	x8, [x29, #-16]
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	bl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataB6v15006Ev
	mov	x1, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x2, [sp, #72]
Ltmp30:
	bl	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnB6v15006EPKcl
	str	x0, [sp, #16]                   ; 8-byte Folded Spill
Ltmp31:
	b	LBB35_11
LBB35_11:
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	ldr	x9, [sp, #72]
	subs	x8, x8, x9
	cset	w8, eq
	tbnz	w8, #0, LBB35_14
	b	LBB35_12
LBB35_12:
                                        ; kill: def $x8 killed $xzr
	stur	xzr, [x29, #-16]
	ldur	x8, [x29, #-16]
	stur	x8, [x29, #-8]
	mov	w8, #1
	str	w8, [sp, #24]
	b	LBB35_15
LBB35_13:
Ltmp32:
	mov	x8, x1
	str	x0, [sp, #32]
	str	w8, [sp, #28]
	add	x0, sp, #40
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	b	LBB35_24
LBB35_14:
	str	wzr, [sp, #24]
	b	LBB35_15
LBB35_15:
	add	x0, sp, #40
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	ldr	w8, [sp, #24]
	subs	w8, w8, #0
	cset	w8, eq
	tbnz	w8, #0, LBB35_17
	b	LBB35_16
LBB35_16:
	b	LBB35_23
LBB35_17:
	b	LBB35_18
LBB35_18:
	ldur	x8, [x29, #-40]
	ldur	x9, [x29, #-32]
	subs	x8, x8, x9
	str	x8, [sp, #64]
	ldr	x8, [sp, #64]
	subs	x8, x8, #0
	cset	w8, le
	tbnz	w8, #0, LBB35_22
	b	LBB35_19
LBB35_19:
	ldur	x0, [x29, #-16]
	ldur	x1, [x29, #-32]
	ldr	x2, [sp, #64]
	bl	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnB6v15006EPKcl
	ldr	x8, [sp, #64]
	subs	x8, x0, x8
	cset	w8, eq
	tbnz	w8, #0, LBB35_21
	b	LBB35_20
LBB35_20:
                                        ; kill: def $x8 killed $xzr
	stur	xzr, [x29, #-16]
	ldur	x8, [x29, #-16]
	stur	x8, [x29, #-8]
	b	LBB35_23
LBB35_21:
	b	LBB35_22
LBB35_22:
	ldur	x0, [x29, #-48]
	mov	x1, #0
	bl	__ZNSt3__18ios_base5widthB6v15006El
	ldur	x8, [x29, #-16]
	stur	x8, [x29, #-8]
	b	LBB35_23
LBB35_23:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #144]            ; 16-byte Folded Reload
	add	sp, sp, #160
	ret
LBB35_24:
	ldr	x0, [sp, #32]
	bl	__Unwind_Resume
; %bb.25:
Lfunc_end1:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table35:
Lexception1:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end1-Lcst_begin1
Lcst_begin1:
	.uleb128 Lfunc_begin1-Lfunc_begin1      ; >> Call Site 1 <<
	.uleb128 Ltmp30-Lfunc_begin1            ;   Call between Lfunc_begin1 and Ltmp30
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp30-Lfunc_begin1            ; >> Call Site 2 <<
	.uleb128 Ltmp31-Ltmp30                  ;   Call between Ltmp30 and Ltmp31
	.uleb128 Ltmp32-Lfunc_begin1            ;     jumps to Ltmp32
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp31-Lfunc_begin1            ; >> Call Site 3 <<
	.uleb128 Lfunc_end1-Ltmp31              ;   Call between Ltmp31 and Lfunc_end1
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end1:
	.p2align	2
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC1B6v15006ERNS_13basic_ostreamIcS2_EE ; -- Begin function _ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC1B6v15006ERNS_13basic_ostreamIcS2_EE
	.globl	__ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC1B6v15006ERNS_13basic_ostreamIcS2_EE
	.weak_def_can_be_hidden	__ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC1B6v15006ERNS_13basic_ostreamIcS2_EE
	.p2align	2
__ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC1B6v15006ERNS_13basic_ostreamIcS2_EE: ; @_ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC1B6v15006ERNS_13basic_ostreamIcS2_EE
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x0, [x29, #-8]
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	ldr	x1, [sp, #16]
	bl	__ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC2B6v15006ERNS_13basic_ostreamIcS2_EE
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__18ios_base5flagsB6v15006Ev ; -- Begin function _ZNKSt3__18ios_base5flagsB6v15006Ev
	.globl	__ZNKSt3__18ios_base5flagsB6v15006Ev
	.weak_definition	__ZNKSt3__18ios_base5flagsB6v15006Ev
	.p2align	2
__ZNKSt3__18ios_base5flagsB6v15006Ev:   ; @_ZNKSt3__18ios_base5flagsB6v15006Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	w0, [x8, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4fillB6v15006Ev ; -- Begin function _ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4fillB6v15006Ev
	.globl	__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4fillB6v15006Ev
	.weak_definition	__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4fillB6v15006Ev
	.p2align	2
__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4fillB6v15006Ev: ; @_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4fillB6v15006Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	str	x8, [sp]                        ; 8-byte Folded Spill
	bl	__ZNSt3__111char_traitsIcE3eofEv
	ldr	x8, [sp]                        ; 8-byte Folded Reload
	ldr	w1, [x8, #144]
	bl	__ZNSt3__111char_traitsIcE11eq_int_typeEii
	tbz	w0, #0, LBB38_2
	b	LBB38_1
LBB38_1:
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	mov	w1, #32
	bl	__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenB6v15006Ec
	ldr	x9, [sp]                        ; 8-byte Folded Reload
	sxtb	w8, w0
	str	w8, [x9, #144]
	b	LBB38_2
LBB38_2:
	ldr	x8, [sp]                        ; 8-byte Folded Reload
	ldr	w8, [x8, #144]
	sxtb	w0, w8
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEE6failedB6v15006Ev ; -- Begin function _ZNKSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEE6failedB6v15006Ev
	.globl	__ZNKSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEE6failedB6v15006Ev
	.weak_definition	__ZNKSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEE6failedB6v15006Ev
	.p2align	2
__ZNKSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEE6failedB6v15006Ev: ; @_ZNKSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEE6failedB6v15006Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	x8, [x8]
	subs	x8, x8, #0
	cset	w8, eq
	and	w0, w8, #0x1
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEE8setstateB6v15006Ej ; -- Begin function _ZNSt3__19basic_iosIcNS_11char_traitsIcEEE8setstateB6v15006Ej
	.globl	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEE8setstateB6v15006Ej
	.weak_definition	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEE8setstateB6v15006Ej
	.p2align	2
__ZNSt3__19basic_iosIcNS_11char_traitsIcEEE8setstateB6v15006Ej: ; @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEE8setstateB6v15006Ej
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	str	w1, [sp, #4]
	ldr	x0, [sp, #8]
	ldr	w1, [sp, #4]
	bl	__ZNSt3__18ios_base8setstateB6v15006Ej
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	___clang_call_terminate ; -- Begin function __clang_call_terminate
	.globl	___clang_call_terminate
	.weak_definition	___clang_call_terminate
	.p2align	2
___clang_call_terminate:                ; @__clang_call_terminate
; %bb.0:
	stp	x29, x30, [sp, #-16]!           ; 16-byte Folded Spill
	bl	___cxa_begin_catch
	bl	__ZSt9terminatev
                                        ; -- End function
	.private_extern	__ZNKSt3__18ios_base5widthB6v15006Ev ; -- Begin function _ZNKSt3__18ios_base5widthB6v15006Ev
	.globl	__ZNKSt3__18ios_base5widthB6v15006Ev
	.weak_definition	__ZNKSt3__18ios_base5widthB6v15006Ev
	.p2align	2
__ZNKSt3__18ios_base5widthB6v15006Ev:   ; @_ZNKSt3__18ios_base5widthB6v15006Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	x0, [x8, #24]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnB6v15006EPKcl ; -- Begin function _ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnB6v15006EPKcl
	.globl	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnB6v15006EPKcl
	.weak_definition	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnB6v15006EPKcl
	.p2align	2
__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnB6v15006EPKcl: ; @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnB6v15006EPKcl
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldur	x0, [x29, #-8]
	ldr	x1, [sp, #16]
	ldr	x2, [sp, #8]
	ldr	x8, [x0]
	ldr	x8, [x8, #96]
	blr	x8
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B6v15006Emc ; -- Begin function _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B6v15006Emc
	.globl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B6v15006Emc
	.weak_def_can_be_hidden	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B6v15006Emc
	.p2align	2
__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B6v15006Emc: ; @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B6v15006Emc
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	strb	w2, [sp, #15]
	ldur	x0, [x29, #-8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	ldr	x1, [sp, #16]
	ldrsb	w2, [sp, #15]
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B6v15006Emc
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataB6v15006Ev ; -- Begin function _ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataB6v15006Ev
	.globl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataB6v15006Ev
	.weak_definition	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataB6v15006Ev
	.p2align	2
__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataB6v15006Ev: ; @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataB6v15006Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerB6v15006Ev
	bl	__ZNSt3__112__to_addressB6v15006IKcEEPT_S3_
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__18ios_base5widthB6v15006El ; -- Begin function _ZNSt3__18ios_base5widthB6v15006El
	.globl	__ZNSt3__18ios_base5widthB6v15006El
	.weak_definition	__ZNSt3__18ios_base5widthB6v15006El
	.p2align	2
__ZNSt3__18ios_base5widthB6v15006El:    ; @_ZNSt3__18ios_base5widthB6v15006El
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, #24]
	str	x1, [sp, #16]
	ldr	x9, [sp, #24]
	ldr	x8, [x9, #24]
	str	x8, [sp, #8]
	ldr	x8, [sp, #16]
	str	x8, [x9, #24]
	ldr	x0, [sp, #8]
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B6v15006Emc ; -- Begin function _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B6v15006Emc
	.globl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B6v15006Emc
	.weak_def_can_be_hidden	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B6v15006Emc
	.p2align	2
__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B6v15006Emc: ; @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B6v15006Emc
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	strb	w2, [sp, #15]
	ldur	x0, [x29, #-8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	add	x1, sp, #14
	add	x2, sp, #13
	bl	__ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC1B6v15006INS_18__default_init_tagESA_EEOT_OT0_
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldr	x1, [sp, #16]
	ldrsb	w2, [sp, #15]
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initEmc
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	bl	__ZNSt3__119__debug_db_insert_cB6v15006INS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEvPT_
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC1B6v15006INS_18__default_init_tagESA_EEOT_OT0_ ; -- Begin function _ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC1B6v15006INS_18__default_init_tagESA_EEOT_OT0_
	.weak_def_can_be_hidden	__ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC1B6v15006INS_18__default_init_tagESA_EEOT_OT0_
	.p2align	2
__ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC1B6v15006INS_18__default_init_tagESA_EEOT_OT0_: ; @_ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC1B6v15006INS_18__default_init_tagESA_EEOT_OT0_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldur	x0, [x29, #-8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	ldr	x1, [sp, #16]
	ldr	x2, [sp, #8]
	bl	__ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC2B6v15006INS_18__default_init_tagESA_EEOT_OT0_
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__119__debug_db_insert_cB6v15006INS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEvPT_ ; -- Begin function _ZNSt3__119__debug_db_insert_cB6v15006INS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEvPT_
	.globl	__ZNSt3__119__debug_db_insert_cB6v15006INS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEvPT_
	.weak_definition	__ZNSt3__119__debug_db_insert_cB6v15006INS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEvPT_
	.p2align	2
__ZNSt3__119__debug_db_insert_cB6v15006INS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEvPT_: ; @_ZNSt3__119__debug_db_insert_cB6v15006INS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEvPT_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC2B6v15006INS_18__default_init_tagESA_EEOT_OT0_ ; -- Begin function _ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC2B6v15006INS_18__default_init_tagESA_EEOT_OT0_
	.weak_def_can_be_hidden	__ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC2B6v15006INS_18__default_init_tagESA_EEOT_OT0_
	.p2align	2
__ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC2B6v15006INS_18__default_init_tagESA_EEOT_OT0_: ; @_ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC2B6v15006INS_18__default_init_tagESA_EEOT_OT0_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	str	x2, [sp, #24]
	ldur	x0, [x29, #-8]
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	bl	__ZNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EEC2B6v15006ENS_18__default_init_tagE
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	bl	__ZNSt3__122__compressed_pair_elemINS_9allocatorIcEELi1ELb1EEC2B6v15006ENS_18__default_init_tagE
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EEC2B6v15006ENS_18__default_init_tagE ; -- Begin function _ZNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EEC2B6v15006ENS_18__default_init_tagE
	.globl	__ZNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EEC2B6v15006ENS_18__default_init_tagE
	.weak_def_can_be_hidden	__ZNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EEC2B6v15006ENS_18__default_init_tagE
	.p2align	2
__ZNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EEC2B6v15006ENS_18__default_init_tagE: ; @_ZNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EEC2B6v15006ENS_18__default_init_tagE
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp]
	ldr	x0, [sp]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__122__compressed_pair_elemINS_9allocatorIcEELi1ELb1EEC2B6v15006ENS_18__default_init_tagE ; -- Begin function _ZNSt3__122__compressed_pair_elemINS_9allocatorIcEELi1ELb1EEC2B6v15006ENS_18__default_init_tagE
	.globl	__ZNSt3__122__compressed_pair_elemINS_9allocatorIcEELi1ELb1EEC2B6v15006ENS_18__default_init_tagE
	.weak_def_can_be_hidden	__ZNSt3__122__compressed_pair_elemINS_9allocatorIcEELi1ELb1EEC2B6v15006ENS_18__default_init_tagE
	.p2align	2
__ZNSt3__122__compressed_pair_elemINS_9allocatorIcEELi1ELb1EEC2B6v15006ENS_18__default_init_tagE: ; @_ZNSt3__122__compressed_pair_elemINS_9allocatorIcEELi1ELb1EEC2B6v15006ENS_18__default_init_tagE
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #16]
	ldr	x0, [sp, #16]
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	bl	__ZNSt3__19allocatorIcEC2B6v15006Ev
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__19allocatorIcEC2B6v15006Ev ; -- Begin function _ZNSt3__19allocatorIcEC2B6v15006Ev
	.globl	__ZNSt3__19allocatorIcEC2B6v15006Ev
	.weak_def_can_be_hidden	__ZNSt3__19allocatorIcEC2B6v15006Ev
	.p2align	2
__ZNSt3__19allocatorIcEC2B6v15006Ev:    ; @_ZNSt3__19allocatorIcEC2B6v15006Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	bl	__ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIcEEEC2B6v15006Ev
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIcEEEC2B6v15006Ev ; -- Begin function _ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIcEEEC2B6v15006Ev
	.globl	__ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIcEEEC2B6v15006Ev
	.weak_def_can_be_hidden	__ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIcEEEC2B6v15006Ev
	.p2align	2
__ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIcEEEC2B6v15006Ev: ; @_ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIcEEEC2B6v15006Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__112__to_addressB6v15006IKcEEPT_S3_ ; -- Begin function _ZNSt3__112__to_addressB6v15006IKcEEPT_S3_
	.globl	__ZNSt3__112__to_addressB6v15006IKcEEPT_S3_
	.weak_definition	__ZNSt3__112__to_addressB6v15006IKcEEPT_S3_
	.p2align	2
__ZNSt3__112__to_addressB6v15006IKcEEPT_S3_: ; @_ZNSt3__112__to_addressB6v15006IKcEEPT_S3_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerB6v15006Ev ; -- Begin function _ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerB6v15006Ev
	.globl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerB6v15006Ev
	.weak_definition	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerB6v15006Ev
	.p2align	2
__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerB6v15006Ev: ; @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerB6v15006Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	ldur	x0, [x29, #-8]
	str	x0, [sp, #16]                   ; 8-byte Folded Spill
	bl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longB6v15006Ev
	tbz	w0, #0, LBB56_2
	b	LBB56_1
LBB56_1:
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	bl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerB6v15006Ev
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	b	LBB56_3
LBB56_2:
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	bl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerB6v15006Ev
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	b	LBB56_3
LBB56_3:
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longB6v15006Ev ; -- Begin function _ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longB6v15006Ev
	.globl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longB6v15006Ev
	.weak_definition	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longB6v15006Ev
	.p2align	2
__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longB6v15006Ev: ; @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longB6v15006Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	__ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstB6v15006Ev
	ldrb	w8, [x0, #23]
	lsr	w8, w8, #7
	ands	w8, w8, #0xff
	cset	w8, ne
	and	w0, w8, #0x1
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerB6v15006Ev ; -- Begin function _ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerB6v15006Ev
	.globl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerB6v15006Ev
	.weak_definition	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerB6v15006Ev
	.p2align	2
__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerB6v15006Ev: ; @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerB6v15006Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	__ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstB6v15006Ev
	ldr	x0, [x0]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerB6v15006Ev ; -- Begin function _ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerB6v15006Ev
	.globl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerB6v15006Ev
	.weak_definition	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerB6v15006Ev
	.p2align	2
__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerB6v15006Ev: ; @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerB6v15006Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	__ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstB6v15006Ev
	bl	__ZNSt3__114pointer_traitsIPKcE10pointer_toB6v15006ERS1_
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstB6v15006Ev ; -- Begin function _ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstB6v15006Ev
	.globl	__ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstB6v15006Ev
	.weak_definition	__ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstB6v15006Ev
	.p2align	2
__ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstB6v15006Ev: ; @_ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstB6v15006Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	__ZNKSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getB6v15006Ev
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getB6v15006Ev ; -- Begin function _ZNKSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getB6v15006Ev
	.globl	__ZNKSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getB6v15006Ev
	.weak_definition	__ZNKSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getB6v15006Ev
	.p2align	2
__ZNKSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getB6v15006Ev: ; @_ZNKSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getB6v15006Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__114pointer_traitsIPKcE10pointer_toB6v15006ERS1_ ; -- Begin function _ZNSt3__114pointer_traitsIPKcE10pointer_toB6v15006ERS1_
	.globl	__ZNSt3__114pointer_traitsIPKcE10pointer_toB6v15006ERS1_
	.weak_definition	__ZNSt3__114pointer_traitsIPKcE10pointer_toB6v15006ERS1_
	.p2align	2
__ZNSt3__114pointer_traitsIPKcE10pointer_toB6v15006ERS1_: ; @_ZNSt3__114pointer_traitsIPKcE10pointer_toB6v15006ERS1_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC2B6v15006ERNS_13basic_ostreamIcS2_EE ; -- Begin function _ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC2B6v15006ERNS_13basic_ostreamIcS2_EE
	.globl	__ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC2B6v15006ERNS_13basic_ostreamIcS2_EE
	.weak_def_can_be_hidden	__ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC2B6v15006ERNS_13basic_ostreamIcS2_EE
	.p2align	2
__ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC2B6v15006ERNS_13basic_ostreamIcS2_EE: ; @_ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC2B6v15006ERNS_13basic_ostreamIcS2_EE
Lfunc_begin2:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception2
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x8, [x29, #-8]
	str	x8, [sp]                        ; 8-byte Folded Spill
	ldr	x8, [sp, #16]
	ldr	x9, [x8]
	ldur	x9, [x9, #-24]
Ltmp43:
	add	x0, x8, x9
	bl	__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5rdbufB6v15006Ev
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
Ltmp44:
	b	LBB63_1
LBB63_1:
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	str	x8, [x0]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
LBB63_2:
Ltmp45:
	bl	___clang_call_terminate
Lfunc_end2:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table63:
Lexception2:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase1-Lttbaseref1
Lttbaseref1:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end2-Lcst_begin2
Lcst_begin2:
	.uleb128 Ltmp43-Lfunc_begin2            ; >> Call Site 1 <<
	.uleb128 Ltmp44-Ltmp43                  ;   Call between Ltmp43 and Ltmp44
	.uleb128 Ltmp45-Lfunc_begin2            ;     jumps to Ltmp45
	.byte	1                               ;   On action: 1
Lcst_end2:
	.byte	1                               ; >> Action Record 1 <<
                                        ;   Catch TypeInfo 1
	.byte	0                               ;   No further actions
	.p2align	2
                                        ; >> Catch TypeInfos <<
	.long	0                               ; TypeInfo 1
Lttbase1:
	.p2align	2
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5rdbufB6v15006Ev ; -- Begin function _ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5rdbufB6v15006Ev
	.globl	__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5rdbufB6v15006Ev
	.weak_definition	__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5rdbufB6v15006Ev
	.p2align	2
__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5rdbufB6v15006Ev: ; @_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5rdbufB6v15006Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	__ZNKSt3__18ios_base5rdbufB6v15006Ev
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__18ios_base5rdbufB6v15006Ev ; -- Begin function _ZNKSt3__18ios_base5rdbufB6v15006Ev
	.globl	__ZNKSt3__18ios_base5rdbufB6v15006Ev
	.weak_definition	__ZNKSt3__18ios_base5rdbufB6v15006Ev
	.p2align	2
__ZNKSt3__18ios_base5rdbufB6v15006Ev:   ; @_ZNKSt3__18ios_base5rdbufB6v15006Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	x0, [x8, #40]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__111char_traitsIcE11eq_int_typeEii ; -- Begin function _ZNSt3__111char_traitsIcE11eq_int_typeEii
	.weak_definition	__ZNSt3__111char_traitsIcE11eq_int_typeEii
	.p2align	2
__ZNSt3__111char_traitsIcE11eq_int_typeEii: ; @_ZNSt3__111char_traitsIcE11eq_int_typeEii
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	w0, [sp, #12]
	str	w1, [sp, #8]
	ldr	w8, [sp, #12]
	ldr	w9, [sp, #8]
	subs	w8, w8, w9
	cset	w8, eq
	and	w0, w8, #0x1
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__111char_traitsIcE3eofEv ; -- Begin function _ZNSt3__111char_traitsIcE3eofEv
	.weak_definition	__ZNSt3__111char_traitsIcE3eofEv
	.p2align	2
__ZNSt3__111char_traitsIcE3eofEv:       ; @_ZNSt3__111char_traitsIcE3eofEv
	.cfi_startproc
; %bb.0:
	mov	w0, #-1
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenB6v15006Ec ; -- Begin function _ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenB6v15006Ec
	.globl	__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenB6v15006Ec
	.weak_definition	__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenB6v15006Ec
	.p2align	2
__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenB6v15006Ec: ; @_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenB6v15006Ec
Lfunc_begin3:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception3
; %bb.0:
	sub	sp, sp, #80
	.cfi_def_cfa_offset 80
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	sturb	w1, [x29, #-9]
	ldur	x0, [x29, #-8]
	sub	x8, x29, #24
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	bl	__ZNKSt3__18ios_base6getlocEv
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
Ltmp48:
	bl	__ZNSt3__19use_facetB6v15006INS_5ctypeIcEEEERKT_RKNS_6localeE
	str	x0, [sp, #16]                   ; 8-byte Folded Spill
Ltmp49:
	b	LBB68_1
LBB68_1:
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	ldursb	w1, [x29, #-9]
Ltmp50:
	bl	__ZNKSt3__15ctypeIcE5widenB6v15006Ec
	str	w0, [sp, #4]                    ; 4-byte Folded Spill
Ltmp51:
	b	LBB68_2
LBB68_2:
	sub	x0, x29, #24
	bl	__ZNSt3__16localeD1Ev
	ldr	w8, [sp, #4]                    ; 4-byte Folded Reload
	sxtb	w0, w8
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
LBB68_3:
Ltmp52:
	mov	x8, x1
	str	x0, [sp, #32]
	str	w8, [sp, #28]
	sub	x0, x29, #24
	bl	__ZNSt3__16localeD1Ev
	b	LBB68_4
LBB68_4:
	ldr	x0, [sp, #32]
	bl	__Unwind_Resume
Lfunc_end3:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table68:
Lexception3:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end3-Lcst_begin3
Lcst_begin3:
	.uleb128 Lfunc_begin3-Lfunc_begin3      ; >> Call Site 1 <<
	.uleb128 Ltmp48-Lfunc_begin3            ;   Call between Lfunc_begin3 and Ltmp48
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp48-Lfunc_begin3            ; >> Call Site 2 <<
	.uleb128 Ltmp51-Ltmp48                  ;   Call between Ltmp48 and Ltmp51
	.uleb128 Ltmp52-Lfunc_begin3            ;     jumps to Ltmp52
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp51-Lfunc_begin3            ; >> Call Site 3 <<
	.uleb128 Lfunc_end3-Ltmp51              ;   Call between Ltmp51 and Lfunc_end3
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end3:
	.p2align	2
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNSt3__19use_facetB6v15006INS_5ctypeIcEEEERKT_RKNS_6localeE ; -- Begin function _ZNSt3__19use_facetB6v15006INS_5ctypeIcEEEERKT_RKNS_6localeE
	.globl	__ZNSt3__19use_facetB6v15006INS_5ctypeIcEEEERKT_RKNS_6localeE
	.weak_definition	__ZNSt3__19use_facetB6v15006INS_5ctypeIcEEEERKT_RKNS_6localeE
	.p2align	2
__ZNSt3__19use_facetB6v15006INS_5ctypeIcEEEERKT_RKNS_6localeE: ; @_ZNSt3__19use_facetB6v15006INS_5ctypeIcEEEERKT_RKNS_6localeE
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	adrp	x1, __ZNSt3__15ctypeIcE2idE@GOTPAGE
	ldr	x1, [x1, __ZNSt3__15ctypeIcE2idE@GOTPAGEOFF]
	bl	__ZNKSt3__16locale9use_facetERNS0_2idE
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__15ctypeIcE5widenB6v15006Ec ; -- Begin function _ZNKSt3__15ctypeIcE5widenB6v15006Ec
	.globl	__ZNKSt3__15ctypeIcE5widenB6v15006Ec
	.weak_definition	__ZNKSt3__15ctypeIcE5widenB6v15006Ec
	.p2align	2
__ZNKSt3__15ctypeIcE5widenB6v15006Ec:   ; @_ZNKSt3__15ctypeIcE5widenB6v15006Ec
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	strb	w1, [sp, #7]
	ldr	x0, [sp, #8]
	ldrsb	w1, [sp, #7]
	ldr	x8, [x0]
	ldr	x8, [x8, #56]
	blr	x8
	sxtb	w0, w0
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__18ios_base8setstateB6v15006Ej ; -- Begin function _ZNSt3__18ios_base8setstateB6v15006Ej
	.globl	__ZNSt3__18ios_base8setstateB6v15006Ej
	.weak_definition	__ZNSt3__18ios_base8setstateB6v15006Ej
	.p2align	2
__ZNSt3__18ios_base8setstateB6v15006Ej: ; @_ZNSt3__18ios_base8setstateB6v15006Ej
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	str	w1, [sp, #4]
	ldr	x0, [sp, #8]
	ldr	w8, [x0, #32]
	ldr	w9, [sp, #4]
	orr	w1, w8, w9
	bl	__ZNSt3__18ios_base5clearEj
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"The factorial operation of (n!) listed below: \n"

l_.str.1:                               ; @.str.1
	.asciz	"Time to compute factorial of "

l_.str.2:                               ; @.str.2
	.asciz	": "

l_.str.3:                               ; @.str.3
	.asciz	" Seconds\n"

.subsections_via_symbols
