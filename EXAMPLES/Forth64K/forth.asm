; Forth 16-bit indirect-threaded for Intel 80286 real mode.
; Copyright (c) 2024 Nigel Perks.
; Written with reference to dp ANS 1994 but no claim to conformance.

; Written as an example for Basic Assembler:
;
; basl forth.asm -o forth.com

; SI = Instruction Pointer
; BP = Return Stack Pointer

	MODEL	tiny

	P286N

CR	equ	0Dh
LF	equ	0Ah
CRLF	equ	0A0Dh
BS	equ	08h
PAD	equ	80

	CODESEG
	ORG	100h
start:
	mov	dx, [dp]	; DX = HERE
	mov	ax, sp		; AX = top of memory
	cmp	dx, ax		; compare HERE with top of memory
	jae	nomem		; presumably not possible, but check
	sub	ax, dx		; AX = free memory
	cmp	ax, 400h	; need 1K and that's tight
	jb	nomem

	mov	bp, sp		; RSP = top of memory
	mov	[R0], bp	; initial RSP
	sub	sp, 100h	; for return stack and input buffer
	mov	[S0], sp	; initial SP and input buffer address

	mov	si, OFFSET restartp	; IP = PFA of RESTART
	jmp	next

nomem:
	mov	bx, 1		; stdout
	mov	cx, 21		; count
	mov	dx, OFFSET nomem_msg
	mov	ah, 40h		; DOS Write File or Device
	int	21h

	mov	ah, 4Ch		; DOS End Program
	mov	al, 1		; exit code
	int	21h

nomem_msg:
	db	'INSUFFICIENT MEMORY',CR,LF

;***** FETCH-EXECUTE *****

next:
	mov	di, [si]	; DI = CFA
	inc	si
	inc	si
exec:
	mov	bx, [di]	; BX = code addr
	inc	di
	inc	di
	jmp	bx

jumpc:
	dw	dojump
dojump:
	mov	si, [si]
	jmp	next

jumpzc:
	dw	dojumpz
dojumpz:
	pop	ax
	and	ax, ax
	jz	dojumpz1
	inc	si
	inc	si
	jmp	next
dojumpz1:
	mov	si, [si]
	jmp	next

jumpnzc:
	dw	dojumpnz
dojumpnz:
	pop	ax
	and	ax, ax
	jnz	dojumpnz1
	inc	si
	inc	si
	jmp	next
dojumpnz1:
	mov	si, [si]
	jmp	next

;***** ENVIRONMENT *****

byen:
	db	83h,'BY','E'+80h
	dw	0
byec:
	dw	byep
byep:
	mov	ah, 4Ch		; DOS End Program
	mov	al, 0		; exit code
	int	21h

;***** EXECUTION *****

executen:
	db	87h,'EXECUT','E'+80h
	dw	byen
executec:
	dw	executep
executep:
	pop	di
	jmp	exec

;***** INPUT/OUTPUT *****

emitn:
	db	84h,'EMI','T'+80h
	dw	executen
emitc:
	dw	emitp
emitp:
	pop	ax		; character code
	mov	[emit0], al
	mov	bx, 1		; stdout
	mov	cx, 1		; count
	mov	dx, OFFSET emit0
	mov	ah, 40h		; DOS Write File or Device
	int	21h
	jmp	next

spacen:
	db	85h,'SPAC','E'+80h
	dw	emitn
spacec:
	dw	spacep
spacep:
	mov	[BYTE emit0], ' '
	mov	bx, 1		; stdout
	mov	cx, 1		; count
	mov	dx, OFFSET emit0
	mov	ah, 40h		; DOS Write File or Device
	int	21h
	jmp	next

spacesn:
	db	86h,'SPACE','S'+80h
	dw	spacen
spacesc:
	dw	spacesp
spacesp:
	pop	di
	mov	[BYTE emit0], ' '
	mov	dx, OFFSET emit0
	mov	bx, 1		; stdout
	mov	cx, 1		; count
	inc	di
spaces1:
	dec	di
	jz	spaces2
	; Moving MOV AH, 40H out of the loop makes the program crash in DosBox.
	mov	ah, 40h		; DOS Write File or Device
	int	21h
	jmp	spaces1
spaces2:
	jmp	next

zeroesn:
	db	86h,'ZEROE','S'+80h
	dw	spacesn
zeroesc:
	dw	zeroesp
zeroesp:
	pop	di
	mov	[BYTE emit0], '0'
	mov	dx, OFFSET emit0
	mov	bx, 1		; stdout
	mov	cx, 1		; count
	inc	di
zeroes1:
	dec	di
	jz	zeroes2
	mov	ah, 40h		; DOS Write File or Device
	int	21h
	jmp	zeroes1
zeroes2:
	jmp	next

crn:
	db	82h,'C','R'+80h
	dw	zeroesn
crc:
	dw	crp
crp:
	mov	[WORD emit0], CRLF
	mov	bx, 1		; stdout
	mov	cx, 2		; count
	mov	dx, OFFSET emit0
	mov	ah, 40h		; DOS Write File or Device
	int	21h
	jmp	next

keyn:	db	83h,'KE','Y'+80h
	dw	crn
keyc:	dw	keyp
keyp:
	mov	ah, 07h		; DOS Direct Console Input
	int	21h		; AL = character code
	xor	ah, ah		; AX = character code
	push	ax		; push character code
	jmp	next

acceptn:
	db	86h,'ACCEP','T'+80h
	dw	keyn
acceptc:
	dw	acceptp
acceptp:
	pop	di		; max count: undefined behaviour if signed 16-bit < 1
	pop	bx		; buffer
	push	si		; save IP
	push	bx		; keep buffer address on TOS
	mov	si, 0		; initialise current length
accept1:
	mov	ah, 07h		; DOS Direct Console Input
	int	21h		; AL = character code

	cmp	al, CR		; check for Enter / Return key
	je	accept0

	cmp	al, BS		; check for Backspace
	je	accept2

	cmp	si, di		; reached max count?
	jae	accept1
	cmp	al, ' '		; check for printable character
	jb	accept1
	cmp	al, 127
	jae	accept1

	pop	bx
	push	bx
	mov	[bx+si],al	; store new character in buffer
	inc	si

	mov	[emit0], al	; prepare to print the character
	mov	bx, 1		; stdout
	mov	cx, 1		; count
	mov	dx, OFFSET emit0
	mov	ah, 40h		; DOS Write File or Device
	int	21h

	jmp	accept1		; next character
accept2:
	and	si, si
	jz	accept1		; no characters to delete
	mov	[BYTE emit0], 8	; cursor left
	mov	[BYTE emit1], ' '
	mov	[BYTE emit2], 8	; cursor left
	mov	bx, 1		; stdout
	mov	cx, 3		; count
	mov	dx, OFFSET emit0
	mov	ah, 40h		; DOS Write File or Device
	int	21h

	dec	si		; reduce current length
	jmp	accept1		; next character
accept0:
	; "the display is maintained in an implementation-defined way"
	; print a space after the input to demarcate output
	mov	[BYTE emit0], ' '
	mov	bx, 1		; stdout
	mov	cx, 1		; count
	mov	dx, OFFSET emit0
	mov	ah, 40h		; DOS Write File or Device
	int	21h
	mov	di, si		; DI = length accepted
	pop	bx		; discard buffer address
	pop	si		; restore IP
	push	di		; return length accepted
	jmp	next

typen:
	db	84h,'TYP','E'+80h
	dw	acceptn
typec:
	dw	typep
typep:
	mov	bx, 1		; stdout
	pop	cx		; count
	pop	dx		; buffer address
	mov	ah, 40h		; DOS Write File or Device
	int	21h
	jmp	next

; SOURCE ( c-addr count -- )
sourcen:
	db	86h,'SOURC','E'+80h
	dw	typen
sourcec:
	dw	sourcep
sourcep:
	push	[WORD S0]
	push	[WORD inlen]
	jmp	next

;***** STACK *****

pushn:
	db	86h,'(PUSH',')'+80h
	dw	sourcen
pushc:
	dw	pushp
pushp:
	push	[WORD si]
	inc	si
	inc	si
	jmp	next

dropn:
	db	84h,'DRO','P'+80h
	dw	pushn
dropc:
	dw	dropp
dropp:
	pop	ax
	jmp	next

dupn:
	db	83h,'DU','P'+80h
	dw	dropn
dupc:
	dw	dupp
dupp:
	pop	ax
	push	ax
	push	ax
	jmp	next

qdupn:
	db	84h,'?DU','P'+80h
	dw	dupn
qdupc:
	dw	qdupp
qdupp:
	pop	ax
	push	ax
	and	ax, ax
	jz	qdup1
	push	ax
qdup1:
	jmp	next

overn:
	db	84h,'OVE','R'+80h
	dw	qdupn
overc:
	dw	overp
overp:
	pop	ax
	pop	dx
	push	dx
	push	ax
	push	dx
	jmp	next

swapn:
	db	84h,'SWA','P'+80h
	dw	overn
swapc:
	dw	swapp
swapp:
	pop	ax
	pop	dx
	push	ax
	push	dx
	jmp	next

rotn:
	db	83h,'RO','T'+80h
	dw	swapn
rotc:
	dw	rotp
rotp:
	pop	ax
	pop	dx
	pop	cx
	push	dx
	push	ax
	push	cx
	jmp	next

sstoren:
	db	82h,'S','!'+80h
	dw	rotn
sstorec:
	dw	sstorep
sstorep:
	mov	sp, [S0]
	jmp	next

tdropn:
	db	85h,'2DRO','P'+80h
	dw	sstoren
tdropc:
	dw	tdropp
tdropp:
	add	sp, 4
	jmp	next

tdupn:
	db	84h,'2DU','P'+80h
	dw	tdropn
tdupc:
	dw	tdupp
tdupp:
	pop	dx
	pop	ax
	push	ax
	push	dx
	push	ax
	push	dx
	jmp	next

tovern:
	db	85h,'2OVE','R'+80h
	dw	tdupn
toverc:
	dw	toverp
toverp:
	mov	bx, sp
	push	[WORD bx+6]
	push	[WORD bx+4]
	jmp	next

tswapn:
	db	85h,'2SWA','P'+80h
	dw	tovern
tswapc:
	dw	tswapp
tswapp:
	pop	ax
	pop	dx
	pop	cx
	pop	bx
	push	dx
	push	ax
	push	bx
	push	cx
	jmp	next

depthn:
	db	85h,'DEPT','H'+80h
	dw	tswapn
depthc:
	dw	depthp
depthp:
	mov	ax, [S0]
	sub	ax, sp
	shr	ax, 1
	push	ax
	jmp	next

; !CSP  save compile stack pointer
storecspn:
	db	84h,'!CS','P'+80h
	dw	depthn
storecspc:
	dw	storecspp
storecspp:
	mov	[csp], sp
	jmp	next

; CSDEPTH   depth of compilation control stack
csdepthn:
	db	87h,'CSDEPT','H'+80h
	dw	storecspn
csdepthc:
	dw	csdepthp
csdepthp:
	mov	ax, [csp]
	sub	ax, sp
	shr	ax, 1
	push	ax
	jmp	next

;***** RETURN STACK *****

rstoren:
	db	82h,'R','!'+80h
	dw	csdepthn
rstorec:
	dw	rstorep
rstorep:
	mov	bp, [R0]
	jmp	next

torn:
	db	82h,'>','R'+80h
	dw	rstoren
torc:
	dw	torp
torp:
	pop	ax
	dec	bp
	dec	bp
	mov	[bp], ax
	jmp	next

rton:
	db	82h,'R','>'+80h
	dw	torn
rtoc:
	dw	rtop
rtop:
	push	[WORD bp]
	inc	bp
	inc	bp
	jmp	next

rfetchn:
	db	82h,'R','@'+80h
	dw	rton
rfetchc:
	dw	rfetchp
rfetchp:
	push	[WORD bp]
	jmp	next

getin:
	db	81h,'I'+80h
	dw	rfetchn
getic:
	dw	getip
getip:
	push	[WORD bp]
	jmp	next

getjn:
	db	81h,'J'+80h
	dw	getin
getjc:
	dw	getjp
getjp:
	push	[WORD bp+6]
	jmp	next

idashn:
	db	82h,'I',27h+80h
	dw	getjn
idashc:
	dw	idashp
idashp:
	push	[WORD bp+2]
	jmp	next

; DO-LEAVE-LOOP dictionary structure:
;
;        (DO)
; do-addr:
;        out-addr
; loop-addr:
;        ...
;        (LEAVE)
;        ...
;        (LEAVE)
;        ...
;        (LOOP)
;        loop-addr
; out-addr:
;        ...

; (DO)
dodon:
	db	84h,'(DO',')'+80h
	dw	idashn
dodoc:
	dw	dodop
dodop:
	sub	bp, 6
	pop	[WORD bp+0]		; TOS index
	pop	[WORD bp+2]		; 2OS limit
	mov	ax, [si]		; out-addr
	mov	[WORD bp+4], ax
	inc	si
	inc	si
	jmp	next

; LEAVE
leaven:
	db	85h,'LEAV','E'+80h
	dw	dodon
leavec:
	dw	leavep
leavep:
	mov	si, [WORD bp+4]		; out-addr
	add	bp, 6
	jmp	next

; (LOOP)
doloopn:
	db	86h,'(LOOP',')'+80h
	dw	leaven
doloopc:
	dw	doloopp
doloopp:
	mov	ax, [bp]
	inc	ax
	cmp	ax, [bp+2]
	jge	doloop1
	mov	[bp], ax
	mov	si, [si]
	jmp	next
doloop1:
	add	bp, 6
	inc	si
	inc	si
	jmp	next

; UNLOOP   discard loop control parameters for current testing level, assuming they exist
unloopn:
	db	86h,'UNLOO','P'+80h
	dw	doloopn
unloopc:
	dw	unloopp
unloopp:
	add	bp, 6
	jmp	next

; TODO: (+LOOP)

;***** MEMORY *****

fetchn:
	db	81h,'@'+80h
	dw	unloopn
fetchc:
	dw	fetchp
fetchp:
	pop	bx
	push	[WORD bx]
	jmp	next

cfetchn:
	db	82h,'C','@'+80h
	dw	fetchn
cfetchc:
	dw	cfetchp
cfetchp:
	pop	bx
	mov	al, [bx]
	mov	ah, 0
	push	ax
	jmp	next

cstoren:
	db	82h,'C','!'+80h
	dw	cfetchn
cstorec:
	dw	cstorep
cstorep:
	pop	bx
	pop	ax
	mov	[bx], al
	jmp	next

storen:
	db	81h,'!'+80h
	dw	cstoren
storec:
	dw	storep
storep:
	pop	bx
	pop	ax
	mov	[bx], ax
	jmp	next

pstoren:
	db	82h,'+','!'+80h
	dw	storen
pstorec:
	dw	pstorep
pstorep:
	pop	bx
	pop	ax
	add	[bx], ax
	jmp	next

tstoren:
	db	82h,'2','!'+80h
	dw	pstoren
tstorec:
	dw	tstorep
tstorep:
	pop	bx
	pop	[WORD bx]
	pop	[WORD bx+2]
	jmp	next

tfetchn:
	db	82h,'2','@'+80h
	dw	tstoren
tfetchc:
	dw	tfetchp
tfetchp:
	pop	bx
	push	[WORD bx+2]
	push	[WORD bx]
	jmp	next

togglen:
	db	86h,'TOGGL','E'+80h
	dw	tfetchn
togglec:
	dw	togglep
togglep:
	pop	ax		; flags
	pop	bx		; addr
	xor	[bx], ax
	jmp	next

charplusn:
	db	85h,'CHAR','+'+80h
	dw	togglen
charplusc:
	dw	charplusp
charplusp:
	pop	ax
	inc	ax
	push	ax
	jmp	next

charsn:
	db	85h,'CHAR','S'+80h
	dw	charplusn
charsc:
	dw	charsp
charsp:
	jmp	next

cellplusn:
	db	85h,'CELL','+'+80h
	dw	charsn
cellplusc:
	dw	cellplusp
cellplusp:
	pop	ax
	inc	ax
	inc	ax
	push	ax
	jmp	next

cellsn:
	db	85h,'CELL','S'+80h
	dw	cellplusn
cellsc:
	dw	cellsp
cellsp:
	pop	ax
	shl	ax, 1
	push	ax
	jmp	next

; FILL ( addr count value -- )
filln:
	db	84h,'FIL','L'+80h
	dw	cellsn
fillc:
	dw	fillp
fillp:
	pop	ax
	pop	cx
	pop	di
	cld
	rep	stosb
	jmp	next

; "Characters shall be at least one address unit wide."
; Therefore my address unit is the byte, and MOVE copies bytes.
; MOVE   ( src dest count -- )
moven:
	db	84h,'MOV','E'+80h
	dw	filln
movec:
	dw	movep
movep:
	mov	bx, si		; save IP
	pop	cx		; CX = count
	pop	di		; DI = dest
	pop	si		; SI = source
	cld			; direction = upwards
	cmp	di, si
	jbe	move1
	add	si, cx		; if dest > source, copy from end to beginning
	dec	si		; SI = source + count - 1 = last byte to copy
	add	di, cx
	dec	di		; DI = dest + count - 1 = last byte destination
	std			; direction = downwards
move1:
	rep movsb
	mov	si, bx		; restore IP
	jmp	next

;***** CONSTANTS *****

zeron:
	db	81h,'0'+80h
	dw	moven
zeroc:
	dw	zerop
zerop:
	push	0
	jmp	next

onen:
	db	81h,'1'+80h
	dw	zeron
onec:
	dw	onep
onep:
	push	1
	jmp	next

bln:
	db	82h,'B','L'+80h
	dw	onen
blc:
	dw	blp
blp:
	push	' '
	jmp	next

;***** ARITHMETIC / LOGIC *****

plusn:
	db	81h,'+'+80h
	dw	bln
plusc:
	dw	plusp
plusp:
	pop	dx
	pop	ax
	add	ax, dx
	push	ax
	jmp	next

minusn:
	db	81h,'-'+80h
	dw	plusn
minusc:
	dw	minusp
minusp:
	pop	dx
	pop	ax
	sub	ax, dx
	push	ax
	jmp	next

starn:
	db	81h,'*'+80h
	dw	minusn
starc:
	dw	starp
starp:
	pop	dx
	pop	ax
	imul	dx
	push	ax
	jmp	next

slashn:
	db	81h,'/'+80h
	dw	starn
slashc:
	dw	slashp
slashp:
	pop	cx
	pop	ax
	cwd
	idiv	cx
	push	ax
	jmp	next

modn:
	db	83h,'MO','D'+80h
	dw	slashn
modc:
	dw	modp
modp:
	pop	cx
	pop	ax
	cwd
	idiv	cx
	push	dx
	jmp	next

slashmodn:
	db	84h,'/MO','D'+80h
	dw	modn
slashmodc:
	dw	slashmodp
slashmodp:
	pop	cx
	pop	ax
	cwd
	idiv	cx
	push	dx
	push	ax
	jmp	next

starslashmodn:
	db	85h,'*/MO','D'+80h
	dw	slashmodn
starslashmodc:
	dw	starslashmodp
starslashmodp:
	pop	cx
	pop	dx
	pop	ax
	imul	dx
	idiv	cx
	push	dx
	push	ax
	jmp	next

starslashn:
	db	82h,'*','/'+80h
	dw	starslashmodn
starslashc:
	dw	starslashp
starslashp:
	pop	cx
	pop	dx
	pop	ax
	imul	dx
	idiv	cx
	push	ax
	jmp	next

absn:
	db	83h,'AB','S'+80h
	dw	starslashn
absc:
	dw	absp
absp:
	pop	ax
	and	ax, ax
	jge	abs1
	neg	ax
abs1:
	push	ax
	jmp	next

minn:
	db	83h,'MI','N'+80h
	dw	absn
minc:
	dw	minp
minp:
	pop	dx
	pop	ax
	cmp	ax, dx
	jg	min1
	push	ax
	jmp	next
min1:
	push	dx
	jmp	next

maxn:
	db	83h,'MA','X'+80h
	dw	minn
maxc:
	dw	maxp
maxp:
	pop	dx
	pop	ax
	cmp	ax, dx
	jl	max1
	push	ax
	jmp	next
max1:
	push	dx
	jmp	next

oplusn:
	db	82h,'1','+'+80h
	dw	maxn
oplusc:
	dw	oplusp
oplusp:
	pop	ax
	inc	ax
	push	ax
	jmp	next

ominusn:
	db	82h,'1','-'+80h
	dw	oplusn
ominusc:
	dw	ominusp
ominusp:
	pop	ax
	dec	ax
	push	ax
	jmp	next

tplusn:
	db	82h,'2','+'+80h
	dw	ominusn
tplusc:
	dw	tplusp
tplusp:
	pop	ax
	inc	ax
	inc	ax
	push	ax
	jmp	next

tminusn:
	db	82h,'2','-'+80h
	dw	tplusn
tminusc:
	dw	tminusp
tminusp:
	pop	ax
	dec	ax
	dec	ax
	push	ax
	jmp	next

zequaln:
	db	82h,'0','='+80h
	dw	tminusn
zequalc:
	dw	zequalp
zequalp:
	pop	ax
	or	ah, al
	jz	zequal1
	push	0
	jmp	next
zequal1:
	push	1
	jmp	next

equaln:
	db	81h,'='+80h
	dw	zequaln
equalc:
	dw	equalp
equalp:
	pop	dx
	pop	ax
	cmp	ax, dx
	je	equal1
	push	0
	jmp	next
equal1:
	push	1
	jmp	next

zlessn:
	db	82h,'0','<'+80h
	dw	equaln
zlessc:
	dw	zlessp
zlessp:
	pop	ax
	test	ax, 8000h
	jz	zless1
	push	1
	jmp	next
zless1:
	push	0
	jmp	next

lessn:
	db	81h,'<'+80h
	dw	zlessn
lessc:
	dw	lessp
lessp:
	pop	dx
	pop	ax
	cmp	ax, dx
	jl	less1
	push	0
	jmp	next
less1:
	push	1
	jmp	next

ulessn:
	db	82h,'U','<'+80h
	dw	lessn
ulessc:
	dw	ulessp
ulessp:
	pop	dx
	pop	ax
	cmp	ax, dx
	jb	uless1
	push	0
	jmp	next
uless1:
	push	1
	jmp	next

greatern:
	db	81h,'>'+80h
	dw	ulessn
greaterc:
	dw	greaterp
greaterp:
	pop	dx
	pop	ax
	cmp	ax, dx
	jg	greater1
	push	0
	jmp	next
greater1:
	push	1
	jmp	next

tstarn:
	db	82h,'2','*'+80h
	dw	greatern
tstarc:
	dw	tstarp
tstarp:
	pop	ax
	shl	ax, 1
	push	ax
	jmp	next

tslashn:
	db	82h,'2','/'+80h
	dw	tstarn
tslashc:
	dw	tslashp
tslashp:
	pop	ax
	sar	ax, 1
	push	ax
	jmp	next

invertn:
	db	86h,'INVER','T'+80h
	dw	tslashn
invertc:
	dw	invertp
invertp:
	mov	bx, sp
	not	[WORD bx]
	jmp	next

andn:
	db	83h,'AN','D'+80h
	dw	invertn
andc:
	dw	andp
andp:
	pop	dx
	pop	ax
	and	ax, dx
	push	ax
	jmp	next

orn:
	db	82h,'O','R'+80h
	dw	andn
orc:
	dw	orp
orp:
	pop	dx
	pop	ax
	or	ax, dx
	push	ax
	jmp	next

xorn:
	db	83h,'XO','R'+80h
	dw	orn
xorc:
	dw	xorp
xorp:
	pop	dx
	pop	ax
	xor	ax, dx
	push	ax
	jmp	next

negaten:
	db	86h,'NEGAT','E'+80h
	dw	xorn
negatec:
	dw	negatep
negatep:
	mov	bx, sp
	neg	[WORD bx]
	jmp	next

lshiftn:
	db	86h,'LSHIF','T'+80h
	dw	negaten
lshiftc:
	dw	lshiftp
lshiftp:
	mov	bx, sp
	shl	[WORD bx], 1
	jmp	next

rshiftn:
	db	86h,'RSHIF','T'+80h
	dw	lshiftn
rshiftc:
	dw	rshiftp
rshiftp:
	mov	bx, sp
	shr	[WORD bx], 1
	jmp	next

;***** USER VARIABLES *****

; This is a single-user Forth.
; To avoid dedicating a register to the user area pointer,
; the location of the user area is baked into user variable definitions.

; DP dictionary pointer
dpn:
	db	82h,'D','P'+80h
	dw	rshiftn
dpc:
	dw	douser
dpd:
	dw	DP

; CURRENT holds the latest NFA in this Forth.
currentn:
	db	87h,'CURREN','T'+80h
	dw	dpn
currentc:
	dw	douser
currentp:
	dw	latest

; BASE number i/o conversion base
basen:
	db	84h,'BAS','E'+80h
	dw	currentn
basec:
	dw	douser
basep:
	dw	base

; R0 initial RSP
r0n:
	db	82h,'R','0'+80h
	dw	basen
r0c:
	dw	douser
r0p:
	dw	R0

; S0 initial SP
s0n:
	db	82h,'S','0'+80h
	dw	r0n
s0c:
	dw	douser
s0p:
	dw	S0

; >IN input pointer
toinn:
	db	83h,'>I','N'+80h
	dw	s0n
toinc:
	dw	douser
toinp:
	dw	PIN

; STATE executing/compiling
staten:
	db	85h,'STAT','E'+80h
	dw	toinn
statec:
	dw	douser
statep:
	dw	state

;***** DICTIONARY *****

latestn:
	db	86h,'LATES','T'+80h
	dw	staten
latestc:
	dw	latestp
latestp:
	push	[WORD latest]
	jmp	next

heren:
	db	84h,'HER','E'+80h
	dw	latestn
herec:
	dw	herep
herep:
	push	[WORD DP]
	jmp	next

; PREV ( nfa -- prev-nfa )
prevn:
	db	84h,'PRE','V'+80h
	dw	heren
prevc:
	dw	prevp
prevp:
	pop	bx		; BX = NFA
	mov	al, [bx]	; AL = name field length byte
	and	al, 1fh		; AL = name length
	mov	ah, 0		; AX = name length
	inc	bx		; BX = name
	add	bx, ax		; BX = LFA
	mov	ax, [bx]	; AX = prev NFA
	push	ax
	jmp	next

; FIND ( c-addr -- c-addr 0 | xt 1 | xt -1 )
; "If the definition is immediate, also return one (1),
;  otherwise also return minus-one (-1)."
findn:
	db	84h,'FIN','D'+80h
	dw	prevn
findc:
	dw	findp
findp:
	mov	bx, [latest]	; BX = NFA
find0:
	pop	di		; DI = c-addr
	push	di
	mov	al, [bx]	; AL = name field length byte
	and	al, 3fh		; AL = name field length and cloak bit
	cmp	al, [di]
	jne	find2		; go to previous entry
	mov	dx, bx		; save NFA in DX
find1:
	inc	bx		; BX -> first or next character in name field
	inc	di		; DI -> first or next character in c-addr
	mov	al, [bx]	; AL = name field byte
	mov	ah, al		; AH = name field byte
	and	al, 7Fh		; AL = name field character
	cmp	al, [di]
	jne	find3		; go to previous entry
	test	ah, 80h
	jz	find1		; if not end of name field, compare next character
	inc	bx		; BX = LFA
	inc	bx
	inc	bx		; BX = CFA
	pop	di		; discard c-addr
	push	bx		; -- CFA
	mov	bx, dx		; BX = matching NFA
	mov	al, [bx]	; AL = dictionary entry length byte
	and	al, 40h		; test immediate bit
	jz	find5		; jump to push -1 if not immediate
	push	1		; -- CFA 1
	jmp	next
find5:
	push	-1		; -- CFA -1
	jmp	next
find2:
	inc	bx
find3:
	test	[BYTE bx], 80h	; end of name field?
	jz	find2
	inc	bx		; BX = LFA
	mov	bx, [bx]
	and	bx, bx
	jnz	find0
find4:
	push	0		; -- c-addr 0
	jmp	next

; "An ambiguous condition exists if name is not found."
tickn:
	db	81h,27h+80h
	dw	findn
tickc:
	dw	docol
	dw	blc		; BL
	dw	wordc		; WORD
	dw	findc		; FIND
	dw	zequalc		; 0=
	dw	pabortqc	; ABORT" ?"
	db	1,'?'
	dw	exitc

; "The execution token returned by the compiled phrase ['] X
;  is the same value returned by ' X outside of compilation state."
bracket_tickn:
	db	0C3h,'[',27h,']'+80h
	dw	tickn
bracket_tickc:
	dw	docol
	dw	tickc
	dw	literalc
	dw	exitc

; .NAME   ( nfa -- )
printnamen:
	db	85h,'.NAM','E'+80h
	dw	bracket_tickn
printnamec:
	dw	printnamep
printnamep:
	mov	ax, si		; save IP in AX
	pop	si		; SI = NFA
	mov	cl, [si]
	and	cl, 1Fh		; CL = len
	mov	ch, 0		; CX = len
	mov	bx, cx		; BX = len
	inc	si		; SI = name-addr
	mov	di, [DP]	; DI = free-addr
	add	di, PAD		; DI = pad
	mov	dx, di		; DX = pad
	cld
	rep movsb		; copy name to pad
	mov	[BYTE di], ' '	; trailing space
	dec	di		; DI -> last char
	and	[BYTE di], 7Fh	; clear bit 7 of last char
	mov	si, ax		; restore IP from AX
	mov	cx, bx		; CX = len
	inc	cx		; include trailing space
	mov	bx, 1		; stdout
	mov	ah, 40h		; DOS Write File or Device
	int	21h
	jmp	next

; : WORDS   LATEST  BEGIN ?DUP WHILE DUP .NAME PREV REPEAT ;
wordsn:
	db	85h,'WORD','S'+80h
	dw	printnamen
wordsc:
	dw	docol
wordsp:
	dw	latestc
words1:
	dw	qdupc
	dw	jumpzc
	dw	words2
	dw	dupc
	dw	printnamec
	dw	prevc
	dw	jumpc
	dw	words1
words2:
	dw	exitc

allotn:
	db	85h,'ALLO','T'+80h
	dw	wordsn
allotc:
	dw	allotp
allotp:
	pop	ax
	add	[DP], ax
	jmp	next

comman:
	db	81h,','+80h
	dw	allotn
commac:
	dw	commap
commap:
	pop	ax
	mov	bx, [DP]
	mov	[bx], ax
	inc	bx
	inc	bx
	mov	[DP], bx
	jmp	next

ccomman:
	db	82h,'C',','+80h
	dw	comman
ccommac:
	dw	ccommap
ccommap:
	pop	ax
	mov	bx, [DP]
	mov	[bx], al
	inc	bx
	mov	[DP], bx
	jmp	next

; >BODY ( to PFA from CFA )
tobodyn:
	db	85h,'>BOD','Y'+80h
	dw	ccomman
tobodyc:
	dw	tobodyp
tobodyp:
	pop	ax
	inc	ax
	inc	ax
	push	ax
	jmp	next

; ALIGN, ALIGNED -- no-op for now, OK to access any byte address
alignn:
	db	85h,'ALIG','N'+80h
	dw	tobodyn
alignc:
	dw	alignp
alignp:
	jmp	next

alignedn:
	db	87h,'ALIGNE','D'+80h
	dw	alignn
alignedc:
	dw	alignedp
alignedp:
	jmp	next

;***** OUTER INTERPRETER *****

; WORD  ( -- c-addr )
wordn:
	db	84h,'WOR','D'+80h
	dw	alignedn
wordc:
	dw	wordp
wordp:
	pop	dx		; DL = delimiter
	mov	di, [DP]	; DI = end of dictionary = transient area
	push	si		; preserve SI
	mov	bx, [S0]	; BX = input buffer
	mov	si, [PIN]	; SI = input pointer
	mov	cl, 0		; initialise word length
word1:				; ignore delimiters, checking for end of TIB
	cmp	si, [inlen]
	jae	word0
	mov	al, [bx+si]	; AL = input character
	cmp	al, dl		; input character == delimiter ?
	jne	word2		; if not delimiter, start building word
	inc	si		; next input character
	jmp	word1
word2:
	inc	di
	mov	[di], al	; copy input character to word
	inc	cl		; inc word length
	inc	si		; next input character
	cmp	si, [inlen]
	jae	word0
	mov	al, [bx+si]	; AL = input character
	cmp	al, dl		; input character == delimiter?
	jne	word2
word0:
	inc	di
	mov	[BYTE di], ' '	; add space to word for CONVERT
	inc	si		; move input pointer after the parsed delimiter
	mov	[PIN], si	; store new >IN value
	pop	si		; restore IP
	mov	di, [DP]	; DI = transient area
	mov	[di], cl	; store length of word
	push	di		; return c-addr
	jmp	next

charn:
	db	84h,'CHA','R'+80h
	dw	wordn
charc:
	dw	docol
charp:
	dw	blc
	dw	wordc
	dw	oplusc
	dw	cfetchc
	dw	exitc

; [CHAR] immediate
compile_charn:
	db	0C6h,'[CHAR',']'+80h
	dw	charn
compile_charc:
	dw	docol
compile_charp:
	dw	check_compilingc
	dw	charc
	dw	literalc
	dw	exitc

; COUNT ( c-addr -- addr+1 n )
countn:
	db	85h,'COUN','T'+80h
	dw	compile_charn
countc:
	dw	countp
countp:
	pop	bx
	mov	al, [bx]
	mov	ah, 0
	inc	bx
	push	bx
	push	ax
	jmp	next

decimaln:
	db	87h,'DECIMA','L'+80h
	dw	countn
decimalc:
	dw	decimalp
decimalp:
	mov	[WORD base], 10
	jmp	next

hexn:
	db	83h,'HE','X'+80h
	dw	decimaln
hexc:
	dw	hexp
hexp:
	mov	[WORD base], 0x10
	jmp	next

octaln:
	db	85h,'OCTA','L'+80h
	dw	hexn
octalc:
	dw	octalp
octalp:
	mov	[WORD base], 0o10
	jmp	next

; >NUMBER   ( val1 c-addr1 count1 -- val2 c-addr2 count2 )
tonumbern:
	db	87h,'>NUMBE','R'+80h
	dw	octaln
tonumberc:
	dw	tonumberp
tonumberp:
	pop	cx		; CX = count
	jcxz	tonumber0
	pop	di		; DI = c-addr
	pop	ax		; AX = accumulator
	mov	bx, [base]	; BL = base
digit:
	mov	ch, [di]
	sub	ch, '0'
	js	tonumber1
	cmp	ch, 10
	jb	digit1
	sub	ch, 7		; 'A' - ('9'+1)
	cmp	ch, 10
	jb	tonumber1
digit1:
	cmp	ch, bl
	jae	tonumber1	; otherwise CH = digit value
digit_good:
	mul	bx		; multiply accumulator by base into DX:AX
	mov	dl, ch
	mov	dh, 0		; DX = digit value
	add	ax, dx		; AX = new accumulator value
	inc	di		; next input character
	dec	cx		; unconverted characters remaining
	jnz	digit
tonumber1:
	push	ax
	push	di
	mov	ch, 0
tonumber0:
	push	cx
	jmp	next

; prepare number input conversion ( c-addr -- 0 addr count negative-flag )
prep_numberc:
	dw	prep_numberp
prep_numberp:
	pop	bx		; BX = c-addr
	mov	al, [bx]	; AL = count
	mov	ah, 0		; AX = count
	inc	bx		; BX = text
	push	0		; -- 0
	mov	dl, [bx]	; DL = first char
	cmp	dl, '-'		; is first char minus sign?
	jne	prep_number1
	inc	bx		; inc addr
	dec	cx		; dec count
	push	bx		; -- 0 addr
	push	cx		; -- 0 addr count
	push	1		; -- 0 addr count 1
	jmp	next
prep_number1:
	push	bx		; -- 0 addr
	push	cx		; -- 0 addr count
	push	0		; -- 0 addr count 0
	jmp	next

; NUMBER ( c-addr -- n )
numbern:
	db	86h,'NUMBE','R'+80h
	dw	tonumbern
numberc:
	dw	docol
numberp:
	dw	prep_numberc	; -- 0 addr count minus-flag
	dw	torc		; -- 0 addr count
	dw	tonumberc	; -- val addr2 count2
	dw	pabortqc	; -- val addr2
	db	1,'?'
	dw	dropc		; -- val
	dw	rtoc		; -- val minus-flag
	dw	jumpzc
	dw	number1
	dw	negatec		; -- signed-val
number1:
	dw	exitc

; LITERAL ( n -- ) COMPILE (PUSH) , ; IMMEDIATE
literaln:
	db	0C7h,'LITERA','L'+80h
	dw	numbern
literalc:
	dw	docol
literalp:
	dw	check_compilingc
	dw	compilec
	dw	pushc
	dw	commac
	dw	exitc

; : INTERPRET
;     BEGIN
;       BL WORD DUP C@  ( -- c-addr count )
;     WHILE
;       ( -- c-addr )
;       FIND
;       ( -- cfa 1 | cfa -1 | c-addr 0 )
;       ?DUP IF
;         ( -- cfa 1 | cfa -1 )		\ 1 immediate, -1 not immediate
;         STATE @ ( 0 or 1 ) +
;         IF EXECUTE ELSE , THEN
;       ELSE
;         NUMBER
;         STATE @ IF LITERAL THEN
;       THEN
;	?STACK
;     REPEAT
;     DROP
; ;
interpn:
	db	89h,'INTERPRE','T'+80h
	dw	literaln
interpc:
	dw	docol
interpp:
interp1:			; BEGIN
	dw	pushc
	dw	' '		; BL
	dw	wordc		; WORD
	dw	dupc		; DUP
	dw	cfetchc		; C@
	dw	jumpzc		; WHILE
	dw	interp6
	dw	findc		; FIND
	dw	qdupc		; ?DUP
	dw	jumpzc		; IF
	dw	interp4
	dw	statec		; STATE
	dw	fetchc		; @
	dw	plusc		; +
	dw	jumpzc		; IF
	dw	interp2
	dw	executec	; EXECUTE
	dw	jumpc
	dw	interp3
interp2:			; ELSE
	dw	commac		; ,
interp3:			; THEN
	dw	jumpc		; ELSE
	dw	interp5
interp4:
	dw	numberc		; NUMBER
	dw	statec		; STATE
	dw	fetchc		; @
	dw	jumpzc		; IF
	dw	interp7
	dw	literalc	; LITERAL
interp7:			; THEN
interp5:			; THEN
	dw	checkstackc	; ?STACK
	dw	jumpc		; REPEAT
	dw	interp1
interp6:
	dw	dropc		; DROP
	dw	exitc

quitn:
	db	84h,'QUI','T'+80h
	dw	interpn
quitc:
	dw	docol
quitp:
	dw	lbracketc		; [ execute
quit1:
	; empty the return stack
	dw	rstorec

	; newline
	dw	crc

	; accept input line
	dw	pushc
	dw	S0
	dw	fetchc
	dw	pushc
	dw	80
	dw	acceptc

	; store input length
	dw	pushc
	dw	inlen
	dw	storec

	; zero the input pointer
	dw	zeroc
	dw	pushc
	dw	PIN
	dw	storec

	; interpret
	dw	interpc

	; display completion prompt if interpreting otherwise repeat loop
	dw	statec
	dw	fetchc
	dw	jumpnzc
	dw	quit1
	dw	pushc
	dw	OK
	dw	pushc
	dw	2
	dw	typec

	; repeat
	dw	jumpc
	dw	quit1

ok:	db	'OK'

initc:
	dw	initp
initp:
	mov	ax, si
	mov	si, OFFSET PIN_
	mov	di, OFFSET PIN
	mov	cx, 12
	cld
	rep movsb
	mov	si, ax
	jmp	next

restartn:
	db	7,'RESTAR','T'+80h
	dw	quitn
restartc:
	dw	docol
restartp:
	dw	initc
	dw	welcomec
	dw	quitc

abortn:
	db	85h,'ABOR','T'+80h
	dw	restartn
abortc:
	dw	abortp
abortp:
	; empty the data stack
	mov	sp, [S0]
	; perform QUIT, which empties the return stack
	mov	si, OFFSET quitp
	jmp	next

checkstackn:
	db	86h,'?STAC','K'+80h
	dw	abortn
checkstackc:
	dw	checkstackp
checkstackp:
	cmp	sp, [S0]
	ja	stackempty
	mov	ax, [DP]
	add	ax, 80h
	cmp	sp, ax
	jb	stackfull
	jmp	next
stackempty:
	mov	bx, 1		; stdout
	mov	cx, 11
	mov	dx, OFFSET stempty
	mov	ah, 40h		; DOS Write File or Device
	int	21h
	jmp	abortp
stackfull:
	mov	bx, 1		; stdout
	mov	cx, 10
	mov	dx, OFFSET stfull
	mov	ah, 40h		; DOS Write File or Device
	int	21h
	jmp	abortp

stempty	db	'STACK EMPTY'
stfull	db	'STACK FULL'

pabortqn:
	db	88h,'(ABORT"',')'+80h		; "
	dw	checkstackn
pabortqc:
	dw	pabortqp
pabortqp:
	pop	cx		; CX = TOS
	jcxz	pabortq0	; if CX != 0...
	; print problematic word
	mov	bx, [DP]	; BX = address of word buffer
	mov	cl, [bx]	; CL = length
	mov	ch, 0		; CX = length
	inc	cx		; include trailing space
	inc	bx		; BX = word-addr
	mov	dx, bx		; DX = word-addr
	mov	bx, 1		; stdout
	mov	ah, 40h		; DOS Write File or Device
	int	21h
	; print specified message
	mov	cl, [si]	; CL = string length
	mov	ch, 0		; CX = string length
	inc	si		; SI = message text
	mov	dx, si		; DX = message text
	add	si, cx		; SI = IP after string
	mov	bx, 1		; stdout
	mov	ah, 40h		; DOS Write File or Device
	int	21h
	mov	sp, [S0]
	mov	si, OFFSET quitp
	jmp	next
pabortq0:
	mov	al, [si]
	mov	ah, 0
	inc	si
	add	si, ax
	jmp	next

;***** NUMBER OUTPUT *****

; <#   ( -- ) initialise number output pointer
begin_hashn:
	db	82h,'<','#'+80h
	dw	pabortqn
begin_hashc:
	dw	begin_hashp
begin_hashp:
	mov	ax, [DP]
	add	ax, PAD
	mov	[nump], ax
	jmp	next

; #>   ( val -- c-addr count ) end number output conversion
end_hashn:
	db	82h,'#','>'+80h
	dw	begin_hashn
end_hashc:
	dw	end_hashp
end_hashp:
	pop	ax
	mov	ax, [DP]
	add	ax, PAD
	mov	dx, [nump]
	push	dx
	sub	ax, dx
	push	ax
	jmp	next

; HOLD   ( char -- )
holdn:
	db	84h,'HOL','D'+80h
	dw	end_hashn
holdc:
	dw	holdp
holdp:
	pop	ax
	mov	bx, [nump]
	dec	bx
	mov	[bx], al
	mov	[nump], bx
	jmp	next

; #   ( val1 -- val2 ) convert one output digit
hashn:
	db	81h,'#'+80h
	dw	holdn
hashc:
	dw	hashp
hashp:
	pop	ax
	mov	dx, 0
	div	[WORD base]		; AX=quotient, DX=remainder
	push	ax
	add	dl, '0'
	cmp	dl, '9'
	jbe	hash1
	add	dl, 7		; 'A' - ('9'+1)
hash1:
	mov	bx, [nump]
	dec	bx
	mov	[bx], dl
	mov	[nump], bx
	jmp	next

; : #S   ( val -- 0 )   BEGIN # DUP 0= UNTIL ;
hashsn:
	db	82h,'#','S'+80h
	dw	hashn
hashsc:
	dw	docol
hashsp:
	dw	hashc
	dw	dupc
	dw	jumpnzc
	dw	hashsp
	dw	exitc

; : U.   ( u -- )   <# #S #> TYPE  SPACE ;
udotn:
	db	82h,'U','.'+80h
	dw	hashsn
udotc:
	dw	docol
udotp:
	dw	begin_hashc
	dw	hashsc
	dw	end_hashc
	dw	typec
	dw	spacec
	dw	exitc

pad_sizec:
	dw	pad_sizep
pad_sizep:
	pop	dx			; DX = printed count
	pop	ax			; AX = field width
	cmp	ax, dx
	jbe	pad_size0
	sub	ax, dx			; AX = field width left to pad
	push	ax
	jmp	next
pad_size0:
	push	0
	jmp	next

; U.R   ( val fld -- )
udotrn:
	db	83h,'U.','R'+80h
	dw	udotn
udotrc:
	dw	docol
udotrp:
	dw	torc			; >R ( val -- ; R: fld -- )
	dw	begin_hashc
	dw	hashsc
	dw	end_hashc 		; -- addr count

	dw	rtoc			; R> -- addr count fld
	dw	overc			; -- addr count fld count
	dw	pad_sizec		; -- addr count pad
	dw	spacesc

	dw	typec
	dw	exitc

; U.0R   ( val fld -- )
udotzrn:
	db	84h,'U.0','R'+80h
	dw	udotrn
udotzrc:
	dw	docol
udotzrp:
	dw	torc			; >R ( val -- ; R: fld -- )
	dw	begin_hashc
	dw	hashsc
	dw	end_hashc 		; -- addr count

	dw	rtoc			; R> -- addr count fld
	dw	overc			; -- addr count fld count
	dw	pad_sizec		; -- addr count pad
	dw	zeroesc

	dw	typec
	dw	exitc

; SIGN  ( n -- )   output '-' if n < 0
signn:
	db	84h,'SIG','N'+80h
	dw	udotzrn
signc:
	dw	signp
signp:
	pop	ax
	and	ax, ax
	jge	sign1
	mov	bx, [nump]
	dec	bx
	mov	[BYTE bx], '-'
	mov	[nump], bx
sign1:
	jmp	next

; : .   ( n -- )  DUP ABS <# #S SWAP SIGN #> TYPE  SPACE ;
dotn:
	db	81h,'.'+80h
	dw	signn
dotc:
	dw	docol
dotp:
	dw	dupc
	dw	absc
	dw	begin_hashc
	dw	hashsc
	dw	swapc
	dw	signc
	dw	end_hashc
	dw	typec
	dw	spacec
	dw	exitc

queryn:
	db	81h,'?'+80h
	dw	dotn
queryc:
	dw	docol
queryp:
	dw	fetchc
	dw	dotc
	dw	exitc

field_storen:
	db	84h,'FLD','!'+80h
	dw	queryn
field_storec:
	dw	field_storep
field_storep:
	pop	[WORD field]
	jmp	next

field_fetchn:
	db	84h,'FLD','@'+80h
	dw	field_storen
field_fetchc:
	dw	field_fetchp
field_fetchp:
	push	[WORD field]
	jmp	next

;***** DEFINING WORDS *****

; Get CFA of latest definition.
; On exit: BX = CFA, AX undefined, all other regs preserved.
get_latest_cfa:
	mov	bx, [latest]		; BX = NFA
	mov	al, [bx]		; AL = length byte
	and	al, 1Fh			; AL = length
	cbw				; AX = length
	inc	bx			; BX -> name
	add	bx, ax			; BX = LFA
	inc	bx
	inc	bx			; BX = CFA
	ret

; set code field of latest word to IP within the defining colon definition, and return to caller
setcoden:
	db	87h,'SETCOD','E'+80h
	dw	field_fetchn
setcodec:
	dw	setcodep
setcodep:
	call	get_latest_cfa		; BX = CFA, AX undefined
	mov	[bx], si		; store IP = address of machine code
	jmp	doexit			; exit to caller of the defining word

; set code field of latest word to TOS
patch_coden:
	db	8Ah,'PATCH-COD','E'+80h
	dw	setcoden
patch_codec:
	dw	patch_codep
patch_codep:
	call	get_latest_cfa		; BX = CFA, AX undefined
	pop	[WORD bx]
	jmp	next

; CLOAK hide the latest name from FIND
cloakn:
	db	85h,'CLOA','K'+80h
	dw	patch_coden
cloakc:
	dw	cloakp
cloakp:
	mov	bx, [latest]
	or	[BYTE bx], 20h
	jmp	next

; UNCLOAK reveal the latest name to FIND
uncloakn:
	db	87h,'UNCLOA','K'+80h
	dw	cloakn
uncloakc:
	dw	uncloakp
uncloakp:
	mov	bx, [latest]
	and	[BYTE bx], 0DFh
	jmp	next

; : CREATE   BL WORD
;            DUP C@ 31 MIN 1+ ALLOT
;            DUP [ HEX ] 80 TOGGLE
;            HERE 1- 80 TOGGLE
;            LATEST ,
;            CURRENT !
;            2 ALLOT
; ;CODE
;            push di		; push PFA
createn:
	db	86h,'CREAT','E'+80h
	dw	uncloakn
createc:
	dw	docol
createp:
	dw	pushc
	dw	' '		; BL		-- BL
	dw	wordc		; WORD		-- c-addr

	dw	dupc		; DUP		-- c-addr c-addr
	dw	cfetchc		; C@		-- c-addr len
	dw	pushc
	dw	31		; 31		-- c-addr len 31
	dw	minc		; MIN		-- c-addr len
	dw	oplusc		; 1+		-- c-addr len+1
	dw	allotc		; ALLOT		-- c-addr

	dw	dupc		; DUP		-- c-addr c-addr
	dw	pushc
	dw	80h		; [ HEX ] 80	-- c-addr c-addr 80h
	dw	togglec		; TOGGLE	-- c-addr

	dw	herec		; HERE		-- c-addr here
	dw	ominusc		; 1-		-- c-addr here-1
	dw	pushc
	dw	80h		; 80		-- c-addr here-1 80h
	dw	togglec		; TOGGLE	-- c-addr

	dw	latestc		; LATEST	-- c-addr latest
	dw	commac		; ,		-- c-addr

	dw	currentc	; CURRENT	-- c-addr current
	dw	storec		; !		--

	dw	pushc
	dw	2		; 2
	dw	allotc		; ALLOT

	dw	setcodec	; ;CODE
docreate:
	push	di		; PFA
	jmp	next

; : VARIABLE   CREATE  2 ALLOT ;
variablen:
	db	88h,'VARIABL','E'+80h
	dw	createn
variablec:
	dw	docol
variablep:
	dw	createc
	dw	pushc
	dw	2
	dw	allotc
	dw	exitc

; : CONSTANT   CREATE , DOES> @ ;
constantn:
	db	88h,'CONSTAN','T'+80h
	dw	variablen
constantc:
	dw	docol
constantp:
	dw	createc
	dw	commac
	dw	setcodec
doconstant:
	push	[WORD di]
	jmp	next

douser:
	push	[WORD di]
	jmp	next

;***** COMPILING *****

lbracketn:
	db	0C1h,'['+80h	; IMMEDIATE
	dw	constantn
lbracketc:
	dw	lbracketp
lbracketp:
	mov	[WORD state], 0
	jmp	next

rbracketn:
	db	81h,']'+80h
	dw	lbracketn
rbracketc:
	dw	rbracketp
rbracketp:
	mov	[WORD state], 1
	jmp	next

check_executingn:
	db	85h,'?EXE','C'+80h
	dw	rbracketn
check_executingc:
	dw	docol
check_executingp:
	dw	statec
	dw	fetchc
	dw	pabortqc
	db	13,'NOT EXECUTING'
	dw	exitc

check_compilingn:
	db	85h,'?COM','P'+80h
	dw	check_executingn
check_compilingc:
	dw	docol
check_compilingp:
	dw	statec
	dw	fetchc
	dw	zequalc
	dw	pabortqc
	db	13,'NOT COMPILING'
	dw	exitc

check_cspn:
	db	84h,'?CS','P'+80h
	dw	check_compilingn
check_cspc:
	dw	docol
check_cspp:
	dw	csdepthc
	dw	pabortqc
	db	30,'UNTERMINATED CONTROL STRUCTURE'
	dw	exitc

check_strucn:
	db	86h,'?STRU','C'+80h
	dw	check_cspn
check_strucc:
	dw	docol
check_strucp:
	dw	minusc			; test not equal
	dw	pabortqc
	db	28,'MISMATCHED CONTROL STRUCTURE'
	dw	exitc

compilen:
	db	87h,'COMPIL','E'+80h
	dw	check_strucn
compilec:
	dw	compilep
compilep:
	mov	ax, [si]		; AX = CFA at IP
	inc	si
	inc	si			; advance IP over this CFA
	mov	bx, [DP]
	mov	[bx], ax		; enter CFA at HERE
	inc	bx
	inc	bx			; advance DP
	mov	[DP], bx
	jmp	next

colonn:
	db	81h,':'+80h
	dw	compilen
colonc:
	dw	docol
colonp:
	dw	storecspc
	dw	createc
	dw	cloakc
	dw	rbracketc	; ] enter compiling state
	dw	setcodec
docol:				; perform colon definition
	dec	bp
	dec	bp
	mov	[bp], si	; push IP
	mov	si, di		; IP = PFA of definition
	jmp	next

semin:
	db	0C1h,';'+80h	; IMMEDIATE
	dw	colonn
semic:
	dw	docol
semip:
	dw	check_compilingc
	dw	check_cspc
	dw	compilec
	dw	exitc
	dw	lbracketc	; [ suspend compiling
	dw	uncloakc
	dw	exitc

exitn:
	db	84h,'EXI','T'+80h
	dw	semin
exitc:
	dw	doexit
doexit:
	mov	si, [bp]	; pop IP
	inc	bp
	inc	bp
	jmp	next

;***** META-DEFINING *****

; Example that has to work:
;
; : CONST CREATE , DOES> @ ;
; 21 CONST AGE
; AGE	( -- 21 )
;
; Required AGE definition:
;
;	"AGE"
;	link
;	code
;	21
; code:
;	mov	ax, const-does-portion
;	jmp	do-does
;
; do-does:
;	push	di
;	rpush	si
;	mov	si, ax
;	jmp	next
;
; DOES> runtime behaviour in CONST:
;
;	set latest code field to HERE
;	compile "mov ax, " address following this DOES>
;		B8 xx xx
;	compile "jmp do_does"
;		E9 xx xx	relative to end of this jmp instruction
;	exit to word that invoked CONST
;

doesn:
	db	85h,'DOES','>'+80h
	dw	exitn
doesc:
	dw	docol
doesp:
	; set latest code field to HERE
	dw	herec		; HERE
	dw	patch_codec	; PATCH-CODE
	dw	pushc
	dw	0B8h		; B8 MOV AX, xxxx
	dw	ccommac		; compile MOV AX, xxxx
	dw	rtoc		; R> fetch IP within the defining word
	dw	commac		; compile address of code following DOES>
	dw	pushc
	dw	0E9h		; E9 JMP NEAR xxxx
	dw	ccommac		; compile JMP NEAR, xxxx
	dw	pushc
	dw	do_does		; -- do_does
	dw	herec		; -- do_does here
	dw	tplusc		; -- do_does here+2
	dw	minusc		; displacement of do-does code from end of JMP instr
	dw	commac		; compile jump displacement to run do-does
	dw	exitc		; exit to the caller of the defining word

; jumped to by the code of a word defined by a CREATE-DOES word
; DI = PFA of defined word
; AX = IP following DOES> in the particular defining word
do_does:
	push	di
	dec	bp
	dec	bp
	mov	[bp], si	; push IP
	mov	si, ax		; IP = indirect threaded code following DOES>
	jmp	next

;***** COMPILING CONTROL STRUCTURES *****

immediaten:
	db	89h,'IMMEDIAT','E'+80h
	dw	doesn
immediatec:
	dw	immediatep
immediatep:
	mov	bx, [latest]		; BX = NFA
	xor	[BYTE bx], 40h		; toggle immediate bit
	jmp	next

bracket_compilen:
	db	0C9h,'[COMPILE',']'+80h		; immediate
	dw	immediaten
bracket_compilec:
	dw	docol
bracket_compilep:
	dw	tickc
	dw	commac
	dw	exitc

; POSTPONE
; Compilation behaviour:
; "Append the compilation semantics of name to the current definition."
postponen:
	db	0C8h,'POSTPON','E'+80h		; immediate
	dw	bracket_compilen
postponec:
	dw	docol
postponep:
	dw	blc		; BL
	dw	wordc		; WORD
	dw	findc		; FIND	( -- cfa 1 | cfa -1 | addr 0 )
	dw	qdupc
	dw	zequalc
	dw	pabortqc	; ABORT" ?"
	db	1,'?'
	dw	ominusc		; 0 immediate, -2 not immediate
	dw	jumpzc		; IF
	dw	postpone1	; execute at run time instead of compile time
	dw	compilec	; compile it instead of executing it
	dw	compilec
postpone1:
	dw	commac
	dw	exitc

; DO-LEAVE-LOOP dictionary structure:
;
;        (DO)
; do-addr:
;        out-addr
; loop-addr:
;        ...
;        (LEAVE)
;        ...
;        (LEAVE)
;        ...
;        (LOOP)
;        loop-addr
; out-addr:
;        ...

; DO   ( -- do-addr 1 ) ?COMP  COMPILE (DO) HERE 0 , 1 ; IMMEDIATE
don:
	db	0C2h,'D','O'+80h
	dw	postponen
doc:
	dw	docol
dop:
	dw	check_compilingc
	dw	compilec
	dw	dodoc
	dw	herec
	dw	zeroc
	dw	commac
	dw	onec
	dw	exitc

; LOOP   ( do-addr 1 -- )
;     ?COMP  1 ?STRUC
;     COMPILE (LOOP)  DUP CELL+ ,
;     HERE SWAP !
; ; IMMEDIATE
loopn:
	db	0C4h,'LOO','P'+80h	; IMMEDIATE
	dw	don
loopc:
	dw	docol
loopp:
	dw	check_compilingc
	dw	onec
	dw	check_strucc

	dw	compilec
	dw	doloopc
	dw	dupc
	dw	cellplusc
	dw	commac

	dw	herec
	dw	swapc
	dw	storec

	dw	exitc

; TODO: +LOOP

commentn:
	db	0C1h,'('+80h		; immediate
	dw	loopn
commentc:
	dw	docol
commentp:
	dw	pushc
	dw	')'
	dw	wordc
	dw	dropc
	dw	exitc

; (S") runtime S" put following string on stack as -- c-addr count
do_squoten:
	db	84h,'(S"',')'+80h	; "
	dw	commentn
do_squotec:
	dw	do_squotep
do_squotep:
	mov	al, [si]		; AL = count
	mov	ah, 0			; AX = count
	inc	si			; SI = text
	push	si			; -- c-addr
	push	ax			; -- c-addr count
	add	si, ax			; IP = instruction after string
	jmp	next

; (.") runtime ." print following string
do_dotquoten:
	db	84h,'(."',')'+80h	; "
	dw	do_squoten
do_dotquotec:
	dw	do_dotquotep
do_dotquotep:
	mov	cl, [si]	; CL = string length
	mov	ch, 0		; CX = string length
	inc	si		; SI = message text
	mov	dx, si		; DX = message text
	add	si, cx		; SI = IP after string
	mov	bx, 1		; stdout
	mov	ah, 40h		; DOS Write File or Device
	int	21h
	jmp	next

; S" limited by byte size
squoten:
	db	0C2h,'S','"'+80h	; immediate
	dw	do_dotquoten
squotec:
	dw	docol
squotep:
	dw	check_compilingc
	dw	compilec
	dw	do_squotec
	dw	pushc
	dw	'"'
	dw	wordc			; -- c-addr
	dw	cfetchc			; -- count
	dw	oplusc			; -- size-used
	dw	allotc			; ALLOT
	dw	exitc

dotquoten:
	db	0C2h,'.','"'+80h	; " immediate
	dw	squoten
dotquotec:
	dw	docol
dotquotep:
	dw	check_compilingc
	dw	compilec
	dw	do_dotquotec
	dw	pushc
	dw	'"'		; "
	dw	wordc
	dw	cfetchc
	dw	oplusc
	dw	allotc
	dw	exitc

beginn:
	db	0C5h,'BEGI','N'+80h	; immediate
	dw	dotquoten
beginc:
	dw	docol
beginp:
	dw	check_compilingc
	dw	herec
	dw	pushc
	dw	2
	dw	exitc

againn:
	db	0C5h,'AGAI','N'+80h
	dw	beginn
againc:
	dw	docol
againp:
	dw	check_compilingc
	dw	pushc
	dw	2
	dw	check_strucc
	dw	compilec
	dw	jumpc
	dw	commac
	dw	exitc

untiln:
	db	0C5h,'UNTI','L'+80h
	dw	againn
untilc:
	dw	docol
untilp:
	dw	check_compilingc
	dw	pushc
	dw	2
	dw	check_strucc
	dw	compilec
	dw	jumpzc
	dw	commac
	dw	exitc

; IF   ?COMP  COMPILE JUMPZ HERE 0 , ; IMMEDIATE
ifn:
	db	0C2h,'I','F'+80h
	dw	untiln
ifc:
	dw	docol
ifp:
	dw	check_compilingc
	dw	compilec
	dw	jumpzc
	dw	herec
	dw	zeroc
	dw	commac
	dw	pushc
	dw	3
	dw	exitc

; THEN   ?COMP  HERE SWAP ! ; IMMEDIATE
thenn:
	db	0C4h,'THE','N'+80h
	dw	ifn
thenc:
	dw	docol
thenp:
	dw	check_compilingc
	dw	pushc
	dw	3
	dw	check_strucc
	dw	herec
	dw	swapc
	dw	storec
	dw	exitc

; ELSE   ?COMP  COMPILE JUMP HERE 0 ,  SWAP THEN ; IMMEDIATE
elsen:
	db	0C4h,'ELS','E'+80h
	dw	thenn
elsec:
	dw	docol
elsep:
	dw	check_compilingc
	dw	pushc
	dw	3
	dw	check_strucc
	dw	compilec
	dw	jumpc
	dw	herec
	dw	zeroc
	dw	commac
	dw	swapc
	dw	pushc
	dw	3
	dw	thenc
	dw	pushc
	dw	3
	dw	exitc

; WHILE   ( C: 2 -- ) ( cond -- )
whilen:
	db	0C5h,'WHIL','E'+80h	; immediate
	dw	elsen
whilec:
	dw	docol
whilep:
	dw	ifc		; ( C: -- begin-addr 2 if-addr 3 )
	dw	tswapc		; ( C: -- if-addr 3 begin-addr 2 )
	dw	tplusc		; ( C: -- if-addr 3 begin-addr 4 )
	dw	exitc

; REPEAT   ( C: if-addr 3 begin-addr 4 -- )
repeatn:
	db	0C6h,'REPEA','T'+80h
	dw	whilen
repeatc:
	dw	docol
repeatp:
	dw	tminusc			; -- if-addr 3 begin-addr 2
	dw	againc			; -- if-addr 3
	dw	thenc
	dw	exitc

; RECURSE a.k.a. MYSELF just call the same word
recursen:
	db	0C7h,'RECURS','E'+80h	; immediate
	dw	repeatn
recursec:
	dw	recursep
recursep:
	call	get_latest_cfa		; BX = CFA, AX undefined
	mov	di, [DP]
	mov	[di], bx
	inc	di
	inc	di
	mov	[DP], di
	jmp	next

;***** UTILITIES *****

; FREE   push amount of free memory in bytes or zero if insufficient
freen:
	db	84h,'FRE','E'+80h
	dw	recursen
freec:
	dw	freep
freep:
	mov	ax, sp		; AX = SP
	mov	dx, [dp]	; DX = HERE
	cmp	ax, dx		; compare SP with HERE
	jbe	free0		; SP <= HERE ?
	sub	ax, dx		; AX = SP - HERE
	cmp	ax, 80h		; pad plus wriggle-room
	jb	free0
	push	ax
	jmp	next
free0:
	push	0
	jmp	next

welcomen:
	db	87h,'WELCOM','E'+80h
	dw	freen
welcomec:
	dw	docol
welcomep:
	dw	crc
	dw	do_dotquotec
	db	36,'FORTH 80286 64K by Nigel Perks, 2024'
	dw	crc
	dw	freec
	dw	udotc
	dw	do_dotquotec
	db	10,'bytes free'
	dw	crc
	dw	exitc

; paragraph ceiling: round up to nearest multiple of 16
para_ceilc:
	dw	para_ceilp
para_ceilp:
	pop	ax
	add	ax, 15
	and	ax, 0FFF0h
	push	ax
	jmp	next

; paragraph floor: round down to nearest multiple of 16
para_floorc:
	dw	para_floorp
para_floorp:
	pop	ax
	and	ax, 0FFF0h
	push	ax
	jmp	next

; get address field width depending on number base
addr_fieldc:
	dw	addr_fieldp
addr_fieldp:
	mov	ax, [base]
	cmp	ax, 16
	jae	addr_field4
	cmp	ax, 10
	jae	addr_field5
	push	8
	jmp	next
addr_field4:
	push	4
	jmp	next
addr_field5:
	push	5
	jmp	next

; get byte field width depending on number base
byte_fieldc:
	dw	byte_fieldp
byte_fieldp:
	mov	ax, [base]
	cmp	ax, 16
	jae	byte_field2
	cmp	ax, 10
	jae	byte_field3
	push	5
	jmp	next
byte_field2:
	push	2
	jmp	next
byte_field3:
	push	3
	jmp	next

; dump line of memory ( addr -- next-addr )
; assume field width set
dump_linec:
	dw	docol
dump_linep:
	dw	crc		; CR DUP field U.R
	dw	dupc
	dw	addr_fieldc
	dw	udotzrc

	dw	dupc		; -- addr addr

	dw	pushc		; 16 0 DO ...
	dw	16
	dw	zeroc
	dw	dodoc		; -- start-addr addr
	dw	dump_line4
dump_line1:			; -- start-addr addr
	dw	spacec
	dw	dupc		; -- start-addr addr addr
	dw	cfetchc		; -- start-addr addr val
	dw	field_fetchc	; -- start-addr addr val field
	dw	udotzrc		; -- start-addr addr
	dw	oplusc		; -- start-addr next-addr
	dw	doloopc		; LOOP
	dw	dump_line1
dump_line4:
	dw	dropc		; -- addr
	dw	spacec
	dw	pushc		; 16 0 DO ...
	dw	16
	dw	zeroc
	dw	dodoc
	dw	dump_line3
dump_line2:
	dw	dupc		; -- addr addr
	dw	cfetchc		; -- addr val
	dw	blc		; -- addr val BL
	dw	maxc		; -- addr printable
	dw	emitc		; -- addr
	dw	oplusc		; -- next-addr
	dw	doloopc
	dw	dump_line2
dump_line3:
	dw	exitc

; DUMP ( addr count -- )
dumpn:
	db	84h,'DUM','P'+80h
	dw	welcomen
dumpc:
	dw	docol
dumpp:
	dw	para_ceilc	; round count up to whole paragraph
	dw	swapc		; -- count addr
	dw	para_floorc	; round addr down to start on paragraph

	dw	byte_fieldc
	dw	field_storec

dump1:				; count addr --
	dw	dump_linec	; -- count next-addr

	dw	swapc		; -- addr count
	dw	pushc
	dw	10h		; -- addr count 16
	dw	minusc		; -- addr count-16
	dw	swapc		; -- remaining addr
	dw	overc		; -- remaining addr remaining

	dw	jumpnzc
	dw	dump1

	dw	tdropc		; 2DROP
	dw	crc		; CR
	dw	exitc

; PSP program segment prefix
pspn:
	db	83h,'PS','P'+80h
	dw	dumpn
pspc:
	dw	pspp
pspp:
	mov	ah, 51h		; DOS Get PSP Address
	int	21h
	push	bx
	jmp	next

; push non-transient registers
regsn:
	db	84h,'REG','S'+80h
	dw	pspn
regsc:
	dw	regsp
regsp:
	mov	ax, ss
	push	ax
	mov	ax, es
	push	ax
	mov	ax, ds
	push	ax
	mov	ax, cs
	push	ax
	push	bp
	push	sp
	push	di
	push	si
	jmp	next

print_regc:
	dw	docol
print_regp:
	dw	pushc
	dw	4
	dw	udotzrc
	dw	spacec
	dw	exitc

; print non-transient registers
print_regsn:
	db	85h,'.REG','S'+80h
	dw	regsn
print_regsc:
	dw	docol
print_regsp:
	dw	basec
	dw	fetchc
	dw	torc

	dw	hexc

	dw	regsc

	dw	do_dotquotec
	db	3,'SI='
	dw	print_regc

	dw	do_dotquotec
	db	3,'DI='
	dw	print_regc

	dw	do_dotquotec
	db	3,'SP='
	dw	print_regc

	dw	do_dotquotec
	db	3,'BP='
	dw	print_regc

	dw	do_dotquotec
	db	3,'CS='
	dw	print_regc

	dw	do_dotquotec
	db	3,'DS='
	dw	print_regc

	dw	do_dotquotec
	db	3,'ES='
	dw	print_regc

	dw	do_dotquotec
	db	3,'SS='
	dw	print_regc

	dw	rtoc
	dw	basec
	dw	storec

	dw	exitc

;***** DATA AREA *****

	ALIGN	2

; System variables and buffers
emit0	db	0
emit1	db	0
emit2	db	0
emit3	db	0
inlen	dw	0
nump	dw	0
field	dw	0		; a numeric field width

; User variables
R0	dw	0
S0	dw	0
PIN	dw	0	; >IN
DP	dw	0
latest	dw	0
base	dw	0
state	dw	0
csp	dw	0

; User variables initial values when constant
PIN_	dw	0
DP_	dw	free
latest_	dw	print_regsn
base_	dw	10
state_	dw	0
csp_	dw	0

free:

	END	start
