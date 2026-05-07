.class public final Lcom/oplus/seedling/sdk/utils/Constants$EntranceType$Companion;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/seedling/sdk/utils/Constants$EntranceType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# static fields
.field public static final synthetic $$INSTANCE:Lcom/oplus/seedling/sdk/utils/Constants$EntranceType$Companion;

.field public static final ALL:I = 0x0

.field public static final AOD:I = 0x4

.field public static final ASSISTANT:I = 0x1

.field private static final ASSISTANT_LAUNCHER:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final BASE_ENTRY_ONE:I = 0x1

.field public static final CALENDAR:I = 0x2000

.field public static final CAPSULE:I = 0x20

.field public static final CAR_LAUNCHER:I = 0x1000

.field private static final DES_SUPPORT_ENTRANCE_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final HEADSET:I = 0x80

.field public static final LAUNCHER:I = 0x2

.field public static final LOCK_SCREEN:I = 0x40

.field public static final NOTIFICATION:I = 0x10

.field private static final NOTIFICATION_LOCK_SCREEN:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final SECONDARY_LOCKSCREEN:I = 0x100

.field public static final SECONDARY_NOTIFICATION:I = 0x200

.field public static final SECONDARY_SECONDARY_LAUNCHER:I = 0x400

.field public static final SEEDING_HOST_APP:I = 0x40000000

.field public static final STATUS_BAR:I = 0x8

.field public static final TAG:Ljava/lang/String; = "EntranceType"

.field public static final UNDEFINED:I = -0x1

.field private static final VALID_ENTRANCE:[I

.field public static final WATCH:I = 0x800


# direct methods
.method public static constructor <clinit>()V
    .registers 10

    new-instance v0, Lcom/oplus/seedling/sdk/utils/Constants$EntranceType$Companion;

    invoke-direct {v0}, Lcom/oplus/seedling/sdk/utils/Constants$EntranceType$Companion;-><init>()V

    sput-object v0, Lcom/oplus/seedling/sdk/utils/Constants$EntranceType$Companion;->$$INSTANCE:Lcom/oplus/seedling/sdk/utils/Constants$EntranceType$Companion;

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/Integer;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v2, v5

    aput-object v1, v2, v3

    invoke-static {v2}, Li1/k;->e([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    sput-object v2, Lcom/oplus/seedling/sdk/utils/Constants$EntranceType$Companion;->ASSISTANT_LAUNCHER:Ljava/util/Set;

    new-array v2, v0, [Ljava/lang/Integer;

    const/16 v6, 0x10

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v5

    const/16 v7, 0x40

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v2, v3

    invoke-static {v2}, Li1/k;->e([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    sput-object v2, Lcom/oplus/seedling/sdk/utils/Constants$EntranceType$Companion;->NOTIFICATION_LOCK_SCREEN:Ljava/util/Set;

    const/16 v2, 0xe

    new-array v8, v2, [I

    fill-array-data v8, :array_110

    sput-object v8, Lcom/oplus/seedling/sdk/utils/Constants$EntranceType$Companion;->VALID_ENTRANCE:[I

    new-array v2, v2, [Ly2/i;

    new-instance v8, Ly2/i;

    const-string v9, "launcher"

    invoke-direct {v8, v1, v9}, Ly2/i;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v8, v2, v5

    new-instance v1, Ly2/i;

    const-string v5, "assistantscreen"

    invoke-direct {v1, v4, v5}, Ly2/i;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v1, v2, v3

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Ly2/i;

    const-string v5, "aod"

    invoke-direct {v4, v3, v5}, Ly2/i;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v4, v2, v0

    const/4 v0, 0x3

    const/16 v3, 0x8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v5, Ly2/i;

    const-string v8, "statusbar"

    invoke-direct {v5, v4, v8}, Ly2/i;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v5, v2, v0

    new-instance v0, Ly2/i;

    const-string v4, "notification"

    invoke-direct {v0, v6, v4}, Ly2/i;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v0, v2, v1

    const/4 v0, 0x5

    const/16 v1, 0x20

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v4, Ly2/i;

    const-string v5, "capsule"

    invoke-direct {v4, v1, v5}, Ly2/i;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v4, v2, v0

    const/4 v0, 0x6

    new-instance v1, Ly2/i;

    const-string v4, "lockscreen"

    invoke-direct {v1, v7, v4}, Ly2/i;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v1, v2, v0

    const/4 v0, 0x7

    const/16 v1, 0x80

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v4, Ly2/i;

    const-string v5, "headset"

    invoke-direct {v4, v1, v5}, Ly2/i;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v4, v2, v0

    const/16 v0, 0x100

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Ly2/i;

    const-string v4, "secondaryLockScreen"

    invoke-direct {v1, v0, v4}, Ly2/i;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v1, v2, v3

    const/16 v0, 0x9

    const/16 v1, 0x200

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v3, Ly2/i;

    const-string v4, "secondaryNotification"

    invoke-direct {v3, v1, v4}, Ly2/i;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v3, v2, v0

    const/16 v0, 0xa

    const/16 v1, 0x800

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v3, Ly2/i;

    const-string v4, "watch"

    invoke-direct {v3, v1, v4}, Ly2/i;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v3, v2, v0

    const/16 v0, 0xb

    const/16 v1, 0x1000

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v3, Ly2/i;

    const-string v4, "car launcher"

    invoke-direct {v3, v1, v4}, Ly2/i;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v3, v2, v0

    const/16 v0, 0xc

    const/16 v1, 0x2000

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v3, Ly2/i;

    const-string v4, "calendar"

    invoke-direct {v3, v1, v4}, Ly2/i;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v3, v2, v0

    const/16 v0, 0xd

    const/high16 v1, 0x40000000  # 2.0f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v3, Ly2/i;

    const-string v4, "seedling_host_app"

    invoke-direct {v3, v1, v4}, Ly2/i;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v3, v2, v0

    invoke-static {v2}, Lz2/c0;->d([Ly2/i;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/oplus/seedling/sdk/utils/Constants$EntranceType$Companion;->DES_SUPPORT_ENTRANCE_MAP:Ljava/util/Map;

    return-void

    nop

    :array_110
    .array-data 4
        0x1
        0x2
        0x4
        0x8
        0x10
        0x20
        0x40
        0x80
        0x100
        0x200
        0x800
        0x1000
        0x2000
        0x40000000  # 2.0f
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getASSISTANT_LAUNCHER()Ljava/util/Set;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    sget-object p0, Lcom/oplus/seedling/sdk/utils/Constants$EntranceType$Companion;->ASSISTANT_LAUNCHER:Ljava/util/Set;

    return-object p0
.end method

.method public final getDES_SUPPORT_ENTRANCE_MAP()Ljava/util/Map;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object p0, Lcom/oplus/seedling/sdk/utils/Constants$EntranceType$Companion;->DES_SUPPORT_ENTRANCE_MAP:Ljava/util/Map;

    return-object p0
.end method

.method public final getNOTIFICATION_LOCK_SCREEN()Ljava/util/Set;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    sget-object p0, Lcom/oplus/seedling/sdk/utils/Constants$EntranceType$Companion;->NOTIFICATION_LOCK_SCREEN:Ljava/util/Set;

    return-object p0
.end method

.method public final getVALID_ENTRANCE()[I
    .registers 1

    sget-object p0, Lcom/oplus/seedling/sdk/utils/Constants$EntranceType$Companion;->VALID_ENTRANCE:[I

    return-object p0
.end method

.method public final isValid(I)Z
    .registers 2

    sget-object p0, Lcom/oplus/seedling/sdk/utils/Constants$EntranceType$Companion;->VALID_ENTRANCE:[I

    invoke-static {p0, p1}, Lz2/h;->h([II)Z

    move-result p0

    return p0
.end method
