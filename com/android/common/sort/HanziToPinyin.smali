.class public Lcom/android/common/sort/HanziToPinyin;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/common/sort/HanziToPinyin$Token;
    }
.end annotation


# static fields
.field private static final COLLATOR:Ljava/text/Collator;

.field private static final DEBUG:Z = false

.field private static final FIRST_PINYIN_UNIHAN:Ljava/lang/String; = "阿"

.field private static final LAST_PINYIN_UNIHAN:Ljava/lang/String; = "鿿"

.field private static final PINYINS:[[B

.field private static final PINYIN_TO_ZHUYING_TABLE:[[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "HanziToPinyin"

.field private static final UNIHANS:[C

.field private static sInstance:Lcom/android/common/sort/HanziToPinyin;

.field private static final sPinYinToZhuYingHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mHasChinaCollator:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 25

    const/16 v0, 0x1a8

    new-array v1, v0, [C

    fill-array-data v1, :array_25bc

    sput-object v1, Lcom/android/common/sort/HanziToPinyin;->UNIHANS:[C

    new-array v1, v0, [[B

    const/4 v2, 0x6

    new-array v3, v2, [B

    fill-array-data v3, :array_2768

    const/4 v4, 0x0

    aput-object v3, v1, v4

    new-array v3, v2, [B

    fill-array-data v3, :array_2770

    const/4 v5, 0x1

    aput-object v3, v1, v5

    new-array v3, v2, [B

    fill-array-data v3, :array_2778

    const/4 v6, 0x2

    aput-object v3, v1, v6

    new-array v3, v2, [B

    fill-array-data v3, :array_2780

    const/4 v7, 0x3

    aput-object v3, v1, v7

    new-array v3, v2, [B

    fill-array-data v3, :array_2788

    const/4 v8, 0x4

    aput-object v3, v1, v8

    new-array v3, v2, [B

    fill-array-data v3, :array_2790

    const/4 v9, 0x5

    aput-object v3, v1, v9

    new-array v3, v2, [B

    fill-array-data v3, :array_2798

    aput-object v3, v1, v2

    new-array v3, v2, [B

    fill-array-data v3, :array_27a0

    const/4 v10, 0x7

    aput-object v3, v1, v10

    new-array v3, v2, [B

    fill-array-data v3, :array_27a8

    const/16 v11, 0x8

    aput-object v3, v1, v11

    new-array v3, v2, [B

    fill-array-data v3, :array_27b0

    const/16 v12, 0x9

    aput-object v3, v1, v12

    new-array v3, v2, [B

    fill-array-data v3, :array_27b8

    const/16 v13, 0xa

    aput-object v3, v1, v13

    new-array v3, v2, [B

    fill-array-data v3, :array_27c0

    const/16 v14, 0xb

    aput-object v3, v1, v14

    new-array v3, v2, [B

    fill-array-data v3, :array_27c8

    const/16 v15, 0xc

    aput-object v3, v1, v15

    new-array v3, v2, [B

    fill-array-data v3, :array_27d0

    const/16 v16, 0xd

    aput-object v3, v1, v16

    new-array v3, v2, [B

    fill-array-data v3, :array_27d8

    const/16 v17, 0xe

    aput-object v3, v1, v17

    new-array v3, v2, [B

    fill-array-data v3, :array_27e0

    const/16 v18, 0xf

    aput-object v3, v1, v18

    new-array v3, v2, [B

    fill-array-data v3, :array_27e8

    const/16 v19, 0x10

    aput-object v3, v1, v19

    new-array v3, v2, [B

    fill-array-data v3, :array_27f0

    const/16 v20, 0x11

    aput-object v3, v1, v20

    new-array v3, v2, [B

    fill-array-data v3, :array_27f8

    const/16 v21, 0x12

    aput-object v3, v1, v21

    new-array v3, v2, [B

    fill-array-data v3, :array_2800

    const/16 v22, 0x13

    aput-object v3, v1, v22

    new-array v3, v2, [B

    fill-array-data v3, :array_2808

    const/16 v23, 0x14

    aput-object v3, v1, v23

    new-array v3, v2, [B

    fill-array-data v3, :array_2810

    const/16 v24, 0x15

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_2818

    const/16 v24, 0x16

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_2820

    const/16 v24, 0x17

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_2828

    const/16 v24, 0x18

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_2830

    const/16 v24, 0x19

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_2838

    const/16 v24, 0x1a

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_2840

    const/16 v24, 0x1b

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_2848

    const/16 v24, 0x1c

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_2850

    const/16 v24, 0x1d

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_2858

    const/16 v24, 0x1e

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_2860

    const/16 v24, 0x1f

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_2868

    const/16 v24, 0x20

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_2870

    const/16 v24, 0x21

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_2878

    const/16 v24, 0x22

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_2880

    const/16 v24, 0x23

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_2888

    const/16 v24, 0x24

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_2890

    const/16 v24, 0x25

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_2898

    const/16 v24, 0x26

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_28a0

    const/16 v24, 0x27

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_28a8

    const/16 v24, 0x28

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_28b0

    const/16 v24, 0x29

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_28b8

    const/16 v24, 0x2a

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_28c0

    const/16 v24, 0x2b

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_28c8

    const/16 v24, 0x2c

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_28d0

    const/16 v24, 0x2d

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_28d8

    const/16 v24, 0x2e

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_28e0

    const/16 v24, 0x2f

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_28e8

    const/16 v24, 0x30

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_28f0

    const/16 v24, 0x31

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_28f8

    const/16 v24, 0x32

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_2900

    const/16 v24, 0x33

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_2908

    const/16 v24, 0x34

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_2910

    const/16 v24, 0x35

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_2918

    const/16 v24, 0x36

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_2920

    const/16 v24, 0x37

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_2928

    const/16 v24, 0x38

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_2930

    const/16 v24, 0x39

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_2938

    const/16 v24, 0x3a

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_2940

    const/16 v24, 0x3b

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_2948

    const/16 v24, 0x3c

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_2950

    const/16 v24, 0x3d

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_2958

    const/16 v24, 0x3e

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_2960

    const/16 v24, 0x3f

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_2968

    const/16 v24, 0x40

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_2970

    const/16 v24, 0x41

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_2978

    const/16 v24, 0x42

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_2980

    const/16 v24, 0x43

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_2988

    const/16 v24, 0x44

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_2990

    const/16 v24, 0x45

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_2998

    const/16 v24, 0x46

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_29a0

    const/16 v24, 0x47

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_29a8

    const/16 v24, 0x48

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_29b0

    const/16 v24, 0x49

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_29b8

    const/16 v24, 0x4a

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_29c0

    const/16 v24, 0x4b

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_29c8

    const/16 v24, 0x4c

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_29d0

    const/16 v24, 0x4d

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_29d8

    const/16 v24, 0x4e

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_29e0

    const/16 v24, 0x4f

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_29e8

    const/16 v24, 0x50

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_29f0

    const/16 v24, 0x51

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_29f8

    const/16 v24, 0x52

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_2a00

    const/16 v24, 0x53

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_2a08

    const/16 v24, 0x54

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_2a10

    const/16 v24, 0x55

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_2a18

    const/16 v24, 0x56

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_2a20

    const/16 v24, 0x57

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_2a28

    const/16 v24, 0x58

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_2a30

    const/16 v24, 0x59

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_2a38

    const/16 v24, 0x5a

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_2a40

    const/16 v24, 0x5b

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_2a48

    const/16 v24, 0x5c

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_2a50

    const/16 v24, 0x5d

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_2a58

    const/16 v24, 0x5e

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_2a60

    const/16 v24, 0x5f

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_2a68

    const/16 v24, 0x60

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_2a70

    const/16 v24, 0x61

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_2a78

    const/16 v24, 0x62

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_2a80

    const/16 v24, 0x63

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_2a88

    const/16 v24, 0x64

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_2a90

    const/16 v24, 0x65

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_2a98

    const/16 v24, 0x66

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_2aa0

    const/16 v24, 0x67

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_2aa8

    const/16 v24, 0x68

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_2ab0

    const/16 v24, 0x69

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_2ab8

    const/16 v24, 0x6a

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_2ac0

    const/16 v24, 0x6b

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_2ac8

    const/16 v24, 0x6c

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_2ad0

    const/16 v24, 0x6d

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_2ad8

    const/16 v24, 0x6e

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_2ae0

    const/16 v24, 0x6f

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_2ae8

    const/16 v24, 0x70

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_2af0

    const/16 v24, 0x71

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_2af8

    const/16 v24, 0x72

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_2b00

    const/16 v24, 0x73

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_2b08

    const/16 v24, 0x74

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_2b10

    const/16 v24, 0x75

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_2b18

    const/16 v24, 0x76

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_2b20

    const/16 v24, 0x77

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_2b28

    const/16 v24, 0x78

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_2b30

    const/16 v24, 0x79

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_2b38

    const/16 v24, 0x7a

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_2b40

    const/16 v24, 0x7b

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_2b48

    const/16 v24, 0x7c

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_2b50

    const/16 v24, 0x7d

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_2b58

    const/16 v24, 0x7e

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_2b60

    const/16 v24, 0x7f

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_2b68

    const/16 v24, 0x80

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_2b70

    const/16 v24, 0x81

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_2b78

    const/16 v24, 0x82

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_2b80

    const/16 v24, 0x83

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_2b88

    const/16 v24, 0x84

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_2b90

    const/16 v24, 0x85

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_2b98

    const/16 v24, 0x86

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_2ba0

    const/16 v24, 0x87

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_2ba8

    const/16 v24, 0x88

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_2bb0

    const/16 v24, 0x89

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_2bb8

    const/16 v24, 0x8a

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_2bc0

    const/16 v24, 0x8b

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_2bc8

    const/16 v24, 0x8c

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_2bd0

    const/16 v24, 0x8d

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_2bd8

    const/16 v24, 0x8e

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_2be0

    const/16 v24, 0x8f

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_2be8

    const/16 v24, 0x90

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_2bf0

    const/16 v24, 0x91

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_2bf8

    const/16 v24, 0x92

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_2c00

    const/16 v24, 0x93

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_2c08

    const/16 v24, 0x94

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_2c10

    const/16 v24, 0x95

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_2c18

    const/16 v24, 0x96

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_2c20

    const/16 v24, 0x97

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_2c28

    const/16 v24, 0x98

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_2c30

    const/16 v24, 0x99

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_2c38

    const/16 v24, 0x9a

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_2c40

    const/16 v24, 0x9b

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_2c48

    const/16 v24, 0x9c

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_2c50

    const/16 v24, 0x9d

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_2c58

    const/16 v24, 0x9e

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_2c60

    const/16 v24, 0x9f

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_2c68

    const/16 v24, 0xa0

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_2c70

    const/16 v24, 0xa1

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_2c78

    const/16 v24, 0xa2

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_2c80

    const/16 v24, 0xa3

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_2c88

    const/16 v24, 0xa4

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_2c90

    const/16 v24, 0xa5

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_2c98

    const/16 v24, 0xa6

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_2ca0

    const/16 v24, 0xa7

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_2ca8

    const/16 v24, 0xa8

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_2cb0

    const/16 v24, 0xa9

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_2cb8

    const/16 v24, 0xaa

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_2cc0

    const/16 v24, 0xab

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_2cc8

    const/16 v24, 0xac

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_2cd0

    const/16 v24, 0xad

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_2cd8

    const/16 v24, 0xae

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_2ce0

    const/16 v24, 0xaf

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_2ce8

    const/16 v24, 0xb0

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_2cf0

    const/16 v24, 0xb1

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_2cf8

    const/16 v24, 0xb2

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_2d00

    const/16 v24, 0xb3

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_2d08

    const/16 v24, 0xb4

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_2d10

    const/16 v24, 0xb5

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_2d18

    const/16 v24, 0xb6

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_2d20

    const/16 v24, 0xb7

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_2d28

    const/16 v24, 0xb8

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_2d30

    const/16 v24, 0xb9

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_2d38

    const/16 v24, 0xba

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_2d40

    const/16 v24, 0xbb

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_2d48

    const/16 v24, 0xbc

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_2d50

    const/16 v24, 0xbd

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_2d58

    const/16 v24, 0xbe

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_2d60

    const/16 v24, 0xbf

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_2d68

    const/16 v24, 0xc0

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_2d70

    const/16 v24, 0xc1

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_2d78

    const/16 v24, 0xc2

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_2d80

    const/16 v24, 0xc3

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_2d88

    const/16 v24, 0xc4

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_2d90

    const/16 v24, 0xc5

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_2d98

    const/16 v24, 0xc6

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_2da0

    const/16 v24, 0xc7

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_2da8

    const/16 v24, 0xc8

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_2db0

    const/16 v24, 0xc9

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_2db8

    const/16 v24, 0xca

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_2dc0

    const/16 v24, 0xcb

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_2dc8

    const/16 v24, 0xcc

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_2dd0

    const/16 v24, 0xcd

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_2dd8

    const/16 v24, 0xce

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_2de0

    const/16 v24, 0xcf

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_2de8

    const/16 v24, 0xd0

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_2df0

    const/16 v24, 0xd1

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_2df8

    const/16 v24, 0xd2

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_2e00

    const/16 v24, 0xd3

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_2e08

    const/16 v24, 0xd4

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_2e10

    const/16 v24, 0xd5

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_2e18

    const/16 v24, 0xd6

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_2e20

    const/16 v24, 0xd7

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_2e28

    const/16 v24, 0xd8

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_2e30

    const/16 v24, 0xd9

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_2e38

    const/16 v24, 0xda

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_2e40

    const/16 v24, 0xdb

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_2e48

    const/16 v24, 0xdc

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_2e50

    const/16 v24, 0xdd

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_2e58

    const/16 v24, 0xde

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_2e60

    const/16 v24, 0xdf

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_2e68

    const/16 v24, 0xe0

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_2e70

    const/16 v24, 0xe1

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_2e78

    const/16 v24, 0xe2

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_2e80

    const/16 v24, 0xe3

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_2e88

    const/16 v24, 0xe4

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_2e90

    const/16 v24, 0xe5

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_2e98

    const/16 v24, 0xe6

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_2ea0

    const/16 v24, 0xe7

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_2ea8

    const/16 v24, 0xe8

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_2eb0

    const/16 v24, 0xe9

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_2eb8

    const/16 v24, 0xea

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_2ec0

    const/16 v24, 0xeb

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_2ec8

    const/16 v24, 0xec

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_2ed0

    const/16 v24, 0xed

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_2ed8

    const/16 v24, 0xee

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_2ee0

    const/16 v24, 0xef

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_2ee8

    const/16 v24, 0xf0

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_2ef0

    const/16 v24, 0xf1

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_2ef8

    const/16 v24, 0xf2

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_2f00

    const/16 v24, 0xf3

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_2f08

    const/16 v24, 0xf4

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_2f10

    const/16 v24, 0xf5

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_2f18

    const/16 v24, 0xf6

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_2f20

    const/16 v24, 0xf7

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_2f28

    const/16 v24, 0xf8

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_2f30

    const/16 v24, 0xf9

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_2f38

    const/16 v24, 0xfa

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_2f40

    const/16 v24, 0xfb

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_2f48

    const/16 v24, 0xfc

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_2f50

    const/16 v24, 0xfd

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_2f58

    const/16 v24, 0xfe

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_2f60

    const/16 v24, 0xff

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_2f68

    const/16 v24, 0x100

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_2f70

    const/16 v24, 0x101

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_2f78

    const/16 v24, 0x102

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_2f80

    const/16 v24, 0x103

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_2f88

    const/16 v24, 0x104

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_2f90

    const/16 v24, 0x105

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_2f98

    const/16 v24, 0x106

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_2fa0

    const/16 v24, 0x107

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_2fa8

    const/16 v24, 0x108

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_2fb0

    const/16 v24, 0x109

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_2fb8

    const/16 v24, 0x10a

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_2fc0

    const/16 v24, 0x10b

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_2fc8

    const/16 v24, 0x10c

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_2fd0

    const/16 v24, 0x10d

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_2fd8

    const/16 v24, 0x10e

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_2fe0

    const/16 v24, 0x10f

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_2fe8

    const/16 v24, 0x110

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_2ff0

    const/16 v24, 0x111

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_2ff8

    const/16 v24, 0x112

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_3000

    const/16 v24, 0x113

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_3008

    const/16 v24, 0x114

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_3010

    const/16 v24, 0x115

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_3018

    const/16 v24, 0x116

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_3020

    const/16 v24, 0x117

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_3028

    const/16 v24, 0x118

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_3030

    const/16 v24, 0x119

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_3038

    const/16 v24, 0x11a

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_3040

    const/16 v24, 0x11b

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_3048

    const/16 v24, 0x11c

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_3050

    const/16 v24, 0x11d

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_3058

    const/16 v24, 0x11e

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_3060

    const/16 v24, 0x11f

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_3068

    const/16 v24, 0x120

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_3070

    const/16 v24, 0x121

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_3078

    const/16 v24, 0x122

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_3080

    const/16 v24, 0x123

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_3088

    const/16 v24, 0x124

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_3090

    const/16 v24, 0x125

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_3098

    const/16 v24, 0x126

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_30a0

    const/16 v24, 0x127

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_30a8

    const/16 v24, 0x128

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_30b0

    const/16 v24, 0x129

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_30b8

    const/16 v24, 0x12a

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_30c0

    const/16 v24, 0x12b

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_30c8

    const/16 v24, 0x12c

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_30d0

    const/16 v24, 0x12d

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_30d8

    const/16 v24, 0x12e

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_30e0

    const/16 v24, 0x12f

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_30e8

    const/16 v24, 0x130

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_30f0

    const/16 v24, 0x131

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_30f8

    const/16 v24, 0x132

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_3100

    const/16 v24, 0x133

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_3108

    const/16 v24, 0x134

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_3110

    const/16 v24, 0x135

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_3118

    const/16 v24, 0x136

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_3120

    const/16 v24, 0x137

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_3128

    const/16 v24, 0x138

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_3130

    const/16 v24, 0x139

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_3138

    const/16 v24, 0x13a

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_3140

    const/16 v24, 0x13b

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_3148

    const/16 v24, 0x13c

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_3150

    const/16 v24, 0x13d

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_3158

    const/16 v24, 0x13e

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_3160

    const/16 v24, 0x13f

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_3168

    const/16 v24, 0x140

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_3170

    const/16 v24, 0x141

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_3178

    const/16 v24, 0x142

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_3180

    const/16 v24, 0x143

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_3188

    const/16 v24, 0x144

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_3190

    const/16 v24, 0x145

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_3198

    const/16 v24, 0x146

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_31a0

    const/16 v24, 0x147

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_31a8

    const/16 v24, 0x148

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_31b0

    const/16 v24, 0x149

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_31b8

    const/16 v24, 0x14a

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_31c0

    const/16 v24, 0x14b

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_31c8

    const/16 v24, 0x14c

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_31d0

    const/16 v24, 0x14d

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_31d8

    const/16 v24, 0x14e

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_31e0

    const/16 v24, 0x14f

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_31e8

    const/16 v24, 0x150

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_31f0

    const/16 v24, 0x151

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_31f8

    const/16 v24, 0x152

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_3200

    const/16 v24, 0x153

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_3208

    const/16 v24, 0x154

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_3210

    const/16 v24, 0x155

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_3218

    const/16 v24, 0x156

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_3220

    const/16 v24, 0x157

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_3228

    const/16 v24, 0x158

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_3230

    const/16 v24, 0x159

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_3238

    const/16 v24, 0x15a

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_3240

    const/16 v24, 0x15b

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_3248

    const/16 v24, 0x15c

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_3250

    const/16 v24, 0x15d

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_3258

    const/16 v24, 0x15e

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_3260

    const/16 v24, 0x15f

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_3268

    const/16 v24, 0x160

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_3270

    const/16 v24, 0x161

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_3278

    const/16 v24, 0x162

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_3280

    const/16 v24, 0x163

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_3288

    const/16 v24, 0x164

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_3290

    const/16 v24, 0x165

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_3298

    const/16 v24, 0x166

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_32a0

    const/16 v24, 0x167

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_32a8

    const/16 v24, 0x168

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_32b0

    const/16 v24, 0x169

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_32b8

    const/16 v24, 0x16a

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_32c0

    const/16 v24, 0x16b

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_32c8

    const/16 v24, 0x16c

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_32d0

    const/16 v24, 0x16d

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_32d8

    const/16 v24, 0x16e

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_32e0

    const/16 v24, 0x16f

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_32e8

    const/16 v24, 0x170

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_32f0

    const/16 v24, 0x171

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_32f8

    const/16 v24, 0x172

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_3300

    const/16 v24, 0x173

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_3308

    const/16 v24, 0x174

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_3310

    const/16 v24, 0x175

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_3318

    const/16 v24, 0x176

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_3320

    const/16 v24, 0x177

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_3328

    const/16 v24, 0x178

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_3330

    const/16 v24, 0x179

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_3338

    const/16 v24, 0x17a

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_3340

    const/16 v24, 0x17b

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_3348

    const/16 v24, 0x17c

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_3350

    const/16 v24, 0x17d

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_3358

    const/16 v24, 0x17e

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_3360

    const/16 v24, 0x17f

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_3368

    const/16 v24, 0x180

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_3370

    const/16 v24, 0x181

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_3378

    const/16 v24, 0x182

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_3380

    const/16 v24, 0x183

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_3388

    const/16 v24, 0x184

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_3390

    const/16 v24, 0x185

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_3398

    const/16 v24, 0x186

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_33a0

    const/16 v24, 0x187

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_33a8

    const/16 v24, 0x188

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_33b0

    const/16 v24, 0x189

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_33b8

    const/16 v24, 0x18a

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_33c0

    const/16 v24, 0x18b

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_33c8

    const/16 v24, 0x18c

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_33d0

    const/16 v24, 0x18d

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_33d8

    const/16 v24, 0x18e

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_33e0

    const/16 v24, 0x18f

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_33e8

    const/16 v24, 0x190

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_33f0

    const/16 v24, 0x191

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_33f8

    const/16 v24, 0x192

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_3400

    const/16 v24, 0x193

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_3408

    const/16 v24, 0x194

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_3410

    const/16 v24, 0x195

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_3418

    const/16 v24, 0x196

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_3420

    const/16 v24, 0x197

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_3428

    const/16 v24, 0x198

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_3430

    const/16 v24, 0x199

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_3438

    const/16 v24, 0x19a

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_3440

    const/16 v24, 0x19b

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_3448

    const/16 v24, 0x19c

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_3450

    const/16 v24, 0x19d

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_3458

    const/16 v24, 0x19e

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_3460

    const/16 v24, 0x19f

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_3468

    const/16 v24, 0x1a0

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_3470

    const/16 v24, 0x1a1

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_3478

    const/16 v24, 0x1a2

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_3480

    const/16 v24, 0x1a3

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_3488

    const/16 v24, 0x1a4

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_3490

    const/16 v24, 0x1a5

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_3498

    const/16 v24, 0x1a6

    aput-object v3, v1, v24

    new-array v3, v2, [B

    fill-array-data v3, :array_34a0

    const/16 v24, 0x1a7

    aput-object v3, v1, v24

    sput-object v1, Lcom/android/common/sort/HanziToPinyin;->PINYINS:[[B

    const/16 v1, 0x1b1

    new-array v1, v1, [[Ljava/lang/String;

    const-string v3, "a"

    const-string/jumbo v0, "ㄚ"

    filled-new-array {v3, v0}, [Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v4

    const-string v0, "ai"

    const-string/jumbo v3, "ㄞ"

    filled-new-array {v0, v3}, [Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v5

    const-string v0, "an"

    const-string/jumbo v3, "ㄢ"

    filled-new-array {v0, v3}, [Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v6

    const-string v0, "ang"

    const-string/jumbo v3, "ㄤ"

    filled-new-array {v0, v3}, [Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v7

    const-string v0, "ao"

    const-string/jumbo v3, "ㄠ"

    filled-new-array {v0, v3}, [Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v8

    const-string v0, "au"

    const-string/jumbo v3, "ㄠ"

    filled-new-array {v0, v3}, [Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v9

    const-string v0, "ba"

    const-string/jumbo v3, "ㄅㄚ"

    filled-new-array {v0, v3}, [Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    const-string v0, "bai"

    const-string/jumbo v2, "ㄅㄞ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v10

    const-string v0, "ban"

    const-string/jumbo v2, "ㄅㄢ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v11

    const-string v0, "bang"

    const-string/jumbo v2, "ㄅㄤ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v12

    const-string v0, "bao"

    const-string/jumbo v2, "ㄅㄠ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v13

    const-string v0, "bei"

    const-string/jumbo v2, "ㄅㄟ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v14

    const-string v0, "ben"

    const-string/jumbo v2, "ㄅㄣ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v15

    const-string v0, "beng"

    const-string/jumbo v2, "ㄅㄥ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v16

    const-string v0, "bi"

    const-string/jumbo v2, "ㄅㄧ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v17

    const-string v0, "bian"

    const-string/jumbo v2, "ㄅㄧㄢ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v18

    const-string v0, "biao"

    const-string/jumbo v2, "ㄅㄧㄠ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v19

    const-string v0, "bie"

    const-string/jumbo v2, "ㄅㄧㄝ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v20

    const-string v0, "bin"

    const-string/jumbo v2, "ㄅㄧㄣ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v21

    const-string v0, "bing"

    const-string/jumbo v2, "ㄅㄧㄥ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v22

    const-string v0, "bo"

    const-string/jumbo v2, "ㄅㄛ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v23

    const-string v0, "bu"

    const-string/jumbo v2, "ㄅㄨ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x15

    aput-object v0, v1, v2

    const-string v0, "bun"

    const-string/jumbo v2, "ㄅㄨㄣ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x16

    aput-object v0, v1, v2

    const-string v0, "ca"

    const-string/jumbo v2, "ㄘㄚ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x17

    aput-object v0, v1, v2

    const-string v0, "cai"

    const-string/jumbo v2, "ㄘㄞ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x18

    aput-object v0, v1, v2

    const-string v0, "can"

    const-string/jumbo v2, "ㄘㄢ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x19

    aput-object v0, v1, v2

    const-string v0, "cang"

    const-string/jumbo v2, "ㄘㄤ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x1a

    aput-object v0, v1, v2

    const-string v0, "cao"

    const-string/jumbo v2, "ㄘㄠ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x1b

    aput-object v0, v1, v2

    const-string v0, "ce"

    const-string/jumbo v2, "ㄘㄜ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x1c

    aput-object v0, v1, v2

    const-string v0, "cen"

    const-string/jumbo v2, "ㄘㄣ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x1d

    aput-object v0, v1, v2

    const-string v0, "ceng"

    const-string/jumbo v2, "ㄘㄥ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x1e

    aput-object v0, v1, v2

    const-string v0, "cha"

    const-string/jumbo v2, "ㄔㄚ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x1f

    aput-object v0, v1, v2

    const-string v0, "chai"

    const-string/jumbo v2, "ㄔㄞ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x20

    aput-object v0, v1, v2

    const-string v0, "chan"

    const-string/jumbo v2, "ㄔㄢ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x21

    aput-object v0, v1, v2

    const-string v0, "chang"

    const-string/jumbo v2, "ㄔㄤ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x22

    aput-object v0, v1, v2

    const-string v0, "chao"

    const-string/jumbo v2, "ㄔㄠ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x23

    aput-object v0, v1, v2

    const-string v0, "che"

    const-string/jumbo v2, "ㄔㄜ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x24

    aput-object v0, v1, v2

    const-string v0, "chen"

    const-string/jumbo v2, "ㄔㄣ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x25

    aput-object v0, v1, v2

    const-string v0, "cheng"

    const-string/jumbo v2, "ㄔㄥ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x26

    aput-object v0, v1, v2

    const-string v0, "chi"

    const-string/jumbo v2, "ㄔ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x27

    aput-object v0, v1, v2

    const-string v0, "chong"

    const-string/jumbo v2, "ㄔㄨㄥ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x28

    aput-object v0, v1, v2

    const-string v0, "chou"

    const-string/jumbo v2, "ㄔㄡ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x29

    aput-object v0, v1, v2

    const-string v0, "chu"

    const-string/jumbo v2, "ㄔㄨ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x2a

    aput-object v0, v1, v2

    const-string v0, "chua"

    const-string/jumbo v2, "ㄔㄨㄚ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x2b

    aput-object v0, v1, v2

    const-string v0, "chuai"

    const-string/jumbo v2, "ㄔㄨㄞ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x2c

    aput-object v0, v1, v2

    const-string v0, "chuan"

    const-string/jumbo v2, "ㄔㄨㄢ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x2d

    aput-object v0, v1, v2

    const-string v0, "chuang"

    const-string/jumbo v2, "ㄔㄨㄤ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x2e

    aput-object v0, v1, v2

    const-string v0, "chui"

    const-string/jumbo v2, "ㄔㄨㄟ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x2f

    aput-object v0, v1, v2

    const-string v0, "chun"

    const-string/jumbo v2, "ㄔㄨㄣ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x30

    aput-object v0, v1, v2

    const-string v0, "chuo"

    const-string/jumbo v2, "ㄔㄨㄛ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x31

    aput-object v0, v1, v2

    const-string v0, "ci"

    const-string/jumbo v2, "ㄘ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x32

    aput-object v0, v1, v2

    const-string v0, "cong"

    const-string/jumbo v2, "ㄘㄨㄥ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x33

    aput-object v0, v1, v2

    const-string v0, "cou"

    const-string/jumbo v2, "ㄘㄡ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x34

    aput-object v0, v1, v2

    const-string v0, "cu"

    const-string/jumbo v2, "ㄘㄨ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x35

    aput-object v0, v1, v2

    const-string v0, "cuan"

    const-string/jumbo v2, "ㄘㄨㄢ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x36

    aput-object v0, v1, v2

    const-string v0, "cui"

    const-string/jumbo v2, "ㄘㄨㄟ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x37

    aput-object v0, v1, v2

    const-string v0, "cun"

    const-string/jumbo v2, "ㄘㄨㄣ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x38

    aput-object v0, v1, v2

    const-string v0, "cuo"

    const-string/jumbo v2, "ㄘㄨㄛ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x39

    aput-object v0, v1, v2

    const-string v0, "da"

    const-string/jumbo v2, "ㄉㄚ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x3a

    aput-object v0, v1, v2

    const-string v0, "dai"

    const-string/jumbo v2, "ㄉㄞ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x3b

    aput-object v0, v1, v2

    const-string v0, "dan"

    const-string/jumbo v2, "ㄉㄢ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x3c

    aput-object v0, v1, v2

    const-string v0, "dang"

    const-string/jumbo v2, "ㄉㄤ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x3d

    aput-object v0, v1, v2

    const-string v0, "dao"

    const-string/jumbo v2, "ㄉㄠ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x3e

    aput-object v0, v1, v2

    const-string v0, "de"

    const-string/jumbo v2, "ㄉㄜ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x3f

    aput-object v0, v1, v2

    const-string v0, "dei"

    const-string/jumbo v2, "ㄉㄟ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x40

    aput-object v0, v1, v2

    const-string v0, "den"

    const-string/jumbo v2, "ㄉㄣ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x41

    aput-object v0, v1, v2

    const-string v0, "deng"

    const-string/jumbo v2, "ㄉㄥ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x42

    aput-object v0, v1, v2

    const-string v0, "di"

    const-string/jumbo v2, "ㄉㄧ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x43

    aput-object v0, v1, v2

    const-string v0, "dia"

    const-string/jumbo v2, "ㄉㄧㄚ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x44

    aput-object v0, v1, v2

    const-string v0, "dian"

    const-string/jumbo v2, "ㄉㄧㄢ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x45

    aput-object v0, v1, v2

    const-string v0, "diang"

    const-string/jumbo v2, "ㄉㄧㄤ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x46

    aput-object v0, v1, v2

    const-string v0, "diao"

    const-string/jumbo v2, "ㄉㄧㄠ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x47

    aput-object v0, v1, v2

    const-string v0, "die"

    const-string/jumbo v2, "ㄉㄧㄝ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x48

    aput-object v0, v1, v2

    const-string v0, "din"

    const-string/jumbo v2, "ㄉㄧㄣ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x49

    aput-object v0, v1, v2

    const-string v0, "ding"

    const-string/jumbo v2, "ㄉㄧㄥ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x4a

    aput-object v0, v1, v2

    const-string v0, "diu"

    const-string/jumbo v2, "ㄉㄧㄡ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x4b

    aput-object v0, v1, v2

    const-string v0, "dong"

    const-string/jumbo v2, "ㄉㄨㄥ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x4c

    aput-object v0, v1, v2

    const-string v0, "dou"

    const-string/jumbo v2, "ㄉㄡ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x4d

    aput-object v0, v1, v2

    const-string v0, "du"

    const-string/jumbo v2, "ㄉㄨ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x4e

    aput-object v0, v1, v2

    const-string v0, "duan"

    const-string/jumbo v2, "ㄉㄨㄢ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x4f

    aput-object v0, v1, v2

    const-string v0, "dui"

    const-string/jumbo v2, "ㄉㄨㄟ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x50

    aput-object v0, v1, v2

    const-string v0, "dun"

    const-string/jumbo v2, "ㄉㄨㄣ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x51

    aput-object v0, v1, v2

    const-string v0, "duo"

    const-string/jumbo v2, "ㄉㄨㄛ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x52

    aput-object v0, v1, v2

    const-string v0, "e"

    const-string/jumbo v2, "ㄜ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x53

    aput-object v0, v1, v2

    const-string v0, "ea"

    const-string/jumbo v2, "ㄝ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x54

    aput-object v0, v1, v2

    const-string v0, "eh"

    const-string/jumbo v2, "ㄝ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x55

    aput-object v0, v1, v2

    const-string v0, "ei"

    const-string/jumbo v2, "ㄟ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x56

    aput-object v0, v1, v2

    const-string v0, "en"

    const-string/jumbo v2, "ㄣ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x57

    aput-object v0, v1, v2

    const-string v0, "eng"

    const-string/jumbo v2, "ㄥ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x58

    aput-object v0, v1, v2

    const-string v0, "er"

    const-string/jumbo v2, "ㄦ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x59

    aput-object v0, v1, v2

    const-string v0, "fa"

    const-string/jumbo v2, "ㄈㄚ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x5a

    aput-object v0, v1, v2

    const-string v0, "fan"

    const-string/jumbo v2, "ㄈㄢ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x5b

    aput-object v0, v1, v2

    const-string v0, "fang"

    const-string/jumbo v2, "ㄈㄤ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x5c

    aput-object v0, v1, v2

    const-string v0, "fei"

    const-string/jumbo v2, "ㄈㄟ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x5d

    aput-object v0, v1, v2

    const-string v0, "fen"

    const-string/jumbo v2, "ㄈㄣ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x5e

    aput-object v0, v1, v2

    const-string v0, "feng"

    const-string/jumbo v2, "ㄈㄥ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x5f

    aput-object v0, v1, v2

    const-string v0, "fiao"

    const-string/jumbo v2, "ㄈㄧㄠ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x60

    aput-object v0, v1, v2

    const-string v0, "fo"

    const-string/jumbo v2, "ㄈㄛ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x61

    aput-object v0, v1, v2

    const-string v0, "fou"

    const-string/jumbo v2, "ㄈㄡ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x62

    aput-object v0, v1, v2

    const-string v0, "fu"

    const-string/jumbo v2, "ㄈㄨ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x63

    aput-object v0, v1, v2

    const-string v0, "ga"

    const-string/jumbo v2, "ㄍㄚ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x64

    aput-object v0, v1, v2

    const-string v0, "gai"

    const-string/jumbo v2, "ㄍㄞ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x65

    aput-object v0, v1, v2

    const-string v0, "gan"

    const-string/jumbo v2, "ㄍㄢ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x66

    aput-object v0, v1, v2

    const-string v0, "gang"

    const-string/jumbo v2, "ㄍㄤ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x67

    aput-object v0, v1, v2

    const-string v0, "gao"

    const-string/jumbo v2, "ㄍㄠ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x68

    aput-object v0, v1, v2

    const-string v0, "ge"

    const-string/jumbo v2, "ㄍㄜ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x69

    aput-object v0, v1, v2

    const-string v0, "gei"

    const-string/jumbo v2, "ㄍㄟ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x6a

    aput-object v0, v1, v2

    const-string v0, "gen"

    const-string/jumbo v2, "ㄍㄣ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x6b

    aput-object v0, v1, v2

    const-string v0, "geng"

    const-string/jumbo v2, "ㄍㄥ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x6c

    aput-object v0, v1, v2

    const-string v0, "gi"

    const-string/jumbo v2, "ㄍㄧ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x6d

    aput-object v0, v1, v2

    const-string v0, "gong"

    const-string/jumbo v2, "ㄍㄨㄥ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x6e

    aput-object v0, v1, v2

    const-string v0, "gou"

    const-string/jumbo v2, "ㄍㄡ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x6f

    aput-object v0, v1, v2

    const-string v0, "gu"

    const-string/jumbo v2, "ㄍㄨ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x70

    aput-object v0, v1, v2

    const-string v0, "gua"

    const-string/jumbo v2, "ㄍㄨㄚ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x71

    aput-object v0, v1, v2

    const-string v0, "guai"

    const-string/jumbo v2, "ㄍㄨㄞ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x72

    aput-object v0, v1, v2

    const-string v0, "guan"

    const-string/jumbo v2, "ㄍㄨㄢ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x73

    aput-object v0, v1, v2

    const-string v0, "guang"

    const-string/jumbo v2, "ㄍㄨㄤ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x74

    aput-object v0, v1, v2

    const-string v0, "gui"

    const-string/jumbo v2, "ㄍㄨㄟ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x75

    aput-object v0, v1, v2

    const-string v0, "gun"

    const-string/jumbo v2, "ㄍㄨㄣ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x76

    aput-object v0, v1, v2

    const-string v0, "guo"

    const-string/jumbo v2, "ㄍㄨㄛ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x77

    aput-object v0, v1, v2

    const-string v0, "ha"

    const-string/jumbo v2, "ㄏㄚ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x78

    aput-object v0, v1, v2

    const-string v0, "hai"

    const-string/jumbo v2, "ㄏㄞ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x79

    aput-object v0, v1, v2

    const-string v0, "han"

    const-string/jumbo v2, "ㄏㄢ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x7a

    aput-object v0, v1, v2

    const-string v0, "hang"

    const-string/jumbo v2, "ㄏㄤ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x7b

    aput-object v0, v1, v2

    const-string v0, "hao"

    const-string/jumbo v2, "ㄏㄠ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x7c

    aput-object v0, v1, v2

    const-string v0, "he"

    const-string/jumbo v2, "ㄏㄜ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x7d

    aput-object v0, v1, v2

    const-string v0, "hei"

    const-string/jumbo v2, "ㄏㄟ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x7e

    aput-object v0, v1, v2

    const-string v0, "hen"

    const-string/jumbo v2, "ㄏㄣ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x7f

    aput-object v0, v1, v2

    const-string v0, "heng"

    const-string/jumbo v2, "ㄏㄥ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x80

    aput-object v0, v1, v2

    const-string v0, "hm"

    const-string/jumbo v2, "ㄏㄇ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x81

    aput-object v0, v1, v2

    const-string v0, "ho"

    const-string/jumbo v2, "ㄏㄛ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x82

    aput-object v0, v1, v2

    const-string v0, "hong"

    const-string/jumbo v2, "ㄏㄨㄥ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x83

    aput-object v0, v1, v2

    const-string v0, "hou"

    const-string/jumbo v2, "ㄏㄡ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x84

    aput-object v0, v1, v2

    const-string v0, "hu"

    const-string/jumbo v2, "ㄏㄨ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x85

    aput-object v0, v1, v2

    const-string v0, "hua"

    const-string/jumbo v2, "ㄏㄨㄚ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x86

    aput-object v0, v1, v2

    const-string v0, "huai"

    const-string/jumbo v2, "ㄏㄨㄞ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x87

    aput-object v0, v1, v2

    const-string v0, "huan"

    const-string/jumbo v2, "ㄏㄨㄢ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x88

    aput-object v0, v1, v2

    const-string v0, "huang"

    const-string/jumbo v2, "ㄏㄨㄤ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x89

    aput-object v0, v1, v2

    const-string v0, "hui"

    const-string/jumbo v2, "ㄏㄨㄟ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x8a

    aput-object v0, v1, v2

    const-string v0, "hun"

    const-string/jumbo v2, "ㄏㄨㄣ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x8b

    aput-object v0, v1, v2

    const-string v0, "huo"

    const-string/jumbo v2, "ㄏㄨㄛ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x8c

    aput-object v0, v1, v2

    const-string v0, "i"

    const-string/jumbo v2, "ㄧ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x8d

    aput-object v0, v1, v2

    const-string v0, "iu"

    const-string/jumbo v2, "ㄩ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x8e

    aput-object v0, v1, v2

    const-string v0, "ji"

    const-string/jumbo v2, "ㄐㄧ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x8f

    aput-object v0, v1, v2

    const-string v0, "jia"

    const-string/jumbo v2, "ㄐㄧㄚ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x90

    aput-object v0, v1, v2

    const-string v0, "jian"

    const-string/jumbo v2, "ㄐㄧㄢ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x91

    aput-object v0, v1, v2

    const-string v0, "jiang"

    const-string/jumbo v2, "ㄐㄧㄤ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x92

    aput-object v0, v1, v2

    const-string v0, "jiao"

    const-string/jumbo v2, "ㄐㄧㄠ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x93

    aput-object v0, v1, v2

    const-string v0, "jie"

    const-string/jumbo v2, "ㄐㄧㄝ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x94

    aput-object v0, v1, v2

    const-string v0, "jin"

    const-string/jumbo v2, "ㄐㄧㄣ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x95

    aput-object v0, v1, v2

    const-string v0, "jing"

    const-string/jumbo v2, "ㄐㄧㄥ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x96

    aput-object v0, v1, v2

    const-string v0, "jiong"

    const-string/jumbo v2, "ㄐㄩㄥ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x97

    aput-object v0, v1, v2

    const-string v0, "jiu"

    const-string/jumbo v2, "ㄐㄧㄡ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x98

    aput-object v0, v1, v2

    const-string v0, "ju"

    const-string/jumbo v2, "ㄐㄩ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x99

    aput-object v0, v1, v2

    const-string v0, "juan"

    const-string/jumbo v2, "ㄐㄩㄢ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x9a

    aput-object v0, v1, v2

    const-string v0, "jue"

    const-string/jumbo v2, "ㄐㄩㄝ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x9b

    aput-object v0, v1, v2

    const-string v0, "jun"

    const-string/jumbo v2, "ㄐㄩㄣ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x9c

    aput-object v0, v1, v2

    const-string v0, "ka"

    const-string/jumbo v2, "ㄎㄚ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x9d

    aput-object v0, v1, v2

    const-string v0, "kai"

    const-string/jumbo v2, "ㄎㄞ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x9e

    aput-object v0, v1, v2

    const-string v0, "kan"

    const-string/jumbo v2, "ㄎㄢ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x9f

    aput-object v0, v1, v2

    const-string v0, "kang"

    const-string/jumbo v2, "ㄎㄤ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0xa0

    aput-object v0, v1, v2

    const-string v0, "kao"

    const-string/jumbo v2, "ㄎㄠ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0xa1

    aput-object v0, v1, v2

    const-string v0, "ke"

    const-string/jumbo v2, "ㄎㄜ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0xa2

    aput-object v0, v1, v2

    const-string v0, "ken"

    const-string/jumbo v2, "ㄎㄣ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0xa3

    aput-object v0, v1, v2

    const-string v0, "keng"

    const-string/jumbo v2, "ㄎㄥ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0xa4

    aput-object v0, v1, v2

    const-string v0, "kong"

    const-string/jumbo v2, "ㄎㄨㄥ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0xa5

    aput-object v0, v1, v2

    const-string v0, "kou"

    const-string/jumbo v2, "ㄎㄡ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0xa6

    aput-object v0, v1, v2

    const-string v0, "ku"

    const-string/jumbo v2, "ㄎㄨ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0xa7

    aput-object v0, v1, v2

    const-string v0, "kua"

    const-string/jumbo v2, "ㄎㄨㄚ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0xa8

    aput-object v0, v1, v2

    const-string v0, "kuai"

    const-string/jumbo v2, "ㄎㄨㄞ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0xa9

    aput-object v0, v1, v2

    const-string v0, "kuan"

    const-string/jumbo v2, "ㄎㄨㄢ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0xaa

    aput-object v0, v1, v2

    const-string v0, "kuang"

    const-string/jumbo v2, "ㄎㄨㄤ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0xab

    aput-object v0, v1, v2

    const-string v0, "kui"

    const-string/jumbo v2, "ㄎㄨㄟ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0xac

    aput-object v0, v1, v2

    const-string v0, "kun"

    const-string/jumbo v2, "ㄎㄨㄣ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0xad

    aput-object v0, v1, v2

    const-string v0, "kuo"

    const-string/jumbo v2, "ㄎㄨㄛ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0xae

    aput-object v0, v1, v2

    const-string v0, "la"

    const-string/jumbo v2, "ㄌㄚ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0xaf

    aput-object v0, v1, v2

    const-string v0, "lai"

    const-string/jumbo v2, "ㄌㄞ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0xb0

    aput-object v0, v1, v2

    const-string v0, "lan"

    const-string/jumbo v2, "ㄌㄢ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0xb1

    aput-object v0, v1, v2

    const-string v0, "lang"

    const-string/jumbo v2, "ㄌㄤ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0xb2

    aput-object v0, v1, v2

    const-string v0, "lao"

    const-string/jumbo v2, "ㄌㄠ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0xb3

    aput-object v0, v1, v2

    const-string v0, "le"

    const-string/jumbo v2, "ㄌㄜ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0xb4

    aput-object v0, v1, v2

    const-string v0, "lei"

    const-string/jumbo v2, "ㄌㄟ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0xb5

    aput-object v0, v1, v2

    const-string v0, "leng"

    const-string/jumbo v2, "ㄌㄥ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0xb6

    aput-object v0, v1, v2

    const-string v0, "li"

    const-string/jumbo v2, "ㄌㄧ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0xb7

    aput-object v0, v1, v2

    const-string v0, "lia"

    const-string/jumbo v2, "ㄌㄧㄚ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0xb8

    aput-object v0, v1, v2

    const-string v0, "lian"

    const-string/jumbo v2, "ㄌㄧㄢ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0xb9

    aput-object v0, v1, v2

    const-string v0, "liang"

    const-string/jumbo v2, "ㄌㄧㄤ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0xba

    aput-object v0, v1, v2

    const-string v0, "liao"

    const-string/jumbo v2, "ㄌㄧㄠ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0xbb

    aput-object v0, v1, v2

    const-string v0, "lie"

    const-string/jumbo v2, "ㄌㄧㄝ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0xbc

    aput-object v0, v1, v2

    const-string v0, "lin"

    const-string/jumbo v2, "ㄌㄧㄣ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0xbd

    aput-object v0, v1, v2

    const-string v0, "ling"

    const-string/jumbo v2, "ㄌㄧㄥ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0xbe

    aput-object v0, v1, v2

    const-string v0, "liu"

    const-string/jumbo v2, "ㄌㄧㄡ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0xbf

    aput-object v0, v1, v2

    const-string v0, "lo"

    const-string/jumbo v2, "ㄌㄛ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0xc0

    aput-object v0, v1, v2

    const-string v0, "long"

    const-string/jumbo v2, "ㄌㄨㄥ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0xc1

    aput-object v0, v1, v2

    const-string v0, "lou"

    const-string/jumbo v2, "ㄌㄡ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0xc2

    aput-object v0, v1, v2

    const-string v0, "lu"

    const-string/jumbo v2, "ㄌㄨ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0xc3

    aput-object v0, v1, v2

    const-string v0, "luan"

    const-string/jumbo v2, "ㄌㄨㄢ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0xc4

    aput-object v0, v1, v2

    const-string v0, "lue"

    const-string/jumbo v2, "ㄌㄩㄝ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0xc5

    aput-object v0, v1, v2

    const-string v0, "lun"

    const-string/jumbo v2, "ㄌㄨㄣ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0xc6

    aput-object v0, v1, v2

    const-string v0, "luo"

    const-string/jumbo v2, "ㄌㄨㄛ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0xc7

    aput-object v0, v1, v2

    const-string v0, "lv"

    const-string/jumbo v2, "ㄌㄩ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0xc8

    aput-object v0, v1, v2

    const-string v0, "lvan"

    const-string/jumbo v2, "ㄌㄩㄢ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0xc9

    aput-object v0, v1, v2

    const-string v0, "lve"

    const-string/jumbo v2, "ㄌㄩㄝ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0xca

    aput-object v0, v1, v2

    const-string v0, "m"

    const-string/jumbo v2, "ㄇ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0xcb

    aput-object v0, v1, v2

    const-string/jumbo v0, "ma"

    const-string/jumbo v2, "ㄇㄚ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0xcc

    aput-object v0, v1, v2

    const-string/jumbo v0, "mai"

    const-string/jumbo v2, "ㄇㄞ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0xcd

    aput-object v0, v1, v2

    const-string/jumbo v0, "man"

    const-string/jumbo v2, "ㄇㄢ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0xce

    aput-object v0, v1, v2

    const-string/jumbo v0, "mang"

    const-string/jumbo v2, "ㄇㄤ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0xcf

    aput-object v0, v1, v2

    const-string/jumbo v0, "mao"

    const-string/jumbo v2, "ㄇㄠ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0xd0

    aput-object v0, v1, v2

    const-string/jumbo v0, "me"

    const-string/jumbo v2, "ㄇㄜ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0xd1

    aput-object v0, v1, v2

    const-string/jumbo v0, "mei"

    const-string/jumbo v2, "ㄇㄟ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0xd2

    aput-object v0, v1, v2

    const-string/jumbo v0, "men"

    const-string/jumbo v2, "ㄇㄣ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0xd3

    aput-object v0, v1, v2

    const-string/jumbo v0, "meng"

    const-string/jumbo v2, "ㄇㄥ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0xd4

    aput-object v0, v1, v2

    const-string/jumbo v0, "mi"

    const-string/jumbo v2, "ㄇㄧ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0xd5

    aput-object v0, v1, v2

    const-string/jumbo v0, "mian"

    const-string/jumbo v2, "ㄇㄧㄢ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0xd6

    aput-object v0, v1, v2

    const-string/jumbo v0, "miao"

    const-string/jumbo v2, "ㄇㄧㄠ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0xd7

    aput-object v0, v1, v2

    const-string/jumbo v0, "mie"

    const-string/jumbo v2, "ㄇㄧㄝ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0xd8

    aput-object v0, v1, v2

    const-string/jumbo v0, "min"

    const-string/jumbo v2, "ㄇㄧㄣ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0xd9

    aput-object v0, v1, v2

    const-string/jumbo v0, "ming"

    const-string/jumbo v2, "ㄇㄧㄥ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0xda

    aput-object v0, v1, v2

    const-string/jumbo v0, "miu"

    const-string/jumbo v2, "ㄇㄧㄡ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0xdb

    aput-object v0, v1, v2

    const-string/jumbo v0, "mo"

    const-string/jumbo v2, "ㄇㄛ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0xdc

    aput-object v0, v1, v2

    const-string/jumbo v0, "mou"

    const-string/jumbo v2, "ㄇㄡ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0xdd

    aput-object v0, v1, v2

    const-string/jumbo v0, "mu"

    const-string/jumbo v2, "ㄇㄨ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0xde

    aput-object v0, v1, v2

    const-string/jumbo v0, "n"

    const-string/jumbo v2, "ㄋ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0xdf

    aput-object v0, v1, v2

    const-string/jumbo v0, "na"

    const-string/jumbo v2, "ㄋㄚ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0xe0

    aput-object v0, v1, v2

    const-string/jumbo v0, "nai"

    const-string/jumbo v2, "ㄋㄞ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0xe1

    aput-object v0, v1, v2

    const-string/jumbo v0, "nan"

    const-string/jumbo v2, "ㄋㄢ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0xe2

    aput-object v0, v1, v2

    const-string/jumbo v0, "nang"

    const-string/jumbo v2, "ㄋㄤ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0xe3

    aput-object v0, v1, v2

    const-string/jumbo v0, "nao"

    const-string/jumbo v2, "ㄋㄠ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0xe4

    aput-object v0, v1, v2

    const-string/jumbo v0, "ne"

    const-string/jumbo v2, "ㄋㄜ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0xe5

    aput-object v0, v1, v2

    const-string/jumbo v0, "nei"

    const-string/jumbo v2, "ㄋㄟ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0xe6

    aput-object v0, v1, v2

    const-string/jumbo v0, "nen"

    const-string/jumbo v2, "ㄋㄣ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0xe7

    aput-object v0, v1, v2

    const-string/jumbo v0, "neng"

    const-string/jumbo v2, "ㄋㄥ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0xe8

    aput-object v0, v1, v2

    const-string/jumbo v0, "ni"

    const-string/jumbo v2, "ㄋㄧ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0xe9

    aput-object v0, v1, v2

    const-string/jumbo v0, "nia"

    const-string/jumbo v2, "ㄋㄧㄚ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0xea

    aput-object v0, v1, v2

    const-string/jumbo v0, "nian"

    const-string/jumbo v2, "ㄋㄧㄢ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0xeb

    aput-object v0, v1, v2

    const-string/jumbo v0, "niang"

    const-string/jumbo v2, "ㄋㄧㄤ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0xec

    aput-object v0, v1, v2

    const-string/jumbo v0, "niao"

    const-string/jumbo v2, "ㄋㄧㄠ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0xed

    aput-object v0, v1, v2

    const-string/jumbo v0, "nie"

    const-string/jumbo v2, "ㄋㄧㄝ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0xee

    aput-object v0, v1, v2

    const-string/jumbo v0, "nin"

    const-string/jumbo v2, "ㄋㄧㄣ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0xef

    aput-object v0, v1, v2

    const-string/jumbo v0, "ning"

    const-string/jumbo v2, "ㄋㄧㄥ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0xf0

    aput-object v0, v1, v2

    const-string/jumbo v0, "niu"

    const-string/jumbo v2, "ㄋㄧㄡ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0xf1

    aput-object v0, v1, v2

    const-string/jumbo v0, "nong"

    const-string/jumbo v2, "ㄋㄨㄥ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0xf2

    aput-object v0, v1, v2

    const-string/jumbo v0, "nou"

    const-string/jumbo v2, "ㄋㄡ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0xf3

    aput-object v0, v1, v2

    const-string/jumbo v0, "nu"

    const-string/jumbo v2, "ㄋㄨ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0xf4

    aput-object v0, v1, v2

    const-string/jumbo v0, "nuan"

    const-string/jumbo v2, "ㄋㄨㄢ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0xf5

    aput-object v0, v1, v2

    const-string/jumbo v0, "nue"

    const-string/jumbo v2, "ㄋㄩㄝ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0xf6

    aput-object v0, v1, v2

    const-string/jumbo v0, "nun"

    const-string/jumbo v2, "ㄋㄨㄣ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0xf7

    aput-object v0, v1, v2

    const-string/jumbo v0, "nuo"

    const-string/jumbo v2, "ㄋㄨㄛ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0xf8

    aput-object v0, v1, v2

    const-string/jumbo v0, "nv"

    const-string/jumbo v2, "ㄋㄩ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0xf9

    aput-object v0, v1, v2

    const-string/jumbo v0, "nve"

    const-string/jumbo v2, "ㄋㄩㄝ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0xfa

    aput-object v0, v1, v2

    const-string/jumbo v0, "o"

    const-string/jumbo v2, "ㄛ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0xfb

    aput-object v0, v1, v2

    const-string/jumbo v0, "ou"

    const-string/jumbo v2, "ㄡ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0xfc

    aput-object v0, v1, v2

    const-string/jumbo v0, "pa"

    const-string/jumbo v2, "ㄆㄚ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0xfd

    aput-object v0, v1, v2

    const-string/jumbo v0, "pai"

    const-string/jumbo v2, "ㄆㄞ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0xfe

    aput-object v0, v1, v2

    const-string/jumbo v0, "pan"

    const-string/jumbo v2, "ㄆㄢ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0xff

    aput-object v0, v1, v2

    const-string/jumbo v0, "pang"

    const-string/jumbo v2, "ㄆㄤ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x100

    aput-object v0, v1, v2

    const-string/jumbo v0, "pao"

    const-string/jumbo v2, "ㄆㄠ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x101

    aput-object v0, v1, v2

    const-string/jumbo v0, "pei"

    const-string/jumbo v2, "ㄆㄟ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x102

    aput-object v0, v1, v2

    const-string/jumbo v0, "pen"

    const-string/jumbo v2, "ㄆㄣ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x103

    aput-object v0, v1, v2

    const-string/jumbo v0, "peng"

    const-string/jumbo v2, "ㄆㄥ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x104

    aput-object v0, v1, v2

    const-string/jumbo v0, "pi"

    const-string/jumbo v2, "ㄆㄧ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x105

    aput-object v0, v1, v2

    const-string/jumbo v0, "pian"

    const-string/jumbo v2, "ㄆㄧㄢ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x106

    aput-object v0, v1, v2

    const-string/jumbo v0, "piao"

    const-string/jumbo v2, "ㄆㄧㄠ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x107

    aput-object v0, v1, v2

    const-string/jumbo v0, "pie"

    const-string/jumbo v2, "ㄆㄧㄝ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x108

    aput-object v0, v1, v2

    const-string/jumbo v0, "pin"

    const-string/jumbo v2, "ㄆㄧㄣ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x109

    aput-object v0, v1, v2

    const-string/jumbo v0, "ping"

    const-string/jumbo v2, "ㄆㄧㄥ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x10a

    aput-object v0, v1, v2

    const-string/jumbo v0, "po"

    const-string/jumbo v2, "ㄆㄛ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x10b

    aput-object v0, v1, v2

    const-string/jumbo v0, "pou"

    const-string/jumbo v2, "ㄆㄡ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x10c

    aput-object v0, v1, v2

    const-string/jumbo v0, "pu"

    const-string/jumbo v2, "ㄆㄨ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x10d

    aput-object v0, v1, v2

    const-string/jumbo v0, "qi"

    const-string/jumbo v2, "ㄑㄧ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x10e

    aput-object v0, v1, v2

    const-string/jumbo v0, "qia"

    const-string/jumbo v2, "ㄑㄧㄚ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x10f

    aput-object v0, v1, v2

    const-string/jumbo v0, "qian"

    const-string/jumbo v2, "ㄑㄧㄢ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x110

    aput-object v0, v1, v2

    const-string/jumbo v0, "qiang"

    const-string/jumbo v2, "ㄑㄧㄤ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x111

    aput-object v0, v1, v2

    const-string/jumbo v0, "qiao"

    const-string/jumbo v2, "ㄑㄧㄠ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x112

    aput-object v0, v1, v2

    const-string/jumbo v0, "qie"

    const-string/jumbo v2, "ㄑㄧㄝ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x113

    aput-object v0, v1, v2

    const-string/jumbo v0, "qin"

    const-string/jumbo v2, "ㄑㄧㄣ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x114

    aput-object v0, v1, v2

    const-string/jumbo v0, "qing"

    const-string/jumbo v2, "ㄑㄧㄥ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x115

    aput-object v0, v1, v2

    const-string/jumbo v0, "qiong"

    const-string/jumbo v2, "ㄑㄩㄥ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x116

    aput-object v0, v1, v2

    const-string/jumbo v0, "qiu"

    const-string/jumbo v2, "ㄑㄧㄡ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x117

    aput-object v0, v1, v2

    const-string/jumbo v0, "qu"

    const-string/jumbo v2, "ㄑㄩ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x118

    aput-object v0, v1, v2

    const-string/jumbo v0, "quan"

    const-string/jumbo v2, "ㄑㄩㄢ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x119

    aput-object v0, v1, v2

    const-string/jumbo v0, "que"

    const-string/jumbo v2, "ㄑㄩㄝ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x11a

    aput-object v0, v1, v2

    const-string/jumbo v0, "qun"

    const-string/jumbo v2, "ㄑㄩㄣ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x11b

    aput-object v0, v1, v2

    const-string/jumbo v0, "ra"

    const-string/jumbo v2, "ㄖㄚ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x11c

    aput-object v0, v1, v2

    const-string/jumbo v0, "ran"

    const-string/jumbo v2, "ㄖㄢ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x11d

    aput-object v0, v1, v2

    const-string/jumbo v0, "rang"

    const-string/jumbo v2, "ㄖㄤ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x11e

    aput-object v0, v1, v2

    const-string/jumbo v0, "rao"

    const-string/jumbo v2, "ㄖㄠ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x11f

    aput-object v0, v1, v2

    const-string/jumbo v0, "re"

    const-string/jumbo v2, "ㄖㄜ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x120

    aput-object v0, v1, v2

    const-string/jumbo v0, "ren"

    const-string/jumbo v2, "ㄖㄣ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x121

    aput-object v0, v1, v2

    const-string/jumbo v0, "reng"

    const-string/jumbo v2, "ㄖㄥ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x122

    aput-object v0, v1, v2

    const-string/jumbo v0, "ri"

    const-string/jumbo v2, "ㄖ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x123

    aput-object v0, v1, v2

    const-string/jumbo v0, "rong"

    const-string/jumbo v2, "ㄖㄨㄥ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x124

    aput-object v0, v1, v2

    const-string/jumbo v0, "rou"

    const-string/jumbo v2, "ㄖㄡ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x125

    aput-object v0, v1, v2

    const-string/jumbo v0, "ru"

    const-string/jumbo v2, "ㄖㄨ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x126

    aput-object v0, v1, v2

    const-string/jumbo v0, "ruan"

    const-string/jumbo v2, "ㄖㄨㄢ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x127

    aput-object v0, v1, v2

    const-string/jumbo v0, "rui"

    const-string/jumbo v2, "ㄖㄨㄟ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x128

    aput-object v0, v1, v2

    const-string/jumbo v0, "run"

    const-string/jumbo v2, "ㄖㄨㄣ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x129

    aput-object v0, v1, v2

    const-string/jumbo v0, "ruo"

    const-string/jumbo v2, "ㄖㄨㄛ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x12a

    aput-object v0, v1, v2

    const-string/jumbo v0, "sa"

    const-string/jumbo v2, "ㄙㄚ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x12b

    aput-object v0, v1, v2

    const-string/jumbo v0, "sai"

    const-string/jumbo v2, "ㄙㄞ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x12c

    aput-object v0, v1, v2

    const-string/jumbo v0, "san"

    const-string/jumbo v2, "ㄙㄢ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x12d

    aput-object v0, v1, v2

    const-string/jumbo v0, "sang"

    const-string/jumbo v2, "ㄙㄤ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x12e

    aput-object v0, v1, v2

    const-string/jumbo v0, "sao"

    const-string/jumbo v2, "ㄙㄠ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x12f

    aput-object v0, v1, v2

    const-string/jumbo v0, "se"

    const-string/jumbo v2, "ㄙㄜ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x130

    aput-object v0, v1, v2

    const-string/jumbo v0, "sei"

    const-string/jumbo v2, "ㄙㄟ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x131

    aput-object v0, v1, v2

    const-string/jumbo v0, "sen"

    const-string/jumbo v2, "ㄙㄣ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x132

    aput-object v0, v1, v2

    const-string/jumbo v0, "seng"

    const-string/jumbo v2, "ㄙㄥ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x133

    aput-object v0, v1, v2

    const-string/jumbo v0, "sha"

    const-string/jumbo v2, "ㄕㄚ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x134

    aput-object v0, v1, v2

    const-string/jumbo v0, "shai"

    const-string/jumbo v2, "ㄕㄞ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x135

    aput-object v0, v1, v2

    const-string/jumbo v0, "shan"

    const-string/jumbo v2, "ㄕㄢ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x136

    aput-object v0, v1, v2

    const-string/jumbo v0, "shang"

    const-string/jumbo v2, "ㄕㄤ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x137

    aput-object v0, v1, v2

    const-string/jumbo v0, "shao"

    const-string/jumbo v2, "ㄕㄠ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x138

    aput-object v0, v1, v2

    const-string/jumbo v0, "she"

    const-string/jumbo v2, "ㄕㄜ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x139

    aput-object v0, v1, v2

    const-string/jumbo v0, "shei"

    const-string/jumbo v2, "ㄕㄟ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x13a

    aput-object v0, v1, v2

    const-string/jumbo v0, "shen"

    const-string/jumbo v2, "ㄕㄣ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x13b

    aput-object v0, v1, v2

    const-string/jumbo v0, "sheng"

    const-string/jumbo v2, "ㄕㄥ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x13c

    aput-object v0, v1, v2

    const-string/jumbo v0, "shi"

    const-string/jumbo v2, "ㄕ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x13d

    aput-object v0, v1, v2

    const-string/jumbo v0, "shong"

    const-string/jumbo v2, "ㄕㄡㄥ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x13e

    aput-object v0, v1, v2

    const-string/jumbo v0, "shou"

    const-string/jumbo v2, "ㄕㄡ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x13f

    aput-object v0, v1, v2

    const-string/jumbo v0, "shu"

    const-string/jumbo v2, "ㄕㄨ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x140

    aput-object v0, v1, v2

    const-string/jumbo v0, "shua"

    const-string/jumbo v2, "ㄕㄨㄚ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x141

    aput-object v0, v1, v2

    const-string/jumbo v0, "shuai"

    const-string/jumbo v2, "ㄕㄨㄞ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x142

    aput-object v0, v1, v2

    const-string/jumbo v0, "shuan"

    const-string/jumbo v2, "ㄕㄨㄢ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x143

    aput-object v0, v1, v2

    const-string/jumbo v0, "shuang"

    const-string/jumbo v2, "ㄕㄨㄤ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x144

    aput-object v0, v1, v2

    const-string/jumbo v0, "shui"

    const-string/jumbo v2, "ㄕㄨㄟ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x145

    aput-object v0, v1, v2

    const-string/jumbo v0, "shun"

    const-string/jumbo v2, "ㄕㄨㄣ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x146

    aput-object v0, v1, v2

    const-string/jumbo v0, "shuo"

    const-string/jumbo v2, "ㄕㄨㄛ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x147

    aput-object v0, v1, v2

    const-string/jumbo v0, "si"

    const-string/jumbo v2, "ㄙ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x148

    aput-object v0, v1, v2

    const-string/jumbo v0, "song"

    const-string/jumbo v2, "ㄙㄨㄥ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x149

    aput-object v0, v1, v2

    const-string/jumbo v0, "sou"

    const-string/jumbo v2, "ㄙㄡ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x14a

    aput-object v0, v1, v2

    const-string/jumbo v0, "su"

    const-string/jumbo v2, "ㄙㄨ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x14b

    aput-object v0, v1, v2

    const-string/jumbo v0, "suan"

    const-string/jumbo v2, "ㄙㄨㄢ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x14c

    aput-object v0, v1, v2

    const-string/jumbo v0, "sui"

    const-string/jumbo v2, "ㄙㄨㄟ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x14d

    aput-object v0, v1, v2

    const-string/jumbo v0, "sun"

    const-string/jumbo v2, "ㄙㄨㄣ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x14e

    aput-object v0, v1, v2

    const-string/jumbo v0, "suo"

    const-string/jumbo v2, "ㄙㄨㄛ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x14f

    aput-object v0, v1, v2

    const-string/jumbo v0, "ta"

    const-string/jumbo v2, "ㄊㄚ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x150

    aput-object v0, v1, v2

    const-string/jumbo v0, "tai"

    const-string/jumbo v2, "ㄊㄞ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x151

    aput-object v0, v1, v2

    const-string/jumbo v0, "tan"

    const-string/jumbo v2, "ㄊㄢ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x152

    aput-object v0, v1, v2

    const-string/jumbo v0, "tang"

    const-string/jumbo v2, "ㄊㄤ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x153

    aput-object v0, v1, v2

    const-string/jumbo v0, "tao"

    const-string/jumbo v2, "ㄊㄠ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x154

    aput-object v0, v1, v2

    const-string/jumbo v0, "te"

    const-string/jumbo v2, "ㄊㄜ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x155

    aput-object v0, v1, v2

    const-string/jumbo v0, "teng"

    const-string/jumbo v2, "ㄊㄥ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x156

    aput-object v0, v1, v2

    const-string/jumbo v0, "ti"

    const-string/jumbo v2, "ㄊㄧ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x157

    aput-object v0, v1, v2

    const-string/jumbo v0, "tian"

    const-string/jumbo v2, "ㄊㄧㄢ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x158

    aput-object v0, v1, v2

    const-string/jumbo v0, "tiao"

    const-string/jumbo v2, "ㄊㄧㄠ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x159

    aput-object v0, v1, v2

    const-string/jumbo v0, "tie"

    const-string/jumbo v2, "ㄊㄧㄝ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x15a

    aput-object v0, v1, v2

    const-string/jumbo v0, "ting"

    const-string/jumbo v2, "ㄊㄧㄥ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x15b

    aput-object v0, v1, v2

    const-string/jumbo v0, "tong"

    const-string/jumbo v2, "ㄊㄨㄥ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x15c

    aput-object v0, v1, v2

    const-string/jumbo v0, "tou"

    const-string/jumbo v2, "ㄊㄡ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x15d

    aput-object v0, v1, v2

    const-string/jumbo v0, "tu"

    const-string/jumbo v2, "ㄊㄨ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x15e

    aput-object v0, v1, v2

    const-string/jumbo v0, "tuan"

    const-string/jumbo v2, "ㄊㄨㄢ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x15f

    aput-object v0, v1, v2

    const-string/jumbo v0, "tui"

    const-string/jumbo v2, "ㄊㄨㄟ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x160

    aput-object v0, v1, v2

    const-string/jumbo v0, "tun"

    const-string/jumbo v2, "ㄊㄨㄣ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x161

    aput-object v0, v1, v2

    const-string/jumbo v0, "tuo"

    const-string/jumbo v2, "ㄊㄨㄛ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x162

    aput-object v0, v1, v2

    const-string/jumbo v0, "u"

    const-string/jumbo v2, "ㄨ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x163

    aput-object v0, v1, v2

    const-string/jumbo v0, "wa"

    const-string/jumbo v2, "ㄨㄚ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x164

    aput-object v0, v1, v2

    const-string/jumbo v0, "wai"

    const-string/jumbo v2, "ㄨㄞ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x165

    aput-object v0, v1, v2

    const-string/jumbo v0, "wan"

    const-string/jumbo v2, "ㄨㄢ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x166

    aput-object v0, v1, v2

    const-string/jumbo v0, "wang"

    const-string/jumbo v2, "ㄨㄤ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x167

    aput-object v0, v1, v2

    const-string/jumbo v0, "wei"

    const-string/jumbo v2, "ㄨㄟ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x168

    aput-object v0, v1, v2

    const-string/jumbo v0, "wen"

    const-string/jumbo v2, "ㄨㄣ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x169

    aput-object v0, v1, v2

    const-string/jumbo v0, "weng"

    const-string/jumbo v2, "ㄨㄥ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x16a

    aput-object v0, v1, v2

    const-string/jumbo v0, "wo"

    const-string/jumbo v2, "ㄨㄛ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x16b

    aput-object v0, v1, v2

    const-string/jumbo v0, "wong"

    const-string/jumbo v2, "ㄨㄨㄥ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x16c

    aput-object v0, v1, v2

    const-string/jumbo v0, "wu"

    const-string/jumbo v2, "ㄨ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x16d

    aput-object v0, v1, v2

    const-string/jumbo v0, "xi"

    const-string/jumbo v2, "ㄒㄧ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x16e

    aput-object v0, v1, v2

    const-string/jumbo v0, "xia"

    const-string/jumbo v2, "ㄒㄧㄚ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x16f

    aput-object v0, v1, v2

    const-string/jumbo v0, "xian"

    const-string/jumbo v2, "ㄒㄧㄢ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x170

    aput-object v0, v1, v2

    const-string/jumbo v0, "xiang"

    const-string/jumbo v2, "ㄒㄧㄤ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x171

    aput-object v0, v1, v2

    const-string/jumbo v0, "xiao"

    const-string/jumbo v2, "ㄒㄧㄠ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x172

    aput-object v0, v1, v2

    const-string/jumbo v0, "xie"

    const-string/jumbo v2, "ㄒㄧㄝ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x173

    aput-object v0, v1, v2

    const-string/jumbo v0, "xin"

    const-string/jumbo v2, "ㄒㄧㄣ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x174

    aput-object v0, v1, v2

    const-string/jumbo v0, "xing"

    const-string/jumbo v2, "ㄒㄧㄥ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x175

    aput-object v0, v1, v2

    const-string/jumbo v0, "xiong"

    const-string/jumbo v2, "ㄒㄩㄥ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x176

    aput-object v0, v1, v2

    const-string/jumbo v0, "xiu"

    const-string/jumbo v2, "ㄒㄧㄡ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x177

    aput-object v0, v1, v2

    const-string/jumbo v0, "xu"

    const-string/jumbo v2, "ㄒㄩ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x178

    aput-object v0, v1, v2

    const-string/jumbo v0, "xuan"

    const-string/jumbo v2, "ㄒㄩㄢ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x179

    aput-object v0, v1, v2

    const-string/jumbo v0, "xue"

    const-string/jumbo v2, "ㄒㄩㄝ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x17a

    aput-object v0, v1, v2

    const-string/jumbo v0, "xun"

    const-string/jumbo v2, "ㄒㄩㄣ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x17b

    aput-object v0, v1, v2

    const-string/jumbo v0, "ya"

    const-string/jumbo v2, "ㄧㄚ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x17c

    aput-object v0, v1, v2

    const-string/jumbo v0, "yai"

    const-string/jumbo v2, "ㄧㄞ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x17d

    aput-object v0, v1, v2

    const-string/jumbo v0, "yan"

    const-string/jumbo v2, "ㄧㄢ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x17e

    aput-object v0, v1, v2

    const-string/jumbo v0, "yang"

    const-string/jumbo v2, "ㄧㄤ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x17f

    aput-object v0, v1, v2

    const-string/jumbo v0, "yao"

    const-string/jumbo v2, "ㄧㄠ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x180

    aput-object v0, v1, v2

    const-string/jumbo v0, "ye"

    const-string/jumbo v2, "ㄧㄝ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x181

    aput-object v0, v1, v2

    const-string/jumbo v0, "yi"

    const-string/jumbo v2, "ㄧ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x182

    aput-object v0, v1, v2

    const-string/jumbo v0, "yin"

    const-string/jumbo v2, "ㄧㄣ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x183

    aput-object v0, v1, v2

    const-string/jumbo v0, "ying"

    const-string/jumbo v2, "ㄧㄥ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x184

    aput-object v0, v1, v2

    const-string/jumbo v0, "yo"

    const-string/jumbo v2, "ㄧㄛ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x185

    aput-object v0, v1, v2

    const-string/jumbo v0, "yong"

    const-string/jumbo v2, "ㄩㄥ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x186

    aput-object v0, v1, v2

    const-string/jumbo v0, "you"

    const-string/jumbo v2, "ㄧㄡ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x187

    aput-object v0, v1, v2

    const-string/jumbo v0, "yu"

    const-string/jumbo v2, "ㄩ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x188

    aput-object v0, v1, v2

    const-string/jumbo v0, "yuan"

    const-string/jumbo v2, "ㄩㄢ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x189

    aput-object v0, v1, v2

    const-string/jumbo v0, "yue"

    const-string/jumbo v2, "ㄩㄝ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x18a

    aput-object v0, v1, v2

    const-string/jumbo v0, "yun"

    const-string/jumbo v2, "ㄩㄣ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x18b

    aput-object v0, v1, v2

    const-string/jumbo v0, "za"

    const-string/jumbo v2, "ㄗㄚ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x18c

    aput-object v0, v1, v2

    const-string/jumbo v0, "zai"

    const-string/jumbo v2, "ㄗㄞ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x18d

    aput-object v0, v1, v2

    const-string/jumbo v0, "zan"

    const-string/jumbo v2, "ㄗㄢ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x18e

    aput-object v0, v1, v2

    const-string/jumbo v0, "zang"

    const-string/jumbo v2, "ㄗㄤ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x18f

    aput-object v0, v1, v2

    const-string/jumbo v0, "zao"

    const-string/jumbo v2, "ㄗㄠ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x190

    aput-object v0, v1, v2

    const-string/jumbo v0, "ze"

    const-string/jumbo v2, "ㄗㄜ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x191

    aput-object v0, v1, v2

    const-string/jumbo v0, "zei"

    const-string/jumbo v2, "ㄗㄟ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x192

    aput-object v0, v1, v2

    const-string/jumbo v0, "zen"

    const-string/jumbo v2, "ㄗㄣ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x193

    aput-object v0, v1, v2

    const-string/jumbo v0, "zeng"

    const-string/jumbo v2, "ㄗㄥ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x194

    aput-object v0, v1, v2

    const-string/jumbo v0, "zha"

    const-string/jumbo v2, "ㄓㄚ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x195

    aput-object v0, v1, v2

    const-string/jumbo v0, "zhai"

    const-string/jumbo v2, "ㄓㄞ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x196

    aput-object v0, v1, v2

    const-string/jumbo v0, "zhan"

    const-string/jumbo v2, "ㄓㄢ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x197

    aput-object v0, v1, v2

    const-string/jumbo v0, "zhang"

    const-string/jumbo v2, "ㄓㄤ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x198

    aput-object v0, v1, v2

    const-string/jumbo v0, "zhao"

    const-string/jumbo v2, "ㄓㄠ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x199

    aput-object v0, v1, v2

    const-string/jumbo v0, "zhe"

    const-string/jumbo v2, "ㄓㄜ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x19a

    aput-object v0, v1, v2

    const-string/jumbo v0, "zhei"

    const-string/jumbo v2, "ㄓㄟ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x19b

    aput-object v0, v1, v2

    const-string/jumbo v0, "zhen"

    const-string/jumbo v2, "ㄓㄣ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x19c

    aput-object v0, v1, v2

    const-string/jumbo v0, "zheng"

    const-string/jumbo v2, "ㄓㄥ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x19d

    aput-object v0, v1, v2

    const-string/jumbo v0, "zhi"

    const-string/jumbo v2, "ㄓ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x19e

    aput-object v0, v1, v2

    const-string/jumbo v0, "zhong"

    const-string/jumbo v2, "ㄓㄨㄥ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x19f

    aput-object v0, v1, v2

    const-string/jumbo v0, "zhou"

    const-string/jumbo v2, "ㄓㄡ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x1a0

    aput-object v0, v1, v2

    const-string/jumbo v0, "zhu"

    const-string/jumbo v2, "ㄓㄨ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x1a1

    aput-object v0, v1, v2

    const-string/jumbo v0, "zhua"

    const-string/jumbo v2, "ㄓㄨㄚ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x1a2

    aput-object v0, v1, v2

    const-string/jumbo v0, "zhuai"

    const-string/jumbo v2, "ㄓㄨㄞ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x1a3

    aput-object v0, v1, v2

    const-string/jumbo v0, "zhuan"

    const-string/jumbo v2, "ㄓㄨㄢ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x1a4

    aput-object v0, v1, v2

    const-string/jumbo v0, "zhuang"

    const-string/jumbo v2, "ㄓㄨㄤ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x1a5

    aput-object v0, v1, v2

    const-string/jumbo v0, "zhui"

    const-string/jumbo v2, "ㄓㄨㄟ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x1a6

    aput-object v0, v1, v2

    const-string/jumbo v0, "zhun"

    const-string/jumbo v2, "ㄓㄨㄣ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x1a7

    aput-object v0, v1, v2

    const-string/jumbo v0, "zhuo"

    const-string/jumbo v2, "ㄓㄨㄛ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x1a8

    aput-object v0, v1, v2

    const-string/jumbo v0, "zi"

    const-string/jumbo v2, "ㄗ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x1a9

    aput-object v0, v1, v2

    const-string/jumbo v0, "zong"

    const-string/jumbo v2, "ㄗㄨㄥ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x1aa

    aput-object v0, v1, v2

    const-string/jumbo v0, "zou"

    const-string/jumbo v2, "ㄗㄡ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x1ab

    aput-object v0, v1, v2

    const-string/jumbo v0, "zu"

    const-string/jumbo v2, "ㄗㄨ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x1ac

    aput-object v0, v1, v2

    const-string/jumbo v0, "zuan"

    const-string/jumbo v2, "ㄗㄨㄢ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x1ad

    aput-object v0, v1, v2

    const-string/jumbo v0, "zui"

    const-string/jumbo v2, "ㄗㄨㄟ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x1ae

    aput-object v0, v1, v2

    const-string/jumbo v0, "zun"

    const-string/jumbo v2, "ㄗㄨㄣ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x1af

    aput-object v0, v1, v2

    const-string/jumbo v0, "zuo"

    const-string/jumbo v2, "ㄗㄨㄛ"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x1b0

    aput-object v0, v1, v2

    sput-object v1, Lcom/android/common/sort/HanziToPinyin;->PINYIN_TO_ZHUYING_TABLE:[[Ljava/lang/String;

    sget-object v0, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-static {v0}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object v0

    sput-object v0, Lcom/android/common/sort/HanziToPinyin;->COLLATOR:Ljava/text/Collator;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/common/sort/HanziToPinyin;->sPinYinToZhuYingHashMap:Ljava/util/HashMap;

    return-void

    nop

    :array_25bc
    .array-data 2
        -0x69c1s
        0x54ces
        0x5b89s
        -0x7f52s
        0x51f9s
        0x516bs
        0x6300s
        0x6273s
        -0x6f5as
        0x52f9s
        -0x69bes
        0x5954s
        0x4f3bs
        0x5c44s
        -0x7047s
        0x706cs
        0x618bs
        0x6c43s
        0x51abs
        0x7676s
        0x5cecs
        0x5693s
        0x5072s
        0x53c2s
        0x4ed3s
        0x64a1s
        0x518as
        0x5d7es
        0x66fds
        0x66fes
        0x5c64s
        0x53c9s
        -0x7d7as
        -0x7041s
        0x4f25s
        0x6284s
        -0x709as
        0x62bbs
        0x6c88s
        0x6c89s
        -0x69c9s
        0x5403s
        0x5145s
        0x62bds
        0x51fas
        0x6b3bs
        0x63e3s
        0x5ddbs
        0x5205s
        0x5439s
        0x65fes
        -0x6fccs
        0x5472s
        0x5306s
        0x51d1s
        0x7c97s
        0x6c46s
        0x5d14s
        -0x6f58s
        0x6413s
        0x5491s
        0x5446s
        0x4e39s
        0x5f53s
        0x5200s
        0x561as
        0x6265s
        0x706fs
        0x6c10s
        0x55f2s
        0x7538s
        0x5201s
        0x7239s
        0x4e01s
        0x4e1fs
        0x4e1cs
        0x543as
        0x53bes
        -0x7fefs
        -0x7698s
        0x5428s
        0x591as
        0x59b8s
        -0x740as
        0x5940s
        -0x685bs
        0x513fs
        0x53d1s
        0x5e06s
        0x531as
        -0x6722s
        0x5206s
        0x4e30s
        -0x767bs
        0x4ecfs
        0x7d11s
        0x4f15s
        0x65ees
        0x4f85s
        0x7518s
        0x5188s
        0x768bs
        0x6208s
        0x7ed9s
        0x6839s
        0x522fs
        0x5de5s
        0x52fes
        0x4f30s
        0x74dcs
        0x4e56s
        0x5173s
        0x5149s
        0x5f52s
        0x4e28s
        0x5459s
        0x54c8s
        0x548ds
        0x4f44s
        0x592fs
        -0x7ce0s
        -0x743ds
        -0x612es
        0x62ebs
        0x4ea8s
        0x5677s
        0x53ffs
        -0x60bfs
        0x4e6fs
        -0x7d4fs
        0x6000s
        0x72bfs
        0x5ddfs
        0x7070s
        0x660fs
        0x5419s
        0x4e0cs
        0x52a0s
        0x620bs
        0x6c5fs
        -0x7d83s
        -0x69cas
        0x5dfes
        0x5755s
        0x5182s
        0x4e29s
        0x51e5s
        0x59e2s
        0x5658s
        0x519bs
        0x5494s
        0x5f00s
        0x520as
        0x5ffcs
        0x5c3bs
        0x533cs
        -0x7f72s
        0x52a5s
        0x7a7as
        0x62a0s
        0x625ds
        0x5938s
        -0x7b51s
        0x5bbds
        0x5321s
        0x4e8fs
        0x5764s
        0x6269s
        0x5783s
        0x6765s
        0x5170s
        0x5577s
        0x635es
        -0x7f75s
        0x52d2s
        0x5d1as
        0x5215s
        0x4fe9s
        0x5941s
        -0x7d91s
        0x64a9s
        0x5217s
        0x62ces
        0x5222s
        0x6e9cs
        0x56d6s
        -0x6067s
        0x779cs
        0x565cs
        0x5a08s
        0x7567s
        0x62a1s
        0x7f57s
        0x5463s
        0x5988s
        0x57cbs
        0x5adas
        0x7264s
        0x732bs
        0x4e48s
        0x5445s
        -0x6a18s
        0x753fs
        0x54aas
        0x5b80s
        0x55b5s
        0x4e5cs
        0x6c11s
        0x540ds
        -0x73d4s
        0x6478s
        0x54des
        0x6beas
        0x55efs
        0x62cfs
        -0x7eb7s
        0x56e1s
        0x56d4s
        0x5b6cs
        0x7592s
        0x5a1es
        0x6041s
        -0x7f03s
        0x59aes
        0x62c8s
        0x5b22s
        -0x61e1s
        0x634fs
        0x56dcs
        0x5b81s
        0x599es
        0x519cs
        0x7fbas
        0x5974s
        0x597bs
        0x759fs
        -0x613fs
        -0x6f33s
        0x5594s
        -0x744cs
        0x5991s
        0x62cds
        0x7705s
        0x4e53s
        0x629bs
        0x5478s
        0x55b7s
        0x5309s
        0x4e15s
        0x56e8s
        0x527ds
        0x6c15s
        0x59d8s
        0x4e52s
        -0x6b75s
        0x5256s
        0x4ec6s
        0x4e03s
        0x6390s
        0x5343s
        0x545bs
        0x6084s
        0x767fs
        0x4eb2s
        0x72c5s
        -0x7d72s
        0x4e18s
        0x533as
        0x5cd1s
        0x7f3as
        0x590bs
        0x5465s
        0x7a63s
        0x5a06s
        0x60f9s
        0x4ebas
        0x6254s
        0x65e5s
        -0x7cc8s
        0x53b9s
        -0x6f66s
        0x633cs
        0x5827s
        0x5a51s
        0x77a4s
        0x637cs
        0x4ee8s
        0x6be2s
        0x4e09s
        0x6852s
        0x63bbs
        -0x6a56s
        0x68ees
        0x50e7s
        0x6740s
        0x7b5bs
        0x5c71s
        0x4f24s
        0x5f30s
        0x5962s
        0x7533s
        -0x7c68s
        0x6552s
        0x5347s
        0x5c38s
        0x53ces
        0x4e66s
        0x5237s
        -0x7790s
        -0x6a17s
        0x53ccs
        -0x73ffs
        0x542es
        -0x740cs
        0x53b6s
        0x5feas
        0x635cs
        -0x7d31s
        0x72fbs
        0x590as
        0x5b59s
        0x5506s
        0x4ed6s
        0x56fcs
        0x574ds
        0x6c64s
        0x5932s
        0x5fd1s
        0x71a5s
        0x5254s
        0x5929s
        0x65ebs
        0x5e16s
        0x5385s
        0x56f2s
        0x5077s
        0x51f8s
        0x6e4ds
        0x63a8s
        0x541es
        0x4e47s
        0x7a75s
        0x6b6as
        0x5f2fs
        0x5c23s
        0x5371s
        0x6637s
        0x7fc1s
        0x631ds
        0x4e4cs
        0x5915s
        -0x798es
        0x4edas
        0x4e61s
        0x7071s
        0x4e9bs
        0x5fc3s
        0x661fs
        0x51f6s
        0x4f11s
        0x5401s
        0x5405s
        0x524as
        0x5743s
        0x4e2bs
        0x6079s
        0x592es
        0x5e7as
        0x503bs
        0x4e00s
        0x56d9s
        0x5e94s
        0x54dfs
        0x4f63s
        0x4f18s
        0x625cs
        0x56e6s
        0x66f0s
        0x6655s
        0x7b60s
        0x7b7cs
        0x5e00s
        0x707ds
        0x5142s
        0x5328s
        0x50aes
        0x5219s
        -0x72c4s
        0x600es
        0x5897s
        0x624es
        0x635as
        0x6cbes
        0x5f20s
        -0x6a81s
        -0x6a89s
        0x4f4bs
        -0x78f9s
        -0x72e2s
        0x4e89s
        0x4e4bs
        0x5cd9s
        0x5ea2s
        0x4e2ds
        0x5ddes
        0x6731s
        0x6293s
        0x62fds
        0x4e13s
        0x5986s
        -0x6947s
        0x5b92s
        0x5353s
        0x4e72s
        0x5b97s
        -0x6f47s
        0x79dfs
        -0x6b45s
        0x539cs
        0x5c0as
        0x6628s
        0x5159s
        -0x603ds
        -0x603cs
    .end array-data

    :array_2768
    .array-data 1
        0x41t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2770
    .array-data 1
        0x41t
        0x49t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2778
    .array-data 1
        0x41t
        0x4et
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2780
    .array-data 1
        0x41t
        0x4et
        0x47t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2788
    .array-data 1
        0x41t
        0x4ft
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2790
    .array-data 1
        0x42t
        0x41t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2798
    .array-data 1
        0x42t
        0x41t
        0x49t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_27a0
    .array-data 1
        0x42t
        0x41t
        0x4et
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_27a8
    .array-data 1
        0x42t
        0x41t
        0x4et
        0x47t
        0x0t
        0x0t
    .end array-data

    nop

    :array_27b0
    .array-data 1
        0x42t
        0x41t
        0x4ft
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_27b8
    .array-data 1
        0x42t
        0x45t
        0x49t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_27c0
    .array-data 1
        0x42t
        0x45t
        0x4et
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_27c8
    .array-data 1
        0x42t
        0x45t
        0x4et
        0x47t
        0x0t
        0x0t
    .end array-data

    nop

    :array_27d0
    .array-data 1
        0x42t
        0x49t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_27d8
    .array-data 1
        0x42t
        0x49t
        0x41t
        0x4et
        0x0t
        0x0t
    .end array-data

    nop

    :array_27e0
    .array-data 1
        0x42t
        0x49t
        0x41t
        0x4ft
        0x0t
        0x0t
    .end array-data

    nop

    :array_27e8
    .array-data 1
        0x42t
        0x49t
        0x45t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_27f0
    .array-data 1
        0x42t
        0x49t
        0x4et
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_27f8
    .array-data 1
        0x42t
        0x49t
        0x4et
        0x47t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2800
    .array-data 1
        0x42t
        0x4ft
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2808
    .array-data 1
        0x42t
        0x55t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2810
    .array-data 1
        0x43t
        0x41t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2818
    .array-data 1
        0x43t
        0x41t
        0x49t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2820
    .array-data 1
        0x43t
        0x41t
        0x4et
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2828
    .array-data 1
        0x43t
        0x41t
        0x4et
        0x47t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2830
    .array-data 1
        0x43t
        0x41t
        0x4ft
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2838
    .array-data 1
        0x43t
        0x45t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2840
    .array-data 1
        0x43t
        0x45t
        0x4et
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2848
    .array-data 1
        0x43t
        0x45t
        0x4et
        0x47t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2850
    .array-data 1
        0x5at
        0x45t
        0x4et
        0x47t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2858
    .array-data 1
        0x43t
        0x45t
        0x4et
        0x47t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2860
    .array-data 1
        0x43t
        0x48t
        0x41t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2868
    .array-data 1
        0x43t
        0x48t
        0x41t
        0x49t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2870
    .array-data 1
        0x43t
        0x48t
        0x41t
        0x4et
        0x0t
        0x0t
    .end array-data

    nop

    :array_2878
    .array-data 1
        0x43t
        0x48t
        0x41t
        0x4et
        0x47t
        0x0t
    .end array-data

    nop

    :array_2880
    .array-data 1
        0x43t
        0x48t
        0x41t
        0x4ft
        0x0t
        0x0t
    .end array-data

    nop

    :array_2888
    .array-data 1
        0x43t
        0x48t
        0x45t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2890
    .array-data 1
        0x43t
        0x48t
        0x45t
        0x4et
        0x0t
        0x0t
    .end array-data

    nop

    :array_2898
    .array-data 1
        0x53t
        0x48t
        0x45t
        0x4et
        0x0t
        0x0t
    .end array-data

    nop

    :array_28a0
    .array-data 1
        0x43t
        0x48t
        0x45t
        0x4et
        0x0t
        0x0t
    .end array-data

    nop

    :array_28a8
    .array-data 1
        0x43t
        0x48t
        0x45t
        0x4et
        0x47t
        0x0t
    .end array-data

    nop

    :array_28b0
    .array-data 1
        0x43t
        0x48t
        0x49t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_28b8
    .array-data 1
        0x43t
        0x48t
        0x4ft
        0x4et
        0x47t
        0x0t
    .end array-data

    nop

    :array_28c0
    .array-data 1
        0x43t
        0x48t
        0x4ft
        0x55t
        0x0t
        0x0t
    .end array-data

    nop

    :array_28c8
    .array-data 1
        0x43t
        0x48t
        0x55t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_28d0
    .array-data 1
        0x43t
        0x48t
        0x55t
        0x41t
        0x0t
        0x0t
    .end array-data

    nop

    :array_28d8
    .array-data 1
        0x43t
        0x48t
        0x55t
        0x41t
        0x49t
        0x0t
    .end array-data

    nop

    :array_28e0
    .array-data 1
        0x43t
        0x48t
        0x55t
        0x41t
        0x4et
        0x0t
    .end array-data

    nop

    :array_28e8
    .array-data 1
        0x43t
        0x48t
        0x55t
        0x41t
        0x4et
        0x47t
    .end array-data

    nop

    :array_28f0
    .array-data 1
        0x43t
        0x48t
        0x55t
        0x49t
        0x0t
        0x0t
    .end array-data

    nop

    :array_28f8
    .array-data 1
        0x43t
        0x48t
        0x55t
        0x4et
        0x0t
        0x0t
    .end array-data

    nop

    :array_2900
    .array-data 1
        0x43t
        0x48t
        0x55t
        0x4ft
        0x0t
        0x0t
    .end array-data

    nop

    :array_2908
    .array-data 1
        0x43t
        0x49t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2910
    .array-data 1
        0x43t
        0x4ft
        0x4et
        0x47t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2918
    .array-data 1
        0x43t
        0x4ft
        0x55t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2920
    .array-data 1
        0x43t
        0x55t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2928
    .array-data 1
        0x43t
        0x55t
        0x41t
        0x4et
        0x0t
        0x0t
    .end array-data

    nop

    :array_2930
    .array-data 1
        0x43t
        0x55t
        0x49t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2938
    .array-data 1
        0x43t
        0x55t
        0x4et
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2940
    .array-data 1
        0x43t
        0x55t
        0x4ft
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2948
    .array-data 1
        0x44t
        0x41t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2950
    .array-data 1
        0x44t
        0x41t
        0x49t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2958
    .array-data 1
        0x44t
        0x41t
        0x4et
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2960
    .array-data 1
        0x44t
        0x41t
        0x4et
        0x47t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2968
    .array-data 1
        0x44t
        0x41t
        0x4ft
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2970
    .array-data 1
        0x44t
        0x45t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2978
    .array-data 1
        0x44t
        0x45t
        0x4et
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2980
    .array-data 1
        0x44t
        0x45t
        0x4et
        0x47t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2988
    .array-data 1
        0x44t
        0x49t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2990
    .array-data 1
        0x44t
        0x49t
        0x41t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2998
    .array-data 1
        0x44t
        0x49t
        0x41t
        0x4et
        0x0t
        0x0t
    .end array-data

    nop

    :array_29a0
    .array-data 1
        0x44t
        0x49t
        0x41t
        0x4ft
        0x0t
        0x0t
    .end array-data

    nop

    :array_29a8
    .array-data 1
        0x44t
        0x49t
        0x45t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_29b0
    .array-data 1
        0x44t
        0x49t
        0x4et
        0x47t
        0x0t
        0x0t
    .end array-data

    nop

    :array_29b8
    .array-data 1
        0x44t
        0x49t
        0x55t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_29c0
    .array-data 1
        0x44t
        0x4ft
        0x4et
        0x47t
        0x0t
        0x0t
    .end array-data

    nop

    :array_29c8
    .array-data 1
        0x44t
        0x4ft
        0x55t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_29d0
    .array-data 1
        0x44t
        0x55t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_29d8
    .array-data 1
        0x44t
        0x55t
        0x41t
        0x4et
        0x0t
        0x0t
    .end array-data

    nop

    :array_29e0
    .array-data 1
        0x44t
        0x55t
        0x49t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_29e8
    .array-data 1
        0x44t
        0x55t
        0x4et
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_29f0
    .array-data 1
        0x44t
        0x55t
        0x4ft
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_29f8
    .array-data 1
        0x45t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2a00
    .array-data 1
        0x45t
        0x49t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2a08
    .array-data 1
        0x45t
        0x4et
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2a10
    .array-data 1
        0x45t
        0x4et
        0x47t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2a18
    .array-data 1
        0x45t
        0x52t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2a20
    .array-data 1
        0x46t
        0x41t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2a28
    .array-data 1
        0x46t
        0x41t
        0x4et
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2a30
    .array-data 1
        0x46t
        0x41t
        0x4et
        0x47t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2a38
    .array-data 1
        0x46t
        0x45t
        0x49t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2a40
    .array-data 1
        0x46t
        0x45t
        0x4et
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2a48
    .array-data 1
        0x46t
        0x45t
        0x4et
        0x47t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2a50
    .array-data 1
        0x46t
        0x49t
        0x41t
        0x4ft
        0x0t
        0x0t
    .end array-data

    nop

    :array_2a58
    .array-data 1
        0x46t
        0x4ft
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2a60
    .array-data 1
        0x46t
        0x4ft
        0x55t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2a68
    .array-data 1
        0x46t
        0x55t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2a70
    .array-data 1
        0x47t
        0x41t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2a78
    .array-data 1
        0x47t
        0x41t
        0x49t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2a80
    .array-data 1
        0x47t
        0x41t
        0x4et
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2a88
    .array-data 1
        0x47t
        0x41t
        0x4et
        0x47t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2a90
    .array-data 1
        0x47t
        0x41t
        0x4ft
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2a98
    .array-data 1
        0x47t
        0x45t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2aa0
    .array-data 1
        0x47t
        0x45t
        0x49t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2aa8
    .array-data 1
        0x47t
        0x45t
        0x4et
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2ab0
    .array-data 1
        0x47t
        0x45t
        0x4et
        0x47t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2ab8
    .array-data 1
        0x47t
        0x4ft
        0x4et
        0x47t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2ac0
    .array-data 1
        0x47t
        0x4ft
        0x55t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2ac8
    .array-data 1
        0x47t
        0x55t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2ad0
    .array-data 1
        0x47t
        0x55t
        0x41t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2ad8
    .array-data 1
        0x47t
        0x55t
        0x41t
        0x49t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2ae0
    .array-data 1
        0x47t
        0x55t
        0x41t
        0x4et
        0x0t
        0x0t
    .end array-data

    nop

    :array_2ae8
    .array-data 1
        0x47t
        0x55t
        0x41t
        0x4et
        0x47t
        0x0t
    .end array-data

    nop

    :array_2af0
    .array-data 1
        0x47t
        0x55t
        0x49t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2af8
    .array-data 1
        0x47t
        0x55t
        0x4et
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2b00
    .array-data 1
        0x47t
        0x55t
        0x4ft
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2b08
    .array-data 1
        0x48t
        0x41t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2b10
    .array-data 1
        0x48t
        0x41t
        0x49t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2b18
    .array-data 1
        0x48t
        0x41t
        0x4et
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2b20
    .array-data 1
        0x48t
        0x41t
        0x4et
        0x47t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2b28
    .array-data 1
        0x48t
        0x41t
        0x4ft
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2b30
    .array-data 1
        0x48t
        0x45t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2b38
    .array-data 1
        0x48t
        0x45t
        0x49t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2b40
    .array-data 1
        0x48t
        0x45t
        0x4et
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2b48
    .array-data 1
        0x48t
        0x45t
        0x4et
        0x47t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2b50
    .array-data 1
        0x48t
        0x4dt
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2b58
    .array-data 1
        0x48t
        0x4ft
        0x4et
        0x47t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2b60
    .array-data 1
        0x48t
        0x4ft
        0x55t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2b68
    .array-data 1
        0x48t
        0x55t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2b70
    .array-data 1
        0x48t
        0x55t
        0x41t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2b78
    .array-data 1
        0x48t
        0x55t
        0x41t
        0x49t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2b80
    .array-data 1
        0x48t
        0x55t
        0x41t
        0x4et
        0x0t
        0x0t
    .end array-data

    nop

    :array_2b88
    .array-data 1
        0x48t
        0x55t
        0x41t
        0x4et
        0x47t
        0x0t
    .end array-data

    nop

    :array_2b90
    .array-data 1
        0x48t
        0x55t
        0x49t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2b98
    .array-data 1
        0x48t
        0x55t
        0x4et
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2ba0
    .array-data 1
        0x48t
        0x55t
        0x4ft
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2ba8
    .array-data 1
        0x4at
        0x49t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2bb0
    .array-data 1
        0x4at
        0x49t
        0x41t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2bb8
    .array-data 1
        0x4at
        0x49t
        0x41t
        0x4et
        0x0t
        0x0t
    .end array-data

    nop

    :array_2bc0
    .array-data 1
        0x4at
        0x49t
        0x41t
        0x4et
        0x47t
        0x0t
    .end array-data

    nop

    :array_2bc8
    .array-data 1
        0x4at
        0x49t
        0x41t
        0x4ft
        0x0t
        0x0t
    .end array-data

    nop

    :array_2bd0
    .array-data 1
        0x4at
        0x49t
        0x45t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2bd8
    .array-data 1
        0x4at
        0x49t
        0x4et
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2be0
    .array-data 1
        0x4at
        0x49t
        0x4et
        0x47t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2be8
    .array-data 1
        0x4at
        0x49t
        0x4ft
        0x4et
        0x47t
        0x0t
    .end array-data

    nop

    :array_2bf0
    .array-data 1
        0x4at
        0x49t
        0x55t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2bf8
    .array-data 1
        0x4at
        0x55t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2c00
    .array-data 1
        0x4at
        0x55t
        0x41t
        0x4et
        0x0t
        0x0t
    .end array-data

    nop

    :array_2c08
    .array-data 1
        0x4at
        0x55t
        0x45t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2c10
    .array-data 1
        0x4at
        0x55t
        0x4et
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2c18
    .array-data 1
        0x4bt
        0x41t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2c20
    .array-data 1
        0x4bt
        0x41t
        0x49t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2c28
    .array-data 1
        0x4bt
        0x41t
        0x4et
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2c30
    .array-data 1
        0x4bt
        0x41t
        0x4et
        0x47t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2c38
    .array-data 1
        0x4bt
        0x41t
        0x4ft
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2c40
    .array-data 1
        0x4bt
        0x45t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2c48
    .array-data 1
        0x4bt
        0x45t
        0x4et
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2c50
    .array-data 1
        0x4bt
        0x45t
        0x4et
        0x47t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2c58
    .array-data 1
        0x4bt
        0x4ft
        0x4et
        0x47t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2c60
    .array-data 1
        0x4bt
        0x4ft
        0x55t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2c68
    .array-data 1
        0x4bt
        0x55t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2c70
    .array-data 1
        0x4bt
        0x55t
        0x41t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2c78
    .array-data 1
        0x4bt
        0x55t
        0x41t
        0x49t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2c80
    .array-data 1
        0x4bt
        0x55t
        0x41t
        0x4et
        0x0t
        0x0t
    .end array-data

    nop

    :array_2c88
    .array-data 1
        0x4bt
        0x55t
        0x41t
        0x4et
        0x47t
        0x0t
    .end array-data

    nop

    :array_2c90
    .array-data 1
        0x4bt
        0x55t
        0x49t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2c98
    .array-data 1
        0x4bt
        0x55t
        0x4et
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2ca0
    .array-data 1
        0x4bt
        0x55t
        0x4ft
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2ca8
    .array-data 1
        0x4ct
        0x41t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2cb0
    .array-data 1
        0x4ct
        0x41t
        0x49t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2cb8
    .array-data 1
        0x4ct
        0x41t
        0x4et
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2cc0
    .array-data 1
        0x4ct
        0x41t
        0x4et
        0x47t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2cc8
    .array-data 1
        0x4ct
        0x41t
        0x4ft
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2cd0
    .array-data 1
        0x4ct
        0x45t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2cd8
    .array-data 1
        0x4ct
        0x45t
        0x49t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2ce0
    .array-data 1
        0x4ct
        0x45t
        0x4et
        0x47t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2ce8
    .array-data 1
        0x4ct
        0x49t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2cf0
    .array-data 1
        0x4ct
        0x49t
        0x41t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2cf8
    .array-data 1
        0x4ct
        0x49t
        0x41t
        0x4et
        0x0t
        0x0t
    .end array-data

    nop

    :array_2d00
    .array-data 1
        0x4ct
        0x49t
        0x41t
        0x4et
        0x47t
        0x0t
    .end array-data

    nop

    :array_2d08
    .array-data 1
        0x4ct
        0x49t
        0x41t
        0x4ft
        0x0t
        0x0t
    .end array-data

    nop

    :array_2d10
    .array-data 1
        0x4ct
        0x49t
        0x45t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2d18
    .array-data 1
        0x4ct
        0x49t
        0x4et
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2d20
    .array-data 1
        0x4ct
        0x49t
        0x4et
        0x47t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2d28
    .array-data 1
        0x4ct
        0x49t
        0x55t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2d30
    .array-data 1
        0x4ct
        0x4ft
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2d38
    .array-data 1
        0x4ct
        0x4ft
        0x4et
        0x47t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2d40
    .array-data 1
        0x4ct
        0x4ft
        0x55t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2d48
    .array-data 1
        0x4ct
        0x55t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2d50
    .array-data 1
        0x4ct
        0x55t
        0x41t
        0x4et
        0x0t
        0x0t
    .end array-data

    nop

    :array_2d58
    .array-data 1
        0x4ct
        0x55t
        0x45t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2d60
    .array-data 1
        0x4ct
        0x55t
        0x4et
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2d68
    .array-data 1
        0x4ct
        0x55t
        0x4ft
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2d70
    .array-data 1
        0x4dt
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2d78
    .array-data 1
        0x4dt
        0x41t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2d80
    .array-data 1
        0x4dt
        0x41t
        0x49t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2d88
    .array-data 1
        0x4dt
        0x41t
        0x4et
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2d90
    .array-data 1
        0x4dt
        0x41t
        0x4et
        0x47t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2d98
    .array-data 1
        0x4dt
        0x41t
        0x4ft
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2da0
    .array-data 1
        0x4dt
        0x45t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2da8
    .array-data 1
        0x4dt
        0x45t
        0x49t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2db0
    .array-data 1
        0x4dt
        0x45t
        0x4et
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2db8
    .array-data 1
        0x4dt
        0x45t
        0x4et
        0x47t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2dc0
    .array-data 1
        0x4dt
        0x49t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2dc8
    .array-data 1
        0x4dt
        0x49t
        0x41t
        0x4et
        0x0t
        0x0t
    .end array-data

    nop

    :array_2dd0
    .array-data 1
        0x4dt
        0x49t
        0x41t
        0x4ft
        0x0t
        0x0t
    .end array-data

    nop

    :array_2dd8
    .array-data 1
        0x4dt
        0x49t
        0x45t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2de0
    .array-data 1
        0x4dt
        0x49t
        0x4et
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2de8
    .array-data 1
        0x4dt
        0x49t
        0x4et
        0x47t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2df0
    .array-data 1
        0x4dt
        0x49t
        0x55t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2df8
    .array-data 1
        0x4dt
        0x4ft
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2e00
    .array-data 1
        0x4dt
        0x4ft
        0x55t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2e08
    .array-data 1
        0x4dt
        0x55t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2e10
    .array-data 1
        0x4et
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2e18
    .array-data 1
        0x4et
        0x41t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2e20
    .array-data 1
        0x4et
        0x41t
        0x49t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2e28
    .array-data 1
        0x4et
        0x41t
        0x4et
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2e30
    .array-data 1
        0x4et
        0x41t
        0x4et
        0x47t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2e38
    .array-data 1
        0x4et
        0x41t
        0x4ft
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2e40
    .array-data 1
        0x4et
        0x45t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2e48
    .array-data 1
        0x4et
        0x45t
        0x49t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2e50
    .array-data 1
        0x4et
        0x45t
        0x4et
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2e58
    .array-data 1
        0x4et
        0x45t
        0x4et
        0x47t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2e60
    .array-data 1
        0x4et
        0x49t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2e68
    .array-data 1
        0x4et
        0x49t
        0x41t
        0x4et
        0x0t
        0x0t
    .end array-data

    nop

    :array_2e70
    .array-data 1
        0x4et
        0x49t
        0x41t
        0x4et
        0x47t
        0x0t
    .end array-data

    nop

    :array_2e78
    .array-data 1
        0x4et
        0x49t
        0x41t
        0x4ft
        0x0t
        0x0t
    .end array-data

    nop

    :array_2e80
    .array-data 1
        0x4et
        0x49t
        0x45t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2e88
    .array-data 1
        0x4et
        0x49t
        0x4et
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2e90
    .array-data 1
        0x4et
        0x49t
        0x4et
        0x47t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2e98
    .array-data 1
        0x4et
        0x49t
        0x55t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2ea0
    .array-data 1
        0x4et
        0x4ft
        0x4et
        0x47t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2ea8
    .array-data 1
        0x4et
        0x4ft
        0x55t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2eb0
    .array-data 1
        0x4et
        0x55t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2eb8
    .array-data 1
        0x4et
        0x55t
        0x41t
        0x4et
        0x0t
        0x0t
    .end array-data

    nop

    :array_2ec0
    .array-data 1
        0x4et
        0x55t
        0x45t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2ec8
    .array-data 1
        0x4et
        0x55t
        0x4et
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2ed0
    .array-data 1
        0x4et
        0x55t
        0x4ft
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2ed8
    .array-data 1
        0x4ft
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2ee0
    .array-data 1
        0x4ft
        0x55t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2ee8
    .array-data 1
        0x50t
        0x41t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2ef0
    .array-data 1
        0x50t
        0x41t
        0x49t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2ef8
    .array-data 1
        0x50t
        0x41t
        0x4et
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2f00
    .array-data 1
        0x50t
        0x41t
        0x4et
        0x47t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2f08
    .array-data 1
        0x50t
        0x41t
        0x4ft
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2f10
    .array-data 1
        0x50t
        0x45t
        0x49t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2f18
    .array-data 1
        0x50t
        0x45t
        0x4et
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2f20
    .array-data 1
        0x50t
        0x45t
        0x4et
        0x47t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2f28
    .array-data 1
        0x50t
        0x49t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2f30
    .array-data 1
        0x50t
        0x49t
        0x41t
        0x4et
        0x0t
        0x0t
    .end array-data

    nop

    :array_2f38
    .array-data 1
        0x50t
        0x49t
        0x41t
        0x4ft
        0x0t
        0x0t
    .end array-data

    nop

    :array_2f40
    .array-data 1
        0x50t
        0x49t
        0x45t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2f48
    .array-data 1
        0x50t
        0x49t
        0x4et
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2f50
    .array-data 1
        0x50t
        0x49t
        0x4et
        0x47t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2f58
    .array-data 1
        0x50t
        0x4ft
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2f60
    .array-data 1
        0x50t
        0x4ft
        0x55t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2f68
    .array-data 1
        0x50t
        0x55t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2f70
    .array-data 1
        0x51t
        0x49t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2f78
    .array-data 1
        0x51t
        0x49t
        0x41t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2f80
    .array-data 1
        0x51t
        0x49t
        0x41t
        0x4et
        0x0t
        0x0t
    .end array-data

    nop

    :array_2f88
    .array-data 1
        0x51t
        0x49t
        0x41t
        0x4et
        0x47t
        0x0t
    .end array-data

    nop

    :array_2f90
    .array-data 1
        0x51t
        0x49t
        0x41t
        0x4ft
        0x0t
        0x0t
    .end array-data

    nop

    :array_2f98
    .array-data 1
        0x51t
        0x49t
        0x45t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2fa0
    .array-data 1
        0x51t
        0x49t
        0x4et
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2fa8
    .array-data 1
        0x51t
        0x49t
        0x4et
        0x47t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2fb0
    .array-data 1
        0x51t
        0x49t
        0x4ft
        0x4et
        0x47t
        0x0t
    .end array-data

    nop

    :array_2fb8
    .array-data 1
        0x51t
        0x49t
        0x55t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2fc0
    .array-data 1
        0x51t
        0x55t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2fc8
    .array-data 1
        0x51t
        0x55t
        0x41t
        0x4et
        0x0t
        0x0t
    .end array-data

    nop

    :array_2fd0
    .array-data 1
        0x51t
        0x55t
        0x45t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2fd8
    .array-data 1
        0x51t
        0x55t
        0x4et
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2fe0
    .array-data 1
        0x52t
        0x41t
        0x4et
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2fe8
    .array-data 1
        0x52t
        0x41t
        0x4et
        0x47t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2ff0
    .array-data 1
        0x52t
        0x41t
        0x4ft
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2ff8
    .array-data 1
        0x52t
        0x45t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_3000
    .array-data 1
        0x52t
        0x45t
        0x4et
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_3008
    .array-data 1
        0x52t
        0x45t
        0x4et
        0x47t
        0x0t
        0x0t
    .end array-data

    nop

    :array_3010
    .array-data 1
        0x52t
        0x49t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_3018
    .array-data 1
        0x52t
        0x4ft
        0x4et
        0x47t
        0x0t
        0x0t
    .end array-data

    nop

    :array_3020
    .array-data 1
        0x52t
        0x4ft
        0x55t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_3028
    .array-data 1
        0x52t
        0x55t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_3030
    .array-data 1
        0x52t
        0x55t
        0x41t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_3038
    .array-data 1
        0x52t
        0x55t
        0x41t
        0x4et
        0x0t
        0x0t
    .end array-data

    nop

    :array_3040
    .array-data 1
        0x52t
        0x55t
        0x49t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_3048
    .array-data 1
        0x52t
        0x55t
        0x4et
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_3050
    .array-data 1
        0x52t
        0x55t
        0x4ft
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_3058
    .array-data 1
        0x53t
        0x41t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_3060
    .array-data 1
        0x53t
        0x41t
        0x49t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_3068
    .array-data 1
        0x53t
        0x41t
        0x4et
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_3070
    .array-data 1
        0x53t
        0x41t
        0x4et
        0x47t
        0x0t
        0x0t
    .end array-data

    nop

    :array_3078
    .array-data 1
        0x53t
        0x41t
        0x4ft
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_3080
    .array-data 1
        0x53t
        0x45t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_3088
    .array-data 1
        0x53t
        0x45t
        0x4et
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_3090
    .array-data 1
        0x53t
        0x45t
        0x4et
        0x47t
        0x0t
        0x0t
    .end array-data

    nop

    :array_3098
    .array-data 1
        0x53t
        0x48t
        0x41t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_30a0
    .array-data 1
        0x53t
        0x48t
        0x41t
        0x49t
        0x0t
        0x0t
    .end array-data

    nop

    :array_30a8
    .array-data 1
        0x53t
        0x48t
        0x41t
        0x4et
        0x0t
        0x0t
    .end array-data

    nop

    :array_30b0
    .array-data 1
        0x53t
        0x48t
        0x41t
        0x4et
        0x47t
        0x0t
    .end array-data

    nop

    :array_30b8
    .array-data 1
        0x53t
        0x48t
        0x41t
        0x4ft
        0x0t
        0x0t
    .end array-data

    nop

    :array_30c0
    .array-data 1
        0x53t
        0x48t
        0x45t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_30c8
    .array-data 1
        0x53t
        0x48t
        0x45t
        0x4et
        0x0t
        0x0t
    .end array-data

    nop

    :array_30d0
    .array-data 1
        0x58t
        0x49t
        0x4et
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_30d8
    .array-data 1
        0x53t
        0x48t
        0x45t
        0x4et
        0x0t
        0x0t
    .end array-data

    nop

    :array_30e0
    .array-data 1
        0x53t
        0x48t
        0x45t
        0x4et
        0x47t
        0x0t
    .end array-data

    nop

    :array_30e8
    .array-data 1
        0x53t
        0x48t
        0x49t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_30f0
    .array-data 1
        0x53t
        0x48t
        0x4ft
        0x55t
        0x0t
        0x0t
    .end array-data

    nop

    :array_30f8
    .array-data 1
        0x53t
        0x48t
        0x55t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_3100
    .array-data 1
        0x53t
        0x48t
        0x55t
        0x41t
        0x0t
        0x0t
    .end array-data

    nop

    :array_3108
    .array-data 1
        0x53t
        0x48t
        0x55t
        0x41t
        0x49t
        0x0t
    .end array-data

    nop

    :array_3110
    .array-data 1
        0x53t
        0x48t
        0x55t
        0x41t
        0x4et
        0x0t
    .end array-data

    nop

    :array_3118
    .array-data 1
        0x53t
        0x48t
        0x55t
        0x41t
        0x4et
        0x47t
    .end array-data

    nop

    :array_3120
    .array-data 1
        0x53t
        0x48t
        0x55t
        0x49t
        0x0t
        0x0t
    .end array-data

    nop

    :array_3128
    .array-data 1
        0x53t
        0x48t
        0x55t
        0x4et
        0x0t
        0x0t
    .end array-data

    nop

    :array_3130
    .array-data 1
        0x53t
        0x48t
        0x55t
        0x4ft
        0x0t
        0x0t
    .end array-data

    nop

    :array_3138
    .array-data 1
        0x53t
        0x49t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_3140
    .array-data 1
        0x53t
        0x4ft
        0x4et
        0x47t
        0x0t
        0x0t
    .end array-data

    nop

    :array_3148
    .array-data 1
        0x53t
        0x4ft
        0x55t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_3150
    .array-data 1
        0x53t
        0x55t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_3158
    .array-data 1
        0x53t
        0x55t
        0x41t
        0x4et
        0x0t
        0x0t
    .end array-data

    nop

    :array_3160
    .array-data 1
        0x53t
        0x55t
        0x49t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_3168
    .array-data 1
        0x53t
        0x55t
        0x4et
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_3170
    .array-data 1
        0x53t
        0x55t
        0x4ft
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_3178
    .array-data 1
        0x54t
        0x41t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_3180
    .array-data 1
        0x54t
        0x41t
        0x49t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_3188
    .array-data 1
        0x54t
        0x41t
        0x4et
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_3190
    .array-data 1
        0x54t
        0x41t
        0x4et
        0x47t
        0x0t
        0x0t
    .end array-data

    nop

    :array_3198
    .array-data 1
        0x54t
        0x41t
        0x4ft
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_31a0
    .array-data 1
        0x54t
        0x45t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_31a8
    .array-data 1
        0x54t
        0x45t
        0x4et
        0x47t
        0x0t
        0x0t
    .end array-data

    nop

    :array_31b0
    .array-data 1
        0x54t
        0x49t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_31b8
    .array-data 1
        0x54t
        0x49t
        0x41t
        0x4et
        0x0t
        0x0t
    .end array-data

    nop

    :array_31c0
    .array-data 1
        0x54t
        0x49t
        0x41t
        0x4ft
        0x0t
        0x0t
    .end array-data

    nop

    :array_31c8
    .array-data 1
        0x54t
        0x49t
        0x45t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_31d0
    .array-data 1
        0x54t
        0x49t
        0x4et
        0x47t
        0x0t
        0x0t
    .end array-data

    nop

    :array_31d8
    .array-data 1
        0x54t
        0x4ft
        0x4et
        0x47t
        0x0t
        0x0t
    .end array-data

    nop

    :array_31e0
    .array-data 1
        0x54t
        0x4ft
        0x55t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_31e8
    .array-data 1
        0x54t
        0x55t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_31f0
    .array-data 1
        0x54t
        0x55t
        0x41t
        0x4et
        0x0t
        0x0t
    .end array-data

    nop

    :array_31f8
    .array-data 1
        0x54t
        0x55t
        0x49t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_3200
    .array-data 1
        0x54t
        0x55t
        0x4et
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_3208
    .array-data 1
        0x54t
        0x55t
        0x4ft
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_3210
    .array-data 1
        0x57t
        0x41t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_3218
    .array-data 1
        0x57t
        0x41t
        0x49t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_3220
    .array-data 1
        0x57t
        0x41t
        0x4et
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_3228
    .array-data 1
        0x57t
        0x41t
        0x4et
        0x47t
        0x0t
        0x0t
    .end array-data

    nop

    :array_3230
    .array-data 1
        0x57t
        0x45t
        0x49t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_3238
    .array-data 1
        0x57t
        0x45t
        0x4et
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_3240
    .array-data 1
        0x57t
        0x45t
        0x4et
        0x47t
        0x0t
        0x0t
    .end array-data

    nop

    :array_3248
    .array-data 1
        0x57t
        0x4ft
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_3250
    .array-data 1
        0x57t
        0x55t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_3258
    .array-data 1
        0x58t
        0x49t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_3260
    .array-data 1
        0x58t
        0x49t
        0x41t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_3268
    .array-data 1
        0x58t
        0x49t
        0x41t
        0x4et
        0x0t
        0x0t
    .end array-data

    nop

    :array_3270
    .array-data 1
        0x58t
        0x49t
        0x41t
        0x4et
        0x47t
        0x0t
    .end array-data

    nop

    :array_3278
    .array-data 1
        0x58t
        0x49t
        0x41t
        0x4ft
        0x0t
        0x0t
    .end array-data

    nop

    :array_3280
    .array-data 1
        0x58t
        0x49t
        0x45t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_3288
    .array-data 1
        0x58t
        0x49t
        0x4et
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_3290
    .array-data 1
        0x58t
        0x49t
        0x4et
        0x47t
        0x0t
        0x0t
    .end array-data

    nop

    :array_3298
    .array-data 1
        0x58t
        0x49t
        0x4ft
        0x4et
        0x47t
        0x0t
    .end array-data

    nop

    :array_32a0
    .array-data 1
        0x58t
        0x49t
        0x55t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_32a8
    .array-data 1
        0x58t
        0x55t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_32b0
    .array-data 1
        0x58t
        0x55t
        0x41t
        0x4et
        0x0t
        0x0t
    .end array-data

    nop

    :array_32b8
    .array-data 1
        0x58t
        0x55t
        0x45t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_32c0
    .array-data 1
        0x58t
        0x55t
        0x4et
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_32c8
    .array-data 1
        0x59t
        0x41t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_32d0
    .array-data 1
        0x59t
        0x41t
        0x4et
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_32d8
    .array-data 1
        0x59t
        0x41t
        0x4et
        0x47t
        0x0t
        0x0t
    .end array-data

    nop

    :array_32e0
    .array-data 1
        0x59t
        0x41t
        0x4ft
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_32e8
    .array-data 1
        0x59t
        0x45t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_32f0
    .array-data 1
        0x59t
        0x49t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_32f8
    .array-data 1
        0x59t
        0x49t
        0x4et
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_3300
    .array-data 1
        0x59t
        0x49t
        0x4et
        0x47t
        0x0t
        0x0t
    .end array-data

    nop

    :array_3308
    .array-data 1
        0x59t
        0x4ft
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_3310
    .array-data 1
        0x59t
        0x4ft
        0x4et
        0x47t
        0x0t
        0x0t
    .end array-data

    nop

    :array_3318
    .array-data 1
        0x59t
        0x4ft
        0x55t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_3320
    .array-data 1
        0x59t
        0x55t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_3328
    .array-data 1
        0x59t
        0x55t
        0x41t
        0x4et
        0x0t
        0x0t
    .end array-data

    nop

    :array_3330
    .array-data 1
        0x59t
        0x55t
        0x45t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_3338
    .array-data 1
        0x59t
        0x55t
        0x4et
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_3340
    .array-data 1
        0x4at
        0x55t
        0x4et
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_3348
    .array-data 1
        0x59t
        0x55t
        0x4et
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_3350
    .array-data 1
        0x5at
        0x41t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_3358
    .array-data 1
        0x5at
        0x41t
        0x49t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_3360
    .array-data 1
        0x5at
        0x41t
        0x4et
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_3368
    .array-data 1
        0x5at
        0x41t
        0x4et
        0x47t
        0x0t
        0x0t
    .end array-data

    nop

    :array_3370
    .array-data 1
        0x5at
        0x41t
        0x4ft
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_3378
    .array-data 1
        0x5at
        0x45t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_3380
    .array-data 1
        0x5at
        0x45t
        0x49t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_3388
    .array-data 1
        0x5at
        0x45t
        0x4et
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_3390
    .array-data 1
        0x5at
        0x45t
        0x4et
        0x47t
        0x0t
        0x0t
    .end array-data

    nop

    :array_3398
    .array-data 1
        0x5at
        0x48t
        0x41t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_33a0
    .array-data 1
        0x5at
        0x48t
        0x41t
        0x49t
        0x0t
        0x0t
    .end array-data

    nop

    :array_33a8
    .array-data 1
        0x5at
        0x48t
        0x41t
        0x4et
        0x0t
        0x0t
    .end array-data

    nop

    :array_33b0
    .array-data 1
        0x5at
        0x48t
        0x41t
        0x4et
        0x47t
        0x0t
    .end array-data

    nop

    :array_33b8
    .array-data 1
        0x43t
        0x48t
        0x41t
        0x4et
        0x47t
        0x0t
    .end array-data

    nop

    :array_33c0
    .array-data 1
        0x5at
        0x48t
        0x41t
        0x4et
        0x47t
        0x0t
    .end array-data

    nop

    :array_33c8
    .array-data 1
        0x5at
        0x48t
        0x41t
        0x4ft
        0x0t
        0x0t
    .end array-data

    nop

    :array_33d0
    .array-data 1
        0x5at
        0x48t
        0x45t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_33d8
    .array-data 1
        0x5at
        0x48t
        0x45t
        0x4et
        0x0t
        0x0t
    .end array-data

    nop

    :array_33e0
    .array-data 1
        0x5at
        0x48t
        0x45t
        0x4et
        0x47t
        0x0t
    .end array-data

    nop

    :array_33e8
    .array-data 1
        0x5at
        0x48t
        0x49t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_33f0
    .array-data 1
        0x53t
        0x48t
        0x49t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_33f8
    .array-data 1
        0x5at
        0x48t
        0x49t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_3400
    .array-data 1
        0x5at
        0x48t
        0x4ft
        0x4et
        0x47t
        0x0t
    .end array-data

    nop

    :array_3408
    .array-data 1
        0x5at
        0x48t
        0x4ft
        0x55t
        0x0t
        0x0t
    .end array-data

    nop

    :array_3410
    .array-data 1
        0x5at
        0x48t
        0x55t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_3418
    .array-data 1
        0x5at
        0x48t
        0x55t
        0x41t
        0x0t
        0x0t
    .end array-data

    nop

    :array_3420
    .array-data 1
        0x5at
        0x48t
        0x55t
        0x41t
        0x49t
        0x0t
    .end array-data

    nop

    :array_3428
    .array-data 1
        0x5at
        0x48t
        0x55t
        0x41t
        0x4et
        0x0t
    .end array-data

    nop

    :array_3430
    .array-data 1
        0x5at
        0x48t
        0x55t
        0x41t
        0x4et
        0x47t
    .end array-data

    nop

    :array_3438
    .array-data 1
        0x5at
        0x48t
        0x55t
        0x49t
        0x0t
        0x0t
    .end array-data

    nop

    :array_3440
    .array-data 1
        0x5at
        0x48t
        0x55t
        0x4et
        0x0t
        0x0t
    .end array-data

    nop

    :array_3448
    .array-data 1
        0x5at
        0x48t
        0x55t
        0x4ft
        0x0t
        0x0t
    .end array-data

    nop

    :array_3450
    .array-data 1
        0x5at
        0x49t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_3458
    .array-data 1
        0x5at
        0x4ft
        0x4et
        0x47t
        0x0t
        0x0t
    .end array-data

    nop

    :array_3460
    .array-data 1
        0x5at
        0x4ft
        0x55t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_3468
    .array-data 1
        0x5at
        0x55t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_3470
    .array-data 1
        0x5at
        0x55t
        0x41t
        0x4et
        0x0t
        0x0t
    .end array-data

    nop

    :array_3478
    .array-data 1
        0x5at
        0x55t
        0x49t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_3480
    .array-data 1
        0x5at
        0x55t
        0x4et
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_3488
    .array-data 1
        0x5at
        0x55t
        0x4ft
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_3490
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_3498
    .array-data 1
        0x53t
        0x48t
        0x41t
        0x4et
        0x0t
        0x0t
    .end array-data

    nop

    :array_34a0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method private constructor <init>(Z)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/common/sort/HanziToPinyin;->mHasChinaCollator:Z

    return-void
.end method

.method private addToken(Ljava/lang/StringBuilder;Ljava/util/ArrayList;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/ArrayList<",
            "Lcom/android/common/sort/HanziToPinyin$Token;",
            ">;I)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Lcom/android/common/sort/HanziToPinyin$Token;

    invoke-direct {v0, p3, p0, p0}, Lcom/android/common/sort/HanziToPinyin$Token;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->setLength(I)V

    return-void
.end method

.method private static doSelfValidation()Z
    .registers 8

    sget-object v0, Lcom/android/common/sort/HanziToPinyin;->UNIHANS:[C

    const/4 v1, 0x0

    aget-char v2, v0, v1

    invoke-static {v2}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v3

    array-length v4, v0

    move v5, v1

    :goto_b
    if-ge v5, v4, :cond_46

    aget-char v6, v0, v5

    if-ne v2, v6, :cond_12

    goto :goto_43

    :cond_12
    invoke-static {v6}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/android/common/sort/HanziToPinyin;->COLLATOR:Ljava/text/Collator;

    invoke-virtual {v7, v3, v6}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    if-ltz v7, :cond_42

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Internal error in Unihan table. The last string \""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\" is greater than current string \""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\"."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "HanziToPinyin"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_42
    move-object v3, v6

    :goto_43
    add-int/lit8 v5, v5, 0x1

    goto :goto_b

    :cond_46
    const/4 v0, 0x1

    return v0
.end method

.method public static getInstance()Lcom/android/common/sort/HanziToPinyin;
    .registers 7

    const-class v0, Lcom/android/common/sort/HanziToPinyin;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/android/common/sort/HanziToPinyin;->sInstance:Lcom/android/common/sort/HanziToPinyin;

    if-eqz v1, :cond_9

    monitor-exit v0

    return-object v1

    :cond_9
    invoke-static {}, Ljava/text/Collator;->getAvailableLocales()[Ljava/util/Locale;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_f
    const/4 v4, 0x1

    if-ge v3, v2, :cond_28

    aget-object v5, v1, v3

    sget-object v6, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-virtual {v5, v6}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_25

    new-instance v1, Lcom/android/common/sort/HanziToPinyin;

    invoke-direct {v1, v4}, Lcom/android/common/sort/HanziToPinyin;-><init>(Z)V

    sput-object v1, Lcom/android/common/sort/HanziToPinyin;->sInstance:Lcom/android/common/sort/HanziToPinyin;

    monitor-exit v0

    return-object v1

    :cond_25
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    :cond_28
    const-string v1, "HanziToPinyin"

    const-string v2, "There is no Chinese collator, HanziToPinyin is disabled"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/android/common/sort/HanziToPinyin;

    invoke-direct {v1, v4}, Lcom/android/common/sort/HanziToPinyin;-><init>(Z)V

    sput-object v1, Lcom/android/common/sort/HanziToPinyin;->sInstance:Lcom/android/common/sort/HanziToPinyin;

    monitor-exit v0

    return-object v1

    :catchall_38
    move-exception v1

    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_3 .. :try_end_3a} :catchall_38

    throw v1
.end method

.method private getToken(C)Lcom/android/common/sort/HanziToPinyin$Token;
    .registers 10

    new-instance p0, Lcom/android/common/sort/HanziToPinyin$Token;

    invoke-direct {p0}, Lcom/android/common/sort/HanziToPinyin$Token;-><init>()V

    invoke-static {p1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/sort/HanziToPinyin$Token;->mSource:Ljava/lang/String;

    const/4 v1, 0x1

    const/16 v2, 0x100

    if-ge p1, v2, :cond_15

    iput v1, p0, Lcom/android/common/sort/HanziToPinyin$Token;->mType:I

    iput-object v0, p0, Lcom/android/common/sort/HanziToPinyin$Token;->mTarget:Ljava/lang/String;

    return-object p0

    :cond_15
    sget-object p1, Lcom/android/common/sort/HanziToPinyin;->COLLATOR:Ljava/text/Collator;

    const-string/jumbo v2, "阿"

    invoke-virtual {p1, v0, v2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x3

    if-gez v2, :cond_26

    iput v3, p0, Lcom/android/common/sort/HanziToPinyin$Token;->mType:I

    iput-object v0, p0, Lcom/android/common/sort/HanziToPinyin$Token;->mTarget:Ljava/lang/String;

    return-object p0

    :cond_26
    const/4 v4, 0x0

    const/4 v5, 0x2

    if-nez v2, :cond_2e

    iput v5, p0, Lcom/android/common/sort/HanziToPinyin$Token;->mType:I

    move p1, v4

    goto :goto_46

    :cond_2e
    const-string/jumbo v2, "鿿"

    invoke-virtual {p1, v0, v2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_3c

    iput v3, p0, Lcom/android/common/sort/HanziToPinyin$Token;->mType:I

    iput-object v0, p0, Lcom/android/common/sort/HanziToPinyin$Token;->mTarget:Ljava/lang/String;

    return-object p0

    :cond_3c
    if-nez v2, :cond_45

    iput v5, p0, Lcom/android/common/sort/HanziToPinyin$Token;->mType:I

    sget-object p1, Lcom/android/common/sort/HanziToPinyin;->UNIHANS:[C

    array-length p1, p1

    sub-int/2addr p1, v1

    goto :goto_46

    :cond_45
    const/4 p1, -0x1

    :goto_46
    iput v5, p0, Lcom/android/common/sort/HanziToPinyin$Token;->mType:I

    :try_start_48
    invoke-static {v0}, Lcom/android/common/sort/WordQuery;->getWholePinyinStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/common/sort/HanziToPinyin$Token;->mTarget:Ljava/lang/String;
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_4e} :catch_4f

    goto :goto_52

    :catch_4f
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/common/sort/HanziToPinyin$Token;->mTarget:Ljava/lang/String;

    :goto_52
    iget-object v6, p0, Lcom/android/common/sort/HanziToPinyin$Token;->mTarget:Ljava/lang/String;

    if-eqz v6, :cond_5c

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_b4

    :cond_5c
    if-gez p1, :cond_81

    sget-object v6, Lcom/android/common/sort/HanziToPinyin;->UNIHANS:[C

    array-length v6, v6

    sub-int/2addr v6, v1

    move v1, v4

    :goto_63
    if-gt v1, v6, :cond_81

    add-int p1, v1, v6

    div-int/2addr p1, v5

    sget-object v2, Lcom/android/common/sort/HanziToPinyin;->UNIHANS:[C

    aget-char v2, v2, p1

    invoke-static {v2}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v2

    sget-object v7, Lcom/android/common/sort/HanziToPinyin;->COLLATOR:Ljava/text/Collator;

    invoke-virtual {v7, v0, v2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_79

    goto :goto_81

    :cond_79
    if-lez v2, :cond_7e

    add-int/lit8 v1, p1, 0x1

    goto :goto_63

    :cond_7e
    add-int/lit8 v6, p1, -0x1

    goto :goto_63

    :cond_81
    :goto_81
    if-gez v2, :cond_85

    add-int/lit8 p1, p1, -0x1

    :cond_85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_8a
    sget-object v1, Lcom/android/common/sort/HanziToPinyin;->PINYINS:[[B

    aget-object v2, v1, p1

    array-length v2, v2

    if-ge v4, v2, :cond_a2

    aget-object v2, v1, p1

    aget-byte v2, v2, v4

    if-eqz v2, :cond_a2

    aget-object v1, v1, p1

    aget-byte v1, v1, v4

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_8a

    :cond_a2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/common/sort/HanziToPinyin$Token;->mTarget:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_b4

    iput v3, p0, Lcom/android/common/sort/HanziToPinyin$Token;->mType:I

    iget-object p1, p0, Lcom/android/common/sort/HanziToPinyin$Token;->mSource:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/common/sort/HanziToPinyin$Token;->mTarget:Ljava/lang/String;

    :cond_b4
    return-object p0
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
    if-ge v3, v0, :cond_7b

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x4e00

    if-lt v5, v6, :cond_75

    const v6, 0x9fa5

    if-gt v5, v6, :cond_75

    invoke-static {v5}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v6

    :try_start_22
    invoke-static {v6}, Lcom/android/common/sort/WordQuery;->getWholePinyinStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const v7, 0x8449

    if-ne v5, v7, :cond_30

    const-string/jumbo v6, "ye"
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_2e} :catch_2f

    goto :goto_30

    :catch_2f
    const/4 v6, 0x0

    :cond_30
    :goto_30
    sget-object v5, Lcom/android/common/sort/HanziToPinyin;->sPinYinToZhuYingHashMap:Ljava/util/HashMap;

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const/4 v7, 0x1

    if-nez v5, :cond_70

    sget-object v5, Lcom/android/common/sort/HanziToPinyin;->PINYIN_TO_ZHUYING_TABLE:[[Ljava/lang/String;

    array-length v5, v5

    sub-int/2addr v5, v7

    move v8, v2

    :goto_40
    if-gt v8, v5, :cond_6e

    add-int v9, v8, v5

    div-int/lit8 v9, v9, 0x2

    sget-object v10, Lcom/android/common/sort/HanziToPinyin;->PINYIN_TO_ZHUYING_TABLE:[[Ljava/lang/String;

    aget-object v11, v10, v9

    aget-object v11, v11, v2

    invoke-virtual {v11, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v11

    if-nez v11, :cond_65

    aget-object v4, v10, v9

    aget-object v6, v4, v7

    sget-object v4, Lcom/android/common/sort/HanziToPinyin;->sPinYinToZhuYingHashMap:Ljava/util/HashMap;

    aget-object v5, v10, v9

    aget-object v5, v5, v2

    aget-object v8, v10, v9

    aget-object v8, v8, v7

    invoke-virtual {v4, v5, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v4, v7

    goto :goto_6e

    :cond_65
    if-lez v11, :cond_6b

    add-int/lit8 v9, v9, -0x1

    move v5, v9

    goto :goto_40

    :cond_6b
    add-int/lit8 v8, v9, 0x1

    goto :goto_40

    :cond_6e
    :goto_6e
    move-object v5, v6

    goto :goto_71

    :cond_70
    move v4, v7

    :goto_71
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_78

    :cond_75
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_78
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    :cond_7b
    if-eqz v4, :cond_8a

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "#"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_8a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public get(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/android/common/sort/HanziToPinyin$Token;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-boolean v1, p0, Lcom/android/common/sort/HanziToPinyin;->mHasChinaCollator:Z

    if-eqz v1, :cond_78

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_11

    goto/16 :goto_78

    :cond_11
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    const/4 v4, 0x1

    move v5, v4

    :goto_1d
    if-ge v3, v1, :cond_6f

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x20

    const/4 v8, 0x2

    if-ne v6, v7, :cond_32

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_6c

    invoke-direct {p0, v2, v0, v5}, Lcom/android/common/sort/HanziToPinyin;->addToken(Ljava/lang/StringBuilder;Ljava/util/ArrayList;I)V

    goto :goto_6c

    :cond_32
    const/16 v7, 0x100

    if-ge v6, v7, :cond_46

    if-eq v5, v4, :cond_41

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_41

    invoke-direct {p0, v2, v0, v5}, Lcom/android/common/sort/HanziToPinyin;->addToken(Ljava/lang/StringBuilder;Ljava/util/ArrayList;I)V

    :cond_41
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v5, v4

    goto :goto_6c

    :cond_46
    invoke-direct {p0, v6}, Lcom/android/common/sort/HanziToPinyin;->getToken(C)Lcom/android/common/sort/HanziToPinyin$Token;

    move-result-object v7

    iget v9, v7, Lcom/android/common/sort/HanziToPinyin$Token;->mType:I

    if-ne v9, v8, :cond_5c

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_57

    invoke-direct {p0, v2, v0, v5}, Lcom/android/common/sort/HanziToPinyin;->addToken(Ljava/lang/StringBuilder;Ljava/util/ArrayList;I)V

    :cond_57
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v5, v8

    goto :goto_6c

    :cond_5c
    if-eq v5, v9, :cond_67

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    if-lez v8, :cond_67

    invoke-direct {p0, v2, v0, v5}, Lcom/android/common/sort/HanziToPinyin;->addToken(Ljava/lang/StringBuilder;Ljava/util/ArrayList;I)V

    :cond_67
    iget v5, v7, Lcom/android/common/sort/HanziToPinyin$Token;->mType:I

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_6c
    :goto_6c
    add-int/lit8 v3, v3, 0x1

    goto :goto_1d

    :cond_6f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    if-lez p1, :cond_78

    invoke-direct {p0, v2, v0, v5}, Lcom/android/common/sort/HanziToPinyin;->addToken(Ljava/lang/StringBuilder;Ljava/util/ArrayList;I)V

    :cond_78
    :goto_78
    return-object v0
.end method
