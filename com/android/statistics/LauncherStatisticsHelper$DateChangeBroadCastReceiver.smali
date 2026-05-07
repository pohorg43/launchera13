.class Lcom/android/statistics/LauncherStatisticsHelper$DateChangeBroadCastReceiver;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/statistics/LauncherStatisticsHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DateChangeBroadCastReceiver"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DateChangeBroadCastReceiver"


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/statistics/LauncherStatisticsHelper$1;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/statistics/LauncherStatisticsHelper$DateChangeBroadCastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    const-string p2, "android.intent.action.DATE_CHANGED"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2e

    const-string p0, "DateChangeBroadCastReceiver"

    const-string p2, "onReceive,date changed"

    invoke-static {p0, p2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/android/statistics/LauncherStatistics;->getInstance(Landroid/content/Context;)Lcom/android/statistics/LauncherStatistics;

    move-result-object p0

    invoke-static {p1}, Lcom/oplus/quickstep/memory/MemoryInfoManager;->getInstance(Landroid/content/Context;)Lcom/oplus/quickstep/memory/MemoryInfoManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/oplus/quickstep/memory/MemoryInfoManager;->getMemoDisplaySwitch()I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/android/statistics/LauncherStatistics;->statRecentMemoSwitch(I)V

    invoke-static {p1}, Lcom/android/statistics/LauncherStatistics;->getInstance(Landroid/content/Context;)Lcom/android/statistics/LauncherStatistics;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/statistics/LauncherStatistics;->onOplusDcsPeriodUpload()V

    sget-object p0, Lcom/oplus/quickstep/utils/CompatibleDataBaseUtils;->Companion:Lcom/oplus/quickstep/utils/CompatibleDataBaseUtils$Companion;

    invoke-virtual {p0, p1}, Lcom/oplus/quickstep/utils/CompatibleDataBaseUtils$Companion;->queryCompatibleDataBase(Landroid/content/Context;)V

    :cond_2e
    return-void
.end method
