.class public final Lcom/oplus/quickstep/receiver/OplusHoraeThermalHelper$receiver$1;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/quickstep/receiver/OplusHoraeThermalHelper;-><clinit>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static synthetic a(I)V
    .registers 1

    invoke-static {p0}, Lcom/oplus/quickstep/receiver/OplusHoraeThermalHelper$receiver$1;->onReceive$lambda-1$lambda-0(I)V

    return-void
.end method

.method private static final onReceive$lambda-1$lambda-0(I)V
    .registers 2

    sget-object v0, Lcom/oplus/quickstep/receiver/OplusHoraeThermalHelper;->INSTANCE:Lcom/oplus/quickstep/receiver/OplusHoraeThermalHelper;

    invoke-static {p0}, Lcom/oplus/quickstep/receiver/OplusHoraeThermalHelper;->access$setCurrentLevel$p(I)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    if-nez p2, :cond_3

    goto :goto_2a

    :cond_3
    const/4 p0, 0x0

    const-string p1, "thermallevel"

    invoke-virtual {p2, p1, p0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const-string v0, "currenttemperature"

    invoke-virtual {p2, v0, p0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0

    const-string p2, "onReceive: current temperature is "

    const-string v0, ", current level is "

    invoke-static {p2, p0, v0, p1}, Landroidx/emoji2/text/flatbuffer/b;->a(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    const-string p2, "QuickStep"

    const-string v0, "OplusHoraeThermalHelper"

    invoke-static {p2, v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance p2, Lcom/android/common/util/k0;

    const/4 v0, 0x1

    invoke-direct {p2, p1, v0}, Lcom/android/common/util/k0;-><init>(II)V

    invoke-virtual {p0, p2}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    :goto_2a
    return-void
.end method
