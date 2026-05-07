.class public final synthetic Lcom/android/systemui/animation/f;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic E:Lkotlin/jvm/internal/Ref$IntRef;

.field public final synthetic a:Lkotlin/jvm/internal/Ref$BooleanRef;

.field public final synthetic b:Lcom/android/systemui/animation/LaunchAnimator;

.field public final synthetic c:F

.field public final synthetic d:Lkotlin/jvm/internal/Ref$FloatRef;

.field public final synthetic e:I

.field public final synthetic f:Lkotlin/jvm/internal/Ref$IntRef;

.field public final synthetic g:Lcom/android/systemui/animation/LaunchAnimator$State;

.field public final synthetic h:I

.field public final synthetic i:Lkotlin/jvm/internal/Ref$IntRef;

.field public final synthetic j:I

.field public final synthetic k:Lkotlin/jvm/internal/Ref$IntRef;

.field public final synthetic l:F

.field public final synthetic m:F

.field public final synthetic n:F

.field public final synthetic o:F

.field public final synthetic p:Z

.field public final synthetic q:Lkotlin/jvm/internal/Ref$BooleanRef;

.field public final synthetic r:Landroid/view/ViewGroupOverlay;

.field public final synthetic s:Landroid/graphics/drawable/GradientDrawable;

.field public final synthetic t:Landroid/view/ViewOverlay;

.field public final synthetic u:Landroid/view/ViewGroup;

.field public final synthetic v:Landroid/view/View;

.field public final synthetic w:Lcom/android/systemui/animation/LaunchAnimator$Controller;

.field public final synthetic x:Z

.field public final synthetic y:Lcom/android/systemui/animation/LaunchAnimator$State;

.field public final synthetic z:Lkotlin/jvm/internal/Ref$IntRef;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/internal/Ref$BooleanRef;Lcom/android/systemui/animation/LaunchAnimator;FLkotlin/jvm/internal/Ref$FloatRef;ILkotlin/jvm/internal/Ref$IntRef;Lcom/android/systemui/animation/LaunchAnimator$State;ILkotlin/jvm/internal/Ref$IntRef;ILkotlin/jvm/internal/Ref$IntRef;FFFFZLkotlin/jvm/internal/Ref$BooleanRef;Landroid/view/ViewGroupOverlay;Landroid/graphics/drawable/GradientDrawable;Landroid/view/ViewOverlay;Landroid/view/ViewGroup;Landroid/view/View;Lcom/android/systemui/animation/LaunchAnimator$Controller;ZLcom/android/systemui/animation/LaunchAnimator$State;Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/internal/Ref$IntRef;)V
    .registers 30

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    iput-object v1, v0, Lcom/android/systemui/animation/f;->a:Lkotlin/jvm/internal/Ref$BooleanRef;

    move-object v1, p2

    iput-object v1, v0, Lcom/android/systemui/animation/f;->b:Lcom/android/systemui/animation/LaunchAnimator;

    move v1, p3

    iput v1, v0, Lcom/android/systemui/animation/f;->c:F

    move-object v1, p4

    iput-object v1, v0, Lcom/android/systemui/animation/f;->d:Lkotlin/jvm/internal/Ref$FloatRef;

    move v1, p5

    iput v1, v0, Lcom/android/systemui/animation/f;->e:I

    move-object v1, p6

    iput-object v1, v0, Lcom/android/systemui/animation/f;->f:Lkotlin/jvm/internal/Ref$IntRef;

    move-object v1, p7

    iput-object v1, v0, Lcom/android/systemui/animation/f;->g:Lcom/android/systemui/animation/LaunchAnimator$State;

    move v1, p8

    iput v1, v0, Lcom/android/systemui/animation/f;->h:I

    move-object v1, p9

    iput-object v1, v0, Lcom/android/systemui/animation/f;->i:Lkotlin/jvm/internal/Ref$IntRef;

    move v1, p10

    iput v1, v0, Lcom/android/systemui/animation/f;->j:I

    move-object v1, p11

    iput-object v1, v0, Lcom/android/systemui/animation/f;->k:Lkotlin/jvm/internal/Ref$IntRef;

    move v1, p12

    iput v1, v0, Lcom/android/systemui/animation/f;->l:F

    move v1, p13

    iput v1, v0, Lcom/android/systemui/animation/f;->m:F

    move/from16 v1, p14

    iput v1, v0, Lcom/android/systemui/animation/f;->n:F

    move/from16 v1, p15

    iput v1, v0, Lcom/android/systemui/animation/f;->o:F

    move/from16 v1, p16

    iput-boolean v1, v0, Lcom/android/systemui/animation/f;->p:Z

    move-object/from16 v1, p17

    iput-object v1, v0, Lcom/android/systemui/animation/f;->q:Lkotlin/jvm/internal/Ref$BooleanRef;

    move-object/from16 v1, p18

    iput-object v1, v0, Lcom/android/systemui/animation/f;->r:Landroid/view/ViewGroupOverlay;

    move-object/from16 v1, p19

    iput-object v1, v0, Lcom/android/systemui/animation/f;->s:Landroid/graphics/drawable/GradientDrawable;

    move-object/from16 v1, p20

    iput-object v1, v0, Lcom/android/systemui/animation/f;->t:Landroid/view/ViewOverlay;

    move-object/from16 v1, p21

    iput-object v1, v0, Lcom/android/systemui/animation/f;->u:Landroid/view/ViewGroup;

    move-object/from16 v1, p22

    iput-object v1, v0, Lcom/android/systemui/animation/f;->v:Landroid/view/View;

    move-object/from16 v1, p23

    iput-object v1, v0, Lcom/android/systemui/animation/f;->w:Lcom/android/systemui/animation/LaunchAnimator$Controller;

    move/from16 v1, p24

    iput-boolean v1, v0, Lcom/android/systemui/animation/f;->x:Z

    move-object/from16 v1, p25

    iput-object v1, v0, Lcom/android/systemui/animation/f;->y:Lcom/android/systemui/animation/LaunchAnimator$State;

    move-object/from16 v1, p26

    iput-object v1, v0, Lcom/android/systemui/animation/f;->z:Lkotlin/jvm/internal/Ref$IntRef;

    move-object/from16 v1, p27

    iput-object v1, v0, Lcom/android/systemui/animation/f;->E:Lkotlin/jvm/internal/Ref$IntRef;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 31

    move-object/from16 v0, p0

    move-object/from16 v28, p1

    iget-object v1, v0, Lcom/android/systemui/animation/f;->a:Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-object v2, v0, Lcom/android/systemui/animation/f;->b:Lcom/android/systemui/animation/LaunchAnimator;

    iget v3, v0, Lcom/android/systemui/animation/f;->c:F

    iget-object v4, v0, Lcom/android/systemui/animation/f;->d:Lkotlin/jvm/internal/Ref$FloatRef;

    iget v5, v0, Lcom/android/systemui/animation/f;->e:I

    iget-object v6, v0, Lcom/android/systemui/animation/f;->f:Lkotlin/jvm/internal/Ref$IntRef;

    iget-object v7, v0, Lcom/android/systemui/animation/f;->g:Lcom/android/systemui/animation/LaunchAnimator$State;

    iget v8, v0, Lcom/android/systemui/animation/f;->h:I

    iget-object v9, v0, Lcom/android/systemui/animation/f;->i:Lkotlin/jvm/internal/Ref$IntRef;

    iget v10, v0, Lcom/android/systemui/animation/f;->j:I

    iget-object v11, v0, Lcom/android/systemui/animation/f;->k:Lkotlin/jvm/internal/Ref$IntRef;

    iget v12, v0, Lcom/android/systemui/animation/f;->l:F

    iget v13, v0, Lcom/android/systemui/animation/f;->m:F

    iget v14, v0, Lcom/android/systemui/animation/f;->n:F

    iget v15, v0, Lcom/android/systemui/animation/f;->o:F

    move-object/from16 p1, v1

    iget-boolean v1, v0, Lcom/android/systemui/animation/f;->p:Z

    move/from16 v16, v1

    iget-object v1, v0, Lcom/android/systemui/animation/f;->q:Lkotlin/jvm/internal/Ref$BooleanRef;

    move-object/from16 v17, v1

    iget-object v1, v0, Lcom/android/systemui/animation/f;->r:Landroid/view/ViewGroupOverlay;

    move-object/from16 v18, v1

    iget-object v1, v0, Lcom/android/systemui/animation/f;->s:Landroid/graphics/drawable/GradientDrawable;

    move-object/from16 v19, v1

    iget-object v1, v0, Lcom/android/systemui/animation/f;->t:Landroid/view/ViewOverlay;

    move-object/from16 v20, v1

    iget-object v1, v0, Lcom/android/systemui/animation/f;->u:Landroid/view/ViewGroup;

    move-object/from16 v21, v1

    iget-object v1, v0, Lcom/android/systemui/animation/f;->v:Landroid/view/View;

    move-object/from16 v22, v1

    iget-object v1, v0, Lcom/android/systemui/animation/f;->w:Lcom/android/systemui/animation/LaunchAnimator$Controller;

    move-object/from16 v23, v1

    iget-boolean v1, v0, Lcom/android/systemui/animation/f;->x:Z

    move/from16 v24, v1

    iget-object v1, v0, Lcom/android/systemui/animation/f;->y:Lcom/android/systemui/animation/LaunchAnimator$State;

    move-object/from16 v25, v1

    iget-object v1, v0, Lcom/android/systemui/animation/f;->z:Lkotlin/jvm/internal/Ref$IntRef;

    move-object/from16 v26, v1

    iget-object v0, v0, Lcom/android/systemui/animation/f;->E:Lkotlin/jvm/internal/Ref$IntRef;

    move-object/from16 v27, v0

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v28}, Lcom/android/systemui/animation/LaunchAnimator;->a(Lkotlin/jvm/internal/Ref$BooleanRef;Lcom/android/systemui/animation/LaunchAnimator;FLkotlin/jvm/internal/Ref$FloatRef;ILkotlin/jvm/internal/Ref$IntRef;Lcom/android/systemui/animation/LaunchAnimator$State;ILkotlin/jvm/internal/Ref$IntRef;ILkotlin/jvm/internal/Ref$IntRef;FFFFZLkotlin/jvm/internal/Ref$BooleanRef;Landroid/view/ViewGroupOverlay;Landroid/graphics/drawable/GradientDrawable;Landroid/view/ViewOverlay;Landroid/view/ViewGroup;Landroid/view/View;Lcom/android/systemui/animation/LaunchAnimator$Controller;ZLcom/android/systemui/animation/LaunchAnimator$State;Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/internal/Ref$IntRef;Landroid/animation/ValueAnimator;)V

    return-void
.end method
