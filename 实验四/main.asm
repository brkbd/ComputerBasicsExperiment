
main.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <gencookie>:
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 83 ec 20          	sub    $0x20,%rsp
   8:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
   c:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  10:	48 89 c7             	mov    %rax,%rdi
  13:	e8 00 00 00 00       	call   18 <gencookie+0x18>
  18:	48 83 f8 0a          	cmp    $0xa,%rax
  1c:	74 19                	je     37 <gencookie+0x37>
  1e:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 25 <gencookie+0x25>
  25:	48 89 c7             	mov    %rax,%rdi
  28:	e8 00 00 00 00       	call   2d <gencookie+0x2d>
  2d:	b8 00 00 00 00       	mov    $0x0,%eax
  32:	e9 90 00 00 00       	jmp    c7 <gencookie+0xc7>
  37:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  3b:	0f b6 00             	movzbl (%rax),%eax
  3e:	3c 55                	cmp    $0x55,%al
  40:	74 21                	je     63 <gencookie+0x63>
  42:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  46:	0f b6 00             	movzbl (%rax),%eax
  49:	3c 75                	cmp    $0x75,%al
  4b:	74 16                	je     63 <gencookie+0x63>
  4d:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 54 <gencookie+0x54>
  54:	48 89 c7             	mov    %rax,%rdi
  57:	e8 00 00 00 00       	call   5c <gencookie+0x5c>
  5c:	b8 00 00 00 00       	mov    $0x0,%eax
  61:	eb 64                	jmp    c7 <gencookie+0xc7>
  63:	c7 45 fc 01 00 00 00 	movl   $0x1,-0x4(%rbp)
  6a:	eb 42                	jmp    ae <gencookie+0xae>
  6c:	8b 45 fc             	mov    -0x4(%rbp),%eax
  6f:	48 63 d0             	movslq %eax,%rdx
  72:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  76:	48 01 d0             	add    %rdx,%rax
  79:	0f b6 00             	movzbl (%rax),%eax
  7c:	3c 2f                	cmp    $0x2f,%al
  7e:	7e 14                	jle    94 <gencookie+0x94>
  80:	8b 45 fc             	mov    -0x4(%rbp),%eax
  83:	48 63 d0             	movslq %eax,%rdx
  86:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  8a:	48 01 d0             	add    %rdx,%rax
  8d:	0f b6 00             	movzbl (%rax),%eax
  90:	3c 39                	cmp    $0x39,%al
  92:	7e 16                	jle    aa <gencookie+0xaa>
  94:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 9b <gencookie+0x9b>
  9b:	48 89 c7             	mov    %rax,%rdi
  9e:	e8 00 00 00 00       	call   a3 <gencookie+0xa3>
  a3:	b8 00 00 00 00       	mov    $0x0,%eax
  a8:	eb 1d                	jmp    c7 <gencookie+0xc7>
  aa:	83 45 fc 01          	addl   $0x1,-0x4(%rbp)
  ae:	83 7d fc 09          	cmpl   $0x9,-0x4(%rbp)
  b2:	7e b8                	jle    6c <gencookie+0x6c>
  b4:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  b8:	48 83 c0 09          	add    $0x9,%rax
  bc:	48 89 c7             	mov    %rax,%rdi
  bf:	e8 00 00 00 00       	call   c4 <gencookie+0xc4>
  c4:	83 c0 05             	add    $0x5,%eax
  c7:	c9                   	leave
  c8:	c3                   	ret

00000000000000c9 <main>:
  c9:	55                   	push   %rbp
  ca:	48 89 e5             	mov    %rsp,%rbp
  cd:	48 83 ec 30          	sub    $0x30,%rsp
  d1:	89 7d dc             	mov    %edi,-0x24(%rbp)
  d4:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
  d8:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  df:	00 00 
  e1:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  e5:	31 c0                	xor    %eax,%eax
  e7:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # ee <main+0x25>
  ee:	48 89 c7             	mov    %rax,%rdi
  f1:	b8 00 00 00 00       	mov    $0x0,%eax
  f6:	e8 00 00 00 00       	call   fb <main+0x32>
  fb:	48 8d 45 ec          	lea    -0x14(%rbp),%rax
  ff:	48 89 c6             	mov    %rax,%rsi
 102:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 109 <main+0x40>
 109:	48 89 c7             	mov    %rax,%rdi
 10c:	b8 00 00 00 00       	mov    $0x0,%eax
 111:	e8 00 00 00 00       	call   116 <main+0x4d>
 116:	48 8d 45 ec          	lea    -0x14(%rbp),%rax
 11a:	48 89 c7             	mov    %rax,%rdi
 11d:	e8 00 00 00 00       	call   122 <main+0x59>
 122:	89 45 e8             	mov    %eax,-0x18(%rbp)
 125:	48 8b 05 00 00 00 00 	mov    0x0(%rip),%rax        # 12c <main+0x63>
 12c:	48 85 c0             	test   %rax,%rax
 12f:	74 10                	je     141 <main+0x78>
 131:	48 8b 15 00 00 00 00 	mov    0x0(%rip),%rdx        # 138 <main+0x6f>
 138:	8b 45 e8             	mov    -0x18(%rbp),%eax
 13b:	89 c7                	mov    %eax,%edi
 13d:	ff d2                	call   *%rdx
 13f:	eb 3c                	jmp    17d <main+0xb4>
 141:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 148 <main+0x7f>
 148:	48 89 c7             	mov    %rax,%rdi
 14b:	e8 00 00 00 00       	call   150 <main+0x87>
 150:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 157 <main+0x8e>
 157:	48 89 c7             	mov    %rax,%rdi
 15a:	e8 00 00 00 00       	call   15f <main+0x96>
 15f:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 166 <main+0x9d>
 166:	48 89 c7             	mov    %rax,%rdi
 169:	e8 00 00 00 00       	call   16e <main+0xa5>
 16e:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 175 <main+0xac>
 175:	48 89 c7             	mov    %rax,%rdi
 178:	e8 00 00 00 00       	call   17d <main+0xb4>
 17d:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 184 <main+0xbb>
 184:	48 89 c7             	mov    %rax,%rdi
 187:	e8 00 00 00 00       	call   18c <main+0xc3>
 18c:	b8 00 00 00 00       	mov    $0x0,%eax
 191:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
 195:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
 19c:	00 00 
 19e:	74 05                	je     1a5 <main+0xdc>
 1a0:	e8 00 00 00 00       	call   1a5 <main+0xdc>
 1a5:	c9                   	leave
 1a6:	c3                   	ret
