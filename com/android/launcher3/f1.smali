.class public final synthetic Lcom/android/launcher3/f1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator$OnUpdateListener;


# instance fields
.field public final synthetic a:Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;

.field public final synthetic b:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

.field public final synthetic c:Landroid/graphics/Point;

.field public final synthetic d:Landroid/graphics/RectF;

.field public final synthetic e:Z

.field public final synthetic f:Landroid/graphics/RectF;

.field public final synthetic g:F

.field public final synthetic h:Z

.field public final synthetic i:Lcom/android/launcher3/views/FloatingIconView;

.field public final synthetic j:F

.field public final synthetic k:F

.field public final synthetic l:F

.field public final synthetic m:Landroid/graphics/Matrix;

.field public final synthetic n:J

.field public final synthetic o:Lcom/android/quickstep/util/SurfaceTransactionApplier;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Landroid/graphics/Point;Landroid/graphics/RectF;ZLandroid/graphics/RectF;FZLcom/android/launcher3/views/FloatingIconView;FFFLandroid/graphics/Matrix;JLcom/android/quickstep/util/SurfaceTransactionApplier;)V
    .registers 20

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    iput-object v1, v0, Lcom/android/launcher3/f1;->a:Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;

    move-object v1, p2

    iput-object v1, v0, Lcom/android/launcher3/f1;->b:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    move-object v1, p3

    iput-object v1, v0, Lcom/android/launcher3/f1;->c:Landroid/graphics/Point;

    move-object v1, p4

    iput-object v1, v0, Lcom/android/launcher3/f1;->d:Landroid/graphics/RectF;

    move v1, p5

    iput-boolean v1, v0, Lcom/android/launcher3/f1;->e:Z

    move-object v1, p6

    iput-object v1, v0, Lcom/android/launcher3/f1;->f:Landroid/graphics/RectF;

    move v1, p7

    iput v1, v0, Lcom/android/launcher3/f1;->g:F

    move v1, p8

    iput-boolean v1, v0, Lcom/android/launcher3/f1;->h:Z

    move-object v1, p9

    iput-object v1, v0, Lcom/android/launcher3/f1;->i:Lcom/android/launcher3/views/FloatingIconView;

    move v1, p10

    iput v1, v0, Lcom/android/launcher3/f1;->j:F

    move v1, p11

    iput v1, v0, Lcom/android/launcher3/f1;->k:F

    move v1, p12

    iput v1, v0, Lcom/android/launcher3/f1;->l:F

    move-object/from16 v1, p13

    iput-object v1, v0, Lcom/android/launcher3/f1;->m:Landroid/graphics/Matrix;

    move-wide/from16 v1, p14

    iput-wide v1, v0, Lcom/android/launcher3/f1;->n:J

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/android/launcher3/f1;->o:Lcom/android/quickstep/util/SurfaceTransactionApplier;

    return-void
.end method


# virtual methods
.method public final onUpdate(Landroid/graphics/RectF;Landroid/graphics/RectF;F)V
    .registers 24

    move-object/from16 v0, p0

    move-object/from16 v17, p1

    move-object/from16 v18, p2

    move/from16 v19, p3

    iget-object v1, v0, Lcom/android/launcher3/f1;->a:Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;

    iget-object v2, v0, Lcom/android/launcher3/f1;->b:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    iget-object v3, v0, Lcom/android/launcher3/f1;->c:Landroid/graphics/Point;

    iget-object v4, v0, Lcom/android/launcher3/f1;->d:Landroid/graphics/RectF;

    iget-boolean v5, v0, Lcom/android/launcher3/f1;->e:Z

    iget-object v6, v0, Lcom/android/launcher3/f1;->f:Landroid/graphics/RectF;

    iget v7, v0, Lcom/android/launcher3/f1;->g:F

    iget-boolean v8, v0, Lcom/android/launcher3/f1;->h:Z

    iget-object v9, v0, Lcom/android/launcher3/f1;->i:Lcom/android/launcher3/views/FloatingIconView;

    iget v10, v0, Lcom/android/launcher3/f1;->j:F

    iget v11, v0, Lcom/android/launcher3/f1;->k:F

    iget v12, v0, Lcom/android/launcher3/f1;->l:F

    iget-object v13, v0, Lcom/android/launcher3/f1;->m:Landroid/graphics/Matrix;

    iget-wide v14, v0, Lcom/android/launcher3/f1;->n:J

    iget-object v0, v0, Lcom/android/launcher3/f1;->o:Lcom/android/quickstep/util/SurfaceTransactionApplier;

    move-object/from16 v16, v0

    invoke-static/range {v1 .. v19}, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;->i(Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Landroid/graphics/Point;Landroid/graphics/RectF;ZLandroid/graphics/RectF;FZLcom/android/launcher3/views/FloatingIconView;FFFLandroid/graphics/Matrix;JLcom/android/quickstep/util/SurfaceTransactionApplier;Landroid/graphics/RectF;Landroid/graphics/RectF;F)V

    return-void
.end method
