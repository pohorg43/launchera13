.class public final synthetic Lcom/android/launcher3/r0;
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


# direct methods
.method public synthetic constructor <init>(IIIILandroid/widget/ImageView;I)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/launcher3/r0;->a:I

    iput p2, p0, Lcom/android/launcher3/r0;->b:I

    iput p3, p0, Lcom/android/launcher3/r0;->c:I

    iput p4, p0, Lcom/android/launcher3/r0;->d:I

    iput-object p5, p0, Lcom/android/launcher3/r0;->e:Landroid/widget/ImageView;

    iput p6, p0, Lcom/android/launcher3/r0;->f:I

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 9

    iget v0, p0, Lcom/android/launcher3/r0;->a:I

    iget v1, p0, Lcom/android/launcher3/r0;->b:I

    iget v2, p0, Lcom/android/launcher3/r0;->c:I

    iget v3, p0, Lcom/android/launcher3/r0;->d:I

    iget-object v4, p0, Lcom/android/launcher3/r0;->e:Landroid/widget/ImageView;

    iget v5, p0, Lcom/android/launcher3/r0;->f:I

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Lcom/android/launcher3/OplusCellLayout;->c(IIIILandroid/widget/ImageView;ILandroid/animation/ValueAnimator;)V

    return-void
.end method
