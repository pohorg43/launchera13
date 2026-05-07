.class public Lcom/android/common/sort/ZhuyinUtils;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/common/sort/ZhuyinUtils$OplusLanguage;,
        Lcom/android/common/sort/ZhuyinUtils$OplusISO3;
    }
.end annotation


# static fields
.field private static final PINYIN_TO_ZHUYING_HASHTABLE:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final PINYIN_TO_ZHUYING_TABLE:[[Ljava/lang/String;

.field private static final sLocal:Ljava/lang/String; = "zh"


# direct methods
.method public static constructor <clinit>()V
    .registers 6

    const/16 v0, 0x1b1

    new-array v0, v0, [[Ljava/lang/String;

    const-string v1, "a"

    const-string/jumbo v2, "ㄚ"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "ai"

    const-string/jumbo v2, "ㄞ"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "an"

    const-string/jumbo v2, "ㄢ"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "ang"

    const-string/jumbo v2, "ㄤ"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "ao"

    const-string/jumbo v2, "ㄠ"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x4

    aput-object v1, v0, v3

    const-string v1, "au"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string v1, "ba"

    const-string/jumbo v2, "ㄅㄚ"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string v1, "bai"

    const-string/jumbo v2, "ㄅㄞ"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string v1, "ban"

    const-string/jumbo v2, "ㄅㄢ"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string v1, "bang"

    const-string/jumbo v2, "ㄅㄤ"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string v1, "bao"

    const-string/jumbo v2, "ㄅㄠ"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-string v1, "bei"

    const-string/jumbo v2, "ㄅㄟ"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const-string v1, "ben"

    const-string/jumbo v2, "ㄅㄣ"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xc

    aput-object v1, v0, v2

    const-string v1, "beng"

    const-string/jumbo v2, "ㄅㄥ"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xd

    aput-object v1, v0, v2

    const-string v1, "bi"

    const-string/jumbo v2, "ㄅㄧ"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xe

    aput-object v1, v0, v2

    const-string v1, "bian"

    const-string/jumbo v2, "ㄅㄧㄢ"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xf

    aput-object v1, v0, v2

    const-string v1, "biao"

    const-string/jumbo v2, "ㄅㄧㄠ"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x10

    aput-object v1, v0, v2

    const-string v1, "bie"

    const-string/jumbo v2, "ㄅㄧㄝ"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x11

    aput-object v1, v0, v2

    const-string v1, "bin"

    const-string/jumbo v2, "ㄅㄧㄣ"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x12

    aput-object v1, v0, v2

    const-string v1, "bing"

    const-string/jumbo v2, "ㄅㄧㄥ"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x13

    aput-object v1, v0, v2

    const-string v1, "bo"

    const-string/jumbo v2, "ㄅㄛ"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x14

    aput-object v1, v0, v2

    const-string v1, "bu"

    const-string/jumbo v2, "ㄅㄨ"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x15

    aput-object v1, v0, v2

    const-string v1, "bun"

    const-string/jumbo v2, "ㄅㄨㄣ"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x16

    aput-object v1, v0, v2

    const-string v1, "ca"

    const-string/jumbo v2, "ㄘㄚ"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x17

    aput-object v1, v0, v2

    const-string v1, "cai"

    const-string/jumbo v2, "ㄘㄞ"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x18

    aput-object v1, v0, v2

    const-string v1, "can"

    const-string/jumbo v2, "ㄘㄢ"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x19

    aput-object v1, v0, v2

    const-string v1, "cang"

    const-string/jumbo v2, "ㄘㄤ"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    const-string v1, "cao"

    const-string/jumbo v2, "ㄘㄠ"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    const-string v1, "ce"

    const-string/jumbo v2, "ㄘㄜ"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    const-string v1, "cen"

    const-string/jumbo v2, "ㄘㄣ"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    const-string v1, "ceng"

    const-string/jumbo v2, "ㄘㄥ"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    const-string v1, "cha"

    const-string/jumbo v2, "ㄔㄚ"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    const-string v1, "chai"

    const-string/jumbo v2, "ㄔㄞ"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x20

    aput-object v1, v0, v2

    const-string v1, "chan"

    const-string/jumbo v2, "ㄔㄢ"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x21

    aput-object v1, v0, v2

    const-string v1, "chang"

    const-string/jumbo v2, "ㄔㄤ"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x22

    aput-object v1, v0, v2

    const-string v1, "chao"

    const-string/jumbo v2, "ㄔㄠ"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x23

    aput-object v1, v0, v2

    const-string v1, "che"

    const-string/jumbo v2, "ㄔㄜ"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x24

    aput-object v1, v0, v2

    const-string v1, "chen"

    const-string/jumbo v2, "ㄔㄣ"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x25

    aput-object v1, v0, v2

    const-string v1, "cheng"

    const-string/jumbo v2, "ㄔㄥ"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x26

    aput-object v1, v0, v2

    const-string v1, "chi"

    const-string/jumbo v2, "ㄔ"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x27

    aput-object v1, v0, v2

    const-string v1, "chong"

    const-string/jumbo v2, "ㄔㄨㄥ"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x28

    aput-object v1, v0, v2

    const-string v1, "chou"

    const-string/jumbo v2, "ㄔㄡ"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x29

    aput-object v1, v0, v2

    const-string v1, "chu"

    const-string/jumbo v2, "ㄔㄨ"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2a

    aput-object v1, v0, v2

    const-string v1, "chua"

    const-string/jumbo v2, "ㄔㄨㄚ"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2b

    aput-object v1, v0, v2

    const-string v1, "chuai"

    const-string/jumbo v2, "ㄔㄨㄞ"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2c

    aput-object v1, v0, v2

    const-string v1, "chuan"

    const-string/jumbo v2, "ㄔㄨㄢ"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2d

    aput-object v1, v0, v2

    const-string v1, "chuang"

    const-string/jumbo v2, "ㄔㄨㄤ"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2e

    aput-object v1, v0, v2

    const-string v1, "chui"

    const-string/jumbo v2, "ㄔㄨㄟ"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2f

    aput-object v1, v0, v2

    const-string v1, "chun"

    const-string/jumbo v2, "ㄔㄨㄣ"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x30

    aput-object v1, v0, v2

    const-string v1, "chuo"

    const-string/jumbo v2, "ㄔㄨㄛ"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x31

    aput-object v1, v0, v2

    const-string v1, "ci"

    const-string/jumbo v2, "ㄘ"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x32

    aput-object v1, v0, v2

    const-string v1, "cong"

    const-string/jumbo v2, "ㄘㄨㄥ"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x33

    aput-object v1, v0, v2

    const-string v1, "cou"

    const-string/jumbo v2, "ㄘㄡ"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x34

    aput-object v1, v0, v2

    const-string v1, "cu"

    const-string/jumbo v2, "ㄘㄨ"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x35

    aput-object v1, v0, v2

    const-string v1, "cuan"

    const-string/jumbo v2, "ㄘㄨㄢ"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x36

    aput-object v1, v0, v2

    const-string v1, "cui"

    const-string/jumbo v2, "ㄘㄨㄟ"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x37

    aput-object v1, v0, v2

    const-string v1, "cun"

    const-string/jumbo v2, "ㄘㄨㄣ"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x38

    aput-object v1, v0, v2

    const-string v1, "cuo"

    const-string/jumbo v2, "ㄘㄨㄛ"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x39

    aput-object v1, v0, v2

    const-string v1, "da"

    const-string/jumbo v2, "ㄉㄚ"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x3a

    aput-object v1, v0, v2

    const-string v1, "dai"

    const-string/jumbo v2, "ㄉㄞ"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x3b

    aput-object v1, v0, v2

    const-string v1, "dan"

    const-string/jumbo v2, "ㄉㄢ"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x3c

    aput-object v1, v0, v2

    const-string v1, "dang"

    const-string/jumbo v2, "ㄉㄤ"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x3d

    aput-object v1, v0, v2

    const-string v1, "dao"

    const-string/jumbo v2, "ㄉㄠ"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x3e

    aput-object v1, v0, v2

    const-string v1, "de"

    const-string/jumbo v2, "ㄉㄜ"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x3f

    aput-object v1, v0, v2

    const-string v1, "dei"

    const-string/jumbo v2, "ㄉㄟ"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x40

    aput-object v1, v0, v2

    const-string v1, "den"

    const-string/jumbo v2, "ㄉㄣ"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x41

    aput-object v1, v0, v2

    const-string v1, "deng"

    const-string/jumbo v2, "ㄉㄥ"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x42

    aput-object v1, v0, v2

    const-string v1, "di"

    const-string/jumbo v2, "ㄉㄧ"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x43

    aput-object v1, v0, v2

    const-string v1, "dia"

    const-string/jumbo v2, "ㄉㄧㄚ"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x44

    aput-object v1, v0, v2

    const-string v1, "dian"

    const-string/jumbo v2, "ㄉㄧㄢ"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x45

    aput-object v1, v0, v2

    const-string v1, "diang"

    const-string/jumbo v2, "ㄉㄧㄤ"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x46

    aput-object v1, v0, v2

    const-string v1, "diao"

    const-string/jumbo v2, "ㄉㄧㄠ"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x47

    aput-object v1, v0, v2

    const-string v1, "die"

    const-string/jumbo v2, "ㄉㄧㄝ"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x48

    aput-object v1, v0, v2

    const-string v1, "din"

    const-string/jumbo v2, "ㄉㄧㄣ"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x49

    aput-object v1, v0, v2

    const-string v1, "ding"

    const-string/jumbo v2, "ㄉㄧㄥ"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x4a

    aput-object v1, v0, v2

    const-string v1, "diu"

    const-string/jumbo v2, "ㄉㄧㄡ"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x4b

    aput-object v1, v0, v2

    const-string v1, "dong"

    const-string/jumbo v2, "ㄉㄨㄥ"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x4c

    aput-object v1, v0, v2

    const-string v1, "dou"

    const-string/jumbo v2, "ㄉㄡ"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x4d

    aput-object v1, v0, v2

    const-string v1, "du"

    const-string/jumbo v2, "ㄉㄨ"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x4e

    aput-object v1, v0, v2

    const-string v1, "duan"

    const-string/jumbo v2, "ㄉㄨㄢ"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x4f

    aput-object v1, v0, v2

    const-string v1, "dui"

    const-string/jumbo v2, "ㄉㄨㄟ"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x50

    aput-object v1, v0, v2

    const-string v1, "dun"

    const-string/jumbo v2, "ㄉㄨㄣ"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x51

    aput-object v1, v0, v2

    const-string v1, "duo"

    const-string/jumbo v2, "ㄉㄨㄛ"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x52

    aput-object v1, v0, v2

    const-string v1, "e"

    const-string/jumbo v2, "ㄜ"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x53

    aput-object v1, v0, v2

    const-string v1, "ea"

    const-string/jumbo v2, "ㄝ"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x54

    aput-object v1, v0, v3

    const-string v1, "eh"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x55

    aput-object v1, v0, v2

    const-string v1, "ei"

    const-string/jumbo v2, "ㄟ"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x56

    aput-object v1, v0, v2

    const-string v1, "en"

    const-string/jumbo v2, "ㄣ"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x57

    aput-object v1, v0, v2

    const-string v1, "eng"

    const-string/jumbo v2, "ㄥ"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x58

    aput-object v1, v0, v2

    const-string v1, "er"

    const-string/jumbo v2, "ㄦ"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x59

    aput-object v1, v0, v2

    const-string v1, "fa"

    const-string/jumbo v2, "ㄈㄚ"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x5a

    aput-object v1, v0, v2

    const-string v1, "fan"

    const-string/jumbo v2, "ㄈㄢ"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x5b

    aput-object v1, v0, v2

    const-string v1, "fang"

    const-string/jumbo v2, "ㄈㄤ"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x5c

    aput-object v1, v0, v2

    const-string v1, "fei"

    const-string/jumbo v2, "ㄈㄟ"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x5d

    aput-object v1, v0, v2

    const-string v1, "fen"

    const-string/jumbo v2, "ㄈㄣ"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x5e

    aput-object v1, v0, v2

    const-string v1, "feng"

    const-string/jumbo v2, "ㄈㄥ"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x5f

    aput-object v1, v0, v2

    const-string v1, "fiao"

    const-string/jumbo v2, "ㄈㄧㄠ"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x60

    aput-object v1, v0, v2

    const-string v1, "fo"

    const-string/jumbo v2, "ㄈㄛ"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x61

    aput-object v1, v0, v2

    const-string v1, "fou"

    const-string/jumbo v2, "ㄈㄡ"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x62

    aput-object v1, v0, v2

    const-string v1, "fu"

    const-string/jumbo v2, "ㄈㄨ"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x63

    aput-object v1, v0, v2

    const-string v1, "ga"

    const-string/jumbo v2, "ㄍㄚ"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x64

    aput-object v1, v0, v2

    const-string v1, "gai"

    const-string/jumbo v2, "ㄍㄞ"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x65

    aput-object v1, v0, v2

    const-string v1, "gan"

    const-string/jumbo v2, "ㄍㄢ"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x66

    aput-object v1, v0, v2

    const-string v1, "gang"

    const-string/jumbo v2, "ㄍㄤ"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x67

    aput-object v1, v0, v2

    const-string v1, "gao"

    const-string/jumbo v2, "ㄍㄠ"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x68

    aput-object v1, v0, v2

    const-string v1, "ge"

    const-string/jumbo v2, "ㄍㄜ"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x69

    aput-object v1, v0, v2

    const-string v1, "gei"

    const-string/jumbo v2, "ㄍㄟ"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x6a

    aput-object v1, v0, v2

    const-string v1, "gen"

    const-string/jumbo v2, "ㄍㄣ"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x6b

    aput-object v1, v0, v2

    const-string v1, "geng"

    const-string/jumbo v2, "ㄍㄥ"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x6c

    aput-object v1, v0, v2

    const-string v1, "gi"

    const-string/jumbo v2, "ㄍㄧ"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x6d

    aput-object v1, v0, v2

    const-string v1, "gong"

    const-string/jumbo v2, "ㄍㄨㄥ"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x6e

    aput-object v1, v0, v2

    const-string v1, "gou"

    const-string/jumbo v2, "ㄍㄡ"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x6f

    aput-object v1, v0, v2

    const-string v1, "gu"

    const-string/jumbo v2, "ㄍㄨ"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x70

    aput-object v1, v0, v2

    const-string v1, "gua"

    const-string/jumbo v2, "ㄍㄨㄚ"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x71

    aput-object v1, v0, v2

    const-string v1, "guai"

    const-string/jumbo v2, "ㄍㄨㄞ"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x72

    aput-object v1, v0, v2

    const-string v1, "guan"

    const-string/jumbo v2, "ㄍㄨㄢ"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x73

    aput-object v1, v0, v2

    const-string v1, "guang"

    const-string/jumbo v2, "ㄍㄨㄤ"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x74

    aput-object v1, v0, v2

    const-string v1, "gui"

    const-string/jumbo v2, "ㄍㄨㄟ"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x75

    aput-object v1, v0, v2

    const-string v1, "gun"

    const-string/jumbo v2, "ㄍㄨㄣ"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x76

    aput-object v1, v0, v2

    const-string v1, "guo"

    const-string/jumbo v2, "ㄍㄨㄛ"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x77

    aput-object v1, v0, v2

    const-string v1, "ha"

    const-string/jumbo v2, "ㄏㄚ"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x78

    aput-object v1, v0, v2

    const-string v1, "hai"

    const-string/jumbo v2, "ㄏㄞ"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x79

    aput-object v1, v0, v2

    const-string v1, "han"

    const-string/jumbo v2, "ㄏㄢ"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x7a

    aput-object v1, v0, v2

    const-string v1, "hang"

    const-string/jumbo v2, "ㄏㄤ"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x7b

    aput-object v1, v0, v2

    const-string v1, "hao"

    const-string/jumbo v2, "ㄏㄠ"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x7c

    aput-object v1, v0, v2

    const-string v1, "he"

    const-string/jumbo v2, "ㄏㄜ"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x7d

    aput-object v1, v0, v2

    const-string v1, "hei"

    const-string/jumbo v2, "ㄏㄟ"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x7e

    aput-object v1, v0, v2

    const-string v1, "hen"

    const-string/jumbo v2, "ㄏㄣ"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x7f

    aput-object v1, v0, v2

    const-string v1, "heng"

    const-string/jumbo v2, "ㄏㄥ"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x80

    aput-object v1, v0, v2

    const-string v1, "hm"

    const-string/jumbo v2, "ㄏㄇ"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x81

    aput-object v1, v0, v2

    const-string v1, "ho"

    const-string/jumbo v2, "ㄏㄛ"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x82

    aput-object v1, v0, v2

    const-string v1, "hong"

    const-string/jumbo v2, "ㄏㄨㄥ"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x83

    aput-object v1, v0, v2

    const-string v1, "hou"

    const-string/jumbo v2, "ㄏㄡ"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x84

    aput-object v1, v0, v2

    const-string v1, "hu"

    const-string/jumbo v2, "ㄏㄨ"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x85

    aput-object v1, v0, v2

    const-string v1, "hua"

    const-string/jumbo v2, "ㄏㄨㄚ"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x86

    aput-object v1, v0, v2

    const-string v1, "huai"

    const-string/jumbo v2, "ㄏㄨㄞ"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x87

    aput-object v1, v0, v2

    const-string v1, "huan"

    const-string/jumbo v2, "ㄏㄨㄢ"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x88

    aput-object v1, v0, v2

    const-string v1, "huang"

    const-string/jumbo v2, "ㄏㄨㄤ"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x89

    aput-object v1, v0, v2

    const-string v1, "hui"

    const-string/jumbo v2, "ㄏㄨㄟ"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x8a

    aput-object v1, v0, v2

    const-string v1, "hun"

    const-string/jumbo v2, "ㄏㄨㄣ"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x8b

    aput-object v1, v0, v2

    const-string v1, "huo"

    const-string/jumbo v2, "ㄏㄨㄛ"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x8c

    aput-object v1, v0, v2

    const-string v1, "i"

    const-string/jumbo v2, "ㄧ"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x8d

    aput-object v1, v0, v3

    const-string v1, "iu"

    const-string/jumbo v3, "ㄩ"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x8e

    aput-object v1, v0, v4

    const-string v1, "ji"

    const-string/jumbo v4, "ㄐㄧ"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x8f

    aput-object v1, v0, v4

    const-string v1, "jia"

    const-string/jumbo v4, "ㄐㄧㄚ"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x90

    aput-object v1, v0, v4

    const-string v1, "jian"

    const-string/jumbo v4, "ㄐㄧㄢ"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x91

    aput-object v1, v0, v4

    const-string v1, "jiang"

    const-string/jumbo v4, "ㄐㄧㄤ"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x92

    aput-object v1, v0, v4

    const-string v1, "jiao"

    const-string/jumbo v4, "ㄐㄧㄠ"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x93

    aput-object v1, v0, v4

    const-string v1, "jie"

    const-string/jumbo v4, "ㄐㄧㄝ"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x94

    aput-object v1, v0, v4

    const-string v1, "jin"

    const-string/jumbo v4, "ㄐㄧㄣ"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x95

    aput-object v1, v0, v4

    const-string v1, "jing"

    const-string/jumbo v4, "ㄐㄧㄥ"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x96

    aput-object v1, v0, v4

    const-string v1, "jiong"

    const-string/jumbo v4, "ㄐㄩㄥ"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x97

    aput-object v1, v0, v4

    const-string v1, "jiu"

    const-string/jumbo v4, "ㄐㄧㄡ"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x98

    aput-object v1, v0, v4

    const-string v1, "ju"

    const-string/jumbo v4, "ㄐㄩ"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x99

    aput-object v1, v0, v4

    const-string v1, "juan"

    const-string/jumbo v4, "ㄐㄩㄢ"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x9a

    aput-object v1, v0, v4

    const-string v1, "jue"

    const-string/jumbo v4, "ㄐㄩㄝ"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x9b

    aput-object v1, v0, v4

    const-string v1, "jun"

    const-string/jumbo v4, "ㄐㄩㄣ"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x9c

    aput-object v1, v0, v4

    const-string v1, "ka"

    const-string/jumbo v4, "ㄎㄚ"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x9d

    aput-object v1, v0, v4

    const-string v1, "kai"

    const-string/jumbo v4, "ㄎㄞ"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x9e

    aput-object v1, v0, v4

    const-string v1, "kan"

    const-string/jumbo v4, "ㄎㄢ"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x9f

    aput-object v1, v0, v4

    const-string v1, "kang"

    const-string/jumbo v4, "ㄎㄤ"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0xa0

    aput-object v1, v0, v4

    const-string v1, "kao"

    const-string/jumbo v4, "ㄎㄠ"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0xa1

    aput-object v1, v0, v4

    const-string v1, "ke"

    const-string/jumbo v4, "ㄎㄜ"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0xa2

    aput-object v1, v0, v4

    const-string v1, "ken"

    const-string/jumbo v4, "ㄎㄣ"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0xa3

    aput-object v1, v0, v4

    const-string v1, "keng"

    const-string/jumbo v4, "ㄎㄥ"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0xa4

    aput-object v1, v0, v4

    const-string v1, "kong"

    const-string/jumbo v4, "ㄎㄨㄥ"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0xa5

    aput-object v1, v0, v4

    const-string v1, "kou"

    const-string/jumbo v4, "ㄎㄡ"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0xa6

    aput-object v1, v0, v4

    const-string v1, "ku"

    const-string/jumbo v4, "ㄎㄨ"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0xa7

    aput-object v1, v0, v4

    const-string v1, "kua"

    const-string/jumbo v4, "ㄎㄨㄚ"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0xa8

    aput-object v1, v0, v4

    const-string v1, "kuai"

    const-string/jumbo v4, "ㄎㄨㄞ"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0xa9

    aput-object v1, v0, v4

    const-string v1, "kuan"

    const-string/jumbo v4, "ㄎㄨㄢ"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0xaa

    aput-object v1, v0, v4

    const-string v1, "kuang"

    const-string/jumbo v4, "ㄎㄨㄤ"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0xab

    aput-object v1, v0, v4

    const-string v1, "kui"

    const-string/jumbo v4, "ㄎㄨㄟ"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0xac

    aput-object v1, v0, v4

    const-string v1, "kun"

    const-string/jumbo v4, "ㄎㄨㄣ"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0xad

    aput-object v1, v0, v4

    const-string v1, "kuo"

    const-string/jumbo v4, "ㄎㄨㄛ"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0xae

    aput-object v1, v0, v4

    const-string v1, "la"

    const-string/jumbo v4, "ㄌㄚ"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0xaf

    aput-object v1, v0, v4

    const-string v1, "lai"

    const-string/jumbo v4, "ㄌㄞ"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0xb0

    aput-object v1, v0, v4

    const-string v1, "lan"

    const-string/jumbo v4, "ㄌㄢ"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0xb1

    aput-object v1, v0, v4

    const-string v1, "lang"

    const-string/jumbo v4, "ㄌㄤ"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0xb2

    aput-object v1, v0, v4

    const-string v1, "lao"

    const-string/jumbo v4, "ㄌㄠ"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0xb3

    aput-object v1, v0, v4

    const-string v1, "le"

    const-string/jumbo v4, "ㄌㄜ"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0xb4

    aput-object v1, v0, v4

    const-string v1, "lei"

    const-string/jumbo v4, "ㄌㄟ"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0xb5

    aput-object v1, v0, v4

    const-string v1, "leng"

    const-string/jumbo v4, "ㄌㄥ"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0xb6

    aput-object v1, v0, v4

    const-string v1, "li"

    const-string/jumbo v4, "ㄌㄧ"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0xb7

    aput-object v1, v0, v4

    const-string v1, "lia"

    const-string/jumbo v4, "ㄌㄧㄚ"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0xb8

    aput-object v1, v0, v4

    const-string v1, "lian"

    const-string/jumbo v4, "ㄌㄧㄢ"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0xb9

    aput-object v1, v0, v4

    const-string v1, "liang"

    const-string/jumbo v4, "ㄌㄧㄤ"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0xba

    aput-object v1, v0, v4

    const-string v1, "liao"

    const-string/jumbo v4, "ㄌㄧㄠ"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0xbb

    aput-object v1, v0, v4

    const-string v1, "lie"

    const-string/jumbo v4, "ㄌㄧㄝ"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0xbc

    aput-object v1, v0, v4

    const-string v1, "lin"

    const-string/jumbo v4, "ㄌㄧㄣ"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0xbd

    aput-object v1, v0, v4

    const-string v1, "ling"

    const-string/jumbo v4, "ㄌㄧㄥ"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0xbe

    aput-object v1, v0, v4

    const-string v1, "liu"

    const-string/jumbo v4, "ㄌㄧㄡ"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0xbf

    aput-object v1, v0, v4

    const-string v1, "lo"

    const-string/jumbo v4, "ㄌㄛ"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0xc0

    aput-object v1, v0, v4

    const-string v1, "long"

    const-string/jumbo v4, "ㄌㄨㄥ"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0xc1

    aput-object v1, v0, v4

    const-string v1, "lou"

    const-string/jumbo v4, "ㄌㄡ"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0xc2

    aput-object v1, v0, v4

    const-string v1, "lu"

    const-string/jumbo v4, "ㄌㄨ"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0xc3

    aput-object v1, v0, v4

    const-string v1, "luan"

    const-string/jumbo v4, "ㄌㄨㄢ"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0xc4

    aput-object v1, v0, v4

    const-string v1, "lue"

    const-string/jumbo v4, "ㄌㄩㄝ"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0xc5

    aput-object v1, v0, v5

    const-string v1, "lun"

    const-string/jumbo v5, "ㄌㄨㄣ"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0xc6

    aput-object v1, v0, v5

    const-string v1, "luo"

    const-string/jumbo v5, "ㄌㄨㄛ"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0xc7

    aput-object v1, v0, v5

    const-string v1, "lv"

    const-string/jumbo v5, "ㄌㄩ"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0xc8

    aput-object v1, v0, v5

    const-string v1, "lvan"

    const-string/jumbo v5, "ㄌㄩㄢ"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0xc9

    aput-object v1, v0, v5

    const-string v1, "lve"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0xca

    aput-object v1, v0, v4

    const-string v1, "m"

    const-string/jumbo v4, "ㄇ"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0xcb

    aput-object v1, v0, v4

    const-string/jumbo v1, "ma"

    const-string/jumbo v4, "ㄇㄚ"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0xcc

    aput-object v1, v0, v4

    const-string/jumbo v1, "mai"

    const-string/jumbo v4, "ㄇㄞ"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0xcd

    aput-object v1, v0, v4

    const-string/jumbo v1, "man"

    const-string/jumbo v4, "ㄇㄢ"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0xce

    aput-object v1, v0, v4

    const-string/jumbo v1, "mang"

    const-string/jumbo v4, "ㄇㄤ"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0xcf

    aput-object v1, v0, v4

    const-string/jumbo v1, "mao"

    const-string/jumbo v4, "ㄇㄠ"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0xd0

    aput-object v1, v0, v4

    const-string/jumbo v1, "me"

    const-string/jumbo v4, "ㄇㄜ"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0xd1

    aput-object v1, v0, v4

    const-string/jumbo v1, "mei"

    const-string/jumbo v4, "ㄇㄟ"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0xd2

    aput-object v1, v0, v4

    const-string/jumbo v1, "men"

    const-string/jumbo v4, "ㄇㄣ"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0xd3

    aput-object v1, v0, v4

    const-string/jumbo v1, "meng"

    const-string/jumbo v4, "ㄇㄥ"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0xd4

    aput-object v1, v0, v4

    const-string/jumbo v1, "mi"

    const-string/jumbo v4, "ㄇㄧ"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0xd5

    aput-object v1, v0, v4

    const-string/jumbo v1, "mian"

    const-string/jumbo v4, "ㄇㄧㄢ"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0xd6

    aput-object v1, v0, v4

    const-string/jumbo v1, "miao"

    const-string/jumbo v4, "ㄇㄧㄠ"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0xd7

    aput-object v1, v0, v4

    const-string/jumbo v1, "mie"

    const-string/jumbo v4, "ㄇㄧㄝ"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0xd8

    aput-object v1, v0, v4

    const-string/jumbo v1, "min"

    const-string/jumbo v4, "ㄇㄧㄣ"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0xd9

    aput-object v1, v0, v4

    const-string/jumbo v1, "ming"

    const-string/jumbo v4, "ㄇㄧㄥ"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0xda

    aput-object v1, v0, v4

    const-string/jumbo v1, "miu"

    const-string/jumbo v4, "ㄇㄧㄡ"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0xdb

    aput-object v1, v0, v4

    const-string/jumbo v1, "mo"

    const-string/jumbo v4, "ㄇㄛ"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0xdc

    aput-object v1, v0, v4

    const-string/jumbo v1, "mou"

    const-string/jumbo v4, "ㄇㄡ"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0xdd

    aput-object v1, v0, v4

    const-string/jumbo v1, "mu"

    const-string/jumbo v4, "ㄇㄨ"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0xde

    aput-object v1, v0, v4

    const-string/jumbo v1, "n"

    const-string/jumbo v4, "ㄋ"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0xdf

    aput-object v1, v0, v4

    const-string/jumbo v1, "na"

    const-string/jumbo v4, "ㄋㄚ"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0xe0

    aput-object v1, v0, v4

    const-string/jumbo v1, "nai"

    const-string/jumbo v4, "ㄋㄞ"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0xe1

    aput-object v1, v0, v4

    const-string/jumbo v1, "nan"

    const-string/jumbo v4, "ㄋㄢ"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0xe2

    aput-object v1, v0, v4

    const-string/jumbo v1, "nang"

    const-string/jumbo v4, "ㄋㄤ"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0xe3

    aput-object v1, v0, v4

    const-string/jumbo v1, "nao"

    const-string/jumbo v4, "ㄋㄠ"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0xe4

    aput-object v1, v0, v4

    const-string/jumbo v1, "ne"

    const-string/jumbo v4, "ㄋㄜ"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0xe5

    aput-object v1, v0, v4

    const-string/jumbo v1, "nei"

    const-string/jumbo v4, "ㄋㄟ"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0xe6

    aput-object v1, v0, v4

    const-string/jumbo v1, "nen"

    const-string/jumbo v4, "ㄋㄣ"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0xe7

    aput-object v1, v0, v4

    const-string/jumbo v1, "neng"

    const-string/jumbo v4, "ㄋㄥ"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0xe8

    aput-object v1, v0, v4

    const-string/jumbo v1, "ni"

    const-string/jumbo v4, "ㄋㄧ"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0xe9

    aput-object v1, v0, v4

    const-string/jumbo v1, "nia"

    const-string/jumbo v4, "ㄋㄧㄚ"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0xea

    aput-object v1, v0, v4

    const-string/jumbo v1, "nian"

    const-string/jumbo v4, "ㄋㄧㄢ"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0xeb

    aput-object v1, v0, v4

    const-string/jumbo v1, "niang"

    const-string/jumbo v4, "ㄋㄧㄤ"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0xec

    aput-object v1, v0, v4

    const-string/jumbo v1, "niao"

    const-string/jumbo v4, "ㄋㄧㄠ"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0xed

    aput-object v1, v0, v4

    const-string/jumbo v1, "nie"

    const-string/jumbo v4, "ㄋㄧㄝ"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0xee

    aput-object v1, v0, v4

    const-string/jumbo v1, "nin"

    const-string/jumbo v4, "ㄋㄧㄣ"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0xef

    aput-object v1, v0, v4

    const-string/jumbo v1, "ning"

    const-string/jumbo v4, "ㄋㄧㄥ"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0xf0

    aput-object v1, v0, v4

    const-string/jumbo v1, "niu"

    const-string/jumbo v4, "ㄋㄧㄡ"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0xf1

    aput-object v1, v0, v4

    const-string/jumbo v1, "nong"

    const-string/jumbo v4, "ㄋㄨㄥ"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0xf2

    aput-object v1, v0, v4

    const-string/jumbo v1, "nou"

    const-string/jumbo v4, "ㄋㄡ"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0xf3

    aput-object v1, v0, v4

    const-string/jumbo v1, "nu"

    const-string/jumbo v4, "ㄋㄨ"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0xf4

    aput-object v1, v0, v4

    const-string/jumbo v1, "nuan"

    const-string/jumbo v4, "ㄋㄨㄢ"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0xf5

    aput-object v1, v0, v4

    const-string/jumbo v1, "nue"

    const-string/jumbo v4, "ㄋㄩㄝ"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0xf6

    aput-object v1, v0, v5

    const-string/jumbo v1, "nun"

    const-string/jumbo v5, "ㄋㄨㄣ"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0xf7

    aput-object v1, v0, v5

    const-string/jumbo v1, "nuo"

    const-string/jumbo v5, "ㄋㄨㄛ"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0xf8

    aput-object v1, v0, v5

    const-string/jumbo v1, "nv"

    const-string/jumbo v5, "ㄋㄩ"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0xf9

    aput-object v1, v0, v5

    const-string/jumbo v1, "nve"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0xfa

    aput-object v1, v0, v4

    const-string/jumbo v1, "o"

    const-string/jumbo v4, "ㄛ"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0xfb

    aput-object v1, v0, v4

    const-string/jumbo v1, "ou"

    const-string/jumbo v4, "ㄡ"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0xfc

    aput-object v1, v0, v4

    const-string/jumbo v1, "pa"

    const-string/jumbo v4, "ㄆㄚ"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0xfd

    aput-object v1, v0, v4

    const-string/jumbo v1, "pai"

    const-string/jumbo v4, "ㄆㄞ"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0xfe

    aput-object v1, v0, v4

    const-string/jumbo v1, "pan"

    const-string/jumbo v4, "ㄆㄢ"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0xff

    aput-object v1, v0, v4

    const-string/jumbo v1, "pang"

    const-string/jumbo v4, "ㄆㄤ"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x100

    aput-object v1, v0, v4

    const-string/jumbo v1, "pao"

    const-string/jumbo v4, "ㄆㄠ"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x101

    aput-object v1, v0, v4

    const-string/jumbo v1, "pei"

    const-string/jumbo v4, "ㄆㄟ"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x102

    aput-object v1, v0, v4

    const-string/jumbo v1, "pen"

    const-string/jumbo v4, "ㄆㄣ"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x103

    aput-object v1, v0, v4

    const-string/jumbo v1, "peng"

    const-string/jumbo v4, "ㄆㄥ"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x104

    aput-object v1, v0, v4

    const-string/jumbo v1, "pi"

    const-string/jumbo v4, "ㄆㄧ"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x105

    aput-object v1, v0, v4

    const-string/jumbo v1, "pian"

    const-string/jumbo v4, "ㄆㄧㄢ"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x106

    aput-object v1, v0, v4

    const-string/jumbo v1, "piao"

    const-string/jumbo v4, "ㄆㄧㄠ"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x107

    aput-object v1, v0, v4

    const-string/jumbo v1, "pie"

    const-string/jumbo v4, "ㄆㄧㄝ"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x108

    aput-object v1, v0, v4

    const-string/jumbo v1, "pin"

    const-string/jumbo v4, "ㄆㄧㄣ"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x109

    aput-object v1, v0, v4

    const-string/jumbo v1, "ping"

    const-string/jumbo v4, "ㄆㄧㄥ"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x10a

    aput-object v1, v0, v4

    const-string/jumbo v1, "po"

    const-string/jumbo v4, "ㄆㄛ"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x10b

    aput-object v1, v0, v4

    const-string/jumbo v1, "pou"

    const-string/jumbo v4, "ㄆㄡ"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x10c

    aput-object v1, v0, v4

    const-string/jumbo v1, "pu"

    const-string/jumbo v4, "ㄆㄨ"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x10d

    aput-object v1, v0, v4

    const-string/jumbo v1, "qi"

    const-string/jumbo v4, "ㄑㄧ"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x10e

    aput-object v1, v0, v4

    const-string/jumbo v1, "qia"

    const-string/jumbo v4, "ㄑㄧㄚ"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x10f

    aput-object v1, v0, v4

    const-string/jumbo v1, "qian"

    const-string/jumbo v4, "ㄑㄧㄢ"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x110

    aput-object v1, v0, v4

    const-string/jumbo v1, "qiang"

    const-string/jumbo v4, "ㄑㄧㄤ"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x111

    aput-object v1, v0, v4

    const-string/jumbo v1, "qiao"

    const-string/jumbo v4, "ㄑㄧㄠ"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x112

    aput-object v1, v0, v4

    const-string/jumbo v1, "qie"

    const-string/jumbo v4, "ㄑㄧㄝ"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x113

    aput-object v1, v0, v4

    const-string/jumbo v1, "qin"

    const-string/jumbo v4, "ㄑㄧㄣ"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x114

    aput-object v1, v0, v4

    const-string/jumbo v1, "qing"

    const-string/jumbo v4, "ㄑㄧㄥ"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x115

    aput-object v1, v0, v4

    const-string/jumbo v1, "qiong"

    const-string/jumbo v4, "ㄑㄩㄥ"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x116

    aput-object v1, v0, v4

    const-string/jumbo v1, "qiu"

    const-string/jumbo v4, "ㄑㄧㄡ"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x117

    aput-object v1, v0, v4

    const-string/jumbo v1, "qu"

    const-string/jumbo v4, "ㄑㄩ"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x118

    aput-object v1, v0, v4

    const-string/jumbo v1, "quan"

    const-string/jumbo v4, "ㄑㄩㄢ"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x119

    aput-object v1, v0, v4

    const-string/jumbo v1, "que"

    const-string/jumbo v4, "ㄑㄩㄝ"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x11a

    aput-object v1, v0, v4

    const-string/jumbo v1, "qun"

    const-string/jumbo v4, "ㄑㄩㄣ"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x11b

    aput-object v1, v0, v4

    const-string/jumbo v1, "ra"

    const-string/jumbo v4, "ㄖㄚ"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x11c

    aput-object v1, v0, v4

    const-string/jumbo v1, "ran"

    const-string/jumbo v4, "ㄖㄢ"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x11d

    aput-object v1, v0, v4

    const-string/jumbo v1, "rang"

    const-string/jumbo v4, "ㄖㄤ"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x11e

    aput-object v1, v0, v4

    const-string/jumbo v1, "rao"

    const-string/jumbo v4, "ㄖㄠ"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x11f

    aput-object v1, v0, v4

    const-string/jumbo v1, "re"

    const-string/jumbo v4, "ㄖㄜ"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x120

    aput-object v1, v0, v4

    const-string/jumbo v1, "ren"

    const-string/jumbo v4, "ㄖㄣ"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x121

    aput-object v1, v0, v4

    const-string/jumbo v1, "reng"

    const-string/jumbo v4, "ㄖㄥ"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x122

    aput-object v1, v0, v4

    const-string/jumbo v1, "ri"

    const-string/jumbo v4, "ㄖ"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x123

    aput-object v1, v0, v4

    const-string/jumbo v1, "rong"

    const-string/jumbo v4, "ㄖㄨㄥ"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x124

    aput-object v1, v0, v4

    const-string/jumbo v1, "rou"

    const-string/jumbo v4, "ㄖㄡ"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x125

    aput-object v1, v0, v4

    const-string/jumbo v1, "ru"

    const-string/jumbo v4, "ㄖㄨ"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x126

    aput-object v1, v0, v4

    const-string/jumbo v1, "ruan"

    const-string/jumbo v4, "ㄖㄨㄢ"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x127

    aput-object v1, v0, v4

    const-string/jumbo v1, "rui"

    const-string/jumbo v4, "ㄖㄨㄟ"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x128

    aput-object v1, v0, v4

    const-string/jumbo v1, "run"

    const-string/jumbo v4, "ㄖㄨㄣ"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x129

    aput-object v1, v0, v4

    const-string/jumbo v1, "ruo"

    const-string/jumbo v4, "ㄖㄨㄛ"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x12a

    aput-object v1, v0, v4

    const-string/jumbo v1, "sa"

    const-string/jumbo v4, "ㄙㄚ"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x12b

    aput-object v1, v0, v4

    const-string/jumbo v1, "sai"

    const-string/jumbo v4, "ㄙㄞ"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x12c

    aput-object v1, v0, v4

    const-string/jumbo v1, "san"

    const-string/jumbo v4, "ㄙㄢ"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x12d

    aput-object v1, v0, v4

    const-string/jumbo v1, "sang"

    const-string/jumbo v4, "ㄙㄤ"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x12e

    aput-object v1, v0, v4

    const-string/jumbo v1, "sao"

    const-string/jumbo v4, "ㄙㄠ"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x12f

    aput-object v1, v0, v4

    const-string/jumbo v1, "se"

    const-string/jumbo v4, "ㄙㄜ"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x130

    aput-object v1, v0, v4

    const-string/jumbo v1, "sei"

    const-string/jumbo v4, "ㄙㄟ"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x131

    aput-object v1, v0, v4

    const-string/jumbo v1, "sen"

    const-string/jumbo v4, "ㄙㄣ"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x132

    aput-object v1, v0, v4

    const-string/jumbo v1, "seng"

    const-string/jumbo v4, "ㄙㄥ"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x133

    aput-object v1, v0, v4

    const-string/jumbo v1, "sha"

    const-string/jumbo v4, "ㄕㄚ"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x134

    aput-object v1, v0, v4

    const-string/jumbo v1, "shai"

    const-string/jumbo v4, "ㄕㄞ"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x135

    aput-object v1, v0, v4

    const-string/jumbo v1, "shan"

    const-string/jumbo v4, "ㄕㄢ"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x136

    aput-object v1, v0, v4

    const-string/jumbo v1, "shang"

    const-string/jumbo v4, "ㄕㄤ"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x137

    aput-object v1, v0, v4

    const-string/jumbo v1, "shao"

    const-string/jumbo v4, "ㄕㄠ"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x138

    aput-object v1, v0, v4

    const-string/jumbo v1, "she"

    const-string/jumbo v4, "ㄕㄜ"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x139

    aput-object v1, v0, v4

    const-string/jumbo v1, "shei"

    const-string/jumbo v4, "ㄕㄟ"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x13a

    aput-object v1, v0, v4

    const-string/jumbo v1, "shen"

    const-string/jumbo v4, "ㄕㄣ"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x13b

    aput-object v1, v0, v4

    const-string/jumbo v1, "sheng"

    const-string/jumbo v4, "ㄕㄥ"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x13c

    aput-object v1, v0, v4

    const-string/jumbo v1, "shi"

    const-string/jumbo v4, "ㄕ"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x13d

    aput-object v1, v0, v4

    const-string/jumbo v1, "shong"

    const-string/jumbo v4, "ㄕㄡㄥ"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x13e

    aput-object v1, v0, v4

    const-string/jumbo v1, "shou"

    const-string/jumbo v4, "ㄕㄡ"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x13f

    aput-object v1, v0, v4

    const-string/jumbo v1, "shu"

    const-string/jumbo v4, "ㄕㄨ"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x140

    aput-object v1, v0, v4

    const-string/jumbo v1, "shua"

    const-string/jumbo v4, "ㄕㄨㄚ"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x141

    aput-object v1, v0, v4

    const-string/jumbo v1, "shuai"

    const-string/jumbo v4, "ㄕㄨㄞ"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x142

    aput-object v1, v0, v4

    const-string/jumbo v1, "shuan"

    const-string/jumbo v4, "ㄕㄨㄢ"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x143

    aput-object v1, v0, v4

    const-string/jumbo v1, "shuang"

    const-string/jumbo v4, "ㄕㄨㄤ"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x144

    aput-object v1, v0, v4

    const-string/jumbo v1, "shui"

    const-string/jumbo v4, "ㄕㄨㄟ"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x145

    aput-object v1, v0, v4

    const-string/jumbo v1, "shun"

    const-string/jumbo v4, "ㄕㄨㄣ"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x146

    aput-object v1, v0, v4

    const-string/jumbo v1, "shuo"

    const-string/jumbo v4, "ㄕㄨㄛ"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x147

    aput-object v1, v0, v4

    const-string/jumbo v1, "si"

    const-string/jumbo v4, "ㄙ"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x148

    aput-object v1, v0, v4

    const-string/jumbo v1, "song"

    const-string/jumbo v4, "ㄙㄨㄥ"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x149

    aput-object v1, v0, v4

    const-string/jumbo v1, "sou"

    const-string/jumbo v4, "ㄙㄡ"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x14a

    aput-object v1, v0, v4

    const-string/jumbo v1, "su"

    const-string/jumbo v4, "ㄙㄨ"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x14b

    aput-object v1, v0, v4

    const-string/jumbo v1, "suan"

    const-string/jumbo v4, "ㄙㄨㄢ"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x14c

    aput-object v1, v0, v4

    const-string/jumbo v1, "sui"

    const-string/jumbo v4, "ㄙㄨㄟ"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x14d

    aput-object v1, v0, v4

    const-string/jumbo v1, "sun"

    const-string/jumbo v4, "ㄙㄨㄣ"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x14e

    aput-object v1, v0, v4

    const-string/jumbo v1, "suo"

    const-string/jumbo v4, "ㄙㄨㄛ"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x14f

    aput-object v1, v0, v4

    const-string/jumbo v1, "ta"

    const-string/jumbo v4, "ㄊㄚ"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x150

    aput-object v1, v0, v4

    const-string/jumbo v1, "tai"

    const-string/jumbo v4, "ㄊㄞ"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x151

    aput-object v1, v0, v4

    const-string/jumbo v1, "tan"

    const-string/jumbo v4, "ㄊㄢ"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x152

    aput-object v1, v0, v4

    const-string/jumbo v1, "tang"

    const-string/jumbo v4, "ㄊㄤ"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x153

    aput-object v1, v0, v4

    const-string/jumbo v1, "tao"

    const-string/jumbo v4, "ㄊㄠ"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x154

    aput-object v1, v0, v4

    const-string/jumbo v1, "te"

    const-string/jumbo v4, "ㄊㄜ"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x155

    aput-object v1, v0, v4

    const-string/jumbo v1, "teng"

    const-string/jumbo v4, "ㄊㄥ"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x156

    aput-object v1, v0, v4

    const-string/jumbo v1, "ti"

    const-string/jumbo v4, "ㄊㄧ"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x157

    aput-object v1, v0, v4

    const-string/jumbo v1, "tian"

    const-string/jumbo v4, "ㄊㄧㄢ"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x158

    aput-object v1, v0, v4

    const-string/jumbo v1, "tiao"

    const-string/jumbo v4, "ㄊㄧㄠ"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x159

    aput-object v1, v0, v4

    const-string/jumbo v1, "tie"

    const-string/jumbo v4, "ㄊㄧㄝ"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x15a

    aput-object v1, v0, v4

    const-string/jumbo v1, "ting"

    const-string/jumbo v4, "ㄊㄧㄥ"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x15b

    aput-object v1, v0, v4

    const-string/jumbo v1, "tong"

    const-string/jumbo v4, "ㄊㄨㄥ"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x15c

    aput-object v1, v0, v4

    const-string/jumbo v1, "tou"

    const-string/jumbo v4, "ㄊㄡ"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x15d

    aput-object v1, v0, v4

    const-string/jumbo v1, "tu"

    const-string/jumbo v4, "ㄊㄨ"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x15e

    aput-object v1, v0, v4

    const-string/jumbo v1, "tuan"

    const-string/jumbo v4, "ㄊㄨㄢ"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x15f

    aput-object v1, v0, v4

    const-string/jumbo v1, "tui"

    const-string/jumbo v4, "ㄊㄨㄟ"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x160

    aput-object v1, v0, v4

    const-string/jumbo v1, "tun"

    const-string/jumbo v4, "ㄊㄨㄣ"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x161

    aput-object v1, v0, v4

    const-string/jumbo v1, "tuo"

    const-string/jumbo v4, "ㄊㄨㄛ"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x162

    aput-object v1, v0, v4

    const-string/jumbo v1, "u"

    const-string/jumbo v4, "ㄨ"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x163

    aput-object v1, v0, v5

    const-string/jumbo v1, "wa"

    const-string/jumbo v5, "ㄨㄚ"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x164

    aput-object v1, v0, v5

    const-string/jumbo v1, "wai"

    const-string/jumbo v5, "ㄨㄞ"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x165

    aput-object v1, v0, v5

    const-string/jumbo v1, "wan"

    const-string/jumbo v5, "ㄨㄢ"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x166

    aput-object v1, v0, v5

    const-string/jumbo v1, "wang"

    const-string/jumbo v5, "ㄨㄤ"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x167

    aput-object v1, v0, v5

    const-string/jumbo v1, "wei"

    const-string/jumbo v5, "ㄨㄟ"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x168

    aput-object v1, v0, v5

    const-string/jumbo v1, "wen"

    const-string/jumbo v5, "ㄨㄣ"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x169

    aput-object v1, v0, v5

    const-string/jumbo v1, "weng"

    const-string/jumbo v5, "ㄨㄥ"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x16a

    aput-object v1, v0, v5

    const-string/jumbo v1, "wo"

    const-string/jumbo v5, "ㄨㄛ"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x16b

    aput-object v1, v0, v5

    const-string/jumbo v1, "wong"

    const-string/jumbo v5, "ㄨㄨㄥ"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x16c

    aput-object v1, v0, v5

    const-string/jumbo v1, "wu"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x16d

    aput-object v1, v0, v4

    const-string/jumbo v1, "xi"

    const-string/jumbo v4, "ㄒㄧ"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x16e

    aput-object v1, v0, v4

    const-string/jumbo v1, "xia"

    const-string/jumbo v4, "ㄒㄧㄚ"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x16f

    aput-object v1, v0, v4

    const-string/jumbo v1, "xian"

    const-string/jumbo v4, "ㄒㄧㄢ"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x170

    aput-object v1, v0, v4

    const-string/jumbo v1, "xiang"

    const-string/jumbo v4, "ㄒㄧㄤ"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x171

    aput-object v1, v0, v4

    const-string/jumbo v1, "xiao"

    const-string/jumbo v4, "ㄒㄧㄠ"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x172

    aput-object v1, v0, v4

    const-string/jumbo v1, "xie"

    const-string/jumbo v4, "ㄒㄧㄝ"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x173

    aput-object v1, v0, v4

    const-string/jumbo v1, "xin"

    const-string/jumbo v4, "ㄒㄧㄣ"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x174

    aput-object v1, v0, v4

    const-string/jumbo v1, "xing"

    const-string/jumbo v4, "ㄒㄧㄥ"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x175

    aput-object v1, v0, v4

    const-string/jumbo v1, "xiong"

    const-string/jumbo v4, "ㄒㄩㄥ"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x176

    aput-object v1, v0, v4

    const-string/jumbo v1, "xiu"

    const-string/jumbo v4, "ㄒㄧㄡ"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x177

    aput-object v1, v0, v4

    const-string/jumbo v1, "xu"

    const-string/jumbo v4, "ㄒㄩ"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x178

    aput-object v1, v0, v4

    const-string/jumbo v1, "xuan"

    const-string/jumbo v4, "ㄒㄩㄢ"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x179

    aput-object v1, v0, v4

    const-string/jumbo v1, "xue"

    const-string/jumbo v4, "ㄒㄩㄝ"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x17a

    aput-object v1, v0, v4

    const-string/jumbo v1, "xun"

    const-string/jumbo v4, "ㄒㄩㄣ"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x17b

    aput-object v1, v0, v4

    const-string/jumbo v1, "ya"

    const-string/jumbo v4, "ㄧㄚ"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x17c

    aput-object v1, v0, v4

    const-string/jumbo v1, "yai"

    const-string/jumbo v4, "ㄧㄞ"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x17d

    aput-object v1, v0, v4

    const-string/jumbo v1, "yan"

    const-string/jumbo v4, "ㄧㄢ"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x17e

    aput-object v1, v0, v4

    const-string/jumbo v1, "yang"

    const-string/jumbo v4, "ㄧㄤ"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x17f

    aput-object v1, v0, v4

    const-string/jumbo v1, "yao"

    const-string/jumbo v4, "ㄧㄠ"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x180

    aput-object v1, v0, v4

    const-string/jumbo v1, "ye"

    const-string/jumbo v4, "ㄧㄝ"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x181

    aput-object v1, v0, v4

    const-string/jumbo v1, "yi"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x182

    aput-object v1, v0, v2

    const-string/jumbo v1, "yin"

    const-string/jumbo v2, "ㄧㄣ"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x183

    aput-object v1, v0, v2

    const-string/jumbo v1, "ying"

    const-string/jumbo v2, "ㄧㄥ"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x184

    aput-object v1, v0, v2

    const-string/jumbo v1, "yo"

    const-string/jumbo v2, "ㄧㄛ"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x185

    aput-object v1, v0, v2

    const-string/jumbo v1, "yong"

    const-string/jumbo v2, "ㄩㄥ"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x186

    aput-object v1, v0, v2

    const-string/jumbo v1, "you"

    const-string/jumbo v2, "ㄧㄡ"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x187

    aput-object v1, v0, v2

    const-string/jumbo v1, "yu"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x188

    aput-object v1, v0, v2

    const-string/jumbo v1, "yuan"

    const-string/jumbo v2, "ㄩㄢ"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x189

    aput-object v1, v0, v2

    const-string/jumbo v1, "yue"

    const-string/jumbo v2, "ㄩㄝ"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x18a

    aput-object v1, v0, v2

    const-string/jumbo v1, "yun"

    const-string/jumbo v2, "ㄩㄣ"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x18b

    aput-object v1, v0, v2

    const-string/jumbo v1, "za"

    const-string/jumbo v2, "ㄗㄚ"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x18c

    aput-object v1, v0, v2

    const-string/jumbo v1, "zai"

    const-string/jumbo v2, "ㄗㄞ"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x18d

    aput-object v1, v0, v2

    const-string/jumbo v1, "zan"

    const-string/jumbo v2, "ㄗㄢ"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x18e

    aput-object v1, v0, v2

    const-string/jumbo v1, "zang"

    const-string/jumbo v2, "ㄗㄤ"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x18f

    aput-object v1, v0, v2

    const-string/jumbo v1, "zao"

    const-string/jumbo v2, "ㄗㄠ"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x190

    aput-object v1, v0, v2

    const-string/jumbo v1, "ze"

    const-string/jumbo v2, "ㄗㄜ"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x191

    aput-object v1, v0, v2

    const-string/jumbo v1, "zei"

    const-string/jumbo v2, "ㄗㄟ"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x192

    aput-object v1, v0, v2

    const-string/jumbo v1, "zen"

    const-string/jumbo v2, "ㄗㄣ"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x193

    aput-object v1, v0, v2

    const-string/jumbo v1, "zeng"

    const-string/jumbo v2, "ㄗㄥ"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x194

    aput-object v1, v0, v2

    const-string/jumbo v1, "zha"

    const-string/jumbo v2, "ㄓㄚ"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x195

    aput-object v1, v0, v2

    const-string/jumbo v1, "zhai"

    const-string/jumbo v2, "ㄓㄞ"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x196

    aput-object v1, v0, v2

    const-string/jumbo v1, "zhan"

    const-string/jumbo v2, "ㄓㄢ"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x197

    aput-object v1, v0, v2

    const-string/jumbo v1, "zhang"

    const-string/jumbo v2, "ㄓㄤ"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x198

    aput-object v1, v0, v2

    const-string/jumbo v1, "zhao"

    const-string/jumbo v2, "ㄓㄠ"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x199

    aput-object v1, v0, v2

    const-string/jumbo v1, "zhe"

    const-string/jumbo v2, "ㄓㄜ"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x19a

    aput-object v1, v0, v2

    const-string/jumbo v1, "zhei"

    const-string/jumbo v2, "ㄓㄟ"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x19b

    aput-object v1, v0, v2

    const-string/jumbo v1, "zhen"

    const-string/jumbo v2, "ㄓㄣ"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x19c

    aput-object v1, v0, v2

    const-string/jumbo v1, "zheng"

    const-string/jumbo v2, "ㄓㄥ"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x19d

    aput-object v1, v0, v2

    const-string/jumbo v1, "zhi"

    const-string/jumbo v2, "ㄓ"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x19e

    aput-object v1, v0, v2

    const-string/jumbo v1, "zhong"

    const-string/jumbo v2, "ㄓㄨㄥ"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x19f

    aput-object v1, v0, v2

    const-string/jumbo v1, "zhou"

    const-string/jumbo v2, "ㄓㄡ"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1a0

    aput-object v1, v0, v2

    const-string/jumbo v1, "zhu"

    const-string/jumbo v2, "ㄓㄨ"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1a1

    aput-object v1, v0, v2

    const-string/jumbo v1, "zhua"

    const-string/jumbo v2, "ㄓㄨㄚ"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1a2

    aput-object v1, v0, v2

    const-string/jumbo v1, "zhuai"

    const-string/jumbo v2, "ㄓㄨㄞ"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1a3

    aput-object v1, v0, v2

    const-string/jumbo v1, "zhuan"

    const-string/jumbo v2, "ㄓㄨㄢ"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1a4

    aput-object v1, v0, v2

    const-string/jumbo v1, "zhuang"

    const-string/jumbo v2, "ㄓㄨㄤ"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1a5

    aput-object v1, v0, v2

    const-string/jumbo v1, "zhui"

    const-string/jumbo v2, "ㄓㄨㄟ"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1a6

    aput-object v1, v0, v2

    const-string/jumbo v1, "zhun"

    const-string/jumbo v2, "ㄓㄨㄣ"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1a7

    aput-object v1, v0, v2

    const-string/jumbo v1, "zhuo"

    const-string/jumbo v2, "ㄓㄨㄛ"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1a8

    aput-object v1, v0, v2

    const-string/jumbo v1, "zi"

    const-string/jumbo v2, "ㄗ"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1a9

    aput-object v1, v0, v2

    const-string/jumbo v1, "zong"

    const-string/jumbo v2, "ㄗㄨㄥ"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1aa

    aput-object v1, v0, v2

    const-string/jumbo v1, "zou"

    const-string/jumbo v2, "ㄗㄡ"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1ab

    aput-object v1, v0, v2

    const-string/jumbo v1, "zu"

    const-string/jumbo v2, "ㄗㄨ"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1ac

    aput-object v1, v0, v2

    const-string/jumbo v1, "zuan"

    const-string/jumbo v2, "ㄗㄨㄢ"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1ad

    aput-object v1, v0, v2

    const-string/jumbo v1, "zui"

    const-string/jumbo v2, "ㄗㄨㄟ"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1ae

    aput-object v1, v0, v2

    const-string/jumbo v1, "zun"

    const-string/jumbo v2, "ㄗㄨㄣ"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1af

    aput-object v1, v0, v2

    const-string/jumbo v1, "zuo"

    const-string/jumbo v2, "ㄗㄨㄛ"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1b0

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/common/sort/ZhuyinUtils;->PINYIN_TO_ZHUYING_TABLE:[[Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/common/sort/ZhuyinUtils;->PINYIN_TO_ZHUYING_HASHTABLE:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFirstSpell(C)C
    .registers 2

    invoke-static {p0}, Lcom/android/common/sort/ZhuyinUtils;->getWholePinyinStr(C)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    return p0

    :cond_10
    const/16 p0, 0x30

    return p0
.end method

.method private static getWholePinyinStr(C)Ljava/lang/String;
    .registers 11

    invoke-static {p0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lf2/z0;->a:[Ljava/lang/Object;

    if-nez p0, :cond_b

    const/4 p0, 0x0

    goto/16 :goto_1f2

    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_12
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_1ee

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v4, " "

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_28

    goto/16 :goto_1eb

    :cond_28
    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x3007

    const/4 v6, 0x1

    if-lt v4, v5, :cond_1df

    const v5, 0xf979

    if-le v4, v5, :cond_38

    goto/16 :goto_1df

    :cond_38
    const/4 v5, -0x1

    move v7, v1

    :goto_3a
    sget-object v8, Lf2/z0;->b:[[I

    array-length v9, v8

    if-ge v7, v9, :cond_4e

    aget-object v8, v8, v7

    aget v9, v8, v1

    if-lt v4, v9, :cond_4b

    aget v8, v8, v6

    if-gt v4, v8, :cond_4b

    move v5, v7

    goto :goto_4e

    :cond_4b
    add-int/lit8 v7, v7, 0x1

    goto :goto_3a

    :cond_4e
    :goto_4e
    packed-switch v5, :pswitch_data_1f4

    sget-object v4, Lf2/z0;->a:[Ljava/lang/Object;

    goto/16 :goto_1e1

    :pswitch_55  #0x32
    sget-object v5, Lf2/t0;->a:[[Ljava/lang/Object;

    invoke-static {v4, v5}, Lf2/z0;->a(I[[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    goto/16 :goto_1e1

    :pswitch_5d  #0x31
    sget-object v5, Lf2/r0;->a:[[Ljava/lang/Object;

    invoke-static {v4, v5}, Lf2/z0;->a(I[[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    goto/16 :goto_1e1

    :pswitch_65  #0x30
    sget-object v5, Lf2/q0;->a:[[Ljava/lang/Object;

    invoke-static {v4, v5}, Lf2/z0;->a(I[[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    goto/16 :goto_1e1

    :pswitch_6d  #0x2f
    sget-object v5, Lf2/p0;->a:[[Ljava/lang/Object;

    invoke-static {v4, v5}, Lf2/z0;->a(I[[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    goto/16 :goto_1e1

    :pswitch_75  #0x2e
    sget-object v5, Lf2/o0;->a:[[Ljava/lang/Object;

    invoke-static {v4, v5}, Lf2/z0;->a(I[[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    goto/16 :goto_1e1

    :pswitch_7d  #0x2d
    sget-object v5, Lf2/n0;->a:[[Ljava/lang/Object;

    invoke-static {v4, v5}, Lf2/z0;->a(I[[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    goto/16 :goto_1e1

    :pswitch_85  #0x2c
    sget-object v5, Lf2/m0;->a:[[Ljava/lang/Object;

    invoke-static {v4, v5}, Lf2/z0;->a(I[[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    goto/16 :goto_1e1

    :pswitch_8d  #0x2b
    sget-object v5, Lf2/l0;->a:[[Ljava/lang/Object;

    invoke-static {v4, v5}, Lf2/z0;->a(I[[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    goto/16 :goto_1e1

    :pswitch_95  #0x2a
    sget-object v5, Lf2/k0;->a:[[Ljava/lang/Object;

    invoke-static {v4, v5}, Lf2/z0;->a(I[[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    goto/16 :goto_1e1

    :pswitch_9d  #0x29
    sget-object v5, Lf2/j0;->a:[[Ljava/lang/Object;

    invoke-static {v4, v5}, Lf2/z0;->a(I[[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    goto/16 :goto_1e1

    :pswitch_a5  #0x28
    sget-object v5, Lf2/i0;->a:[[Ljava/lang/Object;

    invoke-static {v4, v5}, Lf2/z0;->a(I[[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    goto/16 :goto_1e1

    :pswitch_ad  #0x27
    sget-object v5, Lf2/g0;->a:[[Ljava/lang/Object;

    invoke-static {v4, v5}, Lf2/z0;->a(I[[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    goto/16 :goto_1e1

    :pswitch_b5  #0x26
    sget-object v5, Lf2/f0;->a:[[Ljava/lang/Object;

    invoke-static {v4, v5}, Lf2/z0;->a(I[[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    goto/16 :goto_1e1

    :pswitch_bd  #0x25
    sget-object v5, Lf2/e0;->a:[[Ljava/lang/Object;

    invoke-static {v4, v5}, Lf2/z0;->a(I[[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    goto/16 :goto_1e1

    :pswitch_c5  #0x24
    sget-object v5, Lf2/d0;->a:[[Ljava/lang/Object;

    invoke-static {v4, v5}, Lf2/z0;->a(I[[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    goto/16 :goto_1e1

    :pswitch_cd  #0x23
    sget-object v5, Lf2/c0;->a:[[Ljava/lang/Object;

    invoke-static {v4, v5}, Lf2/z0;->a(I[[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    goto/16 :goto_1e1

    :pswitch_d5  #0x22
    sget-object v5, Lf2/b0;->a:[[Ljava/lang/Object;

    invoke-static {v4, v5}, Lf2/z0;->a(I[[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    goto/16 :goto_1e1

    :pswitch_dd  #0x21
    sget-object v5, Lf2/a0;->a:[[Ljava/lang/Object;

    invoke-static {v4, v5}, Lf2/z0;->a(I[[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    goto/16 :goto_1e1

    :pswitch_e5  #0x20
    sget-object v5, Lf2/z;->a:[[Ljava/lang/Object;

    invoke-static {v4, v5}, Lf2/z0;->a(I[[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    goto/16 :goto_1e1

    :pswitch_ed  #0x1f
    sget-object v5, Lf2/y;->a:[[Ljava/lang/Object;

    invoke-static {v4, v5}, Lf2/z0;->a(I[[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    goto/16 :goto_1e1

    :pswitch_f5  #0x1e
    sget-object v5, Lf2/x;->a:[[Ljava/lang/Object;

    invoke-static {v4, v5}, Lf2/z0;->a(I[[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    goto/16 :goto_1e1

    :pswitch_fd  #0x1d
    sget-object v5, Lf2/v;->a:[[Ljava/lang/Object;

    invoke-static {v4, v5}, Lf2/z0;->a(I[[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    goto/16 :goto_1e1

    :pswitch_105  #0x1c
    sget-object v5, Lf2/u;->a:[[Ljava/lang/Object;

    invoke-static {v4, v5}, Lf2/z0;->a(I[[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    goto/16 :goto_1e1

    :pswitch_10d  #0x1b
    sget-object v5, Lf2/t;->a:[[Ljava/lang/Object;

    invoke-static {v4, v5}, Lf2/z0;->a(I[[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    goto/16 :goto_1e1

    :pswitch_115  #0x1a
    sget-object v5, Lf2/s;->a:[[Ljava/lang/Object;

    invoke-static {v4, v5}, Lf2/z0;->a(I[[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    goto/16 :goto_1e1

    :pswitch_11d  #0x19
    sget-object v5, Lf2/r;->a:[[Ljava/lang/Object;

    invoke-static {v4, v5}, Lf2/z0;->a(I[[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    goto/16 :goto_1e1

    :pswitch_125  #0x18
    sget-object v5, Lf2/q;->a:[[Ljava/lang/Object;

    invoke-static {v4, v5}, Lf2/z0;->a(I[[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    goto/16 :goto_1e1

    :pswitch_12d  #0x17
    sget-object v5, Lf2/p;->a:[[Ljava/lang/Object;

    invoke-static {v4, v5}, Lf2/z0;->a(I[[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    goto/16 :goto_1e1

    :pswitch_135  #0x16
    sget-object v5, Lf2/o;->a:[[Ljava/lang/Object;

    invoke-static {v4, v5}, Lf2/z0;->a(I[[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    goto/16 :goto_1e1

    :pswitch_13d  #0x15
    sget-object v5, Lf2/n;->a:[[Ljava/lang/Object;

    invoke-static {v4, v5}, Lf2/z0;->a(I[[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    goto/16 :goto_1e1

    :pswitch_145  #0x14
    sget-object v5, Lf2/m;->a:[[Ljava/lang/Object;

    invoke-static {v4, v5}, Lf2/z0;->a(I[[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    goto/16 :goto_1e1

    :pswitch_14d  #0x13
    sget-object v5, Lf2/k;->a:[[Ljava/lang/Object;

    invoke-static {v4, v5}, Lf2/z0;->a(I[[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    goto/16 :goto_1e1

    :pswitch_155  #0x12
    sget-object v5, Lf2/j;->a:[[Ljava/lang/Object;

    invoke-static {v4, v5}, Lf2/z0;->a(I[[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    goto/16 :goto_1e1

    :pswitch_15d  #0x11
    sget-object v5, Lf2/i;->a:[[Ljava/lang/Object;

    invoke-static {v4, v5}, Lf2/z0;->a(I[[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    goto/16 :goto_1e1

    :pswitch_165  #0x10
    sget-object v5, Lf2/h;->a:[[Ljava/lang/Object;

    invoke-static {v4, v5}, Lf2/z0;->a(I[[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    goto/16 :goto_1e1

    :pswitch_16d  #0xf
    sget-object v5, Lf2/g;->a:[[Ljava/lang/Object;

    invoke-static {v4, v5}, Lf2/z0;->a(I[[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    goto/16 :goto_1e1

    :pswitch_175  #0xe
    sget-object v5, Lf2/f;->a:[[Ljava/lang/Object;

    invoke-static {v4, v5}, Lf2/z0;->a(I[[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    goto/16 :goto_1e1

    :pswitch_17d  #0xd
    sget-object v5, Lf2/e;->a:[[Ljava/lang/Object;

    invoke-static {v4, v5}, Lf2/z0;->a(I[[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    goto :goto_1e1

    :pswitch_184  #0xc
    sget-object v5, Lf2/d;->a:[[Ljava/lang/Object;

    invoke-static {v4, v5}, Lf2/z0;->a(I[[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    goto :goto_1e1

    :pswitch_18b  #0xb
    sget-object v5, Lf2/c;->a:[[Ljava/lang/Object;

    invoke-static {v4, v5}, Lf2/z0;->a(I[[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    goto :goto_1e1

    :pswitch_192  #0xa
    sget-object v5, Lf2/b;->a:[[Ljava/lang/Object;

    invoke-static {v4, v5}, Lf2/z0;->a(I[[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    goto :goto_1e1

    :pswitch_199  #0x9
    sget-object v5, Lf2/y0;->a:[[Ljava/lang/Object;

    invoke-static {v4, v5}, Lf2/z0;->a(I[[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    goto :goto_1e1

    :pswitch_1a0  #0x8
    sget-object v5, Lf2/x0;->a:[[Ljava/lang/Object;

    invoke-static {v4, v5}, Lf2/z0;->a(I[[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    goto :goto_1e1

    :pswitch_1a7  #0x7
    sget-object v5, Lf2/w0;->a:[[Ljava/lang/Object;

    invoke-static {v4, v5}, Lf2/z0;->a(I[[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    goto :goto_1e1

    :pswitch_1ae  #0x6
    sget-object v5, Lf2/v0;->a:[[Ljava/lang/Object;

    invoke-static {v4, v5}, Lf2/z0;->a(I[[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    goto :goto_1e1

    :pswitch_1b5  #0x5
    sget-object v5, Lf2/u0;->a:[[Ljava/lang/Object;

    invoke-static {v4, v5}, Lf2/z0;->a(I[[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    goto :goto_1e1

    :pswitch_1bc  #0x4
    sget-object v5, Lf2/s0;->a:[[Ljava/lang/Object;

    invoke-static {v4, v5}, Lf2/z0;->a(I[[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    goto :goto_1e1

    :pswitch_1c3  #0x3
    sget-object v5, Lf2/h0;->a:[[Ljava/lang/Object;

    invoke-static {v4, v5}, Lf2/z0;->a(I[[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    goto :goto_1e1

    :pswitch_1ca  #0x2
    sget-object v5, Lf2/w;->a:[[Ljava/lang/Object;

    invoke-static {v4, v5}, Lf2/z0;->a(I[[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    goto :goto_1e1

    :pswitch_1d1  #0x1
    sget-object v5, Lf2/l;->a:[[Ljava/lang/Object;

    invoke-static {v4, v5}, Lf2/z0;->a(I[[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    goto :goto_1e1

    :pswitch_1d8  #0x0
    sget-object v5, Lf2/a;->a:[[Ljava/lang/Object;

    invoke-static {v4, v5}, Lf2/z0;->a(I[[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    goto :goto_1e1

    :cond_1df
    :goto_1df
    sget-object v4, Lf2/z0;->a:[Ljava/lang/Object;

    :goto_1e1
    aget-object v5, v4, v6

    if-nez v5, :cond_1e6

    goto :goto_1e8

    :cond_1e6
    aget-object v2, v4, v6

    :goto_1e8
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :goto_1eb
    move v2, v3

    goto/16 :goto_12

    :cond_1ee
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_1f2
    return-object p0

    nop

    :pswitch_data_1f4
    .packed-switch 0x0
        :pswitch_1d8  #00000000
        :pswitch_1d1  #00000001
        :pswitch_1ca  #00000002
        :pswitch_1c3  #00000003
        :pswitch_1bc  #00000004
        :pswitch_1b5  #00000005
        :pswitch_1ae  #00000006
        :pswitch_1a7  #00000007
        :pswitch_1a0  #00000008
        :pswitch_199  #00000009
        :pswitch_192  #0000000a
        :pswitch_18b  #0000000b
        :pswitch_184  #0000000c
        :pswitch_17d  #0000000d
        :pswitch_175  #0000000e
        :pswitch_16d  #0000000f
        :pswitch_165  #00000010
        :pswitch_15d  #00000011
        :pswitch_155  #00000012
        :pswitch_14d  #00000013
        :pswitch_145  #00000014
        :pswitch_13d  #00000015
        :pswitch_135  #00000016
        :pswitch_12d  #00000017
        :pswitch_125  #00000018
        :pswitch_11d  #00000019
        :pswitch_115  #0000001a
        :pswitch_10d  #0000001b
        :pswitch_105  #0000001c
        :pswitch_fd  #0000001d
        :pswitch_f5  #0000001e
        :pswitch_ed  #0000001f
        :pswitch_e5  #00000020
        :pswitch_dd  #00000021
        :pswitch_d5  #00000022
        :pswitch_cd  #00000023
        :pswitch_c5  #00000024
        :pswitch_bd  #00000025
        :pswitch_b5  #00000026
        :pswitch_ad  #00000027
        :pswitch_a5  #00000028
        :pswitch_9d  #00000029
        :pswitch_95  #0000002a
        :pswitch_8d  #0000002b
        :pswitch_85  #0000002c
        :pswitch_7d  #0000002d
        :pswitch_75  #0000002e
        :pswitch_6d  #0000002f
        :pswitch_65  #00000030
        :pswitch_5d  #00000031
        :pswitch_55  #00000032
    .end packed-switch
.end method

.method public static getZhuyinFromName(Ljava/lang/String;)Ljava/lang/String;
    .registers 13

    if-nez p0, :cond_3

    return-object p0

    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_f
    if-ge v3, v0, :cond_76

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x4e00

    if-lt v5, v6, :cond_70

    const v6, 0x9fa5

    if-gt v5, v6, :cond_70

    :try_start_1e
    invoke-static {v5}, Lcom/android/common/sort/ZhuyinUtils;->getWholePinyinStr(C)Ljava/lang/String;

    move-result-object v6

    const v7, 0x8449

    if-ne v5, v7, :cond_2c

    const-string/jumbo v6, "ye"
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_2a} :catch_2b

    goto :goto_2c

    :catch_2b
    const/4 v6, 0x0

    :cond_2c
    :goto_2c
    sget-object v5, Lcom/android/common/sort/ZhuyinUtils;->PINYIN_TO_ZHUYING_HASHTABLE:Ljava/util/HashMap;

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const/4 v7, 0x1

    if-nez v5, :cond_6b

    sget-object v5, Lcom/android/common/sort/ZhuyinUtils;->PINYIN_TO_ZHUYING_TABLE:[[Ljava/lang/String;

    array-length v5, v5

    sub-int/2addr v5, v7

    move v8, v2

    :goto_3c
    if-gt v8, v5, :cond_69

    add-int v9, v8, v5

    ushr-int/2addr v9, v7

    sget-object v10, Lcom/android/common/sort/ZhuyinUtils;->PINYIN_TO_ZHUYING_TABLE:[[Ljava/lang/String;

    aget-object v11, v10, v9

    aget-object v11, v11, v2

    invoke-virtual {v11, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v11

    if-nez v11, :cond_60

    aget-object v4, v10, v9

    aget-object v6, v4, v7

    sget-object v4, Lcom/android/common/sort/ZhuyinUtils;->PINYIN_TO_ZHUYING_HASHTABLE:Ljava/util/HashMap;

    aget-object v5, v10, v9

    aget-object v5, v5, v2

    aget-object v8, v10, v9

    aget-object v8, v8, v7

    invoke-virtual {v4, v5, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v4, v7

    goto :goto_69

    :cond_60
    if-lez v11, :cond_66

    add-int/lit8 v9, v9, -0x1

    move v5, v9

    goto :goto_3c

    :cond_66
    add-int/lit8 v8, v9, 0x1

    goto :goto_3c

    :cond_69
    :goto_69
    move-object v5, v6

    goto :goto_6c

    :cond_6b
    move v4, v7

    :goto_6c
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_73

    :cond_70
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_73
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    :cond_76
    if-eqz v4, :cond_85

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "#"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_85
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static isEnglish()Z
    .registers 1

    const/4 v0, 0x0

    return v0
.end method

.method public static needPinyinFun()Z
    .registers 2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "zh"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c

    const-string v1, "en"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    goto :goto_1c

    :cond_1a
    const/4 v0, 0x0

    goto :goto_1d

    :cond_1c
    :goto_1c
    const/4 v0, 0x1

    :goto_1d
    return v0
.end method
