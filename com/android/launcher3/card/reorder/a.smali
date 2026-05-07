.class public final synthetic Lcom/android/launcher3/card/reorder/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Lcom/android/launcher3/card/reorder/ExtrusionItemAnimation;

.field public final synthetic b:I

.field public final synthetic c:F


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/card/reorder/ExtrusionItemAnimation;IF)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/card/reorder/a;->a:Lcom/android/launcher3/card/reorder/ExtrusionItemAnimation;

    iput p2, p0, Lcom/android/launcher3/card/reorder/a;->b:I

    iput p3, p0, Lcom/android/launcher3/card/reorder/a;->c:F

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/card/reorder/a;->a:Lcom/android/launcher3/card/reorder/ExtrusionItemAnimation;

    iget v1, p0, Lcom/android/launcher3/card/reorder/a;->b:I

    iget p0, p0, Lcom/android/launcher3/card/reorder/a;->c:F

    invoke-static {v0, v1, p0, p1}, Lcom/android/launcher3/card/reorder/ExtrusionItemAnimation;->a(Lcom/android/launcher3/card/reorder/ExtrusionItemAnimation;IFLandroid/animation/ValueAnimator;)V

    return-void
.end method
