.class Lcom/coui/appcompat/lockview/COUILockPatternView$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/lockview/COUILockPatternView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/coui/appcompat/lockview/COUILockPatternView;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/lockview/COUILockPatternView;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/lockview/COUILockPatternView$4;->a:Lcom/coui/appcompat/lockview/COUILockPatternView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    iget-object p1, p0, Lcom/coui/appcompat/lockview/COUILockPatternView$4;->a:Lcom/coui/appcompat/lockview/COUILockPatternView;

    sget v0, Lcom/coui/appcompat/lockview/COUILockPatternView;->R:I

    invoke-virtual {p1}, Lcom/coui/appcompat/lockview/COUILockPatternView;->i()V

    iget-object p0, p0, Lcom/coui/appcompat/lockview/COUILockPatternView$4;->a:Lcom/coui/appcompat/lockview/COUILockPatternView;

    iget-object p0, p0, Lcom/coui/appcompat/lockview/COUILockPatternView;->K:Landroid/animation/ValueAnimator;

    if-eqz p0, :cond_10

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    :cond_10
    return-void
.end method
