db $37

JMP MarioBelow : JMP MarioAbove : JMP MarioSide
JMP SpriteV : JMP SpriteH
JMP Cape : JMP Fireball
JMP MarioCorner : JMP MarioBody : JMP MarioHead
JMP WallFeet : JMP WallBody

MarioBelow:
	LDA $14AF				; \ If the ON/OFF switch is ON...
	BNE Label_0000			; /
	LDA #$25				; \ Make this block passable.
	STA $1693				; |
	LDY #$00				; /
	BRA Label_0001
Label_0000:
	LDA #$30				; \ Make this block solid.
	STA $1693				; |
	LDY #$01				; /
Label_0001:					; > --------
RTL

MarioAbove:
	LDA $14AF				; \ If the ON/OFF switch is ON...
	BNE Label_0002			; /
	LDA #$25				; \ Make this block passable.
	STA $1693				; |
	LDY #$00				; /
	BRA Label_0003
Label_0002:
	LDA #$30				; \ Make this block solid.
	STA $1693				; |
	LDY #$01				; /
Label_0003:					; > --------
RTL

MarioSide:
	LDA $14AF				; \ If the ON/OFF switch is ON...
	BNE Label_0004			; /
	LDA #$25				; \ Make this block passable.
	STA $1693				; |
	LDY #$00				; /
	BRA Label_0005
Label_0004:
	LDA #$30				; \ Make this block solid.
	STA $1693				; |
	LDY #$01				; /
Label_0005:					; > --------


SpriteV:
	LDA $14AF				; \ If the ON/OFF switch is ON...
	BNE Label_0006			; /
	LDA #$25				; \ Make this block passable.
	STA $1693				; |
	LDY #$00				; /
	BRA Label_0007
Label_0006:
	LDA #$30				; \ Make this block solid.
	STA $1693				; |
	LDY #$01				; /
Label_0007:					; > --------
RTL

SpriteH:
	LDA $14AF				; \ If the ON/OFF switch is ON...
	BNE Label_0008				; /
	LDA #$25				; \ Make this block passable.
	STA $1693				; |
	LDY #$00				; /
	BRA Label_0009
Label_0008:
	LDA #$30				; \ Make this block solid.
	STA $1693				; |
	LDY #$01				; /
Label_0009:					; > --------

Cape:
Fireball:
RTL

MarioCorner:
	LDA $14AF				; \ If the ON/OFF switch is ON...
	BNE Label_000A			; /
	LDA #$25				; \ Make this block passable.
	STA $1693				; |
	LDY #$00				; /
	BRA Label_000B
Label_000A:
	LDA #$30				; \ Make this block solid.
	STA $1693				; |
	LDY #$01				; /
Label_000B:					; > --------
RTL

MarioBody:
	LDA $14AF				; \ If the ON/OFF switch is ON...
	BNE Label_000C				; /
	LDA #$25				; \ Make this block passable.
	STA $1693				; |
	LDY #$00				; /
	BRA Label_000D
Label_000C:
	LDA #$30				; \ Make this block solid.
	STA $1693				; |
	LDY #$01				; /
Label_000D:					; > --------
	LDA #$25				; \ Make this block passable.
	STA $1693				; |
	LDY #$00				; /
RTL

MarioHead:
	LDA $14AF				; \ If the ON/OFF switch is ON...
	BNE Label_000E			; /
	LDA #$25				; \ Make this block passable.
	STA $1693				; |
	LDY #$00				; /
	BRA Label_000F
Label_000E:
	LDA #$30				; \ Make this block solid.
	STA $1693				; |
	LDY #$01				; /
Label_000F:					; > --------


WallFeet:
WallBody:
RTL



print "ON/OFF Blocks Solid OFF"
