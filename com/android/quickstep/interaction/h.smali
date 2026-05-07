.class public final synthetic Lcom/android/quickstep/interaction/h;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;

.field public final synthetic b:F


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;F)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/interaction/h;->a:Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;

    iput p2, p0, Lcom/android/quickstep/interaction/h;->b:F

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 3

    iget-object v0, p0, Lcom/android/quickstep/interaction/h;->a:Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;

    iget p0, p0, Lcom/android/quickstep/interaction/h;->b:F

    invoke-static {v0, p0, p1}, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;->k(Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;FLandroid/animation/ValueAnimator;)V

    return-void
.end method
