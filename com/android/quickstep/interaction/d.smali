.class public final synthetic Lcom/android/quickstep/interaction/d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Lcom/android/quickstep/interaction/AnimatedTaskView;

.field public final synthetic b:Landroid/graphics/Rect;

.field public final synthetic c:I

.field public final synthetic d:F

.field public final synthetic e:F


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/interaction/AnimatedTaskView;Landroid/graphics/Rect;IFF)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/interaction/d;->a:Lcom/android/quickstep/interaction/AnimatedTaskView;

    iput-object p2, p0, Lcom/android/quickstep/interaction/d;->b:Landroid/graphics/Rect;

    iput p3, p0, Lcom/android/quickstep/interaction/d;->c:I

    iput p4, p0, Lcom/android/quickstep/interaction/d;->d:F

    iput p5, p0, Lcom/android/quickstep/interaction/d;->e:F

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 8

    iget-object v0, p0, Lcom/android/quickstep/interaction/d;->a:Lcom/android/quickstep/interaction/AnimatedTaskView;

    iget-object v1, p0, Lcom/android/quickstep/interaction/d;->b:Landroid/graphics/Rect;

    iget v2, p0, Lcom/android/quickstep/interaction/d;->c:I

    iget v3, p0, Lcom/android/quickstep/interaction/d;->d:F

    iget v4, p0, Lcom/android/quickstep/interaction/d;->e:F

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/android/quickstep/interaction/AnimatedTaskView;->a(Lcom/android/quickstep/interaction/AnimatedTaskView;Landroid/graphics/Rect;IFFLandroid/animation/ValueAnimator;)V

    return-void
.end method
