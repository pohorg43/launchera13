.class Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$3$2;
.super Lcom/android/wm/shell/splitscreen/animation/CustomAnimationSpec;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$3;->onAnimationStart(I[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Landroid/view/IRemoteAnimationFinishedCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$3;

.field public final synthetic val$endBounds:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$3;Landroid/graphics/Rect;)V
    .registers 3

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$3$2;->this$1:Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$3;

    iput-object p2, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$3$2;->val$endBounds:Landroid/graphics/Rect;

    invoke-direct {p0}, Lcom/android/wm/shell/splitscreen/animation/CustomAnimationSpec;-><init>()V

    return-void
.end method


# virtual methods
.method public onApply(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;F)V
    .registers 6

    const v0, -0x42333330  # -0.100000024f

    mul-float/2addr p3, v0

    const/high16 v0, 0x3f800000  # 1.0f

    sub-float p3, v0, p3

    invoke-virtual {p1, p2, p3, p3}, Landroid/view/SurfaceControl$Transaction;->setScale(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$3$2;->val$endBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, p3

    mul-float/2addr v1, v0

    float-to-int p3, v1

    div-int/lit8 p3, p3, 0x2

    int-to-float p3, p3

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$3$2;->val$endBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    int-to-float p0, p0

    mul-float/2addr p0, v0

    float-to-int p0, p0

    div-int/lit8 p0, p0, 0x2

    int-to-float p0, p0

    invoke-virtual {p1, p2, p3, p0}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    return-void
.end method
