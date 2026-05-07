.class public final synthetic Lcom/android/quickstep/util/m;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/quickstep/util/RectFSpringAnim$OnUpdateListener;


# instance fields
.field public final synthetic a:Lcom/android/quickstep/util/SwipePipToHomeAnimator;

.field public final synthetic b:Landroid/view/SurfaceControl$Transaction;


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/util/SwipePipToHomeAnimator;Landroid/view/SurfaceControl$Transaction;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/util/m;->a:Lcom/android/quickstep/util/SwipePipToHomeAnimator;

    iput-object p2, p0, Lcom/android/quickstep/util/m;->b:Landroid/view/SurfaceControl$Transaction;

    return-void
.end method


# virtual methods
.method public final onUpdate(Landroid/graphics/RectF;F)V
    .registers 4

    iget-object v0, p0, Lcom/android/quickstep/util/m;->a:Lcom/android/quickstep/util/SwipePipToHomeAnimator;

    iget-object p0, p0, Lcom/android/quickstep/util/m;->b:Landroid/view/SurfaceControl$Transaction;

    invoke-static {v0, p0, p1, p2}, Lcom/android/quickstep/util/SwipePipToHomeAnimator;->e(Lcom/android/quickstep/util/SwipePipToHomeAnimator;Landroid/view/SurfaceControl$Transaction;Landroid/graphics/RectF;F)V

    return-void
.end method
