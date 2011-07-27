	.file	"bubblemon.c"
# GNU C (Debian 4.6.1-5) version 4.6.1 (i486-linux-gnu)
#	compiled by GNU C version 4.6.1, GMP version 5.0.1, MPFR version 3.0.1-p3, MPC version 0.9
# GGC heuristics: --param ggc-min-expand=81 --param ggc-min-heapsize=96755
# options passed:  bubblemon.c -mtune=generic -march=i586 -ggdb -O3
# -fverbose-asm
# options enabled:  -fasynchronous-unwind-tables -fauto-inc-dec
# -fbranch-count-reg -fcaller-saves -fcombine-stack-adjustments -fcommon
# -fcompare-elim -fcprop-registers -fcrossjumping -fcse-follow-jumps
# -fdefer-pop -fdelete-null-pointer-checks -fdevirtualize -fdwarf2-cfi-asm
# -fearly-inlining -feliminate-unused-debug-types -fexpensive-optimizations
# -fforward-propagate -ffunction-cse -fgcse -fgcse-after-reload -fgcse-lm
# -fguess-branch-probability -fident -fif-conversion -fif-conversion2
# -findirect-inlining -finline -finline-functions
# -finline-functions-called-once -finline-small-functions -fipa-cp
# -fipa-cp-clone -fipa-profile -fipa-pure-const -fipa-reference -fipa-sra
# -fira-share-save-slots -fira-share-spill-slots -fivopts
# -fkeep-static-consts -fleading-underscore -fmath-errno -fmerge-constants
# -fmerge-debug-strings -fmove-loop-invariants -fomit-frame-pointer
# -foptimize-register-move -foptimize-sibling-calls -fpartial-inlining
# -fpcc-struct-return -fpeephole -fpeephole2 -fpredictive-commoning
# -fprefetch-loop-arrays -fregmove -freorder-blocks -freorder-functions
# -frerun-cse-after-loop -fsched-critical-path-heuristic
# -fsched-dep-count-heuristic -fsched-group-heuristic -fsched-interblock
# -fsched-last-insn-heuristic -fsched-rank-heuristic -fsched-spec
# -fsched-spec-insn-heuristic -fsched-stalled-insns-dep -fschedule-insns2
# -fshow-column -fsigned-zeros -fsplit-ivs-in-unroller -fsplit-wide-types
# -fstrict-aliasing -fstrict-overflow -fstrict-volatile-bitfields
# -fthread-jumps -ftoplevel-reorder -ftrapping-math -ftree-bit-ccp
# -ftree-builtin-call-dce -ftree-ccp -ftree-ch -ftree-copy-prop
# -ftree-copyrename -ftree-cselim -ftree-dce -ftree-dominator-opts
# -ftree-dse -ftree-forwprop -ftree-fre -ftree-loop-distribute-patterns
# -ftree-loop-if-convert -ftree-loop-im -ftree-loop-ivcanon
# -ftree-loop-optimize -ftree-parallelize-loops= -ftree-phiprop -ftree-pre
# -ftree-pta -ftree-reassoc -ftree-scev-cprop -ftree-sink
# -ftree-slp-vectorize -ftree-sra -ftree-switch-conversion -ftree-ter
# -ftree-vect-loop-version -ftree-vectorize -ftree-vrp -funit-at-a-time
# -funswitch-loops -funwind-tables -fvar-tracking
# -fvar-tracking-assignments -fvect-cost-model -fverbose-asm
# -fzero-initialized-in-bss -m32 -m80387 -m96bit-long-double
# -maccumulate-outgoing-args -malign-stringops -mfancy-math-387
# -mfp-ret-in-387 -mglibc -mieee-fp -mno-red-zone -mno-sse4 -mpush-args
# -msahf -mtls-direct-seg-refs

	.text
.Ltext0:
# Compiler executable checksum: ca6a2dd72dfc4c884b0acf830a235c20

	.section	.rodata.str1.4,"aMS",@progbits,1
	.align 4
.LC0:
	.string	"   ... .   .   ... .   .   .   .   .   . . . . ."
	.align 4
.LC1:
	.string	" . ... . . . . . . . . . . . . . . . . . . .   ."
	.align 4
.LC2:
	.string	" . ... ... ... . . . ... ..... . . . . . . .   ."
	.align 4
.LC3:
	.string	" . ... ... ... . . . ...   ... . . . . . . . . ."
	.align 4
.LC4:
	.string	" . ... .   ..  . . .   . . ... .   . . .  .. . ."
	.align 4
.LC5:
	.string	" . ... . ..... .   ... . . ... . . .   . . . . ."
	.align 4
.LC6:
	.string	" . ... . . . . ... . . . . ... . . ... . . . . ."
	.align 4
.LC7:
	.string	"   ... .   .   ... .   .   ... .   .   . . . . ."
	.text
	.p2align 4,,15
	.type	draw_string, @function
draw_string:
.LFB42:
	.file 1 "bubblemon.c"
	.loc 1 872 0
	.cfi_startproc
.LVL0:
	pushl	%ebp	#
.LCFI0:
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi	#
.LCFI1:
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi	#
.LCFI2:
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx	#
.LCFI3:
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	subl	$24, %esp	#,
.LCFI4:
	.cfi_def_cfa_offset 44
	.loc 1 878 0
	movl	pale, %ebx	# pale,
	.loc 1 874 0
	movl	$10415408, 12(%esp)	#, MEM[(unsigned char[4] *)&reds]
	.loc 1 875 0
	movl	$-3926132, 16(%esp)	#, MEM[(unsigned char[4] *)&grns]
	.loc 1 876 0
	movl	$-370337808, 20(%esp)	#, MEM[(unsigned char[4] *)&blus]
	.loc 1 878 0
	testl	%ebx, %ebx	#
	je	.L2	#,
	.loc 1 878 0 is_stmt 0 discriminator 1
	addl	$2, 44(%esp)	#, color
.LVL1:
.L2:
	.loc 1 883 0 is_stmt 1 discriminator 1
	movzbl	(%eax), %ebx	# *string_6(D), c
.LVL2:
	testb	%bl, %bl	# c
	je	.L1	#,
	.loc 1 889 0
	imull	$58, %ecx, %ecx	#, y, D.10454
.LVL3:
	.loc 1 883 0
	addl	$1, %eax	#,
.LVL4:
	movl	%eax, 4(%esp)	#, %sfp
	.loc 1 889 0
	xorl	%eax, %eax	# ivtmp.161
.LVL5:
.LBB23:
.LBB24:
	.loc 1 871 0
	addl	%ecx, %edx	# D.10454, tmp559
.LVL6:
	leal	(%edx,%edx,2), %edx	#, tmp561
	jmp	.L38	#
.LVL7:
	.p2align 4,,7
	.p2align 3
.L76:
.LBE24:
.LBE23:
	.loc 1 885 0
	cmpb	$77, %bl	#, c
	je	.L41	#,
	.loc 1 886 0
	leal	-48(%ebx), %ecx	#, c
	cmpb	$9, %cl	#, c
	ja	.L5	#,
	movzbl	%cl, %ecx	# c, pretmp.129
	sall	$2, %ecx	#, prephitmp.136
.LVL8:
.L39:
	.loc 1 889 0
	movl	44(%esp), %ebx	# color,
.LBB29:
.LBB25:
	.loc 1 861 0
	leal	.LC0(%ecx), %ebp	#, from
.LBE25:
.LBE29:
	.loc 1 889 0
	movl	44(%esp), %edi	# color,
.LBB30:
.LBB26:
	.loc 1 863 0
	cmpb	$32, .LC0(%ecx)	#, *from_102
.LBE26:
.LBE30:
	.loc 1 889 0
	movzbl	20(%esp,%ebx), %ebx	# blus,
	movzbl	16(%esp,%edi), %esi	# grns, D.10450
	movzbl	12(%esp,%edi), %edi	# reds, D.10452
.LVL9:
	movb	%bl, 3(%esp)	#, %sfp
.LBB31:
.LBB27:
	.loc 1 863 0
	je	.L44	#,
.L7:
.LVL10:
	cmpb	$32, 1(%ebp)	#, MEM[(char *)from_102 + 1B]
	je	.L45	#,
.LVL11:
	cmpb	$32, 2(%ebp)	#, MEM[(char *)from_102 + 2B]
	je	.L46	#,
.LVL12:
.L9:
	cmpb	$32, 3(%ebp)	#, MEM[(char *)from_102 + 3B]
	je	.L47	#,
.L10:
.LVL13:
	cmpb	$32, .LC1(%ecx)	#, *from_145
	.loc 1 861 0
	leal	.LC1(%ecx), %ebp	#, from
.LVL14:
	.loc 1 863 0
	je	.L48	#,
.LVL15:
.L11:
	cmpb	$32, 1(%ebp)	#, MEM[(char *)from_145 + 1B]
	je	.L49	#,
.LVL16:
.L12:
	cmpb	$32, 2(%ebp)	#, MEM[(char *)from_145 + 2B]
	je	.L50	#,
.L13:
.LVL17:
	cmpb	$32, 3(%ebp)	#, MEM[(char *)from_145 + 3B]
	je	.L51	#,
.L14:
.LVL18:
	cmpb	$32, .LC2(%ecx)	#, *from_187
	.loc 1 861 0
	leal	.LC2(%ecx), %ebp	#, from
.LVL19:
	.loc 1 863 0
	je	.L52	#,
.LVL20:
.L15:
	cmpb	$32, 1(%ebp)	#, MEM[(char *)from_187 + 1B]
	je	.L53	#,
.LVL21:
.L16:
	cmpb	$32, 2(%ebp)	#, MEM[(char *)from_187 + 2B]
	je	.L54	#,
.L17:
.LVL22:
	cmpb	$32, 3(%ebp)	#, MEM[(char *)from_187 + 3B]
	je	.L55	#,
.L18:
.LVL23:
	cmpb	$32, .LC3(%ecx)	#, *from_229
	.loc 1 861 0
	leal	.LC3(%ecx), %ebp	#, from
.LVL24:
	.loc 1 863 0
	je	.L56	#,
.LVL25:
.L19:
	cmpb	$32, 1(%ebp)	#, MEM[(char *)from_229 + 1B]
	je	.L57	#,
.LVL26:
.L20:
	cmpb	$32, 2(%ebp)	#, MEM[(char *)from_229 + 2B]
	je	.L58	#,
.L21:
.LVL27:
	cmpb	$32, 3(%ebp)	#, MEM[(char *)from_229 + 3B]
	je	.L59	#,
.L22:
.LVL28:
	cmpb	$32, .LC4(%ecx)	#, *from_271
	.loc 1 861 0
	leal	.LC4(%ecx), %ebp	#, from
.LVL29:
	.loc 1 863 0
	je	.L60	#,
.LVL30:
.L23:
	cmpb	$32, 1(%ebp)	#, MEM[(char *)from_271 + 1B]
	je	.L61	#,
.LVL31:
.L24:
	cmpb	$32, 2(%ebp)	#, MEM[(char *)from_271 + 2B]
	je	.L62	#,
.L25:
.LVL32:
	cmpb	$32, 3(%ebp)	#, MEM[(char *)from_271 + 3B]
	je	.L63	#,
.L26:
.LVL33:
	cmpb	$32, .LC5(%ecx)	#, *from_313
	.loc 1 861 0
	leal	.LC5(%ecx), %ebp	#, from
.LVL34:
	.loc 1 863 0
	je	.L64	#,
.LVL35:
.L27:
	cmpb	$32, 1(%ebp)	#, MEM[(char *)from_313 + 1B]
	je	.L65	#,
.LVL36:
.L28:
	cmpb	$32, 2(%ebp)	#, MEM[(char *)from_313 + 2B]
	je	.L66	#,
.L29:
.LVL37:
	cmpb	$32, 3(%ebp)	#, MEM[(char *)from_313 + 3B]
	je	.L67	#,
.L30:
.LVL38:
	cmpb	$32, .LC6(%ecx)	#, *from_355
	.loc 1 861 0
	leal	.LC6(%ecx), %ebp	#, from
.LVL39:
	.loc 1 863 0
	je	.L68	#,
.LVL40:
.L31:
	cmpb	$32, 1(%ebp)	#, MEM[(char *)from_355 + 1B]
	je	.L69	#,
.LVL41:
.L32:
	cmpb	$32, 2(%ebp)	#, MEM[(char *)from_355 + 2B]
	je	.L70	#,
.L33:
.LVL42:
	cmpb	$32, 3(%ebp)	#, MEM[(char *)from_355 + 3B]
	je	.L71	#,
.L34:
.LVL43:
	cmpb	$32, .LC7(%ecx)	#, *from_397
	.loc 1 861 0
	leal	.LC7(%ecx), %ebp	#, from
.LVL44:
	.loc 1 863 0
	je	.L72	#,
.LVL45:
.L35:
	cmpb	$32, 1(%ebp)	#, MEM[(char *)from_397 + 1B]
	je	.L73	#,
.LVL46:
.L36:
	cmpb	$32, 2(%ebp)	#, MEM[(char *)from_397 + 2B]
	je	.L74	#,
.L37:
.LVL47:
	cmpb	$32, 3(%ebp)	#, MEM[(char *)from_397 + 3B]
	je	.L75	#,
.LVL48:
.L6:
.LBE27:
.LBE31:
	.loc 1 883 0
	movl	4(%esp), %esi	# %sfp,
	addl	$12, %eax	#, ivtmp.161
	movzbl	(%esi), %ebx	# MEM[base: string_236, offset: 0B], c
.LVL49:
	addl	$1, %esi	#,
	movl	%esi, 4(%esp)	#, %sfp
.LVL50:
	testb	%bl, %bl	# c
	je	.L1	#,
.LVL51:
.L38:
	.loc 1 884 0
	cmpb	$75, %bl	#, c
	jne	.L76	#,
	movl	$40, %ecx	#, prephitmp.136
	jmp	.L39	#
	.p2align 4,,7
	.p2align 3
.L5:
	.loc 1 888 0
	cmpb	$11, %bl	#, c
	ja	.L6	#,
	movzbl	%bl, %ecx	# c, pretmp.133
	sall	$2, %ecx	#, prephitmp.136
	jmp	.L39	#
	.p2align 4,,7
	.p2align 3
.L41:
	.loc 1 885 0
	movl	$44, %ecx	#, prephitmp.136
.LVL52:
	jmp	.L39	#
.LVL53:
	.p2align 4,,7
	.p2align 3
.L75:
.LBB32:
.LBB28:
	.loc 1 864 0
	movl	%edi, %ebx	# D.10452,
	movl	%esi, %ecx	# D.10450,
	movb	%bl, bm+11328(%edx,%eax)	#, MEM[symbol: bm, base: D.11060_335, index: ivtmp.161_346, offset: 11328B]
	movzbl	3(%esp), %ebx	# %sfp,
	movb	%cl, bm+11329(%edx,%eax)	#, MEM[symbol: bm, base: D.11060_335, index: ivtmp.161_346, offset: 11329B]
	movb	%bl, bm+11330(%edx,%eax)	#, MEM[symbol: bm, base: D.11060_335, index: ivtmp.161_346, offset: 11330B]
	jmp	.L6	#
.LVL54:
	.p2align 4,,7
	.p2align 3
.L74:
	movl	%edi, %ecx	# D.10452,
	movl	%esi, %ebx	# D.10450,
	movb	%cl, bm+11325(%edx,%eax)	#, MEM[symbol: bm, base: D.11072_285, index: ivtmp.161_346, offset: 11325B]
	movzbl	3(%esp), %ecx	# %sfp,
	movb	%bl, bm+11326(%edx,%eax)	#, MEM[symbol: bm, base: D.11072_285, index: ivtmp.161_346, offset: 11326B]
	movb	%cl, bm+11327(%edx,%eax)	#, MEM[symbol: bm, base: D.11072_285, index: ivtmp.161_346, offset: 11327B]
	jmp	.L37	#
.LVL55:
	.p2align 4,,7
	.p2align 3
.L45:
	movl	%edi, %ebx	# D.10452,
	movb	%bl, bm+10104(%edx,%eax)	#, MEM[symbol: bm, base: D.11420_671, index: ivtmp.161_346, offset: 10104B]
	movl	%esi, %ebx	# D.10450,
	movb	%bl, bm+10105(%edx,%eax)	#, MEM[symbol: bm, base: D.11420_671, index: ivtmp.161_346, offset: 10105B]
	movzbl	3(%esp), %ebx	# %sfp,
	.loc 1 863 0
	cmpb	$32, 2(%ebp)	#, MEM[(char *)from_102 + 2B]
	.loc 1 864 0
	movb	%bl, bm+10106(%edx,%eax)	#, MEM[symbol: bm, base: D.11420_671, index: ivtmp.161_346, offset: 10106B]
.LVL56:
	.loc 1 863 0
	jne	.L9	#,
.LVL57:
.L46:
	.loc 1 864 0
	movl	%edi, %ebx	# D.10452,
	movb	%bl, bm+10107(%edx,%eax)	#, MEM[symbol: bm, base: D.11408_659, index: ivtmp.161_346, offset: 10107B]
	movl	%esi, %ebx	# D.10450,
	movb	%bl, bm+10108(%edx,%eax)	#, MEM[symbol: bm, base: D.11408_659, index: ivtmp.161_346, offset: 10108B]
	movzbl	3(%esp), %ebx	# %sfp,
	.loc 1 863 0
	cmpb	$32, 3(%ebp)	#, MEM[(char *)from_102 + 3B]
	.loc 1 864 0
	movb	%bl, bm+10109(%edx,%eax)	#, MEM[symbol: bm, base: D.11408_659, index: ivtmp.161_346, offset: 10109B]
.LVL58:
	.loc 1 863 0
	jne	.L10	#,
.L47:
	.loc 1 864 0
	movl	%edi, %ebx	# D.10452,
	movb	%bl, bm+10110(%edx,%eax)	#, MEM[symbol: bm, base: D.11396_647, index: ivtmp.161_346, offset: 10110B]
	movl	%esi, %ebx	# D.10450,
	movb	%bl, bm+10111(%edx,%eax)	#, MEM[symbol: bm, base: D.11396_647, index: ivtmp.161_346, offset: 10111B]
	movzbl	3(%esp), %ebx	# %sfp,
	.loc 1 861 0
	leal	.LC1(%ecx), %ebp	#, from
	.loc 1 863 0
	cmpb	$32, .LC1(%ecx)	#, *from_145
	.loc 1 864 0
	movb	%bl, bm+10112(%edx,%eax)	#, MEM[symbol: bm, base: D.11396_647, index: ivtmp.161_346, offset: 10112B]
.LVL59:
	.loc 1 863 0
	jne	.L11	#,
.L48:
	.loc 1 864 0
	movl	%edi, %ebx	# D.10452,
	movb	%bl, bm+10275(%edx,%eax)	#, MEM[symbol: bm, base: D.11384_635, index: ivtmp.161_346, offset: 10275B]
	movl	%esi, %ebx	# D.10450,
	movb	%bl, bm+10276(%edx,%eax)	#, MEM[symbol: bm, base: D.11384_635, index: ivtmp.161_346, offset: 10276B]
	movzbl	3(%esp), %ebx	# %sfp,
	.loc 1 863 0
	cmpb	$32, 1(%ebp)	#, MEM[(char *)from_145 + 1B]
	.loc 1 864 0
	movb	%bl, bm+10277(%edx,%eax)	#, MEM[symbol: bm, base: D.11384_635, index: ivtmp.161_346, offset: 10277B]
.LVL60:
	.loc 1 863 0
	jne	.L12	#,
.LVL61:
.L49:
	.loc 1 864 0
	movl	%edi, %ebx	# D.10452,
	movb	%bl, bm+10278(%edx,%eax)	#, MEM[symbol: bm, base: D.11372_623, index: ivtmp.161_346, offset: 10278B]
	movl	%esi, %ebx	# D.10450,
	movb	%bl, bm+10279(%edx,%eax)	#, MEM[symbol: bm, base: D.11372_623, index: ivtmp.161_346, offset: 10279B]
	movzbl	3(%esp), %ebx	# %sfp,
	.loc 1 863 0
	cmpb	$32, 2(%ebp)	#, MEM[(char *)from_145 + 2B]
	.loc 1 864 0
	movb	%bl, bm+10280(%edx,%eax)	#, MEM[symbol: bm, base: D.11372_623, index: ivtmp.161_346, offset: 10280B]
.LVL62:
	.loc 1 863 0
	jne	.L13	#,
.L50:
	.loc 1 864 0
	movl	%edi, %ebx	# D.10452,
	movb	%bl, bm+10281(%edx,%eax)	#, MEM[symbol: bm, base: D.11360_611, index: ivtmp.161_346, offset: 10281B]
	movl	%esi, %ebx	# D.10450,
	movb	%bl, bm+10282(%edx,%eax)	#, MEM[symbol: bm, base: D.11360_611, index: ivtmp.161_346, offset: 10282B]
	movzbl	3(%esp), %ebx	# %sfp,
	.loc 1 863 0
	cmpb	$32, 3(%ebp)	#, MEM[(char *)from_145 + 3B]
	.loc 1 864 0
	movb	%bl, bm+10283(%edx,%eax)	#, MEM[symbol: bm, base: D.11360_611, index: ivtmp.161_346, offset: 10283B]
.LVL63:
	.loc 1 863 0
	jne	.L14	#,
.L51:
	.loc 1 864 0
	movl	%edi, %ebx	# D.10452,
	movb	%bl, bm+10284(%edx,%eax)	#, MEM[symbol: bm, base: D.11348_599, index: ivtmp.161_346, offset: 10284B]
	movl	%esi, %ebx	# D.10450,
	movb	%bl, bm+10285(%edx,%eax)	#, MEM[symbol: bm, base: D.11348_599, index: ivtmp.161_346, offset: 10285B]
	movzbl	3(%esp), %ebx	# %sfp,
	.loc 1 861 0
	leal	.LC2(%ecx), %ebp	#, from
	.loc 1 863 0
	cmpb	$32, .LC2(%ecx)	#, *from_187
	.loc 1 864 0
	movb	%bl, bm+10286(%edx,%eax)	#, MEM[symbol: bm, base: D.11348_599, index: ivtmp.161_346, offset: 10286B]
.LVL64:
	.loc 1 863 0
	jne	.L15	#,
.L52:
	.loc 1 864 0
	movl	%edi, %ebx	# D.10452,
	movb	%bl, bm+10449(%edx,%eax)	#, MEM[symbol: bm, base: D.11336_587, index: ivtmp.161_346, offset: 10449B]
	movl	%esi, %ebx	# D.10450,
	movb	%bl, bm+10450(%edx,%eax)	#, MEM[symbol: bm, base: D.11336_587, index: ivtmp.161_346, offset: 10450B]
	movzbl	3(%esp), %ebx	# %sfp,
	.loc 1 863 0
	cmpb	$32, 1(%ebp)	#, MEM[(char *)from_187 + 1B]
	.loc 1 864 0
	movb	%bl, bm+10451(%edx,%eax)	#, MEM[symbol: bm, base: D.11336_587, index: ivtmp.161_346, offset: 10451B]
.LVL65:
	.loc 1 863 0
	jne	.L16	#,
.LVL66:
.L53:
	.loc 1 864 0
	movl	%edi, %ebx	# D.10452,
	movb	%bl, bm+10452(%edx,%eax)	#, MEM[symbol: bm, base: D.11324_575, index: ivtmp.161_346, offset: 10452B]
	movl	%esi, %ebx	# D.10450,
	movb	%bl, bm+10453(%edx,%eax)	#, MEM[symbol: bm, base: D.11324_575, index: ivtmp.161_346, offset: 10453B]
	movzbl	3(%esp), %ebx	# %sfp,
	.loc 1 863 0
	cmpb	$32, 2(%ebp)	#, MEM[(char *)from_187 + 2B]
	.loc 1 864 0
	movb	%bl, bm+10454(%edx,%eax)	#, MEM[symbol: bm, base: D.11324_575, index: ivtmp.161_346, offset: 10454B]
.LVL67:
	.loc 1 863 0
	jne	.L17	#,
.L54:
	.loc 1 864 0
	movl	%edi, %ebx	# D.10452,
	movb	%bl, bm+10455(%edx,%eax)	#, MEM[symbol: bm, base: D.11312_563, index: ivtmp.161_346, offset: 10455B]
	movl	%esi, %ebx	# D.10450,
	movb	%bl, bm+10456(%edx,%eax)	#, MEM[symbol: bm, base: D.11312_563, index: ivtmp.161_346, offset: 10456B]
	movzbl	3(%esp), %ebx	# %sfp,
	.loc 1 863 0
	cmpb	$32, 3(%ebp)	#, MEM[(char *)from_187 + 3B]
	.loc 1 864 0
	movb	%bl, bm+10457(%edx,%eax)	#, MEM[symbol: bm, base: D.11312_563, index: ivtmp.161_346, offset: 10457B]
.LVL68:
	.loc 1 863 0
	jne	.L18	#,
.L55:
	.loc 1 864 0
	movl	%edi, %ebx	# D.10452,
	movb	%bl, bm+10458(%edx,%eax)	#, MEM[symbol: bm, base: D.11300_551, index: ivtmp.161_346, offset: 10458B]
	movl	%esi, %ebx	# D.10450,
	movb	%bl, bm+10459(%edx,%eax)	#, MEM[symbol: bm, base: D.11300_551, index: ivtmp.161_346, offset: 10459B]
	movzbl	3(%esp), %ebx	# %sfp,
	.loc 1 861 0
	leal	.LC3(%ecx), %ebp	#, from
	.loc 1 863 0
	cmpb	$32, .LC3(%ecx)	#, *from_229
	.loc 1 864 0
	movb	%bl, bm+10460(%edx,%eax)	#, MEM[symbol: bm, base: D.11300_551, index: ivtmp.161_346, offset: 10460B]
.LVL69:
	.loc 1 863 0
	jne	.L19	#,
.L56:
	.loc 1 864 0
	movl	%edi, %ebx	# D.10452,
	movb	%bl, bm+10623(%edx,%eax)	#, MEM[symbol: bm, base: D.11288_539, index: ivtmp.161_346, offset: 10623B]
	movl	%esi, %ebx	# D.10450,
	movb	%bl, bm+10624(%edx,%eax)	#, MEM[symbol: bm, base: D.11288_539, index: ivtmp.161_346, offset: 10624B]
	movzbl	3(%esp), %ebx	# %sfp,
	.loc 1 863 0
	cmpb	$32, 1(%ebp)	#, MEM[(char *)from_229 + 1B]
	.loc 1 864 0
	movb	%bl, bm+10625(%edx,%eax)	#, MEM[symbol: bm, base: D.11288_539, index: ivtmp.161_346, offset: 10625B]
.LVL70:
	.loc 1 863 0
	jne	.L20	#,
.LVL71:
.L57:
	.loc 1 864 0
	movl	%edi, %ebx	# D.10452,
	movb	%bl, bm+10626(%edx,%eax)	#, MEM[symbol: bm, base: D.11276_527, index: ivtmp.161_346, offset: 10626B]
	movl	%esi, %ebx	# D.10450,
	movb	%bl, bm+10627(%edx,%eax)	#, MEM[symbol: bm, base: D.11276_527, index: ivtmp.161_346, offset: 10627B]
	movzbl	3(%esp), %ebx	# %sfp,
	.loc 1 863 0
	cmpb	$32, 2(%ebp)	#, MEM[(char *)from_229 + 2B]
	.loc 1 864 0
	movb	%bl, bm+10628(%edx,%eax)	#, MEM[symbol: bm, base: D.11276_527, index: ivtmp.161_346, offset: 10628B]
.LVL72:
	.loc 1 863 0
	jne	.L21	#,
.L58:
	.loc 1 864 0
	movl	%edi, %ebx	# D.10452,
	movb	%bl, bm+10629(%edx,%eax)	#, MEM[symbol: bm, base: D.11264_515, index: ivtmp.161_346, offset: 10629B]
	movl	%esi, %ebx	# D.10450,
	movb	%bl, bm+10630(%edx,%eax)	#, MEM[symbol: bm, base: D.11264_515, index: ivtmp.161_346, offset: 10630B]
	movzbl	3(%esp), %ebx	# %sfp,
	.loc 1 863 0
	cmpb	$32, 3(%ebp)	#, MEM[(char *)from_229 + 3B]
	.loc 1 864 0
	movb	%bl, bm+10631(%edx,%eax)	#, MEM[symbol: bm, base: D.11264_515, index: ivtmp.161_346, offset: 10631B]
.LVL73:
	.loc 1 863 0
	jne	.L22	#,
.L59:
	.loc 1 864 0
	movl	%edi, %ebx	# D.10452,
	movb	%bl, bm+10632(%edx,%eax)	#, MEM[symbol: bm, base: D.11252_503, index: ivtmp.161_346, offset: 10632B]
	movl	%esi, %ebx	# D.10450,
	movb	%bl, bm+10633(%edx,%eax)	#, MEM[symbol: bm, base: D.11252_503, index: ivtmp.161_346, offset: 10633B]
	movzbl	3(%esp), %ebx	# %sfp,
	.loc 1 861 0
	leal	.LC4(%ecx), %ebp	#, from
	.loc 1 863 0
	cmpb	$32, .LC4(%ecx)	#, *from_271
	.loc 1 864 0
	movb	%bl, bm+10634(%edx,%eax)	#, MEM[symbol: bm, base: D.11252_503, index: ivtmp.161_346, offset: 10634B]
.LVL74:
	.loc 1 863 0
	jne	.L23	#,
.L60:
	.loc 1 864 0
	movl	%edi, %ebx	# D.10452,
	movb	%bl, bm+10797(%edx,%eax)	#, MEM[symbol: bm, base: D.11240_491, index: ivtmp.161_346, offset: 10797B]
	movl	%esi, %ebx	# D.10450,
	movb	%bl, bm+10798(%edx,%eax)	#, MEM[symbol: bm, base: D.11240_491, index: ivtmp.161_346, offset: 10798B]
	movzbl	3(%esp), %ebx	# %sfp,
	.loc 1 863 0
	cmpb	$32, 1(%ebp)	#, MEM[(char *)from_271 + 1B]
	.loc 1 864 0
	movb	%bl, bm+10799(%edx,%eax)	#, MEM[symbol: bm, base: D.11240_491, index: ivtmp.161_346, offset: 10799B]
.LVL75:
	.loc 1 863 0
	jne	.L24	#,
.LVL76:
.L61:
	.loc 1 864 0
	movl	%edi, %ebx	# D.10452,
	movb	%bl, bm+10800(%edx,%eax)	#, MEM[symbol: bm, base: D.11228_479, index: ivtmp.161_346, offset: 10800B]
	movl	%esi, %ebx	# D.10450,
	movb	%bl, bm+10801(%edx,%eax)	#, MEM[symbol: bm, base: D.11228_479, index: ivtmp.161_346, offset: 10801B]
	movzbl	3(%esp), %ebx	# %sfp,
	.loc 1 863 0
	cmpb	$32, 2(%ebp)	#, MEM[(char *)from_271 + 2B]
	.loc 1 864 0
	movb	%bl, bm+10802(%edx,%eax)	#, MEM[symbol: bm, base: D.11228_479, index: ivtmp.161_346, offset: 10802B]
.LVL77:
	.loc 1 863 0
	jne	.L25	#,
.L62:
	.loc 1 864 0
	movl	%edi, %ebx	# D.10452,
	movb	%bl, bm+10803(%edx,%eax)	#, MEM[symbol: bm, base: D.11216_467, index: ivtmp.161_346, offset: 10803B]
	movl	%esi, %ebx	# D.10450,
	movb	%bl, bm+10804(%edx,%eax)	#, MEM[symbol: bm, base: D.11216_467, index: ivtmp.161_346, offset: 10804B]
	movzbl	3(%esp), %ebx	# %sfp,
	.loc 1 863 0
	cmpb	$32, 3(%ebp)	#, MEM[(char *)from_271 + 3B]
	.loc 1 864 0
	movb	%bl, bm+10805(%edx,%eax)	#, MEM[symbol: bm, base: D.11216_467, index: ivtmp.161_346, offset: 10805B]
.LVL78:
	.loc 1 863 0
	jne	.L26	#,
.L63:
	.loc 1 864 0
	movl	%edi, %ebx	# D.10452,
	movb	%bl, bm+10806(%edx,%eax)	#, MEM[symbol: bm, base: D.11204_455, index: ivtmp.161_346, offset: 10806B]
	movl	%esi, %ebx	# D.10450,
	movb	%bl, bm+10807(%edx,%eax)	#, MEM[symbol: bm, base: D.11204_455, index: ivtmp.161_346, offset: 10807B]
	movzbl	3(%esp), %ebx	# %sfp,
	.loc 1 861 0
	leal	.LC5(%ecx), %ebp	#, from
	.loc 1 863 0
	cmpb	$32, .LC5(%ecx)	#, *from_313
	.loc 1 864 0
	movb	%bl, bm+10808(%edx,%eax)	#, MEM[symbol: bm, base: D.11204_455, index: ivtmp.161_346, offset: 10808B]
.LVL79:
	.loc 1 863 0
	jne	.L27	#,
.L64:
	.loc 1 864 0
	movl	%edi, %ebx	# D.10452,
	movb	%bl, bm+10971(%edx,%eax)	#, MEM[symbol: bm, base: D.11192_443, index: ivtmp.161_346, offset: 10971B]
	movl	%esi, %ebx	# D.10450,
	movb	%bl, bm+10972(%edx,%eax)	#, MEM[symbol: bm, base: D.11192_443, index: ivtmp.161_346, offset: 10972B]
	movzbl	3(%esp), %ebx	# %sfp,
	.loc 1 863 0
	cmpb	$32, 1(%ebp)	#, MEM[(char *)from_313 + 1B]
	.loc 1 864 0
	movb	%bl, bm+10973(%edx,%eax)	#, MEM[symbol: bm, base: D.11192_443, index: ivtmp.161_346, offset: 10973B]
.LVL80:
	.loc 1 863 0
	jne	.L28	#,
.LVL81:
.L65:
	.loc 1 864 0
	movl	%edi, %ebx	# D.10452,
	movb	%bl, bm+10974(%edx,%eax)	#, MEM[symbol: bm, base: D.11180_431, index: ivtmp.161_346, offset: 10974B]
	movl	%esi, %ebx	# D.10450,
	movb	%bl, bm+10975(%edx,%eax)	#, MEM[symbol: bm, base: D.11180_431, index: ivtmp.161_346, offset: 10975B]
	movzbl	3(%esp), %ebx	# %sfp,
	.loc 1 863 0
	cmpb	$32, 2(%ebp)	#, MEM[(char *)from_313 + 2B]
	.loc 1 864 0
	movb	%bl, bm+10976(%edx,%eax)	#, MEM[symbol: bm, base: D.11180_431, index: ivtmp.161_346, offset: 10976B]
.LVL82:
	.loc 1 863 0
	jne	.L29	#,
.L66:
	.loc 1 864 0
	movl	%edi, %ebx	# D.10452,
	movb	%bl, bm+10977(%edx,%eax)	#, MEM[symbol: bm, base: D.11168_110, index: ivtmp.161_346, offset: 10977B]
	movl	%esi, %ebx	# D.10450,
	movb	%bl, bm+10978(%edx,%eax)	#, MEM[symbol: bm, base: D.11168_110, index: ivtmp.161_346, offset: 10978B]
	movzbl	3(%esp), %ebx	# %sfp,
	.loc 1 863 0
	cmpb	$32, 3(%ebp)	#, MEM[(char *)from_313 + 3B]
	.loc 1 864 0
	movb	%bl, bm+10979(%edx,%eax)	#, MEM[symbol: bm, base: D.11168_110, index: ivtmp.161_346, offset: 10979B]
.LVL83:
	.loc 1 863 0
	jne	.L30	#,
.L67:
	.loc 1 864 0
	movl	%edi, %ebx	# D.10452,
	movb	%bl, bm+10980(%edx,%eax)	#, MEM[symbol: bm, base: D.11156_94, index: ivtmp.161_346, offset: 10980B]
	movl	%esi, %ebx	# D.10450,
	movb	%bl, bm+10981(%edx,%eax)	#, MEM[symbol: bm, base: D.11156_94, index: ivtmp.161_346, offset: 10981B]
	movzbl	3(%esp), %ebx	# %sfp,
	.loc 1 861 0
	leal	.LC6(%ecx), %ebp	#, from
	.loc 1 863 0
	cmpb	$32, .LC6(%ecx)	#, *from_355
	.loc 1 864 0
	movb	%bl, bm+10982(%edx,%eax)	#, MEM[symbol: bm, base: D.11156_94, index: ivtmp.161_346, offset: 10982B]
.LVL84:
	.loc 1 863 0
	jne	.L31	#,
.L68:
	.loc 1 864 0
	movl	%edi, %ebx	# D.10452,
	movb	%bl, bm+11145(%edx,%eax)	#, MEM[symbol: bm, base: D.11144_59, index: ivtmp.161_346, offset: 11145B]
	movl	%esi, %ebx	# D.10450,
	movb	%bl, bm+11146(%edx,%eax)	#, MEM[symbol: bm, base: D.11144_59, index: ivtmp.161_346, offset: 11146B]
	movzbl	3(%esp), %ebx	# %sfp,
	.loc 1 863 0
	cmpb	$32, 1(%ebp)	#, MEM[(char *)from_355 + 1B]
	.loc 1 864 0
	movb	%bl, bm+11147(%edx,%eax)	#, MEM[symbol: bm, base: D.11144_59, index: ivtmp.161_346, offset: 11147B]
.LVL85:
	.loc 1 863 0
	jne	.L32	#,
.LVL86:
.L69:
	.loc 1 864 0
	movl	%edi, %ebx	# D.10452,
	movb	%bl, bm+11148(%edx,%eax)	#, MEM[symbol: bm, base: D.11132_222, index: ivtmp.161_346, offset: 11148B]
	movl	%esi, %ebx	# D.10450,
	movb	%bl, bm+11149(%edx,%eax)	#, MEM[symbol: bm, base: D.11132_222, index: ivtmp.161_346, offset: 11149B]
	movzbl	3(%esp), %ebx	# %sfp,
	.loc 1 863 0
	cmpb	$32, 2(%ebp)	#, MEM[(char *)from_355 + 2B]
	.loc 1 864 0
	movb	%bl, bm+11150(%edx,%eax)	#, MEM[symbol: bm, base: D.11132_222, index: ivtmp.161_346, offset: 11150B]
.LVL87:
	.loc 1 863 0
	jne	.L33	#,
.L70:
	.loc 1 864 0
	movl	%edi, %ebx	# D.10452,
	movb	%bl, bm+11151(%edx,%eax)	#, MEM[symbol: bm, base: D.11120_113, index: ivtmp.161_346, offset: 11151B]
	movl	%esi, %ebx	# D.10450,
	movb	%bl, bm+11152(%edx,%eax)	#, MEM[symbol: bm, base: D.11120_113, index: ivtmp.161_346, offset: 11152B]
	movzbl	3(%esp), %ebx	# %sfp,
	.loc 1 863 0
	cmpb	$32, 3(%ebp)	#, MEM[(char *)from_355 + 3B]
	.loc 1 864 0
	movb	%bl, bm+11153(%edx,%eax)	#, MEM[symbol: bm, base: D.11120_113, index: ivtmp.161_346, offset: 11153B]
.LVL88:
	.loc 1 863 0
	jne	.L34	#,
.L71:
	.loc 1 864 0
	movl	%edi, %ebx	# D.10452,
	movb	%bl, bm+11154(%edx,%eax)	#, MEM[symbol: bm, base: D.11108_134, index: ivtmp.161_346, offset: 11154B]
	movl	%esi, %ebx	# D.10450,
	movb	%bl, bm+11155(%edx,%eax)	#, MEM[symbol: bm, base: D.11108_134, index: ivtmp.161_346, offset: 11155B]
	movzbl	3(%esp), %ebx	# %sfp,
	.loc 1 861 0
	leal	.LC7(%ecx), %ebp	#, from
	.loc 1 863 0
	cmpb	$32, .LC7(%ecx)	#, *from_397
	.loc 1 864 0
	movb	%bl, bm+11156(%edx,%eax)	#, MEM[symbol: bm, base: D.11108_134, index: ivtmp.161_346, offset: 11156B]
.LVL89:
	.loc 1 863 0
	jne	.L35	#,
.L72:
	.loc 1 864 0
	movl	%edi, %ecx	# D.10452,
	movl	%esi, %ebx	# D.10450,
	movb	%cl, bm+11319(%edx,%eax)	#, MEM[symbol: bm, base: D.11096_175, index: ivtmp.161_346, offset: 11319B]
	movzbl	3(%esp), %ecx	# %sfp,
	.loc 1 863 0
	cmpb	$32, 1(%ebp)	#, MEM[(char *)from_397 + 1B]
	.loc 1 864 0
	movb	%bl, bm+11320(%edx,%eax)	#, MEM[symbol: bm, base: D.11096_175, index: ivtmp.161_346, offset: 11320B]
	movb	%cl, bm+11321(%edx,%eax)	#, MEM[symbol: bm, base: D.11096_175, index: ivtmp.161_346, offset: 11321B]
.LVL90:
	.loc 1 863 0
	jne	.L36	#,
.LVL91:
.L73:
	.loc 1 864 0
	movl	%edi, %ebx	# D.10452,
	movl	%esi, %ecx	# D.10450,
	movb	%bl, bm+11322(%edx,%eax)	#, MEM[symbol: bm, base: D.11084_235, index: ivtmp.161_346, offset: 11322B]
	movzbl	3(%esp), %ebx	# %sfp,
	movb	%cl, bm+11323(%edx,%eax)	#, MEM[symbol: bm, base: D.11084_235, index: ivtmp.161_346, offset: 11323B]
	movb	%bl, bm+11324(%edx,%eax)	#, MEM[symbol: bm, base: D.11084_235, index: ivtmp.161_346, offset: 11324B]
	jmp	.L36	#
.LVL92:
	.p2align 4,,7
	.p2align 3
.L44:
	movl	%edi, %ebx	# D.10452,
	movb	%bl, bm+10101(%edx,%eax)	#, MEM[symbol: bm, base: D.11432_683, index: ivtmp.161_346, offset: 10101B]
	movl	%esi, %ebx	# D.10450,
	movb	%bl, bm+10102(%edx,%eax)	#, MEM[symbol: bm, base: D.11432_683, index: ivtmp.161_346, offset: 10102B]
	movzbl	3(%esp), %ebx	# %sfp,
	movb	%bl, bm+10103(%edx,%eax)	#, MEM[symbol: bm, base: D.11432_683, index: ivtmp.161_346, offset: 10103B]
	jmp	.L7	#
.LVL93:
	.p2align 4,,7
	.p2align 3
.L1:
.LBE28:
.LBE32:
	.loc 1 892 0
	addl	$24, %esp	#,
.LCFI5:
	.cfi_def_cfa_offset 20
	popl	%ebx	#
.LCFI6:
	.cfi_def_cfa_offset 16
	.cfi_restore 3
.LVL94:
	popl	%esi	#
.LCFI7:
	.cfi_def_cfa_offset 12
	.cfi_restore 6
	popl	%edi	#
.LCFI8:
	.cfi_def_cfa_offset 8
	.cfi_restore 7
	popl	%ebp	#
.LCFI9:
	.cfi_def_cfa_offset 4
	.cfi_restore 5
	ret
	.cfi_endproc
.LFE42:
	.size	draw_string, .-draw_string
	.section	.rodata.str1.4
	.align 4
.LC8:
	.ascii	"-MMM----M----MMM---MMM-----MM-MMMMM--MMM--MMMMM--MMM---MMM--"
	.ascii	"M---M--MM---M---M-M---M---M-M-M-----M---M-----M-M---M-M---M-"
	.ascii	"M---M---M-------M-----M--M--M-MMMM--M-------"
	.string	"--M-M---M-M---M-M---M---M------M----MM--MMMMM-M---M-MMMM-----M---MMM---MMMM-M---M---M-----M-------M-----M-----M-M---M---M---M---M-----M-M---M---M----M----M---M-----M-M---M-M---M---M---M---M-M---M--MMM---MMM--MMMMM--MMM------M--MMM---MMM----M----MMM---MMM--"
	.align 4
.LC9:
	.ascii	".MM...MM..MMM...MM..MMM..MMMM.MMMM..MM..M..M.MMM..MMMM.M..M."
	.ascii	"M....M..M.M..M..MM..MMM...MM..MMM...MM..MMM..M..M.M..M.M..M."
	.ascii	"M..M.M..M.MMMM..MMM.M....MMM...MM........M........M........."
	.ascii	"...M........M.......M..............M.....M.................."
	.ascii	".....................M....................................M."
	.ascii	".M...M.....M.M.M..M.M..M.M..M.M..M.M..M.M....M....M..M.M..M."
	.ascii	".M......M.M..M.M....MMMM.MM.M.M..M.M..M.M..M.M..M.M..M..M..."
	.ascii	"M..M.M..M.M..M.M..M.M..M....M..M...M......M..M..M........M.."
	.ascii	".....M............M.......M.M......M.....M......M.M.....M..."
	.ascii	"....................................M......................."
	.ascii	"............M...M....M...M.M..M.MM.M..M.M..M.M....M..M.M...."
	.ascii	"M....M....M..M..M......M.M.M..M....M..M.MM.M.M..M.M..M.M..M."
	.ascii	"M..M.M.....M...M..M.M..M.M..M..MM..M.M....M...M....M.....M.."
	.ascii	"................MM..MMM...MM...MMM..MM...M....MMM.MMM......."
	.ascii	".....M..M..M........MMM...MM..MMM...MMM.MMM...MMM.MMMM.M..M."
	.ascii	"M..M.M..M.M..M.M..M.MMMM...M...M....M........M.MM.MMMM.MMM.."
	.ascii	"M....M..M.MMM..MMM..M.MM.MMMM..M......M.MM...M....M..M.M.MM."
	.ascii	"M..M.MMM..M..M.MMM...MM...M...M..M.M..M.M..M..MM...M....M..."
	.ascii	".M.....M....M....................M.M..M.M..M.M..M.M..M.MMMM."
	.ascii	"M..M.M..M..M......M.M.M...M........M..M.M..M.M..M.M..M.M..M."
	.ascii	"M.....M...M..M.M..M.M..M.M..M.M..M....M..M....M.....M......."
	.ascii	"M.MM.M..M.M..M.M....M..M.M....M....M..M.M..M..M......M.M.M.."
	.ascii	"M....M..M.M.MM.M..M.M....M..M.M..M....M..M...M..M.M..M.M..M."
	.ascii	"M..M..M...M.....M.....M....M..................MMM.M..M.M...."
	.ascii	"M..M.MMMM..M....MMM.M..M..M......M.MM....M........M..M.M..M."
	.ascii	"M..M.M..M.M.....MM...M...M..M.M..M.M..M..MM...MMM..MM....M.."
	.ascii	".M....M........M....M..M.M..M.M..M.M..M.M....M....M..M.M..M."
	.ascii	".M...M..M.M..M.M....M..M.M..M.M..M.M....M.MM.M..M.M..M..M..."
	.ascii	"M..M..M.M.MMMM.M..M..M...M.....M......M...M................."
	.ascii	"M..M.M..M.M..M.M..M.M.....M......M.M..M..M...M..M.M.M...M..."
	.ascii	".....M..M.M..M.MMM...MMM.M.......M..M.M.M..M..M.M.MMMM.M..M."
	.ascii	"...M.M......M...M....M.........MMM.M..M.MMM...MM..MMM..MMMM."
	.ascii	"M.....MM..M..M.MMM...MM..M..M.MMMM.M..M.M..M..MM..M.....MMM."
	.ascii	"M..M..MM...M....MM.."
	.string	"..M..M..M.M..M..M...MMMM..MMM....M.MMM.......MMMM.......MMM.MMM...MM...MMM..MMM..M...MMM..M..M..M....MM..M..M..MM..mmmm.M..M..MM..M.......M.M....MMM....M...MMM...M..M..M.M..M.MMM..MMMM....M..M...M........."
	.text
	.p2align 4,,15
	.type	draw_dtchr, @function
draw_dtchr:
.LFB49:
	.loc 1 1053 0
	.cfi_startproc
.LVL95:
	.loc 1 1056 0
	leal	-48(%eax), %ecx	#, tmp838
	cmpb	$9, %cl	#, tmp838
	ja	.L78	#,
	movsbl	%al, %eax	# letter, pretmp.266
	leal	(%eax,%eax,2), %eax	#, tmp841
.LVL96:
	addl	%eax, %eax	# tmp842
.LVL97:
	.loc 1 1059 0
	cmpb	$77, .LC8-288(%eax)	#,
	je	.L142	#,
.LVL98:
	cmpb	$77, clockdigit-287(%eax)	#, clockdigit
	je	.L143	#,
.L80:
.LVL99:
	cmpb	$77, clockdigit-286(%eax)	#, clockdigit
	je	.L144	#,
.L81:
.LVL100:
	cmpb	$77, clockdigit-285(%eax)	#, clockdigit
	je	.L145	#,
.L82:
.LVL101:
	cmpb	$77, clockdigit-284(%eax)	#, clockdigit
	je	.L146	#,
.L83:
.LVL102:
	cmpb	$77, .LC8-228(%eax)	#,
	je	.L147	#,
.L84:
.LVL103:
	cmpb	$77, clockdigit-227(%eax)	#, clockdigit
	je	.L148	#,
.L85:
.LVL104:
	cmpb	$77, clockdigit-226(%eax)	#, clockdigit
	je	.L149	#,
.L86:
.LVL105:
	cmpb	$77, clockdigit-225(%eax)	#, clockdigit
	je	.L150	#,
.L87:
.LVL106:
	cmpb	$77, clockdigit-224(%eax)	#, clockdigit
	je	.L151	#,
.L88:
.LVL107:
	cmpb	$77, .LC8-168(%eax)	#,
	je	.L152	#,
.L89:
.LVL108:
	cmpb	$77, clockdigit-167(%eax)	#, clockdigit
	je	.L153	#,
.L90:
.LVL109:
	cmpb	$77, clockdigit-166(%eax)	#, clockdigit
	je	.L154	#,
.L91:
.LVL110:
	cmpb	$77, clockdigit-165(%eax)	#, clockdigit
	je	.L155	#,
.L92:
.LVL111:
	cmpb	$77, clockdigit-164(%eax)	#, clockdigit
	je	.L156	#,
.L93:
.LVL112:
	cmpb	$77, .LC8-108(%eax)	#,
	je	.L157	#,
.L94:
.LVL113:
	cmpb	$77, clockdigit-107(%eax)	#, clockdigit
	je	.L158	#,
.L95:
.LVL114:
	cmpb	$77, clockdigit-106(%eax)	#, clockdigit
	je	.L159	#,
.L96:
.LVL115:
	cmpb	$77, clockdigit-105(%eax)	#, clockdigit
	je	.L160	#,
.L97:
.LVL116:
	cmpb	$77, clockdigit-104(%eax)	#, clockdigit
	je	.L161	#,
.L98:
.LVL117:
	cmpb	$77, .LC8-48(%eax)	#,
	je	.L162	#,
.L99:
.LVL118:
	cmpb	$77, clockdigit-47(%eax)	#, clockdigit
	je	.L163	#,
.L100:
.LVL119:
	cmpb	$77, clockdigit-46(%eax)	#, clockdigit
	je	.L164	#,
.L101:
.LVL120:
	cmpb	$77, clockdigit-45(%eax)	#, clockdigit
	je	.L165	#,
.L102:
.LVL121:
	cmpb	$77, clockdigit-44(%eax)	#, clockdigit
	je	.L166	#,
.L103:
.LVL122:
	cmpb	$77, .LC8+12(%eax)	#,
	je	.L167	#,
.L104:
.LVL123:
	cmpb	$77, clockdigit+13(%eax)	#, clockdigit
	je	.L168	#,
.L105:
.LVL124:
	cmpb	$77, clockdigit+14(%eax)	#, clockdigit
	je	.L169	#,
.L106:
.LVL125:
	cmpb	$77, clockdigit+15(%eax)	#, clockdigit
	je	.L170	#,
.L107:
.LVL126:
	cmpb	$77, clockdigit+16(%eax)	#, clockdigit
	je	.L171	#,
.L108:
.LVL127:
	cmpb	$77, .LC8+72(%eax)	#,
	je	.L172	#,
.L109:
.LVL128:
	cmpb	$77, clockdigit+73(%eax)	#, clockdigit
	je	.L173	#,
.L110:
.LVL129:
	cmpb	$77, clockdigit+74(%eax)	#, clockdigit
	je	.L174	#,
.L111:
.LVL130:
	cmpb	$77, clockdigit+75(%eax)	#, clockdigit
	je	.L175	#,
.L112:
.LVL131:
	cmpb	$77, clockdigit+76(%eax)	#, clockdigit
	je	.L176	#,
.LVL132:
.L77:
	rep
	ret
.LVL133:
	.p2align 4,,7
	.p2align 3
.L78:
	.loc 1 1064 0
	leal	-64(%eax), %ecx	#, tmp878
	cmpb	$62, %cl	#, tmp878
	ja	.L114	#,
	movsbl	%al, %eax	# letter, pretmp.260
	leal	(%eax,%eax,4), %eax	#, tmp881
.LVL134:
	.loc 1 1067 0
	cmpb	$77, .LC9-320(%eax)	#,
	je	.L177	#,
.L115:
.LVL135:
	cmpb	$77, clockalpha-319(%eax)	#, clockalpha
	je	.L178	#,
.L116:
.LVL136:
	cmpb	$77, clockalpha-318(%eax)	#, clockalpha
	je	.L179	#,
.L117:
.LVL137:
	cmpb	$77, clockalpha-317(%eax)	#, clockalpha
	je	.L180	#,
.L118:
.LVL138:
	cmpb	$77, .LC9-5(%eax)	#,
	je	.L181	#,
.L119:
.LVL139:
	cmpb	$77, clockalpha-4(%eax)	#, clockalpha
	je	.L182	#,
.L120:
.LVL140:
	cmpb	$77, clockalpha-3(%eax)	#, clockalpha
	je	.L183	#,
.L121:
.LVL141:
	cmpb	$77, clockalpha-2(%eax)	#, clockalpha
	je	.L184	#,
.L122:
.LVL142:
	cmpb	$77, .LC9+310(%eax)	#,
	je	.L185	#,
.L123:
.LVL143:
	cmpb	$77, clockalpha+311(%eax)	#, clockalpha
	je	.L186	#,
.L124:
.LVL144:
	cmpb	$77, clockalpha+312(%eax)	#, clockalpha
	je	.L187	#,
.L125:
.LVL145:
	cmpb	$77, clockalpha+313(%eax)	#, clockalpha
	je	.L188	#,
.L126:
.LVL146:
	cmpb	$77, .LC9+625(%eax)	#,
	je	.L189	#,
.L127:
.LVL147:
	cmpb	$77, clockalpha+626(%eax)	#, clockalpha
	je	.L190	#,
.L128:
.LVL148:
	cmpb	$77, clockalpha+627(%eax)	#, clockalpha
	je	.L191	#,
.L129:
.LVL149:
	cmpb	$77, clockalpha+628(%eax)	#, clockalpha
	je	.L192	#,
.L130:
.LVL150:
	cmpb	$77, .LC9+940(%eax)	#,
	je	.L193	#,
.L131:
.LVL151:
	cmpb	$77, clockalpha+941(%eax)	#, clockalpha
	je	.L194	#,
.L132:
.LVL152:
	cmpb	$77, clockalpha+942(%eax)	#, clockalpha
	je	.L195	#,
.L133:
.LVL153:
	cmpb	$77, clockalpha+943(%eax)	#, clockalpha
	je	.L196	#,
.L134:
.LVL154:
	cmpb	$77, .LC9+1255(%eax)	#,
	je	.L197	#,
.L135:
.LVL155:
	cmpb	$77, clockalpha+1256(%eax)	#, clockalpha
	je	.L198	#,
.L136:
.LVL156:
	cmpb	$77, clockalpha+1257(%eax)	#, clockalpha
	je	.L199	#,
.L137:
.LVL157:
	cmpb	$77, clockalpha+1258(%eax)	#, clockalpha
	je	.L200	#,
.L138:
.LVL158:
	cmpb	$77, .LC9+1570(%eax)	#,
	je	.L201	#,
.L139:
.LVL159:
	cmpb	$77, clockalpha+1571(%eax)	#, clockalpha
	je	.L202	#,
.L140:
.LVL160:
	cmpb	$77, clockalpha+1572(%eax)	#, clockalpha
	je	.L203	#,
.L141:
.LVL161:
	cmpb	$77, clockalpha+1573(%eax)	#, clockalpha
	jne	.L77	#,
	.loc 1 1068 0
	shrb	1053(%edx)	# MEM[(unsigned char *)rgbbuf_21(D) + 1053B]
	.loc 1 1069 0
	shrb	1054(%edx)	# MEM[(unsigned char *)rgbbuf_21(D) + 1054B]
	.loc 1 1070 0
	shrb	1055(%edx)	# MEM[(unsigned char *)rgbbuf_21(D) + 1055B]
	ret
.LVL162:
	.p2align 4,,7
	.p2align 3
.L114:
	.loc 1 1072 0
	cmpb	$58, %al	#, letter
	jne	.L77	#,
	.loc 1 1073 0
	shrb	522(%edx)	# MEM[(unsigned char *)rgbbuf_21(D) + 522B]
	.loc 1 1074 0
	shrb	523(%edx)	# MEM[(unsigned char *)rgbbuf_21(D) + 523B]
	.loc 1 1075 0
	shrb	524(%edx)	# MEM[(unsigned char *)rgbbuf_21(D) + 524B]
	.loc 1 1076 0
	shrb	870(%edx)	# MEM[(unsigned char *)rgbbuf_21(D) + 870B]
	.loc 1 1077 0
	shrb	871(%edx)	# MEM[(unsigned char *)rgbbuf_21(D) + 871B]
	.loc 1 1078 0
	shrb	872(%edx)	# MEM[(unsigned char *)rgbbuf_21(D) + 872B]
	ret
.LVL163:
	.p2align 4,,7
	.p2align 3
.L176:
	.loc 1 1060 0
	shrb	1056(%edx)	# MEM[(unsigned char *)rgbbuf_21(D) + 1056B]
	.loc 1 1061 0
	shrb	1057(%edx)	# MEM[(unsigned char *)rgbbuf_21(D) + 1057B]
	.loc 1 1062 0
	shrb	1058(%edx)	# MEM[(unsigned char *)rgbbuf_21(D) + 1058B]
	ret
.LVL164:
	.p2align 4,,7
	.p2align 3
.L142:
	.loc 1 1060 0
	shrb	(%edx)	# *rgbbuf_21(D)
	.loc 1 1061 0
	shrb	1(%edx)	# MEM[(unsigned char *)rgbbuf_21(D) + 1B]
	.loc 1 1062 0
	shrb	2(%edx)	# MEM[(unsigned char *)rgbbuf_21(D) + 2B]
.LVL165:
	.loc 1 1059 0
	cmpb	$77, clockdigit-287(%eax)	#, clockdigit
	jne	.L80	#,
.L143:
	.loc 1 1060 0
	shrb	3(%edx)	# MEM[(unsigned char *)rgbbuf_21(D) + 3B]
	.loc 1 1061 0
	shrb	4(%edx)	# MEM[(unsigned char *)rgbbuf_21(D) + 4B]
	.loc 1 1062 0
	shrb	5(%edx)	# MEM[(unsigned char *)rgbbuf_21(D) + 5B]
.LVL166:
	.loc 1 1059 0
	cmpb	$77, clockdigit-286(%eax)	#, clockdigit
	jne	.L81	#,
.L144:
	.loc 1 1060 0
	shrb	6(%edx)	# MEM[(unsigned char *)rgbbuf_21(D) + 6B]
	.loc 1 1061 0
	shrb	7(%edx)	# MEM[(unsigned char *)rgbbuf_21(D) + 7B]
	.loc 1 1062 0
	shrb	8(%edx)	# MEM[(unsigned char *)rgbbuf_21(D) + 8B]
.LVL167:
	.loc 1 1059 0
	cmpb	$77, clockdigit-285(%eax)	#, clockdigit
	jne	.L82	#,
.L145:
	.loc 1 1060 0
	shrb	9(%edx)	# MEM[(unsigned char *)rgbbuf_21(D) + 9B]
	.loc 1 1061 0
	shrb	10(%edx)	# MEM[(unsigned char *)rgbbuf_21(D) + 10B]
	.loc 1 1062 0
	shrb	11(%edx)	# MEM[(unsigned char *)rgbbuf_21(D) + 11B]
.LVL168:
	.loc 1 1059 0
	cmpb	$77, clockdigit-284(%eax)	#, clockdigit
	jne	.L83	#,
.L146:
	.loc 1 1060 0
	shrb	12(%edx)	# MEM[(unsigned char *)rgbbuf_21(D) + 12B]
	.loc 1 1061 0
	shrb	13(%edx)	# MEM[(unsigned char *)rgbbuf_21(D) + 13B]
	.loc 1 1062 0
	shrb	14(%edx)	# MEM[(unsigned char *)rgbbuf_21(D) + 14B]
.LVL169:
	.loc 1 1059 0
	cmpb	$77, .LC8-228(%eax)	#,
	jne	.L84	#,
.L147:
	.loc 1 1060 0
	shrb	174(%edx)	# MEM[(unsigned char *)rgbbuf_21(D) + 174B]
	.loc 1 1061 0
	shrb	175(%edx)	# MEM[(unsigned char *)rgbbuf_21(D) + 175B]
	.loc 1 1062 0
	shrb	176(%edx)	# MEM[(unsigned char *)rgbbuf_21(D) + 176B]
.LVL170:
	.loc 1 1059 0
	cmpb	$77, clockdigit-227(%eax)	#, clockdigit
	jne	.L85	#,
.L148:
	.loc 1 1060 0
	shrb	177(%edx)	# MEM[(unsigned char *)rgbbuf_21(D) + 177B]
	.loc 1 1061 0
	shrb	178(%edx)	# MEM[(unsigned char *)rgbbuf_21(D) + 178B]
	.loc 1 1062 0
	shrb	179(%edx)	# MEM[(unsigned char *)rgbbuf_21(D) + 179B]
.LVL171:
	.loc 1 1059 0
	cmpb	$77, clockdigit-226(%eax)	#, clockdigit
	jne	.L86	#,
.L149:
	.loc 1 1060 0
	shrb	180(%edx)	# MEM[(unsigned char *)rgbbuf_21(D) + 180B]
	.loc 1 1061 0
	shrb	181(%edx)	# MEM[(unsigned char *)rgbbuf_21(D) + 181B]
	.loc 1 1062 0
	shrb	182(%edx)	# MEM[(unsigned char *)rgbbuf_21(D) + 182B]
.LVL172:
	.loc 1 1059 0
	cmpb	$77, clockdigit-225(%eax)	#, clockdigit
	jne	.L87	#,
.L150:
	.loc 1 1060 0
	shrb	183(%edx)	# MEM[(unsigned char *)rgbbuf_21(D) + 183B]
	.loc 1 1061 0
	shrb	184(%edx)	# MEM[(unsigned char *)rgbbuf_21(D) + 184B]
	.loc 1 1062 0
	shrb	185(%edx)	# MEM[(unsigned char *)rgbbuf_21(D) + 185B]
.LVL173:
	.loc 1 1059 0
	cmpb	$77, clockdigit-224(%eax)	#, clockdigit
	jne	.L88	#,
.L151:
	.loc 1 1060 0
	shrb	186(%edx)	# MEM[(unsigned char *)rgbbuf_21(D) + 186B]
	.loc 1 1061 0
	shrb	187(%edx)	# MEM[(unsigned char *)rgbbuf_21(D) + 187B]
	.loc 1 1062 0
	shrb	188(%edx)	# MEM[(unsigned char *)rgbbuf_21(D) + 188B]
.LVL174:
	.loc 1 1059 0
	cmpb	$77, .LC8-168(%eax)	#,
	jne	.L89	#,
.L152:
	.loc 1 1060 0
	shrb	348(%edx)	# MEM[(unsigned char *)rgbbuf_21(D) + 348B]
	.loc 1 1061 0
	shrb	349(%edx)	# MEM[(unsigned char *)rgbbuf_21(D) + 349B]
	.loc 1 1062 0
	shrb	350(%edx)	# MEM[(unsigned char *)rgbbuf_21(D) + 350B]
.LVL175:
	.loc 1 1059 0
	cmpb	$77, clockdigit-167(%eax)	#, clockdigit
	jne	.L90	#,
.L153:
	.loc 1 1060 0
	shrb	351(%edx)	# MEM[(unsigned char *)rgbbuf_21(D) + 351B]
	.loc 1 1061 0
	shrb	352(%edx)	# MEM[(unsigned char *)rgbbuf_21(D) + 352B]
	.loc 1 1062 0
	shrb	353(%edx)	# MEM[(unsigned char *)rgbbuf_21(D) + 353B]
.LVL176:
	.loc 1 1059 0
	cmpb	$77, clockdigit-166(%eax)	#, clockdigit
	jne	.L91	#,
.L154:
	.loc 1 1060 0
	shrb	354(%edx)	# MEM[(unsigned char *)rgbbuf_21(D) + 354B]
	.loc 1 1061 0
	shrb	355(%edx)	# MEM[(unsigned char *)rgbbuf_21(D) + 355B]
	.loc 1 1062 0
	shrb	356(%edx)	# MEM[(unsigned char *)rgbbuf_21(D) + 356B]
.LVL177:
	.loc 1 1059 0
	cmpb	$77, clockdigit-165(%eax)	#, clockdigit
	jne	.L92	#,
.L155:
	.loc 1 1060 0
	shrb	357(%edx)	# MEM[(unsigned char *)rgbbuf_21(D) + 357B]
	.loc 1 1061 0
	shrb	358(%edx)	# MEM[(unsigned char *)rgbbuf_21(D) + 358B]
	.loc 1 1062 0
	shrb	359(%edx)	# MEM[(unsigned char *)rgbbuf_21(D) + 359B]
.LVL178:
	.loc 1 1059 0
	cmpb	$77, clockdigit-164(%eax)	#, clockdigit
	jne	.L93	#,
.L156:
	.loc 1 1060 0
	shrb	360(%edx)	# MEM[(unsigned char *)rgbbuf_21(D) + 360B]
	.loc 1 1061 0
	shrb	361(%edx)	# MEM[(unsigned char *)rgbbuf_21(D) + 361B]
	.loc 1 1062 0
	shrb	362(%edx)	# MEM[(unsigned char *)rgbbuf_21(D) + 362B]
.LVL179:
	.loc 1 1059 0
	cmpb	$77, .LC8-108(%eax)	#,
	jne	.L94	#,
.L157:
	.loc 1 1060 0
	shrb	522(%edx)	# MEM[(unsigned char *)rgbbuf_21(D) + 522B]
	.loc 1 1061 0
	shrb	523(%edx)	# MEM[(unsigned char *)rgbbuf_21(D) + 523B]
	.loc 1 1062 0
	shrb	524(%edx)	# MEM[(unsigned char *)rgbbuf_21(D) + 524B]
.LVL180:
	.loc 1 1059 0
	cmpb	$77, clockdigit-107(%eax)	#, clockdigit
	jne	.L95	#,
.L158:
	.loc 1 1060 0
	shrb	525(%edx)	# MEM[(unsigned char *)rgbbuf_21(D) + 525B]
	.loc 1 1061 0
	shrb	526(%edx)	# MEM[(unsigned char *)rgbbuf_21(D) + 526B]
	.loc 1 1062 0
	shrb	527(%edx)	# MEM[(unsigned char *)rgbbuf_21(D) + 527B]
.LVL181:
	.loc 1 1059 0
	cmpb	$77, clockdigit-106(%eax)	#, clockdigit
	jne	.L96	#,
.L159:
	.loc 1 1060 0
	shrb	528(%edx)	# MEM[(unsigned char *)rgbbuf_21(D) + 528B]
	.loc 1 1061 0
	shrb	529(%edx)	# MEM[(unsigned char *)rgbbuf_21(D) + 529B]
	.loc 1 1062 0
	shrb	530(%edx)	# MEM[(unsigned char *)rgbbuf_21(D) + 530B]
.LVL182:
	.loc 1 1059 0
	cmpb	$77, clockdigit-105(%eax)	#, clockdigit
	jne	.L97	#,
.L160:
	.loc 1 1060 0
	shrb	531(%edx)	# MEM[(unsigned char *)rgbbuf_21(D) + 531B]
	.loc 1 1061 0
	shrb	532(%edx)	# MEM[(unsigned char *)rgbbuf_21(D) + 532B]
	.loc 1 1062 0
	shrb	533(%edx)	# MEM[(unsigned char *)rgbbuf_21(D) + 533B]
.LVL183:
	.loc 1 1059 0
	cmpb	$77, clockdigit-104(%eax)	#, clockdigit
	jne	.L98	#,
.L161:
	.loc 1 1060 0
	shrb	534(%edx)	# MEM[(unsigned char *)rgbbuf_21(D) + 534B]
	.loc 1 1061 0
	shrb	535(%edx)	# MEM[(unsigned char *)rgbbuf_21(D) + 535B]
	.loc 1 1062 0
	shrb	536(%edx)	# MEM[(unsigned char *)rgbbuf_21(D) + 536B]
.LVL184:
	.loc 1 1059 0
	cmpb	$77, .LC8-48(%eax)	#,
	jne	.L99	#,
.L162:
	.loc 1 1060 0
	shrb	696(%edx)	# MEM[(unsigned char *)rgbbuf_21(D) + 696B]
	.loc 1 1061 0
	shrb	697(%edx)	# MEM[(unsigned char *)rgbbuf_21(D) + 697B]
	.loc 1 1062 0
	shrb	698(%edx)	# MEM[(unsigned char *)rgbbuf_21(D) + 698B]
.LVL185:
	.loc 1 1059 0
	cmpb	$77, clockdigit-47(%eax)	#, clockdigit
	jne	.L100	#,
.L163:
	.loc 1 1060 0
	shrb	699(%edx)	# MEM[(unsigned char *)rgbbuf_21(D) + 699B]
	.loc 1 1061 0
	shrb	700(%edx)	# MEM[(unsigned char *)rgbbuf_21(D) + 700B]
	.loc 1 1062 0
	shrb	701(%edx)	# MEM[(unsigned char *)rgbbuf_21(D) + 701B]
.LVL186:
	.loc 1 1059 0
	cmpb	$77, clockdigit-46(%eax)	#, clockdigit
	jne	.L101	#,
.L164:
	.loc 1 1060 0
	shrb	702(%edx)	# MEM[(unsigned char *)rgbbuf_21(D) + 702B]
	.loc 1 1061 0
	shrb	703(%edx)	# MEM[(unsigned char *)rgbbuf_21(D) + 703B]
	.loc 1 1062 0
	shrb	704(%edx)	# MEM[(unsigned char *)rgbbuf_21(D) + 704B]
.LVL187:
	.loc 1 1059 0
	cmpb	$77, clockdigit-45(%eax)	#, clockdigit
	jne	.L102	#,
.L165:
	.loc 1 1060 0
	shrb	705(%edx)	# MEM[(unsigned char *)rgbbuf_21(D) + 705B]
	.loc 1 1061 0
	shrb	706(%edx)	# MEM[(unsigned char *)rgbbuf_21(D) + 706B]
	.loc 1 1062 0
	shrb	707(%edx)	# MEM[(unsigned char *)rgbbuf_21(D) + 707B]
.LVL188:
	.loc 1 1059 0
	cmpb	$77, clockdigit-44(%eax)	#, clockdigit
	jne	.L103	#,
.L166:
	.loc 1 1060 0
	shrb	708(%edx)	# MEM[(unsigned char *)rgbbuf_21(D) + 708B]
	.loc 1 1061 0
	shrb	709(%edx)	# MEM[(unsigned char *)rgbbuf_21(D) + 709B]
	.loc 1 1062 0
	shrb	710(%edx)	# MEM[(unsigned char *)rgbbuf_21(D) + 710B]
.LVL189:
	.loc 1 1059 0
	cmpb	$77, .LC8+12(%eax)	#,
	jne	.L104	#,
.L167:
	.loc 1 1060 0
	shrb	870(%edx)	# MEM[(unsigned char *)rgbbuf_21(D) + 870B]
	.loc 1 1061 0
	shrb	871(%edx)	# MEM[(unsigned char *)rgbbuf_21(D) + 871B]
	.loc 1 1062 0
	shrb	872(%edx)	# MEM[(unsigned char *)rgbbuf_21(D) + 872B]
.LVL190:
	.loc 1 1059 0
	cmpb	$77, clockdigit+13(%eax)	#, clockdigit
	jne	.L105	#,
.L168:
	.loc 1 1060 0
	shrb	873(%edx)	# MEM[(unsigned char *)rgbbuf_21(D) + 873B]
	.loc 1 1061 0
	shrb	874(%edx)	# MEM[(unsigned char *)rgbbuf_21(D) + 874B]
	.loc 1 1062 0
	shrb	875(%edx)	# MEM[(unsigned char *)rgbbuf_21(D) + 875B]
.LVL191:
	.loc 1 1059 0
	cmpb	$77, clockdigit+14(%eax)	#, clockdigit
	jne	.L106	#,
.L169:
	.loc 1 1060 0
	shrb	876(%edx)	# MEM[(unsigned char *)rgbbuf_21(D) + 876B]
	.loc 1 1061 0
	shrb	877(%edx)	# MEM[(unsigned char *)rgbbuf_21(D) + 877B]
	.loc 1 1062 0
	shrb	878(%edx)	# MEM[(unsigned char *)rgbbuf_21(D) + 878B]
.LVL192:
	.loc 1 1059 0
	cmpb	$77, clockdigit+15(%eax)	#, clockdigit
	jne	.L107	#,
.L170:
	.loc 1 1060 0
	shrb	879(%edx)	# MEM[(unsigned char *)rgbbuf_21(D) + 879B]
	.loc 1 1061 0
	shrb	880(%edx)	# MEM[(unsigned char *)rgbbuf_21(D) + 880B]
	.loc 1 1062 0
	shrb	881(%edx)	# MEM[(unsigned char *)rgbbuf_21(D) + 881B]
.LVL193:
	.loc 1 1059 0
	cmpb	$77, clockdigit+16(%eax)	#, clockdigit
	jne	.L108	#,
.L171:
	.loc 1 1060 0
	shrb	882(%edx)	# MEM[(unsigned char *)rgbbuf_21(D) + 882B]
	.loc 1 1061 0
	shrb	883(%edx)	# MEM[(unsigned char *)rgbbuf_21(D) + 883B]
	.loc 1 1062 0
	shrb	884(%edx)	# MEM[(unsigned char *)rgbbuf_21(D) + 884B]
.LVL194:
	.loc 1 1059 0
	cmpb	$77, .LC8+72(%eax)	#,
	jne	.L109	#,
.L172:
	.loc 1 1060 0
	shrb	1044(%edx)	# MEM[(unsigned char *)rgbbuf_21(D) + 1044B]
	.loc 1 1061 0
	shrb	1045(%edx)	# MEM[(unsigned char *)rgbbuf_21(D) + 1045B]
	.loc 1 1062 0
	shrb	1046(%edx)	# MEM[(unsigned char *)rgbbuf_21(D) + 1046B]
.LVL195:
	.loc 1 1059 0
	cmpb	$77, clockdigit+73(%eax)	#, clockdigit
	jne	.L110	#,
.L173:
	.loc 1 1060 0
	shrb	1047(%edx)	# MEM[(unsigned char *)rgbbuf_21(D) + 1047B]
	.loc 1 1061 0
	shrb	1048(%edx)	# MEM[(unsigned char *)rgbbuf_21(D) + 1048B]
	.loc 1 1062 0
	shrb	1049(%edx)	# MEM[(unsigned char *)rgbbuf_21(D) + 1049B]
.LVL196:
	.loc 1 1059 0
	cmpb	$77, clockdigit+74(%eax)	#, clockdigit
	jne	.L111	#,
.L174:
	.loc 1 1060 0
	shrb	1050(%edx)	# MEM[(unsigned char *)rgbbuf_21(D) + 1050B]
	.loc 1 1061 0
	shrb	1051(%edx)	# MEM[(unsigned char *)rgbbuf_21(D) + 1051B]
	.loc 1 1062 0
	shrb	1052(%edx)	# MEM[(unsigned char *)rgbbuf_21(D) + 1052B]
.LVL197:
	.loc 1 1059 0
	cmpb	$77, clockdigit+75(%eax)	#, clockdigit
	jne	.L112	#,
.L175:
	.loc 1 1060 0
	shrb	1053(%edx)	# MEM[(unsigned char *)rgbbuf_21(D) + 1053B]
	.loc 1 1061 0
	shrb	1054(%edx)	# MEM[(unsigned char *)rgbbuf_21(D) + 1054B]
	.loc 1 1062 0
	shrb	1055(%edx)	# MEM[(unsigned char *)rgbbuf_21(D) + 1055B]
.LVL198:
	.loc 1 1059 0
	cmpb	$77, clockdigit+76(%eax)	#, clockdigit
	jne	.L77	#,
	jmp	.L176	#
.LVL199:
	.p2align 4,,7
	.p2align 3
.L201:
	.loc 1 1068 0
	shrb	1044(%edx)	# MEM[(unsigned char *)rgbbuf_21(D) + 1044B]
	.loc 1 1069 0
	shrb	1045(%edx)	# MEM[(unsigned char *)rgbbuf_21(D) + 1045B]
	.loc 1 1070 0
	shrb	1046(%edx)	# MEM[(unsigned char *)rgbbuf_21(D) + 1046B]
	jmp	.L139	#
.LVL200:
	.p2align 4,,7
	.p2align 3
.L200:
	.loc 1 1068 0
	shrb	879(%edx)	# MEM[(unsigned char *)rgbbuf_21(D) + 879B]
	.loc 1 1069 0
	shrb	880(%edx)	# MEM[(unsigned char *)rgbbuf_21(D) + 880B]
	.loc 1 1070 0
	shrb	881(%edx)	# MEM[(unsigned char *)rgbbuf_21(D) + 881B]
	jmp	.L138	#
.LVL201:
	.p2align 4,,7
	.p2align 3
.L199:
	.loc 1 1068 0
	shrb	876(%edx)	# MEM[(unsigned char *)rgbbuf_21(D) + 876B]
	.loc 1 1069 0
	shrb	877(%edx)	# MEM[(unsigned char *)rgbbuf_21(D) + 877B]
	.loc 1 1070 0
	shrb	878(%edx)	# MEM[(unsigned char *)rgbbuf_21(D) + 878B]
	jmp	.L137	#
.LVL202:
	.p2align 4,,7
	.p2align 3
.L198:
	.loc 1 1068 0
	shrb	873(%edx)	# MEM[(unsigned char *)rgbbuf_21(D) + 873B]
	.loc 1 1069 0
	shrb	874(%edx)	# MEM[(unsigned char *)rgbbuf_21(D) + 874B]
	.loc 1 1070 0
	shrb	875(%edx)	# MEM[(unsigned char *)rgbbuf_21(D) + 875B]
	jmp	.L136	#
.LVL203:
	.p2align 4,,7
	.p2align 3
.L197:
	.loc 1 1068 0
	shrb	870(%edx)	# MEM[(unsigned char *)rgbbuf_21(D) + 870B]
	.loc 1 1069 0
	shrb	871(%edx)	# MEM[(unsigned char *)rgbbuf_21(D) + 871B]
	.loc 1 1070 0
	shrb	872(%edx)	# MEM[(unsigned char *)rgbbuf_21(D) + 872B]
	jmp	.L135	#
.LVL204:
	.p2align 4,,7
	.p2align 3
.L196:
	.loc 1 1068 0
	shrb	705(%edx)	# MEM[(unsigned char *)rgbbuf_21(D) + 705B]
	.loc 1 1069 0
	shrb	706(%edx)	# MEM[(unsigned char *)rgbbuf_21(D) + 706B]
	.loc 1 1070 0
	shrb	707(%edx)	# MEM[(unsigned char *)rgbbuf_21(D) + 707B]
	jmp	.L134	#
.LVL205:
	.p2align 4,,7
	.p2align 3
.L195:
	.loc 1 1068 0
	shrb	702(%edx)	# MEM[(unsigned char *)rgbbuf_21(D) + 702B]
	.loc 1 1069 0
	shrb	703(%edx)	# MEM[(unsigned char *)rgbbuf_21(D) + 703B]
	.loc 1 1070 0
	shrb	704(%edx)	# MEM[(unsigned char *)rgbbuf_21(D) + 704B]
	jmp	.L133	#
.LVL206:
	.p2align 4,,7
	.p2align 3
.L194:
	.loc 1 1068 0
	shrb	699(%edx)	# MEM[(unsigned char *)rgbbuf_21(D) + 699B]
	.loc 1 1069 0
	shrb	700(%edx)	# MEM[(unsigned char *)rgbbuf_21(D) + 700B]
	.loc 1 1070 0
	shrb	701(%edx)	# MEM[(unsigned char *)rgbbuf_21(D) + 701B]
	jmp	.L132	#
.LVL207:
	.p2align 4,,7
	.p2align 3
.L193:
	.loc 1 1068 0
	shrb	696(%edx)	# MEM[(unsigned char *)rgbbuf_21(D) + 696B]
	.loc 1 1069 0
	shrb	697(%edx)	# MEM[(unsigned char *)rgbbuf_21(D) + 697B]
	.loc 1 1070 0
	shrb	698(%edx)	# MEM[(unsigned char *)rgbbuf_21(D) + 698B]
	jmp	.L131	#
.LVL208:
	.p2align 4,,7
	.p2align 3
.L192:
	.loc 1 1068 0
	shrb	531(%edx)	# MEM[(unsigned char *)rgbbuf_21(D) + 531B]
	.loc 1 1069 0
	shrb	532(%edx)	# MEM[(unsigned char *)rgbbuf_21(D) + 532B]
	.loc 1 1070 0
	shrb	533(%edx)	# MEM[(unsigned char *)rgbbuf_21(D) + 533B]
	jmp	.L130	#
.LVL209:
	.p2align 4,,7
	.p2align 3
.L191:
	.loc 1 1068 0
	shrb	528(%edx)	# MEM[(unsigned char *)rgbbuf_21(D) + 528B]
	.loc 1 1069 0
	shrb	529(%edx)	# MEM[(unsigned char *)rgbbuf_21(D) + 529B]
	.loc 1 1070 0
	shrb	530(%edx)	# MEM[(unsigned char *)rgbbuf_21(D) + 530B]
	jmp	.L129	#
.LVL210:
	.p2align 4,,7
	.p2align 3
.L190:
	.loc 1 1068 0
	shrb	525(%edx)	# MEM[(unsigned char *)rgbbuf_21(D) + 525B]
	.loc 1 1069 0
	shrb	526(%edx)	# MEM[(unsigned char *)rgbbuf_21(D) + 526B]
	.loc 1 1070 0
	shrb	527(%edx)	# MEM[(unsigned char *)rgbbuf_21(D) + 527B]
	jmp	.L128	#
.LVL211:
	.p2align 4,,7
	.p2align 3
.L177:
	.loc 1 1068 0
	shrb	(%edx)	# *rgbbuf_21(D)
	.loc 1 1069 0
	shrb	1(%edx)	# MEM[(unsigned char *)rgbbuf_21(D) + 1B]
	.loc 1 1070 0
	shrb	2(%edx)	# MEM[(unsigned char *)rgbbuf_21(D) + 2B]
	jmp	.L115	#
.LVL212:
	.p2align 4,,7
	.p2align 3
.L203:
	.loc 1 1068 0
	shrb	1050(%edx)	# MEM[(unsigned char *)rgbbuf_21(D) + 1050B]
	.loc 1 1069 0
	shrb	1051(%edx)	# MEM[(unsigned char *)rgbbuf_21(D) + 1051B]
	.loc 1 1070 0
	shrb	1052(%edx)	# MEM[(unsigned char *)rgbbuf_21(D) + 1052B]
	jmp	.L141	#
.LVL213:
	.p2align 4,,7
	.p2align 3
.L202:
	.loc 1 1068 0
	shrb	1047(%edx)	# MEM[(unsigned char *)rgbbuf_21(D) + 1047B]
	.loc 1 1069 0
	shrb	1048(%edx)	# MEM[(unsigned char *)rgbbuf_21(D) + 1048B]
	.loc 1 1070 0
	shrb	1049(%edx)	# MEM[(unsigned char *)rgbbuf_21(D) + 1049B]
	jmp	.L140	#
.LVL214:
	.p2align 4,,7
	.p2align 3
.L181:
	.loc 1 1068 0
	shrb	174(%edx)	# MEM[(unsigned char *)rgbbuf_21(D) + 174B]
	.loc 1 1069 0
	shrb	175(%edx)	# MEM[(unsigned char *)rgbbuf_21(D) + 175B]
	.loc 1 1070 0
	shrb	176(%edx)	# MEM[(unsigned char *)rgbbuf_21(D) + 176B]
	jmp	.L119	#
.LVL215:
	.p2align 4,,7
	.p2align 3
.L180:
	.loc 1 1068 0
	shrb	9(%edx)	# MEM[(unsigned char *)rgbbuf_21(D) + 9B]
	.loc 1 1069 0
	shrb	10(%edx)	# MEM[(unsigned char *)rgbbuf_21(D) + 10B]
	.loc 1 1070 0
	shrb	11(%edx)	# MEM[(unsigned char *)rgbbuf_21(D) + 11B]
	jmp	.L118	#
.LVL216:
	.p2align 4,,7
	.p2align 3
.L179:
	.loc 1 1068 0
	shrb	6(%edx)	# MEM[(unsigned char *)rgbbuf_21(D) + 6B]
	.loc 1 1069 0
	shrb	7(%edx)	# MEM[(unsigned char *)rgbbuf_21(D) + 7B]
	.loc 1 1070 0
	shrb	8(%edx)	# MEM[(unsigned char *)rgbbuf_21(D) + 8B]
	jmp	.L117	#
.LVL217:
	.p2align 4,,7
	.p2align 3
.L178:
	.loc 1 1068 0
	shrb	3(%edx)	# MEM[(unsigned char *)rgbbuf_21(D) + 3B]
	.loc 1 1069 0
	shrb	4(%edx)	# MEM[(unsigned char *)rgbbuf_21(D) + 4B]
	.loc 1 1070 0
	shrb	5(%edx)	# MEM[(unsigned char *)rgbbuf_21(D) + 5B]
	jmp	.L116	#
.LVL218:
	.p2align 4,,7
	.p2align 3
.L189:
	.loc 1 1068 0
	shrb	522(%edx)	# MEM[(unsigned char *)rgbbuf_21(D) + 522B]
	.loc 1 1069 0
	shrb	523(%edx)	# MEM[(unsigned char *)rgbbuf_21(D) + 523B]
	.loc 1 1070 0
	shrb	524(%edx)	# MEM[(unsigned char *)rgbbuf_21(D) + 524B]
	jmp	.L127	#
.LVL219:
	.p2align 4,,7
	.p2align 3
.L188:
	.loc 1 1068 0
	shrb	357(%edx)	# MEM[(unsigned char *)rgbbuf_21(D) + 357B]
	.loc 1 1069 0
	shrb	358(%edx)	# MEM[(unsigned char *)rgbbuf_21(D) + 358B]
	.loc 1 1070 0
	shrb	359(%edx)	# MEM[(unsigned char *)rgbbuf_21(D) + 359B]
	jmp	.L126	#
.LVL220:
	.p2align 4,,7
	.p2align 3
.L187:
	.loc 1 1068 0
	shrb	354(%edx)	# MEM[(unsigned char *)rgbbuf_21(D) + 354B]
	.loc 1 1069 0
	shrb	355(%edx)	# MEM[(unsigned char *)rgbbuf_21(D) + 355B]
	.loc 1 1070 0
	shrb	356(%edx)	# MEM[(unsigned char *)rgbbuf_21(D) + 356B]
	jmp	.L125	#
.LVL221:
	.p2align 4,,7
	.p2align 3
.L186:
	.loc 1 1068 0
	shrb	351(%edx)	# MEM[(unsigned char *)rgbbuf_21(D) + 351B]
	.loc 1 1069 0
	shrb	352(%edx)	# MEM[(unsigned char *)rgbbuf_21(D) + 352B]
	.loc 1 1070 0
	shrb	353(%edx)	# MEM[(unsigned char *)rgbbuf_21(D) + 353B]
	jmp	.L124	#
.LVL222:
	.p2align 4,,7
	.p2align 3
.L185:
	.loc 1 1068 0
	shrb	348(%edx)	# MEM[(unsigned char *)rgbbuf_21(D) + 348B]
	.loc 1 1069 0
	shrb	349(%edx)	# MEM[(unsigned char *)rgbbuf_21(D) + 349B]
	.loc 1 1070 0
	shrb	350(%edx)	# MEM[(unsigned char *)rgbbuf_21(D) + 350B]
	jmp	.L123	#
.LVL223:
	.p2align 4,,7
	.p2align 3
.L184:
	.loc 1 1068 0
	shrb	183(%edx)	# MEM[(unsigned char *)rgbbuf_21(D) + 183B]
	.loc 1 1069 0
	shrb	184(%edx)	# MEM[(unsigned char *)rgbbuf_21(D) + 184B]
	.loc 1 1070 0
	shrb	185(%edx)	# MEM[(unsigned char *)rgbbuf_21(D) + 185B]
	jmp	.L122	#
.LVL224:
	.p2align 4,,7
	.p2align 3
.L183:
	.loc 1 1068 0
	shrb	180(%edx)	# MEM[(unsigned char *)rgbbuf_21(D) + 180B]
	.loc 1 1069 0
	shrb	181(%edx)	# MEM[(unsigned char *)rgbbuf_21(D) + 181B]
	.loc 1 1070 0
	shrb	182(%edx)	# MEM[(unsigned char *)rgbbuf_21(D) + 182B]
	jmp	.L121	#
.LVL225:
	.p2align 4,,7
	.p2align 3
.L182:
	.loc 1 1068 0
	shrb	177(%edx)	# MEM[(unsigned char *)rgbbuf_21(D) + 177B]
	.loc 1 1069 0
	shrb	178(%edx)	# MEM[(unsigned char *)rgbbuf_21(D) + 178B]
	.loc 1 1070 0
	shrb	179(%edx)	# MEM[(unsigned char *)rgbbuf_21(D) + 179B]
	jmp	.L120	#
	.cfi_endproc
.LFE49:
	.size	draw_dtchr, .-draw_dtchr
	.p2align 4,,15
	.type	draw_largedigit, @function
draw_largedigit:
.LFB50:
	.loc 1 1082 0
	.cfi_startproc
.LVL226:
	pushl	%edi	#
.LCFI10:
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.loc 1 1086 0
	leal	-48(%eax), %ecx	#, D.10596
	.loc 1 1082 0
	pushl	%esi	#
.LCFI11:
	.cfi_def_cfa_offset 12
	.cfi_offset 6, -12
	.loc 1 1086 0
	cmpb	$9, %cl	#, D.10596
	.loc 1 1082 0
	pushl	%ebx	#
.LCFI12:
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	.loc 1 1086 0
	ja	.L205	#,
	.loc 1 1086 0 is_stmt 0 discriminator 1
	movl	%ecx, %eax	# D.10596, number
.LVL227:
.L206:
	.loc 1 1087 0 is_stmt 1
	movsbl	%al, %eax	# number, pretmp.308
	.loc 1 1082 0
	movl	$32, %edi	#, ivtmp.312
	leal	(%eax,%eax,2), %ecx	#, tmp384
	leal	bigdigits(%eax,%ecx,4), %eax	#, ivtmp.319
.LVL228:
	.p2align 4,,7
	.p2align 3
.L247:
	.loc 1 1090 0 discriminator 1
	movzbl	(%eax), %ecx	# MEM[base: D.11578_444, offset: 0B], tmp387
	.loc 1 1091 0 discriminator 1
	movzbl	(%edx), %esi	# MEM[base: D.11579_443, offset: 0B], MEM[base: D.11579_443, offset: 0B]
	.loc 1 1090 0 discriminator 1
	shrb	$2, %cl	#, tmp387
	movzbl	%cl, %ecx	# tmp387, v
.LVL229:
	.loc 1 1091 0 discriminator 1
	addl	%ecx, %esi	# v, t
.LVL230:
	cmpl	$255, %esi	#, t
	jle	.L208	#,
	movl	$255, %esi	#, t
.L208:
	movl	%esi, %ebx	#,
	.loc 1 1092 0 discriminator 1
	movzbl	1(%edx), %esi	# MEM[base: D.11579_443, offset: 1B], MEM[base: D.11579_443, offset: 1B]
.LVL231:
	.loc 1 1091 0 discriminator 1
	movb	%bl, (%edx)	#, MEM[base: D.11579_443, offset: 0B]
	.loc 1 1092 0 discriminator 1
	addl	%ecx, %esi	# v, t
.LVL232:
	cmpl	$255, %esi	#, t
	jle	.L209	#,
	movl	$255, %esi	#, t
.L209:
	movl	%esi, %ebx	#,
	.loc 1 1093 0 discriminator 1
	movzbl	2(%edx), %esi	# MEM[base: D.11579_443, offset: 2B], MEM[base: D.11579_443, offset: 2B]
.LVL233:
	.loc 1 1092 0 discriminator 1
	movb	%bl, 1(%edx)	#, MEM[base: D.11579_443, offset: 1B]
	.loc 1 1093 0 discriminator 1
	addl	%esi, %ecx	# MEM[base: D.11579_443, offset: 2B], t
.LVL234:
	cmpl	$255, %ecx	#, t
	jle	.L210	#,
	movl	$255, %ecx	#, t
.L210:
	movb	%cl, 2(%edx)	# t, MEM[base: D.11579_443, offset: 2B]
.LVL235:
	.loc 1 1090 0 discriminator 1
	movzbl	1(%eax), %ecx	# MEM[base: D.11578_444, offset: 1B], tmp395
	.loc 1 1091 0 discriminator 1
	movzbl	3(%edx), %esi	# MEM[base: D.11579_443, offset: 3B], MEM[base: D.11579_443, offset: 3B]
	.loc 1 1090 0 discriminator 1
	shrb	$2, %cl	#, tmp395
	movzbl	%cl, %ecx	# tmp395, v
.LVL236:
	.loc 1 1091 0 discriminator 1
	addl	%ecx, %esi	# v, t
.LVL237:
	cmpl	$255, %esi	#, t
	jle	.L211	#,
	movl	$255, %esi	#, t
.L211:
	movl	%esi, %ebx	#,
	.loc 1 1092 0 discriminator 1
	movzbl	4(%edx), %esi	# MEM[base: D.11579_443, offset: 4B], MEM[base: D.11579_443, offset: 4B]
.LVL238:
	.loc 1 1091 0 discriminator 1
	movb	%bl, 3(%edx)	#, MEM[base: D.11579_443, offset: 3B]
	.loc 1 1092 0 discriminator 1
	addl	%ecx, %esi	# v, t
.LVL239:
	cmpl	$255, %esi	#, t
	jle	.L212	#,
	movl	$255, %esi	#, t
.L212:
	movl	%esi, %ebx	#,
	.loc 1 1093 0 discriminator 1
	movzbl	5(%edx), %esi	# MEM[base: D.11579_443, offset: 5B], MEM[base: D.11579_443, offset: 5B]
.LVL240:
	.loc 1 1092 0 discriminator 1
	movb	%bl, 4(%edx)	#, MEM[base: D.11579_443, offset: 4B]
	.loc 1 1093 0 discriminator 1
	addl	%esi, %ecx	# MEM[base: D.11579_443, offset: 5B], t
.LVL241:
	cmpl	$255, %ecx	#, t
	jle	.L213	#,
	movl	$255, %ecx	#, t
.L213:
	movb	%cl, 5(%edx)	# t, MEM[base: D.11579_443, offset: 5B]
.LVL242:
	.loc 1 1090 0 discriminator 1
	movzbl	2(%eax), %ecx	# MEM[base: D.11578_444, offset: 2B], tmp403
	.loc 1 1091 0 discriminator 1
	movzbl	6(%edx), %esi	# MEM[base: D.11579_443, offset: 6B], MEM[base: D.11579_443, offset: 6B]
	.loc 1 1090 0 discriminator 1
	shrb	$2, %cl	#, tmp403
	movzbl	%cl, %ecx	# tmp403, v
.LVL243:
	.loc 1 1091 0 discriminator 1
	addl	%ecx, %esi	# v, t
.LVL244:
	cmpl	$255, %esi	#, t
	jle	.L214	#,
	movl	$255, %esi	#, t
.L214:
	movl	%esi, %ebx	#,
	.loc 1 1092 0 discriminator 1
	movzbl	7(%edx), %esi	# MEM[base: D.11579_443, offset: 7B], MEM[base: D.11579_443, offset: 7B]
.LVL245:
	.loc 1 1091 0 discriminator 1
	movb	%bl, 6(%edx)	#, MEM[base: D.11579_443, offset: 6B]
	.loc 1 1092 0 discriminator 1
	addl	%ecx, %esi	# v, t
.LVL246:
	cmpl	$255, %esi	#, t
	jle	.L215	#,
	movl	$255, %esi	#, t
.L215:
	movl	%esi, %ebx	#,
	.loc 1 1093 0 discriminator 1
	movzbl	8(%edx), %esi	# MEM[base: D.11579_443, offset: 8B], MEM[base: D.11579_443, offset: 8B]
.LVL247:
	.loc 1 1092 0 discriminator 1
	movb	%bl, 7(%edx)	#, MEM[base: D.11579_443, offset: 7B]
	.loc 1 1093 0 discriminator 1
	addl	%esi, %ecx	# MEM[base: D.11579_443, offset: 8B], t
.LVL248:
	cmpl	$255, %ecx	#, t
	jle	.L216	#,
	movl	$255, %ecx	#, t
.L216:
	movb	%cl, 8(%edx)	# t, MEM[base: D.11579_443, offset: 8B]
.LVL249:
	.loc 1 1090 0 discriminator 1
	movzbl	3(%eax), %ecx	# MEM[base: D.11578_444, offset: 3B], tmp411
	.loc 1 1091 0 discriminator 1
	movzbl	9(%edx), %esi	# MEM[base: D.11579_443, offset: 9B], MEM[base: D.11579_443, offset: 9B]
	.loc 1 1090 0 discriminator 1
	shrb	$2, %cl	#, tmp411
	movzbl	%cl, %ecx	# tmp411, v
.LVL250:
	.loc 1 1091 0 discriminator 1
	addl	%ecx, %esi	# v, t
.LVL251:
	cmpl	$255, %esi	#, t
	jle	.L217	#,
	movl	$255, %esi	#, t
.L217:
	movl	%esi, %ebx	#,
	.loc 1 1092 0 discriminator 1
	movzbl	10(%edx), %esi	# MEM[base: D.11579_443, offset: 10B], MEM[base: D.11579_443, offset: 10B]
.LVL252:
	.loc 1 1091 0 discriminator 1
	movb	%bl, 9(%edx)	#, MEM[base: D.11579_443, offset: 9B]
	.loc 1 1092 0 discriminator 1
	addl	%ecx, %esi	# v, t
.LVL253:
	cmpl	$255, %esi	#, t
	jle	.L218	#,
	movl	$255, %esi	#, t
.L218:
	movl	%esi, %ebx	#,
	.loc 1 1093 0 discriminator 1
	movzbl	11(%edx), %esi	# MEM[base: D.11579_443, offset: 11B], MEM[base: D.11579_443, offset: 11B]
.LVL254:
	.loc 1 1092 0 discriminator 1
	movb	%bl, 10(%edx)	#, MEM[base: D.11579_443, offset: 10B]
	.loc 1 1093 0 discriminator 1
	addl	%esi, %ecx	# MEM[base: D.11579_443, offset: 11B], t
.LVL255:
	cmpl	$255, %ecx	#, t
	jle	.L219	#,
	movl	$255, %ecx	#, t
.L219:
	movb	%cl, 11(%edx)	# t, MEM[base: D.11579_443, offset: 11B]
.LVL256:
	.loc 1 1090 0 discriminator 1
	movzbl	4(%eax), %ecx	# MEM[base: D.11578_444, offset: 4B], tmp419
	.loc 1 1091 0 discriminator 1
	movzbl	12(%edx), %esi	# MEM[base: D.11579_443, offset: 12B], MEM[base: D.11579_443, offset: 12B]
	.loc 1 1090 0 discriminator 1
	shrb	$2, %cl	#, tmp419
	movzbl	%cl, %ecx	# tmp419, v
.LVL257:
	.loc 1 1091 0 discriminator 1
	addl	%ecx, %esi	# v, t
.LVL258:
	cmpl	$255, %esi	#, t
	jle	.L220	#,
	movl	$255, %esi	#, t
.L220:
	movl	%esi, %ebx	#,
	.loc 1 1092 0 discriminator 1
	movzbl	13(%edx), %esi	# MEM[base: D.11579_443, offset: 13B], MEM[base: D.11579_443, offset: 13B]
.LVL259:
	.loc 1 1091 0 discriminator 1
	movb	%bl, 12(%edx)	#, MEM[base: D.11579_443, offset: 12B]
	.loc 1 1092 0 discriminator 1
	addl	%ecx, %esi	# v, t
.LVL260:
	cmpl	$255, %esi	#, t
	jle	.L221	#,
	movl	$255, %esi	#, t
.L221:
	movl	%esi, %ebx	#,
	.loc 1 1093 0 discriminator 1
	movzbl	14(%edx), %esi	# MEM[base: D.11579_443, offset: 14B], MEM[base: D.11579_443, offset: 14B]
.LVL261:
	.loc 1 1092 0 discriminator 1
	movb	%bl, 13(%edx)	#, MEM[base: D.11579_443, offset: 13B]
	.loc 1 1093 0 discriminator 1
	addl	%esi, %ecx	# MEM[base: D.11579_443, offset: 14B], t
.LVL262:
	cmpl	$255, %ecx	#, t
	jle	.L222	#,
	movl	$255, %ecx	#, t
.L222:
	movb	%cl, 14(%edx)	# t, MEM[base: D.11579_443, offset: 14B]
.LVL263:
	.loc 1 1090 0 discriminator 1
	movzbl	5(%eax), %ecx	# MEM[base: D.11578_444, offset: 5B], tmp427
	.loc 1 1091 0 discriminator 1
	movzbl	15(%edx), %esi	# MEM[base: D.11579_443, offset: 15B], MEM[base: D.11579_443, offset: 15B]
	.loc 1 1090 0 discriminator 1
	shrb	$2, %cl	#, tmp427
	movzbl	%cl, %ecx	# tmp427, v
.LVL264:
	.loc 1 1091 0 discriminator 1
	addl	%ecx, %esi	# v, t
.LVL265:
	cmpl	$255, %esi	#, t
	jle	.L223	#,
	movl	$255, %esi	#, t
.L223:
	movl	%esi, %ebx	#,
	.loc 1 1092 0 discriminator 1
	movzbl	16(%edx), %esi	# MEM[base: D.11579_443, offset: 16B], MEM[base: D.11579_443, offset: 16B]
.LVL266:
	.loc 1 1091 0 discriminator 1
	movb	%bl, 15(%edx)	#, MEM[base: D.11579_443, offset: 15B]
	.loc 1 1092 0 discriminator 1
	addl	%ecx, %esi	# v, t
.LVL267:
	cmpl	$255, %esi	#, t
	jle	.L224	#,
	movl	$255, %esi	#, t
.L224:
	movl	%esi, %ebx	#,
	.loc 1 1093 0 discriminator 1
	movzbl	17(%edx), %esi	# MEM[base: D.11579_443, offset: 17B], MEM[base: D.11579_443, offset: 17B]
.LVL268:
	.loc 1 1092 0 discriminator 1
	movb	%bl, 16(%edx)	#, MEM[base: D.11579_443, offset: 16B]
	.loc 1 1093 0 discriminator 1
	addl	%esi, %ecx	# MEM[base: D.11579_443, offset: 17B], t
.LVL269:
	cmpl	$255, %ecx	#, t
	jle	.L225	#,
	movl	$255, %ecx	#, t
.L225:
	movb	%cl, 17(%edx)	# t, MEM[base: D.11579_443, offset: 17B]
.LVL270:
	.loc 1 1090 0 discriminator 1
	movzbl	6(%eax), %ecx	# MEM[base: D.11578_444, offset: 6B], tmp435
	.loc 1 1091 0 discriminator 1
	movzbl	18(%edx), %esi	# MEM[base: D.11579_443, offset: 18B], MEM[base: D.11579_443, offset: 18B]
	.loc 1 1090 0 discriminator 1
	shrb	$2, %cl	#, tmp435
	movzbl	%cl, %ecx	# tmp435, v
.LVL271:
	.loc 1 1091 0 discriminator 1
	addl	%ecx, %esi	# v, t
.LVL272:
	cmpl	$255, %esi	#, t
	jle	.L226	#,
	movl	$255, %esi	#, t
.L226:
	movl	%esi, %ebx	#,
	.loc 1 1092 0 discriminator 1
	movzbl	19(%edx), %esi	# MEM[base: D.11579_443, offset: 19B], MEM[base: D.11579_443, offset: 19B]
.LVL273:
	.loc 1 1091 0 discriminator 1
	movb	%bl, 18(%edx)	#, MEM[base: D.11579_443, offset: 18B]
	.loc 1 1092 0 discriminator 1
	addl	%ecx, %esi	# v, t
.LVL274:
	cmpl	$255, %esi	#, t
	jle	.L227	#,
	movl	$255, %esi	#, t
.L227:
	movl	%esi, %ebx	#,
	.loc 1 1093 0 discriminator 1
	movzbl	20(%edx), %esi	# MEM[base: D.11579_443, offset: 20B], MEM[base: D.11579_443, offset: 20B]
.LVL275:
	.loc 1 1092 0 discriminator 1
	movb	%bl, 19(%edx)	#, MEM[base: D.11579_443, offset: 19B]
	.loc 1 1093 0 discriminator 1
	addl	%esi, %ecx	# MEM[base: D.11579_443, offset: 20B], t
.LVL276:
	cmpl	$255, %ecx	#, t
	jle	.L228	#,
	movl	$255, %ecx	#, t
.L228:
	movb	%cl, 20(%edx)	# t, MEM[base: D.11579_443, offset: 20B]
.LVL277:
	.loc 1 1090 0 discriminator 1
	movzbl	7(%eax), %ecx	# MEM[base: D.11578_444, offset: 7B], tmp443
	.loc 1 1091 0 discriminator 1
	movzbl	21(%edx), %esi	# MEM[base: D.11579_443, offset: 21B], MEM[base: D.11579_443, offset: 21B]
	.loc 1 1090 0 discriminator 1
	shrb	$2, %cl	#, tmp443
	movzbl	%cl, %ecx	# tmp443, v
.LVL278:
	.loc 1 1091 0 discriminator 1
	addl	%ecx, %esi	# v, t
.LVL279:
	cmpl	$255, %esi	#, t
	jle	.L229	#,
	movl	$255, %esi	#, t
.L229:
	movl	%esi, %ebx	#,
	.loc 1 1092 0 discriminator 1
	movzbl	22(%edx), %esi	# MEM[base: D.11579_443, offset: 22B], MEM[base: D.11579_443, offset: 22B]
.LVL280:
	.loc 1 1091 0 discriminator 1
	movb	%bl, 21(%edx)	#, MEM[base: D.11579_443, offset: 21B]
	.loc 1 1092 0 discriminator 1
	addl	%ecx, %esi	# v, t
.LVL281:
	cmpl	$255, %esi	#, t
	jle	.L230	#,
	movl	$255, %esi	#, t
.L230:
	movl	%esi, %ebx	#,
	.loc 1 1093 0 discriminator 1
	movzbl	23(%edx), %esi	# MEM[base: D.11579_443, offset: 23B], MEM[base: D.11579_443, offset: 23B]
.LVL282:
	.loc 1 1092 0 discriminator 1
	movb	%bl, 22(%edx)	#, MEM[base: D.11579_443, offset: 22B]
	.loc 1 1093 0 discriminator 1
	addl	%esi, %ecx	# MEM[base: D.11579_443, offset: 23B], t
.LVL283:
	cmpl	$255, %ecx	#, t
	jle	.L231	#,
	movl	$255, %ecx	#, t
.L231:
	movb	%cl, 23(%edx)	# t, MEM[base: D.11579_443, offset: 23B]
.LVL284:
	.loc 1 1090 0 discriminator 1
	movzbl	8(%eax), %ecx	# MEM[base: D.11578_444, offset: 8B], tmp451
	.loc 1 1091 0 discriminator 1
	movzbl	24(%edx), %esi	# MEM[base: D.11579_443, offset: 24B], MEM[base: D.11579_443, offset: 24B]
	.loc 1 1090 0 discriminator 1
	shrb	$2, %cl	#, tmp451
	movzbl	%cl, %ecx	# tmp451, v
.LVL285:
	.loc 1 1091 0 discriminator 1
	addl	%ecx, %esi	# v, t
.LVL286:
	cmpl	$255, %esi	#, t
	jle	.L232	#,
	movl	$255, %esi	#, t
.L232:
	movl	%esi, %ebx	#,
	.loc 1 1092 0 discriminator 1
	movzbl	25(%edx), %esi	# MEM[base: D.11579_443, offset: 25B], MEM[base: D.11579_443, offset: 25B]
.LVL287:
	.loc 1 1091 0 discriminator 1
	movb	%bl, 24(%edx)	#, MEM[base: D.11579_443, offset: 24B]
	.loc 1 1092 0 discriminator 1
	addl	%ecx, %esi	# v, t
.LVL288:
	cmpl	$255, %esi	#, t
	jle	.L233	#,
	movl	$255, %esi	#, t
.L233:
	movl	%esi, %ebx	#,
	.loc 1 1093 0 discriminator 1
	movzbl	26(%edx), %esi	# MEM[base: D.11579_443, offset: 26B], MEM[base: D.11579_443, offset: 26B]
.LVL289:
	.loc 1 1092 0 discriminator 1
	movb	%bl, 25(%edx)	#, MEM[base: D.11579_443, offset: 25B]
	.loc 1 1093 0 discriminator 1
	addl	%esi, %ecx	# MEM[base: D.11579_443, offset: 26B], t
.LVL290:
	cmpl	$255, %ecx	#, t
	jle	.L234	#,
	movl	$255, %ecx	#, t
.L234:
	movb	%cl, 26(%edx)	# t, MEM[base: D.11579_443, offset: 26B]
.LVL291:
	.loc 1 1090 0 discriminator 1
	movzbl	9(%eax), %ecx	# MEM[base: D.11578_444, offset: 9B], tmp459
	.loc 1 1091 0 discriminator 1
	movzbl	27(%edx), %esi	# MEM[base: D.11579_443, offset: 27B], MEM[base: D.11579_443, offset: 27B]
	.loc 1 1090 0 discriminator 1
	shrb	$2, %cl	#, tmp459
	movzbl	%cl, %ecx	# tmp459, v
.LVL292:
	.loc 1 1091 0 discriminator 1
	addl	%ecx, %esi	# v, t
.LVL293:
	cmpl	$255, %esi	#, t
	jle	.L235	#,
	movl	$255, %esi	#, t
.L235:
	movl	%esi, %ebx	#,
	.loc 1 1092 0 discriminator 1
	movzbl	28(%edx), %esi	# MEM[base: D.11579_443, offset: 28B], MEM[base: D.11579_443, offset: 28B]
.LVL294:
	.loc 1 1091 0 discriminator 1
	movb	%bl, 27(%edx)	#, MEM[base: D.11579_443, offset: 27B]
	.loc 1 1092 0 discriminator 1
	addl	%ecx, %esi	# v, t
.LVL295:
	cmpl	$255, %esi	#, t
	jle	.L236	#,
	movl	$255, %esi	#, t
.L236:
	movl	%esi, %ebx	#,
	.loc 1 1093 0 discriminator 1
	movzbl	29(%edx), %esi	# MEM[base: D.11579_443, offset: 29B], MEM[base: D.11579_443, offset: 29B]
.LVL296:
	.loc 1 1092 0 discriminator 1
	movb	%bl, 28(%edx)	#, MEM[base: D.11579_443, offset: 28B]
	.loc 1 1093 0 discriminator 1
	addl	%esi, %ecx	# MEM[base: D.11579_443, offset: 29B], t
.LVL297:
	cmpl	$255, %ecx	#, t
	jle	.L237	#,
	movl	$255, %ecx	#, t
.L237:
	movb	%cl, 29(%edx)	# t, MEM[base: D.11579_443, offset: 29B]
.LVL298:
	.loc 1 1090 0 discriminator 1
	movzbl	10(%eax), %ecx	# MEM[base: D.11578_444, offset: 10B], tmp467
	.loc 1 1091 0 discriminator 1
	movzbl	30(%edx), %esi	# MEM[base: D.11579_443, offset: 30B], MEM[base: D.11579_443, offset: 30B]
	.loc 1 1090 0 discriminator 1
	shrb	$2, %cl	#, tmp467
	movzbl	%cl, %ecx	# tmp467, v
.LVL299:
	.loc 1 1091 0 discriminator 1
	addl	%ecx, %esi	# v, t
.LVL300:
	cmpl	$255, %esi	#, t
	jle	.L238	#,
	movl	$255, %esi	#, t
.L238:
	movl	%esi, %ebx	#,
	.loc 1 1092 0 discriminator 1
	movzbl	31(%edx), %esi	# MEM[base: D.11579_443, offset: 31B], MEM[base: D.11579_443, offset: 31B]
.LVL301:
	.loc 1 1091 0 discriminator 1
	movb	%bl, 30(%edx)	#, MEM[base: D.11579_443, offset: 30B]
	.loc 1 1092 0 discriminator 1
	addl	%ecx, %esi	# v, t
.LVL302:
	cmpl	$255, %esi	#, t
	jle	.L239	#,
	movl	$255, %esi	#, t
.L239:
	movl	%esi, %ebx	#,
	.loc 1 1093 0 discriminator 1
	movzbl	32(%edx), %esi	# MEM[base: D.11579_443, offset: 32B], MEM[base: D.11579_443, offset: 32B]
.LVL303:
	.loc 1 1092 0 discriminator 1
	movb	%bl, 31(%edx)	#, MEM[base: D.11579_443, offset: 31B]
	.loc 1 1093 0 discriminator 1
	addl	%esi, %ecx	# MEM[base: D.11579_443, offset: 32B], t
.LVL304:
	cmpl	$255, %ecx	#, t
	jle	.L240	#,
	movl	$255, %ecx	#, t
.L240:
	movb	%cl, 32(%edx)	# t, MEM[base: D.11579_443, offset: 32B]
.LVL305:
	.loc 1 1090 0 discriminator 1
	movzbl	11(%eax), %ecx	# MEM[base: D.11578_444, offset: 11B], tmp475
	.loc 1 1091 0 discriminator 1
	movzbl	33(%edx), %esi	# MEM[base: D.11579_443, offset: 33B], MEM[base: D.11579_443, offset: 33B]
	.loc 1 1090 0 discriminator 1
	shrb	$2, %cl	#, tmp475
	movzbl	%cl, %ecx	# tmp475, v
.LVL306:
	.loc 1 1091 0 discriminator 1
	addl	%ecx, %esi	# v, t
.LVL307:
	cmpl	$255, %esi	#, t
	jle	.L241	#,
	movl	$255, %esi	#, t
.L241:
	movl	%esi, %ebx	#,
	.loc 1 1092 0 discriminator 1
	movzbl	34(%edx), %esi	# MEM[base: D.11579_443, offset: 34B], MEM[base: D.11579_443, offset: 34B]
.LVL308:
	.loc 1 1091 0 discriminator 1
	movb	%bl, 33(%edx)	#, MEM[base: D.11579_443, offset: 33B]
	.loc 1 1092 0 discriminator 1
	addl	%ecx, %esi	# v, t
.LVL309:
	cmpl	$255, %esi	#, t
	jle	.L242	#,
	movl	$255, %esi	#, t
.L242:
	movl	%esi, %ebx	#,
	.loc 1 1093 0 discriminator 1
	movzbl	35(%edx), %esi	# MEM[base: D.11579_443, offset: 35B], MEM[base: D.11579_443, offset: 35B]
.LVL310:
	.loc 1 1092 0 discriminator 1
	movb	%bl, 34(%edx)	#, MEM[base: D.11579_443, offset: 34B]
	.loc 1 1093 0 discriminator 1
	addl	%esi, %ecx	# MEM[base: D.11579_443, offset: 35B], t
.LVL311:
	cmpl	$255, %ecx	#, t
	jle	.L243	#,
	movl	$255, %ecx	#, t
.L243:
	movb	%cl, 35(%edx)	# t, MEM[base: D.11579_443, offset: 35B]
.LVL312:
	.loc 1 1090 0 discriminator 1
	movzbl	12(%eax), %ecx	# MEM[base: D.11578_444, offset: 12B], tmp483
	.loc 1 1091 0 discriminator 1
	movzbl	36(%edx), %esi	# MEM[base: D.11579_443, offset: 36B], MEM[base: D.11579_443, offset: 36B]
	.loc 1 1090 0 discriminator 1
	shrb	$2, %cl	#, tmp483
	movzbl	%cl, %ecx	# tmp483, v
.LVL313:
	.loc 1 1091 0 discriminator 1
	addl	%ecx, %esi	# v, t
.LVL314:
	cmpl	$255, %esi	#, t
	jle	.L244	#,
	movl	$255, %esi	#, t
.L244:
	movl	%esi, %ebx	#,
	.loc 1 1092 0 discriminator 1
	movzbl	37(%edx), %esi	# MEM[base: D.11579_443, offset: 37B], MEM[base: D.11579_443, offset: 37B]
.LVL315:
	.loc 1 1091 0 discriminator 1
	movb	%bl, 36(%edx)	#, MEM[base: D.11579_443, offset: 36B]
	.loc 1 1092 0 discriminator 1
	addl	%ecx, %esi	# v, t
.LVL316:
	cmpl	$255, %esi	#, t
	jle	.L245	#,
	movl	$255, %esi	#, t
.L245:
	movl	%esi, %ebx	#,
	.loc 1 1093 0 discriminator 1
	movzbl	38(%edx), %esi	# MEM[base: D.11579_443, offset: 38B], MEM[base: D.11579_443, offset: 38B]
.LVL317:
	.loc 1 1092 0 discriminator 1
	movb	%bl, 37(%edx)	#, MEM[base: D.11579_443, offset: 37B]
	.loc 1 1093 0 discriminator 1
	addl	%esi, %ecx	# MEM[base: D.11579_443, offset: 38B], t
.LVL318:
	cmpl	$255, %ecx	#, t
	jle	.L246	#,
	movl	$255, %ecx	#, t
.L246:
	movb	%cl, 38(%edx)	# t, MEM[base: D.11579_443, offset: 38B]
.LVL319:
	addl	$130, %eax	#, ivtmp.319
	addl	$174, %edx	#, ivtmp.321
	.loc 1 1088 0 discriminator 1
	subl	$1, %edi	#, ivtmp.312
	jne	.L247	#,
	.loc 1 1096 0
	popl	%ebx	#
	.cfi_remember_state
.LCFI13:
	.cfi_def_cfa_offset 12
	.cfi_restore 3
	popl	%esi	#
.LCFI14:
	.cfi_def_cfa_offset 8
	.cfi_restore 6
	popl	%edi	#
.LCFI15:
	.cfi_def_cfa_offset 4
	.cfi_restore 7
	ret
.LVL320:
	.p2align 4,,7
	.p2align 3
.L205:
.LCFI16:
	.cfi_restore_state
	.loc 1 1087 0
	cmpb	$9, %al	#, number
	jbe	.L206	#,
	.loc 1 1096 0
	popl	%ebx	#
	.cfi_restore 3
.LCFI17:
	.cfi_def_cfa_offset 12
	popl	%esi	#
	.cfi_restore 6
.LCFI18:
	.cfi_def_cfa_offset 8
	popl	%edi	#
	.cfi_restore 7
.LCFI19:
	.cfi_def_cfa_offset 4
	.p2align 4,,4
	ret
	.cfi_endproc
.LFE50:
	.size	draw_largedigit, .-draw_largedigit
	.p2align 4,,15
	.type	duck_set, @function
duck_set:
.LFB53:
	.loc 1 1261 0
	.cfi_startproc
.LVL321:
	pushl	%ebp	#
.LCFI20:
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi	#
.LCFI21:
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi	#
.LCFI22:
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx	#
.LCFI23:
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	subl	$64, %esp	#,
.LCFI24:
	.cfi_def_cfa_offset 84
	.loc 1 1273 0
	testl	%edx, %edx	# y
	.loc 1 1261 0
	movl	%eax, 40(%esp)	# x, %sfp
	movl	%edx, 36(%esp)	# y, %sfp
	movl	%ecx, 48(%esp)	# nr, %sfp
	.loc 1 1273 0
	js	.L273	#,
.LVL322:
	.loc 1 1272 0
	xorl	%eax, %eax	# ds
.LVL323:
	.loc 1 1276 0
	cmpl	$41, 36(%esp)	#, %sfp
	.loc 1 1275 0
	movl	$17, 32(%esp)	#, %sfp
	.loc 1 1276 0
	jle	.L252	#,
	.loc 1 1277 0
	movl	36(%esp), %edx	# %sfp,
	movl	$58, 32(%esp)	#, %sfp
	subl	%edx, 32(%esp)	#, %sfp
.LVL324:
.L252:
	.loc 1 1279 0
	cmpl	$40, 40(%esp)	#, %sfp
	jle	.L253	#,
	.loc 1 1280 0
	movl	40(%esp), %ecx	# %sfp,
.LVL325:
	movl	$58, 4(%esp)	#, %sfp
	subl	%ecx, 4(%esp)	#, %sfp
.LVL326:
	.loc 1 1281 0
	movl	$0, 24(%esp)	#, %sfp
.LVL327:
.L254:
	.loc 1 1284 0
	cmpl	%eax, 32(%esp)	# ds, %sfp
	jle	.L250	#,
.LBB33:
.LBB34:
	.loc 1 1301 0
	movl	bm+31348, %edx	# bm.waterlevels,
	.loc 1 1260 0
	movl	$16, 28(%esp)	#, %sfp
.LBE34:
	.loc 1 1287 0
	movl	upside_down_duck_enabled, %esi	# upside_down_duck_enabled,
.LBB35:
	.loc 1 1260 0
	subl	%eax, 28(%esp)	# ds, %sfp
	.loc 1 1301 0
	movl	%edx, 44(%esp)	#, %sfp
	.loc 1 1260 0
	movl	36(%esp), %edx	# %sfp, tmp226
.LBE35:
.LBE33:
	movl	%eax, 16(%esp)	# ds, %sfp
.LBB49:
	movl	44(%esp), %ecx	# %sfp,
	.loc 1 1287 0
	movl	%esi, 52(%esp)	#, %sfp
.LBB36:
	.loc 1 1260 0
	addl	%eax, %edx	# ds, tmp226
.LBE36:
	movl	24(%esp), %eax	# %sfp, tmp336
.LVL328:
	addl	40(%esp), %eax	# %sfp, tmp336
.LBB37:
	imull	$58, %edx, %edx	#, tmp226, tmp227
	addl	24(%esp), %edx	# %sfp, tmp228
.LBE37:
	leal	(%ecx,%eax,4), %eax	#,
.LBB38:
	addl	40(%esp), %edx	# %sfp, tmp229
.LBE38:
	movl	%eax, 56(%esp)	#, %sfp
	imull	$-306, 48(%esp), %eax	#, %sfp, tmp339
	addl	24(%esp), %eax	# %sfp, tmp339
.LBB39:
	.loc 1 1301 0
	leal	(%edx,%edx,2), %edx	#,
	movl	%edx, 20(%esp)	#, %sfp
.LBE39:
	.loc 1 1260 0
	movl	%eax, 60(%esp)	# tmp339, %sfp
	.p2align 4,,7
	.p2align 3
.L265:
	.loc 1 1287 0
	movl	88(%esp), %edx	# upsidedown,
.LBB40:
	.loc 1 1260 0
	movl	16(%esp), %ebx	# %sfp,
	addl	36(%esp), %ebx	# %sfp,
.LBE40:
	.loc 1 1287 0
	movl	16(%esp), %eax	# %sfp, rh
	testl	%edx, %edx	#
.LBB41:
	.loc 1 1260 0
	movl	%ebx, 8(%esp)	#, %sfp
.LVL329:
.LBE41:
	.loc 1 1287 0
	je	.L256	#,
	.loc 1 1287 0 is_stmt 0 discriminator 1
	movl	52(%esp), %ebp	# %sfp,
	testl	%ebp, %ebp	#
	je	.L256	#,
	movl	28(%esp), %eax	# %sfp, rh
.L256:
.LVL330:
	.loc 1 1288 0 is_stmt 1 discriminator 3
	movl	4(%esp), %esi	# %sfp,
	cmpl	%esi, 24(%esp)	#, %sfp
	jge	.L257	#,
	.loc 1 1288 0 is_stmt 0
	movl	84(%esp), %edi	# rev,
	leal	(%eax,%eax,8), %esi	#, tmp235
	addl	%esi, %esi	# tmp236
	testl	%edi, %edi	#
	jne	.L258	#,
	.loc 1 1260 0 is_stmt 1
	imull	$306, 48(%esp), %ecx	#, %sfp, tmp327
	movl	20(%esp), %edx	# %sfp, ivtmp.388
	movl	24(%esp), %eax	# %sfp, w
.LVL331:
	addl	%esi, %ecx	# tmp236, tmp328
.LBB42:
	movl	44(%esp), %esi	# %sfp,
.LBE42:
	leal	0(,%ecx,4), %ebx	#, tmp329
.LVL332:
.LBB43:
	movl	40(%esp), %ecx	# %sfp,
.LBE43:
	addl	$bm+8, %edx	#, ivtmp.388
.LBB44:
	leal	(%esi,%ecx,4), %ecx	#,
	movl	%ecx, (%esp)	#, %sfp
	jmp	.L261	#
.LVL333:
	.p2align 4,,7
	.p2align 3
.L274:
	.loc 1 1306 0
	movzbl	(%edx), %ecx	# MEM[base: D.11701_185, offset: 0B], MEM[base: D.11701_185, offset: 0B]
	.loc 1 1307 0
	andl	$255, %ebp	#, r
.LVL334:
	.loc 1 1310 0
	andl	$255, %edi	#, g
.LVL335:
	.loc 1 1307 0
	imull	$156, %ebp, %ebp	#, r, tmp266
	.loc 1 1313 0
	movzbl	15(%esp), %esi	# %sfp, b
	.loc 1 1310 0
	imull	$156, %edi, %edi	#, g, tmp272
	.loc 1 1306 0
	imull	$100, %ecx, %ecx	#, MEM[base: D.11701_185, offset: 0B], tmp264
	.loc 1 1313 0
	imull	$156, %esi, %esi	#, b, tmp278
	.loc 1 1307 0
	addl	%ebp, %ecx	# tmp266, tmp268
	sarl	$8, %ecx	#, tmp268
	.loc 1 1306 0
	movb	%cl, (%edx)	# tmp268, MEM[base: D.11701_185, offset: 0B]
	.loc 1 1309 0
	movzbl	1(%edx), %ecx	# MEM[base: D.11701_185, offset: 1B], MEM[base: D.11701_185, offset: 1B]
	imull	$100, %ecx, %ecx	#, MEM[base: D.11701_185, offset: 1B], tmp270
	.loc 1 1310 0
	addl	%edi, %ecx	# tmp272, tmp274
	sarl	$8, %ecx	#, tmp274
	.loc 1 1308 0
	movb	%cl, 1(%edx)	# tmp274, MEM[base: D.11701_185, offset: 1B]
	.loc 1 1312 0
	movzbl	2(%edx), %ecx	# MEM[base: D.11701_185, offset: 2B], MEM[base: D.11701_185, offset: 2B]
	imull	$100, %ecx, %ecx	#, MEM[base: D.11701_185, offset: 2B], tmp276
	.loc 1 1313 0
	addl	%esi, %ecx	# tmp278, tmp280
	sarl	$8, %ecx	#, tmp280
	.loc 1 1311 0
	movb	%cl, 2(%edx)	# tmp280,
.LVL336:
.L259:
.LBE44:
	.loc 1 1288 0
	addl	$1, %eax	#, w
.LVL337:
	addl	$3, %edx	#, ivtmp.388
	cmpl	4(%esp), %eax	# %sfp, w
	je	.L257	#,
.LVL338:
.L261:
	.loc 1 1290 0
	movl	duck_data(%ebx,%eax,4), %ecx	# MEM[symbol: duck_data, base: D.11699_183, index: D.11700_184, step: 4, offset: 0B], cmap
.LVL339:
	testl	%ecx, %ecx	# cmap
	je	.L259	#,
.LBB45:
	.loc 1 1294 0
	leal	(%ecx,%ecx,2), %esi	#, tmp245
	.loc 1 1296 0
	movzbl	duck_cmap+2(%esi), %ecx	# duck_cmap,
	.loc 1 1294 0
	movzbl	duck_cmap(%esi), %ebp	# duck_cmap, r
.LVL340:
	.loc 1 1295 0
	movzbl	duck_cmap+1(%esi), %edi	# duck_cmap, g
.LVL341:
	.loc 1 1301 0
	movl	(%esp), %esi	# %sfp,
.LVL342:
	.loc 1 1296 0
	movb	%cl, 15(%esp)	#, %sfp
.LVL343:
	.loc 1 1301 0
	movl	(%esi,%eax,4), %ecx	# MEM[base: D.11712_196, index: D.11700_184, step: 4, offset: 0B], tmp261
.LVL344:
	sarl	$12, %ecx	#, tmp261
	cmpl	8(%esp), %ecx	# %sfp, tmp261
	jle	.L274	#,
	.loc 1 1302 0
	movl	%ebp, %ecx	# r,
.LBE45:
	.loc 1 1288 0
	addl	$1, %eax	#, w
.LVL345:
.LBB46:
	.loc 1 1302 0
	movb	%cl, (%edx)	#, MEM[base: D.11707_191, offset: 0B]
	.loc 1 1303 0
	movl	%edi, %ecx	# g,
	movb	%cl, 1(%edx)	#, MEM[base: D.11707_191, offset: 1B]
.LVL346:
	.loc 1 1304 0
	movzbl	15(%esp), %ecx	# %sfp,
	movb	%cl, 2(%edx)	#,
.LBE46:
	.loc 1 1288 0
	addl	$3, %edx	#, ivtmp.388
	cmpl	4(%esp), %eax	# %sfp, w
	jne	.L261	#,
.LVL347:
	.p2align 4,,7
	.p2align 3
.L257:
.LBE49:
	.loc 1 1284 0
	addl	$1, 16(%esp)	#, %sfp
	movl	32(%esp), %esi	# %sfp,
	subl	$1, 28(%esp)	#, %sfp
	addl	$174, 20(%esp)	#, %sfp
	cmpl	%esi, 16(%esp)	#, %sfp
	jne	.L265	#,
.LVL348:
.L250:
	.loc 1 1322 0
	addl	$64, %esp	#,
	.cfi_remember_state
.LCFI25:
	.cfi_def_cfa_offset 20
	popl	%ebx	#
.LCFI26:
	.cfi_def_cfa_offset 16
	.cfi_restore 3
	popl	%esi	#
.LCFI27:
	.cfi_def_cfa_offset 12
	.cfi_restore 6
	popl	%edi	#
.LCFI28:
	.cfi_def_cfa_offset 8
	.cfi_restore 7
	popl	%ebp	#
.LCFI29:
	.cfi_def_cfa_offset 4
	.cfi_restore 5
	ret
.LVL349:
	.p2align 4,,7
	.p2align 3
.L258:
.LCFI30:
	.cfi_restore_state
.LBB50:
	.loc 1 1260 0
	movl	24(%esp), %edx	# %sfp, tmp284
	movl	20(%esp), %eax	# %sfp, ivtmp.399
.LVL350:
	subl	4(%esp), %edx	# %sfp, tmp284
	subl	60(%esp), %esi	# %sfp, tmp334
	movl	56(%esp), %ecx	# %sfp, ivtmp.403
	sall	$2, %edx	#,
	addl	$bm+8, %eax	#, ivtmp.399
	movl	%edx, (%esp)	#, %sfp
	sall	$2, %esi	#, tmp335
	xorl	%edx, %edx	# ivtmp.397
	jmp	.L264	#
.LVL351:
	.p2align 4,,7
	.p2align 3
.L275:
.LBB47:
	.loc 1 1302 0
	movl	%ebp, %ebx	# r,
	movb	%bl, (%eax)	#, MEM[base: D.11745_213, offset: 0B]
	.loc 1 1303 0
	movl	%edi, %ebx	# g,
	movb	%bl, 1(%eax)	#, MEM[base: D.11745_213, offset: 1B]
	.loc 1 1304 0
	movzbl	15(%esp), %ebx	# %sfp,
	movb	%bl, 2(%eax)	#,
.LVL352:
.L262:
	.loc 1 1311 0
	subl	$4, %edx	#, ivtmp.397
.LVL353:
	addl	$3, %eax	#, ivtmp.399
	addl	$4, %ecx	#, ivtmp.403
.LBE47:
	.loc 1 1288 0
	cmpl	(%esp), %edx	# %sfp, ivtmp.397
	je	.L257	#,
.LVL354:
.L264:
	.loc 1 1290 0
	movl	duck_data+68(%esi,%edx), %ebx	# MEM[symbol: duck_data, base: D.11740_208, index: ivtmp.397_133, offset: 68B], cmap
.LVL355:
	testl	%ebx, %ebx	# cmap
	je	.L262	#,
.LBB48:
	.loc 1 1294 0
	leal	(%ebx,%ebx,2), %edi	#, tmp293
	leal	duck_cmap(%edi), %ebx	#, tmp294
	movzbl	duck_cmap(%edi), %ebp	# duck_cmap, r
.LVL356:
	.loc 1 1296 0
	movzbl	2(%ebx), %ebx	# duck_cmap,
.LVL357:
	.loc 1 1295 0
	movzbl	duck_cmap+1(%edi), %edi	# duck_cmap, g
.LVL358:
	.loc 1 1296 0
	movb	%bl, 15(%esp)	#, %sfp
.LVL359:
	.loc 1 1301 0
	movl	(%ecx), %ebx	# MEM[base: D.11754_222, offset: 0B], tmp307
.LVL360:
	sarl	$12, %ebx	#, tmp307
	cmpl	8(%esp), %ebx	# %sfp, tmp307
	jg	.L275	#,
	.loc 1 1306 0
	movzbl	(%eax), %ebx	# MEM[base: D.11748_216, offset: 0B], MEM[base: D.11748_216, offset: 0B]
	.loc 1 1307 0
	andl	$255, %ebp	#, r
.LVL361:
	.loc 1 1310 0
	andl	$255, %edi	#, g
.LVL362:
	.loc 1 1307 0
	imull	$156, %ebp, %ebp	#, r, tmp312
	.loc 1 1310 0
	imull	$156, %edi, %edi	#, g, tmp318
	.loc 1 1306 0
	imull	$100, %ebx, %ebx	#, MEM[base: D.11748_216, offset: 0B], tmp310
	.loc 1 1307 0
	addl	%ebp, %ebx	# tmp312, tmp314
	sarl	$8, %ebx	#, tmp314
	.loc 1 1306 0
	movb	%bl, (%eax)	# tmp314, MEM[base: D.11748_216, offset: 0B]
	.loc 1 1309 0
	movzbl	1(%eax), %ebx	# MEM[base: D.11748_216, offset: 1B], MEM[base: D.11748_216, offset: 1B]
	imull	$100, %ebx, %ebx	#, MEM[base: D.11748_216, offset: 1B], tmp316
	.loc 1 1310 0
	addl	%edi, %ebx	# tmp318, tmp320
	.loc 1 1313 0
	movzbl	15(%esp), %edi	# %sfp, b
	.loc 1 1310 0
	sarl	$8, %ebx	#, tmp320
	.loc 1 1308 0
	movb	%bl, 1(%eax)	# tmp320, MEM[base: D.11748_216, offset: 1B]
	.loc 1 1312 0
	movzbl	2(%eax), %ebx	# MEM[base: D.11748_216, offset: 2B], MEM[base: D.11748_216, offset: 2B]
	.loc 1 1313 0
	imull	$156, %edi, %edi	#, b, tmp324
	.loc 1 1312 0
	imull	$100, %ebx, %ebx	#, MEM[base: D.11748_216, offset: 2B], tmp322
	.loc 1 1313 0
	addl	%edi, %ebx	# tmp324, tmp326
	sarl	$8, %ebx	#, tmp326
	.loc 1 1311 0
	movb	%bl, 2(%eax)	# tmp326,
	jmp	.L262	#
.LVL363:
.L253:
.LBE48:
.LBE50:
	.loc 1 1283 0
	movl	40(%esp), %ebx	# %sfp,
	movl	40(%esp), %edx	# %sfp, tmp342
	.loc 1 1278 0
	movl	$18, 4(%esp)	#, %sfp
	.loc 1 1283 0
	negl	%ebx	#
	sarl	$31, %edx	#, tmp342
	andl	%edx, %ebx	# tmp342,
	movl	%ebx, 24(%esp)	#, %sfp
	jmp	.L254	#
.LVL364:
.L273:
	.loc 1 1274 0
	movl	%edx, %eax	# y, ds
	negl	%eax	# ds
.LVL365:
	.loc 1 1275 0
	movl	$17, 32(%esp)	#, %sfp
	jmp	.L252	#
	.cfi_endproc
.LFE53:
	.size	duck_set, .-duck_set
	.section	.rodata.str1.4
	.align 4
.LC15:
	.string	"Compilation time error: element #%d doesn't match between arrays (%s != %s)\n"
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC16:
	.string	"wmbubble"
	.section	.rodata.str1.4
	.align 4
.LC17:
	.string	"Couldn't parse %s as a boolean for resource %s\n"
	.text
	.p2align 4,,15
	.type	bubblemon_session_defaults, @function
bubblemon_session_defaults:
.LFB33:
	.loc 1 195 0
	.cfi_startproc
.LVL366:
	pushl	%ebp	#
.LCFI31:
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	.loc 1 197 0
	movl	$2047, %ecx	#, tmp233
	.loc 1 195 0
	pushl	%edi	#
.LCFI32:
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi	#
.LCFI33:
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx	#
.LCFI34:
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	.loc 1 218 0
	xorl	%ebx, %ebx	# ivtmp.435
	.loc 1 195 0
	subl	$8300, %esp	#,
.LCFI35:
	.cfi_def_cfa_offset 8320
	.loc 1 214 0
	fldl	.LC10	#
	.loc 1 197 0
	leal	76(%esp), %edi	#, tmp231
	.loc 1 214 0
	fstpl	bm+31396	# bm.ripples
	.loc 1 215 0
	fldl	.LC11	#
	.loc 1 234 0
	leal	72(%esp), %esi	#, tmp350
	.loc 1 215 0
	fstpl	bm+31404	# bm.gravity
	.loc 1 216 0
	fld1
	fstpl	bm+31412	# bm.volatility
	.loc 1 195 0
	movl	%eax, 52(%esp)	# x_resource_database, %sfp
	.loc 1 197 0
	xorl	%eax, %eax	# tmp232
.LVL367:
	.loc 1 217 0
	fldl	.LC13	#
	fstpl	bm+31420	# bm.viscosity
	.loc 1 218 0
	flds	.LC14	#
	.loc 1 197 0
	rep stosl
	.loc 1 228 0
	xorl	%edi, %edi	# i
	.loc 1 197 0
	movl	$0, 72(%esp)	#, name
	.loc 1 204 0
	movl	$16, bm+31340	#, bm.samples
	.loc 1 207 0
	movl	$2267647, bm+31364	#, bm.air_noswap
	.loc 1 208 0
	movl	$22015, bm+31368	#, bm.liquid_noswap
	.loc 1 209 0
	movl	$16711680, bm+31372	#, bm.air_maxswap
	.loc 1 210 0
	movl	$11141120, bm+31376	#, bm.liquid_maxswap
	.loc 1 213 0
	movl	$100, bm+31392	#, bm.maxbubbles
	.loc 1 218 0
	fstpl	bm+31428	# bm.speed_limit
.LVL368:
	jmp	.L291	#
.LVL369:
	.p2align 4,,7
	.p2align 3
.L282:
	.loc 1 240 0
	movl	8280(%esp), %eax	# val.addr, val.addr
	movl	x_resource_extras+8(%ebx), %ebp	# MEM[symbol: x_resource_extras, index: ivtmp.435_118, offset: 8B], D.9540
	movl	$0, 8(%esp)	#,
	movl	$0, 4(%esp)	#,
	movl	%eax, (%esp)	# val.addr,
	call	strtol	#
	movl	%eax, 0(%ebp)	# D.9543, MEM[(int *)D.9540_19]
	.p2align 4,,7
	.p2align 3
.L281:
	.loc 1 228 0
	addl	$1, %edi	#, i
.LVL370:
	addl	$16, %ebx	#, ivtmp.435
	cmpl	$25, %edi	#, i
	je	.L294	#,
.LVL371:
.L291:
.LBB51:
	.loc 1 229 0
	movl	x_resource_options(%ebx), %edx	# MEM[symbol: x_resource_options, index: ivtmp.435_118, offset: 0B], D.9526
	movl	x_resource_extras(%ebx), %ebp	# MEM[symbol: x_resource_extras, index: ivtmp.435_118, offset: 0B], D.9525
	movl	%edx, (%esp)	# D.9526,
	movl	%ebp, 4(%esp)	# D.9525,
	movl	%edx, 48(%esp)	#,
	call	strcmp	#
.LBE51:
	movl	48(%esp), %edx	#,
	testl	%eax, %eax	# D.7223
	jne	.L295	#,
	.loc 1 234 0
	movl	$8192, 8(%esp)	#,
	movl	$.LC16, 4(%esp)	#,
	movl	%esi, (%esp)	# tmp350,
	call	strncpy	#
	movl	%esi, %edx	# tmp350, D.9530
.L278:
	movl	(%edx), %ecx	#* D.9530, tmp257
	addl	$4, %edx	#, D.9530
	leal	-16843009(%ecx), %eax	#, tmp256
	notl	%ecx	# tmp257
	andl	%ecx, %eax	# tmp257, tmp256
	andl	$-2139062144, %eax	#, tmp256
	je	.L278	#,
	testl	$32896, %eax	#, tmp256
	jne	.L280	#,
	shrl	$16, %eax	#, tmp256
	addl	$2, %edx	#, D.9530
.L280:
	addb	%al, %al	# tmp256, tmp256
	movl	%esi, %eax	# tmp350, tmp259
	sbbl	$3, %edx	#, D.9530
	subl	%edx, %eax	# D.9530, tmp259
	addl	$8192, %eax	#, tmp258
	movl	%eax, 8(%esp)	# tmp258,
	movl	x_resource_options+4(%ebx), %eax	# MEM[symbol: x_resource_options, index: ivtmp.435_118, offset: 4B], MEM[symbol: x_resource_options, index: ivtmp.435_118, offset: 4B]
	movl	%esi, (%esp)	# tmp350,
	movl	%eax, 4(%esp)	# MEM[symbol: x_resource_options, index: ivtmp.435_118, offset: 4B],
	call	strncat	#
	.loc 1 235 0
	leal	8276(%esp), %eax	#,
	movl	%eax, 16(%esp)	#,
	leal	8284(%esp), %eax	#, tmp264
	movl	%eax, 12(%esp)	# tmp264,
	movl	52(%esp), %eax	# %sfp,
	movl	%esi, 8(%esp)	# tmp350,
	movl	%esi, 4(%esp)	# tmp350,
	movl	%eax, (%esp)	#,
	call	XrmGetResource	#
	testl	%eax, %eax	# D.9533
	je	.L281	#,
	.loc 1 237 0
	movl	8276(%esp), %ebp	# val.size,
	testl	%ebp, %ebp	#
	je	.L281	#,
	.loc 1 238 0
	movl	x_resource_extras+4(%ebx), %eax	# MEM[symbol: x_resource_extras, index: ivtmp.435_118, offset: 4B], MEM[symbol: x_resource_extras, index: ivtmp.435_118, offset: 4B]
	cmpl	$1, %eax	#, MEM[symbol: x_resource_extras, index: ivtmp.435_118, offset: 4B]
	je	.L283	#,
	jb	.L282	#,
	cmpl	$2, %eax	#, MEM[symbol: x_resource_extras, index: ivtmp.435_118, offset: 4B]
	je	.L284	#,
	cmpl	$3, %eax	#, MEM[symbol: x_resource_extras, index: ivtmp.435_118, offset: 4B]
	.p2align 4,,5
	jne	.L281	#,
.LBB52:
	.loc 1 255 0 discriminator 2
	.p2align 4,,5
	call	__ctype_tolower_loc	#
	movl	8280(%esp), %edx	# val.addr,
	movzbl	(%edx), %ecx	# *D.9541_52, D.9569
	movl	%edx, 40(%esp)	#, %sfp
	movl	(%eax), %eax	# *D.9579_50,
	movl	%eax, 56(%esp)	#, %sfp
	movl	56(%esp), %ebp	# %sfp,
	movsbl	%cl, %eax	# D.9569, D.9569
	movl	0(%ebp,%eax,4), %eax	# *D.9588_56, __res
.LVL372:
.LBE52:
	cmpl	$121, %eax	#, __res
	je	.L286	#,
.LVL373:
	cmpl	$109, %eax	#, __res
	je	.L286	#,
	.loc 1 256 0
	cmpb	$49, %cl	#, D.9569
	je	.L286	#,
.LVL374:
	.loc 1 257 0 discriminator 2
	cmpl	$111, %eax	#, __res
	.p2align 4,,2
	je	.L296	#,
.LVL375:
	.loc 1 260 0 discriminator 2
	cmpl	$110, %eax	#, __res
	.p2align 4,,2
	je	.L289	#,
.LVL376:
	cmpl	$107, %eax	#, __res
	.p2align 4,,2
	je	.L289	#,
.LVL377:
.L288:
	.loc 1 261 0
	cmpb	$48, %cl	#, D.9569
	.p2align 4,,2
	je	.L289	#,
.LVL378:
	.loc 1 262 0 discriminator 2
	cmpl	$111, %eax	#, __res
	.p2align 4,,2
	jne	.L290	#,
.LBB53:
	.loc 1 263 0 discriminator 2
	movl	40(%esp), %edx	# %sfp,
.LBE53:
	movl	56(%esp), %ebp	# %sfp,
.LBB54:
	movsbl	1(%edx), %eax	# MEM[(char *)D.9541_52 + 1B], MEM[(char *)D.9541_52 + 1B]
.LVL379:
.LBE54:
	cmpl	$102, 0(%ebp,%eax,4)	#, *D.9641_125
	jne	.L290	#,
.LVL380:
.L289:
	.loc 1 264 0
	movl	x_resource_extras+8(%ebx), %eax	# MEM[symbol: x_resource_extras, index: ivtmp.435_118, offset: 8B], MEM[symbol: x_resource_extras, index: ivtmp.435_118, offset: 8B]
	movl	$0, (%eax)	#, MEM[(int *)D.9540_132]
	jmp	.L281	#
.LVL381:
.L296:
.LBB55:
	.loc 1 258 0 discriminator 2
	movsbl	1(%edx), %edx	# MEM[(char *)D.9541_52 + 1B],
.LBE55:
	cmpl	$110, 0(%ebp,%edx,4)	#, *D.9641_86
	jne	.L288	#,
.LVL382:
	.p2align 4,,7
	.p2align 3
.L286:
	.loc 1 259 0
	movl	x_resource_extras+8(%ebx), %eax	# MEM[symbol: x_resource_extras, index: ivtmp.435_118, offset: 8B], MEM[symbol: x_resource_extras, index: ivtmp.435_118, offset: 8B]
.LVL383:
	.loc 1 228 0
	addl	$1, %edi	#, i
.LVL384:
	addl	$16, %ebx	#, ivtmp.435
	cmpl	$25, %edi	#, i
	.loc 1 259 0
	movl	$1, (%eax)	#, MEM[(int *)D.9540_133]
	.loc 1 228 0
	jne	.L291	#,
	.p2align 4,,7
	.p2align 3
.L294:
	.loc 1 278 0
	flds	.LC18	#
	fldl	bm+31396	# bm.ripples
	fnstcw	62(%esp)	#
	fmul	%st(1), %st	#,
	movzwl	62(%esp), %eax	#, tmp352
	flds	.LC19	#
	fadd	%st, %st(1)	#,
	fxch	%st(1)	#
	movb	$12, %ah	#, tmp352
	movw	%ax, 60(%esp)	# tmp352,
	fldcw	60(%esp)	#
	fistpl	bm+31436	# bm.ripples_int
	fldcw	62(%esp)	#
	.loc 1 279 0
	fldl	bm+31404	# bm.gravity
	fmul	%st(2), %st	#,
	fadd	%st(1), %st	#,
	fldcw	60(%esp)	#
	fistpl	bm+31440	# bm.gravity_int
	fldcw	62(%esp)	#
	.loc 1 280 0
	fldl	bm+31412	# bm.volatility
	fmul	%st(2), %st	#,
	fadd	%st(1), %st	#,
	fldcw	60(%esp)	#
	fistpl	bm+31444	# bm.volatility_int
	fldcw	62(%esp)	#
	.loc 1 281 0
	fldl	bm+31420	# bm.viscosity
	fmul	%st(2), %st	#,
	fadd	%st(1), %st	#,
	fldcw	60(%esp)	#
	fistpl	bm+31448	# bm.viscosity_int
	fldcw	62(%esp)	#
	fxch	%st(1)	#
	.loc 1 282 0
	fmull	bm+31428	# bm.speed_limit
	faddp	%st, %st(1)	#,
	fldcw	60(%esp)	#
	fistpl	bm+31452	# bm.speed_limit_int
	fldcw	62(%esp)	#
	.loc 1 283 0
	addl	$8300, %esp	#,
	.cfi_remember_state
.LCFI36:
	.cfi_def_cfa_offset 20
	popl	%ebx	#
.LCFI37:
	.cfi_def_cfa_offset 16
	.cfi_restore 3
	popl	%esi	#
.LCFI38:
	.cfi_def_cfa_offset 12
	.cfi_restore 6
	popl	%edi	#
.LCFI39:
	.cfi_def_cfa_offset 8
	.cfi_restore 7
.LVL385:
	popl	%ebp	#
.LCFI40:
	.cfi_def_cfa_offset 4
	.cfi_restore 5
	ret
	.p2align 4,,7
	.p2align 3
.L284:
.LCFI41:
	.cfi_restore_state
	.loc 1 243 0
	movl	8280(%esp), %eax	# val.addr, val.addr
	movl	x_resource_extras+8(%ebx), %ebp	# MEM[symbol: x_resource_extras, index: ivtmp.435_118, offset: 8B], D.9540
	movl	$0, 4(%esp)	#,
	movl	%eax, (%esp)	# val.addr,
	call	strtod	#
	fstpl	0(%ebp)	# MEM[(double *)D.9540_23]
	.loc 1 244 0
	jmp	.L281	#
	.p2align 4,,7
	.p2align 3
.L283:
	.loc 1 246 0
	leal	8264(%esp), %eax	#, tmp273
	movl	wmxp_display, %edx	# wmxp_display, wmxp_display.13
	movl	%eax, 12(%esp)	# tmp273,
	movl	8280(%esp), %eax	# val.addr, val.addr
	movl	%eax, 8(%esp)	# val.addr,
	movl	132(%edx), %eax	# MEM[(struct  *)wmxp_display.13_28].default_screen, MEM[(struct  *)wmxp_display.13_28].default_screen
	leal	(%eax,%eax,4), %eax	#, tmp281
	sall	$4, %eax	#, tmp281
	addl	140(%edx), %eax	# MEM[(struct  *)wmxp_display.13_28].screens, tmp281
	movl	48(%eax), %eax	# D.9550_34->cmap, D.9550_34->cmap
	movl	%edx, (%esp)	# wmxp_display.13,
	movl	%eax, 4(%esp)	# D.9550_34->cmap,
	call	XParseColor	#
	.loc 1 250 0
	movzwl	8270(%esp), %edx	# colorparsing.green, tmp289
	.loc 1 251 0
	movzbl	8273(%esp), %eax	# colorparsing.blue, tmp294
	.loc 1 248 0
	movl	x_resource_extras+8(%ebx), %ecx	# MEM[symbol: x_resource_extras, index: ivtmp.435_118, offset: 8B], MEM[symbol: x_resource_extras, index: ivtmp.435_118, offset: 8B]
	.loc 1 250 0
	andl	$65280, %edx	#, tmp289
	.loc 1 249 0
	orl	%edx, %eax	# tmp289, tmp294
	movzwl	8268(%esp), %edx	# colorparsing.red, tmp293
	andl	$65280, %edx	#, tmp293
	sall	$8, %edx	#, tmp293
	.loc 1 250 0
	orl	%edx, %eax	# tmp293, tmp294
	movl	%eax, (%ecx)	# tmp294, MEM[(int *)D.9540_37]
	.loc 1 252 0
	jmp	.L281	#
.L295:
	movl	%edx, %eax	# D.9526, D.9526
	movl	%ebp, %edx	# D.9525, D.9525
	.loc 1 230 0
	movl	%eax, 12(%esp)	# D.9526,
	movl	stderr, %eax	# stderr, stderr
	movl	%edx, 16(%esp)	# D.9525,
	movl	%edi, 8(%esp)	# i,
	movl	$.LC15, 4(%esp)	#,
	movl	%eax, (%esp)	# stderr,
	call	fprintf	#
	.loc 1 232 0
	call	abort	#
.L290:
	movl	40(%esp), %ebp	# %sfp, D.9541
	.loc 1 266 0
	movl	stderr, %eax	# stderr, stderr
	movl	%esi, 12(%esp)	# tmp350,
	movl	$.LC17, 4(%esp)	#,
	movl	%ebp, 8(%esp)	# D.9541,
	movl	%eax, (%esp)	# stderr,
	call	fprintf	#
	.loc 1 267 0
	movl	$-2, (%esp)	#,
	call	exit	#
	.cfi_endproc
.LFE33:
	.size	bubblemon_session_defaults, .-bubblemon_session_defaults
	.section	.rodata.str1.1
.LC21:
	.string	"%2d"
.LC22:
	.string	"%02d"
.LC23:
	.string	"%6lluM"
.LC24:
	.string	"%6lluK"
.LC25:
	.string	"%03d"
	.text
	.p2align 4,,15
	.type	render_secondary, @function
render_secondary:
.LFB45:
	.loc 1 939 0
	.cfi_startproc
	pushl	%edi	#
.LCFI42:
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	pushl	%esi	#
.LCFI43:
	.cfi_def_cfa_offset 12
	.cfi_offset 6, -12
	pushl	%ebx	#
.LCFI44:
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	subl	$48, %esp	#,
.LCFI45:
	.cfi_def_cfa_offset 64
	.loc 1 950 0
	movl	bm+31332, %ebx	# bm.screen_type,
	movl	$10092, 8(%esp)	#,
	testl	%ebx, %ebx	#
	je	.L298	#,
	.loc 1 950 0 is_stmt 0 discriminator 3
	movl	$load_screen+12, 4(%esp)	#,
	.loc 1 955 0 is_stmt 1 discriminator 3
	leal	36(%esp), %ebx	#, tmp98
	.loc 1 961 0 discriminator 3
	movl	$bm+13408, %edi	#, tmp122
	.loc 1 950 0 discriminator 3
	movl	$bm+10101, (%esp)	#,
	.loc 1 961 0 discriminator 3
	movl	$bm+25590, %esi	#, tmp123
	.loc 1 950 0 discriminator 3
	call	memcpy	#
.LVL386:
	.loc 1 955 0 discriminator 3
	movl	bm+31720, %eax	# bm.loadavg[0].i, bm.loadavg[0].i
	movl	%ebx, (%esp)	# tmp98,
	movl	$.LC21, 4(%esp)	#,
	movl	%eax, 8(%esp)	# bm.loadavg[0].i,
	call	sprintf	#
	.loc 1 956 0 discriminator 3
	movl	$9, %ecx	#,
	movl	$1, %edx	#,
	movl	%ebx, %eax	# tmp98,
	movl	$0, (%esp)	#,
	call	draw_string	#
	.loc 1 957 0 discriminator 3
	movl	bm+31724, %eax	# bm.loadavg[0].f, bm.loadavg[0].f
	movl	%ebx, (%esp)	# tmp98,
	movl	$.LC22, 4(%esp)	#,
	movl	%eax, 8(%esp)	# bm.loadavg[0].f,
	call	sprintf	#
	.loc 1 958 0 discriminator 3
	movl	$9, %ecx	#,
	movl	$11, %edx	#,
	movl	%ebx, %eax	# tmp98,
	movl	$0, (%esp)	#,
	call	draw_string	#
.LVL387:
	.loc 1 955 0 discriminator 3
	movl	bm+31728, %eax	# bm.loadavg[1].i, bm.loadavg[1].i
	movl	%ebx, (%esp)	# tmp98,
	movl	$.LC21, 4(%esp)	#,
	movl	%eax, 8(%esp)	# bm.loadavg[1].i,
	call	sprintf	#
	.loc 1 956 0 discriminator 3
	movl	$9, %ecx	#,
	movl	$20, %edx	#,
	movl	%ebx, %eax	# tmp98,
	movl	$0, (%esp)	#,
	call	draw_string	#
	.loc 1 957 0 discriminator 3
	movl	bm+31732, %eax	# bm.loadavg[1].f, bm.loadavg[1].f
	movl	%ebx, (%esp)	# tmp98,
	movl	$.LC22, 4(%esp)	#,
	movl	%eax, 8(%esp)	# bm.loadavg[1].f,
	call	sprintf	#
	.loc 1 958 0 discriminator 3
	movl	$9, %ecx	#,
	movl	$30, %edx	#,
	movl	%ebx, %eax	# tmp98,
	movl	$0, (%esp)	#,
	call	draw_string	#
.LVL388:
	.loc 1 955 0 discriminator 3
	movl	bm+31736, %eax	# bm.loadavg[2].i, bm.loadavg[2].i
	movl	%ebx, (%esp)	# tmp98,
	movl	$.LC21, 4(%esp)	#,
	movl	%eax, 8(%esp)	# bm.loadavg[2].i,
	call	sprintf	#
	.loc 1 956 0 discriminator 3
	movl	$9, %ecx	#,
	movl	$39, %edx	#,
	movl	%ebx, %eax	# tmp98,
	movl	$0, (%esp)	#,
	call	draw_string	#
	.loc 1 957 0 discriminator 3
	movl	bm+31740, %eax	# bm.loadavg[2].f, bm.loadavg[2].f
	movl	%ebx, (%esp)	# tmp98,
	movl	$.LC22, 4(%esp)	#,
	movl	%eax, 8(%esp)	# bm.loadavg[2].f,
	call	sprintf	#
	.loc 1 958 0 discriminator 3
	movl	%ebx, %eax	# tmp98,
	movl	$9, %ecx	#,
	movl	$49, %edx	#,
	movl	$0, (%esp)	#,
	call	draw_string	#
.LVL389:
	.loc 1 961 0 discriminator 3
	movzbl	bm+25589, %eax	# bm.his_bufb, bm.his_bufb
	movl	$1435, %ecx	#, tmp125
	movb	%al, bm+13407	# bm.his_bufb, bm.mem_buf
	rep movsl
	movzbl	(%esi), %eax	#, bm.his_bufb
	movb	%al, (%edi)	# bm.his_bufb, bm.mem_buf
	.loc 1 984 0 discriminator 3
	addl	$48, %esp	#,
	.cfi_remember_state
.LCFI46:
	.cfi_def_cfa_offset 16
	popl	%ebx	#
.LCFI47:
	.cfi_def_cfa_offset 12
	.cfi_restore 3
	popl	%esi	#
.LCFI48:
	.cfi_def_cfa_offset 8
	.cfi_restore 6
	popl	%edi	#
.LCFI49:
	.cfi_def_cfa_offset 4
	.cfi_restore 7
	ret
.LVL390:
	.p2align 4,,7
	.p2align 3
.L298:
.LCFI50:
	.cfi_restore_state
	.loc 1 950 0
	movl	$mem_screen+12, 4(%esp)	#,
	movl	$bm+10101, (%esp)	#,
	call	memcpy	#
	.loc 1 964 0
	movl	memscreen_megabytes, %eax	# memscreen_megabytes,
	testl	%eax, %eax	#
	jne	.L303	#,
	.loc 1 967 0
	movl	bm+31460, %edx	# bm.mem_used,
	leal	36(%esp), %ebx	#, tmp179
	movl	bm+31456, %eax	# bm.mem_used, tmp132
	movl	$.LC24, 8(%esp)	#,
	movl	$8, 4(%esp)	#,
	movl	%ebx, (%esp)	# tmp179,
	shrdl	$10, %edx, %eax	#,, tmp132
	shrl	$10, %edx	#,
	movl	%eax, 12(%esp)	# tmp132,
	movl	%edx, 16(%esp)	#,
	call	snprintf	#
.L300:
	.loc 1 968 0
	movl	bm+31492, %eax	# bm.mem_percent, bm.mem_percent
	leal	44(%esp), %esi	#, tmp180
	movl	$.LC25, 8(%esp)	#,
	movl	$4, 4(%esp)	#,
	movl	%esi, (%esp)	# tmp180,
	movl	%eax, 12(%esp)	# bm.mem_percent,
	call	snprintf	#
	.loc 1 969 0
	xorl	%eax, %eax	# tmp140
	movl	$2, %ecx	#,
	cmpl	$90, bm+31492	#, bm.mem_percent
	movl	$3, %edx	#,
	seta	%al	#, tmp140
	movl	%eax, (%esp)	# tmp140,
	movl	%ebx, %eax	# tmp179,
	call	draw_string	#
	.loc 1 970 0
	xorl	%eax, %eax	# tmp144
	movl	$2, %ecx	#,
	cmpl	$90, bm+31492	#, bm.mem_percent
	movl	$39, %edx	#,
	seta	%al	#, tmp144
	movl	%eax, (%esp)	# tmp144,
	movl	%esi, %eax	# tmp180,
	call	draw_string	#
	.loc 1 973 0
	movl	memscreen_megabytes, %ecx	# memscreen_megabytes,
	.loc 1 974 0
	movl	bm+31472, %eax	# bm.swap_used, tmp147
	movl	bm+31476, %edx	# bm.swap_used,
	.loc 1 973 0
	testl	%ecx, %ecx	#
	je	.L301	#,
	.loc 1 974 0
	shrdl	$20, %edx, %eax	#,, tmp147
	shrl	$20, %edx	#,
	movl	%eax, 12(%esp)	# tmp147,
	movl	%edx, 16(%esp)	#,
	movl	$.LC23, 8(%esp)	#,
	movl	$8, 4(%esp)	#,
	movl	%ebx, (%esp)	# tmp179,
	call	snprintf	#
.L302:
	.loc 1 977 0
	movl	bm+31488, %eax	# bm.swap_percent, bm.swap_percent
	.loc 1 982 0
	movl	$bm+13756, %edi	#, tmp167
	.loc 1 977 0
	movl	%esi, (%esp)	# tmp180,
	movl	$.LC25, 8(%esp)	#,
	movl	$4, 4(%esp)	#,
	movl	%eax, 12(%esp)	# bm.swap_percent,
	call	snprintf	#
	.loc 1 978 0
	xorl	%eax, %eax	# tmp159
	movl	$11, %ecx	#,
	cmpl	$90, bm+31488	#, bm.swap_percent
	movl	$3, %edx	#,
	seta	%al	#, tmp159
	movl	%eax, (%esp)	# tmp159,
	movl	%ebx, %eax	# tmp179,
	call	draw_string	#
	.loc 1 979 0
	xorl	%eax, %eax	# tmp163
	movl	$11, %ecx	#,
	cmpl	$90, bm+31488	#, bm.swap_percent
	movl	$39, %edx	#,
	seta	%al	#, tmp163
	movl	%eax, (%esp)	# tmp163,
	movl	%esi, %eax	# tmp180,
	.loc 1 982 0
	movl	$bm+20195, %esi	#, tmp168
	.loc 1 979 0
	call	draw_string	#
	.loc 1 982 0
	movzbl	bm+20194, %eax	# bm.his_bufa, bm.his_bufa
	movl	$1348, %ecx	#, tmp170
	movb	%al, bm+13755	# bm.his_bufa, bm.mem_buf
	rep movsl
	movzbl	(%esi), %eax	#, bm.his_bufa
	movb	%al, (%edi)	# bm.his_bufa, bm.mem_buf
	.loc 1 984 0
	addl	$48, %esp	#,
	.cfi_remember_state
.LCFI51:
	.cfi_def_cfa_offset 16
	popl	%ebx	#
	.cfi_restore 3
.LCFI52:
	.cfi_def_cfa_offset 12
	popl	%esi	#
	.cfi_restore 6
.LCFI53:
	.cfi_def_cfa_offset 8
	popl	%edi	#
	.cfi_restore 7
.LCFI54:
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,7
	.p2align 3
.L303:
.LCFI55:
	.cfi_restore_state
	.loc 1 965 0
	movl	bm+31460, %edx	# bm.mem_used,
	leal	36(%esp), %ebx	#, tmp179
	movl	bm+31456, %eax	# bm.mem_used, tmp128
	movl	$.LC23, 8(%esp)	#,
	movl	$8, 4(%esp)	#,
	movl	%ebx, (%esp)	# tmp179,
	shrdl	$20, %edx, %eax	#,, tmp128
	shrl	$20, %edx	#,
	movl	%eax, 12(%esp)	# tmp128,
	movl	%edx, 16(%esp)	#,
	call	snprintf	#
	jmp	.L300	#
	.p2align 4,,7
	.p2align 3
.L301:
	.loc 1 976 0
	shrdl	$10, %edx, %eax	#,, tmp151
	shrl	$10, %edx	#,
	movl	%eax, 12(%esp)	# tmp151,
	movl	%edx, 16(%esp)	#,
	movl	$.LC24, 8(%esp)	#,
	movl	$8, 4(%esp)	#,
	movl	%ebx, (%esp)	# tmp179,
	call	snprintf	#
	jmp	.L302	#
	.cfi_endproc
.LFE45:
	.size	render_secondary, .-render_secondary
	.p2align 4,,15
	.type	draw_history.constprop.1, @function
draw_history.constprop.1:
.LFB59:
	.loc 1 905 0
	.cfi_startproc
.LVL391:
	pushl	%ebp	#
.LCFI56:
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi	#
.LCFI57:
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi	#
.LCFI58:
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx	#
.LCFI59:
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	movl	%eax, %ebx	# size, size
	subl	$12, %esp	#,
.LCFI60:
	.cfi_def_cfa_offset 32
	.loc 1 905 0
	movl	%edx, 4(%esp)	# history, %sfp
	movl	4(%esp), %esi	# %sfp, history
	.loc 1 913 0
	xorl	%edx, %edx	# j
.LVL392:
	.loc 1 905 0
	movl	%ecx, 8(%esp)	# buf, %sfp
	.loc 1 911 0
	movl	$100, %ecx	#, pixels_per_byte
.LVL393:
	.p2align 4,,7
	.p2align 3
.L307:
	.loc 1 914 0
	movl	(%esi,%edx,4), %eax	# MEM[base: history_6(D), index: D.11945_165, step: 4, offset: 0B], D.10837
	cmpl	%eax, %ecx	# D.10837, pixels_per_byte
	jae	.L311	#,
	.p2align 4,,7
	.p2align 3
.L321:
	.loc 1 915 0
	addl	$100, %ecx	#, pixels_per_byte
.LVL394:
	.loc 1 914 0
	cmpl	%eax, %ecx	# D.10837, pixels_per_byte
	jb	.L321	#,
.L311:
	.loc 1 913 0
	addl	$1, %edx	#, j
.LVL395:
	cmpl	$54, %edx	#, j
	jne	.L307	#,
.LVL396:
	.loc 1 905 0
	leal	-1(%ebx), %eax	#, tmp165
	movl	8(%esp), %edx	# %sfp,
.LVL397:
	xorl	%esi, %esi	# k
.LVL398:
	imull	$174, %eax, %eax	#, tmp165, tmp166
	movl	%ecx, (%esp)	# pixels_per_byte, %sfp
	leal	6(%edx,%eax), %eax	#, ivtmp.522
	movl	%eax, %ecx	# ivtmp.522, ivtmp.522
.LVL399:
	.p2align 4,,7
	.p2align 3
.L316:
	.loc 1 919 0
	movl	4(%esp), %edx	# %sfp,
	.loc 1 921 0
	testl	%ebx, %ebx	# size
	.loc 1 919 0
	movl	(%edx,%esi,4), %eax	# MEM[base: history_6(D), index: D.11933_40, step: 4, offset: 0B], D.10832
.LVL400:
	.loc 1 921 0
	jle	.L312	#,
	.loc 1 919 0
	imull	%ebx, %eax	# size, tmp168
	xorl	%edx, %edx	# tmp170
	movl	%ecx, %edi	# ivtmp.522, ivtmp.522
	divl	(%esp)	# %sfp
	.loc 1 921 0
	xorl	%edx, %edx	# j
	.loc 1 919 0
	leal	-2(%eax), %ebp	#, pretmp.481
	jmp	.L315	#
.LVL401:
	.p2align 4,,7
	.p2align 3
.L327:
.LBB56:
.LBB57:
	.loc 1 898 0
	movb	$0, (%edi)	#, MEM[base: D.11912_170, offset: 0B]
.LVL402:
	.loc 1 899 0
	movb	$125, 1(%edi)	#, MEM[base: D.11912_170, offset: 1B]
.LVL403:
	.loc 1 900 0
	movb	$113, 2(%edi)	#, MEM[base: D.11912_170, offset: 2B]
.LVL404:
.L314:
.LBE57:
.LBE56:
	.loc 1 921 0
	addl	$1, %edx	#, j
.LVL405:
	subl	$174, %edi	#, ivtmp.522
	cmpl	%ebx, %edx	# size, j
	je	.L312	#,
.LVL406:
.L315:
	.loc 1 922 0
	cmpl	%ebp, %edx	# pretmp.481, j
	jl	.L327	#,
	.loc 1 924 0
	cmpl	%edx, %eax	# j, tmp169
	jle	.L314	#,
.LVL407:
	.loc 1 921 0
	addl	$1, %edx	#, j
.LBB58:
.LBB59:
	.loc 1 898 0
	movb	$32, (%edi)	#, MEM[base: D.11915_173, offset: 0B]
.LVL408:
	.loc 1 899 0
	movb	$-74, 1(%edi)	#, MEM[base: D.11915_173, offset: 1B]
.LVL409:
	.loc 1 900 0
	movb	$-82, 2(%edi)	#, MEM[base: D.11915_173, offset: 2B]
.LVL410:
.LBE59:
.LBE58:
	.loc 1 921 0
	subl	$174, %edi	#, ivtmp.522
	cmpl	%ebx, %edx	# size, j
	jne	.L315	#,
.LVL411:
.L312:
	.loc 1 918 0
	addl	$1, %esi	#, k
.LVL412:
	addl	$3, %ecx	#, ivtmp.522
	cmpl	$54, %esi	#, k
	jne	.L316	#,
	movl	(%esp), %ecx	# %sfp, pixels_per_byte
.LVL413:
	.loc 1 929 0
	movl	%ecx, %esi	# pixels_per_byte, j
.LVL414:
	subl	$100, %esi	#, j
	je	.L306	#,
	.loc 1 905 0
	movl	%ebx, %edi	# size, ivtmp.503
	imull	$-100, %ebx, %ebp	#, size, D.11892
	imull	%esi, %edi	# j, ivtmp.503
.LVL415:
	.p2align 4,,7
	.p2align 3
.L320:
	movl	%edi, %edx	# tmp174, tmp175
	movl	%edi, %eax	# ivtmp.503, tmp174
	sarl	$31, %edx	#, tmp175
	idivl	%ecx	# pixels_per_byte
	movl	%ebx, %edx	# size, pretmp.476
	subl	%eax, %edx	# tmp174, pretmp.476
	.loc 1 921 0
	xorl	%eax, %eax	# ivtmp.493
	.loc 1 905 0
	subl	$1, %edx	#, pretmp.477
	imull	$58, %edx, %edx	#, pretmp.477, pretmp.477
	leal	(%edx,%edx,2), %edx	#, tmp177
	addl	8(%esp), %edx	# %sfp, D.11879
.LVL416:
	.p2align 4,,7
	.p2align 3
.L319:
.LBB60:
.LBB61:
	.loc 1 898 0
	movb	$113, 6(%edx,%eax)	#, MEM[base: D.11879_55, index: ivtmp.493_81, offset: 6B]
.LVL417:
	.loc 1 899 0
	movb	$-29, 7(%edx,%eax)	#, MEM[base: D.11879_55, index: ivtmp.493_81, offset: 7B]
.LVL418:
	.loc 1 900 0
	movb	$113, 8(%edx,%eax)	#, MEM[base: D.11879_55, index: ivtmp.493_81, offset: 8B]
.LVL419:
	addl	$3, %eax	#, ivtmp.493
.LBE61:
.LBE60:
	.loc 1 930 0
	cmpl	$162, %eax	#, ivtmp.493
	jne	.L319	#,
	.loc 1 929 0
	subl	$100, %esi	#, j
.LVL420:
	addl	%ebp, %edi	# D.11892, ivtmp.503
	testl	%esi, %esi	# j
	jg	.L320	#,
.LVL421:
.L306:
	.loc 1 935 0
	addl	$12, %esp	#,
.LCFI61:
	.cfi_def_cfa_offset 20
.LVL422:
	popl	%ebx	#
.LCFI62:
	.cfi_def_cfa_offset 16
	.cfi_restore 3
.LVL423:
	popl	%esi	#
.LCFI63:
	.cfi_def_cfa_offset 12
	.cfi_restore 6
.LVL424:
	popl	%edi	#
.LCFI64:
	.cfi_def_cfa_offset 8
	.cfi_restore 7
	popl	%ebp	#
.LCFI65:
	.cfi_def_cfa_offset 4
	.cfi_restore 5
	ret
	.cfi_endproc
.LFE59:
	.size	draw_history.constprop.1, .-draw_history.constprop.1
	.section	.rodata.str1.4
	.align 4
.LC26:
	.string	"BubbleMon version 1.50r\nUsage: wmbubble [switches] [program_1] [program_2]\n\nPermitted options are:"
	.section	.rodata.str1.1
.LC27:
	.string	"%-20s %s\n"
.LC28:
	.string	"%s &"
.LC29:
	.string	"Shift_L"
.LC30:
	.string	"Shift_R"
	.globl	__udivdi3
	.section	.text.startup,"ax",@progbits
	.p2align 4,,15
	.globl	main
	.type	main, @function
main:
.LFB35:
	.loc 1 302 0
	.cfi_startproc
.LVL425:
	pushl	%ebp	#
.LCFI66:
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp	#,
.LCFI67:
	.cfi_def_cfa_register 5
	pushl	%edi	#
	pushl	%esi	#
	pushl	%ebx	#
	andl	$-16, %esp	#,
	subl	$544, %esp	#,
	.loc 1 329 0
	movl	$31968, 8(%esp)	#,
	.loc 1 336 0
	leal	8(%ebp), %esi	#,
	.cfi_offset 3, -20
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	.loc 1 329 0
	movl	$0, 4(%esp)	#,
	movl	$bm, (%esp)	#,
	call	memset	#
	.loc 1 332 0
	movl	12(%ebp), %ebx	# argv,
	movl	8(%ebp), %eax	# argc, argc
	movl	%ebx, 4(%esp)	#,
	movl	%eax, (%esp)	# argc,
	call	initwmX11pixmap	#
	movl	%eax, bm+4	# D.9432, bm.xim
	.loc 1 333 0
	call	XrmInitialize	#
	.loc 1 334 0
	movl	wmxp_display, %eax	# wmxp_display, wmxp_display
	movl	%eax, (%esp)	# wmxp_display,
	call	XResourceManagerString	#
.LVL426:
	.loc 1 335 0
	movl	%eax, (%esp)	# x_resources_as_string,
	call	XrmGetStringDatabase	#
.LVL427:
	.loc 1 336 0
	movl	%ebx, 20(%esp)	#,
	movl	%esi, 16(%esp)	#,
	movl	$.LC16, 12(%esp)	#,
	movl	$25, 8(%esp)	#,
	movl	$x_resource_options, 4(%esp)	#,
.LVL428:
	.loc 1 335 0
	movl	%eax, 536(%esp)	# x_resource_db.4, x_resource_db
	.loc 1 336 0
	leal	536(%esp), %eax	#, tmp1925
.LVL429:
	movl	%eax, (%esp)	# tmp1925,
	call	XrmParseCommand	#
	.loc 1 340 0
	movl	536(%esp), %eax	# x_resource_db,
	call	bubblemon_session_defaults	#
	.loc 1 342 0
	cmpl	$0, do_help	#, do_help
	jne	.L329	#,
	.loc 1 342 0 is_stmt 0 discriminator 1
	movl	4(%ebx), %eax	# MEM[(char * *)argv_10(D) + 4B], D.9441
	testl	%eax, %eax	# D.9441
	je	.L330	#,
	cmpb	$45, (%eax)	#, *D.9441_18
	je	.L329	#,
.L330:
	.loc 1 348 0 is_stmt 1
	call	init_stuff	#
	testl	%eax, %eax	# D.9444
	.p2align 4,,3
	je	.L332	#,
	.loc 1 349 0
	movl	$-1, (%esp)	#,
	call	exit	#
.L329:
.LBB113:
.LBB114:
	.loc 1 293 0
	movl	$.LC26, (%esp)	#,
	xorl	%ebx, %ebx	# ivtmp.1209
	call	puts	#
.LVL430:
.L331:
	.loc 1 297 0
	movl	x_resource_extras+12(%ebx), %eax	# MEM[symbol: x_resource_extras, index: ivtmp.1209_511, offset: 12B], MEM[symbol: x_resource_extras, index: ivtmp.1209_511, offset: 12B]
	movl	$.LC27, (%esp)	#,
	movl	%eax, 8(%esp)	# MEM[symbol: x_resource_extras, index: ivtmp.1209_511, offset: 12B],
	movl	x_resource_extras(%ebx), %eax	# MEM[symbol: x_resource_extras, index: ivtmp.1209_511, offset: 0B], MEM[symbol: x_resource_extras, index: ivtmp.1209_511, offset: 0B]
	addl	$16, %ebx	#, ivtmp.1209
	movl	%eax, 4(%esp)	# MEM[symbol: x_resource_extras, index: ivtmp.1209_511, offset: 0B],
	call	printf	#
	.loc 1 296 0
	cmpl	$400, %ebx	#, ivtmp.1209
	jne	.L331	#,
.LBE114:
.LBE113:
	.loc 1 344 0
	movl	$0, (%esp)	#,
	call	exit	#
.L332:
.LBB115:
.LBB116:
.LBB117:
.LBB118:
	.loc 1 1406 0
	imull	$12, bm+31392, %eax	#, bm.maxbubbles, tmp1933
.LBE118:
.LBE117:
	.loc 1 519 0
	movl	$0, bm+31360	#, bm.n_bubbles
.LBB121:
.LBB119:
	.loc 1 1406 0
	movl	%eax, (%esp)	# tmp1933,
	call	malloc	#
	movl	%eax, bm+31356	# tmp1935, bm.bubbles
	.loc 1 1409 0
	movl	bm+31344, %eax	# bm.bubblebuf, D.11957
	testl	%eax, %eax	# D.11957
	je	.L333	#,
	.loc 1 1410 0
	movl	%eax, (%esp)	# D.11957,
	call	free	#
.L333:
	.loc 1 1412 0
	movl	$1, 4(%esp)	#,
	movl	$3596, (%esp)	#,
	call	calloc	#
	movl	%eax, bm+31344	# tmp1938, bm.bubblebuf
	.loc 1 1415 0
	movl	bm+31348, %eax	# bm.waterlevels, D.11955
	testl	%eax, %eax	# D.11955
	je	.L334	#,
	.loc 1 1416 0
	movl	%eax, (%esp)	# D.11955,
	call	free	#
.L334:
	.loc 1 1418 0
	movl	$232, (%esp)	#,
	call	malloc	#
	.loc 1 1419 0
	xorl	%edx, %edx	# i
	.loc 1 1418 0
	movl	%eax, bm+31348	# D.11954, bm.waterlevels
.LVL431:
.L335:
	.loc 1 1420 0
	movl	$237568, (%eax,%edx,4)	#, MEM[base: D.11954_115, index: D.13881_151, step: 4, offset: 0B]
	.loc 1 1419 0
	addl	$1, %edx	#, i
.LVL432:
	cmpl	$58, %edx	#, i
	jne	.L335	#,
	.loc 1 1424 0
	movl	bm+31352, %eax	# bm.waterlevels_dy, D.11950
	testl	%eax, %eax	# D.11950
	je	.L336	#,
	.loc 1 1425 0
	movl	%eax, (%esp)	# D.11950,
	call	free	#
.LVL433:
.L336:
	.loc 1 1427 0
	movl	$4, 4(%esp)	#,
	movl	$58, (%esp)	#,
	call	calloc	#
.LBE119:
.LBE121:
.LBB122:
.LBB123:
	.loc 1 1380 0
	movl	$0, 48(%esp)	#, %sfp
	movl	$0, 52(%esp)	#, %sfp
.LBE123:
.LBE122:
.LBB125:
.LBB120:
	.loc 1 1427 0
	movl	%eax, bm+31352	# tmp1944, bm.waterlevels_dy
.LVL434:
.LBE120:
.LBE125:
.LBB126:
.LBB124:
	.loc 1 1382 0
	movl	bm+31384, %eax	# bm.load, D.11980
	testl	%eax, %eax	# D.11980
	je	.L337	#,
	.loc 1 1383 0
	movl	bm+31380, %edx	# bm.loadIndex, bm.loadIndex
	movl	(%eax,%edx,8), %ecx	# *D.11976_130,
	movl	4(%eax,%edx,8), %ebx	# *D.11976_130,
	.loc 1 1384 0
	movl	%eax, (%esp)	# D.11980,
	.loc 1 1383 0
	movl	%ecx, 48(%esp)	#, %sfp
	movl	%ebx, 52(%esp)	#, %sfp
.LVL435:
	.loc 1 1384 0
	call	free	#
.LVL436:
.L337:
	.loc 1 1387 0
	movl	bm+31388, %eax	# bm.total, D.11975
	.loc 1 1380 0
	xorl	%esi, %esi	# total
	xorl	%edi, %edi	# total
	.loc 1 1387 0
	testl	%eax, %eax	# D.11975
	je	.L338	#,
	.loc 1 1388 0
	movl	bm+31380, %edx	# bm.loadIndex, bm.loadIndex
	movl	(%eax,%edx,8), %esi	# *D.11974_138, total
	movl	4(%eax,%edx,8), %edi	# *D.11974_138, total
.LVL437:
	.loc 1 1389 0
	movl	%eax, (%esp)	# D.11975,
	call	free	#
.LVL438:
.L338:
	.loc 1 1393 0
	movl	bm+31340, %ebx	# bm.samples,
	.loc 1 1392 0
	movl	$0, bm+31380	#, bm.loadIndex
	.loc 1 1393 0
	movl	%ebx, 60(%esp)	#, %sfp
	sall	$3, %ebx	#, D.11971
	movl	%ebx, (%esp)	# D.11971,
	call	malloc	#
	.loc 1 1394 0
	movl	%ebx, (%esp)	# D.11971,
	.loc 1 1393 0
	movl	%eax, bm+31384	# D.11970, bm.load
	.loc 1 1394 0
	movl	%eax, 36(%esp)	# tmp2,
	call	malloc	#
	movl	36(%esp), %ecx	#,
	.loc 1 1395 0
	xorl	%edx, %edx	# i
	movl	%ecx, 56(%esp)	# D.11970, %sfp
	.loc 1 1394 0
	movl	%eax, bm+31388	# D.11969, bm.total
.LVL439:
	movl	%eax, 44(%esp)	# D.11969, %sfp
.LVL440:
.L339:
	.loc 1 1395 0
	cmpl	%edx, 60(%esp)	# i, %sfp
	jle	.L453	#,
	.loc 1 1396 0
	movl	56(%esp), %eax	# %sfp,
	movl	48(%esp), %ecx	# %sfp,
	movl	52(%esp), %ebx	# %sfp,
	movl	%ecx, (%eax,%edx,8)	#, MEM[base: D.11970_144, index: D.13872_207, step: 8, offset: 0B]
	movl	%ebx, 4(%eax,%edx,8)	#, MEM[base: D.11970_144, index: D.13872_207, step: 8, offset: 0B]
	.loc 1 1397 0
	movl	44(%esp), %eax	# %sfp,
	movl	%esi, (%eax,%edx,8)	# total, MEM[base: D.11969_148, index: D.13872_207, step: 8, offset: 0B]
	movl	%edi, 4(%eax,%edx,8)	# total, MEM[base: D.11969_148, index: D.13872_207, step: 8, offset: 0B]
	.loc 1 1395 0
	addl	$1, %edx	#, i
.LVL441:
	jmp	.L339	#
.LVL442:
.L453:
.LBE124:
.LBE126:
.LBE116:
.LBE115:
.LBB127:
	.loc 1 386 0
	movl	$0, 40(%esp)	#, %sfp
.L497:
.LVL443:
	.loc 1 362 0 discriminator 1
	movl	wmxp_display, %eax	# wmxp_display, wmxp_display
	movl	%eax, (%esp)	# wmxp_display,
	call	XPending	#
	testl	%eax, %eax	# D.9464
	jne	.L349	#,
	.loc 1 393 0
	movl	$33000, (%esp)	#,
	call	usleep	#
.LBB128:
.LBB129:
	.loc 1 1435 0
	call	system_memory	#
	testl	%eax, %eax	# D.10792
	je	.L350	#,
	.loc 1 1437 0
	movl	bm+31456, %eax	# bm.mem_used,
	movl	$100, %esi	#, tmp1997
	imull	$100, bm+31460, %ecx	#, bm.mem_used, tmp1991
	movl	bm+31468, %ebx	# bm.mem_max, bm.mem_max
	mull	%esi	# tmp1997
	movl	%ebx, 12(%esp)	# bm.mem_max,
	addl	%ecx, %edx	# tmp1991,
	movl	bm+31464, %ecx	# bm.mem_max, bm.mem_max
	movl	%edx, 52(%esp)	#, %sfp
	movl	%eax, 48(%esp)	#, %sfp
	movl	48(%esp), %edx	# %sfp,
	movl	%ecx, 8(%esp)	# bm.mem_max,
	movl	52(%esp), %ecx	# %sfp,
	movl	%edx, (%esp)	#,
	movl	%ecx, 4(%esp)	#,
	call	__udivdi3	#
	.loc 1 1439 0
	movl	bm+31484, %ebx	# bm.swap_max, D.10786
	movl	bm+31480, %ecx	# bm.swap_max, D.10786
	.loc 1 1437 0
	movl	%eax, bm+31492	# tmp2542, bm.mem_percent
	.loc 1 1439 0
	movl	%ebx, %eax	# D.10786,
	orl	%ecx, %eax	# D.10786,
	je	.L351	#,
	.loc 1 1440 0
	movl	bm+31472, %eax	# bm.swap_used,
	imull	$100, bm+31476, %edi	#, bm.swap_used, tmp2009
	movl	%ecx, 8(%esp)	# D.10786,
	movl	%ebx, 12(%esp)	# D.10786,
	mull	%esi	# tmp1997
	addl	%edi, %edx	# tmp2009,
	movl	%edx, 52(%esp)	#, %sfp
	movl	52(%esp), %ecx	# %sfp,
	movl	%eax, 48(%esp)	#, %sfp
	movl	48(%esp), %edx	# %sfp,
	movl	%ecx, 4(%esp)	#,
	movl	%edx, (%esp)	#,
	call	__udivdi3	#
	movl	%eax, bm+31488	# tmp2544, bm.swap_percent
.L350:
.LVL444:
.LBE129:
.LBE128:
.LBB131:
.LBB132:
	.loc 1 533 0
	movl	bm+31356, %ecx	# bm.bubbles,
	movl	%ecx, 56(%esp)	#, %sfp
.LVL445:
	.loc 1 550 0
	call	system_cpu	#
.LVL446:
	movl	%eax, 44(%esp)	#, %sfp
.LVL447:
	.loc 1 553 0
	movl	memscreen_enabled, %eax	# memscreen_enabled,
.LVL448:
	testl	%eax, %eax	#
	je	.L352	#,
	.loc 1 554 0
	call	system_loadavg	#
.L352:
.LVL449:
	.loc 1 569 0
	imull	$237568, bm+31492, %edx	#, bm.mem_percent, tmp2025
	movl	$1374389535, %eax	#,
	.loc 1 574 0
	movl	bm+31348, %ecx	# bm.waterlevels, D.12240
	.loc 1 579 0
	movl	bm+31352, %esi	# bm.waterlevels_dy, D.12238
	.loc 1 569 0
	mull	%edx	# tmp2025
	.loc 1 572 0
	movl	$235520, %eax	#, waterlevels_goal.41
	.loc 1 569 0
	shrl	$5, %edx	#, tmp2027
	.loc 1 572 0
	subl	%edx, %eax	# tmp2027, waterlevels_goal.41
	.loc 1 574 0
	movl	%eax, (%ecx)	# waterlevels_goal.41, *D.12240_197
	.loc 1 575 0
	movl	%eax, 228(%ecx)	# waterlevels_goal.41, MEM[(int *)D.12240_197 + 228B]
.LVL450:
	.loc 1 577 0
	movl	$1, %eax	#, x
.LVL451:
	.p2align 4,,7
	.p2align 3
.L355:
	.loc 1 580 0
	movl	-4(%ecx,%eax,4), %edx	# MEM[base: D.12240_197, index: x_560, step: 4, offset: 4294967292B], tmp2032
	.loc 1 579 0
	movl	(%esi,%eax,4), %edi	# MEM[base: D.12238_201, index: x_560, step: 4, offset: 0B], D.12235
	.loc 1 580 0
	addl	$1, %eax	#, x
	movl	-4(%ecx,%eax,4), %ebx	# MEM[base: D.12240_197, index: x_212, step: 4, offset: 4294967292B], tmp2035
	addl	(%ecx,%eax,4), %edx	# MEM[base: D.12240_197, index: x_212, step: 4, offset: 0B], tmp2032
	negl	%ebx	# tmp2035
	leal	(%edx,%ebx,2), %edx	#, tmp2040
	.loc 1 581 0
	imull	bm+31444, %edx	# bm.volatility_int, tmp2040
	sarl	$13, %edx	#, tmp2040
	.loc 1 579 0
	addl	%edi, %edx	# D.12235, D.12218
	movl	%edx, -4(%esi,%eax,4)	# D.12218, MEM[base: D.12238_201, index: x_212, step: 4, offset: 4294967292B]
	.loc 1 583 0
	imull	bm+31448, %edx	# bm.viscosity_int, D.12215
	.loc 1 584 0
	sarl	$12, %edx	#, D.12215
	movl	%edx, -4(%esi,%eax,4)	# D.12215, MEM[base: D.12238_201, index: x_212, step: 4, offset: 4294967292B]
	.loc 1 586 0
	movl	bm+31452, %ebx	# bm.speed_limit_int, D.12214
	cmpl	%ebx, %edx	# D.12214, D.12215
	jg	.L499	#,
	.loc 1 588 0
	negl	%ebx	# D.12213
	cmpl	%ebx, %edx	# D.12213, D.12215
	jge	.L354	#,
.L499:
	.loc 1 589 0
	movl	%ebx, -4(%esi,%eax,4)	# D.12213,
.L354:
.LVL452:
	.loc 1 577 0
	cmpl	$57, %eax	#, x
	jne	.L355	#,
	movl	$237568, %edi	#, waterlevel_min
	xorl	%ebx, %ebx	# waterlevel_max
	movl	$1, %edx	#, x
	jmp	.L360	#
.LVL453:
.L503:
	.loc 1 598 0
	movl	$237568, (%ecx,%edx,4)	#, MEM[base: D.12240_197, index: x_559, step: 4, offset: 0B]
	.loc 1 599 0
	movl	$0, (%esi,%edx,4)	#,* D.12238
	movl	(%ecx,%edx,4), %eax	#* D.12240, prephitmp.866
.L357:
	.loc 1 606 0
	cmpl	%eax, %ebx	# prephitmp.866, waterlevel_max
	jae	.L358	#,
	movl	%eax, %ebx	# prephitmp.866, waterlevel_max
.L358:
.LVL454:
	cmpl	%eax, %edi	# prephitmp.866, waterlevel_min
	jbe	.L359	#,
	movl	%eax, %edi	# prephitmp.866, waterlevel_min
.L359:
.LVL455:
	.loc 1 592 0
	addl	$1, %edx	#, x
.LVL456:
	cmpl	$57, %edx	#, x
	je	.L502	#,
.LVL457:
.L360:
	.loc 1 594 0
	movl	(%ecx,%edx,4), %eax	# MEM[base: D.12240_197, index: x_559, step: 4, offset: 0B], prephitmp.866
	addl	(%esi,%edx,4), %eax	# MEM[base: D.12238_201, index: x_559, step: 4, offset: 0B], prephitmp.866
	.loc 1 596 0
	cmpl	$237568, %eax	#, prephitmp.866
	.loc 1 594 0
	movl	%eax, (%ecx,%edx,4)	# prephitmp.866, MEM[base: D.12240_197, index: x_559, step: 4, offset: 0B]
	.loc 1 596 0
	jg	.L503	#,
	.loc 1 600 0
	testl	%eax, %eax	# prephitmp.866
	jns	.L357	#,
	.loc 1 602 0
	movl	$0, (%ecx,%edx,4)	#, MEM[base: D.12240_197, index: x_559, step: 4, offset: 0B]
	.loc 1 603 0
	movl	$0, (%esi,%edx,4)	#,* D.12238
	movl	(%ecx,%edx,4), %eax	#* D.12240, prephitmp.866
	jmp	.L357	#
.LVL458:
.L502:
	.loc 1 612 0
	shrl	$12, %edi	#, waterlevel_min
.LVL459:
	.loc 1 633 0
	movl	bm+31344, %eax	# bm.bubblebuf, bm.bubblebuf
	imull	$58, %edi, %edx	#,,
.LVL460:
	.loc 1 612 0
	movl	%edi, 48(%esp)	# waterlevel_min, %sfp
.LVL461:
	.loc 1 613 0
	shrl	$12, %ebx	#, real_waterlevel_max
.LVL462:
	.loc 1 636 0
	xorl	%edi, %edi	# x
.LVL463:
	.loc 1 633 0
	movl	$2, 4(%esp)	#,
	movl	%eax, (%esp)	# bm.bubblebuf,
	movl	%edx, 60(%esp)	#, %sfp
	movl	%edx, 8(%esp)	#,
	call	memset	#
.LVL464:
	.p2align 4,,7
	.p2align 3
.L361:
	.loc 1 639 0
	movl	bm+31348, %eax	# bm.waterlevels, bm.waterlevels
	leal	0(,%edi,4), %esi	#, D.12237
	movl	(%eax,%edi,4), %edx	# *D.12225_756, tmp2057
	.loc 1 612 0
	movl	48(%esp), %eax	# %sfp, y
	.loc 1 639 0
	sarl	$12, %edx	#, tmp2057
	.loc 1 638 0
	cmpl	%eax, %edx	#, tmp2057
	jle	.L366	#,
	.loc 1 301 0
	movl	60(%esp), %ecx	# %sfp, ivtmp.1520
	addl	%edi, %ecx	# x, ivtmp.1520
.LVL465:
	.p2align 4,,7
	.p2align 3
.L362:
	.loc 1 640 0
	movl	bm+31344, %edx	# bm.bubblebuf, bm.bubblebuf
	.loc 1 639 0
	addl	$1, %eax	#, y
.LVL466:
	.loc 1 640 0
	movb	$2, (%edx,%ecx)	#, *D.12206_321
	.loc 1 639 0
	movl	bm+31348, %edx	# bm.waterlevels, bm.waterlevels
	addl	$58, %ecx	#, ivtmp.1520
	movl	(%edx,%esi), %edx	# *D.12225_326, tmp2052
	sarl	$12, %edx	#, tmp2052
	.loc 1 638 0
	cmpl	%edx, %eax	# tmp2052, y
	jl	.L362	#,
.L366:
	.loc 1 643 0
	cmpl	%eax, %ebx	# y, real_waterlevel_max
	jbe	.L363	#,
	.loc 1 301 0
	imull	$58, %eax, %edx	#, y, tmp2054
	.loc 1 643 0
	addl	%edi, %edx	# x, ivtmp.1515
	.p2align 4,,7
	.p2align 3
.L364:
	.loc 1 644 0
	movl	bm+31344, %ecx	# bm.bubblebuf, bm.bubblebuf
	.loc 1 643 0
	addl	$1, %eax	#, y
.LVL467:
	.loc 1 644 0
	movb	$0, (%ecx,%edx)	#, *D.12206_333
	.loc 1 643 0
	addl	$58, %edx	#, ivtmp.1515
	cmpl	%eax, %ebx	# y, real_waterlevel_max
	ja	.L364	#,
.L363:
	.loc 1 636 0
	addl	$1, %edi	#, x
.LVL468:
	cmpl	$58, %edi	#, x
	jne	.L361	#,
	.loc 1 648 0
	imull	$-58, %ebx, %eax	#, real_waterlevel_max, tmp2059
.LVL469:
	imull	$58, %ebx, %ebx	#, real_waterlevel_max, tmp2063
.LVL470:
	addl	bm+31344, %ebx	# bm.bubblebuf, tmp2063
	movl	$0, 4(%esp)	#,
	addl	$3364, %eax	#, tmp2060
	movl	%eax, 8(%esp)	# tmp2060,
	movl	%ebx, (%esp)	# tmp2063,
	call	memset	#
	.loc 1 652 0
	movl	bm+31360, %edx	# bm.n_bubbles, prephitmp.875
	cmpl	bm+31392, %edx	# bm.maxbubbles, prephitmp.875
	jl	.L504	#,
.L367:
	.loc 1 681 0
	testl	%edx, %edx	# prephitmp.875
	je	.L371	#,
	xorl	%ecx, %ecx	# SR.543
	jmp	.L384	#
.LVL471:
.L505:
	.loc 1 713 0
	movl	bm+31436, %ebx	# bm.ripples_int, D.12188
	testl	%ebx, %ebx	# D.12188
	je	.L376	#,
	.loc 1 716 0
	addl	%ebx, (%edx,%esi,4)	# D.12188, *D.12135_516
	.loc 1 717 0
	movl	(%eax), %ebx	# D.12158_440->x, D.12158_440->x
	movl	bm+31436, %esi	# bm.ripples_int, bm.ripples_int
	leal	(%esi,%esi,2), %esi	#, tmp2151
	addl	%esi, (%edx,%ebx,4)	# tmp2151, *D.12140_527
	.loc 1 718 0
	movl	(%eax), %ebx	# D.12158_440->x, D.12158_440->x
	movl	bm+31436, %esi	# bm.ripples_int, bm.ripples_int
	addl	%esi, 4(%edx,%ebx,4)	# bm.ripples_int, *D.12128_540
.L376:
	.loc 1 722 0
	movl	bm+31360, %edx	# bm.n_bubbles, D.12199
.L500:
	movl	56(%esp), %esi	# %sfp,
	subl	$1, %edx	#, tmp2158
	.loc 1 731 0
	subl	$1, %ecx	#, SR.543
	.loc 1 722 0
	leal	(%edx,%edx,2), %ebx	#, tmp2161
	.loc 1 681 0
	addl	$1, %ecx	#, SR.543
	cmpl	%edx, %ecx	# prephitmp.875, SR.543
	.loc 1 722 0
	leal	(%esi,%ebx,4), %ebx	#, D.12146
	movl	(%ebx), %esi	#* D.12146, D.12145
	movl	%esi, (%eax)	# D.12145, D.12158_440->x
	.loc 1 723 0
	movl	4(%ebx), %esi	#, D.12144
	movl	%esi, 4(%eax)	# D.12144, D.12158_440->y
	.loc 1 724 0
	movl	8(%ebx), %ebx	#, D.12143
	movl	%ebx, 8(%eax)	# D.12143, D.12158_440->dy
	.loc 1 725 0
	movl	%edx, bm+31360	# prephitmp.875, bm.n_bubbles
	.loc 1 681 0
	jae	.L371	#,
.L384:
	.loc 1 683 0
	movl	56(%esp), %esi	# %sfp,
	leal	(%ecx,%ecx,2), %eax	#, tmp2129
	leal	(%esi,%eax,4), %eax	#, D.12158
	movl	8(%eax), %ebx	# D.12158_440->dy, D.12155
	subl	bm+31440, %ebx	# bm.gravity_int, D.12155
	.loc 1 689 0
	movl	(%eax), %edi	# D.12158_440->x, D.12151
	.loc 1 683 0
	movl	%ebx, 8(%eax)	# D.12155, D.12158_440->dy
	.loc 1 686 0
	addl	4(%eax), %ebx	# D.12158_440->y, D.12153
	.loc 1 689 0
	leal	-1(%edi), %esi	#, tmp2134
	cmpl	$55, %esi	#, tmp2134
	.loc 1 686 0
	movl	%ebx, 4(%eax)	# D.12153, D.12158_440->y
	.loc 1 689 0
	ja	.L500	#,
	cmpl	$237568, %ebx	#, D.12153
	jg	.L500	#,
	.loc 1 712 0
	movl	bm+31348, %edx	# bm.waterlevels, D.12240
	movl	(%edx,%edi,4), %edi	# *D.12140_505, D.12139
	cmpl	%edi, %ebx	# D.12139, D.12153
	jl	.L505	#,
.LVL472:
	.loc 1 746 0
	movl	%ebx, %eax	# D.12153, tmp2166
	shrl	$12, %eax	#, tmp2166
	imull	$58, %eax, %eax	#, tmp2166, tmp2167
	addl	%eax, %esi	# tmp2167, D.12284
	addl	bm+31344, %esi	# bm.bubblebuf, D.12284
	.loc 1 747 0
	cmpl	%edi, %ebx	# D.12139, D.12153
	.loc 1 759 0
	leal	58(%esi), %eax	#, D.12268
	.loc 1 747 0
	jb	.L380	#,
	.loc 1 748 0
	movzbl	(%esi), %eax	# *D.12284_590, D.12121
	cmpb	$1, %al	#, D.12121
	jbe	.L506	#,
.L378:
	.loc 1 755 0
	movzbl	2(%esi), %eax	# MEM[(unsigned char *)D.12284_590 + 2B], D.12121
	.loc 1 752 0
	movb	$2, 1(%esi)	#, MEM[(unsigned char *)D.12284_590 + 1B]
	.loc 1 755 0
	cmpb	$1, %al	#, D.12121
	jbe	.L507	#,
.L379:
	.loc 1 757 0
	leal	58(%esi), %eax	#, D.12268
.L380:
	.loc 1 771 0
	cmpl	$237311, %ebx	#, D.12153
	.loc 1 763 0
	movb	$2, (%eax)	#, *D.12268_1188
	.loc 1 765 0
	movb	$2, 1(%eax)	#, MEM[(unsigned char *)D.12268_1188 + 1B]
	.loc 1 767 0
	movb	$2, 2(%eax)	#, MEM[(unsigned char *)D.12268_1188 + 2B]
	.loc 1 771 0
	ja	.L501	#,
	.loc 1 772 0
	movzbl	58(%eax), %edx	# MEM[(unsigned char *)D.12268_1188 + 58B], D.12121
	cmpb	$1, %dl	#, D.12121
	jbe	.L508	#,
.L382:
	.loc 1 780 0
	movzbl	60(%eax), %edx	# MEM[(unsigned char *)D.12268_1188 + 60B], D.12121
	.loc 1 777 0
	movb	$2, 59(%eax)	#, MEM[(unsigned char *)D.12268_1188 + 59B]
	.loc 1 780 0
	cmpb	$1, %dl	#, D.12121
	jbe	.L383	#,
.L501:
	.loc 1 781 0
	movl	bm+31360, %edx	# bm.n_bubbles, prephitmp.875
	.loc 1 681 0
	addl	$1, %ecx	#, SR.543
	cmpl	%edx, %ecx	# prephitmp.875, SR.543
	jb	.L384	#,
.LVL473:
.L371:
	.loc 1 795 0
	movl	bm+31488, %ebx	# bm.swap_percent, D.12115
	.loc 1 796 0
	movl	$100, %ecx	#, D.12109
	movzbl	bm+31370, %edx	# bm.liquid_noswap, tmp2182
	.loc 1 795 0
	movzbl	bm+31378, %eax	# bm.liquid_maxswap, tmp2185
	.loc 1 796 0
	movl	bm+31368, %edi	# bm.liquid_noswap, D.12113
	subl	%ebx, %ecx	# D.12115, D.12109
	imull	%ecx, %edx	# D.12109, tmp2182
	.loc 1 795 0
	imull	%ebx, %eax	# D.12115, tmp2185
	addl	%edx, %eax	# tmp2182, tmp2186
	.loc 1 796 0
	movl	$1374389535, %edx	#,
	mull	%edx	#
	movl	%edx, %esi	#, tmp2187
	.loc 1 799 0
	movzbl	bm+31366, %edx	# bm.air_noswap, tmp2194
	.loc 1 796 0
	shrl	$5, %esi	#, tmp2187
	.loc 1 794 0
	movl	%esi, %eax	#,
	.loc 1 800 0
	andl	$255, %esi	#, D.12105
	.loc 1 794 0
	movb	%al, 530(%esp)	#, FRAME.48.reds
	.loc 1 798 0
	movzbl	bm+31374, %eax	# bm.air_maxswap, tmp2197
	.loc 1 799 0
	imull	%ecx, %edx	# D.12109, tmp2194
	.loc 1 798 0
	imull	%ebx, %eax	# D.12115, tmp2197
	addl	%eax, %edx	# tmp2197, tmp2198
	.loc 1 799 0
	movl	$1374389535, %eax	#,
	mull	%edx	# tmp2198
	shrl	$5, %edx	#, tmp2199
	.loc 1 797 0
	movb	%dl, 532(%esp)	# tmp2199, FRAME.48.reds
	.loc 1 800 0
	movzbl	%dl, %edx	# tmp2199, D.12092
	addl	%esi, %edx	# D.12105, tmp2205
	sarl	%edx	# tmp2205
	movb	%dl, 531(%esp)	# tmp2205, FRAME.48.reds
	.loc 1 804 0
	movl	%edi, %edx	# D.12113,
	.loc 1 812 0
	andl	$255, %edi	#, tmp2231
	.loc 1 804 0
	movzbl	%dh, %esi	#, tmp2208
	.loc 1 803 0
	movl	bm+31376, %edx	# bm.liquid_maxswap,
	.loc 1 804 0
	imull	%ecx, %esi	# D.12109, tmp2208
	.loc 1 812 0
	imull	%ecx, %edi	# D.12109, tmp2231
	.loc 1 803 0
	movzbl	%dh, %eax	#, tmp2211
	.loc 1 804 0
	movl	$1374389535, %edx	#,
	.loc 1 803 0
	imull	%ebx, %eax	# D.12115, tmp2211
	addl	%esi, %eax	# tmp2208, tmp2212
	.loc 1 804 0
	mull	%edx	#
	movl	%edx, %esi	#, tmp2213
	.loc 1 807 0
	movl	bm+31364, %edx	# bm.air_noswap,
	.loc 1 804 0
	shrl	$5, %esi	#, tmp2213
	.loc 1 802 0
	movl	%esi, %eax	#,
	.loc 1 808 0
	andl	$255, %esi	#, D.12074
	.loc 1 802 0
	movb	%al, 527(%esp)	#, FRAME.48.grns
	.loc 1 807 0
	movzbl	%dh, %edx	#,
	imull	%ecx, %edx	# D.12109,
	movl	%edx, 60(%esp)	#, %sfp
	.loc 1 806 0
	movl	bm+31372, %edx	# bm.air_maxswap,
	movzbl	%dh, %eax	#, tmp2221
	movl	60(%esp), %edx	# %sfp, tmp2222
	imull	%ebx, %eax	# D.12115, tmp2221
	addl	%eax, %edx	# tmp2221, tmp2222
	.loc 1 807 0
	movl	$1374389535, %eax	#,
	mull	%edx	# tmp2222
	.loc 1 811 0
	movzbl	bm+31376, %eax	# bm.liquid_maxswap, tmp2233
	.loc 1 807 0
	shrl	$5, %edx	#, tmp2223
	.loc 1 811 0
	imull	%ebx, %eax	# D.12115, tmp2233
	.loc 1 805 0
	movb	%dl, 529(%esp)	# tmp2223, FRAME.48.grns
	.loc 1 808 0
	movzbl	%dl, %edx	# tmp2223, D.12063
	addl	%esi, %edx	# D.12074, tmp2229
	sarl	%edx	# tmp2229
	.loc 1 811 0
	addl	%edi, %eax	# tmp2231, tmp2234
	.loc 1 808 0
	movb	%dl, 528(%esp)	# tmp2229, FRAME.48.grns
	.loc 1 812 0
	movl	$1374389535, %edx	#,
	mull	%edx	#
	movl	%edx, %esi	#, tmp2235
	shrl	$5, %esi	#, tmp2235
	.loc 1 814 0
	movzbl	bm+31372, %edx	# bm.air_maxswap, tmp2241
	.loc 1 810 0
	movl	%esi, %eax	#,
	.loc 1 816 0
	andl	$255, %esi	#, D.12047
	.loc 1 810 0
	movb	%al, 524(%esp)	#, FRAME.48.blus
	.loc 1 815 0
	movzbl	bm+31364, %eax	# bm.air_noswap, tmp2239
	.loc 1 814 0
	imull	%ebx, %edx	# D.12115, tmp2241
	.loc 1 815 0
	imull	%ecx, %eax	# D.12109, tmp2239
	.loc 1 814 0
	addl	%eax, %edx	# tmp2239, tmp2242
	.loc 1 815 0
	movl	$1374389535, %eax	#,
	mull	%edx	# tmp2242
	shrl	$5, %edx	#, tmp2243
	.loc 1 816 0
	movzbl	%dl, %eax	# tmp2243, D.12038
	.loc 1 813 0
	movb	%dl, 526(%esp)	# tmp2243, FRAME.48.blus
	.loc 1 816 0
	movl	bm+31344, %edx	# bm.bubblebuf, ivtmp.1504
	addl	%esi, %eax	# D.12047, tmp2249
	sarl	%eax	# tmp2249
	movb	%al, 525(%esp)	# tmp2249, FRAME.48.blus
	movl	$bm+8, %eax	#, ivtmp.1503
.L385:
.LBB133:
.LBB134:
	.loc 1 828 0
	movzbl	(%edx), %ecx	# MEM[base: D.13810_2219, offset: 0B], MEM[base: D.13810_2219, offset: 0B]
	movzbl	530(%esp,%ecx), %ecx	# FRAME.48.reds, tmp2252
	movb	%cl, (%eax)	# tmp2252, MEM[base: D.13811_2079, offset: 0B]
	.loc 1 829 0
	movzbl	(%edx), %ecx	# MEM[base: D.13810_2219, offset: 0B], MEM[base: D.13810_2219, offset: 0B]
	movzbl	527(%esp,%ecx), %ecx	# FRAME.48.grns, tmp2254
	movb	%cl, 1(%eax)	# tmp2254, MEM[base: D.13811_2079, offset: 1B]
	.loc 1 830 0
	movzbl	(%edx), %ecx	# MEM[base: D.13810_2219, offset: 0B], MEM[base: D.13810_2219, offset: 0B]
	addl	$1, %edx	#, ivtmp.1504
	movzbl	524(%esp,%ecx), %ecx	# FRAME.48.blus, tmp2256
	movb	%cl, 2(%eax)	# tmp2256, MEM[base: D.13811_2079, offset: 2B]
	addl	$3, %eax	#, ivtmp.1503
	.loc 1 827 0
	cmpl	$bm+10100, %eax	#, ivtmp.1503
	jne	.L385	#,
.LBE134:
.LBE133:
	.loc 1 835 0
	movl	duck_enabled, %eax	# duck_enabled,
	testl	%eax, %eax	#
	je	.L386	#,
	.loc 1 838 0
	movl	48(%esp), %edx	# %sfp, posy
	.loc 1 836 0
	movl	last_action_min.7333, %eax	# last_action_min, last_action_min.45
	.loc 1 838 0
	subl	$14, %edx	#, posy
	.loc 1 836 0
	cmpl	%eax, 48(%esp)	# last_action_min.45, %sfp
	jbe	.L388	#,
	.loc 1 837 0
	leal	-14(%eax), %edx	#, posy
.L388:
.LVL474:
.LBB135:
.LBB136:
	.loc 1 1349 0
	movl	upside_down_duck_enabled, %eax	# upside_down_duck_enabled,
	.loc 1 1350 0
	movl	upsidedown.7569, %ebx	# upsidedown, prephitmp.875
	.loc 1 1349 0
	testl	%eax, %eax	#
	je	.L390	#,
	.loc 1 1350 0
	cmpl	$1, %edx	#, posy
	jle	.L509	#,
.L391:
	.loc 1 1352 0
	cmpl	$5, %edx	#, posy
	jle	.L393	#,
	cmpl	$1, %ebx	#, prephitmp.875
	.p2align 4,,2
	jne	.L393	#,
	.loc 1 1353 0
	movl	$0, upsidedown.7569	#, upsidedown
	xorb	%bl, %bl	#
.L390:
	.loc 1 1358 0
	movl	rp.7567, %eax	# rp, rp.52
	leal	1(%eax), %ecx	#, tmp2265
	cmpl	$9, %eax	#, rp.52
	movl	%ecx, rp.7567	# tmp2265, rp
	jle	.L510	#,
	.loc 1 1364 0
	movl	rev.7568, %esi	# rev, prephitmp.875
	.loc 1 1363 0
	movl	$0, rp.7567	#, rp
	.loc 1 1365 0
	movl	tx.7566, %ecx	# tx, tx.55
	.loc 1 1364 0
	testl	%esi, %esi	# prephitmp.875
	jne	.L396	#,
	.loc 1 1365 0
	leal	-1(%ecx), %eax	#, prephitmp.875
	cmpl	$-18, %ecx	#, tx.55
	movl	%eax, tx.7566	# prephitmp.875, tx
	jge	.L397	#,
	.loc 1 1366 0
	movl	$-18, tx.7566	#, tx
	.loc 1 1367 0
	movl	$-18, %eax	#, prephitmp.875
	movw	$1, %si	#,
	movl	$1, rev.7568	#, rev
.L397:
.LBB137:
.LBB138:
	.loc 1 1335 0
	movl	totalcounter.7562, %ecx	# totalcounter, totalcounter
	.loc 1 1330 0
	movl	$0, 416(%esp)	#, outp
	movl	$0, 420(%esp)	#, outp
	movl	$0, 424(%esp)	#, outp
	.loc 1 1335 0
	addl	$1, %ecx	#, totalcounter.59
	cmpl	$15, %ecx	#, totalcounter.59
	.loc 1 1330 0
	movl	$0, 428(%esp)	#, outp
	movl	$1, 432(%esp)	#, outp
	movl	$1, 436(%esp)	#, outp
	movl	$1, 440(%esp)	#, outp
	movl	$1, 444(%esp)	#, outp
	movl	$2, 448(%esp)	#, outp
	movl	$2, 452(%esp)	#, outp
	movl	$2, 456(%esp)	#, outp
	movl	$2, 460(%esp)	#, outp
	movl	$1, 464(%esp)	#, outp
	movl	$1, 468(%esp)	#, outp
	movl	$1, 472(%esp)	#, outp
	movl	$1, 476(%esp)	#, outp
	.loc 1 1335 0
	movl	%ecx, totalcounter.7562	# totalcounter.59, totalcounter
	jle	.L511	#,
	.loc 1 1336 0
	movl	$0, totalcounter.7562	#, totalcounter
	xorl	%ecx, %ecx	# prephitmp.974
.L399:
.LBE138:
.LBE137:
	.loc 1 1375 0
	movl	%ebx, 4(%esp)	# prephitmp.875,
	movl	%esi, (%esp)	# prephitmp.875,
	call	duck_set	#
.LVL475:
.L386:
.LBE136:
.LBE135:
	.loc 1 841 0
	movl	cpu_enabled, %eax	# cpu_enabled,
	testl	%eax, %eax	#
	jne	.L400	#,
	movl	memscreen_enabled, %edi	# memscreen_enabled,
	testl	%edi, %edi	#
	je	.L401	#,
.L400:
.LVL476:
.LBB157:
.LBB158:
	.loc 1 1166 0
	movl	yoh.7508, %edx	# yoh, prephitmp.997
	movl	44(%esp), %eax	# %sfp, avg_lsm.998
	addl	avg.7509, %eax	# avg, avg_lsm.998
	.loc 1 1169 0
	addl	$1, %edx	#, yoh_lsm.999
	cmpl	$2, %edx	#, yoh_lsm.999
	jle	.L512	#,
.LVL477:
.L426:
	.loc 1 1170 0
	movl	%eax, %ecx	# avg_lsm.998, tmp2270
.LBB159:
.LBB160:
	.loc 1 1044 0
	movl	$digits+216, %edi	#, ivtmp.1484
.LBE160:
.LBE159:
	.loc 1 1170 0
	shrl	$31, %ecx	#, tmp2270
	addl	%eax, %ecx	# avg_lsm.998, tmp2271
	.loc 1 1172 0
	movl	$1717986919, %eax	#,
	.loc 1 1170 0
	movl	%ecx, %ebx	# tmp2271,
	sarl	%ebx	#
	.loc 1 1172 0
	imull	%ebx	#
	sarl	$31, %ecx	#, tmp2276
	.loc 1 1170 0
	movl	%ebx, 44(%esp)	#, %sfp
.LVL478:
.LBB164:
.LBB165:
	.loc 1 301 0
	movl	$kit.7513, 60(%esp)	#, %sfp
.LBE165:
.LBE164:
	.loc 1 1172 0
	sarl	$2, %edx	#,
	subl	%ecx, %edx	# tmp2276,
	.loc 1 1173 0
	cmpl	$10, %edx	#,
	.loc 1 1172 0
	movl	%edx, 56(%esp)	#, %sfp
.LVL479:
	.loc 1 1173 0
	je	.L513	#,
.LVL480:
	.p2align 4,,7
	.p2align 3
.L466:
.LBB181:
.LBB182:
	.loc 1 1046 0
	movl	60(%esp), %ebx	# %sfp, to
.LVL481:
	.loc 1 1047 0
	movl	%edi, %ecx	# ivtmp.1484, from
.LVL482:
	.loc 1 301 0
	movl	%ebx, %eax	# to, tmp2294
	orl	%edi, %eax	# ivtmp.1484, tmp2294
	.loc 1 1047 0
	testb	$3, %al	#, tmp2294
	jne	.L460	#,
	.loc 1 1049 0
	movl	(%edi), %eax	# MEM[base: D.13788_2644, offset: 0B], vect_var_.1196
	addl	$20, %ecx	#, from
.LBE182:
.LBE181:
.LBB186:
.LBB166:
	.loc 1 301 0
	movl	$1, %esi	#, ivtmp.1021
.LBE166:
.LBE186:
.LBB187:
.LBB183:
	.loc 1 1049 0
	movl	%eax, (%ebx)	# vect_var_.1196, MEM[base: to_978, offset: 0B]
.LVL483:
	movl	4(%edi), %eax	# MEM[base: D.13788_2644, offset: 4B], vect_var_.1196
	movl	%eax, 4(%ebx)	# vect_var_.1196, MEM[base: to_978, offset: 4B]
	movl	8(%edi), %eax	# MEM[base: D.13788_2644, offset: 8B], vect_var_.1196
	movl	%eax, 8(%ebx)	# vect_var_.1196, MEM[base: to_978, offset: 8B]
	movl	12(%edi), %eax	# MEM[base: D.13788_2644, offset: 12B], vect_var_.1196
	movl	%eax, 12(%ebx)	# vect_var_.1196, MEM[base: to_978, offset: 12B]
	movl	16(%edi), %eax	# MEM[base: D.13788_2644, offset: 16B], vect_var_.1196
	movl	%eax, 16(%ebx)	# vect_var_.1196, MEM[base: to_978, offset: 16B]
	.loc 1 301 0
	addl	$20, %ebx	#, to
.L414:
.LBE183:
.LBE187:
.LBB188:
.LBB167:
	xorl	%eax, %eax	# ivtmp.1469
	.p2align 4,,7
	.p2align 3
.L415:
.LBE167:
.LBE188:
.LBB189:
.LBB184:
	.loc 1 1049 0
	movzbl	(%ecx,%eax), %edx	# MEM[base: from_2639, index: ivtmp.1469_593, offset: 0B], D.12456
	movb	%dl, (%ebx,%eax)	# D.12456, MEM[base: to_2641, index: ivtmp.1469_593, offset: 0B]
	addl	$1, %eax	#, ivtmp.1469
	.loc 1 1048 0
	cmpl	%esi, %eax	# ivtmp.1021, ivtmp.1469
	jne	.L415	#,
	addl	$285, %edi	#, ivtmp.1484
	addl	$75, 60(%esp)	#, %sfp
	.loc 1 1044 0
	cmpl	$digits+2781, %edi	#, ivtmp.1484
	jne	.L466	#,
	movl	56(%esp), %edx	# %sfp,
	movl	$kit.7513+18, 60(%esp)	#, %sfp
	leal	(%edx,%edx,8), %eax	#, tmp2301
	addl	%eax, %eax	# tmp2302
.LBE184:
.LBE189:
.LBB190:
.LBB191:
	.loc 1 301 0
	movl	%eax, %ecx	# tmp2302,
	subl	$digits, %ecx	#,
	subl	%eax, %ecx	# tmp2302,
.LBE191:
.LBE190:
.LBB195:
.LBB185:
	leal	digits(%eax), %edi	#, ivtmp.1453
.LBE185:
.LBE195:
.LBB196:
.LBB192:
	movl	%ecx, 56(%esp)	#, %sfp
	.p2align 4,,7
	.p2align 3
.L419:
.LVL484:
	.loc 1 1046 0
	movl	60(%esp), %ebx	# %sfp, to
.LVL485:
	.loc 1 1047 0
	movl	56(%esp), %esi	# %sfp,
	.loc 1 301 0
	movl	%ebx, %eax	# to, tmp2310
	orl	%edi, %eax	# ivtmp.1453, tmp2310
	.loc 1 1047 0
	testb	$3, %al	#, tmp2310
	leal	digits(%edi,%esi), %ecx	#, from
.LVL486:
	jne	.L461	#,
	.loc 1 1049 0
	movl	(%edi), %eax	# MEM[base: D.13744_918, offset: 0B], vect_var_.1171
	addl	$20, %ecx	#, from
.LVL487:
.LBE192:
.LBE196:
.LBB197:
.LBB168:
	.loc 1 301 0
	movl	$1, %esi	#, ivtmp.1019
.LBE168:
.LBE197:
.LBB198:
.LBB193:
	.loc 1 1049 0
	movl	%eax, (%ebx)	# vect_var_.1171, MEM[base: to_994, offset: 0B]
.LVL488:
	movl	4(%edi), %eax	# MEM[base: D.13744_918, offset: 4B], vect_var_.1171
	movl	%eax, 4(%ebx)	# vect_var_.1171, MEM[base: to_994, offset: 4B]
	movl	8(%edi), %eax	# MEM[base: D.13744_918, offset: 8B], vect_var_.1171
	movl	%eax, 8(%ebx)	# vect_var_.1171, MEM[base: to_994, offset: 8B]
	movl	12(%edi), %eax	# MEM[base: D.13744_918, offset: 12B], vect_var_.1171
	movl	%eax, 12(%ebx)	# vect_var_.1171, MEM[base: to_994, offset: 12B]
	movl	16(%edi), %eax	# MEM[base: D.13744_918, offset: 16B], vect_var_.1171
	movl	%eax, 16(%ebx)	# vect_var_.1171, MEM[base: to_994, offset: 16B]
	.loc 1 301 0
	addl	$20, %ebx	#, to
.L417:
.LBE193:
.LBE198:
.LBB199:
.LBB169:
	xorl	%eax, %eax	# ivtmp.1438
	.p2align 4,,7
	.p2align 3
.L418:
.LBE169:
.LBE199:
.LBB200:
.LBB194:
	.loc 1 1049 0
	movzbl	(%ecx,%eax), %edx	# MEM[base: from_2587, index: ivtmp.1438_578, offset: 0B], D.12469
	movb	%dl, (%ebx,%eax)	# D.12469, MEM[base: to_2589, index: ivtmp.1438_578, offset: 0B]
	addl	$1, %eax	#, ivtmp.1438
	.loc 1 1048 0
	cmpl	%esi, %eax	# ivtmp.1019, ivtmp.1438
	jne	.L418	#,
	addl	$75, 60(%esp)	#, %sfp
	addl	$285, %edi	#, ivtmp.1453
	.loc 1 1044 0
	cmpl	$kit.7513+693, 60(%esp)	#, %sfp
	jne	.L419	#,
.LBE194:
.LBE200:
	.loc 1 1180 0
	movl	$1717986919, %eax	#,
	imull	44(%esp)	# %sfp
	movl	44(%esp), %eax	# %sfp, tmp2318
	movl	$kit.7513+36, 60(%esp)	#, %sfp
	sarl	$2, %edx	#, D.12406
	sarl	$31, %eax	#, tmp2318
	subl	%eax, %edx	# tmp2318, D.12406
	leal	(%edx,%edx,4), %eax	#, tmp2321
	movl	44(%esp), %edx	# %sfp, D.12406
	addl	%eax, %eax	# tmp2322
	subl	%eax, %edx	# tmp2322, D.12406
.LVL489:
	leal	(%edx,%edx,8), %eax	#, tmp2325
	addl	%eax, %eax	# tmp2326
.LBB201:
.LBB202:
	.loc 1 301 0
	movl	%eax, %edx	# tmp2326,
.LVL490:
	subl	$digits, %edx	#,
	subl	%eax, %edx	# tmp2326,
.LBE202:
.LBE201:
	leal	digits(%eax), %edi	#, ivtmp.1422
.LBB206:
.LBB203:
	movl	%edx, 56(%esp)	#, %sfp
.LVL491:
	.p2align 4,,7
	.p2align 3
.L422:
	.loc 1 1046 0
	movl	60(%esp), %ebx	# %sfp, to
.LVL492:
	.loc 1 1047 0
	movl	56(%esp), %esi	# %sfp,
	.loc 1 301 0
	movl	%ebx, %eax	# to, tmp2334
	orl	%edi, %eax	# ivtmp.1422, tmp2334
	.loc 1 1047 0
	testb	$3, %al	#, tmp2334
	leal	digits(%edi,%esi), %ecx	#, from
.LVL493:
	jne	.L462	#,
	.loc 1 1049 0
	movl	(%edi), %eax	# MEM[base: D.13691_2500, offset: 0B], vect_var_.1146
	addl	$20, %ecx	#, from
.LVL494:
.LBE203:
.LBE206:
.LBB207:
.LBB170:
	.loc 1 301 0
	movl	$1, %esi	#, ivtmp.1017
.LBE170:
.LBE207:
.LBB208:
.LBB204:
	.loc 1 1049 0
	movl	%eax, (%ebx)	# vect_var_.1146, MEM[base: to_1010, offset: 0B]
.LVL495:
	movl	4(%edi), %eax	# MEM[base: D.13691_2500, offset: 4B], vect_var_.1146
	movl	%eax, 4(%ebx)	# vect_var_.1146, MEM[base: to_1010, offset: 4B]
	movl	8(%edi), %eax	# MEM[base: D.13691_2500, offset: 8B], vect_var_.1146
	movl	%eax, 8(%ebx)	# vect_var_.1146, MEM[base: to_1010, offset: 8B]
	movl	12(%edi), %eax	# MEM[base: D.13691_2500, offset: 12B], vect_var_.1146
	movl	%eax, 12(%ebx)	# vect_var_.1146, MEM[base: to_1010, offset: 12B]
	movl	16(%edi), %eax	# MEM[base: D.13691_2500, offset: 16B], vect_var_.1146
	movl	%eax, 16(%ebx)	# vect_var_.1146, MEM[base: to_1010, offset: 16B]
	.loc 1 301 0
	addl	$20, %ebx	#, to
.L420:
.LBE204:
.LBE208:
.LBB209:
.LBB171:
	xorl	%eax, %eax	# ivtmp.1407
	.p2align 4,,7
	.p2align 3
.L421:
.LBE171:
.LBE209:
.LBB210:
.LBB205:
	.loc 1 1049 0
	movzbl	(%ecx,%eax), %edx	# MEM[base: from_2532, index: ivtmp.1407_581, offset: 0B], D.12482
	movb	%dl, (%ebx,%eax)	# D.12482, MEM[base: to_2534, index: ivtmp.1407_581, offset: 0B]
	addl	$1, %eax	#, ivtmp.1407
	.loc 1 1048 0
	cmpl	%esi, %eax	# ivtmp.1017, ivtmp.1407
	jne	.L421	#,
	addl	$75, 60(%esp)	#, %sfp
	addl	$285, %edi	#, ivtmp.1422
	.loc 1 1044 0
	cmpl	$kit.7513+711, 60(%esp)	#, %sfp
	jne	.L422	#,
.LVL496:
.L413:
	movl	$digits+180, %edi	#, ivtmp.1304
	movl	$kit.7513+54, 60(%esp)	#, %sfp
.LVL497:
	.p2align 4,,7
	.p2align 3
.L425:
.LBE205:
.LBE210:
.LBB211:
.LBB212:
	.loc 1 1046 0
	movl	60(%esp), %ebx	# %sfp, to
.LVL498:
	.loc 1 1047 0
	movl	%edi, %ecx	# ivtmp.1304, from
.LVL499:
	.loc 1 301 0
	movl	%ebx, %eax	# to, tmp2340
	orl	%edi, %eax	# ivtmp.1304, tmp2340
	.loc 1 1047 0
	testb	$3, %al	#, tmp2340
	jne	.L463	#,
	.loc 1 1049 0
	movl	(%edi), %eax	# MEM[base: D.13514_876, offset: 0B], vect_var_.1046
	addl	$20, %ecx	#, from
.LBE212:
.LBE211:
.LBB215:
.LBB172:
	.loc 1 301 0
	movl	$1, %esi	#, ivtmp.1009
.LBE172:
.LBE215:
.LBB216:
.LBB213:
	.loc 1 1049 0
	movl	%eax, (%ebx)	# vect_var_.1046, MEM[base: to_1026, offset: 0B]
.LVL500:
	movl	4(%edi), %eax	# MEM[base: D.13514_876, offset: 4B], vect_var_.1046
	movl	%eax, 4(%ebx)	# vect_var_.1046, MEM[base: to_1026, offset: 4B]
	movl	8(%edi), %eax	# MEM[base: D.13514_876, offset: 8B], vect_var_.1046
	movl	%eax, 8(%ebx)	# vect_var_.1046, MEM[base: to_1026, offset: 8B]
	movl	12(%edi), %eax	# MEM[base: D.13514_876, offset: 12B], vect_var_.1046
	movl	%eax, 12(%ebx)	# vect_var_.1046, MEM[base: to_1026, offset: 12B]
	movl	16(%edi), %eax	# MEM[base: D.13514_876, offset: 16B], vect_var_.1046
	movl	%eax, 16(%ebx)	# vect_var_.1046, MEM[base: to_1026, offset: 16B]
	.loc 1 301 0
	addl	$20, %ebx	#, to
.L423:
.LBE213:
.LBE216:
.LBB217:
.LBB173:
	xorl	%eax, %eax	# ivtmp.1289
	.p2align 4,,7
	.p2align 3
.L424:
.LBE173:
.LBE217:
.LBB218:
.LBB214:
	.loc 1 1049 0
	movzbl	(%ecx,%eax), %edx	# MEM[base: from_2233, index: ivtmp.1289_582, offset: 0B], D.12495
	movb	%dl, (%ebx,%eax)	# D.12495, MEM[base: to_2231, index: ivtmp.1289_582, offset: 0B]
	addl	$1, %eax	#, ivtmp.1289
	.loc 1 1048 0
	cmpl	%eax, %esi	# ivtmp.1289, ivtmp.1009
	jne	.L424	#,
	addl	$285, %edi	#, ivtmp.1304
	addl	$75, 60(%esp)	#, %sfp
	.loc 1 1044 0
	cmpl	$digits+2745, %edi	#, ivtmp.1304
	jne	.L425	#,
	xorl	%edx, %edx	# prephitmp.997
	.loc 1 1171 0
	xorl	%eax, %eax	# avg_lsm.998
.LBE214:
.LBE218:
	.loc 1 1169 0
	addl	$1, %edx	#, yoh_lsm.999
	cmpl	$2, %edx	#, yoh_lsm.999
	jg	.L426	#,
.LVL501:
.L512:
	.loc 1 1187 0
	movl	40(%esp), %esi	# %sfp,
	.loc 1 1169 0
	movl	%eax, avg.7509	# avg_lsm.998, avg
	movl	%edx, yoh.7508	# yoh_lsm.999, yoh
	.loc 1 1187 0
	testl	%esi, %esi	#
	je	.L427	#,
	.loc 1 1188 0
	movl	blend.7505, %eax	# blend, blend
	subl	$24, %eax	#, blend.68
	.loc 1 1189 0
	cmpl	$79, %eax	#, blend.68
	.loc 1 1188 0
	movl	%eax, blend.7505	# blend.68, blend
	.loc 1 1189 0
	jg	.L428	#,
	.loc 1 1191 0
	movl	memscreen_enabled, %ebx	# memscreen_enabled,
	.loc 1 1190 0
	movl	$80, blend.7505	#, blend
	.loc 1 1191 0
	testl	%ebx, %ebx	#
	je	.L428	#,
	.loc 1 1192 0
	cmpl	$0, showmem.7507	#, showmem
	jne	.L429	#,
	.loc 1 1194 0
	call	render_secondary	#
.L429:
	.loc 1 1197 0
	cmpl	$0, bm+31336	#, bm.picture_lock
	.loc 1 1196 0
	movl	$1, showmem.7507	#, showmem
	.loc 1 1197 0
	jne	.L430	#,
	.loc 1 1198 0
	subl	$36, memblend.7506	#, memblend
.L430:
	.loc 1 1199 0
	cmpl	$39, memblend.7506	#, memblend
	jle	.L514	#,
.L428:
	.loc 1 1221 0
	movl	cpu_enabled, %eax	# cpu_enabled,
	testl	%eax, %eax	#
	je	.L435	#,
.LBB219:
	.loc 1 1237 0
	movl	blend.7505, %esi	# blend,
	movl	$256, %edi	#, D.12390
	movl	$8479, %ebx	#, ivtmp.1285
	movl	$kit.7513+1, 56(%esp)	#, %sfp
	movl	%esi, 60(%esp)	#, %sfp
	subl	%esi, %edi	#, D.12390
.L439:
.LVL502:
	.loc 1 301 0
	leal	-75(%ebx), %eax	#, ivtmp.1273
	movl	56(%esp), %edx	# %sfp, ivtmp.1288
	jmp	.L438	#
.LVL503:
	.p2align 4,,7
	.p2align 3
.L516:
	.loc 1 1234 0
	movzbl	-1(%edx), %ecx	# MEM[base: D.13463_2636, offset: 4294967295B], D.12393
.LVL504:
	.loc 1 1236 0
	addl	$1, %edx	#, ivtmp.1288
	.loc 1 1234 0
	movb	%cl, bm+7(%eax)	# D.12393,
.LVL505:
	.loc 1 1236 0
	addl	$1, %eax	#, ivtmp.1273
.LVL506:
	.loc 1 1230 0
	cmpl	%eax, %ebx	# ivtmp.1273, ivtmp.1285
	je	.L515	#,
.LVL507:
.L438:
	.loc 1 1231 0
	movzbl	bm+7(%eax), %ecx	# MEM[symbol: bm, index: ivtmp.1273_976, offset: 7B], src
.LVL508:
	.loc 1 1233 0
	testb	%cl, %cl	# src
	je	.L516	#,
	.loc 1 1237 0
	movzbl	-1(%edx), %esi	# MEM[base: D.13464_693, offset: 4294967295B], MEM[base: D.13464_693, offset: 4294967295B]
	movzbl	%cl, %ecx	# src, tmp2356
	.loc 1 1236 0
	addl	$1, %edx	#, ivtmp.1288
	.loc 1 1237 0
	imull	60(%esp), %ecx	# %sfp, tmp2356
	imull	%edi, %esi	# D.12390, tmp2358
	addl	%esi, %ecx	# tmp2358, tmp2360
	sarl	$8, %ecx	#, tmp2360
	.loc 1 1236 0
	movb	%cl, bm+7(%eax)	# tmp2360,
.LVL509:
	addl	$1, %eax	#, ivtmp.1273
.LVL510:
	.loc 1 1230 0
	cmpl	%eax, %ebx	# ivtmp.1273, ivtmp.1285
	jne	.L438	#,
.LVL511:
.L515:
	addl	$174, %ebx	#, ivtmp.1285
	addl	$75, 56(%esp)	#, %sfp
.LBE219:
	.loc 1 1226 0
	cmpl	$10045, %ebx	#, ivtmp.1285
	jne	.L439	#,
.LVL512:
.L435:
.LBB220:
.LBB221:
	.loc 1 1106 0
	leal	540(%esp), %eax	#,
	.loc 1 1099 0
	movw	$24906, 416(%esp)	#, months
	movb	$110, 418(%esp)	#, months
	movw	$25926, 419(%esp)	#, months
	movb	$98, 421(%esp)	#, months
	movw	$24909, 422(%esp)	#, months
	movb	$114, 424(%esp)	#, months
	movw	$28737, 425(%esp)	#, months
	movb	$114, 427(%esp)	#, months
	movw	$24909, 428(%esp)	#, months
	movb	$121, 430(%esp)	#, months
	movw	$30026, 431(%esp)	#, months
	movb	$110, 433(%esp)	#, months
	movw	$30026, 434(%esp)	#, months
	movb	$108, 436(%esp)	#, months
	movw	$30017, 437(%esp)	#, months
	movb	$103, 439(%esp)	#, months
	movw	$25939, 440(%esp)	#, months
	movb	$112, 442(%esp)	#, months
	movw	$25423, 443(%esp)	#, months
	movb	$116, 445(%esp)	#, months
	movw	$28494, 446(%esp)	#, months
	movb	$118, 448(%esp)	#, months
	movw	$25924, 449(%esp)	#, months
	movb	$99, 451(%esp)	#, months
	.loc 1 1101 0
	movw	$30035, 480(%esp)	#, days
	movb	$110, 482(%esp)	#, days
	movw	$28493, 483(%esp)	#, days
	movb	$110, 485(%esp)	#, days
	movw	$30036, 486(%esp)	#, days
	movb	$101, 488(%esp)	#, days
	movw	$25943, 489(%esp)	#, days
	movb	$100, 491(%esp)	#, days
	movw	$26708, 492(%esp)	#, days
	movb	$117, 494(%esp)	#, days
	movw	$29254, 495(%esp)	#, days
	movb	$105, 497(%esp)	#, days
	movw	$24915, 498(%esp)	#, days
	movb	$116, 500(%esp)	#, days
.LVL513:
	.loc 1 1106 0
	movl	%eax, (%esp)	#,
	call	time	#
	.loc 1 1107 0
	leal	540(%esp), %edx	#,
	movl	%edx, (%esp)	#,
	call	localtime	#
	.loc 1 1110 0
	movl	shifttime, %ecx	# shifttime,
	cmpl	%ecx, 8(%eax)	#, mytime_1046->tm_hour
	.loc 1 1107 0
	movl	%eax, %ebx	#, mytime
.LVL514:
	.loc 1 1108 0
	movl	12(%eax), %edi	# mytime_1046->tm_mday, mday
.LVL515:
	.loc 1 1110 0
	jge	.L440	#,
	xorl	%esi, %esi	# hours
.LVL516:
.L441:
	.loc 1 1113 0
	leal	540(%esp), %ebx	#,
	.loc 1 1112 0
	addl	$1, %esi	#, hours
.LVL517:
	subl	$3600, 540(%esp)	#, mytt
	.loc 1 1113 0
	movl	%ebx, (%esp)	#,
	call	localtime	#
.LVL518:
	.loc 1 1111 0
	cmpl	12(%eax), %edi	# mytime_1054->tm_mday, mday
	.loc 1 1113 0
	movl	%eax, %ebx	#, mytime
.LVL519:
	.loc 1 1111 0
	je	.L441	#,
	.loc 1 1115 0
	addl	%esi, 8(%eax)	# hours, mytime_2304->tm_hour
.LVL520:
.L440:
	.loc 1 1124 0
	movl	24(%ebx), %eax	# mytime_1060->tm_wday, mytime_1060->tm_wday
.LVL521:
	movl	$bm+203, %edx	#,
	.loc 1 1132 0
	movl	$1717986919, %esi	#, tmp2410
	.loc 1 1124 0
	leal	(%eax,%eax,2), %eax	#, tmp2368
	movsbl	480(%esp,%eax), %eax	# days, tmp2371
	call	draw_dtchr	#
	.loc 1 1125 0
	movl	24(%ebx), %eax	# mytime_1060->tm_wday, mytime_1060->tm_wday
	movl	$bm+218, %edx	#,
	leal	(%eax,%eax,2), %eax	#, tmp2375
	movsbl	481(%esp,%eax), %eax	# days, tmp2378
	call	draw_dtchr	#
	.loc 1 1126 0
	movl	24(%ebx), %eax	# mytime_1060->tm_wday, mytime_1060->tm_wday
	movl	$bm+233, %edx	#,
	leal	(%eax,%eax,2), %eax	#, tmp2382
	movsbl	482(%esp,%eax), %eax	# days, tmp2385
	call	draw_dtchr	#
	.loc 1 1128 0
	movl	16(%ebx), %eax	# mytime_1060->tm_mon, mytime_1060->tm_mon
	movl	$bm+251, %edx	#,
	leal	(%eax,%eax,2), %eax	#, tmp2389
	movsbl	416(%esp,%eax), %eax	# months, tmp2392
	call	draw_dtchr	#
	.loc 1 1129 0
	movl	16(%ebx), %eax	# mytime_1060->tm_mon, mytime_1060->tm_mon
	movl	$bm+266, %edx	#,
	leal	(%eax,%eax,2), %eax	#, tmp2396
	movsbl	417(%esp,%eax), %eax	# months, tmp2399
	call	draw_dtchr	#
	.loc 1 1130 0
	movl	16(%ebx), %eax	# mytime_1060->tm_mon, mytime_1060->tm_mon
	movl	$bm+281, %edx	#,
	leal	(%eax,%eax,2), %eax	#, tmp2403
	movsbl	418(%esp,%eax), %eax	# months, tmp2406
	call	draw_dtchr	#
	.loc 1 1132 0
	movl	12(%ebx), %ecx	# mytime_1060->tm_mday, mytime_1060->tm_mday
	movl	%ecx, %eax	# mytime_1060->tm_mday,
	imull	%esi	# tmp2410
	sarl	$31, %ecx	#, tmp2412
	sarl	$2, %edx	#, tmp2407
	subl	%ecx, %edx	# tmp2412, tmp2407
	leal	48(%edx), %eax	#, tmp2413
	movl	$bm+299, %edx	#,
	movsbl	%al, %eax	# tmp2413, tmp2414
	call	draw_dtchr	#
	.loc 1 1133 0
	movl	12(%ebx), %ecx	# mytime_1060->tm_mday, mytime_1060->tm_mday
	movl	%ecx, %eax	# mytime_1060->tm_mday,
	imull	%esi	# tmp2410
	movl	%ecx, %eax	# mytime_1060->tm_mday, tmp2420
	sarl	$31, %eax	#, tmp2420
	sarl	$2, %edx	#, tmp2415
	subl	%eax, %edx	# tmp2420, tmp2415
	leal	(%edx,%edx,4), %eax	#, tmp2423
	movl	$bm+317, %edx	#,
	addl	%eax, %eax	# tmp2424
	subl	%eax, %ecx	# tmp2424, mytime_1060->tm_mday
	movl	%ecx, %eax	# mytime_1060->tm_mday, tmp2425
	addl	$48, %eax	#, tmp2426
	movsbl	%al, %eax	# tmp2426, tmp2427
	call	draw_dtchr	#
	.loc 1 1135 0
	movl	8(%ebx), %ecx	# mytime_1060->tm_hour, mytime_1060->tm_hour
	movl	%ecx, %eax	# mytime_1060->tm_hour,
	imull	%esi	# tmp2410
	sarl	$31, %ecx	#, tmp2433
	sarl	$2, %edx	#, tmp2428
	subl	%ecx, %edx	# tmp2433, tmp2428
	movsbl	%dl, %eax	# tmp2428, tmp2434
	movl	$bm+2279, %edx	#,
	call	draw_largedigit	#
	.loc 1 1136 0
	movl	8(%ebx), %ecx	# mytime_1060->tm_hour, mytime_1060->tm_hour
	movl	%ecx, %eax	# mytime_1060->tm_hour,
	imull	%esi	# tmp2410
	movl	%ecx, %eax	# mytime_1060->tm_hour, tmp2440
	sarl	$31, %eax	#, tmp2440
	sarl	$2, %edx	#, tmp2435
	subl	%eax, %edx	# tmp2440, tmp2435
	leal	(%edx,%edx,4), %eax	#, tmp2443
	movl	$bm+2318, %edx	#,
	addl	%eax, %eax	# tmp2444
	subl	%eax, %ecx	# tmp2444, mytime_1060->tm_hour
	movsbl	%cl, %eax	# tmp2445, tmp2446
	call	draw_largedigit	#
	.loc 1 1137 0
	movl	4(%ebx), %ecx	# mytime_1060->tm_min, mytime_1060->tm_min
	movl	%ecx, %eax	# mytime_1060->tm_min,
	imull	%esi	# tmp2410
	sarl	$2, %edx	#, tmp2447
	sarl	$31, %ecx	#, tmp2452
	subl	%ecx, %edx	# tmp2452, tmp2447
	movsbl	%dl, %eax	# tmp2447, tmp2453
	movl	$bm+2360, %edx	#,
	call	draw_largedigit	#
	.loc 1 1138 0
	movl	4(%ebx), %ecx	# mytime_1060->tm_min, mytime_1060->tm_min
	movl	%ecx, %eax	# mytime_1060->tm_min,
	imull	%esi	# tmp2410
	movl	%ecx, %eax	# mytime_1060->tm_min, tmp2459
	sarl	$31, %eax	#, tmp2459
	sarl	$2, %edx	#, tmp2454
	subl	%eax, %edx	# tmp2459, tmp2454
	leal	(%edx,%edx,4), %eax	#, tmp2462
	movl	$bm+2399, %edx	#,
	addl	%eax, %eax	# tmp2463
	subl	%eax, %ecx	# tmp2463, mytime_1060->tm_min
	movsbl	%cl, %eax	# tmp2464, tmp2465
	call	draw_largedigit	#
.LBE221:
.LBE220:
	.loc 1 1246 0
	movl	memscreen_enabled, %eax	# memscreen_enabled,
	testl	%eax, %eax	#
	je	.L401	#,
	movl	showmem.7507, %edi	# showmem,
.LVL522:
	testl	%edi, %edi	#
	je	.L401	#,
	movl	memblend.7506, %esi	# memblend, pretmp.914
	movl	$256, %ebx	#, pretmp.914
.LVL523:
.LBB225:
.LBB222:
	.loc 1 301 0
	movl	$bm+8, %eax	#, ptr2
.LVL524:
.LBE222:
.LBE225:
	.loc 1 1246 0
	subl	%esi, %ebx	# pretmp.914, pretmp.914
.LVL525:
.L442:
.LBB226:
	.loc 1 1253 0
	movzbl	(%eax), %ecx	# MEM[base: ptr2_992, offset: 0B], tmp2468
	movzbl	10093(%eax), %edx	# MEM[base: ptr2_992, offset: 10093B], tmp2470
	imull	%esi, %ecx	# pretmp.914, tmp2468
	imull	%ebx, %edx	# pretmp.914, tmp2470
	addl	%ecx, %edx	# tmp2468, tmp2472
	sarl	$8, %edx	#, tmp2472
	movb	%dl, (%eax)	# tmp2472, MEM[base: ptr2_992, offset: 0B]
	addl	$1, %eax	#, ptr2
.LVL526:
	.loc 1 1251 0
	cmpl	$bm+10100, %eax	#, ptr2
	jne	.L442	#,
.LVL527:
.L401:
.LBE226:
.LBE158:
.LBE157:
	.loc 1 846 0
	movl	48(%esp), %ebx	# %sfp,
	movl	$bm+8, %eax	#, ivtmp.1251
.LBB264:
.LBB255:
.LBB227:
.LBB223:
	.loc 1 301 0
	movl	%eax, %edx	#, ivtmp.1251
.LBE223:
.LBE227:
.LBE255:
.LBE264:
	.loc 1 846 0
	movl	%ebx, last_action_min.7333	#, last_action_min
.LVL528:
	.p2align 4,,7
	.p2align 3
.L443:
.LBE132:
.LBE131:
.LBB284:
.LBB285:
	.loc 1 443 0
	movzbl	9918(%edx), %ecx	# MEM[base: D.13429_1152, offset: 9918B], MEM[base: D.13429_1152, offset: 9918B]
	.loc 1 442 0
	shrb	$2, (%edx)	#, MEM[base: D.13429_1152, offset: 0B]
	.loc 1 443 0
	addl	$255, %ecx	#, tmp2475
	sarl	%ecx	# tmp2475
	movb	%cl, 9918(%edx)	# tmp2475, MEM[base: D.13429_1152, offset: 9918B]
	addl	$1, %edx	#, ivtmp.1251
	.loc 1 441 0
	cmpl	$bm+182, %edx	#, ivtmp.1251
	jne	.L443	#,
.LVL529:
	.p2align 4,,7
	.p2align 3
.L465:
	.loc 1 448 0
	movzbl	171(%eax), %edx	# MEM[base: D.13407_2779, offset: 171B], MEM[base: D.13407_2779, offset: 171B]
	.loc 1 447 0
	shrb	$2, (%eax)	#, MEM[base: D.13407_2779, offset: 0B]
	shrb	$2, 1(%eax)	#, MEM[base: D.13407_2779, offset: 1B]
	shrb	$2, 2(%eax)	#, MEM[base: D.13407_2779, offset: 2B]
	.loc 1 448 0
	addl	$255, %edx	#, tmp2478
	sarl	%edx	# tmp2478
	movb	%dl, 171(%eax)	# tmp2478, MEM[base: D.13407_2779, offset: 171B]
	.loc 1 449 0
	leal	256(%edx), %ecx	#, tmp2480
	.loc 1 450 0
	addl	$257, %edx	#, tmp2482
	.loc 1 449 0
	sarl	%ecx	# tmp2480
	.loc 1 450 0
	sarl	%edx	# tmp2482
	.loc 1 449 0
	movb	%cl, 172(%eax)	# tmp2480, MEM[base: D.13407_2779, offset: 172B]
	.loc 1 450 0
	movb	%dl, 173(%eax)	# tmp2482, MEM[base: D.13407_2779, offset: 173B]
	addl	$174, %eax	#, ivtmp.1251
	.loc 1 446 0
	cmpl	$bm+10100, %eax	#, ivtmp.1251
	jne	.L465	#,
.LBE285:
.LBE284:
.LBB287:
.LBB279:
.LBB265:
.LBB256:
.LBB228:
.LBB224:
	.loc 1 301 0
	xorl	%edi, %edi	# yy
	movl	$bm+8, 60(%esp)	#, %sfp
.LVL530:
	.p2align 4,,7
	.p2align 3
.L445:
	movl	60(%esp), %ebx	# %sfp, from
	xorl	%esi, %esi	# xx
.LVL531:
	.p2align 4,,7
	.p2align 3
.L446:
.LBE224:
.LBE228:
.LBE256:
.LBE265:
.LBE279:
.LBE287:
.LBB288:
.LBB286:
	.loc 1 455 0
	movzbl	2(%ebx), %eax	# MEM[base: from_596, offset: 2B], MEM[base: from_596, offset: 2B]
	movl	%eax, 20(%esp)	# MEM[base: from_596, offset: 2B],
	movzbl	1(%ebx), %eax	# MEM[base: from_596, offset: 1B], MEM[base: from_596, offset: 1B]
	movl	%eax, 16(%esp)	# MEM[base: from_596, offset: 1B],
	movzbl	(%ebx), %eax	# MEM[base: from_596, offset: 0B], MEM[base: from_596, offset: 0B]
	.loc 1 454 0
	addl	$3, %ebx	#, from
.LVL532:
	.loc 1 455 0
	movl	%esi, 4(%esp)	# xx,
	.loc 1 454 0
	addl	$1, %esi	#, xx
	.loc 1 455 0
	movl	%edi, 8(%esp)	# yy,
	movl	%eax, 12(%esp)	# MEM[base: from_596, offset: 0B],
	movl	bm+4, %eax	# bm.xim, bm.xim
	movl	%eax, (%esp)	# bm.xim,
	call	wmPutPixel	#
.LVL533:
	.loc 1 454 0
	cmpl	$58, %esi	#, xx
	jne	.L446	#,
	addl	$174, 60(%esp)	#, %sfp
	.loc 1 453 0
	addl	$1, %edi	#, yy
.LVL534:
	cmpl	$bm+10100, 60(%esp)	#, %sfp
	jne	.L445	#,
	.loc 1 457 0
	movl	bm+4, %eax	# bm.xim, bm.xim
	movl	%eax, (%esp)	# bm.xim,
	call	RedrawWindow	#
.LBE286:
.LBE288:
	.loc 1 461 0
	movl	memscreen_enabled, %esi	# memscreen_enabled,
.LVL535:
	testl	%esi, %esi	#
	je	.L497	#,
.LBB289:
.LBB290:
	.loc 1 999 0
	movl	doit.7441, %eax	# doit, doit
	subl	$1, %eax	#, doit.89
	testl	%eax, %eax	# doit.89
	movl	%eax, doit.7441	# doit.89, doit
	jg	.L497	#,
	.loc 1 1001 0
	movl	update.7440, %eax	# update, update
	.loc 1 1000 0
	movl	$1, doit.7441	#, doit
	.loc 1 1001 0
	subl	$1, %eax	#, update.91
	testl	%eax, %eax	# update.91
	movl	%eax, update.7440	# update.91, update
	jle	.L517	#,
.LVL536:
.L448:
	.loc 1 1032 0
	imull	$100, bm+31720, %eax	#, bm.loadavg[0].i, tmp2523
	addl	bm+31724, %eax	# bm.loadavg[0].f, tmp2523
	addl	%eax, bm+31960	# tmp2523, bm.history
	.loc 1 1036 0
	movl	bm+31492, %eax	# bm.mem_percent, bm.mem_percent
	.loc 1 1033 0
	addl	$1, bm+31964	#, bm.hisadd
	.loc 1 1036 0
	addl	%eax, bm+31712	# bm.mem_percent, bm.memhist
	.loc 1 1037 0
	addl	$1, bm+31716	#, bm.memadd
	jmp	.L497	#
.LVL537:
.L513:
.LBE290:
.LBE289:
.LBB292:
.LBB280:
.LBB266:
.LBB257:
	.loc 1 1173 0
	movl	$digits+18, %edi	#, ivtmp.1392
	.loc 1 301 0
	movl	$digits, 44(%esp)	#, %sfp
.LVL538:
.L406:
.LBB229:
.LBB230:
	.loc 1 1046 0
	movl	60(%esp), %ebx	# %sfp, to
.LVL539:
	.loc 1 1047 0
	movl	%edi, %ecx	# ivtmp.1392, from
.LVL540:
	.loc 1 301 0
	movl	%ebx, %eax	# to, tmp2278
	orl	%edi, %eax	# ivtmp.1392, tmp2278
	.loc 1 1047 0
	testb	$3, %al	#, tmp2278
	jne	.L457	#,
	.loc 1 1049 0
	movl	(%edi), %eax	# MEM[base: D.13638_2694, offset: 0B], vect_var_.1121
	addl	$20, %ecx	#, from
.LBE230:
.LBE229:
.LBE257:
.LBE266:
.LBB267:
.LBB151:
.LBB143:
.LBB139:
	.loc 1 301 0
	movl	$1, %esi	#, ivtmp.1015
.LBE139:
.LBE143:
.LBE151:
.LBE267:
.LBB268:
.LBB258:
.LBB236:
.LBB231:
	.loc 1 1049 0
	movl	%eax, (%ebx)	# vect_var_.1121, MEM[base: to_930, offset: 0B]
.LVL541:
	movl	4(%edi), %eax	# MEM[base: D.13638_2694, offset: 4B], vect_var_.1121
	movl	%eax, 4(%ebx)	# vect_var_.1121, MEM[base: to_930, offset: 4B]
	movl	8(%edi), %eax	# MEM[base: D.13638_2694, offset: 8B], vect_var_.1121
	movl	%eax, 8(%ebx)	# vect_var_.1121, MEM[base: to_930, offset: 8B]
	movl	12(%edi), %eax	# MEM[base: D.13638_2694, offset: 12B], vect_var_.1121
	movl	%eax, 12(%ebx)	# vect_var_.1121, MEM[base: to_930, offset: 12B]
	movl	16(%edi), %eax	# MEM[base: D.13638_2694, offset: 16B], vect_var_.1121
	movl	%eax, 16(%ebx)	# vect_var_.1121, MEM[base: to_930, offset: 16B]
	.loc 1 301 0
	addl	$20, %ebx	#, to
.L404:
.LBE231:
.LBE236:
.LBE258:
.LBE268:
.LBB269:
.LBB152:
.LBB144:
.LBB140:
	xorl	%eax, %eax	# ivtmp.1377
	.p2align 4,,7
	.p2align 3
.L405:
.LBE140:
.LBE144:
.LBE152:
.LBE269:
.LBB270:
.LBB259:
.LBB237:
.LBB232:
	.loc 1 1049 0
	movzbl	(%ecx,%eax), %edx	# MEM[base: from_2480, index: ivtmp.1377_545, offset: 0B], D.12417
	movb	%dl, (%ebx,%eax)	# D.12417, MEM[base: to_2482, index: ivtmp.1377_545, offset: 0B]
	addl	$1, %eax	#, ivtmp.1377
	.loc 1 1048 0
	cmpl	%esi, %eax	# ivtmp.1015, ivtmp.1377
	jne	.L405	#,
	addl	$285, %edi	#, ivtmp.1392
	addl	$75, 60(%esp)	#, %sfp
	.loc 1 1044 0
	cmpl	$digits+2583, %edi	#, ivtmp.1392
	jne	.L406	#,
	movl	$kit.7513+18, 60(%esp)	#, %sfp
	movl	$digits, %edi	#, ivtmp.1363
	movl	$0, 56(%esp)	#, %sfp
.L409:
.LVL542:
.LBE232:
.LBE237:
.LBB238:
.LBB174:
	.loc 1 1046 0
	movl	60(%esp), %ebx	# %sfp, to
.LVL543:
	.loc 1 1047 0
	movl	56(%esp), %ecx	# %sfp, from
	.loc 1 301 0
	movl	%ebx, %eax	# to, tmp2283
	orl	%edi, %eax	# ivtmp.1363, tmp2283
	.loc 1 1047 0
	addl	$digits, %ecx	#, from
.LVL544:
	testb	$3, %al	#, tmp2283
	jne	.L458	#,
	.loc 1 1049 0
	movl	(%edi), %eax	# MEM[base: D.13594_2721, offset: 0B], vect_var_.1096
	addl	$20, %ecx	#, from
.LVL545:
.LBE174:
.LBE238:
.LBB239:
.LBB233:
	.loc 1 301 0
	movl	$1, %esi	#, ivtmp.1013
.LBE233:
.LBE239:
.LBB240:
.LBB175:
	.loc 1 1049 0
	movl	%eax, (%ebx)	# vect_var_.1096, MEM[base: to_946, offset: 0B]
.LVL546:
	movl	4(%edi), %eax	# MEM[base: D.13594_2721, offset: 4B], vect_var_.1096
	movl	%eax, 4(%ebx)	# vect_var_.1096, MEM[base: to_946, offset: 4B]
	movl	8(%edi), %eax	# MEM[base: D.13594_2721, offset: 8B], vect_var_.1096
	movl	%eax, 8(%ebx)	# vect_var_.1096, MEM[base: to_946, offset: 8B]
	movl	12(%edi), %eax	# MEM[base: D.13594_2721, offset: 12B], vect_var_.1096
	movl	%eax, 12(%ebx)	# vect_var_.1096, MEM[base: to_946, offset: 12B]
	movl	16(%edi), %eax	# MEM[base: D.13594_2721, offset: 16B], vect_var_.1096
	movl	%eax, 16(%ebx)	# vect_var_.1096, MEM[base: to_946, offset: 16B]
	.loc 1 301 0
	addl	$20, %ebx	#, to
.L407:
.LBE175:
.LBE240:
.LBB241:
.LBB234:
	xorl	%eax, %eax	# ivtmp.1349
	.p2align 4,,7
	.p2align 3
.L408:
.LBE234:
.LBE241:
.LBB242:
.LBB176:
	.loc 1 1049 0
	movzbl	(%ecx,%eax), %edx	# MEM[base: from_2431, index: ivtmp.1349_544, offset: 0B], D.12430
	movb	%dl, (%ebx,%eax)	# D.12430, MEM[base: to_2433, index: ivtmp.1349_544, offset: 0B]
	addl	$1, %eax	#, ivtmp.1349
	.loc 1 1048 0
	cmpl	%esi, %eax	# ivtmp.1013, ivtmp.1349
	jne	.L408	#,
	addl	$285, 56(%esp)	#, %sfp
	addl	$285, %edi	#, ivtmp.1363
	addl	$75, 60(%esp)	#, %sfp
	.loc 1 1044 0
	cmpl	$2565, 56(%esp)	#, %sfp
	jne	.L409	#,
	movl	$kit.7513+36, %edi	#, ivtmp.1336
	movl	%edi, 60(%esp)	# ivtmp.1336, %sfp
	movl	44(%esp), %edi	# %sfp, ivtmp.1363
	movl	$0, 56(%esp)	#, %sfp
.L412:
.LVL547:
.LBE176:
.LBE242:
.LBB243:
.LBB161:
	.loc 1 1046 0
	movl	60(%esp), %ebx	# %sfp, to
.LVL548:
	.loc 1 1047 0
	movl	56(%esp), %ecx	# %sfp, from
	.loc 1 301 0
	movl	%ebx, %eax	# to, tmp2288
	orl	%edi, %eax	# ivtmp.1363, tmp2288
	.loc 1 1047 0
	addl	$digits, %ecx	#, from
.LVL549:
	testb	$3, %al	#, tmp2288
	jne	.L459	#,
	.loc 1 1049 0
	movl	(%edi), %eax	# MEM[base: D.13554_2757, offset: 0B], vect_var_.1071
	addl	$20, %ecx	#, from
.LVL550:
.LBE161:
.LBE243:
.LBB244:
.LBB177:
	.loc 1 301 0
	movl	$1, %esi	#, ivtmp.1011
.LBE177:
.LBE244:
.LBB245:
.LBB162:
	.loc 1 1049 0
	movl	%eax, (%ebx)	# vect_var_.1071, MEM[base: to_962, offset: 0B]
.LVL551:
	movl	4(%edi), %eax	# MEM[base: D.13554_2757, offset: 4B], vect_var_.1071
	movl	%eax, 4(%ebx)	# vect_var_.1071, MEM[base: to_962, offset: 4B]
	movl	8(%edi), %eax	# MEM[base: D.13554_2757, offset: 8B], vect_var_.1071
	movl	%eax, 8(%ebx)	# vect_var_.1071, MEM[base: to_962, offset: 8B]
	movl	12(%edi), %eax	# MEM[base: D.13554_2757, offset: 12B], vect_var_.1071
	movl	%eax, 12(%ebx)	# vect_var_.1071, MEM[base: to_962, offset: 12B]
	movl	16(%edi), %eax	# MEM[base: D.13554_2757, offset: 16B], vect_var_.1071
	movl	%eax, 16(%ebx)	# vect_var_.1071, MEM[base: to_962, offset: 16B]
	.loc 1 301 0
	addl	$20, %ebx	#, to
.L410:
.LBE162:
.LBE245:
.LBB246:
.LBB178:
	xorl	%eax, %eax	# ivtmp.1321
	.p2align 4,,7
	.p2align 3
.L411:
.LBE178:
.LBE246:
.LBB247:
.LBB163:
	.loc 1 1049 0
	movzbl	(%ecx,%eax), %edx	# MEM[base: from_2382, index: ivtmp.1321_577, offset: 0B], D.12443
	movb	%dl, (%ebx,%eax)	# D.12443, MEM[base: to_2384, index: ivtmp.1321_577, offset: 0B]
	addl	$1, %eax	#, ivtmp.1321
	.loc 1 1048 0
	cmpl	%esi, %eax	# ivtmp.1011, ivtmp.1321
	jne	.L411	#,
	addl	$285, 56(%esp)	#, %sfp
	addl	$285, %edi	#, ivtmp.1363
	addl	$75, 60(%esp)	#, %sfp
	.loc 1 1044 0
	cmpl	$2565, 56(%esp)	#, %sfp
	jne	.L412	#,
	jmp	.L413	#
.LVL552:
.L427:
.LBE163:
.LBE247:
	.loc 1 1207 0
	movl	bm+31336, %ecx	# bm.picture_lock,
	.loc 1 1206 0
	addl	$24, blend.7505	#, blend
	.loc 1 1207 0
	testl	%ecx, %ecx	#
	jne	.L518	#,
.L432:
	.loc 1 1210 0
	movl	memscreen_enabled, %eax	# memscreen_enabled, memscreen_enabled.69
	testl	%eax, %eax	# memscreen_enabled.69
	je	.L433	#,
	movl	bm+31336, %edx	# bm.picture_lock,
	testl	%edx, %edx	#
	jne	.L433	#,
	.loc 1 1211 0
	addl	$60, memblend.7506	#, memblend
.L433:
	.loc 1 1212 0
	cmpl	$190, blend.7505	#, blend
	jle	.L434	#,
	.loc 1 1213 0
	movl	$190, blend.7505	#, blend
.L434:
	.loc 1 1215 0
	testl	%eax, %eax	# memscreen_enabled.69
	je	.L428	#,
	cmpl	$256, memblend.7506	#, memblend
	jle	.L428	#,
	.loc 1 1216 0
	movl	$256, memblend.7506	#, memblend
	.loc 1 1217 0
	movl	$0, showmem.7507	#, showmem
	jmp	.L428	#
.LVL553:
	.p2align 4,,7
	.p2align 3
.L349:
.LBE259:
.LBE270:
.LBE280:
.LBE292:
	.loc 1 363 0
	movl	wmxp_display, %eax	# wmxp_display, wmxp_display
	leal	320(%esp), %edx	#,
	movl	%edx, 4(%esp)	#,
	movl	%eax, (%esp)	# wmxp_display,
	call	XNextEvent	#
	.loc 1 364 0
	movl	320(%esp), %eax	# event.type, event.type
	cmpl	$7, %eax	#, event.type
	je	.L344	#,
	cmpl	$8, %eax	#, event.type
	je	.L453	#,
	cmpl	$4, %eax	#, event.type
	jne	.L497	#,
	.loc 1 366 0
	movl	372(%esp), %eax	# event.xbutton.button, D.9448
	cmpl	$3, %eax	#, D.9448
	je	.L519	#,
	.loc 1 370 0
	cmpl	8(%ebp), %eax	# argc, D.9448
	ja	.L497	#,
	.loc 1 371 0
	movl	12(%ebp), %ebx	# argv,
	leal	64(%esp), %esi	#,
	movl	-4(%ebx,%eax,4), %eax	# *D.9458_36, *D.9458_36
	movl	$.LC28, 8(%esp)	#,
	movl	$250, 4(%esp)	#,
	movl	%esi, (%esp)	#,
	movl	%eax, 12(%esp)	# *D.9458_36,
	call	snprintf	#
	.loc 1 373 0
	leal	64(%esp), %eax	#,
	movl	%eax, (%esp)	#,
	call	system	#
	jmp	.L497	#
	.p2align 4,,7
	.p2align 3
.L351:
.LBB293:
.LBB130:
	.loc 1 1442 0
	movl	$0, bm+31488	#, bm.swap_percent
	jmp	.L350	#
.LVL554:
.L504:
.LBE130:
.LBE293:
.LBB294:
.LBB281:
	.loc 1 653 0
	call	rand	#
	movl	$680390859, %edx	#, tmp2072
	movl	%eax, %ecx	#, D.12197
	imull	%edx	# tmp2072
	movl	%ecx, %eax	# D.12197, tmp2074
	sarl	$31, %eax	#, tmp2074
	sarl	$4, %edx	#, tmp2070
	subl	%eax, %edx	# tmp2074, tmp2070
	imull	$101, %edx, %edx	#, tmp2070, tmp2075
	subl	%edx, %ecx	# tmp2075, tmp2076
	movl	bm+31360, %edx	# bm.n_bubbles, prephitmp.875
	cmpl	%ecx, 44(%esp)	# tmp2076, %sfp
	jb	.L367	#,
	.loc 1 655 0
	imull	$12, bm+31360, %ebx	#, bm.n_bubbles, tmp2079
	addl	56(%esp), %ebx	# %sfp, D.12192
	call	rand	#
	movl	$56, %ecx	#, tmp2084
	movl	%eax, %edx	# D.12191, tmp2082
	sarl	$31, %edx	#, tmp2082
	idivl	%ecx	# tmp2084
	.loc 1 663 0
	movl	bm+31436, %ecx	# bm.ripples_int, bm.ripples_int
	.loc 1 655 0
	addl	$1, %edx	#, tmp2085
	movl	%edx, (%ebx)	# tmp2085, D.12192_349->x
	.loc 1 656 0
	movl	bm+31360, %edx	# bm.n_bubbles, bm.n_bubbles
	imull	$12, %edx, %eax	#, bm.n_bubbles, tmp2087
	addl	56(%esp), %eax	# %sfp, D.12192
	.loc 1 663 0
	testl	%ecx, %ecx	# bm.ripples_int
	.loc 1 656 0
	movl	$237312, 4(%eax)	#, D.12192_356->y
	.loc 1 657 0
	movl	$0, 8(%eax)	#, D.12192_356->dy
	.loc 1 663 0
	je	.L369	#,
	.loc 1 665 0
	movl	(%eax), %eax	# D.12192_356->x, D.12187
	cmpl	$2, %eax	#, D.12187
	jle	.L370	#,
	.loc 1 666 0
	leal	-8(,%eax,4), %eax	#, D.12183
	addl	bm+31348, %eax	# bm.waterlevels, D.12183
	subl	%ecx, (%eax)	# bm.ripples_int, *D.12183_376
	movl	bm+31360, %edx	# bm.n_bubbles, bm.n_bubbles
	movl	bm+31436, %ecx	# bm.ripples_int, bm.ripples_int
.L370:
	.loc 1 668 0
	movl	56(%esp), %ebx	# %sfp,
	imull	$12, %edx, %edx	#, bm.n_bubbles, tmp2095
	movl	bm+31348, %eax	# bm.waterlevels, D.12240
	movl	(%ebx,%edx), %edx	# D.12192_384->x, D.12192_384->x
	subl	%ecx, -4(%eax,%edx,4)	# bm.ripples_int, *D.12178_389
	.loc 1 669 0
	imull	$12, bm+31360, %edx	#, bm.n_bubbles, tmp2103
	movl	bm+31436, %ecx	# bm.ripples_int, bm.ripples_int
	movl	(%ebx,%edx), %edx	# D.12192_397->x, D.12192_397->x
	subl	%ecx, (%eax,%edx,4)	# bm.ripples_int, *D.12173_401
	.loc 1 670 0
	imull	$12, bm+31360, %edx	#, bm.n_bubbles, tmp2110
	movl	bm+31436, %ecx	# bm.ripples_int, bm.ripples_int
	movl	(%ebx,%edx), %edx	# D.12192_409->x, D.12192_409->x
	subl	%ecx, 4(%eax,%edx,4)	# bm.ripples_int, *D.12168_414
	.loc 1 671 0
	movl	bm+31360, %edx	# bm.n_bubbles, bm.n_bubbles
	imull	$12, %edx, %ecx	#, bm.n_bubbles, tmp2118
	movl	(%ebx,%ecx), %ecx	# D.12192_421->x, D.12187
	cmpl	$54, %ecx	#, D.12187
	jg	.L369	#,
	.loc 1 672 0
	movl	bm+31436, %edx	# bm.ripples_int, bm.ripples_int
	subl	%edx, 8(%eax,%ecx,4)	# bm.ripples_int, *D.12163_432
	movl	bm+31360, %edx	# bm.n_bubbles, bm.n_bubbles
.L369:
	.loc 1 677 0
	addl	$1, %edx	#, prephitmp.875
	movl	%edx, bm+31360	# prephitmp.875, bm.n_bubbles
	jmp	.L367	#
.LVL555:
	.p2align 4,,7
	.p2align 3
.L396:
.LBB271:
.LBB153:
	.loc 1 1370 0
	leal	1(%ecx), %eax	#, prephitmp.875
	cmpl	$59, %ecx	#, tx.55
	movl	%eax, tx.7566	# prephitmp.875, tx
	jle	.L397	#,
	.loc 1 1371 0
	movl	$59, tx.7566	#, tx
	.loc 1 1372 0
	movl	$59, %eax	#, prephitmp.875
	xorl	%esi, %esi	# prephitmp.875
	movl	$0, rev.7568	#, rev
	jmp	.L397	#
	.p2align 4,,7
	.p2align 3
.L393:
	.loc 1 1355 0
	testl	%ebx, %ebx	# prephitmp.875
	je	.L390	#,
.L392:
	.loc 1 1356 0
	addl	$10, %edx	#, posy
.LVL556:
	jmp	.L390	#
	.p2align 4,,7
	.p2align 3
.L509:
	.loc 1 1350 0
	testl	%ebx, %ebx	# prephitmp.875
	jne	.L391	#,
	.loc 1 1351 0
	movl	$1, upsidedown.7569	#, upsidedown
	movb	$1, %bl	#,
	jmp	.L392	#
.LVL557:
.L517:
.LBE153:
.LBE271:
.LBE281:
.LBE294:
.LBB295:
.LBB291:
	.loc 1 1007 0
	movl	bm+31964, %ecx	# bm.hisadd, D.12624
	.loc 1 1004 0
	movl	$5, update.7440	#, update
	.loc 1 1007 0
	testl	%ecx, %ecx	# D.12624
	je	.L449	#,
	.loc 1 1008 0
	movl	bm+31960, %eax	# bm.history, bm.history
	xorl	%edx, %edx	# tmp2496
	divl	%ecx	# D.12624
	movl	%eax, bm+31960	# tmp2495, bm.history
.L449:
	.loc 1 1009 0
	movl	bm+31716, %ecx	# bm.memadd, D.12621
	testl	%ecx, %ecx	# D.12621
	je	.L450	#,
	.loc 1 1010 0
	movl	bm+31712, %eax	# bm.memhist, bm.memhist
	xorl	%edx, %edx	# tmp2502
	divl	%ecx	# D.12621
	movl	%eax, bm+31712	# tmp2501, bm.memhist
.L450:
	.loc 1 1012 0
	movl	$220, 8(%esp)	#,
	.loc 1 1021 0
	movl	$bm+20194, %edi	#, tmp2510
.LVL558:
	movl	$mem_screen+3666, %esi	#, tmp2511
	.loc 1 1012 0
	movl	$bm+31748, 4(%esp)	#,
	movl	$bm+31744, (%esp)	#,
	call	memmove	#
	.loc 1 1013 0
	movl	$220, 8(%esp)	#,
	movl	$bm+31500, 4(%esp)	#,
	movl	$bm+31496, (%esp)	#,
	call	memmove	#
	.loc 1 1021 0
	movl	$1348, %ecx	#, tmp2512
	.loc 1 1025 0
	movl	$bm+31496, %edx	#,
	.loc 1 1021 0
	movsw
	.loc 1 1025 0
	movl	$31, %eax	#,
	.loc 1 1015 0
	movl	$0, bm+31960	#, bm.history
	.loc 1 1016 0
	movl	$0, bm+31964	#, bm.hisadd
	.loc 1 1021 0
	rep movsl
	.loc 1 1022 0
	movl	$bm+25589, %edi	#, tmp2515
	movl	$load_screen+3318, %esi	#, tmp2516
	movsb
	.loc 1 1017 0
	movl	$0, bm+31712	#, bm.memhist
	.loc 1 1018 0
	movl	$0, bm+31716	#, bm.memadd
	.loc 1 1022 0
	movsw
	movw	$1434, %cx	#,
	rep movsl
	.loc 1 1025 0
	movl	$bm+20194, %ecx	#,
	.loc 1 1022 0
	movsw
	movsb
	.loc 1 1025 0
	call	draw_history.constprop.1	#
	.loc 1 1027 0
	movl	$bm+25589, %ecx	#,
	movl	$bm+31744, %edx	#,
	movl	$33, %eax	#,
	call	draw_history.constprop.1	#
	jmp	.L448	#
.LVL559:
.L510:
.LBE291:
.LBE295:
.LBB296:
.LBB282:
.LBB272:
.LBB154:
.LBB145:
.LBB146:
	.loc 1 1335 0
	movl	totalcounter.7562, %eax	# totalcounter, totalcounter
.LBE146:
.LBE145:
	.loc 1 1359 0
	movl	rev.7568, %esi	# rev, rev.54
.LBB148:
.LBB147:
	.loc 1 1330 0
	movl	$0, 416(%esp)	#, outp
	movl	$0, 420(%esp)	#, outp
	.loc 1 1335 0
	addl	$1, %eax	#, totalcounter
	cmpl	$15, %eax	#, totalcounter
	.loc 1 1330 0
	movl	$0, 424(%esp)	#, outp
	movl	$0, 428(%esp)	#, outp
	movl	$1, 432(%esp)	#, outp
	movl	$1, 436(%esp)	#, outp
	movl	$1, 440(%esp)	#, outp
	movl	$1, 444(%esp)	#, outp
	movl	$2, 448(%esp)	#, outp
	movl	$2, 452(%esp)	#, outp
	movl	$2, 456(%esp)	#, outp
	movl	$2, 460(%esp)	#, outp
	movl	$1, 464(%esp)	#, outp
	movl	$1, 468(%esp)	#, outp
	movl	$1, 472(%esp)	#, outp
	movl	$1, 476(%esp)	#, outp
	.loc 1 1335 0
	movl	%eax, totalcounter.7562	# totalcounter, totalcounter
	jle	.L395	#,
	.loc 1 1336 0
	movl	$0, totalcounter.7562	#, totalcounter
	xorl	%eax, %eax	# totalcounter
.L395:
.LBE147:
.LBE148:
	.loc 1 1359 0
	movl	416(%esp,%eax,4), %ecx	# outp, tmp2268
	movl	tx.7566, %eax	# tx,
	movl	%ebx, 4(%esp)	# prephitmp.875,
	movl	%esi, (%esp)	# rev.54,
	call	duck_set	#
.LVL560:
	jmp	.L386	#
.LVL561:
.L458:
.LBE154:
.LBE272:
.LBB273:
.LBB260:
.LBB248:
.LBB235:
	.loc 1 301 0
	movl	$21, %esi	#, ivtmp.1013
	jmp	.L407	#
.LVL562:
.L457:
.LBE235:
.LBE248:
.LBE260:
.LBE273:
.LBB274:
.LBB155:
.LBB149:
.LBB141:
	movl	$21, %esi	#, ivtmp.1015
	jmp	.L404	#
.LVL563:
.L462:
.LBE141:
.LBE149:
.LBE155:
.LBE274:
.LBB275:
.LBB261:
.LBB249:
.LBB179:
	movl	$21, %esi	#, ivtmp.1017
	jmp	.L420	#
.LVL564:
.L461:
	movl	$21, %esi	#, ivtmp.1019
	jmp	.L417	#
.LVL565:
.L511:
.LBE179:
.LBE249:
.LBE261:
.LBE275:
.LBB276:
.LBB156:
.LBB150:
.LBB142:
	.loc 1 1335 0
	movl	416(%esp,%ecx,4), %ecx	# outp, prephitmp.974
	jmp	.L399	#
.LVL566:
.L459:
.LBE142:
.LBE150:
.LBE156:
.LBE276:
.LBB277:
.LBB262:
.LBB250:
.LBB180:
	.loc 1 301 0
	movl	$21, %esi	#, ivtmp.1011
	jmp	.L410	#
.LVL567:
.L463:
	movl	$21, %esi	#, ivtmp.1009
	jmp	.L423	#
.LVL568:
.L460:
	movl	$21, %esi	#, ivtmp.1021
	jmp	.L414	#
.LVL569:
.L344:
.LBE180:
.LBE250:
.LBE262:
.LBE277:
.LBE282:
.LBE296:
	.loc 1 381 0
	cmpl	$0, bm+31336	#, bm.picture_lock
	.loc 1 379 0
	movl	$1, 40(%esp)	#, %sfp
	.loc 1 381 0
	jne	.L497	#,
.LBB297:
.LBB298:
	.loc 1 480 0
	cmpl	$0, first_time.7305	#, first_time
	je	.L347	#,
	.loc 1 481 0
	movl	$0, first_time.7305	#, first_time
	.loc 1 482 0
	movl	$.LC29, (%esp)	#,
	call	XStringToKeysym	#
	movl	%eax, 4(%esp)	# D.12004,
	movl	wmxp_display, %eax	# wmxp_display, wmxp_display
	movl	%eax, (%esp)	# wmxp_display,
	call	XKeysymToKeycode	#
	.loc 1 484 0
	movl	$.LC30, (%esp)	#,
	.loc 1 482 0
	movb	%al, lshift_code.7303	# lshift_code.36, lshift_code
	.loc 1 484 0
	call	XStringToKeysym	#
	movl	%eax, 4(%esp)	# D.12001,
	movl	wmxp_display, %eax	# wmxp_display, wmxp_display
	movl	%eax, (%esp)	# wmxp_display,
	call	XKeysymToKeycode	#
	movb	%al, rshift_code.7304	# rshift_code.37, rshift_code
.L347:
	.loc 1 488 0
	movl	wmxp_display, %eax	# wmxp_display, wmxp_display
	leal	480(%esp), %edx	#,
	movl	%edx, 4(%esp)	#,
	movl	%eax, (%esp)	# wmxp_display,
	call	XQueryKeymap	#
	.loc 1 507 0
	movzbl	lshift_code.7303, %eax	# lshift_code, lshift_code.38
	movl	%eax, %edx	# lshift_code.38, tmp1972
	movl	%eax, %ecx	#, tmp1976
	shrb	$3, %dl	#, tmp1972
	movl	$1, %eax	#, tmp1978
	movzbl	%dl, %edx	# tmp1972, tmp1973
	andl	$7, %ecx	#, tmp1976
	movsbl	480(%esp,%edx), %edx	# keys, tmp1974
	movl	%eax, %ebx	# tmp1978, tmp1977
	sall	%cl, %ebx	# tmp1976, tmp1977
	.loc 1 509 0
	xorl	%ecx, %ecx	# D.11982
	.loc 1 507 0
	cmpl	%ebx, %edx	# tmp1977, tmp1974
	je	.L348	#,
	.loc 1 508 0
	movzbl	rshift_code.7304, %ecx	# rshift_code, rshift_code.39
	movl	%ecx, %edx	# rshift_code.39, tmp1979
	andl	$7, %ecx	#, tmp1983
	shrb	$3, %dl	#, tmp1979
	movzbl	%dl, %edx	# tmp1979, tmp1980
	movsbl	480(%esp,%edx), %edx	# keys, tmp1981
	sall	%cl, %eax	# tmp1983, tmp1984
	.loc 1 509 0
	xorl	%ecx, %ecx	# D.11982
	cmpl	%eax, %edx	# tmp1984, tmp1981
	setne	%cl	#, D.11982
.L348:
.LBE298:
.LBE297:
	.loc 1 382 0
	movl	%ecx, bm+31332	# D.11982, bm.screen_type
	.loc 1 379 0
	movl	$1, 40(%esp)	#, %sfp
	jmp	.L497	#
.LVL570:
.L507:
.LBB299:
.LBB283:
	.loc 1 756 0
	addl	$1, %eax	#, tmp2170
	movb	%al, 2(%esi)	# tmp2170, MEM[(unsigned char *)D.12284_590 + 2B]
	jmp	.L379	#
.L506:
	.loc 1 749 0
	addl	$1, %eax	#, tmp2169
	movb	%al, (%esi)	# tmp2169, *D.12284_590
	jmp	.L378	#
.L383:
	.loc 1 781 0
	addl	$1, %edx	#, tmp2174
	movb	%dl, 60(%eax)	# tmp2174, MEM[(unsigned char *)D.12268_1188 + 60B]
	jmp	.L501	#
.L508:
	.loc 1 773 0
	addl	$1, %edx	#, tmp2172
	movb	%dl, 58(%eax)	# tmp2172, MEM[(unsigned char *)D.12268_1188 + 58B]
	jmp	.L382	#
.LVL571:
.L518:
.LBB278:
.LBB263:
.LBB251:
.LBB252:
	.loc 1 989 0
	movl	delay.7436, %eax	# delay, delay
	addl	$1, %eax	#, delay.82
	cmpl	$29, %eax	#, delay.82
	movl	%eax, delay.7436	# delay.82, delay
	jle	.L432	#,
	.loc 1 992 0
	movl	$0, delay.7436	#, delay
	.loc 1 993 0
	call	render_secondary	#
	jmp	.L432	#
.L514:
.LBE252:
.LBE251:
.LBB253:
.LBB254:
	.loc 1 989 0
	movl	delay.7436, %eax	# delay, delay
	addl	$1, %eax	#, delay.82
	cmpl	$29, %eax	#, delay.82
	movl	%eax, delay.7436	# delay.82, delay
	jle	.L431	#,
	.loc 1 992 0
	movl	$0, delay.7436	#, delay
	.loc 1 993 0
	call	render_secondary	#
.L431:
.LBE254:
.LBE253:
	.loc 1 1201 0
	movl	$40, memblend.7506	#, memblend
	jmp	.L428	#
.LVL572:
.L519:
.LBE263:
.LBE278:
.LBE283:
.LBE299:
	.loc 1 367 0
	xorl	%eax, %eax	# tmp1962
	cmpl	$0, bm+31336	#, bm.picture_lock
	sete	%al	#, tmp1962
	movl	%eax, bm+31336	# tmp1962, bm.picture_lock
	.loc 1 368 0
	jmp	.L497	#
.LBE127:
	.cfi_endproc
.LFE35:
	.size	main, .-main
	.globl	x_resource_extras
	.section	.rodata.str1.1
.LC31:
	.string	"-maxbubbles"
	.section	.rodata.str1.4
	.align 4
.LC32:
	.string	"Maximum number of simultaneous bubbles in the dockapp"
	.section	.rodata.str1.1
.LC33:
	.string	"-air_noswap"
	.section	.rodata.str1.4
	.align 4
.LC34:
	.string	"Color of air and bubbles when swap is at 0%"
	.section	.rodata.str1.1
.LC35:
	.string	"-air_maxswap"
	.section	.rodata.str1.4
	.align 4
.LC36:
	.string	"Color of air and bubbles when swap is at 100%"
	.section	.rodata.str1.1
.LC37:
	.string	"-liquid_noswap"
	.section	.rodata.str1.4
	.align 4
.LC38:
	.string	"Color of water when swap is at 0%"
	.section	.rodata.str1.1
.LC39:
	.string	"-liquid_maxswap"
	.section	.rodata.str1.4
	.align 4
.LC40:
	.string	"Color of water when swap is at 100%"
	.section	.rodata.str1.1
.LC41:
	.string	"-ripples"
	.section	.rodata.str1.4
	.align 4
.LC42:
	.string	"Pixels to disturb the surface when a bubble is formed/pops"
	.section	.rodata.str1.1
.LC43:
	.string	"-gravity"
	.section	.rodata.str1.4
	.align 4
.LC44:
	.string	"Pixels/refresh/refresh to accelerate bubbles upwards"
	.section	.rodata.str1.1
.LC45:
	.string	"-volatility"
	.section	.rodata.str1.4
	.align 4
.LC46:
	.string	"Restorative force on water surface in proportion/refresh"
	.section	.rodata.str1.1
.LC47:
	.string	"-viscosity"
	.section	.rodata.str1.4
	.align 4
.LC48:
	.string	"Attenuation of surface velocity in proportion/refresh"
	.section	.rodata.str1.1
.LC49:
	.string	"-speed_limit"
	.section	.rodata.str1.4
	.align 4
.LC50:
	.string	"Maximum water surface velocity in pixels/refresh"
	.section	.rodata.str1.1
.LC51:
	.string	"-help"
.LC52:
	.string	"Displays this help"
.LC53:
	.string	"-duck"
.LC54:
	.string	"Draw the duck?"
.LC55:
	.string	"-d"
.LC56:
	.string	"Just don't draw the duck"
.LC57:
	.string	"-upsidedown"
	.section	.rodata.str1.4
	.align 4
.LC58:
	.string	"Can the duck flip when the tank is overfull?"
	.section	.rodata.str1.1
.LC59:
	.string	"-u"
.LC60:
	.string	"The duck can never flip"
.LC61:
	.string	"-cpumeter"
	.section	.rodata.str1.4
	.align 4
.LC62:
	.string	"Show the current load at the bottom"
	.section	.rodata.str1.1
.LC63:
	.string	"-c"
.LC64:
	.string	"Don't show the current load"
.LC65:
	.string	"-graphdigitcolor"
	.section	.rodata.str1.4
	.align 4
.LC66:
	.string	"The color for the digits on the graphs"
	.section	.rodata.str1.1
.LC67:
	.string	"-graphwarncolor"
	.section	.rodata.str1.4
	.align 4
.LC68:
	.string	"The color for the digits on the memory graph when above 90%"
	.section	.rodata.str1.1
.LC69:
	.string	"-p"
	.section	.rodata.str1.4
	.align 4
.LC70:
	.string	"Adjust the digit colors to pale blue and cyan"
	.section	.rodata.str1.1
.LC71:
	.string	"-graphs"
.LC72:
	.string	"Does hovering show the graphs"
.LC73:
	.string	"-m"
.LC74:
	.string	"Graphs are never shown"
.LC75:
	.string	"-units"
.LC76:
	.string	"Units for memory in KB or MB"
.LC77:
	.string	"-k"
.LC78:
	.string	"Memory graphs use MB"
.LC79:
	.string	"-shifttime"
	.section	.rodata.str1.4
	.align 4
.LC80:
	.string	"Number of hours after midnight that are drawn as part of the previous day"
	.section	.rodata
	.align 32
	.type	x_resource_extras, @object
	.size	x_resource_extras, 400
x_resource_extras:
# option:
	.long	.LC31
# parse_as:
	.long	0
# write_to:
	.long	bm+31392
# description:
	.long	.LC32
# option:
	.long	.LC33
# parse_as:
	.long	1
# write_to:
	.long	bm+31364
# description:
	.long	.LC34
# option:
	.long	.LC35
# parse_as:
	.long	1
# write_to:
	.long	bm+31372
# description:
	.long	.LC36
# option:
	.long	.LC37
# parse_as:
	.long	1
# write_to:
	.long	bm+31368
# description:
	.long	.LC38
# option:
	.long	.LC39
# parse_as:
	.long	1
# write_to:
	.long	bm+31376
# description:
	.long	.LC40
# option:
	.long	.LC41
# parse_as:
	.long	2
# write_to:
	.long	bm+31396
# description:
	.long	.LC42
# option:
	.long	.LC43
# parse_as:
	.long	2
# write_to:
	.long	bm+31404
# description:
	.long	.LC44
# option:
	.long	.LC45
# parse_as:
	.long	2
# write_to:
	.long	bm+31412
# description:
	.long	.LC46
# option:
	.long	.LC47
# parse_as:
	.long	2
# write_to:
	.long	bm+31420
# description:
	.long	.LC48
# option:
	.long	.LC49
# parse_as:
	.long	2
# write_to:
	.long	bm+31428
# description:
	.long	.LC50
# option:
	.long	.LC51
# parse_as:
	.long	3
# write_to:
	.long	do_help
# description:
	.long	.LC52
# option:
	.long	.LC53
# parse_as:
	.long	3
# write_to:
	.long	duck_enabled
# description:
	.long	.LC54
# option:
	.long	.LC55
# parse_as:
	.long	4
# write_to:
	.long	duck_enabled
# description:
	.long	.LC56
# option:
	.long	.LC57
# parse_as:
	.long	3
# write_to:
	.long	upside_down_duck_enabled
# description:
	.long	.LC58
# option:
	.long	.LC59
# parse_as:
	.long	4
# write_to:
	.long	upside_down_duck_enabled
# description:
	.long	.LC60
# option:
	.long	.LC61
# parse_as:
	.long	3
# write_to:
	.long	cpu_enabled
# description:
	.long	.LC62
# option:
	.long	.LC63
# parse_as:
	.long	4
# write_to:
	.long	cpu_enabled
# description:
	.long	.LC64
# option:
	.long	.LC65
# parse_as:
	.long	1
# write_to:
	.long	graph_digit_color
# description:
	.long	.LC66
# option:
	.long	.LC67
# parse_as:
	.long	1
# write_to:
	.long	graph_digit_warning_color
# description:
	.long	.LC68
# option:
	.long	.LC69
# parse_as:
	.long	4
# write_to:
	.long	pale
# description:
	.long	.LC70
# option:
	.long	.LC71
# parse_as:
	.long	3
# write_to:
	.long	memscreen_enabled
# description:
	.long	.LC72
# option:
	.long	.LC73
# parse_as:
	.long	4
# write_to:
	.long	memscreen_enabled
# description:
	.long	.LC74
# option:
	.long	.LC75
# parse_as:
	.long	3
# write_to:
	.long	memscreen_megabytes
# description:
	.long	.LC76
# option:
	.long	.LC77
# parse_as:
	.long	4
# write_to:
	.long	memscreen_megabytes
# description:
	.long	.LC78
# option:
	.long	.LC79
# parse_as:
	.long	0
# write_to:
	.long	shifttime
# description:
	.long	.LC80
	.globl	x_resource_options
	.section	.rodata.str1.1
.LC81:
	.string	"*maxbubbles"
.LC82:
	.string	"*air_noswap"
.LC83:
	.string	"*air_maxswap"
.LC84:
	.string	"*liquid_noswap"
.LC85:
	.string	"*liquid_maxswap"
.LC86:
	.string	"*ripples"
.LC87:
	.string	"*gravity"
.LC88:
	.string	"*volatility"
.LC89:
	.string	"*viscosity"
.LC90:
	.string	"*speed_limit"
.LC91:
	.string	".help"
.LC92:
	.string	"1"
.LC93:
	.string	"*duck"
.LC94:
	.string	"no"
.LC95:
	.string	"*upsidedown"
.LC96:
	.string	"*cpumeter"
.LC97:
	.string	"*graphdigitcolor"
.LC98:
	.string	"*graphwarncolor"
.LC99:
	.string	".graphdigitpale"
.LC100:
	.string	"*graphs"
.LC101:
	.string	"*units"
.LC102:
	.string	"m"
.LC103:
	.string	"*shifttime"
	.data
	.align 32
	.type	x_resource_options, @object
	.size	x_resource_options, 400
x_resource_options:
# option:
	.long	.LC31
# specifier:
	.long	.LC81
# argKind:
	.long	3
# value:
	.long	0
# option:
	.long	.LC33
# specifier:
	.long	.LC82
# argKind:
	.long	3
# value:
	.long	0
# option:
	.long	.LC35
# specifier:
	.long	.LC83
# argKind:
	.long	3
# value:
	.long	0
# option:
	.long	.LC37
# specifier:
	.long	.LC84
# argKind:
	.long	3
# value:
	.long	0
# option:
	.long	.LC39
# specifier:
	.long	.LC85
# argKind:
	.long	3
# value:
	.long	0
# option:
	.long	.LC41
# specifier:
	.long	.LC86
# argKind:
	.long	3
# value:
	.long	0
# option:
	.long	.LC43
# specifier:
	.long	.LC87
# argKind:
	.long	3
# value:
	.long	0
# option:
	.long	.LC45
# specifier:
	.long	.LC88
# argKind:
	.long	3
# value:
	.long	0
# option:
	.long	.LC47
# specifier:
	.long	.LC89
# argKind:
	.long	3
# value:
	.long	0
# option:
	.long	.LC49
# specifier:
	.long	.LC90
# argKind:
	.long	3
# value:
	.long	0
# option:
	.long	.LC51
# specifier:
	.long	.LC91
# argKind:
	.long	0
# value:
	.long	.LC92
# option:
	.long	.LC53
# specifier:
	.long	.LC93
# argKind:
	.long	3
# value:
	.long	0
# option:
	.long	.LC55
# specifier:
	.long	.LC93
# argKind:
	.long	0
# value:
	.long	.LC94
# option:
	.long	.LC57
# specifier:
	.long	.LC95
# argKind:
	.long	3
# value:
	.long	0
# option:
	.long	.LC59
# specifier:
	.long	.LC95
# argKind:
	.long	0
# value:
	.long	.LC94
# option:
	.long	.LC61
# specifier:
	.long	.LC96
# argKind:
	.long	3
# value:
	.long	0
# option:
	.long	.LC63
# specifier:
	.long	.LC96
# argKind:
	.long	0
# value:
	.long	.LC94
# option:
	.long	.LC65
# specifier:
	.long	.LC97
# argKind:
	.long	3
# value:
	.long	0
# option:
	.long	.LC67
# specifier:
	.long	.LC98
# argKind:
	.long	3
# value:
	.long	0
# option:
	.long	.LC69
# specifier:
	.long	.LC99
# argKind:
	.long	1
# value:
	.long	0
# option:
	.long	.LC71
# specifier:
	.long	.LC100
# argKind:
	.long	3
# value:
	.long	0
# option:
	.long	.LC73
# specifier:
	.long	.LC100
# argKind:
	.long	1
# value:
	.long	.LC94
# option:
	.long	.LC75
# specifier:
	.long	.LC101
# argKind:
	.long	3
# value:
	.long	0
# option:
	.long	.LC77
# specifier:
	.long	.LC101
# argKind:
	.long	1
# value:
	.long	.LC102
# option:
	.long	.LC79
# specifier:
	.long	.LC103
# argKind:
	.long	3
# value:
	.long	0
	.globl	do_help
	.bss
	.align 4
	.type	do_help, @object
	.size	do_help, 4
do_help:
	.zero	4
	.globl	shifttime
	.align 4
	.type	shifttime, @object
	.size	shifttime, 4
shifttime:
	.zero	4
	.globl	pale
	.align 4
	.type	pale, @object
	.size	pale, 4
pale:
	.zero	4
	.comm	graph_digit_warning_color,4,4
	.comm	graph_digit_color,4,4
	.globl	memscreen_megabytes
	.align 4
	.type	memscreen_megabytes, @object
	.size	memscreen_megabytes, 4
memscreen_megabytes:
	.zero	4
	.globl	memscreen_enabled
	.data
	.align 4
	.type	memscreen_enabled, @object
	.size	memscreen_enabled, 4
memscreen_enabled:
	.long	1
	.globl	cpu_enabled
	.align 4
	.type	cpu_enabled, @object
	.size	cpu_enabled, 4
cpu_enabled:
	.long	1
	.globl	upside_down_duck_enabled
	.align 4
	.type	upside_down_duck_enabled, @object
	.size	upside_down_duck_enabled, 4
upside_down_duck_enabled:
	.long	1
	.globl	duck_enabled
	.align 4
	.type	duck_enabled, @object
	.size	duck_enabled, 4
duck_enabled:
	.long	1
	.comm	bm,31968,32
	.globl	digits
	.align 32
	.type	digits, @object
	.size	digits, 2566
digits:
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	" \260\254 \260\254 \260\254"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"}q"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"}q \260\254 \260\254 \260\254"
	.string	"}q"
	.string	""
	.string	""
	.string	""
	.string	"}q \260\254 \260\254 \260\254"
	.string	"}q"
	.string	""
	.string	""
	.string	""
	.string	"}q"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"}q"
	.string	""
	.string	""
	.string	""
	.string	"}q \260\254 \260\254 \260\254"
	.string	"}q"
	.string	""
	.string	""
	.string	""
	.string	"}q \260\254 \260\254 \260\254"
	.string	"}q"
	.string	""
	.string	""
	.string	""
	.string	"}q \260\254 \260\254 \260\254"
	.string	"}q"
	.string	""
	.string	""
	.string	""
	.string	"}q \260\254 \260\254 \260\254"
	.string	"}q"
	.string	""
	.string	""
	.string	""
	.string	"}q \260\254 \260\254 \260\254"
	.string	"}q"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	" \260\254"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	" \260\254"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	" \260\254"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	" \260\254"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	" \260\254"
	.string	""
	.string	""
	.string	" \260\254"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	" \260\254"
	.string	""
	.string	""
	.string	" \260\254"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	" \260\254"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	" \260\254"
	.string	""
	.string	""
	.string	" \260\254"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	" \260\254"
	.string	""
	.string	""
	.string	" \260\254"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	" \260\254"
	.string	""
	.string	""
	.string	" \260\254"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	" \260\254"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	" \260\254"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	" \260\254"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	" \260\254"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	" \260\254"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	" \260\254"
	.string	""
	.string	""
	.string	" \260\254"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	" \260\254"
	.string	""
	.string	""
	.string	" \260\254"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	" \260\254"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	" \260\254"
	.string	""
	.string	""
	.string	" \260\254"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	" \260\254"
	.string	""
	.string	""
	.string	" \260\254"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	" \260\254"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	" \260\254"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"}q"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"}q"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"}q"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"}q \260\254 \260\254 \260\254"
	.string	"}q"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	" \260\254 \260\254 \260\254"
	.string	"}q"
	.string	""
	.string	""
	.string	""
	.string	"}q \260\254 \260\254 \260\254"
	.string	"}q"
	.string	""
	.string	""
	.string	""
	.string	"}q \260\254 \260\254 \260\254"
	.string	"}q"
	.string	""
	.string	""
	.string	""
	.string	"}q \260\254 \260\254 \260\254"
	.string	"}q"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"}q"
	.string	""
	.string	""
	.string	""
	.string	"IA \260\254 \260\254 \260\254"
	.string	"IA"
	.string	""
	.string	""
	.string	""
	.string	"}q \260\254 \260\254 \260\254"
	.string	"}q"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	" \260\254"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	" \260\254"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	" \260\254"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	" \260\254"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	" \260\254"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	" \260\254"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	" \260\254"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	" \260\254"
	.string	""
	.string	""
	.string	" \260\254"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	" \260\254"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	" \260\254"
	.string	""
	.string	""
	.string	" \260\254"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	" \260\254"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	" \260\254"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	" \260\254"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	" \260\254"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	" \260\254"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	" \260\254"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	" \260\254"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	" \260\254"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	" \260\254"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	" \260\254"
	.string	""
	.string	""
	.string	" \260\254"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	" \260\254"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	" \260\254"
	.string	""
	.string	""
	.string	" \260\254"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	" \260\254"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	" \260\254"
	.string	""
	.string	""
	.string	" \260\254"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	" \260\254"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	" \260\254 \260\254 \260\254"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	" \260\254"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"}q \260\254 \260\254 \260\254"
	.string	"}q"
	.string	""
	.string	""
	.string	""
	.string	"}q \260\254 \260\254 \260\254"
	.string	"}q"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"}q"
	.string	""
	.string	""
	.string	""
	.string	"}q \260\254 \260\254 \260\254"
	.string	"}q"
	.string	""
	.string	""
	.string	""
	.string	"}q \260\254 \260\254 \260\254"
	.string	"}q"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"}q"
	.string	""
	.string	""
	.string	""
	.string	"}q \260\254 \260\254 \260\254"
	.string	"}q"
	.string	""
	.string	""
	.string	""
	.string	"}q \260\254 \260\254 \260\254"
	.string	"}q"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.globl	bigdigits
	.align 32
	.type	bigdigits, @object
	.size	bigdigits, 4160
bigdigits:
	.byte	0
	.byte	0
	.byte	0
	.byte	2
	.byte	85
	.byte	-101
	.byte	-100
	.byte	87
	.byte	2
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	50
	.byte	-87
	.byte	-87
	.byte	-87
	.byte	5
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	6
	.byte	89
	.byte	-83
	.byte	-28
	.byte	-4
	.byte	-15
	.byte	-71
	.byte	70
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	5
	.byte	68
	.byte	-126
	.byte	-94
	.byte	-95
	.byte	119
	.byte	29
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	122
	.byte	-87
	.byte	-87
	.byte	-87
	.byte	14
	.byte	0
	.byte	0
	.byte	0
	.byte	21
	.byte	83
	.byte	83
	.byte	83
	.byte	83
	.byte	83
	.byte	83
	.byte	83
	.byte	83
	.byte	64
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	31
	.byte	-96
	.byte	-23
	.byte	-6
	.byte	-42
	.byte	-122
	.byte	29
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	48
	.byte	-84
	.byte	-20
	.byte	-4
	.byte	-30
	.byte	-106
	.byte	24
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	10
	.byte	104
	.byte	-96
	.byte	-100
	.byte	91
	.byte	4
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	6
	.byte	-82
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-79
	.byte	7
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	23
	.byte	-32
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	7
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-40
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-3
	.byte	117
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	102
	.byte	-29
	.byte	-2
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-12
	.byte	88
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	10
	.byte	-17
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	20
	.byte	0
	.byte	0
	.byte	0
	.byte	63
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-61
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	45
	.byte	-23
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-10
	.byte	53
	.byte	0
	.byte	0
	.byte	-34
	.byte	-4
	.byte	-4
	.byte	-4
	.byte	-4
	.byte	-4
	.byte	-4
	.byte	-4
	.byte	-4
	.byte	-4
	.byte	-54
	.byte	0
	.byte	0
	.byte	0
	.byte	69
	.byte	-10
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-30
	.byte	32
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	29
	.byte	-41
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-64
	.byte	14
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-121
	.byte	-1
	.byte	-1
	.byte	-42
	.byte	-43
	.byte	-1
	.byte	-1
	.byte	-118
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	7
	.byte	-64
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	7
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-10
	.byte	-1
	.byte	-23
	.byte	115
	.byte	122
	.byte	-16
	.byte	-1
	.byte	-1
	.byte	-4
	.byte	66
	.byte	0
	.byte	0
	.byte	0
	.byte	-57
	.byte	-1
	.byte	-2
	.byte	-54
	.byte	-54
	.byte	-2
	.byte	-1
	.byte	-1
	.byte	-8
	.byte	50
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	72
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	20
	.byte	0
	.byte	0
	.byte	0
	.byte	63
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-61
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	9
	.byte	-42
	.byte	-1
	.byte	-2
	.byte	-91
	.byte	99
	.byte	-81
	.byte	-1
	.byte	-1
	.byte	72
	.byte	0
	.byte	0
	.byte	-31
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-52
	.byte	0
	.byte	0
	.byte	14
	.byte	-26
	.byte	-1
	.byte	-1
	.byte	-55
	.byte	106
	.byte	-27
	.byte	-1
	.byte	-1
	.byte	-69
	.byte	0
	.byte	0
	.byte	0
	.byte	3
	.byte	-59
	.byte	-1
	.byte	-1
	.byte	-29
	.byte	-53
	.byte	-1
	.byte	-1
	.byte	-89
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	30
	.byte	-8
	.byte	-1
	.byte	-36
	.byte	11
	.byte	10
	.byte	-37
	.byte	-1
	.byte	-7
	.byte	33
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-105
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	7
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-10
	.byte	-2
	.byte	64
	.byte	0
	.byte	0
	.byte	85
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-59
	.byte	1
	.byte	0
	.byte	0
	.byte	-57
	.byte	-1
	.byte	-121
	.byte	3
	.byte	3
	.byte	122
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-80
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-105
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	20
	.byte	0
	.byte	0
	.byte	0
	.byte	63
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-61
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	110
	.byte	-1
	.byte	-1
	.byte	-97
	.byte	1
	.byte	0
	.byte	4
	.byte	-69
	.byte	-1
	.byte	72
	.byte	0
	.byte	0
	.byte	-31
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-52
	.byte	0
	.byte	0
	.byte	104
	.byte	-1
	.byte	-1
	.byte	-2
	.byte	50
	.byte	0
	.byte	105
	.byte	-1
	.byte	-1
	.byte	-2
	.byte	50
	.byte	0
	.byte	0
	.byte	84
	.byte	-1
	.byte	-1
	.byte	-8
	.byte	33
	.byte	4
	.byte	-58
	.byte	-1
	.byte	-2
	.byte	58
	.byte	0
	.byte	0
	.byte	0
	.byte	-124
	.byte	-1
	.byte	-1
	.byte	-124
	.byte	0
	.byte	0
	.byte	-125
	.byte	-1
	.byte	-1
	.byte	-121
	.byte	0
	.byte	0
	.byte	0
	.byte	99
	.byte	-2
	.byte	-26
	.byte	-62
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	7
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-10
	.byte	-55
	.byte	1
	.byte	0
	.byte	0
	.byte	3
	.byte	-34
	.byte	-1
	.byte	-1
	.byte	-2
	.byte	39
	.byte	0
	.byte	0
	.byte	-57
	.byte	-19
	.byte	13
	.byte	0
	.byte	0
	.byte	7
	.byte	-29
	.byte	-1
	.byte	-1
	.byte	-10
	.byte	16
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	4
	.byte	-31
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	20
	.byte	0
	.byte	0
	.byte	0
	.byte	63
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-61
	.byte	0
	.byte	0
	.byte	0
	.byte	3
	.byte	-41
	.byte	-1
	.byte	-4
	.byte	38
	.byte	0
	.byte	0
	.byte	0
	.byte	75
	.byte	-1
	.byte	72
	.byte	0
	.byte	0
	.byte	-31
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-52
	.byte	0
	.byte	0
	.byte	-77
	.byte	-1
	.byte	-1
	.byte	-12
	.byte	4
	.byte	0
	.byte	49
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	124
	.byte	0
	.byte	0
	.byte	-74
	.byte	-1
	.byte	-1
	.byte	-69
	.byte	0
	.byte	0
	.byte	108
	.byte	-1
	.byte	-1
	.byte	-91
	.byte	0
	.byte	0
	.byte	0
	.byte	-38
	.byte	-1
	.byte	-1
	.byte	85
	.byte	0
	.byte	0
	.byte	83
	.byte	-1
	.byte	-1
	.byte	-36
	.byte	1
	.byte	0
	.byte	0
	.byte	-91
	.byte	-10
	.byte	61
	.byte	-92
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	7
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-10
	.byte	-124
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-99
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	103
	.byte	0
	.byte	0
	.byte	-57
	.byte	-82
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-93
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	60
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	54
	.byte	-2
	.byte	-6
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	20
	.byte	0
	.byte	0
	.byte	0
	.byte	63
	.byte	-6
	.byte	-70
	.byte	-70
	.byte	-70
	.byte	-70
	.byte	-70
	.byte	-70
	.byte	-70
	.byte	-114
	.byte	0
	.byte	0
	.byte	0
	.byte	50
	.byte	-2
	.byte	-1
	.byte	-41
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	16
	.byte	-7
	.byte	72
	.byte	0
	.byte	0
	.byte	-31
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-52
	.byte	0
	.byte	1
	.byte	-32
	.byte	-1
	.byte	-1
	.byte	-33
	.byte	0
	.byte	0
	.byte	23
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-85
	.byte	0
	.byte	9
	.byte	-10
	.byte	-1
	.byte	-1
	.byte	-114
	.byte	0
	.byte	0
	.byte	62
	.byte	-1
	.byte	-1
	.byte	-14
	.byte	7
	.byte	0
	.byte	32
	.byte	-2
	.byte	-1
	.byte	-1
	.byte	59
	.byte	0
	.byte	0
	.byte	57
	.byte	-1
	.byte	-1
	.byte	-2
	.byte	35
	.byte	0
	.byte	0
	.byte	-92
	.byte	98
	.byte	0
	.byte	-92
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	7
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-10
	.byte	87
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	116
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-111
	.byte	0
	.byte	0
	.byte	-57
	.byte	-127
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-128
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	89
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-125
	.byte	-3
	.byte	-64
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	20
	.byte	0
	.byte	0
	.byte	0
	.byte	63
	.byte	-21
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	119
	.byte	-1
	.byte	-1
	.byte	-90
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	93
	.byte	29
	.byte	0
	.byte	0
	.byte	-31
	.byte	-37
	.byte	-68
	.byte	-68
	.byte	-68
	.byte	-68
	.byte	-68
	.byte	-68
	.byte	-42
	.byte	-1
	.byte	-84
	.byte	0
	.byte	6
	.byte	-10
	.byte	-1
	.byte	-1
	.byte	-45
	.byte	0
	.byte	0
	.byte	11
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-59
	.byte	0
	.byte	51
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	116
	.byte	0
	.byte	0
	.byte	35
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	60
	.byte	0
	.byte	87
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	42
	.byte	0
	.byte	0
	.byte	40
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	90
	.byte	0
	.byte	0
	.byte	59
	.byte	1
	.byte	0
	.byte	-92
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	7
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-71
	.byte	46
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	91
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-86
	.byte	0
	.byte	0
	.byte	-107
	.byte	80
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	114
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	100
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	-47
	.byte	-42
	.byte	-103
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	20
	.byte	0
	.byte	0
	.byte	0
	.byte	63
	.byte	-21
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-81
	.byte	-1
	.byte	-1
	.byte	-124
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-31
	.byte	116
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-121
	.byte	-1
	.byte	109
	.byte	0
	.byte	8
	.byte	-2
	.byte	-1
	.byte	-1
	.byte	-50
	.byte	0
	.byte	0
	.byte	6
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-50
	.byte	0
	.byte	88
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	99
	.byte	0
	.byte	0
	.byte	19
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	113
	.byte	0
	.byte	-125
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	30
	.byte	0
	.byte	0
	.byte	28
	.byte	-2
	.byte	-1
	.byte	-1
	.byte	-121
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-92
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	7
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	78
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-76
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	117
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	95
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	36
	.byte	-4
	.byte	-119
	.byte	-105
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	20
	.byte	0
	.byte	0
	.byte	0
	.byte	63
	.byte	-21
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	-37
	.byte	-1
	.byte	-1
	.byte	107
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-31
	.byte	116
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-57
	.byte	-2
	.byte	47
	.byte	0
	.byte	7
	.byte	-6
	.byte	-1
	.byte	-1
	.byte	-48
	.byte	0
	.byte	0
	.byte	8
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-55
	.byte	0
	.byte	112
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	89
	.byte	0
	.byte	0
	.byte	9
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-101
	.byte	0
	.byte	-89
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	21
	.byte	0
	.byte	0
	.byte	19
	.byte	-2
	.byte	-1
	.byte	-1
	.byte	-85
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-92
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	7
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	75
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-78
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-120
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	72
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	112
	.byte	-1
	.byte	58
	.byte	-105
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	20
	.byte	0
	.byte	0
	.byte	0
	.byte	63
	.byte	-21
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	11
	.byte	-10
	.byte	-1
	.byte	-1
	.byte	90
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-31
	.byte	116
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	15
	.byte	-9
	.byte	-22
	.byte	4
	.byte	0
	.byte	3
	.byte	-25
	.byte	-1
	.byte	-1
	.byte	-41
	.byte	0
	.byte	0
	.byte	15
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-77
	.byte	0
	.byte	125
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	84
	.byte	0
	.byte	0
	.byte	3
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-69
	.byte	0
	.byte	-60
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	14
	.byte	0
	.byte	0
	.byte	12
	.byte	-3
	.byte	-1
	.byte	-1
	.byte	-57
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-92
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	7
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	81
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-95
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-78
	.byte	-1
	.byte	-1
	.byte	-4
	.byte	29
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-66
	.byte	-28
	.byte	6
	.byte	-105
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	20
	.byte	0
	.byte	0
	.byte	0
	.byte	63
	.byte	-21
	.byte	6
	.byte	114
	.byte	-47
	.byte	-38
	.byte	-90
	.byte	53
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	33
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	79
	.byte	16
	.byte	103
	.byte	-120
	.byte	86
	.byte	8
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-80
	.byte	91
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	71
	.byte	-1
	.byte	-81
	.byte	0
	.byte	0
	.byte	0
	.byte	-68
	.byte	-1
	.byte	-1
	.byte	-23
	.byte	0
	.byte	0
	.byte	32
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-123
	.byte	0
	.byte	-126
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	83
	.byte	0
	.byte	0
	.byte	2
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-44
	.byte	0
	.byte	-39
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	9
	.byte	0
	.byte	0
	.byte	8
	.byte	-3
	.byte	-1
	.byte	-1
	.byte	-36
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-92
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	7
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	97
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-127
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	20
	.byte	-15
	.byte	-1
	.byte	-1
	.byte	-54
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	22
	.byte	-9
	.byte	-101
	.byte	0
	.byte	-105
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	20
	.byte	0
	.byte	0
	.byte	0
	.byte	63
	.byte	-19
	.byte	-101
	.byte	-2
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-12
	.byte	87
	.byte	0
	.byte	0
	.byte	0
	.byte	55
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	99
	.byte	-48
	.byte	-1
	.byte	-1
	.byte	-2
	.byte	-76
	.byte	10
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-122
	.byte	-1
	.byte	112
	.byte	0
	.byte	0
	.byte	0
	.byte	112
	.byte	-1
	.byte	-1
	.byte	-5
	.byte	17
	.byte	0
	.byte	68
	.byte	-1
	.byte	-1
	.byte	-2
	.byte	57
	.byte	0
	.byte	127
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	85
	.byte	0
	.byte	0
	.byte	4
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-25
	.byte	0
	.byte	-22
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	5
	.byte	0
	.byte	0
	.byte	4
	.byte	-3
	.byte	-1
	.byte	-1
	.byte	-21
	.byte	2
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-92
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	7
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	124
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	79
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	22
	.byte	-87
	.byte	-1
	.byte	-1
	.byte	-4
	.byte	80
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	92
	.byte	-1
	.byte	76
	.byte	0
	.byte	-105
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	20
	.byte	0
	.byte	0
	.byte	0
	.byte	63
	.byte	-2
	.byte	-7
	.byte	-93
	.byte	-120
	.byte	-23
	.byte	-1
	.byte	-1
	.byte	-15
	.byte	40
	.byte	0
	.byte	0
	.byte	74
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-25
	.byte	-7
	.byte	-43
	.byte	-4
	.byte	-1
	.byte	-1
	.byte	-125
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-59
	.byte	-2
	.byte	49
	.byte	0
	.byte	0
	.byte	0
	.byte	17
	.byte	-29
	.byte	-1
	.byte	-1
	.byte	112
	.byte	8
	.byte	-93
	.byte	-1
	.byte	-1
	.byte	-70
	.byte	2
	.byte	0
	.byte	115
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	90
	.byte	0
	.byte	0
	.byte	9
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-13
	.byte	0
	.byte	-11
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	3
	.byte	0
	.byte	0
	.byte	2
	.byte	-4
	.byte	-1
	.byte	-1
	.byte	-11
	.byte	3
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-92
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	7
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-92
	.byte	-1
	.byte	-1
	.byte	-10
	.byte	19
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-86
	.byte	-22
	.byte	-1
	.byte	-1
	.byte	-12
	.byte	118
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-85
	.byte	-16
	.byte	12
	.byte	0
	.byte	-105
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	20
	.byte	0
	.byte	0
	.byte	0
	.byte	63
	.byte	-1
	.byte	-122
	.byte	1
	.byte	0
	.byte	62
	.byte	-5
	.byte	-1
	.byte	-1
	.byte	-88
	.byte	0
	.byte	0
	.byte	86
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	116
	.byte	6
	.byte	-110
	.byte	-1
	.byte	-1
	.byte	-16
	.byte	19
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	14
	.byte	-9
	.byte	-20
	.byte	5
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	60
	.byte	-26
	.byte	-1
	.byte	-7
	.byte	-31
	.byte	-3
	.byte	-1
	.byte	-50
	.byte	28
	.byte	0
	.byte	0
	.byte	93
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	101
	.byte	0
	.byte	0
	.byte	20
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-5
	.byte	0
	.byte	-5
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	2
	.byte	0
	.byte	0
	.byte	1
	.byte	-4
	.byte	-1
	.byte	-1
	.byte	-5
	.byte	4
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-92
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	7
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	-38
	.byte	-1
	.byte	-1
	.byte	-84
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-58
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-51
	.byte	49
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	11
	.byte	-18
	.byte	-83
	.byte	0
	.byte	0
	.byte	-105
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	20
	.byte	0
	.byte	0
	.byte	0
	.byte	59
	.byte	-34
	.byte	14
	.byte	0
	.byte	0
	.byte	1
	.byte	-65
	.byte	-1
	.byte	-1
	.byte	-9
	.byte	26
	.byte	0
	.byte	95
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-8
	.byte	19
	.byte	0
	.byte	44
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	96
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	69
	.byte	-1
	.byte	-79
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	13
	.byte	-102
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-6
	.byte	111
	.byte	4
	.byte	0
	.byte	0
	.byte	60
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	118
	.byte	0
	.byte	0
	.byte	38
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-2
	.byte	0
	.byte	-2
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	-4
	.byte	-1
	.byte	-1
	.byte	-2
	.byte	4
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-92
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	7
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	38
	.byte	-3
	.byte	-1
	.byte	-4
	.byte	57
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	99
	.byte	-99
	.byte	-14
	.byte	-1
	.byte	-1
	.byte	-16
	.byte	65
	.byte	0
	.byte	0
	.byte	0
	.byte	73
	.byte	-1
	.byte	94
	.byte	0
	.byte	0
	.byte	-105
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	20
	.byte	0
	.byte	0
	.byte	0
	.byte	7
	.byte	22
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	121
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	96
	.byte	0
	.byte	99
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-38
	.byte	0
	.byte	0
	.byte	8
	.byte	-15
	.byte	-1
	.byte	-1
	.byte	-93
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-123
	.byte	-1
	.byte	114
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	7
	.byte	-72
	.byte	-1
	.byte	-1
	.byte	-58
	.byte	-120
	.byte	-34
	.byte	-1
	.byte	-2
	.byte	-118
	.byte	0
	.byte	0
	.byte	16
	.byte	-5
	.byte	-1
	.byte	-1
	.byte	-110
	.byte	0
	.byte	0
	.byte	66
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-4
	.byte	0
	.byte	-4
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	-4
	.byte	-1
	.byte	-1
	.byte	-4
	.byte	4
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-92
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	7
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-127
	.byte	-1
	.byte	-1
	.byte	-87
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	72
	.byte	-6
	.byte	-1
	.byte	-1
	.byte	-34
	.byte	11
	.byte	0
	.byte	0
	.byte	-105
	.byte	-8
	.byte	23
	.byte	0
	.byte	0
	.byte	-105
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	20
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	77
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-104
	.byte	0
	.byte	101
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-66
	.byte	0
	.byte	0
	.byte	0
	.byte	-36
	.byte	-1
	.byte	-1
	.byte	-44
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-60
	.byte	-2
	.byte	52
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	110
	.byte	-1
	.byte	-1
	.byte	-28
	.byte	14
	.byte	0
	.byte	47
	.byte	-4
	.byte	-1
	.byte	-4
	.byte	59
	.byte	0
	.byte	0
	.byte	-57
	.byte	-1
	.byte	-1
	.byte	-62
	.byte	0
	.byte	0
	.byte	115
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-8
	.byte	0
	.byte	-8
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	3
	.byte	0
	.byte	0
	.byte	1
	.byte	-4
	.byte	-1
	.byte	-1
	.byte	-8
	.byte	3
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-92
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	7
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	13
	.byte	-26
	.byte	-1
	.byte	-20
	.byte	31
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-84
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	93
	.byte	0
	.byte	4
	.byte	-30
	.byte	-65
	.byte	0
	.byte	0
	.byte	0
	.byte	-105
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	20
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	48
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-64
	.byte	0
	.byte	97
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-83
	.byte	0
	.byte	0
	.byte	0
	.byte	-53
	.byte	-1
	.byte	-1
	.byte	-14
	.byte	4
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	13
	.byte	-10
	.byte	-19
	.byte	6
	.byte	0
	.byte	0
	.byte	0
	.byte	3
	.byte	-39
	.byte	-1
	.byte	-1
	.byte	-100
	.byte	0
	.byte	0
	.byte	1
	.byte	-44
	.byte	-1
	.byte	-1
	.byte	-90
	.byte	0
	.byte	0
	.byte	107
	.byte	-1
	.byte	-1
	.byte	-6
	.byte	50
	.byte	13
	.byte	-47
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-17
	.byte	0
	.byte	-18
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	5
	.byte	0
	.byte	0
	.byte	3
	.byte	-3
	.byte	-1
	.byte	-1
	.byte	-17
	.byte	2
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-92
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	7
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	119
	.byte	-1
	.byte	-3
	.byte	96
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	87
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-87
	.byte	0
	.byte	54
	.byte	-2
	.byte	112
	.byte	0
	.byte	0
	.byte	0
	.byte	-105
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	20
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	31
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-38
	.byte	0
	.byte	90
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-94
	.byte	0
	.byte	0
	.byte	0
	.byte	-64
	.byte	-1
	.byte	-1
	.byte	-6
	.byte	18
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	68
	.byte	-1
	.byte	-76
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	39
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	116
	.byte	0
	.byte	0
	.byte	0
	.byte	-84
	.byte	-1
	.byte	-1
	.byte	-20
	.byte	3
	.byte	0
	.byte	12
	.byte	-34
	.byte	-1
	.byte	-1
	.byte	-19
	.byte	-34
	.byte	-4
	.byte	-26
	.byte	-1
	.byte	-1
	.byte	-29
	.byte	0
	.byte	-32
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	8
	.byte	0
	.byte	0
	.byte	6
	.byte	-3
	.byte	-1
	.byte	-1
	.byte	-30
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-92
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	7
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	28
	.byte	-18
	.byte	-1
	.byte	-95
	.byte	2
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	35
	.byte	-2
	.byte	-1
	.byte	-1
	.byte	-38
	.byte	1
	.byte	-124
	.byte	-2
	.byte	66
	.byte	30
	.byte	30
	.byte	30
	.byte	-93
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	48
	.byte	30
	.byte	18
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	22
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-24
	.byte	0
	.byte	78
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-99
	.byte	0
	.byte	0
	.byte	0
	.byte	-69
	.byte	-1
	.byte	-1
	.byte	-2
	.byte	26
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-125
	.byte	-1
	.byte	117
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	88
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	95
	.byte	0
	.byte	0
	.byte	0
	.byte	-106
	.byte	-1
	.byte	-1
	.byte	-2
	.byte	34
	.byte	0
	.byte	0
	.byte	59
	.byte	-22
	.byte	-1
	.byte	-1
	.byte	-6
	.byte	-126
	.byte	-81
	.byte	-1
	.byte	-1
	.byte	-48
	.byte	0
	.byte	-52
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	12
	.byte	0
	.byte	0
	.byte	11
	.byte	-3
	.byte	-1
	.byte	-1
	.byte	-48
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-92
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	7
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	2
	.byte	-88
	.byte	-1
	.byte	-48
	.byte	14
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	12
	.byte	-10
	.byte	-1
	.byte	-1
	.byte	-14
	.byte	8
	.byte	-65
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-107
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	19
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-20
	.byte	0
	.byte	59
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-101
	.byte	0
	.byte	0
	.byte	0
	.byte	-71
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	29
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-62
	.byte	-1
	.byte	54
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	117
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	83
	.byte	0
	.byte	0
	.byte	0
	.byte	-117
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	62
	.byte	0
	.byte	0
	.byte	0
	.byte	31
	.byte	117
	.byte	-123
	.byte	66
	.byte	1
	.byte	-75
	.byte	-1
	.byte	-1
	.byte	-70
	.byte	0
	.byte	-78
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	18
	.byte	0
	.byte	0
	.byte	16
	.byte	-3
	.byte	-1
	.byte	-1
	.byte	-75
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-92
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	7
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	87
	.byte	-2
	.byte	-17
	.byte	43
	.byte	0
	.byte	0
	.byte	0
	.byte	69
	.byte	79
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	3
	.byte	-15
	.byte	-1
	.byte	-1
	.byte	-4
	.byte	15
	.byte	-61
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-107
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	23
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-25
	.byte	0
	.byte	35
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-100
	.byte	0
	.byte	0
	.byte	0
	.byte	-70
	.byte	-1
	.byte	-1
	.byte	-3
	.byte	25
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	13
	.byte	-11
	.byte	-17
	.byte	7
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-124
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	79
	.byte	0
	.byte	0
	.byte	0
	.byte	-122
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	77
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-64
	.byte	-1
	.byte	-1
	.byte	-100
	.byte	0
	.byte	-111
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	27
	.byte	0
	.byte	0
	.byte	24
	.byte	-2
	.byte	-1
	.byte	-1
	.byte	-107
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-92
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	7
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	32
	.byte	-22
	.byte	-4
	.byte	88
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-98
	.byte	-74
	.byte	0
	.byte	3
	.byte	22
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	-16
	.byte	-1
	.byte	-1
	.byte	-2
	.byte	16
	.byte	113
	.byte	-109
	.byte	-109
	.byte	-109
	.byte	-109
	.byte	-109
	.byte	-45
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-100
	.byte	-109
	.byte	86
	.byte	0
	.byte	99
	.byte	28
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	35
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-41
	.byte	0
	.byte	11
	.byte	-10
	.byte	-1
	.byte	-1
	.byte	-94
	.byte	0
	.byte	0
	.byte	0
	.byte	-65
	.byte	-1
	.byte	-1
	.byte	-7
	.byte	16
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	66
	.byte	-1
	.byte	-73
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-122
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	80
	.byte	0
	.byte	0
	.byte	0
	.byte	-121
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	79
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-47
	.byte	-1
	.byte	-1
	.byte	118
	.byte	0
	.byte	104
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	38
	.byte	0
	.byte	0
	.byte	35
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	107
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-92
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	7
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	7
	.byte	-62
	.byte	-1
	.byte	-113
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-98
	.byte	-74
	.byte	0
	.byte	29
	.byte	-1
	.byte	24
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	7
	.byte	-12
	.byte	-1
	.byte	-1
	.byte	-7
	.byte	13
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-105
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	20
	.byte	0
	.byte	0
	.byte	0
	.byte	-23
	.byte	75
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	55
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-68
	.byte	0
	.byte	1
	.byte	-40
	.byte	-1
	.byte	-1
	.byte	-85
	.byte	0
	.byte	0
	.byte	0
	.byte	-55
	.byte	-1
	.byte	-1
	.byte	-18
	.byte	2
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-126
	.byte	-1
	.byte	119
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	123
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	86
	.byte	0
	.byte	0
	.byte	0
	.byte	-115
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	68
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	-22
	.byte	-1
	.byte	-1
	.byte	73
	.byte	0
	.byte	52
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	53
	.byte	0
	.byte	0
	.byte	49
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	55
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-92
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	7
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	-119
	.byte	-1
	.byte	-51
	.byte	24
	.byte	17
	.byte	17
	.byte	17
	.byte	17
	.byte	17
	.byte	-92
	.byte	-74
	.byte	0
	.byte	29
	.byte	-1
	.byte	48
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	24
	.byte	-4
	.byte	-1
	.byte	-1
	.byte	-21
	.byte	5
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-105
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	20
	.byte	0
	.byte	0
	.byte	0
	.byte	-23
	.byte	99
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	87
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-109
	.byte	0
	.byte	0
	.byte	-92
	.byte	-1
	.byte	-1
	.byte	-68
	.byte	0
	.byte	0
	.byte	0
	.byte	-38
	.byte	-1
	.byte	-1
	.byte	-52
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-63
	.byte	-1
	.byte	57
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	98
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	100
	.byte	0
	.byte	0
	.byte	0
	.byte	-101
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	43
	.byte	0
	.byte	70
	.byte	54
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	15
	.byte	-2
	.byte	-1
	.byte	-4
	.byte	19
	.byte	0
	.byte	4
	.byte	-17
	.byte	-1
	.byte	-1
	.byte	75
	.byte	0
	.byte	0
	.byte	72
	.byte	-1
	.byte	-1
	.byte	-16
	.byte	7
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-92
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	7
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	27
	.byte	-4
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-74
	.byte	0
	.byte	29
	.byte	-1
	.byte	92
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	66
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-56
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-105
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	20
	.byte	0
	.byte	0
	.byte	0
	.byte	-23
	.byte	-113
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-119
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	88
	.byte	0
	.byte	0
	.byte	98
	.byte	-1
	.byte	-1
	.byte	-42
	.byte	0
	.byte	0
	.byte	6
	.byte	-17
	.byte	-1
	.byte	-1
	.byte	-105
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	12
	.byte	-11
	.byte	-15
	.byte	8
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	54
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	125
	.byte	0
	.byte	0
	.byte	0
	.byte	-76
	.byte	-1
	.byte	-1
	.byte	-10
	.byte	8
	.byte	0
	.byte	-82
	.byte	-93
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	65
	.byte	-1
	.byte	-1
	.byte	-54
	.byte	0
	.byte	0
	.byte	0
	.byte	-92
	.byte	-1
	.byte	-1
	.byte	113
	.byte	0
	.byte	0
	.byte	109
	.byte	-1
	.byte	-1
	.byte	-89
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-92
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	7
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	34
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-74
	.byte	0
	.byte	29
	.byte	-1
	.byte	-93
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-114
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-119
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-105
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	20
	.byte	0
	.byte	0
	.byte	0
	.byte	-23
	.byte	-42
	.byte	4
	.byte	0
	.byte	0
	.byte	4
	.byte	-43
	.byte	-1
	.byte	-1
	.byte	-13
	.byte	18
	.byte	0
	.byte	0
	.byte	24
	.byte	-9
	.byte	-1
	.byte	-10
	.byte	14
	.byte	0
	.byte	36
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	79
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	65
	.byte	-1
	.byte	-71
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	7
	.byte	-21
	.byte	-1
	.byte	-1
	.byte	-85
	.byte	0
	.byte	0
	.byte	2
	.byte	-31
	.byte	-1
	.byte	-1
	.byte	-69
	.byte	0
	.byte	0
	.byte	-82
	.byte	-30
	.byte	3
	.byte	0
	.byte	0
	.byte	0
	.byte	-117
	.byte	-1
	.byte	-1
	.byte	116
	.byte	0
	.byte	0
	.byte	0
	.byte	65
	.byte	-1
	.byte	-1
	.byte	-69
	.byte	1
	.byte	1
	.byte	-72
	.byte	-1
	.byte	-1
	.byte	68
	.byte	0
	.byte	0
	.byte	0
	.byte	3
	.byte	8
	.byte	8
	.byte	-89
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	15
	.byte	8
	.byte	6
	.byte	0
	.byte	0
	.byte	34
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-74
	.byte	0
	.byte	29
	.byte	-1
	.byte	-11
	.byte	40
	.byte	0
	.byte	0
	.byte	33
	.byte	-17
	.byte	-1
	.byte	-1
	.byte	-4
	.byte	46
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	6
	.byte	8
	.byte	-102
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	28
	.byte	8
	.byte	2
	.byte	0
	.byte	-23
	.byte	-1
	.byte	110
	.byte	2
	.byte	2
	.byte	106
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-104
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-93
	.byte	-1
	.byte	-1
	.byte	97
	.byte	1
	.byte	-128
	.byte	-1
	.byte	-1
	.byte	-30
	.byte	8
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-128
	.byte	-1
	.byte	122
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-115
	.byte	-1
	.byte	-1
	.byte	-13
	.byte	33
	.byte	1
	.byte	77
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	87
	.byte	0
	.byte	0
	.byte	-82
	.byte	-1
	.byte	89
	.byte	0
	.byte	0
	.byte	27
	.byte	-18
	.byte	-1
	.byte	-13
	.byte	20
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	-67
	.byte	-1
	.byte	-1
	.byte	-118
	.byte	-120
	.byte	-2
	.byte	-1
	.byte	-64
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	80
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-78
	.byte	0
	.byte	0
	.byte	34
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-74
	.byte	0
	.byte	29
	.byte	-1
	.byte	-1
	.byte	-31
	.byte	112
	.byte	112
	.byte	-34
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-95
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-62
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	64
	.byte	0
	.byte	-24
	.byte	-1
	.byte	-2
	.byte	-56
	.byte	-60
	.byte	-3
	.byte	-1
	.byte	-1
	.byte	-27
	.byte	24
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	33
	.byte	-17
	.byte	-1
	.byte	-11
	.byte	-67
	.byte	-5
	.byte	-1
	.byte	-2
	.byte	97
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-64
	.byte	-1
	.byte	59
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	20
	.byte	-29
	.byte	-1
	.byte	-1
	.byte	-24
	.byte	-71
	.byte	-11
	.byte	-1
	.byte	-1
	.byte	-66
	.byte	3
	.byte	0
	.byte	0
	.byte	-82
	.byte	-1
	.byte	-14
	.byte	126
	.byte	107
	.byte	-39
	.byte	-1
	.byte	-1
	.byte	121
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	33
	.byte	-26
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-24
	.byte	35
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	80
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-78
	.byte	0
	.byte	0
	.byte	33
	.byte	-4
	.byte	-4
	.byte	-4
	.byte	-4
	.byte	-4
	.byte	-4
	.byte	-4
	.byte	-4
	.byte	-4
	.byte	-4
	.byte	-76
	.byte	0
	.byte	11
	.byte	-83
	.byte	-3
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-63
	.byte	14
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-62
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	64
	.byte	0
	.byte	64
	.byte	-54
	.byte	-2
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-30
	.byte	51
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	71
	.byte	-15
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-3
	.byte	-117
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	11
	.byte	-12
	.byte	-14
	.byte	9
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	45
	.byte	-37
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-2
	.byte	-65
	.byte	20
	.byte	0
	.byte	0
	.byte	0
	.byte	-111
	.byte	-2
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-83
	.byte	3
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	32
	.byte	-85
	.byte	-14
	.byte	-13
	.byte	-83
	.byte	34
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	26
	.byte	83
	.byte	83
	.byte	83
	.byte	83
	.byte	83
	.byte	83
	.byte	83
	.byte	83
	.byte	58
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	51
	.byte	-105
	.byte	-37
	.byte	-5
	.byte	-12
	.byte	-55
	.byte	108
	.byte	6
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	63
	.byte	83
	.byte	83
	.byte	83
	.byte	83
	.byte	83
	.byte	83
	.byte	83
	.byte	21
	.byte	0
	.byte	0
	.byte	1
	.byte	57
	.byte	-128
	.byte	-93
	.byte	-98
	.byte	106
	.byte	14
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	29
	.byte	126
	.byte	-92
	.byte	-111
	.byte	61
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	14
	.byte	83
	.byte	68
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	9
	.byte	93
	.byte	-104
	.byte	-90
	.byte	-112
	.byte	74
	.byte	2
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	67
	.byte	-86
	.byte	-21
	.byte	-6
	.byte	-43
	.byte	111
	.byte	3
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.globl	clockalpha
	.section	.rodata
	.align 32
	.type	clockalpha, @object
	.size	clockalpha, 2206
clockalpha:
	.ascii	".MM...MM..MMM...MM..MMM..MMMM.MMMM..MM..M..M.MMM..MMMM.M..M."
	.ascii	"M....M..M.M..M..MM..MMM...MM..MMM...MM..MMM..M..M.M..M.M..M."
	.ascii	"M..M.M..M.MMMM..MMM.M....MMM...MM........M........M........."
	.ascii	"...M........M.......M..............M.....M.................."
	.ascii	".....................M....................................M."
	.ascii	".M...M.....M.M.M..M.M..M.M..M.M..M.M..M.M....M....M..M.M..M."
	.ascii	".M......M.M..M.M....MMMM.MM.M.M..M.M..M.M..M.M..M.M..M..M..."
	.ascii	"M..M.M..M.M..M.M..M.M..M....M..M...M......M..M..M........M.."
	.ascii	".....M............M.......M.M......M.....M......M.M.....M..."
	.ascii	"....................................M......................."
	.ascii	"............M...M....M...M.M..M.MM.M..M.M..M.M....M..M.M...."
	.ascii	"M....M....M..M..M......M.M.M..M....M..M.MM.M.M..M.M..M.M..M."
	.ascii	"M..M.M.....M...M..M.M..M.M..M..MM..M.M....M...M....M.....M.."
	.ascii	"................MM..MMM...MM...MMM..MM...M....MMM.MMM......."
	.ascii	".....M..M..M........MMM...MM..MMM...MMM.MMM...MMM.MMMM.M..M."
	.ascii	"M..M.M..M.M..M.M..M.MMMM...M...M....M........M.MM.MMMM.MMM.."
	.ascii	"M....M..M.MMM..MMM..M.MM.MMMM..M......M.MM...M....M..M.M.MM."
	.ascii	"M..M.MMM..M..M.MMM...MM...M...M..M.M..M.M..M..MM...M....M..."
	.ascii	".M.....M....M....................M.M..M.M..M.M..M.M..M.MMMM."
	.ascii	"M..M.M..M..M......M.M.M...M........M..M.M..M.M..M.M..M.M..M."
	.ascii	"M.....M...M..M.M..M.M..M.M..M.M..M....M..M....M.....M......."
	.ascii	"M.MM.M..M.M..M.M....M..M.M....M....M..M.M..M..M......M.M.M.."
	.ascii	"M....M..M.M.MM.M..M.M....M..M.M..M....M..M...M..M.M..M.M..M."
	.ascii	"M..M..M...M.....M.....M....M..................MMM.M..M.M...."
	.ascii	"M..M.MMMM..M....MMM.M..M..M......M.MM....M........M..M.M..M."
	.ascii	"M..M.M..M.M.....MM...M...M..M.M..M.M..M..MM...MMM..MM....M.."
	.ascii	".M....M........M....M..M.M..M.M..M.M..M.M....M....M..M.M..M."
	.ascii	".M...M..M.M..M.M....M..M.M..M.M..M.M....M.MM.M..M.M..M..M..."
	.ascii	"M..M..M.M.MMMM.M..M..M...M.....M......M...M................."
	.ascii	"M..M.M..M.M..M.M..M.M.....M......M.M..M..M...M..M.M.M...M..."
	.ascii	".....M..M.M..M.MMM...MMM.M.......M..M.M.M..M..M.M.MMMM.M..M."
	.ascii	"...M.M......M...M....M.........MMM.M..M.MMM...MM..MMM..MMMM."
	.ascii	"M.....MM..M..M.MMM...MM..M..M.MMMM.M..M.M..M..MM..M.....MMM."
	.ascii	"M..M..MM...M....MM.."
	.string	"..M..M..M.M..M..M...MMMM..MMM....M.MMM.......MMMM.......MMM.MMM...MM...MMM..MMM..M...MMM..M..M..M....MM..M..M..MM..mmmm.M..M..MM..M.......M.M....MMM....M...MMM...M..M..M.M..M.MMM..MMMM....M..M...M........."
	.globl	clockdigit
	.align 32
	.type	clockdigit, @object
	.size	clockdigit, 421
clockdigit:
	.ascii	"-MMM----M----MMM---MMM-----MM-MMMMM--MMM--MMMMM--MMM---MMM--"
	.ascii	"M---M--MM---M---M-M---M---M-M-M-----M---M-----M-M---M-M---M-"
	.ascii	"M---M---M-------M-----M--M--M-MMMM--M-------"
	.string	"--M-M---M-M---M-M---M---M------M----MM--MMMMM-M---M-MMMM-----M---MMM---MMMM-M---M---M-----M-------M-----M-----M-M---M---M---M---M-----M-M---M---M----M----M---M-----M-M---M-M---M---M---M---M-M---M--MMM---MMM--MMMMM--MMM------M--MMM---MMM----M----MMM---MMM--"
	.comm	wmxp_win,4,4
	.comm	wmxp_iconwin,4,4
	.comm	wmxp_display,4,4
	.data
	.align 4
	.type	first_time.7305, @object
	.size	first_time.7305, 4
first_time.7305:
	.long	1
	.local	lshift_code.7303
	.comm	lshift_code.7303,1,1
	.local	rshift_code.7304
	.comm	rshift_code.7304,1,4
	.local	last_action_min.7333
	.comm	last_action_min.7333,4,4
	.local	upsidedown.7569
	.comm	upsidedown.7569,4,4
	.local	rp.7567
	.comm	rp.7567,4,4
	.align 4
	.type	rev.7568, @object
	.size	rev.7568, 4
rev.7568:
	.long	1
	.align 4
	.type	tx.7566, @object
	.size	tx.7566, 4
tx.7566:
	.long	-19
	.align 4
	.type	totalcounter.7562, @object
	.size	totalcounter.7562, 4
totalcounter.7562:
	.long	-1
	.section	.rodata
	.align 32
	.type	duck_data, @object
	.size	duck_data, 3672
duck_data:
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	2
	.long	2
	.long	2
	.long	1
	.long	3
	.long	1
	.long	1
	.long	1
	.long	1
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	2
	.long	2
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	1
	.long	1
	.long	1
	.long	1
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	1
	.long	1
	.long	0
	.long	1
	.long	1
	.long	1
	.long	1
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	0
	.long	0
	.long	0
	.long	0
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	1
	.long	1
	.long	1
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	1
	.long	1
	.long	1
	.long	1
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	2
	.long	2
	.long	2
	.long	1
	.long	3
	.long	1
	.long	1
	.long	1
	.long	1
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	2
	.long	2
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	1
	.long	1
	.long	1
	.long	1
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	1
	.long	1
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	0
	.long	0
	.long	0
	.long	0
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	1
	.long	1
	.long	1
	.long	1
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	2
	.long	2
	.long	2
	.long	1
	.long	3
	.long	1
	.long	1
	.long	1
	.long	1
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	2
	.long	2
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	1
	.long	1
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	0
	.long	0
	.long	0
	.long	0
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	1
	.long	1
	.long	1
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.type	duck_cmap, @object
	.size	duck_cmap, 12
duck_cmap:
	.byte	32
	.byte	-104
	.byte	-8
	.byte	-8
	.byte	-4
	.byte	0
	.byte	-8
	.byte	-80
	.byte	64
	.byte	0
	.byte	0
	.byte	0
	.local	avg.7509
	.comm	avg.7509,4,4
	.local	yoh.7508
	.comm	yoh.7508,4,4
	.local	kit.7513
	.comm	kit.7513,676,32
	.data
	.align 4
	.type	blend.7505, @object
	.size	blend.7505, 4
blend.7505:
	.long	190
	.local	showmem.7507
	.comm	showmem.7507,4,4
	.align 4
	.type	memblend.7506, @object
	.size	memblend.7506, 4
memblend.7506:
	.long	256
	.section	.rodata
	.align 32
	.type	load_screen, @object
	.size	load_screen, 10108
load_screen:
# width:
	.long	58
# height:
	.long	58
# bytes_per_pixel:
	.long	3
# pixel_data:
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"\301\304"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"\301\304"
	.string	"\301\304"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"\301\304"
	.string	""
	.string	""
	.string	""
	.string	"\301\304"
	.string	"\301\304"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"\301\304"
	.string	"\301\304"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"\301\304"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"\301\304"
	.string	"\301\304"
	.string	""
	.string	""
	.string	""
	.string	"\301\304"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"\301\304"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"\301\304"
	.string	"\301\304"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"\301\304"
	.string	""
	.string	""
	.string	""
	.string	"\301\304"
	.string	"\301\304"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"\301\304"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"\301\304"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"\301\304"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"\301\304"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"\301\304"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"\301\304"
	.string	"\301\304"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"\301\304"
	.string	""
	.string	""
	.string	""
	.string	"\301\304"
	.string	"\301\304"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"\236\304\355\236\304\355\236\304\355"
	.string	""
	.string	""
	.string	"\236\304\355\236\304\355\236\304\355"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"\236\304\355\236\304\355\236\304\355"
	.string	""
	.string	""
	.string	"\236\304\355\236\304\355\236\304\355"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"\236\304\355\236\304\355\236\304\355"
	.string	""
	.string	""
	.string	"\236\304\355\236\304\355\236\304\355"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"\236\304\355\236\304\355\236\304\355"
	.string	""
	.string	""
	.string	"\236\304\355\236\304\355\236\304\355"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"\236\304\355\236\304\355\236\304\355"
	.string	""
	.string	""
	.string	"\236\304\355\236\304\355\236\304\355"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"\236\304\355\236\304\355\236\304\355"
	.string	""
	.string	""
	.string	"\236\304\355\236\304\355\236\304\355"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"\236\304\355\236\304\355\236\304\355"
	.string	""
	.string	""
	.string	"\236\304\355\236\304\355\236\304\355"
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	"\236\304\355\236\304\355\236\304\355"
	.string	""
	.string	""
	.string	"\236\304\355\236\304\355\236\304\355"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"\236\304\355\236\304\355\236\304\355"
	.string	""
	.string	""
	.string	"\236\304\355\236\304\355\236\304\355"
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	"\236\304\355\236\304\355\236\304\355"
	.string	""
	.string	""
	.string	"\236\304\355\236\304\355\236\304\355"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"\236\304\355\236\304\355\236\304\355"
	.string	""
	.string	""
	.string	"\236\304\355\236\304\355\236\304\355"
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	"\236\304\355\236\304\355\236\304\355"
	.string	""
	.string	""
	.string	"\236\304\355\236\304\355\236\304\355"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"\236\304\355\236\304\355\236\304\355\236\304\355\236\304\355\236\304\355\236\304\355\236\304\355\236\304\355\236\304\355\236\304\355\236\304\355\236\304\355\236\304\355\236\304\355\236\304\355\236\304\355\236\304\355\236\304\355\236\304\355\236\304\355\236\304\355\236\304\355\236\304\355\236\304\355\236\304\355\236\304\355\236\304\355\236\304\355\236\304\355\236\304\355\236\304\355\236\304\355\236\304\355\236\304\355\236\304\355\236\304\355\236\304\355\236\304\355\236\304\355\236\304\355\236\304\355\236\304\355\236\304\355\236\304\355\236\304\355\236\304\355\236\304\355\236\304\355\236\304\355\236\304\355\236\304\355\236\304\355\236\304\355"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"                     \006*"
	.string	"                     \006*"
	.string	"                     \006*"
	.string	"                     \006*"
	.string	"                     \006*"
	.string	"                     \006*"
	.string	"                  "
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"                     \006*"
	.string	"                     \006*"
	.string	"                     \006*"
	.string	"                     \006*"
	.string	"                     \006*"
	.string	"                     \006*"
	.string	"                  "
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"                     \006*"
	.string	"                     \006*"
	.string	"                     \006*"
	.string	"                     \006*"
	.string	"                     \006*"
	.string	"                     \006*"
	.string	"                  "
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"                     \006*"
	.string	"                     \006*"
	.string	"                     \006*"
	.string	"                     \006*"
	.string	"                     \006*"
	.string	"                     \006*"
	.string	"                  "
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"                     \006*"
	.string	"                     \006*"
	.string	"                     \006*"
	.string	"                     \006*"
	.string	"                     \006*"
	.string	"                     \006*"
	.string	"                  "
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"                     \006*"
	.string	"                     \006*"
	.string	"                     \006*"
	.string	"                     \006*"
	.string	"                     \006*"
	.string	"                     \006*"
	.string	"                  "
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"                     \006*"
	.string	"                     \006*"
	.string	"                     \006*"
	.string	"                     \006*"
	.string	"                     \006*"
	.string	"                     \006*"
	.string	"                  "
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"                     \006*"
	.string	"                     \006*"
	.string	"                     \006*"
	.string	"                     \006*"
	.string	"                     \006*"
	.string	"                     \006*"
	.string	"                  "
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"                     \006*"
	.string	"                     \006*"
	.string	"                     \006*"
	.string	"                     \006*"
	.string	"                     \006*"
	.string	"                     \006*"
	.string	"                  "
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"                     \006*"
	.string	"                     \006*"
	.string	"                     \006*"
	.string	"                     \006*"
	.string	"                     \006*"
	.string	"                     \006*"
	.string	"                  "
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"                     \006*"
	.string	"                     \006*"
	.string	"                     \006*"
	.string	"                     \006*"
	.string	"                     \006*"
	.string	"                     \006*"
	.string	"                  "
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"                     \006*"
	.string	"                     \006*"
	.string	"                     \006*"
	.string	"                     \006*"
	.string	"                     \006*"
	.string	"                     \006*"
	.string	"                  "
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"                     \006*"
	.string	"                     \006*"
	.string	"                     \006*"
	.ascii	"      "
	.string	"               \006*"
	.string	"                     \006*"
	.string	"                     \006*"
	.string	"                  "
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"                     \006*"
	.string	"                     \006*"
	.string	"                     \006*"
	.string	"                     \006*"
	.string	"                     \006*"
	.string	"                     \006*"
	.string	"                  "
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"                     \006*"
	.string	"                     \006*"
	.string	"                     \006*"
	.string	"                     \006*"
	.string	"                     \006*"
	.string	"                     \006*"
	.string	"                  "
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"                     \006*"
	.string	"                     \006*"
	.string	"                     \006*"
	.string	"                     \006*"
	.string	"                     \006*"
	.string	"                     \006*"
	.string	"                  "
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"                     \006*"
	.string	"                     \006*"
	.string	"                     \006*"
	.string	"                     \006*"
	.string	"                     \006*"
	.string	"                     \006*"
	.string	"                  "
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"                     \006*"
	.string	"                     \006*"
	.string	"                     \006*"
	.string	"                     \006*"
	.string	"                     \006*"
	.string	"                     \006*"
	.string	"                  "
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"                     \006*"
	.string	"                     \006*"
	.string	"                     \006*"
	.string	"                     \006*"
	.string	"                     \006*"
	.string	"                     \006*"
	.string	"                  "
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"                     \006*"
	.string	"                     \006*"
	.string	"                     \006*"
	.string	"                     \006*"
	.string	"                     \006*"
	.string	"                     \006*"
	.string	"                  "
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"                     \006*"
	.string	"                     \006*"
	.string	"                     \006*"
	.string	"                     \006*"
	.string	"                     \006*"
	.string	"                     \006*"
	.string	"                  "
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"                     \006*"
	.string	"                     \006*"
	.string	"                     \006*"
	.string	"                     \006*"
	.string	"                     \006*"
	.string	"                     \006*"
	.string	"                  "
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"                     \006*"
	.string	"                     \006*"
	.string	"                     \006*"
	.string	"                     \006*"
	.string	"                     \006*"
	.string	"                     \006*"
	.string	"                  "
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"                     \006*"
	.string	"                     \006*"
	.string	"                     \006*"
	.string	"                     \006*"
	.string	"                     \006*"
	.string	"                     \006*"
	.string	"                  "
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"                     \006*"
	.string	"                     \006*"
	.string	"                     \006*"
	.string	"                     \006*"
	.string	"                     \006*"
	.string	"                     \006*"
	.string	"                  "
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"                     \006*"
	.string	"                     \006*"
	.string	"                     \006*"
	.string	"                     \006*"
	.string	"                     \006*"
	.string	"                     \006*"
	.string	"                  "
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"                     \006*"
	.string	"                     \006*"
	.string	"                     \006*"
	.string	"                     \006*"
	.string	"                     \006*"
	.string	"                     \006*"
	.string	"                  "
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"                     \006*"
	.string	"                     \006*"
	.string	"                     \006*"
	.string	"                     \006*"
	.string	"                     \006*"
	.string	"                     \006*"
	.string	"                  "
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"                     \006*"
	.string	"                     \006*"
	.string	"                     \006*"
	.string	"                     \006*"
	.string	"                     \006*"
	.string	"                     \006*"
	.string	"                  "
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"                     \006*"
	.string	"                     \006*"
	.string	"                     \006*"
	.string	"                     \006*"
	.string	"                     \006*"
	.string	"                     \006*"
	.string	"                  "
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"\236\304\355\236\304\355\236\304\355\236\304\355\236\304\355\236\304\355\236\304\355\236\304\355\236\304\355\236\304\355\236\304\355\236\304\355\236\304\355\236\304\355\236\304\355\236\304\355\236\304\355\236\304\355\236\304\355\236\304\355\236\304\355\236\304\355\236\304\355\236\304\355\236\304\355\236\304\355\236\304\355\236\304\355\236\304\355\236\304\355\236\304\355\236\304\355\236\304\355\236\304\355\236\304\355\236\304\355\236\304\355\236\304\355\236\304\355\236\304\355\236\304\355\236\304\355\236\304\355\236\304\355\236\304\355\236\304\355\236\304\355\236\304\355\236\304\355\236\304\355\236\304\355\236\304\355\236\304\355\236\304\355"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.zero	3
	.align 32
	.type	mem_screen, @object
	.size	mem_screen, 10108
mem_screen:
# width:
	.long	58
# height:
	.long	58
# bytes_per_pixel:
	.long	3
# pixel_data:
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	"\236\304\355\236\304\355\236\304\355"
	.string	""
	.string	""
	.string	"\236\304\355\236\304\355\236\304\355"
	.string	""
	.string	""
	.string	"\236\304\355\236\304\355\236\304\355"
	.string	""
	.string	""
	.string	"\236\304\355\236\304\355\236\304\355"
	.string	""
	.string	""
	.string	"\236\304\355\236\304\355\236\304\355"
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"\236\304\355\236\304\355\236\304\355"
	.string	""
	.string	""
	.string	"\236\304\355\236\304\355\236\304\355"
	.string	""
	.string	""
	.string	"\236\304\355\236\304\355\236\304\355"
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"\301\304"
	.string	"\301\304"
	.string	"\301\304"
	.string	"\301\304"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"\236\304\355\236\304\355\236\304\355"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"\301\304"
	.string	""
	.string	""
	.string	""
	.string	"\301\304"
	.string	""
	.string	""
	.string	""
	.string	"\301\304"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	"\236\304\355\236\304\355\236\304\355"
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	"\236\304\355\236\304\355\236\304\355"
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	"\236\304\355\236\304\355"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"\301\304"
	.string	""
	.string	""
	.string	""
	.string	"\301\304"
	.string	""
	.string	""
	.string	""
	.string	"\301\304"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	"\236\304\355\236\304\355\236\304\355"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"\236\304\355\236\304\355\236\304\355"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	"\236\304\355\236\304\355\236\304\355"
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"\301\304"
	.string	""
	.string	""
	.string	""
	.string	"\301\304"
	.string	""
	.string	""
	.string	""
	.string	"\301\304"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"\301\304"
	.string	""
	.string	""
	.string	""
	.string	"\301\304"
	.string	""
	.string	""
	.string	""
	.string	"\301\304"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	"\236\304\355\236\304\355\236\304\355"
	.string	""
	.string	""
	.string	"\236\304\355\236\304\355\236\304\355"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	"\236\304\355\236\304\355\236\304\355"
	.string	""
	.string	""
	.string	"\236\304\355\236\304\355\236\304\355"
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"\236\304\355\236\304\355\236\304\355"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	"\236\304\355\236\304\355\236\304\355"
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"\236\304\355\236\304\355\236\304\355"
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"\236\304\355\236\304\355\236\304\355"
	.string	""
	.string	""
	.string	"\236\304\355\236\304\355\236\304\355"
	.string	""
	.string	""
	.string	"\236\304\355\236\304\355\236\304\355"
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"\301\304"
	.string	"\301\304"
	.string	"\301\304"
	.string	"\301\304"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"\301\304"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	"\236\304\355\236\304\355"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"\301\304"
	.string	"\301\304"
	.string	"\301\304"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"\301\304"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"\301\304"
	.string	"\301\304"
	.string	"\301\304"
	.string	"\301\304"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"\236\304\355\236\304\355\236\304\355"
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"\236\304\355\236\304\355\236\304\355"
	.string	""
	.string	""
	.string	"\236\304\355\236\304\355\236\304\355"
	.string	""
	.string	""
	.string	"\236\304\355\236\304\355\236\304\355"
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"\236\304\355"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"\236\304\355\236\304\355\236\304\355\236\304\355\236\304\355\236\304\355\236\304\355\236\304\355\236\304\355\236\304\355\236\304\355\236\304\355\236\304\355\236\304\355\236\304\355\236\304\355\236\304\355\236\304\355\236\304\355\236\304\355\236\304\355\236\304\355\236\304\355\236\304\355\236\304\355\236\304\355\236\304\355\236\304\355\236\304\355\236\304\355\236\304\355\236\304\355\236\304\355\236\304\355\236\304\355\236\304\355\236\304\355\236\304\355\236\304\355\236\304\355\236\304\355\236\304\355\236\304\355\236\304\355\236\304\355\236\304\355\236\304\355\236\304\355\236\304\355\236\304\355\236\304\355\236\304\355\236\304\355\236\304\355"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"                     \006*"
	.string	"                     \006*"
	.string	"                     \006*"
	.string	"                     \006*"
	.string	"                     \006*"
	.string	"                     \006*"
	.string	"                  "
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"                     \006*"
	.string	"                     \006*"
	.string	"                     \006*"
	.string	"                     \006*"
	.string	"                     \006*"
	.string	"                     \006*"
	.string	"                  "
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"                     \006*"
	.string	"                     \006*"
	.string	"                     \006*"
	.string	"                     \006*"
	.string	"                     \006*"
	.string	"                     \006*"
	.string	"                  "
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"                     \006*"
	.string	"                     \006*"
	.string	"                     \006*"
	.string	"                     \006*"
	.string	"                     \006*"
	.string	"                     \006*"
	.string	"                  "
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"                     \006*"
	.string	"                     \006*"
	.string	"                     \006*"
	.string	"                     \006*"
	.string	"                     \006*"
	.string	"                     \006*"
	.string	"                  "
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"                     \006*"
	.string	"                     \006*"
	.string	"                     \006*"
	.string	"                     \006*"
	.string	"                     \006*"
	.string	"                     \006*"
	.string	"                  "
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"                     \006*"
	.string	"                     \006*"
	.string	"                     \006*"
	.string	"                     \006*"
	.string	"                     \006*"
	.string	"                     \006*"
	.string	"                  "
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"                     \006*"
	.string	"                     \006*"
	.string	"                     \006*"
	.string	"                     \006*"
	.string	"                     \006*"
	.string	"                     \006*"
	.string	"                  "
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"                     \006*"
	.string	"                     \006*"
	.string	"                     \006*"
	.string	"                     \006*"
	.string	"                     \006*"
	.string	"                     \006*"
	.string	"                  "
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"                     \006*"
	.string	"                     \006*"
	.string	"                     \006*"
	.string	"                     \006*"
	.string	"                     \006*"
	.string	"                     \006*"
	.string	"                  "
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"                     \006*"
	.string	"                     \006*"
	.string	"                     \006*"
	.ascii	"      "
	.string	"               \006*"
	.string	"                     \006*"
	.string	"                     \006*"
	.string	"                  "
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"                     \006*"
	.string	"                     \006*"
	.string	"                     \006*"
	.string	"                     \006*"
	.string	"                     \006*"
	.string	"                     \006*"
	.string	"                  "
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"                     \006*"
	.string	"                     \006*"
	.string	"                     \006*"
	.string	"                     \006*"
	.string	"                     \006*"
	.string	"                     \006*"
	.string	"                  "
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"                     \006*"
	.string	"                     \006*"
	.string	"                     \006*"
	.string	"                     \006*"
	.string	"                     \006*"
	.string	"                     \006*"
	.string	"                  "
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"                     \006*"
	.string	"                     \006*"
	.string	"                     \006*"
	.string	"                     \006*"
	.string	"                     \006*"
	.string	"                     \006*"
	.string	"                  "
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"                     \006*"
	.string	"                     \006*"
	.string	"                     \006*"
	.string	"                     \006*"
	.string	"                     \006*"
	.string	"                     \006*"
	.string	"                  "
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"                     \006*"
	.string	"                     \006*"
	.string	"                     \006*"
	.string	"                     \006*"
	.string	"                     \006*"
	.string	"                     \006*"
	.string	"                  "
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"                     \006*"
	.string	"                     \006*"
	.string	"                     \006*"
	.string	"                     \006*"
	.string	"                     \006*"
	.string	"                     \006*"
	.string	"                  "
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"                     \006*"
	.string	"                     \006*"
	.string	"                     \006*"
	.string	"                     \006*"
	.string	"                     \006*"
	.string	"                     \006*"
	.string	"                  "
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"                     \006*"
	.string	"                     \006*"
	.string	"                     \006*"
	.string	"                     \006*"
	.string	"                     \006*"
	.string	"                     \006*"
	.string	"                  "
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"                     \006*"
	.string	"                     \006*"
	.string	"                     \006*"
	.string	"                     \006*"
	.string	"                     \006*"
	.string	"                     \006*"
	.string	"                  "
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"                     \006*"
	.string	"                     \006*"
	.string	"                     \006*"
	.string	"                     \006*"
	.string	"                     \006*"
	.string	"                     \006*"
	.string	"                  "
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"                     \006*"
	.string	"                     \006*"
	.string	"                     \006*"
	.string	"                     \006*"
	.string	"                     \006*"
	.string	"                     \006*"
	.string	"                  "
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"                     \006*"
	.string	"                     \006*"
	.string	"                     \006*"
	.string	"                     \006*"
	.string	"                     \006*"
	.string	"                     \006*"
	.string	"                  "
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	"\006*"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"                     \006*"
	.string	"                     \006*"
	.string	"                     \006*"
	.string	"                     \006*"
	.string	"                     \006*"
	.string	"                     \006*"
	.string	"                  "
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"                     \006*"
	.string	"                     \006*"
	.string	"                     \006*"
	.string	"                     \006*"
	.string	"                     \006*"
	.string	"                     \006*"
	.string	"                  "
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"                     \006*"
	.string	"                     \006*"
	.string	"                     \006*"
	.string	"                     \006*"
	.string	"                     \006*"
	.string	"                     \006*"
	.string	"                  "
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"                     \006*"
	.string	"                     \006*"
	.string	"                     \006*"
	.string	"                     \006*"
	.string	"                     \006*"
	.string	"                     \006*"
	.string	"                  "
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"\236\304\355\236\304\355\236\304\355\236\304\355\236\304\355\236\304\355\236\304\355\236\304\355\236\304\355\236\304\355\236\304\355\236\304\355\236\304\355\236\304\355\236\304\355\236\304\355\236\304\355\236\304\355\236\304\355\236\304\355\236\304\355\236\304\355\236\304\355\236\304\355\236\304\355\236\304\355\236\304\355\236\304\355\236\304\355\236\304\355\236\304\355\236\304\355\236\304\355\236\304\355\236\304\355\236\304\355\236\304\355\236\304\355\236\304\355\236\304\355\236\304\355\236\304\355\236\304\355\236\304\355\236\304\355\236\304\355\236\304\355\236\304\355\236\304\355\236\304\355\236\304\355\236\304\355\236\304\355\236\304\355"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.zero	3
	.local	delay.7436
	.comm	delay.7436,4,4
	.local	doit.7441
	.comm	doit.7441,4,4
	.local	update.7440
	.comm	update.7440,4,4
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC10:
	.long	-1717986918
	.long	1070176665
	.align 8
.LC11:
	.long	-343597384
	.long	1068415057
	.align 8
.LC13:
	.long	-171798692
	.long	1072651304
	.section	.rodata.cst4,"aM",@progbits,4
	.align 4
.LC14:
	.long	1086324736
	.align 4
.LC18:
	.long	1166016512
	.align 4
.LC19:
	.long	1056964608
	.text
.Letext0:
	.file 2 "/usr/lib/i386-linux-gnu/gcc/i486-linux-gnu/4.6.1/include/stddef.h"
	.file 3 "/usr/include/bits/types.h"
	.file 4 "/usr/include/libio.h"
	.file 5 "/usr/include/time.h"
	.file 6 "/usr/include/sys/types.h"
	.file 7 "/usr/include/X11/X.h"
	.file 8 "/usr/include/X11/Xlib.h"
	.file 9 "/usr/include/X11/Xresource.h"
	.file 10 "include/bubblemon.h"
	.file 11 "misc/load_58.c"
	.file 12 "misc/mem_58.c"
	.file 13 "/usr/include/stdio.h"
	.file 14 "wmx11pixmap.h"
	.file 15 "include/clockfont.h"
	.file 16 "include/numbers-2.h"
	.file 17 "include/ducks.h"
	.file 18 "include/digits.h"
	.file 19 "misc/numbers.xpm"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x3ee6
	.value	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF475
	.byte	0x1
	.long	.LASF476
	.long	.LASF477
	.long	0
	.long	0
	.long	.Ldebug_ranges0+0x780
	.long	.Ldebug_line0
	.uleb128 0x2
	.long	.LASF8
	.byte	0x2
	.byte	0xd4
	.long	0x34
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.long	.LASF0
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.long	.LASF1
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.long	.LASF2
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.long	.LASF3
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF4
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.long	.LASF5
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF6
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF7
	.uleb128 0x2
	.long	.LASF9
	.byte	0x3
	.byte	0x38
	.long	0x65
	.uleb128 0x2
	.long	.LASF10
	.byte	0x3
	.byte	0x8d
	.long	0x89
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.long	.LASF11
	.uleb128 0x2
	.long	.LASF12
	.byte	0x3
	.byte	0x8e
	.long	0x73
	.uleb128 0x2
	.long	.LASF13
	.byte	0x3
	.byte	0x95
	.long	0x89
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x6
	.byte	0x4
	.long	0xae
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF14
	.uleb128 0x7
	.long	.LASF44
	.byte	0x94
	.byte	0x4
	.value	0x10f
	.long	0x276
	.uleb128 0x8
	.long	.LASF15
	.byte	0x4
	.value	0x110
	.long	0x5e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.long	.LASF16
	.byte	0x4
	.value	0x115
	.long	0xa8
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x8
	.long	.LASF17
	.byte	0x4
	.value	0x116
	.long	0xa8
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x8
	.long	.LASF18
	.byte	0x4
	.value	0x117
	.long	0xa8
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x8
	.long	.LASF19
	.byte	0x4
	.value	0x118
	.long	0xa8
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x8
	.long	.LASF20
	.byte	0x4
	.value	0x119
	.long	0xa8
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x8
	.long	.LASF21
	.byte	0x4
	.value	0x11a
	.long	0xa8
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x8
	.long	.LASF22
	.byte	0x4
	.value	0x11b
	.long	0xa8
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x8
	.long	.LASF23
	.byte	0x4
	.value	0x11c
	.long	0xa8
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x8
	.long	.LASF24
	.byte	0x4
	.value	0x11e
	.long	0xa8
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x8
	.long	.LASF25
	.byte	0x4
	.value	0x11f
	.long	0xa8
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x8
	.long	.LASF26
	.byte	0x4
	.value	0x120
	.long	0xa8
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x8
	.long	.LASF27
	.byte	0x4
	.value	0x122
	.long	0x2c4
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x8
	.long	.LASF28
	.byte	0x4
	.value	0x124
	.long	0x2ca
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x8
	.long	.LASF29
	.byte	0x4
	.value	0x126
	.long	0x5e
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x8
	.long	.LASF30
	.byte	0x4
	.value	0x12a
	.long	0x5e
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x8
	.long	.LASF31
	.byte	0x4
	.value	0x12c
	.long	0x7e
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x8
	.long	.LASF32
	.byte	0x4
	.value	0x130
	.long	0x42
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x8
	.long	.LASF33
	.byte	0x4
	.value	0x131
	.long	0x50
	.byte	0x2
	.byte	0x23
	.uleb128 0x46
	.uleb128 0x8
	.long	.LASF34
	.byte	0x4
	.value	0x132
	.long	0x2d0
	.byte	0x2
	.byte	0x23
	.uleb128 0x47
	.uleb128 0x8
	.long	.LASF35
	.byte	0x4
	.value	0x136
	.long	0x2e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x8
	.long	.LASF36
	.byte	0x4
	.value	0x13f
	.long	0x90
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x8
	.long	.LASF37
	.byte	0x4
	.value	0x148
	.long	0xa6
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x8
	.long	.LASF38
	.byte	0x4
	.value	0x149
	.long	0xa6
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x8
	.long	.LASF39
	.byte	0x4
	.value	0x14a
	.long	0xa6
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0x8
	.long	.LASF40
	.byte	0x4
	.value	0x14b
	.long	0xa6
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x8
	.long	.LASF41
	.byte	0x4
	.value	0x14c
	.long	0x29
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0x8
	.long	.LASF42
	.byte	0x4
	.value	0x14e
	.long	0x5e
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0x8
	.long	.LASF43
	.byte	0x4
	.value	0x150
	.long	0x2e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.byte	0
	.uleb128 0x9
	.long	0xae
	.long	0x286
	.uleb128 0xa
	.long	0x34
	.byte	0x3
	.byte	0
	.uleb128 0xb
	.long	.LASF478
	.byte	0x4
	.byte	0xb4
	.uleb128 0xc
	.long	.LASF45
	.byte	0xc
	.byte	0x4
	.byte	0xba
	.long	0x2c4
	.uleb128 0xd
	.long	.LASF46
	.byte	0x4
	.byte	0xbb
	.long	0x2c4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.long	.LASF47
	.byte	0x4
	.byte	0xbc
	.long	0x2ca
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.long	.LASF48
	.byte	0x4
	.byte	0xc0
	.long	0x5e
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x28d
	.uleb128 0x6
	.byte	0x4
	.long	0xb5
	.uleb128 0x9
	.long	0xae
	.long	0x2e0
	.uleb128 0xa
	.long	0x34
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x286
	.uleb128 0x9
	.long	0xae
	.long	0x2f6
	.uleb128 0xa
	.long	0x34
	.byte	0x27
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x2fc
	.uleb128 0xe
	.long	0xae
	.uleb128 0x2
	.long	.LASF49
	.byte	0x5
	.byte	0x4c
	.long	0x9b
	.uleb128 0x2
	.long	.LASF50
	.byte	0x6
	.byte	0xcc
	.long	0x6c
	.uleb128 0x9
	.long	0xae
	.long	0x327
	.uleb128 0xa
	.long	0x34
	.byte	0x1f
	.byte	0
	.uleb128 0x9
	.long	0xae
	.long	0x337
	.uleb128 0xa
	.long	0x34
	.byte	0x7
	.byte	0
	.uleb128 0x9
	.long	0xae
	.long	0x347
	.uleb128 0xa
	.long	0x34
	.byte	0x13
	.byte	0
	.uleb128 0xf
	.string	"tm"
	.byte	0x2c
	.byte	0x5
	.byte	0x85
	.long	0x3ed
	.uleb128 0xd
	.long	.LASF51
	.byte	0x5
	.byte	0x87
	.long	0x5e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.long	.LASF52
	.byte	0x5
	.byte	0x88
	.long	0x5e
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.long	.LASF53
	.byte	0x5
	.byte	0x89
	.long	0x5e
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.long	.LASF54
	.byte	0x5
	.byte	0x8a
	.long	0x5e
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xd
	.long	.LASF55
	.byte	0x5
	.byte	0x8b
	.long	0x5e
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.long	.LASF56
	.byte	0x5
	.byte	0x8c
	.long	0x5e
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xd
	.long	.LASF57
	.byte	0x5
	.byte	0x8d
	.long	0x5e
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xd
	.long	.LASF58
	.byte	0x5
	.byte	0x8e
	.long	0x5e
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xd
	.long	.LASF59
	.byte	0x5
	.byte	0x8f
	.long	0x5e
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xd
	.long	.LASF60
	.byte	0x5
	.byte	0x92
	.long	0x89
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xd
	.long	.LASF61
	.byte	0x5
	.byte	0x93
	.long	0x2f6
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x5e
	.uleb128 0x10
	.string	"XID"
	.byte	0x7
	.byte	0x42
	.long	0x49
	.uleb128 0x2
	.long	.LASF62
	.byte	0x7
	.byte	0x4a
	.long	0x49
	.uleb128 0x2
	.long	.LASF63
	.byte	0x7
	.byte	0x4c
	.long	0x49
	.uleb128 0x2
	.long	.LASF64
	.byte	0x7
	.byte	0x4d
	.long	0x49
	.uleb128 0x2
	.long	.LASF65
	.byte	0x7
	.byte	0x60
	.long	0x3f3
	.uleb128 0x2
	.long	.LASF66
	.byte	0x7
	.byte	0x61
	.long	0x3f3
	.uleb128 0x2
	.long	.LASF67
	.byte	0x7
	.byte	0x68
	.long	0x3f3
	.uleb128 0x2
	.long	.LASF68
	.byte	0x7
	.byte	0x6c
	.long	0x3b
	.uleb128 0x2
	.long	.LASF69
	.byte	0x8
	.byte	0x54
	.long	0xa8
	.uleb128 0xc
	.long	.LASF70
	.byte	0x10
	.byte	0x8
	.byte	0x9c
	.long	0x49b
	.uleb128 0xd
	.long	.LASF71
	.byte	0x8
	.byte	0x9d
	.long	0x5e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.long	.LASF72
	.byte	0x8
	.byte	0x9e
	.long	0x49b
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.long	.LASF73
	.byte	0x8
	.byte	0x9f
	.long	0x4b1
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.long	.LASF74
	.byte	0x8
	.byte	0xa2
	.long	0x44b
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x456
	.uleb128 0x11
	.byte	0x1
	.long	0x5e
	.long	0x4b1
	.uleb128 0x12
	.long	0x49b
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x4a1
	.uleb128 0x2
	.long	.LASF75
	.byte	0x8
	.byte	0xa3
	.long	0x456
	.uleb128 0x10
	.string	"GC"
	.byte	0x8
	.byte	0xe6
	.long	0x4cc
	.uleb128 0x6
	.byte	0x4
	.long	0x4d2
	.uleb128 0x13
	.long	.LASF108
	.byte	0x1
	.uleb128 0x14
	.byte	0x20
	.byte	0x8
	.byte	0xeb
	.long	0x551
	.uleb128 0xd
	.long	.LASF76
	.byte	0x8
	.byte	0xec
	.long	0x551
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.long	.LASF77
	.byte	0x8
	.byte	0xed
	.long	0x409
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.long	.LASF78
	.byte	0x8
	.byte	0xf1
	.long	0x5e
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.long	.LASF79
	.byte	0x8
	.byte	0xf3
	.long	0x49
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xd
	.long	.LASF80
	.byte	0x8
	.byte	0xf3
	.long	0x49
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.long	.LASF81
	.byte	0x8
	.byte	0xf3
	.long	0x49
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xd
	.long	.LASF82
	.byte	0x8
	.byte	0xf4
	.long	0x5e
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xd
	.long	.LASF83
	.byte	0x8
	.byte	0xf5
	.long	0x5e
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x4b7
	.uleb128 0x2
	.long	.LASF84
	.byte	0x8
	.byte	0xf6
	.long	0x4d8
	.uleb128 0x14
	.byte	0xc
	.byte	0x8
	.byte	0xfb
	.long	0x595
	.uleb128 0xd
	.long	.LASF85
	.byte	0x8
	.byte	0xfc
	.long	0x5e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.long	.LASF86
	.byte	0x8
	.byte	0xfd
	.long	0x5e
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.long	.LASF87
	.byte	0x8
	.byte	0xfe
	.long	0x595
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x557
	.uleb128 0x2
	.long	.LASF88
	.byte	0x8
	.byte	0xff
	.long	0x562
	.uleb128 0x15
	.byte	0x50
	.byte	0x8
	.value	0x109
	.long	0x6dc
	.uleb128 0x8
	.long	.LASF76
	.byte	0x8
	.value	0x10a
	.long	0x551
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.long	.LASF89
	.byte	0x8
	.value	0x10b
	.long	0x6e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x8
	.long	.LASF90
	.byte	0x8
	.value	0x10c
	.long	0x41f
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x8
	.long	.LASF91
	.byte	0x8
	.value	0x10d
	.long	0x5e
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x8
	.long	.LASF92
	.byte	0x8
	.value	0x10d
	.long	0x5e
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x8
	.long	.LASF93
	.byte	0x8
	.value	0x10e
	.long	0x5e
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x8
	.long	.LASF94
	.byte	0x8
	.value	0x10e
	.long	0x5e
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x8
	.long	.LASF95
	.byte	0x8
	.value	0x10f
	.long	0x5e
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x8
	.long	.LASF96
	.byte	0x8
	.value	0x110
	.long	0x6e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x8
	.long	.LASF97
	.byte	0x8
	.value	0x111
	.long	0x5e
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x8
	.long	.LASF98
	.byte	0x8
	.value	0x112
	.long	0x595
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x8
	.long	.LASF99
	.byte	0x8
	.value	0x113
	.long	0x4c2
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x8
	.long	.LASF100
	.byte	0x8
	.value	0x114
	.long	0x435
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x8
	.long	.LASF101
	.byte	0x8
	.value	0x115
	.long	0x49
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x8
	.long	.LASF102
	.byte	0x8
	.value	0x116
	.long	0x49
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x8
	.long	.LASF103
	.byte	0x8
	.value	0x117
	.long	0x5e
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x8
	.long	.LASF104
	.byte	0x8
	.value	0x117
	.long	0x5e
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x8
	.long	.LASF105
	.byte	0x8
	.value	0x118
	.long	0x5e
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x8
	.long	.LASF106
	.byte	0x8
	.value	0x119
	.long	0x5e
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x8
	.long	.LASF107
	.byte	0x8
	.value	0x11a
	.long	0x89
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.byte	0
	.uleb128 0x13
	.long	.LASF109
	.byte	0x1
	.uleb128 0x6
	.byte	0x4
	.long	0x6dc
	.uleb128 0x6
	.byte	0x4
	.long	0x59b
	.uleb128 0x16
	.long	.LASF110
	.byte	0x8
	.value	0x11b
	.long	0x5a6
	.uleb128 0x15
	.byte	0x10
	.byte	0x8
	.value	0x120
	.long	0x740
	.uleb128 0x8
	.long	.LASF76
	.byte	0x8
	.value	0x121
	.long	0x551
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.long	.LASF85
	.byte	0x8
	.value	0x122
	.long	0x5e
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x8
	.long	.LASF111
	.byte	0x8
	.value	0x123
	.long	0x5e
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x8
	.long	.LASF112
	.byte	0x8
	.value	0x124
	.long	0x5e
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0x16
	.long	.LASF113
	.byte	0x8
	.value	0x125
	.long	0x6fa
	.uleb128 0x6
	.byte	0x4
	.long	0x6ee
	.uleb128 0x7
	.long	.LASF114
	.byte	0x18
	.byte	0x8
	.value	0x180
	.long	0x7ba
	.uleb128 0x8
	.long	.LASF115
	.byte	0x8
	.value	0x181
	.long	0x908
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.long	.LASF116
	.byte	0x8
	.value	0x18c
	.long	0x91e
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x8
	.long	.LASF117
	.byte	0x8
	.value	0x18d
	.long	0x93e
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x8
	.long	.LASF118
	.byte	0x8
	.value	0x18e
	.long	0x963
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x8
	.long	.LASF119
	.byte	0x8
	.value	0x18f
	.long	0x98d
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x8
	.long	.LASF120
	.byte	0x8
	.value	0x190
	.long	0x9a8
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0
	.uleb128 0x7
	.long	.LASF121
	.byte	0x58
	.byte	0x8
	.value	0x170
	.long	0x8c5
	.uleb128 0x8
	.long	.LASF91
	.byte	0x8
	.value	0x171
	.long	0x5e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.long	.LASF92
	.byte	0x8
	.value	0x171
	.long	0x5e
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x8
	.long	.LASF122
	.byte	0x8
	.value	0x172
	.long	0x5e
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x8
	.long	.LASF123
	.byte	0x8
	.value	0x173
	.long	0x5e
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x8
	.long	.LASF124
	.byte	0x8
	.value	0x174
	.long	0xa8
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x8
	.long	.LASF125
	.byte	0x8
	.value	0x175
	.long	0x5e
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x8
	.long	.LASF126
	.byte	0x8
	.value	0x176
	.long	0x5e
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x8
	.long	.LASF127
	.byte	0x8
	.value	0x177
	.long	0x5e
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x8
	.long	.LASF128
	.byte	0x8
	.value	0x178
	.long	0x5e
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x8
	.long	.LASF85
	.byte	0x8
	.value	0x179
	.long	0x5e
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x8
	.long	.LASF129
	.byte	0x8
	.value	0x17a
	.long	0x5e
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x8
	.long	.LASF111
	.byte	0x8
	.value	0x17b
	.long	0x5e
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x8
	.long	.LASF79
	.byte	0x8
	.value	0x17c
	.long	0x49
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x8
	.long	.LASF80
	.byte	0x8
	.value	0x17d
	.long	0x49
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x8
	.long	.LASF81
	.byte	0x8
	.value	0x17e
	.long	0x49
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x8
	.long	.LASF130
	.byte	0x8
	.value	0x17f
	.long	0x44b
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x17
	.string	"f"
	.byte	0x8
	.value	0x191
	.long	0x752
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.byte	0
	.uleb128 0x11
	.byte	0x1
	.long	0x902
	.long	0x902
	.uleb128 0x12
	.long	0x6e2
	.uleb128 0x12
	.long	0x595
	.uleb128 0x12
	.long	0x34
	.uleb128 0x12
	.long	0x5e
	.uleb128 0x12
	.long	0x5e
	.uleb128 0x12
	.long	0xa8
	.uleb128 0x12
	.long	0x34
	.uleb128 0x12
	.long	0x34
	.uleb128 0x12
	.long	0x5e
	.uleb128 0x12
	.long	0x5e
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x7ba
	.uleb128 0x6
	.byte	0x4
	.long	0x8c5
	.uleb128 0x11
	.byte	0x1
	.long	0x5e
	.long	0x91e
	.uleb128 0x12
	.long	0x902
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x90e
	.uleb128 0x11
	.byte	0x1
	.long	0x49
	.long	0x93e
	.uleb128 0x12
	.long	0x902
	.uleb128 0x12
	.long	0x5e
	.uleb128 0x12
	.long	0x5e
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x924
	.uleb128 0x11
	.byte	0x1
	.long	0x5e
	.long	0x963
	.uleb128 0x12
	.long	0x902
	.uleb128 0x12
	.long	0x5e
	.uleb128 0x12
	.long	0x5e
	.uleb128 0x12
	.long	0x49
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x944
	.uleb128 0x11
	.byte	0x1
	.long	0x902
	.long	0x98d
	.uleb128 0x12
	.long	0x902
	.uleb128 0x12
	.long	0x5e
	.uleb128 0x12
	.long	0x5e
	.uleb128 0x12
	.long	0x34
	.uleb128 0x12
	.long	0x34
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x969
	.uleb128 0x11
	.byte	0x1
	.long	0x5e
	.long	0x9a8
	.uleb128 0x12
	.long	0x902
	.uleb128 0x12
	.long	0x89
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x993
	.uleb128 0x16
	.long	.LASF131
	.byte	0x8
	.value	0x192
	.long	0x7ba
	.uleb128 0x15
	.byte	0xc
	.byte	0x8
	.value	0x1a2
	.long	0xa1e
	.uleb128 0x8
	.long	.LASF132
	.byte	0x8
	.value	0x1a3
	.long	0x49
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x17
	.string	"red"
	.byte	0x8
	.value	0x1a4
	.long	0x42
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x8
	.long	.LASF133
	.byte	0x8
	.value	0x1a4
	.long	0x42
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0x8
	.long	.LASF134
	.byte	0x8
	.value	0x1a4
	.long	0x42
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x8
	.long	.LASF135
	.byte	0x8
	.value	0x1a5
	.long	0xae
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0x17
	.string	"pad"
	.byte	0x8
	.value	0x1a6
	.long	0xae
	.byte	0x2
	.byte	0x23
	.uleb128 0xb
	.byte	0
	.uleb128 0x16
	.long	.LASF136
	.byte	0x8
	.value	0x1a7
	.long	0x9ba
	.uleb128 0x16
	.long	.LASF137
	.byte	0x8
	.value	0x1ef
	.long	0x6dc
	.uleb128 0x15
	.byte	0xb0
	.byte	0x8
	.value	0x1f5
	.long	0xcde
	.uleb128 0x8
	.long	.LASF76
	.byte	0x8
	.value	0x1fa
	.long	0x551
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.long	.LASF138
	.byte	0x8
	.value	0x1fb
	.long	0xce4
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x17
	.string	"fd"
	.byte	0x8
	.value	0x1fc
	.long	0x5e
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x8
	.long	.LASF139
	.byte	0x8
	.value	0x1fd
	.long	0x5e
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x8
	.long	.LASF140
	.byte	0x8
	.value	0x1fe
	.long	0x5e
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x8
	.long	.LASF141
	.byte	0x8
	.value	0x1ff
	.long	0x5e
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x8
	.long	.LASF142
	.byte	0x8
	.value	0x200
	.long	0xa8
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x8
	.long	.LASF143
	.byte	0x8
	.value	0x201
	.long	0x3f3
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x8
	.long	.LASF144
	.byte	0x8
	.value	0x202
	.long	0x3f3
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x8
	.long	.LASF145
	.byte	0x8
	.value	0x203
	.long	0x3f3
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x8
	.long	.LASF146
	.byte	0x8
	.value	0x204
	.long	0x5e
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x8
	.long	.LASF147
	.byte	0x8
	.value	0x205
	.long	0xcfa
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x8
	.long	.LASF125
	.byte	0x8
	.value	0x208
	.long	0x5e
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x8
	.long	.LASF126
	.byte	0x8
	.value	0x209
	.long	0x5e
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x8
	.long	.LASF128
	.byte	0x8
	.value	0x20a
	.long	0x5e
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x8
	.long	.LASF127
	.byte	0x8
	.value	0x20b
	.long	0x5e
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x8
	.long	.LASF148
	.byte	0x8
	.value	0x20c
	.long	0x5e
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x8
	.long	.LASF149
	.byte	0x8
	.value	0x20d
	.long	0xd00
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x8
	.long	.LASF150
	.byte	0x8
	.value	0x20e
	.long	0x5e
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x8
	.long	.LASF151
	.byte	0x8
	.value	0x20f
	.long	0x5e
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x8
	.long	.LASF152
	.byte	0x8
	.value	0x210
	.long	0xce4
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x8
	.long	.LASF153
	.byte	0x8
	.value	0x210
	.long	0xce4
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x8
	.long	.LASF154
	.byte	0x8
	.value	0x211
	.long	0x5e
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x8
	.long	.LASF155
	.byte	0x8
	.value	0x212
	.long	0x49
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0x8
	.long	.LASF156
	.byte	0x8
	.value	0x213
	.long	0x49
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x8
	.long	.LASF157
	.byte	0x8
	.value	0x214
	.long	0x44b
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0x8
	.long	.LASF158
	.byte	0x8
	.value	0x215
	.long	0x44b
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0x8
	.long	.LASF159
	.byte	0x8
	.value	0x216
	.long	0x44b
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0x8
	.long	.LASF160
	.byte	0x8
	.value	0x217
	.long	0x44b
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x8
	.long	.LASF161
	.byte	0x8
	.value	0x218
	.long	0x34
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0x17
	.string	"db"
	.byte	0x8
	.value	0x219
	.long	0xd0c
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0x8
	.long	.LASF162
	.byte	0x8
	.value	0x21a
	.long	0xd22
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0x8
	.long	.LASF163
	.byte	0x8
	.value	0x21d
	.long	0xa8
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x8
	.long	.LASF164
	.byte	0x8
	.value	0x21e
	.long	0x5e
	.byte	0x3
	.byte	0x23
	.uleb128 0x84
	.uleb128 0x8
	.long	.LASF165
	.byte	0x8
	.value	0x21f
	.long	0x5e
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0x8
	.long	.LASF166
	.byte	0x8
	.value	0x220
	.long	0x74c
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0x8
	.long	.LASF167
	.byte	0x8
	.value	0x221
	.long	0x49
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0x8
	.long	.LASF168
	.byte	0x8
	.value	0x222
	.long	0x49
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.uleb128 0x8
	.long	.LASF169
	.byte	0x8
	.value	0x223
	.long	0x5e
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0x8
	.long	.LASF170
	.byte	0x8
	.value	0x224
	.long	0x5e
	.byte	0x3
	.byte	0x23
	.uleb128 0x9c
	.uleb128 0x8
	.long	.LASF171
	.byte	0x8
	.value	0x225
	.long	0x44b
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0x8
	.long	.LASF172
	.byte	0x8
	.value	0x226
	.long	0x44b
	.byte	0x3
	.byte	0x23
	.uleb128 0xa4
	.uleb128 0x8
	.long	.LASF173
	.byte	0x8
	.value	0x227
	.long	0x5e
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8
	.uleb128 0x8
	.long	.LASF174
	.byte	0x8
	.value	0x228
	.long	0xa8
	.byte	0x3
	.byte	0x23
	.uleb128 0xac
	.byte	0
	.uleb128 0x13
	.long	.LASF175
	.byte	0x1
	.uleb128 0x6
	.byte	0x4
	.long	0xcde
	.uleb128 0x11
	.byte	0x1
	.long	0x3f3
	.long	0xcfa
	.uleb128 0x12
	.long	0x6e2
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0xcea
	.uleb128 0x6
	.byte	0x4
	.long	0x740
	.uleb128 0x13
	.long	.LASF176
	.byte	0x1
	.uleb128 0x6
	.byte	0x4
	.long	0xd06
	.uleb128 0x11
	.byte	0x1
	.long	0x5e
	.long	0xd22
	.uleb128 0x12
	.long	0x6e2
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0xd12
	.uleb128 0x16
	.long	.LASF177
	.byte	0x8
	.value	0x22e
	.long	0xd34
	.uleb128 0x6
	.byte	0x4
	.long	0xa36
	.uleb128 0x15
	.byte	0x3c
	.byte	0x8
	.value	0x235
	.long	0xe21
	.uleb128 0x8
	.long	.LASF178
	.byte	0x8
	.value	0x236
	.long	0x5e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.long	.LASF179
	.byte	0x8
	.value	0x237
	.long	0x49
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x8
	.long	.LASF180
	.byte	0x8
	.value	0x238
	.long	0x5e
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x8
	.long	.LASF89
	.byte	0x8
	.value	0x239
	.long	0xe21
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x8
	.long	.LASF181
	.byte	0x8
	.value	0x23a
	.long	0x41f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x8
	.long	.LASF90
	.byte	0x8
	.value	0x23b
	.long	0x41f
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x8
	.long	.LASF182
	.byte	0x8
	.value	0x23c
	.long	0x41f
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x8
	.long	.LASF183
	.byte	0x8
	.value	0x23d
	.long	0x414
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x17
	.string	"x"
	.byte	0x8
	.value	0x23e
	.long	0x5e
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x17
	.string	"y"
	.byte	0x8
	.value	0x23e
	.long	0x5e
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x8
	.long	.LASF184
	.byte	0x8
	.value	0x23f
	.long	0x5e
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x8
	.long	.LASF185
	.byte	0x8
	.value	0x23f
	.long	0x5e
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x8
	.long	.LASF186
	.byte	0x8
	.value	0x240
	.long	0x34
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x8
	.long	.LASF187
	.byte	0x8
	.value	0x241
	.long	0x34
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x8
	.long	.LASF188
	.byte	0x8
	.value	0x242
	.long	0x5e
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0xa2a
	.uleb128 0x16
	.long	.LASF189
	.byte	0x8
	.value	0x243
	.long	0xd3a
	.uleb128 0x15
	.byte	0x3c
	.byte	0x8
	.value	0x247
	.long	0xf1a
	.uleb128 0x8
	.long	.LASF178
	.byte	0x8
	.value	0x248
	.long	0x5e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.long	.LASF179
	.byte	0x8
	.value	0x249
	.long	0x49
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x8
	.long	.LASF180
	.byte	0x8
	.value	0x24a
	.long	0x5e
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x8
	.long	.LASF89
	.byte	0x8
	.value	0x24b
	.long	0xe21
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x8
	.long	.LASF181
	.byte	0x8
	.value	0x24c
	.long	0x41f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x8
	.long	.LASF90
	.byte	0x8
	.value	0x24d
	.long	0x41f
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x8
	.long	.LASF182
	.byte	0x8
	.value	0x24e
	.long	0x41f
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x8
	.long	.LASF183
	.byte	0x8
	.value	0x24f
	.long	0x414
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x17
	.string	"x"
	.byte	0x8
	.value	0x250
	.long	0x5e
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x17
	.string	"y"
	.byte	0x8
	.value	0x250
	.long	0x5e
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x8
	.long	.LASF184
	.byte	0x8
	.value	0x251
	.long	0x5e
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x8
	.long	.LASF185
	.byte	0x8
	.value	0x251
	.long	0x5e
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x8
	.long	.LASF186
	.byte	0x8
	.value	0x252
	.long	0x34
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x8
	.long	.LASF190
	.byte	0x8
	.value	0x253
	.long	0x34
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x8
	.long	.LASF188
	.byte	0x8
	.value	0x254
	.long	0x5e
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.byte	0
	.uleb128 0x16
	.long	.LASF191
	.byte	0x8
	.value	0x255
	.long	0xe33
	.uleb128 0x15
	.byte	0x3c
	.byte	0x8
	.value	0x259
	.long	0x100d
	.uleb128 0x8
	.long	.LASF178
	.byte	0x8
	.value	0x25a
	.long	0x5e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.long	.LASF179
	.byte	0x8
	.value	0x25b
	.long	0x49
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x8
	.long	.LASF180
	.byte	0x8
	.value	0x25c
	.long	0x5e
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x8
	.long	.LASF89
	.byte	0x8
	.value	0x25d
	.long	0xe21
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x8
	.long	.LASF181
	.byte	0x8
	.value	0x25e
	.long	0x41f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x8
	.long	.LASF90
	.byte	0x8
	.value	0x25f
	.long	0x41f
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x8
	.long	.LASF182
	.byte	0x8
	.value	0x260
	.long	0x41f
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x8
	.long	.LASF183
	.byte	0x8
	.value	0x261
	.long	0x414
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x17
	.string	"x"
	.byte	0x8
	.value	0x262
	.long	0x5e
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x17
	.string	"y"
	.byte	0x8
	.value	0x262
	.long	0x5e
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x8
	.long	.LASF184
	.byte	0x8
	.value	0x263
	.long	0x5e
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x8
	.long	.LASF185
	.byte	0x8
	.value	0x263
	.long	0x5e
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x8
	.long	.LASF186
	.byte	0x8
	.value	0x264
	.long	0x34
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x8
	.long	.LASF192
	.byte	0x8
	.value	0x265
	.long	0xae
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x8
	.long	.LASF188
	.byte	0x8
	.value	0x266
	.long	0x5e
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.byte	0
	.uleb128 0x16
	.long	.LASF193
	.byte	0x8
	.value	0x267
	.long	0xf26
	.uleb128 0x15
	.byte	0x44
	.byte	0x8
	.value	0x26a
	.long	0x111e
	.uleb128 0x8
	.long	.LASF178
	.byte	0x8
	.value	0x26b
	.long	0x5e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.long	.LASF179
	.byte	0x8
	.value	0x26c
	.long	0x49
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x8
	.long	.LASF180
	.byte	0x8
	.value	0x26d
	.long	0x5e
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x8
	.long	.LASF89
	.byte	0x8
	.value	0x26e
	.long	0xe21
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x8
	.long	.LASF181
	.byte	0x8
	.value	0x26f
	.long	0x41f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x8
	.long	.LASF90
	.byte	0x8
	.value	0x270
	.long	0x41f
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x8
	.long	.LASF182
	.byte	0x8
	.value	0x271
	.long	0x41f
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x8
	.long	.LASF183
	.byte	0x8
	.value	0x272
	.long	0x414
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x17
	.string	"x"
	.byte	0x8
	.value	0x273
	.long	0x5e
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x17
	.string	"y"
	.byte	0x8
	.value	0x273
	.long	0x5e
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x8
	.long	.LASF184
	.byte	0x8
	.value	0x274
	.long	0x5e
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x8
	.long	.LASF185
	.byte	0x8
	.value	0x274
	.long	0x5e
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x8
	.long	.LASF194
	.byte	0x8
	.value	0x275
	.long	0x5e
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x8
	.long	.LASF195
	.byte	0x8
	.value	0x276
	.long	0x5e
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x8
	.long	.LASF188
	.byte	0x8
	.value	0x27b
	.long	0x5e
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x8
	.long	.LASF196
	.byte	0x8
	.value	0x27c
	.long	0x5e
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x8
	.long	.LASF186
	.byte	0x8
	.value	0x27d
	.long	0x34
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.byte	0
	.uleb128 0x16
	.long	.LASF197
	.byte	0x8
	.value	0x27e
	.long	0x1019
	.uleb128 0x15
	.byte	0x1c
	.byte	0x8
	.value	0x282
	.long	0x119d
	.uleb128 0x8
	.long	.LASF178
	.byte	0x8
	.value	0x283
	.long	0x5e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.long	.LASF179
	.byte	0x8
	.value	0x284
	.long	0x49
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x8
	.long	.LASF180
	.byte	0x8
	.value	0x285
	.long	0x5e
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x8
	.long	.LASF89
	.byte	0x8
	.value	0x286
	.long	0xe21
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x8
	.long	.LASF181
	.byte	0x8
	.value	0x287
	.long	0x41f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x8
	.long	.LASF194
	.byte	0x8
	.value	0x288
	.long	0x5e
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x8
	.long	.LASF195
	.byte	0x8
	.value	0x28a
	.long	0x5e
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0
	.uleb128 0x16
	.long	.LASF198
	.byte	0x8
	.value	0x290
	.long	0x112a
	.uleb128 0x15
	.byte	0x34
	.byte	0x8
	.value	0x295
	.long	0x120d
	.uleb128 0x8
	.long	.LASF178
	.byte	0x8
	.value	0x296
	.long	0x5e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.long	.LASF179
	.byte	0x8
	.value	0x297
	.long	0x49
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x8
	.long	.LASF180
	.byte	0x8
	.value	0x298
	.long	0x5e
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x8
	.long	.LASF89
	.byte	0x8
	.value	0x299
	.long	0xe21
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x8
	.long	.LASF181
	.byte	0x8
	.value	0x29a
	.long	0x41f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x8
	.long	.LASF199
	.byte	0x8
	.value	0x29b
	.long	0x317
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0
	.uleb128 0x16
	.long	.LASF200
	.byte	0x8
	.value	0x29c
	.long	0x11a9
	.uleb128 0x15
	.byte	0x28
	.byte	0x8
	.value	0x29e
	.long	0x12b5
	.uleb128 0x8
	.long	.LASF178
	.byte	0x8
	.value	0x29f
	.long	0x5e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.long	.LASF179
	.byte	0x8
	.value	0x2a0
	.long	0x49
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x8
	.long	.LASF180
	.byte	0x8
	.value	0x2a1
	.long	0x5e
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x8
	.long	.LASF89
	.byte	0x8
	.value	0x2a2
	.long	0xe21
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x8
	.long	.LASF181
	.byte	0x8
	.value	0x2a3
	.long	0x41f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x17
	.string	"x"
	.byte	0x8
	.value	0x2a4
	.long	0x5e
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x17
	.string	"y"
	.byte	0x8
	.value	0x2a4
	.long	0x5e
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x8
	.long	.LASF91
	.byte	0x8
	.value	0x2a5
	.long	0x5e
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x8
	.long	.LASF92
	.byte	0x8
	.value	0x2a5
	.long	0x5e
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x8
	.long	.LASF201
	.byte	0x8
	.value	0x2a6
	.long	0x5e
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.byte	0
	.uleb128 0x16
	.long	.LASF202
	.byte	0x8
	.value	0x2a7
	.long	0x1219
	.uleb128 0x15
	.byte	0x30
	.byte	0x8
	.value	0x2a9
	.long	0x137b
	.uleb128 0x8
	.long	.LASF178
	.byte	0x8
	.value	0x2aa
	.long	0x5e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.long	.LASF179
	.byte	0x8
	.value	0x2ab
	.long	0x49
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x8
	.long	.LASF180
	.byte	0x8
	.value	0x2ac
	.long	0x5e
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x8
	.long	.LASF89
	.byte	0x8
	.value	0x2ad
	.long	0xe21
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x8
	.long	.LASF203
	.byte	0x8
	.value	0x2ae
	.long	0x42a
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x17
	.string	"x"
	.byte	0x8
	.value	0x2af
	.long	0x5e
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x17
	.string	"y"
	.byte	0x8
	.value	0x2af
	.long	0x5e
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x8
	.long	.LASF91
	.byte	0x8
	.value	0x2b0
	.long	0x5e
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x8
	.long	.LASF92
	.byte	0x8
	.value	0x2b0
	.long	0x5e
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x8
	.long	.LASF201
	.byte	0x8
	.value	0x2b1
	.long	0x5e
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x8
	.long	.LASF204
	.byte	0x8
	.value	0x2b2
	.long	0x5e
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x8
	.long	.LASF205
	.byte	0x8
	.value	0x2b3
	.long	0x5e
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.byte	0
	.uleb128 0x16
	.long	.LASF206
	.byte	0x8
	.value	0x2b4
	.long	0x12c1
	.uleb128 0x15
	.byte	0x1c
	.byte	0x8
	.value	0x2b6
	.long	0x13fa
	.uleb128 0x8
	.long	.LASF178
	.byte	0x8
	.value	0x2b7
	.long	0x5e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.long	.LASF179
	.byte	0x8
	.value	0x2b8
	.long	0x49
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x8
	.long	.LASF180
	.byte	0x8
	.value	0x2b9
	.long	0x5e
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x8
	.long	.LASF89
	.byte	0x8
	.value	0x2ba
	.long	0xe21
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x8
	.long	.LASF203
	.byte	0x8
	.value	0x2bb
	.long	0x42a
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x8
	.long	.LASF204
	.byte	0x8
	.value	0x2bc
	.long	0x5e
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x8
	.long	.LASF205
	.byte	0x8
	.value	0x2bd
	.long	0x5e
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0
	.uleb128 0x16
	.long	.LASF207
	.byte	0x8
	.value	0x2be
	.long	0x1387
	.uleb128 0x15
	.byte	0x18
	.byte	0x8
	.value	0x2c0
	.long	0x146a
	.uleb128 0x8
	.long	.LASF178
	.byte	0x8
	.value	0x2c1
	.long	0x5e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.long	.LASF179
	.byte	0x8
	.value	0x2c2
	.long	0x49
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x8
	.long	.LASF180
	.byte	0x8
	.value	0x2c3
	.long	0x5e
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x8
	.long	.LASF89
	.byte	0x8
	.value	0x2c4
	.long	0xe21
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x8
	.long	.LASF181
	.byte	0x8
	.value	0x2c5
	.long	0x41f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x8
	.long	.LASF186
	.byte	0x8
	.value	0x2c6
	.long	0x5e
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0
	.uleb128 0x16
	.long	.LASF208
	.byte	0x8
	.value	0x2c7
	.long	0x1406
	.uleb128 0x15
	.byte	0x30
	.byte	0x8
	.value	0x2c9
	.long	0x1530
	.uleb128 0x8
	.long	.LASF178
	.byte	0x8
	.value	0x2ca
	.long	0x5e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.long	.LASF179
	.byte	0x8
	.value	0x2cb
	.long	0x49
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x8
	.long	.LASF180
	.byte	0x8
	.value	0x2cc
	.long	0x5e
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x8
	.long	.LASF89
	.byte	0x8
	.value	0x2cd
	.long	0xe21
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x8
	.long	.LASF209
	.byte	0x8
	.value	0x2ce
	.long	0x41f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x8
	.long	.LASF181
	.byte	0x8
	.value	0x2cf
	.long	0x41f
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x17
	.string	"x"
	.byte	0x8
	.value	0x2d0
	.long	0x5e
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x17
	.string	"y"
	.byte	0x8
	.value	0x2d0
	.long	0x5e
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x8
	.long	.LASF91
	.byte	0x8
	.value	0x2d1
	.long	0x5e
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x8
	.long	.LASF92
	.byte	0x8
	.value	0x2d1
	.long	0x5e
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x8
	.long	.LASF210
	.byte	0x8
	.value	0x2d2
	.long	0x5e
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x8
	.long	.LASF211
	.byte	0x8
	.value	0x2d3
	.long	0x5e
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.byte	0
	.uleb128 0x16
	.long	.LASF212
	.byte	0x8
	.value	0x2d4
	.long	0x1476
	.uleb128 0x15
	.byte	0x18
	.byte	0x8
	.value	0x2d6
	.long	0x15a0
	.uleb128 0x8
	.long	.LASF178
	.byte	0x8
	.value	0x2d7
	.long	0x5e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.long	.LASF179
	.byte	0x8
	.value	0x2d8
	.long	0x49
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x8
	.long	.LASF180
	.byte	0x8
	.value	0x2d9
	.long	0x5e
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x8
	.long	.LASF89
	.byte	0x8
	.value	0x2da
	.long	0xe21
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x8
	.long	.LASF213
	.byte	0x8
	.value	0x2db
	.long	0x41f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x8
	.long	.LASF181
	.byte	0x8
	.value	0x2dc
	.long	0x41f
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0
	.uleb128 0x16
	.long	.LASF214
	.byte	0x8
	.value	0x2dd
	.long	0x153c
	.uleb128 0x15
	.byte	0x1c
	.byte	0x8
	.value	0x2df
	.long	0x161f
	.uleb128 0x8
	.long	.LASF178
	.byte	0x8
	.value	0x2e0
	.long	0x5e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.long	.LASF179
	.byte	0x8
	.value	0x2e1
	.long	0x49
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x8
	.long	.LASF180
	.byte	0x8
	.value	0x2e2
	.long	0x5e
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x8
	.long	.LASF89
	.byte	0x8
	.value	0x2e3
	.long	0xe21
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x8
	.long	.LASF213
	.byte	0x8
	.value	0x2e4
	.long	0x41f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x8
	.long	.LASF181
	.byte	0x8
	.value	0x2e5
	.long	0x41f
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x8
	.long	.LASF215
	.byte	0x8
	.value	0x2e6
	.long	0x5e
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0
	.uleb128 0x16
	.long	.LASF216
	.byte	0x8
	.value	0x2e7
	.long	0x15ac
	.uleb128 0x15
	.byte	0x1c
	.byte	0x8
	.value	0x2e9
	.long	0x169e
	.uleb128 0x8
	.long	.LASF178
	.byte	0x8
	.value	0x2ea
	.long	0x5e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.long	.LASF179
	.byte	0x8
	.value	0x2eb
	.long	0x49
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x8
	.long	.LASF180
	.byte	0x8
	.value	0x2ec
	.long	0x5e
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x8
	.long	.LASF89
	.byte	0x8
	.value	0x2ed
	.long	0xe21
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x8
	.long	.LASF213
	.byte	0x8
	.value	0x2ee
	.long	0x41f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x8
	.long	.LASF181
	.byte	0x8
	.value	0x2ef
	.long	0x41f
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x8
	.long	.LASF211
	.byte	0x8
	.value	0x2f0
	.long	0x5e
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0
	.uleb128 0x16
	.long	.LASF217
	.byte	0x8
	.value	0x2f1
	.long	0x162b
	.uleb128 0x15
	.byte	0x18
	.byte	0x8
	.value	0x2f3
	.long	0x170e
	.uleb128 0x8
	.long	.LASF178
	.byte	0x8
	.value	0x2f4
	.long	0x5e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.long	.LASF179
	.byte	0x8
	.value	0x2f5
	.long	0x49
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x8
	.long	.LASF180
	.byte	0x8
	.value	0x2f6
	.long	0x5e
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x8
	.long	.LASF89
	.byte	0x8
	.value	0x2f7
	.long	0xe21
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x8
	.long	.LASF209
	.byte	0x8
	.value	0x2f8
	.long	0x41f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x8
	.long	.LASF181
	.byte	0x8
	.value	0x2f9
	.long	0x41f
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0
	.uleb128 0x16
	.long	.LASF218
	.byte	0x8
	.value	0x2fa
	.long	0x16aa
	.uleb128 0x15
	.byte	0x28
	.byte	0x8
	.value	0x2fc
	.long	0x17b6
	.uleb128 0x8
	.long	.LASF178
	.byte	0x8
	.value	0x2fd
	.long	0x5e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.long	.LASF179
	.byte	0x8
	.value	0x2fe
	.long	0x49
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x8
	.long	.LASF180
	.byte	0x8
	.value	0x2ff
	.long	0x5e
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x8
	.long	.LASF89
	.byte	0x8
	.value	0x300
	.long	0xe21
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x8
	.long	.LASF213
	.byte	0x8
	.value	0x301
	.long	0x41f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x8
	.long	.LASF181
	.byte	0x8
	.value	0x302
	.long	0x41f
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x8
	.long	.LASF209
	.byte	0x8
	.value	0x303
	.long	0x41f
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x17
	.string	"x"
	.byte	0x8
	.value	0x304
	.long	0x5e
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x17
	.string	"y"
	.byte	0x8
	.value	0x304
	.long	0x5e
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x8
	.long	.LASF211
	.byte	0x8
	.value	0x305
	.long	0x5e
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.byte	0
	.uleb128 0x16
	.long	.LASF219
	.byte	0x8
	.value	0x306
	.long	0x171a
	.uleb128 0x15
	.byte	0x34
	.byte	0x8
	.value	0x308
	.long	0x188b
	.uleb128 0x8
	.long	.LASF178
	.byte	0x8
	.value	0x309
	.long	0x5e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.long	.LASF179
	.byte	0x8
	.value	0x30a
	.long	0x49
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x8
	.long	.LASF180
	.byte	0x8
	.value	0x30b
	.long	0x5e
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x8
	.long	.LASF89
	.byte	0x8
	.value	0x30c
	.long	0xe21
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x8
	.long	.LASF213
	.byte	0x8
	.value	0x30d
	.long	0x41f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x8
	.long	.LASF181
	.byte	0x8
	.value	0x30e
	.long	0x41f
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x17
	.string	"x"
	.byte	0x8
	.value	0x30f
	.long	0x5e
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x17
	.string	"y"
	.byte	0x8
	.value	0x30f
	.long	0x5e
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x8
	.long	.LASF91
	.byte	0x8
	.value	0x310
	.long	0x5e
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x8
	.long	.LASF92
	.byte	0x8
	.value	0x310
	.long	0x5e
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x8
	.long	.LASF210
	.byte	0x8
	.value	0x311
	.long	0x5e
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x8
	.long	.LASF220
	.byte	0x8
	.value	0x312
	.long	0x41f
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x8
	.long	.LASF211
	.byte	0x8
	.value	0x313
	.long	0x5e
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.byte	0
	.uleb128 0x16
	.long	.LASF221
	.byte	0x8
	.value	0x314
	.long	0x17c2
	.uleb128 0x15
	.byte	0x20
	.byte	0x8
	.value	0x316
	.long	0x1915
	.uleb128 0x8
	.long	.LASF178
	.byte	0x8
	.value	0x317
	.long	0x5e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.long	.LASF179
	.byte	0x8
	.value	0x318
	.long	0x49
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x8
	.long	.LASF180
	.byte	0x8
	.value	0x319
	.long	0x5e
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x8
	.long	.LASF89
	.byte	0x8
	.value	0x31a
	.long	0xe21
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x8
	.long	.LASF213
	.byte	0x8
	.value	0x31b
	.long	0x41f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x8
	.long	.LASF181
	.byte	0x8
	.value	0x31c
	.long	0x41f
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x17
	.string	"x"
	.byte	0x8
	.value	0x31d
	.long	0x5e
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x17
	.string	"y"
	.byte	0x8
	.value	0x31d
	.long	0x5e
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.byte	0
	.uleb128 0x16
	.long	.LASF222
	.byte	0x8
	.value	0x31e
	.long	0x1897
	.uleb128 0x15
	.byte	0x1c
	.byte	0x8
	.value	0x320
	.long	0x1994
	.uleb128 0x8
	.long	.LASF178
	.byte	0x8
	.value	0x321
	.long	0x5e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.long	.LASF179
	.byte	0x8
	.value	0x322
	.long	0x49
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x8
	.long	.LASF180
	.byte	0x8
	.value	0x323
	.long	0x5e
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x8
	.long	.LASF89
	.byte	0x8
	.value	0x324
	.long	0xe21
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x8
	.long	.LASF181
	.byte	0x8
	.value	0x325
	.long	0x41f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x8
	.long	.LASF91
	.byte	0x8
	.value	0x326
	.long	0x5e
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x8
	.long	.LASF92
	.byte	0x8
	.value	0x326
	.long	0x5e
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0
	.uleb128 0x16
	.long	.LASF223
	.byte	0x8
	.value	0x327
	.long	0x1921
	.uleb128 0x15
	.byte	0x38
	.byte	0x8
	.value	0x329
	.long	0x1a78
	.uleb128 0x8
	.long	.LASF178
	.byte	0x8
	.value	0x32a
	.long	0x5e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.long	.LASF179
	.byte	0x8
	.value	0x32b
	.long	0x49
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x8
	.long	.LASF180
	.byte	0x8
	.value	0x32c
	.long	0x5e
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x8
	.long	.LASF89
	.byte	0x8
	.value	0x32d
	.long	0xe21
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x8
	.long	.LASF209
	.byte	0x8
	.value	0x32e
	.long	0x41f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x8
	.long	.LASF181
	.byte	0x8
	.value	0x32f
	.long	0x41f
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x17
	.string	"x"
	.byte	0x8
	.value	0x330
	.long	0x5e
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x17
	.string	"y"
	.byte	0x8
	.value	0x330
	.long	0x5e
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x8
	.long	.LASF91
	.byte	0x8
	.value	0x331
	.long	0x5e
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x8
	.long	.LASF92
	.byte	0x8
	.value	0x331
	.long	0x5e
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x8
	.long	.LASF210
	.byte	0x8
	.value	0x332
	.long	0x5e
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x8
	.long	.LASF220
	.byte	0x8
	.value	0x333
	.long	0x41f
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x8
	.long	.LASF195
	.byte	0x8
	.value	0x334
	.long	0x5e
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x8
	.long	.LASF224
	.byte	0x8
	.value	0x335
	.long	0x49
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.byte	0
	.uleb128 0x16
	.long	.LASF225
	.byte	0x8
	.value	0x336
	.long	0x19a0
	.uleb128 0x15
	.byte	0x1c
	.byte	0x8
	.value	0x338
	.long	0x1af7
	.uleb128 0x8
	.long	.LASF178
	.byte	0x8
	.value	0x339
	.long	0x5e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.long	.LASF179
	.byte	0x8
	.value	0x33a
	.long	0x49
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x8
	.long	.LASF180
	.byte	0x8
	.value	0x33b
	.long	0x5e
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x8
	.long	.LASF89
	.byte	0x8
	.value	0x33c
	.long	0xe21
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x8
	.long	.LASF213
	.byte	0x8
	.value	0x33d
	.long	0x41f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x8
	.long	.LASF181
	.byte	0x8
	.value	0x33e
	.long	0x41f
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x8
	.long	.LASF226
	.byte	0x8
	.value	0x33f
	.long	0x5e
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0
	.uleb128 0x16
	.long	.LASF227
	.byte	0x8
	.value	0x340
	.long	0x1a84
	.uleb128 0x15
	.byte	0x1c
	.byte	0x8
	.value	0x342
	.long	0x1b76
	.uleb128 0x8
	.long	.LASF178
	.byte	0x8
	.value	0x343
	.long	0x5e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.long	.LASF179
	.byte	0x8
	.value	0x344
	.long	0x49
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x8
	.long	.LASF180
	.byte	0x8
	.value	0x345
	.long	0x5e
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x8
	.long	.LASF89
	.byte	0x8
	.value	0x346
	.long	0xe21
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x8
	.long	.LASF209
	.byte	0x8
	.value	0x347
	.long	0x41f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x8
	.long	.LASF181
	.byte	0x8
	.value	0x348
	.long	0x41f
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x8
	.long	.LASF226
	.byte	0x8
	.value	0x349
	.long	0x5e
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0
	.uleb128 0x16
	.long	.LASF228
	.byte	0x8
	.value	0x34a
	.long	0x1b03
	.uleb128 0x15
	.byte	0x20
	.byte	0x8
	.value	0x34c
	.long	0x1c04
	.uleb128 0x8
	.long	.LASF178
	.byte	0x8
	.value	0x34d
	.long	0x5e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.long	.LASF179
	.byte	0x8
	.value	0x34e
	.long	0x49
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x8
	.long	.LASF180
	.byte	0x8
	.value	0x34f
	.long	0x5e
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x8
	.long	.LASF89
	.byte	0x8
	.value	0x350
	.long	0xe21
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x8
	.long	.LASF181
	.byte	0x8
	.value	0x351
	.long	0x41f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x8
	.long	.LASF229
	.byte	0x8
	.value	0x352
	.long	0x3fe
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x8
	.long	.LASF183
	.byte	0x8
	.value	0x353
	.long	0x414
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x8
	.long	.LASF186
	.byte	0x8
	.value	0x354
	.long	0x5e
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.byte	0
	.uleb128 0x16
	.long	.LASF230
	.byte	0x8
	.value	0x355
	.long	0x1b82
	.uleb128 0x15
	.byte	0x1c
	.byte	0x8
	.value	0x357
	.long	0x1c83
	.uleb128 0x8
	.long	.LASF178
	.byte	0x8
	.value	0x358
	.long	0x5e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.long	.LASF179
	.byte	0x8
	.value	0x359
	.long	0x49
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x8
	.long	.LASF180
	.byte	0x8
	.value	0x35a
	.long	0x5e
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x8
	.long	.LASF89
	.byte	0x8
	.value	0x35b
	.long	0xe21
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x8
	.long	.LASF181
	.byte	0x8
	.value	0x35c
	.long	0x41f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x8
	.long	.LASF231
	.byte	0x8
	.value	0x35d
	.long	0x3fe
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x8
	.long	.LASF183
	.byte	0x8
	.value	0x35e
	.long	0x414
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0
	.uleb128 0x16
	.long	.LASF232
	.byte	0x8
	.value	0x35f
	.long	0x1c10
	.uleb128 0x15
	.byte	0x28
	.byte	0x8
	.value	0x361
	.long	0x1d2f
	.uleb128 0x8
	.long	.LASF178
	.byte	0x8
	.value	0x362
	.long	0x5e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.long	.LASF179
	.byte	0x8
	.value	0x363
	.long	0x49
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x8
	.long	.LASF180
	.byte	0x8
	.value	0x364
	.long	0x5e
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x8
	.long	.LASF89
	.byte	0x8
	.value	0x365
	.long	0xe21
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x8
	.long	.LASF233
	.byte	0x8
	.value	0x366
	.long	0x41f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x8
	.long	.LASF234
	.byte	0x8
	.value	0x367
	.long	0x41f
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x8
	.long	.LASF231
	.byte	0x8
	.value	0x368
	.long	0x3fe
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x8
	.long	.LASF235
	.byte	0x8
	.value	0x369
	.long	0x3fe
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x8
	.long	.LASF236
	.byte	0x8
	.value	0x36a
	.long	0x3fe
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x8
	.long	.LASF183
	.byte	0x8
	.value	0x36b
	.long	0x414
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.byte	0
	.uleb128 0x16
	.long	.LASF237
	.byte	0x8
	.value	0x36c
	.long	0x1c8f
	.uleb128 0x15
	.byte	0x24
	.byte	0x8
	.value	0x36e
	.long	0x1dcc
	.uleb128 0x8
	.long	.LASF178
	.byte	0x8
	.value	0x36f
	.long	0x5e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.long	.LASF179
	.byte	0x8
	.value	0x370
	.long	0x49
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x8
	.long	.LASF180
	.byte	0x8
	.value	0x371
	.long	0x5e
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x8
	.long	.LASF89
	.byte	0x8
	.value	0x372
	.long	0xe21
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x8
	.long	.LASF234
	.byte	0x8
	.value	0x373
	.long	0x41f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x8
	.long	.LASF231
	.byte	0x8
	.value	0x374
	.long	0x3fe
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x8
	.long	.LASF235
	.byte	0x8
	.value	0x375
	.long	0x3fe
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x8
	.long	.LASF236
	.byte	0x8
	.value	0x376
	.long	0x3fe
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x8
	.long	.LASF183
	.byte	0x8
	.value	0x377
	.long	0x414
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.byte	0
	.uleb128 0x16
	.long	.LASF238
	.byte	0x8
	.value	0x378
	.long	0x1d3b
	.uleb128 0x15
	.byte	0x20
	.byte	0x8
	.value	0x37a
	.long	0x1e5a
	.uleb128 0x8
	.long	.LASF178
	.byte	0x8
	.value	0x37b
	.long	0x5e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.long	.LASF179
	.byte	0x8
	.value	0x37c
	.long	0x49
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x8
	.long	.LASF180
	.byte	0x8
	.value	0x37d
	.long	0x5e
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x8
	.long	.LASF89
	.byte	0x8
	.value	0x37e
	.long	0xe21
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x8
	.long	.LASF181
	.byte	0x8
	.value	0x37f
	.long	0x41f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x8
	.long	.LASF239
	.byte	0x8
	.value	0x380
	.long	0x435
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x17
	.string	"new"
	.byte	0x8
	.value	0x384
	.long	0x5e
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x8
	.long	.LASF186
	.byte	0x8
	.value	0x386
	.long	0x5e
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.byte	0
	.uleb128 0x16
	.long	.LASF240
	.byte	0x8
	.value	0x387
	.long	0x1dd8
	.uleb128 0x18
	.byte	0x14
	.byte	0x8
	.value	0x391
	.long	0x1e8e
	.uleb128 0x19
	.string	"b"
	.byte	0x8
	.value	0x392
	.long	0x337
	.uleb128 0x19
	.string	"s"
	.byte	0x8
	.value	0x393
	.long	0x1e8e
	.uleb128 0x19
	.string	"l"
	.byte	0x8
	.value	0x394
	.long	0x1e9e
	.byte	0
	.uleb128 0x9
	.long	0x57
	.long	0x1e9e
	.uleb128 0xa
	.long	0x34
	.byte	0x9
	.byte	0
	.uleb128 0x9
	.long	0x89
	.long	0x1eae
	.uleb128 0xa
	.long	0x34
	.byte	0x4
	.byte	0
	.uleb128 0x15
	.byte	0x30
	.byte	0x8
	.value	0x389
	.long	0x1f30
	.uleb128 0x8
	.long	.LASF178
	.byte	0x8
	.value	0x38a
	.long	0x5e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.long	.LASF179
	.byte	0x8
	.value	0x38b
	.long	0x49
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x8
	.long	.LASF180
	.byte	0x8
	.value	0x38c
	.long	0x5e
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x8
	.long	.LASF89
	.byte	0x8
	.value	0x38d
	.long	0xe21
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x8
	.long	.LASF181
	.byte	0x8
	.value	0x38e
	.long	0x41f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x8
	.long	.LASF241
	.byte	0x8
	.value	0x38f
	.long	0x3fe
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x8
	.long	.LASF123
	.byte	0x8
	.value	0x390
	.long	0x5e
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x8
	.long	.LASF124
	.byte	0x8
	.value	0x395
	.long	0x1e66
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.byte	0
	.uleb128 0x16
	.long	.LASF242
	.byte	0x8
	.value	0x396
	.long	0x1eae
	.uleb128 0x15
	.byte	0x20
	.byte	0x8
	.value	0x398
	.long	0x1fbe
	.uleb128 0x8
	.long	.LASF178
	.byte	0x8
	.value	0x399
	.long	0x5e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.long	.LASF179
	.byte	0x8
	.value	0x39a
	.long	0x49
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x8
	.long	.LASF180
	.byte	0x8
	.value	0x39b
	.long	0x5e
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x8
	.long	.LASF89
	.byte	0x8
	.value	0x39c
	.long	0xe21
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x8
	.long	.LASF181
	.byte	0x8
	.value	0x39d
	.long	0x41f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x8
	.long	.LASF156
	.byte	0x8
	.value	0x39e
	.long	0x5e
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x8
	.long	.LASF243
	.byte	0x8
	.value	0x3a0
	.long	0x5e
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x8
	.long	.LASF201
	.byte	0x8
	.value	0x3a1
	.long	0x5e
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.byte	0
	.uleb128 0x16
	.long	.LASF244
	.byte	0x8
	.value	0x3a2
	.long	0x1f3c
	.uleb128 0x15
	.byte	0x14
	.byte	0x8
	.value	0x3a4
	.long	0x203d
	.uleb128 0x8
	.long	.LASF178
	.byte	0x8
	.value	0x3a5
	.long	0x5e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.long	.LASF89
	.byte	0x8
	.value	0x3a6
	.long	0xe21
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x8
	.long	.LASF245
	.byte	0x8
	.value	0x3a7
	.long	0x3f3
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x8
	.long	.LASF179
	.byte	0x8
	.value	0x3a8
	.long	0x49
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x8
	.long	.LASF246
	.byte	0x8
	.value	0x3a9
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x8
	.long	.LASF247
	.byte	0x8
	.value	0x3aa
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x11
	.uleb128 0x8
	.long	.LASF205
	.byte	0x8
	.value	0x3ab
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x12
	.byte	0
	.uleb128 0x16
	.long	.LASF248
	.byte	0x8
	.value	0x3ac
	.long	0x1fca
	.uleb128 0x15
	.byte	0x14
	.byte	0x8
	.value	0x3ae
	.long	0x209e
	.uleb128 0x8
	.long	.LASF178
	.byte	0x8
	.value	0x3af
	.long	0x5e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.long	.LASF179
	.byte	0x8
	.value	0x3b0
	.long	0x49
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x8
	.long	.LASF180
	.byte	0x8
	.value	0x3b1
	.long	0x5e
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x8
	.long	.LASF89
	.byte	0x8
	.value	0x3b2
	.long	0xe21
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x8
	.long	.LASF181
	.byte	0x8
	.value	0x3b3
	.long	0x41f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0
	.uleb128 0x16
	.long	.LASF249
	.byte	0x8
	.value	0x3b4
	.long	0x2049
	.uleb128 0x15
	.byte	0x18
	.byte	0x8
	.value	0x3bc
	.long	0x210e
	.uleb128 0x8
	.long	.LASF178
	.byte	0x8
	.value	0x3be
	.long	0x5e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.long	.LASF179
	.byte	0x8
	.value	0x3bf
	.long	0x49
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x8
	.long	.LASF180
	.byte	0x8
	.value	0x3c0
	.long	0x5e
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x8
	.long	.LASF89
	.byte	0x8
	.value	0x3c1
	.long	0xe21
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x8
	.long	.LASF250
	.byte	0x8
	.value	0x3c2
	.long	0x5e
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x8
	.long	.LASF251
	.byte	0x8
	.value	0x3c3
	.long	0x5e
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0
	.uleb128 0x16
	.long	.LASF252
	.byte	0x8
	.value	0x3c4
	.long	0x20aa
	.uleb128 0x15
	.byte	0x20
	.byte	0x8
	.value	0x3c6
	.long	0x219c
	.uleb128 0x8
	.long	.LASF178
	.byte	0x8
	.value	0x3c7
	.long	0x5e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.long	.LASF179
	.byte	0x8
	.value	0x3c8
	.long	0x49
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x8
	.long	.LASF180
	.byte	0x8
	.value	0x3c9
	.long	0x5e
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x8
	.long	.LASF89
	.byte	0x8
	.value	0x3ca
	.long	0xe21
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x8
	.long	.LASF250
	.byte	0x8
	.value	0x3cb
	.long	0x5e
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x8
	.long	.LASF251
	.byte	0x8
	.value	0x3cc
	.long	0x5e
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x8
	.long	.LASF253
	.byte	0x8
	.value	0x3cd
	.long	0x34
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x8
	.long	.LASF124
	.byte	0x8
	.value	0x3ce
	.long	0xa6
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.byte	0
	.uleb128 0x16
	.long	.LASF254
	.byte	0x8
	.value	0x3cf
	.long	0x211a
	.uleb128 0x1a
	.long	.LASF479
	.byte	0x60
	.byte	0x8
	.value	0x3d5
	.long	0x235a
	.uleb128 0x1b
	.long	.LASF178
	.byte	0x8
	.value	0x3d6
	.long	0x5e
	.uleb128 0x1b
	.long	.LASF255
	.byte	0x8
	.value	0x3d7
	.long	0x209e
	.uleb128 0x1b
	.long	.LASF256
	.byte	0x8
	.value	0x3d8
	.long	0xe27
	.uleb128 0x1b
	.long	.LASF257
	.byte	0x8
	.value	0x3d9
	.long	0xf1a
	.uleb128 0x1b
	.long	.LASF258
	.byte	0x8
	.value	0x3da
	.long	0x100d
	.uleb128 0x1b
	.long	.LASF259
	.byte	0x8
	.value	0x3db
	.long	0x111e
	.uleb128 0x1b
	.long	.LASF260
	.byte	0x8
	.value	0x3dc
	.long	0x119d
	.uleb128 0x1b
	.long	.LASF261
	.byte	0x8
	.value	0x3dd
	.long	0x12b5
	.uleb128 0x1b
	.long	.LASF262
	.byte	0x8
	.value	0x3de
	.long	0x137b
	.uleb128 0x1b
	.long	.LASF263
	.byte	0x8
	.value	0x3df
	.long	0x13fa
	.uleb128 0x1b
	.long	.LASF264
	.byte	0x8
	.value	0x3e0
	.long	0x146a
	.uleb128 0x1b
	.long	.LASF265
	.byte	0x8
	.value	0x3e1
	.long	0x1530
	.uleb128 0x1b
	.long	.LASF266
	.byte	0x8
	.value	0x3e2
	.long	0x15a0
	.uleb128 0x1b
	.long	.LASF267
	.byte	0x8
	.value	0x3e3
	.long	0x161f
	.uleb128 0x1b
	.long	.LASF268
	.byte	0x8
	.value	0x3e4
	.long	0x169e
	.uleb128 0x1b
	.long	.LASF269
	.byte	0x8
	.value	0x3e5
	.long	0x170e
	.uleb128 0x1b
	.long	.LASF270
	.byte	0x8
	.value	0x3e6
	.long	0x17b6
	.uleb128 0x1b
	.long	.LASF271
	.byte	0x8
	.value	0x3e7
	.long	0x188b
	.uleb128 0x1b
	.long	.LASF272
	.byte	0x8
	.value	0x3e8
	.long	0x1915
	.uleb128 0x1b
	.long	.LASF273
	.byte	0x8
	.value	0x3e9
	.long	0x1994
	.uleb128 0x1b
	.long	.LASF274
	.byte	0x8
	.value	0x3ea
	.long	0x1a78
	.uleb128 0x1b
	.long	.LASF275
	.byte	0x8
	.value	0x3eb
	.long	0x1af7
	.uleb128 0x1b
	.long	.LASF276
	.byte	0x8
	.value	0x3ec
	.long	0x1b76
	.uleb128 0x1b
	.long	.LASF277
	.byte	0x8
	.value	0x3ed
	.long	0x1c04
	.uleb128 0x1b
	.long	.LASF278
	.byte	0x8
	.value	0x3ee
	.long	0x1c83
	.uleb128 0x1b
	.long	.LASF279
	.byte	0x8
	.value	0x3ef
	.long	0x1d2f
	.uleb128 0x1b
	.long	.LASF280
	.byte	0x8
	.value	0x3f0
	.long	0x1dcc
	.uleb128 0x1b
	.long	.LASF281
	.byte	0x8
	.value	0x3f1
	.long	0x1e5a
	.uleb128 0x1b
	.long	.LASF282
	.byte	0x8
	.value	0x3f2
	.long	0x1f30
	.uleb128 0x1b
	.long	.LASF283
	.byte	0x8
	.value	0x3f3
	.long	0x1fbe
	.uleb128 0x1b
	.long	.LASF284
	.byte	0x8
	.value	0x3f4
	.long	0x203d
	.uleb128 0x1b
	.long	.LASF285
	.byte	0x8
	.value	0x3f5
	.long	0x120d
	.uleb128 0x1b
	.long	.LASF286
	.byte	0x8
	.value	0x3f6
	.long	0x210e
	.uleb128 0x1b
	.long	.LASF287
	.byte	0x8
	.value	0x3f7
	.long	0x219c
	.uleb128 0x19
	.string	"pad"
	.byte	0x8
	.value	0x3f8
	.long	0x235a
	.byte	0
	.uleb128 0x9
	.long	0x89
	.long	0x236a
	.uleb128 0xa
	.long	0x34
	.byte	0x17
	.byte	0
	.uleb128 0x16
	.long	.LASF288
	.byte	0x8
	.value	0x3f9
	.long	0x21a8
	.uleb128 0x6
	.byte	0x4
	.long	0xa8
	.uleb128 0x6
	.byte	0x4
	.long	0x3b
	.uleb128 0x14
	.byte	0x8
	.byte	0x9
	.byte	0xa0
	.long	0x23a7
	.uleb128 0xd
	.long	.LASF289
	.byte	0x9
	.byte	0xa1
	.long	0x34
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.long	.LASF290
	.byte	0x9
	.byte	0xa2
	.long	0x44b
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x2
	.long	.LASF291
	.byte	0x9
	.byte	0xa3
	.long	0x2382
	.uleb128 0x2
	.long	.LASF292
	.byte	0x9
	.byte	0xaf
	.long	0xd0c
	.uleb128 0x1c
	.byte	0x4
	.byte	0x9
	.value	0x146
	.long	0x23f7
	.uleb128 0x1d
	.long	.LASF293
	.sleb128 0
	.uleb128 0x1d
	.long	.LASF294
	.sleb128 1
	.uleb128 0x1d
	.long	.LASF295
	.sleb128 2
	.uleb128 0x1d
	.long	.LASF296
	.sleb128 3
	.uleb128 0x1d
	.long	.LASF297
	.sleb128 4
	.uleb128 0x1d
	.long	.LASF298
	.sleb128 5
	.uleb128 0x1d
	.long	.LASF299
	.sleb128 6
	.uleb128 0x1d
	.long	.LASF300
	.sleb128 7
	.byte	0
	.uleb128 0x16
	.long	.LASF301
	.byte	0x9
	.value	0x150
	.long	0x23bd
	.uleb128 0x15
	.byte	0x10
	.byte	0x9
	.value	0x152
	.long	0x2449
	.uleb128 0x8
	.long	.LASF302
	.byte	0x9
	.value	0x153
	.long	0xa8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.long	.LASF303
	.byte	0x9
	.value	0x154
	.long	0xa8
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x8
	.long	.LASF304
	.byte	0x9
	.value	0x155
	.long	0x23f7
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x8
	.long	.LASF305
	.byte	0x9
	.value	0x156
	.long	0x44b
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0x16
	.long	.LASF306
	.byte	0x9
	.value	0x157
	.long	0x2403
	.uleb128 0x14
	.byte	0xc
	.byte	0xa
	.byte	0x35
	.long	0x2483
	.uleb128 0x1e
	.string	"x"
	.byte	0xa
	.byte	0x36
	.long	0x5e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x1e
	.string	"y"
	.byte	0xa
	.byte	0x37
	.long	0x5e
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1e
	.string	"dy"
	.byte	0xa
	.byte	0x38
	.long	0x5e
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0x2
	.long	.LASF307
	.byte	0xa
	.byte	0x39
	.long	0x2455
	.uleb128 0x14
	.byte	0x8
	.byte	0xa
	.byte	0x3b
	.long	0x24af
	.uleb128 0x1e
	.string	"i"
	.byte	0xa
	.byte	0x3c
	.long	0x5e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x1e
	.string	"f"
	.byte	0xa
	.byte	0x3d
	.long	0x5e
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x2
	.long	.LASF308
	.byte	0xa
	.byte	0x3e
	.long	0x248e
	.uleb128 0x1f
	.value	0x7ce0
	.byte	0xa
	.byte	0x40
	.long	0x276d
	.uleb128 0xd
	.long	.LASF89
	.byte	0xa
	.byte	0x42
	.long	0xe21
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x1e
	.string	"xim"
	.byte	0xa
	.byte	0x43
	.long	0x276d
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.long	.LASF309
	.byte	0xa
	.byte	0x46
	.long	0x2773
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.long	.LASF310
	.byte	0xa
	.byte	0x49
	.long	0x2773
	.byte	0x3
	.byte	0x23
	.uleb128 0x2775
	.uleb128 0xd
	.long	.LASF311
	.byte	0xa
	.byte	0x4b
	.long	0x2784
	.byte	0x4
	.byte	0x23
	.uleb128 0x4ee2
	.uleb128 0xd
	.long	.LASF312
	.byte	0xa
	.byte	0x4d
	.long	0x2795
	.byte	0x4
	.byte	0x23
	.uleb128 0x63f5
	.uleb128 0xd
	.long	.LASF313
	.byte	0xa
	.byte	0x4f
	.long	0x5e
	.byte	0x4
	.byte	0x23
	.uleb128 0x7a64
	.uleb128 0xd
	.long	.LASF314
	.byte	0xa
	.byte	0x50
	.long	0x5e
	.byte	0x4
	.byte	0x23
	.uleb128 0x7a68
	.uleb128 0xd
	.long	.LASF315
	.byte	0xa
	.byte	0x53
	.long	0x5e
	.byte	0x4
	.byte	0x23
	.uleb128 0x7a6c
	.uleb128 0xd
	.long	.LASF316
	.byte	0xa
	.byte	0x54
	.long	0x237c
	.byte	0x4
	.byte	0x23
	.uleb128 0x7a70
	.uleb128 0xd
	.long	.LASF317
	.byte	0xa
	.byte	0x56
	.long	0x3ed
	.byte	0x4
	.byte	0x23
	.uleb128 0x7a74
	.uleb128 0xd
	.long	.LASF318
	.byte	0xa
	.byte	0x57
	.long	0x3ed
	.byte	0x4
	.byte	0x23
	.uleb128 0x7a78
	.uleb128 0xd
	.long	.LASF319
	.byte	0xa
	.byte	0x58
	.long	0x27a6
	.byte	0x4
	.byte	0x23
	.uleb128 0x7a7c
	.uleb128 0xd
	.long	.LASF320
	.byte	0xa
	.byte	0x59
	.long	0x5e
	.byte	0x4
	.byte	0x23
	.uleb128 0x7a80
	.uleb128 0xd
	.long	.LASF321
	.byte	0xa
	.byte	0x5c
	.long	0x5e
	.byte	0x4
	.byte	0x23
	.uleb128 0x7a84
	.uleb128 0xd
	.long	.LASF322
	.byte	0xa
	.byte	0x5c
	.long	0x5e
	.byte	0x4
	.byte	0x23
	.uleb128 0x7a88
	.uleb128 0xd
	.long	.LASF323
	.byte	0xa
	.byte	0x5c
	.long	0x5e
	.byte	0x4
	.byte	0x23
	.uleb128 0x7a8c
	.uleb128 0xd
	.long	.LASF324
	.byte	0xa
	.byte	0x5c
	.long	0x5e
	.byte	0x4
	.byte	0x23
	.uleb128 0x7a90
	.uleb128 0xd
	.long	.LASF325
	.byte	0xa
	.byte	0x5f
	.long	0x5e
	.byte	0x4
	.byte	0x23
	.uleb128 0x7a94
	.uleb128 0xd
	.long	.LASF326
	.byte	0xa
	.byte	0x60
	.long	0x27ac
	.byte	0x4
	.byte	0x23
	.uleb128 0x7a98
	.uleb128 0xd
	.long	.LASF327
	.byte	0xa
	.byte	0x60
	.long	0x27ac
	.byte	0x4
	.byte	0x23
	.uleb128 0x7a9c
	.uleb128 0xd
	.long	.LASF328
	.byte	0xa
	.byte	0x63
	.long	0x5e
	.byte	0x4
	.byte	0x23
	.uleb128 0x7aa0
	.uleb128 0xd
	.long	.LASF329
	.byte	0xa
	.byte	0x64
	.long	0x27b2
	.byte	0x4
	.byte	0x23
	.uleb128 0x7aa4
	.uleb128 0xd
	.long	.LASF330
	.byte	0xa
	.byte	0x65
	.long	0x27b2
	.byte	0x4
	.byte	0x23
	.uleb128 0x7aac
	.uleb128 0xd
	.long	.LASF331
	.byte	0xa
	.byte	0x66
	.long	0x27b2
	.byte	0x4
	.byte	0x23
	.uleb128 0x7ab4
	.uleb128 0xd
	.long	.LASF332
	.byte	0xa
	.byte	0x67
	.long	0x27b2
	.byte	0x4
	.byte	0x23
	.uleb128 0x7abc
	.uleb128 0xd
	.long	.LASF333
	.byte	0xa
	.byte	0x69
	.long	0x27b2
	.byte	0x4
	.byte	0x23
	.uleb128 0x7ac4
	.uleb128 0xd
	.long	.LASF334
	.byte	0xa
	.byte	0x6c
	.long	0x5e
	.byte	0x4
	.byte	0x23
	.uleb128 0x7acc
	.uleb128 0xd
	.long	.LASF335
	.byte	0xa
	.byte	0x6d
	.long	0x5e
	.byte	0x4
	.byte	0x23
	.uleb128 0x7ad0
	.uleb128 0xd
	.long	.LASF336
	.byte	0xa
	.byte	0x6e
	.long	0x5e
	.byte	0x4
	.byte	0x23
	.uleb128 0x7ad4
	.uleb128 0xd
	.long	.LASF337
	.byte	0xa
	.byte	0x6f
	.long	0x5e
	.byte	0x4
	.byte	0x23
	.uleb128 0x7ad8
	.uleb128 0xd
	.long	.LASF338
	.byte	0xa
	.byte	0x70
	.long	0x5e
	.byte	0x4
	.byte	0x23
	.uleb128 0x7adc
	.uleb128 0xd
	.long	.LASF339
	.byte	0xa
	.byte	0x73
	.long	0x30c
	.byte	0x4
	.byte	0x23
	.uleb128 0x7ae0
	.uleb128 0xd
	.long	.LASF340
	.byte	0xa
	.byte	0x74
	.long	0x30c
	.byte	0x4
	.byte	0x23
	.uleb128 0x7ae8
	.uleb128 0xd
	.long	.LASF341
	.byte	0xa
	.byte	0x75
	.long	0x30c
	.byte	0x4
	.byte	0x23
	.uleb128 0x7af0
	.uleb128 0xd
	.long	.LASF342
	.byte	0xa
	.byte	0x76
	.long	0x30c
	.byte	0x4
	.byte	0x23
	.uleb128 0x7af8
	.uleb128 0xd
	.long	.LASF343
	.byte	0xa
	.byte	0x77
	.long	0x34
	.byte	0x4
	.byte	0x23
	.uleb128 0x7b00
	.uleb128 0xd
	.long	.LASF344
	.byte	0xa
	.byte	0x78
	.long	0x34
	.byte	0x4
	.byte	0x23
	.uleb128 0x7b04
	.uleb128 0xd
	.long	.LASF345
	.byte	0xa
	.byte	0x7a
	.long	0x27b9
	.byte	0x4
	.byte	0x23
	.uleb128 0x7b08
	.uleb128 0xd
	.long	.LASF346
	.byte	0xa
	.byte	0x7b
	.long	0x34
	.byte	0x4
	.byte	0x23
	.uleb128 0x7be4
	.uleb128 0xd
	.long	.LASF347
	.byte	0xa
	.byte	0x7e
	.long	0x27c9
	.byte	0x4
	.byte	0x23
	.uleb128 0x7be8
	.uleb128 0xd
	.long	.LASF348
	.byte	0xa
	.byte	0x80
	.long	0x27b9
	.byte	0x4
	.byte	0x23
	.uleb128 0x7c00
	.uleb128 0xd
	.long	.LASF349
	.byte	0xa
	.byte	0x81
	.long	0x34
	.byte	0x4
	.byte	0x23
	.uleb128 0x7cdc
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x9ae
	.uleb128 0x9
	.long	0x3b
	.long	0x2784
	.uleb128 0x20
	.long	0x34
	.value	0x276c
	.byte	0
	.uleb128 0x9
	.long	0x3b
	.long	0x2795
	.uleb128 0x20
	.long	0x34
	.value	0x1512
	.byte	0
	.uleb128 0x9
	.long	0x3b
	.long	0x27a6
	.uleb128 0x20
	.long	0x34
	.value	0x166e
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x2483
	.uleb128 0x6
	.byte	0x4
	.long	0x30c
	.uleb128 0x3
	.byte	0x8
	.byte	0x4
	.long	.LASF350
	.uleb128 0x9
	.long	0x34
	.long	0x27c9
	.uleb128 0xa
	.long	0x34
	.byte	0x36
	.byte	0
	.uleb128 0x9
	.long	0x24af
	.long	0x27d9
	.uleb128 0xa
	.long	0x34
	.byte	0x2
	.byte	0
	.uleb128 0x2
	.long	.LASF351
	.byte	0xa
	.byte	0x82
	.long	0x24ba
	.uleb128 0x1f
	.value	0x277c
	.byte	0xb
	.byte	0x3
	.long	0x2826
	.uleb128 0xd
	.long	.LASF91
	.byte	0xb
	.byte	0x4
	.long	0x34
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.long	.LASF92
	.byte	0xb
	.byte	0x5
	.long	0x34
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.long	.LASF352
	.byte	0xb
	.byte	0x6
	.long	0x34
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.long	.LASF353
	.byte	0xb
	.byte	0x7
	.long	0x2773
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0x1f
	.value	0x277c
	.byte	0xc
	.byte	0x3
	.long	0x2868
	.uleb128 0xd
	.long	.LASF91
	.byte	0xc
	.byte	0x4
	.long	0x34
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.long	.LASF92
	.byte	0xc
	.byte	0x5
	.long	0x34
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.long	.LASF352
	.byte	0xc
	.byte	0x6
	.long	0x34
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.long	.LASF353
	.byte	0xc
	.byte	0x7
	.long	0x2773
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0x21
	.byte	0x4
	.byte	0x1
	.byte	0xa3
	.long	0x288f
	.uleb128 0x1d
	.long	.LASF354
	.sleb128 0
	.uleb128 0x1d
	.long	.LASF355
	.sleb128 1
	.uleb128 0x1d
	.long	.LASF356
	.sleb128 2
	.uleb128 0x1d
	.long	.LASF357
	.sleb128 3
	.uleb128 0x1d
	.long	.LASF358
	.sleb128 4
	.byte	0
	.uleb128 0xc
	.long	.LASF359
	.byte	0x10
	.byte	0x1
	.byte	0xa1
	.long	0x28d4
	.uleb128 0xd
	.long	.LASF302
	.byte	0x1
	.byte	0xa2
	.long	0x2f6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.long	.LASF360
	.byte	0x1
	.byte	0xa3
	.long	0x28d4
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.long	.LASF361
	.byte	0x1
	.byte	0xa4
	.long	0xa6
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.long	.LASF362
	.byte	0x1
	.byte	0xa5
	.long	0x2f6
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0xe
	.long	0x2868
	.uleb128 0x22
	.long	.LASF365
	.byte	0x1
	.value	0x353
	.byte	0x1
	.byte	0x1
	.long	0x2951
	.uleb128 0x23
	.string	"num"
	.byte	0x1
	.value	0x353
	.long	0x5e
	.uleb128 0x24
	.long	.LASF363
	.byte	0x1
	.value	0x353
	.long	0x237c
	.uleb128 0x23
	.string	"red"
	.byte	0x1
	.value	0x353
	.long	0x3b
	.uleb128 0x23
	.string	"grn"
	.byte	0x1
	.value	0x353
	.long	0x3b
	.uleb128 0x23
	.string	"blu"
	.byte	0x1
	.value	0x353
	.long	0x3b
	.uleb128 0x25
	.string	"xx"
	.byte	0x1
	.value	0x355
	.long	0x5e
	.uleb128 0x25
	.string	"yy"
	.byte	0x1
	.value	0x355
	.long	0x5e
	.uleb128 0x26
	.long	.LASF364
	.byte	0x1
	.value	0x356
	.long	0xa8
	.uleb128 0x25
	.string	"to"
	.byte	0x1
	.value	0x357
	.long	0x237c
	.byte	0
	.uleb128 0x22
	.long	.LASF366
	.byte	0x1
	.value	0x37e
	.byte	0x1
	.byte	0x1
	.long	0x2996
	.uleb128 0x23
	.string	"x"
	.byte	0x1
	.value	0x37e
	.long	0x34
	.uleb128 0x23
	.string	"y"
	.byte	0x1
	.value	0x37e
	.long	0x34
	.uleb128 0x23
	.string	"buf"
	.byte	0x1
	.value	0x37e
	.long	0x237c
	.uleb128 0x23
	.string	"c"
	.byte	0x1
	.value	0x37e
	.long	0xa8
	.uleb128 0x25
	.string	"ptr"
	.byte	0x1
	.value	0x380
	.long	0x237c
	.byte	0
	.uleb128 0x22
	.long	.LASF367
	.byte	0x1
	.value	0x122
	.byte	0x1
	.byte	0x1
	.long	0x29af
	.uleb128 0x25
	.string	"i"
	.byte	0x1
	.value	0x124
	.long	0x5e
	.byte	0
	.uleb128 0x27
	.long	.LASF368
	.byte	0x1
	.value	0x204
	.byte	0x1
	.byte	0x1
	.uleb128 0x27
	.long	.LASF369
	.byte	0x1
	.value	0x596
	.byte	0x1
	.byte	0x1
	.uleb128 0x22
	.long	.LASF370
	.byte	0x1
	.value	0x389
	.byte	0x1
	.byte	0x1
	.long	0x2a2c
	.uleb128 0x23
	.string	"num"
	.byte	0x1
	.value	0x389
	.long	0x5e
	.uleb128 0x24
	.long	.LASF289
	.byte	0x1
	.value	0x389
	.long	0x5e
	.uleb128 0x24
	.long	.LASF348
	.byte	0x1
	.value	0x389
	.long	0x2a2c
	.uleb128 0x23
	.string	"buf"
	.byte	0x1
	.value	0x389
	.long	0x237c
	.uleb128 0x26
	.long	.LASF371
	.byte	0x1
	.value	0x38b
	.long	0x5e
	.uleb128 0x25
	.string	"j"
	.byte	0x1
	.value	0x38c
	.long	0x5e
	.uleb128 0x25
	.string	"k"
	.byte	0x1
	.value	0x38c
	.long	0x5e
	.uleb128 0x25
	.string	"d"
	.byte	0x1
	.value	0x38d
	.long	0x5e
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x34
	.uleb128 0x22
	.long	.LASF372
	.byte	0x1
	.value	0x44a
	.byte	0x1
	.byte	0x1
	.long	0x2a95
	.uleb128 0x24
	.long	.LASF373
	.byte	0x1
	.value	0x44a
	.long	0x237c
	.uleb128 0x26
	.long	.LASF374
	.byte	0x1
	.value	0x44b
	.long	0x2aab
	.uleb128 0x26
	.long	.LASF375
	.byte	0x1
	.value	0x44d
	.long	0x2ac6
	.uleb128 0x26
	.long	.LASF376
	.byte	0x1
	.value	0x44e
	.long	0x301
	.uleb128 0x26
	.long	.LASF377
	.byte	0x1
	.value	0x44f
	.long	0x2acb
	.uleb128 0x26
	.long	.LASF378
	.byte	0x1
	.value	0x450
	.long	0x5e
	.uleb128 0x26
	.long	.LASF379
	.byte	0x1
	.value	0x450
	.long	0x5e
	.byte	0
	.uleb128 0x9
	.long	0xae
	.long	0x2aab
	.uleb128 0xa
	.long	0x34
	.byte	0xb
	.uleb128 0xa
	.long	0x34
	.byte	0x2
	.byte	0
	.uleb128 0xe
	.long	0x2a95
	.uleb128 0x9
	.long	0xae
	.long	0x2ac6
	.uleb128 0xa
	.long	0x34
	.byte	0x6
	.uleb128 0xa
	.long	0x34
	.byte	0x2
	.byte	0
	.uleb128 0xe
	.long	0x2ab0
	.uleb128 0x6
	.byte	0x4
	.long	0x347
	.uleb128 0x28
	.long	.LASF385
	.byte	0x1
	.value	0x367
	.byte	0x1
	.long	.LFB42
	.long	.LFE42
	.long	.LLST0
	.long	0x2bbd
	.uleb128 0x29
	.long	.LASF380
	.byte	0x1
	.value	0x367
	.long	0xa8
	.long	.LLST1
	.uleb128 0x2a
	.string	"x"
	.byte	0x1
	.value	0x367
	.long	0x5e
	.long	.LLST2
	.uleb128 0x2a
	.string	"y"
	.byte	0x1
	.value	0x367
	.long	0x5e
	.long	.LLST3
	.uleb128 0x2b
	.long	.LASF381
	.byte	0x1
	.value	0x367
	.long	0x5e
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2c
	.string	"c"
	.byte	0x1
	.value	0x369
	.long	0x3b
	.long	.LLST4
	.uleb128 0x2d
	.long	.LASF382
	.byte	0x1
	.value	0x36a
	.long	0x2bcd
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2d
	.long	.LASF383
	.byte	0x1
	.value	0x36b
	.long	0x2bd2
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2d
	.long	.LASF384
	.byte	0x1
	.value	0x36c
	.long	0x2bd7
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2e
	.long	0x28d9
	.long	.LBB23
	.long	.Ldebug_ranges0+0
	.byte	0x1
	.value	0x379
	.uleb128 0x2f
	.long	0x2917
	.long	.LLST5
	.uleb128 0x2f
	.long	0x290b
	.long	.LLST6
	.uleb128 0x2f
	.long	0x28ff
	.long	.LLST7
	.uleb128 0x30
	.long	0x28f3
	.uleb128 0x30
	.long	0x28e7
	.uleb128 0x31
	.long	.Ldebug_ranges0+0x30
	.uleb128 0x32
	.long	0x2923
	.long	.LLST8
	.uleb128 0x32
	.long	0x292e
	.long	.LLST9
	.uleb128 0x32
	.long	0x2939
	.long	.LLST10
	.uleb128 0x33
	.long	0x2945
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x9
	.long	0x3b
	.long	0x2bcd
	.uleb128 0xa
	.long	0x34
	.byte	0x3
	.byte	0
	.uleb128 0xe
	.long	0x2bbd
	.uleb128 0xe
	.long	0x2bbd
	.uleb128 0xe
	.long	0x2bbd
	.uleb128 0x34
	.long	.LASF386
	.byte	0x1
	.value	0x41d
	.byte	0x1
	.long	.LFB49
	.long	.LFE49
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.long	0x2c2f
	.uleb128 0x29
	.long	.LASF387
	.byte	0x1
	.value	0x41d
	.long	0x2fc
	.long	.LLST11
	.uleb128 0x2b
	.long	.LASF373
	.byte	0x1
	.value	0x41d
	.long	0x237c
	.byte	0x1
	.byte	0x52
	.uleb128 0x2c
	.string	"x"
	.byte	0x1
	.value	0x41e
	.long	0x5e
	.long	.LLST12
	.uleb128 0x2c
	.string	"y"
	.byte	0x1
	.value	0x41e
	.long	0x5e
	.long	.LLST13
	.byte	0
	.uleb128 0x28
	.long	.LASF388
	.byte	0x1
	.value	0x43a
	.byte	0x1
	.long	.LFB50
	.long	.LFE50
	.long	.LLST14
	.long	0x2c99
	.uleb128 0x29
	.long	.LASF71
	.byte	0x1
	.value	0x43a
	.long	0xae
	.long	.LLST15
	.uleb128 0x29
	.long	.LASF373
	.byte	0x1
	.value	0x43a
	.long	0x237c
	.long	.LLST16
	.uleb128 0x2c
	.string	"x"
	.byte	0x1
	.value	0x43b
	.long	0x5e
	.long	.LLST17
	.uleb128 0x25
	.string	"y"
	.byte	0x1
	.value	0x43b
	.long	0x5e
	.uleb128 0x25
	.string	"t"
	.byte	0x1
	.value	0x43c
	.long	0x5e
	.uleb128 0x2c
	.string	"v"
	.byte	0x1
	.value	0x43c
	.long	0x5e
	.long	.LLST18
	.byte	0
	.uleb128 0x28
	.long	.LASF389
	.byte	0x1
	.value	0x4ec
	.byte	0x1
	.long	.LFB53
	.long	.LFE53
	.long	.LLST19
	.long	0x2dd4
	.uleb128 0x2a
	.string	"x"
	.byte	0x1
	.value	0x4ec
	.long	0x5e
	.long	.LLST20
	.uleb128 0x2a
	.string	"y"
	.byte	0x1
	.value	0x4ec
	.long	0x5e
	.long	.LLST21
	.uleb128 0x2a
	.string	"nr"
	.byte	0x1
	.value	0x4ec
	.long	0x5e
	.long	.LLST22
	.uleb128 0x35
	.string	"rev"
	.byte	0x1
	.value	0x4ec
	.long	0x5e
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2b
	.long	.LASF390
	.byte	0x1
	.value	0x4ec
	.long	0x5e
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2c
	.string	"w"
	.byte	0x1
	.value	0x4ee
	.long	0x5e
	.long	.LLST23
	.uleb128 0x2c
	.string	"h"
	.byte	0x1
	.value	0x4ee
	.long	0x5e
	.long	.LLST24
	.uleb128 0x2c
	.string	"rw"
	.byte	0x1
	.value	0x4ef
	.long	0x5e
	.long	.LLST25
	.uleb128 0x2c
	.string	"rh"
	.byte	0x1
	.value	0x4f0
	.long	0x5e
	.long	.LLST26
	.uleb128 0x25
	.string	"pos"
	.byte	0x1
	.value	0x4f1
	.long	0x5e
	.uleb128 0x2c
	.string	"dw"
	.byte	0x1
	.value	0x4f2
	.long	0x5e
	.long	.LLST27
	.uleb128 0x2c
	.string	"di"
	.byte	0x1
	.value	0x4f2
	.long	0x5e
	.long	.LLST28
	.uleb128 0x2c
	.string	"dh"
	.byte	0x1
	.value	0x4f2
	.long	0x5e
	.long	.LLST29
	.uleb128 0x2c
	.string	"ds"
	.byte	0x1
	.value	0x4f2
	.long	0x5e
	.long	.LLST30
	.uleb128 0x36
	.long	.LASF100
	.byte	0x1
	.value	0x4f3
	.long	0x5e
	.long	.LLST31
	.uleb128 0x31
	.long	.Ldebug_ranges0+0x60
	.uleb128 0x36
	.long	.LASF391
	.byte	0x1
	.value	0x506
	.long	0x5e
	.long	.LLST32
	.uleb128 0x31
	.long	.Ldebug_ranges0+0x80
	.uleb128 0x2c
	.string	"r"
	.byte	0x1
	.value	0x50b
	.long	0x3b
	.long	.LLST33
	.uleb128 0x2c
	.string	"g"
	.byte	0x1
	.value	0x50b
	.long	0x3b
	.long	.LLST34
	.uleb128 0x2c
	.string	"b"
	.byte	0x1
	.value	0x50b
	.long	0x3b
	.long	.LLST35
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x37
	.long	.LASF392
	.byte	0x1
	.byte	0xc2
	.byte	0x1
	.long	.LFB33
	.long	.LFE33
	.long	.LLST36
	.long	0x2eb4
	.uleb128 0x38
	.long	.LASF393
	.byte	0x1
	.byte	0xc2
	.long	0x23b2
	.long	.LLST37
	.uleb128 0x39
	.long	.LASF394
	.byte	0x1
	.byte	0xc5
	.long	0x2eb4
	.byte	0x4
	.byte	0x91
	.sleb128 -8248
	.uleb128 0x3a
	.string	"val"
	.byte	0x1
	.byte	0xc6
	.long	0x23a7
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x39
	.long	.LASF395
	.byte	0x1
	.byte	0xc7
	.long	0xa1e
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x39
	.long	.LASF178
	.byte	0x1
	.byte	0xc8
	.long	0xa8
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3b
	.string	"i"
	.byte	0x1
	.byte	0xc9
	.long	0x5e
	.long	.LLST38
	.uleb128 0x3c
	.long	.LBB51
	.long	.LBE51
	.long	0x2e66
	.uleb128 0x3d
	.long	.LASF396
	.byte	0x1
	.byte	0xe5
	.long	0x29
	.uleb128 0x3d
	.long	.LASF397
	.byte	0x1
	.byte	0xe5
	.long	0x29
	.byte	0
	.uleb128 0x3c
	.long	.LBB52
	.long	.LBE52
	.long	0x2e83
	.uleb128 0x3e
	.long	.LASF398
	.byte	0x1
	.byte	0xff
	.long	0x5e
	.long	.LLST39
	.byte	0
	.uleb128 0x3f
	.long	.Ldebug_ranges0+0x100
	.long	0x2e9d
	.uleb128 0x36
	.long	.LASF398
	.byte	0x1
	.value	0x107
	.long	0x5e
	.long	.LLST40
	.byte	0
	.uleb128 0x40
	.long	.LBB55
	.long	.LBE55
	.uleb128 0x26
	.long	.LASF398
	.byte	0x1
	.value	0x102
	.long	0x5e
	.byte	0
	.byte	0
	.uleb128 0x9
	.long	0xae
	.long	0x2ec5
	.uleb128 0x20
	.long	0x34
	.value	0x1fff
	.byte	0
	.uleb128 0x28
	.long	.LASF399
	.byte	0x1
	.value	0x3aa
	.byte	0x1
	.long	.LFB45
	.long	.LFE45
	.long	.LLST41
	.long	0x2f0b
	.uleb128 0x2d
	.long	.LASF400
	.byte	0x1
	.value	0x3ac
	.long	0x276
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2d
	.long	.LASF71
	.byte	0x1
	.value	0x3ad
	.long	0x327
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2c
	.string	"i"
	.byte	0x1
	.value	0x3ae
	.long	0x5e
	.long	.LLST42
	.byte	0
	.uleb128 0x41
	.long	0x29c3
	.long	.LFB59
	.long	.LFE59
	.long	.LLST43
	.long	0x300e
	.uleb128 0x2f
	.long	0x29dd
	.long	.LLST44
	.uleb128 0x2f
	.long	0x29e9
	.long	.LLST45
	.uleb128 0x2f
	.long	0x29f5
	.long	.LLST46
	.uleb128 0x32
	.long	0x2a01
	.long	.LLST47
	.uleb128 0x32
	.long	0x2a0d
	.long	.LLST48
	.uleb128 0x32
	.long	0x2a17
	.long	.LLST49
	.uleb128 0x33
	.long	0x2a21
	.uleb128 0x42
	.long	0x29d1
	.byte	0x36
	.uleb128 0x43
	.long	0x2951
	.long	.LBB56
	.long	.LBE56
	.byte	0x1
	.value	0x39b
	.long	0x2f9d
	.uleb128 0x30
	.long	0x297f
	.uleb128 0x30
	.long	0x2973
	.uleb128 0x30
	.long	0x2969
	.uleb128 0x2f
	.long	0x295f
	.long	.LLST50
	.uleb128 0x40
	.long	.LBB57
	.long	.LBE57
	.uleb128 0x33
	.long	0x2989
	.byte	0
	.byte	0
	.uleb128 0x43
	.long	0x2951
	.long	.LBB58
	.long	.LBE58
	.byte	0x1
	.value	0x39d
	.long	0x2fd9
	.uleb128 0x30
	.long	0x297f
	.uleb128 0x30
	.long	0x2973
	.uleb128 0x30
	.long	0x2969
	.uleb128 0x2f
	.long	0x295f
	.long	.LLST52
	.uleb128 0x40
	.long	.LBB59
	.long	.LBE59
	.uleb128 0x33
	.long	0x2989
	.byte	0
	.byte	0
	.uleb128 0x44
	.long	0x2951
	.long	.LBB60
	.long	.LBE60
	.byte	0x1
	.value	0x3a4
	.uleb128 0x30
	.long	0x297f
	.uleb128 0x30
	.long	0x2969
	.uleb128 0x30
	.long	0x2973
	.uleb128 0x30
	.long	0x295f
	.uleb128 0x40
	.long	.LBB61
	.long	.LBE61
	.uleb128 0x33
	.long	0x2989
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x22
	.long	.LASF401
	.byte	0x1
	.value	0x579
	.byte	0x1
	.byte	0x1
	.long	0x3027
	.uleb128 0x25
	.string	"i"
	.byte	0x1
	.value	0x57b
	.long	0x5e
	.byte	0
	.uleb128 0x22
	.long	.LASF402
	.byte	0x1
	.value	0x562
	.byte	0x1
	.byte	0x1
	.long	0x3058
	.uleb128 0x25
	.string	"i"
	.byte	0x1
	.value	0x563
	.long	0x5e
	.uleb128 0x26
	.long	.LASF326
	.byte	0x1
	.value	0x564
	.long	0x30c
	.uleb128 0x26
	.long	.LASF327
	.byte	0x1
	.value	0x564
	.long	0x30c
	.byte	0
	.uleb128 0x45
	.long	.LASF424
	.byte	0x1
	.value	0x1da
	.byte	0x1
	.long	0x5e
	.byte	0x1
	.long	0x309b
	.uleb128 0x26
	.long	.LASF403
	.byte	0x1
	.value	0x1dc
	.long	0x440
	.uleb128 0x26
	.long	.LASF404
	.byte	0x1
	.value	0x1dc
	.long	0x440
	.uleb128 0x26
	.long	.LASF405
	.byte	0x1
	.value	0x1dd
	.long	0x5e
	.uleb128 0x26
	.long	.LASF406
	.byte	0x1
	.value	0x1de
	.long	0x317
	.byte	0
	.uleb128 0x22
	.long	.LASF407
	.byte	0x1
	.value	0x214
	.byte	0x1
	.byte	0x1
	.long	0x31f1
	.uleb128 0x24
	.long	.LASF408
	.byte	0x1
	.value	0x214
	.long	0x5e
	.uleb128 0x26
	.long	.LASF319
	.byte	0x1
	.value	0x215
	.long	0x27a6
	.uleb128 0x26
	.long	.LASF409
	.byte	0x1
	.value	0x216
	.long	0x34
	.uleb128 0x25
	.string	"x"
	.byte	0x1
	.value	0x216
	.long	0x34
	.uleb128 0x25
	.string	"y"
	.byte	0x1
	.value	0x216
	.long	0x34
	.uleb128 0x25
	.string	"ptr"
	.byte	0x1
	.value	0x218
	.long	0x237c
	.uleb128 0x46
	.long	.LASF480
	.byte	0x4
	.byte	0x1
	.value	0x219
	.long	0x310d
	.uleb128 0x1d
	.long	.LASF410
	.sleb128 0
	.uleb128 0x1d
	.long	.LASF411
	.sleb128 1
	.uleb128 0x1d
	.long	.LASF412
	.sleb128 2
	.byte	0
	.uleb128 0x26
	.long	.LASF413
	.byte	0x1
	.value	0x21a
	.long	0x34
	.uleb128 0x26
	.long	.LASF414
	.byte	0x1
	.value	0x21e
	.long	0x34
	.uleb128 0x26
	.long	.LASF415
	.byte	0x1
	.value	0x21e
	.long	0x34
	.uleb128 0x26
	.long	.LASF416
	.byte	0x1
	.value	0x21f
	.long	0x34
	.uleb128 0x26
	.long	.LASF417
	.byte	0x1
	.value	0x21f
	.long	0x34
	.uleb128 0x26
	.long	.LASF418
	.byte	0x1
	.value	0x222
	.long	0x34
	.uleb128 0x26
	.long	.LASF419
	.byte	0x1
	.value	0x223
	.long	0x34
	.uleb128 0x22
	.long	.LASF420
	.byte	0x1
	.value	0x336
	.byte	0x1
	.byte	0x1
	.long	0x31b6
	.uleb128 0x25
	.string	"ptr"
	.byte	0x1
	.value	0x218
	.long	0x237c
	.uleb128 0x26
	.long	.LASF421
	.byte	0x1
	.value	0x218
	.long	0x237c
	.uleb128 0x25
	.string	"i"
	.byte	0x1
	.value	0x216
	.long	0x34
	.uleb128 0x26
	.long	.LASF382
	.byte	0x1
	.value	0x217
	.long	0x31f1
	.uleb128 0x26
	.long	.LASF383
	.byte	0x1
	.value	0x217
	.long	0x31f1
	.uleb128 0x26
	.long	.LASF384
	.byte	0x1
	.value	0x217
	.long	0x31f1
	.byte	0
	.uleb128 0x25
	.string	"i"
	.byte	0x1
	.value	0x216
	.long	0x34
	.uleb128 0x26
	.long	.LASF421
	.byte	0x1
	.value	0x218
	.long	0x237c
	.uleb128 0x26
	.long	.LASF382
	.byte	0x1
	.value	0x217
	.long	0x31f1
	.uleb128 0x26
	.long	.LASF383
	.byte	0x1
	.value	0x217
	.long	0x31f1
	.uleb128 0x26
	.long	.LASF384
	.byte	0x1
	.value	0x217
	.long	0x31f1
	.byte	0
	.uleb128 0x9
	.long	0x3b
	.long	0x3201
	.uleb128 0xa
	.long	0x34
	.byte	0x2
	.byte	0
	.uleb128 0x22
	.long	.LASF422
	.byte	0x1
	.value	0x53d
	.byte	0x1
	.byte	0x1
	.long	0x324a
	.uleb128 0x24
	.long	.LASF423
	.byte	0x1
	.value	0x53d
	.long	0x5e
	.uleb128 0x25
	.string	"tx"
	.byte	0x1
	.value	0x53f
	.long	0x5e
	.uleb128 0x25
	.string	"rp"
	.byte	0x1
	.value	0x540
	.long	0x5e
	.uleb128 0x25
	.string	"rev"
	.byte	0x1
	.value	0x541
	.long	0x5e
	.uleb128 0x26
	.long	.LASF390
	.byte	0x1
	.value	0x542
	.long	0x5e
	.byte	0
	.uleb128 0x45
	.long	.LASF425
	.byte	0x1
	.value	0x52c
	.byte	0x1
	.long	0x5e
	.byte	0x1
	.long	0x3275
	.uleb128 0x26
	.long	.LASF426
	.byte	0x1
	.value	0x532
	.long	0x3285
	.uleb128 0x26
	.long	.LASF427
	.byte	0x1
	.value	0x535
	.long	0x5e
	.byte	0
	.uleb128 0x9
	.long	0x5e
	.long	0x3285
	.uleb128 0xa
	.long	0x34
	.byte	0xf
	.byte	0
	.uleb128 0xe
	.long	0x3275
	.uleb128 0x22
	.long	.LASF428
	.byte	0x1
	.value	0x475
	.byte	0x1
	.byte	0x1
	.long	0x336b
	.uleb128 0x23
	.string	"cpu"
	.byte	0x1
	.value	0x475
	.long	0x5e
	.uleb128 0x24
	.long	.LASF408
	.byte	0x1
	.value	0x475
	.long	0x5e
	.uleb128 0x25
	.string	"bob"
	.byte	0x1
	.value	0x47a
	.long	0x5e
	.uleb128 0x26
	.long	.LASF429
	.byte	0x1
	.value	0x47d
	.long	0x5e
	.uleb128 0x26
	.long	.LASF430
	.byte	0x1
	.value	0x47e
	.long	0x5e
	.uleb128 0x26
	.long	.LASF431
	.byte	0x1
	.value	0x47f
	.long	0x5e
	.uleb128 0x25
	.string	"yoh"
	.byte	0x1
	.value	0x480
	.long	0x5e
	.uleb128 0x25
	.string	"avg"
	.byte	0x1
	.value	0x481
	.long	0x5e
	.uleb128 0x26
	.long	.LASF432
	.byte	0x1
	.value	0x482
	.long	0x5e
	.uleb128 0x25
	.string	"y"
	.byte	0x1
	.value	0x482
	.long	0x5e
	.uleb128 0x25
	.string	"pos"
	.byte	0x1
	.value	0x482
	.long	0x5e
	.uleb128 0x25
	.string	"kit"
	.byte	0x1
	.value	0x485
	.long	0x336b
	.uleb128 0x26
	.long	.LASF433
	.byte	0x1
	.value	0x486
	.long	0x237c
	.uleb128 0x47
	.long	0x3344
	.uleb128 0x25
	.string	"src"
	.byte	0x1
	.value	0x4cb
	.long	0x3b
	.byte	0
	.uleb128 0x48
	.uleb128 0x25
	.string	"ptr"
	.byte	0x1
	.value	0x4df
	.long	0x237c
	.uleb128 0x26
	.long	.LASF434
	.byte	0x1
	.value	0x4df
	.long	0x237c
	.uleb128 0x25
	.string	"src"
	.byte	0x1
	.value	0x4df
	.long	0x3b
	.byte	0
	.byte	0
	.uleb128 0x9
	.long	0x3b
	.long	0x337c
	.uleb128 0x20
	.long	0x34
	.value	0x2a3
	.byte	0
	.uleb128 0x22
	.long	.LASF435
	.byte	0x1
	.value	0x411
	.byte	0x1
	.byte	0x1
	.long	0x33d0
	.uleb128 0x24
	.long	.LASF436
	.byte	0x1
	.value	0x411
	.long	0x5e
	.uleb128 0x24
	.long	.LASF363
	.byte	0x1
	.value	0x411
	.long	0x237c
	.uleb128 0x25
	.string	"len"
	.byte	0x1
	.value	0x412
	.long	0x34
	.uleb128 0x25
	.string	"y"
	.byte	0x1
	.value	0x412
	.long	0x34
	.uleb128 0x25
	.string	"to"
	.byte	0x1
	.value	0x413
	.long	0x237c
	.uleb128 0x26
	.long	.LASF364
	.byte	0x1
	.value	0x413
	.long	0x237c
	.byte	0
	.uleb128 0x22
	.long	.LASF437
	.byte	0x1
	.value	0x3da
	.byte	0x1
	.byte	0x1
	.long	0x33eb
	.uleb128 0x26
	.long	.LASF438
	.byte	0x1
	.value	0x3db
	.long	0x5e
	.byte	0
	.uleb128 0x22
	.long	.LASF439
	.byte	0x1
	.value	0x3e4
	.byte	0x1
	.byte	0x1
	.long	0x3412
	.uleb128 0x26
	.long	.LASF440
	.byte	0x1
	.value	0x3e5
	.long	0x5e
	.uleb128 0x26
	.long	.LASF441
	.byte	0x1
	.value	0x3e5
	.long	0x5e
	.byte	0
	.uleb128 0x49
	.byte	0x1
	.long	.LASF481
	.byte	0x1
	.value	0x12d
	.byte	0x1
	.long	0x5e
	.long	.LFB35
	.long	.LFE35
	.long	.LLST54
	.long	0x3b14
	.uleb128 0x2b
	.long	.LASF442
	.byte	0x1
	.value	0x12d
	.long	0x5e
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2b
	.long	.LASF443
	.byte	0x1
	.value	0x12d
	.long	0x2376
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2d
	.long	.LASF444
	.byte	0x1
	.value	0x12f
	.long	0x3b14
	.byte	0x3
	.byte	0x74
	.sleb128 64
	.uleb128 0x36
	.long	.LASF445
	.byte	0x1
	.value	0x130
	.long	0xa8
	.long	.LLST55
	.uleb128 0x36
	.long	.LASF408
	.byte	0x1
	.value	0x131
	.long	0x5e
	.long	.LLST56
	.uleb128 0x2d
	.long	.LASF213
	.byte	0x1
	.value	0x13a
	.long	0x236a
	.byte	0x3
	.byte	0x74
	.sleb128 320
	.uleb128 0x36
	.long	.LASF446
	.byte	0x1
	.value	0x13b
	.long	0x23b2
	.long	.LLST57
	.uleb128 0x43
	.long	0x2996
	.long	.LBB113
	.long	.LBE113
	.byte	0x1
	.value	0x157
	.long	0x34c2
	.uleb128 0x40
	.long	.LBB114
	.long	.LBE114
	.uleb128 0x33
	.long	0x29a4
	.byte	0
	.byte	0
	.uleb128 0x43
	.long	0x29af
	.long	.LBB115
	.long	.LBE115
	.byte	0x1
	.value	0x162
	.long	0x352d
	.uleb128 0x4a
	.long	0x300e
	.long	.LBB117
	.long	.Ldebug_ranges0+0x118
	.byte	0x1
	.value	0x20a
	.long	0x34fa
	.uleb128 0x31
	.long	.Ldebug_ranges0+0x138
	.uleb128 0x32
	.long	0x301c
	.long	.LLST58
	.byte	0
	.byte	0
	.uleb128 0x2e
	.long	0x3027
	.long	.LBB122
	.long	.Ldebug_ranges0+0x158
	.byte	0x1
	.value	0x20c
	.uleb128 0x31
	.long	.Ldebug_ranges0+0x170
	.uleb128 0x32
	.long	0x3035
	.long	.LLST59
	.uleb128 0x32
	.long	0x303f
	.long	.LLST60
	.uleb128 0x32
	.long	0x304b
	.long	.LLST61
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x40
	.long	.LBB127
	.long	.LBE127
	.uleb128 0x22
	.long	.LASF447
	.byte	0x1
	.value	0x1b4
	.byte	0x1
	.byte	0x1
	.long	0x3567
	.uleb128 0x25
	.string	"xx"
	.byte	0x1
	.value	0x1b6
	.long	0x5e
	.uleb128 0x25
	.string	"yy"
	.byte	0x1
	.value	0x1b6
	.long	0x5e
	.uleb128 0x26
	.long	.LASF364
	.byte	0x1
	.value	0x1b7
	.long	0x237c
	.byte	0
	.uleb128 0x4b
	.long	0x29b9
	.long	.LBB128
	.long	.Ldebug_ranges0+0x188
	.byte	0x1
	.value	0x190
	.uleb128 0x4a
	.long	0x309b
	.long	.LBB131
	.long	.Ldebug_ranges0+0x1a0
	.byte	0x1
	.value	0x192
	.long	0x3a66
	.uleb128 0x2f
	.long	0x30a9
	.long	.LLST62
	.uleb128 0x31
	.long	.Ldebug_ranges0+0x1d8
	.uleb128 0x32
	.long	0x30b5
	.long	.LLST63
	.uleb128 0x32
	.long	0x30c1
	.long	.LLST64
	.uleb128 0x32
	.long	0x30cd
	.long	.LLST65
	.uleb128 0x32
	.long	0x30d7
	.long	.LLST66
	.uleb128 0x33
	.long	0x30e1
	.uleb128 0x33
	.long	0x310d
	.uleb128 0x32
	.long	0x3119
	.long	.LLST67
	.uleb128 0x32
	.long	0x3125
	.long	.LLST68
	.uleb128 0x32
	.long	0x3131
	.long	.LLST69
	.uleb128 0x32
	.long	0x313d
	.long	.LLST70
	.uleb128 0x32
	.long	0x3149
	.long	.LLST71
	.uleb128 0x4c
	.long	0x3155
	.byte	0x5
	.byte	0x3
	.long	last_action_min.7333
	.uleb128 0x33
	.long	0x31b6
	.uleb128 0x33
	.long	0x31c0
	.uleb128 0x33
	.long	0x31cc
	.uleb128 0x33
	.long	0x31d8
	.uleb128 0x33
	.long	0x31e4
	.uleb128 0x43
	.long	0x3161
	.long	.LBB133
	.long	.LBE133
	.byte	0x1
	.value	0x342
	.long	0x3655
	.uleb128 0x40
	.long	.LBB134
	.long	.LBE134
	.uleb128 0x33
	.long	0x316f
	.uleb128 0x33
	.long	0x3187
	.uleb128 0x33
	.long	0x3191
	.uleb128 0x33
	.long	0x317b
	.uleb128 0x33
	.long	0x319d
	.uleb128 0x33
	.long	0x31a9
	.byte	0
	.byte	0
	.uleb128 0x4a
	.long	0x3201
	.long	.LBB135
	.long	.Ldebug_ranges0+0x210
	.byte	0x1
	.value	0x344
	.long	0x36ff
	.uleb128 0x2f
	.long	0x320f
	.long	.LLST72
	.uleb128 0x31
	.long	.Ldebug_ranges0+0x250
	.uleb128 0x4c
	.long	0x321b
	.byte	0x5
	.byte	0x3
	.long	tx.7566
	.uleb128 0x4c
	.long	0x3226
	.byte	0x5
	.byte	0x3
	.long	rp.7567
	.uleb128 0x4c
	.long	0x3231
	.byte	0x5
	.byte	0x3
	.long	rev.7568
	.uleb128 0x4c
	.long	0x323d
	.byte	0x5
	.byte	0x3
	.long	upsidedown.7569
	.uleb128 0x4a
	.long	0x324a
	.long	.LBB137
	.long	.Ldebug_ranges0+0x290
	.byte	0x1
	.value	0x55f
	.long	0x36d2
	.uleb128 0x31
	.long	.Ldebug_ranges0+0x2c0
	.uleb128 0x4c
	.long	0x325c
	.byte	0x3
	.byte	0x74
	.sleb128 416
	.uleb128 0x4c
	.long	0x3268
	.byte	0x5
	.byte	0x3
	.long	totalcounter.7562
	.byte	0
	.byte	0
	.uleb128 0x2e
	.long	0x324a
	.long	.LBB145
	.long	.Ldebug_ranges0+0x2f0
	.byte	0x1
	.value	0x54f
	.uleb128 0x31
	.long	.Ldebug_ranges0+0x308
	.uleb128 0x4c
	.long	0x325c
	.byte	0x3
	.byte	0x74
	.sleb128 416
	.uleb128 0x4c
	.long	0x3268
	.byte	0x5
	.byte	0x3
	.long	totalcounter.7562
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2e
	.long	0x328a
	.long	.LBB157
	.long	.Ldebug_ranges0+0x320
	.byte	0x1
	.value	0x34a
	.uleb128 0x2f
	.long	0x32a4
	.long	.LLST73
	.uleb128 0x2f
	.long	0x3298
	.long	.LLST74
	.uleb128 0x31
	.long	.Ldebug_ranges0+0x378
	.uleb128 0x32
	.long	0x32b0
	.long	.LLST75
	.uleb128 0x32
	.long	0x32f8
	.long	.LLST76
	.uleb128 0x33
	.long	0x3304
	.uleb128 0x33
	.long	0x330e
	.uleb128 0x33
	.long	0x3326
	.uleb128 0x4c
	.long	0x32bc
	.byte	0x5
	.byte	0x3
	.long	blend.7505
	.uleb128 0x4c
	.long	0x32c8
	.byte	0x5
	.byte	0x3
	.long	memblend.7506
	.uleb128 0x4c
	.long	0x32d4
	.byte	0x5
	.byte	0x3
	.long	showmem.7507
	.uleb128 0x4c
	.long	0x32e0
	.byte	0x5
	.byte	0x3
	.long	yoh.7508
	.uleb128 0x4c
	.long	0x32ec
	.byte	0x5
	.byte	0x3
	.long	avg.7509
	.uleb128 0x4c
	.long	0x331a
	.byte	0x5
	.byte	0x3
	.long	kit.7513
	.uleb128 0x4a
	.long	0x337c
	.long	.LBB159
	.long	.Ldebug_ranges0+0x3d0
	.byte	0x1
	.value	0x498
	.long	0x37ce
	.uleb128 0x30
	.long	0x3396
	.uleb128 0x30
	.long	0x338a
	.uleb128 0x31
	.long	.Ldebug_ranges0+0x3f8
	.uleb128 0x32
	.long	0x33a2
	.long	.LLST77
	.uleb128 0x33
	.long	0x33ae
	.uleb128 0x32
	.long	0x33b8
	.long	.LLST78
	.uleb128 0x32
	.long	0x33c3
	.long	.LLST79
	.byte	0
	.byte	0
	.uleb128 0x4a
	.long	0x337c
	.long	.LBB164
	.long	.Ldebug_ranges0+0x420
	.byte	0x1
	.value	0x497
	.long	0x3813
	.uleb128 0x30
	.long	0x3396
	.uleb128 0x30
	.long	0x338a
	.uleb128 0x31
	.long	.Ldebug_ranges0+0x4a8
	.uleb128 0x32
	.long	0x33a2
	.long	.LLST80
	.uleb128 0x33
	.long	0x33ae
	.uleb128 0x32
	.long	0x33b8
	.long	.LLST81
	.uleb128 0x32
	.long	0x33c3
	.long	.LLST82
	.byte	0
	.byte	0
	.uleb128 0x4a
	.long	0x337c
	.long	.LBB181
	.long	.Ldebug_ranges0+0x530
	.byte	0x1
	.value	0x49a
	.long	0x3858
	.uleb128 0x30
	.long	0x3396
	.uleb128 0x30
	.long	0x338a
	.uleb128 0x31
	.long	.Ldebug_ranges0+0x558
	.uleb128 0x32
	.long	0x33a2
	.long	.LLST83
	.uleb128 0x33
	.long	0x33ae
	.uleb128 0x32
	.long	0x33b8
	.long	.LLST84
	.uleb128 0x32
	.long	0x33c3
	.long	.LLST85
	.byte	0
	.byte	0
	.uleb128 0x4a
	.long	0x337c
	.long	.LBB190
	.long	.Ldebug_ranges0+0x580
	.byte	0x1
	.value	0x49b
	.long	0x389d
	.uleb128 0x30
	.long	0x3396
	.uleb128 0x30
	.long	0x338a
	.uleb128 0x31
	.long	.Ldebug_ranges0+0x5a8
	.uleb128 0x32
	.long	0x33a2
	.long	.LLST86
	.uleb128 0x33
	.long	0x33ae
	.uleb128 0x32
	.long	0x33b8
	.long	.LLST87
	.uleb128 0x32
	.long	0x33c3
	.long	.LLST88
	.byte	0
	.byte	0
	.uleb128 0x4a
	.long	0x337c
	.long	.LBB201
	.long	.Ldebug_ranges0+0x5d0
	.byte	0x1
	.value	0x49c
	.long	0x38ee
	.uleb128 0x2f
	.long	0x3396
	.long	.LLST89
	.uleb128 0x2f
	.long	0x338a
	.long	.LLST90
	.uleb128 0x31
	.long	.Ldebug_ranges0+0x5f8
	.uleb128 0x32
	.long	0x33a2
	.long	.LLST91
	.uleb128 0x32
	.long	0x33ae
	.long	.LLST92
	.uleb128 0x32
	.long	0x33b8
	.long	.LLST93
	.uleb128 0x32
	.long	0x33c3
	.long	.LLST94
	.byte	0
	.byte	0
	.uleb128 0x4a
	.long	0x337c
	.long	.LBB211
	.long	.Ldebug_ranges0+0x620
	.byte	0x1
	.value	0x49f
	.long	0x3937
	.uleb128 0x30
	.long	0x3396
	.uleb128 0x30
	.long	0x338a
	.uleb128 0x31
	.long	.Ldebug_ranges0+0x640
	.uleb128 0x32
	.long	0x33a2
	.long	.LLST95
	.uleb128 0x32
	.long	0x33ae
	.long	.LLST96
	.uleb128 0x32
	.long	0x33b8
	.long	.LLST97
	.uleb128 0x32
	.long	0x33c3
	.long	.LLST98
	.byte	0
	.byte	0
	.uleb128 0x3c
	.long	.LBB219
	.long	.LBE219
	.long	0x394e
	.uleb128 0x32
	.long	0x3337
	.long	.LLST99
	.byte	0
	.uleb128 0x4a
	.long	0x2a32
	.long	.LBB220
	.long	.Ldebug_ranges0+0x660
	.byte	0x1
	.value	0x4da
	.long	0x39a8
	.uleb128 0x31
	.long	.Ldebug_ranges0+0x688
	.uleb128 0x4c
	.long	0x2a4c
	.byte	0x3
	.byte	0x74
	.sleb128 416
	.uleb128 0x4c
	.long	0x2a58
	.byte	0x3
	.byte	0x74
	.sleb128 480
	.uleb128 0x4c
	.long	0x2a64
	.byte	0x3
	.byte	0x74
	.sleb128 540
	.uleb128 0x32
	.long	0x2a70
	.long	.LLST100
	.uleb128 0x32
	.long	0x2a7c
	.long	.LLST101
	.uleb128 0x32
	.long	0x2a88
	.long	.LLST102
	.uleb128 0x2f
	.long	0x2a40
	.long	.LLST103
	.byte	0
	.byte	0
	.uleb128 0x3c
	.long	.LBB226
	.long	.LBE226
	.long	0x39cd
	.uleb128 0x33
	.long	0x3345
	.uleb128 0x32
	.long	0x3351
	.long	.LLST104
	.uleb128 0x32
	.long	0x335d
	.long	.LLST105
	.byte	0
	.uleb128 0x4a
	.long	0x337c
	.long	.LBB229
	.long	.Ldebug_ranges0+0x6b0
	.byte	0x1
	.value	0x496
	.long	0x3a12
	.uleb128 0x30
	.long	0x3396
	.uleb128 0x30
	.long	0x338a
	.uleb128 0x31
	.long	.Ldebug_ranges0+0x6e8
	.uleb128 0x32
	.long	0x33a2
	.long	.LLST106
	.uleb128 0x33
	.long	0x33ae
	.uleb128 0x32
	.long	0x33b8
	.long	.LLST107
	.uleb128 0x32
	.long	0x33c3
	.long	.LLST108
	.byte	0
	.byte	0
	.uleb128 0x43
	.long	0x33d0
	.long	.LBB251
	.long	.LBE251
	.byte	0x1
	.value	0x4b8
	.long	0x3a3c
	.uleb128 0x40
	.long	.LBB252
	.long	.LBE252
	.uleb128 0x4c
	.long	0x33de
	.byte	0x5
	.byte	0x3
	.long	delay.7436
	.byte	0
	.byte	0
	.uleb128 0x44
	.long	0x33d0
	.long	.LBB253
	.long	.LBE253
	.byte	0x1
	.value	0x4b0
	.uleb128 0x40
	.long	.LBB254
	.long	.LBE254
	.uleb128 0x4c
	.long	0x33de
	.byte	0x5
	.byte	0x3
	.long	delay.7436
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x4a
	.long	0x3536
	.long	.LBB284
	.long	.Ldebug_ranges0+0x720
	.byte	0x1
	.value	0x1cb
	.long	0x3a9c
	.uleb128 0x31
	.long	.Ldebug_ranges0+0x738
	.uleb128 0x32
	.long	0x3544
	.long	.LLST109
	.uleb128 0x32
	.long	0x354f
	.long	.LLST110
	.uleb128 0x32
	.long	0x355a
	.long	.LLST111
	.byte	0
	.byte	0
	.uleb128 0x4a
	.long	0x33eb
	.long	.LBB289
	.long	.Ldebug_ranges0+0x750
	.byte	0x1
	.value	0x1ce
	.long	0x3acd
	.uleb128 0x31
	.long	.Ldebug_ranges0+0x768
	.uleb128 0x4c
	.long	0x33f9
	.byte	0x5
	.byte	0x3
	.long	update.7440
	.uleb128 0x4c
	.long	0x3405
	.byte	0x5
	.byte	0x3
	.long	doit.7441
	.byte	0
	.byte	0
	.uleb128 0x44
	.long	0x3058
	.long	.LBB297
	.long	.LBE297
	.byte	0x1
	.value	0x17e
	.uleb128 0x40
	.long	.LBB298
	.long	.LBE298
	.uleb128 0x4c
	.long	0x308e
	.byte	0x3
	.byte	0x74
	.sleb128 480
	.uleb128 0x4c
	.long	0x306a
	.byte	0x5
	.byte	0x3
	.long	lshift_code.7303
	.uleb128 0x4c
	.long	0x3076
	.byte	0x5
	.byte	0x3
	.long	rshift_code.7304
	.uleb128 0x4c
	.long	0x3082
	.byte	0x5
	.byte	0x3
	.long	first_time.7305
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x9
	.long	0xae
	.long	0x3b24
	.uleb128 0xa
	.long	0x34
	.byte	0xff
	.byte	0
	.uleb128 0x4d
	.long	.LASF448
	.byte	0xd
	.byte	0xa5
	.long	0x2ca
	.byte	0x1
	.byte	0x1
	.uleb128 0x4d
	.long	.LASF449
	.byte	0xd
	.byte	0xa6
	.long	0x2ca
	.byte	0x1
	.byte	0x1
	.uleb128 0x4d
	.long	.LASF450
	.byte	0xd
	.byte	0xa7
	.long	0x2ca
	.byte	0x1
	.byte	0x1
	.uleb128 0x4d
	.long	.LASF451
	.byte	0xe
	.byte	0x11
	.long	0xe21
	.byte	0x1
	.byte	0x1
	.uleb128 0x9
	.long	0xae
	.long	0x3b69
	.uleb128 0x20
	.long	0x34
	.value	0x1a4
	.byte	0
	.uleb128 0x4d
	.long	.LASF452
	.byte	0xf
	.byte	0x1
	.long	0x3b76
	.byte	0x1
	.byte	0x1
	.uleb128 0xe
	.long	0x3b58
	.uleb128 0x9
	.long	0xae
	.long	0x3b8c
	.uleb128 0x20
	.long	0x34
	.value	0x89d
	.byte	0
	.uleb128 0x4d
	.long	.LASF453
	.byte	0xf
	.byte	0xb
	.long	0x3b99
	.byte	0x1
	.byte	0x1
	.uleb128 0xe
	.long	0x3b7b
	.uleb128 0x9
	.long	0x3b
	.long	0x3baf
	.uleb128 0x20
	.long	0x34
	.value	0x103f
	.byte	0
	.uleb128 0x4d
	.long	.LASF454
	.byte	0x10
	.byte	0x1
	.long	0x3b9e
	.byte	0x1
	.byte	0x1
	.uleb128 0x9
	.long	0xae
	.long	0x3bd2
	.uleb128 0xa
	.long	0x34
	.byte	0x3
	.uleb128 0xa
	.long	0x34
	.byte	0x2
	.byte	0
	.uleb128 0x39
	.long	.LASF455
	.byte	0x11
	.byte	0x1
	.long	0x3be3
	.byte	0x5
	.byte	0x3
	.long	duck_cmap
	.uleb128 0xe
	.long	0x3bbc
	.uleb128 0x9
	.long	0x5e
	.long	0x3bff
	.uleb128 0xa
	.long	0x34
	.byte	0x2
	.uleb128 0x20
	.long	0x34
	.value	0x131
	.byte	0
	.uleb128 0x39
	.long	.LASF456
	.byte	0x11
	.byte	0x7
	.long	0x3c10
	.byte	0x5
	.byte	0x3
	.long	duck_data
	.uleb128 0xe
	.long	0x3be8
	.uleb128 0x9
	.long	0x3b
	.long	0x3c26
	.uleb128 0x20
	.long	0x34
	.value	0xa05
	.byte	0
	.uleb128 0x4d
	.long	.LASF457
	.byte	0x12
	.byte	0x2
	.long	0x3c15
	.byte	0x1
	.byte	0x1
	.uleb128 0x39
	.long	.LASF458
	.byte	0xb
	.byte	0x8
	.long	0x3c44
	.byte	0x5
	.byte	0x3
	.long	load_screen
	.uleb128 0xe
	.long	0x27e4
	.uleb128 0x39
	.long	.LASF459
	.byte	0xc
	.byte	0x8
	.long	0x3c5a
	.byte	0x5
	.byte	0x3
	.long	mem_screen
	.uleb128 0xe
	.long	0x2826
	.uleb128 0x9
	.long	0xa8
	.long	0x3c6f
	.uleb128 0xa
	.long	0x34
	.byte	0xb
	.byte	0
	.uleb128 0x3d
	.long	.LASF460
	.byte	0x13
	.byte	0x2
	.long	0x3c7a
	.uleb128 0xe
	.long	0x3c5f
	.uleb128 0x4e
	.string	"bm"
	.byte	0x1
	.byte	0x74
	.long	0x27d9
	.byte	0x1
	.byte	0x1
	.uleb128 0x4d
	.long	.LASF461
	.byte	0x1
	.byte	0x76
	.long	0x5e
	.byte	0x1
	.byte	0x1
	.uleb128 0x4d
	.long	.LASF462
	.byte	0x1
	.byte	0x77
	.long	0x5e
	.byte	0x1
	.byte	0x1
	.uleb128 0x4d
	.long	.LASF463
	.byte	0x1
	.byte	0x78
	.long	0x5e
	.byte	0x1
	.byte	0x1
	.uleb128 0x4d
	.long	.LASF464
	.byte	0x1
	.byte	0x79
	.long	0x5e
	.byte	0x1
	.byte	0x1
	.uleb128 0x4d
	.long	.LASF465
	.byte	0x1
	.byte	0x7a
	.long	0x5e
	.byte	0x1
	.byte	0x1
	.uleb128 0x4d
	.long	.LASF466
	.byte	0x1
	.byte	0x7b
	.long	0x5e
	.byte	0x1
	.byte	0x1
	.uleb128 0x4d
	.long	.LASF467
	.byte	0x1
	.byte	0x7c
	.long	0x5e
	.byte	0x1
	.byte	0x1
	.uleb128 0x4d
	.long	.LASF468
	.byte	0x1
	.byte	0x7d
	.long	0x5e
	.byte	0x1
	.byte	0x1
	.uleb128 0x4d
	.long	.LASF469
	.byte	0x1
	.byte	0x7f
	.long	0x5e
	.byte	0x1
	.byte	0x1
	.uleb128 0x4d
	.long	.LASF470
	.byte	0x1
	.byte	0x81
	.long	0x5e
	.byte	0x1
	.byte	0x1
	.uleb128 0x9
	.long	0x2449
	.long	0x3d1d
	.uleb128 0xa
	.long	0x34
	.byte	0x18
	.byte	0
	.uleb128 0x4d
	.long	.LASF471
	.byte	0x1
	.byte	0x85
	.long	0x3d0d
	.byte	0x1
	.byte	0x1
	.uleb128 0x9
	.long	0x288f
	.long	0x3d3a
	.uleb128 0xa
	.long	0x34
	.byte	0x18
	.byte	0
	.uleb128 0x4d
	.long	.LASF472
	.byte	0x1
	.byte	0xa6
	.long	0x3d47
	.byte	0x1
	.byte	0x1
	.uleb128 0xe
	.long	0x3d2a
	.uleb128 0x4d
	.long	.LASF448
	.byte	0xd
	.byte	0xa5
	.long	0x2ca
	.byte	0x1
	.byte	0x1
	.uleb128 0x4d
	.long	.LASF449
	.byte	0xd
	.byte	0xa6
	.long	0x2ca
	.byte	0x1
	.byte	0x1
	.uleb128 0x4d
	.long	.LASF450
	.byte	0xd
	.byte	0xa7
	.long	0x2ca
	.byte	0x1
	.byte	0x1
	.uleb128 0x4f
	.long	.LASF451
	.byte	0xe
	.byte	0x11
	.long	0xe21
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	wmxp_display
	.uleb128 0x4f
	.long	.LASF473
	.byte	0xe
	.byte	0x12
	.long	0x41f
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	wmxp_iconwin
	.uleb128 0x4f
	.long	.LASF474
	.byte	0xe
	.byte	0x12
	.long	0x41f
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	wmxp_win
	.uleb128 0x4f
	.long	.LASF452
	.byte	0xf
	.byte	0x1
	.long	0x3dbb
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	clockdigit
	.uleb128 0xe
	.long	0x3b58
	.uleb128 0x4f
	.long	.LASF453
	.byte	0xf
	.byte	0xb
	.long	0x3dd2
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	clockalpha
	.uleb128 0xe
	.long	0x3b7b
	.uleb128 0x4f
	.long	.LASF454
	.byte	0x10
	.byte	0x1
	.long	0x3b9e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	bigdigits
	.uleb128 0x4f
	.long	.LASF457
	.byte	0x12
	.byte	0x2
	.long	0x3c15
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	digits
	.uleb128 0x50
	.string	"bm"
	.byte	0x1
	.byte	0x74
	.long	0x27d9
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	bm
	.uleb128 0x4f
	.long	.LASF461
	.byte	0x1
	.byte	0x76
	.long	0x5e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	duck_enabled
	.uleb128 0x4f
	.long	.LASF462
	.byte	0x1
	.byte	0x77
	.long	0x5e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	upside_down_duck_enabled
	.uleb128 0x4f
	.long	.LASF463
	.byte	0x1
	.byte	0x78
	.long	0x5e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	cpu_enabled
	.uleb128 0x4f
	.long	.LASF464
	.byte	0x1
	.byte	0x79
	.long	0x5e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	memscreen_enabled
	.uleb128 0x4f
	.long	.LASF465
	.byte	0x1
	.byte	0x7a
	.long	0x5e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	memscreen_megabytes
	.uleb128 0x4f
	.long	.LASF466
	.byte	0x1
	.byte	0x7b
	.long	0x5e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	graph_digit_color
	.uleb128 0x4f
	.long	.LASF467
	.byte	0x1
	.byte	0x7c
	.long	0x5e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	graph_digit_warning_color
	.uleb128 0x4f
	.long	.LASF468
	.byte	0x1
	.byte	0x7d
	.long	0x5e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	pale
	.uleb128 0x4f
	.long	.LASF469
	.byte	0x1
	.byte	0x7f
	.long	0x5e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	shifttime
	.uleb128 0x4f
	.long	.LASF470
	.byte	0x1
	.byte	0x81
	.long	0x5e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	do_help
	.uleb128 0x4f
	.long	.LASF471
	.byte	0x1
	.byte	0x85
	.long	0x3d0d
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	x_resource_options
	.uleb128 0x4f
	.long	.LASF472
	.byte	0x1
	.byte	0xa6
	.long	0x3ee4
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	x_resource_extras
	.uleb128 0xe
	.long	0x3d2a
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1b
	.uleb128 0xe
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x10
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x17
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x17
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x4
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0x5
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x4
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x20
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2d
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x2e
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x30
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x31
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x32
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x33
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x34
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x35
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x36
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x37
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x38
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x39
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x3a
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x3b
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x3c
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3d
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3e
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x3f
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x40
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x41
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x42
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x43
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x44
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x45
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x46
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x47
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x48
	.uleb128 0xb
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x49
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4a
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4b
	.uleb128 0x1d
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x4c
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x4d
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x4e
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x4f
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x50
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.long	.LFB42
	.long	.LCFI0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI0
	.long	.LCFI1
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI1
	.long	.LCFI2
	.value	0x2
	.byte	0x74
	.sleb128 12
	.long	.LCFI2
	.long	.LCFI3
	.value	0x2
	.byte	0x74
	.sleb128 16
	.long	.LCFI3
	.long	.LCFI4
	.value	0x2
	.byte	0x74
	.sleb128 20
	.long	.LCFI4
	.long	.LCFI5
	.value	0x2
	.byte	0x74
	.sleb128 44
	.long	.LCFI5
	.long	.LCFI6
	.value	0x2
	.byte	0x74
	.sleb128 20
	.long	.LCFI6
	.long	.LCFI7
	.value	0x2
	.byte	0x74
	.sleb128 16
	.long	.LCFI7
	.long	.LCFI8
	.value	0x2
	.byte	0x74
	.sleb128 12
	.long	.LCFI8
	.long	.LCFI9
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI9
	.long	.LFE42
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	0
	.long	0
.LLST1:
	.long	.LVL0
	.long	.LVL2
	.value	0x1
	.byte	0x50
	.long	.LVL2
	.long	.LVL4
	.value	0x3
	.byte	0x70
	.sleb128 1
	.byte	0x9f
	.long	.LVL4
	.long	.LVL5
	.value	0x1
	.byte	0x50
	.long	.LVL5
	.long	.LVL50
	.value	0x2
	.byte	0x91
	.sleb128 -40
	.long	.LVL50
	.long	.LVL51
	.value	0x1
	.byte	0x56
	.long	.LVL51
	.long	.LVL93
	.value	0x2
	.byte	0x91
	.sleb128 -40
	.long	0
	.long	0
.LLST2:
	.long	.LVL0
	.long	.LVL6
	.value	0x1
	.byte	0x52
	.long	0
	.long	0
.LLST3:
	.long	.LVL0
	.long	.LVL3
	.value	0x1
	.byte	0x51
	.long	0
	.long	0
.LLST4:
	.long	.LVL2
	.long	.LVL4
	.value	0x2
	.byte	0x70
	.sleb128 0
	.long	.LVL4
	.long	.LVL5
	.value	0x2
	.byte	0x70
	.sleb128 -1
	.long	.LVL5
	.long	.LVL7
	.value	0x5
	.byte	0x91
	.sleb128 -40
	.byte	0x6
	.byte	0x31
	.byte	0x1c
	.long	.LVL7
	.long	.LVL8
	.value	0x1
	.byte	0x53
	.long	.LVL49
	.long	.LVL51
	.value	0x3
	.byte	0x91
	.sleb128 -40
	.byte	0x6
	.long	.LVL51
	.long	.LVL52
	.value	0x1
	.byte	0x53
	.long	.LVL93
	.long	.LVL94
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST5:
	.long	.LVL9
	.long	.LVL48
	.value	0x2
	.byte	0x91
	.sleb128 -41
	.long	.LVL53
	.long	.LVL93
	.value	0x2
	.byte	0x91
	.sleb128 -41
	.long	0
	.long	0
.LLST6:
	.long	.LVL9
	.long	.LVL48
	.value	0x8
	.byte	0x91
	.sleb128 0
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0x22
	.byte	0x4c
	.byte	0x1c
	.long	.LVL53
	.long	.LVL93
	.value	0x1
	.byte	0x56
	.long	0
	.long	0
.LLST7:
	.long	.LVL9
	.long	.LVL48
	.value	0x9
	.byte	0x91
	.sleb128 0
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0x22
	.byte	0x8
	.byte	0x20
	.byte	0x1c
	.long	.LVL53
	.long	.LVL93
	.value	0x1
	.byte	0x57
	.long	0
	.long	0
.LLST8:
	.long	.LVL9
	.long	.LVL10
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL10
	.long	.LVL11
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL11
	.long	.LVL12
	.value	0x2
	.byte	0x32
	.byte	0x9f
	.long	.LVL12
	.long	.LVL13
	.value	0x2
	.byte	0x33
	.byte	0x9f
	.long	.LVL13
	.long	.LVL14
	.value	0x2
	.byte	0x34
	.byte	0x9f
	.long	.LVL14
	.long	.LVL15
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL15
	.long	.LVL16
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL16
	.long	.LVL17
	.value	0x2
	.byte	0x32
	.byte	0x9f
	.long	.LVL17
	.long	.LVL18
	.value	0x2
	.byte	0x33
	.byte	0x9f
	.long	.LVL18
	.long	.LVL19
	.value	0x2
	.byte	0x34
	.byte	0x9f
	.long	.LVL19
	.long	.LVL20
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL20
	.long	.LVL21
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL21
	.long	.LVL22
	.value	0x2
	.byte	0x32
	.byte	0x9f
	.long	.LVL22
	.long	.LVL23
	.value	0x2
	.byte	0x33
	.byte	0x9f
	.long	.LVL23
	.long	.LVL24
	.value	0x2
	.byte	0x34
	.byte	0x9f
	.long	.LVL24
	.long	.LVL25
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL25
	.long	.LVL26
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL26
	.long	.LVL27
	.value	0x2
	.byte	0x32
	.byte	0x9f
	.long	.LVL27
	.long	.LVL28
	.value	0x2
	.byte	0x33
	.byte	0x9f
	.long	.LVL28
	.long	.LVL29
	.value	0x2
	.byte	0x34
	.byte	0x9f
	.long	.LVL29
	.long	.LVL30
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL30
	.long	.LVL31
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL31
	.long	.LVL32
	.value	0x2
	.byte	0x32
	.byte	0x9f
	.long	.LVL32
	.long	.LVL33
	.value	0x2
	.byte	0x33
	.byte	0x9f
	.long	.LVL33
	.long	.LVL34
	.value	0x2
	.byte	0x34
	.byte	0x9f
	.long	.LVL34
	.long	.LVL35
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL35
	.long	.LVL36
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL36
	.long	.LVL37
	.value	0x2
	.byte	0x32
	.byte	0x9f
	.long	.LVL37
	.long	.LVL38
	.value	0x2
	.byte	0x33
	.byte	0x9f
	.long	.LVL38
	.long	.LVL39
	.value	0x2
	.byte	0x34
	.byte	0x9f
	.long	.LVL39
	.long	.LVL40
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL40
	.long	.LVL41
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL41
	.long	.LVL42
	.value	0x2
	.byte	0x32
	.byte	0x9f
	.long	.LVL42
	.long	.LVL43
	.value	0x2
	.byte	0x33
	.byte	0x9f
	.long	.LVL43
	.long	.LVL44
	.value	0x2
	.byte	0x34
	.byte	0x9f
	.long	.LVL44
	.long	.LVL45
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL45
	.long	.LVL46
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL46
	.long	.LVL47
	.value	0x2
	.byte	0x32
	.byte	0x9f
	.long	.LVL47
	.long	.LVL48
	.value	0x2
	.byte	0x33
	.byte	0x9f
	.long	.LVL53
	.long	.LVL54
	.value	0x2
	.byte	0x33
	.byte	0x9f
	.long	.LVL54
	.long	.LVL55
	.value	0x2
	.byte	0x32
	.byte	0x9f
	.long	.LVL55
	.long	.LVL56
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL56
	.long	.LVL58
	.value	0x2
	.byte	0x32
	.byte	0x9f
	.long	.LVL58
	.long	.LVL59
	.value	0x2
	.byte	0x33
	.byte	0x9f
	.long	.LVL59
	.long	.LVL60
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL60
	.long	.LVL62
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL62
	.long	.LVL63
	.value	0x2
	.byte	0x32
	.byte	0x9f
	.long	.LVL63
	.long	.LVL64
	.value	0x2
	.byte	0x33
	.byte	0x9f
	.long	.LVL64
	.long	.LVL65
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL65
	.long	.LVL67
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL67
	.long	.LVL68
	.value	0x2
	.byte	0x32
	.byte	0x9f
	.long	.LVL68
	.long	.LVL69
	.value	0x2
	.byte	0x33
	.byte	0x9f
	.long	.LVL69
	.long	.LVL70
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL70
	.long	.LVL72
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL72
	.long	.LVL73
	.value	0x2
	.byte	0x32
	.byte	0x9f
	.long	.LVL73
	.long	.LVL74
	.value	0x2
	.byte	0x33
	.byte	0x9f
	.long	.LVL74
	.long	.LVL75
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL75
	.long	.LVL77
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL77
	.long	.LVL78
	.value	0x2
	.byte	0x32
	.byte	0x9f
	.long	.LVL78
	.long	.LVL79
	.value	0x2
	.byte	0x33
	.byte	0x9f
	.long	.LVL79
	.long	.LVL80
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL80
	.long	.LVL82
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL82
	.long	.LVL83
	.value	0x2
	.byte	0x32
	.byte	0x9f
	.long	.LVL83
	.long	.LVL84
	.value	0x2
	.byte	0x33
	.byte	0x9f
	.long	.LVL84
	.long	.LVL85
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL85
	.long	.LVL87
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL87
	.long	.LVL88
	.value	0x2
	.byte	0x32
	.byte	0x9f
	.long	.LVL88
	.long	.LVL89
	.value	0x2
	.byte	0x33
	.byte	0x9f
	.long	.LVL89
	.long	.LVL90
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL90
	.long	.LVL92
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL92
	.long	.LVL93
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	0
	.long	0
.LLST9:
	.long	.LVL9
	.long	.LVL13
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL13
	.long	.LVL18
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL18
	.long	.LVL23
	.value	0x2
	.byte	0x32
	.byte	0x9f
	.long	.LVL23
	.long	.LVL28
	.value	0x2
	.byte	0x33
	.byte	0x9f
	.long	.LVL28
	.long	.LVL33
	.value	0x2
	.byte	0x34
	.byte	0x9f
	.long	.LVL33
	.long	.LVL38
	.value	0x2
	.byte	0x35
	.byte	0x9f
	.long	.LVL38
	.long	.LVL43
	.value	0x2
	.byte	0x36
	.byte	0x9f
	.long	.LVL43
	.long	.LVL48
	.value	0x2
	.byte	0x37
	.byte	0x9f
	.long	.LVL53
	.long	.LVL55
	.value	0x2
	.byte	0x37
	.byte	0x9f
	.long	.LVL55
	.long	.LVL59
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL59
	.long	.LVL64
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL64
	.long	.LVL69
	.value	0x2
	.byte	0x32
	.byte	0x9f
	.long	.LVL69
	.long	.LVL74
	.value	0x2
	.byte	0x33
	.byte	0x9f
	.long	.LVL74
	.long	.LVL79
	.value	0x2
	.byte	0x34
	.byte	0x9f
	.long	.LVL79
	.long	.LVL84
	.value	0x2
	.byte	0x35
	.byte	0x9f
	.long	.LVL84
	.long	.LVL89
	.value	0x2
	.byte	0x36
	.byte	0x9f
	.long	.LVL89
	.long	.LVL92
	.value	0x2
	.byte	0x37
	.byte	0x9f
	.long	.LVL92
	.long	.LVL93
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	0
	.long	0
.LLST10:
	.long	.LVL9
	.long	.LVL10
	.value	0x1
	.byte	0x55
	.long	.LVL10
	.long	.LVL11
	.value	0x3
	.byte	0x75
	.sleb128 1
	.byte	0x9f
	.long	.LVL11
	.long	.LVL12
	.value	0x3
	.byte	0x75
	.sleb128 2
	.byte	0x9f
	.long	.LVL14
	.long	.LVL15
	.value	0x9
	.byte	0x71
	.sleb128 0
	.byte	0x3
	.long	.LC1
	.byte	0x22
	.byte	0x9f
	.long	.LVL15
	.long	.LVL16
	.value	0x3
	.byte	0x75
	.sleb128 1
	.byte	0x9f
	.long	.LVL19
	.long	.LVL20
	.value	0x9
	.byte	0x71
	.sleb128 0
	.byte	0x3
	.long	.LC2
	.byte	0x22
	.byte	0x9f
	.long	.LVL20
	.long	.LVL21
	.value	0x3
	.byte	0x75
	.sleb128 1
	.byte	0x9f
	.long	.LVL24
	.long	.LVL25
	.value	0x9
	.byte	0x71
	.sleb128 0
	.byte	0x3
	.long	.LC3
	.byte	0x22
	.byte	0x9f
	.long	.LVL25
	.long	.LVL26
	.value	0x3
	.byte	0x75
	.sleb128 1
	.byte	0x9f
	.long	.LVL29
	.long	.LVL30
	.value	0x9
	.byte	0x71
	.sleb128 0
	.byte	0x3
	.long	.LC4
	.byte	0x22
	.byte	0x9f
	.long	.LVL30
	.long	.LVL31
	.value	0x3
	.byte	0x75
	.sleb128 1
	.byte	0x9f
	.long	.LVL34
	.long	.LVL35
	.value	0x9
	.byte	0x71
	.sleb128 0
	.byte	0x3
	.long	.LC5
	.byte	0x22
	.byte	0x9f
	.long	.LVL35
	.long	.LVL36
	.value	0x3
	.byte	0x75
	.sleb128 1
	.byte	0x9f
	.long	.LVL39
	.long	.LVL40
	.value	0x9
	.byte	0x71
	.sleb128 0
	.byte	0x3
	.long	.LC6
	.byte	0x22
	.byte	0x9f
	.long	.LVL40
	.long	.LVL41
	.value	0x3
	.byte	0x75
	.sleb128 1
	.byte	0x9f
	.long	.LVL44
	.long	.LVL45
	.value	0x9
	.byte	0x71
	.sleb128 0
	.byte	0x3
	.long	.LC7
	.byte	0x22
	.byte	0x9f
	.long	.LVL45
	.long	.LVL46
	.value	0x3
	.byte	0x75
	.sleb128 1
	.byte	0x9f
	.long	.LVL55
	.long	.LVL56
	.value	0x3
	.byte	0x75
	.sleb128 1
	.byte	0x9f
	.long	.LVL56
	.long	.LVL57
	.value	0x3
	.byte	0x75
	.sleb128 2
	.byte	0x9f
	.long	.LVL59
	.long	.LVL60
	.value	0x1
	.byte	0x55
	.long	.LVL60
	.long	.LVL61
	.value	0x3
	.byte	0x75
	.sleb128 1
	.byte	0x9f
	.long	.LVL64
	.long	.LVL65
	.value	0x1
	.byte	0x55
	.long	.LVL65
	.long	.LVL66
	.value	0x3
	.byte	0x75
	.sleb128 1
	.byte	0x9f
	.long	.LVL69
	.long	.LVL70
	.value	0x1
	.byte	0x55
	.long	.LVL70
	.long	.LVL71
	.value	0x3
	.byte	0x75
	.sleb128 1
	.byte	0x9f
	.long	.LVL74
	.long	.LVL75
	.value	0x1
	.byte	0x55
	.long	.LVL75
	.long	.LVL76
	.value	0x3
	.byte	0x75
	.sleb128 1
	.byte	0x9f
	.long	.LVL79
	.long	.LVL80
	.value	0x1
	.byte	0x55
	.long	.LVL80
	.long	.LVL81
	.value	0x3
	.byte	0x75
	.sleb128 1
	.byte	0x9f
	.long	.LVL84
	.long	.LVL85
	.value	0x1
	.byte	0x55
	.long	.LVL85
	.long	.LVL86
	.value	0x3
	.byte	0x75
	.sleb128 1
	.byte	0x9f
	.long	.LVL89
	.long	.LVL90
	.value	0x1
	.byte	0x55
	.long	.LVL90
	.long	.LVL91
	.value	0x3
	.byte	0x75
	.sleb128 1
	.byte	0x9f
	.long	.LVL92
	.long	.LVL93
	.value	0x1
	.byte	0x55
	.long	0
	.long	0
.LLST11:
	.long	.LVL95
	.long	.LVL96
	.value	0x1
	.byte	0x50
	.long	.LVL133
	.long	.LVL134
	.value	0x1
	.byte	0x50
	.long	.LVL162
	.long	.LVL163
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST12:
	.long	.LVL97
	.long	.LVL98
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL98
	.long	.LVL99
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL99
	.long	.LVL100
	.value	0x2
	.byte	0x32
	.byte	0x9f
	.long	.LVL100
	.long	.LVL101
	.value	0x2
	.byte	0x33
	.byte	0x9f
	.long	.LVL101
	.long	.LVL102
	.value	0x2
	.byte	0x34
	.byte	0x9f
	.long	.LVL102
	.long	.LVL103
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL103
	.long	.LVL104
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL104
	.long	.LVL105
	.value	0x2
	.byte	0x32
	.byte	0x9f
	.long	.LVL105
	.long	.LVL106
	.value	0x2
	.byte	0x33
	.byte	0x9f
	.long	.LVL106
	.long	.LVL107
	.value	0x2
	.byte	0x34
	.byte	0x9f
	.long	.LVL107
	.long	.LVL108
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL108
	.long	.LVL109
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL109
	.long	.LVL110
	.value	0x2
	.byte	0x32
	.byte	0x9f
	.long	.LVL110
	.long	.LVL111
	.value	0x2
	.byte	0x33
	.byte	0x9f
	.long	.LVL111
	.long	.LVL112
	.value	0x2
	.byte	0x34
	.byte	0x9f
	.long	.LVL112
	.long	.LVL113
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL113
	.long	.LVL114
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL114
	.long	.LVL115
	.value	0x2
	.byte	0x32
	.byte	0x9f
	.long	.LVL115
	.long	.LVL116
	.value	0x2
	.byte	0x33
	.byte	0x9f
	.long	.LVL116
	.long	.LVL117
	.value	0x2
	.byte	0x34
	.byte	0x9f
	.long	.LVL117
	.long	.LVL118
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL118
	.long	.LVL119
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL119
	.long	.LVL120
	.value	0x2
	.byte	0x32
	.byte	0x9f
	.long	.LVL120
	.long	.LVL121
	.value	0x2
	.byte	0x33
	.byte	0x9f
	.long	.LVL121
	.long	.LVL122
	.value	0x2
	.byte	0x34
	.byte	0x9f
	.long	.LVL122
	.long	.LVL123
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL123
	.long	.LVL124
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL124
	.long	.LVL125
	.value	0x2
	.byte	0x32
	.byte	0x9f
	.long	.LVL125
	.long	.LVL126
	.value	0x2
	.byte	0x33
	.byte	0x9f
	.long	.LVL126
	.long	.LVL127
	.value	0x2
	.byte	0x34
	.byte	0x9f
	.long	.LVL127
	.long	.LVL128
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL128
	.long	.LVL129
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL129
	.long	.LVL130
	.value	0x2
	.byte	0x32
	.byte	0x9f
	.long	.LVL130
	.long	.LVL131
	.value	0x2
	.byte	0x33
	.byte	0x9f
	.long	.LVL131
	.long	.LVL132
	.value	0x2
	.byte	0x34
	.byte	0x9f
	.long	.LVL134
	.long	.LVL135
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL135
	.long	.LVL136
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL136
	.long	.LVL137
	.value	0x2
	.byte	0x32
	.byte	0x9f
	.long	.LVL137
	.long	.LVL138
	.value	0x2
	.byte	0x33
	.byte	0x9f
	.long	.LVL138
	.long	.LVL139
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL139
	.long	.LVL140
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL140
	.long	.LVL141
	.value	0x2
	.byte	0x32
	.byte	0x9f
	.long	.LVL141
	.long	.LVL142
	.value	0x2
	.byte	0x33
	.byte	0x9f
	.long	.LVL142
	.long	.LVL143
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL143
	.long	.LVL144
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL144
	.long	.LVL145
	.value	0x2
	.byte	0x32
	.byte	0x9f
	.long	.LVL145
	.long	.LVL146
	.value	0x2
	.byte	0x33
	.byte	0x9f
	.long	.LVL146
	.long	.LVL147
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL147
	.long	.LVL148
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL148
	.long	.LVL149
	.value	0x2
	.byte	0x32
	.byte	0x9f
	.long	.LVL149
	.long	.LVL150
	.value	0x2
	.byte	0x33
	.byte	0x9f
	.long	.LVL150
	.long	.LVL151
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL151
	.long	.LVL152
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL152
	.long	.LVL153
	.value	0x2
	.byte	0x32
	.byte	0x9f
	.long	.LVL153
	.long	.LVL154
	.value	0x2
	.byte	0x33
	.byte	0x9f
	.long	.LVL154
	.long	.LVL155
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL155
	.long	.LVL156
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL156
	.long	.LVL157
	.value	0x2
	.byte	0x32
	.byte	0x9f
	.long	.LVL157
	.long	.LVL158
	.value	0x2
	.byte	0x33
	.byte	0x9f
	.long	.LVL158
	.long	.LVL159
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL159
	.long	.LVL160
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL160
	.long	.LVL161
	.value	0x2
	.byte	0x32
	.byte	0x9f
	.long	.LVL161
	.long	.LVL162
	.value	0x2
	.byte	0x33
	.byte	0x9f
	.long	.LVL163
	.long	.LVL164
	.value	0x2
	.byte	0x34
	.byte	0x9f
	.long	.LVL164
	.long	.LVL165
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL165
	.long	.LVL166
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL166
	.long	.LVL167
	.value	0x2
	.byte	0x32
	.byte	0x9f
	.long	.LVL167
	.long	.LVL168
	.value	0x2
	.byte	0x33
	.byte	0x9f
	.long	.LVL168
	.long	.LVL169
	.value	0x2
	.byte	0x34
	.byte	0x9f
	.long	.LVL169
	.long	.LVL170
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL170
	.long	.LVL171
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL171
	.long	.LVL172
	.value	0x2
	.byte	0x32
	.byte	0x9f
	.long	.LVL172
	.long	.LVL173
	.value	0x2
	.byte	0x33
	.byte	0x9f
	.long	.LVL173
	.long	.LVL174
	.value	0x2
	.byte	0x34
	.byte	0x9f
	.long	.LVL174
	.long	.LVL175
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL175
	.long	.LVL176
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL176
	.long	.LVL177
	.value	0x2
	.byte	0x32
	.byte	0x9f
	.long	.LVL177
	.long	.LVL178
	.value	0x2
	.byte	0x33
	.byte	0x9f
	.long	.LVL178
	.long	.LVL179
	.value	0x2
	.byte	0x34
	.byte	0x9f
	.long	.LVL179
	.long	.LVL180
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL180
	.long	.LVL181
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL181
	.long	.LVL182
	.value	0x2
	.byte	0x32
	.byte	0x9f
	.long	.LVL182
	.long	.LVL183
	.value	0x2
	.byte	0x33
	.byte	0x9f
	.long	.LVL183
	.long	.LVL184
	.value	0x2
	.byte	0x34
	.byte	0x9f
	.long	.LVL184
	.long	.LVL185
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL185
	.long	.LVL186
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL186
	.long	.LVL187
	.value	0x2
	.byte	0x32
	.byte	0x9f
	.long	.LVL187
	.long	.LVL188
	.value	0x2
	.byte	0x33
	.byte	0x9f
	.long	.LVL188
	.long	.LVL189
	.value	0x2
	.byte	0x34
	.byte	0x9f
	.long	.LVL189
	.long	.LVL190
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL190
	.long	.LVL191
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL191
	.long	.LVL192
	.value	0x2
	.byte	0x32
	.byte	0x9f
	.long	.LVL192
	.long	.LVL193
	.value	0x2
	.byte	0x33
	.byte	0x9f
	.long	.LVL193
	.long	.LVL194
	.value	0x2
	.byte	0x34
	.byte	0x9f
	.long	.LVL194
	.long	.LVL195
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL195
	.long	.LVL196
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL196
	.long	.LVL197
	.value	0x2
	.byte	0x32
	.byte	0x9f
	.long	.LVL197
	.long	.LVL198
	.value	0x2
	.byte	0x33
	.byte	0x9f
	.long	.LVL198
	.long	.LVL199
	.value	0x2
	.byte	0x34
	.byte	0x9f
	.long	.LVL199
	.long	.LVL200
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL200
	.long	.LVL201
	.value	0x2
	.byte	0x33
	.byte	0x9f
	.long	.LVL201
	.long	.LVL202
	.value	0x2
	.byte	0x32
	.byte	0x9f
	.long	.LVL202
	.long	.LVL203
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL203
	.long	.LVL204
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL204
	.long	.LVL205
	.value	0x2
	.byte	0x33
	.byte	0x9f
	.long	.LVL205
	.long	.LVL206
	.value	0x2
	.byte	0x32
	.byte	0x9f
	.long	.LVL206
	.long	.LVL207
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL207
	.long	.LVL208
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL208
	.long	.LVL209
	.value	0x2
	.byte	0x33
	.byte	0x9f
	.long	.LVL209
	.long	.LVL210
	.value	0x2
	.byte	0x32
	.byte	0x9f
	.long	.LVL210
	.long	.LVL211
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL211
	.long	.LVL212
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL212
	.long	.LVL213
	.value	0x2
	.byte	0x32
	.byte	0x9f
	.long	.LVL213
	.long	.LVL214
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL214
	.long	.LVL215
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL215
	.long	.LVL216
	.value	0x2
	.byte	0x33
	.byte	0x9f
	.long	.LVL216
	.long	.LVL217
	.value	0x2
	.byte	0x32
	.byte	0x9f
	.long	.LVL217
	.long	.LVL218
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL218
	.long	.LVL219
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL219
	.long	.LVL220
	.value	0x2
	.byte	0x33
	.byte	0x9f
	.long	.LVL220
	.long	.LVL221
	.value	0x2
	.byte	0x32
	.byte	0x9f
	.long	.LVL221
	.long	.LVL222
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL222
	.long	.LVL223
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL223
	.long	.LVL224
	.value	0x2
	.byte	0x33
	.byte	0x9f
	.long	.LVL224
	.long	.LVL225
	.value	0x2
	.byte	0x32
	.byte	0x9f
	.long	.LVL225
	.long	.LFE49
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.long	0
	.long	0
.LLST13:
	.long	.LVL102
	.long	.LVL107
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL107
	.long	.LVL112
	.value	0x2
	.byte	0x32
	.byte	0x9f
	.long	.LVL112
	.long	.LVL117
	.value	0x2
	.byte	0x33
	.byte	0x9f
	.long	.LVL117
	.long	.LVL122
	.value	0x2
	.byte	0x34
	.byte	0x9f
	.long	.LVL122
	.long	.LVL127
	.value	0x2
	.byte	0x35
	.byte	0x9f
	.long	.LVL127
	.long	.LVL132
	.value	0x2
	.byte	0x36
	.byte	0x9f
	.long	.LVL138
	.long	.LVL142
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL142
	.long	.LVL146
	.value	0x2
	.byte	0x32
	.byte	0x9f
	.long	.LVL146
	.long	.LVL150
	.value	0x2
	.byte	0x33
	.byte	0x9f
	.long	.LVL150
	.long	.LVL154
	.value	0x2
	.byte	0x34
	.byte	0x9f
	.long	.LVL154
	.long	.LVL158
	.value	0x2
	.byte	0x35
	.byte	0x9f
	.long	.LVL158
	.long	.LVL162
	.value	0x2
	.byte	0x36
	.byte	0x9f
	.long	.LVL163
	.long	.LVL164
	.value	0x2
	.byte	0x36
	.byte	0x9f
	.long	.LVL169
	.long	.LVL174
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL174
	.long	.LVL179
	.value	0x2
	.byte	0x32
	.byte	0x9f
	.long	.LVL179
	.long	.LVL184
	.value	0x2
	.byte	0x33
	.byte	0x9f
	.long	.LVL184
	.long	.LVL189
	.value	0x2
	.byte	0x34
	.byte	0x9f
	.long	.LVL189
	.long	.LVL194
	.value	0x2
	.byte	0x35
	.byte	0x9f
	.long	.LVL194
	.long	.LVL200
	.value	0x2
	.byte	0x36
	.byte	0x9f
	.long	.LVL200
	.long	.LVL204
	.value	0x2
	.byte	0x35
	.byte	0x9f
	.long	.LVL204
	.long	.LVL208
	.value	0x2
	.byte	0x34
	.byte	0x9f
	.long	.LVL208
	.long	.LVL211
	.value	0x2
	.byte	0x33
	.byte	0x9f
	.long	.LVL212
	.long	.LVL214
	.value	0x2
	.byte	0x36
	.byte	0x9f
	.long	.LVL214
	.long	.LVL215
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL218
	.long	.LVL219
	.value	0x2
	.byte	0x33
	.byte	0x9f
	.long	.LVL219
	.long	.LVL223
	.value	0x2
	.byte	0x32
	.byte	0x9f
	.long	.LVL223
	.long	.LFE49
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.long	0
	.long	0
.LLST14:
	.long	.LFB50
	.long	.LCFI10
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI10
	.long	.LCFI11
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI11
	.long	.LCFI12
	.value	0x2
	.byte	0x74
	.sleb128 12
	.long	.LCFI12
	.long	.LCFI13
	.value	0x2
	.byte	0x74
	.sleb128 16
	.long	.LCFI13
	.long	.LCFI14
	.value	0x2
	.byte	0x74
	.sleb128 12
	.long	.LCFI14
	.long	.LCFI15
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI15
	.long	.LCFI16
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI16
	.long	.LCFI17
	.value	0x2
	.byte	0x74
	.sleb128 16
	.long	.LCFI17
	.long	.LCFI18
	.value	0x2
	.byte	0x74
	.sleb128 12
	.long	.LCFI18
	.long	.LCFI19
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI19
	.long	.LFE50
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	0
	.long	0
.LLST15:
	.long	.LVL226
	.long	.LVL228
	.value	0x1
	.byte	0x50
	.long	.LVL320
	.long	.LFE50
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST16:
	.long	.LVL226
	.long	.LVL228
	.value	0x1
	.byte	0x52
	.long	.LVL320
	.long	.LFE50
	.value	0x1
	.byte	0x52
	.long	0
	.long	0
.LLST17:
	.long	.LVL228
	.long	.LVL235
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL235
	.long	.LVL242
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL242
	.long	.LVL249
	.value	0x2
	.byte	0x32
	.byte	0x9f
	.long	.LVL249
	.long	.LVL256
	.value	0x2
	.byte	0x33
	.byte	0x9f
	.long	.LVL256
	.long	.LVL263
	.value	0x2
	.byte	0x34
	.byte	0x9f
	.long	.LVL263
	.long	.LVL270
	.value	0x2
	.byte	0x35
	.byte	0x9f
	.long	.LVL270
	.long	.LVL277
	.value	0x2
	.byte	0x36
	.byte	0x9f
	.long	.LVL277
	.long	.LVL284
	.value	0x2
	.byte	0x37
	.byte	0x9f
	.long	.LVL284
	.long	.LVL291
	.value	0x2
	.byte	0x38
	.byte	0x9f
	.long	.LVL291
	.long	.LVL298
	.value	0x2
	.byte	0x39
	.byte	0x9f
	.long	.LVL298
	.long	.LVL305
	.value	0x2
	.byte	0x3a
	.byte	0x9f
	.long	.LVL305
	.long	.LVL312
	.value	0x2
	.byte	0x3b
	.byte	0x9f
	.long	.LVL312
	.long	.LVL319
	.value	0x2
	.byte	0x3c
	.byte	0x9f
	.long	.LVL319
	.long	.LVL320
	.value	0x2
	.byte	0x3d
	.byte	0x9f
	.long	0
	.long	0
.LLST18:
	.long	.LVL229
	.long	.LVL234
	.value	0x1
	.byte	0x51
	.long	.LVL236
	.long	.LVL241
	.value	0x1
	.byte	0x51
	.long	.LVL243
	.long	.LVL248
	.value	0x1
	.byte	0x51
	.long	.LVL250
	.long	.LVL255
	.value	0x1
	.byte	0x51
	.long	.LVL257
	.long	.LVL262
	.value	0x1
	.byte	0x51
	.long	.LVL264
	.long	.LVL269
	.value	0x1
	.byte	0x51
	.long	.LVL271
	.long	.LVL276
	.value	0x1
	.byte	0x51
	.long	.LVL278
	.long	.LVL283
	.value	0x1
	.byte	0x51
	.long	.LVL285
	.long	.LVL290
	.value	0x1
	.byte	0x51
	.long	.LVL292
	.long	.LVL297
	.value	0x1
	.byte	0x51
	.long	.LVL299
	.long	.LVL304
	.value	0x1
	.byte	0x51
	.long	.LVL306
	.long	.LVL311
	.value	0x1
	.byte	0x51
	.long	.LVL313
	.long	.LVL318
	.value	0x1
	.byte	0x51
	.long	0
	.long	0
.LLST19:
	.long	.LFB53
	.long	.LCFI20
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI20
	.long	.LCFI21
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI21
	.long	.LCFI22
	.value	0x2
	.byte	0x74
	.sleb128 12
	.long	.LCFI22
	.long	.LCFI23
	.value	0x2
	.byte	0x74
	.sleb128 16
	.long	.LCFI23
	.long	.LCFI24
	.value	0x2
	.byte	0x74
	.sleb128 20
	.long	.LCFI24
	.long	.LCFI25
	.value	0x3
	.byte	0x74
	.sleb128 84
	.long	.LCFI25
	.long	.LCFI26
	.value	0x2
	.byte	0x74
	.sleb128 20
	.long	.LCFI26
	.long	.LCFI27
	.value	0x2
	.byte	0x74
	.sleb128 16
	.long	.LCFI27
	.long	.LCFI28
	.value	0x2
	.byte	0x74
	.sleb128 12
	.long	.LCFI28
	.long	.LCFI29
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI29
	.long	.LCFI30
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI30
	.long	.LFE53
	.value	0x3
	.byte	0x74
	.sleb128 84
	.long	0
	.long	0
.LLST20:
	.long	.LVL321
	.long	.LVL323
	.value	0x1
	.byte	0x50
	.long	.LVL323
	.long	.LFE53
	.value	0x2
	.byte	0x91
	.sleb128 -44
	.long	0
	.long	0
.LLST21:
	.long	.LVL321
	.long	.LVL327
	.value	0x1
	.byte	0x52
	.long	.LVL327
	.long	.LFE53
	.value	0x2
	.byte	0x91
	.sleb128 -48
	.long	0
	.long	0
.LLST22:
	.long	.LVL321
	.long	.LVL325
	.value	0x1
	.byte	0x51
	.long	.LVL325
	.long	.LFE53
	.value	0x2
	.byte	0x91
	.sleb128 -36
	.long	0
	.long	0
.LLST23:
	.long	.LVL330
	.long	.LVL333
	.value	0x2
	.byte	0x91
	.sleb128 -60
	.long	.LVL333
	.long	.LVL345
	.value	0x1
	.byte	0x50
	.long	.LVL345
	.long	.LVL346
	.value	0x3
	.byte	0x70
	.sleb128 -1
	.byte	0x9f
	.long	.LVL346
	.long	.LVL347
	.value	0x1
	.byte	0x50
	.long	.LVL349
	.long	.LVL351
	.value	0x2
	.byte	0x91
	.sleb128 -60
	.long	0
	.long	0
.LLST24:
	.long	.LVL327
	.long	.LVL328
	.value	0x1
	.byte	0x50
	.long	.LVL328
	.long	.LVL348
	.value	0x3
	.byte	0x91
	.sleb128 -68
	.long	.LVL349
	.long	.LVL363
	.value	0x3
	.byte	0x91
	.sleb128 -68
	.long	0
	.long	0
.LLST25:
	.long	.LVL333
	.long	.LVL337
	.value	0x1
	.byte	0x50
	.long	.LVL337
	.long	.LVL338
	.value	0x3
	.byte	0x70
	.sleb128 -1
	.byte	0x9f
	.long	.LVL338
	.long	.LVL345
	.value	0x1
	.byte	0x50
	.long	.LVL345
	.long	.LVL347
	.value	0x3
	.byte	0x70
	.sleb128 -1
	.byte	0x9f
	.long	0
	.long	0
.LLST26:
	.long	.LVL330
	.long	.LVL331
	.value	0x1
	.byte	0x50
	.long	.LVL349
	.long	.LVL350
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST27:
	.long	.LVL324
	.long	.LVL326
	.value	0x2
	.byte	0x42
	.byte	0x9f
	.long	.LVL326
	.long	.LVL327
	.value	0x3
	.byte	0x91
	.sleb128 -80
	.long	.LVL363
	.long	.LVL364
	.value	0x2
	.byte	0x42
	.byte	0x9f
	.long	0
	.long	0
.LLST28:
	.long	.LVL326
	.long	.LVL327
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL327
	.long	.LVL363
	.value	0x2
	.byte	0x91
	.sleb128 -60
	.long	.LVL363
	.long	.LVL364
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	0
	.long	0
.LLST29:
	.long	.LVL322
	.long	.LVL324
	.value	0x2
	.byte	0x41
	.byte	0x9f
	.long	.LVL324
	.long	.LVL364
	.value	0x2
	.byte	0x91
	.sleb128 -52
	.long	.LVL365
	.long	.LFE53
	.value	0x2
	.byte	0x41
	.byte	0x9f
	.long	0
	.long	0
.LLST30:
	.long	.LVL321
	.long	.LVL324
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL364
	.long	.LVL365
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL365
	.long	.LFE53
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST31:
	.long	.LVL333
	.long	.LVL337
	.value	0xd
	.byte	0x70
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0x3
	.long	duck_data
	.byte	0x22
	.long	.LVL337
	.long	.LVL338
	.value	0xd
	.byte	0x70
	.sleb128 -1
	.byte	0x32
	.byte	0x24
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0x3
	.long	duck_data
	.byte	0x22
	.long	.LVL339
	.long	.LVL345
	.value	0xd
	.byte	0x70
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0x3
	.long	duck_data
	.byte	0x22
	.long	.LVL345
	.long	.LVL347
	.value	0xd
	.byte	0x70
	.sleb128 -1
	.byte	0x32
	.byte	0x24
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0x3
	.long	duck_data
	.byte	0x22
	.long	.LVL351
	.long	.LVL353
	.value	0xb
	.byte	0x72
	.sleb128 0
	.byte	0x76
	.sleb128 0
	.byte	0x22
	.byte	0x3
	.long	duck_data+68
	.byte	0x22
	.long	.LVL353
	.long	.LVL354
	.value	0xb
	.byte	0x72
	.sleb128 0
	.byte	0x76
	.sleb128 0
	.byte	0x22
	.byte	0x3
	.long	duck_data+72
	.byte	0x22
	.long	.LVL355
	.long	.LVL363
	.value	0xb
	.byte	0x72
	.sleb128 0
	.byte	0x76
	.sleb128 0
	.byte	0x22
	.byte	0x3
	.long	duck_data+68
	.byte	0x22
	.long	0
	.long	0
.LLST32:
	.long	.LVL329
	.long	.LVL332
	.value	0x6
	.byte	0x73
	.sleb128 0
	.byte	0x8
	.byte	0x3a
	.byte	0x1e
	.byte	0x9f
	.long	.LVL332
	.long	.LVL348
	.value	0x8
	.byte	0x91
	.sleb128 -76
	.byte	0x6
	.byte	0x8
	.byte	0x3a
	.byte	0x1e
	.byte	0x9f
	.long	.LVL349
	.long	.LVL351
	.value	0x6
	.byte	0x73
	.sleb128 0
	.byte	0x8
	.byte	0x3a
	.byte	0x1e
	.byte	0x9f
	.long	.LVL351
	.long	.LVL363
	.value	0x8
	.byte	0x91
	.sleb128 -76
	.byte	0x6
	.byte	0x8
	.byte	0x3a
	.byte	0x1e
	.byte	0x9f
	.long	0
	.long	0
.LLST33:
	.long	.LVL333
	.long	.LVL334
	.value	0x1
	.byte	0x55
	.long	.LVL340
	.long	.LVL342
	.value	0x8
	.byte	0x76
	.sleb128 0
	.byte	0x3
	.long	duck_cmap
	.byte	0x22
	.long	.LVL342
	.long	.LVL347
	.value	0x1
	.byte	0x55
	.long	.LVL351
	.long	.LVL352
	.value	0x1
	.byte	0x55
	.long	.LVL356
	.long	.LVL357
	.value	0x2
	.byte	0x73
	.sleb128 0
	.long	.LVL357
	.long	.LVL358
	.value	0x8
	.byte	0x77
	.sleb128 0
	.byte	0x3
	.long	duck_cmap
	.byte	0x22
	.long	.LVL358
	.long	.LVL361
	.value	0x1
	.byte	0x55
	.long	0
	.long	0
.LLST34:
	.long	.LVL333
	.long	.LVL335
	.value	0x1
	.byte	0x57
	.long	.LVL341
	.long	.LVL342
	.value	0x8
	.byte	0x76
	.sleb128 0
	.byte	0x3
	.long	duck_cmap+1
	.byte	0x22
	.long	.LVL342
	.long	.LVL347
	.value	0x1
	.byte	0x57
	.long	.LVL351
	.long	.LVL352
	.value	0x1
	.byte	0x57
	.long	.LVL358
	.long	.LVL362
	.value	0x1
	.byte	0x57
	.long	0
	.long	0
.LLST35:
	.long	.LVL333
	.long	.LVL336
	.value	0x3
	.byte	0x91
	.sleb128 -69
	.long	.LVL343
	.long	.LVL344
	.value	0x1
	.byte	0x51
	.long	.LVL344
	.long	.LVL347
	.value	0x3
	.byte	0x91
	.sleb128 -69
	.long	.LVL351
	.long	.LVL352
	.value	0x3
	.byte	0x91
	.sleb128 -69
	.long	.LVL359
	.long	.LVL360
	.value	0x1
	.byte	0x53
	.long	.LVL360
	.long	.LVL363
	.value	0x3
	.byte	0x91
	.sleb128 -69
	.long	0
	.long	0
.LLST36:
	.long	.LFB33
	.long	.LCFI31
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI31
	.long	.LCFI32
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI32
	.long	.LCFI33
	.value	0x2
	.byte	0x74
	.sleb128 12
	.long	.LCFI33
	.long	.LCFI34
	.value	0x2
	.byte	0x74
	.sleb128 16
	.long	.LCFI34
	.long	.LCFI35
	.value	0x2
	.byte	0x74
	.sleb128 20
	.long	.LCFI35
	.long	.LCFI36
	.value	0x4
	.byte	0x74
	.sleb128 8320
	.long	.LCFI36
	.long	.LCFI37
	.value	0x2
	.byte	0x74
	.sleb128 20
	.long	.LCFI37
	.long	.LCFI38
	.value	0x2
	.byte	0x74
	.sleb128 16
	.long	.LCFI38
	.long	.LCFI39
	.value	0x2
	.byte	0x74
	.sleb128 12
	.long	.LCFI39
	.long	.LCFI40
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI40
	.long	.LCFI41
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI41
	.long	.LFE33
	.value	0x4
	.byte	0x74
	.sleb128 8320
	.long	0
	.long	0
.LLST37:
	.long	.LVL366
	.long	.LVL367
	.value	0x1
	.byte	0x50
	.long	.LVL367
	.long	.LFE33
	.value	0x4
	.byte	0x91
	.sleb128 -8268
	.long	0
	.long	0
.LLST38:
	.long	.LVL368
	.long	.LVL369
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL370
	.long	.LVL371
	.value	0x1
	.byte	0x57
	.long	.LVL384
	.long	.LVL385
	.value	0x1
	.byte	0x57
	.long	0
	.long	0
.LLST39:
	.long	.LVL372
	.long	.LVL379
	.value	0x1
	.byte	0x50
	.long	.LVL381
	.long	.LVL383
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST40:
	.long	.LVL379
	.long	.LVL380
	.value	0xe
	.byte	0x70
	.sleb128 0
	.byte	0x48
	.byte	0x24
	.byte	0x48
	.byte	0x26
	.byte	0x32
	.byte	0x24
	.byte	0x91
	.sleb128 -8264
	.byte	0x6
	.byte	0x22
	.long	0
	.long	0
.LLST41:
	.long	.LFB45
	.long	.LCFI42
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI42
	.long	.LCFI43
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI43
	.long	.LCFI44
	.value	0x2
	.byte	0x74
	.sleb128 12
	.long	.LCFI44
	.long	.LCFI45
	.value	0x2
	.byte	0x74
	.sleb128 16
	.long	.LCFI45
	.long	.LCFI46
	.value	0x3
	.byte	0x74
	.sleb128 64
	.long	.LCFI46
	.long	.LCFI47
	.value	0x2
	.byte	0x74
	.sleb128 16
	.long	.LCFI47
	.long	.LCFI48
	.value	0x2
	.byte	0x74
	.sleb128 12
	.long	.LCFI48
	.long	.LCFI49
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI49
	.long	.LCFI50
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI50
	.long	.LCFI51
	.value	0x3
	.byte	0x74
	.sleb128 64
	.long	.LCFI51
	.long	.LCFI52
	.value	0x2
	.byte	0x74
	.sleb128 16
	.long	.LCFI52
	.long	.LCFI53
	.value	0x2
	.byte	0x74
	.sleb128 12
	.long	.LCFI53
	.long	.LCFI54
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI54
	.long	.LCFI55
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI55
	.long	.LFE45
	.value	0x3
	.byte	0x74
	.sleb128 64
	.long	0
	.long	0
.LLST42:
	.long	.LVL386
	.long	.LVL387
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL387
	.long	.LVL388
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL388
	.long	.LVL389
	.value	0x2
	.byte	0x32
	.byte	0x9f
	.long	.LVL389
	.long	.LVL390
	.value	0x2
	.byte	0x33
	.byte	0x9f
	.long	0
	.long	0
.LLST43:
	.long	.LFB59
	.long	.LCFI56
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI56
	.long	.LCFI57
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI57
	.long	.LCFI58
	.value	0x2
	.byte	0x74
	.sleb128 12
	.long	.LCFI58
	.long	.LCFI59
	.value	0x2
	.byte	0x74
	.sleb128 16
	.long	.LCFI59
	.long	.LCFI60
	.value	0x2
	.byte	0x74
	.sleb128 20
	.long	.LCFI60
	.long	.LCFI61
	.value	0x2
	.byte	0x74
	.sleb128 32
	.long	.LCFI61
	.long	.LCFI62
	.value	0x2
	.byte	0x74
	.sleb128 20
	.long	.LCFI62
	.long	.LCFI63
	.value	0x2
	.byte	0x74
	.sleb128 16
	.long	.LCFI63
	.long	.LCFI64
	.value	0x2
	.byte	0x74
	.sleb128 12
	.long	.LCFI64
	.long	.LCFI65
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI65
	.long	.LFE59
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	0
	.long	0
.LLST44:
	.long	.LVL391
	.long	.LVL393
	.value	0x1
	.byte	0x50
	.long	.LVL393
	.long	.LVL423
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST45:
	.long	.LVL391
	.long	.LVL392
	.value	0x1
	.byte	0x52
	.long	.LVL392
	.long	.LVL398
	.value	0x1
	.byte	0x56
	.long	.LVL398
	.long	.LFE59
	.value	0x2
	.byte	0x91
	.sleb128 -28
	.long	0
	.long	0
.LLST46:
	.long	.LVL391
	.long	.LVL393
	.value	0x1
	.byte	0x51
	.long	.LVL393
	.long	.LFE59
	.value	0x2
	.byte	0x91
	.sleb128 -24
	.long	0
	.long	0
.LLST47:
	.long	.LVL391
	.long	.LVL393
	.value	0x3
	.byte	0x8
	.byte	0x64
	.byte	0x9f
	.long	.LVL393
	.long	.LVL399
	.value	0x1
	.byte	0x51
	.long	.LVL399
	.long	.LVL422
	.value	0x2
	.byte	0x74
	.sleb128 0
	.long	.LVL422
	.long	.LFE59
	.value	0x2
	.byte	0x91
	.sleb128 -32
	.long	0
	.long	0
.LLST48:
	.long	.LVL391
	.long	.LVL393
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL395
	.long	.LVL397
	.value	0x1
	.byte	0x52
	.long	.LVL400
	.long	.LVL401
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL405
	.long	.LVL406
	.value	0x1
	.byte	0x52
	.long	.LVL410
	.long	.LVL411
	.value	0x1
	.byte	0x52
	.long	.LVL413
	.long	.LVL415
	.value	0x7
	.byte	0x74
	.sleb128 0
	.byte	0x6
	.byte	0x8
	.byte	0x64
	.byte	0x1c
	.byte	0x9f
	.long	.LVL415
	.long	.LVL424
	.value	0x1
	.byte	0x56
	.long	0
	.long	0
.LLST49:
	.long	.LVL396
	.long	.LVL399
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL412
	.long	.LVL414
	.value	0x1
	.byte	0x56
	.long	.LVL415
	.long	.LVL416
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	0
	.long	0
.LLST50:
	.long	.LVL401
	.long	.LVL404
	.value	0x1
	.byte	0x56
	.long	0
	.long	0
.LLST52:
	.long	.LVL407
	.long	.LVL411
	.value	0x1
	.byte	0x56
	.long	0
	.long	0
.LLST54:
	.long	.LFB35
	.long	.LCFI66
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI66
	.long	.LCFI67
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI67
	.long	.LFE35
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0
	.long	0
.LLST55:
	.long	.LVL426
	.long	.LVL427-1
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST56:
	.long	.LVL425
	.long	.LVL442
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL443
	.long	.LVL569
	.value	0x2
	.byte	0x74
	.sleb128 40
	.long	.LVL569
	.long	.LVL570
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL570
	.long	.LFE35
	.value	0x2
	.byte	0x74
	.sleb128 40
	.long	0
	.long	0
.LLST57:
	.long	.LVL428
	.long	.LVL429
	.value	0x1
	.byte	0x50
	.long	.LVL429
	.long	.LFE35
	.value	0x3
	.byte	0x74
	.sleb128 536
	.long	0
	.long	0
.LLST58:
	.long	.LVL432
	.long	.LVL433-1
	.value	0x1
	.byte	0x52
	.long	0
	.long	0
.LLST59:
	.long	.LVL439
	.long	.LVL440
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL440
	.long	.LVL442
	.value	0x1
	.byte	0x52
	.long	0
	.long	0
.LLST60:
	.long	.LVL434
	.long	.LVL435
	.value	0xa
	.byte	0x9e
	.uleb128 0x8
	.quad	0
	.long	.LVL435
	.long	.LFE35
	.value	0x2
	.byte	0x74
	.sleb128 48
	.long	0
	.long	0
.LLST61:
	.long	.LVL434
	.long	.LVL437
	.value	0xa
	.byte	0x9e
	.uleb128 0x8
	.quad	0
	.long	.LVL437
	.long	.LVL442
	.value	0x6
	.byte	0x56
	.byte	0x93
	.uleb128 0x4
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.long	0
	.long	0
.LLST62:
	.long	.LVL444
	.long	.LVL553
	.value	0x2
	.byte	0x74
	.sleb128 40
	.long	.LVL554
	.long	.LVL569
	.value	0x2
	.byte	0x74
	.sleb128 40
	.long	.LVL570
	.long	.LVL572
	.value	0x2
	.byte	0x74
	.sleb128 40
	.long	0
	.long	0
.LLST63:
	.long	.LVL445
	.long	.LVL446-1
	.value	0x5
	.byte	0x3
	.long	bm+31356
	.long	.LVL446-1
	.long	.LVL553
	.value	0x2
	.byte	0x74
	.sleb128 56
	.long	.LVL554
	.long	.LVL569
	.value	0x2
	.byte	0x74
	.sleb128 56
	.long	.LVL570
	.long	.LVL572
	.value	0x2
	.byte	0x74
	.sleb128 56
	.long	0
	.long	0
.LLST64:
	.long	.LVL447
	.long	.LVL448
	.value	0x1
	.byte	0x50
	.long	.LVL448
	.long	.LVL553
	.value	0x2
	.byte	0x74
	.sleb128 44
	.long	.LVL554
	.long	.LVL569
	.value	0x2
	.byte	0x74
	.sleb128 44
	.long	.LVL570
	.long	.LVL572
	.value	0x2
	.byte	0x74
	.sleb128 44
	.long	0
	.long	0
.LLST65:
	.long	.LVL450
	.long	.LVL451
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL452
	.long	.LVL453
	.value	0x1
	.byte	0x50
	.long	.LVL456
	.long	.LVL457
	.value	0x1
	.byte	0x52
	.long	.LVL458
	.long	.LVL460
	.value	0x1
	.byte	0x52
	.long	.LVL468
	.long	.LVL471
	.value	0x1
	.byte	0x57
	.long	.LVL554
	.long	.LVL555
	.value	0x1
	.byte	0x57
	.long	0
	.long	0
.LLST66:
	.long	.LVL464
	.long	.LVL465
	.value	0x2
	.byte	0x74
	.sleb128 48
	.long	.LVL465
	.long	.LVL469
	.value	0x1
	.byte	0x50
	.long	.LVL472
	.long	.LVL473
	.value	0x1
	.byte	0x53
	.long	.LVL570
	.long	.LVL571
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST67:
	.long	.LVL449
	.long	.LVL453
	.value	0x6
	.byte	0xc
	.long	0x3a000
	.byte	0x9f
	.long	.LVL455
	.long	.LVL457
	.value	0x1
	.byte	0x57
	.long	.LVL458
	.long	.LVL459
	.value	0x1
	.byte	0x57
	.long	0
	.long	0
.LLST68:
	.long	.LVL449
	.long	.LVL453
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL454
	.long	.LVL457
	.value	0x1
	.byte	0x53
	.long	.LVL458
	.long	.LVL462
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST69:
	.long	.LVL461
	.long	.LVL463
	.value	0x1
	.byte	0x57
	.long	.LVL463
	.long	.LVL553
	.value	0x2
	.byte	0x74
	.sleb128 48
	.long	.LVL554
	.long	.LVL569
	.value	0x2
	.byte	0x74
	.sleb128 48
	.long	.LVL570
	.long	.LVL572
	.value	0x2
	.byte	0x74
	.sleb128 48
	.long	0
	.long	0
.LLST70:
	.long	.LVL462
	.long	.LVL470
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST71:
	.long	.LVL445
	.long	.LVL462
	.value	0x3
	.byte	0x8
	.byte	0x3a
	.byte	0x9f
	.long	.LVL462
	.long	.LVL463
	.value	0x1
	.byte	0x57
	.long	.LVL463
	.long	.LVL553
	.value	0x2
	.byte	0x74
	.sleb128 48
	.long	.LVL554
	.long	.LVL569
	.value	0x2
	.byte	0x74
	.sleb128 48
	.long	.LVL570
	.long	.LVL572
	.value	0x2
	.byte	0x74
	.sleb128 48
	.long	0
	.long	0
.LLST72:
	.long	.LVL474
	.long	.LVL475-1
	.value	0x1
	.byte	0x52
	.long	.LVL555
	.long	.LVL557
	.value	0x1
	.byte	0x52
	.long	.LVL559
	.long	.LVL560-1
	.value	0x1
	.byte	0x52
	.long	.LVL565
	.long	.LVL566
	.value	0x1
	.byte	0x52
	.long	0
	.long	0
.LLST73:
	.long	.LVL476
	.long	.LVL527
	.value	0x2
	.byte	0x74
	.sleb128 40
	.long	.LVL537
	.long	.LVL553
	.value	0x2
	.byte	0x74
	.sleb128 40
	.long	.LVL561
	.long	.LVL565
	.value	0x2
	.byte	0x74
	.sleb128 40
	.long	.LVL566
	.long	.LVL569
	.value	0x2
	.byte	0x74
	.sleb128 40
	.long	.LVL571
	.long	.LVL572
	.value	0x2
	.byte	0x74
	.sleb128 40
	.long	0
	.long	0
.LLST74:
	.long	.LVL476
	.long	.LVL477
	.value	0x2
	.byte	0x74
	.sleb128 44
	.long	.LVL478
	.long	.LVL480
	.value	0x1
	.byte	0x53
	.long	.LVL480
	.long	.LVL501
	.value	0x2
	.byte	0x74
	.sleb128 44
	.long	.LVL537
	.long	.LVL538
	.value	0x1
	.byte	0x53
	.long	.LVL538
	.long	.LVL552
	.value	0x2
	.byte	0x74
	.sleb128 44
	.long	.LVL561
	.long	.LVL565
	.value	0x2
	.byte	0x74
	.sleb128 44
	.long	.LVL566
	.long	.LVL569
	.value	0x2
	.byte	0x74
	.sleb128 44
	.long	0
	.long	0
.LLST75:
	.long	.LVL502
	.long	.LVL503
	.value	0x3
	.byte	0x8
	.byte	0x4a
	.byte	0x9f
	.long	0
	.long	0
.LLST76:
	.long	.LVL479
	.long	.LVL480
	.value	0x1
	.byte	0x52
	.long	.LVL480
	.long	.LVL501
	.value	0x2
	.byte	0x74
	.sleb128 56
	.long	.LVL537
	.long	.LVL538
	.value	0x1
	.byte	0x52
	.long	.LVL538
	.long	.LVL552
	.value	0x2
	.byte	0x74
	.sleb128 56
	.long	.LVL561
	.long	.LVL565
	.value	0x2
	.byte	0x74
	.sleb128 56
	.long	.LVL566
	.long	.LVL569
	.value	0x2
	.byte	0x74
	.sleb128 56
	.long	0
	.long	0
.LLST77:
	.long	.LVL547
	.long	.LVL549
	.value	0x2
	.byte	0x45
	.byte	0x9f
	.long	.LVL549
	.long	.LVL551
	.value	0x2
	.byte	0x44
	.byte	0x9f
	.long	.LVL566
	.long	.LVL567
	.value	0x2
	.byte	0x44
	.byte	0x9f
	.long	0
	.long	0
.LLST78:
	.long	.LVL548
	.long	.LVL551
	.value	0x2
	.byte	0x74
	.sleb128 60
	.long	.LVL566
	.long	.LVL567
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST79:
	.long	.LVL549
	.long	.LVL550
	.value	0x1
	.byte	0x51
	.long	.LVL550
	.long	.LVL551
	.value	0x3
	.byte	0x71
	.sleb128 -20
	.byte	0x9f
	.long	.LVL566
	.long	.LVL567
	.value	0x1
	.byte	0x51
	.long	0
	.long	0
.LLST80:
	.long	.LVL542
	.long	.LVL544
	.value	0x2
	.byte	0x45
	.byte	0x9f
	.long	.LVL544
	.long	.LVL546
	.value	0x2
	.byte	0x44
	.byte	0x9f
	.long	.LVL561
	.long	.LVL562
	.value	0x2
	.byte	0x44
	.byte	0x9f
	.long	0
	.long	0
.LLST81:
	.long	.LVL543
	.long	.LVL546
	.value	0x2
	.byte	0x74
	.sleb128 60
	.long	.LVL561
	.long	.LVL562
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST82:
	.long	.LVL544
	.long	.LVL545
	.value	0x1
	.byte	0x51
	.long	.LVL545
	.long	.LVL546
	.value	0x3
	.byte	0x71
	.sleb128 -20
	.byte	0x9f
	.long	.LVL561
	.long	.LVL562
	.value	0x1
	.byte	0x51
	.long	0
	.long	0
.LLST83:
	.long	.LVL480
	.long	.LVL482
	.value	0x2
	.byte	0x45
	.byte	0x9f
	.long	.LVL482
	.long	.LVL483
	.value	0x2
	.byte	0x44
	.byte	0x9f
	.long	.LVL568
	.long	.LVL569
	.value	0x2
	.byte	0x44
	.byte	0x9f
	.long	0
	.long	0
.LLST84:
	.long	.LVL481
	.long	.LVL483
	.value	0x2
	.byte	0x74
	.sleb128 60
	.long	.LVL568
	.long	.LVL569
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST85:
	.long	.LVL482
	.long	.LVL483
	.value	0x1
	.byte	0x57
	.long	.LVL568
	.long	.LVL569
	.value	0x1
	.byte	0x51
	.long	0
	.long	0
.LLST86:
	.long	.LVL484
	.long	.LVL486
	.value	0x2
	.byte	0x45
	.byte	0x9f
	.long	.LVL486
	.long	.LVL488
	.value	0x2
	.byte	0x44
	.byte	0x9f
	.long	.LVL564
	.long	.LVL565
	.value	0x2
	.byte	0x44
	.byte	0x9f
	.long	0
	.long	0
.LLST87:
	.long	.LVL485
	.long	.LVL488
	.value	0x2
	.byte	0x74
	.sleb128 60
	.long	.LVL564
	.long	.LVL565
	.value	0x2
	.byte	0x74
	.sleb128 60
	.long	0
	.long	0
.LLST88:
	.long	.LVL486
	.long	.LVL487
	.value	0x1
	.byte	0x51
	.long	.LVL487
	.long	.LVL488
	.value	0x3
	.byte	0x71
	.sleb128 -20
	.byte	0x9f
	.long	.LVL564
	.long	.LVL565
	.value	0x1
	.byte	0x51
	.long	0
	.long	0
.LLST89:
	.long	.LVL489
	.long	.LVL496
	.value	0x2
	.byte	0x74
	.sleb128 60
	.long	.LVL563
	.long	.LVL564
	.value	0x2
	.byte	0x74
	.sleb128 60
	.long	0
	.long	0
.LLST90:
	.long	.LVL489
	.long	.LVL490
	.value	0x1
	.byte	0x52
	.long	0
	.long	0
.LLST91:
	.long	.LVL491
	.long	.LVL493
	.value	0x2
	.byte	0x45
	.byte	0x9f
	.long	.LVL493
	.long	.LVL495
	.value	0x2
	.byte	0x44
	.byte	0x9f
	.long	.LVL563
	.long	.LVL564
	.value	0x2
	.byte	0x44
	.byte	0x9f
	.long	0
	.long	0
.LLST92:
	.long	.LVL489
	.long	.LVL491
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	0
	.long	0
.LLST93:
	.long	.LVL492
	.long	.LVL495
	.value	0x2
	.byte	0x74
	.sleb128 60
	.long	.LVL563
	.long	.LVL564
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST94:
	.long	.LVL493
	.long	.LVL494
	.value	0x1
	.byte	0x51
	.long	.LVL494
	.long	.LVL495
	.value	0x3
	.byte	0x71
	.sleb128 -20
	.byte	0x9f
	.long	.LVL563
	.long	.LVL564
	.value	0x1
	.byte	0x51
	.long	0
	.long	0
.LLST95:
	.long	.LVL497
	.long	.LVL499
	.value	0x2
	.byte	0x45
	.byte	0x9f
	.long	.LVL499
	.long	.LVL500
	.value	0x2
	.byte	0x44
	.byte	0x9f
	.long	.LVL567
	.long	.LVL568
	.value	0x2
	.byte	0x44
	.byte	0x9f
	.long	0
	.long	0
.LLST96:
	.long	.LVL496
	.long	.LVL497
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	0
	.long	0
.LLST97:
	.long	.LVL498
	.long	.LVL500
	.value	0x2
	.byte	0x74
	.sleb128 60
	.long	.LVL567
	.long	.LVL568
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST98:
	.long	.LVL499
	.long	.LVL500
	.value	0x1
	.byte	0x57
	.long	.LVL567
	.long	.LVL568
	.value	0x1
	.byte	0x51
	.long	0
	.long	0
.LLST99:
	.long	.LVL503
	.long	.LVL504
	.value	0x1
	.byte	0x51
	.long	.LVL504
	.long	.LVL506
	.value	0x8
	.byte	0x70
	.sleb128 0
	.byte	0x3
	.long	bm+7
	.byte	0x22
	.long	.LVL506
	.long	.LVL507
	.value	0x8
	.byte	0x70
	.sleb128 0
	.byte	0x3
	.long	bm+6
	.byte	0x22
	.long	.LVL508
	.long	.LVL510
	.value	0x8
	.byte	0x70
	.sleb128 0
	.byte	0x3
	.long	bm+7
	.byte	0x22
	.long	.LVL510
	.long	.LVL511
	.value	0x8
	.byte	0x70
	.sleb128 0
	.byte	0x3
	.long	bm+6
	.byte	0x22
	.long	0
	.long	0
.LLST100:
	.long	.LVL514
	.long	.LVL518-1
	.value	0x1
	.byte	0x50
	.long	.LVL519
	.long	.LVL521
	.value	0x1
	.byte	0x50
	.long	.LVL521
	.long	.LVL523
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST101:
	.long	.LVL513
	.long	.LVL515
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL515
	.long	.LVL516
	.value	0x2
	.byte	0x70
	.sleb128 12
	.long	.LVL516
	.long	.LVL522
	.value	0x1
	.byte	0x57
	.long	0
	.long	0
.LLST102:
	.long	.LVL513
	.long	.LVL516
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL517
	.long	.LVL520
	.value	0x1
	.byte	0x56
	.long	0
	.long	0
.LLST103:
	.long	.LVL512
	.long	.LVL524
	.value	0x6
	.byte	0x3
	.long	bm+8
	.byte	0x9f
	.long	.LVL524
	.long	.LVL525
	.value	0x1
	.byte	0x50
	.long	.LVL525
	.long	.LVL527
	.value	0x6
	.byte	0x3
	.long	bm+8
	.byte	0x9f
	.long	0
	.long	0
.LLST104:
	.long	.LVL526
	.long	.LVL527
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST105:
	.long	.LVL525
	.long	.LVL526
	.value	0x2
	.byte	0x70
	.sleb128 0
	.long	.LVL526
	.long	.LVL527
	.value	0x2
	.byte	0x70
	.sleb128 -1
	.long	0
	.long	0
.LLST106:
	.long	.LVL538
	.long	.LVL540
	.value	0x2
	.byte	0x45
	.byte	0x9f
	.long	.LVL540
	.long	.LVL541
	.value	0x2
	.byte	0x44
	.byte	0x9f
	.long	.LVL562
	.long	.LVL563
	.value	0x2
	.byte	0x44
	.byte	0x9f
	.long	0
	.long	0
.LLST107:
	.long	.LVL539
	.long	.LVL541
	.value	0x2
	.byte	0x74
	.sleb128 60
	.long	.LVL562
	.long	.LVL563
	.value	0x2
	.byte	0x74
	.sleb128 60
	.long	0
	.long	0
.LLST108:
	.long	.LVL540
	.long	.LVL541
	.value	0x1
	.byte	0x57
	.long	.LVL562
	.long	.LVL563
	.value	0x1
	.byte	0x51
	.long	0
	.long	0
.LLST109:
	.long	.LVL530
	.long	.LVL531
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL533
	.long	.LVL535
	.value	0x1
	.byte	0x56
	.long	0
	.long	0
.LLST110:
	.long	.LVL534
	.long	.LVL536
	.value	0x1
	.byte	0x57
	.long	.LVL557
	.long	.LVL558
	.value	0x1
	.byte	0x57
	.long	0
	.long	0
.LLST111:
	.long	.LVL528
	.long	.LVL529
	.value	0x1
	.byte	0x50
	.long	.LVL529
	.long	.LVL530
	.value	0x6
	.byte	0x3
	.long	bm+8
	.byte	0x9f
	.long	.LVL530
	.long	.LVL531
	.value	0x2
	.byte	0x74
	.sleb128 60
	.long	.LVL531
	.long	.LVL532
	.value	0x1
	.byte	0x53
	.long	.LVL532
	.long	.LVL533
	.value	0x3
	.byte	0x73
	.sleb128 -3
	.byte	0x9f
	.long	.LVL533
	.long	.LVL534
	.value	0x1
	.byte	0x53
	.long	.LVL534
	.long	.LVL537
	.value	0x2
	.byte	0x74
	.sleb128 60
	.long	.LVL557
	.long	.LVL559
	.value	0x2
	.byte	0x74
	.sleb128 60
	.long	0
	.long	0
	.section	.debug_aranges,"",@progbits
	.long	0x24
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x4
	.byte	0
	.value	0
	.value	0
	.long	.Ltext0
	.long	.Letext0-.Ltext0
	.long	.LFB35
	.long	.LFE35-.LFB35
	.long	0
	.long	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.LBB23
	.long	.LBE23
	.long	.LBB29
	.long	.LBE29
	.long	.LBB30
	.long	.LBE30
	.long	.LBB31
	.long	.LBE31
	.long	.LBB32
	.long	.LBE32
	.long	0
	.long	0
	.long	.LBB24
	.long	.LBE24
	.long	.LBB25
	.long	.LBE25
	.long	.LBB26
	.long	.LBE26
	.long	.LBB27
	.long	.LBE27
	.long	.LBB28
	.long	.LBE28
	.long	0
	.long	0
	.long	.LBB33
	.long	.LBE33
	.long	.LBB49
	.long	.LBE49
	.long	.LBB50
	.long	.LBE50
	.long	0
	.long	0
	.long	.LBB34
	.long	.LBE34
	.long	.LBB35
	.long	.LBE35
	.long	.LBB36
	.long	.LBE36
	.long	.LBB37
	.long	.LBE37
	.long	.LBB38
	.long	.LBE38
	.long	.LBB39
	.long	.LBE39
	.long	.LBB40
	.long	.LBE40
	.long	.LBB41
	.long	.LBE41
	.long	.LBB42
	.long	.LBE42
	.long	.LBB43
	.long	.LBE43
	.long	.LBB44
	.long	.LBE44
	.long	.LBB45
	.long	.LBE45
	.long	.LBB46
	.long	.LBE46
	.long	.LBB47
	.long	.LBE47
	.long	.LBB48
	.long	.LBE48
	.long	0
	.long	0
	.long	.LBB53
	.long	.LBE53
	.long	.LBB54
	.long	.LBE54
	.long	0
	.long	0
	.long	.LBB117
	.long	.LBE117
	.long	.LBB121
	.long	.LBE121
	.long	.LBB125
	.long	.LBE125
	.long	0
	.long	0
	.long	.LBB118
	.long	.LBE118
	.long	.LBB119
	.long	.LBE119
	.long	.LBB120
	.long	.LBE120
	.long	0
	.long	0
	.long	.LBB122
	.long	.LBE122
	.long	.LBB126
	.long	.LBE126
	.long	0
	.long	0
	.long	.LBB123
	.long	.LBE123
	.long	.LBB124
	.long	.LBE124
	.long	0
	.long	0
	.long	.LBB128
	.long	.LBE128
	.long	.LBB293
	.long	.LBE293
	.long	0
	.long	0
	.long	.LBB131
	.long	.LBE131
	.long	.LBB287
	.long	.LBE287
	.long	.LBB292
	.long	.LBE292
	.long	.LBB294
	.long	.LBE294
	.long	.LBB296
	.long	.LBE296
	.long	.LBB299
	.long	.LBE299
	.long	0
	.long	0
	.long	.LBB132
	.long	.LBE132
	.long	.LBB279
	.long	.LBE279
	.long	.LBB280
	.long	.LBE280
	.long	.LBB281
	.long	.LBE281
	.long	.LBB282
	.long	.LBE282
	.long	.LBB283
	.long	.LBE283
	.long	0
	.long	0
	.long	.LBB135
	.long	.LBE135
	.long	.LBB267
	.long	.LBE267
	.long	.LBB269
	.long	.LBE269
	.long	.LBB271
	.long	.LBE271
	.long	.LBB272
	.long	.LBE272
	.long	.LBB274
	.long	.LBE274
	.long	.LBB276
	.long	.LBE276
	.long	0
	.long	0
	.long	.LBB136
	.long	.LBE136
	.long	.LBB151
	.long	.LBE151
	.long	.LBB152
	.long	.LBE152
	.long	.LBB153
	.long	.LBE153
	.long	.LBB154
	.long	.LBE154
	.long	.LBB155
	.long	.LBE155
	.long	.LBB156
	.long	.LBE156
	.long	0
	.long	0
	.long	.LBB137
	.long	.LBE137
	.long	.LBB143
	.long	.LBE143
	.long	.LBB144
	.long	.LBE144
	.long	.LBB149
	.long	.LBE149
	.long	.LBB150
	.long	.LBE150
	.long	0
	.long	0
	.long	.LBB138
	.long	.LBE138
	.long	.LBB139
	.long	.LBE139
	.long	.LBB140
	.long	.LBE140
	.long	.LBB141
	.long	.LBE141
	.long	.LBB142
	.long	.LBE142
	.long	0
	.long	0
	.long	.LBB145
	.long	.LBE145
	.long	.LBB148
	.long	.LBE148
	.long	0
	.long	0
	.long	.LBB146
	.long	.LBE146
	.long	.LBB147
	.long	.LBE147
	.long	0
	.long	0
	.long	.LBB157
	.long	.LBE157
	.long	.LBB264
	.long	.LBE264
	.long	.LBB265
	.long	.LBE265
	.long	.LBB266
	.long	.LBE266
	.long	.LBB268
	.long	.LBE268
	.long	.LBB270
	.long	.LBE270
	.long	.LBB273
	.long	.LBE273
	.long	.LBB275
	.long	.LBE275
	.long	.LBB277
	.long	.LBE277
	.long	.LBB278
	.long	.LBE278
	.long	0
	.long	0
	.long	.LBB158
	.long	.LBE158
	.long	.LBB255
	.long	.LBE255
	.long	.LBB256
	.long	.LBE256
	.long	.LBB257
	.long	.LBE257
	.long	.LBB258
	.long	.LBE258
	.long	.LBB259
	.long	.LBE259
	.long	.LBB260
	.long	.LBE260
	.long	.LBB261
	.long	.LBE261
	.long	.LBB262
	.long	.LBE262
	.long	.LBB263
	.long	.LBE263
	.long	0
	.long	0
	.long	.LBB159
	.long	.LBE159
	.long	.LBB243
	.long	.LBE243
	.long	.LBB245
	.long	.LBE245
	.long	.LBB247
	.long	.LBE247
	.long	0
	.long	0
	.long	.LBB160
	.long	.LBE160
	.long	.LBB161
	.long	.LBE161
	.long	.LBB162
	.long	.LBE162
	.long	.LBB163
	.long	.LBE163
	.long	0
	.long	0
	.long	.LBB164
	.long	.LBE164
	.long	.LBB186
	.long	.LBE186
	.long	.LBB188
	.long	.LBE188
	.long	.LBB197
	.long	.LBE197
	.long	.LBB199
	.long	.LBE199
	.long	.LBB207
	.long	.LBE207
	.long	.LBB209
	.long	.LBE209
	.long	.LBB215
	.long	.LBE215
	.long	.LBB217
	.long	.LBE217
	.long	.LBB238
	.long	.LBE238
	.long	.LBB240
	.long	.LBE240
	.long	.LBB242
	.long	.LBE242
	.long	.LBB244
	.long	.LBE244
	.long	.LBB246
	.long	.LBE246
	.long	.LBB249
	.long	.LBE249
	.long	.LBB250
	.long	.LBE250
	.long	0
	.long	0
	.long	.LBB165
	.long	.LBE165
	.long	.LBB166
	.long	.LBE166
	.long	.LBB167
	.long	.LBE167
	.long	.LBB168
	.long	.LBE168
	.long	.LBB169
	.long	.LBE169
	.long	.LBB170
	.long	.LBE170
	.long	.LBB171
	.long	.LBE171
	.long	.LBB172
	.long	.LBE172
	.long	.LBB173
	.long	.LBE173
	.long	.LBB174
	.long	.LBE174
	.long	.LBB175
	.long	.LBE175
	.long	.LBB176
	.long	.LBE176
	.long	.LBB177
	.long	.LBE177
	.long	.LBB178
	.long	.LBE178
	.long	.LBB179
	.long	.LBE179
	.long	.LBB180
	.long	.LBE180
	.long	0
	.long	0
	.long	.LBB181
	.long	.LBE181
	.long	.LBB187
	.long	.LBE187
	.long	.LBB189
	.long	.LBE189
	.long	.LBB195
	.long	.LBE195
	.long	0
	.long	0
	.long	.LBB182
	.long	.LBE182
	.long	.LBB183
	.long	.LBE183
	.long	.LBB184
	.long	.LBE184
	.long	.LBB185
	.long	.LBE185
	.long	0
	.long	0
	.long	.LBB190
	.long	.LBE190
	.long	.LBB196
	.long	.LBE196
	.long	.LBB198
	.long	.LBE198
	.long	.LBB200
	.long	.LBE200
	.long	0
	.long	0
	.long	.LBB191
	.long	.LBE191
	.long	.LBB192
	.long	.LBE192
	.long	.LBB193
	.long	.LBE193
	.long	.LBB194
	.long	.LBE194
	.long	0
	.long	0
	.long	.LBB201
	.long	.LBE201
	.long	.LBB206
	.long	.LBE206
	.long	.LBB208
	.long	.LBE208
	.long	.LBB210
	.long	.LBE210
	.long	0
	.long	0
	.long	.LBB202
	.long	.LBE202
	.long	.LBB203
	.long	.LBE203
	.long	.LBB204
	.long	.LBE204
	.long	.LBB205
	.long	.LBE205
	.long	0
	.long	0
	.long	.LBB211
	.long	.LBE211
	.long	.LBB216
	.long	.LBE216
	.long	.LBB218
	.long	.LBE218
	.long	0
	.long	0
	.long	.LBB212
	.long	.LBE212
	.long	.LBB213
	.long	.LBE213
	.long	.LBB214
	.long	.LBE214
	.long	0
	.long	0
	.long	.LBB220
	.long	.LBE220
	.long	.LBB225
	.long	.LBE225
	.long	.LBB227
	.long	.LBE227
	.long	.LBB228
	.long	.LBE228
	.long	0
	.long	0
	.long	.LBB221
	.long	.LBE221
	.long	.LBB222
	.long	.LBE222
	.long	.LBB223
	.long	.LBE223
	.long	.LBB224
	.long	.LBE224
	.long	0
	.long	0
	.long	.LBB229
	.long	.LBE229
	.long	.LBB236
	.long	.LBE236
	.long	.LBB237
	.long	.LBE237
	.long	.LBB239
	.long	.LBE239
	.long	.LBB241
	.long	.LBE241
	.long	.LBB248
	.long	.LBE248
	.long	0
	.long	0
	.long	.LBB230
	.long	.LBE230
	.long	.LBB231
	.long	.LBE231
	.long	.LBB232
	.long	.LBE232
	.long	.LBB233
	.long	.LBE233
	.long	.LBB234
	.long	.LBE234
	.long	.LBB235
	.long	.LBE235
	.long	0
	.long	0
	.long	.LBB284
	.long	.LBE284
	.long	.LBB288
	.long	.LBE288
	.long	0
	.long	0
	.long	.LBB285
	.long	.LBE285
	.long	.LBB286
	.long	.LBE286
	.long	0
	.long	0
	.long	.LBB289
	.long	.LBE289
	.long	.LBB295
	.long	.LBE295
	.long	0
	.long	0
	.long	.LBB290
	.long	.LBE290
	.long	.LBB291
	.long	.LBE291
	.long	0
	.long	0
	.long	.Ltext0
	.long	.Letext0
	.long	.LFB35
	.long	.LFE35
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF218:
	.string	"XMapRequestEvent"
.LASF8:
	.string	"size_t"
.LASF412:
	.string	"aircolor"
.LASF53:
	.string	"tm_hour"
.LASF149:
	.string	"pixmap_format"
.LASF233:
	.string	"owner"
.LASF328:
	.string	"maxbubbles"
.LASF79:
	.string	"red_mask"
.LASF243:
	.string	"first_keycode"
.LASF327:
	.string	"total"
.LASF310:
	.string	"mem_buf"
.LASF365:
	.string	"draw_digit"
.LASF463:
	.string	"cpu_enabled"
.LASF112:
	.string	"scanline_pad"
.LASF77:
	.string	"visualid"
.LASF90:
	.string	"root"
.LASF283:
	.string	"xmapping"
.LASF26:
	.string	"_IO_save_end"
.LASF155:
	.string	"last_request_read"
.LASF96:
	.string	"depths"
.LASF355:
	.string	"Is_Color"
.LASF457:
	.string	"digits"
.LASF49:
	.string	"time_t"
.LASF181:
	.string	"window"
.LASF319:
	.string	"bubbles"
.LASF142:
	.string	"vendor"
.LASF19:
	.string	"_IO_write_base"
.LASF272:
	.string	"xgravity"
.LASF252:
	.string	"XGenericEvent"
.LASF130:
	.string	"obdata"
.LASF346:
	.string	"memadd"
.LASF300:
	.string	"XrmoptionSkipNArgs"
.LASF186:
	.string	"state"
.LASF104:
	.string	"min_maps"
.LASF97:
	.string	"root_depth"
.LASF35:
	.string	"_lock"
.LASF349:
	.string	"hisadd"
.LASF117:
	.string	"get_pixel"
.LASF331:
	.string	"volatility"
.LASF269:
	.string	"xmaprequest"
.LASF178:
	.string	"type"
.LASF24:
	.string	"_IO_save_base"
.LASF121:
	.string	"_XImage"
.LASF239:
	.string	"colormap"
.LASF28:
	.string	"_chain"
.LASF311:
	.string	"his_bufa"
.LASF312:
	.string	"his_bufb"
.LASF32:
	.string	"_cur_column"
.LASF265:
	.string	"xcreatewindow"
.LASF316:
	.string	"bubblebuf"
.LASF50:
	.string	"u_int64_t"
.LASF65:
	.string	"Window"
.LASF228:
	.string	"XCirculateRequestEvent"
.LASF166:
	.string	"screens"
.LASF304:
	.string	"argKind"
.LASF229:
	.string	"atom"
.LASF470:
	.string	"do_help"
.LASF234:
	.string	"requestor"
.LASF116:
	.string	"destroy_image"
.LASF247:
	.string	"request_code"
.LASF68:
	.string	"KeyCode"
.LASF108:
	.string	"_XGC"
.LASF98:
	.string	"root_visual"
.LASF424:
	.string	"get_screen_selection"
.LASF345:
	.string	"memhist"
.LASF74:
	.string	"private_data"
.LASF11:
	.string	"long int"
.LASF375:
	.string	"days"
.LASF59:
	.string	"tm_isdst"
.LASF244:
	.string	"XMappingEvent"
.LASF110:
	.string	"Screen"
.LASF217:
	.string	"XMapEvent"
.LASF422:
	.string	"duck_swimmer"
.LASF360:
	.string	"parse_as"
.LASF78:
	.string	"class"
.LASF357:
	.string	"Is_Bool"
.LASF45:
	.string	"_IO_marker"
.LASF481:
	.string	"main"
.LASF348:
	.string	"history"
.LASF241:
	.string	"message_type"
.LASF216:
	.string	"XUnmapEvent"
.LASF397:
	.string	"__s2_len"
.LASF224:
	.string	"value_mask"
.LASF164:
	.string	"default_screen"
.LASF113:
	.string	"ScreenFormat"
.LASF398:
	.string	"__res"
.LASF445:
	.string	"x_resources_as_string"
.LASF200:
	.string	"XKeymapEvent"
.LASF333:
	.string	"speed_limit"
.LASF413:
	.string	"waterlevels_goal"
.LASF268:
	.string	"xmap"
.LASF4:
	.string	"signed char"
.LASF248:
	.string	"XErrorEvent"
.LASF44:
	.string	"_IO_FILE"
.LASF69:
	.string	"XPointer"
.LASF245:
	.string	"resourceid"
.LASF208:
	.string	"XVisibilityEvent"
.LASF335:
	.string	"gravity_int"
.LASF354:
	.string	"Is_Int"
.LASF389:
	.string	"duck_set"
.LASF255:
	.string	"xany"
.LASF356:
	.string	"Is_Float"
.LASF326:
	.string	"load"
.LASF134:
	.string	"blue"
.LASF165:
	.string	"nscreens"
.LASF306:
	.string	"XrmOptionDescRec"
.LASF384:
	.string	"blus"
.LASF1:
	.string	"unsigned char"
.LASF231:
	.string	"selection"
.LASF474:
	.string	"wmxp_win"
.LASF339:
	.string	"mem_used"
.LASF361:
	.string	"write_to"
.LASF406:
	.string	"keys"
.LASF249:
	.string	"XAnyEvent"
.LASF440:
	.string	"update"
.LASF246:
	.string	"error_code"
.LASF287:
	.string	"xcookie"
.LASF236:
	.string	"property"
.LASF305:
	.string	"value"
.LASF370:
	.string	"draw_history"
.LASF120:
	.string	"add_pixel"
.LASF195:
	.string	"detail"
.LASF14:
	.string	"char"
.LASF388:
	.string	"draw_largedigit"
.LASF100:
	.string	"cmap"
.LASF154:
	.string	"qlen"
.LASF415:
	.string	"waterlevel_max"
.LASF410:
	.string	"watercolor"
.LASF64:
	.string	"Time"
.LASF394:
	.string	"name"
.LASF291:
	.string	"XrmValue"
.LASF219:
	.string	"XReparentEvent"
.LASF478:
	.string	"_IO_lock_t"
.LASF176:
	.string	"_XrmHashBucketRec"
.LASF330:
	.string	"gravity"
.LASF341:
	.string	"swap_used"
.LASF293:
	.string	"XrmoptionNoArg"
.LASF320:
	.string	"n_bubbles"
.LASF182:
	.string	"subwindow"
.LASF81:
	.string	"blue_mask"
.LASF479:
	.string	"_XEvent"
.LASF135:
	.string	"flags"
.LASF169:
	.string	"min_keycode"
.LASF52:
	.string	"tm_min"
.LASF16:
	.string	"_IO_read_ptr"
.LASF240:
	.string	"XColormapEvent"
.LASF63:
	.string	"VisualID"
.LASF292:
	.string	"XrmDatabase"
.LASF131:
	.string	"XImage"
.LASF48:
	.string	"_pos"
.LASF476:
	.string	"bubblemon.c"
.LASF303:
	.string	"specifier"
.LASF419:
	.string	"last_action_min"
.LASF76:
	.string	"ext_data"
.LASF191:
	.string	"XButtonEvent"
.LASF396:
	.string	"__s1_len"
.LASF322:
	.string	"liquid_noswap"
.LASF363:
	.string	"whither"
.LASF220:
	.string	"above"
.LASF27:
	.string	"_markers"
.LASF439:
	.string	"roll_history"
.LASF114:
	.string	"funcs"
.LASF251:
	.string	"evtype"
.LASF315:
	.string	"samples"
.LASF308:
	.string	"LoadAvg"
.LASF202:
	.string	"XExposeEvent"
.LASF199:
	.string	"key_vector"
.LASF395:
	.string	"colorparsing"
.LASF148:
	.string	"nformats"
.LASF332:
	.string	"viscosity"
.LASF192:
	.string	"is_hint"
.LASF82:
	.string	"bits_per_rgb"
.LASF418:
	.string	"action_min"
.LASF376:
	.string	"mytt"
.LASF51:
	.string	"tm_sec"
.LASF237:
	.string	"XSelectionRequestEvent"
.LASF36:
	.string	"_offset"
.LASF250:
	.string	"extension"
.LASF359:
	.string	"XrmExtras"
.LASF295:
	.string	"XrmoptionStickyArg"
.LASF459:
	.string	"mem_screen"
.LASF106:
	.string	"save_unders"
.LASF93:
	.string	"mwidth"
.LASF390:
	.string	"upsidedown"
.LASF404:
	.string	"rshift_code"
.LASF456:
	.string	"duck_data"
.LASF185:
	.string	"y_root"
.LASF387:
	.string	"letter"
.LASF329:
	.string	"ripples"
.LASF461:
	.string	"duck_enabled"
.LASF371:
	.string	"pixels_per_byte"
.LASF3:
	.string	"long unsigned int"
.LASF377:
	.string	"mytime"
.LASF402:
	.string	"bubblemon_setup_samples"
.LASF123:
	.string	"format"
.LASF30:
	.string	"_flags2"
.LASF235:
	.string	"target"
.LASF18:
	.string	"_IO_read_base"
.LASF302:
	.string	"option"
.LASF399:
	.string	"render_secondary"
.LASF205:
	.string	"minor_code"
.LASF43:
	.string	"_unused2"
.LASF9:
	.string	"__quad_t"
.LASF67:
	.string	"Colormap"
.LASF362:
	.string	"description"
.LASF448:
	.string	"stdin"
.LASF126:
	.string	"bitmap_unit"
.LASF203:
	.string	"drawable"
.LASF179:
	.string	"serial"
.LASF284:
	.string	"xerror"
.LASF438:
	.string	"delay"
.LASF344:
	.string	"mem_percent"
.LASF442:
	.string	"argc"
.LASF451:
	.string	"wmxp_display"
.LASF366:
	.string	"draw_pixel"
.LASF31:
	.string	"_old_offset"
.LASF414:
	.string	"waterlevel_min"
.LASF460:
	.string	"numbers_xpm"
.LASF443:
	.string	"argv"
.LASF227:
	.string	"XCirculateEvent"
.LASF259:
	.string	"xcrossing"
.LASF140:
	.string	"proto_major_version"
.LASF94:
	.string	"mheight"
.LASF207:
	.string	"XNoExposeEvent"
.LASF189:
	.string	"XKeyEvent"
.LASF343:
	.string	"swap_percent"
.LASF103:
	.string	"max_maps"
.LASF88:
	.string	"Depth"
.LASF297:
	.string	"XrmoptionResArg"
.LASF267:
	.string	"xunmap"
.LASF437:
	.string	"roll_membuffer"
.LASF6:
	.string	"long long int"
.LASF407:
	.string	"bubblemon_update"
.LASF91:
	.string	"width"
.LASF55:
	.string	"tm_mon"
.LASF421:
	.string	"bubblebuf_ptr"
.LASF351:
	.string	"BubbleMonData"
.LASF336:
	.string	"volatility_int"
.LASF285:
	.string	"xkeymap"
.LASF350:
	.string	"double"
.LASF188:
	.string	"same_screen"
.LASF21:
	.string	"_IO_write_end"
.LASF334:
	.string	"ripples_int"
.LASF85:
	.string	"depth"
.LASF288:
	.string	"XEvent"
.LASF221:
	.string	"XConfigureEvent"
.LASF223:
	.string	"XResizeRequestEvent"
.LASF209:
	.string	"parent"
.LASF175:
	.string	"_XPrivate"
.LASF137:
	.string	"Display"
.LASF105:
	.string	"backing_store"
.LASF201:
	.string	"count"
.LASF187:
	.string	"keycode"
.LASF213:
	.string	"event"
.LASF290:
	.string	"addr"
.LASF299:
	.string	"XrmoptionSkipLine"
.LASF325:
	.string	"loadIndex"
.LASF458:
	.string	"load_screen"
.LASF119:
	.string	"sub_image"
.LASF22:
	.string	"_IO_buf_base"
.LASF174:
	.string	"xdefaults"
.LASF453:
	.string	"clockalpha"
.LASF380:
	.string	"string"
.LASF0:
	.string	"unsigned int"
.LASF177:
	.string	"_XPrivDisplay"
.LASF317:
	.string	"waterlevels"
.LASF206:
	.string	"XGraphicsExposeEvent"
.LASF480:
	.string	"bubblebuf_values"
.LASF434:
	.string	"ptr2"
.LASF441:
	.string	"doit"
.LASF378:
	.string	"mday"
.LASF426:
	.string	"outp"
.LASF37:
	.string	"__pad1"
.LASF38:
	.string	"__pad2"
.LASF39:
	.string	"__pad3"
.LASF40:
	.string	"__pad4"
.LASF41:
	.string	"__pad5"
.LASF118:
	.string	"put_pixel"
.LASF190:
	.string	"button"
.LASF80:
	.string	"green_mask"
.LASF47:
	.string	"_sbuf"
.LASF75:
	.string	"XExtData"
.LASF253:
	.string	"cookie"
.LASF83:
	.string	"map_entries"
.LASF447:
	.string	"redraw"
.LASF446:
	.string	"x_resource_db"
.LASF139:
	.string	"private2"
.LASF263:
	.string	"xnoexpose"
.LASF15:
	.string	"_flags"
.LASF286:
	.string	"xgeneric"
.LASF42:
	.string	"_mode"
.LASF352:
	.string	"bytes_per_pixel"
.LASF214:
	.string	"XDestroyWindowEvent"
.LASF226:
	.string	"place"
.LASF102:
	.string	"black_pixel"
.LASF477:
	.string	"/home/klaws/proj/wmbubble-1.50-skew"
.LASF180:
	.string	"send_event"
.LASF353:
	.string	"pixel_data"
.LASF167:
	.string	"motion_buffer"
.LASF420:
	.string	"colorspace_conversion"
.LASF254:
	.string	"XGenericEventCookie"
.LASF266:
	.string	"xdestroywindow"
.LASF280:
	.string	"xselection"
.LASF107:
	.string	"root_input_mask"
.LASF282:
	.string	"xclient"
.LASF400:
	.string	"percent"
.LASF318:
	.string	"waterlevels_dy"
.LASF382:
	.string	"reds"
.LASF417:
	.string	"real_waterlevel_max"
.LASF471:
	.string	"x_resource_options"
.LASF54:
	.string	"tm_mday"
.LASF225:
	.string	"XConfigureRequestEvent"
.LASF87:
	.string	"visuals"
.LASF423:
	.string	"posy"
.LASF99:
	.string	"default_gc"
.LASF196:
	.string	"focus"
.LASF109:
	.string	"_XDisplay"
.LASF464:
	.string	"memscreen_enabled"
.LASF321:
	.string	"air_noswap"
.LASF289:
	.string	"size"
.LASF298:
	.string	"XrmoptionSkipArg"
.LASF7:
	.string	"long long unsigned int"
.LASF373:
	.string	"rgbbuf"
.LASF436:
	.string	"what"
.LASF455:
	.string	"duck_cmap"
.LASF358:
	.string	"No_Param"
.LASF430:
	.string	"memblend"
.LASF10:
	.string	"__off_t"
.LASF258:
	.string	"xmotion"
.LASF465:
	.string	"memscreen_megabytes"
.LASF161:
	.string	"max_request_size"
.LASF57:
	.string	"tm_wday"
.LASF210:
	.string	"border_width"
.LASF347:
	.string	"loadavg"
.LASF444:
	.string	"execute"
.LASF428:
	.string	"realtime_alpha_blend_of_cpu_usage"
.LASF431:
	.string	"showmem"
.LASF385:
	.string	"draw_string"
.LASF281:
	.string	"xcolormap"
.LASF58:
	.string	"tm_yday"
.LASF383:
	.string	"grns"
.LASF261:
	.string	"xexpose"
.LASF264:
	.string	"xvisibility"
.LASF13:
	.string	"__time_t"
.LASF411:
	.string	"antialiascolor"
.LASF136:
	.string	"XColor"
.LASF25:
	.string	"_IO_backup_base"
.LASF386:
	.string	"draw_dtchr"
.LASF34:
	.string	"_shortbuf"
.LASF156:
	.string	"request"
.LASF273:
	.string	"xresizerequest"
.LASF279:
	.string	"xselectionrequest"
.LASF198:
	.string	"XFocusChangeEvent"
.LASF127:
	.string	"bitmap_bit_order"
.LASF381:
	.string	"color"
.LASF46:
	.string	"_next"
.LASF12:
	.string	"__off64_t"
.LASF86:
	.string	"nvisuals"
.LASF71:
	.string	"number"
.LASF294:
	.string	"XrmoptionIsArg"
.LASF393:
	.string	"x_resource_database"
.LASF391:
	.string	"ypos"
.LASF468:
	.string	"pale"
.LASF372:
	.string	"draw_datetime"
.LASF184:
	.string	"x_root"
.LASF212:
	.string	"XCreateWindowEvent"
.LASF89:
	.string	"display"
.LASF369:
	.string	"get_memory_load_percentage"
.LASF23:
	.string	"_IO_buf_end"
.LASF101:
	.string	"white_pixel"
.LASF270:
	.string	"xreparent"
.LASF115:
	.string	"create_image"
.LASF367:
	.string	"print_usage"
.LASF215:
	.string	"from_configure"
.LASF324:
	.string	"liquid_maxswap"
.LASF66:
	.string	"Drawable"
.LASF452:
	.string	"clockdigit"
.LASF204:
	.string	"major_code"
.LASF277:
	.string	"xproperty"
.LASF73:
	.string	"free_private"
.LASF60:
	.string	"tm_gmtoff"
.LASF450:
	.string	"stderr"
.LASF307:
	.string	"Bubble"
.LASF5:
	.string	"short int"
.LASF194:
	.string	"mode"
.LASF454:
	.string	"bigdigits"
.LASF163:
	.string	"display_name"
.LASF262:
	.string	"xgraphicsexpose"
.LASF128:
	.string	"bitmap_pad"
.LASF276:
	.string	"xcirculaterequest"
.LASF230:
	.string	"XPropertyEvent"
.LASF193:
	.string	"XMotionEvent"
.LASF222:
	.string	"XGravityEvent"
.LASF138:
	.string	"private1"
.LASF33:
	.string	"_vtable_offset"
.LASF143:
	.string	"private3"
.LASF144:
	.string	"private4"
.LASF145:
	.string	"private5"
.LASF146:
	.string	"private6"
.LASF150:
	.string	"private8"
.LASF152:
	.string	"private9"
.LASF278:
	.string	"xselectionclear"
.LASF462:
	.string	"upside_down_duck_enabled"
.LASF141:
	.string	"proto_minor_version"
.LASF368:
	.string	"make_new_bubblemon_dockapp"
.LASF271:
	.string	"xconfigure"
.LASF467:
	.string	"graph_digit_warning_color"
.LASF432:
	.string	"hibyte"
.LASF313:
	.string	"screen_type"
.LASF153:
	.string	"private10"
.LASF157:
	.string	"private11"
.LASF158:
	.string	"private12"
.LASF159:
	.string	"private13"
.LASF160:
	.string	"private14"
.LASF162:
	.string	"private15"
.LASF168:
	.string	"private16"
.LASF171:
	.string	"private17"
.LASF172:
	.string	"private18"
.LASF173:
	.string	"private19"
.LASF232:
	.string	"XSelectionClearEvent"
.LASF342:
	.string	"swap_max"
.LASF61:
	.string	"tm_zone"
.LASF403:
	.string	"lshift_code"
.LASF111:
	.string	"bits_per_pixel"
.LASF364:
	.string	"from"
.LASF125:
	.string	"byte_order"
.LASF17:
	.string	"_IO_read_end"
.LASF475:
	.string	"GNU C 4.6.1"
.LASF301:
	.string	"XrmOptionKind"
.LASF129:
	.string	"bytes_per_line"
.LASF95:
	.string	"ndepths"
.LASF473:
	.string	"wmxp_iconwin"
.LASF392:
	.string	"bubblemon_session_defaults"
.LASF435:
	.string	"draw_cpudigit"
.LASF379:
	.string	"hours"
.LASF469:
	.string	"shifttime"
.LASF314:
	.string	"picture_lock"
.LASF296:
	.string	"XrmoptionSepArg"
.LASF29:
	.string	"_fileno"
.LASF70:
	.string	"_XExtData"
.LASF323:
	.string	"air_maxswap"
.LASF147:
	.string	"resource_alloc"
.LASF132:
	.string	"pixel"
.LASF151:
	.string	"release"
.LASF472:
	.string	"x_resource_extras"
.LASF466:
	.string	"graph_digit_color"
.LASF133:
	.string	"green"
.LASF416:
	.string	"real_waterlevel_min"
.LASF427:
	.string	"totalcounter"
.LASF56:
	.string	"tm_year"
.LASF257:
	.string	"xbutton"
.LASF2:
	.string	"short unsigned int"
.LASF449:
	.string	"stdout"
.LASF309:
	.string	"rgb_buf"
.LASF256:
	.string	"xkey"
.LASF274:
	.string	"xconfigurerequest"
.LASF20:
	.string	"_IO_write_ptr"
.LASF183:
	.string	"time"
.LASF238:
	.string	"XSelectionEvent"
.LASF409:
	.string	"loadPercentage"
.LASF425:
	.string	"animate_correctly"
.LASF429:
	.string	"blend"
.LASF122:
	.string	"xoffset"
.LASF401:
	.string	"bubblemon_allocate_buffers"
.LASF197:
	.string	"XCrossingEvent"
.LASF170:
	.string	"max_keycode"
.LASF260:
	.string	"xfocus"
.LASF211:
	.string	"override_redirect"
.LASF62:
	.string	"Atom"
.LASF338:
	.string	"speed_limit_int"
.LASF337:
	.string	"viscosity_int"
.LASF72:
	.string	"next"
.LASF124:
	.string	"data"
.LASF275:
	.string	"xcirculate"
.LASF408:
	.string	"proximity"
.LASF433:
	.string	"kitptr"
.LASF242:
	.string	"XClientMessageEvent"
.LASF84:
	.string	"Visual"
.LASF340:
	.string	"mem_max"
.LASF374:
	.string	"months"
.LASF92:
	.string	"height"
.LASF405:
	.string	"first_time"
	.ident	"GCC: (Debian 4.6.1-5) 4.6.1"
	.section	.note.GNU-stack,"",@progbits
