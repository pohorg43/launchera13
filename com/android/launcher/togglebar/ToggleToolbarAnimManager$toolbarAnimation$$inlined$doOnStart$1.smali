.class public final Lcom/android/launcher/togglebar/ToggleToolbarAnimManager$toolbarAnimation$$inlined$doOnStart$1;
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
.field public final synthetic $sameAlphaForBackOps$inlined:Z

.field public final synthetic $sameAlphaForMain$inlined:Z

.field public final synthetic this$0:Lcom/android/launcher/togglebar/ToggleToolbarAnimManager;


# direct methods
.method public constructor <init>(ZLcom/android/launcher/togglebar/ToggleToolbarAnimManager;Z)V
    .registers 4

    iput-boolean p1, p0, Lcom/android/launcher/togglebar/ToggleToolbarAnimManager$toolbarAnimation$$inlined$doOnStart$1;->$sameAlphaForMain$inlined:Z

    iput-object p2, p0, Lcom/android/launcher/togglebar/ToggleToolbarAnimManager$toolbarAnimation$$inlined$doOnStart$1;->this$0:Lcom/android/launcher/togglebar/ToggleToolbarAnimManager;

    iput-boolean p3, p0, Lcom/android/launcher/togglebar/ToggleToolbarAnimManager$toolbarAnimation$$inlined$doOnStart$1;->$sameAlphaForBackOps$inlined:Z

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
    .registers 2

    const-string p0, "animator"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2

    const-string p0, "animator"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 3

    const-string v0, "animator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/launcher/togglebar/ToggleToolbarAnimManager$toolbarAnimation$$inlined$doOnStart$1;->$sameAlphaForMain$inlined:Z

    const/4 v0, 0x0

    if-nez p1, :cond_16

    iget-object p1, p0, Lcom/android/launcher/togglebar/ToggleToolbarAnimManager$toolbarAnimation$$inlined$doOnStart$1;->this$0:Lcom/android/launcher/togglebar/ToggleToolbarAnimManager;

    invoke-static {p1}, Lcom/android/launcher/togglebar/ToggleToolbarAnimManager;->access$getMMainButtonContainer$p(Lcom/android/launcher/togglebar/ToggleToolbarAnimManager;)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_13

    goto :goto_16

    :cond_13
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_16
    :goto_16
    iget-boolean p1, p0, Lcom/android/launcher/togglebar/ToggleToolbarAnimManager$toolbarAnimation$$inlined$doOnStart$1;->$sameAlphaForBackOps$inlined:Z

    if-nez p1, :cond_26

    iget-object p0, p0, Lcom/android/launcher/togglebar/ToggleToolbarAnimManager$toolbarAnimation$$inlined$doOnStart$1;->this$0:Lcom/android/launcher/togglebar/ToggleToolbarAnimManager;

    invoke-static {p0}, Lcom/android/launcher/togglebar/ToggleToolbarAnimManager;->access$getMSecondaryContainer$p(Lcom/android/launcher/togglebar/ToggleToolbarAnimManager;)Landroid/view/View;

    move-result-object p0

    if-nez p0, :cond_23

    goto :goto_26

    :cond_23
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_26
    :goto_26
    return-void
.end method
