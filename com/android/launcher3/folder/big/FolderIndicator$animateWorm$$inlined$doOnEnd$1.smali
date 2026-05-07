.class public final Lcom/android/launcher3/folder/big/FolderIndicator$animateWorm$$inlined$doOnEnd$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/folder/big/FolderIndicator;->animateWorm(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic $tail$inlined:Lkotlin/jvm/internal/Ref$BooleanRef;

.field public final synthetic $toRight$inlined:Z

.field public final synthetic this$0:Lcom/android/launcher3/folder/big/FolderIndicator;


# direct methods
.method public constructor <init>(Lkotlin/jvm/internal/Ref$BooleanRef;Lcom/android/launcher3/folder/big/FolderIndicator;Z)V
    .registers 4

    iput-object p1, p0, Lcom/android/launcher3/folder/big/FolderIndicator$animateWorm$$inlined$doOnEnd$1;->$tail$inlined:Lkotlin/jvm/internal/Ref$BooleanRef;

    iput-object p2, p0, Lcom/android/launcher3/folder/big/FolderIndicator$animateWorm$$inlined$doOnEnd$1;->this$0:Lcom/android/launcher3/folder/big/FolderIndicator;

    iput-boolean p3, p0, Lcom/android/launcher3/folder/big/FolderIndicator$animateWorm$$inlined$doOnEnd$1;->$toRight$inlined:Z

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
    .registers 5

    const-string v0, "animator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/launcher3/folder/big/FolderIndicator$animateWorm$$inlined$doOnEnd$1;->$tail$inlined:Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-boolean p1, p1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-nez p1, :cond_26

    iget-object p1, p0, Lcom/android/launcher3/folder/big/FolderIndicator$animateWorm$$inlined$doOnEnd$1;->this$0:Lcom/android/launcher3/folder/big/FolderIndicator;

    invoke-virtual {p1}, Lcom/android/launcher3/folder/big/FolderIndicator;->getActiveIndex()I

    move-result v0

    iget-boolean v1, p0, Lcom/android/launcher3/folder/big/FolderIndicator$animateWorm$$inlined$doOnEnd$1;->$toRight$inlined:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_18

    move v1, v2

    goto :goto_19

    :cond_18
    const/4 v1, -0x1

    :goto_19
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Lcom/android/launcher3/folder/big/FolderIndicator;->setActiveIndex(I)V

    iget-object p1, p0, Lcom/android/launcher3/folder/big/FolderIndicator$animateWorm$$inlined$doOnEnd$1;->this$0:Lcom/android/launcher3/folder/big/FolderIndicator;

    iget-boolean p0, p0, Lcom/android/launcher3/folder/big/FolderIndicator$animateWorm$$inlined$doOnEnd$1;->$toRight$inlined:Z

    xor-int/2addr p0, v2

    invoke-static {p1, p0, v2}, Lcom/android/launcher3/folder/big/FolderIndicator;->access$animateWorm(Lcom/android/launcher3/folder/big/FolderIndicator;ZZ)V

    goto :goto_2f

    :cond_26
    iget-object p0, p0, Lcom/android/launcher3/folder/big/FolderIndicator$animateWorm$$inlined$doOnEnd$1;->this$0:Lcom/android/launcher3/folder/big/FolderIndicator;

    invoke-static {p0}, Lcom/android/launcher3/folder/big/FolderIndicator;->access$getAnimatingRect$p(Lcom/android/launcher3/folder/big/FolderIndicator;)Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Rect;->setEmpty()V

    :goto_2f
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
