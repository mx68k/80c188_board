;nasm -o 80c188_test.hex -f ith -l 80c188_test.lst 80c188_test.asm
;hex2bin -R 32K -o 80c188_test.bin 80c188_test.hex 

			bits 16
			cpu 186
			
			section io_test start=0000h vstart=0F8000h

io_test:		mov dx, 00h	
			mov al, 01h
			out dx, al	
			
			call delay

			mov dx, 00h	
			mov al, 02h
			out dx, al
			
			call delay
			
			mov dx, 00h	
			mov al, 04h
			out dx, al
			
			call delay
			
			mov dx, 00h	
			mov al, 08h
			out dx, al
			
			call delay
			
			mov dx, 00h	
			mov al, 10h
			out dx, al
			
			call delay
			
			mov dx, 00h	
			mov al, 20h
			out dx, al
			
			call delay

			mov dx, 00h	
			mov al, 40h
			out dx, al
			
			call delay

			mov dx, 00h	
			mov al, 80h
			out dx, al
			
			call delay

			mov dx, 00h	
			mov al, 80h
			out dx, al
			
			call delay
			
			mov dx, 00h	
			mov al, 40h
			out dx, al
			
			call delay
			
			mov dx, 00h	
			mov al, 20h
			out dx, al
			
			call delay
			
			mov dx, 00h	
			mov al, 10h
			out dx, al
			
			call delay
			
			mov dx, 00h	
			mov al, 08h
			out dx, al
			
			call delay
			
			mov dx, 00h	
			mov al, 04h
			out dx, al
			
			call delay
			
			mov dx, 00h	
			mov al, 02h
			out dx, al
			
			call delay
			
			mov dx, 00h	
			mov al, 01h
			out dx, al
			
			call delay

			jmp io_test

delay:			xor cx, cx
			loop $
			xor cx, cx
			loop $
			xor cx, cx
			loop $
			ret

			section start start=07F00h vstart=0FFF00h
			
start:			cli
			cld
			
			mov dx, 0FFA0h
			mov ax, 0F838h
			out dx, ax
			
			mov dx, 0FFA2h
			mov ax, 1F8h
			out dx, ax
			
			mov dx, 0FFA8h
			mov ax, 84B8h
			out dx, ax
			
			mov dx, 0FFA6h
			mov ax, 9F8h
			out dx, ax
			
			mov dx, 0FFA4h
			mov ax, 1
			out dx, ax
							
			mov dx, 00h	
			mov al, 0FFh
			out dx, al
				
			xor cx, cx
			loop $
			xor cx, cx
			loop $	
			xor cx, cx
			loop $
			xor cx, cx
			loop $	
			xor cx, cx
			loop $
			xor cx, cx
			loop $	
			
			mov dx, 00h	
			mov al, 55h
			out dx, al
			
			xor cx, cx
			loop $
			xor cx, cx
			loop $	
			xor cx, cx
			loop $
			xor cx, cx
			loop $	
			xor cx, cx
			loop $
			xor cx, cx
			loop $		
			
			mov dx, 00h	
			mov al, 0AAh
			out dx, al
			
			xor cx, cx
			loop $
			xor cx, cx
			loop $	
			xor cx, cx
			loop $
			xor cx, cx
			loop $	
			xor cx, cx
			loop $
			xor cx, cx
			loop $	
			
			mov dx, 00h	
			mov al, 00h
			out dx, al
			
			xor cx, cx
			loop $
			xor cx, cx
			loop $	
			xor cx, cx
			loop $
			xor cx, cx
			loop $	
			xor cx, cx
			loop $
			xor cx, cx
			loop $	
			
			mov ax, 00h			
			mov ds, ax
			mov es, ax
			mov ss, ax			
			mov sp, 8Ch	
			
			jmp 0F000h:8000h

			section reset start=07FF0h vstart=0FFFF0h	
			
			jmp 0F000h:start		

