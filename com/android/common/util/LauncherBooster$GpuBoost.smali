.class public final Lcom/android/common/util/LauncherBooster$GpuBoost;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/common/util/LauncherBooster;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GpuBoost"
.end annotation


# instance fields
.field private final mOsenseClient:Lcom/oplus/osense/OsenseResClient;

.field private startAppPackage:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/common/util/LauncherBooster$GpuBoost;->mOsenseClient:Lcom/oplus/osense/OsenseResClient;

    return-void
.end method

.method public static synthetic openWithType$default(Lcom/android/common/util/LauncherBooster$GpuBoost;Ljava/lang/String;IILjava/lang/Object;)J
    .registers 5

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_6

    const/16 p2, 0x3e8

    :cond_6
    invoke-virtual {p0, p1, p2}, Lcom/android/common/util/LauncherBooster$GpuBoost;->openWithType(Ljava/lang/String;I)J

    move-result-wide p0

    return-wide p0
.end method


# virtual methods
.method public final closeAction(J)V
    .registers 3

    return-void
.end method

.method public final getStartAppPackage()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/common/util/LauncherBooster$GpuBoost;->startAppPackage:Ljava/lang/String;

    return-object p0
.end method

.method public final notifyORMSAnimationEditModeOpenOrClose(I)V
    .registers 2

    return-void
.end method

.method public final openAction(Ljava/lang/String;I)J
    .registers 5

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final openNotification(Lcom/oplus/osense/info/OsenseNotifyRequest;)V
    .registers 2

    return-void
.end method

.method public final openWithType(Ljava/lang/String;I)J
    .registers 5

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final setStartAppPackage(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/common/util/LauncherBooster$GpuBoost;->startAppPackage:Ljava/lang/String;

    return-void
.end method
