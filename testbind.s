	.file	"testbind.cpp"
	.text
	.section	.rodata
	.type	_ZStL19piecewise_construct, @object
	.size	_ZStL19piecewise_construct, 1
_ZStL19piecewise_construct:
	.zero	1
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.type	_ZStL13allocator_arg, @object
	.size	_ZStL13allocator_arg, 1
_ZStL13allocator_arg:
	.zero	1
	.type	_ZStL6ignore, @object
	.size	_ZStL6ignore, 1
_ZStL6ignore:
	.zero	1
	.section	.text._ZNSt9_Any_data9_M_accessEv,"axG",@progbits,_ZNSt9_Any_data9_M_accessEv,comdat
	.align 2
	.weak	_ZNSt9_Any_data9_M_accessEv
	.type	_ZNSt9_Any_data9_M_accessEv, @function
_ZNSt9_Any_data9_M_accessEv:
.LFB1781:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1781:
	.size	_ZNSt9_Any_data9_M_accessEv, .-_ZNSt9_Any_data9_M_accessEv
	.section	.text._ZNKSt9_Any_data9_M_accessEv,"axG",@progbits,_ZNKSt9_Any_data9_M_accessEv,comdat
	.align 2
	.weak	_ZNKSt9_Any_data9_M_accessEv
	.type	_ZNKSt9_Any_data9_M_accessEv, @function
_ZNKSt9_Any_data9_M_accessEv:
.LFB1782:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1782:
	.size	_ZNKSt9_Any_data9_M_accessEv, .-_ZNKSt9_Any_data9_M_accessEv
	.section	.text._ZNSt14_Function_baseC2Ev,"axG",@progbits,_ZNSt14_Function_baseC5Ev,comdat
	.align 2
	.weak	_ZNSt14_Function_baseC2Ev
	.type	_ZNSt14_Function_baseC2Ev, @function
_ZNSt14_Function_baseC2Ev:
.LFB1800:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	$0, 16(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1800:
	.size	_ZNSt14_Function_baseC2Ev, .-_ZNSt14_Function_baseC2Ev
	.weak	_ZNSt14_Function_baseC1Ev
	.set	_ZNSt14_Function_baseC1Ev,_ZNSt14_Function_baseC2Ev
	.section	.text._ZNSt14_Function_baseD2Ev,"axG",@progbits,_ZNSt14_Function_baseD5Ev,comdat
	.align 2
	.weak	_ZNSt14_Function_baseD2Ev
	.type	_ZNSt14_Function_baseD2Ev, @function
_ZNSt14_Function_baseD2Ev:
.LFB1803:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA1803
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L8
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	-8(%rbp), %rsi
	movq	-8(%rbp), %rcx
	movl	$3, %edx
	movq	%rcx, %rdi
	call	*%rax
.L8:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1803:
	.globl	__gxx_personality_v0
	.section	.gcc_except_table._ZNSt14_Function_baseD2Ev,"aG",@progbits,_ZNSt14_Function_baseD5Ev,comdat
.LLSDA1803:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE1803-.LLSDACSB1803
.LLSDACSB1803:
.LLSDACSE1803:
	.section	.text._ZNSt14_Function_baseD2Ev,"axG",@progbits,_ZNSt14_Function_baseD5Ev,comdat
	.size	_ZNSt14_Function_baseD2Ev, .-_ZNSt14_Function_baseD2Ev
	.weak	_ZNSt14_Function_baseD1Ev
	.set	_ZNSt14_Function_baseD1Ev,_ZNSt14_Function_baseD2Ev
	.section	.text._ZNKSt14_Function_base8_M_emptyEv,"axG",@progbits,_ZNKSt14_Function_base8_M_emptyEv,comdat
	.align 2
	.weak	_ZNKSt14_Function_base8_M_emptyEv
	.type	_ZNKSt14_Function_base8_M_emptyEv, @function
_ZNKSt14_Function_base8_M_emptyEv:
.LFB1805:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	sete	%al
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1805:
	.size	_ZNKSt14_Function_base8_M_emptyEv, .-_ZNKSt14_Function_base8_M_emptyEv
	.text
	.globl	_Z1fiii
	.type	_Z1fiii, @function
_Z1fiii:
.LFB1877:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	%edx, -12(%rbp)
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZNSolsEi@PLT
	movq	%rax, %rdx
	movl	-8(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	_ZNSolsEi@PLT
	movq	%rax, %rdx
	movl	-12(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	_ZNSolsEi@PLT
	movq	%rax, %rdx
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZNSolsEPFRSoS_E@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1877:
	.size	_Z1fiii, .-_Z1fiii
	.section	.text._ZNSt8functionIFvvEED2Ev,"axG",@progbits,_ZNSt8functionIFvvEED5Ev,comdat
	.align 2
	.weak	_ZNSt8functionIFvvEED2Ev
	.type	_ZNSt8functionIFvvEED2Ev, @function
_ZNSt8functionIFvvEED2Ev:
.LFB1886:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt14_Function_baseD2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1886:
	.size	_ZNSt8functionIFvvEED2Ev, .-_ZNSt8functionIFvvEED2Ev
	.weak	_ZNSt8functionIFvvEED1Ev
	.set	_ZNSt8functionIFvvEED1Ev,_ZNSt8functionIFvvEED2Ev
	.text
	.globl	main
	.type	main, @function
main:
.LFB1878:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA1878
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$104, %rsp
	.cfi_offset 3, -24
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movl	$6, -100(%rbp)
	movl	$4, -104(%rbp)
	movl	$1, -108(%rbp)
	leaq	-96(%rbp), %rax
	leaq	-100(%rbp), %rsi
	leaq	-104(%rbp), %rcx
	leaq	-108(%rbp), %rdx
	movq	%rsi, %r8
	leaq	_Z1fiii(%rip), %rsi
	movq	%rax, %rdi
.LEHB0:
	call	_ZSt4bindIRFviiiEJiiiEENSt12_Bind_helperIXsrSt5__or_IJSt11is_integralINSt5decayIT_E4typeEESt7is_enumIS8_EEE5valueES6_JDpT0_EE4typeEOS6_DpOSD_
	leaq	-96(%rbp), %rdx
	leaq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt8functionIFvvEEC1ISt5_BindIFPFviiiEiiiEEvvEET_
.LEHE0:
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
.LEHB1:
	call	_ZNKSt8functionIFvvEEclEv
.LEHE1:
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt8functionIFvvEED1Ev
	movl	$0, %eax
	movq	-24(%rbp), %rbx
	xorq	%fs:40, %rbx
	je	.L17
	jmp	.L20
.L18:
	movq	%rax, %rdi
.LEHB2:
	call	_Unwind_Resume@PLT
.L19:
	movq	%rax, %rbx
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt8functionIFvvEED1Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
	call	_Unwind_Resume@PLT
.LEHE2:
.L20:
	call	__stack_chk_fail@PLT
.L17:
	addq	$104, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1878:
	.section	.gcc_except_table,"a",@progbits
.LLSDA1878:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE1878-.LLSDACSB1878
.LLSDACSB1878:
	.uleb128 .LEHB0-.LFB1878
	.uleb128 .LEHE0-.LEHB0
	.uleb128 .L18-.LFB1878
	.uleb128 0
	.uleb128 .LEHB1-.LFB1878
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L19-.LFB1878
	.uleb128 0
	.uleb128 .LEHB2-.LFB1878
	.uleb128 .LEHE2-.LEHB2
	.uleb128 0
	.uleb128 0
.LLSDACSE1878:
	.text
	.size	main, .-main
	.section	.text._ZSt7forwardIRFviiiEEOT_RNSt16remove_referenceIS2_E4typeE,"axG",@progbits,_ZSt7forwardIRFviiiEEOT_RNSt16remove_referenceIS2_E4typeE,comdat
	.weak	_ZSt7forwardIRFviiiEEOT_RNSt16remove_referenceIS2_E4typeE
	.type	_ZSt7forwardIRFviiiEEOT_RNSt16remove_referenceIS2_E4typeE, @function
_ZSt7forwardIRFviiiEEOT_RNSt16remove_referenceIS2_E4typeE:
.LFB2127:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2127:
	.size	_ZSt7forwardIRFviiiEEOT_RNSt16remove_referenceIS2_E4typeE, .-_ZSt7forwardIRFviiiEEOT_RNSt16remove_referenceIS2_E4typeE
	.section	.text._ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE,"axG",@progbits,_ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE,comdat
	.weak	_ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE
	.type	_ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE, @function
_ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE:
.LFB2128:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2128:
	.size	_ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE, .-_ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE
	.section	.text._ZSt4bindIRFviiiEJiiiEENSt12_Bind_helperIXsrSt5__or_IJSt11is_integralINSt5decayIT_E4typeEESt7is_enumIS8_EEE5valueES6_JDpT0_EE4typeEOS6_DpOSD_,"axG",@progbits,_ZSt4bindIRFviiiEJiiiEENSt12_Bind_helperIXsrSt5__or_IJSt11is_integralINSt5decayIT_E4typeEESt7is_enumIS8_EEE5valueES6_JDpT0_EE4typeEOS6_DpOSD_,comdat
	.weak	_ZSt4bindIRFviiiEJiiiEENSt12_Bind_helperIXsrSt5__or_IJSt11is_integralINSt5decayIT_E4typeEESt7is_enumIS8_EEE5valueES6_JDpT0_EE4typeEOS6_DpOSD_
	.type	_ZSt4bindIRFviiiEJiiiEENSt12_Bind_helperIXsrSt5__or_IJSt11is_integralINSt5decayIT_E4typeEESt7is_enumIS8_EEE5valueES6_JDpT0_EE4typeEOS6_DpOSD_, @function
_ZSt4bindIRFviiiEJiiiEENSt12_Bind_helperIXsrSt5__or_IJSt11is_integralINSt5decayIT_E4typeEESt7is_enumIS8_EEE5valueES6_JDpT0_EE4typeEOS6_DpOSD_:
.LFB2126:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$72, %rsp
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	.cfi_offset 3, -40
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	%rcx, -80(%rbp)
	movq	%r8, -88(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -40(%rbp)
	xorl	%eax, %eax
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE
	movq	%rax, %r13
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE
	movq	%rax, %r12
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE
	movq	%rax, %rbx
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardIRFviiiEEOT_RNSt16remove_referenceIS2_E4typeE
	movq	%rax, -48(%rbp)
	leaq	-48(%rbp), %rsi
	movq	-56(%rbp), %rax
	movq	%r13, %r8
	movq	%r12, %rcx
	movq	%rbx, %rdx
	movq	%rax, %rdi
	call	_ZNSt5_BindIFPFviiiEiiiEEC1IJiiiEEEOS1_DpOT_
	movq	-56(%rbp), %rax
	movq	-40(%rbp), %rdx
	xorq	%fs:40, %rdx
	je	.L27
	call	__stack_chk_fail@PLT
.L27:
	addq	$72, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2126:
	.size	_ZSt4bindIRFviiiEJiiiEENSt12_Bind_helperIXsrSt5__or_IJSt11is_integralINSt5decayIT_E4typeEESt7is_enumIS8_EEE5valueES6_JDpT0_EE4typeEOS6_DpOSD_, .-_ZSt4bindIRFviiiEJiiiEENSt12_Bind_helperIXsrSt5__or_IJSt11is_integralINSt5decayIT_E4typeEESt7is_enumIS8_EEE5valueES6_JDpT0_EE4typeEOS6_DpOSD_
	.section	.text._ZSt4moveIRSt5tupleIJiiiEEEONSt16remove_referenceIT_E4typeEOS4_,"axG",@progbits,_ZSt4moveIRSt5tupleIJiiiEEEONSt16remove_referenceIT_E4typeEOS4_,comdat
	.weak	_ZSt4moveIRSt5tupleIJiiiEEEONSt16remove_referenceIT_E4typeEOS4_
	.type	_ZSt4moveIRSt5tupleIJiiiEEEONSt16remove_referenceIT_E4typeEOS4_, @function
_ZSt4moveIRSt5tupleIJiiiEEEONSt16remove_referenceIT_E4typeEOS4_:
.LFB2136:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2136:
	.size	_ZSt4moveIRSt5tupleIJiiiEEEONSt16remove_referenceIT_E4typeEOS4_, .-_ZSt4moveIRSt5tupleIJiiiEEEONSt16remove_referenceIT_E4typeEOS4_
	.section	.text._ZNSt11_Tuple_implILm2EJiEE7_M_headERS0_,"axG",@progbits,_ZNSt11_Tuple_implILm2EJiEE7_M_headERS0_,comdat
	.weak	_ZNSt11_Tuple_implILm2EJiEE7_M_headERS0_
	.type	_ZNSt11_Tuple_implILm2EJiEE7_M_headERS0_, @function
_ZNSt11_Tuple_implILm2EJiEE7_M_headERS0_:
.LFB2138:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt10_Head_baseILm2EiLb0EE7_M_headERS0_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2138:
	.size	_ZNSt11_Tuple_implILm2EJiEE7_M_headERS0_, .-_ZNSt11_Tuple_implILm2EJiEE7_M_headERS0_
	.section	.text._ZNSt10_Head_baseILm2EiLb0EE7_M_headERS0_,"axG",@progbits,_ZNSt10_Head_baseILm2EiLb0EE7_M_headERS0_,comdat
	.weak	_ZNSt10_Head_baseILm2EiLb0EE7_M_headERS0_
	.type	_ZNSt10_Head_baseILm2EiLb0EE7_M_headERS0_, @function
_ZNSt10_Head_baseILm2EiLb0EE7_M_headERS0_:
.LFB2139:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2139:
	.size	_ZNSt10_Head_baseILm2EiLb0EE7_M_headERS0_, .-_ZNSt10_Head_baseILm2EiLb0EE7_M_headERS0_
	.section	.text._ZNSt11_Tuple_implILm2EJiEEC2EOS0_,"axG",@progbits,_ZNSt11_Tuple_implILm2EJiEEC5EOS0_,comdat
	.align 2
	.weak	_ZNSt11_Tuple_implILm2EJiEEC2EOS0_
	.type	_ZNSt11_Tuple_implILm2EJiEEC2EOS0_, @function
_ZNSt11_Tuple_implILm2EJiEEC2EOS0_:
.LFB2140:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rbx
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt11_Tuple_implILm2EJiEE7_M_headERS0_
	movq	%rax, %rdi
	call	_ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE
	movq	%rax, %rsi
	movq	%rbx, %rdi
	call	_ZNSt10_Head_baseILm2EiLb0EEC2IiEEOT_
	nop
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2140:
	.size	_ZNSt11_Tuple_implILm2EJiEEC2EOS0_, .-_ZNSt11_Tuple_implILm2EJiEEC2EOS0_
	.weak	_ZNSt11_Tuple_implILm2EJiEEC1EOS0_
	.set	_ZNSt11_Tuple_implILm2EJiEEC1EOS0_,_ZNSt11_Tuple_implILm2EJiEEC2EOS0_
	.section	.text._ZNSt11_Tuple_implILm1EJiiEE7_M_tailERS0_,"axG",@progbits,_ZNSt11_Tuple_implILm1EJiiEE7_M_tailERS0_,comdat
	.weak	_ZNSt11_Tuple_implILm1EJiiEE7_M_tailERS0_
	.type	_ZNSt11_Tuple_implILm1EJiiEE7_M_tailERS0_, @function
_ZNSt11_Tuple_implILm1EJiiEE7_M_tailERS0_:
.LFB2143:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2143:
	.size	_ZNSt11_Tuple_implILm1EJiiEE7_M_tailERS0_, .-_ZNSt11_Tuple_implILm1EJiiEE7_M_tailERS0_
	.section	.text._ZNSt11_Tuple_implILm1EJiiEE7_M_headERS0_,"axG",@progbits,_ZNSt11_Tuple_implILm1EJiiEE7_M_headERS0_,comdat
	.weak	_ZNSt11_Tuple_implILm1EJiiEE7_M_headERS0_
	.type	_ZNSt11_Tuple_implILm1EJiiEE7_M_headERS0_, @function
_ZNSt11_Tuple_implILm1EJiiEE7_M_headERS0_:
.LFB2144:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	addq	$4, %rax
	movq	%rax, %rdi
	call	_ZNSt10_Head_baseILm1EiLb0EE7_M_headERS0_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2144:
	.size	_ZNSt11_Tuple_implILm1EJiiEE7_M_headERS0_, .-_ZNSt11_Tuple_implILm1EJiiEE7_M_headERS0_
	.section	.text._ZNSt10_Head_baseILm1EiLb0EE7_M_headERS0_,"axG",@progbits,_ZNSt10_Head_baseILm1EiLb0EE7_M_headERS0_,comdat
	.weak	_ZNSt10_Head_baseILm1EiLb0EE7_M_headERS0_
	.type	_ZNSt10_Head_baseILm1EiLb0EE7_M_headERS0_, @function
_ZNSt10_Head_baseILm1EiLb0EE7_M_headERS0_:
.LFB2145:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2145:
	.size	_ZNSt10_Head_baseILm1EiLb0EE7_M_headERS0_, .-_ZNSt10_Head_baseILm1EiLb0EE7_M_headERS0_
	.section	.text._ZSt4moveIRSt11_Tuple_implILm2EJiEEEONSt16remove_referenceIT_E4typeEOS4_,"axG",@progbits,_ZSt4moveIRSt11_Tuple_implILm2EJiEEEONSt16remove_referenceIT_E4typeEOS4_,comdat
	.weak	_ZSt4moveIRSt11_Tuple_implILm2EJiEEEONSt16remove_referenceIT_E4typeEOS4_
	.type	_ZSt4moveIRSt11_Tuple_implILm2EJiEEEONSt16remove_referenceIT_E4typeEOS4_, @function
_ZSt4moveIRSt11_Tuple_implILm2EJiEEEONSt16remove_referenceIT_E4typeEOS4_:
.LFB2146:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2146:
	.size	_ZSt4moveIRSt11_Tuple_implILm2EJiEEEONSt16remove_referenceIT_E4typeEOS4_, .-_ZSt4moveIRSt11_Tuple_implILm2EJiEEEONSt16remove_referenceIT_E4typeEOS4_
	.section	.text._ZNSt11_Tuple_implILm1EJiiEEC2EOS0_,"axG",@progbits,_ZNSt11_Tuple_implILm1EJiiEEC5EOS0_,comdat
	.align 2
	.weak	_ZNSt11_Tuple_implILm1EJiiEEC2EOS0_
	.type	_ZNSt11_Tuple_implILm1EJiiEEC2EOS0_, @function
_ZNSt11_Tuple_implILm1EJiiEEC2EOS0_:
.LFB2147:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rbx
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt11_Tuple_implILm1EJiiEE7_M_tailERS0_
	movq	%rax, %rdi
	call	_ZSt4moveIRSt11_Tuple_implILm2EJiEEEONSt16remove_referenceIT_E4typeEOS4_
	movq	%rax, %rsi
	movq	%rbx, %rdi
	call	_ZNSt11_Tuple_implILm2EJiEEC2EOS0_
	movq	-24(%rbp), %rax
	leaq	4(%rax), %rbx
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt11_Tuple_implILm1EJiiEE7_M_headERS0_
	movq	%rax, %rdi
	call	_ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE
	movq	%rax, %rsi
	movq	%rbx, %rdi
	call	_ZNSt10_Head_baseILm1EiLb0EEC2IiEEOT_
	nop
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2147:
	.size	_ZNSt11_Tuple_implILm1EJiiEEC2EOS0_, .-_ZNSt11_Tuple_implILm1EJiiEEC2EOS0_
	.weak	_ZNSt11_Tuple_implILm1EJiiEEC1EOS0_
	.set	_ZNSt11_Tuple_implILm1EJiiEEC1EOS0_,_ZNSt11_Tuple_implILm1EJiiEEC2EOS0_
	.section	.text._ZNSt5tupleIJiiiEEC2EOS0_,"axG",@progbits,_ZNSt5tupleIJiiiEEC5EOS0_,comdat
	.align 2
	.weak	_ZNSt5tupleIJiiiEEC2EOS0_
	.type	_ZNSt5tupleIJiiiEEC2EOS0_, @function
_ZNSt5tupleIJiiiEEC2EOS0_:
.LFB2150:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt11_Tuple_implILm0EJiiiEEC2EOS0_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2150:
	.size	_ZNSt5tupleIJiiiEEC2EOS0_, .-_ZNSt5tupleIJiiiEEC2EOS0_
	.weak	_ZNSt5tupleIJiiiEEC1EOS0_
	.set	_ZNSt5tupleIJiiiEEC1EOS0_,_ZNSt5tupleIJiiiEEC2EOS0_
	.section	.text._ZNSt5_BindIFPFviiiEiiiEEC2EOS3_,"axG",@progbits,_ZNSt5_BindIFPFviiiEiiiEEC5EOS3_,comdat
	.align 2
	.weak	_ZNSt5_BindIFPFviiiEiiiEEC2EOS3_
	.type	_ZNSt5_BindIFPFviiiEiiiEEC2EOS3_, @function
_ZNSt5_BindIFPFviiiEiiiEEC2EOS3_:
.LFB2152:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt4moveIRPFviiiEEONSt16remove_referenceIT_E4typeEOS4_
	movq	(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-24(%rbp), %rax
	leaq	8(%rax), %rbx
	movq	-32(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdi
	call	_ZSt4moveIRSt5tupleIJiiiEEEONSt16remove_referenceIT_E4typeEOS4_
	movq	%rax, %rsi
	movq	%rbx, %rdi
	call	_ZNSt5tupleIJiiiEEC1EOS0_
	nop
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2152:
	.size	_ZNSt5_BindIFPFviiiEiiiEEC2EOS3_, .-_ZNSt5_BindIFPFviiiEiiiEEC2EOS3_
	.weak	_ZNSt5_BindIFPFviiiEiiiEEC1EOS3_
	.set	_ZNSt5_BindIFPFviiiEiiiEEC1EOS3_,_ZNSt5_BindIFPFviiiEiiiEEC2EOS3_
	.section	.text._ZSt4moveIRSt5_BindIFPFviiiEiiiEEEONSt16remove_referenceIT_E4typeEOS7_,"axG",@progbits,_ZSt4moveIRSt5_BindIFPFviiiEiiiEEEONSt16remove_referenceIT_E4typeEOS7_,comdat
	.weak	_ZSt4moveIRSt5_BindIFPFviiiEiiiEEEONSt16remove_referenceIT_E4typeEOS7_
	.type	_ZSt4moveIRSt5_BindIFPFviiiEiiiEEEONSt16remove_referenceIT_E4typeEOS7_, @function
_ZSt4moveIRSt5_BindIFPFviiiEiiiEEEONSt16remove_referenceIT_E4typeEOS7_:
.LFB2155:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2155:
	.size	_ZSt4moveIRSt5_BindIFPFviiiEiiiEEEONSt16remove_referenceIT_E4typeEOS7_, .-_ZSt4moveIRSt5_BindIFPFviiiEiiiEEEONSt16remove_referenceIT_E4typeEOS7_
	.section	.text._ZNSt8functionIFvvEEC2ISt5_BindIFPFviiiEiiiEEvvEET_,"axG",@progbits,_ZNSt8functionIFvvEEC5ISt5_BindIFPFviiiEiiiEEvvEET_,comdat
	.align 2
	.weak	_ZNSt8functionIFvvEEC2ISt5_BindIFPFviiiEiiiEEvvEET_
	.type	_ZNSt8functionIFvvEEC2ISt5_BindIFPFviiiEiiiEEvvEET_, @function
_ZNSt8functionIFvvEEC2ISt5_BindIFPFviiiEiiiEEvvEET_:
.LFB2156:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA2156
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt14_Function_baseC2Ev
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt14_Function_base13_Base_managerISt5_BindIFPFviiiEiiiEEE21_M_not_empty_functionIS5_EEbRKT_
	testb	%al, %al
	je	.L52
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt4moveIRSt5_BindIFPFviiiEiiiEEEONSt16remove_referenceIT_E4typeEOS7_
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB3:
	call	_ZNSt14_Function_base13_Base_managerISt5_BindIFPFviiiEiiiEEE15_M_init_functorERSt9_Any_dataOS5_
.LEHE3:
	movq	-24(%rbp), %rax
	leaq	_ZNSt17_Function_handlerIFvvESt5_BindIFPFviiiEiiiEEE9_M_invokeERKSt9_Any_data(%rip), %rdx
	movq	%rdx, 24(%rax)
	movq	-24(%rbp), %rax
	leaq	_ZNSt14_Function_base13_Base_managerISt5_BindIFPFviiiEiiiEEE10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation(%rip), %rdx
	movq	%rdx, 16(%rax)
	jmp	.L52
.L51:
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt14_Function_baseD2Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB4:
	call	_Unwind_Resume@PLT
.LEHE4:
.L52:
	nop
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2156:
	.section	.gcc_except_table
.LLSDA2156:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2156-.LLSDACSB2156
.LLSDACSB2156:
	.uleb128 .LEHB3-.LFB2156
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L51-.LFB2156
	.uleb128 0
	.uleb128 .LEHB4-.LFB2156
	.uleb128 .LEHE4-.LEHB4
	.uleb128 0
	.uleb128 0
.LLSDACSE2156:
	.section	.text._ZNSt8functionIFvvEEC2ISt5_BindIFPFviiiEiiiEEvvEET_,"axG",@progbits,_ZNSt8functionIFvvEEC5ISt5_BindIFPFviiiEiiiEEvvEET_,comdat
	.size	_ZNSt8functionIFvvEEC2ISt5_BindIFPFviiiEiiiEEvvEET_, .-_ZNSt8functionIFvvEEC2ISt5_BindIFPFviiiEiiiEEvvEET_
	.weak	_ZNSt8functionIFvvEEC1ISt5_BindIFPFviiiEiiiEEvvEET_
	.set	_ZNSt8functionIFvvEEC1ISt5_BindIFPFviiiEiiiEEvvEET_,_ZNSt8functionIFvvEEC2ISt5_BindIFPFviiiEiiiEEvvEET_
	.section	.text._ZNKSt8functionIFvvEEclEv,"axG",@progbits,_ZNKSt8functionIFvvEEclEv,comdat
	.align 2
	.weak	_ZNKSt8functionIFvvEEclEv
	.type	_ZNKSt8functionIFvvEEclEv, @function
_ZNKSt8functionIFvvEEclEv:
.LFB2161:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt14_Function_base8_M_emptyEv
	testb	%al, %al
	je	.L54
	call	_ZSt25__throw_bad_function_callv@PLT
.L54:
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, %rdi
	call	*%rax
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2161:
	.size	_ZNKSt8functionIFvvEEclEv, .-_ZNKSt8functionIFvvEEclEv
	.section	.text._ZNSt5_BindIFPFviiiEiiiEEC2IJiiiEEEOS1_DpOT_,"axG",@progbits,_ZNSt5_BindIFPFviiiEiiiEEC5IJiiiEEEOS1_DpOT_,comdat
	.align 2
	.weak	_ZNSt5_BindIFPFviiiEiiiEEC2IJiiiEEEOS1_DpOT_
	.type	_ZNSt5_BindIFPFviiiEiiiEEC2IJiiiEEEOS1_DpOT_, @function
_ZNSt5_BindIFPFviiiEiiiEEC2IJiiiEEEOS1_DpOT_:
.LFB2278:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	.cfi_offset 3, -40
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%rcx, -64(%rbp)
	movq	%r8, -72(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt4moveIRPFviiiEEONSt16remove_referenceIT_E4typeEOS4_
	movq	(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-40(%rbp), %rax
	leaq	8(%rax), %rbx
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE
	movq	%rax, %r13
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE
	movq	%rax, %r12
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE
	movq	%r13, %rcx
	movq	%r12, %rdx
	movq	%rax, %rsi
	movq	%rbx, %rdi
	call	_ZNSt5tupleIJiiiEEC1IJiiiELb1EEEDpOT_
	nop
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2278:
	.size	_ZNSt5_BindIFPFviiiEiiiEEC2IJiiiEEEOS1_DpOT_, .-_ZNSt5_BindIFPFviiiEiiiEEC2IJiiiEEEOS1_DpOT_
	.weak	_ZNSt5_BindIFPFviiiEiiiEEC1IJiiiEEEOS1_DpOT_
	.set	_ZNSt5_BindIFPFviiiEiiiEEC1IJiiiEEEOS1_DpOT_,_ZNSt5_BindIFPFviiiEiiiEEC2IJiiiEEEOS1_DpOT_
	.section	.text._ZSt4moveIRPFviiiEEONSt16remove_referenceIT_E4typeEOS4_,"axG",@progbits,_ZSt4moveIRPFviiiEEONSt16remove_referenceIT_E4typeEOS4_,comdat
	.weak	_ZSt4moveIRPFviiiEEONSt16remove_referenceIT_E4typeEOS4_
	.type	_ZSt4moveIRPFviiiEEONSt16remove_referenceIT_E4typeEOS4_, @function
_ZSt4moveIRPFviiiEEONSt16remove_referenceIT_E4typeEOS4_:
.LFB2280:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2280:
	.size	_ZSt4moveIRPFviiiEEONSt16remove_referenceIT_E4typeEOS4_, .-_ZSt4moveIRPFviiiEEONSt16remove_referenceIT_E4typeEOS4_
	.section	.text._ZNSt10_Head_baseILm2EiLb0EEC2IiEEOT_,"axG",@progbits,_ZNSt10_Head_baseILm2EiLb0EEC5IiEEOT_,comdat
	.align 2
	.weak	_ZNSt10_Head_baseILm2EiLb0EEC2IiEEOT_
	.type	_ZNSt10_Head_baseILm2EiLb0EEC2IiEEOT_, @function
_ZNSt10_Head_baseILm2EiLb0EEC2IiEEOT_:
.LFB2282:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE
	movl	(%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, (%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2282:
	.size	_ZNSt10_Head_baseILm2EiLb0EEC2IiEEOT_, .-_ZNSt10_Head_baseILm2EiLb0EEC2IiEEOT_
	.weak	_ZNSt10_Head_baseILm2EiLb0EEC1IiEEOT_
	.set	_ZNSt10_Head_baseILm2EiLb0EEC1IiEEOT_,_ZNSt10_Head_baseILm2EiLb0EEC2IiEEOT_
	.section	.text._ZNSt10_Head_baseILm1EiLb0EEC2IiEEOT_,"axG",@progbits,_ZNSt10_Head_baseILm1EiLb0EEC5IiEEOT_,comdat
	.align 2
	.weak	_ZNSt10_Head_baseILm1EiLb0EEC2IiEEOT_
	.type	_ZNSt10_Head_baseILm1EiLb0EEC2IiEEOT_, @function
_ZNSt10_Head_baseILm1EiLb0EEC2IiEEOT_:
.LFB2285:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE
	movl	(%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, (%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2285:
	.size	_ZNSt10_Head_baseILm1EiLb0EEC2IiEEOT_, .-_ZNSt10_Head_baseILm1EiLb0EEC2IiEEOT_
	.weak	_ZNSt10_Head_baseILm1EiLb0EEC1IiEEOT_
	.set	_ZNSt10_Head_baseILm1EiLb0EEC1IiEEOT_,_ZNSt10_Head_baseILm1EiLb0EEC2IiEEOT_
	.section	.text._ZNSt11_Tuple_implILm0EJiiiEE7_M_tailERS0_,"axG",@progbits,_ZNSt11_Tuple_implILm0EJiiiEE7_M_tailERS0_,comdat
	.weak	_ZNSt11_Tuple_implILm0EJiiiEE7_M_tailERS0_
	.type	_ZNSt11_Tuple_implILm0EJiiiEE7_M_tailERS0_, @function
_ZNSt11_Tuple_implILm0EJiiiEE7_M_tailERS0_:
.LFB2288:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2288:
	.size	_ZNSt11_Tuple_implILm0EJiiiEE7_M_tailERS0_, .-_ZNSt11_Tuple_implILm0EJiiiEE7_M_tailERS0_
	.section	.text._ZNSt11_Tuple_implILm0EJiiiEE7_M_headERS0_,"axG",@progbits,_ZNSt11_Tuple_implILm0EJiiiEE7_M_headERS0_,comdat
	.weak	_ZNSt11_Tuple_implILm0EJiiiEE7_M_headERS0_
	.type	_ZNSt11_Tuple_implILm0EJiiiEE7_M_headERS0_, @function
_ZNSt11_Tuple_implILm0EJiiiEE7_M_headERS0_:
.LFB2289:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdi
	call	_ZNSt10_Head_baseILm0EiLb0EE7_M_headERS0_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2289:
	.size	_ZNSt11_Tuple_implILm0EJiiiEE7_M_headERS0_, .-_ZNSt11_Tuple_implILm0EJiiiEE7_M_headERS0_
	.section	.text._ZNSt10_Head_baseILm0EiLb0EE7_M_headERS0_,"axG",@progbits,_ZNSt10_Head_baseILm0EiLb0EE7_M_headERS0_,comdat
	.weak	_ZNSt10_Head_baseILm0EiLb0EE7_M_headERS0_
	.type	_ZNSt10_Head_baseILm0EiLb0EE7_M_headERS0_, @function
_ZNSt10_Head_baseILm0EiLb0EE7_M_headERS0_:
.LFB2290:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2290:
	.size	_ZNSt10_Head_baseILm0EiLb0EE7_M_headERS0_, .-_ZNSt10_Head_baseILm0EiLb0EE7_M_headERS0_
	.section	.text._ZSt4moveIRSt11_Tuple_implILm1EJiiEEEONSt16remove_referenceIT_E4typeEOS4_,"axG",@progbits,_ZSt4moveIRSt11_Tuple_implILm1EJiiEEEONSt16remove_referenceIT_E4typeEOS4_,comdat
	.weak	_ZSt4moveIRSt11_Tuple_implILm1EJiiEEEONSt16remove_referenceIT_E4typeEOS4_
	.type	_ZSt4moveIRSt11_Tuple_implILm1EJiiEEEONSt16remove_referenceIT_E4typeEOS4_, @function
_ZSt4moveIRSt11_Tuple_implILm1EJiiEEEONSt16remove_referenceIT_E4typeEOS4_:
.LFB2291:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2291:
	.size	_ZSt4moveIRSt11_Tuple_implILm1EJiiEEEONSt16remove_referenceIT_E4typeEOS4_, .-_ZSt4moveIRSt11_Tuple_implILm1EJiiEEEONSt16remove_referenceIT_E4typeEOS4_
	.section	.text._ZNSt11_Tuple_implILm0EJiiiEEC2EOS0_,"axG",@progbits,_ZNSt11_Tuple_implILm0EJiiiEEC5EOS0_,comdat
	.align 2
	.weak	_ZNSt11_Tuple_implILm0EJiiiEEC2EOS0_
	.type	_ZNSt11_Tuple_implILm0EJiiiEEC2EOS0_, @function
_ZNSt11_Tuple_implILm0EJiiiEEC2EOS0_:
.LFB2292:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rbx
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt11_Tuple_implILm0EJiiiEE7_M_tailERS0_
	movq	%rax, %rdi
	call	_ZSt4moveIRSt11_Tuple_implILm1EJiiEEEONSt16remove_referenceIT_E4typeEOS4_
	movq	%rax, %rsi
	movq	%rbx, %rdi
	call	_ZNSt11_Tuple_implILm1EJiiEEC2EOS0_
	movq	-24(%rbp), %rax
	leaq	8(%rax), %rbx
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt11_Tuple_implILm0EJiiiEE7_M_headERS0_
	movq	%rax, %rdi
	call	_ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE
	movq	%rax, %rsi
	movq	%rbx, %rdi
	call	_ZNSt10_Head_baseILm0EiLb0EEC2IiEEOT_
	nop
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2292:
	.size	_ZNSt11_Tuple_implILm0EJiiiEEC2EOS0_, .-_ZNSt11_Tuple_implILm0EJiiiEEC2EOS0_
	.weak	_ZNSt11_Tuple_implILm0EJiiiEEC1EOS0_
	.set	_ZNSt11_Tuple_implILm0EJiiiEEC1EOS0_,_ZNSt11_Tuple_implILm0EJiiiEEC2EOS0_
	.section	.text._ZNSt14_Function_base13_Base_managerISt5_BindIFPFviiiEiiiEEE21_M_not_empty_functionIS5_EEbRKT_,"axG",@progbits,_ZNSt14_Function_base13_Base_managerISt5_BindIFPFviiiEiiiEEE21_M_not_empty_functionIS5_EEbRKT_,comdat
	.weak	_ZNSt14_Function_base13_Base_managerISt5_BindIFPFviiiEiiiEEE21_M_not_empty_functionIS5_EEbRKT_
	.type	_ZNSt14_Function_base13_Base_managerISt5_BindIFPFviiiEiiiEEE21_M_not_empty_functionIS5_EEbRKT_, @function
_ZNSt14_Function_base13_Base_managerISt5_BindIFPFviiiEiiiEEE21_M_not_empty_functionIS5_EEbRKT_:
.LFB2294:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2294:
	.size	_ZNSt14_Function_base13_Base_managerISt5_BindIFPFviiiEiiiEEE21_M_not_empty_functionIS5_EEbRKT_, .-_ZNSt14_Function_base13_Base_managerISt5_BindIFPFviiiEiiiEEE21_M_not_empty_functionIS5_EEbRKT_
	.section	.text._ZNSt14_Function_base13_Base_managerISt5_BindIFPFviiiEiiiEEE15_M_init_functorERSt9_Any_dataOS5_,"axG",@progbits,_ZNSt14_Function_base13_Base_managerISt5_BindIFPFviiiEiiiEEE15_M_init_functorERSt9_Any_dataOS5_,comdat
	.weak	_ZNSt14_Function_base13_Base_managerISt5_BindIFPFviiiEiiiEEE15_M_init_functorERSt9_Any_dataOS5_
	.type	_ZNSt14_Function_base13_Base_managerISt5_BindIFPFviiiEiiiEEE15_M_init_functorERSt9_Any_dataOS5_, @function
_ZNSt14_Function_base13_Base_managerISt5_BindIFPFviiiEiiiEEE15_M_init_functorERSt9_Any_dataOS5_:
.LFB2295:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt4moveIRSt5_BindIFPFviiiEiiiEEEONSt16remove_referenceIT_E4typeEOS7_
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt14_Function_base13_Base_managerISt5_BindIFPFviiiEiiiEEE15_M_init_functorERSt9_Any_dataOS5_St17integral_constantIbLb0EE
	nop
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L73
	call	__stack_chk_fail@PLT
.L73:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2295:
	.size	_ZNSt14_Function_base13_Base_managerISt5_BindIFPFviiiEiiiEEE15_M_init_functorERSt9_Any_dataOS5_, .-_ZNSt14_Function_base13_Base_managerISt5_BindIFPFviiiEiiiEEE15_M_init_functorERSt9_Any_dataOS5_
	.section	.text._ZNSt17_Function_handlerIFvvESt5_BindIFPFviiiEiiiEEE9_M_invokeERKSt9_Any_data,"axG",@progbits,_ZNSt17_Function_handlerIFvvESt5_BindIFPFviiiEiiiEEE9_M_invokeERKSt9_Any_data,comdat
	.weak	_ZNSt17_Function_handlerIFvvESt5_BindIFPFviiiEiiiEEE9_M_invokeERKSt9_Any_data
	.type	_ZNSt17_Function_handlerIFvvESt5_BindIFPFviiiEiiiEEE9_M_invokeERKSt9_Any_data, @function
_ZNSt17_Function_handlerIFvvESt5_BindIFPFviiiEiiiEEE9_M_invokeERKSt9_Any_data:
.LFB2296:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt14_Function_base13_Base_managerISt5_BindIFPFviiiEiiiEEE14_M_get_pointerERKSt9_Any_data
	movq	%rax, %rdi
	call	_ZNSt5_BindIFPFviiiEiiiEEclIJEvEET0_DpOT_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2296:
	.size	_ZNSt17_Function_handlerIFvvESt5_BindIFPFviiiEiiiEEE9_M_invokeERKSt9_Any_data, .-_ZNSt17_Function_handlerIFvvESt5_BindIFPFviiiEiiiEEE9_M_invokeERKSt9_Any_data
	.section	.text._ZNSt14_Function_base13_Base_managerISt5_BindIFPFviiiEiiiEEE10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation,"axG",@progbits,_ZNSt14_Function_base13_Base_managerISt5_BindIFPFviiiEiiiEEE10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation,comdat
	.weak	_ZNSt14_Function_base13_Base_managerISt5_BindIFPFviiiEiiiEEE10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation
	.type	_ZNSt14_Function_base13_Base_managerISt5_BindIFPFviiiEiiiEEE10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation, @function
_ZNSt14_Function_base13_Base_managerISt5_BindIFPFviiiEiiiEEE10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation:
.LFB2297:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movl	%edx, -52(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movl	-52(%rbp), %eax
	cmpl	$1, %eax
	je	.L76
	cmpl	$1, %eax
	jg	.L77
	testl	%eax, %eax
	je	.L78
	jmp	.L79
.L77:
	cmpl	$2, %eax
	je	.L80
	cmpl	$3, %eax
	je	.L81
	jmp	.L79
.L78:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt9_Any_data9_M_accessIPKSt9type_infoEERT_v
	movq	%rax, %rdx
	leaq	_ZTISt5_BindIFPFviiiEiiiEE(%rip), %rax
	movq	%rax, (%rdx)
	jmp	.L79
.L76:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt9_Any_data9_M_accessIPSt5_BindIFPFviiiEiiiEEEERT_v
	movq	%rax, %rbx
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt14_Function_base13_Base_managerISt5_BindIFPFviiiEiiiEEE14_M_get_pointerERKSt9_Any_data
	movq	%rax, (%rbx)
	jmp	.L79
.L80:
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt14_Function_base13_Base_managerISt5_BindIFPFviiiEiiiEEE8_M_cloneERSt9_Any_dataRKS7_St17integral_constantIbLb0EE
	jmp	.L79
.L81:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt14_Function_base13_Base_managerISt5_BindIFPFviiiEiiiEEE10_M_destroyERSt9_Any_dataSt17integral_constantIbLb0EE
	nop
.L79:
	movl	$0, %eax
	movq	-24(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L83
	call	__stack_chk_fail@PLT
.L83:
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2297:
	.size	_ZNSt14_Function_base13_Base_managerISt5_BindIFPFviiiEiiiEEE10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation, .-_ZNSt14_Function_base13_Base_managerISt5_BindIFPFviiiEiiiEEE10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation
	.section	.text._ZNSt5tupleIJiiiEEC2IJiiiELb1EEEDpOT_,"axG",@progbits,_ZNSt5tupleIJiiiEEC5IJiiiELb1EEEDpOT_,comdat
	.align 2
	.weak	_ZNSt5tupleIJiiiEEC2IJiiiELb1EEEDpOT_
	.type	_ZNSt5tupleIJiiiEEC2IJiiiELb1EEEDpOT_, @function
_ZNSt5tupleIJiiiEEC2IJiiiELb1EEEDpOT_:
.LFB2335:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	.cfi_offset 3, -40
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%rcx, -64(%rbp)
	movq	-40(%rbp), %rbx
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE
	movq	%rax, %r13
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE
	movq	%rax, %r12
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE
	movq	%r13, %rcx
	movq	%r12, %rdx
	movq	%rax, %rsi
	movq	%rbx, %rdi
	call	_ZNSt11_Tuple_implILm0EJiiiEEC2IiJiiEvEEOT_DpOT0_
	nop
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2335:
	.size	_ZNSt5tupleIJiiiEEC2IJiiiELb1EEEDpOT_, .-_ZNSt5tupleIJiiiEEC2IJiiiELb1EEEDpOT_
	.weak	_ZNSt5tupleIJiiiEEC1IJiiiELb1EEEDpOT_
	.set	_ZNSt5tupleIJiiiEEC1IJiiiELb1EEEDpOT_,_ZNSt5tupleIJiiiEEC2IJiiiELb1EEEDpOT_
	.section	.text._ZNSt10_Head_baseILm0EiLb0EEC2IiEEOT_,"axG",@progbits,_ZNSt10_Head_baseILm0EiLb0EEC5IiEEOT_,comdat
	.align 2
	.weak	_ZNSt10_Head_baseILm0EiLb0EEC2IiEEOT_
	.type	_ZNSt10_Head_baseILm0EiLb0EEC2IiEEOT_, @function
_ZNSt10_Head_baseILm0EiLb0EEC2IiEEOT_:
.LFB2338:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE
	movl	(%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, (%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2338:
	.size	_ZNSt10_Head_baseILm0EiLb0EEC2IiEEOT_, .-_ZNSt10_Head_baseILm0EiLb0EEC2IiEEOT_
	.weak	_ZNSt10_Head_baseILm0EiLb0EEC1IiEEOT_
	.set	_ZNSt10_Head_baseILm0EiLb0EEC1IiEEOT_,_ZNSt10_Head_baseILm0EiLb0EEC2IiEEOT_
	.section	.text._ZNSt14_Function_base13_Base_managerISt5_BindIFPFviiiEiiiEEE15_M_init_functorERSt9_Any_dataOS5_St17integral_constantIbLb0EE,"axG",@progbits,_ZNSt14_Function_base13_Base_managerISt5_BindIFPFviiiEiiiEEE15_M_init_functorERSt9_Any_dataOS5_St17integral_constantIbLb0EE,comdat
	.weak	_ZNSt14_Function_base13_Base_managerISt5_BindIFPFviiiEiiiEEE15_M_init_functorERSt9_Any_dataOS5_St17integral_constantIbLb0EE
	.type	_ZNSt14_Function_base13_Base_managerISt5_BindIFPFviiiEiiiEEE15_M_init_functorERSt9_Any_dataOS5_St17integral_constantIbLb0EE, @function
_ZNSt14_Function_base13_Base_managerISt5_BindIFPFviiiEiiiEEE15_M_init_functorERSt9_Any_dataOS5_St17integral_constantIbLb0EE:
.LFB2340:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$16, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt4moveIRSt5_BindIFPFviiiEiiiEEEONSt16remove_referenceIT_E4typeEOS7_
	movq	%rax, %r12
	movl	$24, %edi
	call	_Znwm@PLT
	movq	%rax, %rbx
	movq	%r12, %rsi
	movq	%rbx, %rdi
	call	_ZNSt5_BindIFPFviiiEiiiEEC1EOS3_
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt9_Any_data9_M_accessIPSt5_BindIFPFviiiEiiiEEEERT_v
	movq	%rbx, (%rax)
	nop
	addq	$16, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2340:
	.size	_ZNSt14_Function_base13_Base_managerISt5_BindIFPFviiiEiiiEEE15_M_init_functorERSt9_Any_dataOS5_St17integral_constantIbLb0EE, .-_ZNSt14_Function_base13_Base_managerISt5_BindIFPFviiiEiiiEEE15_M_init_functorERSt9_Any_dataOS5_St17integral_constantIbLb0EE
	.section	.text._ZNSt14_Function_base13_Base_managerISt5_BindIFPFviiiEiiiEEE14_M_get_pointerERKSt9_Any_data,"axG",@progbits,_ZNSt14_Function_base13_Base_managerISt5_BindIFPFviiiEiiiEEE14_M_get_pointerERKSt9_Any_data,comdat
	.weak	_ZNSt14_Function_base13_Base_managerISt5_BindIFPFviiiEiiiEEE14_M_get_pointerERKSt9_Any_data
	.type	_ZNSt14_Function_base13_Base_managerISt5_BindIFPFviiiEiiiEEE14_M_get_pointerERKSt9_Any_data, @function
_ZNSt14_Function_base13_Base_managerISt5_BindIFPFviiiEiiiEEE14_M_get_pointerERKSt9_Any_data:
.LFB2341:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt9_Any_data9_M_accessIPSt5_BindIFPFviiiEiiiEEEERKT_v
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2341:
	.size	_ZNSt14_Function_base13_Base_managerISt5_BindIFPFviiiEiiiEEE14_M_get_pointerERKSt9_Any_data, .-_ZNSt14_Function_base13_Base_managerISt5_BindIFPFviiiEiiiEEE14_M_get_pointerERKSt9_Any_data
	.section	.text._ZSt16forward_as_tupleIJEESt5tupleIJDpOT_EES3_,"axG",@progbits,_ZSt16forward_as_tupleIJEESt5tupleIJDpOT_EES3_,comdat
	.weak	_ZSt16forward_as_tupleIJEESt5tupleIJDpOT_EES3_
	.type	_ZSt16forward_as_tupleIJEESt5tupleIJDpOT_EES3_, @function
_ZSt16forward_as_tupleIJEESt5tupleIJDpOT_EES3_:
.LFB2343:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2343:
	.size	_ZSt16forward_as_tupleIJEESt5tupleIJDpOT_EES3_, .-_ZSt16forward_as_tupleIJEESt5tupleIJDpOT_EES3_
	.section	.text._ZNSt5_BindIFPFviiiEiiiEEclIJEvEET0_DpOT_,"axG",@progbits,_ZNSt5_BindIFPFviiiEiiiEEclIJEvEET0_DpOT_,comdat
	.align 2
	.weak	_ZNSt5_BindIFPFviiiEiiiEEclIJEvEET0_DpOT_
	.type	_ZNSt5_BindIFPFviiiEiiiEEclIJEvEET0_DpOT_, @function
_ZNSt5_BindIFPFviiiEiiiEEclIJEvEET0_DpOT_:
.LFB2342:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	call	_ZSt16forward_as_tupleIJEESt5tupleIJDpOT_EES3_
	leaq	-9(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt5_BindIFPFviiiEiiiEE6__callIvJEJLm0ELm1ELm2EEEET_OSt5tupleIJDpT0_EESt12_Index_tupleIJXspT1_EEE
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L93
	call	__stack_chk_fail@PLT
.L93:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2342:
	.size	_ZNSt5_BindIFPFviiiEiiiEEclIJEvEET0_DpOT_, .-_ZNSt5_BindIFPFviiiEiiiEEclIJEvEET0_DpOT_
	.section	.text._ZNSt9_Any_data9_M_accessIPKSt9type_infoEERT_v,"axG",@progbits,_ZNSt9_Any_data9_M_accessIPKSt9type_infoEERT_v,comdat
	.align 2
	.weak	_ZNSt9_Any_data9_M_accessIPKSt9type_infoEERT_v
	.type	_ZNSt9_Any_data9_M_accessIPKSt9type_infoEERT_v, @function
_ZNSt9_Any_data9_M_accessIPKSt9type_infoEERT_v:
.LFB2344:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt9_Any_data9_M_accessEv
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2344:
	.size	_ZNSt9_Any_data9_M_accessIPKSt9type_infoEERT_v, .-_ZNSt9_Any_data9_M_accessIPKSt9type_infoEERT_v
	.section	.text._ZNSt9_Any_data9_M_accessIPSt5_BindIFPFviiiEiiiEEEERT_v,"axG",@progbits,_ZNSt9_Any_data9_M_accessIPSt5_BindIFPFviiiEiiiEEEERT_v,comdat
	.align 2
	.weak	_ZNSt9_Any_data9_M_accessIPSt5_BindIFPFviiiEiiiEEEERT_v
	.type	_ZNSt9_Any_data9_M_accessIPSt5_BindIFPFviiiEiiiEEEERT_v, @function
_ZNSt9_Any_data9_M_accessIPSt5_BindIFPFviiiEiiiEEEERT_v:
.LFB2345:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt9_Any_data9_M_accessEv
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2345:
	.size	_ZNSt9_Any_data9_M_accessIPSt5_BindIFPFviiiEiiiEEEERT_v, .-_ZNSt9_Any_data9_M_accessIPSt5_BindIFPFviiiEiiiEEEERT_v
	.section	.text._ZNSt14_Function_base13_Base_managerISt5_BindIFPFviiiEiiiEEE8_M_cloneERSt9_Any_dataRKS7_St17integral_constantIbLb0EE,"axG",@progbits,_ZNSt14_Function_base13_Base_managerISt5_BindIFPFviiiEiiiEEE8_M_cloneERSt9_Any_dataRKS7_St17integral_constantIbLb0EE,comdat
	.weak	_ZNSt14_Function_base13_Base_managerISt5_BindIFPFviiiEiiiEEE8_M_cloneERSt9_Any_dataRKS7_St17integral_constantIbLb0EE
	.type	_ZNSt14_Function_base13_Base_managerISt5_BindIFPFviiiEiiiEEE8_M_cloneERSt9_Any_dataRKS7_St17integral_constantIbLb0EE, @function
_ZNSt14_Function_base13_Base_managerISt5_BindIFPFviiiEiiiEEE8_M_cloneERSt9_Any_dataRKS7_St17integral_constantIbLb0EE:
.LFB2346:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$16, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt9_Any_data9_M_accessIPSt5_BindIFPFviiiEiiiEEEERKT_v
	movq	(%rax), %r12
	movl	$24, %edi
	call	_Znwm@PLT
	movq	%rax, %rbx
	movq	(%r12), %rax
	movq	8(%r12), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	16(%r12), %rax
	movq	%rax, 16(%rbx)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt9_Any_data9_M_accessIPSt5_BindIFPFviiiEiiiEEEERT_v
	movq	%rbx, (%rax)
	nop
	addq	$16, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2346:
	.size	_ZNSt14_Function_base13_Base_managerISt5_BindIFPFviiiEiiiEEE8_M_cloneERSt9_Any_dataRKS7_St17integral_constantIbLb0EE, .-_ZNSt14_Function_base13_Base_managerISt5_BindIFPFviiiEiiiEEE8_M_cloneERSt9_Any_dataRKS7_St17integral_constantIbLb0EE
	.section	.text._ZNSt14_Function_base13_Base_managerISt5_BindIFPFviiiEiiiEEE10_M_destroyERSt9_Any_dataSt17integral_constantIbLb0EE,"axG",@progbits,_ZNSt14_Function_base13_Base_managerISt5_BindIFPFviiiEiiiEEE10_M_destroyERSt9_Any_dataSt17integral_constantIbLb0EE,comdat
	.weak	_ZNSt14_Function_base13_Base_managerISt5_BindIFPFviiiEiiiEEE10_M_destroyERSt9_Any_dataSt17integral_constantIbLb0EE
	.type	_ZNSt14_Function_base13_Base_managerISt5_BindIFPFviiiEiiiEEE10_M_destroyERSt9_Any_dataSt17integral_constantIbLb0EE, @function
_ZNSt14_Function_base13_Base_managerISt5_BindIFPFviiiEiiiEEE10_M_destroyERSt9_Any_dataSt17integral_constantIbLb0EE:
.LFB2347:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt9_Any_data9_M_accessIPSt5_BindIFPFviiiEiiiEEEERT_v
	movq	(%rax), %rax
	movl	$24, %esi
	movq	%rax, %rdi
	call	_ZdlPvm@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2347:
	.size	_ZNSt14_Function_base13_Base_managerISt5_BindIFPFviiiEiiiEEE10_M_destroyERSt9_Any_dataSt17integral_constantIbLb0EE, .-_ZNSt14_Function_base13_Base_managerISt5_BindIFPFviiiEiiiEEE10_M_destroyERSt9_Any_dataSt17integral_constantIbLb0EE
	.section	.text._ZNSt11_Tuple_implILm0EJiiiEEC2IiJiiEvEEOT_DpOT0_,"axG",@progbits,_ZNSt11_Tuple_implILm0EJiiiEEC5IiJiiEvEEOT_DpOT0_,comdat
	.align 2
	.weak	_ZNSt11_Tuple_implILm0EJiiiEEC2IiJiiEvEEOT_DpOT0_
	.type	_ZNSt11_Tuple_implILm0EJiiiEEC2IiJiiEvEEOT_DpOT0_, @function
_ZNSt11_Tuple_implILm0EJiiiEEC2IiJiiEvEEOT_DpOT0_:
.LFB2389:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$32, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movq	-24(%rbp), %rbx
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE
	movq	%rax, %r12
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE
	movq	%r12, %rdx
	movq	%rax, %rsi
	movq	%rbx, %rdi
	call	_ZNSt11_Tuple_implILm1EJiiEEC2IiJiEvEEOT_DpOT0_
	movq	-24(%rbp), %rax
	leaq	8(%rax), %rbx
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE
	movq	%rax, %rsi
	movq	%rbx, %rdi
	call	_ZNSt10_Head_baseILm0EiLb0EEC2IiEEOT_
	nop
	addq	$32, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2389:
	.size	_ZNSt11_Tuple_implILm0EJiiiEEC2IiJiiEvEEOT_DpOT0_, .-_ZNSt11_Tuple_implILm0EJiiiEEC2IiJiiEvEEOT_DpOT0_
	.weak	_ZNSt11_Tuple_implILm0EJiiiEEC1IiJiiEvEEOT_DpOT0_
	.set	_ZNSt11_Tuple_implILm0EJiiiEEC1IiJiiEvEEOT_DpOT0_,_ZNSt11_Tuple_implILm0EJiiiEEC2IiJiiEvEEOT_DpOT0_
	.section	.text._ZNKSt9_Any_data9_M_accessIPSt5_BindIFPFviiiEiiiEEEERKT_v,"axG",@progbits,_ZNKSt9_Any_data9_M_accessIPSt5_BindIFPFviiiEiiiEEEERKT_v,comdat
	.align 2
	.weak	_ZNKSt9_Any_data9_M_accessIPSt5_BindIFPFviiiEiiiEEEERKT_v
	.type	_ZNKSt9_Any_data9_M_accessIPSt5_BindIFPFviiiEiiiEEEERKT_v, @function
_ZNKSt9_Any_data9_M_accessIPSt5_BindIFPFviiiEiiiEEEERKT_v:
.LFB2393:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt9_Any_data9_M_accessEv
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2393:
	.size	_ZNKSt9_Any_data9_M_accessIPSt5_BindIFPFviiiEiiiEEEERKT_v, .-_ZNKSt9_Any_data9_M_accessIPSt5_BindIFPFviiiEiiiEEEERKT_v
	.section	.text._ZNSt5_BindIFPFviiiEiiiEE6__callIvJEJLm0ELm1ELm2EEEET_OSt5tupleIJDpT0_EESt12_Index_tupleIJXspT1_EEE,"axG",@progbits,_ZNSt5_BindIFPFviiiEiiiEE6__callIvJEJLm0ELm1ELm2EEEET_OSt5tupleIJDpT0_EESt12_Index_tupleIJXspT1_EEE,comdat
	.align 2
	.weak	_ZNSt5_BindIFPFviiiEiiiEE6__callIvJEJLm0ELm1ELm2EEEET_OSt5tupleIJDpT0_EESt12_Index_tupleIJXspT1_EEE
	.type	_ZNSt5_BindIFPFviiiEiiiEE6__callIvJEJLm0ELm1ELm2EEEET_OSt5tupleIJDpT0_EESt12_Index_tupleIJXspT1_EEE, @function
_ZNSt5_BindIFPFviiiEiiiEE6__callIvJEJLm0ELm1ELm2EEEET_OSt5tupleIJDpT0_EESt12_Index_tupleIJXspT1_EEE:
.LFB2394:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$32, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movq	-40(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdi
	call	_ZSt3getILm2EJiiiEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERS4_
	movq	%rax, %rcx
	movq	-48(%rbp), %rdx
	leaq	-25(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNVKSt3_MuIiLb0ELb0EEclIRiSt5tupleIJEEEEOT_S6_RT0_
	movq	%rax, %r12
	movq	-40(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdi
	call	_ZSt3getILm1EJiiiEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERS4_
	movq	%rax, %rcx
	movq	-48(%rbp), %rdx
	leaq	-26(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNVKSt3_MuIiLb0ELb0EEclIRiSt5tupleIJEEEEOT_S6_RT0_
	movq	%rax, %rbx
	movq	-40(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdi
	call	_ZSt3getILm0EJiiiEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERS4_
	movq	%rax, %rcx
	movq	-48(%rbp), %rdx
	leaq	-27(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNVKSt3_MuIiLb0ELb0EEclIRiSt5tupleIJEEEEOT_S6_RT0_
	movq	%rax, %rsi
	movq	-40(%rbp), %rax
	movq	%r12, %rcx
	movq	%rbx, %rdx
	movq	%rax, %rdi
	call	_ZSt8__invokeIRPFviiiEJRiS3_S3_EENSt15__invoke_resultIT_JDpT0_EE4typeEOS5_DpOS6_
	nop
	movq	-24(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L105
	call	__stack_chk_fail@PLT
.L105:
	addq	$32, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2394:
	.size	_ZNSt5_BindIFPFviiiEiiiEE6__callIvJEJLm0ELm1ELm2EEEET_OSt5tupleIJDpT0_EESt12_Index_tupleIJXspT1_EEE, .-_ZNSt5_BindIFPFviiiEiiiEE6__callIvJEJLm0ELm1ELm2EEEET_OSt5tupleIJDpT0_EESt12_Index_tupleIJXspT1_EEE
	.section	.text._ZNSt11_Tuple_implILm1EJiiEEC2IiJiEvEEOT_DpOT0_,"axG",@progbits,_ZNSt11_Tuple_implILm1EJiiEEC5IiJiEvEEOT_DpOT0_,comdat
	.align 2
	.weak	_ZNSt11_Tuple_implILm1EJiiEEC2IiJiEvEEOT_DpOT0_
	.type	_ZNSt11_Tuple_implILm1EJiiEEC2IiJiEvEEOT_DpOT0_, @function
_ZNSt11_Tuple_implILm1EJiiEEC2IiJiEvEEOT_DpOT0_:
.LFB2430:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rbx
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE
	movq	%rax, %rsi
	movq	%rbx, %rdi
	call	_ZNSt11_Tuple_implILm2EJiEEC2IiEEOT_
	movq	-24(%rbp), %rax
	leaq	4(%rax), %rbx
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE
	movq	%rax, %rsi
	movq	%rbx, %rdi
	call	_ZNSt10_Head_baseILm1EiLb0EEC2IiEEOT_
	nop
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2430:
	.size	_ZNSt11_Tuple_implILm1EJiiEEC2IiJiEvEEOT_DpOT0_, .-_ZNSt11_Tuple_implILm1EJiiEEC2IiJiEvEEOT_DpOT0_
	.weak	_ZNSt11_Tuple_implILm1EJiiEEC1IiJiEvEEOT_DpOT0_
	.set	_ZNSt11_Tuple_implILm1EJiiEEC1IiJiEvEEOT_DpOT0_,_ZNSt11_Tuple_implILm1EJiiEEC2IiJiEvEEOT_DpOT0_
	.section	.text._ZSt3getILm0EJiiiEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERS4_,"axG",@progbits,_ZSt3getILm0EJiiiEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERS4_,comdat
	.weak	_ZSt3getILm0EJiiiEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERS4_
	.type	_ZSt3getILm0EJiiiEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERS4_, @function
_ZSt3getILm0EJiiiEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERS4_:
.LFB2432:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__get_helperILm0EiJiiEERT0_RSt11_Tuple_implIXT_EJS0_DpT1_EE
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2432:
	.size	_ZSt3getILm0EJiiiEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERS4_, .-_ZSt3getILm0EJiiiEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERS4_
	.section	.text._ZNVKSt3_MuIiLb0ELb0EEclIRiSt5tupleIJEEEEOT_S6_RT0_,"axG",@progbits,_ZNVKSt3_MuIiLb0ELb0EEclIRiSt5tupleIJEEEEOT_S6_RT0_,comdat
	.align 2
	.weak	_ZNVKSt3_MuIiLb0ELb0EEclIRiSt5tupleIJEEEEOT_S6_RT0_
	.type	_ZNVKSt3_MuIiLb0ELb0EEclIRiSt5tupleIJEEEEOT_S6_RT0_, @function
_ZNVKSt3_MuIiLb0ELb0EEclIRiSt5tupleIJEEEEOT_S6_RT0_:
.LFB2433:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardIRiEOT_RNSt16remove_referenceIS1_E4typeE
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2433:
	.size	_ZNVKSt3_MuIiLb0ELb0EEclIRiSt5tupleIJEEEEOT_S6_RT0_, .-_ZNVKSt3_MuIiLb0ELb0EEclIRiSt5tupleIJEEEEOT_S6_RT0_
	.section	.text._ZSt3getILm1EJiiiEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERS4_,"axG",@progbits,_ZSt3getILm1EJiiiEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERS4_,comdat
	.weak	_ZSt3getILm1EJiiiEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERS4_
	.type	_ZSt3getILm1EJiiiEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERS4_, @function
_ZSt3getILm1EJiiiEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERS4_:
.LFB2434:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__get_helperILm1EiJiEERT0_RSt11_Tuple_implIXT_EJS0_DpT1_EE
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2434:
	.size	_ZSt3getILm1EJiiiEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERS4_, .-_ZSt3getILm1EJiiiEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERS4_
	.section	.text._ZSt3getILm2EJiiiEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERS4_,"axG",@progbits,_ZSt3getILm2EJiiiEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERS4_,comdat
	.weak	_ZSt3getILm2EJiiiEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERS4_
	.type	_ZSt3getILm2EJiiiEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERS4_, @function
_ZSt3getILm2EJiiiEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERS4_:
.LFB2435:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__get_helperILm2EiJEERT0_RSt11_Tuple_implIXT_EJS0_DpT1_EE
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2435:
	.size	_ZSt3getILm2EJiiiEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERS4_, .-_ZSt3getILm2EJiiiEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERS4_
	.section	.text._ZSt7forwardIRPFviiiEEOT_RNSt16remove_referenceIS3_E4typeE,"axG",@progbits,_ZSt7forwardIRPFviiiEEOT_RNSt16remove_referenceIS3_E4typeE,comdat
	.weak	_ZSt7forwardIRPFviiiEEOT_RNSt16remove_referenceIS3_E4typeE
	.type	_ZSt7forwardIRPFviiiEEOT_RNSt16remove_referenceIS3_E4typeE, @function
_ZSt7forwardIRPFviiiEEOT_RNSt16remove_referenceIS3_E4typeE:
.LFB2437:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2437:
	.size	_ZSt7forwardIRPFviiiEEOT_RNSt16remove_referenceIS3_E4typeE, .-_ZSt7forwardIRPFviiiEEOT_RNSt16remove_referenceIS3_E4typeE
	.section	.text._ZSt7forwardIRiEOT_RNSt16remove_referenceIS1_E4typeE,"axG",@progbits,_ZSt7forwardIRiEOT_RNSt16remove_referenceIS1_E4typeE,comdat
	.weak	_ZSt7forwardIRiEOT_RNSt16remove_referenceIS1_E4typeE
	.type	_ZSt7forwardIRiEOT_RNSt16remove_referenceIS1_E4typeE, @function
_ZSt7forwardIRiEOT_RNSt16remove_referenceIS1_E4typeE:
.LFB2438:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2438:
	.size	_ZSt7forwardIRiEOT_RNSt16remove_referenceIS1_E4typeE, .-_ZSt7forwardIRiEOT_RNSt16remove_referenceIS1_E4typeE
	.section	.text._ZSt8__invokeIRPFviiiEJRiS3_S3_EENSt15__invoke_resultIT_JDpT0_EE4typeEOS5_DpOS6_,"axG",@progbits,_ZSt8__invokeIRPFviiiEJRiS3_S3_EENSt15__invoke_resultIT_JDpT0_EE4typeEOS5_DpOS6_,comdat
	.weak	_ZSt8__invokeIRPFviiiEJRiS3_S3_EENSt15__invoke_resultIT_JDpT0_EE4typeEOS5_DpOS6_
	.type	_ZSt8__invokeIRPFviiiEJRiS3_S3_EENSt15__invoke_resultIT_JDpT0_EE4typeEOS5_DpOS6_, @function
_ZSt8__invokeIRPFviiiEJRiS3_S3_EENSt15__invoke_resultIT_JDpT0_EE4typeEOS5_DpOS6_:
.LFB2436:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	.cfi_offset 3, -40
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	%rcx, -80(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -40(%rbp)
	xorl	%eax, %eax
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardIRiEOT_RNSt16remove_referenceIS1_E4typeE
	movq	%rax, %r13
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardIRiEOT_RNSt16remove_referenceIS1_E4typeE
	movq	%rax, %r12
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardIRiEOT_RNSt16remove_referenceIS1_E4typeE
	movq	%rax, %rbx
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardIRPFviiiEEOT_RNSt16remove_referenceIS3_E4typeE
	movq	%r13, %rcx
	movq	%r12, %rdx
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	_ZSt13__invoke_implIvRPFviiiEJRiS3_S3_EET_St14__invoke_otherOT0_DpOT1_
	nop
	movq	-40(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L121
	call	__stack_chk_fail@PLT
.L121:
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2436:
	.size	_ZSt8__invokeIRPFviiiEJRiS3_S3_EENSt15__invoke_resultIT_JDpT0_EE4typeEOS5_DpOS6_, .-_ZSt8__invokeIRPFviiiEJRiS3_S3_EENSt15__invoke_resultIT_JDpT0_EE4typeEOS5_DpOS6_
	.section	.text._ZNSt11_Tuple_implILm2EJiEEC2IiEEOT_,"axG",@progbits,_ZNSt11_Tuple_implILm2EJiEEC5IiEEOT_,comdat
	.align 2
	.weak	_ZNSt11_Tuple_implILm2EJiEEC2IiEEOT_
	.type	_ZNSt11_Tuple_implILm2EJiEEC2IiEEOT_, @function
_ZNSt11_Tuple_implILm2EJiEEC2IiEEOT_:
.LFB2465:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rbx
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE
	movq	%rax, %rsi
	movq	%rbx, %rdi
	call	_ZNSt10_Head_baseILm2EiLb0EEC2IiEEOT_
	nop
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2465:
	.size	_ZNSt11_Tuple_implILm2EJiEEC2IiEEOT_, .-_ZNSt11_Tuple_implILm2EJiEEC2IiEEOT_
	.weak	_ZNSt11_Tuple_implILm2EJiEEC1IiEEOT_
	.set	_ZNSt11_Tuple_implILm2EJiEEC1IiEEOT_,_ZNSt11_Tuple_implILm2EJiEEC2IiEEOT_
	.section	.text._ZSt12__get_helperILm0EiJiiEERT0_RSt11_Tuple_implIXT_EJS0_DpT1_EE,"axG",@progbits,_ZSt12__get_helperILm0EiJiiEERT0_RSt11_Tuple_implIXT_EJS0_DpT1_EE,comdat
	.weak	_ZSt12__get_helperILm0EiJiiEERT0_RSt11_Tuple_implIXT_EJS0_DpT1_EE
	.type	_ZSt12__get_helperILm0EiJiiEERT0_RSt11_Tuple_implIXT_EJS0_DpT1_EE, @function
_ZSt12__get_helperILm0EiJiiEERT0_RSt11_Tuple_implIXT_EJS0_DpT1_EE:
.LFB2467:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt11_Tuple_implILm0EJiiiEE7_M_headERS0_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2467:
	.size	_ZSt12__get_helperILm0EiJiiEERT0_RSt11_Tuple_implIXT_EJS0_DpT1_EE, .-_ZSt12__get_helperILm0EiJiiEERT0_RSt11_Tuple_implIXT_EJS0_DpT1_EE
	.section	.text._ZSt12__get_helperILm1EiJiEERT0_RSt11_Tuple_implIXT_EJS0_DpT1_EE,"axG",@progbits,_ZSt12__get_helperILm1EiJiEERT0_RSt11_Tuple_implIXT_EJS0_DpT1_EE,comdat
	.weak	_ZSt12__get_helperILm1EiJiEERT0_RSt11_Tuple_implIXT_EJS0_DpT1_EE
	.type	_ZSt12__get_helperILm1EiJiEERT0_RSt11_Tuple_implIXT_EJS0_DpT1_EE, @function
_ZSt12__get_helperILm1EiJiEERT0_RSt11_Tuple_implIXT_EJS0_DpT1_EE:
.LFB2468:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt11_Tuple_implILm1EJiiEE7_M_headERS0_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2468:
	.size	_ZSt12__get_helperILm1EiJiEERT0_RSt11_Tuple_implIXT_EJS0_DpT1_EE, .-_ZSt12__get_helperILm1EiJiEERT0_RSt11_Tuple_implIXT_EJS0_DpT1_EE
	.section	.text._ZSt12__get_helperILm2EiJEERT0_RSt11_Tuple_implIXT_EJS0_DpT1_EE,"axG",@progbits,_ZSt12__get_helperILm2EiJEERT0_RSt11_Tuple_implIXT_EJS0_DpT1_EE,comdat
	.weak	_ZSt12__get_helperILm2EiJEERT0_RSt11_Tuple_implIXT_EJS0_DpT1_EE
	.type	_ZSt12__get_helperILm2EiJEERT0_RSt11_Tuple_implIXT_EJS0_DpT1_EE, @function
_ZSt12__get_helperILm2EiJEERT0_RSt11_Tuple_implIXT_EJS0_DpT1_EE:
.LFB2469:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt11_Tuple_implILm2EJiEE7_M_headERS0_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2469:
	.size	_ZSt12__get_helperILm2EiJEERT0_RSt11_Tuple_implIXT_EJS0_DpT1_EE, .-_ZSt12__get_helperILm2EiJEERT0_RSt11_Tuple_implIXT_EJS0_DpT1_EE
	.section	.text._ZSt13__invoke_implIvRPFviiiEJRiS3_S3_EET_St14__invoke_otherOT0_DpOT1_,"axG",@progbits,_ZSt13__invoke_implIvRPFviiiEJRiS3_S3_EET_St14__invoke_otherOT0_DpOT1_,comdat
	.weak	_ZSt13__invoke_implIvRPFviiiEJRiS3_S3_EET_St14__invoke_otherOT0_DpOT1_
	.type	_ZSt13__invoke_implIvRPFviiiEJRiS3_S3_EET_St14__invoke_otherOT0_DpOT1_, @function
_ZSt13__invoke_implIvRPFviiiEJRiS3_S3_EET_St14__invoke_otherOT0_DpOT1_:
.LFB2470:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	.cfi_offset 3, -40
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%rcx, -64(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardIRPFviiiEEOT_RNSt16remove_referenceIS3_E4typeE
	movq	(%rax), %rbx
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardIRiEOT_RNSt16remove_referenceIS1_E4typeE
	movl	(%rax), %r13d
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardIRiEOT_RNSt16remove_referenceIS1_E4typeE
	movl	(%rax), %r12d
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardIRiEOT_RNSt16remove_referenceIS1_E4typeE
	movl	(%rax), %eax
	movl	%r13d, %edx
	movl	%r12d, %esi
	movl	%eax, %edi
	call	*%rbx
	nop
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2470:
	.size	_ZSt13__invoke_implIvRPFviiiEJRiS3_S3_EET_St14__invoke_otherOT0_DpOT1_, .-_ZSt13__invoke_implIvRPFviiiEJRiS3_S3_EET_St14__invoke_otherOT0_DpOT1_
	.weak	_ZTISt5_BindIFPFviiiEiiiEE
	.section	.data.rel.ro._ZTISt5_BindIFPFviiiEiiiEE,"awG",@progbits,_ZTISt5_BindIFPFviiiEiiiEE,comdat
	.align 8
	.type	_ZTISt5_BindIFPFviiiEiiiEE, @object
	.size	_ZTISt5_BindIFPFviiiEiiiEE, 24
_ZTISt5_BindIFPFviiiEiiiEE:
	.quad	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.quad	_ZTSSt5_BindIFPFviiiEiiiEE
	.quad	_ZTISt17_Weak_result_typeIPFviiiEE
	.weak	_ZTSSt5_BindIFPFviiiEiiiEE
	.section	.rodata._ZTSSt5_BindIFPFviiiEiiiEE,"aG",@progbits,_ZTSSt5_BindIFPFviiiEiiiEE,comdat
	.align 16
	.type	_ZTSSt5_BindIFPFviiiEiiiEE, @object
	.size	_ZTSSt5_BindIFPFviiiEiiiEE, 23
_ZTSSt5_BindIFPFviiiEiiiEE:
	.string	"St5_BindIFPFviiiEiiiEE"
	.text
	.type	_Z41__static_initialization_and_destruction_0ii, @function
_Z41__static_initialization_and_destruction_0ii:
.LFB2481:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	cmpl	$1, -4(%rbp)
	jne	.L133
	cmpl	$65535, -8(%rbp)
	jne	.L133
	leaq	_ZStL8__ioinit(%rip), %rdi
	call	_ZNSt8ios_base4InitC1Ev@PLT
	leaq	__dso_handle(%rip), %rdx
	leaq	_ZStL8__ioinit(%rip), %rsi
	movq	_ZNSt8ios_base4InitD1Ev@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	__cxa_atexit@PLT
.L133:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2481:
	.size	_Z41__static_initialization_and_destruction_0ii, .-_Z41__static_initialization_and_destruction_0ii
	.weak	_ZTISt17_Weak_result_typeIPFviiiEE
	.section	.data.rel.ro._ZTISt17_Weak_result_typeIPFviiiEE,"awG",@progbits,_ZTISt17_Weak_result_typeIPFviiiEE,comdat
	.align 8
	.type	_ZTISt17_Weak_result_typeIPFviiiEE, @object
	.size	_ZTISt17_Weak_result_typeIPFviiiEE, 24
_ZTISt17_Weak_result_typeIPFviiiEE:
	.quad	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.quad	_ZTSSt17_Weak_result_typeIPFviiiEE
	.quad	_ZTISt24_Weak_result_type_memfunIPFviiiELb0EE
	.weak	_ZTSSt17_Weak_result_typeIPFviiiEE
	.section	.rodata._ZTSSt17_Weak_result_typeIPFviiiEE,"aG",@progbits,_ZTSSt17_Weak_result_typeIPFviiiEE,comdat
	.align 16
	.type	_ZTSSt17_Weak_result_typeIPFviiiEE, @object
	.size	_ZTSSt17_Weak_result_typeIPFviiiEE, 31
_ZTSSt17_Weak_result_typeIPFviiiEE:
	.string	"St17_Weak_result_typeIPFviiiEE"
	.weak	_ZTISt24_Weak_result_type_memfunIPFviiiELb0EE
	.section	.data.rel.ro._ZTISt24_Weak_result_type_memfunIPFviiiELb0EE,"awG",@progbits,_ZTISt24_Weak_result_type_memfunIPFviiiELb0EE,comdat
	.align 8
	.type	_ZTISt24_Weak_result_type_memfunIPFviiiELb0EE, @object
	.size	_ZTISt24_Weak_result_type_memfunIPFviiiELb0EE, 24
_ZTISt24_Weak_result_type_memfunIPFviiiELb0EE:
	.quad	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.quad	_ZTSSt24_Weak_result_type_memfunIPFviiiELb0EE
	.quad	_ZTISt22_Weak_result_type_implIPFviiiEE
	.weak	_ZTSSt24_Weak_result_type_memfunIPFviiiELb0EE
	.section	.rodata._ZTSSt24_Weak_result_type_memfunIPFviiiELb0EE,"aG",@progbits,_ZTSSt24_Weak_result_type_memfunIPFviiiELb0EE,comdat
	.align 32
	.type	_ZTSSt24_Weak_result_type_memfunIPFviiiELb0EE, @object
	.size	_ZTSSt24_Weak_result_type_memfunIPFviiiELb0EE, 42
_ZTSSt24_Weak_result_type_memfunIPFviiiELb0EE:
	.string	"St24_Weak_result_type_memfunIPFviiiELb0EE"
	.weak	_ZTISt22_Weak_result_type_implIPFviiiEE
	.section	.data.rel.ro._ZTISt22_Weak_result_type_implIPFviiiEE,"awG",@progbits,_ZTISt22_Weak_result_type_implIPFviiiEE,comdat
	.align 8
	.type	_ZTISt22_Weak_result_type_implIPFviiiEE, @object
	.size	_ZTISt22_Weak_result_type_implIPFviiiEE, 16
_ZTISt22_Weak_result_type_implIPFviiiEE:
	.quad	_ZTVN10__cxxabiv117__class_type_infoE+16
	.quad	_ZTSSt22_Weak_result_type_implIPFviiiEE
	.weak	_ZTSSt22_Weak_result_type_implIPFviiiEE
	.section	.rodata._ZTSSt22_Weak_result_type_implIPFviiiEE,"aG",@progbits,_ZTSSt22_Weak_result_type_implIPFviiiEE,comdat
	.align 32
	.type	_ZTSSt22_Weak_result_type_implIPFviiiEE, @object
	.size	_ZTSSt22_Weak_result_type_implIPFviiiEE, 36
_ZTSSt22_Weak_result_type_implIPFviiiEE:
	.string	"St22_Weak_result_type_implIPFviiiEE"
	.text
	.type	_GLOBAL__sub_I__Z1fiii, @function
_GLOBAL__sub_I__Z1fiii:
.LFB2482:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$65535, %esi
	movl	$1, %edi
	call	_Z41__static_initialization_and_destruction_0ii
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2482:
	.size	_GLOBAL__sub_I__Z1fiii, .-_GLOBAL__sub_I__Z1fiii
	.section	.init_array,"aw"
	.align 8
	.quad	_GLOBAL__sub_I__Z1fiii
	.hidden	DW.ref.__gxx_personality_v0
	.weak	DW.ref.__gxx_personality_v0
	.section	.data.rel.local.DW.ref.__gxx_personality_v0,"awG",@progbits,DW.ref.__gxx_personality_v0,comdat
	.align 8
	.type	DW.ref.__gxx_personality_v0, @object
	.size	DW.ref.__gxx_personality_v0, 8
DW.ref.__gxx_personality_v0:
	.quad	__gxx_personality_v0
	.hidden	__dso_handle
	.ident	"GCC: (Ubuntu 8.4.0-1ubuntu1~18.04) 8.4.0"
	.section	.note.GNU-stack,"",@progbits
