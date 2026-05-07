.class public final synthetic Lcom/android/launcher3/d1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;

.field public final synthetic b:Landroid/view/View;

.field public final synthetic c:F

.field public final synthetic d:F

.field public final synthetic e:F

.field public final synthetic f:F

.field public final synthetic g:F

.field public final synthetic h:F

.field public final synthetic i:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;Landroid/view/View;FFFFFFZ)V
    .registers 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/d1;->a:Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;

    iput-object p2, p0, Lcom/android/launcher3/d1;->b:Landroid/view/View;

    iput p3, p0, Lcom/android/launcher3/d1;->c:F

    iput p4, p0, Lcom/android/launcher3/d1;->d:F

    iput p5, p0, Lcom/android/launcher3/d1;->e:F

    iput p6, p0, Lcom/android/launcher3/d1;->f:F

    iput p7, p0, Lcom/android/launcher3/d1;->g:F

    iput p8, p0, Lcom/android/launcher3/d1;->h:F

    iput-boolean p9, p0, Lcom/android/launcher3/d1;->i:Z

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 12

    iget-object v0, p0, Lcom/android/launcher3/d1;->a:Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;

    iget-object v1, p0, Lcom/android/launcher3/d1;->b:Landroid/view/View;

    iget v2, p0, Lcom/android/launcher3/d1;->c:F

    iget v3, p0, Lcom/android/launcher3/d1;->d:F

    iget v4, p0, Lcom/android/launcher3/d1;->e:F

    iget v5, p0, Lcom/android/launcher3/d1;->f:F

    iget v6, p0, Lcom/android/launcher3/d1;->g:F

    iget v7, p0, Lcom/android/launcher3/d1;->h:F

    iget-boolean v8, p0, Lcom/android/launcher3/d1;->i:Z

    move-object v9, p1

    invoke-static/range {v0 .. v9}, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;->j(Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;Landroid/view/View;FFFFFFZLandroid/animation/ValueAnimator;)V

    return-void
.end method
