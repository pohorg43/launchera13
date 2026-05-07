.class public final Lcom/android/launcher/views/ArrowIndicator$animateToEnabled$$inlined$doOnEnd$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher/views/ArrowIndicator;->animateToEnabled(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic $enabled$inlined:Z

.field public final synthetic this$0:Lcom/android/launcher/views/ArrowIndicator;


# direct methods
.method public constructor <init>(Lcom/android/launcher/views/ArrowIndicator;Z)V
    .registers 3

    iput-object p1, p0, Lcom/android/launcher/views/ArrowIndicator$animateToEnabled$$inlined$doOnEnd$1;->this$0:Lcom/android/launcher/views/ArrowIndicator;

    iput-boolean p2, p0, Lcom/android/launcher/views/ArrowIndicator$animateToEnabled$$inlined$doOnEnd$1;->$enabled$inlined:Z

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

    iget-object p1, p0, Lcom/android/launcher/views/ArrowIndicator$animateToEnabled$$inlined$doOnEnd$1;->this$0:Lcom/android/launcher/views/ArrowIndicator;

    iget-boolean p0, p0, Lcom/android/launcher/views/ArrowIndicator$animateToEnabled$$inlined$doOnEnd$1;->$enabled$inlined:Z

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setEnabled(Z)V

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
