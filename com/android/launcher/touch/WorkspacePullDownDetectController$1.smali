.class Lcom/android/launcher/touch/WorkspacePullDownDetectController$1;
.super Landroid/database/ContentObserver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher/touch/WorkspacePullDownDetectController;-><init>(Lcom/android/launcher/Launcher;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher/touch/WorkspacePullDownDetectController;


# direct methods
.method public constructor <init>(Lcom/android/launcher/touch/WorkspacePullDownDetectController;Landroid/os/Handler;)V
    .registers 3

    iput-object p1, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController$1;->this$0:Lcom/android/launcher/touch/WorkspacePullDownDetectController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 7

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    iget-object p1, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController$1;->this$0:Lcom/android/launcher/touch/WorkspacePullDownDetectController;

    invoke-static {p1}, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->access$000(Lcom/android/launcher/touch/WorkspacePullDownDetectController;)Lcom/android/launcher/Launcher;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo v0, "shelf_or_search_quite_action_call_time"

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mActionQuiteObserver onChange callTime: "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "  currentTime"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v4, "WorkspacePullDownDetectController"

    invoke-static {v4, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    sub-long/2addr v2, v0

    const-wide/16 v0, 0x3e8

    cmp-long p1, v2, v0

    if-gez p1, :cond_48

    iget-object p0, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController$1;->this$0:Lcom/android/launcher/touch/WorkspacePullDownDetectController;

    invoke-static {p0}, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->access$100(Lcom/android/launcher/touch/WorkspacePullDownDetectController;)Lcom/android/launcher/touch/PullDownAnimator;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher/touch/PullDownAnimator;->destroyAnimatorIfNeeded()V

    :cond_48
    return-void
.end method
