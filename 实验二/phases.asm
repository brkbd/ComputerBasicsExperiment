
phases.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <phase_1>:
   0:	f3 0f 1e fa          	endbr64
   4:	55                   	push   %rbp
   5:	48 89 e5             	mov    %rsp,%rbp
   8:	48 83 ec 20          	sub    $0x20,%rsp
   c:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
  10:	0f b6 05 00 00 00 00 	movzbl 0x0(%rip),%eax        # 17 <phase_1+0x17>
  17:	83 e8 30             	sub    $0x30,%eax
  1a:	88 45 fb             	mov    %al,-0x5(%rbp)
  1d:	0f be 45 fb          	movsbl -0x5(%rbp),%eax
  21:	89 45 fc             	mov    %eax,-0x4(%rbp)
  24:	8b 55 fc             	mov    -0x4(%rbp),%edx
  27:	48 89 d0             	mov    %rdx,%rax
  2a:	48 c1 e0 02          	shl    $0x2,%rax
  2e:	48 01 d0             	add    %rdx,%rax
  31:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
  38:	00 
  39:	48 01 d0             	add    %rdx,%rax
  3c:	48 01 c0             	add    %rax,%rax
  3f:	48 8d 15 00 00 00 00 	lea    0x0(%rip),%rdx        # 46 <phase_1+0x46>
  46:	48 01 c2             	add    %rax,%rdx
  49:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  4d:	48 89 d6             	mov    %rdx,%rsi
  50:	48 89 c7             	mov    %rax,%rdi
  53:	e8 00 00 00 00       	call   58 <phase_1+0x58>
  58:	85 c0                	test   %eax,%eax
  5a:	74 05                	je     61 <phase_1+0x61>
  5c:	e8 00 00 00 00       	call   61 <phase_1+0x61>
  61:	90                   	nop
  62:	c9                   	leave
  63:	c3                   	ret

0000000000000064 <phase_2>:
  64:	f3 0f 1e fa          	endbr64
  68:	55                   	push   %rbp
  69:	48 89 e5             	mov    %rsp,%rbp
  6c:	48 83 ec 40          	sub    $0x40,%rsp
  70:	48 89 7d c8          	mov    %rdi,-0x38(%rbp)
  74:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  7b:	00 00 
  7d:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  81:	31 c0                	xor    %eax,%eax
  83:	48 8d 55 e0          	lea    -0x20(%rbp),%rdx
  87:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  8b:	48 89 d6             	mov    %rdx,%rsi
  8e:	48 89 c7             	mov    %rax,%rdi
  91:	e8 00 00 00 00       	call   96 <phase_2+0x32>
  96:	8b 45 e0             	mov    -0x20(%rbp),%eax
  99:	85 c0                	test   %eax,%eax
  9b:	79 05                	jns    a2 <phase_2+0x3e>
  9d:	e8 00 00 00 00       	call   a2 <phase_2+0x3e>
  a2:	8b 45 e0             	mov    -0x20(%rbp),%eax
  a5:	0f b6 15 00 00 00 00 	movzbl 0x0(%rip),%edx        # ac <phase_2+0x48>
  ac:	0f be d2             	movsbl %dl,%edx
  af:	83 ea 30             	sub    $0x30,%edx
  b2:	39 d0                	cmp    %edx,%eax
  b4:	74 05                	je     bb <phase_2+0x57>
  b6:	e8 00 00 00 00       	call   bb <phase_2+0x57>
  bb:	8b 45 e4             	mov    -0x1c(%rbp),%eax
  be:	0f b6 15 00 00 00 00 	movzbl 0x0(%rip),%edx        # c5 <phase_2+0x61>
  c5:	0f be d2             	movsbl %dl,%edx
  c8:	83 ea 30             	sub    $0x30,%edx
  cb:	39 d0                	cmp    %edx,%eax
  cd:	74 05                	je     d4 <phase_2+0x70>
  cf:	e8 00 00 00 00       	call   d4 <phase_2+0x70>
  d4:	c7 45 dc 02 00 00 00 	movl   $0x2,-0x24(%rbp)
  db:	eb 30                	jmp    10d <phase_2+0xa9>
  dd:	8b 45 dc             	mov    -0x24(%rbp),%eax
  e0:	48 98                	cltq
  e2:	8b 54 85 e0          	mov    -0x20(%rbp,%rax,4),%edx
  e6:	8b 45 dc             	mov    -0x24(%rbp),%eax
  e9:	83 e8 01             	sub    $0x1,%eax
  ec:	48 98                	cltq
  ee:	8b 4c 85 e0          	mov    -0x20(%rbp,%rax,4),%ecx
  f2:	8b 45 dc             	mov    -0x24(%rbp),%eax
  f5:	83 e8 02             	sub    $0x2,%eax
  f8:	48 98                	cltq
  fa:	8b 44 85 e0          	mov    -0x20(%rbp,%rax,4),%eax
  fe:	01 c8                	add    %ecx,%eax
 100:	39 c2                	cmp    %eax,%edx
 102:	74 05                	je     109 <phase_2+0xa5>
 104:	e8 00 00 00 00       	call   109 <phase_2+0xa5>
 109:	83 45 dc 01          	addl   $0x1,-0x24(%rbp)
 10d:	83 7d dc 05          	cmpl   $0x5,-0x24(%rbp)
 111:	7e ca                	jle    dd <phase_2+0x79>
 113:	90                   	nop
 114:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
 118:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
 11f:	00 00 
 121:	74 05                	je     128 <phase_2+0xc4>
 123:	e8 00 00 00 00       	call   128 <phase_2+0xc4>
 128:	c9                   	leave
 129:	c3                   	ret

000000000000012a <phase_3>:
 12a:	f3 0f 1e fa          	endbr64
 12e:	55                   	push   %rbp
 12f:	48 89 e5             	mov    %rsp,%rbp
 132:	48 83 ec 30          	sub    $0x30,%rsp
 136:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
 13a:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
 141:	00 00 
 143:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
 147:	31 c0                	xor    %eax,%eax
 149:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%rbp)
 150:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%rbp)
 157:	48 8d 4d ec          	lea    -0x14(%rbp),%rcx
 15b:	48 8d 55 e8          	lea    -0x18(%rbp),%rdx
 15f:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
 163:	48 8d 35 00 00 00 00 	lea    0x0(%rip),%rsi        # 16a <phase_3+0x40>
 16a:	48 89 c7             	mov    %rax,%rdi
 16d:	b8 00 00 00 00       	mov    $0x0,%eax
 172:	e8 00 00 00 00       	call   177 <phase_3+0x4d>
 177:	89 45 f4             	mov    %eax,-0xc(%rbp)
 17a:	83 7d f4 01          	cmpl   $0x1,-0xc(%rbp)
 17e:	7f 05                	jg     185 <phase_3+0x5b>
 180:	e8 00 00 00 00       	call   185 <phase_3+0x5b>
 185:	0f b6 05 00 00 00 00 	movzbl 0x0(%rip),%eax        # 18c <phase_3+0x62>
 18c:	0f be c0             	movsbl %al,%eax
 18f:	8d 50 d0             	lea    -0x30(%rax),%edx
 192:	8b 45 e8             	mov    -0x18(%rbp),%eax
 195:	39 c2                	cmp    %eax,%edx
 197:	74 05                	je     19e <phase_3+0x74>
 199:	e8 00 00 00 00       	call   19e <phase_3+0x74>
 19e:	8b 45 e8             	mov    -0x18(%rbp),%eax
 1a1:	83 f8 09             	cmp    $0x9,%eax
 1a4:	77 7d                	ja     223 <phase_3+0xf9>
 1a6:	89 c0                	mov    %eax,%eax
 1a8:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
 1af:	00 
 1b0:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 1b7 <phase_3+0x8d>
 1b7:	8b 04 02             	mov    (%rdx,%rax,1),%eax
 1ba:	48 98                	cltq
 1bc:	48 8d 15 00 00 00 00 	lea    0x0(%rip),%rdx        # 1c3 <phase_3+0x99>
 1c3:	48 01 d0             	add    %rdx,%rax
 1c6:	3e ff e0             	notrack jmp *%rax
 1c9:	c7 45 f0 2f 03 00 00 	movl   $0x32f,-0x10(%rbp)
 1d0:	eb 56                	jmp    228 <phase_3+0xfe>
 1d2:	c7 45 f0 30 01 00 00 	movl   $0x130,-0x10(%rbp)
 1d9:	eb 4d                	jmp    228 <phase_3+0xfe>
 1db:	c7 45 f0 84 01 00 00 	movl   $0x184,-0x10(%rbp)
 1e2:	eb 44                	jmp    228 <phase_3+0xfe>
 1e4:	c7 45 f0 8e 02 00 00 	movl   $0x28e,-0x10(%rbp)
 1eb:	eb 3b                	jmp    228 <phase_3+0xfe>
 1ed:	c7 45 f0 1c 01 00 00 	movl   $0x11c,-0x10(%rbp)
 1f4:	eb 32                	jmp    228 <phase_3+0xfe>
 1f6:	c7 45 f0 01 02 00 00 	movl   $0x201,-0x10(%rbp)
 1fd:	eb 29                	jmp    228 <phase_3+0xfe>
 1ff:	c7 45 f0 a9 01 00 00 	movl   $0x1a9,-0x10(%rbp)
 206:	eb 20                	jmp    228 <phase_3+0xfe>
 208:	c7 45 f0 74 03 00 00 	movl   $0x374,-0x10(%rbp)
 20f:	eb 17                	jmp    228 <phase_3+0xfe>
 211:	c7 45 f0 7b 00 00 00 	movl   $0x7b,-0x10(%rbp)
 218:	eb 0e                	jmp    228 <phase_3+0xfe>
 21a:	c7 45 f0 41 01 00 00 	movl   $0x141,-0x10(%rbp)
 221:	eb 05                	jmp    228 <phase_3+0xfe>
 223:	e8 00 00 00 00       	call   228 <phase_3+0xfe>
 228:	8b 45 ec             	mov    -0x14(%rbp),%eax
 22b:	39 45 f0             	cmp    %eax,-0x10(%rbp)
 22e:	74 05                	je     235 <phase_3+0x10b>
 230:	e8 00 00 00 00       	call   235 <phase_3+0x10b>
 235:	90                   	nop
 236:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
 23a:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
 241:	00 00 
 243:	74 05                	je     24a <phase_3+0x120>
 245:	e8 00 00 00 00       	call   24a <phase_3+0x120>
 24a:	c9                   	leave
 24b:	c3                   	ret

000000000000024c <func4>:
 24c:	f3 0f 1e fa          	endbr64
 250:	55                   	push   %rbp
 251:	48 89 e5             	mov    %rsp,%rbp
 254:	48 83 ec 20          	sub    $0x20,%rsp
 258:	89 7d ec             	mov    %edi,-0x14(%rbp)
 25b:	89 75 e8             	mov    %esi,-0x18(%rbp)
 25e:	89 55 e4             	mov    %edx,-0x1c(%rbp)
 261:	8b 45 e4             	mov    -0x1c(%rbp),%eax
 264:	2b 45 e8             	sub    -0x18(%rbp),%eax
 267:	89 c2                	mov    %eax,%edx
 269:	c1 ea 1f             	shr    $0x1f,%edx
 26c:	01 d0                	add    %edx,%eax
 26e:	d1 f8                	sar    $1,%eax
 270:	89 c2                	mov    %eax,%edx
 272:	8b 45 e8             	mov    -0x18(%rbp),%eax
 275:	01 d0                	add    %edx,%eax
 277:	89 45 fc             	mov    %eax,-0x4(%rbp)
 27a:	8b 45 fc             	mov    -0x4(%rbp),%eax
 27d:	3b 45 ec             	cmp    -0x14(%rbp),%eax
 280:	7e 19                	jle    29b <func4+0x4f>
 282:	8b 45 fc             	mov    -0x4(%rbp),%eax
 285:	8d 50 ff             	lea    -0x1(%rax),%edx
 288:	8b 4d e8             	mov    -0x18(%rbp),%ecx
 28b:	8b 45 ec             	mov    -0x14(%rbp),%eax
 28e:	89 ce                	mov    %ecx,%esi
 290:	89 c7                	mov    %eax,%edi
 292:	e8 00 00 00 00       	call   297 <func4+0x4b>
 297:	01 c0                	add    %eax,%eax
 299:	eb 29                	jmp    2c4 <func4+0x78>
 29b:	8b 45 fc             	mov    -0x4(%rbp),%eax
 29e:	3b 45 ec             	cmp    -0x14(%rbp),%eax
 2a1:	7d 1c                	jge    2bf <func4+0x73>
 2a3:	8b 45 fc             	mov    -0x4(%rbp),%eax
 2a6:	8d 48 01             	lea    0x1(%rax),%ecx
 2a9:	8b 55 e4             	mov    -0x1c(%rbp),%edx
 2ac:	8b 45 ec             	mov    -0x14(%rbp),%eax
 2af:	89 ce                	mov    %ecx,%esi
 2b1:	89 c7                	mov    %eax,%edi
 2b3:	e8 00 00 00 00       	call   2b8 <func4+0x6c>
 2b8:	01 c0                	add    %eax,%eax
 2ba:	83 c0 01             	add    $0x1,%eax
 2bd:	eb 05                	jmp    2c4 <func4+0x78>
 2bf:	b8 00 00 00 00       	mov    $0x0,%eax
 2c4:	c9                   	leave
 2c5:	c3                   	ret

00000000000002c6 <phase_4>:
 2c6:	f3 0f 1e fa          	endbr64
 2ca:	55                   	push   %rbp
 2cb:	48 89 e5             	mov    %rsp,%rbp
 2ce:	48 83 ec 30          	sub    $0x30,%rsp
 2d2:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
 2d6:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
 2dd:	00 00 
 2df:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
 2e3:	31 c0                	xor    %eax,%eax
 2e5:	48 8d 4d e8          	lea    -0x18(%rbp),%rcx
 2e9:	48 8d 55 e4          	lea    -0x1c(%rbp),%rdx
 2ed:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
 2f1:	48 8d 35 00 00 00 00 	lea    0x0(%rip),%rsi        # 2f8 <phase_4+0x32>
 2f8:	48 89 c7             	mov    %rax,%rdi
 2fb:	b8 00 00 00 00       	mov    $0x0,%eax
 300:	e8 00 00 00 00       	call   305 <phase_4+0x3f>
 305:	89 45 ec             	mov    %eax,-0x14(%rbp)
 308:	83 7d ec 02          	cmpl   $0x2,-0x14(%rbp)
 30c:	75 0f                	jne    31d <phase_4+0x57>
 30e:	8b 45 e4             	mov    -0x1c(%rbp),%eax
 311:	85 c0                	test   %eax,%eax
 313:	78 08                	js     31d <phase_4+0x57>
 315:	8b 45 e4             	mov    -0x1c(%rbp),%eax
 318:	83 f8 0e             	cmp    $0xe,%eax
 31b:	7e 05                	jle    322 <phase_4+0x5c>
 31d:	e8 00 00 00 00       	call   322 <phase_4+0x5c>
 322:	c7 45 f0 07 00 00 00 	movl   $0x7,-0x10(%rbp)
 329:	8b 45 e4             	mov    -0x1c(%rbp),%eax
 32c:	ba 0e 00 00 00       	mov    $0xe,%edx
 331:	be 00 00 00 00       	mov    $0x0,%esi
 336:	89 c7                	mov    %eax,%edi
 338:	e8 00 00 00 00       	call   33d <phase_4+0x77>
 33d:	89 45 f4             	mov    %eax,-0xc(%rbp)
 340:	8b 45 f4             	mov    -0xc(%rbp),%eax
 343:	3b 45 f0             	cmp    -0x10(%rbp),%eax
 346:	75 08                	jne    350 <phase_4+0x8a>
 348:	8b 45 e8             	mov    -0x18(%rbp),%eax
 34b:	39 45 f0             	cmp    %eax,-0x10(%rbp)
 34e:	74 05                	je     355 <phase_4+0x8f>
 350:	e8 00 00 00 00       	call   355 <phase_4+0x8f>
 355:	90                   	nop
 356:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
 35a:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
 361:	00 00 
 363:	74 05                	je     36a <phase_4+0xa4>
 365:	e8 00 00 00 00       	call   36a <phase_4+0xa4>
 36a:	c9                   	leave
 36b:	c3                   	ret

000000000000036c <phase_5>:
 36c:	f3 0f 1e fa          	endbr64
 370:	55                   	push   %rbp
 371:	48 89 e5             	mov    %rsp,%rbp
 374:	48 83 ec 30          	sub    $0x30,%rsp
 378:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
 37c:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
 383:	00 00 
 385:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
 389:	31 c0                	xor    %eax,%eax
 38b:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
 38f:	48 89 c7             	mov    %rax,%rdi
 392:	e8 00 00 00 00       	call   397 <phase_5+0x2b>
 397:	89 45 ec             	mov    %eax,-0x14(%rbp)
 39a:	83 7d ec 06          	cmpl   $0x6,-0x14(%rbp)
 39e:	74 05                	je     3a5 <phase_5+0x39>
 3a0:	e8 00 00 00 00       	call   3a5 <phase_5+0x39>
 3a5:	c7 45 e8 00 00 00 00 	movl   $0x0,-0x18(%rbp)
 3ac:	eb 30                	jmp    3de <phase_5+0x72>
 3ae:	8b 45 e8             	mov    -0x18(%rbp),%eax
 3b1:	48 63 d0             	movslq %eax,%rdx
 3b4:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
 3b8:	48 01 d0             	add    %rdx,%rax
 3bb:	0f b6 00             	movzbl (%rax),%eax
 3be:	0f be c0             	movsbl %al,%eax
 3c1:	83 e0 0f             	and    $0xf,%eax
 3c4:	48 98                	cltq
 3c6:	48 8d 15 00 00 00 00 	lea    0x0(%rip),%rdx        # 3cd <phase_5+0x61>
 3cd:	0f b6 14 10          	movzbl (%rax,%rdx,1),%edx
 3d1:	8b 45 e8             	mov    -0x18(%rbp),%eax
 3d4:	48 98                	cltq
 3d6:	88 54 05 f1          	mov    %dl,-0xf(%rbp,%rax,1)
 3da:	83 45 e8 01          	addl   $0x1,-0x18(%rbp)
 3de:	83 7d e8 05          	cmpl   $0x5,-0x18(%rbp)
 3e2:	7e ca                	jle    3ae <phase_5+0x42>
 3e4:	c6 45 f7 00          	movb   $0x0,-0x9(%rbp)
 3e8:	48 8d 45 f1          	lea    -0xf(%rbp),%rax
 3ec:	48 8d 35 00 00 00 00 	lea    0x0(%rip),%rsi        # 3f3 <phase_5+0x87>
 3f3:	48 89 c7             	mov    %rax,%rdi
 3f6:	e8 00 00 00 00       	call   3fb <phase_5+0x8f>
 3fb:	85 c0                	test   %eax,%eax
 3fd:	74 05                	je     404 <phase_5+0x98>
 3ff:	e8 00 00 00 00       	call   404 <phase_5+0x98>
 404:	90                   	nop
 405:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
 409:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
 410:	00 00 
 412:	74 05                	je     419 <phase_5+0xad>
 414:	e8 00 00 00 00       	call   419 <phase_5+0xad>
 419:	c9                   	leave
 41a:	c3                   	ret

000000000000041b <phase_6>:
 41b:	f3 0f 1e fa          	endbr64
 41f:	55                   	push   %rbp
 420:	48 89 e5             	mov    %rsp,%rbp
 423:	48 81 ec 90 00 00 00 	sub    $0x90,%rsp
 42a:	48 89 bd 78 ff ff ff 	mov    %rdi,-0x88(%rbp)
 431:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
 438:	00 00 
 43a:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
 43e:	31 c0                	xor    %eax,%eax
 440:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 447 <phase_6+0x2c>
 447:	48 89 45 98          	mov    %rax,-0x68(%rbp)
 44b:	48 8d 55 a0          	lea    -0x60(%rbp),%rdx
 44f:	48 8b 85 78 ff ff ff 	mov    -0x88(%rbp),%rax
 456:	48 89 d6             	mov    %rdx,%rsi
 459:	48 89 c7             	mov    %rax,%rdi
 45c:	e8 00 00 00 00       	call   461 <phase_6+0x46>
 461:	c7 45 88 00 00 00 00 	movl   $0x0,-0x78(%rbp)
 468:	eb 54                	jmp    4be <phase_6+0xa3>
 46a:	8b 45 88             	mov    -0x78(%rbp),%eax
 46d:	48 98                	cltq
 46f:	8b 44 85 a0          	mov    -0x60(%rbp,%rax,4),%eax
 473:	85 c0                	test   %eax,%eax
 475:	7e 0e                	jle    485 <phase_6+0x6a>
 477:	8b 45 88             	mov    -0x78(%rbp),%eax
 47a:	48 98                	cltq
 47c:	8b 44 85 a0          	mov    -0x60(%rbp,%rax,4),%eax
 480:	83 f8 06             	cmp    $0x6,%eax
 483:	7e 05                	jle    48a <phase_6+0x6f>
 485:	e8 00 00 00 00       	call   48a <phase_6+0x6f>
 48a:	8b 45 88             	mov    -0x78(%rbp),%eax
 48d:	83 c0 01             	add    $0x1,%eax
 490:	89 45 8c             	mov    %eax,-0x74(%rbp)
 493:	eb 1f                	jmp    4b4 <phase_6+0x99>
 495:	8b 45 88             	mov    -0x78(%rbp),%eax
 498:	48 98                	cltq
 49a:	8b 54 85 a0          	mov    -0x60(%rbp,%rax,4),%edx
 49e:	8b 45 8c             	mov    -0x74(%rbp),%eax
 4a1:	48 98                	cltq
 4a3:	8b 44 85 a0          	mov    -0x60(%rbp,%rax,4),%eax
 4a7:	39 c2                	cmp    %eax,%edx
 4a9:	75 05                	jne    4b0 <phase_6+0x95>
 4ab:	e8 00 00 00 00       	call   4b0 <phase_6+0x95>
 4b0:	83 45 8c 01          	addl   $0x1,-0x74(%rbp)
 4b4:	83 7d 8c 05          	cmpl   $0x5,-0x74(%rbp)
 4b8:	7e db                	jle    495 <phase_6+0x7a>
 4ba:	83 45 88 01          	addl   $0x1,-0x78(%rbp)
 4be:	83 7d 88 05          	cmpl   $0x5,-0x78(%rbp)
 4c2:	7e a6                	jle    46a <phase_6+0x4f>
 4c4:	c7 45 88 00 00 00 00 	movl   $0x0,-0x78(%rbp)
 4cb:	eb 41                	jmp    50e <phase_6+0xf3>
 4cd:	48 8b 45 98          	mov    -0x68(%rbp),%rax
 4d1:	48 89 45 90          	mov    %rax,-0x70(%rbp)
 4d5:	c7 45 8c 01 00 00 00 	movl   $0x1,-0x74(%rbp)
 4dc:	eb 10                	jmp    4ee <phase_6+0xd3>
 4de:	48 8b 45 90          	mov    -0x70(%rbp),%rax
 4e2:	48 8b 40 08          	mov    0x8(%rax),%rax
 4e6:	48 89 45 90          	mov    %rax,-0x70(%rbp)
 4ea:	83 45 8c 01          	addl   $0x1,-0x74(%rbp)
 4ee:	8b 45 88             	mov    -0x78(%rbp),%eax
 4f1:	48 98                	cltq
 4f3:	8b 44 85 a0          	mov    -0x60(%rbp,%rax,4),%eax
 4f7:	39 45 8c             	cmp    %eax,-0x74(%rbp)
 4fa:	7c e2                	jl     4de <phase_6+0xc3>
 4fc:	8b 45 88             	mov    -0x78(%rbp),%eax
 4ff:	48 98                	cltq
 501:	48 8b 55 90          	mov    -0x70(%rbp),%rdx
 505:	48 89 54 c5 c0       	mov    %rdx,-0x40(%rbp,%rax,8)
 50a:	83 45 88 01          	addl   $0x1,-0x78(%rbp)
 50e:	83 7d 88 05          	cmpl   $0x5,-0x78(%rbp)
 512:	7e b9                	jle    4cd <phase_6+0xb2>
 514:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
 518:	48 89 45 98          	mov    %rax,-0x68(%rbp)
 51c:	48 8b 45 98          	mov    -0x68(%rbp),%rax
 520:	48 89 45 90          	mov    %rax,-0x70(%rbp)
 524:	c7 45 88 01 00 00 00 	movl   $0x1,-0x78(%rbp)
 52b:	eb 22                	jmp    54f <phase_6+0x134>
 52d:	8b 45 88             	mov    -0x78(%rbp),%eax
 530:	48 98                	cltq
 532:	48 8b 54 c5 c0       	mov    -0x40(%rbp,%rax,8),%rdx
 537:	48 8b 45 90          	mov    -0x70(%rbp),%rax
 53b:	48 89 50 08          	mov    %rdx,0x8(%rax)
 53f:	48 8b 45 90          	mov    -0x70(%rbp),%rax
 543:	48 8b 40 08          	mov    0x8(%rax),%rax
 547:	48 89 45 90          	mov    %rax,-0x70(%rbp)
 54b:	83 45 88 01          	addl   $0x1,-0x78(%rbp)
 54f:	83 7d 88 05          	cmpl   $0x5,-0x78(%rbp)
 553:	7e d8                	jle    52d <phase_6+0x112>
 555:	48 8b 45 90          	mov    -0x70(%rbp),%rax
 559:	48 c7 40 08 00 00 00 	movq   $0x0,0x8(%rax)
 560:	00 
 561:	48 8b 45 98          	mov    -0x68(%rbp),%rax
 565:	48 89 45 90          	mov    %rax,-0x70(%rbp)
 569:	c7 45 88 00 00 00 00 	movl   $0x0,-0x78(%rbp)
 570:	eb 29                	jmp    59b <phase_6+0x180>
 572:	48 8b 45 90          	mov    -0x70(%rbp),%rax
 576:	8b 10                	mov    (%rax),%edx
 578:	48 8b 45 90          	mov    -0x70(%rbp),%rax
 57c:	48 8b 40 08          	mov    0x8(%rax),%rax
 580:	8b 00                	mov    (%rax),%eax
 582:	39 c2                	cmp    %eax,%edx
 584:	7d 05                	jge    58b <phase_6+0x170>
 586:	e8 00 00 00 00       	call   58b <phase_6+0x170>
 58b:	48 8b 45 90          	mov    -0x70(%rbp),%rax
 58f:	48 8b 40 08          	mov    0x8(%rax),%rax
 593:	48 89 45 90          	mov    %rax,-0x70(%rbp)
 597:	83 45 88 01          	addl   $0x1,-0x78(%rbp)
 59b:	83 7d 88 04          	cmpl   $0x4,-0x78(%rbp)
 59f:	7e d1                	jle    572 <phase_6+0x157>
 5a1:	90                   	nop
 5a2:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
 5a6:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
 5ad:	00 00 
 5af:	74 05                	je     5b6 <phase_6+0x19b>
 5b1:	e8 00 00 00 00       	call   5b6 <phase_6+0x19b>
 5b6:	c9                   	leave
 5b7:	c3                   	ret

00000000000005b8 <fun7>:
 5b8:	f3 0f 1e fa          	endbr64
 5bc:	55                   	push   %rbp
 5bd:	48 89 e5             	mov    %rsp,%rbp
 5c0:	48 83 ec 10          	sub    $0x10,%rsp
 5c4:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
 5c8:	89 75 f4             	mov    %esi,-0xc(%rbp)
 5cb:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
 5d0:	75 07                	jne    5d9 <fun7+0x21>
 5d2:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 5d7:	eb 50                	jmp    629 <fun7+0x71>
 5d9:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
 5dd:	8b 00                	mov    (%rax),%eax
 5df:	39 45 f4             	cmp    %eax,-0xc(%rbp)
 5e2:	7d 19                	jge    5fd <fun7+0x45>
 5e4:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
 5e8:	48 8b 40 08          	mov    0x8(%rax),%rax
 5ec:	8b 55 f4             	mov    -0xc(%rbp),%edx
 5ef:	89 d6                	mov    %edx,%esi
 5f1:	48 89 c7             	mov    %rax,%rdi
 5f4:	e8 00 00 00 00       	call   5f9 <fun7+0x41>
 5f9:	01 c0                	add    %eax,%eax
 5fb:	eb 2c                	jmp    629 <fun7+0x71>
 5fd:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
 601:	8b 00                	mov    (%rax),%eax
 603:	39 45 f4             	cmp    %eax,-0xc(%rbp)
 606:	75 07                	jne    60f <fun7+0x57>
 608:	b8 00 00 00 00       	mov    $0x0,%eax
 60d:	eb 1a                	jmp    629 <fun7+0x71>
 60f:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
 613:	48 8b 40 10          	mov    0x10(%rax),%rax
 617:	8b 55 f4             	mov    -0xc(%rbp),%edx
 61a:	89 d6                	mov    %edx,%esi
 61c:	48 89 c7             	mov    %rax,%rdi
 61f:	e8 00 00 00 00       	call   624 <fun7+0x6c>
 624:	01 c0                	add    %eax,%eax
 626:	83 c0 01             	add    $0x1,%eax
 629:	c9                   	leave
 62a:	c3                   	ret
