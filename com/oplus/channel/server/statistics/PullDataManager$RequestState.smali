.class public final Lcom/oplus/channel/server/statistics/PullDataManager$RequestState;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/channel/server/statistics/PullDataManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RequestState"
.end annotation


# static fields
.field public static final CREATE_CHANNEL_SUCCESS:I = 0x2

.field public static final INSTANCE:Lcom/oplus/channel/server/statistics/PullDataManager$RequestState;

.field public static final REGISTER:I = 0x0

.field public static final START_CALL_PROVIDER:I = 0x1

.field public static final UNINITIALIZED:I = -0x1


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/oplus/channel/server/statistics/PullDataManager$RequestState;

    invoke-direct {v0}, Lcom/oplus/channel/server/statistics/PullDataManager$RequestState;-><init>()V

    sput-object v0, Lcom/oplus/channel/server/statistics/PullDataManager$RequestState;->INSTANCE:Lcom/oplus/channel/server/statistics/PullDataManager$RequestState;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
