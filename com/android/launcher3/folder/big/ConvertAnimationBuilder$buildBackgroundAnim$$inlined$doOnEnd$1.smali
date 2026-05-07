.class public final Lcom/android/launcher3/folder/big/ConvertAnimationBuilder$buildBackgroundAnim$$inlined$doOnEnd$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/folder/big/ConvertAnimationBuilder;->buildBackgroundAnim()Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic $bigFolderBackground$inlined:Lcom/android/launcher3/folder/big/BigFolderBackground;

.field public final synthetic $toRadius$inlined:F


# direct methods
.method public constructor <init>(Lcom/android/launcher3/folder/big/BigFolderBackground;F)V
    .registers 3

    iput-object p1, p0, Lcom/android/launcher3/folder/big/ConvertAnimationBuilder$buildBackgroundAnim$$inlined$doOnEnd$1;->$bigFolderBackground$inlined:Lcom/android/launcher3/folder/big/BigFolderBackground;

    iput p2, p0, Lcom/android/launcher3/folder/big/ConvertAnimationBuilder$buildBackgroundAnim$$inlined$doOnEnd$1;->$toRadius$inlined:F

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

    iget-object p1, p0, Lcom/android/launcher3/folder/big/ConvertAnimationBuilder$buildBackgroundAnim$$inlined$doOnEnd$1;->$bigFolderBackground$inlined:Lcom/android/launcher3/folder/big/BigFolderBackground;

    invoke-virtual {p1}, Lcom/android/launcher3/folder/OplusPreviewBackground;->getBgDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    instance-of v0, p1, Landroid/graphics/drawable/GradientDrawable;

    if-eqz v0, :cond_12

    check-cast p1, Landroid/graphics/drawable/GradientDrawable;

    goto :goto_13

    :cond_12
    const/4 p1, 0x0

    :goto_13
    if-nez p1, :cond_16

    goto :goto_1b

    :cond_16
    iget p0, p0, Lcom/android/launcher3/folder/big/ConvertAnimationBuilder$buildBackgroundAnim$$inlined$doOnEnd$1;->$toRadius$inlined:F

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    :goto_1b
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
