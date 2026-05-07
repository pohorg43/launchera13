.class Lcom/android/wm/shell/stagesplit/SplitScreenController$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/wm/shell/transition/LegacyTransitions$ILegacyTransition;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/wm/shell/stagesplit/SplitScreenController;->startIntentLegacy(Landroid/app/PendingIntent;Landroid/content/Intent;ILandroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/stagesplit/SplitScreenController;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/stagesplit/SplitScreenController;)V
    .registers 2

    iput-object p1, p0, Lcom/android/wm/shell/stagesplit/SplitScreenController$1;->this$0:Lcom/android/wm/shell/stagesplit/SplitScreenController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(I[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Landroid/view/IRemoteAnimationFinishedCallback;Landroid/view/SurfaceControl$Transaction;)V
    .registers 7

    iget-object p0, p0, Lcom/android/wm/shell/stagesplit/SplitScreenController$1;->this$0:Lcom/android/wm/shell/stagesplit/SplitScreenController;

    invoke-static {p0}, Lcom/android/wm/shell/stagesplit/SplitScreenController;->access$100(Lcom/android/wm/shell/stagesplit/SplitScreenController;)Lcom/android/wm/shell/stagesplit/StageCoordinator;

    move-result-object p0

    const/4 p1, 0x0

    const/4 p3, 0x0

    invoke-virtual {p0, p1, p6, p3}, Lcom/android/wm/shell/stagesplit/StageCoordinator;->updateSurfaceBounds(Lcom/android/wm/shell/common/split/SplitLayout;Landroid/view/SurfaceControl$Transaction;Z)V

    if-eqz p2, :cond_20

    :goto_d
    array-length p0, p2

    if-ge p3, p0, :cond_20

    aget-object p0, p2, p3

    iget p0, p0, Landroid/view/RemoteAnimationTarget;->mode:I

    if-nez p0, :cond_1d

    aget-object p0, p2, p3

    iget-object p0, p0, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    invoke-virtual {p6, p0}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    :cond_1d
    add-int/lit8 p3, p3, 0x1

    goto :goto_d

    :cond_20
    invoke-virtual {p6}, Landroid/view/SurfaceControl$Transaction;->apply()V

    if-eqz p5, :cond_33

    :try_start_25
    invoke-interface {p5}, Landroid/view/IRemoteAnimationFinishedCallback;->onAnimationFinished()V
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_25 .. :try_end_28} :catch_29

    goto :goto_33

    :catch_29
    move-exception p0

    invoke-static {}, Lcom/android/wm/shell/stagesplit/SplitScreenController;->access$200()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Error finishing legacy transition: "

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_33
    :goto_33
    return-void
.end method
