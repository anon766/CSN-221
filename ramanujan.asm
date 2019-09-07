/* 
r0 = n
r1 = flag
r2 = i
r3 = i3
r4 = j
r5 = j3
r6 = n-i3
r7 = i3+j3
*/
.main:
	mov r0, 0 #n=0
	mov r1, 0 #flag=0
	.loop1: 
		add r0, r0, 1 #n++
		cmp r1, 2 #if flag ==2
		beq .end #break
		mov r1, 0 #reset flag =0
		mov r2, 1 #i++
		.loop2:
			mul r3, r2, r2 #i3=i*i
			mul r3, r3, r2 #i3=i3*i=i*i*i
			cmp r3, r0 #if i3==n
			beq .loop1 #break
			add r4, r2, 1 #j=i+1
			.loop3:
				mul r5, r4, r4 #j3=j*j
				mul r5, r5, r4 #j3=j3*j=j*j*j
				sub r6, r0, r3 #temp=n-i3
				cmp r6, r5 #if(j3==ni-3 which is equal to temp)
				beq .loop2 
				add r7, r3, r5 #temp2=i3+j3
				cmp r7, r0 #if(i3+j3 or temp2=n)	
				beq .incrementFlag
				.incrementFlag:
					add r1, r1, 1 #increment flag
					b .loop2
				b .loop3
			b .loop2
		b.loop1
	.end:
		ret	
		
  
