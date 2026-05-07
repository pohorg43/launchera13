.class public final Lcom/android/launcher/togglebar/ToggleToolbarAnimManager$toolbarAnimation$$inlined$doOnEnd$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher/togglebar/ToggleToolbarAnimManager;->toolbarAnimation(FFJLandroid/view/animation/Interpolator;JLandroid/view/animation/Interpolator;)Landroid/animation/AnimatorSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic $backOpsTargetAlpha$inlined:F

.field public final synthetic $mainTargetAlpha$inlined:F

.field public final synthetic this$0:Lcom/android/launcher/togglebar/ToggleToolbarAnimManager;


# direct methods
.method public constructor <init>(Lcom/android/launcher/togglebar/ToggleToolbarAnimManager;FF)V
    .registers 4

    iput-object p1, p0, Lcom/android/launcher/togglebar/ToggleToolbarAnimManager$toolbarAnimation$$inlined$doOnEnd$1;->this$0:Lcom/android/launcher/togglebar/ToggleToolbarAnimManager;

    iput p2, p0, Lcom/android/launcher/togglebar/ToggleToolbarAnimManager$toolbarAnimation$$inlined$doOnEnd$1;->$backOpsTargetAlpha$inlined:F

    iput p3, p0, Lcom/android/launcher/togglebar/ToggleToolbarAnimManager$toolbarAnimation$$inlined$doOnEnd$1;->$mainTargetAlpha$inlined:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    const-string p0, "animator"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 7

    const-string v0, "animator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/launcher/togglebar/ToggleToolbarAnimManager$toolbarAnimation$$inlined$doOnEnd$1;->this$0:Lcom/android/launcher/togglebar/ToggleToolbarAnimManager;

    invoke-static {p1}, Lcom/android/launcher/togglebar/ToggleToolbarAnimManager;->access$getMSecondaryContainer$p(Lcom/android/launcher/togglebar/ToggleToolbarAnimManager;)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_e

    goto :goto_13

    :cond_e
    iget v0, p0, Lcom/android/launcher/togglebar/ToggleToolbarAnimManager$toolbarAnimation$$inlined$doOnEnd$1;->$backOpsTargetAlpha$inlined:F

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    :goto_13
    iget-object p1, p0, Lcom/android/launcher/togglebar/ToggleToolbarAnimManager$toolbarAnimation$$inlined$doOnEnd$1;->this$0:Lcom/android/launcher/togglebar/ToggleToolbarAnimManager;

    invoke-static {p1}, Lcom/android/launcher/togglebar/ToggleToolbarAnimManager;->access$getMMainButtonContainer$p(Lcom/android/launcher/togglebar/ToggleToolbarAnimManager;)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_1c

    goto :goto_21

    :cond_1c
    iget v0, p0, Lcom/android/launcher/togglebar/ToggleToolbarAnimManager$toolbarAnimation$$inlined$doOnEnd$1;->$mainTargetAlpha$inlined:F

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    :goto_21
    iget-object p1, p0, Lcom/android/launcher/togglebar/ToggleToolbarAnimManager$toolbarAnimation$$inlined$doOnEnd$1;->this$0:Lcom/android/launcher/togglebar/ToggleToolbarAnimManager;

    invoke-static {p1}, Lcom/android/launcher/togglebar/ToggleToolbarAnimManager;->access$getMMainButtonContainer$p(Lcom/android/launcher/togglebar/ToggleToolbarAnimManager;)Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    const/4 v1, 0x1

    const/high16 v2, 0x3f800000  # 1.0f

    const/4 v3, 0x0

    if-nez p1, :cond_30

    goto :goto_41

    :cond_30
    iget v4, p0, Lcom/android/launcher/togglebar/ToggleToolbarAnimManager$toolbarAnimation$$inlined$doOnEnd$1;->$mainTargetAlpha$inlined:F

    cmpg-float v4, v4, v2

    if-nez v4, :cond_38

    move v4, v1

    goto :goto_39

    :cond_38
    move v4, v3

    :goto_39
    if-eqz v4, :cond_3d

    move v4, v3

    goto :goto_3e

    :cond_3d
    move v4, v0

    :goto_3e
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    :goto_41
    iget-object p1, p0, Lcom/android/launcher/togglebar/ToggleToolbarAnimManager$toolbarAnimation$$inlined$doOnEnd$1;->this$0:Lcom/android/launcher/togglebar/ToggleToolbarAnimManager;

    invoke-static {p1}, Lcom/android/launcher/togglebar/ToggleToolbarAnimManager;->access$getMSecondaryContainer$p(Lcom/android/launcher/togglebar/ToggleToolbarAnimManager;)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_4a

    goto :goto_58

    :cond_4a
    iget p0, p0, Lcom/android/launcher/togglebar/ToggleToolbarAnimManager$toolbarAnimation$$inlined$doOnEnd$1;->$backOpsTargetAlpha$inlined:F

    cmpg-float p0, p0, v2

    if-nez p0, :cond_51

    goto :goto_52

    :cond_51
    move v1, v3

    :goto_52
    if-eqz v1, :cond_55

    move v0, v3

    :cond_55
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_58
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2

    const-string p0, "animator"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 2

    const-string p0, "animator"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
