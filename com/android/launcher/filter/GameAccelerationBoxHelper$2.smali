.class Lcom/android/launcher/filter/GameAccelerationBoxHelper$2;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher/filter/GameAccelerationBoxHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher/filter/GameAccelerationBoxHelper;


# direct methods
.method public constructor <init>(Lcom/android/launcher/filter/GameAccelerationBoxHelper;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/filter/GameAccelerationBoxHelper$2;->this$0:Lcom/android/launcher/filter/GameAccelerationBoxHelper;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    const-string/jumbo p1, "onReceive: mHideGameAppIcon: "

    invoke-static {p1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Lcom/android/launcher/filter/GameAccelerationBoxHelper$2;->this$0:Lcom/android/launcher/filter/GameAccelerationBoxHelper;

    invoke-static {p2}, Lcom/android/launcher/filter/GameAccelerationBoxHelper;->access$200(Lcom/android/launcher/filter/GameAccelerationBoxHelper;)Z

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "GameAccelerationBoxHelper"

    invoke-static {p2, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/launcher/filter/GameAccelerationBoxHelper$2;->this$0:Lcom/android/launcher/filter/GameAccelerationBoxHelper;

    invoke-static {p1}, Lcom/android/launcher/filter/GameAccelerationBoxHelper;->access$200(Lcom/android/launcher/filter/GameAccelerationBoxHelper;)Z

    move-result p1

    if-eqz p1, :cond_26

    iget-object p0, p0, Lcom/android/launcher/filter/GameAccelerationBoxHelper$2;->this$0:Lcom/android/launcher/filter/GameAccelerationBoxHelper;

    invoke-static {p0}, Lcom/android/launcher/filter/GameAccelerationBoxHelper;->access$700(Lcom/android/launcher/filter/GameAccelerationBoxHelper;)V

    :cond_26
    return-void
.end method
