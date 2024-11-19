
binarybomb:     file format elf64-x86-64


Disassembly of section .init:

0000000000001000 <_init>:
    1000:	f3 0f 1e fa          	endbr64
    1004:	48 83 ec 08          	sub    $0x8,%rsp
    1008:	48 8b 05 c1 2f 00 00 	mov    0x2fc1(%rip),%rax        # 3fd0 <__gmon_start__@Base>
    100f:	48 85 c0             	test   %rax,%rax
    1012:	74 02                	je     1016 <_init+0x16>
    1014:	ff d0                	call   *%rax
    1016:	48 83 c4 08          	add    $0x8,%rsp
    101a:	c3                   	ret

Disassembly of section .plt:

0000000000001020 <getenv@plt-0x10>:
    1020:	ff 35 ca 2f 00 00    	push   0x2fca(%rip)        # 3ff0 <_GLOBAL_OFFSET_TABLE_+0x8>
    1026:	ff 25 cc 2f 00 00    	jmp    *0x2fcc(%rip)        # 3ff8 <_GLOBAL_OFFSET_TABLE_+0x10>
    102c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000001030 <getenv@plt>:
    1030:	ff 25 ca 2f 00 00    	jmp    *0x2fca(%rip)        # 4000 <getenv@GLIBC_2.2.5>
    1036:	68 00 00 00 00       	push   $0x0
    103b:	e9 e0 ff ff ff       	jmp    1020 <_init+0x20>

0000000000001040 <strcpy@plt>:
    1040:	ff 25 c2 2f 00 00    	jmp    *0x2fc2(%rip)        # 4008 <strcpy@GLIBC_2.2.5>
    1046:	68 01 00 00 00       	push   $0x1
    104b:	e9 d0 ff ff ff       	jmp    1020 <_init+0x20>

0000000000001050 <puts@plt>:
    1050:	ff 25 ba 2f 00 00    	jmp    *0x2fba(%rip)        # 4010 <puts@GLIBC_2.2.5>
    1056:	68 02 00 00 00       	push   $0x2
    105b:	e9 c0 ff ff ff       	jmp    1020 <_init+0x20>

0000000000001060 <strlen@plt>:
    1060:	ff 25 b2 2f 00 00    	jmp    *0x2fb2(%rip)        # 4018 <strlen@GLIBC_2.2.5>
    1066:	68 03 00 00 00       	push   $0x3
    106b:	e9 b0 ff ff ff       	jmp    1020 <_init+0x20>

0000000000001070 <__stack_chk_fail@plt>:
    1070:	ff 25 aa 2f 00 00    	jmp    *0x2faa(%rip)        # 4020 <__stack_chk_fail@GLIBC_2.4>
    1076:	68 04 00 00 00       	push   $0x4
    107b:	e9 a0 ff ff ff       	jmp    1020 <_init+0x20>

0000000000001080 <printf@plt>:
    1080:	ff 25 a2 2f 00 00    	jmp    *0x2fa2(%rip)        # 4028 <printf@GLIBC_2.2.5>
    1086:	68 05 00 00 00       	push   $0x5
    108b:	e9 90 ff ff ff       	jmp    1020 <_init+0x20>

0000000000001090 <fgets@plt>:
    1090:	ff 25 9a 2f 00 00    	jmp    *0x2f9a(%rip)        # 4030 <fgets@GLIBC_2.2.5>
    1096:	68 06 00 00 00       	push   $0x6
    109b:	e9 80 ff ff ff       	jmp    1020 <_init+0x20>

00000000000010a0 <__isoc99_sscanf@plt>:
    10a0:	ff 25 92 2f 00 00    	jmp    *0x2f92(%rip)        # 4038 <__isoc99_sscanf@GLIBC_2.7>
    10a6:	68 07 00 00 00       	push   $0x7
    10ab:	e9 70 ff ff ff       	jmp    1020 <_init+0x20>

00000000000010b0 <fopen@plt>:
    10b0:	ff 25 8a 2f 00 00    	jmp    *0x2f8a(%rip)        # 4040 <fopen@GLIBC_2.2.5>
    10b6:	68 08 00 00 00       	push   $0x8
    10bb:	e9 60 ff ff ff       	jmp    1020 <_init+0x20>

00000000000010c0 <exit@plt>:
    10c0:	ff 25 82 2f 00 00    	jmp    *0x2f82(%rip)        # 4048 <exit@GLIBC_2.2.5>
    10c6:	68 09 00 00 00       	push   $0x9
    10cb:	e9 50 ff ff ff       	jmp    1020 <_init+0x20>

00000000000010d0 <__ctype_b_loc@plt>:
    10d0:	ff 25 7a 2f 00 00    	jmp    *0x2f7a(%rip)        # 4050 <__ctype_b_loc@GLIBC_2.3>
    10d6:	68 0a 00 00 00       	push   $0xa
    10db:	e9 40 ff ff ff       	jmp    1020 <_init+0x20>

Disassembly of section .text:

00000000000010e0 <_start>:
    10e0:	f3 0f 1e fa          	endbr64
    10e4:	31 ed                	xor    %ebp,%ebp
    10e6:	49 89 d1             	mov    %rdx,%r9
    10e9:	5e                   	pop    %rsi
    10ea:	48 89 e2             	mov    %rsp,%rdx
    10ed:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
    10f1:	50                   	push   %rax
    10f2:	54                   	push   %rsp
    10f3:	45 31 c0             	xor    %r8d,%r8d
    10f6:	31 c9                	xor    %ecx,%ecx
    10f8:	48 8d 3d cd 01 00 00 	lea    0x1cd(%rip),%rdi        # 12cc <main>
    10ff:	ff 15 bb 2e 00 00    	call   *0x2ebb(%rip)        # 3fc0 <__libc_start_main@GLIBC_2.34>
    1105:	f4                   	hlt
    1106:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    110d:	00 00 00 
    1110:	48 8d 3d b1 33 00 00 	lea    0x33b1(%rip),%rdi        # 44c8 <__TMC_END__>
    1117:	48 8d 05 aa 33 00 00 	lea    0x33aa(%rip),%rax        # 44c8 <__TMC_END__>
    111e:	48 39 f8             	cmp    %rdi,%rax
    1121:	74 15                	je     1138 <_start+0x58>
    1123:	48 8b 05 9e 2e 00 00 	mov    0x2e9e(%rip),%rax        # 3fc8 <_ITM_deregisterTMCloneTable@Base>
    112a:	48 85 c0             	test   %rax,%rax
    112d:	74 09                	je     1138 <_start+0x58>
    112f:	ff e0                	jmp    *%rax
    1131:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1138:	c3                   	ret
    1139:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1140:	48 8d 3d 81 33 00 00 	lea    0x3381(%rip),%rdi        # 44c8 <__TMC_END__>
    1147:	48 8d 35 7a 33 00 00 	lea    0x337a(%rip),%rsi        # 44c8 <__TMC_END__>
    114e:	48 29 fe             	sub    %rdi,%rsi
    1151:	48 89 f0             	mov    %rsi,%rax
    1154:	48 c1 ee 3f          	shr    $0x3f,%rsi
    1158:	48 c1 f8 03          	sar    $0x3,%rax
    115c:	48 01 c6             	add    %rax,%rsi
    115f:	48 d1 fe             	sar    $1,%rsi
    1162:	74 14                	je     1178 <_start+0x98>
    1164:	48 8b 05 6d 2e 00 00 	mov    0x2e6d(%rip),%rax        # 3fd8 <_ITM_registerTMCloneTable@Base>
    116b:	48 85 c0             	test   %rax,%rax
    116e:	74 08                	je     1178 <_start+0x98>
    1170:	ff e0                	jmp    *%rax
    1172:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    1178:	c3                   	ret
    1179:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1180:	f3 0f 1e fa          	endbr64
    1184:	80 3d 5d 33 00 00 00 	cmpb   $0x0,0x335d(%rip)        # 44e8 <stdin@GLIBC_2.2.5+0x8>
    118b:	75 33                	jne    11c0 <_start+0xe0>
    118d:	55                   	push   %rbp
    118e:	48 83 3d 4a 2e 00 00 	cmpq   $0x0,0x2e4a(%rip)        # 3fe0 <__cxa_finalize@GLIBC_2.2.5>
    1195:	00 
    1196:	48 89 e5             	mov    %rsp,%rbp
    1199:	74 0d                	je     11a8 <_start+0xc8>
    119b:	48 8b 3d c6 2e 00 00 	mov    0x2ec6(%rip),%rdi        # 4068 <__dso_handle>
    11a2:	ff 15 38 2e 00 00    	call   *0x2e38(%rip)        # 3fe0 <__cxa_finalize@GLIBC_2.2.5>
    11a8:	e8 63 ff ff ff       	call   1110 <_start+0x30>
    11ad:	c6 05 34 33 00 00 01 	movb   $0x1,0x3334(%rip)        # 44e8 <stdin@GLIBC_2.2.5+0x8>
    11b4:	5d                   	pop    %rbp
    11b5:	c3                   	ret
    11b6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    11bd:	00 00 00 
    11c0:	c3                   	ret
    11c1:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
    11c8:	00 00 00 00 
    11cc:	0f 1f 40 00          	nopl   0x0(%rax)
    11d0:	f3 0f 1e fa          	endbr64
    11d4:	e9 67 ff ff ff       	jmp    1140 <_start+0x60>

00000000000011d9 <initialize_bomb>:
    11d9:	55                   	push   %rbp
    11da:	48 89 e5             	mov    %rsp,%rbp
    11dd:	48 83 ec 30          	sub    $0x30,%rsp
    11e1:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
    11e5:	c7 45 e4 01 00 00 00 	movl   $0x1,-0x1c(%rbp)
    11ec:	c7 45 e8 02 00 00 00 	movl   $0x2,-0x18(%rbp)
    11f3:	c7 45 ec 03 00 00 00 	movl   $0x3,-0x14(%rbp)
    11fa:	c7 45 f0 04 00 00 00 	movl   $0x4,-0x10(%rbp)
    1201:	c7 45 f4 05 00 00 00 	movl   $0x5,-0xc(%rbp)
    1208:	c7 45 f8 06 00 00 00 	movl   $0x6,-0x8(%rbp)
    120f:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    1213:	48 89 c7             	mov    %rax,%rdi
    1216:	e8 45 fe ff ff       	call   1060 <strlen@plt>
    121b:	89 45 fc             	mov    %eax,-0x4(%rbp)
    121e:	83 7d fc 0a          	cmpl   $0xa,-0x4(%rbp)
    1222:	74 19                	je     123d <initialize_bomb+0x64>
    1224:	48 8d 05 dd 0d 00 00 	lea    0xddd(%rip),%rax        # 2008 <_IO_stdin_used+0x8>
    122b:	48 89 c7             	mov    %rax,%rdi
    122e:	e8 1d fe ff ff       	call   1050 <puts@plt>
    1233:	bf 00 00 00 00       	mov    $0x0,%edi
    1238:	e8 83 fe ff ff       	call   10c0 <exit@plt>
    123d:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    1241:	48 89 c6             	mov    %rax,%rsi
    1244:	48 8d 05 ad 32 00 00 	lea    0x32ad(%rip),%rax        # 44f8 <studentid>
    124b:	48 89 c7             	mov    %rax,%rdi
    124e:	e8 ed fd ff ff       	call   1040 <strcpy@plt>
    1253:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    1257:	48 89 c6             	mov    %rax,%rsi
    125a:	48 8d 05 e1 0d 00 00 	lea    0xde1(%rip),%rax        # 2042 <_IO_stdin_used+0x42>
    1261:	48 89 c7             	mov    %rax,%rdi
    1264:	b8 00 00 00 00       	mov    $0x0,%eax
    1269:	e8 12 fe ff ff       	call   1080 <printf@plt>
    126e:	8b 45 fc             	mov    -0x4(%rbp),%eax
    1271:	48 98                	cltq
    1273:	48 8d 50 ff          	lea    -0x1(%rax),%rdx
    1277:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    127b:	48 01 d0             	add    %rdx,%rax
    127e:	0f b6 00             	movzbl (%rax),%eax
    1281:	3c 38                	cmp    $0x38,%al
    1283:	75 0e                	jne    1293 <initialize_bomb+0xba>
    1285:	8b 45 f8             	mov    -0x8(%rbp),%eax
    1288:	c1 e0 02             	shl    $0x2,%eax
    128b:	83 c0 0a             	add    $0xa,%eax
    128e:	89 45 e4             	mov    %eax,-0x1c(%rbp)
    1291:	eb 37                	jmp    12ca <initialize_bomb+0xf1>
    1293:	48 8d 05 b6 0d 00 00 	lea    0xdb6(%rip),%rax        # 2050 <_IO_stdin_used+0x50>
    129a:	48 89 c7             	mov    %rax,%rdi
    129d:	e8 ae fd ff ff       	call   1050 <puts@plt>
    12a2:	48 8d 05 df 0d 00 00 	lea    0xddf(%rip),%rax        # 2088 <_IO_stdin_used+0x88>
    12a9:	48 89 c7             	mov    %rax,%rdi
    12ac:	e8 9f fd ff ff       	call   1050 <puts@plt>
    12b1:	48 8d 05 08 0e 00 00 	lea    0xe08(%rip),%rax        # 20c0 <_IO_stdin_used+0xc0>
    12b8:	48 89 c7             	mov    %rax,%rdi
    12bb:	e8 90 fd ff ff       	call   1050 <puts@plt>
    12c0:	bf 00 00 00 00       	mov    $0x0,%edi
    12c5:	e8 f6 fd ff ff       	call   10c0 <exit@plt>
    12ca:	c9                   	leave
    12cb:	c3                   	ret

00000000000012cc <main>:
    12cc:	55                   	push   %rbp
    12cd:	48 89 e5             	mov    %rsp,%rbp
    12d0:	48 83 ec 20          	sub    $0x20,%rsp
    12d4:	89 7d ec             	mov    %edi,-0x14(%rbp)
    12d7:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    12db:	83 7d ec 01          	cmpl   $0x1,-0x14(%rbp)
    12df:	75 13                	jne    12f4 <main+0x28>
    12e1:	48 8b 05 f8 31 00 00 	mov    0x31f8(%rip),%rax        # 44e0 <stdin@GLIBC_2.2.5>
    12e8:	48 89 05 01 32 00 00 	mov    %rax,0x3201(%rip)        # 44f0 <infile>
    12ef:	e9 91 00 00 00       	jmp    1385 <main+0xb9>
    12f4:	83 7d ec 02          	cmpl   $0x2,-0x14(%rbp)
    12f8:	75 63                	jne    135d <main+0x91>
    12fa:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    12fe:	48 83 c0 08          	add    $0x8,%rax
    1302:	48 8b 00             	mov    (%rax),%rax
    1305:	48 8d 15 da 0d 00 00 	lea    0xdda(%rip),%rdx        # 20e6 <_IO_stdin_used+0xe6>
    130c:	48 89 d6             	mov    %rdx,%rsi
    130f:	48 89 c7             	mov    %rax,%rdi
    1312:	e8 99 fd ff ff       	call   10b0 <fopen@plt>
    1317:	48 89 05 d2 31 00 00 	mov    %rax,0x31d2(%rip)        # 44f0 <infile>
    131e:	48 8b 05 cb 31 00 00 	mov    0x31cb(%rip),%rax        # 44f0 <infile>
    1325:	48 85 c0             	test   %rax,%rax
    1328:	75 5b                	jne    1385 <main+0xb9>
    132a:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    132e:	48 83 c0 08          	add    $0x8,%rax
    1332:	48 8b 10             	mov    (%rax),%rdx
    1335:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    1339:	48 8b 00             	mov    (%rax),%rax
    133c:	48 89 c6             	mov    %rax,%rsi
    133f:	48 8d 05 a2 0d 00 00 	lea    0xda2(%rip),%rax        # 20e8 <_IO_stdin_used+0xe8>
    1346:	48 89 c7             	mov    %rax,%rdi
    1349:	b8 00 00 00 00       	mov    $0x0,%eax
    134e:	e8 2d fd ff ff       	call   1080 <printf@plt>
    1353:	bf 08 00 00 00       	mov    $0x8,%edi
    1358:	e8 63 fd ff ff       	call   10c0 <exit@plt>
    135d:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    1361:	48 8b 00             	mov    (%rax),%rax
    1364:	48 89 c6             	mov    %rax,%rsi
    1367:	48 8d 05 97 0d 00 00 	lea    0xd97(%rip),%rax        # 2105 <_IO_stdin_used+0x105>
    136e:	48 89 c7             	mov    %rax,%rdi
    1371:	b8 00 00 00 00       	mov    $0x0,%eax
    1376:	e8 05 fd ff ff       	call   1080 <printf@plt>
    137b:	bf 08 00 00 00       	mov    $0x8,%edi
    1380:	e8 3b fd ff ff       	call   10c0 <exit@plt>
    1385:	48 8d 05 93 0d 00 00 	lea    0xd93(%rip),%rax        # 211f <_IO_stdin_used+0x11f>
    138c:	48 89 c7             	mov    %rax,%rdi
    138f:	e8 bc fc ff ff       	call   1050 <puts@plt>
    1394:	e8 6e 03 00 00       	call   1707 <read_line>
    1399:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
    139d:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    13a1:	48 89 c7             	mov    %rax,%rdi
    13a4:	e8 30 fe ff ff       	call   11d9 <initialize_bomb>
    13a9:	48 8d 05 88 0d 00 00 	lea    0xd88(%rip),%rax        # 2138 <_IO_stdin_used+0x138>
    13b0:	48 89 c7             	mov    %rax,%rdi
    13b3:	e8 98 fc ff ff       	call   1050 <puts@plt>
    13b8:	48 8d 05 99 0d 00 00 	lea    0xd99(%rip),%rax        # 2158 <_IO_stdin_used+0x158>
    13bf:	48 89 c7             	mov    %rax,%rdi
    13c2:	e8 89 fc ff ff       	call   1050 <puts@plt>
    13c7:	e8 3b 03 00 00       	call   1707 <read_line>
    13cc:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    13d0:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    13d4:	48 89 c7             	mov    %rax,%rdi
    13d7:	e8 d7 04 00 00       	call   18b3 <phase_1>
    13dc:	48 8d 05 ac 0d 00 00 	lea    0xdac(%rip),%rax        # 218f <_IO_stdin_used+0x18f>
    13e3:	48 89 c7             	mov    %rax,%rdi
    13e6:	e8 65 fc ff ff       	call   1050 <puts@plt>
    13eb:	48 8d 05 ae 0d 00 00 	lea    0xdae(%rip),%rax        # 21a0 <_IO_stdin_used+0x1a0>
    13f2:	48 89 c7             	mov    %rax,%rdi
    13f5:	e8 56 fc ff ff       	call   1050 <puts@plt>
    13fa:	e8 08 03 00 00       	call   1707 <read_line>
    13ff:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    1403:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    1407:	48 89 c7             	mov    %rax,%rdi
    140a:	e8 08 05 00 00       	call   1917 <phase_2>
    140f:	48 8d 05 c6 0d 00 00 	lea    0xdc6(%rip),%rax        # 21dc <_IO_stdin_used+0x1dc>
    1416:	48 89 c7             	mov    %rax,%rdi
    1419:	e8 32 fc ff ff       	call   1050 <puts@plt>
    141e:	48 8d 05 c8 0d 00 00 	lea    0xdc8(%rip),%rax        # 21ed <_IO_stdin_used+0x1ed>
    1425:	48 89 c7             	mov    %rax,%rdi
    1428:	e8 23 fc ff ff       	call   1050 <puts@plt>
    142d:	e8 d5 02 00 00       	call   1707 <read_line>
    1432:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    1436:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    143a:	48 89 c7             	mov    %rax,%rdi
    143d:	e8 9b 05 00 00       	call   19dd <phase_3>
    1442:	48 8d 05 c2 0d 00 00 	lea    0xdc2(%rip),%rax        # 220b <_IO_stdin_used+0x20b>
    1449:	48 89 c7             	mov    %rax,%rdi
    144c:	e8 ff fb ff ff       	call   1050 <puts@plt>
    1451:	48 8d 05 c8 0d 00 00 	lea    0xdc8(%rip),%rax        # 2220 <_IO_stdin_used+0x220>
    1458:	48 89 c7             	mov    %rax,%rdi
    145b:	e8 f0 fb ff ff       	call   1050 <puts@plt>
    1460:	e8 a2 02 00 00       	call   1707 <read_line>
    1465:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    1469:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    146d:	48 89 c7             	mov    %rax,%rdi
    1470:	e8 04 07 00 00       	call   1b79 <phase_4>
    1475:	48 8d 05 cf 0d 00 00 	lea    0xdcf(%rip),%rax        # 224b <_IO_stdin_used+0x24b>
    147c:	48 89 c7             	mov    %rax,%rdi
    147f:	e8 cc fb ff ff       	call   1050 <puts@plt>
    1484:	48 8d 05 d1 0d 00 00 	lea    0xdd1(%rip),%rax        # 225c <_IO_stdin_used+0x25c>
    148b:	48 89 c7             	mov    %rax,%rdi
    148e:	e8 bd fb ff ff       	call   1050 <puts@plt>
    1493:	e8 6f 02 00 00       	call   1707 <read_line>
    1498:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    149c:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    14a0:	48 89 c7             	mov    %rax,%rdi
    14a3:	e8 77 07 00 00       	call   1c1f <phase_5>
    14a8:	48 8d 05 c9 0d 00 00 	lea    0xdc9(%rip),%rax        # 2278 <_IO_stdin_used+0x278>
    14af:	48 89 c7             	mov    %rax,%rdi
    14b2:	e8 99 fb ff ff       	call   1050 <puts@plt>
    14b7:	48 8d 05 cb 0d 00 00 	lea    0xdcb(%rip),%rax        # 2289 <_IO_stdin_used+0x289>
    14be:	48 89 c7             	mov    %rax,%rdi
    14c1:	e8 8a fb ff ff       	call   1050 <puts@plt>
    14c6:	e8 3c 02 00 00       	call   1707 <read_line>
    14cb:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    14cf:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    14d3:	48 89 c7             	mov    %rax,%rdi
    14d6:	e8 f3 07 00 00       	call   1cce <phase_6>
    14db:	48 8d 05 c5 0d 00 00 	lea    0xdc5(%rip),%rax        # 22a7 <_IO_stdin_used+0x2a7>
    14e2:	48 89 c7             	mov    %rax,%rdi
    14e5:	e8 66 fb ff ff       	call   1050 <puts@plt>
    14ea:	48 8d 05 c7 0d 00 00 	lea    0xdc7(%rip),%rax        # 22b8 <_IO_stdin_used+0x2b8>
    14f1:	48 89 c7             	mov    %rax,%rdi
    14f4:	e8 57 fb ff ff       	call   1050 <puts@plt>
    14f9:	b8 00 00 00 00       	mov    $0x0,%eax
    14fe:	c9                   	leave
    14ff:	c3                   	ret

0000000000001500 <invalid_phase>:
    1500:	55                   	push   %rbp
    1501:	48 89 e5             	mov    %rsp,%rbp
    1504:	48 83 ec 10          	sub    $0x10,%rsp
    1508:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    150c:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    1510:	48 89 c6             	mov    %rax,%rsi
    1513:	48 8d 05 cf 0d 00 00 	lea    0xdcf(%rip),%rax        # 22e9 <_IO_stdin_used+0x2e9>
    151a:	48 89 c7             	mov    %rax,%rdi
    151d:	b8 00 00 00 00       	mov    $0x0,%eax
    1522:	e8 59 fb ff ff       	call   1080 <printf@plt>
    1527:	bf 08 00 00 00       	mov    $0x8,%edi
    152c:	e8 8f fb ff ff       	call   10c0 <exit@plt>

0000000000001531 <read_six_numbers>:
    1531:	55                   	push   %rbp
    1532:	48 89 e5             	mov    %rsp,%rbp
    1535:	48 83 ec 20          	sub    $0x20,%rsp
    1539:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    153d:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    1541:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    1545:	48 8d 78 14          	lea    0x14(%rax),%rdi
    1549:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    154d:	48 8d 70 10          	lea    0x10(%rax),%rsi
    1551:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    1555:	4c 8d 48 0c          	lea    0xc(%rax),%r9
    1559:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    155d:	4c 8d 40 08          	lea    0x8(%rax),%r8
    1561:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    1565:	48 8d 48 04          	lea    0x4(%rax),%rcx
    1569:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
    156d:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1571:	57                   	push   %rdi
    1572:	56                   	push   %rsi
    1573:	48 8d 35 80 0d 00 00 	lea    0xd80(%rip),%rsi        # 22fa <_IO_stdin_used+0x2fa>
    157a:	48 89 c7             	mov    %rax,%rdi
    157d:	b8 00 00 00 00       	mov    $0x0,%eax
    1582:	e8 19 fb ff ff       	call   10a0 <__isoc99_sscanf@plt>
    1587:	48 83 c4 10          	add    $0x10,%rsp
    158b:	89 45 fc             	mov    %eax,-0x4(%rbp)
    158e:	83 7d fc 05          	cmpl   $0x5,-0x4(%rbp)
    1592:	7f 05                	jg     1599 <read_six_numbers+0x68>
    1594:	e8 fd 02 00 00       	call   1896 <explode_bomb>
    1599:	90                   	nop
    159a:	c9                   	leave
    159b:	c3                   	ret

000000000000159c <string_length>:
    159c:	55                   	push   %rbp
    159d:	48 89 e5             	mov    %rsp,%rbp
    15a0:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    15a4:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    15a8:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    15ac:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%rbp)
    15b3:	eb 09                	jmp    15be <string_length+0x22>
    15b5:	48 83 45 f8 01       	addq   $0x1,-0x8(%rbp)
    15ba:	83 45 f4 01          	addl   $0x1,-0xc(%rbp)
    15be:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    15c2:	0f b6 00             	movzbl (%rax),%eax
    15c5:	84 c0                	test   %al,%al
    15c7:	75 ec                	jne    15b5 <string_length+0x19>
    15c9:	8b 45 f4             	mov    -0xc(%rbp),%eax
    15cc:	5d                   	pop    %rbp
    15cd:	c3                   	ret

00000000000015ce <strings_not_equal>:
    15ce:	55                   	push   %rbp
    15cf:	48 89 e5             	mov    %rsp,%rbp
    15d2:	53                   	push   %rbx
    15d3:	48 83 ec 20          	sub    $0x20,%rsp
    15d7:	48 89 7d e0          	mov    %rdi,-0x20(%rbp)
    15db:	48 89 75 d8          	mov    %rsi,-0x28(%rbp)
    15df:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    15e3:	48 89 c7             	mov    %rax,%rdi
    15e6:	e8 b1 ff ff ff       	call   159c <string_length>
    15eb:	89 c3                	mov    %eax,%ebx
    15ed:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    15f1:	48 89 c7             	mov    %rax,%rdi
    15f4:	e8 a3 ff ff ff       	call   159c <string_length>
    15f9:	39 c3                	cmp    %eax,%ebx
    15fb:	74 07                	je     1604 <strings_not_equal+0x36>
    15fd:	b8 01 00 00 00       	mov    $0x1,%eax
    1602:	eb 45                	jmp    1649 <strings_not_equal+0x7b>
    1604:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    1608:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
    160c:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    1610:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
    1614:	eb 23                	jmp    1639 <strings_not_equal+0x6b>
    1616:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    161a:	0f b6 10             	movzbl (%rax),%edx
    161d:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    1621:	0f b6 00             	movzbl (%rax),%eax
    1624:	38 c2                	cmp    %al,%dl
    1626:	74 07                	je     162f <strings_not_equal+0x61>
    1628:	b8 01 00 00 00       	mov    $0x1,%eax
    162d:	eb 1a                	jmp    1649 <strings_not_equal+0x7b>
    162f:	48 83 45 e8 01       	addq   $0x1,-0x18(%rbp)
    1634:	48 83 45 f0 01       	addq   $0x1,-0x10(%rbp)
    1639:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    163d:	0f b6 00             	movzbl (%rax),%eax
    1640:	84 c0                	test   %al,%al
    1642:	75 d2                	jne    1616 <strings_not_equal+0x48>
    1644:	b8 00 00 00 00       	mov    $0x0,%eax
    1649:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
    164d:	c9                   	leave
    164e:	c3                   	ret

000000000000164f <blank_line>:
    164f:	55                   	push   %rbp
    1650:	48 89 e5             	mov    %rsp,%rbp
    1653:	48 83 ec 10          	sub    $0x10,%rsp
    1657:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    165b:	eb 37                	jmp    1694 <blank_line+0x45>
    165d:	e8 6e fa ff ff       	call   10d0 <__ctype_b_loc@plt>
    1662:	48 8b 08             	mov    (%rax),%rcx
    1665:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    1669:	48 8d 50 01          	lea    0x1(%rax),%rdx
    166d:	48 89 55 f8          	mov    %rdx,-0x8(%rbp)
    1671:	0f b6 00             	movzbl (%rax),%eax
    1674:	48 0f be c0          	movsbq %al,%rax
    1678:	48 01 c0             	add    %rax,%rax
    167b:	48 01 c8             	add    %rcx,%rax
    167e:	0f b7 00             	movzwl (%rax),%eax
    1681:	0f b7 c0             	movzwl %ax,%eax
    1684:	25 00 20 00 00       	and    $0x2000,%eax
    1689:	85 c0                	test   %eax,%eax
    168b:	75 07                	jne    1694 <blank_line+0x45>
    168d:	b8 00 00 00 00       	mov    $0x0,%eax
    1692:	eb 10                	jmp    16a4 <blank_line+0x55>
    1694:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    1698:	0f b6 00             	movzbl (%rax),%eax
    169b:	84 c0                	test   %al,%al
    169d:	75 be                	jne    165d <blank_line+0xe>
    169f:	b8 01 00 00 00       	mov    $0x1,%eax
    16a4:	c9                   	leave
    16a5:	c3                   	ret

00000000000016a6 <skip>:
    16a6:	55                   	push   %rbp
    16a7:	48 89 e5             	mov    %rsp,%rbp
    16aa:	48 83 ec 10          	sub    $0x10,%rsp
    16ae:	48 8b 0d 3b 2e 00 00 	mov    0x2e3b(%rip),%rcx        # 44f0 <infile>
    16b5:	8b 05 a5 34 00 00    	mov    0x34a5(%rip),%eax        # 4b60 <num_input_strings>
    16bb:	48 63 d0             	movslq %eax,%rdx
    16be:	48 89 d0             	mov    %rdx,%rax
    16c1:	48 c1 e0 02          	shl    $0x2,%rax
    16c5:	48 01 d0             	add    %rdx,%rax
    16c8:	48 c1 e0 04          	shl    $0x4,%rax
    16cc:	48 8d 15 4d 2e 00 00 	lea    0x2e4d(%rip),%rdx        # 4520 <input_strings>
    16d3:	48 01 d0             	add    %rdx,%rax
    16d6:	48 89 ca             	mov    %rcx,%rdx
    16d9:	be 50 00 00 00       	mov    $0x50,%esi
    16de:	48 89 c7             	mov    %rax,%rdi
    16e1:	e8 aa f9 ff ff       	call   1090 <fgets@plt>
    16e6:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    16ea:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
    16ef:	74 10                	je     1701 <skip+0x5b>
    16f1:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    16f5:	48 89 c7             	mov    %rax,%rdi
    16f8:	e8 52 ff ff ff       	call   164f <blank_line>
    16fd:	85 c0                	test   %eax,%eax
    16ff:	75 ad                	jne    16ae <skip+0x8>
    1701:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    1705:	c9                   	leave
    1706:	c3                   	ret

0000000000001707 <read_line>:
    1707:	55                   	push   %rbp
    1708:	48 89 e5             	mov    %rsp,%rbp
    170b:	48 83 ec 10          	sub    $0x10,%rsp
    170f:	b8 00 00 00 00       	mov    $0x0,%eax
    1714:	e8 8d ff ff ff       	call   16a6 <skip>
    1719:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    171d:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
    1722:	0f 85 86 00 00 00    	jne    17ae <read_line+0xa7>
    1728:	48 8b 15 c1 2d 00 00 	mov    0x2dc1(%rip),%rdx        # 44f0 <infile>
    172f:	48 8b 05 aa 2d 00 00 	mov    0x2daa(%rip),%rax        # 44e0 <stdin@GLIBC_2.2.5>
    1736:	48 39 c2             	cmp    %rax,%rdx
    1739:	75 19                	jne    1754 <read_line+0x4d>
    173b:	48 8d 05 ca 0b 00 00 	lea    0xbca(%rip),%rax        # 230c <_IO_stdin_used+0x30c>
    1742:	48 89 c7             	mov    %rax,%rdi
    1745:	e8 06 f9 ff ff       	call   1050 <puts@plt>
    174a:	bf 08 00 00 00       	mov    $0x8,%edi
    174f:	e8 6c f9 ff ff       	call   10c0 <exit@plt>
    1754:	48 8d 05 cf 0b 00 00 	lea    0xbcf(%rip),%rax        # 232a <_IO_stdin_used+0x32a>
    175b:	48 89 c7             	mov    %rax,%rdi
    175e:	e8 cd f8 ff ff       	call   1030 <getenv@plt>
    1763:	48 85 c0             	test   %rax,%rax
    1766:	74 0a                	je     1772 <read_line+0x6b>
    1768:	bf 00 00 00 00       	mov    $0x0,%edi
    176d:	e8 4e f9 ff ff       	call   10c0 <exit@plt>
    1772:	48 8b 05 67 2d 00 00 	mov    0x2d67(%rip),%rax        # 44e0 <stdin@GLIBC_2.2.5>
    1779:	48 89 05 70 2d 00 00 	mov    %rax,0x2d70(%rip)        # 44f0 <infile>
    1780:	b8 00 00 00 00       	mov    $0x0,%eax
    1785:	e8 1c ff ff ff       	call   16a6 <skip>
    178a:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    178e:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
    1793:	75 19                	jne    17ae <read_line+0xa7>
    1795:	48 8d 05 70 0b 00 00 	lea    0xb70(%rip),%rax        # 230c <_IO_stdin_used+0x30c>
    179c:	48 89 c7             	mov    %rax,%rdi
    179f:	e8 ac f8 ff ff       	call   1050 <puts@plt>
    17a4:	bf 00 00 00 00       	mov    $0x0,%edi
    17a9:	e8 12 f9 ff ff       	call   10c0 <exit@plt>
    17ae:	8b 05 ac 33 00 00    	mov    0x33ac(%rip),%eax        # 4b60 <num_input_strings>
    17b4:	48 63 d0             	movslq %eax,%rdx
    17b7:	48 89 d0             	mov    %rdx,%rax
    17ba:	48 c1 e0 02          	shl    $0x2,%rax
    17be:	48 01 d0             	add    %rdx,%rax
    17c1:	48 c1 e0 04          	shl    $0x4,%rax
    17c5:	48 8d 15 54 2d 00 00 	lea    0x2d54(%rip),%rdx        # 4520 <input_strings>
    17cc:	48 01 d0             	add    %rdx,%rax
    17cf:	48 89 c7             	mov    %rax,%rdi
    17d2:	e8 89 f8 ff ff       	call   1060 <strlen@plt>
    17d7:	89 45 f4             	mov    %eax,-0xc(%rbp)
    17da:	83 7d f4 4e          	cmpl   $0x4e,-0xc(%rbp)
    17de:	7e 59                	jle    1839 <read_line+0x132>
    17e0:	48 8d 05 4e 0b 00 00 	lea    0xb4e(%rip),%rax        # 2335 <_IO_stdin_used+0x335>
    17e7:	48 89 c7             	mov    %rax,%rdi
    17ea:	e8 61 f8 ff ff       	call   1050 <puts@plt>
    17ef:	8b 05 6b 33 00 00    	mov    0x336b(%rip),%eax        # 4b60 <num_input_strings>
    17f5:	8d 50 01             	lea    0x1(%rax),%edx
    17f8:	89 15 62 33 00 00    	mov    %edx,0x3362(%rip)        # 4b60 <num_input_strings>
    17fe:	48 63 d0             	movslq %eax,%rdx
    1801:	48 89 d0             	mov    %rdx,%rax
    1804:	48 c1 e0 02          	shl    $0x2,%rax
    1808:	48 01 d0             	add    %rdx,%rax
    180b:	48 c1 e0 04          	shl    $0x4,%rax
    180f:	48 8d 15 0a 2d 00 00 	lea    0x2d0a(%rip),%rdx        # 4520 <input_strings>
    1816:	48 01 d0             	add    %rdx,%rax
    1819:	48 be 2a 2a 2a 74 72 	movabs $0x636e7572742a2a2a,%rsi
    1820:	75 6e 63 
    1823:	48 bf 61 74 65 64 2a 	movabs $0x2a2a2a64657461,%rdi
    182a:	2a 2a 00 
    182d:	48 89 30             	mov    %rsi,(%rax)
    1830:	48 89 78 08          	mov    %rdi,0x8(%rax)
    1834:	e8 5d 00 00 00       	call   1896 <explode_bomb>
    1839:	8b 05 21 33 00 00    	mov    0x3321(%rip),%eax        # 4b60 <num_input_strings>
    183f:	8b 55 f4             	mov    -0xc(%rbp),%edx
    1842:	83 ea 01             	sub    $0x1,%edx
    1845:	48 63 ca             	movslq %edx,%rcx
    1848:	48 63 d0             	movslq %eax,%rdx
    184b:	48 89 d0             	mov    %rdx,%rax
    184e:	48 c1 e0 02          	shl    $0x2,%rax
    1852:	48 01 d0             	add    %rdx,%rax
    1855:	48 c1 e0 04          	shl    $0x4,%rax
    1859:	48 8d 14 08          	lea    (%rax,%rcx,1),%rdx
    185d:	48 8d 05 bc 2c 00 00 	lea    0x2cbc(%rip),%rax        # 4520 <input_strings>
    1864:	48 01 d0             	add    %rdx,%rax
    1867:	c6 00 00             	movb   $0x0,(%rax)
    186a:	8b 05 f0 32 00 00    	mov    0x32f0(%rip),%eax        # 4b60 <num_input_strings>
    1870:	8d 50 01             	lea    0x1(%rax),%edx
    1873:	89 15 e7 32 00 00    	mov    %edx,0x32e7(%rip)        # 4b60 <num_input_strings>
    1879:	48 63 d0             	movslq %eax,%rdx
    187c:	48 89 d0             	mov    %rdx,%rax
    187f:	48 c1 e0 02          	shl    $0x2,%rax
    1883:	48 01 d0             	add    %rdx,%rax
    1886:	48 c1 e0 04          	shl    $0x4,%rax
    188a:	48 8d 15 8f 2c 00 00 	lea    0x2c8f(%rip),%rdx        # 4520 <input_strings>
    1891:	48 01 d0             	add    %rdx,%rax
    1894:	c9                   	leave
    1895:	c3                   	ret

0000000000001896 <explode_bomb>:
    1896:	55                   	push   %rbp
    1897:	48 89 e5             	mov    %rsp,%rbp
    189a:	48 8d 05 af 0a 00 00 	lea    0xaaf(%rip),%rax        # 2350 <_IO_stdin_used+0x350>
    18a1:	48 89 c7             	mov    %rax,%rdi
    18a4:	e8 a7 f7 ff ff       	call   1050 <puts@plt>
    18a9:	bf 08 00 00 00       	mov    $0x8,%edi
    18ae:	e8 0d f8 ff ff       	call   10c0 <exit@plt>

00000000000018b3 <phase_1>:
    18b3:	f3 0f 1e fa          	endbr64
    18b7:	55                   	push   %rbp
    18b8:	48 89 e5             	mov    %rsp,%rbp
    18bb:	48 83 ec 20          	sub    $0x20,%rsp
    18bf:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    18c3:	0f b6 05 37 2c 00 00 	movzbl 0x2c37(%rip),%eax        # 4501 <studentid+0x9>
    18ca:	83 e8 30             	sub    $0x30,%eax
    18cd:	88 45 fb             	mov    %al,-0x5(%rbp)
    18d0:	0f be 45 fb          	movsbl -0x5(%rbp),%eax
    18d4:	89 45 fc             	mov    %eax,-0x4(%rbp)
    18d7:	8b 55 fc             	mov    -0x4(%rbp),%edx
    18da:	48 89 d0             	mov    %rdx,%rax
    18dd:	48 c1 e0 02          	shl    $0x2,%rax
    18e1:	48 01 d0             	add    %rdx,%rax
    18e4:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
    18eb:	00 
    18ec:	48 01 d0             	add    %rdx,%rax
    18ef:	48 01 c0             	add    %rax,%rax
    18f2:	48 8d 15 87 27 00 00 	lea    0x2787(%rip),%rdx        # 4080 <special>
    18f9:	48 01 c2             	add    %rax,%rdx
    18fc:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1900:	48 89 d6             	mov    %rdx,%rsi
    1903:	48 89 c7             	mov    %rax,%rdi
    1906:	e8 c3 fc ff ff       	call   15ce <strings_not_equal>
    190b:	85 c0                	test   %eax,%eax
    190d:	74 05                	je     1914 <phase_1+0x61>
    190f:	e8 82 ff ff ff       	call   1896 <explode_bomb>
    1914:	90                   	nop
    1915:	c9                   	leave
    1916:	c3                   	ret

0000000000001917 <phase_2>:
    1917:	f3 0f 1e fa          	endbr64
    191b:	55                   	push   %rbp
    191c:	48 89 e5             	mov    %rsp,%rbp
    191f:	48 83 ec 40          	sub    $0x40,%rsp
    1923:	48 89 7d c8          	mov    %rdi,-0x38(%rbp)
    1927:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    192e:	00 00 
    1930:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    1934:	31 c0                	xor    %eax,%eax
    1936:	48 8d 55 e0          	lea    -0x20(%rbp),%rdx
    193a:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    193e:	48 89 d6             	mov    %rdx,%rsi
    1941:	48 89 c7             	mov    %rax,%rdi
    1944:	e8 e8 fb ff ff       	call   1531 <read_six_numbers>
    1949:	8b 45 e0             	mov    -0x20(%rbp),%eax
    194c:	85 c0                	test   %eax,%eax
    194e:	79 05                	jns    1955 <phase_2+0x3e>
    1950:	e8 41 ff ff ff       	call   1896 <explode_bomb>
    1955:	8b 45 e0             	mov    -0x20(%rbp),%eax
    1958:	0f b6 15 a2 2b 00 00 	movzbl 0x2ba2(%rip),%edx        # 4501 <studentid+0x9>
    195f:	0f be d2             	movsbl %dl,%edx
    1962:	83 ea 30             	sub    $0x30,%edx
    1965:	39 d0                	cmp    %edx,%eax
    1967:	74 05                	je     196e <phase_2+0x57>
    1969:	e8 28 ff ff ff       	call   1896 <explode_bomb>
    196e:	8b 45 e4             	mov    -0x1c(%rbp),%eax
    1971:	0f b6 15 88 2b 00 00 	movzbl 0x2b88(%rip),%edx        # 4500 <studentid+0x8>
    1978:	0f be d2             	movsbl %dl,%edx
    197b:	83 ea 30             	sub    $0x30,%edx
    197e:	39 d0                	cmp    %edx,%eax
    1980:	74 05                	je     1987 <phase_2+0x70>
    1982:	e8 0f ff ff ff       	call   1896 <explode_bomb>
    1987:	c7 45 dc 02 00 00 00 	movl   $0x2,-0x24(%rbp)
    198e:	eb 30                	jmp    19c0 <phase_2+0xa9>
    1990:	8b 45 dc             	mov    -0x24(%rbp),%eax
    1993:	48 98                	cltq
    1995:	8b 54 85 e0          	mov    -0x20(%rbp,%rax,4),%edx
    1999:	8b 45 dc             	mov    -0x24(%rbp),%eax
    199c:	83 e8 01             	sub    $0x1,%eax
    199f:	48 98                	cltq
    19a1:	8b 4c 85 e0          	mov    -0x20(%rbp,%rax,4),%ecx
    19a5:	8b 45 dc             	mov    -0x24(%rbp),%eax
    19a8:	83 e8 02             	sub    $0x2,%eax
    19ab:	48 98                	cltq
    19ad:	8b 44 85 e0          	mov    -0x20(%rbp,%rax,4),%eax
    19b1:	01 c8                	add    %ecx,%eax
    19b3:	39 c2                	cmp    %eax,%edx
    19b5:	74 05                	je     19bc <phase_2+0xa5>
    19b7:	e8 da fe ff ff       	call   1896 <explode_bomb>
    19bc:	83 45 dc 01          	addl   $0x1,-0x24(%rbp)
    19c0:	83 7d dc 05          	cmpl   $0x5,-0x24(%rbp)
    19c4:	7e ca                	jle    1990 <phase_2+0x79>
    19c6:	90                   	nop
    19c7:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    19cb:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    19d2:	00 00 
    19d4:	74 05                	je     19db <phase_2+0xc4>
    19d6:	e8 95 f6 ff ff       	call   1070 <__stack_chk_fail@plt>
    19db:	c9                   	leave
    19dc:	c3                   	ret

00000000000019dd <phase_3>:
    19dd:	f3 0f 1e fa          	endbr64
    19e1:	55                   	push   %rbp
    19e2:	48 89 e5             	mov    %rsp,%rbp
    19e5:	48 83 ec 30          	sub    $0x30,%rsp
    19e9:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
    19ed:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    19f4:	00 00 
    19f6:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    19fa:	31 c0                	xor    %eax,%eax
    19fc:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%rbp)
    1a03:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%rbp)
    1a0a:	48 8d 4d ec          	lea    -0x14(%rbp),%rcx
    1a0e:	48 8d 55 e8          	lea    -0x18(%rbp),%rdx
    1a12:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    1a16:	48 8d 35 4b 09 00 00 	lea    0x94b(%rip),%rsi        # 2368 <_IO_stdin_used+0x368>
    1a1d:	48 89 c7             	mov    %rax,%rdi
    1a20:	b8 00 00 00 00       	mov    $0x0,%eax
    1a25:	e8 76 f6 ff ff       	call   10a0 <__isoc99_sscanf@plt>
    1a2a:	89 45 f4             	mov    %eax,-0xc(%rbp)
    1a2d:	83 7d f4 01          	cmpl   $0x1,-0xc(%rbp)
    1a31:	7f 05                	jg     1a38 <phase_3+0x5b>
    1a33:	e8 5e fe ff ff       	call   1896 <explode_bomb>
    1a38:	0f b6 05 c0 2a 00 00 	movzbl 0x2ac0(%rip),%eax        # 44ff <studentid+0x7>
    1a3f:	0f be c0             	movsbl %al,%eax
    1a42:	8d 50 d0             	lea    -0x30(%rax),%edx
    1a45:	8b 45 e8             	mov    -0x18(%rbp),%eax
    1a48:	39 c2                	cmp    %eax,%edx
    1a4a:	74 05                	je     1a51 <phase_3+0x74>
    1a4c:	e8 45 fe ff ff       	call   1896 <explode_bomb>
    1a51:	8b 45 e8             	mov    -0x18(%rbp),%eax
    1a54:	83 f8 09             	cmp    $0x9,%eax
    1a57:	77 7d                	ja     1ad6 <phase_3+0xf9>
    1a59:	89 c0                	mov    %eax,%eax
    1a5b:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
    1a62:	00 
    1a63:	48 8d 05 06 09 00 00 	lea    0x906(%rip),%rax        # 2370 <_IO_stdin_used+0x370>
    1a6a:	8b 04 02             	mov    (%rdx,%rax,1),%eax
    1a6d:	48 98                	cltq
    1a6f:	48 8d 15 fa 08 00 00 	lea    0x8fa(%rip),%rdx        # 2370 <_IO_stdin_used+0x370>
    1a76:	48 01 d0             	add    %rdx,%rax
    1a79:	3e ff e0             	notrack jmp *%rax
    1a7c:	c7 45 f0 2f 03 00 00 	movl   $0x32f,-0x10(%rbp)
    1a83:	eb 56                	jmp    1adb <phase_3+0xfe>
    1a85:	c7 45 f0 30 01 00 00 	movl   $0x130,-0x10(%rbp)
    1a8c:	eb 4d                	jmp    1adb <phase_3+0xfe>
    1a8e:	c7 45 f0 84 01 00 00 	movl   $0x184,-0x10(%rbp)
    1a95:	eb 44                	jmp    1adb <phase_3+0xfe>
    1a97:	c7 45 f0 8e 02 00 00 	movl   $0x28e,-0x10(%rbp)
    1a9e:	eb 3b                	jmp    1adb <phase_3+0xfe>
    1aa0:	c7 45 f0 1c 01 00 00 	movl   $0x11c,-0x10(%rbp)
    1aa7:	eb 32                	jmp    1adb <phase_3+0xfe>
    1aa9:	c7 45 f0 01 02 00 00 	movl   $0x201,-0x10(%rbp)
    1ab0:	eb 29                	jmp    1adb <phase_3+0xfe>
    1ab2:	c7 45 f0 a9 01 00 00 	movl   $0x1a9,-0x10(%rbp)
    1ab9:	eb 20                	jmp    1adb <phase_3+0xfe>
    1abb:	c7 45 f0 74 03 00 00 	movl   $0x374,-0x10(%rbp)
    1ac2:	eb 17                	jmp    1adb <phase_3+0xfe>
    1ac4:	c7 45 f0 7b 00 00 00 	movl   $0x7b,-0x10(%rbp)
    1acb:	eb 0e                	jmp    1adb <phase_3+0xfe>
    1acd:	c7 45 f0 41 01 00 00 	movl   $0x141,-0x10(%rbp)
    1ad4:	eb 05                	jmp    1adb <phase_3+0xfe>
    1ad6:	e8 bb fd ff ff       	call   1896 <explode_bomb>
    1adb:	8b 45 ec             	mov    -0x14(%rbp),%eax
    1ade:	39 45 f0             	cmp    %eax,-0x10(%rbp)
    1ae1:	74 05                	je     1ae8 <phase_3+0x10b>
    1ae3:	e8 ae fd ff ff       	call   1896 <explode_bomb>
    1ae8:	90                   	nop
    1ae9:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    1aed:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    1af4:	00 00 
    1af6:	74 05                	je     1afd <phase_3+0x120>
    1af8:	e8 73 f5 ff ff       	call   1070 <__stack_chk_fail@plt>
    1afd:	c9                   	leave
    1afe:	c3                   	ret

0000000000001aff <func4>:   #1.%eax 2.0 3.0xe
    1aff:	f3 0f 1e fa          	endbr64
    1b03:	55                   	push   %rbp
    1b04:	48 89 e5             	mov    %rsp,%rbp
    1b07:	48 83 ec 20          	sub    $0x20,%rsp
    1b0b:	89 7d ec             	mov    %edi,-0x14(%rbp)#%eax
    1b0e:	89 75 e8             	mov    %esi,-0x18(%rbp)
    1b11:	89 55 e4             	mov    %edx,-0x1c(%rbp)
    1b14:	8b 45 e4             	mov    -0x1c(%rbp),%eax #eax=0xe
    1b17:	2b 45 e8             	sub    -0x18(%rbp),%eax #eax=0xe
    1b1a:	89 c2                	mov    %eax,%edx
    1b1c:	c1 ea 1f             	shr    $0x1f,%edx   #edx=0
    1b1f:	01 d0                	add    %edx,%eax    #eax=0xe
    1b21:	d1 f8                	sar    $1,%eax  #eax=0x7
    1b23:	89 c2                	mov    %eax,%edx    #edx=0x7
    1b25:	8b 45 e8             	mov    -0x18(%rbp),%eax 
    1b28:	01 d0                	add    %edx,%eax    #eax=0x7
    1b2a:	89 45 fc             	mov    %eax,-0x4(%rbp)
    1b2d:	8b 45 fc             	mov    -0x4(%rbp),%eax
    1b30:	3b 45 ec             	cmp    -0x14(%rbp),%eax
    1b33:	7e 19                	jle    1b4e <func4+0x4f>    #若第二个小于第一个则跳转
    1b35:	8b 45 fc             	mov    -0x4(%rbp),%eax
    1b38:	8d 50 ff             	lea    -0x1(%rax),%edx  #edx=6
    1b3b:	8b 4d e8             	mov    -0x18(%rbp),%ecx #ecx=0
    1b3e:	8b 45 ec             	mov    -0x14(%rbp),%eax #eax=1
    1b41:	89 ce                	mov    %ecx,%esi    #esi=0
    1b43:	89 c7                	mov    %eax,%edi    #edi=1
    1b45:	e8 b5 ff ff ff       	call   1aff <func4> #递归
    1b4a:	01 c0                	add    %eax,%eax
    1b4c:	eb 29                	jmp    1b77 <func4+0x78>
    1b4e:	8b 45 fc             	mov    -0x4(%rbp),%eax
    1b51:	3b 45 ec             	cmp    -0x14(%rbp),%eax
    1b54:	7d 1c                	jge    1b72 <func4+0x73>    
    1b56:	8b 45 fc             	mov    -0x4(%rbp),%eax
    1b59:	8d 48 01             	lea    0x1(%rax),%ecx
    1b5c:	8b 55 e4             	mov    -0x1c(%rbp),%edx
    1b5f:	8b 45 ec             	mov    -0x14(%rbp),%eax
    1b62:	89 ce                	mov    %ecx,%esi
    1b64:	89 c7                	mov    %eax,%edi
    1b66:	e8 94 ff ff ff       	call   1aff <func4>
    1b6b:	01 c0                	add    %eax,%eax
    1b6d:	83 c0 01             	add    $0x1,%eax
    1b70:	eb 05                	jmp    1b77 <func4+0x78>
    1b72:	b8 00 00 00 00       	mov    $0x0,%eax
    1b77:	c9                   	leave
    1b78:	c3                   	ret

0000000000001b79 <phase_4>:
    1b79:	f3 0f 1e fa          	endbr64
    1b7d:	55                   	push   %rbp
    1b7e:	48 89 e5             	mov    %rsp,%rbp
    1b81:	48 83 ec 30          	sub    $0x30,%rsp
    1b85:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
    1b89:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1b90:	00 00 
    1b92:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    1b96:	31 c0                	xor    %eax,%eax
    1b98:	48 8d 4d e8          	lea    -0x18(%rbp),%rcx
    1b9c:	48 8d 55 e4          	lea    -0x1c(%rbp),%rdx
    1ba0:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    1ba4:	48 8d 35 bd 07 00 00 	lea    0x7bd(%rip),%rsi        # 2368 <_IO_stdin_used+0x368>
    1bab:	48 89 c7             	mov    %rax,%rdi
    1bae:	b8 00 00 00 00       	mov    $0x0,%eax
    1bb3:	e8 e8 f4 ff ff       	call   10a0 <__isoc99_sscanf@plt>
    1bb8:	89 45 ec             	mov    %eax,-0x14(%rbp)
    1bbb:	83 7d ec 02          	cmpl   $0x2,-0x14(%rbp)
    1bbf:	75 0f                	jne    1bd0 <phase_4+0x57>
    1bc1:	8b 45 e4             	mov    -0x1c(%rbp),%eax
    1bc4:	85 c0                	test   %eax,%eax
    1bc6:	78 08                	js     1bd0 <phase_4+0x57>  #负数则跳转
    1bc8:	8b 45 e4             	mov    -0x1c(%rbp),%eax
    1bcb:	83 f8 0e             	cmp    $0xe,%eax
    1bce:	7e 05                	jle    1bd5 <phase_4+0x5c>  #小于或等于0xe
    1bd0:	e8 c1 fc ff ff       	call   1896 <explode_bomb>
    1bd5:	c7 45 f0 07 00 00 00 	movl   $0x7,-0x10(%rbp)
    1bdc:	8b 45 e4             	mov    -0x1c(%rbp),%eax
    1bdf:	ba 0e 00 00 00       	mov    $0xe,%edx
    1be4:	be 00 00 00 00       	mov    $0x0,%esi
    1be9:	89 c7                	mov    %eax,%edi
    1beb:	e8 0f ff ff ff       	call   1aff <func4>     #1.%eax 2.0 3.0xe
    1bf0:	89 45 f4             	mov    %eax,-0xc(%rbp)
    1bf3:	8b 45 f4             	mov    -0xc(%rbp),%eax
    1bf6:	3b 45 f0             	cmp    -0x10(%rbp),%eax
    1bf9:	75 08                	jne    1c03 <phase_4+0x8a>
    1bfb:	8b 45 e8             	mov    -0x18(%rbp),%eax
    1bfe:	39 45 f0             	cmp    %eax,-0x10(%rbp)
    1c01:	74 05                	je     1c08 <phase_4+0x8f>
    1c03:	e8 8e fc ff ff       	call   1896 <explode_bomb>
    1c08:	90                   	nop
    1c09:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    1c0d:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    1c14:	00 00 
    1c16:	74 05                	je     1c1d <phase_4+0xa4>
    1c18:	e8 53 f4 ff ff       	call   1070 <__stack_chk_fail@plt>
    1c1d:	c9                   	leave
    1c1e:	c3                   	ret

0000000000001c1f <phase_5>:
    1c1f:	f3 0f 1e fa          	endbr64
    1c23:	55                   	push   %rbp
    1c24:	48 89 e5             	mov    %rsp,%rbp
    1c27:	48 83 ec 30          	sub    $0x30,%rsp
    1c2b:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
    1c2f:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1c36:	00 00 
    1c38:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    1c3c:	31 c0                	xor    %eax,%eax
    1c3e:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    1c42:	48 89 c7             	mov    %rax,%rdi
    1c45:	e8 52 f9 ff ff       	call   159c <string_length>
    1c4a:	89 45 ec             	mov    %eax,-0x14(%rbp)
    1c4d:	83 7d ec 06          	cmpl   $0x6,-0x14(%rbp)
    1c51:	74 05                	je     1c58 <phase_5+0x39>
    1c53:	e8 3e fc ff ff       	call   1896 <explode_bomb>
    1c58:	c7 45 e8 00 00 00 00 	movl   $0x0,-0x18(%rbp) #计数器
    1c5f:	eb 30                	jmp    1c91 <phase_5+0x72>
    1c61:	8b 45 e8             	mov    -0x18(%rbp),%eax
    1c64:	48 63 d0             	movslq %eax,%rdx    #将一个长整型符号扩展到一个四字长整型存在rdx中
    1c67:	48 8b 45 d8          	mov    -0x28(%rbp),%rax #往字符串取一个字符
    1c6b:	48 01 d0             	add    %rdx,%rax    #将索引加到字符
    1c6e:	0f b6 00             	movzbl (%rax),%eax
    1c71:	0f be c0             	movsbl %al,%eax
    1c74:	83 e0 0f             	and    $0xf,%eax    #取低4位存到eax中
    1c77:	48 98                	cltq
    1c79:	48 8d 15 10 27 00 00 	lea    0x2710(%rip),%rdx        # 4390 <array.3096>
    1c80:	0f b6 14 10          	movzbl (%rax,%rdx,1),%edx
    1c84:	8b 45 e8             	mov    -0x18(%rbp),%eax
    1c87:	48 98                	cltq
    1c89:	88 54 05 f1          	mov    %dl,-0xf(%rbp,%rax,1)
    1c8d:	83 45 e8 01          	addl   $0x1,-0x18(%rbp) #计数器自增
    1c91:	83 7d e8 05          	cmpl   $0x5,-0x18(%rbp)
    1c95:	7e ca                	jle    1c61 <phase_5+0x42>
    1c97:	c6 45 f7 00          	movb   $0x0,-0x9(%rbp)
    1c9b:	48 8d 45 f1          	lea    -0xf(%rbp),%rax
    1c9f:	48 8d 35 f2 06 00 00 	lea    0x6f2(%rip),%rsi        # 2398 <_IO_stdin_used+0x398>
    1ca6:	48 89 c7             	mov    %rax,%rdi
    1ca9:	e8 20 f9 ff ff       	call   15ce <strings_not_equal>
    1cae:	85 c0                	test   %eax,%eax
    1cb0:	74 05                	je     1cb7 <phase_5+0x98>
    1cb2:	e8 df fb ff ff       	call   1896 <explode_bomb>
    1cb7:	90                   	nop
    1cb8:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    1cbc:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    1cc3:	00 00 
    1cc5:	74 05                	je     1ccc <phase_5+0xad>
    1cc7:	e8 a4 f3 ff ff       	call   1070 <__stack_chk_fail@plt>
    1ccc:	c9                   	leave
    1ccd:	c3                   	ret

0000000000001cce <phase_6>:
    1cce:	f3 0f 1e fa          	endbr64
    1cd2:	55                   	push   %rbp
    1cd3:	48 89 e5             	mov    %rsp,%rbp
    1cd6:	48 81 ec 90 00 00 00 	sub    $0x90,%rsp
    1cdd:	48 89 bd 78 ff ff ff 	mov    %rdi,-0x88(%rbp)
    1ce4:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1ceb:	00 00 
    1ced:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    1cf1:	31 c0                	xor    %eax,%eax
    1cf3:	48 8d 05 e6 26 00 00 	lea    0x26e6(%rip),%rax        # 43e0 <node1>
    1cfa:	48 89 45 98          	mov    %rax,-0x68(%rbp)
    1cfe:	48 8d 55 a0          	lea    -0x60(%rbp),%rdx
    1d02:	48 8b 85 78 ff ff ff 	mov    -0x88(%rbp),%rax
    1d09:	48 89 d6             	mov    %rdx,%rsi
    1d0c:	48 89 c7             	mov    %rax,%rdi
    1d0f:	e8 1d f8 ff ff       	call   1531 <read_six_numbers>
    1d14:	c7 45 88 00 00 00 00 	movl   $0x0,-0x78(%rbp) #-0x78(%rbp)储存的是计数器
    1d1b:	eb 54                	jmp    1d71 <phase_6+0xa3>
    1d1d:	8b 45 88             	mov    -0x78(%rbp),%eax
    1d20:	48 98                	cltq
    1d22:	8b 44 85 a0          	mov    -0x60(%rbp,%rax,4),%eax  #rbp-0x60储存的是输入的第一个数
    1d26:	85 c0                	test   %eax,%eax    #必须为正整数
    1d28:	7e 0e                	jle    1d38 <phase_6+0x6a>
    1d2a:	8b 45 88             	mov    -0x78(%rbp),%eax
    1d2d:	48 98                	cltq
    1d2f:	8b 44 85 a0          	mov    -0x60(%rbp,%rax,4),%eax
    1d33:	83 f8 06             	cmp    $0x6,%eax    #必须小于等于6
    1d36:	7e 05                	jle    1d3d <phase_6+0x6f>
    1d38:	e8 59 fb ff ff       	call   1896 <explode_bomb>
    1d3d:	8b 45 88             	mov    -0x78(%rbp),%eax     #eax取出计数器的值
    1d40:	83 c0 01             	add    $0x1,%eax    #eax自增
    1d43:	89 45 8c             	mov    %eax,-0x74(%rbp)
    1d46:	eb 1f                	jmp    1d67 <phase_6+0x99>
    1d48:	8b 45 88             	mov    -0x78(%rbp),%eax #eax取出外层计数器的值
    1d4b:	48 98                	cltq
    1d4d:	8b 54 85 a0          	mov    -0x60(%rbp,%rax,4),%edx  #edx取出数字
    1d51:	8b 45 8c             	mov    -0x74(%rbp),%eax #eax取出内层计数器的值
    1d54:	48 98                	cltq
    1d56:	8b 44 85 a0          	mov    -0x60(%rbp,%rax,4),%eax  #取出数字
    1d5a:	39 c2                	cmp    %eax,%edx    #比较eax和edx
    1d5c:	75 05                	jne    1d63 <phase_6+0x95>  #输入的数字互不相同
    1d5e:	e8 33 fb ff ff       	call   1896 <explode_bomb>
    1d63:	83 45 8c 01          	addl   $0x1,-0x74(%rbp) #-0x74(%rbp)自增
    1d67:	83 7d 8c 05          	cmpl   $0x5,-0x74(%rbp) #比较计数器加1与5的大小关系，若小于等于5则跳转
    1d6b:	7e db                	jle    1d48 <phase_6+0x7a>
    1d6d:	83 45 88 01          	addl   $0x1,-0x78(%rbp) 
    1d71:	83 7d 88 05          	cmpl   $0x5,-0x78(%rbp)
    1d75:	7e a6                	jle    1d1d <phase_6+0x4f>
    1d77:	c7 45 88 00 00 00 00 	movl   $0x0,-0x78(%rbp) #计数器清零
    1d7e:	eb 41                	jmp    1dc1 <phase_6+0xf3>  #跳转
    1d80:	48 8b 45 98          	mov    -0x68(%rbp),%rax
    1d84:	48 89 45 90          	mov    %rax,-0x70(%rbp) #将-0x68(%rbp)储存在-0x70(%rbp)中
    1d88:	c7 45 8c 01 00 00 00 	movl   $0x1,-0x74(%rbp) #初始化为1
    1d8f:	eb 10                	jmp    1da1 <phase_6+0xd3>
    1d91:	48 8b 45 90          	mov    -0x70(%rbp),%rax 
    1d95:	48 8b 40 08          	mov    0x8(%rax),%rax
    1d99:	48 89 45 90          	mov    %rax,-0x70(%rbp)
    1d9d:	83 45 8c 01          	addl   $0x1,-0x74(%rbp)
    1da1:	8b 45 88             	mov    -0x78(%rbp),%eax #取出计数器
    1da4:	48 98                	cltq
    1da6:	8b 44 85 a0          	mov    -0x60(%rbp,%rax,4),%eax  #取出数字
    1daa:	39 45 8c             	cmp    %eax,-0x74(%rbp) #比-0x74(%rbp)大则跳转
    1dad:	7c e2                	jl     1d91 <phase_6+0xc3>
    1daf:	8b 45 88             	mov    -0x78(%rbp),%eax #取出计数器
    1db2:	48 98                	cltq
    1db4:	48 8b 55 90          	mov    -0x70(%rbp),%rdx
    1db8:	48 89 54 c5 c0       	mov    %rdx,-0x40(%rbp,%rax,8)
    1dbd:	83 45 88 01          	addl   $0x1,-0x78(%rbp) #计数器自增
    1dc1:	83 7d 88 05          	cmpl   $0x5,-0x78(%rbp) #计数器小于等于5则跳转
    1dc5:	7e b9                	jle    1d80 <phase_6+0xb2>
    1dc7:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
    1dcb:	48 89 45 98          	mov    %rax,-0x68(%rbp)
    1dcf:	48 8b 45 98          	mov    -0x68(%rbp),%rax
    1dd3:	48 89 45 90          	mov    %rax,-0x70(%rbp)
    1dd7:	c7 45 88 01 00 00 00 	movl   $0x1,-0x78(%rbp) #计数器置1
    1dde:	eb 22                	jmp    1e02 <phase_6+0x134>
    1de0:	8b 45 88             	mov    -0x78(%rbp),%eax
    1de3:	48 98                	cltq
    1de5:	48 8b 54 c5 c0       	mov    -0x40(%rbp,%rax,8),%rdx  #取出指针数组元素
    1dea:	48 8b 45 90          	mov    -0x70(%rbp),%rax
    1dee:	48 89 50 08          	mov    %rdx,0x8(%rax)   
    1df2:	48 8b 45 90          	mov    -0x70(%rbp),%rax 
    1df6:	48 8b 40 08          	mov    0x8(%rax),%rax   
    1dfa:	48 89 45 90          	mov    %rax,-0x70(%rbp)#指针数组元素存放在-0x70(%rbp)
    1dfe:	83 45 88 01          	addl   $0x1,-0x78(%rbp)
    1e02:	83 7d 88 05          	cmpl   $0x5,-0x78(%rbp)#大于5则退出循环
    1e06:	7e d8                	jle    1de0 <phase_6+0x112>
    1e08:	48 8b 45 90          	mov    -0x70(%rbp),%rax
    1e0c:	48 c7 40 08 00 00 00 	movq   $0x0,0x8(%rax)
    1e13:	00 
    1e14:	48 8b 45 98          	mov    -0x68(%rbp),%rax
    1e18:	48 89 45 90          	mov    %rax,-0x70(%rbp)
    1e1c:	c7 45 88 00 00 00 00 	movl   $0x0,-0x78(%rbp)
    1e23:	eb 29                	jmp    1e4e <phase_6+0x180>
    1e25:	48 8b 45 90          	mov    -0x70(%rbp),%rax
    1e29:	8b 10                	mov    (%rax),%edx
    1e2b:	48 8b 45 90          	mov    -0x70(%rbp),%rax
    1e2f:	48 8b 40 08          	mov    0x8(%rax),%rax
    1e33:	8b 00                	mov    (%rax),%eax
    1e35:	39 c2                	cmp    %eax,%edx
    1e37:	7d 05                	jge    1e3e <phase_6+0x170>
    1e39:	e8 58 fa ff ff       	call   1896 <explode_bomb>
    1e3e:	48 8b 45 90          	mov    -0x70(%rbp),%rax
    1e42:	48 8b 40 08          	mov    0x8(%rax),%rax
    1e46:	48 89 45 90          	mov    %rax,-0x70(%rbp)
    1e4a:	83 45 88 01          	addl   $0x1,-0x78(%rbp)
    1e4e:	83 7d 88 04          	cmpl   $0x4,-0x78(%rbp)
    1e52:	7e d1                	jle    1e25 <phase_6+0x157>
    1e54:	90                   	nop
    1e55:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    1e59:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    1e60:	00 00 
    1e62:	74 05                	je     1e69 <phase_6+0x19b>
    1e64:	e8 07 f2 ff ff       	call   1070 <__stack_chk_fail@plt>
    1e69:	c9                   	leave
    1e6a:	c3                   	ret

0000000000001e6b <fun7>:
    1e6b:	f3 0f 1e fa          	endbr64
    1e6f:	55                   	push   %rbp
    1e70:	48 89 e5             	mov    %rsp,%rbp
    1e73:	48 83 ec 10          	sub    $0x10,%rsp
    1e77:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    1e7b:	89 75 f4             	mov    %esi,-0xc(%rbp)
    1e7e:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
    1e83:	75 07                	jne    1e8c <fun7+0x21>
    1e85:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    1e8a:	eb 50                	jmp    1edc <fun7+0x71>
    1e8c:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    1e90:	8b 00                	mov    (%rax),%eax
    1e92:	39 45 f4             	cmp    %eax,-0xc(%rbp)
    1e95:	7d 19                	jge    1eb0 <fun7+0x45>
    1e97:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    1e9b:	48 8b 40 08          	mov    0x8(%rax),%rax
    1e9f:	8b 55 f4             	mov    -0xc(%rbp),%edx
    1ea2:	89 d6                	mov    %edx,%esi
    1ea4:	48 89 c7             	mov    %rax,%rdi
    1ea7:	e8 bf ff ff ff       	call   1e6b <fun7>
    1eac:	01 c0                	add    %eax,%eax
    1eae:	eb 2c                	jmp    1edc <fun7+0x71>
    1eb0:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    1eb4:	8b 00                	mov    (%rax),%eax
    1eb6:	39 45 f4             	cmp    %eax,-0xc(%rbp)
    1eb9:	75 07                	jne    1ec2 <fun7+0x57>
    1ebb:	b8 00 00 00 00       	mov    $0x0,%eax
    1ec0:	eb 1a                	jmp    1edc <fun7+0x71>
    1ec2:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    1ec6:	48 8b 40 10          	mov    0x10(%rax),%rax
    1eca:	8b 55 f4             	mov    -0xc(%rbp),%edx
    1ecd:	89 d6                	mov    %edx,%esi
    1ecf:	48 89 c7             	mov    %rax,%rdi
    1ed2:	e8 94 ff ff ff       	call   1e6b <fun7>
    1ed7:	01 c0                	add    %eax,%eax
    1ed9:	83 c0 01             	add    $0x1,%eax
    1edc:	c9                   	leave
    1edd:	c3                   	ret

Disassembly of section .fini:

0000000000001ee0 <_fini>:
    1ee0:	f3 0f 1e fa          	endbr64
    1ee4:	48 83 ec 08          	sub    $0x8,%rsp
    1ee8:	48 83 c4 08          	add    $0x8,%rsp
    1eec:	c3                   	ret
