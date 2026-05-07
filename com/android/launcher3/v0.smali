.class public final synthetic Lcom/android/launcher3/v0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:I

.field public final synthetic d:I

.field public final synthetic e:I

.field public final synthetic f:I

.field public final synthetic g:I

.field public final synthetic h:I

.field public final synthetic i:I

.field public final synthetic j:I

.field public final synthetic k:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Landroid/graphics/Rect;IIIIIIIILandroid/view/View;)V
    .registers 12

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/launcher3/v0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/v0;->b:Ljava/lang/Object;

    iput p2, p0, Lcom/android/launcher3/v0;->c:I

    iput p3, p0, Lcom/android/launcher3/v0;->d:I

    iput p4, p0, Lcom/android/launcher3/v0;->e:I

    iput p5, p0, Lcom/android/launcher3/v0;->f:I

    iput p6, p0, Lcom/android/launcher3/v0;->g:I

    iput p7, p0, Lcom/android/launcher3/v0;->h:I

    iput p8, p0, Lcom/android/launcher3/v0;->i:I

    iput p9, p0, Lcom/android/launcher3/v0;->j:I

    iput-object p10, p0, Lcom/android/launcher3/v0;->k:Landroid/view/View;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/CellLayout$LayoutParams;IIIIIIIILandroid/view/View;)V
    .registers 12

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/v0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/v0;->b:Ljava/lang/Object;

    iput p2, p0, Lcom/android/launcher3/v0;->c:I

    iput p3, p0, Lcom/android/launcher3/v0;->d:I

    iput p4, p0, Lcom/android/launcher3/v0;->e:I

    iput p5, p0, Lcom/android/launcher3/v0;->f:I

    iput p6, p0, Lcom/android/launcher3/v0;->g:I

    iput p7, p0, Lcom/android/launcher3/v0;->h:I

    iput p8, p0, Lcom/android/launcher3/v0;->i:I

    iput p9, p0, Lcom/android/launcher3/v0;->j:I

    iput-object p10, p0, Lcom/android/launcher3/v0;->k:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 14

    iget v0, p0, Lcom/android/launcher3/v0;->a:I

    packed-switch v0, :pswitch_data_3e

    goto :goto_22

    :pswitch_6  #0x0
    iget-object v0, p0, Lcom/android/launcher3/v0;->b:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/android/launcher3/CellLayout$LayoutParams;

    iget v2, p0, Lcom/android/launcher3/v0;->c:I

    iget v3, p0, Lcom/android/launcher3/v0;->d:I

    iget v4, p0, Lcom/android/launcher3/v0;->e:I

    iget v5, p0, Lcom/android/launcher3/v0;->f:I

    iget v6, p0, Lcom/android/launcher3/v0;->g:I

    iget v7, p0, Lcom/android/launcher3/v0;->h:I

    iget v8, p0, Lcom/android/launcher3/v0;->i:I

    iget v9, p0, Lcom/android/launcher3/v0;->j:I

    iget-object v10, p0, Lcom/android/launcher3/v0;->k:Landroid/view/View;

    move-object v11, p1

    invoke-static/range {v1 .. v11}, Lcom/android/launcher3/OplusHotseat;->b(Lcom/android/launcher3/CellLayout$LayoutParams;IIIIIIIILandroid/view/View;Landroid/animation/ValueAnimator;)V

    return-void

    :goto_22
    iget-object v0, p0, Lcom/android/launcher3/v0;->b:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Landroid/graphics/Rect;

    iget v2, p0, Lcom/android/launcher3/v0;->c:I

    iget v3, p0, Lcom/android/launcher3/v0;->d:I

    iget v4, p0, Lcom/android/launcher3/v0;->e:I

    iget v5, p0, Lcom/android/launcher3/v0;->f:I

    iget v6, p0, Lcom/android/launcher3/v0;->g:I

    iget v7, p0, Lcom/android/launcher3/v0;->h:I

    iget v8, p0, Lcom/android/launcher3/v0;->i:I

    iget v9, p0, Lcom/android/launcher3/v0;->j:I

    iget-object v10, p0, Lcom/android/launcher3/v0;->k:Landroid/view/View;

    move-object v11, p1

    invoke-static/range {v1 .. v11}, Lcom/android/systemui/animation/AnimatedDialog$AnimatedBoundsLayoutListener;->a(Landroid/graphics/Rect;IIIIIIIILandroid/view/View;Landroid/animation/ValueAnimator;)V

    return-void

    :pswitch_data_3e
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
