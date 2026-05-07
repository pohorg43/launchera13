.class public final synthetic Lcom/oplus/quickstep/gesture/e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator$OnUpdateListener;


# instance fields
.field public final synthetic a:F

.field public final synthetic b:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

.field public final synthetic c:Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

.field public final synthetic d:Lkotlin/jvm/internal/Ref$FloatRef;

.field public final synthetic e:Landroid/graphics/Rect;

.field public final synthetic f:F

.field public final synthetic g:Landroid/graphics/RectF;

.field public final synthetic h:F

.field public final synthetic i:F

.field public final synthetic j:Lcom/android/quickstep/util/TaskViewSimulator;

.field public final synthetic k:Landroid/graphics/Matrix;

.field public final synthetic l:Lcom/android/quickstep/util/TransformParams;


# direct methods
.method public synthetic constructor <init>(F[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;Lkotlin/jvm/internal/Ref$FloatRef;Landroid/graphics/Rect;FLandroid/graphics/RectF;FFLcom/android/quickstep/util/TaskViewSimulator;Landroid/graphics/Matrix;Lcom/android/quickstep/util/TransformParams;)V
    .registers 13

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/oplus/quickstep/gesture/e;->a:F

    iput-object p2, p0, Lcom/oplus/quickstep/gesture/e;->b:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    iput-object p3, p0, Lcom/oplus/quickstep/gesture/e;->c:Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    iput-object p4, p0, Lcom/oplus/quickstep/gesture/e;->d:Lkotlin/jvm/internal/Ref$FloatRef;

    iput-object p5, p0, Lcom/oplus/quickstep/gesture/e;->e:Landroid/graphics/Rect;

    iput p6, p0, Lcom/oplus/quickstep/gesture/e;->f:F

    iput-object p7, p0, Lcom/oplus/quickstep/gesture/e;->g:Landroid/graphics/RectF;

    iput p8, p0, Lcom/oplus/quickstep/gesture/e;->h:F

    iput p9, p0, Lcom/oplus/quickstep/gesture/e;->i:F

    iput-object p10, p0, Lcom/oplus/quickstep/gesture/e;->j:Lcom/android/quickstep/util/TaskViewSimulator;

    iput-object p11, p0, Lcom/oplus/quickstep/gesture/e;->k:Landroid/graphics/Matrix;

    iput-object p12, p0, Lcom/oplus/quickstep/gesture/e;->l:Lcom/android/quickstep/util/TransformParams;

    return-void
.end method


# virtual methods
.method public final onUpdate(Landroid/graphics/RectF;Landroid/graphics/RectF;F)V
    .registers 19

    move-object v0, p0

    iget v1, v0, Lcom/oplus/quickstep/gesture/e;->a:F

    iget-object v2, v0, Lcom/oplus/quickstep/gesture/e;->b:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    iget-object v3, v0, Lcom/oplus/quickstep/gesture/e;->c:Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    iget-object v4, v0, Lcom/oplus/quickstep/gesture/e;->d:Lkotlin/jvm/internal/Ref$FloatRef;

    iget-object v5, v0, Lcom/oplus/quickstep/gesture/e;->e:Landroid/graphics/Rect;

    iget v6, v0, Lcom/oplus/quickstep/gesture/e;->f:F

    iget-object v7, v0, Lcom/oplus/quickstep/gesture/e;->g:Landroid/graphics/RectF;

    iget v8, v0, Lcom/oplus/quickstep/gesture/e;->h:F

    iget v9, v0, Lcom/oplus/quickstep/gesture/e;->i:F

    iget-object v10, v0, Lcom/oplus/quickstep/gesture/e;->j:Lcom/android/quickstep/util/TaskViewSimulator;

    iget-object v11, v0, Lcom/oplus/quickstep/gesture/e;->k:Landroid/graphics/Matrix;

    iget-object v12, v0, Lcom/oplus/quickstep/gesture/e;->l:Lcom/android/quickstep/util/TransformParams;

    move v0, v1

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move v5, v6

    move-object v6, v7

    move v7, v8

    move v8, v9

    move-object v9, v10

    move-object v10, v11

    move-object v11, v12

    move-object/from16 v12, p1

    move-object/from16 v13, p2

    move/from16 v14, p3

    invoke-static/range {v0 .. v14}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->Y(F[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;Lkotlin/jvm/internal/Ref$FloatRef;Landroid/graphics/Rect;FLandroid/graphics/RectF;FFLcom/android/quickstep/util/TaskViewSimulator;Landroid/graphics/Matrix;Lcom/android/quickstep/util/TransformParams;Landroid/graphics/RectF;Landroid/graphics/RectF;F)V

    return-void
.end method
