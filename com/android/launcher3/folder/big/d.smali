.class public final synthetic Lcom/android/launcher3/folder/big/d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Lcom/android/launcher3/folder/big/BigFolderIconLayoutRule;

.field public final synthetic b:Lcom/android/launcher3/folder/big/ConvertAnimationBuilder;

.field public final synthetic c:F

.field public final synthetic d:F

.field public final synthetic e:F

.field public final synthetic f:F

.field public final synthetic g:F

.field public final synthetic h:F

.field public final synthetic i:F

.field public final synthetic j:F

.field public final synthetic k:F

.field public final synthetic l:F

.field public final synthetic m:F

.field public final synthetic n:F

.field public final synthetic o:F

.field public final synthetic p:F


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/folder/big/BigFolderIconLayoutRule;Lcom/android/launcher3/folder/big/ConvertAnimationBuilder;FFFFFFFFFFFFFF)V
    .registers 19

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    iput-object v1, v0, Lcom/android/launcher3/folder/big/d;->a:Lcom/android/launcher3/folder/big/BigFolderIconLayoutRule;

    move-object v1, p2

    iput-object v1, v0, Lcom/android/launcher3/folder/big/d;->b:Lcom/android/launcher3/folder/big/ConvertAnimationBuilder;

    move v1, p3

    iput v1, v0, Lcom/android/launcher3/folder/big/d;->c:F

    move v1, p4

    iput v1, v0, Lcom/android/launcher3/folder/big/d;->d:F

    move v1, p5

    iput v1, v0, Lcom/android/launcher3/folder/big/d;->e:F

    move v1, p6

    iput v1, v0, Lcom/android/launcher3/folder/big/d;->f:F

    move v1, p7

    iput v1, v0, Lcom/android/launcher3/folder/big/d;->g:F

    move v1, p8

    iput v1, v0, Lcom/android/launcher3/folder/big/d;->h:F

    move v1, p9

    iput v1, v0, Lcom/android/launcher3/folder/big/d;->i:F

    move v1, p10

    iput v1, v0, Lcom/android/launcher3/folder/big/d;->j:F

    move v1, p11

    iput v1, v0, Lcom/android/launcher3/folder/big/d;->k:F

    move v1, p12

    iput v1, v0, Lcom/android/launcher3/folder/big/d;->l:F

    move v1, p13

    iput v1, v0, Lcom/android/launcher3/folder/big/d;->m:F

    move/from16 v1, p14

    iput v1, v0, Lcom/android/launcher3/folder/big/d;->n:F

    move/from16 v1, p15

    iput v1, v0, Lcom/android/launcher3/folder/big/d;->o:F

    move/from16 v1, p16

    iput v1, v0, Lcom/android/launcher3/folder/big/d;->p:F

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 20

    move-object/from16 v0, p0

    move-object/from16 v17, p1

    iget-object v1, v0, Lcom/android/launcher3/folder/big/d;->a:Lcom/android/launcher3/folder/big/BigFolderIconLayoutRule;

    iget-object v2, v0, Lcom/android/launcher3/folder/big/d;->b:Lcom/android/launcher3/folder/big/ConvertAnimationBuilder;

    iget v3, v0, Lcom/android/launcher3/folder/big/d;->c:F

    iget v4, v0, Lcom/android/launcher3/folder/big/d;->d:F

    iget v5, v0, Lcom/android/launcher3/folder/big/d;->e:F

    iget v6, v0, Lcom/android/launcher3/folder/big/d;->f:F

    iget v7, v0, Lcom/android/launcher3/folder/big/d;->g:F

    iget v8, v0, Lcom/android/launcher3/folder/big/d;->h:F

    iget v9, v0, Lcom/android/launcher3/folder/big/d;->i:F

    iget v10, v0, Lcom/android/launcher3/folder/big/d;->j:F

    iget v11, v0, Lcom/android/launcher3/folder/big/d;->k:F

    iget v12, v0, Lcom/android/launcher3/folder/big/d;->l:F

    iget v13, v0, Lcom/android/launcher3/folder/big/d;->m:F

    iget v14, v0, Lcom/android/launcher3/folder/big/d;->n:F

    iget v15, v0, Lcom/android/launcher3/folder/big/d;->o:F

    iget v0, v0, Lcom/android/launcher3/folder/big/d;->p:F

    move/from16 v16, v0

    invoke-static/range {v1 .. v17}, Lcom/android/launcher3/folder/big/ConvertAnimationBuilder;->c(Lcom/android/launcher3/folder/big/BigFolderIconLayoutRule;Lcom/android/launcher3/folder/big/ConvertAnimationBuilder;FFFFFFFFFFFFFFLandroid/animation/ValueAnimator;)V

    return-void
.end method
