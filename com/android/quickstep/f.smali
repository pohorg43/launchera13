.class public final synthetic Lcom/android/quickstep/f;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/android/quickstep/AbsSwipeUpHandler;

.field public final synthetic b:F

.field public final synthetic c:Z

.field public final synthetic d:Landroid/graphics/PointF;


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/AbsSwipeUpHandler;FZLandroid/graphics/PointF;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/f;->a:Lcom/android/quickstep/AbsSwipeUpHandler;

    iput p2, p0, Lcom/android/quickstep/f;->b:F

    iput-boolean p3, p0, Lcom/android/quickstep/f;->c:Z

    iput-object p4, p0, Lcom/android/quickstep/f;->d:Landroid/graphics/PointF;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/android/quickstep/f;->a:Lcom/android/quickstep/AbsSwipeUpHandler;

    iget v1, p0, Lcom/android/quickstep/f;->b:F

    iget-boolean v2, p0, Lcom/android/quickstep/f;->c:Z

    iget-object p0, p0, Lcom/android/quickstep/f;->d:Landroid/graphics/PointF;

    invoke-static {v0, v1, v2, p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->C(Lcom/android/quickstep/AbsSwipeUpHandler;FZLandroid/graphics/PointF;)V

    return-void
.end method
