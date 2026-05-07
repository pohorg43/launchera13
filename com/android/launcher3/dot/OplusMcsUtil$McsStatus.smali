.class public final enum Lcom/android/launcher3/dot/OplusMcsUtil$McsStatus;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/dot/OplusMcsUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "McsStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/launcher3/dot/OplusMcsUtil$McsStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/launcher3/dot/OplusMcsUtil$McsStatus;

.field public static final enum MCS_CLICK_ON_MINIMIZED:Lcom/android/launcher3/dot/OplusMcsUtil$McsStatus;

.field public static final enum MCS_DEEPLINK_CLEAR:Lcom/android/launcher3/dot/OplusMcsUtil$McsStatus;

.field public static final enum MCS_DEEPLINK_ERROR:Lcom/android/launcher3/dot/OplusMcsUtil$McsStatus;

.field public static final enum MCS_DEEPLINK_SUCCESS:Lcom/android/launcher3/dot/OplusMcsUtil$McsStatus;

.field public static final enum MCS_LAUNCH_ERROR:Lcom/android/launcher3/dot/OplusMcsUtil$McsStatus;

.field public static final enum MCS_LAUNCH_SUCCESS:Lcom/android/launcher3/dot/OplusMcsUtil$McsStatus;


# instance fields
.field private final status:I


# direct methods
.method private static final synthetic $values()[Lcom/android/launcher3/dot/OplusMcsUtil$McsStatus;
    .registers 3

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/android/launcher3/dot/OplusMcsUtil$McsStatus;

    sget-object v1, Lcom/android/launcher3/dot/OplusMcsUtil$McsStatus;->MCS_LAUNCH_SUCCESS:Lcom/android/launcher3/dot/OplusMcsUtil$McsStatus;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/launcher3/dot/OplusMcsUtil$McsStatus;->MCS_LAUNCH_ERROR:Lcom/android/launcher3/dot/OplusMcsUtil$McsStatus;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/launcher3/dot/OplusMcsUtil$McsStatus;->MCS_DEEPLINK_CLEAR:Lcom/android/launcher3/dot/OplusMcsUtil$McsStatus;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/launcher3/dot/OplusMcsUtil$McsStatus;->MCS_DEEPLINK_ERROR:Lcom/android/launcher3/dot/OplusMcsUtil$McsStatus;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/launcher3/dot/OplusMcsUtil$McsStatus;->MCS_DEEPLINK_SUCCESS:Lcom/android/launcher3/dot/OplusMcsUtil$McsStatus;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/launcher3/dot/OplusMcsUtil$McsStatus;->MCS_CLICK_ON_MINIMIZED:Lcom/android/launcher3/dot/OplusMcsUtil$McsStatus;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static constructor <clinit>()V
    .registers 4

    new-instance v0, Lcom/android/launcher3/dot/OplusMcsUtil$McsStatus;

    const-string v1, "MCS_LAUNCH_SUCCESS"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/launcher3/dot/OplusMcsUtil$McsStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/launcher3/dot/OplusMcsUtil$McsStatus;->MCS_LAUNCH_SUCCESS:Lcom/android/launcher3/dot/OplusMcsUtil$McsStatus;

    new-instance v0, Lcom/android/launcher3/dot/OplusMcsUtil$McsStatus;

    const-string v1, "MCS_LAUNCH_ERROR"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v3, v2}, Lcom/android/launcher3/dot/OplusMcsUtil$McsStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/launcher3/dot/OplusMcsUtil$McsStatus;->MCS_LAUNCH_ERROR:Lcom/android/launcher3/dot/OplusMcsUtil$McsStatus;

    new-instance v0, Lcom/android/launcher3/dot/OplusMcsUtil$McsStatus;

    const-string v1, "MCS_DEEPLINK_CLEAR"

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/launcher3/dot/OplusMcsUtil$McsStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/launcher3/dot/OplusMcsUtil$McsStatus;->MCS_DEEPLINK_CLEAR:Lcom/android/launcher3/dot/OplusMcsUtil$McsStatus;

    new-instance v0, Lcom/android/launcher3/dot/OplusMcsUtil$McsStatus;

    const-string v1, "MCS_DEEPLINK_ERROR"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v3, v2}, Lcom/android/launcher3/dot/OplusMcsUtil$McsStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/launcher3/dot/OplusMcsUtil$McsStatus;->MCS_DEEPLINK_ERROR:Lcom/android/launcher3/dot/OplusMcsUtil$McsStatus;

    new-instance v0, Lcom/android/launcher3/dot/OplusMcsUtil$McsStatus;

    const-string v1, "MCS_DEEPLINK_SUCCESS"

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/android/launcher3/dot/OplusMcsUtil$McsStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/launcher3/dot/OplusMcsUtil$McsStatus;->MCS_DEEPLINK_SUCCESS:Lcom/android/launcher3/dot/OplusMcsUtil$McsStatus;

    new-instance v0, Lcom/android/launcher3/dot/OplusMcsUtil$McsStatus;

    const-string v1, "MCS_CLICK_ON_MINIMIZED"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v3, v2}, Lcom/android/launcher3/dot/OplusMcsUtil$McsStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/launcher3/dot/OplusMcsUtil$McsStatus;->MCS_CLICK_ON_MINIMIZED:Lcom/android/launcher3/dot/OplusMcsUtil$McsStatus;

    invoke-static {}, Lcom/android/launcher3/dot/OplusMcsUtil$McsStatus;->$values()[Lcom/android/launcher3/dot/OplusMcsUtil$McsStatus;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/dot/OplusMcsUtil$McsStatus;->$VALUES:[Lcom/android/launcher3/dot/OplusMcsUtil$McsStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/android/launcher3/dot/OplusMcsUtil$McsStatus;->status:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/launcher3/dot/OplusMcsUtil$McsStatus;
    .registers 2

    const-class v0, Lcom/android/launcher3/dot/OplusMcsUtil$McsStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/dot/OplusMcsUtil$McsStatus;

    return-object p0
.end method

.method public static values()[Lcom/android/launcher3/dot/OplusMcsUtil$McsStatus;
    .registers 1

    sget-object v0, Lcom/android/launcher3/dot/OplusMcsUtil$McsStatus;->$VALUES:[Lcom/android/launcher3/dot/OplusMcsUtil$McsStatus;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/launcher3/dot/OplusMcsUtil$McsStatus;

    return-object v0
.end method


# virtual methods
.method public final getStatus()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/dot/OplusMcsUtil$McsStatus;->status:I

    return p0
.end method
