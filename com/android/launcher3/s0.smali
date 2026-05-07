.class public final synthetic Lcom/android/launcher3/s0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:I

.field public final synthetic e:Landroid/widget/ImageView;

.field public final synthetic f:I

.field public final synthetic g:Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;


# direct methods
.method public synthetic constructor <init>(IIIILandroid/widget/ImageView;ILcom/android/launcher3/views/BaseDragLayer$LayoutParams;)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/launcher3/s0;->a:I

    iput p2, p0, Lcom/android/launcher3/s0;->b:I

    iput p3, p0, Lcom/android/launcher3/s0;->c:I

    iput p4, p0, Lcom/android/launcher3/s0;->d:I

    iput-object p5, p0, Lcom/android/launcher3/s0;->e:Landroid/widget/ImageView;

    iput p6, p0, Lcom/android/launcher3/s0;->f:I

    iput-object p7, p0, Lcom/android/launcher3/s0;->g:Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 10

    iget v0, p0, Lcom/android/launcher3/s0;->a:I

    iget v1, p0, Lcom/android/launcher3/s0;->b:I

    iget v2, p0, Lcom/android/launcher3/s0;->c:I

    iget v3, p0, Lcom/android/launcher3/s0;->d:I

    iget-object v4, p0, Lcom/android/launcher3/s0;->e:Landroid/widget/ImageView;

    iget v5, p0, Lcom/android/launcher3/s0;->f:I

    iget-object v6, p0, Lcom/android/launcher3/s0;->g:Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;

    move-object v7, p1

    invoke-static/range {v0 .. v7}, Lcom/android/launcher3/OplusCellLayout;->d(IIIILandroid/widget/ImageView;ILcom/android/launcher3/views/BaseDragLayer$LayoutParams;Landroid/animation/ValueAnimator;)V

    return-void
.end method
