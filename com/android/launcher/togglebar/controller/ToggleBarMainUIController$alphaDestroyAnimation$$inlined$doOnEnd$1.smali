.class public final Lcom/android/launcher/togglebar/controller/ToggleBarMainUIController$alphaDestroyAnimation$$inlined$doOnEnd$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher/togglebar/controller/ToggleBarMainUIController;->alphaDestroyAnimation()Landroid/animation/ObjectAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher/togglebar/controller/ToggleBarMainUIController;


# direct methods
.method public constructor <init>(Lcom/android/launcher/togglebar/controller/ToggleBarMainUIController;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/togglebar/controller/ToggleBarMainUIController$alphaDestroyAnimation$$inlined$doOnEnd$1;->this$0:Lcom/android/launcher/togglebar/controller/ToggleBarMainUIController;

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
    .registers 3

    const-string v0, "animator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/launcher/togglebar/controller/ToggleBarMainUIController$alphaDestroyAnimation$$inlined$doOnEnd$1;->this$0:Lcom/android/launcher/togglebar/controller/ToggleBarMainUIController;

    invoke-static {p1}, Lcom/android/launcher/togglebar/controller/ToggleBarMainUIController;->access$getMContentView$p(Lcom/android/launcher/togglebar/controller/ToggleBarMainUIController;)Lcom/android/launcher/togglebar/views/ToggleBarRecyclerView;

    move-result-object p1

    if-nez p1, :cond_f

    const/4 p1, 0x0

    goto :goto_13

    :cond_f
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    :goto_13
    if-eqz p1, :cond_20

    check-cast p1, Landroid/view/ViewGroup;

    iget-object p0, p0, Lcom/android/launcher/togglebar/controller/ToggleBarMainUIController$alphaDestroyAnimation$$inlined$doOnEnd$1;->this$0:Lcom/android/launcher/togglebar/controller/ToggleBarMainUIController;

    invoke-static {p0}, Lcom/android/launcher/togglebar/controller/ToggleBarMainUIController;->access$getMContentView$p(Lcom/android/launcher/togglebar/controller/ToggleBarMainUIController;)Lcom/android/launcher/togglebar/views/ToggleBarRecyclerView;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_20
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
