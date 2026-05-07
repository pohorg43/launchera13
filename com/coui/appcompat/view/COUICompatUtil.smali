.class public Lcom/coui/appcompat/view/COUICompatUtil;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static volatile a:Lcom/coui/appcompat/view/COUICompatUtil;

.field public static final b:[C

.field public static final c:[I

.field public static final d:[I


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x35

    new-array v0, v0, [C

    fill-array-data v0, :array_1c

    sput-object v0, Lcom/coui/appcompat/view/COUICompatUtil;->b:[C

    const/16 v0, 0x20

    new-array v0, v0, [I

    fill-array-data v0, :array_56

    sput-object v0, Lcom/coui/appcompat/view/COUICompatUtil;->c:[I

    const/16 v0, 0x12

    new-array v0, v0, [I

    fill-array-data v0, :array_9a

    sput-object v0, Lcom/coui/appcompat/view/COUICompatUtil;->d:[I

    return-void

    :array_1c
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

    :array_56
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
        0x15
        0x8
        0x4
        0x16
        0x34
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

    :array_9a
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
        0x2
        0xb
        0x8
        0x2
        0xa
        0x13
        0xe
        0xf
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/coui/appcompat/view/COUICompatUtil;
    .registers 2

    sget-object v0, Lcom/coui/appcompat/view/COUICompatUtil;->a:Lcom/coui/appcompat/view/COUICompatUtil;

    if-nez v0, :cond_17

    const-class v0, Lcom/coui/appcompat/view/COUICompatUtil;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/coui/appcompat/view/COUICompatUtil;->a:Lcom/coui/appcompat/view/COUICompatUtil;

    if-nez v1, :cond_12

    new-instance v1, Lcom/coui/appcompat/view/COUICompatUtil;

    invoke-direct {v1}, Lcom/coui/appcompat/view/COUICompatUtil;-><init>()V

    sput-object v1, Lcom/coui/appcompat/view/COUICompatUtil;->a:Lcom/coui/appcompat/view/COUICompatUtil;

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
    sget-object v0, Lcom/coui/appcompat/view/COUICompatUtil;->a:Lcom/coui/appcompat/view/COUICompatUtil;

    return-object v0
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .registers 5

    sget-object p0, Lcom/coui/appcompat/view/COUICompatUtil;->c:[I

    array-length p0, p0

    new-array v0, p0, [C

    const/4 v1, 0x0

    :goto_6
    if-ge v1, p0, :cond_15

    sget-object v2, Lcom/coui/appcompat/view/COUICompatUtil;->c:[I

    aget v2, v2, v1

    sget-object v3, Lcom/coui/appcompat/view/COUICompatUtil;->b:[C

    aget-char v2, v3, v2

    aput-char v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_15
    invoke-static {v0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
