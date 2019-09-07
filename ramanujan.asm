/* 
r0 = n
r1 = flag
r2 = i
r3 = i3
r4 = j
r5 = j3
r6
*/
main:
	mov r0, 0
	mov r1, 0
	loop1:
		add r0, r0, 1
		cmp r1, 2
		beq .end
		mov r1, 0
		mov r2, 1
		loop2:
			mult r3, r2, r2
			mult r3, r3, r2
			cmp r3, r0
			beq .loop1
			add r4, r2, 1
			loop3:
				mult r5, r4, r4
				mult r5, r5, r4
				cmp r7, r5
				beq .loop2 
				add r6, r3, r5
				cmp r6, r0
				beq .incrementFlag
				incrementFlag:
					add r1, r1, 1
					b .loop2
				sub r7, r0, r3
				b .loop3
			b .loop2
		b.loop1
	end:
		ret	
		
  
