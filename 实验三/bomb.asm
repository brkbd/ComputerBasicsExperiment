
bufbomb:     file format elf64-x86-64


Disassembly of section .init:

0000000000401000 <_init>:
  401000:	f3 0f 1e fa          	endbr64
  401004:	48 83 ec 08          	sub    $0x8,%rsp
  401008:	48 8b 05 c9 2f 00 00 	mov    0x2fc9(%rip),%rax        # 403fd8 <__gmon_start__@Base>
  40100f:	48 85 c0             	test   %rax,%rax
  401012:	74 02                	je     401016 <_init+0x16>
  401014:	ff d0                	call   *%rax
  401016:	48 83 c4 08          	add    $0x8,%rsp
  40101a:	c3                   	ret

Disassembly of section .plt:

0000000000401020 <free@plt-0x10>:
  401020:	ff 35 ca 2f 00 00    	push   0x2fca(%rip)        # 403ff0 <_GLOBAL_OFFSET_TABLE_+0x8>
  401026:	ff 25 cc 2f 00 00    	jmp    *0x2fcc(%rip)        # 403ff8 <_GLOBAL_OFFSET_TABLE_+0x10>
  40102c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000401030 <free@plt>:
  401030:	ff 25 ca 2f 00 00    	jmp    *0x2fca(%rip)        # 404000 <free@GLIBC_2.2.5>
  401036:	68 00 00 00 00       	push   $0x0
  40103b:	e9 e0 ff ff ff       	jmp    401020 <_init+0x20>

0000000000401040 <strcpy@plt>:
  401040:	ff 25 c2 2f 00 00    	jmp    *0x2fc2(%rip)        # 404008 <strcpy@GLIBC_2.2.5>
  401046:	68 01 00 00 00       	push   $0x1
  40104b:	e9 d0 ff ff ff       	jmp    401020 <_init+0x20>

0000000000401050 <__isoc99_fscanf@plt>:
  401050:	ff 25 ba 2f 00 00    	jmp    *0x2fba(%rip)        # 404010 <__isoc99_fscanf@GLIBC_2.7>
  401056:	68 02 00 00 00       	push   $0x2
  40105b:	e9 c0 ff ff ff       	jmp    401020 <_init+0x20>

0000000000401060 <puts@plt>:
  401060:	ff 25 b2 2f 00 00    	jmp    *0x2fb2(%rip)        # 404018 <puts@GLIBC_2.2.5>
  401066:	68 03 00 00 00       	push   $0x3
  40106b:	e9 b0 ff ff ff       	jmp    401020 <_init+0x20>

0000000000401070 <fclose@plt>:
  401070:	ff 25 aa 2f 00 00    	jmp    *0x2faa(%rip)        # 404020 <fclose@GLIBC_2.2.5>
  401076:	68 04 00 00 00       	push   $0x4
  40107b:	e9 a0 ff ff ff       	jmp    401020 <_init+0x20>

0000000000401080 <strlen@plt>:
  401080:	ff 25 a2 2f 00 00    	jmp    *0x2fa2(%rip)        # 404028 <strlen@GLIBC_2.2.5>
  401086:	68 05 00 00 00       	push   $0x5
  40108b:	e9 90 ff ff ff       	jmp    401020 <_init+0x20>

0000000000401090 <printf@plt>:
  401090:	ff 25 9a 2f 00 00    	jmp    *0x2f9a(%rip)        # 404030 <printf@GLIBC_2.2.5>
  401096:	68 06 00 00 00       	push   $0x6
  40109b:	e9 80 ff ff ff       	jmp    401020 <_init+0x20>

00000000004010a0 <strcmp@plt>:
  4010a0:	ff 25 92 2f 00 00    	jmp    *0x2f92(%rip)        # 404038 <strcmp@GLIBC_2.2.5>
  4010a6:	68 07 00 00 00       	push   $0x7
  4010ab:	e9 70 ff ff ff       	jmp    401020 <_init+0x20>

00000000004010b0 <fprintf@plt>:
  4010b0:	ff 25 8a 2f 00 00    	jmp    *0x2f8a(%rip)        # 404040 <fprintf@GLIBC_2.2.5>
  4010b6:	68 08 00 00 00       	push   $0x8
  4010bb:	e9 60 ff ff ff       	jmp    401020 <_init+0x20>

00000000004010c0 <memcpy@plt>:
  4010c0:	ff 25 82 2f 00 00    	jmp    *0x2f82(%rip)        # 404048 <memcpy@GLIBC_2.14>
  4010c6:	68 09 00 00 00       	push   $0x9
  4010cb:	e9 50 ff ff ff       	jmp    401020 <_init+0x20>

00000000004010d0 <malloc@plt>:
  4010d0:	ff 25 7a 2f 00 00    	jmp    *0x2f7a(%rip)        # 404050 <malloc@GLIBC_2.2.5>
  4010d6:	68 0a 00 00 00       	push   $0xa
  4010db:	e9 40 ff ff ff       	jmp    401020 <_init+0x20>

00000000004010e0 <__isoc99_sscanf@plt>:
  4010e0:	ff 25 72 2f 00 00    	jmp    *0x2f72(%rip)        # 404058 <__isoc99_sscanf@GLIBC_2.7>
  4010e6:	68 0b 00 00 00       	push   $0xb
  4010eb:	e9 30 ff ff ff       	jmp    401020 <_init+0x20>

00000000004010f0 <realloc@plt>:
  4010f0:	ff 25 6a 2f 00 00    	jmp    *0x2f6a(%rip)        # 404060 <realloc@GLIBC_2.2.5>
  4010f6:	68 0c 00 00 00       	push   $0xc
  4010fb:	e9 20 ff ff ff       	jmp    401020 <_init+0x20>

0000000000401100 <fopen@plt>:
  401100:	ff 25 62 2f 00 00    	jmp    *0x2f62(%rip)        # 404068 <fopen@GLIBC_2.2.5>
  401106:	68 0d 00 00 00       	push   $0xd
  40110b:	e9 10 ff ff ff       	jmp    401020 <_init+0x20>

0000000000401110 <atoi@plt>:
  401110:	ff 25 5a 2f 00 00    	jmp    *0x2f5a(%rip)        # 404070 <atoi@GLIBC_2.2.5>
  401116:	68 0e 00 00 00       	push   $0xe
  40111b:	e9 00 ff ff ff       	jmp    401020 <_init+0x20>

0000000000401120 <exit@plt>:
  401120:	ff 25 52 2f 00 00    	jmp    *0x2f52(%rip)        # 404078 <exit@GLIBC_2.2.5>
  401126:	68 0f 00 00 00       	push   $0xf
  40112b:	e9 f0 fe ff ff       	jmp    401020 <_init+0x20>

0000000000401130 <__ctype_b_loc@plt>:
  401130:	ff 25 4a 2f 00 00    	jmp    *0x2f4a(%rip)        # 404080 <__ctype_b_loc@GLIBC_2.3>
  401136:	68 10 00 00 00       	push   $0x10
  40113b:	e9 e0 fe ff ff       	jmp    401020 <_init+0x20>

Disassembly of section .text:

0000000000401140 <_start>:
  401140:	f3 0f 1e fa          	endbr64
  401144:	31 ed                	xor    %ebp,%ebp
  401146:	49 89 d1             	mov    %rdx,%r9
  401149:	5e                   	pop    %rsi
  40114a:	48 89 e2             	mov    %rsp,%rdx
  40114d:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  401151:	50                   	push   %rax
  401152:	54                   	push   %rsp
  401153:	45 31 c0             	xor    %r8d,%r8d
  401156:	31 c9                	xor    %ecx,%ecx
  401158:	48 c7 c7 cf 15 40 00 	mov    $0x4015cf,%rdi
  40115f:	ff 15 63 2e 00 00    	call   *0x2e63(%rip)        # 403fc8 <__libc_start_main@GLIBC_2.34>
  401165:	f4                   	hlt
  401166:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  40116d:	00 00 00 

0000000000401170 <_dl_relocate_static_pie>:
  401170:	f3 0f 1e fa          	endbr64
  401174:	c3                   	ret
  401175:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  40117c:	00 00 00 
  40117f:	90                   	nop
  401180:	b8 b0 40 40 00       	mov    $0x4040b0,%eax
  401185:	48 3d b0 40 40 00    	cmp    $0x4040b0,%rax
  40118b:	74 13                	je     4011a0 <_dl_relocate_static_pie+0x30>
  40118d:	48 8b 05 3c 2e 00 00 	mov    0x2e3c(%rip),%rax        # 403fd0 <_ITM_deregisterTMCloneTable@Base>
  401194:	48 85 c0             	test   %rax,%rax
  401197:	74 07                	je     4011a0 <_dl_relocate_static_pie+0x30>
  401199:	bf b0 40 40 00       	mov    $0x4040b0,%edi
  40119e:	ff e0                	jmp    *%rax
  4011a0:	c3                   	ret
  4011a1:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4011a8:	00 00 00 00 
  4011ac:	0f 1f 40 00          	nopl   0x0(%rax)
  4011b0:	be b0 40 40 00       	mov    $0x4040b0,%esi
  4011b5:	48 81 ee b0 40 40 00 	sub    $0x4040b0,%rsi
  4011bc:	48 89 f0             	mov    %rsi,%rax
  4011bf:	48 c1 ee 3f          	shr    $0x3f,%rsi
  4011c3:	48 c1 f8 03          	sar    $0x3,%rax
  4011c7:	48 01 c6             	add    %rax,%rsi
  4011ca:	48 d1 fe             	sar    $1,%rsi
  4011cd:	74 19                	je     4011e8 <_dl_relocate_static_pie+0x78>
  4011cf:	48 8b 05 0a 2e 00 00 	mov    0x2e0a(%rip),%rax        # 403fe0 <_ITM_registerTMCloneTable@Base>
  4011d6:	48 85 c0             	test   %rax,%rax
  4011d9:	74 0d                	je     4011e8 <_dl_relocate_static_pie+0x78>
  4011db:	bf b0 40 40 00       	mov    $0x4040b0,%edi
  4011e0:	ff e0                	jmp    *%rax
  4011e2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  4011e8:	c3                   	ret
  4011e9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  4011f0:	f3 0f 1e fa          	endbr64
  4011f4:	80 3d cd 2e 00 00 00 	cmpb   $0x0,0x2ecd(%rip)        # 4040c8 <stderr@GLIBC_2.2.5+0x8>
  4011fb:	75 13                	jne    401210 <_dl_relocate_static_pie+0xa0>
  4011fd:	55                   	push   %rbp
  4011fe:	48 89 e5             	mov    %rsp,%rbp
  401201:	e8 7a ff ff ff       	call   401180 <_dl_relocate_static_pie+0x10>
  401206:	c6 05 bb 2e 00 00 01 	movb   $0x1,0x2ebb(%rip)        # 4040c8 <stderr@GLIBC_2.2.5+0x8>
  40120d:	5d                   	pop    %rbp
  40120e:	c3                   	ret
  40120f:	90                   	nop
  401210:	c3                   	ret
  401211:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  401218:	00 00 00 00 
  40121c:	0f 1f 40 00          	nopl   0x0(%rax)
  401220:	f3 0f 1e fa          	endbr64
  401224:	eb 8a                	jmp    4011b0 <_dl_relocate_static_pie+0x40>

0000000000401226 <initialize_bomb>:
  401226:	55                   	push   %rbp
  401227:	48 89 e5             	mov    %rsp,%rbp
  40122a:	48 83 ec 30          	sub    $0x30,%rsp
  40122e:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
  401232:	c7 45 fc 0a 00 00 00 	movl   $0xa,-0x4(%rbp)
  401239:	c7 45 f8 14 00 00 00 	movl   $0x14,-0x8(%rbp)
  401240:	c7 45 f4 1e 00 00 00 	movl   $0x1e,-0xc(%rbp)
  401247:	c7 45 f0 28 00 00 00 	movl   $0x28,-0x10(%rbp)
  40124e:	c7 45 ec 32 00 00 00 	movl   $0x32,-0x14(%rbp)
  401255:	c7 45 e8 3c 00 00 00 	movl   $0x3c,-0x18(%rbp)
  40125c:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  401260:	48 89 c7             	mov    %rax,%rdi
  401263:	e8 18 fe ff ff       	call   401080 <strlen@plt>
  401268:	89 45 e4             	mov    %eax,-0x1c(%rbp)
  40126b:	83 7d e4 0a          	cmpl   $0xa,-0x1c(%rbp)
  40126f:	74 19                	je     40128a <initialize_bomb+0x64>
  401271:	48 8d 05 90 0d 00 00 	lea    0xd90(%rip),%rax        # 402008 <_IO_stdin_used+0x8>
  401278:	48 89 c7             	mov    %rax,%rdi
  40127b:	e8 e0 fd ff ff       	call   401060 <puts@plt>
  401280:	bf 00 00 00 00       	mov    $0x0,%edi
  401285:	e8 96 fe ff ff       	call   401120 <exit@plt>
  40128a:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  40128e:	48 89 c6             	mov    %rax,%rsi
  401291:	48 8d 05 aa 0d 00 00 	lea    0xdaa(%rip),%rax        # 402042 <_IO_stdin_used+0x42>
  401298:	48 89 c7             	mov    %rax,%rdi
  40129b:	b8 00 00 00 00       	mov    $0x0,%eax
  4012a0:	e8 eb fd ff ff       	call   401090 <printf@plt>
  4012a5:	8b 45 e4             	mov    -0x1c(%rbp),%eax
  4012a8:	48 98                	cltq
  4012aa:	48 8d 50 ff          	lea    -0x1(%rax),%rdx
  4012ae:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  4012b2:	48 01 d0             	add    %rdx,%rax
  4012b5:	0f b6 00             	movzbl (%rax),%eax
  4012b8:	3c 38                	cmp    $0x38,%al
  4012ba:	75 0e                	jne    4012ca <initialize_bomb+0xa4>
  4012bc:	8b 45 e8             	mov    -0x18(%rbp),%eax
  4012bf:	c1 e0 02             	shl    $0x2,%eax
  4012c2:	83 c0 0a             	add    $0xa,%eax
  4012c5:	89 45 fc             	mov    %eax,-0x4(%rbp)
  4012c8:	eb 37                	jmp    401301 <initialize_bomb+0xdb>
  4012ca:	48 8d 05 7f 0d 00 00 	lea    0xd7f(%rip),%rax        # 402050 <_IO_stdin_used+0x50>
  4012d1:	48 89 c7             	mov    %rax,%rdi
  4012d4:	e8 87 fd ff ff       	call   401060 <puts@plt>
  4012d9:	48 8d 05 a8 0d 00 00 	lea    0xda8(%rip),%rax        # 402088 <_IO_stdin_used+0x88>
  4012e0:	48 89 c7             	mov    %rax,%rdi
  4012e3:	e8 78 fd ff ff       	call   401060 <puts@plt>
  4012e8:	48 8d 05 d1 0d 00 00 	lea    0xdd1(%rip),%rax        # 4020c0 <_IO_stdin_used+0xc0>
  4012ef:	48 89 c7             	mov    %rax,%rdi
  4012f2:	e8 69 fd ff ff       	call   401060 <puts@plt>
  4012f7:	bf 00 00 00 00       	mov    $0x0,%edi
  4012fc:	e8 1f fe ff ff       	call   401120 <exit@plt>
  401301:	c9                   	leave
  401302:	c3                   	ret

0000000000401303 <smoke>:
  401303:	55                   	push   %rbp
  401304:	48 89 e5             	mov    %rsp,%rbp
  401307:	48 8d 05 d8 0d 00 00 	lea    0xdd8(%rip),%rax        # 4020e6 <_IO_stdin_used+0xe6>
  40130e:	48 89 c7             	mov    %rax,%rdi
  401311:	e8 4a fd ff ff       	call   401060 <puts@plt>
  401316:	bf 00 00 00 00       	mov    $0x0,%edi
  40131b:	e8 00 fe ff ff       	call   401120 <exit@plt>

0000000000401320 <fizz>:
  401320:	55                   	push   %rbp
  401321:	48 89 e5             	mov    %rsp,%rbp
  401324:	48 83 ec 10          	sub    $0x10,%rsp
  401328:	89 7d fc             	mov    %edi,-0x4(%rbp)
  40132b:	8b 05 b7 2d 00 00    	mov    0x2db7(%rip),%eax        # 4040e8 <cookie>
  401331:	39 45 fc             	cmp    %eax,-0x4(%rbp)
  401334:	75 1b                	jne    401351 <fizz+0x31>
  401336:	8b 45 fc             	mov    -0x4(%rbp),%eax
  401339:	89 c6                	mov    %eax,%esi
  40133b:	48 8d 05 bf 0d 00 00 	lea    0xdbf(%rip),%rax        # 402101 <_IO_stdin_used+0x101>
  401342:	48 89 c7             	mov    %rax,%rdi
  401345:	b8 00 00 00 00       	mov    $0x0,%eax
  40134a:	e8 41 fd ff ff       	call   401090 <printf@plt>
  40134f:	eb 19                	jmp    40136a <fizz+0x4a>
  401351:	8b 45 fc             	mov    -0x4(%rbp),%eax
  401354:	89 c6                	mov    %eax,%esi
  401356:	48 8d 05 c3 0d 00 00 	lea    0xdc3(%rip),%rax        # 402120 <_IO_stdin_used+0x120>
  40135d:	48 89 c7             	mov    %rax,%rdi
  401360:	b8 00 00 00 00       	mov    $0x0,%eax
  401365:	e8 26 fd ff ff       	call   401090 <printf@plt>
  40136a:	bf 00 00 00 00       	mov    $0x0,%edi
  40136f:	e8 ac fd ff ff       	call   401120 <exit@plt>

0000000000401374 <bang>:
  401374:	55                   	push   %rbp
  401375:	48 89 e5             	mov    %rsp,%rbp
  401378:	48 83 ec 10          	sub    $0x10,%rsp
  40137c:	89 7d fc             	mov    %edi,-0x4(%rbp)
  40137f:	8b 15 67 2d 00 00    	mov    0x2d67(%rip),%edx        # 4040ec <global_value>
  401385:	8b 05 5d 2d 00 00    	mov    0x2d5d(%rip),%eax        # 4040e8 <cookie>
  40138b:	39 c2                	cmp    %eax,%edx
  40138d:	75 1e                	jne    4013ad <bang+0x39>
  40138f:	8b 05 57 2d 00 00    	mov    0x2d57(%rip),%eax        # 4040ec <global_value>
  401395:	89 c6                	mov    %eax,%esi
  401397:	48 8d 05 a2 0d 00 00 	lea    0xda2(%rip),%rax        # 402140 <_IO_stdin_used+0x140>
  40139e:	48 89 c7             	mov    %rax,%rdi
  4013a1:	b8 00 00 00 00       	mov    $0x0,%eax
  4013a6:	e8 e5 fc ff ff       	call   401090 <printf@plt>
  4013ab:	eb 1c                	jmp    4013c9 <bang+0x55>
  4013ad:	8b 05 39 2d 00 00    	mov    0x2d39(%rip),%eax        # 4040ec <global_value>
  4013b3:	89 c6                	mov    %eax,%esi
  4013b5:	48 8d 05 a9 0d 00 00 	lea    0xda9(%rip),%rax        # 402165 <_IO_stdin_used+0x165>
  4013bc:	48 89 c7             	mov    %rax,%rdi
  4013bf:	b8 00 00 00 00       	mov    $0x0,%eax
  4013c4:	e8 c7 fc ff ff       	call   401090 <printf@plt>
  4013c9:	bf 00 00 00 00       	mov    $0x0,%edi
  4013ce:	e8 4d fd ff ff       	call   401120 <exit@plt>

00000000004013d3 <test>:
  4013d3:	55                   	push   %rbp
  4013d4:	48 89 e5             	mov    %rsp,%rbp
  4013d7:	48 83 ec 30          	sub    $0x30,%rsp
  4013db:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
  4013df:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%rbp)
  4013e6:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  4013ea:	8b 40 7c             	mov    0x7c(%rax),%eax
  4013ed:	85 c0                	test   %eax,%eax
  4013ef:	74 24                	je     401415 <test+0x42>
  4013f1:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  4013f5:	8b 40 7c             	mov    0x7c(%rax),%eax
  4013f8:	83 f8 01             	cmp    $0x1,%eax
  4013fb:	74 18                	je     401415 <test+0x42>
  4013fd:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  401401:	8b 40 7c             	mov    0x7c(%rax),%eax
  401404:	83 f8 02             	cmp    $0x2,%eax
  401407:	74 0c                	je     401415 <test+0x42>
  401409:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  40140d:	8b 40 7c             	mov    0x7c(%rax),%eax
  401410:	83 f8 03             	cmp    $0x3,%eax
  401413:	75 75                	jne    40148a <test+0xb7>
  401415:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  401419:	48 8d 15 63 0d 00 00 	lea    0xd63(%rip),%rdx        # 402183 <_IO_stdin_used+0x183>
  401420:	48 89 d6             	mov    %rdx,%rsi
  401423:	48 89 c7             	mov    %rax,%rdi
  401426:	e8 d5 fc ff ff       	call   401100 <fopen@plt>
  40142b:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
  40142f:	48 83 7d f0 00       	cmpq   $0x0,-0x10(%rbp)
  401434:	75 1d                	jne    401453 <test+0x80>
  401436:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  40143a:	48 89 c6             	mov    %rax,%rsi
  40143d:	48 8d 05 41 0d 00 00 	lea    0xd41(%rip),%rax        # 402185 <_IO_stdin_used+0x185>
  401444:	48 89 c7             	mov    %rax,%rdi
  401447:	b8 00 00 00 00       	mov    $0x0,%eax
  40144c:	e8 3f fc ff ff       	call   401090 <printf@plt>
  401451:	eb 76                	jmp    4014c9 <test+0xf6>
  401453:	48 8d 55 e4          	lea    -0x1c(%rbp),%rdx
  401457:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  40145b:	48 89 d6             	mov    %rdx,%rsi
  40145e:	48 89 c7             	mov    %rax,%rdi
  401461:	e8 44 03 00 00       	call   4017aa <convert_to_byte_string>
  401466:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
  40146a:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  40146e:	48 89 c7             	mov    %rax,%rdi
  401471:	e8 fa fb ff ff       	call   401070 <fclose@plt>
  401476:	8b 55 e4             	mov    -0x1c(%rbp),%edx
  401479:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  40147d:	89 d6                	mov    %edx,%esi
  40147f:	48 89 c7             	mov    %rax,%rdi
  401482:	e8 73 05 00 00       	call   4019fa <getbuf>
  401487:	89 45 fc             	mov    %eax,-0x4(%rbp)
  40148a:	8b 05 58 2c 00 00    	mov    0x2c58(%rip),%eax        # 4040e8 <cookie>
  401490:	39 45 fc             	cmp    %eax,-0x4(%rbp)
  401493:	75 1b                	jne    4014b0 <test+0xdd>
  401495:	8b 45 fc             	mov    -0x4(%rbp),%eax
  401498:	89 c6                	mov    %eax,%esi
  40149a:	48 8d 05 00 0d 00 00 	lea    0xd00(%rip),%rax        # 4021a1 <_IO_stdin_used+0x1a1>
  4014a1:	48 89 c7             	mov    %rax,%rdi
  4014a4:	b8 00 00 00 00       	mov    $0x0,%eax
  4014a9:	e8 e2 fb ff ff       	call   401090 <printf@plt>
  4014ae:	eb 19                	jmp    4014c9 <test+0xf6>
  4014b0:	8b 45 fc             	mov    -0x4(%rbp),%eax
  4014b3:	89 c6                	mov    %eax,%esi
  4014b5:	48 8d 05 02 0d 00 00 	lea    0xd02(%rip),%rax        # 4021be <_IO_stdin_used+0x1be>
  4014bc:	48 89 c7             	mov    %rax,%rdi
  4014bf:	b8 00 00 00 00       	mov    $0x0,%eax
  4014c4:	e8 c7 fb ff ff       	call   401090 <printf@plt>
  4014c9:	c9                   	leave
  4014ca:	c3                   	ret

00000000004014cb <save_char>:
  4014cb:	55                   	push   %rbp
  4014cc:	48 89 e5             	mov    %rsp,%rbp
  4014cf:	89 f8                	mov    %edi,%eax
  4014d1:	88 45 fc             	mov    %al,-0x4(%rbp)
  4014d4:	8b 05 16 2c 00 00    	mov    0x2c16(%rip),%eax        # 4040f0 <gets_cnt>
  4014da:	3d ff 03 00 00       	cmp    $0x3ff,%eax
  4014df:	0f 8f 95 00 00 00    	jg     40157a <save_char+0xaf>
  4014e5:	0f b6 45 fc          	movzbl -0x4(%rbp),%eax
  4014e9:	c0 f8 04             	sar    $0x4,%al
  4014ec:	0f be c0             	movsbl %al,%eax
  4014ef:	83 e0 0f             	and    $0xf,%eax
  4014f2:	89 c6                	mov    %eax,%esi
  4014f4:	8b 15 f6 2b 00 00    	mov    0x2bf6(%rip),%edx        # 4040f0 <gets_cnt>
  4014fa:	89 d0                	mov    %edx,%eax
  4014fc:	01 c0                	add    %eax,%eax
  4014fe:	8d 0c 10             	lea    (%rax,%rdx,1),%ecx
  401501:	48 63 c6             	movslq %esi,%rax
  401504:	48 8d 15 95 2b 00 00 	lea    0x2b95(%rip),%rdx        # 4040a0 <trans_char>
  40150b:	0f b6 14 10          	movzbl (%rax,%rdx,1),%edx
  40150f:	48 63 c1             	movslq %ecx,%rax
  401512:	48 8d 0d e7 2b 00 00 	lea    0x2be7(%rip),%rcx        # 404100 <gets_buf>
  401519:	88 14 08             	mov    %dl,(%rax,%rcx,1)
  40151c:	0f be 45 fc          	movsbl -0x4(%rbp),%eax
  401520:	83 e0 0f             	and    $0xf,%eax
  401523:	89 c6                	mov    %eax,%esi
  401525:	8b 15 c5 2b 00 00    	mov    0x2bc5(%rip),%edx        # 4040f0 <gets_cnt>
  40152b:	89 d0                	mov    %edx,%eax
  40152d:	01 c0                	add    %eax,%eax
  40152f:	01 d0                	add    %edx,%eax
  401531:	8d 48 01             	lea    0x1(%rax),%ecx
  401534:	48 63 c6             	movslq %esi,%rax
  401537:	48 8d 15 62 2b 00 00 	lea    0x2b62(%rip),%rdx        # 4040a0 <trans_char>
  40153e:	0f b6 14 10          	movzbl (%rax,%rdx,1),%edx
  401542:	48 63 c1             	movslq %ecx,%rax
  401545:	48 8d 0d b4 2b 00 00 	lea    0x2bb4(%rip),%rcx        # 404100 <gets_buf>
  40154c:	88 14 08             	mov    %dl,(%rax,%rcx,1)
  40154f:	8b 15 9b 2b 00 00    	mov    0x2b9b(%rip),%edx        # 4040f0 <gets_cnt>
  401555:	89 d0                	mov    %edx,%eax
  401557:	01 c0                	add    %eax,%eax
  401559:	01 d0                	add    %edx,%eax
  40155b:	83 c0 02             	add    $0x2,%eax
  40155e:	48 98                	cltq
  401560:	48 8d 15 99 2b 00 00 	lea    0x2b99(%rip),%rdx        # 404100 <gets_buf>
  401567:	c6 04 10 20          	movb   $0x20,(%rax,%rdx,1)
  40156b:	8b 05 7f 2b 00 00    	mov    0x2b7f(%rip),%eax        # 4040f0 <gets_cnt>
  401571:	83 c0 01             	add    $0x1,%eax
  401574:	89 05 76 2b 00 00    	mov    %eax,0x2b76(%rip)        # 4040f0 <gets_cnt>
  40157a:	90                   	nop
  40157b:	5d                   	pop    %rbp
  40157c:	c3                   	ret

000000000040157d <save_term>:
  40157d:	55                   	push   %rbp
  40157e:	48 89 e5             	mov    %rsp,%rbp
  401581:	8b 15 69 2b 00 00    	mov    0x2b69(%rip),%edx        # 4040f0 <gets_cnt>
  401587:	89 d0                	mov    %edx,%eax
  401589:	01 c0                	add    %eax,%eax
  40158b:	01 d0                	add    %edx,%eax
  40158d:	48 98                	cltq
  40158f:	48 8d 15 6a 2b 00 00 	lea    0x2b6a(%rip),%rdx        # 404100 <gets_buf>
  401596:	c6 04 10 00          	movb   $0x0,(%rax,%rdx,1)
  40159a:	90                   	nop
  40159b:	5d                   	pop    %rbp
  40159c:	c3                   	ret

000000000040159d <Gets>:
  40159d:	55                   	push   %rbp
  40159e:	48 89 e5             	mov    %rsp,%rbp
  4015a1:	48 83 ec 20          	sub    $0x20,%rsp
  4015a5:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  4015a9:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
  4015ad:	89 55 ec             	mov    %edx,-0x14(%rbp)
  4015b0:	8b 45 ec             	mov    -0x14(%rbp),%eax
  4015b3:	48 63 d0             	movslq %eax,%rdx
  4015b6:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  4015ba:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  4015be:	48 89 ce             	mov    %rcx,%rsi
  4015c1:	48 89 c7             	mov    %rax,%rdi
  4015c4:	e8 f7 fa ff ff       	call   4010c0 <memcpy@plt>
  4015c9:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  4015cd:	c9                   	leave
  4015ce:	c3                   	ret

00000000004015cf <main>:
  4015cf:	55                   	push   %rbp
  4015d0:	48 89 e5             	mov    %rsp,%rbp
  4015d3:	48 81 ec 90 00 00 00 	sub    $0x90,%rsp
  4015da:	89 bd 7c ff ff ff    	mov    %edi,-0x84(%rbp)
  4015e0:	48 89 b5 70 ff ff ff 	mov    %rsi,-0x90(%rbp)
  4015e7:	83 bd 7c ff ff ff 03 	cmpl   $0x3,-0x84(%rbp)
  4015ee:	7f 3a                	jg     40162a <main+0x5b>
  4015f0:	48 8b 85 70 ff ff ff 	mov    -0x90(%rbp),%rax
  4015f7:	48 8b 00             	mov    (%rax),%rax
  4015fa:	48 89 c6             	mov    %rax,%rsi
  4015fd:	48 8d 05 dc 0b 00 00 	lea    0xbdc(%rip),%rax        # 4021e0 <_IO_stdin_used+0x1e0>
  401604:	48 89 c7             	mov    %rax,%rdi
  401607:	b8 00 00 00 00       	mov    $0x0,%eax
  40160c:	e8 7f fa ff ff       	call   401090 <printf@plt>
  401611:	48 8d 05 f8 0b 00 00 	lea    0xbf8(%rip),%rax        # 402210 <_IO_stdin_used+0x210>
  401618:	48 89 c7             	mov    %rax,%rdi
  40161b:	e8 40 fa ff ff       	call   401060 <puts@plt>
  401620:	b8 00 00 00 00       	mov    $0x0,%eax
  401625:	e9 4e 01 00 00       	jmp    401778 <main+0x1a9>
  40162a:	48 8b 85 70 ff ff ff 	mov    -0x90(%rbp),%rax
  401631:	48 83 c0 08          	add    $0x8,%rax
  401635:	48 8b 00             	mov    (%rax),%rax
  401638:	48 8d 55 80          	lea    -0x80(%rbp),%rdx
  40163c:	48 83 c2 64          	add    $0x64,%rdx
  401640:	48 89 c6             	mov    %rax,%rsi
  401643:	48 89 d7             	mov    %rdx,%rdi
  401646:	e8 f5 f9 ff ff       	call   401040 <strcpy@plt>
  40164b:	48 8b 85 70 ff ff ff 	mov    -0x90(%rbp),%rax
  401652:	48 83 c0 10          	add    $0x10,%rax
  401656:	48 8b 10             	mov    (%rax),%rdx
  401659:	48 8d 45 80          	lea    -0x80(%rbp),%rax
  40165d:	48 89 d6             	mov    %rdx,%rsi
  401660:	48 89 c7             	mov    %rax,%rdi
  401663:	e8 d8 f9 ff ff       	call   401040 <strcpy@plt>
  401668:	48 8b 85 70 ff ff ff 	mov    -0x90(%rbp),%rax
  40166f:	48 83 c0 18          	add    $0x18,%rax
  401673:	48 8b 00             	mov    (%rax),%rax
  401676:	48 89 c7             	mov    %rax,%rdi
  401679:	e8 92 fa ff ff       	call   401110 <atoi@plt>
  40167e:	89 45 fc             	mov    %eax,-0x4(%rbp)
  401681:	48 8d 45 80          	lea    -0x80(%rbp),%rax
  401685:	48 83 c0 64          	add    $0x64,%rax
  401689:	48 89 c6             	mov    %rax,%rsi
  40168c:	48 8d 05 b1 0b 00 00 	lea    0xbb1(%rip),%rax        # 402244 <_IO_stdin_used+0x244>
  401693:	48 89 c7             	mov    %rax,%rdi
  401696:	b8 00 00 00 00       	mov    $0x0,%eax
  40169b:	e8 f0 f9 ff ff       	call   401090 <printf@plt>
  4016a0:	48 8d 45 80          	lea    -0x80(%rbp),%rax
  4016a4:	48 83 c0 64          	add    $0x64,%rax
  4016a8:	48 89 c7             	mov    %rax,%rdi
  4016ab:	e8 84 03 00 00       	call   401a34 <gencookie>
  4016b0:	89 05 32 2a 00 00    	mov    %eax,0x2a32(%rip)        # 4040e8 <cookie>
  4016b6:	8b 05 2c 2a 00 00    	mov    0x2a2c(%rip),%eax        # 4040e8 <cookie>
  4016bc:	89 c6                	mov    %eax,%esi
  4016be:	48 8d 05 8e 0b 00 00 	lea    0xb8e(%rip),%rax        # 402253 <_IO_stdin_used+0x253>
  4016c5:	48 89 c7             	mov    %rax,%rdi
  4016c8:	b8 00 00 00 00       	mov    $0x0,%eax
  4016cd:	e8 be f9 ff ff       	call   401090 <printf@plt>
  4016d2:	48 8d 45 80          	lea    -0x80(%rbp),%rax
  4016d6:	48 89 c6             	mov    %rax,%rsi
  4016d9:	48 8d 05 83 0b 00 00 	lea    0xb83(%rip),%rax        # 402263 <_IO_stdin_used+0x263>
  4016e0:	48 89 c7             	mov    %rax,%rdi
  4016e3:	b8 00 00 00 00       	mov    $0x0,%eax
  4016e8:	e8 a3 f9 ff ff       	call   401090 <printf@plt>
  4016ed:	8b 45 fc             	mov    -0x4(%rbp),%eax
  4016f0:	89 c6                	mov    %eax,%esi
  4016f2:	48 8d 05 81 0b 00 00 	lea    0xb81(%rip),%rax        # 40227a <_IO_stdin_used+0x27a>
  4016f9:	48 89 c7             	mov    %rax,%rdi
  4016fc:	b8 00 00 00 00       	mov    $0x0,%eax
  401701:	e8 8a f9 ff ff       	call   401090 <printf@plt>
  401706:	48 8d 05 67 fc ff ff 	lea    -0x399(%rip),%rax        # 401374 <bang>
  40170d:	48 89 c1             	mov    %rax,%rcx
  401710:	48 8d 05 09 fc ff ff 	lea    -0x3f7(%rip),%rax        # 401320 <fizz>
  401717:	48 89 c2             	mov    %rax,%rdx
  40171a:	48 8d 05 e2 fb ff ff 	lea    -0x41e(%rip),%rax        # 401303 <smoke>
  401721:	48 89 c6             	mov    %rax,%rsi
  401724:	48 8d 05 5d 0b 00 00 	lea    0xb5d(%rip),%rax        # 402288 <_IO_stdin_used+0x288>
  40172b:	48 89 c7             	mov    %rax,%rdi
  40172e:	b8 00 00 00 00       	mov    $0x0,%eax
  401733:	e8 58 f9 ff ff       	call   401090 <printf@plt>
  401738:	48 8d 45 80          	lea    -0x80(%rbp),%rax
  40173c:	48 83 c0 64          	add    $0x64,%rax
  401740:	48 89 c7             	mov    %rax,%rdi
  401743:	e8 de fa ff ff       	call   401226 <initialize_bomb>
  401748:	48 8d 45 80          	lea    -0x80(%rbp),%rax
  40174c:	48 89 c7             	mov    %rax,%rdi
  40174f:	e8 7f fc ff ff       	call   4013d3 <test>
  401754:	48 8d 45 80          	lea    -0x80(%rbp),%rax
  401758:	48 83 c0 64          	add    $0x64,%rax
  40175c:	48 89 c6             	mov    %rax,%rsi
  40175f:	48 8d 05 4c 0b 00 00 	lea    0xb4c(%rip),%rax        # 4022b2 <_IO_stdin_used+0x2b2>
  401766:	48 89 c7             	mov    %rax,%rdi
  401769:	b8 00 00 00 00       	mov    $0x0,%eax
  40176e:	e8 1d f9 ff ff       	call   401090 <printf@plt>
  401773:	b8 00 00 00 00       	mov    $0x0,%eax
  401778:	c9                   	leave
  401779:	c3                   	ret

000000000040177a <convert_to_hex_value>:
  40177a:	55                   	push   %rbp
  40177b:	48 89 e5             	mov    %rsp,%rbp
  40177e:	48 83 ec 20          	sub    $0x20,%rsp
  401782:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
  401786:	48 8d 55 fc          	lea    -0x4(%rbp),%rdx
  40178a:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  40178e:	48 8d 0d 2b 0b 00 00 	lea    0xb2b(%rip),%rcx        # 4022c0 <_IO_stdin_used+0x2c0>
  401795:	48 89 ce             	mov    %rcx,%rsi
  401798:	48 89 c7             	mov    %rax,%rdi
  40179b:	b8 00 00 00 00       	mov    $0x0,%eax
  4017a0:	e8 3b f9 ff ff       	call   4010e0 <__isoc99_sscanf@plt>
  4017a5:	8b 45 fc             	mov    -0x4(%rbp),%eax
  4017a8:	c9                   	leave
  4017a9:	c3                   	ret

00000000004017aa <convert_to_byte_string>:
  4017aa:	55                   	push   %rbp
  4017ab:	48 89 e5             	mov    %rsp,%rbp
  4017ae:	53                   	push   %rbx
  4017af:	48 83 ec 58          	sub    $0x58,%rsp
  4017b3:	48 89 7d a8          	mov    %rdi,-0x58(%rbp)
  4017b7:	48 89 75 a0          	mov    %rsi,-0x60(%rbp)
  4017bb:	48 89 e0             	mov    %rsp,%rax
  4017be:	48 89 c3             	mov    %rax,%rbx
  4017c1:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%rbp)
  4017c8:	c7 45 d4 00 10 00 00 	movl   $0x1000,-0x2c(%rbp)
  4017cf:	8b 45 d4             	mov    -0x2c(%rbp),%eax
  4017d2:	48 63 d0             	movslq %eax,%rdx
  4017d5:	48 83 ea 01          	sub    $0x1,%rdx
  4017d9:	48 89 55 c8          	mov    %rdx,-0x38(%rbp)
  4017dd:	48 98                	cltq
  4017df:	ba 10 00 00 00       	mov    $0x10,%edx
  4017e4:	48 83 ea 01          	sub    $0x1,%rdx
  4017e8:	48 01 d0             	add    %rdx,%rax
  4017eb:	b9 10 00 00 00       	mov    $0x10,%ecx
  4017f0:	ba 00 00 00 00       	mov    $0x0,%edx
  4017f5:	48 f7 f1             	div    %rcx
  4017f8:	48 6b c0 10          	imul   $0x10,%rax,%rax
  4017fc:	48 29 c4             	sub    %rax,%rsp
  4017ff:	48 89 e0             	mov    %rsp,%rax
  401802:	48 83 c0 00          	add    $0x0,%rax
  401806:	48 89 45 c0          	mov    %rax,-0x40(%rbp)
  40180a:	c7 45 e8 00 04 00 00 	movl   $0x400,-0x18(%rbp)
  401811:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%rbp)
  401818:	bf 00 04 00 00       	mov    $0x400,%edi
  40181d:	e8 ae f8 ff ff       	call   4010d0 <malloc@plt>
  401822:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
  401826:	48 83 7d d8 00       	cmpq   $0x0,-0x28(%rbp)
  40182b:	0f 85 8c 01 00 00    	jne    4019bd <convert_to_byte_string+0x213>
  401831:	b8 00 00 00 00       	mov    $0x0,%eax
  401836:	e9 b6 01 00 00       	jmp    4019f1 <convert_to_byte_string+0x247>
  40183b:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
  40183f:	48 8d 15 7d 0a 00 00 	lea    0xa7d(%rip),%rdx        # 4022c3 <_IO_stdin_used+0x2c3>
  401846:	48 89 d6             	mov    %rdx,%rsi
  401849:	48 89 c7             	mov    %rax,%rdi
  40184c:	e8 4f f8 ff ff       	call   4010a0 <strcmp@plt>
  401851:	85 c0                	test   %eax,%eax
  401853:	75 09                	jne    40185e <convert_to_byte_string+0xb4>
  401855:	83 45 ec 01          	addl   $0x1,-0x14(%rbp)
  401859:	e9 5f 01 00 00       	jmp    4019bd <convert_to_byte_string+0x213>
  40185e:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
  401862:	48 8d 15 5d 0a 00 00 	lea    0xa5d(%rip),%rdx        # 4022c6 <_IO_stdin_used+0x2c6>
  401869:	48 89 d6             	mov    %rdx,%rsi
  40186c:	48 89 c7             	mov    %rax,%rdi
  40186f:	e8 2c f8 ff ff       	call   4010a0 <strcmp@plt>
  401874:	85 c0                	test   %eax,%eax
  401876:	75 4a                	jne    4018c2 <convert_to_byte_string+0x118>
  401878:	83 7d ec 00          	cmpl   $0x0,-0x14(%rbp)
  40187c:	7f 3b                	jg     4018b9 <convert_to_byte_string+0x10f>
  40187e:	48 8b 05 3b 28 00 00 	mov    0x283b(%rip),%rax        # 4040c0 <stderr@GLIBC_2.2.5>
  401885:	48 8d 15 3a 0a 00 00 	lea    0xa3a(%rip),%rdx        # 4022c6 <_IO_stdin_used+0x2c6>
  40188c:	48 8d 0d 36 0a 00 00 	lea    0xa36(%rip),%rcx        # 4022c9 <_IO_stdin_used+0x2c9>
  401893:	48 89 ce             	mov    %rcx,%rsi
  401896:	48 89 c7             	mov    %rax,%rdi
  401899:	b8 00 00 00 00       	mov    $0x0,%eax
  40189e:	e8 0d f8 ff ff       	call   4010b0 <fprintf@plt>
  4018a3:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  4018a7:	48 89 c7             	mov    %rax,%rdi
  4018aa:	e8 81 f7 ff ff       	call   401030 <free@plt>
  4018af:	b8 00 00 00 00       	mov    $0x0,%eax
  4018b4:	e9 38 01 00 00       	jmp    4019f1 <convert_to_byte_string+0x247>
  4018b9:	83 6d ec 01          	subl   $0x1,-0x14(%rbp)
  4018bd:	e9 fb 00 00 00       	jmp    4019bd <convert_to_byte_string+0x213>
  4018c2:	83 7d ec 00          	cmpl   $0x0,-0x14(%rbp)
  4018c6:	0f 85 f1 00 00 00    	jne    4019bd <convert_to_byte_string+0x213>
  4018cc:	e8 5f f8 ff ff       	call   401130 <__ctype_b_loc@plt>
  4018d1:	48 8b 10             	mov    (%rax),%rdx
  4018d4:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
  4018d8:	0f b6 00             	movzbl (%rax),%eax
  4018db:	48 0f be c0          	movsbq %al,%rax
  4018df:	48 01 c0             	add    %rax,%rax
  4018e2:	48 01 d0             	add    %rdx,%rax
  4018e5:	0f b7 00             	movzwl (%rax),%eax
  4018e8:	0f b7 c0             	movzwl %ax,%eax
  4018eb:	25 00 10 00 00       	and    $0x1000,%eax
  4018f0:	85 c0                	test   %eax,%eax
  4018f2:	74 35                	je     401929 <convert_to_byte_string+0x17f>
  4018f4:	e8 37 f8 ff ff       	call   401130 <__ctype_b_loc@plt>
  4018f9:	48 8b 10             	mov    (%rax),%rdx
  4018fc:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
  401900:	0f b6 40 01          	movzbl 0x1(%rax),%eax
  401904:	48 0f be c0          	movsbq %al,%rax
  401908:	48 01 c0             	add    %rax,%rax
  40190b:	48 01 d0             	add    %rdx,%rax
  40190e:	0f b7 00             	movzwl (%rax),%eax
  401911:	0f b7 c0             	movzwl %ax,%eax
  401914:	25 00 10 00 00       	and    $0x1000,%eax
  401919:	85 c0                	test   %eax,%eax
  40191b:	74 0c                	je     401929 <convert_to_byte_string+0x17f>
  40191d:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
  401921:	0f b6 40 02          	movzbl 0x2(%rax),%eax
  401925:	84 c0                	test   %al,%al
  401927:	74 38                	je     401961 <convert_to_byte_string+0x1b7>
  401929:	48 8b 05 90 27 00 00 	mov    0x2790(%rip),%rax        # 4040c0 <stderr@GLIBC_2.2.5>
  401930:	48 8b 55 c0          	mov    -0x40(%rbp),%rdx
  401934:	48 8d 0d ad 09 00 00 	lea    0x9ad(%rip),%rcx        # 4022e8 <_IO_stdin_used+0x2e8>
  40193b:	48 89 ce             	mov    %rcx,%rsi
  40193e:	48 89 c7             	mov    %rax,%rdi
  401941:	b8 00 00 00 00       	mov    $0x0,%eax
  401946:	e8 65 f7 ff ff       	call   4010b0 <fprintf@plt>
  40194b:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  40194f:	48 89 c7             	mov    %rax,%rdi
  401952:	e8 d9 f6 ff ff       	call   401030 <free@plt>
  401957:	b8 00 00 00 00       	mov    $0x0,%eax
  40195c:	e9 90 00 00 00       	jmp    4019f1 <convert_to_byte_string+0x247>
  401961:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
  401965:	48 89 c7             	mov    %rax,%rdi
  401968:	e8 0d fe ff ff       	call   40177a <convert_to_hex_value>
  40196d:	88 45 bf             	mov    %al,-0x41(%rbp)
  401970:	8b 45 e4             	mov    -0x1c(%rbp),%eax
  401973:	3b 45 e8             	cmp    -0x18(%rbp),%eax
  401976:	75 2c                	jne    4019a4 <convert_to_byte_string+0x1fa>
  401978:	8b 45 e8             	mov    -0x18(%rbp),%eax
  40197b:	01 c0                	add    %eax,%eax
  40197d:	48 63 d0             	movslq %eax,%rdx
  401980:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  401984:	48 89 d6             	mov    %rdx,%rsi
  401987:	48 89 c7             	mov    %rax,%rdi
  40198a:	e8 61 f7 ff ff       	call   4010f0 <realloc@plt>
  40198f:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
  401993:	48 83 7d d8 00       	cmpq   $0x0,-0x28(%rbp)
  401998:	75 07                	jne    4019a1 <convert_to_byte_string+0x1f7>
  40199a:	b8 00 00 00 00       	mov    $0x0,%eax
  40199f:	eb 50                	jmp    4019f1 <convert_to_byte_string+0x247>
  4019a1:	d1 65 e8             	shll   $1,-0x18(%rbp)
  4019a4:	8b 45 e4             	mov    -0x1c(%rbp),%eax
  4019a7:	8d 50 01             	lea    0x1(%rax),%edx
  4019aa:	89 55 e4             	mov    %edx,-0x1c(%rbp)
  4019ad:	48 63 d0             	movslq %eax,%rdx
  4019b0:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  4019b4:	48 01 c2             	add    %rax,%rdx
  4019b7:	0f b6 45 bf          	movzbl -0x41(%rbp),%eax
  4019bb:	88 02                	mov    %al,(%rdx)
  4019bd:	48 8b 55 c0          	mov    -0x40(%rbp),%rdx
  4019c1:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
  4019c5:	48 8d 0d 79 09 00 00 	lea    0x979(%rip),%rcx        # 402345 <_IO_stdin_used+0x345>
  4019cc:	48 89 ce             	mov    %rcx,%rsi
  4019cf:	48 89 c7             	mov    %rax,%rdi
  4019d2:	b8 00 00 00 00       	mov    $0x0,%eax
  4019d7:	e8 74 f6 ff ff       	call   401050 <__isoc99_fscanf@plt>
  4019dc:	85 c0                	test   %eax,%eax
  4019de:	0f 8f 57 fe ff ff    	jg     40183b <convert_to_byte_string+0x91>
  4019e4:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
  4019e8:	8b 55 e4             	mov    -0x1c(%rbp),%edx
  4019eb:	89 10                	mov    %edx,(%rax)
  4019ed:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  4019f1:	48 89 dc             	mov    %rbx,%rsp
  4019f4:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
  4019f8:	c9                   	leave
  4019f9:	c3                   	ret

00000000004019fa <getbuf>:
  4019fa:	55                   	push   %rbp
  4019fb:	48 89 e5             	mov    %rsp,%rbp
  4019fe:	48 83 ec 40          	sub    $0x40,%rsp
  401a02:	48 89 7d c8          	mov    %rdi,-0x38(%rbp)
  401a06:	89 75 c4             	mov    %esi,-0x3c(%rbp)
  401a09:	48 b8 31 32 33 34 35 	movabs $0x363534333231,%rax
  401a10:	36 00 00 
  401a13:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  401a17:	8b 55 c4             	mov    -0x3c(%rbp),%edx
  401a1a:	48 8b 4d c8          	mov    -0x38(%rbp),%rcx
  401a1e:	48 8d 45 d0          	lea    -0x30(%rbp),%rax
  401a22:	48 89 ce             	mov    %rcx,%rsi
  401a25:	48 89 c7             	mov    %rax,%rdi
  401a28:	e8 70 fb ff ff       	call   40159d <Gets>
  401a2d:	b8 01 00 00 00       	mov    $0x1,%eax
  401a32:	c9                   	leave
  401a33:	c3                   	ret

0000000000401a34 <gencookie>:
  401a34:	55                   	push   %rbp
  401a35:	48 89 e5             	mov    %rsp,%rbp
  401a38:	48 83 ec 20          	sub    $0x20,%rsp
  401a3c:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
  401a40:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  401a44:	48 89 c7             	mov    %rax,%rdi
  401a47:	e8 34 f6 ff ff       	call   401080 <strlen@plt>
  401a4c:	48 83 f8 0a          	cmp    $0xa,%rax
  401a50:	74 19                	je     401a6b <gencookie+0x37>
  401a52:	48 8d 05 ef 08 00 00 	lea    0x8ef(%rip),%rax        # 402348 <_IO_stdin_used+0x348>
  401a59:	48 89 c7             	mov    %rax,%rdi
  401a5c:	e8 ff f5 ff ff       	call   401060 <puts@plt>
  401a61:	b8 00 00 00 00       	mov    $0x0,%eax
  401a66:	e9 8d 00 00 00       	jmp    401af8 <gencookie+0xc4>
  401a6b:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  401a6f:	0f b6 00             	movzbl (%rax),%eax
  401a72:	3c 55                	cmp    $0x55,%al
  401a74:	74 21                	je     401a97 <gencookie+0x63>
  401a76:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  401a7a:	0f b6 00             	movzbl (%rax),%eax
  401a7d:	3c 75                	cmp    $0x75,%al
  401a7f:	74 16                	je     401a97 <gencookie+0x63>
  401a81:	48 8d 05 df 08 00 00 	lea    0x8df(%rip),%rax        # 402367 <_IO_stdin_used+0x367>
  401a88:	48 89 c7             	mov    %rax,%rdi
  401a8b:	e8 d0 f5 ff ff       	call   401060 <puts@plt>
  401a90:	b8 00 00 00 00       	mov    $0x0,%eax
  401a95:	eb 61                	jmp    401af8 <gencookie+0xc4>
  401a97:	c7 45 fc 01 00 00 00 	movl   $0x1,-0x4(%rbp)
  401a9e:	eb 42                	jmp    401ae2 <gencookie+0xae>
  401aa0:	8b 45 fc             	mov    -0x4(%rbp),%eax
  401aa3:	48 63 d0             	movslq %eax,%rdx
  401aa6:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  401aaa:	48 01 d0             	add    %rdx,%rax
  401aad:	0f b6 00             	movzbl (%rax),%eax
  401ab0:	3c 2f                	cmp    $0x2f,%al
  401ab2:	7e 14                	jle    401ac8 <gencookie+0x94>
  401ab4:	8b 45 fc             	mov    -0x4(%rbp),%eax
  401ab7:	48 63 d0             	movslq %eax,%rdx
  401aba:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  401abe:	48 01 d0             	add    %rdx,%rax
  401ac1:	0f b6 00             	movzbl (%rax),%eax
  401ac4:	3c 39                	cmp    $0x39,%al
  401ac6:	7e 16                	jle    401ade <gencookie+0xaa>
  401ac8:	48 8d 05 b3 08 00 00 	lea    0x8b3(%rip),%rax        # 402382 <_IO_stdin_used+0x382>
  401acf:	48 89 c7             	mov    %rax,%rdi
  401ad2:	e8 89 f5 ff ff       	call   401060 <puts@plt>
  401ad7:	b8 00 00 00 00       	mov    $0x0,%eax
  401adc:	eb 1a                	jmp    401af8 <gencookie+0xc4>
  401ade:	83 45 fc 01          	addl   $0x1,-0x4(%rbp)
  401ae2:	83 7d fc 09          	cmpl   $0x9,-0x4(%rbp)
  401ae6:	7e b8                	jle    401aa0 <gencookie+0x6c>
  401ae8:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  401aec:	48 83 c0 01          	add    $0x1,%rax
  401af0:	48 89 c7             	mov    %rax,%rdi
  401af3:	e8 18 f6 ff ff       	call   401110 <atoi@plt>
  401af8:	c9                   	leave
  401af9:	c3                   	ret

Disassembly of section .fini:

0000000000401afc <_fini>:
  401afc:	f3 0f 1e fa          	endbr64
  401b00:	48 83 ec 08          	sub    $0x8,%rsp
  401b04:	48 83 c4 08          	add    $0x8,%rsp
  401b08:	c3                   	ret
