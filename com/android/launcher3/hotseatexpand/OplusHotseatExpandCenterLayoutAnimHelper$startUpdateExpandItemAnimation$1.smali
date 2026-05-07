.class public final Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandCenterLayoutAnimHelper$startUpdateExpandItemAnimation$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandCenterLayoutAnimHelper;->startUpdateExpandItemAnimation(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandCenterLayoutAnimHelper;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandCenterLayoutAnimHelper;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandCenterLayoutAnimHelper$startUpdateExpandItemAnimation$1;->this$0:Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandCenterLayoutAnimHelper;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    const-string p0, "Hotseat_expand"

    const-string p1, "OplusHotseatExpandCenterLayoutAnimHelper"

    const-string/jumbo v0, "startUpdateExpandItemAnimation onAnimationCancel"

    invoke-static {p0, p1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    const-string p1, "Hotseat_expand"

    const-string v0, "OplusHotseatExpandCenterLayoutAnimHelper"

    const-string/jumbo v1, "startUpdateExpandItemAnimation onAnimationEnd"

    invoke-static {p1, v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandCenterLayoutAnimHelper$startUpdateExpandItemAnimation$1;->this$0:Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandCenterLayoutAnimHelper;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandCenterLayoutAnimHelper;->animationEnd(Z)V

    return-void
.end method
