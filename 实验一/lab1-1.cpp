#define _CRT_SECURE_NO_WARNINGS
#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <stddef.h>
#define N 5//5
#define N1 2//2
#define N2 3//3
struct student {
    char  name[8];
    short  age;
    float  score;
    char  remark[200];  // ±¸×¢ĞÅÏ¢
};
int  pack_student_bytebybyte(struct student* s, int sno, char* buf);
int  pack_student_whole(struct student* s, int sno, char* buf);
int restore_student(char* buf, int len, struct student* s);
struct student old_s[N], new_s[N];
char* message;
int main() {
    int len_original = sizeof(old_s);
    printf("Input the message of students:\n");
    for (int i = 0; i < N; i++) {
        printf("Name: ");
        scanf("%s", old_s[i].name);
        printf("Age: ");
        scanf("%d", &old_s[i].age);
        printf("Score: ");
        scanf("%f", &old_s[i].score);
        printf("Remark: ");
        scanf("%s", old_s[i].remark);
        printf("------------------------------------------------\n");
    }
    printf("Students in old_s:\n");
    for (int i = 0; i < N; i++)
    {
        printf("Name: %s\n", old_s[i].name);
        printf("Age: %d\n", old_s[i].age);
        printf("Score: %f\n", old_s[i].score);
        printf("Remark: %s\n", old_s[i].remark);
    }
    printf("Before compressed : %d\n", len_original);
    message = (char*)malloc(len_original);
    int len1 = pack_student_bytebybyte(old_s, N1, message);
    int len2 = pack_student_whole(&old_s[N1], N2, message + len1);
    int len_after = len1 + len2;
    printf("After compressed: %d\n", len_after);
    int num = restore_student(message, len_after, new_s);
    for (int i = 0; i < 20; i++) {
        printf("%02x ", message[i]&0xFF);
    }
    printf("\n------------------------------------------------\n");
    printf("Number of restored students : %d\n", num);
    printf("Students in new_s\n");
    for (int i = 0; i < num; i++)
    {
        printf("------------------------------------------------\n");
        printf("Name: %s\n", new_s[i].name);
        printf("Age: %d\n", new_s[i].age);
        printf("Score: %f\n", new_s[i].score);
        printf("Remark: %s\n", new_s[i].remark);
    }
    return 0;
}
int  pack_student_bytebybyte(struct student* s, int sno, char* buf) {
    int count = 0, index;
    for (int i = 0; i < sno; i++)
    {
        index = 0;
        struct student e = *s;
        char* arr = (char*)&e;
        for (int i = 0; i < 8; i++)
        {
            if (arr[index] == '\0') {
                index++;
                continue;
            }
            *buf = arr[index];
            buf++, index++;
            count++;
        }
        *buf = '\0';
        buf++;
        count++;
        index = offsetof(struct student, age);
        for (int i = 0; i < 2; i++)
        {
            *buf = arr[index];
            buf++, index++;
        }
        index = offsetof(struct student, score);
        for (int i = 0; i < 4; i++)
        {
            *buf = arr[index];
            buf++, index++;
        }
        count += 6;
        index = offsetof(struct student, remark);
        for (int i = 0; i < 200; i++)
        {
            if (arr[index] == '\0') {
                break;
            }
            *buf = arr[index];
            buf++, index++;
            count++;
        }
        *buf = '\0';
        count++, buf++;
        s++;
    }
    return count;
}

int pack_student_whole(struct student* s, int sno, char* buf)
{
    int count = 0, index;
    for (int i = 0; i < sno; i++)
    {
        index = 0;
        struct student e = *s;
        char* arr = (char*)&e;
        strcpy(buf, arr);
        buf += (strlen(arr) + 1);
        count += (strlen(arr) + 1);
        index = offsetof(struct student, age);
        *(short*)buf = *(short*)&arr[index];
        buf += 2;
        index = offsetof(struct student, score);
        *(float*)buf = *(float*)&arr[index];
        buf += 4;
        count += 6;
        index = offsetof(struct student, remark);
        strcpy(buf, &arr[index]);
        buf += (strlen(&arr[index]) + 1);
        count += (strlen(&arr[index]) + 1);
        s++;
    }
    return count;
}

int restore_student(char* buf, int len, struct student* s)
{
    int num = 0, count = 0;
    while (count < len)
    {
        num++;
        char name[8];
        strcpy(name, buf);
        buf += (strlen(name) + 1);
        count += (strlen(name) + 1);
        short age = *(short*)buf;
        buf += 2;
        float score = *(float*)buf;
        buf += 4;
        count += 6;
        char remark[200];
        strcpy(remark, buf);
        buf += (strlen(remark) + 1);
        count += (strlen(remark) + 1);
        s->age = age;
        strcpy(s->name, name);
        s->score = score;
        strcpy(s->remark, remark);
        s++;
    }
    return num;
}