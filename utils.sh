#获取文件大小
		1. a=`du -s | awk '{print $1}'`
		2. ls -l filename | awk '{ print $5 }'
		3. size=$(wc -c <"$file")
		4. SIZE=$(du -sb $FILENAME | awk '{ print $1 }')
		5. ls -l $file | awk '{print $6}'
		6. var1=$(stat -c%s file1)

#计算算数运算
		(( ))结构扩展并计算一个算术表达式的值。如果表达式值为0，会返回1或假作为退出状态码。一个非零值的表达式返回一个0或真作为退出状态码。这个结构和先前test命令及[]结构的讨论刚好相反。


#replace byte in a binary
		#!/bin/bash
		
		# param 1: file
		# param 2: offset
		# param 3: value
		function replaceByte() {
		    printf "$(printf '\\x%02X' $3)" | dd of="$1" bs=1 seek=$2 count=1 conv=notrunc &> /dev/null
		}
		
		# Usage:
		# replaceByte 'thefile' $offset 95
