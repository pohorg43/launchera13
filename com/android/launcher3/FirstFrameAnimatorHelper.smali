.class public Lcom/android/launcher3/FirstFrameAnimatorHelper;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/ViewTreeObserver$OnDrawListener;
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/FirstFrameAnimatorHelper$MyListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final MAX_DELAY:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "FirstFrameAnimatorHlpr"


# instance fields
.field private mGlobalFrameCount:J

.field private mRootView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1, p0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    invoke-virtual {p1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p0, p1}, Lcom/android/launcher3/FirstFrameAnimatorHelper;->onViewAttachedToWindow(Landroid/view/View;)V

    :cond_f
    return-void
.end method

.method public static synthetic access$100(Lcom/android/launcher3/FirstFrameAnimatorHelper;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/launcher3/FirstFrameAnimatorHelper;->mGlobalFrameCount:J

    return-wide v0
.end method

.method public static synthetic access$200(Lcom/android/launcher3/FirstFrameAnimatorHelper;)Landroid/view/View;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/FirstFrameAnimatorHelper;->mRootView:Landroid/view/View;

    return-object p0
.end method


# virtual methods
.method public addTo(Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/animation/ValueAnimator;",
            ">(TT;)TT;"
        }
    .end annotation

    new-instance v0, Lcom/android/launcher3/FirstFrameAnimatorHelper$MyListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/launcher3/FirstFrameAnimatorHelper$MyListener;-><init>(Lcom/android/launcher3/FirstFrameAnimatorHelper;Lcom/android/launcher3/FirstFrameAnimatorHelper$1;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object p1
.end method

.method public onDraw()V
    .registers 5

    iget-wide v0, p0, Lcom/android/launcher3/FirstFrameAnimatorHelper;->mGlobalFrameCount:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/launcher3/FirstFrameAnimatorHelper;->mGlobalFrameCount:J

    return-void
.end method

.method public onViewAttachedToWindow(Landroid/view/View;)V
    .registers 2

    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/FirstFrameAnimatorHelper;->mRootView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/ViewTreeObserver;->addOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .registers 2

    iget-object p1, p0, Lcom/android/launcher3/FirstFrameAnimatorHelper;->mRootView:Landroid/view/View;

    if-eqz p1, :cond_e

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/ViewTreeObserver;->removeOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/launcher3/FirstFrameAnimatorHelper;->mRootView:Landroid/view/View;

    :cond_e
    return-void
.end method
