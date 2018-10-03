; Disk ROM work area usage:
;
; +0: Bulk OUT endpoint parameters
; +1: Bulk IN endpoint parameters
; +2: Interrupt IN endpoint parameters
; +3: Interface number for the ADSC setup packet
;
; Endpoint parameters are:
;   bits 7 and 3-0: Endpoint number
;   bit 4: Toggle bit state
;   bits 6-5: Endpoint max packet size
;
; For +2 what 6-5 actually stores is the endpoint 0 max packet size,
; the max packet size of the interrupt IN endpoint is assumed to be 2.
;
; Max packet size is stored encoded as follows:
;  00 = 8 bytes
;  01 = 16 bytes
;  10 = 32 bytes
;  11 = 64 bytes
;
; If no device is connected or the connected device is not a CBI FDD,
; or if some error occurred during USB hardware or device initialization,
; the work area contents is all zero.


;Input: A = Size
;       B = work area byte (0-2)
WK_SET_EP_SIZE:
    push ix
    call WK_GET_POINTER

    ld c,0
    cp 8
    jr z,_WK_SET_EP_SIZE_DO
    inc c
    cp 16
    jr z,_WK_SET_EP_SIZE_DO
    inc c
    cp 32
    jr z,_WK_SET_EP_SIZE_DO
    inc c

_WK_SET_EP_SIZE_DO:
    rrc c
    rrc c
    rrc c
    ld a,(hl)
    and 11001111b
    or c
    ld (hl),a
    pop ix
    ret


;Zero the entire work area
WK_ZERO:
    push ix
    call WK_GETWRK
    ld (ix),0
    ld (ix+1),0
    ld (ix+2),0
    ld (ix+5),0
    ld (ix+6),0
    ld (ix+7),0
    pop ix
    ret


;Input:  B = work area byte (0-2)
;Output: B = size
WK_GET_EP_SIZE:
    push ix
    call WK_GET_POINTER
    pop ix
    ld a,(hl)
    rlca
    rlca
    rlca
    and 11b

    ld b,8
    or a
    ret z
    sla b
    dec a
    ret z
    sla b
    dec a
    ret z
    sla b

    ret


;Z and NC if work area is zeroed, NZ if it has contents
WK_HAS_CONTENTS:
    push ix
    call WK_GETWRK
    ld a,(hl)
    or a
    pop ix
    ret


;Input: A = EP number
;       B = work area byte (0-2)
WK_SET_EP_NUMBER:
    push ix
    call WK_GET_POINTER
    and 10001111b
    ld c,a
    ld a,(hl)
    and 11110000b
    or c
    ld (hl),a
    pop ix
    ret


;Input:  B = work area byte (0-2)
;Output: A = EP number
WK_GET_EP_NUMBER:
    push ix
    call WK_GET_POINTER
    ld a,(hl)
    and 10001111b
    pop ix
    ret


;Input: Cy = toggle bit
;       B = work area byte (0-2)
WK_SET_TOGGLE_BIT:
    push ix
    call WK_GET_POINTER
    jr c,_WK_SET_TOGGLE_BIT_1
    res 4,(hl)
    pop ix
    ret
_WK_SET_TOGGLE_BIT_1:
    set 4,(hl)
    pop ix
    ret

;Input:  B = work area byte (0-2)
;Output: Cy = toggle bit
WK_GET_TOGGLE_BIT:
    push ix
    call WK_GET_POINTER
    bit 4,(hl)
    pop ix
    scf
    ret nz
    ccf
    ret


;Get in HL the address of work area for byte B
WK_GET_POINTER:
    push af
    push bc
    call WK_GETWRK
    pop bc
    ld c,b
    ld b,0
    add hl,bc
    pop af
    ret

WK_SET_IFACE_NUMBER:
    push ix
    push af
    call WK_GETWRK
    pop af
    ld (ix+3),a
    pop ix
    ret

WK_GET_IFACE_NUMBER:
    push ix
    call WK_GETWRK
    ld a,(ix+3)
    pop ix
    ret


;In: A=USB error, D=ASC, E=ASCQ    
WK_SET_ERROR:
    push ix
    push af
    push de
    call WK_GETWRK
    pop de
    pop af
    ld (ix+5),a
    ld (ix+6),d
    ld (ix+7),e
    pop ix
    ret

;Out: A=USB error, D=ASC, E=ASCQ    
WK_GET_ERROR:
    push ix
    call WK_GETWRK
    ld a,(ix+5)
    ld d,(ix+6)
    ld e,(ix+7)
    pop ix
    ret


; This is the GETWRK routine copied from the kernel, we need it here
; because the work area related code lives in ROM bank 1.
;
; Output: HL = IX = pointer to 8 byte area for the slot in SLTWRK

WK_GETWRK:
	call _WK_GETSLTWRK			; get my SLTWRK entry
    dec hl
    dec hl
	push hl
	pop	ix
	ret

;	Subroutine	get my SLTWRK entry
;	Inputs		-
;	Outputs		HL = pointer to SLTWRK entry

_WK_GETSLTWRK:
	call _WK_GETEXPTBL			; get my primairy slot
	add	a,a
	add	a,a
	add	a,a
	scf
	adc	a,a			; primary slot*4 + 1
	ld c,a
	ld a,(hl)
	add	a,a
	sbc	a,a
	and	00CH			; 0 for non expanded, 0CH for expanded
	inc	hl
	inc	hl
	inc	hl
	inc	hl
	and	(hl)
	or c
	add	a,a			; word entries
	ld hl,SLTWRK
	jr _WK_ADDHLA

;	Subroutine	get my EXPTBL entry
;	Inputs		-
;	Outputs		HL = pointer to SLTWRK entry

_WK_GETEXPTBL:
	call 0F365h  ;read primary slotregister
	rrca
	rrca
	and	003H
	ld hl,EXPTBL
	ld b,000H
_WK_ADDHLA:
	ld c,a
	add hl,bc
	ret    