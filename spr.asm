redefined_characters

;Space
!byte 0, 0, 0, 0, 0, 0, 0, 0

;Dirt
!byte $08, $a0, $2a, $a2, $aa, $88, $2a, $8a
!byte $22, $82, $28, $a2, $8a, $a8, $8a, $a8
!byte $2a, $a2, $a8, $2a, $88, $a0, $8a, $20
!byte $aa, $a8, $a2, $2a, $88, $a2, $20, $88

;Wall
!byte $3f, $1f, $15, $00, $fc, $fc, $54, $00
!byte $fc, $fc, $54, $00, $3f, $1f, $15, $00
!byte $3f, $1f, $15, $00, $fc, $fc, $54, $00
!byte $fc, $fc, $54, $00, $3f, $1f, $15, $00

;Steelwall
!byte $55, $55, $41, $41, $71, $71, $55, $55

;Diamond
!byte $03, $03, $07, $0d, $3f, $1f, $f7, $fd
!byte $00, $00, $c0, $c0, $70, $d0, $f4, $fc
!byte $7f, $df, $37, $3d, $0f, $0f, $03, $01
!byte $7c, $dc, $f0, $f0, $40, $c0, $00, $00

;Boulder
!byte $0f, $37, $df, $59, $69, $a5, $95, $55
!byte $c0, $70, $dc, $7f, $7f, $9f, $5f, $6f
!byte $45, $51, $45, $51, $58, $6a, $24, $05
!byte $5b, $56, $55, $55, $54, $54, $50, $40

;Firefly
!byte $ff, $ff, $ea, $ea, $e5, $e5, $e4, $e4
!byte $ff, $ff, $ab, $ab, $5b, $5b, $1b, $1b
!byte $e4, $e4, $e5, $e5, $ea, $ea, $ff, $ff
!byte $1b, $1b, $5b, $5b, $ab, $ab, $ff, $ff

;Amoeba 1
!byte $5c, $57, $55, $d5, $35, $d5, $55, $55
!byte $35, $d5, $55, $55, $57, $55, $55, $f5
!byte $f5, $0d, $0d, $f5, $55, $57, $5c, $70
!byte $f5, $57, $57, $55, $55, $d5, $35, $0d

;Amoeba 2
!byte $57, $55, $d5, $35, $0d, $35, $d5, $57
!byte $d5, $55, $55, $57, $5c, $57, $f5, $0d
!byte $57, $f5, $f5, $55, $55, $55, $57, $5c
!byte $0d, $f5, $55, $55, $55, $55, $d5, $35

;Explosion 1
!byte $00, $00, $00, $00, $03, $30, $01, $0c
!byte $00, $00, $00, $00, $00, $c0, $00, $cc
!byte $02, $07, $0c, $00, $03, $00, $00, $00
!byte $90, $b0, $40, $00, $00, $00, $00, $00

;Explosion 2
!byte $00, $00, $00, $03, $c0, $01, $00, $30
!byte $00, $00, $00, $00, $c0, $00, $30, $23
!byte $08, $00, $10, $0c, $30, $03, $00, $00
!byte $04, $00, $8c, $40, $00, $00, $00, $00

;Explosion 3
!byte $00, $00, $03, $00, $04, $00, $00, $00
!byte $00, $00, $00, $30, $00, $0c, $00, $0b
!byte $c0, $20, $00, $40, $0c, $c0, $03, $00
!byte $00, $01, $00, $80, $13, $00, $00, $00

;Explosion 4
!byte $00, $03, $00, $10, $00, $00, $00, $00
!byte $00, $00, $0c, $00, $03, $00, $00, $02
!byte $00, $80, $00, $00, $0c, $00, $c0, $03
!byte $00, $01, $00, $00, $80, $13, $00, $00

;Butterfly 1
!byte $00, $40, $c0, $c0, $d0, $f0, $f4, $fc
!byte $00, $04, $0c, $0c, $1c, $3c, $7c, $fc
!byte $ff, $fc, $f4, $f0, $d0, $c0, $c0, $40
!byte $fc, $fc, $7c, $3c, $1c, $0c, $0c, $04

;Butterfly 2
!byte $00, $10, $30, $30, $30, $34, $3c, $3c
!byte $00, $10, $30, $30, $30, $70, $f0, $f0
!byte $3f, $3c, $3c, $34, $30, $30, $30, $10
!byte $f0, $f0, $f0, $70, $30, $30, $30, $10

;Butterfly 3
!byte $00, $00, $04, $0c, $0c, $0c, $0c, $0f
!byte $00, $00, $40, $c0, $c0, $c0, $c0, $c0
!byte $0f, $0f, $0c, $0c, $0c, $0c, $04, $00
!byte $c0, $c0, $c0, $c0, $c0, $c0, $40, $00

;Bubble
!byte $03, $0d, $30, $30, $c0, $c0, $00, $c0
!byte $c0, $30, $4c, $0c, $03, $03, $03, $00
!byte $c0, $00, $c0, $c0, $34, $32, $0d, $03
!byte $03, $13, $03, $43, $0c, $1c, $b0, $c0

;Rockford
!byte $00, $0c, $0f, $33, $33, $0f, $03, $07
!byte $00, $30, $f0, $cc, $cc, $f0, $c0, $d0
!byte $11, $13, $01, $03, $0d, $0c, $0c, $14
!byte $44, $c4, $40, $c0, $70, $30, $30, $14

;TODO: Update for Vic (reuse as needed)
;Rockford parts
!byte $00, $0c, $0f, $3f, $33, $0f, $03, $0f  ;blink 1
!byte $00, $0c, $3c, $3f, $33, $3c, $30, $3c  ;blink 1
!byte $00, $0c, $0f, $3f, $3f, $0f, $03, $0f  ;eyes closed
!byte $00, $0c, $3c, $3f, $3f, $3c, $30, $3c  ;eyes closed
!byte $33, $0f, $03, $03, $0f, $0c, $0c, $3c  ;fold arms
!byte $33, $3c, $30, $30, $3c, $0c, $0c, $0f  ;fold arms
!byte $33, $0f, $03, $03, $0f, $0c, $3c, $00  ;tap foot

;Rockford move left
!byte $00, $03, $0f, $33, $33, $0f, $03, $03  ;head left
!byte $00, $30, $3c, $3c, $3c, $3c, $30, $30  ;head left
!byte $0f, $03, $03, $03, $0f, $18, $18, $38  ;legs left full
!byte $30, $30, $30, $30, $3f, $03, $03, $00  ;legs left full
!byte $0f, $03, $03, $03, $07, $06, $06, $0e  ;legs left part
!byte $30, $30, $30, $30, $3c, $06, $06, $06  ;legs left part
!byte $0f, $03, $03, $03, $03, $03, $03, $0f  ;legs left part-stand
!byte $30, $30, $30, $30, $30, $30, $3c, $0c  ;legs left part-stand
!byte $30, $30, $30, $30, $30, $30, $30, $30  ;legs left stand

;Rockford move right
!byte $00, $03, $0f, $0f, $0f, $0f, $03, $03  ;head right
!byte $00, $30, $3c, $33, $33, $3c, $30, $30  ;head right
!byte $03, $03, $03, $03, $03, $03, $03, $03  ;legs right part-stand
!byte $3c, $30, $30, $30, $30, $30, $30, $3c  ;legs right stand
!byte $03, $03, $03, $03, $03, $03, $0f, $0c  ;legs right part-stand
!byte $03, $03, $03, $03, $0f, $18, $18, $18  ;legs right part
!byte $3c, $30, $30, $30, $38, $18, $18, $1c  ;legs right part
!byte $03, $03, $03, $03, $3f, $30, $30, $00  ;legs right full
!byte $3c, $30, $30, $30, $3c, $06, $06, $07  ;legs right full

;Bomb
!byte $00, $00, $02, $01, $01, $05, $15, $50
!byte $00, $80, $00, $00, $00, $40, $50, $14
!byte $48, $48, $40, $52, $58, $50, $15, $05
!byte $84, $84, $04, $14, $94, $14, $50, $40

;Pathway
!byte $00, $10, $2a, $10, $02, $15, $02, $00
