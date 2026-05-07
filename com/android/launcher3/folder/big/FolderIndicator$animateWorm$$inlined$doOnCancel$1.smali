.class public final Lcom/android/launcher3/folder/big/FolderIndicator$animateWorm$$inlined$doOnCancel$1;
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

    iput-object p1, p0, Lcom/android/launcher3/folder/big/FolderIndicator$animateWorm$$inlined$doOnCancel$1;->$tail$inlined:Lkotlin/jvm/internal/Ref$BooleanRef;

    iput-object p2, p0, Lcom/android/launcher3/folder/big/FolderIndicator$animateWorm$$inlined$doOnCancel$1;->this$0:Lcom/android/launcher3/folder/big/FolderIndicator;

    iput-boolean p3, p0, Lcom/android/launcher3/folder/big/FolderIndicator$animateWorm$$inlined$doOnCancel$1;->$toRight$inlined:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 4

    const-string v0, "animator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/launcher3/folder/big/FolderIndicator$animateWorm$$inlined$doOnCancel$1;->$tail$inlined:Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-boolean v0, p1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-nez v0, :cond_1e

    const/4 v0, 0x1

    iput-boolean v0, p1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    iget-object p1, p0, Lcom/android/launcher3/folder/big/FolderIndicator$animateWorm$$inlined$doOnCancel$1;->this$0:Lcom/android/launcher3/folder/big/FolderIndicator;

    invoke-virtual {p1}, Lcom/android/launcher3/folder/big/FolderIndicator;->getActiveIndex()I

    move-result v1

    iget-boolean p0, p0, Lcom/android/launcher3/folder/big/FolderIndicator$animateWorm$$inlined$doOnCancel$1;->$toRight$inlined:Z

    if-eqz p0, :cond_19

    goto :goto_1a

    :cond_19
    const/4 v0, -0x1

    :goto_1a
    add-int/2addr v1, v0

    invoke-virtual {p1, v1}, Lcom/android/launcher3/folder/big/FolderIndicator;->setActiveIndex(I)V

    :cond_1e
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
    .registers 2

    const-string p0, "animator"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
