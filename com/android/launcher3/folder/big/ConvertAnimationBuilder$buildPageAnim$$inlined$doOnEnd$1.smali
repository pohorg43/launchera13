.class public final Lcom/android/launcher3/folder/big/ConvertAnimationBuilder$buildPageAnim$$inlined$doOnEnd$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/folder/big/ConvertAnimationBuilder;->buildPageAnim()Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic $toLayoutRule$inlined:Lcom/android/launcher3/folder/big/BigFolderIconLayoutRule;

.field public final synthetic this$0:Lcom/android/launcher3/folder/big/ConvertAnimationBuilder;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/folder/big/ConvertAnimationBuilder;Lcom/android/launcher3/folder/big/BigFolderIconLayoutRule;)V
    .registers 3

    iput-object p1, p0, Lcom/android/launcher3/folder/big/ConvertAnimationBuilder$buildPageAnim$$inlined$doOnEnd$1;->this$0:Lcom/android/launcher3/folder/big/ConvertAnimationBuilder;

    iput-object p2, p0, Lcom/android/launcher3/folder/big/ConvertAnimationBuilder$buildPageAnim$$inlined$doOnEnd$1;->$toLayoutRule$inlined:Lcom/android/launcher3/folder/big/BigFolderIconLayoutRule;

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

    iget-object p1, p0, Lcom/android/launcher3/folder/big/ConvertAnimationBuilder$buildPageAnim$$inlined$doOnEnd$1;->this$0:Lcom/android/launcher3/folder/big/ConvertAnimationBuilder;

    invoke-static {p1}, Lcom/android/launcher3/folder/big/ConvertAnimationBuilder;->access$getToBig$p(Lcom/android/launcher3/folder/big/ConvertAnimationBuilder;)Z

    move-result p1

    if-eqz p1, :cond_1f

    iget-object p1, p0, Lcom/android/launcher3/folder/big/ConvertAnimationBuilder$buildPageAnim$$inlined$doOnEnd$1;->this$0:Lcom/android/launcher3/folder/big/ConvertAnimationBuilder;

    invoke-static {p1}, Lcom/android/launcher3/folder/big/ConvertAnimationBuilder;->access$getBig$p(Lcom/android/launcher3/folder/big/ConvertAnimationBuilder;)Lcom/android/launcher3/folder/big/BigFolderIcon;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/folder/big/BigFolderIcon;->updatePreviewItemPara()V

    iget-object p0, p0, Lcom/android/launcher3/folder/big/ConvertAnimationBuilder$buildPageAnim$$inlined$doOnEnd$1;->this$0:Lcom/android/launcher3/folder/big/ConvertAnimationBuilder;

    invoke-static {p0}, Lcom/android/launcher3/folder/big/ConvertAnimationBuilder;->access$getBig$p(Lcom/android/launcher3/folder/big/ConvertAnimationBuilder;)Lcom/android/launcher3/folder/big/BigFolderIcon;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/folder/big/BigFolderIcon;->playItemDotAnimation()V

    :cond_1f
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
