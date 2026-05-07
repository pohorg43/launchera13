.class public final Lcom/android/launcher3/folder/big/ConvertAnimationBuilder$buildConvertAnimator$$inlined$doOnEnd$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/folder/big/ConvertAnimationBuilder;->buildConvertAnimator()Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher3/folder/big/ConvertAnimationBuilder;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/folder/big/ConvertAnimationBuilder;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/folder/big/ConvertAnimationBuilder$buildConvertAnimator$$inlined$doOnEnd$1;->this$0:Lcom/android/launcher3/folder/big/ConvertAnimationBuilder;

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

    iget-object p1, p0, Lcom/android/launcher3/folder/big/ConvertAnimationBuilder$buildConvertAnimator$$inlined$doOnEnd$1;->this$0:Lcom/android/launcher3/folder/big/ConvertAnimationBuilder;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/launcher3/folder/big/ConvertAnimationBuilder;->setConvertAnimating(Z)V

    iget-object p1, p0, Lcom/android/launcher3/folder/big/ConvertAnimationBuilder$buildConvertAnimator$$inlined$doOnEnd$1;->this$0:Lcom/android/launcher3/folder/big/ConvertAnimationBuilder;

    invoke-virtual {p1}, Lcom/android/launcher3/folder/big/ConvertAnimationBuilder;->getCompleteAction()Lcom/android/launcher3/folder/big/ConvertAnimationBuilder$AnimationComplete;

    move-result-object p1

    if-nez p1, :cond_14

    goto :goto_17

    :cond_14
    invoke-interface {p1}, Lcom/android/launcher3/folder/big/ConvertAnimationBuilder$AnimationComplete;->complete()V

    :goto_17
    iget-object p1, p0, Lcom/android/launcher3/folder/big/ConvertAnimationBuilder$buildConvertAnimator$$inlined$doOnEnd$1;->this$0:Lcom/android/launcher3/folder/big/ConvertAnimationBuilder;

    invoke-static {p1}, Lcom/android/launcher3/folder/big/ConvertAnimationBuilder;->access$getBig$p(Lcom/android/launcher3/folder/big/ConvertAnimationBuilder;)Lcom/android/launcher3/folder/big/BigFolderIcon;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/launcher3/folder/big/BigFolderIcon;->setConvertAnimBuilder(Lcom/android/launcher3/folder/big/ConvertAnimationBuilder;)V

    iget-object p1, p0, Lcom/android/launcher3/folder/big/ConvertAnimationBuilder$buildConvertAnimator$$inlined$doOnEnd$1;->this$0:Lcom/android/launcher3/folder/big/ConvertAnimationBuilder;

    invoke-static {p1}, Lcom/android/launcher3/folder/big/ConvertAnimationBuilder;->access$getToBig$p(Lcom/android/launcher3/folder/big/ConvertAnimationBuilder;)Z

    move-result p1

    if-nez p1, :cond_44

    iget-object p1, p0, Lcom/android/launcher3/folder/big/ConvertAnimationBuilder$buildConvertAnimator$$inlined$doOnEnd$1;->this$0:Lcom/android/launcher3/folder/big/ConvertAnimationBuilder;

    invoke-static {p1}, Lcom/android/launcher3/folder/big/ConvertAnimationBuilder;->access$getSmall$p(Lcom/android/launcher3/folder/big/ConvertAnimationBuilder;)Lcom/android/launcher3/folder/OplusFolderIcon;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/folder/OplusFolderIcon;->hasDot()Z

    move-result p1

    if-eqz p1, :cond_44

    iget-object p0, p0, Lcom/android/launcher3/folder/big/ConvertAnimationBuilder$buildConvertAnimator$$inlined$doOnEnd$1;->this$0:Lcom/android/launcher3/folder/big/ConvertAnimationBuilder;

    invoke-static {p0}, Lcom/android/launcher3/folder/big/ConvertAnimationBuilder;->access$getSmall$p(Lcom/android/launcher3/folder/big/ConvertAnimationBuilder;)Lcom/android/launcher3/folder/OplusFolderIcon;

    move-result-object p0

    const/4 p1, 0x2

    new-array p1, p1, [F

    fill-array-data p1, :array_46

    invoke-virtual {p0, p1}, Lcom/android/launcher3/folder/FolderIcon;->animateDotScale([F)V

    :cond_44
    return-void

    nop

    :array_46
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data
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
