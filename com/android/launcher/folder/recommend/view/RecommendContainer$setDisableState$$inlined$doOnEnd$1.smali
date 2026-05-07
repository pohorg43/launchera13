.class public final Lcom/android/launcher/folder/recommend/view/RecommendContainer$setDisableState$$inlined$doOnEnd$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher/folder/recommend/view/RecommendContainer;->setDisableState(ZZ)Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic $enable$inlined:Z

.field public final synthetic this$0:Lcom/android/launcher/folder/recommend/view/RecommendContainer;


# direct methods
.method public constructor <init>(Lcom/android/launcher/folder/recommend/view/RecommendContainer;Z)V
    .registers 3

    iput-object p1, p0, Lcom/android/launcher/folder/recommend/view/RecommendContainer$setDisableState$$inlined$doOnEnd$1;->this$0:Lcom/android/launcher/folder/recommend/view/RecommendContainer;

    iput-boolean p2, p0, Lcom/android/launcher/folder/recommend/view/RecommendContainer$setDisableState$$inlined$doOnEnd$1;->$enable$inlined:Z

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

    iget-object p1, p0, Lcom/android/launcher/folder/recommend/view/RecommendContainer$setDisableState$$inlined$doOnEnd$1;->this$0:Lcom/android/launcher/folder/recommend/view/RecommendContainer;

    invoke-static {p1}, Lcom/android/launcher/folder/recommend/view/RecommendContainer;->access$getMRecommendSettingsIv$p(Lcom/android/launcher/folder/recommend/view/RecommendContainer;)Landroid/widget/ImageView;

    move-result-object p1

    if-nez p1, :cond_e

    goto :goto_18

    :cond_e
    iget-boolean p0, p0, Lcom/android/launcher/folder/recommend/view/RecommendContainer$setDisableState$$inlined$doOnEnd$1;->$enable$inlined:Z

    if-eqz p0, :cond_14

    const/4 p0, 0x0

    goto :goto_15

    :cond_14
    const/4 p0, 0x4

    :goto_15
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_18
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
