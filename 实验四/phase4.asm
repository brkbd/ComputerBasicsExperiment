
phase4.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <myfunc>:
   0:	f3 0f 1e fa          	endbr64
   4:	55                   	push   %rbp
   5:	48 89 e5             	mov    %rsp,%rbp
   8:	48 83 ec 10          	sub    $0x10,%rsp
   c:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  10:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  14:	48 89 c6             	mov    %rax,%rsi
  17:	48 8d 3d 00 00 00 00 	lea    0x0(%rip),%rdi        # 1e <myfunc+0x1e>
  1e:	b8 00 00 00 00       	mov    $0x0,%eax
  23:	e8 00 00 00 00       	call   28 <myfunc+0x28>
  28:	90                   	nop
  29:	c9                   	leave
  2a:	c3                   	ret

000000000000002b <do_phase>:
  2b:	f3 0f 1e fa          	endbr64
  2f:	55                   	push   %rbp
  30:	48 89 e5             	mov    %rsp,%rbp
  33:	48 83 ec 30          	sub    $0x30,%rsp
  37:	89 7d dc             	mov    %edi,-0x24(%rbp)
  3a:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  41:	00 00 
  43:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  47:	31 c0                	xor    %eax,%eax
  49:	48 b8 55 32 30 32 32 	movabs $0x3332313232303255,%rax
  50:	31 32 33 
  53:	48 89 45 ed          	mov    %rax,-0x13(%rbp)
  57:	66 c7 45 f5 34 35    	movw   $0x3534,-0xb(%rbp)
  5d:	c6 45 f7 00          	movb   $0x0,-0x9(%rbp)
  61:	48 b8 9c d8 ff ff ff 	movabs $0x7fffffffd89c,%rax
  68:	7f 00 00 
  6b:	48 89 c7             	mov    %rax,%rdi
  6e:	e8 8d ff ff ff       	call   0 <myfunc>
  73:	90                   	nop
  74:	90                   	nop
  75:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  79:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
  80:	00 00 
  82:	74 05                	je     89 <do_phase+0x5e>
  84:	e8 00 00 00 00       	call   89 <do_phase+0x5e>
  89:	c9                   	leave
  8a:	c3                   	ret
