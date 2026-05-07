.class public Lcom/coui/appcompat/version/COUICompatUtil;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static volatile a:Lcom/coui/appcompat/version/COUICompatUtil;

.field public static final b:[C

.field public static final c:[I

.field public static final d:[I

.field public static final e:[I

.field public static final f:[I

.field public static final g:[I


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x35

    new-array v0, v0, [C

    fill-array-data v0, :array_38

    sput-object v0, Lcom/coui/appcompat/version/COUICompatUtil;->b:[C

    const/16 v0, 0x17

    new-array v0, v0, [I

    fill-array-data v0, :array_72

    sput-object v0, Lcom/coui/appcompat/version/COUICompatUtil;->c:[I

    const/16 v0, 0x11

    new-array v0, v0, [I

    fill-array-data v0, :array_a4

    sput-object v0, Lcom/coui/appcompat/version/COUICompatUtil;->d:[I

    const/16 v0, 0x30

    new-array v0, v0, [I

    fill-array-data v0, :array_ca

    sput-object v0, Lcom/coui/appcompat/version/COUICompatUtil;->e:[I

    const/16 v0, 0x29

    new-array v0, v0, [I

    fill-array-data v0, :array_12e

    sput-object v0, Lcom/coui/appcompat/version/COUICompatUtil;->f:[I

    const/16 v0, 0x15

    new-array v0, v0, [I

    fill-array-data v0, :array_184

    sput-object v0, Lcom/coui/appcompat/version/COUICompatUtil;->g:[I

    return-void

    nop

    :array_38
    .array-data 2
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
        0x67s
        0x68s
        0x69s
        0x6as
        0x6bs
        0x6cs
        0x6ds
        0x6es
        0x6fs
        0x70s
        0x71s
        0x72s
        0x73s
        0x74s
        0x75s
        0x76s
        0x77s
        0x78s
        0x79s
        0x7as
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
        0x47s
        0x48s
        0x49s
        0x4as
        0x4bs
        0x4cs
        0x4ds
        0x4es
        0x4fs
        0x50s
        0x51s
        0x52s
        0x53s
        0x54s
        0x55s
        0x56s
        0x57s
        0x58s
        0x59s
        0x5as
        0x2es
    .end array-data

    nop

    :array_72
    .array-data 4
        0x2
        0xe
        0xc
        0x34
        0x2
        0xe
        0xb
        0xe
        0x11
        0x34
        0xe
        0x12
        0x34
        0x1c
        0xe
        0xb
        0xe
        0x11
        0x1b
        0x14
        0x8
        0xb
        0x3
    .end array-data

    :array_a4
    .array-data 4
        0x6
        0x4
        0x13
        0x1c
        0xe
        0xb
        0xe
        0x11
        0x28
        0x2c
        0x2f
        0x1e
        0x2b
        0x2c
        0x22
        0x28
        0x27
    .end array-data

    :array_ca
    .array-data 4
        0x2
        0xe
        0xc
        0x34
        0x2
        0xe
        0xb
        0xe
        0x11
        0x34
        0x8
        0xd
        0xd
        0x4
        0x11
        0x34
        0x2
        0xe
        0xd
        0x13
        0x4
        0xd
        0x13
        0x34
        0x11
        0x4
        0x12
        0x34
        0x1c
        0xe
        0xd
        0x5
        0x8
        0x6
        0x14
        0x11
        0x0
        0x13
        0x8
        0xe
        0xd
        0x30
        0x11
        0x0
        0xf
        0xf
        0x4
        0x11
    .end array-data

    :array_12e
    .array-data 4
        0x2
        0xe
        0xc
        0x34
        0x2
        0xe
        0xb
        0xe
        0x11
        0x34
        0x8
        0xd
        0xd
        0x4
        0x11
        0x34
        0x16
        0x8
        0x3
        0x6
        0x4
        0x13
        0x34
        0x1a
        0x1
        0x12
        0x25
        0x8
        0x12
        0x13
        0x2f
        0x8
        0x4
        0x16
        0x30
        0x11
        0x0
        0xf
        0xf
        0x4
        0x11
    .end array-data

    :array_184
    .array-data 4
        0x11
        0xe
        0x34
        0xe
        0xf
        0xf
        0xe
        0x34
        0x13
        0x7
        0x4
        0xc
        0x4
        0x34
        0x15
        0x4
        0x11
        0x12
        0x8
        0xe
        0xd
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/coui/appcompat/version/COUICompatUtil;
    .registers 2

    sget-object v0, Lcom/coui/appcompat/version/COUICompatUtil;->a:Lcom/coui/appcompat/version/COUICompatUtil;

    if-nez v0, :cond_17

    const-class v0, Lcom/coui/appcompat/version/COUICompatUtil;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/coui/appcompat/version/COUICompatUtil;->a:Lcom/coui/appcompat/version/COUICompatUtil;

    if-nez v1, :cond_12

    new-instance v1, Lcom/coui/appcompat/version/COUICompatUtil;

    invoke-direct {v1}, Lcom/coui/appcompat/version/COUICompatUtil;-><init>()V

    sput-object v1, Lcom/coui/appcompat/version/COUICompatUtil;->a:Lcom/coui/appcompat/version/COUICompatUtil;

    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    :cond_17
    :goto_17
    sget-object v0, Lcom/coui/appcompat/version/COUICompatUtil;->a:Lcom/coui/appcompat/version/COUICompatUtil;

    return-object v0
.end method
