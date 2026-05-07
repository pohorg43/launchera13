.class Lcom/android/keyguardservice/KeyGuardDismissedUtils$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguardservice/KeyGuardDismissedUtils;->addUnLockAnim(Landroid/view/ViewGroup;Lcom/android/launcher3/CellLayout;Landroid/view/View;Lcom/android/launcher/Launcher;Landroid/animation/AnimatorSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic val$child:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 2

    iput-object p1, p0, Lcom/android/keyguardservice/KeyGuardDismissedUtils$3;->val$child:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 2

    iget-object p0, p0, Lcom/android/keyguardservice/KeyGuardDismissedUtils$3;->val$child:Landroid/view/View;

    check-cast p0, Lcom/android/launcher3/card/IAreaWidget;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lcom/android/launcher3/card/IAreaWidget;->setTranslationAnimatorRunning(Z)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 2

    iget-object p0, p0, Lcom/android/keyguardservice/KeyGuardDismissedUtils$3;->val$child:Landroid/view/View;

    check-cast p0, Lcom/android/launcher3/card/IAreaWidget;

    const/4 p1, 0x1

    invoke-interface {p0, p1}, Lcom/android/launcher3/card/IAreaWidget;->setTranslationAnimatorRunning(Z)V

    return-void
.end method
