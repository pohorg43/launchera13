.class public final synthetic Lcom/android/launcher3/graphics/f;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Lcom/android/launcher3/graphics/IconShape$Squircle;

.field public final synthetic b:F

.field public final synthetic c:F

.field public final synthetic d:F

.field public final synthetic e:F

.field public final synthetic f:F

.field public final synthetic g:F

.field public final synthetic h:F

.field public final synthetic i:F

.field public final synthetic j:F

.field public final synthetic k:F

.field public final synthetic l:Landroid/graphics/Path;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/graphics/IconShape$Squircle;FFFFFFFFFFFFLandroid/graphics/Path;)V
    .registers 15

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/graphics/f;->a:Lcom/android/launcher3/graphics/IconShape$Squircle;

    iput p2, p0, Lcom/android/launcher3/graphics/f;->b:F

    iput p3, p0, Lcom/android/launcher3/graphics/f;->c:F

    iput p4, p0, Lcom/android/launcher3/graphics/f;->d:F

    iput p5, p0, Lcom/android/launcher3/graphics/f;->e:F

    iput p6, p0, Lcom/android/launcher3/graphics/f;->f:F

    iput p7, p0, Lcom/android/launcher3/graphics/f;->g:F

    iput p8, p0, Lcom/android/launcher3/graphics/f;->h:F

    iput p9, p0, Lcom/android/launcher3/graphics/f;->i:F

    iput p11, p0, Lcom/android/launcher3/graphics/f;->j:F

    iput p13, p0, Lcom/android/launcher3/graphics/f;->k:F

    iput-object p14, p0, Lcom/android/launcher3/graphics/f;->l:Landroid/graphics/Path;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 17

    move-object v0, p0

    iget-object v1, v0, Lcom/android/launcher3/graphics/f;->a:Lcom/android/launcher3/graphics/IconShape$Squircle;

    iget v2, v0, Lcom/android/launcher3/graphics/f;->b:F

    iget v3, v0, Lcom/android/launcher3/graphics/f;->c:F

    iget v4, v0, Lcom/android/launcher3/graphics/f;->d:F

    iget v5, v0, Lcom/android/launcher3/graphics/f;->e:F

    iget v6, v0, Lcom/android/launcher3/graphics/f;->f:F

    iget v7, v0, Lcom/android/launcher3/graphics/f;->g:F

    iget v8, v0, Lcom/android/launcher3/graphics/f;->h:F

    iget v9, v0, Lcom/android/launcher3/graphics/f;->i:F

    iget v10, v0, Lcom/android/launcher3/graphics/f;->j:F

    iget v12, v0, Lcom/android/launcher3/graphics/f;->k:F

    iget-object v13, v0, Lcom/android/launcher3/graphics/f;->l:Landroid/graphics/Path;

    const/4 v11, 0x0

    const/4 v14, 0x0

    move-object v0, v1

    move v1, v2

    move v2, v3

    move v3, v4

    move v4, v5

    move v5, v6

    move v6, v7

    move v7, v8

    move v8, v9

    move v9, v11

    move v11, v14

    move-object/from16 v14, p1

    invoke-static/range {v0 .. v14}, Lcom/android/launcher3/graphics/IconShape$Squircle;->b(Lcom/android/launcher3/graphics/IconShape$Squircle;FFFFFFFFFFFFLandroid/graphics/Path;Landroid/animation/ValueAnimator;)V

    return-void
.end method
