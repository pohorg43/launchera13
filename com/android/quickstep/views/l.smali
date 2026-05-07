.class public final synthetic Lcom/android/quickstep/views/l;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Lcom/android/quickstep/views/RecentsView;

.field public final synthetic b:I

.field public final synthetic c:[Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/views/RecentsView;I[Z)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/views/l;->a:Lcom/android/quickstep/views/RecentsView;

    iput p2, p0, Lcom/android/quickstep/views/l;->b:I

    iput-object p3, p0, Lcom/android/quickstep/views/l;->c:[Z

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 4

    iget-object v0, p0, Lcom/android/quickstep/views/l;->a:Lcom/android/quickstep/views/RecentsView;

    iget v1, p0, Lcom/android/quickstep/views/l;->b:I

    iget-object p0, p0, Lcom/android/quickstep/views/l;->c:[Z

    invoke-static {v0, v1, p0, p1}, Lcom/android/quickstep/views/RecentsView;->K(Lcom/android/quickstep/views/RecentsView;I[ZLandroid/animation/ValueAnimator;)V

    return-void
.end method
