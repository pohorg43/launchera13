.class public final Lcom/android/launcher/pageindicators/IndicatorTransitionAnimation$start$$inlined$doOnEnd$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher/pageindicators/IndicatorTransitionAnimation;->start(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher/pageindicators/IndicatorTransitionAnimation;


# direct methods
.method public constructor <init>(Lcom/android/launcher/pageindicators/IndicatorTransitionAnimation;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/pageindicators/IndicatorTransitionAnimation$start$$inlined$doOnEnd$1;->this$0:Lcom/android/launcher/pageindicators/IndicatorTransitionAnimation;

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

    iget-object p0, p0, Lcom/android/launcher/pageindicators/IndicatorTransitionAnimation$start$$inlined$doOnEnd$1;->this$0:Lcom/android/launcher/pageindicators/IndicatorTransitionAnimation;

    invoke-static {p0}, Lcom/android/launcher/pageindicators/IndicatorTransitionAnimation;->access$startRecoveryAnim(Lcom/android/launcher/pageindicators/IndicatorTransitionAnimation;)V

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
