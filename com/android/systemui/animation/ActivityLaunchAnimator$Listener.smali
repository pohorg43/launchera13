.class public interface abstract Lcom/android/systemui/animation/ActivityLaunchAnimator$Listener;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/animation/ActivityLaunchAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/animation/ActivityLaunchAnimator$Listener$DefaultImpls;
    }
.end annotation


# direct methods
.method public static synthetic access$onLaunchAnimationEnd$jd(Lcom/android/systemui/animation/ActivityLaunchAnimator$Listener;)V
    .registers 1

    invoke-super {p0}, Lcom/android/systemui/animation/ActivityLaunchAnimator$Listener;->onLaunchAnimationEnd()V

    return-void
.end method

.method public static synthetic access$onLaunchAnimationProgress$jd(Lcom/android/systemui/animation/ActivityLaunchAnimator$Listener;F)V
    .registers 2

    invoke-super {p0, p1}, Lcom/android/systemui/animation/ActivityLaunchAnimator$Listener;->onLaunchAnimationProgress(F)V

    return-void
.end method

.method public static synthetic access$onLaunchAnimationStart$jd(Lcom/android/systemui/animation/ActivityLaunchAnimator$Listener;)V
    .registers 1

    invoke-super {p0}, Lcom/android/systemui/animation/ActivityLaunchAnimator$Listener;->onLaunchAnimationStart()V

    return-void
.end method


# virtual methods
.method public onLaunchAnimationEnd()V
    .registers 1
    .annotation runtime Lkotlin/jvm/JvmDefault;
    .end annotation

    return-void
.end method

.method public onLaunchAnimationProgress(F)V
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmDefault;
    .end annotation

    return-void
.end method

.method public onLaunchAnimationStart()V
    .registers 1
    .annotation runtime Lkotlin/jvm/JvmDefault;
    .end annotation

    return-void
.end method
