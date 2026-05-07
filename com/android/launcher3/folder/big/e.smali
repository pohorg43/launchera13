.class public final synthetic Lcom/android/launcher3/folder/big/e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Lcom/android/launcher3/folder/big/ConvertAnimationBuilder;

.field public final synthetic b:F

.field public final synthetic c:F

.field public final synthetic d:I

.field public final synthetic e:I

.field public final synthetic f:I

.field public final synthetic g:I

.field public final synthetic h:F

.field public final synthetic i:F

.field public final synthetic j:F

.field public final synthetic k:F

.field public final synthetic l:F

.field public final synthetic m:F

.field public final synthetic n:Lcom/android/launcher3/folder/big/BigFolderBackground;

.field public final synthetic o:I

.field public final synthetic p:I

.field public final synthetic q:I

.field public final synthetic r:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/folder/big/ConvertAnimationBuilder;FFIIIIFFFFFFLcom/android/launcher3/folder/big/BigFolderBackground;IIII)V
    .registers 21

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    iput-object v1, v0, Lcom/android/launcher3/folder/big/e;->a:Lcom/android/launcher3/folder/big/ConvertAnimationBuilder;

    move v1, p2

    iput v1, v0, Lcom/android/launcher3/folder/big/e;->b:F

    move v1, p3

    iput v1, v0, Lcom/android/launcher3/folder/big/e;->c:F

    move v1, p4

    iput v1, v0, Lcom/android/launcher3/folder/big/e;->d:I

    move v1, p5

    iput v1, v0, Lcom/android/launcher3/folder/big/e;->e:I

    move v1, p6

    iput v1, v0, Lcom/android/launcher3/folder/big/e;->f:I

    move v1, p7

    iput v1, v0, Lcom/android/launcher3/folder/big/e;->g:I

    move v1, p8

    iput v1, v0, Lcom/android/launcher3/folder/big/e;->h:F

    move v1, p9

    iput v1, v0, Lcom/android/launcher3/folder/big/e;->i:F

    move v1, p10

    iput v1, v0, Lcom/android/launcher3/folder/big/e;->j:F

    move v1, p11

    iput v1, v0, Lcom/android/launcher3/folder/big/e;->k:F

    move v1, p12

    iput v1, v0, Lcom/android/launcher3/folder/big/e;->l:F

    move v1, p13

    iput v1, v0, Lcom/android/launcher3/folder/big/e;->m:F

    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/android/launcher3/folder/big/e;->n:Lcom/android/launcher3/folder/big/BigFolderBackground;

    move/from16 v1, p15

    iput v1, v0, Lcom/android/launcher3/folder/big/e;->o:I

    move/from16 v1, p16

    iput v1, v0, Lcom/android/launcher3/folder/big/e;->p:I

    move/from16 v1, p17

    iput v1, v0, Lcom/android/launcher3/folder/big/e;->q:I

    move/from16 v1, p18

    iput v1, v0, Lcom/android/launcher3/folder/big/e;->r:I

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 22

    move-object/from16 v0, p0

    move-object/from16 v19, p1

    iget-object v1, v0, Lcom/android/launcher3/folder/big/e;->a:Lcom/android/launcher3/folder/big/ConvertAnimationBuilder;

    iget v2, v0, Lcom/android/launcher3/folder/big/e;->b:F

    iget v3, v0, Lcom/android/launcher3/folder/big/e;->c:F

    iget v4, v0, Lcom/android/launcher3/folder/big/e;->d:I

    iget v5, v0, Lcom/android/launcher3/folder/big/e;->e:I

    iget v6, v0, Lcom/android/launcher3/folder/big/e;->f:I

    iget v7, v0, Lcom/android/launcher3/folder/big/e;->g:I

    iget v8, v0, Lcom/android/launcher3/folder/big/e;->h:F

    iget v9, v0, Lcom/android/launcher3/folder/big/e;->i:F

    iget v10, v0, Lcom/android/launcher3/folder/big/e;->j:F

    iget v11, v0, Lcom/android/launcher3/folder/big/e;->k:F

    iget v12, v0, Lcom/android/launcher3/folder/big/e;->l:F

    iget v13, v0, Lcom/android/launcher3/folder/big/e;->m:F

    iget-object v14, v0, Lcom/android/launcher3/folder/big/e;->n:Lcom/android/launcher3/folder/big/BigFolderBackground;

    iget v15, v0, Lcom/android/launcher3/folder/big/e;->o:I

    move-object/from16 p1, v1

    iget v1, v0, Lcom/android/launcher3/folder/big/e;->p:I

    move/from16 v16, v1

    iget v1, v0, Lcom/android/launcher3/folder/big/e;->q:I

    move/from16 v17, v1

    iget v0, v0, Lcom/android/launcher3/folder/big/e;->r:I

    move/from16 v18, v0

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v19}, Lcom/android/launcher3/folder/big/ConvertAnimationBuilder;->a(Lcom/android/launcher3/folder/big/ConvertAnimationBuilder;FFIIIIFFFFFFLcom/android/launcher3/folder/big/BigFolderBackground;IIIILandroid/animation/ValueAnimator;)V

    return-void
.end method
