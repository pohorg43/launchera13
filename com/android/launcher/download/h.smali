.class public final synthetic Lcom/android/launcher/download/h;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static a(FFFFLandroid/animation/ValueAnimator;)V
    .registers 6

    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {p4, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-void
.end method
