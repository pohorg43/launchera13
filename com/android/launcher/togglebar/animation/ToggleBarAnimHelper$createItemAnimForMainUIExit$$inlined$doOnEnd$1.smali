.class public final Lcom/android/launcher/togglebar/animation/ToggleBarAnimHelper$createItemAnimForMainUIExit$$inlined$doOnEnd$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher/togglebar/animation/ToggleBarAnimHelper;->createItemAnimForMainUIExit(Landroid/view/View;FI)Landroid/animation/AnimatorSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic $endAlpha$inlined:F

.field public final synthetic $endTransY$inlined:F

.field public final synthetic $view$inlined:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;FF)V
    .registers 4

    iput-object p1, p0, Lcom/android/launcher/togglebar/animation/ToggleBarAnimHelper$createItemAnimForMainUIExit$$inlined$doOnEnd$1;->$view$inlined:Landroid/view/View;

    iput p2, p0, Lcom/android/launcher/togglebar/animation/ToggleBarAnimHelper$createItemAnimForMainUIExit$$inlined$doOnEnd$1;->$endAlpha$inlined:F

    iput p3, p0, Lcom/android/launcher/togglebar/animation/ToggleBarAnimHelper$createItemAnimForMainUIExit$$inlined$doOnEnd$1;->$endTransY$inlined:F

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

    iget-object p1, p0, Lcom/android/launcher/togglebar/animation/ToggleBarAnimHelper$createItemAnimForMainUIExit$$inlined$doOnEnd$1;->$view$inlined:Landroid/view/View;

    if-nez p1, :cond_a

    goto :goto_f

    :cond_a
    iget v0, p0, Lcom/android/launcher/togglebar/animation/ToggleBarAnimHelper$createItemAnimForMainUIExit$$inlined$doOnEnd$1;->$endAlpha$inlined:F

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    :goto_f
    iget-object p1, p0, Lcom/android/launcher/togglebar/animation/ToggleBarAnimHelper$createItemAnimForMainUIExit$$inlined$doOnEnd$1;->$view$inlined:Landroid/view/View;

    if-nez p1, :cond_14

    goto :goto_19

    :cond_14
    iget p0, p0, Lcom/android/launcher/togglebar/animation/ToggleBarAnimHelper$createItemAnimForMainUIExit$$inlined$doOnEnd$1;->$endTransY$inlined:F

    invoke-virtual {p1, p0}, Landroid/view/View;->setTranslationY(F)V

    :goto_19
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
